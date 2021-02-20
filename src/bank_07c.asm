; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $07c", ROMX[$4000], BANK[$7c]

    ld [hl], d                                    ; $4000: $72
    ld b, b                                       ; $4001: $40
    db $eb                                        ; $4002: $eb
    ld b, b                                       ; $4003: $40
    ld d, $40                                     ; $4004: $16 $40
    ld [hl+], a                                   ; $4006: $22
    ld b, b                                       ; $4007: $40
    ld b, e                                       ; $4008: $43
    ld b, b                                       ; $4009: $40
    ld b, a                                       ; $400a: $47
    ld b, b                                       ; $400b: $40
    ld d, c                                       ; $400c: $51
    ld b, b                                       ; $400d: $40
    ld e, e                                       ; $400e: $5b
    ld b, b                                       ; $400f: $40
    ld h, h                                       ; $4010: $64
    ld b, b                                       ; $4011: $40
    rst $18                                       ; $4012: $df
    ld c, c                                       ; $4013: $49
    db $eb                                        ; $4014: $eb
    ld c, c                                       ; $4015: $49
    push hl                                       ; $4016: $e5
    ld hl, $52a4                                  ; $4017: $21 $a4 $52
    cp [hl]                                       ; $401a: $be
    jr nc, jr_07c_4020                            ; $401b: $30 $03

    ld [$c4c0], a                                 ; $401d: $ea $c0 $c4

jr_07c_4020:
    pop hl                                        ; $4020: $e1
    ret                                           ; $4021: $c9


    push bc                                       ; $4022: $c5
    push hl                                       ; $4023: $e5
    ld b, $00                                     ; $4024: $06 $00
    ld c, a                                       ; $4026: $4f
    or a                                          ; $4027: $b7
    jr z, jr_07c_4038                             ; $4028: $28 $0e

    ld hl, $5235                                  ; $402a: $21 $35 $52
    add hl, bc                                    ; $402d: $09
    ld b, [hl]                                    ; $402e: $46
    ld a, [$c4c3]                                 ; $402f: $fa $c3 $c4
    or a                                          ; $4032: $b7
    jr z, jr_07c_4038                             ; $4033: $28 $03

    cp b                                          ; $4035: $b8
    jr c, jr_07c_4040                             ; $4036: $38 $08

jr_07c_4038:
    ld a, b                                       ; $4038: $78
    ld [$c4c3], a                                 ; $4039: $ea $c3 $c4
    ld a, c                                       ; $403c: $79
    ld [$c4c2], a                                 ; $403d: $ea $c2 $c4

jr_07c_4040:
    pop hl                                        ; $4040: $e1
    pop bc                                        ; $4041: $c1
    ret                                           ; $4042: $c9


    ld [$c533], a                                 ; $4043: $ea $33 $c5
    ret                                           ; $4046: $c9


    ld a, [$c4c0]                                 ; $4047: $fa $c0 $c4
    cp $80                                        ; $404a: $fe $80
    ld a, $01                                     ; $404c: $3e $01
    ret nz                                        ; $404e: $c0

    xor a                                         ; $404f: $af
    ret                                           ; $4050: $c9


    ld a, [$c4c2]                                 ; $4051: $fa $c2 $c4
    cp $80                                        ; $4054: $fe $80
    ld a, $01                                     ; $4056: $3e $01
    ret nz                                        ; $4058: $c0

    xor a                                         ; $4059: $af
    ret                                           ; $405a: $c9


    ld a, [$c535]                                 ; $405b: $fa $35 $c5
    xor $01                                       ; $405e: $ee $01
    ld [$c535], a                                 ; $4060: $ea $35 $c5
    ret                                           ; $4063: $c9


    push bc                                       ; $4064: $c5
    push af                                       ; $4065: $f5
    and $07                                       ; $4066: $e6 $07
    ld b, a                                       ; $4068: $47
    swap b                                        ; $4069: $cb $30
    or b                                          ; $406b: $b0
    ld [$c534], a                                 ; $406c: $ea $34 $c5
    pop af                                        ; $406f: $f1
    pop bc                                        ; $4070: $c1
    ret                                           ; $4071: $c9


    xor a                                         ; $4072: $af
    ldh [rNR52], a                                ; $4073: $e0 $26
    ld a, $80                                     ; $4075: $3e $80
    ldh [rNR52], a                                ; $4077: $e0 $26
    ld a, $77                                     ; $4079: $3e $77
    ldh [rNR50], a                                ; $407b: $e0 $24
    ld a, $ff                                     ; $407d: $3e $ff
    ldh [rNR51], a                                ; $407f: $e0 $25
    ld a, $7e                                     ; $4081: $3e $7e
    ld [$c4c1], a                                 ; $4083: $ea $c1 $c4
    ld a, $80                                     ; $4086: $3e $80
    ld [$c4c0], a                                 ; $4088: $ea $c0 $c4
    ld [$c4c2], a                                 ; $408b: $ea $c2 $c4
    ld a, $77                                     ; $408e: $3e $77
    ld [$c534], a                                 ; $4090: $ea $34 $c5
    xor a                                         ; $4093: $af
    ld [$c4cc], a                                 ; $4094: $ea $cc $c4
    ld [$c596], a                                 ; $4097: $ea $96 $c5
    ld [$c4cb], a                                 ; $409a: $ea $cb $c4
    ld [$c532], a                                 ; $409d: $ea $32 $c5
    ld [$c533], a                                 ; $40a0: $ea $33 $c5
    ld [$c535], a                                 ; $40a3: $ea $35 $c5
    push hl                                       ; $40a6: $e5
    ld hl, $c52a                                  ; $40a7: $21 $2a $c5
    ld a, $46                                     ; $40aa: $3e $46
    ld [hl], a                                    ; $40ac: $77
    inc hl                                        ; $40ad: $23
    ld [hl], a                                    ; $40ae: $77
    inc hl                                        ; $40af: $23
    ld [hl], a                                    ; $40b0: $77
    xor a                                         ; $40b1: $af
    pop hl                                        ; $40b2: $e1
    dec a                                         ; $40b3: $3d
    ld [$c4c4], a                                 ; $40b4: $ea $c4 $c4
    ld de, $0001                                  ; $40b7: $11 $01 $00
    ld bc, $0000                                  ; $40ba: $01 $00 $00

jr_07c_40bd:
    ld hl, $c4cd                                  ; $40bd: $21 $cd $c4
    add hl, bc                                    ; $40c0: $09
    ld [hl], d                                    ; $40c1: $72
    ld hl, $c4d1                                  ; $40c2: $21 $d1 $c4
    add hl, bc                                    ; $40c5: $09
    ld [hl], d                                    ; $40c6: $72
    ld hl, $c4f3                                  ; $40c7: $21 $f3 $c4
    add hl, bc                                    ; $40ca: $09
    ld [hl], d                                    ; $40cb: $72
    ld hl, $c50b                                  ; $40cc: $21 $0b $c5
    add hl, bc                                    ; $40cf: $09
    ld [hl], d                                    ; $40d0: $72
    ld hl, $c4ff                                  ; $40d1: $21 $ff $c4
    add hl, bc                                    ; $40d4: $09
    ld [hl], d                                    ; $40d5: $72
    inc c                                         ; $40d6: $0c
    ld a, c                                       ; $40d7: $79
    cp $04                                        ; $40d8: $fe $04
    jr nz, jr_07c_40bd                            ; $40da: $20 $e1

    ld hl, $4c3b                                  ; $40dc: $21 $3b $4c
    ld bc, $c536                                  ; $40df: $01 $36 $c5
    ld d, $08                                     ; $40e2: $16 $08

jr_07c_40e4:
    ld a, [hl+]                                   ; $40e4: $2a
    ld [bc], a                                    ; $40e5: $02

Call_07c_40e6:
    inc bc                                        ; $40e6: $03
    dec d                                         ; $40e7: $15
    jr nz, jr_07c_40e4                            ; $40e8: $20 $fa

    ret                                           ; $40ea: $c9


    call Call_07c_42b8                            ; $40eb: $cd $b8 $42
    call Call_07c_4119                            ; $40ee: $cd $19 $41

    rst $18                                       ; $40f1: $df

    db $02, $7f

    ld a, [$c4c1]                                 ; $40f4: $fa $c1 $c4
    ldh [$bf], a                                  ; $40f7: $e0 $bf
    ld [$2000], a                                 ; $40f9: $ea $00 $20

    ld a, [$c535]                                 ; $40fc: $fa $35 $c5
    or a                                          ; $40ff: $b7
    jr z, jr_07c_4107                             ; $4100: $28 $05

    call Call_07c_499b                            ; $4102: $cd $9b $49
    jr jr_07c_4113                                ; $4105: $18 $0c

jr_07c_4107:
    call Call_07c_42b9                            ; $4107: $cd $b9 $42
    call Call_07c_4308                            ; $410a: $cd $08 $43
    call Call_07c_4359                            ; $410d: $cd $59 $43
    call Call_07c_43ae                            ; $4110: $cd $ae $43

jr_07c_4113:
    call Call_07c_48a0                            ; $4113: $cd $a0 $48
    jp Jump_07c_49cc                              ; $4116: $c3 $cc $49


Call_07c_4119:
    ld a, [$c4c0]                                 ; $4119: $fa $c0 $c4
    rla                                           ; $411c: $17
    jr c, jr_07c_4130                             ; $411d: $38 $11

    call Call_07c_4145                            ; $411f: $cd $45 $41
    ld a, [$c4c0]                                 ; $4122: $fa $c0 $c4
    call Call_07c_4186                            ; $4125: $cd $86 $41

    ld a, [$c4c0]                                 ; $4128: $fa $c0 $c4
    or $80                                        ; $412b: $f6 $80
    ld [$c4c0], a                                 ; $412d: $ea $c0 $c4

jr_07c_4130:
    ld a, [$c4c2]                                 ; $4130: $fa $c2 $c4
    rla                                           ; $4133: $17
    jr c, jr_07c_4144                             ; $4134: $38 $0e

    ld a, [$c4c2]                                 ; $4136: $fa $c2 $c4
    rst $18                                       ; $4139: $df

    db $00, $7f

    ld a, [$c4c2]                                 ; $413c: $fa $c2 $c4
    or $80                                        ; $413f: $f6 $80
    ld [$c4c2], a                                 ; $4141: $ea $c2 $c4

jr_07c_4144:
    ret                                           ; $4144: $c9


Call_07c_4145:
    ld a, [$c4cc]                                 ; $4145: $fa $cc $c4
    ld d, a                                       ; $4148: $57
    xor a                                         ; $4149: $af
    ld [$c4cd], a                                 ; $414a: $ea $cd $c4
    bit 0, d                                      ; $414d: $cb $42
    jr nz, jr_07c_4159                            ; $414f: $20 $08

    ld a, $08                                     ; $4151: $3e $08
    ldh [rNR12], a                                ; $4153: $e0 $12
    swap a                                        ; $4155: $cb $37
    ldh [rNR14], a                                ; $4157: $e0 $14

jr_07c_4159:
    xor a                                         ; $4159: $af
    ld [$c4ce], a                                 ; $415a: $ea $ce $c4
    bit 1, d                                      ; $415d: $cb $4a
    jr nz, jr_07c_4169                            ; $415f: $20 $08

    ld a, $08                                     ; $4161: $3e $08
    ldh [rNR22], a                                ; $4163: $e0 $17
    swap a                                        ; $4165: $cb $37
    ldh [rNR24], a                                ; $4167: $e0 $19

jr_07c_4169:
    xor a                                         ; $4169: $af
    ld [$c4d0], a                                 ; $416a: $ea $d0 $c4
    bit 3, d                                      ; $416d: $cb $5a
    jr nz, jr_07c_4179                            ; $416f: $20 $08

    ld a, $08                                     ; $4171: $3e $08
    ldh [rNR42], a                                ; $4173: $e0 $21
    swap a                                        ; $4175: $cb $37
    ldh [rNR44], a                                ; $4177: $e0 $23

jr_07c_4179:
    xor a                                         ; $4179: $af
    ld [$c4cf], a                                 ; $417a: $ea $cf $c4
    bit 2, d                                      ; $417d: $cb $52
    jr nz, jr_07c_4185                            ; $417f: $20 $04

    ld a, $00                                     ; $4181: $3e $00
    ldh [rNR32], a                                ; $4183: $e0 $1c

jr_07c_4185:
    ret                                           ; $4185: $c9


Call_07c_4186:
    push af                                       ; $4186: $f5
    ld c, a                                       ; $4187: $4f
    ld b, $00                                     ; $4188: $06 $00
    ld hl, $52a5                                  ; $418a: $21 $a5 $52
    add hl, bc                                    ; $418d: $09
    ld a, [hl]                                    ; $418e: $7e
    ld [$c4c1], a                                 ; $418f: $ea $c1 $c4
    ldh [$bf], a                                  ; $4192: $e0 $bf
    ld [$2000], a                                 ; $4194: $ea $00 $20

    pop af                                        ; $4197: $f1
    add a                                         ; $4198: $87
    ld c, a                                       ; $4199: $4f
    ld b, $00                                     ; $419a: $06 $00
    ld hl, $52d7                                  ; $419c: $21 $d7 $52
    add hl, bc                                    ; $419f: $09
    ld e, [hl]                                    ; $41a0: $5e
    inc hl                                        ; $41a1: $23
    ld h, [hl]                                    ; $41a2: $66
    ld l, e                                       ; $41a3: $6b
    ld e, [hl]                                    ; $41a4: $5e
    inc hl                                        ; $41a5: $23
    ld b, h                                       ; $41a6: $44
    ld c, l                                       ; $41a7: $4d
    rr e                                          ; $41a8: $cb $1b
    jr nc, jr_07c_41f2                            ; $41aa: $30 $46

    ld a, [bc]                                    ; $41ac: $0a
    inc bc                                        ; $41ad: $03
    ld [$c4d5], a                                 ; $41ae: $ea $d5 $c4
    ld [$c4dd], a                                 ; $41b1: $ea $dd $c4
    ld a, [bc]                                    ; $41b4: $0a
    inc bc                                        ; $41b5: $03
    ld [$c4d6], a                                 ; $41b6: $ea $d6 $c4
    ld [$c4de], a                                 ; $41b9: $ea $de $c4
    ld a, $01                                     ; $41bc: $3e $01
    ld [$c4fb], a                                 ; $41be: $ea $fb $c4
    ld [$c4cd], a                                 ; $41c1: $ea $cd $c4
    xor a                                         ; $41c4: $af
    ld [$c4d1], a                                 ; $41c5: $ea $d1 $c4
    ld [$c52d], a                                 ; $41c8: $ea $2d $c5
    ld [$c4ff], a                                 ; $41cb: $ea $ff $c4
    ld a, $01                                     ; $41ce: $3e $01
    ld [$c51f], a                                 ; $41d0: $ea $1f $c5
    xor a                                         ; $41d3: $af
    ld [$c50b], a                                 ; $41d4: $ea $0b $c5
    ld a, $c0                                     ; $41d7: $3e $c0
    ld [$c527], a                                 ; $41d9: $ea $27 $c5
    ld a, $46                                     ; $41dc: $3e $46
    ld [$c52a], a                                 ; $41de: $ea $2a $c5
    ld a, [$4c3b]                                 ; $41e1: $fa $3b $4c
    ld [$c536], a                                 ; $41e4: $ea $36 $c5
    ld a, [$4c3c]                                 ; $41e7: $fa $3c $4c
    ld [$c537], a                                 ; $41ea: $ea $37 $c5
    ld a, $08                                     ; $41ed: $3e $08
    ld [$c507], a                                 ; $41ef: $ea $07 $c5

jr_07c_41f2:
    rr e                                          ; $41f2: $cb $1b
    jr nc, jr_07c_423c                            ; $41f4: $30 $46

    ld a, [bc]                                    ; $41f6: $0a
    inc bc                                        ; $41f7: $03
    ld [$c4d7], a                                 ; $41f8: $ea $d7 $c4
    ld [$c4df], a                                 ; $41fb: $ea $df $c4
    ld a, [bc]                                    ; $41fe: $0a
    inc bc                                        ; $41ff: $03
    ld [$c4d8], a                                 ; $4200: $ea $d8 $c4
    ld [$c4e0], a                                 ; $4203: $ea $e0 $c4
    ld a, $01                                     ; $4206: $3e $01
    ld [$c4fc], a                                 ; $4208: $ea $fc $c4
    ld [$c4ce], a                                 ; $420b: $ea $ce $c4
    xor a                                         ; $420e: $af
    ld [$c4d2], a                                 ; $420f: $ea $d2 $c4
    ld [$c52e], a                                 ; $4212: $ea $2e $c5
    ld [$c500], a                                 ; $4215: $ea $00 $c5
    ld a, $01                                     ; $4218: $3e $01
    ld [$c520], a                                 ; $421a: $ea $20 $c5
    xor a                                         ; $421d: $af
    ld [$c50c], a                                 ; $421e: $ea $0c $c5
    ld a, $c0                                     ; $4221: $3e $c0
    ld [$c527], a                                 ; $4223: $ea $27 $c5
    ld a, $46                                     ; $4226: $3e $46
    ld [$c52a], a                                 ; $4228: $ea $2a $c5
    ld a, [$4c3d]                                 ; $422b: $fa $3d $4c
    ld [$c538], a                                 ; $422e: $ea $38 $c5
    ld a, [$4c3e]                                 ; $4231: $fa $3e $4c
    ld [$c539], a                                 ; $4234: $ea $39 $c5
    ld a, $08                                     ; $4237: $3e $08
    ld [$c508], a                                 ; $4239: $ea $08 $c5

jr_07c_423c:
    rr e                                          ; $423c: $cb $1b
    jr nc, jr_07c_4279                            ; $423e: $30 $39

    ld a, [bc]                                    ; $4240: $0a
    inc bc                                        ; $4241: $03
    ld [$c4d9], a                                 ; $4242: $ea $d9 $c4
    ld [$c4e1], a                                 ; $4245: $ea $e1 $c4
    ld a, [bc]                                    ; $4248: $0a
    inc bc                                        ; $4249: $03
    ld [$c4da], a                                 ; $424a: $ea $da $c4
    ld [$c4e2], a                                 ; $424d: $ea $e2 $c4
    ld a, $01                                     ; $4250: $3e $01
    ld [$c4fd], a                                 ; $4252: $ea $fd $c4
    ld [$c4cf], a                                 ; $4255: $ea $cf $c4
    xor a                                         ; $4258: $af
    ld [$c4d3], a                                 ; $4259: $ea $d3 $c4
    ld [$c52f], a                                 ; $425c: $ea $2f $c5
    ld [$c501], a                                 ; $425f: $ea $01 $c5
    ld [$c521], a                                 ; $4262: $ea $21 $c5
    ld [$c50d], a                                 ; $4265: $ea $0d $c5
    ld a, [$4c3f]                                 ; $4268: $fa $3f $4c
    ld [$c53a], a                                 ; $426b: $ea $3a $c5
    ld a, [$4c40]                                 ; $426e: $fa $40 $4c
    ld [$c53b], a                                 ; $4271: $ea $3b $c5
    ld a, $40                                     ; $4274: $3e $40
    ld [$c509], a                                 ; $4276: $ea $09 $c5

jr_07c_4279:
    rr e                                          ; $4279: $cb $1b
    jr nc, jr_07c_42b3                            ; $427b: $30 $36

    ld a, [bc]                                    ; $427d: $0a
    inc bc                                        ; $427e: $03
    ld [$c4db], a                                 ; $427f: $ea $db $c4
    ld [$c4e3], a                                 ; $4282: $ea $e3 $c4
    ld a, [bc]                                    ; $4285: $0a
    inc bc                                        ; $4286: $03
    ld [$c4dc], a                                 ; $4287: $ea $dc $c4
    ld [$c4e4], a                                 ; $428a: $ea $e4 $c4
    ld a, $01                                     ; $428d: $3e $01
    ld [$c4fe], a                                 ; $428f: $ea $fe $c4
    ld [$c4d0], a                                 ; $4292: $ea $d0 $c4
    xor a                                         ; $4295: $af
    ld [$c4d4], a                                 ; $4296: $ea $d4 $c4
    ld [$c502], a                                 ; $4299: $ea $02 $c5
    ld [$c522], a                                 ; $429c: $ea $22 $c5
    ld [$c50e], a                                 ; $429f: $ea $0e $c5
    ld a, [$4c41]                                 ; $42a2: $fa $41 $4c
    ld [$c53c], a                                 ; $42a5: $ea $3c $c5
    ld a, [$4c42]                                 ; $42a8: $fa $42 $4c
    ld [$c53d], a                                 ; $42ab: $ea $3d $c5
    ld a, $40                                     ; $42ae: $3e $40
    ld [$c50a], a                                 ; $42b0: $ea $0a $c5

jr_07c_42b3:
    xor a                                         ; $42b3: $af
    ld [$c535], a                                 ; $42b4: $ea $35 $c5
    ret                                           ; $42b7: $c9


Call_07c_42b8:
    ret                                           ; $42b8: $c9


Call_07c_42b9:
    ld a, [$c4cd]                                 ; $42b9: $fa $cd $c4
    or a                                          ; $42bc: $b7
    jr z, jr_07c_42f8                             ; $42bd: $28 $39

    ld a, [$c4f7]                                 ; $42bf: $fa $f7 $c4
    or a                                          ; $42c2: $b7
    jr z, jr_07c_42d9                             ; $42c3: $28 $14

    ld hl, $c503                                  ; $42c5: $21 $03 $c5
    dec [hl]                                      ; $42c8: $35
    jr nz, jr_07c_42d9                            ; $42c9: $20 $0e

    ld a, [$c4fb]                                 ; $42cb: $fa $fb $c4
    cp $01                                        ; $42ce: $fe $01
    jr z, jr_07c_42d9                             ; $42d0: $28 $07

    ld a, [$c4cc]                                 ; $42d2: $fa $cc $c4
    rrca                                          ; $42d5: $0f
    call nc, Call_07c_4737                        ; $42d6: $d4 $37 $47

jr_07c_42d9:
    ld hl, $c4fb                                  ; $42d9: $21 $fb $c4
    dec [hl]                                      ; $42dc: $35
    jr nz, jr_07c_42f4                            ; $42dd: $20 $15

    ld hl, $c4d5                                  ; $42df: $21 $d5 $c4
    ld a, [hl+]                                   ; $42e2: $2a
    ld h, [hl]                                    ; $42e3: $66
    ld l, a                                       ; $42e4: $6f
    ld bc, $0000                                  ; $42e5: $01 $00 $00
    call Call_07c_43ef                            ; $42e8: $cd $ef $43
    ld a, [$c4cd]                                 ; $42eb: $fa $cd $c4
    or a                                          ; $42ee: $b7
    jr z, jr_07c_42f8                             ; $42ef: $28 $07

    call Call_07c_46f8                            ; $42f1: $cd $f8 $46

jr_07c_42f4:
    xor a                                         ; $42f4: $af
    jp Jump_07c_492e                              ; $42f5: $c3 $2e $49


jr_07c_42f8:
    ld a, [$c4cc]                                 ; $42f8: $fa $cc $c4
    bit 0, a                                      ; $42fb: $cb $47
    jr nz, jr_07c_4307                            ; $42fd: $20 $08

    ld a, $08                                     ; $42ff: $3e $08
    ldh [rNR12], a                                ; $4301: $e0 $12
    swap a                                        ; $4303: $cb $37
    ldh [rNR14], a                                ; $4305: $e0 $14

jr_07c_4307:
    ret                                           ; $4307: $c9


Call_07c_4308:
    ld a, [$c4ce]                                 ; $4308: $fa $ce $c4
    or a                                          ; $430b: $b7
    jr z, jr_07c_4349                             ; $430c: $28 $3b

    ld a, [$c4f8]                                 ; $430e: $fa $f8 $c4
    or a                                          ; $4311: $b7
    jr z, jr_07c_4329                             ; $4312: $28 $15

    ld hl, $c504                                  ; $4314: $21 $04 $c5
    dec [hl]                                      ; $4317: $35
    jr nz, jr_07c_4329                            ; $4318: $20 $0f

    ld a, [$c4fc]                                 ; $431a: $fa $fc $c4
    cp $01                                        ; $431d: $fe $01
    jr z, jr_07c_4329                             ; $431f: $28 $08

    ld a, [$c4cc]                                 ; $4321: $fa $cc $c4
    bit 1, a                                      ; $4324: $cb $4f
    call z, Call_07c_47ab                         ; $4326: $cc $ab $47

jr_07c_4329:
    ld hl, $c4fc                                  ; $4329: $21 $fc $c4
    dec [hl]                                      ; $432c: $35
    jr nz, jr_07c_4344                            ; $432d: $20 $15

    ld hl, $c4d7                                  ; $432f: $21 $d7 $c4
    ld a, [hl+]                                   ; $4332: $2a
    ld h, [hl]                                    ; $4333: $66
    ld l, a                                       ; $4334: $6f
    ld bc, $0001                                  ; $4335: $01 $01 $00
    call Call_07c_43ef                            ; $4338: $cd $ef $43
    ld a, [$c4ce]                                 ; $433b: $fa $ce $c4
    or a                                          ; $433e: $b7
    jr z, jr_07c_4349                             ; $433f: $28 $08

    call Call_07c_476f                            ; $4341: $cd $6f $47

jr_07c_4344:
    ld a, $01                                     ; $4344: $3e $01
    jp Jump_07c_492e                              ; $4346: $c3 $2e $49


jr_07c_4349:
    ld a, [$c4cc]                                 ; $4349: $fa $cc $c4
    bit 1, a                                      ; $434c: $cb $4f
    jr nz, jr_07c_4358                            ; $434e: $20 $08

    ld a, $08                                     ; $4350: $3e $08
    ldh [rNR22], a                                ; $4352: $e0 $17
    swap a                                        ; $4354: $cb $37
    ldh [rNR24], a                                ; $4356: $e0 $19

jr_07c_4358:
    ret                                           ; $4358: $c9


Call_07c_4359:
    ld a, [$c4cf]                                 ; $4359: $fa $cf $c4
    or a                                          ; $435c: $b7
    jr z, jr_07c_439e                             ; $435d: $28 $3f

    ld a, [$c4f9]                                 ; $435f: $fa $f9 $c4
    or a                                          ; $4362: $b7
    jr z, jr_07c_437e                             ; $4363: $28 $19

    ld hl, $c505                                  ; $4365: $21 $05 $c5
    dec [hl]                                      ; $4368: $35
    jr nz, jr_07c_437e                            ; $4369: $20 $13

    ld a, [$c4cc]                                 ; $436b: $fa $cc $c4
    bit 2, a                                      ; $436e: $cb $57
    jr nz, jr_07c_437e                            ; $4370: $20 $0c

    ld a, [$c4fd]                                 ; $4372: $fa $fd $c4
    cp $01                                        ; $4375: $fe $01
    jr z, jr_07c_437e                             ; $4377: $28 $05

    ld a, [$c509]                                 ; $4379: $fa $09 $c5
    ldh [rNR32], a                                ; $437c: $e0 $1c

jr_07c_437e:
    ld hl, $c4fd                                  ; $437e: $21 $fd $c4
    dec [hl]                                      ; $4381: $35
    jr nz, jr_07c_4399                            ; $4382: $20 $15

    ld hl, $c4d9                                  ; $4384: $21 $d9 $c4
    ld a, [hl+]                                   ; $4387: $2a
    ld h, [hl]                                    ; $4388: $66
    ld l, a                                       ; $4389: $6f
    ld bc, $0002                                  ; $438a: $01 $02 $00
    call Call_07c_43ef                            ; $438d: $cd $ef $43
    ld a, [$c4cf]                                 ; $4390: $fa $cf $c4
    or a                                          ; $4393: $b7
    jr z, jr_07c_439e                             ; $4394: $28 $08

    call Call_07c_47e3                            ; $4396: $cd $e3 $47

jr_07c_4399:
    ld a, $02                                     ; $4399: $3e $02
    jp Jump_07c_492e                              ; $439b: $c3 $2e $49


jr_07c_439e:
    ld a, [$c4cc]                                 ; $439e: $fa $cc $c4
    bit 2, a                                      ; $43a1: $cb $57
    jr nz, jr_07c_43ad                            ; $43a3: $20 $08

    ld a, $00                                     ; $43a5: $3e $00
    ldh [rNR32], a                                ; $43a7: $e0 $1c
    ld a, $80                                     ; $43a9: $3e $80
    ldh [rNR34], a                                ; $43ab: $e0 $1e

jr_07c_43ad:
    ret                                           ; $43ad: $c9


Call_07c_43ae:
    ld a, [$c4d0]                                 ; $43ae: $fa $d0 $c4
    or a                                          ; $43b1: $b7
    jr z, jr_07c_43db                             ; $43b2: $28 $27

    ld hl, $c4fe                                  ; $43b4: $21 $fe $c4
    dec [hl]                                      ; $43b7: $35
    jr nz, jr_07c_43d1                            ; $43b8: $20 $17

    ld hl, $c4db                                  ; $43ba: $21 $db $c4
    ld a, [hl+]                                   ; $43bd: $2a
    ld h, [hl]                                    ; $43be: $66
    ld l, a                                       ; $43bf: $6f
    ld bc, $0003                                  ; $43c0: $01 $03 $00
    call Call_07c_43ef                            ; $43c3: $cd $ef $43
    ld a, [$c4d0]                                 ; $43c6: $fa $d0 $c4
    or a                                          ; $43c9: $b7
    jr z, jr_07c_43db                             ; $43ca: $28 $0f

    call Call_07c_4851                            ; $43cc: $cd $51 $48
    jr jr_07c_43ee                                ; $43cf: $18 $1d

jr_07c_43d1:
    ld a, [$c532]                                 ; $43d1: $fa $32 $c5
    or a                                          ; $43d4: $b7
    jr z, jr_07c_43ee                             ; $43d5: $28 $17

    call Call_07c_487f                            ; $43d7: $cd $7f $48
    ret                                           ; $43da: $c9


jr_07c_43db:
    ld a, [$c4cc]                                 ; $43db: $fa $cc $c4
    bit 3, a                                      ; $43de: $cb $5f
    jr nz, jr_07c_43ee                            ; $43e0: $20 $0c

    xor a                                         ; $43e2: $af
    ld [$c532], a                                 ; $43e3: $ea $32 $c5
    ld a, $08                                     ; $43e6: $3e $08
    ldh [rNR42], a                                ; $43e8: $e0 $21
    swap a                                        ; $43ea: $cb $37
    ldh [rNR44], a                                ; $43ec: $e0 $23

jr_07c_43ee:
    ret                                           ; $43ee: $c9


Call_07c_43ef:
Jump_07c_43ef:
    ld a, [hl+]                                   ; $43ef: $2a
    push hl                                       ; $43f0: $e5
    push af                                       ; $43f1: $f5
    cp $d0                                        ; $43f2: $fe $d0
    jr c, jr_07c_4467                             ; $43f4: $38 $71

    sub $d0                                       ; $43f6: $d6 $d0
    add a                                         ; $43f8: $87
    ld e, a                                       ; $43f9: $5f
    ld d, $00                                     ; $43fa: $16 $00
    ld hl, $4407                                  ; $43fc: $21 $07 $44
    add hl, de                                    ; $43ff: $19
    ld e, [hl]                                    ; $4400: $5e
    inc hl                                        ; $4401: $23
    ld d, [hl]                                    ; $4402: $56
    ld h, d                                       ; $4403: $62
    ld l, e                                       ; $4404: $6b
    pop af                                        ; $4405: $f1
    jp hl                                         ; $4406: $e9


    db $6f, $45, $7a, $45, $7a, $45, $7a, $45, $7a, $45, $7a, $45

    ld a, d                                       ; $4413: $7a
    ld b, l                                       ; $4414: $45

    db $92, $45, $9a, $45, $a2, $45

    ret c                                         ; $441b: $d8

    ld b, [hl]                                    ; $441c: $46
    ret c                                         ; $441d: $d8

    ld b, [hl]                                    ; $441e: $46

    db $ab, $45, $c6, $45

    db $d4                                        ; $4423: $d4
    ld b, l                                       ; $4424: $45

    db $e0, $45, $f5, $45

    rrca                                          ; $4429: $0f
    ld b, [hl]                                    ; $442a: $46

    db $16, $46, $2d, $46, $3e, $46, $4b, $46, $5a, $46, $67, $46, $77, $46, $84, $46
    db $91, $46, $a3, $46

    or b                                          ; $443f: $b0
    ld b, [hl]                                    ; $4440: $46
    cp l                                          ; $4441: $bd
    ld b, [hl]                                    ; $4442: $46

    db $cb, $46

    ret c                                         ; $4445: $d8

    ld b, [hl]                                    ; $4446: $46
    ret c                                         ; $4447: $d8

    ld b, [hl]                                    ; $4448: $46
    ret c                                         ; $4449: $d8

    ld b, [hl]                                    ; $444a: $46
    ret c                                         ; $444b: $d8

    ld b, [hl]                                    ; $444c: $46
    ret c                                         ; $444d: $d8

    ld b, [hl]                                    ; $444e: $46
    ret c                                         ; $444f: $d8

    ld b, [hl]                                    ; $4450: $46
    ret c                                         ; $4451: $d8

    ld b, [hl]                                    ; $4452: $46
    ret c                                         ; $4453: $d8

    ld b, [hl]                                    ; $4454: $46
    ret c                                         ; $4455: $d8

    ld b, [hl]                                    ; $4456: $46
    ret c                                         ; $4457: $d8

    ld b, [hl]                                    ; $4458: $46
    ret c                                         ; $4459: $d8

    ld b, [hl]                                    ; $445a: $46
    ret c                                         ; $445b: $d8

    ld b, [hl]                                    ; $445c: $46
    ret c                                         ; $445d: $d8

    ld b, [hl]                                    ; $445e: $46
    ret c                                         ; $445f: $d8

    ld b, [hl]                                    ; $4460: $46
    ret c                                         ; $4461: $d8

    ld b, [hl]                                    ; $4462: $46
    ret c                                         ; $4463: $d8

    ld b, [hl]                                    ; $4464: $46

    db $d8, $46

jr_07c_4467:
    push af                                       ; $4467: $f5
    ld a, [hl]                                    ; $4468: $7e
    ld e, a                                       ; $4469: $5f
    ld hl, $c4d1                                  ; $446a: $21 $d1 $c4
    add hl, bc                                    ; $446d: $09
    ld a, [hl]                                    ; $446e: $7e
    cp $80                                        ; $446f: $fe $80
    jr z, jr_07c_448b                             ; $4471: $28 $18

    ld [hl], $01                                  ; $4473: $36 $01
    xor a                                         ; $4475: $af
    ld hl, $c51b                                  ; $4476: $21 $1b $c5
    add hl, bc                                    ; $4479: $09
    ld [hl], a                                    ; $447a: $77
    ld hl, $c523                                  ; $447b: $21 $23 $c5
    add hl, bc                                    ; $447e: $09
    ld [hl], a                                    ; $447f: $77
    inc [hl]                                      ; $4480: $34
    ld hl, $c517                                  ; $4481: $21 $17 $c5
    add hl, bc                                    ; $4484: $09
    ld a, [hl]                                    ; $4485: $7e
    ld hl, $c513                                  ; $4486: $21 $13 $c5
    add hl, bc                                    ; $4489: $09
    ld [hl], a                                    ; $448a: $77

jr_07c_448b:
    pop af                                        ; $448b: $f1
    push de                                       ; $448c: $d5
    ld hl, $c50f                                  ; $448d: $21 $0f $c5
    add hl, bc                                    ; $4490: $09
    ld d, [hl]                                    ; $4491: $56
    and $0f                                       ; $4492: $e6 $0f
    inc a                                         ; $4494: $3c
    cp d                                          ; $4495: $ba
    jr nc, jr_07c_449b                            ; $4496: $30 $03

    ld e, a                                       ; $4498: $5f
    ld a, d                                       ; $4499: $7a
    ld d, e                                       ; $449a: $53

jr_07c_449b:
    ld e, a                                       ; $449b: $5f

jr_07c_449c:
    dec d                                         ; $449c: $15
    jr z, jr_07c_44a2                             ; $449d: $28 $03

    add e                                         ; $449f: $83
    jr jr_07c_449c                                ; $44a0: $18 $fa

jr_07c_44a2:
    ld hl, $c4fb                                  ; $44a2: $21 $fb $c4
    add hl, bc                                    ; $44a5: $09
    ld [hl], a                                    ; $44a6: $77
    pop de                                        ; $44a7: $d1
    ld d, a                                       ; $44a8: $57
    ld a, e                                       ; $44a9: $7b
    cp $d9                                        ; $44aa: $fe $d9
    ld a, d                                       ; $44ac: $7a
    jr z, jr_07c_44d6                             ; $44ad: $28 $27

    ld e, a                                       ; $44af: $5f
    ld hl, $c4ff                                  ; $44b0: $21 $ff $c4
    add hl, bc                                    ; $44b3: $09
    ld a, [hl]                                    ; $44b4: $7e
    cp $08                                        ; $44b5: $fe $08
    ld d, a                                       ; $44b7: $57
    ld a, e                                       ; $44b8: $7b
    jr z, jr_07c_44d6                             ; $44b9: $28 $1b

    push hl                                       ; $44bb: $e5
    push bc                                       ; $44bc: $c5
    ld b, $00                                     ; $44bd: $06 $00
    ld c, a                                       ; $44bf: $4f
    ld hl, $0000                                  ; $44c0: $21 $00 $00

jr_07c_44c3:
    add hl, bc                                    ; $44c3: $09
    dec d                                         ; $44c4: $15
    jr nz, jr_07c_44c3                            ; $44c5: $20 $fc

    srl h                                         ; $44c7: $cb $3c
    rr l                                          ; $44c9: $cb $1d
    srl h                                         ; $44cb: $cb $3c
    rr l                                          ; $44cd: $cb $1d
    srl h                                         ; $44cf: $cb $3c
    rr l                                          ; $44d1: $cb $1d
    ld a, l                                       ; $44d3: $7d
    pop bc                                        ; $44d4: $c1
    pop hl                                        ; $44d5: $e1

jr_07c_44d6:
    ld hl, $c503                                  ; $44d6: $21 $03 $c5
    add hl, bc                                    ; $44d9: $09
    ld [hl], a                                    ; $44da: $77
    pop af                                        ; $44db: $f1
    and $f0                                       ; $44dc: $e6 $f0
    ld hl, $c4f7                                  ; $44de: $21 $f7 $c4
    add hl, bc                                    ; $44e1: $09
    ld [hl], a                                    ; $44e2: $77
    or a                                          ; $44e3: $b7
    jr nz, jr_07c_44e9                            ; $44e4: $20 $03

    jp Jump_07c_4565                              ; $44e6: $c3 $65 $45


jr_07c_44e9:
    swap a                                        ; $44e9: $cb $37
    dec a                                         ; $44eb: $3d
    ld h, a                                       ; $44ec: $67
    ld a, $03                                     ; $44ed: $3e $03
    cp c                                          ; $44ef: $b9
    ld a, h                                       ; $44f0: $7c
    jr z, jr_07c_44f5                             ; $44f1: $28 $02

    jr jr_07c_453b                                ; $44f3: $18 $46

jr_07c_44f5:
    push af                                       ; $44f5: $f5
    ld hl, $c4ef                                  ; $44f6: $21 $ef $c4
    add hl, bc                                    ; $44f9: $09
    ld a, [hl]                                    ; $44fa: $7e
    ld d, a                                       ; $44fb: $57
    add a                                         ; $44fc: $87
    add d                                         ; $44fd: $82
    add a                                         ; $44fe: $87
    add a                                         ; $44ff: $87
    add a                                         ; $4500: $87
    ld e, a                                       ; $4501: $5f
    pop af                                        ; $4502: $f1
    ld hl, $4f41                                  ; $4503: $21 $41 $4f
    add a                                         ; $4506: $87
    ld d, c                                       ; $4507: $51
    ld c, a                                       ; $4508: $4f
    add hl, bc                                    ; $4509: $09
    ld c, e                                       ; $450a: $4b
    add hl, bc                                    ; $450b: $09
    ld c, d                                       ; $450c: $4a
    ld a, [hl+]                                   ; $450d: $2a
    ld h, [hl]                                    ; $450e: $66
    ld l, a                                       ; $450f: $6f
    ld a, [hl+]                                   ; $4510: $2a
    ld d, a                                       ; $4511: $57
    ld a, [$c4c4]                                 ; $4512: $fa $c4 $c4
    and $77                                       ; $4515: $e6 $77
    or d                                          ; $4517: $b2
    ld [$c4c4], a                                 ; $4518: $ea $c4 $c4
    ld de, $c4eb                                  ; $451b: $11 $eb $c4
    ld a, [hl+]                                   ; $451e: $2a
    ld [de], a                                    ; $451f: $12
    inc de                                        ; $4520: $13
    ld a, [hl+]                                   ; $4521: $2a
    ld [de], a                                    ; $4522: $12
    inc de                                        ; $4523: $13
    ld b, [hl]                                    ; $4524: $46
    inc hl                                        ; $4525: $23
    ld a, [hl+]                                   ; $4526: $2a
    ld [de], a                                    ; $4527: $12
    inc de                                        ; $4528: $13
    ld a, b                                       ; $4529: $78
    ld [de], a                                    ; $452a: $12
    ld b, $00                                     ; $452b: $06 $00
    ld a, l                                       ; $452d: $7d
    ld d, h                                       ; $452e: $54
    ld hl, $c530                                  ; $452f: $21 $30 $c5
    ld [hl+], a                                   ; $4532: $22
    ld [hl], d                                    ; $4533: $72
    ld a, $01                                     ; $4534: $3e $01
    ld [$c532], a                                 ; $4536: $ea $32 $c5
    jr jr_07c_4565                                ; $4539: $18 $2a

jr_07c_453b:
    ld hl, $c4e5                                  ; $453b: $21 $e5 $c4
    add hl, bc                                    ; $453e: $09
    add hl, bc                                    ; $453f: $09
    push hl                                       ; $4540: $e5
    ld hl, $c4ef                                  ; $4541: $21 $ef $c4
    add hl, bc                                    ; $4544: $09
    ld e, [hl]                                    ; $4545: $5e
    ld d, $00                                     ; $4546: $16 $00
    ld hl, $4c43                                  ; $4548: $21 $43 $4c
    add hl, de                                    ; $454b: $19
    add a                                         ; $454c: $87
    ld e, [hl]                                    ; $454d: $5e
    add e                                         ; $454e: $83
    ld hl, $c50b                                  ; $454f: $21 $0b $c5
    add hl, bc                                    ; $4552: $09
    ld e, [hl]                                    ; $4553: $5e
    add e                                         ; $4554: $83
    add e                                         ; $4555: $83
    ld e, a                                       ; $4556: $5f
    ld hl, $4c4b                                  ; $4557: $21 $4b $4c
    add hl, de                                    ; $455a: $19
    ld a, [hl+]                                   ; $455b: $2a
    ld e, a                                       ; $455c: $5f
    ld d, [hl]                                    ; $455d: $56
    call Call_07c_4982                            ; $455e: $cd $82 $49
    pop hl                                        ; $4561: $e1
    ld a, e                                       ; $4562: $7b
    ld [hl+], a                                   ; $4563: $22
    ld [hl], d                                    ; $4564: $72

Jump_07c_4565:
jr_07c_4565:
    pop de                                        ; $4565: $d1
    ld hl, $c4d5                                  ; $4566: $21 $d5 $c4
    add hl, bc                                    ; $4569: $09
    add hl, bc                                    ; $456a: $09
    ld [hl], e                                    ; $456b: $73
    inc hl                                        ; $456c: $23
    ld [hl], d                                    ; $456d: $72
    ret                                           ; $456e: $c9


    pop hl                                        ; $456f: $e1
    ld a, [hl+]                                   ; $4570: $2a
    push hl                                       ; $4571: $e5
    ld hl, $c50f                                  ; $4572: $21 $0f $c5
    add hl, bc                                    ; $4575: $09
    ld [hl], a                                    ; $4576: $77
    jp Jump_07c_46f4                              ; $4577: $c3 $f4 $46


    and $07                                       ; $457a: $e6 $07
    dec a                                         ; $457c: $3d
    ld hl, $c4ef                                  ; $457d: $21 $ef $c4
    add hl, bc                                    ; $4580: $09
    push af                                       ; $4581: $f5
    ld a, c                                       ; $4582: $79
    cp $02                                        ; $4583: $fe $02
    jr nz, jr_07c_458d                            ; $4585: $20 $06

    pop af                                        ; $4587: $f1
    inc a                                         ; $4588: $3c
    ld [hl], a                                    ; $4589: $77
    jp Jump_07c_46f4                              ; $458a: $c3 $f4 $46


jr_07c_458d:
    pop af                                        ; $458d: $f1
    ld [hl], a                                    ; $458e: $77
    jp Jump_07c_46f4                              ; $458f: $c3 $f4 $46


    ld hl, $c4ef                                  ; $4592: $21 $ef $c4
    add hl, bc                                    ; $4595: $09
    inc [hl]                                      ; $4596: $34
    jp Jump_07c_46f4                              ; $4597: $c3 $f4 $46


    ld hl, $c4ef                                  ; $459a: $21 $ef $c4
    add hl, bc                                    ; $459d: $09
    dec [hl]                                      ; $459e: $35
    jp Jump_07c_46f4                              ; $459f: $c3 $f4 $46


    ld hl, $c4d1                                  ; $45a2: $21 $d1 $c4
    add hl, bc                                    ; $45a5: $09
    ld [hl], $80                                  ; $45a6: $36 $80
    jp Jump_07c_46f4                              ; $45a8: $c3 $f4 $46


    pop hl                                        ; $45ab: $e1
    ld a, [hl+]                                   ; $45ac: $2a
    push hl                                       ; $45ad: $e5
    push bc                                       ; $45ae: $c5
    inc c                                         ; $45af: $0c
    ld e, $ee                                     ; $45b0: $1e $ee

jr_07c_45b2:
    dec c                                         ; $45b2: $0d
    jr z, jr_07c_45ba                             ; $45b3: $28 $05

    rlca                                          ; $45b5: $07
    rlc e                                         ; $45b6: $cb $03
    jr jr_07c_45b2                                ; $45b8: $18 $f8

jr_07c_45ba:
    ld d, a                                       ; $45ba: $57
    ld hl, $c4c4                                  ; $45bb: $21 $c4 $c4
    ld a, [hl]                                    ; $45be: $7e
    and e                                         ; $45bf: $a3
    or d                                          ; $45c0: $b2
    ld [hl], a                                    ; $45c1: $77
    pop bc                                        ; $45c2: $c1
    jp Jump_07c_46f4                              ; $45c3: $c3 $f4 $46


    pop de                                        ; $45c6: $d1
    push de                                       ; $45c7: $d5
    dec de                                        ; $45c8: $1b
    ld hl, $c4dd                                  ; $45c9: $21 $dd $c4
    add hl, bc                                    ; $45cc: $09
    add hl, bc                                    ; $45cd: $09
    ld [hl], e                                    ; $45ce: $73
    inc hl                                        ; $45cf: $23
    ld [hl], d                                    ; $45d0: $72
    jp Jump_07c_46f4                              ; $45d1: $c3 $f4 $46


    pop hl                                        ; $45d4: $e1
    ld hl, $c4dd                                  ; $45d5: $21 $dd $c4
    add hl, bc                                    ; $45d8: $09
    add hl, bc                                    ; $45d9: $09
    ld a, [hl+]                                   ; $45da: $2a
    ld h, [hl]                                    ; $45db: $66
    ld l, a                                       ; $45dc: $6f
    jp Jump_07c_43ef                              ; $45dd: $c3 $ef $43


    pop de                                        ; $45e0: $d1
    ld a, [de]                                    ; $45e1: $1a
    inc de                                        ; $45e2: $13
    push af                                       ; $45e3: $f5
    call Call_07c_46e0                            ; $45e4: $cd $e0 $46
    ld [hl], e                                    ; $45e7: $73
    inc hl                                        ; $45e8: $23
    ld [hl], d                                    ; $45e9: $72
    inc hl                                        ; $45ea: $23
    pop af                                        ; $45eb: $f1
    ld [hl], a                                    ; $45ec: $77
    inc hl                                        ; $45ed: $23
    push de                                       ; $45ee: $d5
    call Call_07c_46e9                            ; $45ef: $cd $e9 $46
    jp Jump_07c_46f4                              ; $45f2: $c3 $f4 $46


    call Call_07c_46e0                            ; $45f5: $cd $e0 $46
    dec hl                                        ; $45f8: $2b
    ld a, [hl]                                    ; $45f9: $7e
    dec a                                         ; $45fa: $3d
    jr z, jr_07c_4607                             ; $45fb: $28 $0a

    ld [hl-], a                                   ; $45fd: $32
    ld d, [hl]                                    ; $45fe: $56
    dec hl                                        ; $45ff: $2b
    ld e, [hl]                                    ; $4600: $5e
    pop hl                                        ; $4601: $e1
    ld h, d                                       ; $4602: $62
    ld l, e                                       ; $4603: $6b
    jp Jump_07c_43ef                              ; $4604: $c3 $ef $43


jr_07c_4607:
    dec hl                                        ; $4607: $2b
    dec hl                                        ; $4608: $2b
    call Call_07c_46e9                            ; $4609: $cd $e9 $46
    jp Jump_07c_46f4                              ; $460c: $c3 $f4 $46


    pop hl                                        ; $460f: $e1
    ld a, [hl+]                                   ; $4610: $2a
    ld h, [hl]                                    ; $4611: $66
    ld l, a                                       ; $4612: $6f
    jp Jump_07c_43ef                              ; $4613: $c3 $ef $43


    call Call_07c_46e0                            ; $4616: $cd $e0 $46
    pop de                                        ; $4619: $d1
    ld a, e                                       ; $461a: $7b
    ld [hl+], a                                   ; $461b: $22
    ld a, d                                       ; $461c: $7a
    ld [hl+], a                                   ; $461d: $22
    ld a, [de]                                    ; $461e: $1a
    ld b, a                                       ; $461f: $47
    inc de                                        ; $4620: $13
    ld a, [de]                                    ; $4621: $1a
    ld d, a                                       ; $4622: $57
    ld e, b                                       ; $4623: $58
    ld b, $00                                     ; $4624: $06 $00
    push de                                       ; $4626: $d5
    call Call_07c_46e9                            ; $4627: $cd $e9 $46
    jp Jump_07c_46f4                              ; $462a: $c3 $f4 $46


    pop de                                        ; $462d: $d1
    call Call_07c_46e0                            ; $462e: $cd $e0 $46
    dec hl                                        ; $4631: $2b
    ld a, [hl-]                                   ; $4632: $3a
    ld e, [hl]                                    ; $4633: $5e
    ld d, a                                       ; $4634: $57
    inc de                                        ; $4635: $13
    inc de                                        ; $4636: $13
    push de                                       ; $4637: $d5
    call Call_07c_46e9                            ; $4638: $cd $e9 $46
    jp Jump_07c_46f4                              ; $463b: $c3 $f4 $46


    pop de                                        ; $463e: $d1
    ld a, [de]                                    ; $463f: $1a
    inc de                                        ; $4640: $13
    ld hl, $c52d                                  ; $4641: $21 $2d $c5
    add hl, bc                                    ; $4644: $09
    ld [hl], a                                    ; $4645: $77
    ld h, d                                       ; $4646: $62
    ld l, e                                       ; $4647: $6b
    jp Jump_07c_43ef                              ; $4648: $c3 $ef $43


    pop de                                        ; $464b: $d1
    ld a, [de]                                    ; $464c: $1a
    and $c0                                       ; $464d: $e6 $c0
    inc de                                        ; $464f: $13
    ld hl, $c4c6                                  ; $4650: $21 $c6 $c4
    add hl, bc                                    ; $4653: $09
    ld [hl], a                                    ; $4654: $77
    ld h, d                                       ; $4655: $62
    ld l, e                                       ; $4656: $6b
    jp Jump_07c_43ef                              ; $4657: $c3 $ef $43


    pop de                                        ; $465a: $d1
    ld a, [de]                                    ; $465b: $1a
    inc de                                        ; $465c: $13
    ld hl, $c527                                  ; $465d: $21 $27 $c5
    add hl, bc                                    ; $4660: $09
    ld [hl], a                                    ; $4661: $77
    ld h, d                                       ; $4662: $62
    ld l, e                                       ; $4663: $6b
    jp Jump_07c_43ef                              ; $4664: $c3 $ef $43


    pop de                                        ; $4667: $d1
    ld a, [de]                                    ; $4668: $1a
    inc de                                        ; $4669: $13
    ld [$c4ca], a                                 ; $466a: $ea $ca $c4
    ld a, $01                                     ; $466d: $3e $01
    ld [$c4cb], a                                 ; $466f: $ea $cb $c4
    ld h, d                                       ; $4672: $62
    ld l, e                                       ; $4673: $6b
    jp Jump_07c_43ef                              ; $4674: $c3 $ef $43


    pop de                                        ; $4677: $d1
    ld a, [de]                                    ; $4678: $1a
    inc de                                        ; $4679: $13
    ld hl, $c4ff                                  ; $467a: $21 $ff $c4
    add hl, bc                                    ; $467d: $09
    ld [hl], a                                    ; $467e: $77
    ld h, d                                       ; $467f: $62
    ld l, e                                       ; $4680: $6b
    jp Jump_07c_43ef                              ; $4681: $c3 $ef $43


    pop de                                        ; $4684: $d1
    ld a, [de]                                    ; $4685: $1a
    inc de                                        ; $4686: $13
    ld hl, $c507                                  ; $4687: $21 $07 $c5
    add hl, bc                                    ; $468a: $09
    ld [hl], a                                    ; $468b: $77
    ld h, d                                       ; $468c: $62
    ld l, e                                       ; $468d: $6b
    jp Jump_07c_43ef                              ; $468e: $c3 $ef $43


    pop de                                        ; $4691: $d1
    ld a, [de]                                    ; $4692: $1a
    inc de                                        ; $4693: $13
    ld hl, $c513                                  ; $4694: $21 $13 $c5
    add hl, bc                                    ; $4697: $09
    ld [hl], a                                    ; $4698: $77
    ld hl, $c517                                  ; $4699: $21 $17 $c5
    add hl, bc                                    ; $469c: $09
    ld [hl], a                                    ; $469d: $77
    ld h, d                                       ; $469e: $62
    ld l, e                                       ; $469f: $6b
    jp Jump_07c_43ef                              ; $46a0: $c3 $ef $43


    pop de                                        ; $46a3: $d1
    ld a, [de]                                    ; $46a4: $1a
    inc de                                        ; $46a5: $13
    ld hl, $c51f                                  ; $46a6: $21 $1f $c5
    add hl, bc                                    ; $46a9: $09
    ld [hl], a                                    ; $46aa: $77
    ld h, d                                       ; $46ab: $62
    ld l, e                                       ; $46ac: $6b
    jp Jump_07c_43ef                              ; $46ad: $c3 $ef $43


    pop de                                        ; $46b0: $d1
    ld a, [de]                                    ; $46b1: $1a
    inc de                                        ; $46b2: $13
    ld hl, $c50b                                  ; $46b3: $21 $0b $c5
    add hl, bc                                    ; $46b6: $09
    ld [hl], a                                    ; $46b7: $77
    ld h, d                                       ; $46b8: $62
    ld l, e                                       ; $46b9: $6b
    jp Jump_07c_43ef                              ; $46ba: $c3 $ef $43


    pop de                                        ; $46bd: $d1
    ld a, [de]                                    ; $46be: $1a
    inc de                                        ; $46bf: $13
    ld hl, $c50b                                  ; $46c0: $21 $0b $c5
    add hl, bc                                    ; $46c3: $09
    add [hl]                                      ; $46c4: $86
    ld [hl], a                                    ; $46c5: $77
    ld h, d                                       ; $46c6: $62
    ld l, e                                       ; $46c7: $6b
    jp Jump_07c_43ef                              ; $46c8: $c3 $ef $43


    pop de                                        ; $46cb: $d1
    ld a, [de]                                    ; $46cc: $1a
    inc de                                        ; $46cd: $13
    ld hl, $c52a                                  ; $46ce: $21 $2a $c5
    add hl, bc                                    ; $46d1: $09
    ld [hl], a                                    ; $46d2: $77
    ld h, d                                       ; $46d3: $62
    ld l, e                                       ; $46d4: $6b
    jp Jump_07c_43ef                              ; $46d5: $c3 $ef $43


    ld hl, $c4cd                                  ; $46d8: $21 $cd $c4
    add hl, bc                                    ; $46db: $09
    ld [hl], $00                                  ; $46dc: $36 $00
    pop hl                                        ; $46de: $e1
    ret                                           ; $46df: $c9


Call_07c_46e0:
    ld hl, $c536                                  ; $46e0: $21 $36 $c5
    add hl, bc                                    ; $46e3: $09
    add hl, bc                                    ; $46e4: $09
    ld a, [hl+]                                   ; $46e5: $2a
    ld h, [hl]                                    ; $46e6: $66
    ld l, a                                       ; $46e7: $6f
    ret                                           ; $46e8: $c9


Call_07c_46e9:
    ld d, h                                       ; $46e9: $54
    ld e, l                                       ; $46ea: $5d
    ld hl, $c536                                  ; $46eb: $21 $36 $c5
    add hl, bc                                    ; $46ee: $09
    add hl, bc                                    ; $46ef: $09
    ld [hl], e                                    ; $46f0: $73
    inc hl                                        ; $46f1: $23
    ld [hl], d                                    ; $46f2: $72
    ret                                           ; $46f3: $c9


Jump_07c_46f4:
    pop hl                                        ; $46f4: $e1
    jp Jump_07c_43ef                              ; $46f5: $c3 $ef $43


Call_07c_46f8:
    ld a, [$c4cc]                                 ; $46f8: $fa $cc $c4
    bit 0, a                                      ; $46fb: $cb $47
    jr nz, jr_07c_4732                            ; $46fd: $20 $33

    ld a, [$c4f7]                                 ; $46ff: $fa $f7 $c4
    or a                                          ; $4702: $b7
    jr z, jr_07c_4737                             ; $4703: $28 $32

    ld a, $01                                     ; $4705: $3e $01
    ld [$c598], a                                 ; $4707: $ea $98 $c5
    ld d, $00                                     ; $470a: $16 $00
    ld hl, $c4d1                                  ; $470c: $21 $d1 $c4
    ld a, [hl]                                    ; $470f: $7e
    cp $80                                        ; $4710: $fe $80
    jr z, jr_07c_471b                             ; $4712: $28 $07

    ld a, [$c527]                                 ; $4714: $fa $27 $c5
    ldh [rNR12], a                                ; $4717: $e0 $12
    ld d, $80                                     ; $4719: $16 $80

jr_07c_471b:
    ld [hl], $02                                  ; $471b: $36 $02
    ld a, $08                                     ; $471d: $3e $08
    ldh [rNR10], a                                ; $471f: $e0 $10
    ld a, [$c4c6]                                 ; $4721: $fa $c6 $c4
    ldh [rNR11], a                                ; $4724: $e0 $11
    ld a, [$c4e5]                                 ; $4726: $fa $e5 $c4
    ldh [rNR13], a                                ; $4729: $e0 $13
    ld a, [$c4e6]                                 ; $472b: $fa $e6 $c4
    or d                                          ; $472e: $b2
    ldh [rNR14], a                                ; $472f: $e0 $14
    ret                                           ; $4731: $c9


jr_07c_4732:
    xor a                                         ; $4732: $af
    ld [$c598], a                                 ; $4733: $ea $98 $c5
    ret                                           ; $4736: $c9


Call_07c_4737:
jr_07c_4737:
    ld a, [$c598]                                 ; $4737: $fa $98 $c5
    or a                                          ; $473a: $b7
    jr z, jr_07c_476e                             ; $473b: $28 $31

    xor a                                         ; $473d: $af
    ld [$c598], a                                 ; $473e: $ea $98 $c5
    ld hl, $c4d1                                  ; $4741: $21 $d1 $c4
    ld [hl], $00                                  ; $4744: $36 $00
    ld hl, $ff12                                  ; $4746: $21 $12 $ff
    push bc                                       ; $4749: $c5
    ld a, [$c52a]                                 ; $474a: $fa $2a $c5
    ld b, a                                       ; $474d: $47
    swap a                                        ; $474e: $cb $37
    and $0f                                       ; $4750: $e6 $0f
    ld c, a                                       ; $4752: $4f
    ld a, [$c527]                                 ; $4753: $fa $27 $c5
    swap a                                        ; $4756: $cb $37
    and $0f                                       ; $4758: $e6 $0f
    sub c                                         ; $475a: $91
    jr nc, jr_07c_475f                            ; $475b: $30 $02

    ld a, $00                                     ; $475d: $3e $00

jr_07c_475f:
    add a                                         ; $475f: $87
    add a                                         ; $4760: $87
    add a                                         ; $4761: $87
    add a                                         ; $4762: $87
    ld c, a                                       ; $4763: $4f
    ld a, b                                       ; $4764: $78
    and $07                                       ; $4765: $e6 $07
    or c                                          ; $4767: $b1
    pop bc                                        ; $4768: $c1
    ld [hl+], a                                   ; $4769: $22
    inc hl                                        ; $476a: $23
    ld a, $80                                     ; $476b: $3e $80
    ld [hl], a                                    ; $476d: $77

jr_07c_476e:
    ret                                           ; $476e: $c9


Call_07c_476f:
    ld a, [$c4cc]                                 ; $476f: $fa $cc $c4
    bit 1, a                                      ; $4772: $cb $4f
    jr nz, jr_07c_47a6                            ; $4774: $20 $30

    ld a, [$c4f8]                                 ; $4776: $fa $f8 $c4
    cp $00                                        ; $4779: $fe $00
    jr z, jr_07c_47ab                             ; $477b: $28 $2e

    ld a, $01                                     ; $477d: $3e $01
    ld [$c599], a                                 ; $477f: $ea $99 $c5
    ld d, $00                                     ; $4782: $16 $00
    ld hl, $c4d2                                  ; $4784: $21 $d2 $c4
    ld a, [hl]                                    ; $4787: $7e
    cp $80                                        ; $4788: $fe $80
    jr z, jr_07c_4793                             ; $478a: $28 $07

    ld a, [$c528]                                 ; $478c: $fa $28 $c5
    ldh [rNR22], a                                ; $478f: $e0 $17
    ld d, $80                                     ; $4791: $16 $80

jr_07c_4793:
    ld [hl], $02                                  ; $4793: $36 $02
    ld a, [$c4c7]                                 ; $4795: $fa $c7 $c4
    ldh [rNR21], a                                ; $4798: $e0 $16
    ld a, [$c4e7]                                 ; $479a: $fa $e7 $c4
    ldh [rNR23], a                                ; $479d: $e0 $18
    ld a, [$c4e8]                                 ; $479f: $fa $e8 $c4
    or d                                          ; $47a2: $b2
    ldh [rNR24], a                                ; $47a3: $e0 $19
    ret                                           ; $47a5: $c9


jr_07c_47a6:
    xor a                                         ; $47a6: $af
    ld [$c599], a                                 ; $47a7: $ea $99 $c5
    ret                                           ; $47aa: $c9


Call_07c_47ab:
jr_07c_47ab:
    ld a, [$c599]                                 ; $47ab: $fa $99 $c5
    or a                                          ; $47ae: $b7
    jr z, jr_07c_47e2                             ; $47af: $28 $31

    xor a                                         ; $47b1: $af
    ld [$c599], a                                 ; $47b2: $ea $99 $c5
    ld hl, $c4d2                                  ; $47b5: $21 $d2 $c4
    ld [hl], $00                                  ; $47b8: $36 $00
    ld hl, $ff17                                  ; $47ba: $21 $17 $ff
    push bc                                       ; $47bd: $c5
    ld a, [$c52b]                                 ; $47be: $fa $2b $c5
    ld b, a                                       ; $47c1: $47
    swap a                                        ; $47c2: $cb $37
    and $0f                                       ; $47c4: $e6 $0f
    ld c, a                                       ; $47c6: $4f
    ld a, [$c528]                                 ; $47c7: $fa $28 $c5
    swap a                                        ; $47ca: $cb $37
    and $0f                                       ; $47cc: $e6 $0f
    sub c                                         ; $47ce: $91
    jr nc, jr_07c_47d3                            ; $47cf: $30 $02

    ld a, $00                                     ; $47d1: $3e $00

jr_07c_47d3:
    add a                                         ; $47d3: $87
    add a                                         ; $47d4: $87
    add a                                         ; $47d5: $87
    add a                                         ; $47d6: $87
    ld c, a                                       ; $47d7: $4f
    ld a, b                                       ; $47d8: $78
    and $07                                       ; $47d9: $e6 $07
    or c                                          ; $47db: $b1
    pop bc                                        ; $47dc: $c1
    ld [hl+], a                                   ; $47dd: $22
    inc hl                                        ; $47de: $23
    ld a, $80                                     ; $47df: $3e $80
    ld [hl], a                                    ; $47e1: $77

jr_07c_47e2:
    ret                                           ; $47e2: $c9


Call_07c_47e3:
    ld a, [$c4cc]                                 ; $47e3: $fa $cc $c4
    bit 2, a                                      ; $47e6: $cb $57
    jr nz, jr_07c_4827                            ; $47e8: $20 $3d

    ld d, $00                                     ; $47ea: $16 $00
    ld a, [$c4cb]                                 ; $47ec: $fa $cb $c4
    or a                                          ; $47ef: $b7
    jr z, jr_07c_47fa                             ; $47f0: $28 $08

    xor a                                         ; $47f2: $af
    ldh [rNR30], a                                ; $47f3: $e0 $1a
    call Call_07c_4831                            ; $47f5: $cd $31 $48
    ld d, $80                                     ; $47f8: $16 $80

jr_07c_47fa:
    ld a, [$c4f9]                                 ; $47fa: $fa $f9 $c4
    cp $00                                        ; $47fd: $fe $00
    jr z, jr_07c_4828                             ; $47ff: $28 $27

    ld hl, $c4d3                                  ; $4801: $21 $d3 $c4
    ld a, [hl]                                    ; $4804: $7e
    cp $80                                        ; $4805: $fe $80
    jr z, jr_07c_4813                             ; $4807: $28 $0a

    ld a, [$c529]                                 ; $4809: $fa $29 $c5
    ldh [rNR32], a                                ; $480c: $e0 $1c
    xor a                                         ; $480e: $af
    ldh [rNR30], a                                ; $480f: $e0 $1a
    ld d, $80                                     ; $4811: $16 $80

jr_07c_4813:
    ld [hl], $02                                  ; $4813: $36 $02
    xor a                                         ; $4815: $af
    ldh [rNR31], a                                ; $4816: $e0 $1b
    ld a, [$c4e9]                                 ; $4818: $fa $e9 $c4
    ldh [rNR33], a                                ; $481b: $e0 $1d
    ld a, $80                                     ; $481d: $3e $80
    ldh [rNR30], a                                ; $481f: $e0 $1a
    ld a, [$c4ea]                                 ; $4821: $fa $ea $c4
    or d                                          ; $4824: $b2
    ldh [rNR34], a                                ; $4825: $e0 $1e

jr_07c_4827:
    ret                                           ; $4827: $c9


jr_07c_4828:
    ld hl, $c4d1                                  ; $4828: $21 $d1 $c4
    ld [hl], $00                                  ; $482b: $36 $00
    xor a                                         ; $482d: $af
    ldh [rNR30], a                                ; $482e: $e0 $1a
    ret                                           ; $4830: $c9


Call_07c_4831:
    ld a, [$c4ca]                                 ; $4831: $fa $ca $c4
    add a                                         ; $4834: $87
    ld d, $00                                     ; $4835: $16 $00
    ld e, a                                       ; $4837: $5f
    ld hl, $4cdd                                  ; $4838: $21 $dd $4c
    add hl, de                                    ; $483b: $19
    ld a, [hl+]                                   ; $483c: $2a
    ld h, [hl]                                    ; $483d: $66
    ld l, a                                       ; $483e: $6f
    ld b, d                                       ; $483f: $42
    ld de, $ff30                                  ; $4840: $11 $30 $ff

jr_07c_4843:
    ld a, [hl+]                                   ; $4843: $2a
    ld [de], a                                    ; $4844: $12
    inc de                                        ; $4845: $13
    inc b                                         ; $4846: $04
    ld a, b                                       ; $4847: $78
    cp $10                                        ; $4848: $fe $10
    jr nz, jr_07c_4843                            ; $484a: $20 $f7

    xor a                                         ; $484c: $af
    ld [$c4cb], a                                 ; $484d: $ea $cb $c4
    ret                                           ; $4850: $c9


Call_07c_4851:
    ld a, [$c4cc]                                 ; $4851: $fa $cc $c4
    bit 3, a                                      ; $4854: $cb $5f
    jr nz, jr_07c_486f                            ; $4856: $20 $17

    ld a, [$c4fa]                                 ; $4858: $fa $fa $c4
    or a                                          ; $485b: $b7
    jr z, jr_07c_4870                             ; $485c: $28 $12

    ld de, $ff20                                  ; $485e: $11 $20 $ff
    ld hl, $c4eb                                  ; $4861: $21 $eb $c4
    ld a, [hl+]                                   ; $4864: $2a
    ld [de], a                                    ; $4865: $12
    inc e                                         ; $4866: $1c
    ld a, [hl+]                                   ; $4867: $2a
    ld [de], a                                    ; $4868: $12
    inc e                                         ; $4869: $1c
    ld a, [hl+]                                   ; $486a: $2a
    ld [de], a                                    ; $486b: $12
    inc e                                         ; $486c: $1c
    ld a, [hl+]                                   ; $486d: $2a
    ld [de], a                                    ; $486e: $12

jr_07c_486f:
    ret                                           ; $486f: $c9


jr_07c_4870:
    xor a                                         ; $4870: $af
    ld [$c532], a                                 ; $4871: $ea $32 $c5
    ld hl, $ff21                                  ; $4874: $21 $21 $ff
    ld a, $08                                     ; $4877: $3e $08
    ld [hl+], a                                   ; $4879: $22
    inc hl                                        ; $487a: $23
    swap a                                        ; $487b: $cb $37
    ld [hl], a                                    ; $487d: $77
    ret                                           ; $487e: $c9


Call_07c_487f:
    ld a, [$c4cc]                                 ; $487f: $fa $cc $c4
    bit 3, a                                      ; $4882: $cb $5f
    jr z, jr_07c_488c                             ; $4884: $28 $06

    xor a                                         ; $4886: $af
    ld [$c532], a                                 ; $4887: $ea $32 $c5
    jr jr_07c_489f                                ; $488a: $18 $13

jr_07c_488c:
    ld hl, $c530                                  ; $488c: $21 $30 $c5
    ld a, [hl+]                                   ; $488f: $2a
    ld d, [hl]                                    ; $4890: $56
    ld e, a                                       ; $4891: $5f
    ld a, [de]                                    ; $4892: $1a
    cp $ff                                        ; $4893: $fe $ff
    jr nz, jr_07c_4899                            ; $4895: $20 $02

    jr jr_07c_4870                                ; $4897: $18 $d7

jr_07c_4899:
    ldh [rNR43], a                                ; $4899: $e0 $22
    inc de                                        ; $489b: $13
    ld a, d                                       ; $489c: $7a
    ld [hl-], a                                   ; $489d: $32
    ld [hl], e                                    ; $489e: $73

jr_07c_489f:
    ret                                           ; $489f: $c9


Call_07c_48a0:
    ld a, [$c534]                                 ; $48a0: $fa $34 $c5
    ldh [rNR50], a                                ; $48a3: $e0 $24
    ld a, [$c4cc]                                 ; $48a5: $fa $cc $c4
    or a                                          ; $48a8: $b7
    ld hl, $c4c4                                  ; $48a9: $21 $c4 $c4
    ld a, [hl+]                                   ; $48ac: $2a
    jr z, jr_07c_48c1                             ; $48ad: $28 $12

    ld a, [$c4cc]                                 ; $48af: $fa $cc $c4
    and $0f                                       ; $48b2: $e6 $0f
    ld d, a                                       ; $48b4: $57
    swap d                                        ; $48b5: $cb $32
    or d                                          ; $48b7: $b2
    ld d, a                                       ; $48b8: $57
    cpl                                           ; $48b9: $2f
    ld e, a                                       ; $48ba: $5f
    ld a, [hl-]                                   ; $48bb: $3a
    and d                                         ; $48bc: $a2
    ld d, a                                       ; $48bd: $57
    ld a, [hl]                                    ; $48be: $7e
    and e                                         ; $48bf: $a3
    or d                                          ; $48c0: $b2

jr_07c_48c1:
    ld d, a                                       ; $48c1: $57
    ld a, [$c533]                                 ; $48c2: $fa $33 $c5
    cpl                                           ; $48c5: $2f
    and $0f                                       ; $48c6: $e6 $0f
    ld e, a                                       ; $48c8: $5f
    swap e                                        ; $48c9: $cb $33
    or e                                          ; $48cb: $b3
    and d                                         ; $48cc: $a2
    ldh [rNR51], a                                ; $48cd: $e0 $25
    ret                                           ; $48cf: $c9


Call_07c_48d0:
    ld hl, $c51f                                  ; $48d0: $21 $1f $c5
    add hl, bc                                    ; $48d3: $09
    ld a, [hl]                                    ; $48d4: $7e
    or a                                          ; $48d5: $b7
    jr z, jr_07c_4925                             ; $48d6: $28 $4d

    ld hl, $c523                                  ; $48d8: $21 $23 $c5
    add hl, bc                                    ; $48db: $09
    cp [hl]                                       ; $48dc: $be
    jr z, jr_07c_48e2                             ; $48dd: $28 $03

    inc [hl]                                      ; $48df: $34
    jr jr_07c_4925                                ; $48e0: $18 $43

jr_07c_48e2:
    ld hl, $c51b                                  ; $48e2: $21 $1b $c5
    add hl, bc                                    ; $48e5: $09
    ld e, [hl]                                    ; $48e6: $5e
    inc [hl]                                      ; $48e7: $34
    ld hl, $c513                                  ; $48e8: $21 $13 $c5
    add hl, bc                                    ; $48eb: $09
    ld a, [hl]                                    ; $48ec: $7e
    ld hl, $50c9                                  ; $48ed: $21 $c9 $50
    ld d, c                                       ; $48f0: $51
    add a                                         ; $48f1: $87
    ld c, a                                       ; $48f2: $4f
    add hl, bc                                    ; $48f3: $09
    ld a, [hl+]                                   ; $48f4: $2a
    ld c, d                                       ; $48f5: $4a
    ld d, [hl]                                    ; $48f6: $56
    ld l, a                                       ; $48f7: $6f
    ld h, b                                       ; $48f8: $60
    add hl, de                                    ; $48f9: $19
    ld a, [hl+]                                   ; $48fa: $2a
    cp $80                                        ; $48fb: $fe $80
    jr z, jr_07c_4911                             ; $48fd: $28 $12

    ld hl, $c4e5                                  ; $48ff: $21 $e5 $c4
    add hl, bc                                    ; $4902: $09
    add hl, bc                                    ; $4903: $09
    ld e, a                                       ; $4904: $5f
    add a                                         ; $4905: $87
    sbc a                                         ; $4906: $9f
    ld d, a                                       ; $4907: $57
    ld a, [hl+]                                   ; $4908: $2a
    add e                                         ; $4909: $83
    ld e, a                                       ; $490a: $5f
    ld a, [hl]                                    ; $490b: $7e
    adc d                                         ; $490c: $8a
    and $07                                       ; $490d: $e6 $07
    ld d, a                                       ; $490f: $57
    ret                                           ; $4910: $c9


jr_07c_4911:
    push hl                                       ; $4911: $e5
    ld hl, $c51b                                  ; $4912: $21 $1b $c5
    add hl, bc                                    ; $4915: $09
    ld [hl], $00                                  ; $4916: $36 $00
    pop hl                                        ; $4918: $e1
    ld a, [hl]                                    ; $4919: $7e
    cp $80                                        ; $491a: $fe $80
    jr z, jr_07c_48e2                             ; $491c: $28 $c4

    ld hl, $c513                                  ; $491e: $21 $13 $c5
    add hl, bc                                    ; $4921: $09
    ld [hl], a                                    ; $4922: $77
    jr jr_07c_48e2                                ; $4923: $18 $bd

jr_07c_4925:
    ld hl, $c4e5                                  ; $4925: $21 $e5 $c4
    add hl, bc                                    ; $4928: $09
    add hl, bc                                    ; $4929: $09
    ld e, [hl]                                    ; $492a: $5e
    inc hl                                        ; $492b: $23
    ld d, [hl]                                    ; $492c: $56
    ret                                           ; $492d: $c9


Jump_07c_492e:
    push af                                       ; $492e: $f5
    ld b, $00                                     ; $492f: $06 $00
    ld c, a                                       ; $4931: $4f
    call Call_07c_48d0                            ; $4932: $cd $d0 $48
    pop af                                        ; $4935: $f1
    or a                                          ; $4936: $b7
    jr nz, jr_07c_4950                            ; $4937: $20 $17

    ld a, [$c51f]                                 ; $4939: $fa $1f $c5
    or a                                          ; $493c: $b7
    ret z                                         ; $493d: $c8

    ld a, [$c4cc]                                 ; $493e: $fa $cc $c4
    rrca                                          ; $4941: $0f
    ret c                                         ; $4942: $d8

    ld a, e                                       ; $4943: $7b
    ldh [rNR13], a                                ; $4944: $e0 $13
    ldh a, [rNR11]                                ; $4946: $f0 $11
    and $c0                                       ; $4948: $e6 $c0
    ldh [rNR11], a                                ; $494a: $e0 $11
    ld a, d                                       ; $494c: $7a
    ldh [rNR14], a                                ; $494d: $e0 $14
    ret                                           ; $494f: $c9


jr_07c_4950:
    dec a                                         ; $4950: $3d
    jr nz, jr_07c_496b                            ; $4951: $20 $18

    ld a, [$c520]                                 ; $4953: $fa $20 $c5
    or a                                          ; $4956: $b7
    ret z                                         ; $4957: $c8

    ld a, [$c4cc]                                 ; $4958: $fa $cc $c4
    bit 1, a                                      ; $495b: $cb $4f
    ret nz                                        ; $495d: $c0

    ld a, e                                       ; $495e: $7b
    ldh [rNR23], a                                ; $495f: $e0 $18
    ldh a, [rNR21]                                ; $4961: $f0 $16
    and $c0                                       ; $4963: $e6 $c0
    ldh [rNR21], a                                ; $4965: $e0 $16
    ld a, d                                       ; $4967: $7a
    ldh [rNR24], a                                ; $4968: $e0 $19
    ret                                           ; $496a: $c9


jr_07c_496b:
    dec a                                         ; $496b: $3d
    ret nz                                        ; $496c: $c0

    ld a, [$c521]                                 ; $496d: $fa $21 $c5
    or a                                          ; $4970: $b7
    ret z                                         ; $4971: $c8

    ld a, [$c4cc]                                 ; $4972: $fa $cc $c4
    bit 2, a                                      ; $4975: $cb $57
    ret nz                                        ; $4977: $c0

    ld a, e                                       ; $4978: $7b
    ldh [rNR33], a                                ; $4979: $e0 $1d
    xor a                                         ; $497b: $af
    ldh [rNR31], a                                ; $497c: $e0 $1b
    ld a, d                                       ; $497e: $7a
    ldh [rNR34], a                                ; $497f: $e0 $1e
    ret                                           ; $4981: $c9


Call_07c_4982:
    ld hl, $c52d                                  ; $4982: $21 $2d $c5
    add hl, bc                                    ; $4985: $09
    ld a, [hl]                                    ; $4986: $7e
    bit 7, a                                      ; $4987: $cb $7f
    jr nz, jr_07c_4991                            ; $4989: $20 $06

    add e                                         ; $498b: $83
    ld e, a                                       ; $498c: $5f
    ld a, d                                       ; $498d: $7a
    adc b                                         ; $498e: $88
    ld d, a                                       ; $498f: $57
    ret                                           ; $4990: $c9


jr_07c_4991:
    xor $ff                                       ; $4991: $ee $ff
    ld h, a                                       ; $4993: $67
    ld a, e                                       ; $4994: $7b
    sub h                                         ; $4995: $94
    ld e, a                                       ; $4996: $5f
    ld a, d                                       ; $4997: $7a
    sbc b                                         ; $4998: $98
    ld d, a                                       ; $4999: $57
    ret                                           ; $499a: $c9


Call_07c_499b:
    ld a, [$c4cc]                                 ; $499b: $fa $cc $c4
    ld d, a                                       ; $499e: $57
    bit 0, d                                      ; $499f: $cb $42
    jr nz, jr_07c_49ab                            ; $49a1: $20 $08

    ld a, $08                                     ; $49a3: $3e $08
    ldh [rNR12], a                                ; $49a5: $e0 $12
    swap a                                        ; $49a7: $cb $37
    ldh [rNR14], a                                ; $49a9: $e0 $14

jr_07c_49ab:
    bit 1, d                                      ; $49ab: $cb $4a
    jr nz, jr_07c_49b7                            ; $49ad: $20 $08

    swap a                                        ; $49af: $cb $37
    ldh [rNR22], a                                ; $49b1: $e0 $17
    swap a                                        ; $49b3: $cb $37
    ldh [rNR24], a                                ; $49b5: $e0 $19

jr_07c_49b7:
    bit 3, d                                      ; $49b7: $cb $5a
    jr nz, jr_07c_49c3                            ; $49b9: $20 $08

    swap a                                        ; $49bb: $cb $37
    ldh [rNR42], a                                ; $49bd: $e0 $21
    swap a                                        ; $49bf: $cb $37
    ldh [rNR44], a                                ; $49c1: $e0 $23

jr_07c_49c3:
    bit 2, d                                      ; $49c3: $cb $52
    jr nz, jr_07c_49cb                            ; $49c5: $20 $04

    ld a, $00                                     ; $49c7: $3e $00
    ldh [rNR32], a                                ; $49c9: $e0 $1c

jr_07c_49cb:
    ret                                           ; $49cb: $c9


Jump_07c_49cc:
    ld hl, $c4cd                                  ; $49cc: $21 $cd $c4
    xor a                                         ; $49cf: $af
    add [hl]                                      ; $49d0: $86
    inc hl                                        ; $49d1: $23
    add [hl]                                      ; $49d2: $86
    inc hl                                        ; $49d3: $23
    add [hl]                                      ; $49d4: $86
    inc hl                                        ; $49d5: $23
    add [hl]                                      ; $49d6: $86
    or a                                          ; $49d7: $b7
    ret nz                                        ; $49d8: $c0

    ld a, $80                                     ; $49d9: $3e $80
    ld [$c4c0], a                                 ; $49db: $ea $c0 $c4
    ret                                           ; $49de: $c9


    di                                            ; $49df: $f3
    call Call_07c_499b                            ; $49e0: $cd $9b $49
    call Call_07c_49f7                            ; $49e3: $cd $f7 $49
    call Call_07c_4145                            ; $49e6: $cd $45 $41
    ei                                            ; $49e9: $fb
    ret                                           ; $49ea: $c9


    di                                            ; $49eb: $f3
    call Call_07c_499b                            ; $49ec: $cd $9b $49
    call Call_07c_4145                            ; $49ef: $cd $45 $41
    call Call_07c_4b1c                            ; $49f2: $cd $1c $4b
    ei                                            ; $49f5: $fb
    ret                                           ; $49f6: $c9


Call_07c_49f7:
    ld a, [$c4c0]                                 ; $49f7: $fa $c0 $c4
    ld [$c59a], a                                 ; $49fa: $ea $9a $c5
    ld a, [$c4c1]                                 ; $49fd: $fa $c1 $c4
    ld [$c59b], a                                 ; $4a00: $ea $9b $c5
    ld a, [$c4c4]                                 ; $4a03: $fa $c4 $c4
    ld [$c59c], a                                 ; $4a06: $ea $9c $c5
    ld hl, $c4c6                                  ; $4a09: $21 $c6 $c4
    ld de, $c59d                                  ; $4a0c: $11 $9d $c5
    ld a, $04                                     ; $4a0f: $3e $04
    call Call_07c_4c33                            ; $4a11: $cd $33 $4c
    ld a, [$c4ca]                                 ; $4a14: $fa $ca $c4
    ld [$c5a1], a                                 ; $4a17: $ea $a1 $c5
    ld a, [$c4cb]                                 ; $4a1a: $fa $cb $c4
    ld [$c5a2], a                                 ; $4a1d: $ea $a2 $c5
    ld hl, $c4cd                                  ; $4a20: $21 $cd $c4
    ld de, $c5a3                                  ; $4a23: $11 $a3 $c5
    ld a, $04                                     ; $4a26: $3e $04
    call Call_07c_4c33                            ; $4a28: $cd $33 $4c
    ld hl, $c4d1                                  ; $4a2b: $21 $d1 $c4
    ld de, $c5a7                                  ; $4a2e: $11 $a7 $c5
    ld a, $04                                     ; $4a31: $3e $04
    call Call_07c_4c33                            ; $4a33: $cd $33 $4c
    ld hl, $c4d5                                  ; $4a36: $21 $d5 $c4
    ld de, $c5ab                                  ; $4a39: $11 $ab $c5
    ld a, $08                                     ; $4a3c: $3e $08
    call Call_07c_4c33                            ; $4a3e: $cd $33 $4c
    ld hl, $c4dd                                  ; $4a41: $21 $dd $c4
    ld de, $c5b3                                  ; $4a44: $11 $b3 $c5
    ld a, $08                                     ; $4a47: $3e $08
    call Call_07c_4c33                            ; $4a49: $cd $33 $4c
    ld a, [$c4eb]                                 ; $4a4c: $fa $eb $c4
    ld [$c5bb], a                                 ; $4a4f: $ea $bb $c5
    ld a, [$c4ec]                                 ; $4a52: $fa $ec $c4
    ld [$c5bc], a                                 ; $4a55: $ea $bc $c5
    ld hl, $c4ef                                  ; $4a58: $21 $ef $c4
    ld de, $c5bd                                  ; $4a5b: $11 $bd $c5
    ld a, $04                                     ; $4a5e: $3e $04
    call Call_07c_4c33                            ; $4a60: $cd $33 $4c
    ld hl, $c4f3                                  ; $4a63: $21 $f3 $c4
    ld de, $c5c1                                  ; $4a66: $11 $c1 $c5
    ld a, $04                                     ; $4a69: $3e $04
    call Call_07c_4c33                            ; $4a6b: $cd $33 $4c
    ld hl, $c4f7                                  ; $4a6e: $21 $f7 $c4
    ld de, $c5c5                                  ; $4a71: $11 $c5 $c5
    ld a, $04                                     ; $4a74: $3e $04
    call Call_07c_4c33                            ; $4a76: $cd $33 $4c
    ld hl, $c4fb                                  ; $4a79: $21 $fb $c4
    ld de, $c5c9                                  ; $4a7c: $11 $c9 $c5
    ld a, $04                                     ; $4a7f: $3e $04
    call Call_07c_4c33                            ; $4a81: $cd $33 $4c
    ld hl, $c4ff                                  ; $4a84: $21 $ff $c4
    ld de, $c5cd                                  ; $4a87: $11 $cd $c5
    ld a, $04                                     ; $4a8a: $3e $04
    call Call_07c_4c33                            ; $4a8c: $cd $33 $4c
    ld hl, $c503                                  ; $4a8f: $21 $03 $c5
    ld de, $c5d1                                  ; $4a92: $11 $d1 $c5
    ld a, $04                                     ; $4a95: $3e $04
    call Call_07c_4c33                            ; $4a97: $cd $33 $4c
    ld hl, $c507                                  ; $4a9a: $21 $07 $c5
    ld de, $c5d5                                  ; $4a9d: $11 $d5 $c5
    ld a, $04                                     ; $4aa0: $3e $04
    call Call_07c_4c33                            ; $4aa2: $cd $33 $4c
    ld hl, $c50b                                  ; $4aa5: $21 $0b $c5
    ld de, $c5d9                                  ; $4aa8: $11 $d9 $c5
    ld a, $04                                     ; $4aab: $3e $04
    call Call_07c_4c33                            ; $4aad: $cd $33 $4c
    ld hl, $c50f                                  ; $4ab0: $21 $0f $c5
    ld de, $c5dd                                  ; $4ab3: $11 $dd $c5
    ld a, $04                                     ; $4ab6: $3e $04
    call Call_07c_4c33                            ; $4ab8: $cd $33 $4c
    ld hl, $c517                                  ; $4abb: $21 $17 $c5
    ld de, $c5e1                                  ; $4abe: $11 $e1 $c5
    ld a, $04                                     ; $4ac1: $3e $04
    call Call_07c_4c33                            ; $4ac3: $cd $33 $4c
    ld hl, $c51f                                  ; $4ac6: $21 $1f $c5
    ld de, $c5e5                                  ; $4ac9: $11 $e5 $c5
    ld a, $04                                     ; $4acc: $3e $04
    call Call_07c_4c33                            ; $4ace: $cd $33 $4c
    ld a, $00                                     ; $4ad1: $3e $00
    ld [$c51b], a                                 ; $4ad3: $ea $1b $c5
    ld [$c51c], a                                 ; $4ad6: $ea $1c $c5
    ld [$c51d], a                                 ; $4ad9: $ea $1d $c5
    ld [$c51e], a                                 ; $4adc: $ea $1e $c5
    ld hl, $c527                                  ; $4adf: $21 $27 $c5
    ld de, $c5e9                                  ; $4ae2: $11 $e9 $c5
    ld a, $03                                     ; $4ae5: $3e $03
    call Call_07c_4c33                            ; $4ae7: $cd $33 $4c
    ld hl, $c52d                                  ; $4aea: $21 $2d $c5
    ld de, $c5ec                                  ; $4aed: $11 $ec $c5
    ld a, $03                                     ; $4af0: $3e $03
    call Call_07c_4c33                            ; $4af2: $cd $33 $4c
    ld hl, $c530                                  ; $4af5: $21 $30 $c5
    ld de, $c5ef                                  ; $4af8: $11 $ef $c5
    ld a, $02                                     ; $4afb: $3e $02
    call Call_07c_4c33                            ; $4afd: $cd $33 $4c
    ld a, $00                                     ; $4b00: $3e $00
    ld [$c5f1], a                                 ; $4b02: $ea $f1 $c5
    ld hl, $c536                                  ; $4b05: $21 $36 $c5
    ld de, $c5f2                                  ; $4b08: $11 $f2 $c5
    ld a, $08                                     ; $4b0b: $3e $08
    call Call_07c_4c33                            ; $4b0d: $cd $33 $4c
    ld hl, $c53e                                  ; $4b10: $21 $3e $c5
    ld de, $c5fa                                  ; $4b13: $11 $fa $c5
    ld a, $30                                     ; $4b16: $3e $30
    call Call_07c_4c33                            ; $4b18: $cd $33 $4c
    ret                                           ; $4b1b: $c9


Call_07c_4b1c:
    ld a, [$c59a]                                 ; $4b1c: $fa $9a $c5
    ld [$c4c0], a                                 ; $4b1f: $ea $c0 $c4
    ld a, [$c59b]                                 ; $4b22: $fa $9b $c5
    ld [$c4c1], a                                 ; $4b25: $ea $c1 $c4
    ld a, [$c59c]                                 ; $4b28: $fa $9c $c5
    ld [$c4c4], a                                 ; $4b2b: $ea $c4 $c4
    ld hl, $c59d                                  ; $4b2e: $21 $9d $c5
    ld de, $c4c6                                  ; $4b31: $11 $c6 $c4
    ld a, $04                                     ; $4b34: $3e $04
    call Call_07c_4c33                            ; $4b36: $cd $33 $4c
    ld a, [$c5a1]                                 ; $4b39: $fa $a1 $c5
    ld [$c4ca], a                                 ; $4b3c: $ea $ca $c4
    ld a, $01                                     ; $4b3f: $3e $01
    ld [$c4cb], a                                 ; $4b41: $ea $cb $c4
    ld hl, $c5a3                                  ; $4b44: $21 $a3 $c5
    ld de, $c4cd                                  ; $4b47: $11 $cd $c4
    ld a, $04                                     ; $4b4a: $3e $04
    call Call_07c_4c33                            ; $4b4c: $cd $33 $4c
    ld hl, $c5a7                                  ; $4b4f: $21 $a7 $c5
    ld de, $c4d1                                  ; $4b52: $11 $d1 $c4
    ld a, $04                                     ; $4b55: $3e $04
    call Call_07c_4c33                            ; $4b57: $cd $33 $4c
    ld hl, $c5ab                                  ; $4b5a: $21 $ab $c5
    ld de, $c4d5                                  ; $4b5d: $11 $d5 $c4
    ld a, $08                                     ; $4b60: $3e $08
    call Call_07c_4c33                            ; $4b62: $cd $33 $4c
    ld hl, $c5b3                                  ; $4b65: $21 $b3 $c5
    ld de, $c4dd                                  ; $4b68: $11 $dd $c4
    ld a, $08                                     ; $4b6b: $3e $08
    call Call_07c_4c33                            ; $4b6d: $cd $33 $4c
    ld a, [$c5bb]                                 ; $4b70: $fa $bb $c5
    ld [$c4eb], a                                 ; $4b73: $ea $eb $c4
    ld a, [$c5bc]                                 ; $4b76: $fa $bc $c5
    ld [$c4ec], a                                 ; $4b79: $ea $ec $c4
    ld hl, $c5bd                                  ; $4b7c: $21 $bd $c5
    ld de, $c4ef                                  ; $4b7f: $11 $ef $c4
    ld a, $04                                     ; $4b82: $3e $04
    call Call_07c_4c33                            ; $4b84: $cd $33 $4c
    ld hl, $c5c1                                  ; $4b87: $21 $c1 $c5
    ld de, $c4f3                                  ; $4b8a: $11 $f3 $c4
    ld a, $04                                     ; $4b8d: $3e $04
    call Call_07c_4c33                            ; $4b8f: $cd $33 $4c
    ld hl, $c5c5                                  ; $4b92: $21 $c5 $c5
    ld de, $c4f7                                  ; $4b95: $11 $f7 $c4
    ld a, $04                                     ; $4b98: $3e $04
    call Call_07c_4c33                            ; $4b9a: $cd $33 $4c
    ld hl, $c5c9                                  ; $4b9d: $21 $c9 $c5
    ld de, $c4fb                                  ; $4ba0: $11 $fb $c4
    ld a, $04                                     ; $4ba3: $3e $04
    call Call_07c_4c33                            ; $4ba5: $cd $33 $4c
    ld hl, $c5cd                                  ; $4ba8: $21 $cd $c5
    ld de, $c4ff                                  ; $4bab: $11 $ff $c4
    ld a, $04                                     ; $4bae: $3e $04
    call Call_07c_4c33                            ; $4bb0: $cd $33 $4c
    ld hl, $c5d1                                  ; $4bb3: $21 $d1 $c5
    ld de, $c503                                  ; $4bb6: $11 $03 $c5
    ld a, $04                                     ; $4bb9: $3e $04
    call Call_07c_4c33                            ; $4bbb: $cd $33 $4c
    ld hl, $c5d5                                  ; $4bbe: $21 $d5 $c5
    ld de, $c507                                  ; $4bc1: $11 $07 $c5
    ld a, $04                                     ; $4bc4: $3e $04
    call Call_07c_4c33                            ; $4bc6: $cd $33 $4c
    ld hl, $c5d9                                  ; $4bc9: $21 $d9 $c5
    ld de, $c50b                                  ; $4bcc: $11 $0b $c5
    ld a, $04                                     ; $4bcf: $3e $04
    call Call_07c_4c33                            ; $4bd1: $cd $33 $4c
    ld hl, $c5dd                                  ; $4bd4: $21 $dd $c5
    ld de, $c50f                                  ; $4bd7: $11 $0f $c5
    ld a, $04                                     ; $4bda: $3e $04
    call Call_07c_4c33                            ; $4bdc: $cd $33 $4c
    ld hl, $c5e1                                  ; $4bdf: $21 $e1 $c5
    ld de, $c517                                  ; $4be2: $11 $17 $c5
    ld a, $04                                     ; $4be5: $3e $04
    call Call_07c_4c33                            ; $4be7: $cd $33 $4c
    ld hl, $c5e5                                  ; $4bea: $21 $e5 $c5
    ld de, $c51f                                  ; $4bed: $11 $1f $c5
    ld a, $04                                     ; $4bf0: $3e $04
    call Call_07c_4c33                            ; $4bf2: $cd $33 $4c
    ld hl, $c5e9                                  ; $4bf5: $21 $e9 $c5
    ld de, $c527                                  ; $4bf8: $11 $27 $c5
    ld a, $03                                     ; $4bfb: $3e $03
    call Call_07c_4c33                            ; $4bfd: $cd $33 $4c
    ld hl, $c5ec                                  ; $4c00: $21 $ec $c5
    ld de, $c52d                                  ; $4c03: $11 $2d $c5
    ld a, $03                                     ; $4c06: $3e $03
    call Call_07c_4c33                            ; $4c08: $cd $33 $4c
    ld hl, $c5ef                                  ; $4c0b: $21 $ef $c5
    ld de, $c530                                  ; $4c0e: $11 $30 $c5
    ld a, $02                                     ; $4c11: $3e $02
    call Call_07c_4c33                            ; $4c13: $cd $33 $4c
    ld a, [$c5f1]                                 ; $4c16: $fa $f1 $c5
    ld [$c532], a                                 ; $4c19: $ea $32 $c5
    ld hl, $c5f2                                  ; $4c1c: $21 $f2 $c5
    ld de, $c536                                  ; $4c1f: $11 $36 $c5
    ld a, $08                                     ; $4c22: $3e $08
    call Call_07c_4c33                            ; $4c24: $cd $33 $4c
    ld hl, $c5fa                                  ; $4c27: $21 $fa $c5
    ld de, $c53e                                  ; $4c2a: $11 $3e $c5
    ld a, $30                                     ; $4c2d: $3e $30
    call Call_07c_4c33                            ; $4c2f: $cd $33 $4c
    ret                                           ; $4c32: $c9


Call_07c_4c33:
    ld c, a                                       ; $4c33: $4f

jr_07c_4c34:
    ld a, [hl+]                                   ; $4c34: $2a
    ld [de], a                                    ; $4c35: $12
    inc de                                        ; $4c36: $13
    dec c                                         ; $4c37: $0d
    jr nz, jr_07c_4c34                            ; $4c38: $20 $fa

    ret                                           ; $4c3a: $c9


    db $3e, $c5, $4a, $c5, $56, $c5, $62, $c5, $00, $18, $30, $48, $60

    ld a, b                                       ; $4c48: $78
    sub b                                         ; $4c49: $90
    xor b                                         ; $4c4a: $a8
    dec [hl]                                      ; $4c4b: $35
    nop                                           ; $4c4c: $00
    and l                                         ; $4c4d: $a5
    nop                                           ; $4c4e: $00
    rrca                                          ; $4c4f: $0f
    ld bc, $0172                                  ; $4c50: $01 $72 $01

    db $d1, $01

    ld a, [hl+]                                   ; $4c55: $2a
    ld [bc], a                                    ; $4c56: $02

    db $7d, $02

    call $1702                                    ; $4c59: $cd $02 $17
    inc bc                                        ; $4c5c: $03
    ld e, [hl]                                    ; $4c5d: $5e
    inc bc                                        ; $4c5e: $03
    and b                                         ; $4c5f: $a0
    inc bc                                        ; $4c60: $03
    rst $18                                       ; $4c61: $df
    inc bc                                        ; $4c62: $03
    dec de                                        ; $4c63: $1b
    inc b                                         ; $4c64: $04

    db $53, $04, $87, $04, $b9, $04, $e8, $04, $15, $05, $3f, $05, $66, $05, $8c, $05
    db $af, $05, $d0, $05, $f0, $05

    dec c                                         ; $4c7b: $0d
    db $06                                        ; $4c7c: $06

    db $29, $06, $44, $06, $5d, $06, $74, $06, $8a, $06, $9f, $06, $b3, $06, $c6, $06
    db $d7, $06, $e8, $06, $f8, $06, $07, $07, $15, $07, $22, $07, $2e, $07, $3a, $07
    db $45, $07, $50, $07, $5a, $07, $63, $07, $6c, $07, $74, $07, $7c, $07, $83, $07
    db $8a, $07, $91, $07, $97, $07, $9d, $07

    and e                                         ; $4cb5: $a3
    rlca                                          ; $4cb6: $07
    xor b                                         ; $4cb7: $a8
    rlca                                          ; $4cb8: $07
    xor l                                         ; $4cb9: $ad
    rlca                                          ; $4cba: $07
    or c                                          ; $4cbb: $b1
    rlca                                          ; $4cbc: $07
    or [hl]                                       ; $4cbd: $b6
    rlca                                          ; $4cbe: $07
    cp d                                          ; $4cbf: $ba
    rlca                                          ; $4cc0: $07
    cp [hl]                                       ; $4cc1: $be
    rlca                                          ; $4cc2: $07
    jp nz, $c507                                  ; $4cc3: $c2 $07 $c5

    rlca                                          ; $4cc6: $07
    ret z                                         ; $4cc7: $c8

    rlca                                          ; $4cc8: $07
    call z, $cf07                                 ; $4cc9: $cc $07 $cf
    rlca                                          ; $4ccc: $07
    pop de                                        ; $4ccd: $d1
    rlca                                          ; $4cce: $07
    call nc, $d607                                ; $4ccf: $d4 $07 $d6
    rlca                                          ; $4cd2: $07
    reti                                          ; $4cd3: $d9


    rlca                                          ; $4cd4: $07
    db $db                                        ; $4cd5: $db
    rlca                                          ; $4cd6: $07
    db $dd                                        ; $4cd7: $dd
    rlca                                          ; $4cd8: $07
    rst $18                                       ; $4cd9: $df
    rlca                                          ; $4cda: $07
    pop hl                                        ; $4cdb: $e1
    rlca                                          ; $4cdc: $07
    add c                                         ; $4cdd: $81
    ld c, l                                       ; $4cde: $4d

    db $91, $4d

    and c                                         ; $4ce1: $a1
    ld c, l                                       ; $4ce2: $4d
    or c                                          ; $4ce3: $b1
    ld c, l                                       ; $4ce4: $4d
    pop bc                                        ; $4ce5: $c1
    ld c, l                                       ; $4ce6: $4d
    pop de                                        ; $4ce7: $d1
    ld c, l                                       ; $4ce8: $4d
    pop hl                                        ; $4ce9: $e1
    ld c, l                                       ; $4cea: $4d
    pop af                                        ; $4ceb: $f1
    ld c, l                                       ; $4cec: $4d

    db $01, $4f

    db $11                                        ; $4cef: $11
    ld c, a                                       ; $4cf0: $4f

    db $21, $4f

    ld sp, $c14f                                  ; $4cf3: $31 $4f $c1
    ld c, [hl]                                    ; $4cf6: $4e
    pop de                                        ; $4cf7: $d1
    ld c, [hl]                                    ; $4cf8: $4e
    pop hl                                        ; $4cf9: $e1
    ld c, [hl]                                    ; $4cfa: $4e
    pop af                                        ; $4cfb: $f1
    ld c, [hl]                                    ; $4cfc: $4e
    add c                                         ; $4cfd: $81
    ld c, [hl]                                    ; $4cfe: $4e
    sub c                                         ; $4cff: $91
    ld c, [hl]                                    ; $4d00: $4e
    and c                                         ; $4d01: $a1
    ld c, [hl]                                    ; $4d02: $4e
    or c                                          ; $4d03: $b1
    ld c, [hl]                                    ; $4d04: $4e

    db $41, $4e

    ld d, c                                       ; $4d07: $51
    ld c, [hl]                                    ; $4d08: $4e
    ld h, c                                       ; $4d09: $61
    ld c, [hl]                                    ; $4d0a: $4e
    ld [hl], c                                    ; $4d0b: $71
    ld c, [hl]                                    ; $4d0c: $4e
    ld bc, $114e                                  ; $4d0d: $01 $4e $11
    ld c, [hl]                                    ; $4d10: $4e
    ld hl, $314e                                  ; $4d11: $21 $4e $31
    ld c, [hl]                                    ; $4d14: $4e
    ld hl, $314d                                  ; $4d15: $21 $4d $31
    ld c, l                                       ; $4d18: $4d
    ld b, c                                       ; $4d19: $41
    ld c, l                                       ; $4d1a: $4d
    ld d, c                                       ; $4d1b: $51
    ld c, l                                       ; $4d1c: $4d
    ld h, c                                       ; $4d1d: $61
    ld c, l                                       ; $4d1e: $4d
    ld [hl], c                                    ; $4d1f: $71
    ld c, l                                       ; $4d20: $4d
    xor $ee                                       ; $4d21: $ee $ee
    xor $ee                                       ; $4d23: $ee $ee
    xor $ee                                       ; $4d25: $ee $ee
    db $ec                                        ; $4d27: $ec
    xor b                                         ; $4d28: $a8
    ld h, h                                       ; $4d29: $64
    jr nz, jr_07c_4d2c                            ; $4d2a: $20 $00

jr_07c_4d2c:
    nop                                           ; $4d2c: $00
    nop                                           ; $4d2d: $00
    nop                                           ; $4d2e: $00
    nop                                           ; $4d2f: $00
    nop                                           ; $4d30: $00
    xor $ee                                       ; $4d31: $ee $ee
    xor $ee                                       ; $4d33: $ee $ee
    xor $ed                                       ; $4d35: $ee $ed
    res 3, b                                      ; $4d37: $cb $98
    ld h, l                                       ; $4d39: $65
    ld [hl-], a                                   ; $4d3a: $32
    stop                                          ; $4d3b: $10 $00
    nop                                           ; $4d3d: $00
    nop                                           ; $4d3e: $00
    nop                                           ; $4d3f: $00
    nop                                           ; $4d40: $00
    xor $ee                                       ; $4d41: $ee $ee
    xor $ee                                       ; $4d43: $ee $ee
    xor $ee                                       ; $4d45: $ee $ee
    xor $ca                                       ; $4d47: $ee $ca
    ld h, e                                       ; $4d49: $63
    nop                                           ; $4d4a: $00
    nop                                           ; $4d4b: $00
    nop                                           ; $4d4c: $00
    nop                                           ; $4d4d: $00
    nop                                           ; $4d4e: $00
    nop                                           ; $4d4f: $00
    nop                                           ; $4d50: $00
    rst $38                                       ; $4d51: $ff
    adc b                                         ; $4d52: $88
    rst $38                                       ; $4d53: $ff
    rst $38                                       ; $4d54: $ff
    rst $38                                       ; $4d55: $ff
    sbc c                                         ; $4d56: $99
    ld [hl], a                                    ; $4d57: $77
    ld b, h                                       ; $4d58: $44
    ld [hl+], a                                   ; $4d59: $22
    nop                                           ; $4d5a: $00
    ld b, b                                       ; $4d5b: $40
    nop                                           ; $4d5c: $00
    nop                                           ; $4d5d: $00
    nop                                           ; $4d5e: $00
    nop                                           ; $4d5f: $00
    nop                                           ; $4d60: $00
    rst $38                                       ; $4d61: $ff
    rst $38                                       ; $4d62: $ff
    rst $38                                       ; $4d63: $ff
    rst $38                                       ; $4d64: $ff
    rst $38                                       ; $4d65: $ff
    rst $38                                       ; $4d66: $ff
    rst $38                                       ; $4d67: $ff
    rst $38                                       ; $4d68: $ff
    nop                                           ; $4d69: $00
    nop                                           ; $4d6a: $00
    nop                                           ; $4d6b: $00
    nop                                           ; $4d6c: $00
    nop                                           ; $4d6d: $00
    nop                                           ; $4d6e: $00
    nop                                           ; $4d6f: $00
    nop                                           ; $4d70: $00
    xor [hl]                                      ; $4d71: $ae
    xor $ee                                       ; $4d72: $ee $ee
    xor $ee                                       ; $4d74: $ee $ee
    xor $ee                                       ; $4d76: $ee $ee
    ld [$1151], a                                 ; $4d78: $ea $51 $11
    ld de, $1111                                  ; $4d7b: $11 $11 $11
    ld de, $1511                                  ; $4d7e: $11 $11 $15
    ld a, c                                       ; $4d81: $79
    cp l                                          ; $4d82: $bd
    rst $38                                       ; $4d83: $ff
    rst $38                                       ; $4d84: $ff
    rst $38                                       ; $4d85: $ff
    rst $38                                       ; $4d86: $ff
    db $fd                                        ; $4d87: $fd
    cp c                                          ; $4d88: $b9
    ld [hl], l                                    ; $4d89: $75
    ld sp, $0000                                  ; $4d8a: $31 $00 $00
    nop                                           ; $4d8d: $00
    nop                                           ; $4d8e: $00
    db $01                                        ; $4d8f: $01
    dec [hl]                                      ; $4d90: $35

    db $01, $12, $23, $34, $45, $56, $67, $77, $88, $99, $aa, $bb, $cc, $dd, $ee, $ff

    ld [de], a                                    ; $4da1: $12
    inc hl                                        ; $4da2: $23
    inc sp                                        ; $4da3: $33
    ld b, h                                       ; $4da4: $44
    ld d, l                                       ; $4da5: $55
    ld h, [hl]                                    ; $4da6: $66
    ld [hl], a                                    ; $4da7: $77
    ld [hl], a                                    ; $4da8: $77
    ld a, b                                       ; $4da9: $78
    adc c                                         ; $4daa: $89
    sbc d                                         ; $4dab: $9a
    xor e                                         ; $4dac: $ab
    cp e                                          ; $4dad: $bb
    call z, $eedd                                 ; $4dae: $cc $dd $ee
    ld [hl+], a                                   ; $4db1: $22
    inc sp                                        ; $4db2: $33
    inc [hl]                                      ; $4db3: $34
    ld b, l                                       ; $4db4: $45
    ld d, l                                       ; $4db5: $55
    ld h, [hl]                                    ; $4db6: $66
    ld [hl], a                                    ; $4db7: $77
    ld [hl], a                                    ; $4db8: $77
    ld a, b                                       ; $4db9: $78
    adc c                                         ; $4dba: $89
    sbc c                                         ; $4dbb: $99
    xor d                                         ; $4dbc: $aa
    cp e                                          ; $4dbd: $bb
    cp h                                          ; $4dbe: $bc
    call Call_000_33dd                            ; $4dbf: $cd $dd $33
    inc [hl]                                      ; $4dc2: $34
    ld b, h                                       ; $4dc3: $44
    ld d, l                                       ; $4dc4: $55
    ld d, [hl]                                    ; $4dc5: $56
    ld h, [hl]                                    ; $4dc6: $66
    ld [hl], a                                    ; $4dc7: $77
    ld [hl], a                                    ; $4dc8: $77
    ld a, b                                       ; $4dc9: $78
    adc b                                         ; $4dca: $88
    sbc c                                         ; $4dcb: $99
    sbc d                                         ; $4dcc: $9a
    xor d                                         ; $4dcd: $aa
    cp e                                          ; $4dce: $bb
    cp h                                          ; $4dcf: $bc
    call z, $ff7b                                 ; $4dd0: $cc $7b $ff
    rst $38                                       ; $4dd3: $ff
    ei                                            ; $4dd4: $fb
    ld [hl], e                                    ; $4dd5: $73
    nop                                           ; $4dd6: $00
    nop                                           ; $4dd7: $00
    inc bc                                        ; $4dd8: $03
    ld a, e                                       ; $4dd9: $7b
    rst $38                                       ; $4dda: $ff
    rst $38                                       ; $4ddb: $ff
    ei                                            ; $4ddc: $fb
    ld [hl], e                                    ; $4ddd: $73
    nop                                           ; $4dde: $00
    nop                                           ; $4ddf: $00
    inc bc                                        ; $4de0: $03
    ld a, e                                       ; $4de1: $7b
    rst $28                                       ; $4de2: $ef
    rst $38                                       ; $4de3: $ff
    db $eb                                        ; $4de4: $eb
    ld [hl], e                                    ; $4de5: $73
    nop                                           ; $4de6: $00
    nop                                           ; $4de7: $00
    inc bc                                        ; $4de8: $03
    ld a, e                                       ; $4de9: $7b
    rst $28                                       ; $4dea: $ef
    rst $38                                       ; $4deb: $ff
    db $eb                                        ; $4dec: $eb
    ld [hl], e                                    ; $4ded: $73
    nop                                           ; $4dee: $00
    nop                                           ; $4def: $00
    inc bc                                        ; $4df0: $03
    ld a, d                                       ; $4df1: $7a
    rst $18                                       ; $4df2: $df
    rst $38                                       ; $4df3: $ff
    jp c, $1074                                   ; $4df4: $da $74 $10

    nop                                           ; $4df7: $00
    inc d                                         ; $4df8: $14
    ld a, d                                       ; $4df9: $7a
    rst $18                                       ; $4dfa: $df
    rst $38                                       ; $4dfb: $ff
    jp c, $1074                                   ; $4dfc: $da $74 $10

    nop                                           ; $4dff: $00
    inc d                                         ; $4e00: $14
    xor $ee                                       ; $4e01: $ee $ee
    xor $ee                                       ; $4e03: $ee $ee
    xor $ee                                       ; $4e05: $ee $ee
    xor $ee                                       ; $4e07: $ee $ee
    xor $ee                                       ; $4e09: $ee $ee
    xor $ee                                       ; $4e0b: $ee $ee
    xor $ee                                       ; $4e0d: $ee $ee
    nop                                           ; $4e0f: $00
    nop                                           ; $4e10: $00
    db $dd                                        ; $4e11: $dd
    db $dd                                        ; $4e12: $dd
    db $dd                                        ; $4e13: $dd
    db $dd                                        ; $4e14: $dd
    db $dd                                        ; $4e15: $dd
    db $dd                                        ; $4e16: $dd
    db $dd                                        ; $4e17: $dd
    db $dd                                        ; $4e18: $dd
    db $dd                                        ; $4e19: $dd
    db $dd                                        ; $4e1a: $dd
    db $dd                                        ; $4e1b: $dd
    db $dd                                        ; $4e1c: $dd
    db $dd                                        ; $4e1d: $dd
    db $dd                                        ; $4e1e: $dd
    ld de, $cc11                                  ; $4e1f: $11 $11 $cc
    call z, $cccc                                 ; $4e22: $cc $cc $cc
    call z, $cccc                                 ; $4e25: $cc $cc $cc
    call z, $cccc                                 ; $4e28: $cc $cc $cc
    call z, $cccc                                 ; $4e2b: $cc $cc $cc
    call z, $2222                                 ; $4e2e: $cc $22 $22
    cp e                                          ; $4e31: $bb
    cp e                                          ; $4e32: $bb
    cp e                                          ; $4e33: $bb
    cp e                                          ; $4e34: $bb
    cp e                                          ; $4e35: $bb
    cp e                                          ; $4e36: $bb
    cp e                                          ; $4e37: $bb
    cp e                                          ; $4e38: $bb
    cp e                                          ; $4e39: $bb
    cp e                                          ; $4e3a: $bb
    cp e                                          ; $4e3b: $bb
    cp e                                          ; $4e3c: $bb
    cp e                                          ; $4e3d: $bb
    cp e                                          ; $4e3e: $bb
    inc sp                                        ; $4e3f: $33
    inc sp                                        ; $4e40: $33

    db $ee, $ee, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    db $dd                                        ; $4e51: $dd
    db $dd                                        ; $4e52: $dd
    ld de, $1111                                  ; $4e53: $11 $11 $11
    ld de, $1111                                  ; $4e56: $11 $11 $11
    ld de, $1111                                  ; $4e59: $11 $11 $11
    ld de, $1111                                  ; $4e5c: $11 $11 $11
    ld de, $cc11                                  ; $4e5f: $11 $11 $cc
    call z, $2222                                 ; $4e62: $cc $22 $22
    ld [hl+], a                                   ; $4e65: $22
    ld [hl+], a                                   ; $4e66: $22
    ld [hl+], a                                   ; $4e67: $22
    ld [hl+], a                                   ; $4e68: $22
    ld [hl+], a                                   ; $4e69: $22
    ld [hl+], a                                   ; $4e6a: $22
    ld [hl+], a                                   ; $4e6b: $22
    ld [hl+], a                                   ; $4e6c: $22
    ld [hl+], a                                   ; $4e6d: $22
    ld [hl+], a                                   ; $4e6e: $22
    ld [hl+], a                                   ; $4e6f: $22
    ld [hl+], a                                   ; $4e70: $22
    cp e                                          ; $4e71: $bb
    cp e                                          ; $4e72: $bb
    inc sp                                        ; $4e73: $33
    inc sp                                        ; $4e74: $33
    inc sp                                        ; $4e75: $33
    inc sp                                        ; $4e76: $33
    inc sp                                        ; $4e77: $33
    inc sp                                        ; $4e78: $33
    inc sp                                        ; $4e79: $33
    inc sp                                        ; $4e7a: $33
    inc sp                                        ; $4e7b: $33
    inc sp                                        ; $4e7c: $33
    inc sp                                        ; $4e7d: $33
    inc sp                                        ; $4e7e: $33
    inc sp                                        ; $4e7f: $33
    inc sp                                        ; $4e80: $33
    xor $ee                                       ; $4e81: $ee $ee
    xor $ee                                       ; $4e83: $ee $ee
    xor $ee                                       ; $4e85: $ee $ee
    xor $ee                                       ; $4e87: $ee $ee
    xor $ee                                       ; $4e89: $ee $ee
    xor $ee                                       ; $4e8b: $ee $ee
    nop                                           ; $4e8d: $00
    nop                                           ; $4e8e: $00
    nop                                           ; $4e8f: $00
    nop                                           ; $4e90: $00
    db $dd                                        ; $4e91: $dd
    db $dd                                        ; $4e92: $dd
    db $dd                                        ; $4e93: $dd
    db $dd                                        ; $4e94: $dd
    db $dd                                        ; $4e95: $dd
    db $dd                                        ; $4e96: $dd
    db $dd                                        ; $4e97: $dd
    db $dd                                        ; $4e98: $dd
    db $dd                                        ; $4e99: $dd
    db $dd                                        ; $4e9a: $dd
    db $dd                                        ; $4e9b: $dd
    db $dd                                        ; $4e9c: $dd
    ld de, $1111                                  ; $4e9d: $11 $11 $11
    ld de, $cccc                                  ; $4ea0: $11 $cc $cc
    call z, $cccc                                 ; $4ea3: $cc $cc $cc
    call z, $cccc                                 ; $4ea6: $cc $cc $cc
    call z, $cccc                                 ; $4ea9: $cc $cc $cc
    call z, $2222                                 ; $4eac: $cc $22 $22
    ld [hl+], a                                   ; $4eaf: $22
    ld [hl+], a                                   ; $4eb0: $22
    cp e                                          ; $4eb1: $bb
    cp e                                          ; $4eb2: $bb
    cp e                                          ; $4eb3: $bb
    cp e                                          ; $4eb4: $bb
    cp e                                          ; $4eb5: $bb
    cp e                                          ; $4eb6: $bb
    cp e                                          ; $4eb7: $bb
    cp e                                          ; $4eb8: $bb
    cp e                                          ; $4eb9: $bb
    cp e                                          ; $4eba: $bb
    cp e                                          ; $4ebb: $bb
    cp e                                          ; $4ebc: $bb
    inc sp                                        ; $4ebd: $33
    inc sp                                        ; $4ebe: $33
    inc sp                                        ; $4ebf: $33
    inc sp                                        ; $4ec0: $33
    xor $ee                                       ; $4ec1: $ee $ee
    xor $ee                                       ; $4ec3: $ee $ee
    nop                                           ; $4ec5: $00
    nop                                           ; $4ec6: $00
    nop                                           ; $4ec7: $00
    nop                                           ; $4ec8: $00
    nop                                           ; $4ec9: $00
    nop                                           ; $4eca: $00
    nop                                           ; $4ecb: $00
    nop                                           ; $4ecc: $00
    nop                                           ; $4ecd: $00
    nop                                           ; $4ece: $00
    nop                                           ; $4ecf: $00
    nop                                           ; $4ed0: $00
    db $dd                                        ; $4ed1: $dd
    db $dd                                        ; $4ed2: $dd
    db $dd                                        ; $4ed3: $dd
    db $dd                                        ; $4ed4: $dd
    ld de, $1111                                  ; $4ed5: $11 $11 $11
    ld de, $1111                                  ; $4ed8: $11 $11 $11
    ld de, $1111                                  ; $4edb: $11 $11 $11
    ld de, $1111                                  ; $4ede: $11 $11 $11
    call z, $cccc                                 ; $4ee1: $cc $cc $cc
    call z, $2222                                 ; $4ee4: $cc $22 $22
    ld [hl+], a                                   ; $4ee7: $22
    ld [hl+], a                                   ; $4ee8: $22
    ld [hl+], a                                   ; $4ee9: $22
    ld [hl+], a                                   ; $4eea: $22
    ld [hl+], a                                   ; $4eeb: $22
    ld [hl+], a                                   ; $4eec: $22
    ld [hl+], a                                   ; $4eed: $22
    ld [hl+], a                                   ; $4eee: $22
    ld [hl+], a                                   ; $4eef: $22
    ld [hl+], a                                   ; $4ef0: $22
    cp e                                          ; $4ef1: $bb
    cp e                                          ; $4ef2: $bb
    cp e                                          ; $4ef3: $bb
    cp e                                          ; $4ef4: $bb
    inc sp                                        ; $4ef5: $33
    inc sp                                        ; $4ef6: $33
    inc sp                                        ; $4ef7: $33
    inc sp                                        ; $4ef8: $33
    inc sp                                        ; $4ef9: $33
    inc sp                                        ; $4efa: $33
    inc sp                                        ; $4efb: $33
    inc sp                                        ; $4efc: $33
    inc sp                                        ; $4efd: $33
    inc sp                                        ; $4efe: $33
    inc sp                                        ; $4eff: $33
    inc sp                                        ; $4f00: $33

    db $ee, $ee, $ee, $ee, $ee, $ee, $ee, $ee, $00, $00, $00, $00, $00, $00, $00, $00

    db $dd                                        ; $4f11: $dd
    db $dd                                        ; $4f12: $dd
    db $dd                                        ; $4f13: $dd
    db $dd                                        ; $4f14: $dd
    db $dd                                        ; $4f15: $dd
    db $dd                                        ; $4f16: $dd
    db $dd                                        ; $4f17: $dd
    db $dd                                        ; $4f18: $dd
    ld de, $1111                                  ; $4f19: $11 $11 $11
    ld de, $1111                                  ; $4f1c: $11 $11 $11
    db $11                                        ; $4f1f: $11
    db $11                                        ; $4f20: $11

    db $cc, $cc, $cc, $cc, $cc, $cc, $cc, $cc, $22, $22, $22, $22, $22, $22, $22, $22

    cp e                                          ; $4f31: $bb
    cp e                                          ; $4f32: $bb
    cp e                                          ; $4f33: $bb
    cp e                                          ; $4f34: $bb
    cp e                                          ; $4f35: $bb
    cp e                                          ; $4f36: $bb
    cp e                                          ; $4f37: $bb
    cp e                                          ; $4f38: $bb
    inc sp                                        ; $4f39: $33
    inc sp                                        ; $4f3a: $33
    inc sp                                        ; $4f3b: $33
    inc sp                                        ; $4f3c: $33
    inc sp                                        ; $4f3d: $33
    inc sp                                        ; $4f3e: $33
    inc sp                                        ; $4f3f: $33
    inc sp                                        ; $4f40: $33

    db $77, $4f, $99, $4f, $7f, $4f

    adc h                                         ; $4f47: $8c
    ld c, a                                       ; $4f48: $4f

    db $c5, $4f, $db, $4f

    rst $08                                       ; $4f4d: $cf
    ld c, a                                       ; $4f4e: $4f

    db $e5, $4f

    db $fa                                        ; $4f51: $fa
    ld c, a                                       ; $4f52: $4f

    db $2f, $50, $42, $50, $55, $50

    sbc c                                         ; $4f59: $99
    ld c, a                                       ; $4f5a: $4f
    and l                                         ; $4f5b: $a5
    ld c, a                                       ; $4f5c: $4f
    or b                                          ; $4f5d: $b0
    ld c, a                                       ; $4f5e: $4f
    cp h                                          ; $4f5f: $bc
    ld c, a                                       ; $4f60: $4f

    db $1c, $50

    add e                                         ; $4f63: $83
    ld d, b                                       ; $4f64: $50
    and c                                         ; $4f65: $a1
    ld d, b                                       ; $4f66: $50

    db $8a, $50

    xor b                                         ; $4f69: $a8
    ld d, b                                       ; $4f6a: $50
    pop bc                                        ; $4f6b: $c1
    ld d, b                                       ; $4f6c: $50
    ld [hl], c                                    ; $4f6d: $71
    ld c, a                                       ; $4f6e: $4f
    ld [hl], c                                    ; $4f6f: $71
    ld c, a                                       ; $4f70: $4f
    nop                                           ; $4f71: $00
    db $ed                                        ; $4f72: $ed
    ld [bc], a                                    ; $4f73: $02
    ret nz                                        ; $4f74: $c0

    ld b, [hl]                                    ; $4f75: $46
    ld h, e                                       ; $4f76: $63

    db $88, $ed, $f1, $c0, $5e, $5f, $6c, $ff, $88, $00, $a1, $80, $06, $15, $16, $15
    db $16, $17, $24, $25, $ff

    adc b                                         ; $4f8c: $88
    nop                                           ; $4f8d: $00
    pop bc                                        ; $4f8e: $c1
    add b                                         ; $4f8f: $80
    ld b, $15                                     ; $4f90: $06 $15
    ld d, $15                                     ; $4f92: $16 $15
    ld d, $17                                     ; $4f94: $16 $17
    inc h                                         ; $4f96: $24
    dec h                                         ; $4f97: $25
    rst $38                                       ; $4f98: $ff

    db $88, $00, $81, $80, $15, $16, $15, $16, $17, $24, $25, $ff

    adc b                                         ; $4fa5: $88
    nop                                           ; $4fa6: $00
    ld h, c                                       ; $4fa7: $61
    add b                                         ; $4fa8: $80
    ld d, $15                                     ; $4fa9: $16 $15
    ld d, $17                                     ; $4fab: $16 $17
    inc h                                         ; $4fad: $24
    dec h                                         ; $4fae: $25
    rst $38                                       ; $4faf: $ff
    adc b                                         ; $4fb0: $88
    nop                                           ; $4fb1: $00
    ld b, d                                       ; $4fb2: $42
    add b                                         ; $4fb3: $80
    dec d                                         ; $4fb4: $15
    ld d, $15                                     ; $4fb5: $16 $15
    ld d, $17                                     ; $4fb7: $16 $17
    inc h                                         ; $4fb9: $24
    dec h                                         ; $4fba: $25
    rst $38                                       ; $4fbb: $ff
    adc b                                         ; $4fbc: $88
    nop                                           ; $4fbd: $00
    ld [hl+], a                                   ; $4fbe: $22
    add b                                         ; $4fbf: $80
    ld d, $17                                     ; $4fc0: $16 $17
    inc h                                         ; $4fc2: $24
    dec h                                         ; $4fc3: $25
    rst $38                                       ; $4fc4: $ff

    db $88, $f7, $b1, $c0, $03, $01, $01, $01, $01, $ff

    adc b                                         ; $4fcf: $88
    rst $30                                       ; $4fd0: $f7
    pop de                                        ; $4fd1: $d1
    ret nz                                        ; $4fd2: $c0

    inc bc                                        ; $4fd3: $03
    ld bc, $0101                                  ; $4fd4: $01 $01 $01
    ld bc, $0101                                  ; $4fd7: $01 $01 $01
    rst $38                                       ; $4fda: $ff

    db $80, $f7, $d1, $c0, $03, $01, $01, $01, $01, $ff, $08, $f7, $d1, $c0, $03, $01
    db $01, $01, $01, $ff

    adc b                                         ; $4fef: $88
    nop                                           ; $4ff0: $00
    or c                                          ; $4ff1: $b1
    add b                                         ; $4ff2: $80
    ld b, $06                                     ; $4ff3: $06 $06
    ld b, $06                                     ; $4ff5: $06 $06
    ld b, $06                                     ; $4ff7: $06 $06
    rst $38                                       ; $4ff9: $ff
    adc b                                         ; $4ffa: $88
    nop                                           ; $4ffb: $00
    or e                                          ; $4ffc: $b3
    add b                                         ; $4ffd: $80
    inc bc                                        ; $4ffe: $03
    ld [bc], a                                    ; $4fff: $02
    ld bc, $0101                                  ; $5000: $01 $01 $01
    ld bc, $0101                                  ; $5003: $01 $01 $01
    ld bc, $0101                                  ; $5006: $01 $01 $01
    ld bc, $0101                                  ; $5009: $01 $01 $01
    ld bc, $0101                                  ; $500c: $01 $01 $01
    ld bc, $0101                                  ; $500f: $01 $01 $01
    ld bc, $0101                                  ; $5012: $01 $01 $01
    ld bc, $0101                                  ; $5015: $01 $01 $01
    ld bc, $0101                                  ; $5018: $01 $01 $01
    rst $38                                       ; $501b: $ff

    db $88, $ed, $72, $80, $59, $3f, $21, $22, $23, $23, $23, $23, $23, $23, $23, $23
    db $23, $23, $ff, $88, $ed, $72, $80, $59, $3f, $35, $36, $37, $37, $37, $37, $37
    db $37, $37, $37, $37, $37, $ff, $88, $ed, $72, $80, $59, $3f, $25, $26, $27, $27
    db $27, $27, $27, $27

    daa                                           ; $5050: $27
    daa                                           ; $5051: $27
    daa                                           ; $5052: $27
    daa                                           ; $5053: $27
    rst $38                                       ; $5054: $ff

    db $88, $20, $94, $80, $5e, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
    db $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
    db $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $ff

    adc b                                         ; $5083: $88
    rst $30                                       ; $5084: $f7
    add c                                         ; $5085: $81
    ret nz                                        ; $5086: $c0

    daa                                           ; $5087: $27
    inc [hl]                                      ; $5088: $34
    rst $38                                       ; $5089: $ff

    db $88, $20, $92, $80, $01, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $ff

    adc b                                         ; $50a1: $88
    jr nz, @+$5b                                  ; $50a2: $20 $59

    add b                                         ; $50a4: $80
    inc b                                         ; $50a5: $04
    inc b                                         ; $50a6: $04
    rst $38                                       ; $50a7: $ff
    adc b                                         ; $50a8: $88
    jr nz, @-$4c                                  ; $50a9: $20 $b2

    add b                                         ; $50ab: $80
    ld [bc], a                                    ; $50ac: $02
    inc bc                                        ; $50ad: $03
    inc bc                                        ; $50ae: $03
    inc bc                                        ; $50af: $03
    inc bc                                        ; $50b0: $03
    inc bc                                        ; $50b1: $03
    inc bc                                        ; $50b2: $03
    inc bc                                        ; $50b3: $03
    inc bc                                        ; $50b4: $03
    inc bc                                        ; $50b5: $03
    inc bc                                        ; $50b6: $03
    inc bc                                        ; $50b7: $03
    inc bc                                        ; $50b8: $03
    inc bc                                        ; $50b9: $03
    inc bc                                        ; $50ba: $03
    inc bc                                        ; $50bb: $03
    inc bc                                        ; $50bc: $03
    inc bc                                        ; $50bd: $03
    inc bc                                        ; $50be: $03
    inc bc                                        ; $50bf: $03
    rst $38                                       ; $50c0: $ff
    adc b                                         ; $50c1: $88
    db $ed                                        ; $50c2: $ed
    pop de                                        ; $50c3: $d1
    ret nz                                        ; $50c4: $c0

    ld e, [hl]                                    ; $50c5: $5e
    ld e, a                                       ; $50c6: $5f
    ld l, h                                       ; $50c7: $6c
    rst $38                                       ; $50c8: $ff
    push af                                       ; $50c9: $f5
    ld d, b                                       ; $50ca: $50

    db $f8, $50

    inc b                                         ; $50cd: $04
    ld d, c                                       ; $50ce: $51

    db $10, $51, $1e, $51

    ld l, $51                                     ; $50d3: $2e $51
    inc sp                                        ; $50d5: $33
    ld d, c                                       ; $50d6: $51
    scf                                           ; $50d7: $37
    ld d, c                                       ; $50d8: $51
    dec sp                                        ; $50d9: $3b
    ld d, c                                       ; $50da: $51
    ld b, c                                       ; $50db: $41
    ld d, c                                       ; $50dc: $51
    ld c, l                                       ; $50dd: $4d
    ld d, c                                       ; $50de: $51
    ld d, [hl]                                    ; $50df: $56
    ld d, c                                       ; $50e0: $51
    ld h, d                                       ; $50e1: $62
    ld d, c                                       ; $50e2: $51
    ld [hl], d                                    ; $50e3: $72
    ld d, c                                       ; $50e4: $51
    add b                                         ; $50e5: $80

Call_07c_50e6:
    ld d, c                                       ; $50e6: $51
    adc h                                         ; $50e7: $8c
    ld d, c                                       ; $50e8: $51
    sbc b                                         ; $50e9: $98
    ld d, c                                       ; $50ea: $51
    and h                                         ; $50eb: $a4
    ld d, c                                       ; $50ec: $51
    xor e                                         ; $50ed: $ab
    ld d, c                                       ; $50ee: $51
    cp l                                          ; $50ef: $bd
    ld d, c                                       ; $50f0: $51
    pop bc                                        ; $50f1: $c1
    ld d, c                                       ; $50f2: $51
    daa                                           ; $50f3: $27
    ld d, d                                       ; $50f4: $52
    nop                                           ; $50f5: $00
    add b                                         ; $50f6: $80
    add b                                         ; $50f7: $80

    db $01, $02, $03, $02, $01, $ff, $fe, $fd, $fe, $ff, $80, $80

    ld bc, $0202                                  ; $5104: $01 $02 $02
    ld bc, $ff00                                  ; $5107: $01 $00 $ff
    cp $fe                                        ; $510a: $fe $fe
    rst $38                                       ; $510c: $ff
    nop                                           ; $510d: $00
    add b                                         ; $510e: $80
    add b                                         ; $510f: $80

    db $01, $01, $02, $01, $01, $00, $ff, $ff

    cp $ff                                        ; $5118: $fe $ff
    rst $38                                       ; $511a: $ff
    nop                                           ; $511b: $00
    add b                                         ; $511c: $80
    add b                                         ; $511d: $80

    db $01, $01, $02, $02, $01, $01, $00, $ff, $ff, $fe, $fe, $ff, $ff, $00, $80, $80

    ldh a, [$f8]                                  ; $512e: $f0 $f8
    nop                                           ; $5130: $00
    add b                                         ; $5131: $80
    nop                                           ; $5132: $00
    or $00                                        ; $5133: $f6 $00
    add b                                         ; $5135: $80
    nop                                           ; $5136: $00
    ei                                            ; $5137: $fb
    nop                                           ; $5138: $00
    add b                                         ; $5139: $80
    nop                                           ; $513a: $00
    db $d3                                        ; $513b: $d3
    ld [c], a                                     ; $513c: $e2
    pop af                                        ; $513d: $f1
    nop                                           ; $513e: $00
    add b                                         ; $513f: $80
    nop                                           ; $5140: $00
    ld [bc], a                                    ; $5141: $02
    dec b                                         ; $5142: $05
    add hl, bc                                    ; $5143: $09
    dec b                                         ; $5144: $05
    ld [bc], a                                    ; $5145: $02
    cp $fb                                        ; $5146: $fe $fb
    rst $30                                       ; $5148: $f7
    ei                                            ; $5149: $fb
    cp $80                                        ; $514a: $fe $80
    add b                                         ; $514c: $80
    call c, $e8e2                                 ; $514d: $dc $e2 $e8
    xor $f4                                       ; $5150: $ee $f4
    ld a, [$8000]                                 ; $5152: $fa $00 $80
    nop                                           ; $5155: $00
    ld bc, $0403                                  ; $5156: $01 $03 $04
    inc bc                                        ; $5159: $03
    ld bc, $fdff                                  ; $515a: $01 $ff $fd
    db $fc                                        ; $515d: $fc
    db $fd                                        ; $515e: $fd
    rst $38                                       ; $515f: $ff
    add b                                         ; $5160: $80
    add b                                         ; $5161: $80
    ld bc, $0403                                  ; $5162: $01 $03 $04
    inc b                                         ; $5165: $04
    inc bc                                        ; $5166: $03
    ld bc, $ff00                                  ; $5167: $01 $00 $ff
    db $fd                                        ; $516a: $fd
    db $fc                                        ; $516b: $fc
    db $fc                                        ; $516c: $fc
    db $fd                                        ; $516d: $fd
    rst $38                                       ; $516e: $ff
    nop                                           ; $516f: $00
    add b                                         ; $5170: $80
    add b                                         ; $5171: $80
    ld bc, $0403                                  ; $5172: $01 $03 $04
    inc bc                                        ; $5175: $03
    ld bc, $ff00                                  ; $5176: $01 $00 $ff
    db $fd                                        ; $5179: $fd
    db $fc                                        ; $517a: $fc
    db $fd                                        ; $517b: $fd
    rst $38                                       ; $517c: $ff
    nop                                           ; $517d: $00
    add b                                         ; $517e: $80
    add b                                         ; $517f: $80
    ld bc, $0604                                  ; $5180: $01 $04 $06
    inc b                                         ; $5183: $04
    ld bc, $fcff                                  ; $5184: $01 $ff $fc
    ld a, [$fffc]                                 ; $5187: $fa $fc $ff
    add b                                         ; $518a: $80
    add b                                         ; $518b: $80
    rst $20                                       ; $518c: $e7
    adc $b5                                       ; $518d: $ce $b5
    sbc h                                         ; $518f: $9c
    add e                                         ; $5190: $83
    ld l, d                                       ; $5191: $6a
    ld d, c                                       ; $5192: $51
    jr c, @+$21                                   ; $5193: $38 $1f

    ld b, $80                                     ; $5195: $06 $80
    add b                                         ; $5197: $80
    ld [bc], a                                    ; $5198: $02
    dec b                                         ; $5199: $05
    ld [$0205], sp                                ; $519a: $08 $05 $02
    cp $fb                                        ; $519d: $fe $fb
    ld hl, sp-$05                                 ; $519f: $f8 $fb
    cp $80                                        ; $51a1: $fe $80
    add b                                         ; $51a3: $80
    db $fc                                        ; $51a4: $fc
    db $fd                                        ; $51a5: $fd
    cp $ff                                        ; $51a6: $fe $ff
    nop                                           ; $51a8: $00
    add b                                         ; $51a9: $80
    nop                                           ; $51aa: $00
    nop                                           ; $51ab: $00
    nop                                           ; $51ac: $00
    nop                                           ; $51ad: $00
    rst $38                                       ; $51ae: $ff
    rst $38                                       ; $51af: $ff
    rst $38                                       ; $51b0: $ff
    cp $fe                                        ; $51b1: $fe $fe
    cp $fe                                        ; $51b3: $fe $fe
    cp $ff                                        ; $51b5: $fe $ff
    rst $38                                       ; $51b7: $ff
    rst $38                                       ; $51b8: $ff
    rst $38                                       ; $51b9: $ff
    nop                                           ; $51ba: $00
    add b                                         ; $51bb: $80
    nop                                           ; $51bc: $00
    rst $38                                       ; $51bd: $ff
    nop                                           ; $51be: $00
    add b                                         ; $51bf: $80
    nop                                           ; $51c0: $00
    ld bc, $0302                                  ; $51c1: $01 $02 $03
    inc b                                         ; $51c4: $04
    dec b                                         ; $51c5: $05
    ld b, $07                                     ; $51c6: $06 $07
    ld [$0a09], sp                                ; $51c8: $08 $09 $0a
    dec bc                                        ; $51cb: $0b
    inc c                                         ; $51cc: $0c
    dec c                                         ; $51cd: $0d
    ld c, $0f                                     ; $51ce: $0e $0f
    db $10                                        ; $51d0: $10
    ld de, $1312                                  ; $51d1: $11 $12 $13
    inc d                                         ; $51d4: $14
    dec d                                         ; $51d5: $15
    ld d, $17                                     ; $51d6: $16 $17
    jr jr_07c_51f3                                ; $51d8: $18 $19

    ld a, [de]                                    ; $51da: $1a
    dec de                                        ; $51db: $1b
    inc e                                         ; $51dc: $1c
    dec e                                         ; $51dd: $1d
    ld e, $1f                                     ; $51de: $1e $1f
    jr nz, jr_07c_5203                            ; $51e0: $20 $21

    ld [hl+], a                                   ; $51e2: $22
    inc hl                                        ; $51e3: $23
    inc h                                         ; $51e4: $24
    dec h                                         ; $51e5: $25
    ld h, $27                                     ; $51e6: $26 $27
    jr z, jr_07c_5213                             ; $51e8: $28 $29

    ld a, [hl+]                                   ; $51ea: $2a
    dec hl                                        ; $51eb: $2b
    inc l                                         ; $51ec: $2c
    dec l                                         ; $51ed: $2d
    ld l, $2f                                     ; $51ee: $2e $2f
    jr nc, jr_07c_5223                            ; $51f0: $30 $31

    ld [hl-], a                                   ; $51f2: $32

jr_07c_51f3:
    inc sp                                        ; $51f3: $33
    inc [hl]                                      ; $51f4: $34
    dec [hl]                                      ; $51f5: $35
    ld [hl], $37                                  ; $51f6: $36 $37
    jr c, jr_07c_5233                             ; $51f8: $38 $39

    ld a, [hl-]                                   ; $51fa: $3a
    dec sp                                        ; $51fb: $3b
    inc a                                         ; $51fc: $3c
    dec a                                         ; $51fd: $3d
    ld a, $3f                                     ; $51fe: $3e $3f
    ld b, b                                       ; $5200: $40
    ld b, c                                       ; $5201: $41
    ld b, d                                       ; $5202: $42

jr_07c_5203:
    ld b, e                                       ; $5203: $43
    ld b, h                                       ; $5204: $44
    ld b, l                                       ; $5205: $45
    ld b, [hl]                                    ; $5206: $46
    ld b, a                                       ; $5207: $47
    ld c, b                                       ; $5208: $48
    ld c, c                                       ; $5209: $49
    ld c, d                                       ; $520a: $4a
    ld c, e                                       ; $520b: $4b
    ld c, h                                       ; $520c: $4c
    ld c, l                                       ; $520d: $4d
    ld c, [hl]                                    ; $520e: $4e
    ld c, a                                       ; $520f: $4f
    ld d, b                                       ; $5210: $50
    ld d, c                                       ; $5211: $51
    ld d, d                                       ; $5212: $52

jr_07c_5213:
    ld d, e                                       ; $5213: $53
    ld d, h                                       ; $5214: $54
    ld d, l                                       ; $5215: $55
    ld d, [hl]                                    ; $5216: $56
    ld d, a                                       ; $5217: $57
    ld e, b                                       ; $5218: $58
    ld e, c                                       ; $5219: $59
    ld e, d                                       ; $521a: $5a
    ld e, e                                       ; $521b: $5b
    ld e, h                                       ; $521c: $5c
    ld e, l                                       ; $521d: $5d
    ld e, [hl]                                    ; $521e: $5e
    ld e, a                                       ; $521f: $5f
    ld h, b                                       ; $5220: $60
    ld h, c                                       ; $5221: $61
    ld h, d                                       ; $5222: $62

jr_07c_5223:
    ld h, e                                       ; $5223: $63
    ld h, h                                       ; $5224: $64
    add b                                         ; $5225: $80
    add b                                         ; $5226: $80
    dec b                                         ; $5227: $05
    dec b                                         ; $5228: $05
    ld a, [bc]                                    ; $5229: $0a
    dec b                                         ; $522a: $05
    dec b                                         ; $522b: $05
    nop                                           ; $522c: $00
    ei                                            ; $522d: $fb
    ei                                            ; $522e: $fb
    or $fb                                        ; $522f: $f6 $fb
    ei                                            ; $5231: $fb
    nop                                           ; $5232: $00

jr_07c_5233:
    add b                                         ; $5233: $80
    add b                                         ; $5234: $80
    nop                                           ; $5235: $00
    ld a, [bc]                                    ; $5236: $0a
    ld a, [bc]                                    ; $5237: $0a
    ld a, [bc]                                    ; $5238: $0a
    ld a, [bc]                                    ; $5239: $0a
    ld a, [bc]                                    ; $523a: $0a
    ld a, [bc]                                    ; $523b: $0a
    ld a, [bc]                                    ; $523c: $0a
    ld a, [bc]                                    ; $523d: $0a
    ld a, [bc]                                    ; $523e: $0a
    ld a, [bc]                                    ; $523f: $0a
    ld a, [bc]                                    ; $5240: $0a
    ld a, [bc]                                    ; $5241: $0a
    ld a, [bc]                                    ; $5242: $0a
    ld a, [bc]                                    ; $5243: $0a
    ld a, [bc]                                    ; $5244: $0a
    ld a, [bc]                                    ; $5245: $0a
    ld a, [bc]                                    ; $5246: $0a
    ld a, [bc]                                    ; $5247: $0a
    ld a, [bc]                                    ; $5248: $0a
    ld a, [bc]                                    ; $5249: $0a
    ld a, [bc]                                    ; $524a: $0a
    ld a, [bc]                                    ; $524b: $0a
    ld a, [bc]                                    ; $524c: $0a
    ld a, [bc]                                    ; $524d: $0a
    ld a, [bc]                                    ; $524e: $0a
    ld a, [bc]                                    ; $524f: $0a
    ld a, [bc]                                    ; $5250: $0a
    ld a, [bc]                                    ; $5251: $0a
    ld a, [bc]                                    ; $5252: $0a
    ld a, [bc]                                    ; $5253: $0a
    ld a, [bc]                                    ; $5254: $0a
    ld a, [bc]                                    ; $5255: $0a
    ld a, [bc]                                    ; $5256: $0a
    ld a, [bc]                                    ; $5257: $0a
    add hl, bc                                    ; $5258: $09
    ld a, [bc]                                    ; $5259: $0a
    add hl, bc                                    ; $525a: $09
    ld a, [bc]                                    ; $525b: $0a
    ld a, [bc]                                    ; $525c: $0a
    ld a, [bc]                                    ; $525d: $0a
    ld a, [bc]                                    ; $525e: $0a
    ld a, [bc]                                    ; $525f: $0a
    ld a, [bc]                                    ; $5260: $0a
    ld a, [bc]                                    ; $5261: $0a
    ld a, [bc]                                    ; $5262: $0a
    ld a, [bc]                                    ; $5263: $0a
    ld a, [bc]                                    ; $5264: $0a
    ld a, [bc]                                    ; $5265: $0a
    ld a, [bc]                                    ; $5266: $0a
    ld a, [bc]                                    ; $5267: $0a
    ld a, [bc]                                    ; $5268: $0a
    ld a, [bc]                                    ; $5269: $0a
    ld a, [bc]                                    ; $526a: $0a
    ld a, [bc]                                    ; $526b: $0a
    ld a, [bc]                                    ; $526c: $0a
    ld a, [bc]                                    ; $526d: $0a
    ld a, [bc]                                    ; $526e: $0a
    ld a, [bc]                                    ; $526f: $0a
    ld a, [bc]                                    ; $5270: $0a
    ld a, [bc]                                    ; $5271: $0a
    ld a, [bc]                                    ; $5272: $0a
    ld a, [bc]                                    ; $5273: $0a
    ld a, [bc]                                    ; $5274: $0a
    ld a, [bc]                                    ; $5275: $0a
    ld a, [bc]                                    ; $5276: $0a
    ld a, [bc]                                    ; $5277: $0a
    ld a, [bc]                                    ; $5278: $0a
    ld a, [bc]                                    ; $5279: $0a
    ld a, [bc]                                    ; $527a: $0a
    ld a, [bc]                                    ; $527b: $0a
    ld a, [bc]                                    ; $527c: $0a
    ld a, [bc]                                    ; $527d: $0a
    ld a, [bc]                                    ; $527e: $0a
    ld a, [bc]                                    ; $527f: $0a
    ld a, [bc]                                    ; $5280: $0a
    ld a, [bc]                                    ; $5281: $0a
    ld a, [bc]                                    ; $5282: $0a
    ld a, [bc]                                    ; $5283: $0a
    ld a, [bc]                                    ; $5284: $0a
    ld a, [bc]                                    ; $5285: $0a
    ld a, [bc]                                    ; $5286: $0a
    ld a, [bc]                                    ; $5287: $0a
    add hl, bc                                    ; $5288: $09
    ld a, [bc]                                    ; $5289: $0a
    ld a, [bc]                                    ; $528a: $0a
    ld a, [bc]                                    ; $528b: $0a
    ld a, [bc]                                    ; $528c: $0a
    ld a, [bc]                                    ; $528d: $0a
    ld a, [bc]                                    ; $528e: $0a
    ld a, [bc]                                    ; $528f: $0a
    ld a, [bc]                                    ; $5290: $0a
    ld a, [bc]                                    ; $5291: $0a
    ld a, [bc]                                    ; $5292: $0a
    ld a, [bc]                                    ; $5293: $0a
    ld a, [bc]                                    ; $5294: $0a
    ld a, [bc]                                    ; $5295: $0a
    add hl, bc                                    ; $5296: $09
    add hl, bc                                    ; $5297: $09
    ld a, [bc]                                    ; $5298: $0a
    ld a, [bc]                                    ; $5299: $0a
    ld a, [bc]                                    ; $529a: $0a
    ld a, [bc]                                    ; $529b: $0a
    ld a, [bc]                                    ; $529c: $0a
    ld a, [bc]                                    ; $529d: $0a
    ld a, [bc]                                    ; $529e: $0a
    ld a, [bc]                                    ; $529f: $0a
    ld a, [bc]                                    ; $52a0: $0a
    ld a, [bc]                                    ; $52a1: $0a
    ld a, [bc]                                    ; $52a2: $0a
    ld a, [bc]                                    ; $52a3: $0a
    dec hl                                        ; $52a4: $2b
    ld a, [hl]                                    ; $52a5: $7e
    ld a, [hl]                                    ; $52a6: $7e
    ld a, [hl]                                    ; $52a7: $7e
    ld a, [hl]                                    ; $52a8: $7e
    ld a, [hl]                                    ; $52a9: $7e
    ld a, [hl]                                    ; $52aa: $7e
    ld a, [hl]                                    ; $52ab: $7e
    ld a, [hl]                                    ; $52ac: $7e
    ld a, [hl]                                    ; $52ad: $7e
    ld a, [hl]                                    ; $52ae: $7e
    ld a, l                                       ; $52af: $7d
    ld a, l                                       ; $52b0: $7d
    ld a, l                                       ; $52b1: $7d
    ld a, l                                       ; $52b2: $7d
    ld a, l                                       ; $52b3: $7d
    ld a, l                                       ; $52b4: $7d
    ld a, l                                       ; $52b5: $7d
    ld a, l                                       ; $52b6: $7d
    ld a, l                                       ; $52b7: $7d
    ld a, l                                       ; $52b8: $7d
    ld a, l                                       ; $52b9: $7d
    ld a, l                                       ; $52ba: $7d
    ld a, l                                       ; $52bb: $7d
    ld a, h                                       ; $52bc: $7c
    ld a, h                                       ; $52bd: $7c
    ld a, h                                       ; $52be: $7c
    ld a, h                                       ; $52bf: $7c
    ld a, h                                       ; $52c0: $7c
    ld a, h                                       ; $52c1: $7c
    ld a, h                                       ; $52c2: $7c
    ld a, h                                       ; $52c3: $7c
    ld a, h                                       ; $52c4: $7c
    ld a, h                                       ; $52c5: $7c
    ld a, h                                       ; $52c6: $7c
    ld a, h                                       ; $52c7: $7c
    ld a, h                                       ; $52c8: $7c
    ld a, h                                       ; $52c9: $7c
    ld a, h                                       ; $52ca: $7c
    ld a, h                                       ; $52cb: $7c
    ld a, h                                       ; $52cc: $7c
    ld a, h                                       ; $52cd: $7c
    ld a, h                                       ; $52ce: $7c
    ld a, h                                       ; $52cf: $7c
    ld a, h                                       ; $52d0: $7c
    ld a, h                                       ; $52d1: $7c
    ld a, h                                       ; $52d2: $7c
    ld a, h                                       ; $52d3: $7c
    ld a, h                                       ; $52d4: $7c
    ld a, h                                       ; $52d5: $7c
    ld a, h                                       ; $52d6: $7c
    dec sp                                        ; $52d7: $3b
    ld d, e                                       ; $52d8: $53
    nop                                           ; $52d9: $00
    nop                                           ; $52da: $00
    nop                                           ; $52db: $00
    nop                                           ; $52dc: $00
    nop                                           ; $52dd: $00
    nop                                           ; $52de: $00
    nop                                           ; $52df: $00
    nop                                           ; $52e0: $00
    nop                                           ; $52e1: $00
    nop                                           ; $52e2: $00
    nop                                           ; $52e3: $00
    nop                                           ; $52e4: $00
    nop                                           ; $52e5: $00
    nop                                           ; $52e6: $00
    nop                                           ; $52e7: $00
    nop                                           ; $52e8: $00
    nop                                           ; $52e9: $00
    nop                                           ; $52ea: $00
    nop                                           ; $52eb: $00
    nop                                           ; $52ec: $00
    nop                                           ; $52ed: $00
    nop                                           ; $52ee: $00
    nop                                           ; $52ef: $00
    nop                                           ; $52f0: $00
    nop                                           ; $52f1: $00
    nop                                           ; $52f2: $00
    nop                                           ; $52f3: $00
    nop                                           ; $52f4: $00
    nop                                           ; $52f5: $00
    nop                                           ; $52f6: $00
    nop                                           ; $52f7: $00
    nop                                           ; $52f8: $00
    nop                                           ; $52f9: $00
    nop                                           ; $52fa: $00
    nop                                           ; $52fb: $00
    nop                                           ; $52fc: $00
    nop                                           ; $52fd: $00
    nop                                           ; $52fe: $00
    nop                                           ; $52ff: $00
    nop                                           ; $5300: $00
    nop                                           ; $5301: $00
    nop                                           ; $5302: $00
    nop                                           ; $5303: $00
    nop                                           ; $5304: $00
    inc a                                         ; $5305: $3c
    ld d, e                                       ; $5306: $53

    db $45, $53

    ld c, [hl]                                    ; $5309: $4e
    ld d, e                                       ; $530a: $53
    ld d, a                                       ; $530b: $57
    ld d, e                                       ; $530c: $53
    ld h, b                                       ; $530d: $60
    ld d, e                                       ; $530e: $53
    ld l, c                                       ; $530f: $69
    ld d, e                                       ; $5310: $53

    db $72, $53

    ld a, e                                       ; $5313: $7b
    ld d, e                                       ; $5314: $53

    db $84, $53

    adc l                                         ; $5317: $8d
    ld d, e                                       ; $5318: $53
    sub [hl]                                      ; $5319: $96
    ld d, e                                       ; $531a: $53
    sbc a                                         ; $531b: $9f
    ld d, e                                       ; $531c: $53

    db $a8, $53, $b1, $53

    cp d                                          ; $5321: $ba
    ld d, e                                       ; $5322: $53

    db $c3, $53, $cc, $53

    push de                                       ; $5327: $d5
    ld d, e                                       ; $5328: $53

    db $de, $53

    rst $20                                       ; $532b: $e7
    ld d, e                                       ; $532c: $53
    nop                                           ; $532d: $00
    nop                                           ; $532e: $00
    nop                                           ; $532f: $00
    nop                                           ; $5330: $00
    nop                                           ; $5331: $00
    nop                                           ; $5332: $00
    nop                                           ; $5333: $00
    nop                                           ; $5334: $00
    nop                                           ; $5335: $00
    nop                                           ; $5336: $00
    nop                                           ; $5337: $00
    nop                                           ; $5338: $00
    nop                                           ; $5339: $00
    nop                                           ; $533a: $00
    nop                                           ; $533b: $00
    rrca                                          ; $533c: $0f
    ldh a, [rHDMA3]                               ; $533d: $f0 $53
    ld a, e                                       ; $533f: $7b
    ld d, h                                       ; $5340: $54
    rrca                                          ; $5341: $0f
    ld d, l                                       ; $5342: $55
    sub a                                         ; $5343: $97
    ld d, l                                       ; $5344: $55

    db $0f, $e8, $55, $0b, $56, $2e, $56, $50, $56

    rrca                                          ; $534e: $0f
    ld h, c                                       ; $534f: $61
    ld d, [hl]                                    ; $5350: $56
    ld a, l                                       ; $5351: $7d
    ld d, [hl]                                    ; $5352: $56
    sbc b                                         ; $5353: $98
    ld d, [hl]                                    ; $5354: $56
    or d                                          ; $5355: $b2
    ld d, [hl]                                    ; $5356: $56
    rrca                                          ; $5357: $0f
    or a                                          ; $5358: $b7
    ld d, [hl]                                    ; $5359: $56
    pop hl                                        ; $535a: $e1
    ld d, [hl]                                    ; $535b: $56
    inc c                                         ; $535c: $0c
    ld d, a                                       ; $535d: $57
    ld b, c                                       ; $535e: $41
    ld d, a                                       ; $535f: $57
    rrca                                          ; $5360: $0f
    ld d, a                                       ; $5361: $57
    ld d, a                                       ; $5362: $57
    add [hl]                                      ; $5363: $86
    ld d, a                                       ; $5364: $57
    or h                                          ; $5365: $b4
    ld d, a                                       ; $5366: $57
    db $ed                                        ; $5367: $ed
    ld d, a                                       ; $5368: $57
    rrca                                          ; $5369: $0f
    ld hl, $b358                                  ; $536a: $21 $58 $b3
    ld e, b                                       ; $536d: $58
    ld c, h                                       ; $536e: $4c
    ld e, c                                       ; $536f: $59
    and h                                         ; $5370: $a4
    ld e, c                                       ; $5371: $59

    db $0f, $e2, $59, $38, $5a, $90, $5a, $db, $5a

    rrca                                          ; $537b: $0f
    inc b                                         ; $537c: $04
    ld e, e                                       ; $537d: $5b
    jr c, jr_07c_53db                             ; $537e: $38 $5b

    ld d, a                                       ; $5380: $57
    ld e, e                                       ; $5381: $5b
    ld [hl], a                                    ; $5382: $77
    ld e, e                                       ; $5383: $5b

    db $0f, $80, $5b, $e6, $5b, $1c, $5c, $76, $5c

    rrca                                          ; $538d: $0f
    xor b                                         ; $538e: $a8
    ld e, h                                       ; $538f: $5c
    and $5c                                       ; $5390: $e6 $5c
    ld e, b                                       ; $5392: $58
    ld e, l                                       ; $5393: $5d
    and b                                         ; $5394: $a0
    ld e, l                                       ; $5395: $5d
    rrca                                          ; $5396: $0f
    rst $20                                       ; $5397: $e7
    ld e, l                                       ; $5398: $5d
    ld l, e                                       ; $5399: $6b
    ld e, [hl]                                    ; $539a: $5e
    cp l                                          ; $539b: $bd
    ld e, [hl]                                    ; $539c: $5e
    jr jr_07c_53fe                                ; $539d: $18 $5f

    rrca                                          ; $539f: $0f
    rra                                           ; $53a0: $1f
    ld e, a                                       ; $53a1: $5f
    cp a                                          ; $53a2: $bf
    ld e, a                                       ; $53a3: $5f
    ld c, d                                       ; $53a4: $4a
    ld h, b                                       ; $53a5: $60
    sbc [hl]                                      ; $53a6: $9e
    ld h, b                                       ; $53a7: $60

    db $0f, $c0, $60, $9a, $61, $79, $62, $aa, $62, $0f, $ba, $62, $3e, $63, $e1, $63
    db $68, $64

    rrca                                          ; $53ba: $0f
    cp [hl]                                       ; $53bb: $be
    ld h, h                                       ; $53bc: $64
    adc [hl]                                      ; $53bd: $8e
    ld h, l                                       ; $53be: $65
    ret c                                         ; $53bf: $d8

    ld h, [hl]                                    ; $53c0: $66
    ld h, l                                       ; $53c1: $65
    ld h, a                                       ; $53c2: $67

    db $0f, $d0, $67, $72, $69, $9d, $6a, $a8, $6b, $0f, $b8, $6c, $5e, $6d, $0f, $6e
    db $4c, $6e

    rrca                                          ; $53d5: $0f
    sbc e                                         ; $53d6: $9b
    ld l, [hl]                                    ; $53d7: $6e
    or c                                          ; $53d8: $b1
    ld l, a                                       ; $53d9: $6f
    or d                                          ; $53da: $b2

jr_07c_53db:
    ld [hl], b                                    ; $53db: $70
    ld l, a                                       ; $53dc: $6f
    ld [hl], c                                    ; $53dd: $71

    db $0f, $90, $72, $9a, $73, $ab, $74, $78, $75

    rrca                                          ; $53e7: $0f
    ld l, a                                       ; $53e8: $6f
    halt                                          ; $53e9: $76
    cp d                                          ; $53ea: $ba
    halt                                          ; $53eb: $76
    dec bc                                        ; $53ec: $0b
    ld [hl], a                                    ; $53ed: $77
    ld d, c                                       ; $53ee: $51
    ld [hl], a                                    ; $53ef: $77
    ret nc                                        ; $53f0: $d0

    ld bc, $11dc                                  ; $53f1: $01 $dc $11
    ld [$eb01], a                                 ; $53f4: $ea $01 $eb
    inc e                                         ; $53f7: $1c
    and $b0                                       ; $53f8: $e6 $b0
    add sp, $07                                   ; $53fa: $e8 $07
    db $d3                                        ; $53fc: $d3
    push hl                                       ; $53fd: $e5

jr_07c_53fe:
    add b                                         ; $53fe: $80
    ld d, e                                       ; $53ff: $53
    add e                                         ; $5400: $83
    rst $10                                       ; $5401: $d7
    inc de                                        ; $5402: $13
    ld d, e                                       ; $5403: $53
    inc de                                        ; $5404: $13
    ret c                                         ; $5405: $d8

    add e                                         ; $5406: $83

jr_07c_5407:
    ld [hl], e                                    ; $5407: $73
    and h                                         ; $5408: $a4
    rst $10                                       ; $5409: $d7
    inc sp                                        ; $540a: $33
    ld [hl], e                                    ; $540b: $73
    inc sp                                        ; $540c: $33
    ret c                                         ; $540d: $d8

    and e                                         ; $540e: $a3
    add e                                         ; $540f: $83
    or e                                          ; $5410: $b3
    rst $10                                       ; $5411: $d7
    ld b, e                                       ; $5412: $43
    add h                                         ; $5413: $84
    ld b, e                                       ; $5414: $43
    ret c                                         ; $5415: $d8

    or e                                          ; $5416: $b3

jr_07c_5417:
    and e                                         ; $5417: $a3
    rst $10                                       ; $5418: $d7
    inc de                                        ; $5419: $13
    ld h, e                                       ; $541a: $63
    and e                                         ; $541b: $a3
    ld h, e                                       ; $541c: $63
    inc d                                         ; $541d: $14
    push hl                                       ; $541e: $e5
    ld b, b                                       ; $541f: $40
    scf                                           ; $5420: $37
    scf                                           ; $5421: $37
    scf                                           ; $5422: $37
    adc b                                         ; $5423: $88
    scf                                           ; $5424: $37
    add a                                         ; $5425: $87
    ld h, a                                       ; $5426: $67
    reti                                          ; $5427: $d9


    ld l, b                                       ; $5428: $68
    ld d, a                                       ; $5429: $57
    reti                                          ; $542a: $d9


    ld d, a                                       ; $542b: $57
    rla                                           ; $542c: $17
    reti                                          ; $542d: $d9


    jr jr_07c_5477                                ; $542e: $18 $47

    ld b, a                                       ; $5430: $47
    ld b, a                                       ; $5431: $47
    cp b                                          ; $5432: $b8
    ld b, a                                       ; $5433: $47
    or a                                          ; $5434: $b7
    ld h, a                                       ; $5435: $67
    ld l, b                                       ; $5436: $68
    ld h, a                                       ; $5437: $67
    rst $10                                       ; $5438: $d7
    rla                                           ; $5439: $17
    ret c                                         ; $543a: $d8

    ld h, a                                       ; $543b: $67
    rst $10                                       ; $543c: $d7
    jr jr_07c_5417                                ; $543d: $18 $d8

jr_07c_543f:
    add a                                         ; $543f: $87
    scf                                           ; $5440: $37
    ret c                                         ; $5441: $d8

    rst $00                                       ; $5442: $c7
    rst $10                                       ; $5443: $d7
    jr c, @-$77                                   ; $5444: $38 $87

    ret c                                         ; $5446: $d8

jr_07c_5447:
    rst $00                                       ; $5447: $c7
    rst $10                                       ; $5448: $d7
    sub a                                         ; $5449: $97
    ld c, b                                       ; $544a: $48
    rla                                           ; $544b: $17
    ld b, a                                       ; $544c: $47
    sub a                                         ; $544d: $97
    jr jr_07c_5407                                ; $544e: $18 $b7

    ld h, a                                       ; $5450: $67
    scf                                           ; $5451: $37
    ld l, b                                       ; $5452: $68
    or a                                          ; $5453: $b7
    scf                                           ; $5454: $37
    rst $10                                       ; $5455: $d7
    scf                                           ; $5456: $37
    ret c                                         ; $5457: $d8

    cp b                                          ; $5458: $b8
    ld h, a                                       ; $5459: $67
    scf                                           ; $545a: $37
    ld h, a                                       ; $545b: $67
    cp b                                          ; $545c: $b8
    rst $10                                       ; $545d: $d7
    rla                                           ; $545e: $17
    reti                                          ; $545f: $d9


    rla                                           ; $5460: $17
    reti                                          ; $5461: $d9


    rla                                           ; $5462: $17
    reti                                          ; $5463: $d9


    jr jr_07c_543f                                ; $5464: $18 $d9

    rla                                           ; $5466: $17
    reti                                          ; $5467: $d9


    rla                                           ; $5468: $17
    reti                                          ; $5469: $d9


    rla                                           ; $546a: $17
    reti                                          ; $546b: $d9


    jr jr_07c_5447                                ; $546c: $18 $d9

    rla                                           ; $546e: $17
    dec d                                         ; $546f: $15
    ld bc, $0115                                  ; $5470: $01 $15 $01
    dec d                                         ; $5473: $15
    ld [bc], a                                    ; $5474: $02
    rla                                           ; $5475: $17
    reti                                          ; $5476: $d9


jr_07c_5477:
    rla                                           ; $5477: $17
    rlca                                          ; $5478: $07
    rlca                                          ; $5479: $07
    rst $38                                       ; $547a: $ff
    ret nc                                        ; $547b: $d0

    ld bc, $11dc                                  ; $547c: $01 $dc $11
    ld [$eb01], a                                 ; $547f: $ea $01 $eb
    inc e                                         ; $5482: $1c
    and $90                                       ; $5483: $e6 $90
    add sp, $07                                   ; $5485: $e8 $07
    db $d3                                        ; $5487: $d3
    push hl                                       ; $5488: $e5
    add b                                         ; $5489: $80

jr_07c_548a:
    inc de                                        ; $548a: $13
    ld d, e                                       ; $548b: $53
    add e                                         ; $548c: $83
    rst $10                                       ; $548d: $d7
    inc de                                        ; $548e: $13
    ret c                                         ; $548f: $d8

    add e                                         ; $5490: $83
    ld d, e                                       ; $5491: $53
    inc sp                                        ; $5492: $33
    ld [hl], h                                    ; $5493: $74
    and e                                         ; $5494: $a3
    rst $10                                       ; $5495: $d7
    inc sp                                        ; $5496: $33
    ret c                                         ; $5497: $d8

    and e                                         ; $5498: $a3
    ld [hl], e                                    ; $5499: $73
    ld b, e                                       ; $549a: $43
    add e                                         ; $549b: $83
    or e                                          ; $549c: $b3
    rst $10                                       ; $549d: $d7
    ld b, h                                       ; $549e: $44
    ret c                                         ; $549f: $d8

    or e                                          ; $54a0: $b3
    add e                                         ; $54a1: $83
    ld h, e                                       ; $54a2: $63
    and e                                         ; $54a3: $a3
    rst $10                                       ; $54a4: $d7
    inc de                                        ; $54a5: $13
    ld h, e                                       ; $54a6: $63
    inc de                                        ; $54a7: $13
    ret c                                         ; $54a8: $d8

    and h                                         ; $54a9: $a4
    push hl                                       ; $54aa: $e5
    ld b, b                                       ; $54ab: $40
    add a                                         ; $54ac: $87
    add a                                         ; $54ad: $87
    add a                                         ; $54ae: $87
    rst $10                                       ; $54af: $d7
    jr c, jr_07c_548a                             ; $54b0: $38 $d8

    add a                                         ; $54b2: $87

jr_07c_54b3:
    rst $10                                       ; $54b3: $d7
    scf                                           ; $54b4: $37
    rla                                           ; $54b5: $17
    reti                                          ; $54b6: $d9


    jr jr_07c_54d0                                ; $54b7: $18 $17

    reti                                          ; $54b9: $d9


    rla                                           ; $54ba: $17
    ret c                                         ; $54bb: $d8

    add a                                         ; $54bc: $87
    reti                                          ; $54bd: $d9


    adc b                                         ; $54be: $88
    or a                                          ; $54bf: $b7
    or a                                          ; $54c0: $b7
    or a                                          ; $54c1: $b7
    rst $10                                       ; $54c2: $d7
    ld c, b                                       ; $54c3: $48
    ret c                                         ; $54c4: $d8

jr_07c_54c5:
    or a                                          ; $54c5: $b7
    rst $10                                       ; $54c6: $d7
    ld b, a                                       ; $54c7: $47
    rla                                           ; $54c8: $17
    jr jr_07c_54e2                                ; $54c9: $18 $17

    ld h, a                                       ; $54cb: $67
    rla                                           ; $54cc: $17
    ld l, b                                       ; $54cd: $68
    scf                                           ; $54ce: $37
    ret c                                         ; $54cf: $d8

jr_07c_54d0:
    rst $00                                       ; $54d0: $c7
    add a                                         ; $54d1: $87
    ret z                                         ; $54d2: $c8

    rst $10                                       ; $54d3: $d7
    scf                                           ; $54d4: $37
    ret c                                         ; $54d5: $d8

    add a                                         ; $54d6: $87
    rst $10                                       ; $54d7: $d7
    ld b, a                                       ; $54d8: $47
    jr jr_07c_54b3                                ; $54d9: $18 $d8

    sub a                                         ; $54db: $97
    rst $10                                       ; $54dc: $d7
    rla                                           ; $54dd: $17
    ld b, a                                       ; $54de: $47
    ret c                                         ; $54df: $d8

    sbc b                                         ; $54e0: $98
    rst $10                                       ; $54e1: $d7

jr_07c_54e2:
    ld h, a                                       ; $54e2: $67
    scf                                           ; $54e3: $37
    ret c                                         ; $54e4: $d8

    or a                                          ; $54e5: $b7
    rst $10                                       ; $54e6: $d7
    jr c, jr_07c_5550                             ; $54e7: $38 $67

    or a                                          ; $54e9: $b7
    ld h, a                                       ; $54ea: $67
    jr c, jr_07c_54c5                             ; $54eb: $38 $d8

    or a                                          ; $54ed: $b7
    ld h, a                                       ; $54ee: $67
    or a                                          ; $54ef: $b7
    rst $10                                       ; $54f0: $d7
    jr c, jr_07c_554a                             ; $54f1: $38 $57

    reti                                          ; $54f3: $d9


    ld d, a                                       ; $54f4: $57
    reti                                          ; $54f5: $d9


    ld d, a                                       ; $54f6: $57
    reti                                          ; $54f7: $d9


    ld e, b                                       ; $54f8: $58
    reti                                          ; $54f9: $d9


    ld d, a                                       ; $54fa: $57
    reti                                          ; $54fb: $d9


    ld d, a                                       ; $54fc: $57
    reti                                          ; $54fd: $d9


    ld d, a                                       ; $54fe: $57
    reti                                          ; $54ff: $d9


    ld e, b                                       ; $5500: $58
    reti                                          ; $5501: $d9


    ld d, a                                       ; $5502: $57
    ld d, l                                       ; $5503: $55
    ld bc, $0155                                  ; $5504: $01 $55 $01
    ld d, l                                       ; $5507: $55
    ld [bc], a                                    ; $5508: $02
    ld d, a                                       ; $5509: $57
    reti                                          ; $550a: $d9


    ld d, a                                       ; $550b: $57
    rlca                                          ; $550c: $07
    rlca                                          ; $550d: $07
    rst $38                                       ; $550e: $ff
    ret nc                                        ; $550f: $d0

    ld bc, $00e9                                  ; $5510: $01 $e9 $00
    call c, $e711                                 ; $5513: $dc $11 $e7
    ld bc, $20e6                                  ; $5516: $01 $e6 $20
    add sp, $07                                   ; $5519: $e8 $07
    jp nc, $5757                                  ; $551b: $d2 $57 $57

    ld d, a                                       ; $551e: $57
    rst $10                                       ; $551f: $d7
    ld e, b                                       ; $5520: $58
    ret c                                         ; $5521: $d8

    ld d, a                                       ; $5522: $57
    ld d, a                                       ; $5523: $57
    rst $10                                       ; $5524: $d7
    ld d, a                                       ; $5525: $57
    ret c                                         ; $5526: $d8

    ld e, b                                       ; $5527: $58
    ld d, a                                       ; $5528: $57
    rst $10                                       ; $5529: $d7
    ld d, a                                       ; $552a: $57
    ret c                                         ; $552b: $d8

    ld d, a                                       ; $552c: $57
    ld e, b                                       ; $552d: $58
    ret c                                         ; $552e: $d8

jr_07c_552f:
    add a                                         ; $552f: $87
    reti                                          ; $5530: $d9


    add a                                         ; $5531: $87
    add a                                         ; $5532: $87
    rst $10                                       ; $5533: $d7
    adc b                                         ; $5534: $88
    ret c                                         ; $5535: $d8

    add a                                         ; $5536: $87
    rst $10                                       ; $5537: $d7
    add a                                         ; $5538: $87
    ret c                                         ; $5539: $d8

    add a                                         ; $553a: $87
    reti                                          ; $553b: $d9


    adc b                                         ; $553c: $88
    add a                                         ; $553d: $87
    rst $10                                       ; $553e: $d7
    add a                                         ; $553f: $87
    ret c                                         ; $5540: $d8

    add a                                         ; $5541: $87
    rst $10                                       ; $5542: $d7
    adc b                                         ; $5543: $88
    ld b, a                                       ; $5544: $47
    reti                                          ; $5545: $d9


    ld b, a                                       ; $5546: $47
    ld b, a                                       ; $5547: $47
    ret c                                         ; $5548: $d8

    cp b                                          ; $5549: $b8

jr_07c_554a:
    rst $10                                       ; $554a: $d7
    ld b, a                                       ; $554b: $47
    ret c                                         ; $554c: $d8

    or a                                          ; $554d: $b7
    rst $10                                       ; $554e: $d7
    ld h, a                                       ; $554f: $67

jr_07c_5550:
    reti                                          ; $5550: $d9


    ld l, b                                       ; $5551: $68
    ld h, a                                       ; $5552: $67
    rla                                           ; $5553: $17
    ld h, a                                       ; $5554: $67
    jr jr_07c_552f                                ; $5555: $18 $d8

    add a                                         ; $5557: $87
    add a                                         ; $5558: $87

jr_07c_5559:
    add a                                         ; $5559: $87
    rst $10                                       ; $555a: $d7
    adc b                                         ; $555b: $88
    ret c                                         ; $555c: $d8

    add a                                         ; $555d: $87
    add a                                         ; $555e: $87
    add a                                         ; $555f: $87
    adc b                                         ; $5560: $88

jr_07c_5561:
    add a                                         ; $5561: $87
    rst $10                                       ; $5562: $d7
    add a                                         ; $5563: $87
    ret c                                         ; $5564: $d8

    add a                                         ; $5565: $87
    adc b                                         ; $5566: $88
    or a                                          ; $5567: $b7
    or a                                          ; $5568: $b7
    or a                                          ; $5569: $b7
    rst $10                                       ; $556a: $d7
    cp b                                          ; $556b: $b8
    ret c                                         ; $556c: $d8

    or a                                          ; $556d: $b7
    or a                                          ; $556e: $b7
    or a                                          ; $556f: $b7
    cp b                                          ; $5570: $b8
    or a                                          ; $5571: $b7
    rst $10                                       ; $5572: $d7
    or a                                          ; $5573: $b7
    ret c                                         ; $5574: $d8

    or a                                          ; $5575: $b7
    rst $10                                       ; $5576: $d7
    cp b                                          ; $5577: $b8
    rla                                           ; $5578: $17
    reti                                          ; $5579: $d9


    rla                                           ; $557a: $17
    reti                                          ; $557b: $d9


    rla                                           ; $557c: $17
    reti                                          ; $557d: $d9


    jr jr_07c_5559                                ; $557e: $18 $d9

    rla                                           ; $5580: $17
    reti                                          ; $5581: $d9


    rla                                           ; $5582: $17
    reti                                          ; $5583: $d9


    rla                                           ; $5584: $17

Call_07c_5585:
    reti                                          ; $5585: $d9


    jr jr_07c_5561                                ; $5586: $18 $d9

    rla                                           ; $5588: $17
    dec d                                         ; $5589: $15
    ld bc, $85d8                                  ; $558a: $01 $d8 $85
    ld bc, $0285                                  ; $558d: $01 $85 $02
    rst $10                                       ; $5590: $d7
    rla                                           ; $5591: $17
    reti                                          ; $5592: $d9


    rla                                           ; $5593: $17
    rlca                                          ; $5594: $07
    rlca                                          ; $5595: $07

jr_07c_5596:
    rst $38                                       ; $5596: $ff
    ret nc                                        ; $5597: $d0

    ld bc, $cfd1                                  ; $5598: $01 $d1 $cf

jr_07c_559b:
    rla                                           ; $559b: $17
    ld [$0717], sp                                ; $559c: $08 $17 $07
    rla                                           ; $559f: $17
    ld [$0717], sp                                ; $55a0: $08 $17 $07
    rla                                           ; $55a3: $17
    ld [$57c7], sp                                ; $55a4: $08 $c7 $57
    rla                                           ; $55a7: $17
    jr c, @+$61                                   ; $55a8: $38 $5f

    rla                                           ; $55aa: $17
    ld e, b                                       ; $55ab: $58
    rla                                           ; $55ac: $17
    scf                                           ; $55ad: $37
    ld d, a                                       ; $55ae: $57
    ld [$1717], sp                                ; $55af: $08 $17 $17
    rla                                           ; $55b2: $17
    jr c, @+$59                                   ; $55b3: $38 $57

    scf                                           ; $55b5: $37
    rla                                           ; $55b6: $17
    ld e, b                                       ; $55b7: $58
    rla                                           ; $55b8: $17
    scf                                           ; $55b9: $37
    rla                                           ; $55ba: $17
    ld e, b                                       ; $55bb: $58
    ret nc                                        ; $55bc: $d0

    jr jr_07c_5596                                ; $55bd: $18 $d7

    sub b                                         ; $55bf: $90
    ret c                                         ; $55c0: $d8

    ret nc                                        ; $55c1: $d0

    ld bc, $5718                                  ; $55c2: $01 $18 $57
    rla                                           ; $55c5: $17
    ld d, a                                       ; $55c6: $57
    jr @+$59                                      ; $55c7: $18 $57

    rla                                           ; $55c9: $17
    ld d, a                                       ; $55ca: $57
    jr @+$59                                      ; $55cb: $18 $57

    rla                                           ; $55cd: $17
    ld d, a                                       ; $55ce: $57
    jr @+$59                                      ; $55cf: $18 $57

    rla                                           ; $55d1: $17
    ld d, a                                       ; $55d2: $57
    jr @+$59                                      ; $55d3: $18 $57

    scf                                           ; $55d5: $37
    scf                                           ; $55d6: $37
    jr c, @-$2e                                   ; $55d7: $38 $d0

    jr jr_07c_559b                                ; $55d9: $18 $c0

    ret nc                                        ; $55db: $d0

    ld bc, $0f18                                  ; $55dc: $01 $18 $0f
    rla                                           ; $55df: $17
    ld [$3707], sp                                ; $55e0: $08 $07 $37
    scf                                           ; $55e3: $37
    jr c, @+$41                                   ; $55e4: $38 $3f

    rlca                                          ; $55e6: $07
    rst $38                                       ; $55e7: $ff

    db $d0, $09, $dc, $11, $ea, $01, $eb, $28, $e5, $80, $e6, $b0, $e8, $07, $d3, $50
    db $90, $c0, $d7, $50, $90, $c0, $d8, $70, $a0, $d7, $30, $70, $a0, $d7, $30, $e8
    db $08, $5b, $ff, $d0, $09, $dc, $11, $ea, $01, $eb, $28, $e5, $80, $e6, $90, $e8
    db $07, $d2, $c0, $d7, $50, $90, $c0, $d7, $50, $90, $d8, $30, $70, $a0, $d7, $30
    db $70, $a0, $e8, $08, $9b, $ff, $d0, $09, $e9, $00, $dc, $11, $e7, $08, $e6, $20
    db $e8, $07, $d2, $51, $50, $d8, $50, $d7, $50, $d8, $50, $d7, $31, $30, $d8, $a0
    db $d7, $30, $d8, $a0, $e8, $08, $5b, $ff, $d0, $09, $d1, $30, $20, $10, $30, $20
    db $30, $30, $10, $10, $30, $10, $10, $cb, $ff

    ret nc                                        ; $5661: $d0

    ld a, [bc]                                    ; $5662: $0a
    call c, $ea11                                 ; $5663: $dc $11 $ea
    ld bc, $19eb                                  ; $5666: $01 $eb $19
    push hl                                       ; $5669: $e5
    ld b, b                                       ; $566a: $40
    and $c0                                       ; $566b: $e6 $c0
    add sp, $06                                   ; $566d: $e8 $06
    xor $22                                       ; $566f: $ee $22
    call nc, $d850                                ; $5671: $d4 $50 $d8
    ret nz                                        ; $5674: $c0

    rst $10                                       ; $5675: $d7
    ld d, b                                       ; $5676: $50
    ld [hl], b                                    ; $5677: $70
    sub b                                         ; $5678: $90
    and b                                         ; $5679: $a0
    sbc b                                         ; $567a: $98
    ld [bc], a                                    ; $567b: $02
    rst $38                                       ; $567c: $ff
    ret nc                                        ; $567d: $d0

    ld a, [bc]                                    ; $567e: $0a
    call c, $ea11                                 ; $567f: $dc $11 $ea
    ld bc, $19eb                                  ; $5682: $01 $eb $19
    push hl                                       ; $5685: $e5
    ld b, b                                       ; $5686: $40
    and $b0                                       ; $5687: $e6 $b0
    add sp, $06                                   ; $5689: $e8 $06
    xor $22                                       ; $568b: $ee $22
    db $d3                                        ; $568d: $d3
    ret nz                                        ; $568e: $c0

    sub b                                         ; $568f: $90
    ret nz                                        ; $5690: $c0

    rst $10                                       ; $5691: $d7
    jr nc, @+$52                                  ; $5692: $30 $50

    ld [hl], b                                    ; $5694: $70
    ld e, b                                       ; $5695: $58
    ld [bc], a                                    ; $5696: $02
    rst $38                                       ; $5697: $ff
    ret nc                                        ; $5698: $d0

    ld a, [bc]                                    ; $5699: $0a
    jp hl                                         ; $569a: $e9


    nop                                           ; $569b: $00
    call c, $e711                                 ; $569c: $dc $11 $e7
    ld bc, $20e6                                  ; $569f: $01 $e6 $20
    add sp, $06                                   ; $56a2: $e8 $06
    jp nc, $d850                                  ; $56a4: $d2 $50 $d8

    ret nz                                        ; $56a7: $c0

    rst $10                                       ; $56a8: $d7
    ld d, b                                       ; $56a9: $50
    ld d, b                                       ; $56aa: $50
    ret c                                         ; $56ab: $d8

    ret nz                                        ; $56ac: $c0

    rst $10                                       ; $56ad: $d7
    ld d, b                                       ; $56ae: $50
    ld e, c                                       ; $56af: $59
    ld bc, $d0ff                                  ; $56b0: $01 $ff $d0
    ld a, [bc]                                    ; $56b3: $0a
    pop de                                        ; $56b4: $d1
    ld c, $ff                                     ; $56b5: $0e $ff
    ret nc                                        ; $56b7: $d0

    dec b                                         ; $56b8: $05
    call c, $e511                                 ; $56b9: $dc $11 $e5
    nop                                           ; $56bc: $00
    and $d0                                       ; $56bd: $e6 $d0
    ld [$eb01], a                                 ; $56bf: $ea $01 $eb
    inc e                                         ; $56c2: $1c
    add sp, $06                                   ; $56c3: $e8 $06
    xor $22                                       ; $56c5: $ee $22
    call nc, $d811                                ; $56c7: $d4 $11 $d8
    add c                                         ; $56ca: $81
    rst $10                                       ; $56cb: $d7
    ld de, $3151                                  ; $56cc: $11 $51 $31
    ld de, $d831                                  ; $56cf: $11 $31 $d8
    or c                                          ; $56d2: $b1
    rst $10                                       ; $56d3: $d7
    ld sp, $8161                                  ; $56d4: $31 $61 $81
    and c                                         ; $56d7: $a1
    adc b                                         ; $56d8: $88
    db $10                                        ; $56d9: $10
    db $10                                        ; $56da: $10

jr_07c_56db:
    db $10                                        ; $56db: $10
    add sp, $08                                   ; $56dc: $e8 $08
    adc e                                         ; $56de: $8b
    inc bc                                        ; $56df: $03
    rst $38                                       ; $56e0: $ff
    ret nc                                        ; $56e1: $d0

    dec b                                         ; $56e2: $05
    call c, $e511                                 ; $56e3: $dc $11 $e5
    nop                                           ; $56e6: $00
    and $90                                       ; $56e7: $e6 $90
    ld [$eb01], a                                 ; $56e9: $ea $01 $eb
    inc e                                         ; $56ec: $1c
    add sp, $06                                   ; $56ed: $e8 $06
    xor $22                                       ; $56ef: $ee $22
    db $d3                                        ; $56f1: $d3
    add c                                         ; $56f2: $81
    ld d, c                                       ; $56f3: $51
    add c                                         ; $56f4: $81
    rst $10                                       ; $56f5: $d7
    ld de, $c1d8                                  ; $56f6: $11 $d8 $c1
    and c                                         ; $56f9: $a1
    or c                                          ; $56fa: $b1
    ld h, c                                       ; $56fb: $61
    or c                                          ; $56fc: $b1
    rst $10                                       ; $56fd: $d7
    ld sp, $6151                                  ; $56fe: $31 $51 $61
    jr jr_07c_56db                                ; $5701: $18 $d8

    add b                                         ; $5703: $80
    add b                                         ; $5704: $80
    add b                                         ; $5705: $80
    add sp, $08                                   ; $5706: $e8 $08
    rst $10                                       ; $5708: $d7
    dec de                                        ; $5709: $1b
    inc bc                                        ; $570a: $03
    rst $38                                       ; $570b: $ff
    ret nc                                        ; $570c: $d0

    ld bc, $00e9                                  ; $570d: $01 $e9 $00
    call c, $e711                                 ; $5710: $dc $11 $e7
    ld bc, $20e6                                  ; $5713: $01 $e6 $20
    add sp, $07                                   ; $5716: $e8 $07
    jp nc, $d91e                                  ; $5718: $d2 $1e $d9

    ld e, $d9                                     ; $571b: $1e $d9
    ld e, $d9                                     ; $571d: $1e $d9
    ld e, $d8                                     ; $571f: $1e $d8
    cp [hl]                                       ; $5721: $be
    reti                                          ; $5722: $d9


    cp [hl]                                       ; $5723: $be
    reti                                          ; $5724: $d9


    cp [hl]                                       ; $5725: $be
    reti                                          ; $5726: $d9


    cp [hl]                                       ; $5727: $be
    rst $10                                       ; $5728: $d7
    ld e, $d9                                     ; $5729: $1e $d9
    ld e, $d9                                     ; $572b: $1e $d9
    ld e, $d8                                     ; $572d: $1e $d8
    add h                                         ; $572f: $84
    add h                                         ; $5730: $84
    add h                                         ; $5731: $84
    add sp, $08                                   ; $5732: $e8 $08
    rst $10                                       ; $5734: $d7
    ld e, $d9                                     ; $5735: $1e $d9
    ld e, $d9                                     ; $5737: $1e $d9
    ld e, $d9                                     ; $5739: $1e $d9
    ld e, $d9                                     ; $573b: $1e $d9
    inc d                                         ; $573d: $14
    inc b                                         ; $573e: $04
    add hl, bc                                    ; $573f: $09
    rst $38                                       ; $5740: $ff
    ret nc                                        ; $5741: $d0

    dec b                                         ; $5742: $05
    pop de                                        ; $5743: $d1
    ld sp, $2121                                  ; $5744: $31 $21 $21
    ld sp, $2030                                  ; $5747: $31 $30 $20
    ld hl, $2131                                  ; $574a: $21 $31 $21
    ld hl, $2131                                  ; $574d: $21 $31 $21
    ld hl, $30c8                                  ; $5750: $21 $c8 $30
    jr nz, jr_07c_5775                            ; $5753: $20 $20

    call $dcff                                    ; $5755: $cd $ff $dc
    ld de, $40e5                                  ; $5758: $11 $e5 $40
    ld [$eb0e], a                                 ; $575b: $ea $0e $eb
    jr nz, @-$2b                                  ; $575e: $20 $d3

    add sp, $07                                   ; $5760: $e8 $07

jr_07c_5762:
    ret nc                                        ; $5762: $d0

    ld bc, $b0e6                                  ; $5763: $01 $e6 $b0
    ld d, a                                       ; $5766: $57
    ld bc, $0395                                  ; $5767: $01 $95 $03
    rst $10                                       ; $576a: $d7
    ld d, l                                       ; $576b: $55
    inc bc                                        ; $576c: $03
    scf                                           ; $576d: $37
    ld bc, $a5d8                                  ; $576e: $01 $d8 $a5
    inc bc                                        ; $5771: $03
    rst $10                                       ; $5772: $d7
    and l                                         ; $5773: $a5
    inc bc                                        ; $5774: $03

jr_07c_5775:
    ret nc                                        ; $5775: $d0

    ld a, [bc]                                    ; $5776: $0a
    sub l                                         ; $5777: $95
    and $80                                       ; $5778: $e6 $80
    push hl                                       ; $577a: $e5
    add b                                         ; $577b: $80
    add sp, $08                                   ; $577c: $e8 $08
    db $dd                                        ; $577e: $dd
    db $d3                                        ; $577f: $d3
    sbc e                                         ; $5780: $9b
    xor e                                         ; $5781: $ab
    set 1, e                                      ; $5782: $cb $cb
    sbc $ff                                       ; $5784: $de $ff
    call c, $e511                                 ; $5786: $dc $11 $e5
    ld b, b                                       ; $5789: $40
    ld [$eb0e], a                                 ; $578a: $ea $0e $eb
    jr nz, jr_07c_5762                            ; $578d: $20 $d3

    add sp, $07                                   ; $578f: $e8 $07
    ret nc                                        ; $5791: $d0

    ld bc, $90e6                                  ; $5792: $01 $e6 $90
    sub a                                         ; $5795: $97
    ld bc, $03c5                                  ; $5796: $01 $c5 $03
    push bc                                       ; $5799: $c5
    inc bc                                        ; $579a: $03
    rst $10                                       ; $579b: $d7
    ld [hl], a                                    ; $579c: $77
    ld bc, $0335                                  ; $579d: $01 $35 $03
    ld d, l                                       ; $57a0: $55

jr_07c_57a1:
    inc bc                                        ; $57a1: $03
    ret nc                                        ; $57a2: $d0

    ld a, [bc]                                    ; $57a3: $0a
    ld d, l                                       ; $57a4: $55

jr_07c_57a5:
    and $80                                       ; $57a5: $e6 $80
    push hl                                       ; $57a7: $e5
    add b                                         ; $57a8: $80
    add sp, $08                                   ; $57a9: $e8 $08
    db $dd                                        ; $57ab: $dd
    jp nc, $d7cb                                  ; $57ac: $d2 $cb $d7

    dec sp                                        ; $57af: $3b
    sbc e                                         ; $57b0: $9b
    adc e                                         ; $57b1: $8b
    sbc $ff                                       ; $57b2: $de $ff
    ret nc                                        ; $57b4: $d0

    ld bc, $11dc                                  ; $57b5: $01 $dc $11
    rst $20                                       ; $57b8: $e7
    jr nz, jr_07c_57a1                            ; $57b9: $20 $e6

    jr nz, jr_07c_57a5                            ; $57bb: $20 $e8

    rlca                                          ; $57bd: $07
    pop de                                        ; $57be: $d1
    ld e, c                                       ; $57bf: $59
    rst $10                                       ; $57c0: $d7
    ld e, c                                       ; $57c1: $59
    ret c                                         ; $57c2: $d8

    ld e, c                                       ; $57c3: $59
    rst $10                                       ; $57c4: $d7
    add hl, sp                                    ; $57c5: $39
    ret c                                         ; $57c6: $d8

    xor c                                         ; $57c7: $a9
    rst $10                                       ; $57c8: $d7
    add hl, sp                                    ; $57c9: $39
    ld e, [hl]                                    ; $57ca: $5e
    reti                                          ; $57cb: $d9


    ld e, [hl]                                    ; $57cc: $5e
    ret c                                         ; $57cd: $d8

    ld e, c                                       ; $57ce: $59
    rst $10                                       ; $57cf: $d7
    ld e, c                                       ; $57d0: $59
    ret c                                         ; $57d1: $d8

    ld e, c                                       ; $57d2: $59
    db $dd                                        ; $57d3: $dd
    pop de                                        ; $57d4: $d1
    add hl, sp                                    ; $57d5: $39
    ld e, c                                       ; $57d6: $59
    ld d, d                                       ; $57d7: $52
    ld b, $59                                     ; $57d8: $06 $59
    reti                                          ; $57da: $d9


    ld e, c                                       ; $57db: $59
    dec [hl]                                      ; $57dc: $35
    inc bc                                        ; $57dd: $03
    rst $10                                       ; $57de: $d7
    add hl, sp                                    ; $57df: $39
    ret c                                         ; $57e0: $d8

    ld e, c                                       ; $57e1: $59
    rst $10                                       ; $57e2: $d7
    add hl, sp                                    ; $57e3: $39
    ret c                                         ; $57e4: $d8

    ld d, d                                       ; $57e5: $52
    ld b, $d7                                     ; $57e6: $06 $d7
    ld e, c                                       ; $57e8: $59
    ret c                                         ; $57e9: $d8

    ld e, c                                       ; $57ea: $59
    sbc $ff                                       ; $57eb: $de $ff
    ret nc                                        ; $57ed: $d0

    dec b                                         ; $57ee: $05
    pop de                                        ; $57ef: $d1
    dec d                                         ; $57f0: $15
    dec d                                         ; $57f1: $15
    dec d                                         ; $57f2: $15
    ld sp, $3131                                  ; $57f3: $31 $31 $31
    db $dd                                        ; $57f6: $dd
    rst $10                                       ; $57f7: $d7
    sub e                                         ; $57f8: $93
    ret c                                         ; $57f9: $d8

    ld sp, $5111                                  ; $57fa: $31 $11 $51
    ld de, $3151                                  ; $57fd: $11 $51 $31
    ld sp, $1101                                  ; $5800: $31 $01 $11
    ld sp, $02df                                  ; $5803: $31 $df $02
    ld de, $3151                                  ; $5806: $11 $51 $31
    ld de, $1151                                  ; $5809: $11 $51 $11
    ld d, c                                       ; $580c: $51
    ld sp, $5131                                  ; $580d: $31 $31 $51
    ld de, $e031                                  ; $5810: $11 $31 $e0
    ld de, $3151                                  ; $5813: $11 $51 $31
    ld de, $1151                                  ; $5816: $11 $51 $11
    ld d, c                                       ; $5819: $51
    ld sp, $3131                                  ; $581a: $31 $31 $31
    ld sp, $de31                                  ; $581d: $31 $31 $de
    rst $38                                       ; $5820: $ff
    ret nc                                        ; $5821: $d0

    inc bc                                        ; $5822: $03
    call c, $e511                                 ; $5823: $dc $11 $e5
    ld b, b                                       ; $5826: $40
    and $b0                                       ; $5827: $e6 $b0
    add sp, $07                                   ; $5829: $e8 $07
    ld [$eb0e], a                                 ; $582b: $ea $0e $eb
    ld [hl+], a                                   ; $582e: $22
    call nc, Call_07c_5585                        ; $582f: $d4 $85 $55
    add l                                         ; $5832: $85
    and l                                         ; $5833: $a5
    ld [hl], l                                    ; $5834: $75
    and l                                         ; $5835: $a5
    call nc, Call_000_00a1                        ; $5836: $d4 $a1 $00
    ld h, c                                       ; $5839: $61
    nop                                           ; $583a: $00
    ld de, $6100                                  ; $583b: $11 $00 $61
    nop                                           ; $583e: $00
    ld de, $a100                                  ; $583f: $11 $00 $a1
    nop                                           ; $5842: $00
    pop bc                                        ; $5843: $c1
    nop                                           ; $5844: $00
    add c                                         ; $5845: $81
    nop                                           ; $5846: $00
    ld sp, $c100                                  ; $5847: $31 $00 $c1
    nop                                           ; $584a: $00
    ret c                                         ; $584b: $d8

    pop bc                                        ; $584c: $c1
    nop                                           ; $584d: $00
    rst $10                                       ; $584e: $d7
    pop bc                                        ; $584f: $c1
    nop                                           ; $5850: $00
    and $90                                       ; $5851: $e6 $90
    rst $10                                       ; $5853: $d7
    dec hl                                        ; $5854: $2b
    reti                                          ; $5855: $d9


    dec hl                                        ; $5856: $2b
    reti                                          ; $5857: $d9


    dec hl                                        ; $5858: $2b
    and $b0                                       ; $5859: $e6 $b0
    db $dd                                        ; $585b: $dd
    call nc, $0011                                ; $585c: $d4 $11 $00
    ld de, $1100                                  ; $585f: $11 $00 $11
    nop                                           ; $5862: $00
    ld d, c                                       ; $5863: $51
    nop                                           ; $5864: $00
    ld de, $8600                                  ; $5865: $11 $00 $86
    reti                                          ; $5868: $d9


    adc d                                         ; $5869: $8a
    ld [bc], a                                    ; $586a: $02
    ld sp, $3100                                  ; $586b: $31 $00 $31
    nop                                           ; $586e: $00
    ld sp, $6100                                  ; $586f: $31 $00 $61
    nop                                           ; $5872: $00
    ld sp, $b600                                  ; $5873: $31 $00 $b6
    reti                                          ; $5876: $d9


    cp d                                          ; $5877: $ba
    ld [bc], a                                    ; $5878: $02
    add c                                         ; $5879: $81
    nop                                           ; $587a: $00
    ld d, c                                       ; $587b: $51
    nop                                           ; $587c: $00
    ld de, $5100                                  ; $587d: $11 $00 $51
    nop                                           ; $5880: $00
    ld de, $d800                                  ; $5881: $11 $00 $d8
    add c                                         ; $5884: $81
    nop                                           ; $5885: $00
    ld d, c                                       ; $5886: $51
    nop                                           ; $5887: $00
    add c                                         ; $5888: $81
    nop                                           ; $5889: $00
    rst $10                                       ; $588a: $d7
    ld de, $d800                                  ; $588b: $11 $00 $d8
    add c                                         ; $588e: $81
    nop                                           ; $588f: $00
    rst $10                                       ; $5890: $d7
    ld de, $5100                                  ; $5891: $11 $00 $51
    nop                                           ; $5894: $00
    ld h, c                                       ; $5895: $61
    nop                                           ; $5896: $00
    ld sp, $d800                                  ; $5897: $31 $00 $d8
    or c                                          ; $589a: $b1
    nop                                           ; $589b: $00
    rst $10                                       ; $589c: $d7
    ld sp, $d800                                  ; $589d: $31 $00 $d8
    or c                                          ; $58a0: $b1
    nop                                           ; $58a1: $00
    ld h, c                                       ; $58a2: $61
    nop                                           ; $58a3: $00
    or c                                          ; $58a4: $b1
    nop                                           ; $58a5: $00
    rst $10                                       ; $58a6: $d7
    ld sp, $6100                                  ; $58a7: $31 $00 $61
    nop                                           ; $58aa: $00
    or c                                          ; $58ab: $b1
    nop                                           ; $58ac: $00
    ld h, c                                       ; $58ad: $61
    nop                                           ; $58ae: $00
    ld sp, $de00                                  ; $58af: $31 $00 $de
    rst $38                                       ; $58b2: $ff
    ret nc                                        ; $58b3: $d0

    inc bc                                        ; $58b4: $03
    call c, $e511                                 ; $58b5: $dc $11 $e5
    ld b, b                                       ; $58b8: $40
    and $90                                       ; $58b9: $e6 $90
    add sp, $07                                   ; $58bb: $e8 $07
    ld [$eb0e], a                                 ; $58bd: $ea $0e $eb
    ld [hl+], a                                   ; $58c0: $22
    call nc, Call_000_1555                        ; $58c1: $d4 $55 $15
    ld d, l                                       ; $58c4: $55
    ld [hl], l                                    ; $58c5: $75
    dec [hl]                                      ; $58c6: $35
    ld [hl], l                                    ; $58c7: $75
    call nc, Call_000_0061                        ; $58c8: $d4 $61 $00
    ld de, $d800                                  ; $58cb: $11 $00 $d8
    and c                                         ; $58ce: $a1
    nop                                           ; $58cf: $00
    rst $10                                       ; $58d0: $d7
    and c                                         ; $58d1: $a1
    nop                                           ; $58d2: $00
    ld h, c                                       ; $58d3: $61
    nop                                           ; $58d4: $00
    rst $10                                       ; $58d5: $d7
    ld de, $00d8                                  ; $58d6: $11 $d8 $00
    add c                                         ; $58d9: $81
    nop                                           ; $58da: $00
    ld sp, $d800                                  ; $58db: $31 $00 $d8
    pop bc                                        ; $58de: $c1
    nop                                           ; $58df: $00
    rst $10                                       ; $58e0: $d7
    ld sp, $8100                                  ; $58e1: $31 $00 $81
    nop                                           ; $58e4: $00
    rst $10                                       ; $58e5: $d7
    ld sp, $e600                                  ; $58e6: $31 $00 $e6
    ld [hl], b                                    ; $58e9: $70
    ret c                                         ; $58ea: $d8

    ld e, e                                       ; $58eb: $5b
    reti                                          ; $58ec: $d9


    ld e, e                                       ; $58ed: $5b
    reti                                          ; $58ee: $d9


    ld e, e                                       ; $58ef: $5b
    and $90                                       ; $58f0: $e6 $90
    db $dd                                        ; $58f2: $dd
    db $d3                                        ; $58f3: $d3
    ld d, c                                       ; $58f4: $51
    nop                                           ; $58f5: $00
    ld d, c                                       ; $58f6: $51
    nop                                           ; $58f7: $00
    ld d, c                                       ; $58f8: $51
    nop                                           ; $58f9: $00
    add c                                         ; $58fa: $81
    nop                                           ; $58fb: $00
    ld d, c                                       ; $58fc: $51
    nop                                           ; $58fd: $00
    rst $10                                       ; $58fe: $d7
    ld d, $d9                                     ; $58ff: $16 $d9
    ld a, [de]                                    ; $5901: $1a
    ld [bc], a                                    ; $5902: $02
    ret c                                         ; $5903: $d8

    ld h, c                                       ; $5904: $61
    nop                                           ; $5905: $00
    ld h, c                                       ; $5906: $61
    nop                                           ; $5907: $00
    ld h, c                                       ; $5908: $61
    nop                                           ; $5909: $00
    or c                                          ; $590a: $b1
    nop                                           ; $590b: $00
    ld h, c                                       ; $590c: $61
    nop                                           ; $590d: $00
    rst $10                                       ; $590e: $d7
    ld [hl], $d9                                  ; $590f: $36 $d9
    ld a, [hl-]                                   ; $5911: $3a
    ld [bc], a                                    ; $5912: $02
    ld d, c                                       ; $5913: $51
    nop                                           ; $5914: $00
    ld de, $d800                                  ; $5915: $11 $00 $d8
    add c                                         ; $5918: $81
    nop                                           ; $5919: $00
    rst $10                                       ; $591a: $d7
    ld de, $d800                                  ; $591b: $11 $00 $d8
    add c                                         ; $591e: $81
    nop                                           ; $591f: $00
    ld d, c                                       ; $5920: $51
    nop                                           ; $5921: $00
    ld de, $5100                                  ; $5922: $11 $00 $51
    nop                                           ; $5925: $00
    add c                                         ; $5926: $81
    nop                                           ; $5927: $00
    ld d, c                                       ; $5928: $51
    nop                                           ; $5929: $00
    add c                                         ; $592a: $81
    nop                                           ; $592b: $00
    rst $10                                       ; $592c: $d7
    ld de, $3100                                  ; $592d: $11 $00 $31
    nop                                           ; $5930: $00
    ret c                                         ; $5931: $d8

    or c                                          ; $5932: $b1
    nop                                           ; $5933: $00
    ld h, c                                       ; $5934: $61
    nop                                           ; $5935: $00
    or c                                          ; $5936: $b1
    nop                                           ; $5937: $00
    ld h, c                                       ; $5938: $61

jr_07c_5939:
    nop                                           ; $5939: $00
    ld sp, $6100                                  ; $593a: $31 $00 $61

jr_07c_593d:
    nop                                           ; $593d: $00
    or c                                          ; $593e: $b1
    nop                                           ; $593f: $00
    rst $10                                       ; $5940: $d7

jr_07c_5941:
    ld sp, $6100                                  ; $5941: $31 $00 $61
    nop                                           ; $5944: $00

jr_07c_5945:
    ld sp, $d800                                  ; $5945: $31 $00 $d8
    or c                                          ; $5948: $b1
    nop                                           ; $5949: $00
    sbc $ff                                       ; $594a: $de $ff
    ret nc                                        ; $594c: $d0

    add hl, bc                                    ; $594d: $09
    call c, $e711                                 ; $594e: $dc $11 $e7
    jr nz, jr_07c_5939                            ; $5951: $20 $e6

    jr nz, jr_07c_593d                            ; $5953: $20 $e8

    rlca                                          ; $5955: $07
    jp nc, $d810                                  ; $5956: $d2 $10 $d8

    add b                                         ; $5959: $80
    rst $10                                       ; $595a: $d7
    db $10                                        ; $595b: $10
    ret c                                         ; $595c: $d8

    add b                                         ; $595d: $80
    rst $10                                       ; $595e: $d7
    db $10                                        ; $595f: $10
    ret c                                         ; $5960: $d8

    add b                                         ; $5961: $80
    rst $10                                       ; $5962: $d7
    jr nc, jr_07c_593d                            ; $5963: $30 $d8

    and b                                         ; $5965: $a0
    rst $10                                       ; $5966: $d7
    jr nc, jr_07c_5941                            ; $5967: $30 $d8

    and b                                         ; $5969: $a0
    rst $10                                       ; $596a: $d7
    jr nc, jr_07c_5945                            ; $596b: $30 $d8

    and b                                         ; $596d: $a0
    pop de                                        ; $596e: $d1
    ld h, b                                       ; $596f: $60
    rst $10                                       ; $5970: $d7
    ld h, b                                       ; $5971: $60
    ret c                                         ; $5972: $d8

    ld h, b                                       ; $5973: $60
    rst $10                                       ; $5974: $d7
    ld h, b                                       ; $5975: $60
    ret c                                         ; $5976: $d8

    ld h, b                                       ; $5977: $60
    rst $10                                       ; $5978: $d7
    ld h, b                                       ; $5979: $60
    ret c                                         ; $597a: $d8

    add b                                         ; $597b: $80
    rst $10                                       ; $597c: $d7
    add b                                         ; $597d: $80
    ret c                                         ; $597e: $d8

    add b                                         ; $597f: $80
    rst $10                                       ; $5980: $d7
    add b                                         ; $5981: $80
    ret c                                         ; $5982: $d8

    add b                                         ; $5983: $80
    rst $10                                       ; $5984: $d7

jr_07c_5985:
    add b                                         ; $5985: $80
    ret c                                         ; $5986: $d8

    and l                                         ; $5987: $a5
    and b                                         ; $5988: $a0
    ld d, b                                       ; $5989: $50
    ld d, b                                       ; $598a: $50
    and b                                         ; $598b: $a0
    ld d, b                                       ; $598c: $50
    and b                                         ; $598d: $a0
    db $dd                                        ; $598e: $dd
    rst $18                                       ; $598f: $df
    ld [bc], a                                    ; $5990: $02
    rst $10                                       ; $5991: $d7
    ld [de], a                                    ; $5992: $12
    ret c                                         ; $5993: $d8

    add d                                         ; $5994: $82
    rst $10                                       ; $5995: $d7
    ld [de], a                                    ; $5996: $12
    ret c                                         ; $5997: $d8

    add d                                         ; $5998: $82
    or d                                          ; $5999: $b2
    ld h, d                                       ; $599a: $62
    or b                                          ; $599b: $b0
    or b                                          ; $599c: $b0
    or b                                          ; $599d: $b0
    ld h, b                                       ; $599e: $60
    or b                                          ; $599f: $b0
    ld h, b                                       ; $59a0: $60
    ldh [$de], a                                  ; $59a1: $e0 $de
    rst $38                                       ; $59a3: $ff
    ret nc                                        ; $59a4: $d0

    add hl, bc                                    ; $59a5: $09
    pop de                                        ; $59a6: $d1
    db $10                                        ; $59a7: $10
    ld d, b                                       ; $59a8: $50
    db $10                                        ; $59a9: $10
    jr nc, @+$62                                  ; $59aa: $30 $60

    add b                                         ; $59ac: $80
    db $10                                        ; $59ad: $10
    db $10                                        ; $59ae: $10
    db $10                                        ; $59af: $10
    jr nc, jr_07c_59c2                            ; $59b0: $30 $10

    ld d, b                                       ; $59b2: $50
    db $10                                        ; $59b3: $10
    ld d, b                                       ; $59b4: $50
    db $10                                        ; $59b5: $10
    jr nc, @+$62                                  ; $59b6: $30 $60

    add b                                         ; $59b8: $80
    db $10                                        ; $59b9: $10
    db $10                                        ; $59ba: $10
    db $10                                        ; $59bb: $10
    jr nc, @+$32                                  ; $59bc: $30 $30

    jr nc, jr_07c_5985                            ; $59be: $30 $c5

    jr nc, jr_07c_59d2                            ; $59c0: $30 $10

jr_07c_59c2:
    db $10                                        ; $59c2: $10
    jr nc, @+$12                                  ; $59c3: $30 $10

    db $10                                        ; $59c5: $10
    db $dd                                        ; $59c6: $dd
    rst $18                                       ; $59c7: $df
    inc bc                                        ; $59c8: $03
    db $10                                        ; $59c9: $10
    db $10                                        ; $59ca: $10
    db $10                                        ; $59cb: $10
    jr nc, jr_07c_5a2e                            ; $59cc: $30 $60

    add b                                         ; $59ce: $80
    ld de, $3010                                  ; $59cf: $11 $10 $30

jr_07c_59d2:
    ld d, b                                       ; $59d2: $50
    db $10                                        ; $59d3: $10
    ldh [rNR10], a                                ; $59d4: $e0 $10
    db $10                                        ; $59d6: $10
    db $10                                        ; $59d7: $10
    jr nc, @+$62                                  ; $59d8: $30 $60

    add b                                         ; $59da: $80
    ld de, $3010                                  ; $59db: $11 $10 $30
    jr nc, @+$32                                  ; $59de: $30 $30

    sbc $ff                                       ; $59e0: $de $ff

    db $d0, $01, $dc, $11, $e5, $00, $e6, $a0, $e8, $07, $ea, $01, $eb, $1c, $d4, $8e
    db $44, $44, $44, $8e, $be, $8e, $4e, $6e, $d9, $6e, $d9, $6e, $d9, $6e, $d9, $6e
    db $d9, $6e, $e5, $40, $dd, $e8, $06, $df, $02, $df, $02, $e6, $80, $36, $e6, $60
    db $47, $e6, $80, $86, $e6, $60, $37, $e6, $80, $46, $e6, $60, $87, $e0, $df, $02
    db $e6, $80, $16, $e6

    ld h, b                                       ; $5a26: $60
    daa                                           ; $5a27: $27
    and $80                                       ; $5a28: $e6 $80
    ld h, [hl]                                    ; $5a2a: $66
    and $60                                       ; $5a2b: $e6 $60
    rla                                           ; $5a2d: $17

jr_07c_5a2e:
    and $80                                       ; $5a2e: $e6 $80
    ld h, $e6                                     ; $5a30: $26 $e6
    ld h, b                                       ; $5a32: $60
    ld h, a                                       ; $5a33: $67
    ldh [$e0], a                                  ; $5a34: $e0 $e0
    sbc $ff                                       ; $5a36: $de $ff

    db $d0, $01, $dc, $11, $e5, $00, $e6, $80, $e8, $07, $ea, $01, $eb, $1c, $d3, $be
    db $84, $84, $84, $be, $d7, $4e, $d8, $be, $8e, $9e, $d9, $9e, $d9, $9e, $d9, $9e
    db $d9, $9e, $d9, $9e, $e5, $40, $dd, $8e, $d9, $8e, $d9, $8e, $d9, $8e, $d9, $8e
    db $d9, $8e, $d8, $2e, $d7

    ld l, b                                       ; $5a6d: $68
    dec b                                         ; $5a6e: $05
    ret c                                         ; $5a6f: $d8

    jr z, jr_07c_5a77                             ; $5a70: $28 $05

    rst $10                                       ; $5a72: $d7
    ld l, [hl]                                    ; $5a73: $6e
    reti                                          ; $5a74: $d9


    ld l, [hl]                                    ; $5a75: $6e
    reti                                          ; $5a76: $d9


jr_07c_5a77:
    ld l, [hl]                                    ; $5a77: $6e
    adc [hl]                                      ; $5a78: $8e
    reti                                          ; $5a79: $d9


    adc [hl]                                      ; $5a7a: $8e
    reti                                          ; $5a7b: $d9


    adc [hl]                                      ; $5a7c: $8e
    reti                                          ; $5a7d: $d9


    adc [hl]                                      ; $5a7e: $8e
    reti                                          ; $5a7f: $d9


    adc [hl]                                      ; $5a80: $8e
    reti                                          ; $5a81: $d9


    adc [hl]                                      ; $5a82: $8e
    ld l, [hl]                                    ; $5a83: $6e
    reti                                          ; $5a84: $d9


    ld l, [hl]                                    ; $5a85: $6e
    reti                                          ; $5a86: $d9


    ld l, [hl]                                    ; $5a87: $6e
    reti                                          ; $5a88: $d9


    ld l, [hl]                                    ; $5a89: $6e
    reti                                          ; $5a8a: $d9


    ld l, [hl]                                    ; $5a8b: $6e
    reti                                          ; $5a8c: $d9


    ld l, [hl]                                    ; $5a8d: $6e
    sbc $ff                                       ; $5a8e: $de $ff

    db $d0, $01, $dc, $11, $e7, $08, $e6, $20, $e8, $07, $d2, $4e, $d9, $4e, $d9, $4e
    db $d8, $be, $4e, $be, $d7, $2e, $d9, $2e, $d9, $2e, $d8, $9e, $d9, $9e, $d9, $9e
    db $dd, $d2, $4e, $d9, $4e, $d9, $4e, $d8, $be, $d9, $be, $d7, $4e, $2e, $d9

    ld l, $d8                                     ; $5abf: $2e $d8
    sbc [hl]                                      ; $5ac1: $9e
    reti                                          ; $5ac2: $d9


    sbc [hl]                                      ; $5ac3: $9e
    rst $10                                       ; $5ac4: $d7
    ld l, $d9                                     ; $5ac5: $2e $d9
    ld l, $4e                                     ; $5ac7: $2e $4e
    reti                                          ; $5ac9: $d9


    ld c, [hl]                                    ; $5aca: $4e
    reti                                          ; $5acb: $d9


    ld c, [hl]                                    ; $5acc: $4e
    ld c, [hl]                                    ; $5acd: $4e
    ret c                                         ; $5ace: $d8

    cp [hl]                                       ; $5acf: $be
    rst $10                                       ; $5ad0: $d7
    ld c, [hl]                                    ; $5ad1: $4e
    ld l, [hl]                                    ; $5ad2: $6e
    ld l, $1e                                     ; $5ad3: $2e $1e
    ret c                                         ; $5ad5: $d8

    sbc [hl]                                      ; $5ad6: $9e
    ld l, [hl]                                    ; $5ad7: $6e
    sbc [hl]                                      ; $5ad8: $9e
    sbc $ff                                       ; $5ad9: $de $ff

    db $d0, $01, $d1, $1e, $0e, $0e, $0e, $1e, $0e, $1e, $0e, $0e, $1e, $06, $37, $36
    db $37, $dd, $df, $02, $1e, $0e, $1e, $3e, $0e, $0e, $16, $27

    ld h, $17                                     ; $5af7: $26 $17
    ld h, $27                                     ; $5af9: $26 $27
    ld d, $27                                     ; $5afb: $16 $27
    ld h, $17                                     ; $5afd: $26 $17
    ld d, $27                                     ; $5aff: $16 $27

jr_07c_5b01:
    ldh [$de], a                                  ; $5b01: $e0 $de
    rst $38                                       ; $5b03: $ff
    ret nc                                        ; $5b04: $d0

    ld de, $11dc                                  ; $5b05: $11 $dc $11
    push hl                                       ; $5b08: $e5
    ld b, b                                       ; $5b09: $40
    ld [$eb01], a                                 ; $5b0a: $ea $01 $eb
    ld e, $d3                                     ; $5b0d: $1e $d3
    and $b0                                       ; $5b0f: $e6 $b0
    ret nz                                        ; $5b11: $c0

    add b                                         ; $5b12: $80
    ld d, b                                       ; $5b13: $50
    jr nc, jr_07c_5b66                            ; $5b14: $30 $50

    ld [hl], b                                    ; $5b16: $70
    push bc                                       ; $5b17: $c5
    and $95                                       ; $5b18: $e6 $95
    db $dd                                        ; $5b1a: $dd
    ld [c], a                                     ; $5b1b: $e2
    jr nz, @+$5d                                  ; $5b1c: $20 $5b

    sbc $ff                                       ; $5b1e: $de $ff
    db $d3                                        ; $5b20: $d3
    rst $18                                       ; $5b21: $df
    ld [bc], a                                    ; $5b22: $02
    ld d, b                                       ; $5b23: $50
    add b                                         ; $5b24: $80
    ret nz                                        ; $5b25: $c0

    rst $10                                       ; $5b26: $d7
    jr nc, jr_07c_5b01                            ; $5b27: $30 $d8

    ret nz                                        ; $5b29: $c0

    add b                                         ; $5b2a: $80
    ldh [$df], a                                  ; $5b2b: $e0 $df
    ld [bc], a                                    ; $5b2d: $02
    jr nc, @+$62                                  ; $5b2e: $30 $60

    and b                                         ; $5b30: $a0
    rst $10                                       ; $5b31: $d7
    db $10                                        ; $5b32: $10
    ret c                                         ; $5b33: $d8

    and b                                         ; $5b34: $a0
    ld h, b                                       ; $5b35: $60
    ldh [$e3], a                                  ; $5b36: $e0 $e3
    ret nc                                        ; $5b38: $d0

    ld de, $11dc                                  ; $5b39: $11 $dc $11
    push hl                                       ; $5b3c: $e5
    ld b, b                                       ; $5b3d: $40
    ld [$eb01], a                                 ; $5b3e: $ea $01 $eb
    ld e, $e4                                     ; $5b41: $1e $e4
    db $fd                                        ; $5b43: $fd
    db $d3                                        ; $5b44: $d3
    nop                                           ; $5b45: $00
    and $70                                       ; $5b46: $e6 $70
    ret nz                                        ; $5b48: $c0

    add b                                         ; $5b49: $80
    ld d, b                                       ; $5b4a: $50
    jr nc, @+$52                                  ; $5b4b: $30 $50

    ld [hl], b                                    ; $5b4d: $70
    push bc                                       ; $5b4e: $c5
    and $55                                       ; $5b4f: $e6 $55
    db $dd                                        ; $5b51: $dd
    ld [c], a                                     ; $5b52: $e2
    jr nz, jr_07c_5bb0                            ; $5b53: $20 $5b

    sbc $ff                                       ; $5b55: $de $ff
    ret nc                                        ; $5b57: $d0

    ld de, $11dc                                  ; $5b58: $11 $dc $11
    rst $20                                       ; $5b5b: $e7
    add hl, bc                                    ; $5b5c: $09
    and $20                                       ; $5b5d: $e6 $20
    add sp, $07                                   ; $5b5f: $e8 $07
    pop de                                        ; $5b61: $d1
    ld [de], a                                    ; $5b62: $12
    ld [hl-], a                                   ; $5b63: $32
    ld d, l                                       ; $5b64: $55
    db $dd                                        ; $5b65: $dd

jr_07c_5b66:
    ld d, d                                       ; $5b66: $52
    rst $10                                       ; $5b67: $d7
    ld d, b                                       ; $5b68: $50
    ret c                                         ; $5b69: $d8

    ret nz                                        ; $5b6a: $c0

    ld d, b                                       ; $5b6b: $50
    ld d, c                                       ; $5b6c: $51
    ld d, b                                       ; $5b6d: $50
    ld d, b                                       ; $5b6e: $50
    ld d, b                                       ; $5b6f: $50
    ld b, b                                       ; $5b70: $40
    dec [hl]                                      ; $5b71: $35
    ld sp, $4131                                  ; $5b72: $31 $31 $41
    sbc $ff                                       ; $5b75: $de $ff
    ret nc                                        ; $5b77: $d0

    ld de, $dfd1                                  ; $5b78: $11 $d1 $df
    ld b, $05                                     ; $5b7b: $06 $05
    ldh [$de], a                                  ; $5b7d: $e0 $de
    rst $38                                       ; $5b7f: $ff

    db $dc, $11, $e5, $40, $ea, $01, $eb, $1c, $d2, $e6, $d0, $d0, $01, $e8, $06, $59
    db $d7, $59, $d8, $69, $d7, $69, $d8, $79, $d7, $79, $d8, $89, $d7, $89, $d8, $99
    db $d7, $99, $d8

    xor c                                         ; $5ba3: $a9
    rst $10                                       ; $5ba4: $d7
    xor c                                         ; $5ba5: $a9
    ret c                                         ; $5ba6: $d8

    or h                                          ; $5ba7: $b4
    call nz, $c0e6                                ; $5ba8: $c4 $e6 $c0
    or h                                          ; $5bab: $b4
    call nz, $b0e6                                ; $5bac: $c4 $e6 $b0
    or h                                          ; $5baf: $b4

jr_07c_5bb0:
    call nz, $a0e6                                ; $5bb0: $c4 $e6 $a0
    or h                                          ; $5bb3: $b4
    call nz, $90e6                                ; $5bb4: $c4 $e6 $90
    or h                                          ; $5bb7: $b4
    call nz, $80e6                                ; $5bb8: $c4 $e6 $80
    or h                                          ; $5bbb: $b4
    call nz, $70e6                                ; $5bbc: $c4 $e6 $70
    or h                                          ; $5bbf: $b4
    call nz, $60e6                                ; $5bc0: $c4 $e6 $60
    or h                                          ; $5bc3: $b4
    call nz, Call_07c_50e6                        ; $5bc4: $c4 $e6 $50
    or h                                          ; $5bc7: $b4
    call nz, Call_07c_40e6                        ; $5bc8: $c4 $e6 $40
    or h                                          ; $5bcb: $b4
    call nz, Call_000_30e6                        ; $5bcc: $c4 $e6 $30
    or h                                          ; $5bcf: $b4
    ld c, $e6                                     ; $5bd0: $0e $e6
    sub b                                         ; $5bd2: $90
    add sp, $06                                   ; $5bd3: $e8 $06
    push hl                                       ; $5bd5: $e5
    nop                                           ; $5bd6: $00
    db $dd                                        ; $5bd7: $dd
    db $d3                                        ; $5bd8: $d3
    rst $18                                       ; $5bd9: $df
    ld [bc], a                                    ; $5bda: $02
    ld [$b909], sp                                ; $5bdb: $08 $09 $b9
    cp c                                          ; $5bde: $b9
    ld [$c909], sp                                ; $5bdf: $08 $09 $c9
    add hl, bc                                    ; $5be2: $09
    ldh [$de], a                                  ; $5be3: $e0 $de
    rst $38                                       ; $5be5: $ff

    db $d0, $0a, $dc, $11, $e6, $a0, $ea, $01, $eb, $1c, $d3, $e5, $40, $e8, $06, $70
    db $b0, $60, $a0, $50, $90, $40, $80, $30, $70, $20

    ld h, b                                       ; $5c00: $60
    add sp, $08                                   ; $5c01: $e8 $08
    ld e, b                                       ; $5c03: $58
    ld [bc], a                                    ; $5c04: $02
    and $80                                       ; $5c05: $e6 $80
    ret nc                                        ; $5c07: $d0

    ld bc, $06e8                                  ; $5c08: $01 $e8 $06
    push hl                                       ; $5c0b: $e5
    nop                                           ; $5c0c: $00
    db $dd                                        ; $5c0d: $dd
    db $d3                                        ; $5c0e: $d3
    jr @-$25                                      ; $5c0f: $18 $d9

    add hl, de                                    ; $5c11: $19
    ld e, c                                       ; $5c12: $59
    ld e, c                                       ; $5c13: $59
    jr z, @-$25                                   ; $5c14: $28 $d9

    add hl, hl                                    ; $5c16: $29
    ld l, c                                       ; $5c17: $69
    reti                                          ; $5c18: $d9


    ld l, c                                       ; $5c19: $69
    sbc $ff                                       ; $5c1a: $de $ff

    db $dc, $11, $e6, $40, $e9, $00, $d4, $e7, $14, $d0, $05, $e8, $03, $53, $43, $33
    db $23, $13, $d8

    jp Jump_000_08e8                              ; $5c2f: $c3 $e8 $08


    cp b                                          ; $5c32: $b8
    reti                                          ; $5c33: $d9


    cp b                                          ; $5c34: $b8
    ld [bc], a                                    ; $5c35: $02
    ret nc                                        ; $5c36: $d0

    ld bc, $20e6                                  ; $5c37: $01 $e6 $20
    rst $20                                       ; $5c3a: $e7
    ld a, [bc]                                    ; $5c3b: $0a
    pop de                                        ; $5c3c: $d1
    or [hl]                                       ; $5c3d: $b6
    rst $00                                       ; $5c3e: $c7
    add sp, $07                                   ; $5c3f: $e8 $07

jr_07c_5c41:
    db $dd                                        ; $5c41: $dd
    rst $18                                       ; $5c42: $df
    ld [bc], a                                    ; $5c43: $02
    rst $10                                       ; $5c44: $d7
    jr @-$25                                      ; $5c45: $18 $d9

    add hl, de                                    ; $5c47: $19
    reti                                          ; $5c48: $d9


    add hl, de                                    ; $5c49: $19
    reti                                          ; $5c4a: $d9


    add hl, de                                    ; $5c4b: $19
    ret c                                         ; $5c4c: $d8

    ld a, b                                       ; $5c4d: $78
    reti                                          ; $5c4e: $d9


    ld a, c                                       ; $5c4f: $79
    reti                                          ; $5c50: $d9


    ld a, c                                       ; $5c51: $79
    reti                                          ; $5c52: $d9


    ld a, c                                       ; $5c53: $79
    ldh [$d7], a                                  ; $5c54: $e0 $d7
    jr @-$25                                      ; $5c56: $18 $d9

    add hl, de                                    ; $5c58: $19
    reti                                          ; $5c59: $d9


    add hl, de                                    ; $5c5a: $19
    reti                                          ; $5c5b: $d9


    add hl, de                                    ; $5c5c: $19
    ret c                                         ; $5c5d: $d8

    ld a, b                                       ; $5c5e: $78
    reti                                          ; $5c5f: $d9


    ld a, c                                       ; $5c60: $79
    reti                                          ; $5c61: $d9


    ld a, c                                       ; $5c62: $79
    reti                                          ; $5c63: $d9


    ld a, c                                       ; $5c64: $79
    rst $10                                       ; $5c65: $d7
    jr jr_07c_5c41                                ; $5c66: $18 $d9

    add hl, de                                    ; $5c68: $19
    reti                                          ; $5c69: $d9


    add hl, de                                    ; $5c6a: $19
    add hl, de                                    ; $5c6b: $19
    ret c                                         ; $5c6c: $d8

    ld a, b                                       ; $5c6d: $78
    reti                                          ; $5c6e: $d9


    ld a, c                                       ; $5c6f: $79
    reti                                          ; $5c70: $d9


    ld a, c                                       ; $5c71: $79
    reti                                          ; $5c72: $d9


    ld a, c                                       ; $5c73: $79
    sbc $ff                                       ; $5c74: $de $ff

    db $d0, $01, $d1, $09, $09, $09, $09, $b9, $b9, $b9, $09, $09, $b9, $09

    cp c                                          ; $5c84: $b9
    cp c                                          ; $5c85: $b9
    add hl, bc                                    ; $5c86: $09
    add hl, bc                                    ; $5c87: $09
    add hl, bc                                    ; $5c88: $09
    add hl, bc                                    ; $5c89: $09
    add hl, bc                                    ; $5c8a: $09
    add hl, bc                                    ; $5c8b: $09
    add hl, bc                                    ; $5c8c: $09
    add hl, bc                                    ; $5c8d: $09
    add hl, bc                                    ; $5c8e: $09
    add hl, bc                                    ; $5c8f: $09
    add hl, bc                                    ; $5c90: $09
    db $dd                                        ; $5c91: $dd
    jr @+$0b                                      ; $5c92: $18 $09

    rst $10                                       ; $5c94: $d7
    adc c                                         ; $5c95: $89
    adc c                                         ; $5c96: $89
    ret c                                         ; $5c97: $d8

    jr @+$0b                                      ; $5c98: $18 $09

    add hl, bc                                    ; $5c9a: $09
    add hl, bc                                    ; $5c9b: $09
    jr @+$0b                                      ; $5c9c: $18 $09

    rst $10                                       ; $5c9e: $d7
    adc c                                         ; $5c9f: $89
    adc c                                         ; $5ca0: $89
    ret c                                         ; $5ca1: $d8

    jr @+$0b                                      ; $5ca2: $18 $09

    add hl, de                                    ; $5ca4: $19
    add hl, bc                                    ; $5ca5: $09
    sbc $ff                                       ; $5ca6: $de $ff
    ret nc                                        ; $5ca8: $d0

    ld bc, $11dc                                  ; $5ca9: $01 $dc $11
    add sp, $07                                   ; $5cac: $e8 $07
    ld [$eb01], a                                 ; $5cae: $ea $01 $eb
    add hl, de                                    ; $5cb1: $19
    xor $22                                       ; $5cb2: $ee $22
    db $d3                                        ; $5cb4: $d3
    push hl                                       ; $5cb5: $e5
    ld b, b                                       ; $5cb6: $40
    and $b0                                       ; $5cb7: $e6 $b0
    add a                                         ; $5cb9: $87
    rst $10                                       ; $5cba: $d7
    jr jr_07c_5d15                                ; $5cbb: $18 $58

    ret c                                         ; $5cbd: $d8

    and a                                         ; $5cbe: $a7
    rst $10                                       ; $5cbf: $d7
    jr c, @+$7a                                   ; $5cc0: $38 $78

    rla                                           ; $5cc2: $17
    ld e, b                                       ; $5cc3: $58
    adc b                                         ; $5cc4: $88
    scf                                           ; $5cc5: $37
    ld a, b                                       ; $5cc6: $78
    xor b                                         ; $5cc7: $a8
    ld d, a                                       ; $5cc8: $57
    ld e, b                                       ; $5cc9: $58
    jr c, jr_07c_5d23                             ; $5cca: $38 $57

Jump_07c_5ccc:
    ld [$3758], sp                                ; $5ccc: $08 $58 $37
    ld e, h                                       ; $5ccf: $5c
    inc b                                         ; $5cd0: $04
    rlca                                          ; $5cd1: $07
    ld [$d008], sp                                ; $5cd2: $08 $08 $d0
    ld a, [de]                                    ; $5cd5: $1a
    and $70                                       ; $5cd6: $e6 $70
    add sp, $08                                   ; $5cd8: $e8 $08
    db $dd                                        ; $5cda: $dd
    db $d3                                        ; $5cdb: $d3
    sub c                                         ; $5cdc: $91
    ld [hl], c                                    ; $5cdd: $71
    sub c                                         ; $5cde: $91
    pop bc                                        ; $5cdf: $c1
    sub c                                         ; $5ce0: $91
    ld [hl], c                                    ; $5ce1: $71
    sub c                                         ; $5ce2: $91
    and c                                         ; $5ce3: $a1
    sbc $ff                                       ; $5ce4: $de $ff
    ret nc                                        ; $5ce6: $d0

    ld bc, $11dc                                  ; $5ce7: $01 $dc $11
    push hl                                       ; $5cea: $e5
    ld b, b                                       ; $5ceb: $40
    and $90                                       ; $5cec: $e6 $90
    add sp, $07                                   ; $5cee: $e8 $07
    ld [$eb01], a                                 ; $5cf0: $ea $01 $eb
    ld e, $ee                                     ; $5cf3: $1e $ee
    ld [hl+], a                                   ; $5cf5: $22
    db $d3                                        ; $5cf6: $d3
    db $e4                                        ; $5cf7: $e4
    db $fd                                        ; $5cf8: $fd
    rst $18                                       ; $5cf9: $df
    ld [bc], a                                    ; $5cfa: $02
    add a                                         ; $5cfb: $87
    adc b                                         ; $5cfc: $88
    ld [$a8a7], sp                                ; $5cfd: $08 $a7 $a8
    ld [$e4e0], sp                                ; $5d00: $08 $e0 $e4
    nop                                           ; $5d03: $00
    rst $00                                       ; $5d04: $c7
    ret z                                         ; $5d05: $c8

    xor b                                         ; $5d06: $a8
    rst $00                                       ; $5d07: $c7
    ld [$a7c8], sp                                ; $5d08: $08 $c8 $a7
    call z, Call_000_0704                         ; $5d0b: $cc $04 $07
    ld [$e608], sp                                ; $5d0e: $08 $08 $e6
    add b                                         ; $5d11: $80
    push hl                                       ; $5d12: $e5
    add b                                         ; $5d13: $80
    db $dd                                        ; $5d14: $dd

jr_07c_5d15:
    db $d3                                        ; $5d15: $d3
    ld d, a                                       ; $5d16: $57
    reti                                          ; $5d17: $d9


    ld e, b                                       ; $5d18: $58
    ld [$0807], sp                                ; $5d19: $08 $07 $08
    ld [$3807], sp                                ; $5d1c: $08 $07 $38
    reti                                          ; $5d1f: $d9


    jr c, jr_07c_5d59                             ; $5d20: $38 $37

    reti                                          ; $5d22: $d9


jr_07c_5d23:
    jr c, jr_07c_5d59                             ; $5d23: $38 $34

    inc bc                                        ; $5d25: $03
    ld d, a                                       ; $5d26: $57
    reti                                          ; $5d27: $d9


    ld e, b                                       ; $5d28: $58
    ld [$0807], sp                                ; $5d29: $08 $07 $08
    ld [$8807], sp                                ; $5d2c: $08 $07 $88
    reti                                          ; $5d2f: $d9


    adc b                                         ; $5d30: $88
    ld [hl], a                                    ; $5d31: $77
    reti                                          ; $5d32: $d9


    ld a, b                                       ; $5d33: $78
    inc [hl]                                      ; $5d34: $34
    inc bc                                        ; $5d35: $03
    ld d, a                                       ; $5d36: $57
    reti                                          ; $5d37: $d9


    ld e, b                                       ; $5d38: $58
    ld [$0807], sp                                ; $5d39: $08 $07 $08
    ld [$3807], sp                                ; $5d3c: $08 $07 $38
    reti                                          ; $5d3f: $d9


jr_07c_5d40:
    jr c, jr_07c_5d79                             ; $5d40: $38 $37

    reti                                          ; $5d42: $d9


    jr c, jr_07c_5d79                             ; $5d43: $38 $34

jr_07c_5d45:
    inc bc                                        ; $5d45: $03
    ld d, a                                       ; $5d46: $57
    reti                                          ; $5d47: $d9


    ld e, b                                       ; $5d48: $58

jr_07c_5d49:
    ld [$0807], sp                                ; $5d49: $08 $07 $08
    ld [$3807], sp                                ; $5d4c: $08 $07 $38
    reti                                          ; $5d4f: $d9


    jr c, jr_07c_5d89                             ; $5d50: $38 $37

    reti                                          ; $5d52: $d9


    jr c, jr_07c_5d99                             ; $5d53: $38 $44

    inc bc                                        ; $5d55: $03
    sbc $ff                                       ; $5d56: $de $ff
    ret nc                                        ; $5d58: $d0

jr_07c_5d59:
    ld bc, $11dc                                  ; $5d59: $01 $dc $11
    rst $20                                       ; $5d5c: $e7
    ld [$20e6], sp                                ; $5d5d: $08 $e6 $20
    add sp, $07                                   ; $5d60: $e8 $07
    pop de                                        ; $5d62: $d1
    rla                                           ; $5d63: $17
    reti                                          ; $5d64: $d9


    jr jr_07c_5d40                                ; $5d65: $18 $d9

    jr jr_07c_5da0                                ; $5d67: $18 $37

    reti                                          ; $5d69: $d9


    jr c, jr_07c_5d45                             ; $5d6a: $38 $d9

    jr c, jr_07c_5d85                             ; $5d6c: $38 $17

    rst $10                                       ; $5d6e: $d7
    jr jr_07c_5d49                                ; $5d6f: $18 $d8

    jr jr_07c_5daa                                ; $5d71: $18 $37

    reti                                          ; $5d73: $d9


    jr c, @+$3a                                   ; $5d74: $38 $38

    ld d, a                                       ; $5d76: $57
    reti                                          ; $5d77: $d9


    ld e, b                                       ; $5d78: $58

jr_07c_5d79:
    rst $10                                       ; $5d79: $d7
    ld e, b                                       ; $5d7a: $58
    ret c                                         ; $5d7b: $d8

    ld d, a                                       ; $5d7c: $57
    rst $10                                       ; $5d7d: $d7
    jr c, @+$5a                                   ; $5d7e: $38 $58

    ret c                                         ; $5d80: $d8

    ld d, a                                       ; $5d81: $57
    rst $10                                       ; $5d82: $d7
    ld e, b                                       ; $5d83: $58
    reti                                          ; $5d84: $d9


jr_07c_5d85:
    ld e, b                                       ; $5d85: $58
    ret c                                         ; $5d86: $d8

    and a                                         ; $5d87: $a7
    cp b                                          ; $5d88: $b8

jr_07c_5d89:
    ret z                                         ; $5d89: $c8

    db $dd                                        ; $5d8a: $dd
    ld d, a                                       ; $5d8b: $57
    ld e, b                                       ; $5d8c: $58
    rst $10                                       ; $5d8d: $d7
    ld e, b                                       ; $5d8e: $58
    ret c                                         ; $5d8f: $d8

    ld d, a                                       ; $5d90: $57
    rst $10                                       ; $5d91: $d7
    jr c, jr_07c_5dec                             ; $5d92: $38 $58

    ret c                                         ; $5d94: $d8

    ld d, a                                       ; $5d95: $57
    ld e, b                                       ; $5d96: $58
    reti                                          ; $5d97: $d9


    ld e, b                                       ; $5d98: $58

jr_07c_5d99:
    ld d, a                                       ; $5d99: $57
    rst $10                                       ; $5d9a: $d7

jr_07c_5d9b:
    ld e, b                                       ; $5d9b: $58
    ret c                                         ; $5d9c: $d8

    ld e, b                                       ; $5d9d: $58
    sbc $ff                                       ; $5d9e: $de $ff

jr_07c_5da0:
    ret nc                                        ; $5da0: $d0

    ld bc, $37d1                                  ; $5da1: $01 $d1 $37
    jr jr_07c_5dbe                                ; $5da4: $18 $18

    scf                                           ; $5da6: $37

jr_07c_5da7:
    jr jr_07c_5dc1                                ; $5da7: $18 $18

    scf                                           ; $5da9: $37

jr_07c_5daa:
    jr jr_07c_5dc4                                ; $5daa: $18 $18

    scf                                           ; $5dac: $37
    jr c, jr_07c_5de7                             ; $5dad: $38 $38

    scf                                           ; $5daf: $37

jr_07c_5db0:
    jr c, jr_07c_5dca                             ; $5db0: $38 $18

    scf                                           ; $5db2: $37
    ld [$1738], sp                                ; $5db3: $08 $38 $17
    jr c, jr_07c_5dc0                             ; $5db6: $38 $08

    scf                                           ; $5db8: $37
    ld [$dd38], sp                                ; $5db9: $08 $38 $dd
    rst $18                                       ; $5dbc: $df
    inc bc                                        ; $5dbd: $03

jr_07c_5dbe:
    rla                                           ; $5dbe: $17
    rst $10                                       ; $5dbf: $d7

jr_07c_5dc0:
    adc b                                         ; $5dc0: $88

jr_07c_5dc1:
    ret c                                         ; $5dc1: $d8

    jr c, jr_07c_5d9b                             ; $5dc2: $38 $d7

jr_07c_5dc4:
    add a                                         ; $5dc4: $87
    ret c                                         ; $5dc5: $d8

    jr jr_07c_5de0                                ; $5dc6: $18 $18

    scf                                           ; $5dc8: $37
    rst $10                                       ; $5dc9: $d7

jr_07c_5dca:
    adc b                                         ; $5dca: $88
    ret c                                         ; $5dcb: $d8

    jr jr_07c_5de5                                ; $5dcc: $18 $17

    jr c, jr_07c_5da7                             ; $5dce: $38 $d7

    adc b                                         ; $5dd0: $88
    ret c                                         ; $5dd1: $d8

    ldh [rNR22], a                                ; $5dd2: $e0 $17
    rst $10                                       ; $5dd4: $d7
    ld l, b                                       ; $5dd5: $68
    ret c                                         ; $5dd6: $d8

    jr c, jr_07c_5db0                             ; $5dd7: $38 $d7

    add a                                         ; $5dd9: $87
    ret c                                         ; $5dda: $d8

    jr @+$1a                                      ; $5ddb: $18 $18

    scf                                           ; $5ddd: $37
    rst $10                                       ; $5dde: $d7
    adc b                                         ; $5ddf: $88

jr_07c_5de0:
    ret c                                         ; $5de0: $d8

    jr jr_07c_5e1a                                ; $5de1: $18 $37

    jr c, jr_07c_5e1d                             ; $5de3: $38 $38

jr_07c_5de5:
    sbc $ff                                       ; $5de5: $de $ff

jr_07c_5de7:
    ret nc                                        ; $5de7: $d0

    ld bc, $11dc                                  ; $5de8: $01 $dc $11
    push hl                                       ; $5deb: $e5

jr_07c_5dec:
    nop                                           ; $5dec: $00
    and $b4                                       ; $5ded: $e6 $b4
    add sp, $07                                   ; $5def: $e8 $07
    ld [$eb01], a                                 ; $5df1: $ea $01 $eb
    ld e, $d4                                     ; $5df4: $1e $d4
    ld e, c                                       ; $5df6: $59
    ld e, d                                       ; $5df7: $5a
    add hl, bc                                    ; $5df8: $09
    ld e, d                                       ; $5df9: $5a
    add hl, bc                                    ; $5dfa: $09
    ld c, d                                       ; $5dfb: $4a
    add hl, sp                                    ; $5dfc: $39
    ld a, [bc]                                    ; $5dfd: $0a
    add hl, hl                                    ; $5dfe: $29
    ld a, [bc]                                    ; $5dff: $0a
    add hl, bc                                    ; $5e00: $09
    ld a, [bc]                                    ; $5e01: $0a
    ret c                                         ; $5e02: $d8

    ret c                                         ; $5e03: $d8

    ret c                                         ; $5e04: $d8

    xor c                                         ; $5e05: $a9
    ld a, [bc]                                    ; $5e06: $0a
    add hl, bc                                    ; $5e07: $09
    ld a, [bc]                                    ; $5e08: $0a
    db $dd                                        ; $5e09: $dd
    call nc, $02df                                ; $5e0a: $d4 $df $02
    and $94                                       ; $5e0d: $e6 $94
    add [hl]                                      ; $5e0f: $86
    and $64                                       ; $5e10: $e6 $64
    add [hl]                                      ; $5e12: $86
    and $44                                       ; $5e13: $e6 $44
    add [hl]                                      ; $5e15: $86
    ldh [$e6], a                                  ; $5e16: $e0 $e6
    sub h                                         ; $5e18: $94
    adc c                                         ; $5e19: $89

jr_07c_5e1a:
    ld h, [hl]                                    ; $5e1a: $66
    and $64                                       ; $5e1b: $e6 $64

jr_07c_5e1d:
    ld h, [hl]                                    ; $5e1d: $66
    and $44                                       ; $5e1e: $e6 $44
    ld h, [hl]                                    ; $5e20: $66
    and $94                                       ; $5e21: $e6 $94
    and [hl]                                      ; $5e23: $a6
    and $74                                       ; $5e24: $e6 $74
    and [hl]                                      ; $5e26: $a6
    and $64                                       ; $5e27: $e6 $64
    and [hl]                                      ; $5e29: $a6
    and $54                                       ; $5e2a: $e6 $54
    and [hl]                                      ; $5e2c: $a6
    and $44                                       ; $5e2d: $e6 $44
    and [hl]                                      ; $5e2f: $a6
    and $34                                       ; $5e30: $e6 $34
    and [hl]                                      ; $5e32: $a6
    and $24                                       ; $5e33: $e6 $24
    and [hl]                                      ; $5e35: $a6
    add hl, bc                                    ; $5e36: $09
    add hl, bc                                    ; $5e37: $09
    add hl, bc                                    ; $5e38: $09
    rrca                                          ; $5e39: $0f
    rst $18                                       ; $5e3a: $df
    ld [bc], a                                    ; $5e3b: $02
    and $94                                       ; $5e3c: $e6 $94
    add [hl]                                      ; $5e3e: $86
    and $74                                       ; $5e3f: $e6 $74
    add [hl]                                      ; $5e41: $86
    and $54                                       ; $5e42: $e6 $54
    add [hl]                                      ; $5e44: $86
    ldh [$e6], a                                  ; $5e45: $e0 $e6
    sub h                                         ; $5e47: $94
    adc c                                         ; $5e48: $89
    ld h, [hl]                                    ; $5e49: $66
    and $74                                       ; $5e4a: $e6 $74
    ld h, [hl]                                    ; $5e4c: $66
    and $54                                       ; $5e4d: $e6 $54
    ld h, [hl]                                    ; $5e4f: $66
    and $94                                       ; $5e50: $e6 $94
    ld [hl], $e6                                  ; $5e52: $36 $e6
    add h                                         ; $5e54: $84
    ld [hl], $e6                                  ; $5e55: $36 $e6
    ld [hl], h                                    ; $5e57: $74
    ld [hl], $e6                                  ; $5e58: $36 $e6
    ld h, h                                       ; $5e5a: $64
    ld [hl], $e6                                  ; $5e5b: $36 $e6
    ld d, h                                       ; $5e5d: $54
    ld [hl], $e6                                  ; $5e5e: $36 $e6
    ld b, h                                       ; $5e60: $44
    ld [hl], $e6                                  ; $5e61: $36 $e6
    inc [hl]                                      ; $5e63: $34
    ld [hl], $09                                  ; $5e64: $36 $09
    add hl, bc                                    ; $5e66: $09
    add hl, bc                                    ; $5e67: $09
    rrca                                          ; $5e68: $0f
    sbc $ff                                       ; $5e69: $de $ff
    ret nc                                        ; $5e6b: $d0

    ld bc, $11dc                                  ; $5e6c: $01 $dc $11
    push hl                                       ; $5e6f: $e5
    nop                                           ; $5e70: $00
    add sp, $06                                   ; $5e71: $e8 $06
    ld [$eb01], a                                 ; $5e73: $ea $01 $eb
    ld e, $d3                                     ; $5e76: $1e $d3
    and $92                                       ; $5e78: $e6 $92
    ld a, c                                       ; $5e7a: $79
    ld a, d                                       ; $5e7b: $7a
    add hl, bc                                    ; $5e7c: $09
    ld a, d                                       ; $5e7d: $7a
    add hl, bc                                    ; $5e7e: $09
    ld l, d                                       ; $5e7f: $6a
    ld e, c                                       ; $5e80: $59
    ld a, [bc]                                    ; $5e81: $0a
    ld c, c                                       ; $5e82: $49
    ld a, [bc]                                    ; $5e83: $0a
    add hl, bc                                    ; $5e84: $09
    ld a, [bc]                                    ; $5e85: $0a
    add hl, bc                                    ; $5e86: $09
    ld a, [bc]                                    ; $5e87: $0a
    add hl, bc                                    ; $5e88: $09
    ld a, [bc]                                    ; $5e89: $0a
    db $dd                                        ; $5e8a: $dd
    and $92                                       ; $5e8b: $e6 $92
    adc c                                         ; $5e8d: $89
    and $62                                       ; $5e8e: $e6 $62
    adc d                                         ; $5e90: $8a
    and $92                                       ; $5e91: $e6 $92
    add hl, de                                    ; $5e93: $19
    and $62                                       ; $5e94: $e6 $62
    ld a, [de]                                    ; $5e96: $1a
    and $92                                       ; $5e97: $e6 $92
    ld c, c                                       ; $5e99: $49
    and $62                                       ; $5e9a: $e6 $62
    ld c, d                                       ; $5e9c: $4a
    and $92                                       ; $5e9d: $e6 $92
    adc c                                         ; $5e9f: $89
    and $62                                       ; $5ea0: $e6 $62
    adc d                                         ; $5ea2: $8a
    and $92                                       ; $5ea3: $e6 $92
    xor c                                         ; $5ea5: $a9
    and $62                                       ; $5ea6: $e6 $62
    xor d                                         ; $5ea8: $aa
    and $92                                       ; $5ea9: $e6 $92
    add hl, sp                                    ; $5eab: $39
    and $62                                       ; $5eac: $e6 $62
    ld a, [hl-]                                   ; $5eae: $3a
    and $92                                       ; $5eaf: $e6 $92
    ld l, c                                       ; $5eb1: $69
    and $62                                       ; $5eb2: $e6 $62
    ld l, d                                       ; $5eb4: $6a
    and $92                                       ; $5eb5: $e6 $92
    xor c                                         ; $5eb7: $a9
    and $62                                       ; $5eb8: $e6 $62
    xor d                                         ; $5eba: $aa
    sbc $ff                                       ; $5ebb: $de $ff
    ret nc                                        ; $5ebd: $d0

    ld bc, $11dc                                  ; $5ebe: $01 $dc $11
    rst $20                                       ; $5ec1: $e7
    ld a, [bc]                                    ; $5ec2: $0a
    and $20                                       ; $5ec3: $e6 $20
    add sp, $07                                   ; $5ec5: $e8 $07
    jp nc, Jump_000_1a19                          ; $5ec7: $d2 $19 $1a

    reti                                          ; $5eca: $d9


    add hl, de                                    ; $5ecb: $19
    ld a, [de]                                    ; $5ecc: $1a
    reti                                          ; $5ecd: $d9


    add hl, de                                    ; $5ece: $19
    ret c                                         ; $5ecf: $d8

    jp z, $d9b9                                   ; $5ed0: $ca $b9 $d9

    cp d                                          ; $5ed3: $ba
    xor c                                         ; $5ed4: $a9
    reti                                          ; $5ed5: $d9


    xor d                                         ; $5ed6: $aa
    add hl, bc                                    ; $5ed7: $09
    ld a, [bc]                                    ; $5ed8: $0a
    add hl, bc                                    ; $5ed9: $09
    ld a, [bc]                                    ; $5eda: $0a
    add hl, bc                                    ; $5edb: $09
    ld a, [bc]                                    ; $5edc: $0a
    db $dd                                        ; $5edd: $dd
    sbc c                                         ; $5ede: $99
    reti                                          ; $5edf: $d9


    sbc d                                         ; $5ee0: $9a
    reti                                          ; $5ee1: $d9


    sbc c                                         ; $5ee2: $99
    reti                                          ; $5ee3: $d9


    sbc d                                         ; $5ee4: $9a
    reti                                          ; $5ee5: $d9


    sbc c                                         ; $5ee6: $99
    reti                                          ; $5ee7: $d9


    sbc d                                         ; $5ee8: $9a
    sbc c                                         ; $5ee9: $99
    reti                                          ; $5eea: $d9


    sbc d                                         ; $5eeb: $9a
    adc c                                         ; $5eec: $89
    reti                                          ; $5eed: $d9


    adc d                                         ; $5eee: $8a
    reti                                          ; $5eef: $d9


    adc c                                         ; $5ef0: $89
    reti                                          ; $5ef1: $d9


    adc d                                         ; $5ef2: $8a
    reti                                          ; $5ef3: $d9


    adc c                                         ; $5ef4: $89
    reti                                          ; $5ef5: $d9


    adc d                                         ; $5ef6: $8a
    adc c                                         ; $5ef7: $89
    reti                                          ; $5ef8: $d9


    adc d                                         ; $5ef9: $8a
    sbc c                                         ; $5efa: $99
    reti                                          ; $5efb: $d9


    sbc d                                         ; $5efc: $9a
    reti                                          ; $5efd: $d9


    sbc c                                         ; $5efe: $99
    reti                                          ; $5eff: $d9


    sbc d                                         ; $5f00: $9a
    reti                                          ; $5f01: $d9


    sbc c                                         ; $5f02: $99
    reti                                          ; $5f03: $d9


    sbc d                                         ; $5f04: $9a
    sbc c                                         ; $5f05: $99
    reti                                          ; $5f06: $d9


    sbc d                                         ; $5f07: $9a
    adc c                                         ; $5f08: $89
    reti                                          ; $5f09: $d9


    adc d                                         ; $5f0a: $8a
    reti                                          ; $5f0b: $d9


    adc c                                         ; $5f0c: $89
    reti                                          ; $5f0d: $d9


    adc d                                         ; $5f0e: $8a
    add hl, sp                                    ; $5f0f: $39
    reti                                          ; $5f10: $d9


    ld a, [hl-]                                   ; $5f11: $3a
    reti                                          ; $5f12: $d9


    add hl, sp                                    ; $5f13: $39
    reti                                          ; $5f14: $d9


    ld a, [hl-]                                   ; $5f15: $3a
    sbc $ff                                       ; $5f16: $de $ff
    ret nc                                        ; $5f18: $d0

    ld a, [hl+]                                   ; $5f19: $2a
    pop de                                        ; $5f1a: $d1
    db $dd                                        ; $5f1b: $dd
    inc bc                                        ; $5f1c: $03
    sbc $ff                                       ; $5f1d: $de $ff
    ret nc                                        ; $5f1f: $d0

    ld bc, $11dc                                  ; $5f20: $01 $dc $11
    push hl                                       ; $5f23: $e5
    add b                                         ; $5f24: $80
    and $b0                                       ; $5f25: $e6 $b0
    add sp, $07                                   ; $5f27: $e8 $07
    ld [$eb01], a                                 ; $5f29: $ea $01 $eb
    inc d                                         ; $5f2c: $14
    db $d3                                        ; $5f2d: $d3
    ld h, [hl]                                    ; $5f2e: $66
    rlca                                          ; $5f2f: $07
    and [hl]                                      ; $5f30: $a6
    rlca                                          ; $5f31: $07
    rst $10                                       ; $5f32: $d7
    ld d, $07                                     ; $5f33: $16 $07
    ld d, [hl]                                    ; $5f35: $56
    ret c                                         ; $5f36: $d8

    add a                                         ; $5f37: $87
    ld b, $c7                                     ; $5f38: $06 $c7
    rst $10                                       ; $5f3a: $d7
    ld [hl], $07                                  ; $5f3b: $36 $07
    add [hl]                                      ; $5f3d: $86
    rlca                                          ; $5f3e: $07
    ret c                                         ; $5f3f: $d8

    add $07                                       ; $5f40: $c6 $07
    rst $10                                       ; $5f42: $d7
    inc d                                         ; $5f43: $14
    ld d, h                                       ; $5f44: $54
    and $90                                       ; $5f45: $e6 $90
    inc d                                         ; $5f47: $14
    ld d, h                                       ; $5f48: $54
    and $80                                       ; $5f49: $e6 $80
    inc d                                         ; $5f4b: $14
    ld d, h                                       ; $5f4c: $54
    and $70                                       ; $5f4d: $e6 $70
    inc d                                         ; $5f4f: $14
    ld d, h                                       ; $5f50: $54
    inc d                                         ; $5f51: $14
    and $60                                       ; $5f52: $e6 $60
    ld d, h                                       ; $5f54: $54
    inc d                                         ; $5f55: $14
    ld d, h                                       ; $5f56: $54
    and $50                                       ; $5f57: $e6 $50
    inc d                                         ; $5f59: $14
    ld d, h                                       ; $5f5a: $54
    inc d                                         ; $5f5b: $14
    and $40                                       ; $5f5c: $e6 $40
    ld d, h                                       ; $5f5e: $54
    inc d                                         ; $5f5f: $14
    ld d, h                                       ; $5f60: $54
    and $30                                       ; $5f61: $e6 $30
    inc d                                         ; $5f63: $14
    ld d, h                                       ; $5f64: $54
    inc d                                         ; $5f65: $14
    and $20                                       ; $5f66: $e6 $20
    ld d, h                                       ; $5f68: $54
    inc d                                         ; $5f69: $14
    ld d, h                                       ; $5f6a: $54
    db $dd                                        ; $5f6b: $dd
    and $b0                                       ; $5f6c: $e6 $b0
    db $d3                                        ; $5f6e: $d3
    halt                                          ; $5f6f: $76
    rlca                                          ; $5f70: $07
    halt                                          ; $5f71: $76
    rlca                                          ; $5f72: $07
    add [hl]                                      ; $5f73: $86
    rlca                                          ; $5f74: $07
    add [hl]                                      ; $5f75: $86
    rst $10                                       ; $5f76: $d7
    rla                                           ; $5f77: $17
    ld b, $17                                     ; $5f78: $06 $17
    ret c                                         ; $5f7a: $d8

    add [hl]                                      ; $5f7b: $86
    rlca                                          ; $5f7c: $07
    rst $10                                       ; $5f7d: $d7
    ld d, $07                                     ; $5f7e: $16 $07
    ld b, $07                                     ; $5f80: $06 $07
    ret c                                         ; $5f82: $d8

    halt                                          ; $5f83: $76
    rlca                                          ; $5f84: $07
    halt                                          ; $5f85: $76
    rlca                                          ; $5f86: $07
    add [hl]                                      ; $5f87: $86
    rlca                                          ; $5f88: $07
    add [hl]                                      ; $5f89: $86
    rlca                                          ; $5f8a: $07
    add [hl]                                      ; $5f8b: $86
    ld [bc], a                                    ; $5f8c: $02
    add $02                                       ; $5f8d: $c6 $02
    rst $10                                       ; $5f8f: $d7
    ld [hl], $02                                  ; $5f90: $36 $02
    ld [hl], $02                                  ; $5f92: $36 $02
    ret c                                         ; $5f94: $d8

    add $02                                       ; $5f95: $c6 $02
    add [hl]                                      ; $5f97: $86
    ld [bc], a                                    ; $5f98: $02
    halt                                          ; $5f99: $76
    rlca                                          ; $5f9a: $07
    halt                                          ; $5f9b: $76
    rlca                                          ; $5f9c: $07
    add [hl]                                      ; $5f9d: $86
    rlca                                          ; $5f9e: $07
    add [hl]                                      ; $5f9f: $86
    rst $10                                       ; $5fa0: $d7
    rla                                           ; $5fa1: $17
    ld b, $17                                     ; $5fa2: $06 $17
    ret c                                         ; $5fa4: $d8

    add [hl]                                      ; $5fa5: $86
    rlca                                          ; $5fa6: $07
    rst $10                                       ; $5fa7: $d7
    ld d, $07                                     ; $5fa8: $16 $07
    ld b, $07                                     ; $5faa: $06 $07
    ret c                                         ; $5fac: $d8

    halt                                          ; $5fad: $76
    rlca                                          ; $5fae: $07
    halt                                          ; $5faf: $76
    rlca                                          ; $5fb0: $07
    add [hl]                                      ; $5fb1: $86
    rlca                                          ; $5fb2: $07
    add [hl]                                      ; $5fb3: $86
    add a                                         ; $5fb4: $87
    ld b, $87                                     ; $5fb5: $06 $87
    and [hl]                                      ; $5fb7: $a6
    rlca                                          ; $5fb8: $07
    and [hl]                                      ; $5fb9: $a6
    rlca                                          ; $5fba: $07
    ld b, $07                                     ; $5fbb: $06 $07
    sbc $ff                                       ; $5fbd: $de $ff
    ret nc                                        ; $5fbf: $d0

    ld bc, $11dc                                  ; $5fc0: $01 $dc $11
    push hl                                       ; $5fc3: $e5
    add b                                         ; $5fc4: $80
    and $90                                       ; $5fc5: $e6 $90
    add sp, $07                                   ; $5fc7: $e8 $07
    ld [$eb01], a                                 ; $5fc9: $ea $01 $eb
    inc d                                         ; $5fcc: $14
    db $d3                                        ; $5fcd: $d3
    ld e, $6e                                     ; $5fce: $1e $6e
    xor [hl]                                      ; $5fd0: $ae
    rst $10                                       ; $5fd1: $d7
    ld d, $d8                                     ; $5fd2: $16 $d8
    scf                                           ; $5fd4: $37
    reti                                          ; $5fd5: $d9


    ld [hl], $87                                  ; $5fd6: $36 $87
    adc $d7                                       ; $5fd8: $ce $d7
    ld a, $d8                                     ; $5fda: $3e $d8
    ld a, $54                                     ; $5fdc: $3e $54
    add h                                         ; $5fde: $84
    and $70                                       ; $5fdf: $e6 $70
    ld d, h                                       ; $5fe1: $54
    add h                                         ; $5fe2: $84
    and $60                                       ; $5fe3: $e6 $60
    ld d, h                                       ; $5fe5: $54
    add h                                         ; $5fe6: $84
    and $50                                       ; $5fe7: $e6 $50
    ld d, h                                       ; $5fe9: $54
    add h                                         ; $5fea: $84
    ld d, h                                       ; $5feb: $54
    and $40                                       ; $5fec: $e6 $40
    add h                                         ; $5fee: $84
    ld d, h                                       ; $5fef: $54
    add h                                         ; $5ff0: $84
    and $30                                       ; $5ff1: $e6 $30
    ld d, h                                       ; $5ff3: $54
    add h                                         ; $5ff4: $84
    ld d, h                                       ; $5ff5: $54
    and $20                                       ; $5ff6: $e6 $20
    add h                                         ; $5ff8: $84
    ld d, h                                       ; $5ff9: $54
    add h                                         ; $5ffa: $84
    and $10                                       ; $5ffb: $e6 $10
    ld d, h                                       ; $5ffd: $54
    add h                                         ; $5ffe: $84
    ld d, h                                       ; $5fff: $54
    add h                                         ; $6000: $84
    ld d, h                                       ; $6001: $54
    add h                                         ; $6002: $84
    db $dd                                        ; $6003: $dd
    and $90                                       ; $6004: $e6 $90
    db $d3                                        ; $6006: $d3
    ld [hl], $07                                  ; $6007: $36 $07
    ld [hl], $07                                  ; $6009: $36 $07
    ld d, [hl]                                    ; $600b: $56
    rlca                                          ; $600c: $07
    ld d, [hl]                                    ; $600d: $56
    add a                                         ; $600e: $87
    ld b, $87                                     ; $600f: $06 $87
    ld d, [hl]                                    ; $6011: $56
    rlca                                          ; $6012: $07
    add [hl]                                      ; $6013: $86
    rlca                                          ; $6014: $07
    ld c, $36                                     ; $6015: $0e $36
    rlca                                          ; $6017: $07
    ld [hl], $07                                  ; $6018: $36 $07
    ld d, [hl]                                    ; $601a: $56
    rlca                                          ; $601b: $07
    ld d, [hl]                                    ; $601c: $56
    rlca                                          ; $601d: $07
    ld [hl], $02                                  ; $601e: $36 $02
    add [hl]                                      ; $6020: $86
    ld [bc], a                                    ; $6021: $02
    add $02                                       ; $6022: $c6 $02
    add $02                                       ; $6024: $c6 $02
    add [hl]                                      ; $6026: $86
    ld [bc], a                                    ; $6027: $02
    ld [hl], $02                                  ; $6028: $36 $02
    ld [hl], $07                                  ; $602a: $36 $07
    ld [hl], $07                                  ; $602c: $36 $07
    ld d, [hl]                                    ; $602e: $56
    rlca                                          ; $602f: $07
    ld d, [hl]                                    ; $6030: $56
    add a                                         ; $6031: $87
    ld b, $87                                     ; $6032: $06 $87
    ld d, [hl]                                    ; $6034: $56
    rlca                                          ; $6035: $07
    add [hl]                                      ; $6036: $86
    rlca                                          ; $6037: $07
    ld c, $36                                     ; $6038: $0e $36
    rlca                                          ; $603a: $07
    ld [hl], $07                                  ; $603b: $36 $07
    ld d, [hl]                                    ; $603d: $56
    rlca                                          ; $603e: $07
    ld d, [hl]                                    ; $603f: $56
    scf                                           ; $6040: $37
    ld b, $37                                     ; $6041: $06 $37
    ld d, [hl]                                    ; $6043: $56
    rlca                                          ; $6044: $07
    ld d, [hl]                                    ; $6045: $56
    rlca                                          ; $6046: $07
    ld c, $de                                     ; $6047: $0e $de
    rst $38                                       ; $6049: $ff
    ret nc                                        ; $604a: $d0

    ld bc, $11dc                                  ; $604b: $01 $dc $11
    rst $20                                       ; $604e: $e7
    ld bc, $20e6                                  ; $604f: $01 $e6 $20
    add sp, $08                                   ; $6052: $e8 $08
    pop de                                        ; $6054: $d1
    ld l, [hl]                                    ; $6055: $6e
    ld l, [hl]                                    ; $6056: $6e
    rst $10                                       ; $6057: $d7
    ld l, [hl]                                    ; $6058: $6e
    ret c                                         ; $6059: $d8

    ld h, [hl]                                    ; $605a: $66
    add a                                         ; $605b: $87
    reti                                          ; $605c: $d9


    add [hl]                                      ; $605d: $86
    add a                                         ; $605e: $87
    adc [hl]                                      ; $605f: $8e
    rst $10                                       ; $6060: $d7
    adc [hl]                                      ; $6061: $8e
    ret c                                         ; $6062: $d8

    adc [hl]                                      ; $6063: $8e
    rst $10                                       ; $6064: $d7
    ld e, $d9                                     ; $6065: $1e $d9
    ld e, $d8                                     ; $6067: $1e $d8
    adc [hl]                                      ; $6069: $8e
    reti                                          ; $606a: $d9


    add [hl]                                      ; $606b: $86
    rst $10                                       ; $606c: $d7
    rla                                           ; $606d: $17
    reti                                          ; $606e: $d9


    ld d, $1e                                     ; $606f: $16 $1e
    rla                                           ; $6071: $17
    ret c                                         ; $6072: $d8

    adc [hl]                                      ; $6073: $8e
    adc [hl]                                      ; $6074: $8e
    db $dd                                        ; $6075: $dd
    jp nc, $02df                                  ; $6076: $d2 $df $02

    ld a, $d9                                     ; $6079: $3e $d9
    ld a, $d8                                     ; $607b: $3e $d8
    xor [hl]                                      ; $607d: $ae
    reti                                          ; $607e: $d9


    and [hl]                                      ; $607f: $a6
    rst $10                                       ; $6080: $d7
    rla                                           ; $6081: $17
    reti                                          ; $6082: $d9


    ld d, $1e                                     ; $6083: $16 $1e
    rla                                           ; $6085: $17
    ret c                                         ; $6086: $d8

    adc [hl]                                      ; $6087: $8e
    rst $10                                       ; $6088: $d7
    ld e, $3e                                     ; $6089: $1e $3e
    reti                                          ; $608b: $d9


    ld a, $d8                                     ; $608c: $3e $d8
    xor [hl]                                      ; $608e: $ae
    reti                                          ; $608f: $d9


    and [hl]                                      ; $6090: $a6
    add a                                         ; $6091: $87
    reti                                          ; $6092: $d9


    add [hl]                                      ; $6093: $86
    adc [hl]                                      ; $6094: $8e
    rst $10                                       ; $6095: $d7
    add a                                         ; $6096: $87
    ret c                                         ; $6097: $d8

    xor [hl]                                      ; $6098: $ae
    rst $10                                       ; $6099: $d7
    xor [hl]                                      ; $609a: $ae
    ldh [$de], a                                  ; $609b: $e0 $de
    rst $38                                       ; $609d: $ff
    ret nc                                        ; $609e: $d0

    ld bc, $1ed1                                  ; $609f: $01 $d1 $1e
    ld e, $3e                                     ; $60a2: $1e $3e
    ld b, $17                                     ; $60a4: $06 $17
    ld b, $1e                                     ; $60a6: $06 $1e
    rla                                           ; $60a8: $17
    ld a, $1e                                     ; $60a9: $3e $1e
    ld [c], a                                     ; $60ab: $e2
    or h                                          ; $60ac: $b4
    ld h, b                                       ; $60ad: $60
    db $dd                                        ; $60ae: $dd
    ld [c], a                                     ; $60af: $e2
    or h                                          ; $60b0: $b4
    ld h, b                                       ; $60b1: $60
    sbc $ff                                       ; $60b2: $de $ff
    ld e, $06                                     ; $60b4: $1e $06
    rla                                           ; $60b6: $17
    ld a, $06                                     ; $60b7: $3e $06
    rla                                           ; $60b9: $17
    ld b, $1e                                     ; $60ba: $06 $1e
    rla                                           ; $60bc: $17
    ld a, $1e                                     ; $60bd: $3e $1e
    db $e3                                        ; $60bf: $e3

    db $d0, $01, $dc, $11, $e5, $40, $e8, $06, $d1, $df, $02, $e6, $70, $56, $57, $d7
    db $56, $d8, $57, $e6, $80, $56, $57, $d7, $56, $d8, $57, $e6, $90, $56, $57, $d7
    db $56, $d8, $57, $e6, $b0, $56, $57, $e6, $d0, $d7, $56, $d8, $57, $e6, $e0, $56
    db $57, $e6, $d0, $d7, $56, $d8, $57, $e6, $b0, $56, $57, $d7, $56, $d8, $57, $e6
    db $90, $56, $57, $d7, $56, $d8, $57, $e6, $80, $56, $57, $d7, $56, $d8, $57, $e0
    db $e6, $70, $76, $77, $d7, $76, $d8, $77, $e6, $80, $76, $77, $d7, $76, $d8, $77
    db $e6, $90, $76, $77, $d7, $76, $d8, $77, $e6, $b0, $76, $77, $e6, $d0, $d7, $76
    db $d8, $77, $e6, $e0, $76, $77, $e6

    ret nc                                        ; $6137: $d0

    rst $10                                       ; $6138: $d7
    halt                                          ; $6139: $76
    ret c                                         ; $613a: $d8

    ld [hl], a                                    ; $613b: $77
    and $b0                                       ; $613c: $e6 $b0
    halt                                          ; $613e: $76
    ld [hl], a                                    ; $613f: $77
    rst $10                                       ; $6140: $d7
    halt                                          ; $6141: $76
    ret c                                         ; $6142: $d8

    ld [hl], a                                    ; $6143: $77
    and $90                                       ; $6144: $e6 $90
    halt                                          ; $6146: $76
    ld [hl], a                                    ; $6147: $77
    rst $10                                       ; $6148: $d7
    halt                                          ; $6149: $76
    ret c                                         ; $614a: $d8

    ld [hl], a                                    ; $614b: $77
    and $80                                       ; $614c: $e6 $80
    halt                                          ; $614e: $76
    ld [hl], a                                    ; $614f: $77
    rst $10                                       ; $6150: $d7
    halt                                          ; $6151: $76
    ret c                                         ; $6152: $d8

    ld [hl], a                                    ; $6153: $77
    and $70                                       ; $6154: $e6 $70
    add [hl]                                      ; $6156: $86
    add a                                         ; $6157: $87
    rst $10                                       ; $6158: $d7
    add [hl]                                      ; $6159: $86
    ret c                                         ; $615a: $d8

    add a                                         ; $615b: $87
    and $80                                       ; $615c: $e6 $80
    add [hl]                                      ; $615e: $86
    add a                                         ; $615f: $87
    rst $10                                       ; $6160: $d7
    add [hl]                                      ; $6161: $86
    ret c                                         ; $6162: $d8

    add a                                         ; $6163: $87
    and $90                                       ; $6164: $e6 $90
    add [hl]                                      ; $6166: $86
    add a                                         ; $6167: $87
    rst $10                                       ; $6168: $d7
    add [hl]                                      ; $6169: $86
    ret c                                         ; $616a: $d8

    add a                                         ; $616b: $87
    and $b0                                       ; $616c: $e6 $b0
    add [hl]                                      ; $616e: $86
    add a                                         ; $616f: $87
    and $d0                                       ; $6170: $e6 $d0
    rst $10                                       ; $6172: $d7
    add [hl]                                      ; $6173: $86
    ret c                                         ; $6174: $d8

    add a                                         ; $6175: $87
    and $e0                                       ; $6176: $e6 $e0
    and [hl]                                      ; $6178: $a6
    and a                                         ; $6179: $a7
    and $d0                                       ; $617a: $e6 $d0
    rst $10                                       ; $617c: $d7
    and [hl]                                      ; $617d: $a6
    ret c                                         ; $617e: $d8

    and a                                         ; $617f: $a7
    and $b0                                       ; $6180: $e6 $b0
    and [hl]                                      ; $6182: $a6
    and a                                         ; $6183: $a7
    rst $10                                       ; $6184: $d7
    and [hl]                                      ; $6185: $a6
    ret c                                         ; $6186: $d8

    and a                                         ; $6187: $a7
    and $90                                       ; $6188: $e6 $90
    and [hl]                                      ; $618a: $a6
    and a                                         ; $618b: $a7
    rst $10                                       ; $618c: $d7
    and [hl]                                      ; $618d: $a6
    ret c                                         ; $618e: $d8

    and a                                         ; $618f: $a7
    and $80                                       ; $6190: $e6 $80
    and [hl]                                      ; $6192: $a6
    and a                                         ; $6193: $a7
    rst $10                                       ; $6194: $d7
    and [hl]                                      ; $6195: $a6
    ret c                                         ; $6196: $d8

    and a                                         ; $6197: $a7
    sbc $ff                                       ; $6198: $de $ff

    db $d0, $01, $dc, $11, $e5, $40, $e8, $06, $e4, $fe, $d1, $06, $07, $dd, $df, $02
    db $e6, $40, $56, $57, $d7, $56, $d8, $57, $e6, $50, $56, $57, $d7, $56, $d8, $57
    db $e6, $60, $56, $57, $d7, $56, $d8, $57, $e6, $80, $56, $57, $e6, $a0, $d7, $56
    db $d8, $57, $e6, $b0, $56, $57, $e6, $a0, $d7, $56, $d8, $57, $e6, $80, $56, $57
    db $d7, $56, $d8, $57, $e6, $60, $56, $57, $d7, $56, $d8, $57, $e6, $50, $56, $57
    db $d7, $56, $d8, $57, $e0, $e6, $40, $76, $77, $d7, $76, $d8, $77, $e6, $50, $76
    db $77, $d7, $76, $d8, $77, $e6, $60, $76, $77, $d7, $76, $d8, $77, $e6, $80, $76
    db $77, $e6, $a0, $d7, $76, $d8, $77, $e6

    or b                                          ; $6212: $b0
    halt                                          ; $6213: $76
    ld [hl], a                                    ; $6214: $77
    and $a0                                       ; $6215: $e6 $a0
    rst $10                                       ; $6217: $d7
    halt                                          ; $6218: $76
    ret c                                         ; $6219: $d8

    ld [hl], a                                    ; $621a: $77
    and $80                                       ; $621b: $e6 $80
    halt                                          ; $621d: $76
    ld [hl], a                                    ; $621e: $77
    rst $10                                       ; $621f: $d7
    halt                                          ; $6220: $76
    ret c                                         ; $6221: $d8

    ld [hl], a                                    ; $6222: $77
    and $60                                       ; $6223: $e6 $60
    halt                                          ; $6225: $76
    ld [hl], a                                    ; $6226: $77
    rst $10                                       ; $6227: $d7
    halt                                          ; $6228: $76
    ret c                                         ; $6229: $d8

    ld [hl], a                                    ; $622a: $77
    and $50                                       ; $622b: $e6 $50
    halt                                          ; $622d: $76
    ld [hl], a                                    ; $622e: $77
    rst $10                                       ; $622f: $d7
    halt                                          ; $6230: $76
    ret c                                         ; $6231: $d8

    ld [hl], a                                    ; $6232: $77
    and $40                                       ; $6233: $e6 $40
    add [hl]                                      ; $6235: $86
    add a                                         ; $6236: $87
    rst $10                                       ; $6237: $d7
    add [hl]                                      ; $6238: $86
    ret c                                         ; $6239: $d8

    add a                                         ; $623a: $87
    and $50                                       ; $623b: $e6 $50
    add [hl]                                      ; $623d: $86
    add a                                         ; $623e: $87
    rst $10                                       ; $623f: $d7
    add [hl]                                      ; $6240: $86
    ret c                                         ; $6241: $d8

    add a                                         ; $6242: $87
    and $60                                       ; $6243: $e6 $60
    add [hl]                                      ; $6245: $86
    add a                                         ; $6246: $87
    rst $10                                       ; $6247: $d7
    add [hl]                                      ; $6248: $86
    ret c                                         ; $6249: $d8

    add a                                         ; $624a: $87
    and $80                                       ; $624b: $e6 $80
    add [hl]                                      ; $624d: $86
    add a                                         ; $624e: $87
    and $a0                                       ; $624f: $e6 $a0
    rst $10                                       ; $6251: $d7
    add [hl]                                      ; $6252: $86
    ret c                                         ; $6253: $d8

    add a                                         ; $6254: $87
    and $b0                                       ; $6255: $e6 $b0
    and [hl]                                      ; $6257: $a6
    and a                                         ; $6258: $a7
    and $a0                                       ; $6259: $e6 $a0
    rst $10                                       ; $625b: $d7
    and [hl]                                      ; $625c: $a6
    ret c                                         ; $625d: $d8

    and a                                         ; $625e: $a7
    and $80                                       ; $625f: $e6 $80
    and [hl]                                      ; $6261: $a6
    and a                                         ; $6262: $a7
    rst $10                                       ; $6263: $d7
    and [hl]                                      ; $6264: $a6
    ret c                                         ; $6265: $d8

    and a                                         ; $6266: $a7
    and $60                                       ; $6267: $e6 $60
    and [hl]                                      ; $6269: $a6
    and a                                         ; $626a: $a7
    rst $10                                       ; $626b: $d7
    and [hl]                                      ; $626c: $a6
    ret c                                         ; $626d: $d8

    and a                                         ; $626e: $a7
    and $50                                       ; $626f: $e6 $50
    and [hl]                                      ; $6271: $a6
    and a                                         ; $6272: $a7
    rst $10                                       ; $6273: $d7
    and [hl]                                      ; $6274: $a6
    ret c                                         ; $6275: $d8

    and a                                         ; $6276: $a7
    sbc $ff                                       ; $6277: $de $ff

    db $d0, $01, $dc, $11, $e7, $0a, $e6, $20, $e8, $07, $d1, $df, $08, $5e, $53, $0a
    db $5e, $53, $0a, $e0, $df, $04, $7e, $73, $0a, $7e, $73, $0a, $e0

    rst $18                                       ; $6296: $df
    ld [bc], a                                    ; $6297: $02
    adc [hl]                                      ; $6298: $8e
    add e                                         ; $6299: $83
    ld a, [bc]                                    ; $629a: $0a
    adc [hl]                                      ; $629b: $8e
    add e                                         ; $629c: $83
    ld a, [bc]                                    ; $629d: $0a
    ldh [$df], a                                  ; $629e: $e0 $df
    ld [bc], a                                    ; $62a0: $02
    xor [hl]                                      ; $62a1: $ae
    and e                                         ; $62a2: $a3
    ld a, [bc]                                    ; $62a3: $0a
    xor [hl]                                      ; $62a4: $ae
    and e                                         ; $62a5: $a3
    ld a, [bc]                                    ; $62a6: $0a
    ldh [$de], a                                  ; $62a7: $e0 $de
    rst $38                                       ; $62a9: $ff

    db $d0, $01, $d1, $df, $10, $1e, $d7, $8e, $d8, $1e, $d7, $8e, $d8, $e0

    sbc $ff                                       ; $62b8: $de $ff

    db $dc, $11, $e5, $40, $e6, $b0, $e8, $07, $ea, $01, $eb, $19, $ee, $22, $d4, $d0
    db $01, $36, $3d, $3d, $36, $3d, $5d, $d0, $07, $01, $d8, $51, $01, $d0

    ld bc, $94d3                                  ; $62d8: $01 $d3 $94
    xor b                                         ; $62db: $a8
    ld b, $d0                                     ; $62dc: $06 $d0
    rlca                                          ; $62de: $07
    ld d, c                                       ; $62df: $51
    nop                                           ; $62e0: $00
    and c                                         ; $62e1: $a1
    ld bc, $d7c1                                  ; $62e2: $01 $c1 $d7
    ld hl, $2131                                  ; $62e5: $21 $31 $21
    nop                                           ; $62e8: $00
    ret c                                         ; $62e9: $d8

    pop bc                                        ; $62ea: $c1
    nop                                           ; $62eb: $00
    and c                                         ; $62ec: $a1
    rlca                                          ; $62ed: $07
    and c                                         ; $62ee: $a1
    nop                                           ; $62ef: $00
    ld d, c                                       ; $62f0: $51
    nop                                           ; $62f1: $00
    and c                                         ; $62f2: $a1
    ld bc, $d7c1                                  ; $62f3: $01 $c1 $d7
    ld hl, $5131                                  ; $62f6: $21 $31 $51
    nop                                           ; $62f9: $00
    ld sp, $2100                                  ; $62fa: $31 $00 $21
    ld bc, $c1d8                                  ; $62fd: $01 $d8 $c1
    and c                                         ; $6300: $a1
    sub c                                         ; $6301: $91
    and c                                         ; $6302: $a1
    dec b                                         ; $6303: $05
    pop bc                                        ; $6304: $c1
    nop                                           ; $6305: $00
    and c                                         ; $6306: $a1
    nop                                           ; $6307: $00
    sub c                                         ; $6308: $91
    and c                                         ; $6309: $a1
    dec b                                         ; $630a: $05
    and c                                         ; $630b: $a1
    nop                                           ; $630c: $00
    pop bc                                        ; $630d: $c1
    nop                                           ; $630e: $00
    rst $10                                       ; $630f: $d7
    ld hl, $31d4                                  ; $6310: $21 $d4 $31
    nop                                           ; $6313: $00
    ld hl, $d800                                  ; $6314: $21 $00 $d8
    pop bc                                        ; $6317: $c1
    and c                                         ; $6318: $a1
    nop                                           ; $6319: $00
    sub c                                         ; $631a: $91
    nop                                           ; $631b: $00

jr_07c_631c:
    and c                                         ; $631c: $a1
    pop bc                                        ; $631d: $c1
    inc bc                                        ; $631e: $03

jr_07c_631f:
    ld d, c                                       ; $631f: $51
    rlca                                          ; $6320: $07
    ret nc                                        ; $6321: $d0

    ld bc, $28d3                                  ; $6322: $01 $d3 $28
    jr z, @+$2b                                   ; $6325: $28 $29

    jr c, @+$5a                                   ; $6327: $38 $58

    ld a, c                                       ; $6329: $79

jr_07c_632a:
    sbc b                                         ; $632a: $98
    reti                                          ; $632b: $d9


    sbc b                                         ; $632c: $98

jr_07c_632d:
    xor b                                         ; $632d: $a8
    reti                                          ; $632e: $d9


    xor c                                         ; $632f: $a9
    ret z                                         ; $6330: $c8

    reti                                          ; $6331: $d9


    ret                                           ; $6332: $c9


    rst $10                                       ; $6333: $d7
    dec l                                         ; $6334: $2d
    dec c                                         ; $6335: $0d
    ld [$2928], sp                                ; $6336: $08 $28 $29
    ret nc                                        ; $6339: $d0

    rlca                                          ; $633a: $07
    ld hl, $ff05                                  ; $633b: $21 $05 $ff

    db $d0, $07, $dc, $11, $e5, $40, $e8, $07, $ea, $01, $eb, $19, $ee, $22, $d3, $e6
    db $a0, $d0, $01, $c6, $cd, $cd, $86, $cd, $d7, $2d, $d0, $07, $01, $d8, $a1, $01
    db $d3

    ld [c], a                                     ; $635f: $e2
    push de                                       ; $6360: $d5
    ld h, e                                       ; $6361: $63
    ld d, c                                       ; $6362: $51
    nop                                           ; $6363: $00
    ld sp, $5100                                  ; $6364: $31 $00 $51
    ld [hl], c                                    ; $6367: $71

jr_07c_6368:
    nop                                           ; $6368: $00
    ld d, c                                       ; $6369: $51
    nop                                           ; $636a: $00
    ld sp, $d5e2                                  ; $636b: $31 $e2 $d5
    ld h, e                                       ; $636e: $63
    rst $10                                       ; $636f: $d7
    ld hl, $d800                                  ; $6370: $21 $00 $d8
    pop bc                                        ; $6373: $c1
    nop                                           ; $6374: $00
    and c                                         ; $6375: $a1
    ld bc, $7191                                  ; $6376: $01 $91 $71
    ld d, c                                       ; $6379: $51
    jr nc, jr_07c_631c                            ; $637a: $30 $a0

    ld [hl], b                                    ; $637c: $70
    jr nc, jr_07c_631f                            ; $637d: $30 $a0

    ld [hl], b                                    ; $637f: $70
    jr nc, @-$26                                  ; $6380: $30 $d8

    and c                                         ; $6382: $a1
    and c                                         ; $6383: $a1
    ld [hl], b                                    ; $6384: $70
    ld sp, $d7a1                                  ; $6385: $31 $a1 $d7
    jr nz, jr_07c_632a                            ; $6388: $20 $a0

    ld d, b                                       ; $638a: $50
    jr nz, jr_07c_632d                            ; $638b: $20 $a0

    ld d, b                                       ; $638d: $50
    jr nz, jr_07c_6368                            ; $638e: $20 $d8

    and c                                         ; $6390: $a1
    and c                                         ; $6391: $a1
    ld d, b                                       ; $6392: $50
    ld hl, $d3a1                                  ; $6393: $21 $a1 $d3
    pop bc                                        ; $6396: $c1
    nop                                           ; $6397: $00
    and c                                         ; $6398: $a1
    nop                                           ; $6399: $00
    sub c                                         ; $639a: $91
    ld [hl], c                                    ; $639b: $71
    nop                                           ; $639c: $00
    ld d, c                                       ; $639d: $51
    nop                                           ; $639e: $00
    ld [hl], c                                    ; $639f: $71
    ld d, b                                       ; $63a0: $50
    ret nz                                        ; $63a1: $c0

    sub b                                         ; $63a2: $90
    ld d, b                                       ; $63a3: $50
    ret c                                         ; $63a4: $d8

    ret nz                                        ; $63a5: $c0

    sub b                                         ; $63a6: $90
    ld d, b                                       ; $63a7: $50
    pop bc                                        ; $63a8: $c1
    pop bc                                        ; $63a9: $c1
    sub b                                         ; $63aa: $90
    ld d, c                                       ; $63ab: $51
    pop bc                                        ; $63ac: $c1
    ret nc                                        ; $63ad: $d0

    ld bc, $a4d2                                  ; $63ae: $01 $d2 $a4
    inc bc                                        ; $63b1: $03
    and h                                         ; $63b2: $a4
    inc bc                                        ; $63b3: $03
    and h                                         ; $63b4: $a4
    inc b                                         ; $63b5: $04
    call nz, $d703                                ; $63b6: $c4 $03 $d7
    inc h                                         ; $63b9: $24
    inc bc                                        ; $63ba: $03
    inc [hl]                                      ; $63bb: $34
    inc b                                         ; $63bc: $04
    db $d3                                        ; $63bd: $d3
    ld e, b                                       ; $63be: $58
    reti                                          ; $63bf: $d9


    ld d, h                                       ; $63c0: $54
    inc bc                                        ; $63c1: $03
    ld a, b                                       ; $63c2: $78
    reti                                          ; $63c3: $d9


    ld [hl], h                                    ; $63c4: $74
    inc b                                         ; $63c5: $04
    sbc b                                         ; $63c6: $98
    reti                                          ; $63c7: $d9


    sub h                                         ; $63c8: $94
    inc b                                         ; $63c9: $04
    ret c                                         ; $63ca: $d8

    xor l                                         ; $63cb: $ad
    dec c                                         ; $63cc: $0d
    ld [$a9a8], sp                                ; $63cd: $08 $a8 $a9
    ret nc                                        ; $63d0: $d0

    rlca                                          ; $63d1: $07
    and c                                         ; $63d2: $a1
    dec b                                         ; $63d3: $05
    rst $38                                       ; $63d4: $ff
    db $d3                                        ; $63d5: $d3
    ld d, c                                       ; $63d6: $51
    nop                                           ; $63d7: $00
    ld hl, $3100                                  ; $63d8: $21 $00 $31
    ld [hl], c                                    ; $63db: $71
    nop                                           ; $63dc: $00
    ld d, c                                       ; $63dd: $51
    nop                                           ; $63de: $00
    db $31                                        ; $63df: $31
    db $e3                                        ; $63e0: $e3

    db $d0, $07, $dc, $11, $e7, $01, $e6, $20, $e8, $07, $ea, $04, $eb, $14, $d1, $80
    db $80, $00, $80, $00, $80, $80, $00, $a1, $05, $e2

    ld e, h                                       ; $63fb: $5c
    ld h, h                                       ; $63fc: $64
    pop de                                        ; $63fd: $d1
    and b                                         ; $63fe: $a0
    and b                                         ; $63ff: $a0
    rst $10                                       ; $6400: $d7
    and c                                         ; $6401: $a1
    ld d, b                                       ; $6402: $50
    ret c                                         ; $6403: $d8

    ld d, d                                       ; $6404: $52
    rst $10                                       ; $6405: $d7
    ld [hl-], a                                   ; $6406: $32
    ld [hl+], a                                   ; $6407: $22
    ret c                                         ; $6408: $d8

    sub c                                         ; $6409: $91
    ld [c], a                                     ; $640a: $e2
    ld e, h                                       ; $640b: $5c
    ld h, h                                       ; $640c: $64
    and d                                         ; $640d: $a2
    ld d, d                                       ; $640e: $52
    and c                                         ; $640f: $a1
    rst $10                                       ; $6410: $d7
    ld d, d                                       ; $6411: $52
    ret c                                         ; $6412: $d8

    jp nz, $d751                                  ; $6413: $c2 $51 $d7

    jr nc, @-$26                                  ; $6416: $30 $d8

    and b                                         ; $6418: $a0
    rst $10                                       ; $6419: $d7
    ld sp, $d830                                  ; $641a: $31 $30 $d8
    and d                                         ; $641d: $a2
    rst $10                                       ; $641e: $d7
    ld [hl-], a                                   ; $641f: $32
    ret c                                         ; $6420: $d8

    and d                                         ; $6421: $a2
    ld sp, $a2d1                                  ; $6422: $31 $d1 $a2
    ld d, d                                       ; $6425: $52
    and c                                         ; $6426: $a1
    and d                                         ; $6427: $a2
    rst $10                                       ; $6428: $d7
    ld d, d                                       ; $6429: $52
    ret c                                         ; $642a: $d8

    and c                                         ; $642b: $a1
    rst $18                                       ; $642c: $df
    ld [bc], a                                    ; $642d: $02
    rst $10                                       ; $642e: $d7
    ld [hl-], a                                   ; $642f: $32
    ret c                                         ; $6430: $d8

    and d                                         ; $6431: $a2
    rst $10                                       ; $6432: $d7
    ld sp, $e0d8                                  ; $6433: $31 $d8 $e0
    rst $18                                       ; $6436: $df
    ld [bc], a                                    ; $6437: $02
    rst $10                                       ; $6438: $d7
    ld d, d                                       ; $6439: $52
    ret c                                         ; $643a: $d8

    jp nz, $e051                                  ; $643b: $c2 $51 $e0

    ret nc                                        ; $643e: $d0

    ld bc, $a8d1                                  ; $643f: $01 $d1 $a8
    sbc b                                         ; $6442: $98
    ld a, c                                       ; $6443: $79
    ld e, b                                       ; $6444: $58
    ld a, b                                       ; $6445: $78
    sbc c                                         ; $6446: $99
    ld e, b                                       ; $6447: $58
    reti                                          ; $6448: $d9


    ld e, b                                       ; $6449: $58
    rst $10                                       ; $644a: $d7
    ld e, b                                       ; $644b: $58
    reti                                          ; $644c: $d9


    ld e, c                                       ; $644d: $59
    ret c                                         ; $644e: $d8

    ld e, b                                       ; $644f: $58
    reti                                          ; $6450: $d9


    ld e, c                                       ; $6451: $59
    xor l                                         ; $6452: $ad
    dec c                                         ; $6453: $0d
    ld [$a9a8], sp                                ; $6454: $08 $a8 $a9
    ret nc                                        ; $6457: $d0

    rlca                                          ; $6458: $07
    and c                                         ; $6459: $a1
    dec b                                         ; $645a: $05
    rst $38                                       ; $645b: $ff
    pop de                                        ; $645c: $d1
    and d                                         ; $645d: $a2
    rst $10                                       ; $645e: $d7
    ld d, d                                       ; $645f: $52
    ret c                                         ; $6460: $d8

    ld d, c                                       ; $6461: $51
    rst $10                                       ; $6462: $d7
    ld [hl-], a                                   ; $6463: $32
    ld [hl+], a                                   ; $6464: $22
    ret c                                         ; $6465: $d8

    sub c                                         ; $6466: $91
    db $e3                                        ; $6467: $e3

    db $d0, $07, $d1, $30, $30, $00, $30, $00, $30, $30, $00, $33, $a3, $e2

    or b                                          ; $6476: $b0
    ld h, h                                       ; $6477: $64
    ld [c], a                                     ; $6478: $e2
    or b                                          ; $6479: $b0
    ld h, h                                       ; $647a: $64
    ld [c], a                                     ; $647b: $e2
    or b                                          ; $647c: $b0
    ld h, h                                       ; $647d: $64
    ld [de], a                                    ; $647e: $12
    db $10                                        ; $647f: $10
    inc de                                        ; $6480: $13
    ld [de], a                                    ; $6481: $12
    db $10                                        ; $6482: $10
    jr nc, jr_07c_64b5                            ; $6483: $30 $30

    jr nc, jr_07c_64b7                            ; $6485: $30 $30

    rst $18                                       ; $6487: $df
    ld [bc], a                                    ; $6488: $02
    ld [c], a                                     ; $6489: $e2
    or a                                          ; $648a: $b7
    ld h, h                                       ; $648b: $64
    ld [de], a                                    ; $648c: $12
    db $10                                        ; $648d: $10
    inc sp                                        ; $648e: $33
    ld [de], a                                    ; $648f: $12
    db $10                                        ; $6490: $10
    ld sp, $e031                                  ; $6491: $31 $31 $e0
    ret nc                                        ; $6494: $d0

    ld bc, $58d7                                  ; $6495: $01 $d7 $58
    ld e, b                                       ; $6498: $58
    ld e, c                                       ; $6499: $59
    ret c                                         ; $649a: $d8

    cp b                                          ; $649b: $b8
    cp a                                          ; $649c: $bf
    ld [bc], a                                    ; $649d: $02
    xor a                                         ; $649e: $af
    ld bc, $02af                                  ; $649f: $01 $af $02
    xor a                                         ; $64a2: $af
    ld [bc], a                                    ; $64a3: $02
    jr c, jr_07c_64ae                             ; $64a4: $38 $08

    add hl, bc                                    ; $64a6: $09
    ld [$3938], sp                                ; $64a7: $08 $38 $39
    xor a                                         ; $64aa: $af
    ld bc, $0f09                                  ; $64ab: $01 $09 $0f

jr_07c_64ae:
    dec bc                                        ; $64ae: $0b
    rst $38                                       ; $64af: $ff
    ld [de], a                                    ; $64b0: $12
    db $10                                        ; $64b1: $10
    inc de                                        ; $64b2: $13
    ld [de], a                                    ; $64b3: $12
    db $10                                        ; $64b4: $10

jr_07c_64b5:
    inc de                                        ; $64b5: $13
    db $e3                                        ; $64b6: $e3

jr_07c_64b7:
    ld [de], a                                    ; $64b7: $12
    db $10                                        ; $64b8: $10
    inc sp                                        ; $64b9: $33
    ld [de], a                                    ; $64ba: $12
    db $10                                        ; $64bb: $10
    inc sp                                        ; $64bc: $33
    db $e3                                        ; $64bd: $e3
    call c, $ea11                                 ; $64be: $dc $11 $ea
    dec bc                                        ; $64c1: $0b
    db $eb                                        ; $64c2: $eb
    add hl, de                                    ; $64c3: $19

jr_07c_64c4:
    push hl                                       ; $64c4: $e5
    add b                                         ; $64c5: $80
    add sp, $07                                   ; $64c6: $e8 $07

jr_07c_64c8:
    db $d3                                        ; $64c8: $d3
    and $c0                                       ; $64c9: $e6 $c0
    rst $18                                       ; $64cb: $df
    ld [bc], a                                    ; $64cc: $02
    ret nc                                        ; $64cd: $d0

    inc de                                        ; $64ce: $13
    and e                                         ; $64cf: $a3
    sub b                                         ; $64d0: $90
    and b                                         ; $64d1: $a0
    ret nz                                        ; $64d2: $c0

    rst $10                                       ; $64d3: $d7
    jr nz, jr_07c_64ae                            ; $64d4: $20 $d8

    ld d, l                                       ; $64d6: $55
    ld d, c                                       ; $64d7: $51
    ld [hl], e                                    ; $64d8: $73
    sub b                                         ; $64d9: $90
    and b                                         ; $64da: $a0
    ret nz                                        ; $64db: $c0

    rst $10                                       ; $64dc: $d7
    ld d, b                                       ; $64dd: $50
    ld [hl-], a                                   ; $64de: $32
    ret nc                                        ; $64df: $d0

    ld bc, $d828                                  ; $64e0: $01 $28 $d8
    ret                                           ; $64e3: $c9


    rst $10                                       ; $64e4: $d7
    jr c, @-$25                                   ; $64e5: $38 $d9

    add hl, sp                                    ; $64e7: $39
    reti                                          ; $64e8: $d9


    jr c, jr_07c_64c4                             ; $64e9: $38 $d9

    add hl, sp                                    ; $64eb: $39
    reti                                          ; $64ec: $d9


    jr c, jr_07c_64c8                             ; $64ed: $38 $d9

    add hl, sp                                    ; $64ef: $39
    reti                                          ; $64f0: $d9


    jr c, jr_07c_64fc                             ; $64f1: $38 $09

    ret c                                         ; $64f3: $d8

    ld a, b                                       ; $64f4: $78
    reti                                          ; $64f5: $d9


    ld a, c                                       ; $64f6: $79
    reti                                          ; $64f7: $d9


    ld a, b                                       ; $64f8: $78
    reti                                          ; $64f9: $d9


    ld a, c                                       ; $64fa: $79
    reti                                          ; $64fb: $d9


jr_07c_64fc:
    ld a, b                                       ; $64fc: $78

jr_07c_64fd:
    reti                                          ; $64fd: $d9


    ld a, c                                       ; $64fe: $79
    reti                                          ; $64ff: $d9


    ld a, b                                       ; $6500: $78
    add hl, bc                                    ; $6501: $09
    sbc b                                         ; $6502: $98
    reti                                          ; $6503: $d9


    sbc c                                         ; $6504: $99
    sub l                                         ; $6505: $95
    and l                                         ; $6506: $a5
    sub [hl]                                      ; $6507: $96
    ret nc                                        ; $6508: $d0

    inc de                                        ; $6509: $13
    ld [hl], b                                    ; $650a: $70
    sub b                                         ; $650b: $90
    and d                                         ; $650c: $a2
    add sp, $03                                   ; $650d: $e8 $03
    ld d, b                                       ; $650f: $50
    add sp, $07                                   ; $6510: $e8 $07
    ld d, e                                       ; $6512: $53
    ld [hl], d                                    ; $6513: $72
    add sp, $03                                   ; $6514: $e8 $03
    ld [hl], b                                    ; $6516: $70
    add sp, $07                                   ; $6517: $e8 $07
    and b                                         ; $6519: $a0
    sub b                                         ; $651a: $90
    ld [hl], b                                    ; $651b: $70
    sub b                                         ; $651c: $90
    and a                                         ; $651d: $a7
    ldh [$e6], a                                  ; $651e: $e0 $e6
    or b                                          ; $6520: $b0
    rst $10                                       ; $6521: $d7
    ld [hl+], a                                   ; $6522: $22
    jr nz, jr_07c_64fd                            ; $6523: $20 $d8

    ret nz                                        ; $6525: $c0

    rst $10                                       ; $6526: $d7
    jr nz, jr_07c_6559                            ; $6527: $20 $30

    ld d, b                                       ; $6529: $50
    ret c                                         ; $652a: $d8

    and d                                         ; $652b: $a2
    and b                                         ; $652c: $a0
    rst $10                                       ; $652d: $d7
    ld d, e                                       ; $652e: $53
    ld h, d                                       ; $652f: $62
    ret nc                                        ; $6530: $d0

    ld bc, $3958                                  ; $6531: $01 $58 $39
    ret nc                                        ; $6534: $d0

    inc de                                        ; $6535: $13
    ld d, c                                       ; $6536: $51
    ret c                                         ; $6537: $d8

    and c                                         ; $6538: $a1
    rst $10                                       ; $6539: $d7
    ld [hl-], a                                   ; $653a: $32
    ret nc                                        ; $653b: $d0

    ld bc, $d828                                  ; $653c: $01 $28 $d8
    ret                                           ; $653f: $c9


    ret nc                                        ; $6540: $d0

    inc de                                        ; $6541: $13
    rst $10                                       ; $6542: $d7
    ld hl, $a1d8                                  ; $6543: $21 $d8 $a1
    jp $d7c0                                      ; $6546: $c3 $c0 $d7


    jr nz, jr_07c_657b                            ; $6549: $20 $30

    ld [hl], b                                    ; $654b: $70
    ret nc                                        ; $654c: $d0

    ld bc, $d958                                  ; $654d: $01 $58 $d9
    ld e, c                                       ; $6550: $59
    reti                                          ; $6551: $d9


    ld e, b                                       ; $6552: $58
    reti                                          ; $6553: $d9


    ld e, c                                       ; $6554: $59
    reti                                          ; $6555: $d9


    ld e, b                                       ; $6556: $58
    reti                                          ; $6557: $d9


    ld e, c                                       ; $6558: $59

jr_07c_6559:
    reti                                          ; $6559: $d9


    ld e, b                                       ; $655a: $58
    add hl, bc                                    ; $655b: $09

jr_07c_655c:
    ret nc                                        ; $655c: $d0

    inc de                                        ; $655d: $13
    jr nc, jr_07c_6580                            ; $655e: $30 $20

    ret c                                         ; $6560: $d8

    ret nz                                        ; $6561: $c0

jr_07c_6562:
    rst $10                                       ; $6562: $d7
    jr nz, @-$26                                  ; $6563: $20 $d8

    and c                                         ; $6565: $a1
    nop                                           ; $6566: $00
    ret nc                                        ; $6567: $d0

    ld bc, $a9a8                                  ; $6568: $01 $a8 $a9
    ret nc                                        ; $656b: $d0

    inc de                                        ; $656c: $13
    rst $10                                       ; $656d: $d7
    ld d, e                                       ; $656e: $53
    ret c                                         ; $656f: $d8

    and c                                         ; $6570: $a1
    nop                                           ; $6571: $00
    ret nc                                        ; $6572: $d0

    ld bc, $a9a8                                  ; $6573: $01 $a8 $a9
    rst $10                                       ; $6576: $d7
    adc b                                         ; $6577: $88
    reti                                          ; $6578: $d9


    adc c                                         ; $6579: $89
    reti                                          ; $657a: $d9


jr_07c_657b:
    adc b                                         ; $657b: $88
    ld a, c                                       ; $657c: $79
    reti                                          ; $657d: $d9


    ld a, b                                       ; $657e: $78
    reti                                          ; $657f: $d9


jr_07c_6580:
    ld a, c                                       ; $6580: $79
    jr c, jr_07c_655c                             ; $6581: $38 $d9

    add hl, sp                                    ; $6583: $39
    ret nc                                        ; $6584: $d0

    inc de                                        ; $6585: $13
    ld d, a                                       ; $6586: $57
    inc [hl]                                      ; $6587: $34
    jr nz, jr_07c_6562                            ; $6588: $20 $d8

    ret nz                                        ; $658a: $c0

    sub b                                         ; $658b: $90
    sbc $ff                                       ; $658c: $de $ff
    ret nc                                        ; $658e: $d0

    inc de                                        ; $658f: $13
    call c, $ea11                                 ; $6590: $dc $11 $ea

jr_07c_6593:
    ld bc, $19eb                                  ; $6593: $01 $eb $19
    and $90                                       ; $6596: $e6 $90
    add sp, $07                                   ; $6598: $e8 $07

jr_07c_659a:
    push hl                                       ; $659a: $e5
    ld b, b                                       ; $659b: $40
    db $d3                                        ; $659c: $d3
    ld d, b                                       ; $659d: $50
    ret c                                         ; $659e: $d8

    and b                                         ; $659f: $a0
    rst $10                                       ; $65a0: $d7
    jr nz, jr_07c_65f3                            ; $65a1: $20 $50

    ret c                                         ; $65a3: $d8

    sub b                                         ; $65a4: $90

jr_07c_65a5:
    rst $10                                       ; $65a5: $d7
    jr nz, jr_07c_65f8                            ; $65a6: $20 $50

    ret c                                         ; $65a8: $d8

    sub b                                         ; $65a9: $90
    ld [hl], b                                    ; $65aa: $70

jr_07c_65ab:
    and b                                         ; $65ab: $a0
    rst $10                                       ; $65ac: $d7
    rst $10                                       ; $65ad: $d7
    ld d, b                                       ; $65ae: $50
    ret c                                         ; $65af: $d8

    ret c                                         ; $65b0: $d8

    ld [hl], b                                    ; $65b1: $70
    ld d, b                                       ; $65b2: $50
    sub b                                         ; $65b3: $90
    rst $10                                       ; $65b4: $d7
    rst $10                                       ; $65b5: $d7
    ld d, b                                       ; $65b6: $50
    ret c                                         ; $65b7: $d8

    ret nz                                        ; $65b8: $c0

    jr nc, jr_07c_6593                            ; $65b9: $30 $d8

    ld [hl], b                                    ; $65bb: $70

jr_07c_65bc:
    and b                                         ; $65bc: $a0
    rst $10                                       ; $65bd: $d7
    jr nc, jr_07c_6610                            ; $65be: $30 $50

    jr nz, jr_07c_659a                            ; $65c0: $20 $d8

    sub b                                         ; $65c2: $90
    ld d, b                                       ; $65c3: $50
    ret nz                                        ; $65c4: $c0

    jr nc, jr_07c_6637                            ; $65c5: $30 $70

    ret nz                                        ; $65c7: $c0

    and b                                         ; $65c8: $a0
    ld d, b                                       ; $65c9: $50
    rst $10                                       ; $65ca: $d7
    jr nz, jr_07c_65a5                            ; $65cb: $20 $d8

    and b                                         ; $65cd: $a0
    ld [hl], b                                    ; $65ce: $70
    and b                                         ; $65cf: $a0
    rst $10                                       ; $65d0: $d7
    jr nc, jr_07c_65ab                            ; $65d1: $30 $d8

    ld [hl], b                                    ; $65d3: $70
    ld d, b                                       ; $65d4: $50
    sub b                                         ; $65d5: $90
    ret nz                                        ; $65d6: $c0

    ld d, b                                       ; $65d7: $50
    and b                                         ; $65d8: $a0
    rst $10                                       ; $65d9: $d7
    jr nz, jr_07c_662c                            ; $65da: $20 $50

jr_07c_65dc:
    ret c                                         ; $65dc: $d8

    and b                                         ; $65dd: $a0
    ld d, b                                       ; $65de: $50
    sub b                                         ; $65df: $90
    ret nz                                        ; $65e0: $c0

    rst $10                                       ; $65e1: $d7
    rst $10                                       ; $65e2: $d7
    ld d, b                                       ; $65e3: $50
    ret c                                         ; $65e4: $d8

    ret c                                         ; $65e5: $d8

    jr nc, jr_07c_6658                            ; $65e6: $30 $70

    and b                                         ; $65e8: $a0
    rst $10                                       ; $65e9: $d7
    jr nc, jr_07c_65bc                            ; $65ea: $30 $d0

    ld bc, $58d8                                  ; $65ec: $01 $d8 $58
    xor c                                         ; $65ef: $a9
    ret z                                         ; $65f0: $c8

    rst $10                                       ; $65f1: $d7
    ld e, c                                       ; $65f2: $59

jr_07c_65f3:
    ret c                                         ; $65f3: $d8

    ld e, b                                       ; $65f4: $58
    sbc c                                         ; $65f5: $99
    ret z                                         ; $65f6: $c8

    rst $10                                       ; $65f7: $d7

jr_07c_65f8:
    ld e, c                                       ; $65f8: $59
    ret nc                                        ; $65f9: $d0

    inc de                                        ; $65fa: $13

jr_07c_65fb:
    ret c                                         ; $65fb: $d8

    and b                                         ; $65fc: $a0
    ld d, b                                       ; $65fd: $50
    and b                                         ; $65fe: $a0
    rst $10                                       ; $65ff: $d7
    jr nz, jr_07c_6652                            ; $6600: $20 $50

jr_07c_6602:
    jr nz, jr_07c_65dc                            ; $6602: $20 $d8

    and b                                         ; $6604: $a0
    ld d, b                                       ; $6605: $50
    db $d3                                        ; $6606: $d3
    ld d, b                                       ; $6607: $50
    ret c                                         ; $6608: $d8

    and b                                         ; $6609: $a0
    rst $10                                       ; $660a: $d7
    jr nz, jr_07c_665d                            ; $660b: $20 $50

jr_07c_660d:
    ret c                                         ; $660d: $d8

    sub b                                         ; $660e: $90
    rst $10                                       ; $660f: $d7

jr_07c_6610:
    jr nz, jr_07c_6662                            ; $6610: $20 $50

    ret c                                         ; $6612: $d8

jr_07c_6613:
    sub b                                         ; $6613: $90
    ld [hl], b                                    ; $6614: $70
    and b                                         ; $6615: $a0
    rst $10                                       ; $6616: $d7
    ld d, b                                       ; $6617: $50
    ret c                                         ; $6618: $d8

    ld [hl], b                                    ; $6619: $70
    ld d, b                                       ; $661a: $50
    sub b                                         ; $661b: $90
    rst $10                                       ; $661c: $d7
    ld d, b                                       ; $661d: $50
    ret c                                         ; $661e: $d8

    ret nz                                        ; $661f: $c0

    rst $10                                       ; $6620: $d7
    jr nc, jr_07c_65fb                            ; $6621: $30 $d8

    ld [hl], b                                    ; $6623: $70

jr_07c_6624:
    and b                                         ; $6624: $a0
    rst $10                                       ; $6625: $d7
    jr nc, jr_07c_6678                            ; $6626: $30 $50

    jr nz, jr_07c_6602                            ; $6628: $20 $d8

    sub b                                         ; $662a: $90
    ld d, b                                       ; $662b: $50

jr_07c_662c:
    ret nz                                        ; $662c: $c0

    jr nc, jr_07c_669f                            ; $662d: $30 $70

    ret nz                                        ; $662f: $c0

    and b                                         ; $6630: $a0
    ld d, b                                       ; $6631: $50
    rst $10                                       ; $6632: $d7
    jr nz, jr_07c_660d                            ; $6633: $20 $d8

    and b                                         ; $6635: $a0
    ld [hl], b                                    ; $6636: $70

jr_07c_6637:
    and b                                         ; $6637: $a0
    rst $10                                       ; $6638: $d7
    jr nc, jr_07c_6613                            ; $6639: $30 $d8

    ld [hl], b                                    ; $663b: $70
    ld d, b                                       ; $663c: $50
    sub b                                         ; $663d: $90
    ret nz                                        ; $663e: $c0

    ld d, b                                       ; $663f: $50
    and b                                         ; $6640: $a0
    rst $10                                       ; $6641: $d7
    jr nz, jr_07c_6694                            ; $6642: $20 $50

jr_07c_6644:
    ret c                                         ; $6644: $d8

    and b                                         ; $6645: $a0
    ld d, b                                       ; $6646: $50
    sub b                                         ; $6647: $90
    ret nz                                        ; $6648: $c0

    rst $10                                       ; $6649: $d7
    rst $10                                       ; $664a: $d7
    ld d, b                                       ; $664b: $50
    ret c                                         ; $664c: $d8

    ret c                                         ; $664d: $d8

    jr nc, jr_07c_66c0                            ; $664e: $30 $70

    and b                                         ; $6650: $a0
    rst $10                                       ; $6651: $d7

jr_07c_6652:
    jr nc, jr_07c_6624                            ; $6652: $30 $d0

    ld bc, $58d8                                  ; $6654: $01 $d8 $58
    xor c                                         ; $6657: $a9

jr_07c_6658:
    ret z                                         ; $6658: $c8

    rst $10                                       ; $6659: $d7
    ld e, c                                       ; $665a: $59
    ret c                                         ; $665b: $d8

    ld e, b                                       ; $665c: $58

jr_07c_665d:
    sbc c                                         ; $665d: $99
    ret z                                         ; $665e: $c8

    rst $10                                       ; $665f: $d7
    ld e, c                                       ; $6660: $59
    ret nc                                        ; $6661: $d0

jr_07c_6662:
    inc de                                        ; $6662: $13
    ret c                                         ; $6663: $d8

    and b                                         ; $6664: $a0
    ld d, b                                       ; $6665: $50
    and b                                         ; $6666: $a0
    rst $10                                       ; $6667: $d7
    jr nz, jr_07c_66ba                            ; $6668: $20 $50

    jr nz, jr_07c_6644                            ; $666a: $20 $d8

    and b                                         ; $666c: $a0
    ld d, b                                       ; $666d: $50
    push hl                                       ; $666e: $e5
    add b                                         ; $666f: $80
    and $80                                       ; $6670: $e6 $80
    db $d3                                        ; $6672: $d3
    and d                                         ; $6673: $a2
    and b                                         ; $6674: $a0
    sub b                                         ; $6675: $90
    and b                                         ; $6676: $a0
    ret nz                                        ; $6677: $c0

jr_07c_6678:
    rst $10                                       ; $6678: $d7
    jr nz, @-$26                                  ; $6679: $20 $d8

    ld d, d                                       ; $667b: $52
    ld d, b                                       ; $667c: $50
    and e                                         ; $667d: $a3
    rst $10                                       ; $667e: $d7
    ld [hl-], a                                   ; $667f: $32
    ret nc                                        ; $6680: $d0

    ld bc, $d828                                  ; $6681: $01 $28 $d8
    ret                                           ; $6684: $c9


    ret nc                                        ; $6685: $d0

    inc de                                        ; $6686: $13
    rst $10                                       ; $6687: $d7
    ld hl, $51d8                                  ; $6688: $21 $d8 $51
    jp nz, Jump_000_01d0                          ; $668b: $c2 $d0 $01

    xor b                                         ; $668e: $a8
    sbc c                                         ; $668f: $99
    ret nc                                        ; $6690: $d0

    inc de                                        ; $6691: $13
    and c                                         ; $6692: $a1
    ld d, c                                       ; $6693: $51

jr_07c_6694:
    ld d, e                                       ; $6694: $53
    ld d, b                                       ; $6695: $50
    and b                                         ; $6696: $a0
    ret nz                                        ; $6697: $c0

    rst $10                                       ; $6698: $d7
    jr nc, @-$2e                                  ; $6699: $30 $d0

    ld bc, $c8d8                                  ; $669b: $01 $d8 $c8
    reti                                          ; $669e: $d9


jr_07c_669f:
    ret                                           ; $669f: $c9


    reti                                          ; $66a0: $d9


    ret z                                         ; $66a1: $c8

    reti                                          ; $66a2: $d9


jr_07c_66a3:
    ret                                           ; $66a3: $c9


    reti                                          ; $66a4: $d9


    ret z                                         ; $66a5: $c8

    reti                                          ; $66a6: $d9


    ret                                           ; $66a7: $c9


    reti                                          ; $66a8: $d9


    ret z                                         ; $66a9: $c8

    add hl, bc                                    ; $66aa: $09
    ret nc                                        ; $66ab: $d0

    inc de                                        ; $66ac: $13
    ret nz                                        ; $66ad: $c0

    and b                                         ; $66ae: $a0
    sub b                                         ; $66af: $90
    and b                                         ; $66b0: $a0
    ld d, c                                       ; $66b1: $51
    nop                                           ; $66b2: $00
    ret nc                                        ; $66b3: $d0

    ld bc, $5958                                  ; $66b4: $01 $58 $59
    ret nc                                        ; $66b7: $d0

    inc de                                        ; $66b8: $13
    and e                                         ; $66b9: $a3

jr_07c_66ba:
    ld d, c                                       ; $66ba: $51
    nop                                           ; $66bb: $00
    ret nc                                        ; $66bc: $d0

    ld bc, $5958                                  ; $66bd: $01 $58 $59

jr_07c_66c0:
    rst $10                                       ; $66c0: $d7
    jr c, @-$25                                   ; $66c1: $38 $d9

    add hl, sp                                    ; $66c3: $39
    reti                                          ; $66c4: $d9


    jr c, jr_07c_6700                             ; $66c5: $38 $39

    reti                                          ; $66c7: $d9


    jr c, jr_07c_66a3                             ; $66c8: $38 $d9

    add hl, sp                                    ; $66ca: $39
    ret c                                         ; $66cb: $d8

    xor b                                         ; $66cc: $a8

jr_07c_66cd:
    reti                                          ; $66cd: $d9


    xor c                                         ; $66ce: $a9
    ret nc                                        ; $66cf: $d0

    inc de                                        ; $66d0: $13
    and a                                         ; $66d1: $a7
    call nz, $90a0                                ; $66d2: $c4 $a0 $90
    ld d, b                                       ; $66d5: $50
    sbc $ff                                       ; $66d6: $de $ff
    ret nc                                        ; $66d8: $d0

    inc de                                        ; $66d9: $13
    jp hl                                         ; $66da: $e9


    nop                                           ; $66db: $00
    call c, $e711                                 ; $66dc: $dc $11 $e7
    ld bc, $20e6                                  ; $66df: $01 $e6 $20
    add sp, $07                                   ; $66e2: $e8 $07
    pop de                                        ; $66e4: $d1
    rst $18                                       ; $66e5: $df
    ld [bc], a                                    ; $66e6: $02
    and d                                         ; $66e7: $a2
    and b                                         ; $66e8: $a0
    sub d                                         ; $66e9: $92
    sub b                                         ; $66ea: $90
    ld [hl], d                                    ; $66eb: $72
    ld [hl], b                                    ; $66ec: $70
    ld d, d                                       ; $66ed: $52
    ld d, b                                       ; $66ee: $50
    rst $10                                       ; $66ef: $d7
    ld [hl-], a                                   ; $66f0: $32
    jr nc, jr_07c_6715                            ; $66f1: $30 $22

    jr nz, jr_07c_66cd                            ; $66f3: $20 $d8

    jp nz, $a1c0                                  ; $66f5: $c2 $c0 $a1

    and c                                         ; $66f8: $a1
    rst $10                                       ; $66f9: $d7
    ld [hl-], a                                   ; $66fa: $32
    jr nc, jr_07c_674e                            ; $66fb: $30 $51

    ret c                                         ; $66fd: $d8

    ld d, c                                       ; $66fe: $51
    and d                                         ; $66ff: $a2

jr_07c_6700:
    and b                                         ; $6700: $a0
    ld d, c                                       ; $6701: $51
    ld d, c                                       ; $6702: $51
    ld [hl-], a                                   ; $6703: $32
    jr nc, jr_07c_6757                            ; $6704: $30 $51

    ld d, c                                       ; $6706: $51
    and d                                         ; $6707: $a2
    and b                                         ; $6708: $a0
    ld d, c                                       ; $6709: $51
    and b                                         ; $670a: $a0
    ld d, b                                       ; $670b: $50
    ldh [$a0], a                                  ; $670c: $e0 $a0
    and b                                         ; $670e: $a0
    and b                                         ; $670f: $a0
    and b                                         ; $6710: $a0
    sub b                                         ; $6711: $90
    sub b                                         ; $6712: $90
    sub b                                         ; $6713: $90
    sub b                                         ; $6714: $90

jr_07c_6715:
    ld [hl], b                                    ; $6715: $70
    ld [hl], b                                    ; $6716: $70
    ld [hl], b                                    ; $6717: $70
    ld [hl], b                                    ; $6718: $70
    ld d, b                                       ; $6719: $50
    ld d, b                                       ; $671a: $50
    ld d, b                                       ; $671b: $50
    ld d, b                                       ; $671c: $50
    rst $10                                       ; $671d: $d7
    jr nc, jr_07c_6750                            ; $671e: $30 $30

    jr nc, jr_07c_6752                            ; $6720: $30 $30

    jr nz, jr_07c_6744                            ; $6722: $20 $20

    jr nz, jr_07c_6746                            ; $6724: $20 $20

    ret c                                         ; $6726: $d8

    ret nz                                        ; $6727: $c0

    ret nz                                        ; $6728: $c0

    ret nz                                        ; $6729: $c0

    ret nz                                        ; $672a: $c0

    and b                                         ; $672b: $a0
    and b                                         ; $672c: $a0
    and b                                         ; $672d: $a0
    and b                                         ; $672e: $a0
    sub b                                         ; $672f: $90
    sub b                                         ; $6730: $90
    sub b                                         ; $6731: $90
    sub b                                         ; $6732: $90
    ld [hl], b                                    ; $6733: $70
    ld [hl], b                                    ; $6734: $70
    ld [hl], b                                    ; $6735: $70
    ld [hl], b                                    ; $6736: $70
    ld d, b                                       ; $6737: $50
    ld d, b                                       ; $6738: $50
    ld d, b                                       ; $6739: $50
    ld d, b                                       ; $673a: $50
    rst $10                                       ; $673b: $d7
    jr nc, jr_07c_676e                            ; $673c: $30 $30

    jr nc, jr_07c_6770                            ; $673e: $30 $30

    ret c                                         ; $6740: $d8

    and b                                         ; $6741: $a0
    and b                                         ; $6742: $a0
    and b                                         ; $6743: $a0

jr_07c_6744:
    and b                                         ; $6744: $a0
    sub b                                         ; $6745: $90

jr_07c_6746:
    sub b                                         ; $6746: $90
    sub b                                         ; $6747: $90
    sub b                                         ; $6748: $90
    ld [hl], b                                    ; $6749: $70
    ld [hl], b                                    ; $674a: $70
    ld [hl], b                                    ; $674b: $70
    ld [hl], b                                    ; $674c: $70
    rst $10                                       ; $674d: $d7

jr_07c_674e:
    jr nc, @+$32                                  ; $674e: $30 $30

jr_07c_6750:
    jr nc, jr_07c_6782                            ; $6750: $30 $30

jr_07c_6752:
    ret c                                         ; $6752: $d8

    and b                                         ; $6753: $a0
    and b                                         ; $6754: $a0
    and b                                         ; $6755: $a0
    and b                                         ; $6756: $a0

jr_07c_6757:
    sub b                                         ; $6757: $90
    sub b                                         ; $6758: $90
    sub b                                         ; $6759: $90
    sub b                                         ; $675a: $90
    ld [hl], b                                    ; $675b: $70
    ld [hl], b                                    ; $675c: $70
    ld [hl], b                                    ; $675d: $70
    ld [hl], b                                    ; $675e: $70
    ld d, b                                       ; $675f: $50
    ld d, b                                       ; $6760: $50
    ld [hl], b                                    ; $6761: $70
    sub b                                         ; $6762: $90
    sbc $ff                                       ; $6763: $de $ff
    ret nc                                        ; $6765: $d0

    ld bc, $dfd1                                  ; $6766: $01 $d1 $df
    inc bc                                        ; $6769: $03
    ld [c], a                                     ; $676a: $e2
    sbc [hl]                                      ; $676b: $9e
    ld h, a                                       ; $676c: $67
    ld [c], a                                     ; $676d: $e2

jr_07c_676e:
    or a                                          ; $676e: $b7
    ld h, a                                       ; $676f: $67

jr_07c_6770:
    ld [c], a                                     ; $6770: $e2
    sbc [hl]                                      ; $6771: $9e
    ld h, a                                       ; $6772: $67
    ld [c], a                                     ; $6773: $e2
    sbc [hl]                                      ; $6774: $9e
    ld h, a                                       ; $6775: $67
    ld [c], a                                     ; $6776: $e2
    sbc [hl]                                      ; $6777: $9e
    ld h, a                                       ; $6778: $67
    ld [c], a                                     ; $6779: $e2
    or a                                          ; $677a: $b7
    ld h, a                                       ; $677b: $67
    ld [c], a                                     ; $677c: $e2
    sbc [hl]                                      ; $677d: $9e
    ld h, a                                       ; $677e: $67
    jr jr_07c_678a                                ; $677f: $18 $09

    rst $10                                       ; $6781: $d7

jr_07c_6782:
    adc b                                         ; $6782: $88
    ret c                                         ; $6783: $d8

    add hl, bc                                    ; $6784: $09
    jr jr_07c_6790                                ; $6785: $18 $09

    rst $10                                       ; $6787: $d7
    adc b                                         ; $6788: $88
    ret c                                         ; $6789: $d8

jr_07c_678a:
    add hl, bc                                    ; $678a: $09
    jr @+$0b                                      ; $678b: $18 $09

    rst $10                                       ; $678d: $d7
    adc b                                         ; $678e: $88
    ret c                                         ; $678f: $d8

jr_07c_6790:
    add hl, bc                                    ; $6790: $09
    jr jr_07c_679c                                ; $6791: $18 $09

    jr c, jr_07c_67ce                             ; $6793: $38 $39

    ldh [$e2], a                                  ; $6795: $e0 $e2
    sbc [hl]                                      ; $6797: $9e
    ld h, a                                       ; $6798: $67
    ld [c], a                                     ; $6799: $e2
    or a                                          ; $679a: $b7
    ld h, a                                       ; $679b: $67

jr_07c_679c:
    sbc $ff                                       ; $679c: $de $ff
    jr jr_07c_67a9                                ; $679e: $18 $09

    rst $10                                       ; $67a0: $d7
    adc b                                         ; $67a1: $88
    ret c                                         ; $67a2: $d8

    add hl, bc                                    ; $67a3: $09
    jr jr_07c_67af                                ; $67a4: $18 $09

    rst $10                                       ; $67a6: $d7
    adc b                                         ; $67a7: $88
    ret c                                         ; $67a8: $d8

jr_07c_67a9:
    add hl, bc                                    ; $67a9: $09
    jr jr_07c_67b5                                ; $67aa: $18 $09

    rst $10                                       ; $67ac: $d7
    adc b                                         ; $67ad: $88
    ret c                                         ; $67ae: $d8

jr_07c_67af:
    add hl, bc                                    ; $67af: $09
    jr jr_07c_67bb                                ; $67b0: $18 $09

    rst $10                                       ; $67b2: $d7
    adc b                                         ; $67b3: $88
    adc c                                         ; $67b4: $89

jr_07c_67b5:
    ret c                                         ; $67b5: $d8

    db $e3                                        ; $67b6: $e3
    jr jr_07c_67c2                                ; $67b7: $18 $09

    rst $10                                       ; $67b9: $d7
    adc b                                         ; $67ba: $88

jr_07c_67bb:
    ret c                                         ; $67bb: $d8

    add hl, bc                                    ; $67bc: $09
    jr jr_07c_67c8                                ; $67bd: $18 $09

    rst $10                                       ; $67bf: $d7
    adc b                                         ; $67c0: $88
    ret c                                         ; $67c1: $d8

jr_07c_67c2:
    add hl, bc                                    ; $67c2: $09
    jr jr_07c_67ce                                ; $67c3: $18 $09

    rst $10                                       ; $67c5: $d7
    adc b                                         ; $67c6: $88
    ret c                                         ; $67c7: $d8

jr_07c_67c8:
    add hl, bc                                    ; $67c8: $09
    jr c, @+$0b                                   ; $67c9: $38 $09

    rst $10                                       ; $67cb: $d7
    adc b                                         ; $67cc: $88
    adc c                                         ; $67cd: $89

jr_07c_67ce:
    ret c                                         ; $67ce: $d8

    db $e3                                        ; $67cf: $e3

    db $d0, $01, $dc, $11, $ea, $01, $eb, $1e, $e5, $80, $e6, $b0, $e8, $07, $ee, $33
    db $d3, $e2, $a4, $68, $d4, $58, $d9, $59, $d9, $59, $d9, $59, $e2, $20, $69, $d4
    db $38, $d9, $39, $09, $39, $d9, $38, $09, $39, $d9, $39, $58, $79, $09, $59, $d9
    db $58, $d9, $59, $d9, $59, $d9, $59, $d9, $58, $d9, $59, $d9, $59, $d9, $59, $d9
    db $58, $d9, $59, $09, $09, $e2, $20, $69, $d4, $38, $d9, $39, $09, $29, $d9, $28
    db $09, $d8, $c9, $d9, $c9, $a8, $99, $d9, $99, $a9, $d9, $a8, $d9, $a9, $d9, $a9
    db $d9, $a9, $d9, $a8, $d9, $a9, $d9, $a9, $d9, $a9, $d9, $a8, $d9, $a9, $d9, $a9
    db $d9, $a9, $e2, $a4, $68

    call nc, $d958                                ; $6845: $d4 $58 $d9
    ld e, c                                       ; $6848: $59
    reti                                          ; $6849: $d9


    ld e, c                                       ; $684a: $59
    reti                                          ; $684b: $d9


jr_07c_684c:
    ld e, c                                       ; $684c: $59
    ld [c], a                                     ; $684d: $e2
    ld c, c                                       ; $684e: $49
    ld l, c                                       ; $684f: $69
    call nc, $d938                                ; $6850: $d4 $38 $d9
    add hl, sp                                    ; $6853: $39
    add hl, hl                                    ; $6854: $29
    add hl, sp                                    ; $6855: $39
    reti                                          ; $6856: $d9


    jr c, @+$5b                                   ; $6857: $38 $59

    add hl, sp                                    ; $6859: $39
    reti                                          ; $685a: $d9


    add hl, sp                                    ; $685b: $39
    jr z, @-$26                                   ; $685c: $28 $d8

    ret                                           ; $685e: $c9


    reti                                          ; $685f: $d9


    ret                                           ; $6860: $c9


    rst $10                                       ; $6861: $d7
    add hl, hl                                    ; $6862: $29
    ld [$3909], sp                                ; $6863: $08 $09 $39
    reti                                          ; $6866: $d9


    add hl, sp                                    ; $6867: $39
    reti                                          ; $6868: $d9


    jr c, @-$25                                   ; $6869: $38 $d9

    add hl, sp                                    ; $686b: $39
    reti                                          ; $686c: $d9


    add hl, sp                                    ; $686d: $39
    reti                                          ; $686e: $d9


jr_07c_686f:
    add hl, sp                                    ; $686f: $39
    reti                                          ; $6870: $d9


    jr c, jr_07c_684c                             ; $6871: $38 $d9

    add hl, sp                                    ; $6873: $39
    reti                                          ; $6874: $d9


    add hl, sp                                    ; $6875: $39
    reti                                          ; $6876: $d9


jr_07c_6877:
    add hl, sp                                    ; $6877: $39
    ld [c], a                                     ; $6878: $e2
    ld c, c                                       ; $6879: $49
    ld l, c                                       ; $687a: $69
    call nc, $d978                                ; $687b: $d4 $78 $d9
    ld a, c                                       ; $687e: $79
    ld e, c                                       ; $687f: $59
    add hl, sp                                    ; $6880: $39
    reti                                          ; $6881: $d9


    jr c, @+$2b                                   ; $6882: $38 $29

    ret c                                         ; $6884: $d8

    ret                                           ; $6885: $c9


    reti                                          ; $6886: $d9


    ret                                           ; $6887: $c9


    xor b                                         ; $6888: $a8
    ret                                           ; $6889: $c9


    reti                                          ; $688a: $d9


    ret                                           ; $688b: $c9


    rst $10                                       ; $688c: $d7
    add hl, hl                                    ; $688d: $29
    ld [$3909], sp                                ; $688e: $08 $09 $39
    reti                                          ; $6891: $d9


    add hl, sp                                    ; $6892: $39
    reti                                          ; $6893: $d9


    jr c, jr_07c_686f                             ; $6894: $38 $d9

    add hl, sp                                    ; $6896: $39
    reti                                          ; $6897: $d9


    add hl, sp                                    ; $6898: $39
    reti                                          ; $6899: $d9


    add hl, sp                                    ; $689a: $39
    reti                                          ; $689b: $d9


    jr c, jr_07c_6877                             ; $689c: $38 $d9

    add hl, sp                                    ; $689e: $39
    reti                                          ; $689f: $d9


    add hl, sp                                    ; $68a0: $39
    reti                                          ; $68a1: $d9


    add hl, sp                                    ; $68a2: $39
    db $de                                        ; $68a3: $de

    db $d3, $e2, $f8, $68, $d4, $08, $09, $44, $54, $d9, $59, $08, $d8, $39, $d9, $39
    db $09, $28, $d9, $29, $09, $39, $43, $54, $d9, $59, $d9, $59, $d9, $59, $d9, $58
    db $d9, $59, $d9, $59, $d9, $59, $d9, $58, $d9, $59, $d9, $59, $d9, $59, $e2, $f8
    db $68, $d4, $08, $09, $44, $54, $d9, $59, $08, $29, $d9, $29, $09, $38, $d9, $39
    db $09, $59, $43, $54, $d9, $59, $d9, $59, $d9, $59, $d9, $58, $d9, $59, $d9, $59
    db $d9, $59, $d9, $e3, $d3, $58, $d9, $59, $99, $a9, $d9, $a8, $c9, $d9, $c9, $09
    db $d7, $23, $34, $d9, $39, $09, $29, $d8, $c8, $d9, $c9, $a9, $99, $d9, $98, $a9
    db $09, $09, $d7, $43, $54, $d9, $59, $d9, $59, $d8, $59, $e3, $d4, $38, $d9, $39
    db $09, $39, $d9, $38, $09, $39, $d9, $39, $28, $39, $09, $59, $d9, $58, $d9, $59
    db $d9, $59, $d9, $59, $d9, $58, $d8, $a9, $d9, $a9, $d9, $a9, $d9, $a8, $d9, $a9
    db $d9, $a9, $d9, $a9, $e3

    call nc, $d938                                ; $6949: $d4 $38 $d9
    add hl, sp                                    ; $694c: $39
    add hl, hl                                    ; $694d: $29
    ret c                                         ; $694e: $d8

    ret                                           ; $694f: $c9


    reti                                          ; $6950: $d9


    ret z                                         ; $6951: $c8

    xor c                                         ; $6952: $a9
    sbc c                                         ; $6953: $99
    reti                                          ; $6954: $d9


    sbc c                                         ; $6955: $99
    xor b                                         ; $6956: $a8
    ret                                           ; $6957: $c9


    reti                                          ; $6958: $d9


    ret                                           ; $6959: $c9


    rst $10                                       ; $695a: $d7
    add hl, hl                                    ; $695b: $29
    ld [$3909], sp                                ; $695c: $08 $09 $39
    reti                                          ; $695f: $d9


    add hl, sp                                    ; $6960: $39
    reti                                          ; $6961: $d9


    jr c, @-$25                                   ; $6962: $38 $d9

    add hl, sp                                    ; $6964: $39
    reti                                          ; $6965: $d9


    add hl, sp                                    ; $6966: $39
    reti                                          ; $6967: $d9


    add hl, sp                                    ; $6968: $39
    reti                                          ; $6969: $d9


    jr c, @-$25                                   ; $696a: $38 $d9

    add hl, sp                                    ; $696c: $39
    reti                                          ; $696d: $d9


    add hl, sp                                    ; $696e: $39
    reti                                          ; $696f: $d9


    add hl, sp                                    ; $6970: $39
    db $e3                                        ; $6971: $e3

    db $d0, $01, $dc, $11, $ea, $01, $eb, $1e, $e5, $80, $e8, $07, $ee, $33, $d3, $09
    db $05, $e6, $60, $e2, $a4, $68, $d4, $58, $d9, $59, $d9, $53, $e6, $80, $e2, $4c
    db $6a, $d3, $a8, $d9, $a9, $09, $a9, $d9, $a8, $09, $a9, $d9, $a9, $d7, $28, $39
    db $09, $29, $d9, $28, $d9, $29, $d9, $29, $d9, $29, $d9, $28, $d9, $29, $d9, $29
    db $d9, $29, $d9, $28, $d9, $29, $09, $09, $e2, $4c, $6a, $d3, $c8, $d9, $c9, $09
    db $a9, $d9, $a8, $09, $99, $d9, $99, $78, $59, $d9, $59, $59, $d9, $58, $d9, $59
    db $d9, $59, $d9, $59, $d9, $58, $d9, $59, $d9, $59, $d9, $59, $d9, $58, $d9, $59
    db $d9, $59, $d9, $59, $09, $05, $e6, $60, $e2, $a4, $68

    call nc, $d958                                ; $69ed: $d4 $58 $d9
    ld e, c                                       ; $69f0: $59
    reti                                          ; $69f1: $d9


    ld d, e                                       ; $69f2: $53
    and $80                                       ; $69f3: $e6 $80
    ld [c], a                                     ; $69f5: $e2
    halt                                          ; $69f6: $76
    ld l, d                                       ; $69f7: $6a
    db $d3                                        ; $69f8: $d3
    ret z                                         ; $69f9: $c8

    reti                                          ; $69fa: $d9


    ret                                           ; $69fb: $c9


    xor c                                         ; $69fc: $a9
    ret                                           ; $69fd: $c9


    reti                                          ; $69fe: $d9


    ret z                                         ; $69ff: $c8

    rst $10                                       ; $6a00: $d7
    add hl, hl                                    ; $6a01: $29
    ret c                                         ; $6a02: $d8

    ret                                           ; $6a03: $c9


    reti                                          ; $6a04: $d9


    ret                                           ; $6a05: $c9


    xor b                                         ; $6a06: $a8
    sbc c                                         ; $6a07: $99
    reti                                          ; $6a08: $d9


    sbc c                                         ; $6a09: $99
    xor c                                         ; $6a0a: $a9
    ld [$c909], sp                                ; $6a0b: $08 $09 $c9
    reti                                          ; $6a0e: $d9


    ret                                           ; $6a0f: $c9


    reti                                          ; $6a10: $d9


    ret z                                         ; $6a11: $c8

    reti                                          ; $6a12: $d9


    ret                                           ; $6a13: $c9


    reti                                          ; $6a14: $d9


    ret                                           ; $6a15: $c9


    reti                                          ; $6a16: $d9


    ret                                           ; $6a17: $c9


    reti                                          ; $6a18: $d9


    ret z                                         ; $6a19: $c8

    reti                                          ; $6a1a: $d9


    ret                                           ; $6a1b: $c9


    reti                                          ; $6a1c: $d9


    ret                                           ; $6a1d: $c9


    reti                                          ; $6a1e: $d9


    ret                                           ; $6a1f: $c9


    ld [c], a                                     ; $6a20: $e2
    halt                                          ; $6a21: $76
    ld l, d                                       ; $6a22: $6a
    call nc, $d938                                ; $6a23: $d4 $38 $d9
    add hl, sp                                    ; $6a26: $39
    add hl, hl                                    ; $6a27: $29
    ret c                                         ; $6a28: $d8

    ret                                           ; $6a29: $c9


    reti                                          ; $6a2a: $d9


    ret z                                         ; $6a2b: $c8

    xor c                                         ; $6a2c: $a9
    sbc c                                         ; $6a2d: $99
    reti                                          ; $6a2e: $d9


    sbc c                                         ; $6a2f: $99
    ld a, b                                       ; $6a30: $78
    sbc c                                         ; $6a31: $99
    reti                                          ; $6a32: $d9


    sbc c                                         ; $6a33: $99
    xor c                                         ; $6a34: $a9
    ld [$c909], sp                                ; $6a35: $08 $09 $c9
    reti                                          ; $6a38: $d9


    ret                                           ; $6a39: $c9


    reti                                          ; $6a3a: $d9


    ret z                                         ; $6a3b: $c8

    reti                                          ; $6a3c: $d9


    ret                                           ; $6a3d: $c9


    reti                                          ; $6a3e: $d9


    ret                                           ; $6a3f: $c9


    reti                                          ; $6a40: $d9


    ret                                           ; $6a41: $c9


    reti                                          ; $6a42: $d9


    ret z                                         ; $6a43: $c8

    reti                                          ; $6a44: $d9


    ret                                           ; $6a45: $c9


    reti                                          ; $6a46: $d9


    ret                                           ; $6a47: $c9


    reti                                          ; $6a48: $d9


    ret                                           ; $6a49: $c9


    sbc $ff                                       ; $6a4a: $de $ff

    db $d3, $a8, $d9, $a9, $09, $a9, $d9, $a8, $09, $a9, $d9, $a9, $78, $a9, $09, $d7
    db $29, $d9, $28, $d9, $29, $d9, $29, $d9, $29, $d9, $28, $d8, $59, $d9, $59, $d9
    db $59, $d9, $58, $d9, $59, $d9, $59, $d9, $59, $e3

    db $d3                                        ; $6a76: $d3
    ret z                                         ; $6a77: $c8

    reti                                          ; $6a78: $d9


    ret                                           ; $6a79: $c9


    xor c                                         ; $6a7a: $a9
    sbc c                                         ; $6a7b: $99
    reti                                          ; $6a7c: $d9


    sbc b                                         ; $6a7d: $98
    ld a, c                                       ; $6a7e: $79
    ld e, c                                       ; $6a7f: $59
    reti                                          ; $6a80: $d9


    ld e, c                                       ; $6a81: $59
    ld a, b                                       ; $6a82: $78
    sbc c                                         ; $6a83: $99
    reti                                          ; $6a84: $d9


    sbc c                                         ; $6a85: $99
    xor c                                         ; $6a86: $a9
    ld [$c909], sp                                ; $6a87: $08 $09 $c9
    reti                                          ; $6a8a: $d9


    ret                                           ; $6a8b: $c9


    reti                                          ; $6a8c: $d9


    ret z                                         ; $6a8d: $c8

    reti                                          ; $6a8e: $d9


    ret                                           ; $6a8f: $c9


    reti                                          ; $6a90: $d9


    ret                                           ; $6a91: $c9


    reti                                          ; $6a92: $d9


    ret                                           ; $6a93: $c9


    reti                                          ; $6a94: $d9


    ret z                                         ; $6a95: $c8

    reti                                          ; $6a96: $d9


    ret                                           ; $6a97: $c9


    reti                                          ; $6a98: $d9


    ret                                           ; $6a99: $c9


    reti                                          ; $6a9a: $d9


    ret                                           ; $6a9b: $c9


    db $e3                                        ; $6a9c: $e3

    db $d0, $01, $e9, $00, $dc, $11, $e7, $08, $e6, $20, $e8, $07, $d2, $e2, $39, $6b
    db $d2, $39, $d9, $39, $49, $e2, $39, $6b, $d1, $c9, $d9, $c9, $d9, $c9, $e2, $88
    db $6b, $d1, $58, $a9, $d9, $a9, $59, $e2, $88, $6b, $d1, $a8, $59, $d9, $59, $a9
    db $e2, $88, $6b, $d1, $58, $a9, $d9, $a9, $59, $c8, $d9, $c9, $09, $c9, $d9, $c8
    db $09, $d7, $59, $d9, $59, $d8, $58, $d7, $59, $d9, $59, $d8, $59, $a8, $d9, $a9
    db $09, $a9, $d9, $a8, $09, $a9, $d9, $a9, $d9, $a8, $59, $d9, $59, $a9, $e2, $39
    db $6b, $d2, $39, $d9, $39, $49, $e2, $39, $6b

    pop de                                        ; $6b06: $d1
    ret                                           ; $6b07: $c9


    reti                                          ; $6b08: $d9


jr_07c_6b09:
    ret                                           ; $6b09: $c9


    reti                                          ; $6b0a: $d9


    ret                                           ; $6b0b: $c9


    rst $18                                       ; $6b0c: $df
    rlca                                          ; $6b0d: $07
    ld e, b                                       ; $6b0e: $58
    reti                                          ; $6b0f: $d9


    ld e, c                                       ; $6b10: $59
    ld e, c                                       ; $6b11: $59
    rst $10                                       ; $6b12: $d7
    ld e, c                                       ; $6b13: $59
    reti                                          ; $6b14: $d9


    ld e, b                                       ; $6b15: $58
    ret c                                         ; $6b16: $d8

    ld e, c                                       ; $6b17: $59
    ld e, c                                       ; $6b18: $59
    reti                                          ; $6b19: $d9


    ld e, c                                       ; $6b1a: $59
    ld e, b                                       ; $6b1b: $58
    rst $10                                       ; $6b1c: $d7
    ld e, c                                       ; $6b1d: $59
    reti                                          ; $6b1e: $d9


    ld e, c                                       ; $6b1f: $59
    ret c                                         ; $6b20: $d8

    ld e, c                                       ; $6b21: $59
    ldh [$38], a                                  ; $6b22: $e0 $38
    reti                                          ; $6b24: $d9


    add hl, sp                                    ; $6b25: $39
    add hl, sp                                    ; $6b26: $39
    rst $10                                       ; $6b27: $d7
    add hl, sp                                    ; $6b28: $39
    reti                                          ; $6b29: $d9


    jr c, @-$26                                   ; $6b2a: $38 $d8

    add hl, sp                                    ; $6b2c: $39
    add hl, sp                                    ; $6b2d: $39
    reti                                          ; $6b2e: $d9


    add hl, sp                                    ; $6b2f: $39
    jr c, jr_07c_6b09                             ; $6b30: $38 $d7

    add hl, sp                                    ; $6b32: $39
    reti                                          ; $6b33: $d9


    add hl, sp                                    ; $6b34: $39
    ret c                                         ; $6b35: $d8

    add hl, sp                                    ; $6b36: $39
    sbc $ff                                       ; $6b37: $de $ff

    db $d2, $58, $d9, $59, $d9, $59, $39, $d9, $38, $d9, $39, $29, $d9, $29, $d9, $28
    db $d8, $c9, $d9, $c9, $59, $98, $d9, $99, $59, $a9, $d9, $a8, $d9, $a9, $c9, $d9
    db $c9, $d9, $c8, $59, $d9, $59, $d9, $59, $d7, $58, $d9, $59, $d9, $59, $d8, $59
    db $d9, $58, $d7, $59, $39, $d9, $39, $d9, $38, $d8, $59, $d9, $59, $d7, $39, $58
    db $d9, $59, $d9, $59, $39, $d9, $38, $d9, $39, $29, $d9, $29, $d9, $28, $e3, $d2
    db $38, $d9, $39, $09, $39, $d9, $38, $09, $39, $d9, $39, $d8, $a8, $d7, $39, $d9
    db $39, $d8, $a9, $a8, $d9, $a9, $09, $a9, $d9, $a8, $09, $a9, $d9, $a9, $e3, $d0
    db $01, $d2, $e2, $66, $6c, $e2, $76, $6c, $e2, $88, $6c, $e2, $66, $6c, $e2, $66
    db $6c, $e2, $76, $6c, $e2, $88, $6c, $d2, $8f, $02, $09, $8f, $02, $89, $89, $89
    db $88, $d8, $29, $39, $39, $e2, $9a, $6c, $e2, $9a, $6c, $e2, $9a, $6c, $d1, $18
    db $09, $09, $39, $08, $09, $19, $09, $08, $39, $39, $39, $e2, $9a, $6c, $e2, $9a
    db $6c, $d1, $18, $d7, $89, $d8, $69, $39, $d7, $88, $d8, $09, $19, $d7, $89, $d8
    db $88, $39, $d7, $89, $d8, $09, $18, $d7, $89, $d8, $69, $39, $d7, $88, $d8, $09
    db $19, $d7, $89, $d8, $88, $39, $39, $39, $e2, $66, $6c, $e2, $76, $6c, $e2, $88
    db $6c, $e2, $66, $6c, $e2, $66, $6c, $e2, $76, $6c

    ld [c], a                                     ; $6c23: $e2
    adc b                                         ; $6c24: $88
    ld l, h                                       ; $6c25: $6c
    jp nc, Jump_000_028f                          ; $6c26: $d2 $8f $02

    add hl, bc                                    ; $6c29: $09
    adc a                                         ; $6c2a: $8f
    ld [bc], a                                    ; $6c2b: $02
    adc c                                         ; $6c2c: $89
    adc c                                         ; $6c2d: $89
    adc c                                         ; $6c2e: $89
    adc b                                         ; $6c2f: $88
    ret c                                         ; $6c30: $d8

    add hl, hl                                    ; $6c31: $29
    add hl, sp                                    ; $6c32: $39
    add hl, sp                                    ; $6c33: $39
    ld [c], a                                     ; $6c34: $e2
    xor b                                         ; $6c35: $a8
    ld l, h                                       ; $6c36: $6c
    ld [c], a                                     ; $6c37: $e2
    xor b                                         ; $6c38: $a8
    ld l, h                                       ; $6c39: $6c
    ld [c], a                                     ; $6c3a: $e2
    xor b                                         ; $6c3b: $a8
    ld l, h                                       ; $6c3c: $6c
    pop de                                        ; $6c3d: $d1
    jr @+$0b                                      ; $6c3e: $18 $09

    add hl, de                                    ; $6c40: $19
    add hl, sp                                    ; $6c41: $39
    rst $10                                       ; $6c42: $d7
    adc b                                         ; $6c43: $88
    adc c                                         ; $6c44: $89
    ret c                                         ; $6c45: $d8

    add hl, de                                    ; $6c46: $19
    add hl, bc                                    ; $6c47: $09
    jr @+$3b                                      ; $6c48: $18 $39

    add hl, bc                                    ; $6c4a: $09
    add hl, sp                                    ; $6c4b: $39
    ld [c], a                                     ; $6c4c: $e2
    xor b                                         ; $6c4d: $a8
    ld l, h                                       ; $6c4e: $6c
    ld [c], a                                     ; $6c4f: $e2
    xor b                                         ; $6c50: $a8
    ld l, h                                       ; $6c51: $6c
    ld [c], a                                     ; $6c52: $e2
    xor b                                         ; $6c53: $a8
    ld l, h                                       ; $6c54: $6c
    pop de                                        ; $6c55: $d1
    jr @+$0b                                      ; $6c56: $18 $09

    add hl, de                                    ; $6c58: $19
    add hl, sp                                    ; $6c59: $39
    rst $10                                       ; $6c5a: $d7
    adc b                                         ; $6c5b: $88
    adc c                                         ; $6c5c: $89
    ret c                                         ; $6c5d: $d8

    add hl, de                                    ; $6c5e: $19
    add hl, bc                                    ; $6c5f: $09
    jr @+$3b                                      ; $6c60: $18 $39

    add hl, sp                                    ; $6c62: $39
    add hl, sp                                    ; $6c63: $39
    sbc $ff                                       ; $6c64: $de $ff

    db $d2, $d0, $1d, $80, $d0, $01, $89, $08, $89, $89, $89, $88, $8f, $03, $89, $e3
    db $d2, $88, $d8, $39, $d7, $09, $8f, $02, $89, $89, $89, $88, $89, $d8, $19, $d7
    db $89, $e3, $d2, $d0, $1d, $80, $d0, $01, $89, $d8, $38, $d7, $89, $89, $89, $88
    db $8f, $03, $89, $e3, $d1, $18, $09, $09, $39, $08, $09, $19, $09, $08, $39, $09
    db $09, $e3

    pop de                                        ; $6ca8: $d1
    jr @+$0b                                      ; $6ca9: $18 $09

    add hl, de                                    ; $6cab: $19
    add hl, sp                                    ; $6cac: $39
    rst $10                                       ; $6cad: $d7
    adc b                                         ; $6cae: $88
    adc c                                         ; $6caf: $89
    ret c                                         ; $6cb0: $d8

    add hl, de                                    ; $6cb1: $19
    add hl, bc                                    ; $6cb2: $09
    jr @+$3b                                      ; $6cb3: $18 $39

    add hl, bc                                    ; $6cb5: $09
    add hl, bc                                    ; $6cb6: $09
    db $e3                                        ; $6cb7: $e3

    db $d0, $0f, $dc, $11, $ea, $01, $eb, $19, $e5, $00, $e6, $b0, $e8, $07, $d3, $a0
    db $d7, $50, $30, $50, $20, $30, $51, $d8, $a1, $d7, $71, $d0, $01, $56, $d9, $57
    db $d9, $56, $d9, $57, $d9, $56, $d9, $57, $d9, $56, $07, $d0, $0f, $30, $20, $d8
    db $c3, $51, $70, $90, $a0, $c0, $a0, $90, $73, $51, $70, $90, $a0, $c0, $a0, $c0
    db $d0, $01, $d7, $26, $d9, $27, $d9, $26, $d9, $27, $d9, $26, $d9, $27, $d9, $26
    db $d8, $07, $d0, $0f, $51, $32

    ld d, b                                       ; $6d0e: $50
    ld [hl], b                                    ; $6d0f: $70
    sub b                                         ; $6d10: $90
    and e                                         ; $6d11: $a3
    ld d, c                                       ; $6d12: $51
    jr nc, @-$27                                  ; $6d13: $30 $d7

    jr nc, jr_07c_6d37                            ; $6d15: $30 $20

    ret c                                         ; $6d17: $d8

    ret nz                                        ; $6d18: $c0

    and b                                         ; $6d19: $a0
    sub b                                         ; $6d1a: $90
    and e                                         ; $6d1b: $a3
    ld d, c                                       ; $6d1c: $51
    ld [hl-], a                                   ; $6d1d: $32
    ld d, b                                       ; $6d1e: $50
    ld [hl], b                                    ; $6d1f: $70
    sub b                                         ; $6d20: $90
    and e                                         ; $6d21: $a3
    ld d, c                                       ; $6d22: $51
    ld [hl], b                                    ; $6d23: $70
    sub b                                         ; $6d24: $90
    and b                                         ; $6d25: $a0
    rst $10                                       ; $6d26: $d7
    jr nc, jr_07c_6d49                            ; $6d27: $30 $20

    jr nc, @+$53                                  ; $6d29: $30 $51

    ret c                                         ; $6d2b: $d8

    pop bc                                        ; $6d2c: $c1
    ld d, c                                       ; $6d2d: $51
    jr nc, @-$5e                                  ; $6d2e: $30 $a0

    sub b                                         ; $6d30: $90
    and b                                         ; $6d31: $a0
    ld [hl], b                                    ; $6d32: $70
    and b                                         ; $6d33: $a0
    jr nz, @-$5e                                  ; $6d34: $20 $a0

    sub b                                         ; $6d36: $90

jr_07c_6d37:
    and b                                         ; $6d37: $a0
    ld d, b                                       ; $6d38: $50
    and b                                         ; $6d39: $a0
    ret c                                         ; $6d3a: $d8

    ret nz                                        ; $6d3b: $c0

    rst $10                                       ; $6d3c: $d7
    and b                                         ; $6d3d: $a0
    sub b                                         ; $6d3e: $90
    and b                                         ; $6d3f: $a0
    ld [hl], b                                    ; $6d40: $70
    and b                                         ; $6d41: $a0
    sub b                                         ; $6d42: $90
    ld [hl], b                                    ; $6d43: $70
    ld d, b                                       ; $6d44: $50
    jr nc, @+$22                                  ; $6d45: $30 $20

    ret c                                         ; $6d47: $d8

    ret nz                                        ; $6d48: $c0

jr_07c_6d49:
    and d                                         ; $6d49: $a2
    rst $10                                       ; $6d4a: $d7
    jr nz, @+$53                                  ; $6d4b: $20 $51

    ld sp, $a171                                  ; $6d4d: $31 $71 $a1
    ld d, b                                       ; $6d50: $50
    ld b, b                                       ; $6d51: $40
    ld d, b                                       ; $6d52: $50
    ld [hl], b                                    ; $6d53: $70
    ld d, b                                       ; $6d54: $50
    ld b, b                                       ; $6d55: $40
    jr nc, @+$22                                  ; $6d56: $30 $20

    ret c                                         ; $6d58: $d8

    ret nz                                        ; $6d59: $c0

    and b                                         ; $6d5a: $a0
    sub c                                         ; $6d5b: $91
    sbc $ff                                       ; $6d5c: $de $ff

    db $d0, $0f, $dc, $11, $ea, $01, $eb, $19, $e5, $00, $e6, $70, $e8, $07, $d2, $50
    db $d7, $20, $d8, $c0, $d7, $20, $d8, $a0, $c0, $d7, $21, $d8, $51, $d7, $31, $d0
    db $01, $d8, $c6, $d9, $c7, $d9, $c6, $d9, $c7, $d9, $c6, $d9, $c7, $d9, $c6, $07
    db $d0, $0f, $c0, $a0, $93, $91, $30, $50, $70, $90, $70, $50, $53, $c1, $30, $50
    db $70, $90, $70, $90, $d0, $01, $a6, $d9, $a7, $d9, $a6, $d9, $a7, $d9, $a6, $d9
    db $a7, $d9, $a6, $07, $d0, $0f, $21, $72

    sub b                                         ; $6db6: $90
    and b                                         ; $6db7: $a0
    ret nz                                        ; $6db8: $c0

    rst $10                                       ; $6db9: $d7
    inc hl                                        ; $6dba: $23
    ret c                                         ; $6dbb: $d8

    and c                                         ; $6dbc: $a1
    ld [hl], b                                    ; $6dbd: $70
    rst $10                                       ; $6dbe: $d7
    ld [hl], b                                    ; $6dbf: $70
    ld d, b                                       ; $6dc0: $50
    jr nc, jr_07c_6de3                            ; $6dc1: $30 $20

    ret c                                         ; $6dc3: $d8

    ret nz                                        ; $6dc4: $c0

    rst $10                                       ; $6dc5: $d7
    inc hl                                        ; $6dc6: $23
    ret c                                         ; $6dc7: $d8

    and c                                         ; $6dc8: $a1
    ld [hl], d                                    ; $6dc9: $72
    sub b                                         ; $6dca: $90
    and b                                         ; $6dcb: $a0
    ret nz                                        ; $6dcc: $c0

    rst $10                                       ; $6dcd: $d7
    inc hl                                        ; $6dce: $23
    ret c                                         ; $6dcf: $d8

    and c                                         ; $6dd0: $a1
    jr nc, @+$52                                  ; $6dd1: $30 $50

    ld [hl], b                                    ; $6dd3: $70
    ret nz                                        ; $6dd4: $c0

    and b                                         ; $6dd5: $a0
    ret nz                                        ; $6dd6: $c0

    pop bc                                        ; $6dd7: $c1
    sub c                                         ; $6dd8: $91
    sub c                                         ; $6dd9: $91
    ld [hl], b                                    ; $6dda: $70
    rst $10                                       ; $6ddb: $d7
    ld [hl], b                                    ; $6ddc: $70
    ld d, b                                       ; $6ddd: $50
    ld [hl], b                                    ; $6dde: $70
    jr nc, @+$72                                  ; $6ddf: $30 $70

    ret c                                         ; $6de1: $d8

    ld d, b                                       ; $6de2: $50

jr_07c_6de3:
    rst $10                                       ; $6de3: $d7
    ld d, b                                       ; $6de4: $50
    ld d, b                                       ; $6de5: $50
    ld d, b                                       ; $6de6: $50
    jr nz, @+$52                                  ; $6de7: $20 $50

    ret c                                         ; $6de9: $d8

    sub b                                         ; $6dea: $90
    rst $10                                       ; $6deb: $d7
    ld d, b                                       ; $6dec: $50
    ld d, b                                       ; $6ded: $50
    ld d, b                                       ; $6dee: $50
    jr nc, jr_07c_6e41                            ; $6def: $30 $50

    ld d, b                                       ; $6df1: $50
    jr nc, @+$22                                  ; $6df2: $30 $20

    ret c                                         ; $6df4: $d8

    ret nz                                        ; $6df5: $c0

    and b                                         ; $6df6: $a0
    sub b                                         ; $6df7: $90
    ld d, d                                       ; $6df8: $52
    and b                                         ; $6df9: $a0
    rst $10                                       ; $6dfa: $d7
    ld hl, $a1d8                                  ; $6dfb: $21 $d8 $a1
    rst $10                                       ; $6dfe: $d7
    ld sp, $d871                                  ; $6dff: $31 $71 $d8
    ret nz                                        ; $6e02: $c0

    ret nz                                        ; $6e03: $c0

    ret nz                                        ; $6e04: $c0

    ret nz                                        ; $6e05: $c0

    ret nz                                        ; $6e06: $c0

    ret nz                                        ; $6e07: $c0

    ret nz                                        ; $6e08: $c0

    and b                                         ; $6e09: $a0
    sub b                                         ; $6e0a: $90
    ld [hl], b                                    ; $6e0b: $70
    ld d, c                                       ; $6e0c: $51
    sbc $ff                                       ; $6e0d: $de $ff

    db $d0, $1e, $e9, $00, $dc, $11, $e7, $08, $e6, $20, $e8, $08, $d1, $a2, $52, $c2
    db $52, $d7, $32, $d8, $52, $d7, $32, $d8, $a2, $d7

    ld [hl-], a                                   ; $6e29: $32
    ret c                                         ; $6e2a: $d8

    and d                                         ; $6e2b: $a2
    rst $10                                       ; $6e2c: $d7
    ld [hl-], a                                   ; $6e2d: $32
    ld [hl+], a                                   ; $6e2e: $22
    ret c                                         ; $6e2f: $d8

    jp nz, Jump_000_07e8                          ; $6e30: $c2 $e8 $07

    and c                                         ; $6e33: $a1
    and b                                         ; $6e34: $a0
    rst $10                                       ; $6e35: $d7
    jr nc, jr_07c_6e68                            ; $6e36: $30 $30

    jr nc, @-$16                                  ; $6e38: $30 $e8

    ld [$91d8], sp                                ; $6e3a: $08 $d8 $91
    ld d, b                                       ; $6e3d: $50
    rst $10                                       ; $6e3e: $d7
    ld [hl-], a                                   ; $6e3f: $32
    ret c                                         ; $6e40: $d8

jr_07c_6e41:
    and d                                         ; $6e41: $a2
    ld d, d                                       ; $6e42: $52
    rst $10                                       ; $6e43: $d7
    ld [hl-], a                                   ; $6e44: $32
    ld [hl+], a                                   ; $6e45: $22
    ld [hl-], a                                   ; $6e46: $32
    ret c                                         ; $6e47: $d8

    ld d, d                                       ; $6e48: $52
    ld d, d                                       ; $6e49: $52
    sbc $ff                                       ; $6e4a: $de $ff

    db $d0, $01, $d1, $e2, $75, $6e, $e2, $86, $6e

    ld [c], a                                     ; $6e55: $e2
    add [hl]                                      ; $6e56: $86
    ld l, [hl]                                    ; $6e57: $6e
    ld [c], a                                     ; $6e58: $e2
    ld [hl], l                                    ; $6e59: $75
    ld l, [hl]                                    ; $6e5a: $6e
    ret nc                                        ; $6e5b: $d0

    ld e, $c2                                     ; $6e5c: $1e $c2
    pop bc                                        ; $6e5e: $c1
    ret nc                                        ; $6e5f: $d0

    ld bc, $363e                                  ; $6e60: $01 $3e $36
    scf                                           ; $6e63: $37
    ret nc                                        ; $6e64: $d0

    ld e, $c2                                     ; $6e65: $1e $c2
    pop bc                                        ; $6e67: $c1

jr_07c_6e68:
    ret nc                                        ; $6e68: $d0

    ld bc, $56d7                                  ; $6e69: $01 $d7 $56
    ld d, a                                       ; $6e6c: $57
    ret c                                         ; $6e6d: $d8

    or [hl]                                       ; $6e6e: $b6
    and a                                         ; $6e6f: $a7
    ld [c], a                                     ; $6e70: $e2
    add [hl]                                      ; $6e71: $86
    ld l, [hl]                                    ; $6e72: $6e
    sbc $ff                                       ; $6e73: $de $ff

    db $df, $03, $1e, $5e, $1e, $3e, $ae, $5e, $e0, $1e, $0e, $1e, $3e, $ae, $36, $37
    db $e3, $df, $03, $1e, $d7, $5e, $d8, $1e, $3e, $5e, $ae, $e0, $1e, $d7, $5e, $d8
    db $1e, $3e, $36, $37, $ae, $e3

    ret nc                                        ; $6e9b: $d0

    dec bc                                        ; $6e9c: $0b
    call c, $ea11                                 ; $6e9d: $dc $11 $ea
    ld bc, $14eb                                  ; $6ea0: $01 $eb $14
    push hl                                       ; $6ea3: $e5
    ld b, b                                       ; $6ea4: $40
    and $b0                                       ; $6ea5: $e6 $b0
    add sp, $07                                   ; $6ea7: $e8 $07
    db $d3                                        ; $6ea9: $d3
    ld [c], a                                     ; $6eaa: $e2
    add hl, hl                                    ; $6eab: $29
    ld l, a                                       ; $6eac: $6f
    ld [c], a                                     ; $6ead: $e2
    add hl, hl                                    ; $6eae: $29

jr_07c_6eaf:
    ld l, a                                       ; $6eaf: $6f
    ld [c], a                                     ; $6eb0: $e2
    ld e, e                                       ; $6eb1: $5b
    ld l, a                                       ; $6eb2: $6f
    ret nc                                        ; $6eb3: $d0

    dec bc                                        ; $6eb4: $0b
    ld [c], a                                     ; $6eb5: $e2
    add hl, hl                                    ; $6eb6: $29
    ld l, a                                       ; $6eb7: $6f
    jp nc, $c080                                  ; $6eb8: $d2 $80 $c0

    rst $10                                       ; $6ebb: $d7
    jr nc, jr_07c_6f1e                            ; $6ebc: $30 $60

    nop                                           ; $6ebe: $00
    ld h, b                                       ; $6ebf: $60
    jr nc, @-$26                                  ; $6ec0: $30 $d8

    ret nz                                        ; $6ec2: $c0

    add b                                         ; $6ec3: $80
    ret nz                                        ; $6ec4: $c0

    rst $10                                       ; $6ec5: $d7
    jr nc, @+$62                                  ; $6ec6: $30 $60

    nop                                           ; $6ec8: $00
    jr nc, jr_07c_6ecb                            ; $6ec9: $30 $00

jr_07c_6ecb:
    add b                                         ; $6ecb: $80
    ret c                                         ; $6ecc: $d8

    and b                                         ; $6ecd: $a0
    rst $10                                       ; $6ece: $d7
    jr nz, jr_07c_6f21                            ; $6ecf: $20 $50

    add b                                         ; $6ed1: $80
    nop                                           ; $6ed2: $00
    add b                                         ; $6ed3: $80
    ld d, b                                       ; $6ed4: $50
    jr nz, jr_07c_6eaf                            ; $6ed5: $20 $d8

    and b                                         ; $6ed7: $a0
    rst $10                                       ; $6ed8: $d7
    jr nz, jr_07c_6f2b                            ; $6ed9: $20 $50

    add b                                         ; $6edb: $80
    nop                                           ; $6edc: $00
    ld d, b                                       ; $6edd: $50
    nop                                           ; $6ede: $00
    and b                                         ; $6edf: $a0
    ret nc                                        ; $6ee0: $d0

    ld bc, $1ad7                                  ; $6ee1: $01 $d7 $1a
    reti                                          ; $6ee4: $d9


    inc d                                         ; $6ee5: $14
    ret c                                         ; $6ee6: $d8

    push bc                                       ; $6ee7: $c5
    reti                                          ; $6ee8: $d9


    jp z, $8aaa                                   ; $6ee9: $ca $aa $8a

    reti                                          ; $6eec: $d9


    adc d                                         ; $6eed: $8a
    reti                                          ; $6eee: $d9


    adc d                                         ; $6eef: $8a
    xor d                                         ; $6ef0: $aa
    reti                                          ; $6ef1: $d9


    xor d                                         ; $6ef2: $aa
    reti                                          ; $6ef3: $d9


    xor d                                         ; $6ef4: $aa
    reti                                          ; $6ef5: $d9


    xor d                                         ; $6ef6: $aa
    reti                                          ; $6ef7: $d9


    xor d                                         ; $6ef8: $aa
    reti                                          ; $6ef9: $d9


    xor d                                         ; $6efa: $aa
    reti                                          ; $6efb: $d9


    xor d                                         ; $6efc: $aa
    reti                                          ; $6efd: $d9


    xor d                                         ; $6efe: $aa
    reti                                          ; $6eff: $d9


    xor d                                         ; $6f00: $aa
    rst $10                                       ; $6f01: $d7
    ld a, [de]                                    ; $6f02: $1a
    reti                                          ; $6f03: $d9


    inc d                                         ; $6f04: $14
    ret c                                         ; $6f05: $d8

    push bc                                       ; $6f06: $c5
    reti                                          ; $6f07: $d9


    jp z, $caaa                                   ; $6f08: $ca $aa $ca

    reti                                          ; $6f0b: $d9


    call nz, $15d7                                ; $6f0c: $c4 $d7 $15
    reti                                          ; $6f0f: $d9


    ld a, [de]                                    ; $6f10: $1a
    ld a, [hl-]                                   ; $6f11: $3a
    ret c                                         ; $6f12: $d8

    adc d                                         ; $6f13: $8a
    reti                                          ; $6f14: $d9


    adc d                                         ; $6f15: $8a
    reti                                          ; $6f16: $d9


    adc d                                         ; $6f17: $8a
    reti                                          ; $6f18: $d9


    adc d                                         ; $6f19: $8a
    reti                                          ; $6f1a: $d9


    adc d                                         ; $6f1b: $8a
    reti                                          ; $6f1c: $d9


    adc d                                         ; $6f1d: $8a

jr_07c_6f1e:
    reti                                          ; $6f1e: $d9


    adc d                                         ; $6f1f: $8a
    reti                                          ; $6f20: $d9


jr_07c_6f21:
    adc d                                         ; $6f21: $8a
    ret nc                                        ; $6f22: $d0

    dec bc                                        ; $6f23: $0b
    ld [c], a                                     ; $6f24: $e2
    ld e, e                                       ; $6f25: $5b
    ld l, a                                       ; $6f26: $6f
    sbc $ff                                       ; $6f27: $de $ff
    db $d3                                        ; $6f29: $d3

jr_07c_6f2a:
    sub e                                         ; $6f2a: $93

jr_07c_6f2b:
    sub b                                         ; $6f2b: $90
    ld [hl], b                                    ; $6f2c: $70
    ld d, b                                       ; $6f2d: $50
    and b                                         ; $6f2e: $a0
    reti                                          ; $6f2f: $d9


    and a                                         ; $6f30: $a7
    jp $d7c0                                      ; $6f31: $c3 $c0 $d7


    jr nz, jr_07c_6f66                            ; $6f34: $20 $30

    ret c                                         ; $6f36: $d8

    and b                                         ; $6f37: $a0

jr_07c_6f38:
    reti                                          ; $6f38: $d9


    and a                                         ; $6f39: $a7
    sub b                                         ; $6f3a: $90
    sub b                                         ; $6f3b: $90
    nop                                           ; $6f3c: $00
    and b                                         ; $6f3d: $a0
    and b                                         ; $6f3e: $a0
    nop                                           ; $6f3f: $00

jr_07c_6f40:
    ret nz                                        ; $6f40: $c0

    ret nz                                        ; $6f41: $c0

    nop                                           ; $6f42: $00
    rst $10                                       ; $6f43: $d7
    ld sp, $01d0                                  ; $6f44: $31 $d0 $01
    ld [hl], $03                                  ; $6f47: $36 $03
    ld a, [hl-]                                   ; $6f49: $3a
    reti                                          ; $6f4a: $d9


    inc [hl]                                      ; $6f4b: $34
    dec h                                         ; $6f4c: $25
    reti                                          ; $6f4d: $d9


    ret nc                                        ; $6f4e: $d0

    dec bc                                        ; $6f4f: $0b
    jr nz, jr_07c_6f2a                            ; $6f50: $20 $d8

    ret nz                                        ; $6f52: $c0

    sub b                                         ; $6f53: $90
    and b                                         ; $6f54: $a0
    ret nz                                        ; $6f55: $c0

    ld d, e                                       ; $6f56: $53
    jr nc, @-$25                                  ; $6f57: $30 $d9

    scf                                           ; $6f59: $37
    db $e3                                        ; $6f5a: $e3
    db $d3                                        ; $6f5b: $d3
    ld [hl], c                                    ; $6f5c: $71
    rst $10                                       ; $6f5d: $d7
    jr nz, jr_07c_6f38                            ; $6f5e: $20 $d8

    pop bc                                        ; $6f60: $c1
    and c                                         ; $6f61: $a1
    sub b                                         ; $6f62: $90
    and a                                         ; $6f63: $a7
    ld [hl], c                                    ; $6f64: $71
    rst $10                                       ; $6f65: $d7

jr_07c_6f66:
    jr nz, jr_07c_6f40                            ; $6f66: $20 $d8

    pop bc                                        ; $6f68: $c1
    rst $10                                       ; $6f69: $d7
    ld hl, $5730                                  ; $6f6a: $21 $30 $57
    ret nc                                        ; $6f6d: $d0

    ld bc, $d96a                                  ; $6f6e: $01 $6a $d9
    ld l, d                                       ; $6f71: $6a
    reti                                          ; $6f72: $d9


    ld l, d                                       ; $6f73: $6a
    ld d, h                                       ; $6f74: $54
    dec [hl]                                      ; $6f75: $35
    ld a, [de]                                    ; $6f76: $1a
    reti                                          ; $6f77: $d9


    inc d                                         ; $6f78: $14
    ret c                                         ; $6f79: $d8

    and l                                         ; $6f7a: $a5
    reti                                          ; $6f7b: $d9


    xor d                                         ; $6f7c: $aa
    rst $10                                       ; $6f7d: $d7
    ld a, [de]                                    ; $6f7e: $1a
    ret c                                         ; $6f7f: $d8

    jp z, $c4d9                                   ; $6f80: $ca $d9 $c4

    rst $10                                       ; $6f83: $d7
    dec d                                         ; $6f84: $15
    reti                                          ; $6f85: $d9


    ld a, [de]                                    ; $6f86: $1a
    ld a, [hl-]                                   ; $6f87: $3a
    adc d                                         ; $6f88: $8a
    reti                                          ; $6f89: $d9


    adc d                                         ; $6f8a: $8a
    ld a, [hl-]                                   ; $6f8b: $3a
    reti                                          ; $6f8c: $d9


    ld a, [hl-]                                   ; $6f8d: $3a
    ld e, d                                       ; $6f8e: $5a
    reti                                          ; $6f8f: $d9


    ld e, d                                       ; $6f90: $5a
    reti                                          ; $6f91: $d9


    ld e, d                                       ; $6f92: $5a
    reti                                          ; $6f93: $d9


    ld e, d                                       ; $6f94: $5a
    reti                                          ; $6f95: $d9


    ld e, d                                       ; $6f96: $5a
    reti                                          ; $6f97: $d9


    ld e, d                                       ; $6f98: $5a
    reti                                          ; $6f99: $d9


    ld e, d                                       ; $6f9a: $5a
    reti                                          ; $6f9b: $d9


    ld e, d                                       ; $6f9c: $5a
    and h                                         ; $6f9d: $a4
    dec b                                         ; $6f9e: $05
    ld d, h                                       ; $6f9f: $54
    dec b                                         ; $6fa0: $05
    and h                                         ; $6fa1: $a4
    dec b                                         ; $6fa2: $05
    inc h                                         ; $6fa3: $24
    ld d, l                                       ; $6fa4: $55
    inc b                                         ; $6fa5: $04
    ret c                                         ; $6fa6: $d8

    and l                                         ; $6fa7: $a5
    inc b                                         ; $6fa8: $04
    rst $10                                       ; $6fa9: $d7
    dec h                                         ; $6faa: $25
    ret c                                         ; $6fab: $d8

    ld d, h                                       ; $6fac: $54
    dec b                                         ; $6fad: $05
    and h                                         ; $6fae: $a4
    dec b                                         ; $6faf: $05
    db $e3                                        ; $6fb0: $e3
    call c, $ea11                                 ; $6fb1: $dc $11 $ea
    ld bc, $14eb                                  ; $6fb4: $01 $eb $14
    push hl                                       ; $6fb7: $e5
    ld b, b                                       ; $6fb8: $40
    and $90                                       ; $6fb9: $e6 $90
    add sp, $07                                   ; $6fbb: $e8 $07
    db $d3                                        ; $6fbd: $d3
    ret nc                                        ; $6fbe: $d0

    dec bc                                        ; $6fbf: $0b
    ld [c], a                                     ; $6fc0: $e2
    dec l                                         ; $6fc1: $2d
    ld [hl], b                                    ; $6fc2: $70
    ld [c], a                                     ; $6fc3: $e2
    dec l                                         ; $6fc4: $2d
    ld [hl], b                                    ; $6fc5: $70
    ld [c], a                                     ; $6fc6: $e2
    ld e, [hl]                                    ; $6fc7: $5e
    ld [hl], b                                    ; $6fc8: $70
    ret nc                                        ; $6fc9: $d0

    dec bc                                        ; $6fca: $0b
    ld [c], a                                     ; $6fcb: $e2
    dec l                                         ; $6fcc: $2d
    ld [hl], b                                    ; $6fcd: $70
    ret nc                                        ; $6fce: $d0

    ld bc, $dfd4                                  ; $6fcf: $01 $d4 $df
    inc b                                         ; $6fd2: $04
    add h                                         ; $6fd3: $84
    dec b                                         ; $6fd4: $05
    ret c                                         ; $6fd5: $d8

    add h                                         ; $6fd6: $84
    dec b                                         ; $6fd7: $05
    rst $10                                       ; $6fd8: $d7
    add h                                         ; $6fd9: $84
    dec b                                         ; $6fda: $05
    ret c                                         ; $6fdb: $d8

    add h                                         ; $6fdc: $84
    dec b                                         ; $6fdd: $05
    rst $10                                       ; $6fde: $d7
    ldh [$df], a                                  ; $6fdf: $e0 $df
    inc b                                         ; $6fe1: $04
    and h                                         ; $6fe2: $a4
    dec b                                         ; $6fe3: $05
    ret c                                         ; $6fe4: $d8

    and h                                         ; $6fe5: $a4
    dec b                                         ; $6fe6: $05
    rst $10                                       ; $6fe7: $d7
    and h                                         ; $6fe8: $a4
    dec b                                         ; $6fe9: $05
    ret c                                         ; $6fea: $d8

    and h                                         ; $6feb: $a4
    dec b                                         ; $6fec: $05
    rst $10                                       ; $6fed: $d7
    ldh [$df], a                                  ; $6fee: $e0 $df
    ld [bc], a                                    ; $6ff0: $02
    ld a, [bc]                                    ; $6ff1: $0a
    ld a, [bc]                                    ; $6ff2: $0a
    ld a, [bc]                                    ; $6ff3: $0a
    ld a, [bc]                                    ; $6ff4: $0a
    ldh [$d7], a                                  ; $6ff5: $e0 $d7
    ld a, [de]                                    ; $6ff7: $1a
    reti                                          ; $6ff8: $d9


    inc d                                         ; $6ff9: $14
    ret c                                         ; $6ffa: $d8

    push bc                                       ; $6ffb: $c5
    reti                                          ; $6ffc: $d9


    jp z, $8aaa                                   ; $6ffd: $ca $aa $8a

    reti                                          ; $7000: $d9


    adc d                                         ; $7001: $8a
    reti                                          ; $7002: $d9


    adc d                                         ; $7003: $8a
    xor d                                         ; $7004: $aa
    reti                                          ; $7005: $d9


    xor d                                         ; $7006: $aa
    reti                                          ; $7007: $d9


    xor d                                         ; $7008: $aa
    reti                                          ; $7009: $d9


jr_07c_700a:
    xor d                                         ; $700a: $aa
    reti                                          ; $700b: $d9


    xor d                                         ; $700c: $aa
    reti                                          ; $700d: $d9


    xor d                                         ; $700e: $aa
    reti                                          ; $700f: $d9


    xor d                                         ; $7010: $aa
    reti                                          ; $7011: $d9


    xor d                                         ; $7012: $aa
    reti                                          ; $7013: $d9


    xor d                                         ; $7014: $aa
    rst $10                                       ; $7015: $d7
    ld a, [de]                                    ; $7016: $1a
    reti                                          ; $7017: $d9


    inc d                                         ; $7018: $14
    ret c                                         ; $7019: $d8

    push bc                                       ; $701a: $c5
    reti                                          ; $701b: $d9


    jp z, $caaa                                   ; $701c: $ca $aa $ca

    reti                                          ; $701f: $d9


    call nz, $15d7                                ; $7020: $c4 $d7 $15
    reti                                          ; $7023: $d9


    ld a, [de]                                    ; $7024: $1a
    ld a, [hl-]                                   ; $7025: $3a
    ret nc                                        ; $7026: $d0

    dec bc                                        ; $7027: $0b
    ld [c], a                                     ; $7028: $e2
    ld e, [hl]                                    ; $7029: $5e
    ld [hl], b                                    ; $702a: $70
    sbc $ff                                       ; $702b: $de $ff
    db $d3                                        ; $702d: $d3
    ld d, e                                       ; $702e: $53
    ld d, b                                       ; $702f: $50
    jr nc, jr_07c_700a                            ; $7030: $30 $d8

    ret nz                                        ; $7032: $c0

    rst $10                                       ; $7033: $d7
    ld d, b                                       ; $7034: $50
    reti                                          ; $7035: $d9


    ld d, a                                       ; $7036: $57
    sub e                                         ; $7037: $93
    sub b                                         ; $7038: $90
    and b                                         ; $7039: $a0
    ret nz                                        ; $703a: $c0

    ld [hl], b                                    ; $703b: $70
    reti                                          ; $703c: $d9


    ld [hl], a                                    ; $703d: $77
    ld d, b                                       ; $703e: $50
    ld d, b                                       ; $703f: $50
    nop                                           ; $7040: $00
    ld [hl], b                                    ; $7041: $70
    ld [hl], b                                    ; $7042: $70
    nop                                           ; $7043: $00
    sub b                                         ; $7044: $90
    sub b                                         ; $7045: $90
    nop                                           ; $7046: $00
    and c                                         ; $7047: $a1
    ret nc                                        ; $7048: $d0

    ld bc, $03a6                                  ; $7049: $01 $a6 $03
    xor d                                         ; $704c: $aa
    reti                                          ; $704d: $d9


    and h                                         ; $704e: $a4
    and l                                         ; $704f: $a5
    reti                                          ; $7050: $d9


    ret nc                                        ; $7051: $d0

    dec bc                                        ; $7052: $0b
    and b                                         ; $7053: $a0
    and b                                         ; $7054: $a0
    ld d, b                                       ; $7055: $50
    ld [hl], b                                    ; $7056: $70
    sub b                                         ; $7057: $90
    ret c                                         ; $7058: $d8

    jp $d9a0                                      ; $7059: $c3 $a0 $d9


    and a                                         ; $705c: $a7
    db $e3                                        ; $705d: $e3
    db $d3                                        ; $705e: $d3
    inc [hl]                                      ; $705f: $34
    jr nc, jr_07c_70b2                            ; $7060: $30 $50

    ld [hl], b                                    ; $7062: $70
    ld d, a                                       ; $7063: $57
    inc [hl]                                      ; $7064: $34
    jr nc, jr_07c_70d7                            ; $7065: $30 $70

    sub b                                         ; $7067: $90
    and a                                         ; $7068: $a7
    ret nc                                        ; $7069: $d0

    ld bc, $00e5                                  ; $706a: $01 $e5 $00
    rst $18                                       ; $706d: $df
    ld [bc], a                                    ; $706e: $02
    ld h, h                                       ; $706f: $64
    ret c                                         ; $7070: $d8

    and l                                         ; $7071: $a5
    rst $10                                       ; $7072: $d7
    inc d                                         ; $7073: $14
    ld h, l                                       ; $7074: $65
    ret c                                         ; $7075: $d8

    and h                                         ; $7076: $a4
    rst $10                                       ; $7077: $d7
    dec d                                         ; $7078: $15
    ld h, h                                       ; $7079: $64
    ret c                                         ; $707a: $d8

    and l                                         ; $707b: $a5
    rst $10                                       ; $707c: $d7
    ldh [$df], a                                  ; $707d: $e0 $df
    ld [bc], a                                    ; $707f: $02
    add h                                         ; $7080: $84
    ret c                                         ; $7081: $d8

    push bc                                       ; $7082: $c5
    rst $10                                       ; $7083: $d7
    inc [hl]                                      ; $7084: $34
    add l                                         ; $7085: $85
    ret c                                         ; $7086: $d8

    call nz, Call_000_35d7                        ; $7087: $c4 $d7 $35
    add h                                         ; $708a: $84
    ret c                                         ; $708b: $d8

    push bc                                       ; $708c: $c5
    rst $10                                       ; $708d: $d7
    ldh [$e5], a                                  ; $708e: $e0 $e5
    ld b, b                                       ; $7090: $40
    ld a, [hl-]                                   ; $7091: $3a
    reti                                          ; $7092: $d9


    ld a, [hl-]                                   ; $7093: $3a
    reti                                          ; $7094: $d9


    ld a, [hl-]                                   ; $7095: $3a
    reti                                          ; $7096: $d9


    ld a, [hl-]                                   ; $7097: $3a
    reti                                          ; $7098: $d9


    ld a, [hl-]                                   ; $7099: $3a
    reti                                          ; $709a: $d9


    ld a, [hl-]                                   ; $709b: $3a
    ld a, [hl+]                                   ; $709c: $2a
    ld a, [hl-]                                   ; $709d: $3a
    rst $10                                       ; $709e: $d7
    ld d, h                                       ; $709f: $54
    dec b                                         ; $70a0: $05

jr_07c_70a1:
    inc h                                         ; $70a1: $24
    dec b                                         ; $70a2: $05
    ld d, h                                       ; $70a3: $54
    dec b                                         ; $70a4: $05

jr_07c_70a5:
    ret c                                         ; $70a5: $d8

    and h                                         ; $70a6: $a4
    dec h                                         ; $70a7: $25
    inc b                                         ; $70a8: $04
    ret c                                         ; $70a9: $d8

    ld d, l                                       ; $70aa: $55
    inc b                                         ; $70ab: $04
    and l                                         ; $70ac: $a5
    inc h                                         ; $70ad: $24
    dec b                                         ; $70ae: $05
    ld d, h                                       ; $70af: $54
    dec b                                         ; $70b0: $05
    db $e3                                        ; $70b1: $e3

jr_07c_70b2:
    ret nc                                        ; $70b2: $d0

    dec bc                                        ; $70b3: $0b
    jp hl                                         ; $70b4: $e9


    nop                                           ; $70b5: $00
    call c, $e711                                 ; $70b6: $dc $11 $e7

jr_07c_70b9:
    jr nz, jr_07c_70a1                            ; $70b9: $20 $e6

    jr nz, jr_07c_70a5                            ; $70bb: $20 $e8

    rlca                                          ; $70bd: $07
    pop de                                        ; $70be: $d1
    rst $18                                       ; $70bf: $df
    jr nz, jr_07c_7112                            ; $70c0: $20 $50

    rst $10                                       ; $70c2: $d7
    ld d, b                                       ; $70c3: $50
    ret c                                         ; $70c4: $d8

    ld d, b                                       ; $70c5: $50
    rst $10                                       ; $70c6: $d7
    ld d, b                                       ; $70c7: $50
    ret c                                         ; $70c8: $d8

    ldh [$e2], a                                  ; $70c9: $e0 $e2
    dec de                                        ; $70cb: $1b
    ld [hl], c                                    ; $70cc: $71
    rst $18                                       ; $70cd: $df

jr_07c_70ce:
    db $10                                        ; $70ce: $10
    ld d, b                                       ; $70cf: $50
    rst $10                                       ; $70d0: $d7
    ld d, b                                       ; $70d1: $50
    ret c                                         ; $70d2: $d8

    ld d, b                                       ; $70d3: $50
    rst $10                                       ; $70d4: $d7
    ld d, b                                       ; $70d5: $50
    ret c                                         ; $70d6: $d8

jr_07c_70d7:
    ldh [$80], a                                  ; $70d7: $e0 $80
    ret nz                                        ; $70d9: $c0

    rst $10                                       ; $70da: $d7
    jr nc, @+$62                                  ; $70db: $30 $60

    nop                                           ; $70dd: $00
    ld h, b                                       ; $70de: $60
    jr nc, jr_07c_70b9                            ; $70df: $30 $d8

    ret nz                                        ; $70e1: $c0

    add b                                         ; $70e2: $80
    ret nz                                        ; $70e3: $c0

    rst $10                                       ; $70e4: $d7
    jr nc, jr_07c_7147                            ; $70e5: $30 $60

    nop                                           ; $70e7: $00
    jr nc, jr_07c_70ea                            ; $70e8: $30 $00

jr_07c_70ea:
    add b                                         ; $70ea: $80
    ret c                                         ; $70eb: $d8

    and b                                         ; $70ec: $a0
    rst $10                                       ; $70ed: $d7
    jr nz, @+$52                                  ; $70ee: $20 $50

    add b                                         ; $70f0: $80
    nop                                           ; $70f1: $00
    add b                                         ; $70f2: $80
    ld d, b                                       ; $70f3: $50
    jr nz, jr_07c_70ce                            ; $70f4: $20 $d8

    and b                                         ; $70f6: $a0

jr_07c_70f7:
    rst $10                                       ; $70f7: $d7
    jr nz, jr_07c_714a                            ; $70f8: $20 $50

jr_07c_70fa:
    add b                                         ; $70fa: $80

jr_07c_70fb:
    nop                                           ; $70fb: $00
    ld d, b                                       ; $70fc: $50
    nop                                           ; $70fd: $00

jr_07c_70fe:
    and b                                         ; $70fe: $a0
    ret c                                         ; $70ff: $d8

    rst $18                                       ; $7100: $df
    inc b                                         ; $7101: $04
    ld h, b                                       ; $7102: $60
    rst $10                                       ; $7103: $d7
    ld h, b                                       ; $7104: $60
    ret c                                         ; $7105: $d8

    ld h, b                                       ; $7106: $60
    rst $10                                       ; $7107: $d7
    ld h, b                                       ; $7108: $60
    ret c                                         ; $7109: $d8

    ldh [$df], a                                  ; $710a: $e0 $df
    inc b                                         ; $710c: $04

jr_07c_710d:
    add b                                         ; $710d: $80
    rst $10                                       ; $710e: $d7
    add b                                         ; $710f: $80

jr_07c_7110:
    ret c                                         ; $7110: $d8

jr_07c_7111:
    add b                                         ; $7111: $80

jr_07c_7112:
    rst $10                                       ; $7112: $d7
    add b                                         ; $7113: $80

jr_07c_7114:
    ret c                                         ; $7114: $d8

    ldh [$e2], a                                  ; $7115: $e0 $e2
    dec de                                        ; $7117: $1b
    ld [hl], c                                    ; $7118: $71

jr_07c_7119:
    sbc $ff                                       ; $7119: $de $ff
    pop de                                        ; $711b: $d1
    rst $18                                       ; $711c: $df

jr_07c_711d:
    ld [bc], a                                    ; $711d: $02

jr_07c_711e:
    jr nc, jr_07c_70f7                            ; $711e: $30 $d7

    jr nc, jr_07c_70fa                            ; $7120: $30 $d8

    jr nc, jr_07c_70fb                            ; $7122: $30 $d7

    jr nc, jr_07c_70fe                            ; $7124: $30 $d8

    ldh [$df], a                                  ; $7126: $e0 $df
    ld [bc], a                                    ; $7128: $02
    and b                                         ; $7129: $a0
    rst $10                                       ; $712a: $d7
    and b                                         ; $712b: $a0
    ret c                                         ; $712c: $d8

    and b                                         ; $712d: $a0
    rst $10                                       ; $712e: $d7
    and b                                         ; $712f: $a0
    ret c                                         ; $7130: $d8

    ldh [$df], a                                  ; $7131: $e0 $df
    ld [bc], a                                    ; $7133: $02
    jr nc, jr_07c_710d                            ; $7134: $30 $d7

    jr nc, jr_07c_7110                            ; $7136: $30 $d8

    jr nc, jr_07c_7111                            ; $7138: $30 $d7

    jr nc, jr_07c_7114                            ; $713a: $30 $d8

    ldh [$30], a                                  ; $713c: $e0 $30
    rst $10                                       ; $713e: $d7
    jr nc, jr_07c_7119                            ; $713f: $30 $d8

    jr nz, @-$27                                  ; $7141: $20 $d7

    jr nz, jr_07c_711d                            ; $7143: $20 $d8

    jr nc, jr_07c_711e                            ; $7145: $30 $d7

jr_07c_7147:
    jr nc, @-$26                                  ; $7147: $30 $d8

    ld d, b                                       ; $7149: $50

jr_07c_714a:
    rst $10                                       ; $714a: $d7
    ld d, b                                       ; $714b: $50
    ret c                                         ; $714c: $d8

    rst $18                                       ; $714d: $df
    ld [bc], a                                    ; $714e: $02
    ld h, b                                       ; $714f: $60
    rst $10                                       ; $7150: $d7
    ld h, b                                       ; $7151: $60
    ret c                                         ; $7152: $d8

    ld h, b                                       ; $7153: $60
    rst $10                                       ; $7154: $d7
    ld h, b                                       ; $7155: $60
    ret c                                         ; $7156: $d8

    ldh [$df], a                                  ; $7157: $e0 $df
    ld [bc], a                                    ; $7159: $02
    add b                                         ; $715a: $80
    rst $10                                       ; $715b: $d7
    add b                                         ; $715c: $80
    ret c                                         ; $715d: $d8

    add b                                         ; $715e: $80
    rst $10                                       ; $715f: $d7
    add b                                         ; $7160: $80
    ret c                                         ; $7161: $d8

    ldh [$df], a                                  ; $7162: $e0 $df
    inc b                                         ; $7164: $04
    and b                                         ; $7165: $a0
    rst $10                                       ; $7166: $d7
    and b                                         ; $7167: $a0
    ret c                                         ; $7168: $d8

    and b                                         ; $7169: $a0
    rst $10                                       ; $716a: $d7
    and b                                         ; $716b: $a0
    ret c                                         ; $716c: $d8

    ldh [$e3], a                                  ; $716d: $e0 $e3
    ret nc                                        ; $716f: $d0

    ld bc, $e2d1                                  ; $7170: $01 $d1 $e2
    ld h, a                                       ; $7173: $67
    ld [hl], d                                    ; $7174: $72
    ld [c], a                                     ; $7175: $e2
    halt                                          ; $7176: $76
    ld [hl], d                                    ; $7177: $72
    ld [c], a                                     ; $7178: $e2
    add e                                         ; $7179: $83
    ld [hl], d                                    ; $717a: $72
    ld [c], a                                     ; $717b: $e2
    halt                                          ; $717c: $76
    ld [hl], d                                    ; $717d: $72
    ld [c], a                                     ; $717e: $e2
    add e                                         ; $717f: $83
    ld [hl], d                                    ; $7180: $72
    ld [c], a                                     ; $7181: $e2
    halt                                          ; $7182: $76
    ld [hl], d                                    ; $7183: $72
    ld [c], a                                     ; $7184: $e2
    add e                                         ; $7185: $83
    ld [hl], d                                    ; $7186: $72
    ld a, [de]                                    ; $7187: $1a
    ld h, l                                       ; $7188: $65
    ld d, h                                       ; $7189: $54
    ld a, [hl-]                                   ; $718a: $3a
    add l                                         ; $718b: $85
    ld d, h                                       ; $718c: $54
    ld a, [de]                                    ; $718d: $1a
    dec d                                         ; $718e: $15
    ld d, h                                       ; $718f: $54
    ld a, [hl-]                                   ; $7190: $3a
    inc [hl]                                      ; $7191: $34
    dec [hl]                                      ; $7192: $35
    ld [c], a                                     ; $7193: $e2
    ld h, a                                       ; $7194: $67
    ld [hl], d                                    ; $7195: $72
    ld [c], a                                     ; $7196: $e2
    halt                                          ; $7197: $76
    ld [hl], d                                    ; $7198: $72
    ld [c], a                                     ; $7199: $e2
    add e                                         ; $719a: $83
    ld [hl], d                                    ; $719b: $72
    ld [c], a                                     ; $719c: $e2
    halt                                          ; $719d: $76
    ld [hl], d                                    ; $719e: $72
    ld [c], a                                     ; $719f: $e2
    add e                                         ; $71a0: $83
    ld [hl], d                                    ; $71a1: $72
    ld [c], a                                     ; $71a2: $e2
    halt                                          ; $71a3: $76
    ld [hl], d                                    ; $71a4: $72
    ld [c], a                                     ; $71a5: $e2
    add e                                         ; $71a6: $83
    ld [hl], d                                    ; $71a7: $72
    ld a, [de]                                    ; $71a8: $1a
    ld h, l                                       ; $71a9: $65
    ld d, h                                       ; $71aa: $54
    ld a, [hl-]                                   ; $71ab: $3a
    add l                                         ; $71ac: $85
    ld d, h                                       ; $71ad: $54
    rst $10                                       ; $71ae: $d7
    ld d, h                                       ; $71af: $54
    ld d, l                                       ; $71b0: $55
    ld d, h                                       ; $71b1: $54
    ld d, l                                       ; $71b2: $55
    ret c                                         ; $71b3: $d8

    or h                                          ; $71b4: $b4
    or l                                          ; $71b5: $b5
    and h                                         ; $71b6: $a4
    and l                                         ; $71b7: $a5
    ld [c], a                                     ; $71b8: $e2
    ld h, a                                       ; $71b9: $67
    ld [hl], d                                    ; $71ba: $72
    ld [c], a                                     ; $71bb: $e2
    halt                                          ; $71bc: $76
    ld [hl], d                                    ; $71bd: $72
    ld [c], a                                     ; $71be: $e2
    add e                                         ; $71bf: $83
    ld [hl], d                                    ; $71c0: $72
    ld [c], a                                     ; $71c1: $e2
    halt                                          ; $71c2: $76
    ld [hl], d                                    ; $71c3: $72
    ld [c], a                                     ; $71c4: $e2
    add e                                         ; $71c5: $83
    ld [hl], d                                    ; $71c6: $72
    ld [c], a                                     ; $71c7: $e2
    halt                                          ; $71c8: $76
    ld [hl], d                                    ; $71c9: $72
    ld [c], a                                     ; $71ca: $e2
    add e                                         ; $71cb: $83
    ld [hl], d                                    ; $71cc: $72
    ld a, [de]                                    ; $71cd: $1a
    rst $10                                       ; $71ce: $d7
    ld d, l                                       ; $71cf: $55
    ret c                                         ; $71d0: $d8

    ld d, h                                       ; $71d1: $54
    ld a, [hl-]                                   ; $71d2: $3a
    or h                                          ; $71d3: $b4
    or l                                          ; $71d4: $b5
    inc d                                         ; $71d5: $14
    and l                                         ; $71d6: $a5
    dec d                                         ; $71d7: $15
    ld d, h                                       ; $71d8: $54
    inc [hl]                                      ; $71d9: $34
    dec [hl]                                      ; $71da: $35
    inc [hl]                                      ; $71db: $34
    dec [hl]                                      ; $71dc: $35
    ld [c], a                                     ; $71dd: $e2
    ld h, a                                       ; $71de: $67
    ld [hl], d                                    ; $71df: $72
    ld [c], a                                     ; $71e0: $e2
    halt                                          ; $71e1: $76
    ld [hl], d                                    ; $71e2: $72
    ld [c], a                                     ; $71e3: $e2
    add e                                         ; $71e4: $83
    ld [hl], d                                    ; $71e5: $72
    ld [c], a                                     ; $71e6: $e2
    halt                                          ; $71e7: $76
    ld [hl], d                                    ; $71e8: $72
    ld [c], a                                     ; $71e9: $e2
    add e                                         ; $71ea: $83
    ld [hl], d                                    ; $71eb: $72
    ld [c], a                                     ; $71ec: $e2
    halt                                          ; $71ed: $76
    ld [hl], d                                    ; $71ee: $72
    ld [c], a                                     ; $71ef: $e2
    add e                                         ; $71f0: $83
    ld [hl], d                                    ; $71f1: $72
    ld a, [de]                                    ; $71f2: $1a
    ld h, l                                       ; $71f3: $65
    ld d, h                                       ; $71f4: $54
    ld a, [hl-]                                   ; $71f5: $3a
    add l                                         ; $71f6: $85
    ld d, h                                       ; $71f7: $54
    ld a, [de]                                    ; $71f8: $1a
    dec d                                         ; $71f9: $15
    ld d, h                                       ; $71fa: $54
    dec [hl]                                      ; $71fb: $35
    inc [hl]                                      ; $71fc: $34
    dec [hl]                                      ; $71fd: $35
    inc [hl]                                      ; $71fe: $34
    dec d                                         ; $71ff: $15
    ld h, h                                       ; $7200: $64
    ld d, h                                       ; $7201: $54
    dec d                                         ; $7202: $15
    ld a, [hl-]                                   ; $7203: $3a
    ld h, l                                       ; $7204: $65
    ld d, h                                       ; $7205: $54
    ld a, [de]                                    ; $7206: $1a
    dec d                                         ; $7207: $15
    ld d, h                                       ; $7208: $54
    ld a, [hl-]                                   ; $7209: $3a
    dec [hl]                                      ; $720a: $35
    ld d, h                                       ; $720b: $54
    dec d                                         ; $720c: $15
    ld h, h                                       ; $720d: $64
    ld d, h                                       ; $720e: $54
    dec d                                         ; $720f: $15
    ld a, [hl-]                                   ; $7210: $3a
    add l                                         ; $7211: $85
    ld h, h                                       ; $7212: $64
    ld a, [de]                                    ; $7213: $1a
    dec d                                         ; $7214: $15
    ld d, h                                       ; $7215: $54
    ld a, [hl-]                                   ; $7216: $3a
    add l                                         ; $7217: $85
    ld d, h                                       ; $7218: $54
    dec d                                         ; $7219: $15
    ld h, h                                       ; $721a: $64
    ld d, h                                       ; $721b: $54
    dec d                                         ; $721c: $15
    ld a, [hl-]                                   ; $721d: $3a
    add l                                         ; $721e: $85
    ld d, h                                       ; $721f: $54
    ld a, [de]                                    ; $7220: $1a
    dec d                                         ; $7221: $15
    ld d, h                                       ; $7222: $54
    ld a, [hl-]                                   ; $7223: $3a
    inc [hl]                                      ; $7224: $34
    dec [hl]                                      ; $7225: $35
    dec d                                         ; $7226: $15
    ld d, h                                       ; $7227: $54
    add h                                         ; $7228: $84
    dec d                                         ; $7229: $15
    ld a, [hl-]                                   ; $722a: $3a
    ld h, l                                       ; $722b: $65
    ld d, h                                       ; $722c: $54
    ld a, [de]                                    ; $722d: $1a
    dec d                                         ; $722e: $15
    ld d, h                                       ; $722f: $54
    ld a, [hl-]                                   ; $7230: $3a
    ld h, l                                       ; $7231: $65
    ld d, h                                       ; $7232: $54
    ld [c], a                                     ; $7233: $e2
    ld h, a                                       ; $7234: $67
    ld [hl], d                                    ; $7235: $72
    ld [c], a                                     ; $7236: $e2
    halt                                          ; $7237: $76
    ld [hl], d                                    ; $7238: $72
    ld [c], a                                     ; $7239: $e2
    add e                                         ; $723a: $83
    ld [hl], d                                    ; $723b: $72
    ld [c], a                                     ; $723c: $e2
    halt                                          ; $723d: $76
    ld [hl], d                                    ; $723e: $72
    ld [c], a                                     ; $723f: $e2
    add e                                         ; $7240: $83
    ld [hl], d                                    ; $7241: $72
    ld [c], a                                     ; $7242: $e2
    halt                                          ; $7243: $76
    ld [hl], d                                    ; $7244: $72
    ld [c], a                                     ; $7245: $e2
    add e                                         ; $7246: $83
    ld [hl], d                                    ; $7247: $72
    ld [c], a                                     ; $7248: $e2
    halt                                          ; $7249: $76
    ld [hl], d                                    ; $724a: $72
    ld [c], a                                     ; $724b: $e2
    add e                                         ; $724c: $83
    ld [hl], d                                    ; $724d: $72
    ld [c], a                                     ; $724e: $e2
    halt                                          ; $724f: $76
    ld [hl], d                                    ; $7250: $72
    ld [c], a                                     ; $7251: $e2
    add e                                         ; $7252: $83
    ld [hl], d                                    ; $7253: $72
    ld a, [de]                                    ; $7254: $1a
    ld h, l                                       ; $7255: $65
    ld d, h                                       ; $7256: $54
    inc [hl]                                      ; $7257: $34
    dec [hl]                                      ; $7258: $35
    inc [hl]                                      ; $7259: $34
    dec [hl]                                      ; $725a: $35
    rst $10                                       ; $725b: $d7
    ld d, h                                       ; $725c: $54
    ld d, l                                       ; $725d: $55
    ld d, h                                       ; $725e: $54
    ld d, l                                       ; $725f: $55
    ret c                                         ; $7260: $d8

    or h                                          ; $7261: $b4
    or l                                          ; $7262: $b5
    and h                                         ; $7263: $a4
    and l                                         ; $7264: $a5
    sbc $ff                                       ; $7265: $de $ff
    rst $10                                       ; $7267: $d7
    sbc d                                         ; $7268: $9a
    ret c                                         ; $7269: $d8

    ld h, l                                       ; $726a: $65
    ld d, h                                       ; $726b: $54
    ld a, [hl-]                                   ; $726c: $3a
    add l                                         ; $726d: $85
    ld d, h                                       ; $726e: $54
    ld a, [de]                                    ; $726f: $1a
    dec d                                         ; $7270: $15
    ld d, h                                       ; $7271: $54
    ld a, [hl-]                                   ; $7272: $3a
    ld h, l                                       ; $7273: $65
    ld d, h                                       ; $7274: $54
    db $e3                                        ; $7275: $e3
    ld a, [de]                                    ; $7276: $1a
    ld h, l                                       ; $7277: $65
    ld d, h                                       ; $7278: $54
    ld a, [hl-]                                   ; $7279: $3a
    add l                                         ; $727a: $85
    ld d, h                                       ; $727b: $54
    ld a, [de]                                    ; $727c: $1a
    dec d                                         ; $727d: $15
    ld d, h                                       ; $727e: $54
    ld a, [hl-]                                   ; $727f: $3a
    ld h, l                                       ; $7280: $65
    ld d, h                                       ; $7281: $54
    db $e3                                        ; $7282: $e3
    ld a, [de]                                    ; $7283: $1a
    ld h, l                                       ; $7284: $65
    ld d, h                                       ; $7285: $54
    ld a, [hl-]                                   ; $7286: $3a
    add l                                         ; $7287: $85
    ld d, h                                       ; $7288: $54
    ld a, [de]                                    ; $7289: $1a
    dec d                                         ; $728a: $15
    ld d, h                                       ; $728b: $54
    ld a, [hl-]                                   ; $728c: $3a
    ld h, l                                       ; $728d: $65
    ld d, h                                       ; $728e: $54
    db $e3                                        ; $728f: $e3

    db $d0, $01, $dc, $11, $ea, $10, $eb, $15, $e8, $07, $d2, $e6, $b0, $e5, $40, $5c
    db $5c, $9c, $55, $a6, $d9, $a5, $56, $cc, $d7, $2c, $3c, $d8, $5c, $5c, $9c, $55

    and [hl]                                      ; $72b0: $a6
    reti                                          ; $72b1: $d9


    and l                                         ; $72b2: $a5
    ld d, [hl]                                    ; $72b3: $56
    call z, Call_000_3cd7                         ; $72b4: $cc $d7 $3c
    ld e, h                                       ; $72b7: $5c
    and $c0                                       ; $72b8: $e6 $c0
    push hl                                       ; $72ba: $e5
    ld b, b                                       ; $72bb: $40
    ld [c], a                                     ; $72bc: $e2
    ld a, c                                       ; $72bd: $79
    ld [hl], e                                    ; $72be: $73
    call nc, $d93c                                ; $72bf: $d4 $3c $d9
    dec [hl]                                      ; $72c2: $35
    ld h, $d9                                     ; $72c3: $26 $d9
    inc l                                         ; $72c5: $2c
    jr c, jr_07c_72cb                             ; $72c6: $38 $03

    ld e, h                                       ; $72c8: $5c
    reti                                          ; $72c9: $d9


    ld d, l                                       ; $72ca: $55

jr_07c_72cb:
    ld [hl], $d9                                  ; $72cb: $36 $d9
    inc a                                         ; $72cd: $3c
    jr z, jr_07c_72d3                             ; $72ce: $28 $03

    inc a                                         ; $72d0: $3c
    reti                                          ; $72d1: $d9


    inc a                                         ; $72d2: $3c

jr_07c_72d3:
    reti                                          ; $72d3: $d9


    inc a                                         ; $72d4: $3c
    inc hl                                        ; $72d5: $23
    inc de                                        ; $72d6: $13
    ret c                                         ; $72d7: $d8

    call nz, $ccd9                                ; $72d8: $c4 $d9 $cc
    reti                                          ; $72db: $d9


    call z, $ccd9                                 ; $72dc: $cc $d9 $cc
    inc c                                         ; $72df: $0c
    ld [c], a                                     ; $72e0: $e2
    ld a, c                                       ; $72e1: $79
    ld [hl], e                                    ; $72e2: $73
    call nc, $d93c                                ; $72e3: $d4 $3c $d9
    dec [hl]                                      ; $72e6: $35
    ld h, $d9                                     ; $72e7: $26 $d9
    inc l                                         ; $72e9: $2c
    jr c, jr_07c_72ef                             ; $72ea: $38 $03

    ld e, h                                       ; $72ec: $5c
    reti                                          ; $72ed: $d9


    ld d, l                                       ; $72ee: $55

jr_07c_72ef:
    halt                                          ; $72ef: $76
    reti                                          ; $72f0: $d9


    ld a, h                                       ; $72f1: $7c
    sbc b                                         ; $72f2: $98
    inc bc                                        ; $72f3: $03
    xor h                                         ; $72f4: $ac
    reti                                          ; $72f5: $d9


    xor h                                         ; $72f6: $ac
    reti                                          ; $72f7: $d9


    xor h                                         ; $72f8: $ac
    sub l                                         ; $72f9: $95
    halt                                          ; $72fa: $76
    inc a                                         ; $72fb: $3c
    reti                                          ; $72fc: $d9


    inc a                                         ; $72fd: $3c
    reti                                          ; $72fe: $d9


    inc a                                         ; $72ff: $3c
    inc c                                         ; $7300: $0c
    push hl                                       ; $7301: $e5
    add b                                         ; $7302: $80
    inc c                                         ; $7303: $0c
    inc c                                         ; $7304: $0c
    inc c                                         ; $7305: $0c
    inc c                                         ; $7306: $0c
    ret c                                         ; $7307: $d8

    ld e, h                                       ; $7308: $5c
    reti                                          ; $7309: $d9


    ld d, l                                       ; $730a: $55
    halt                                          ; $730b: $76
    reti                                          ; $730c: $d9


    ld a, h                                       ; $730d: $7c
    sbc h                                         ; $730e: $9c
    xor h                                         ; $730f: $ac
    reti                                          ; $7310: $d9


    and l                                         ; $7311: $a5
    sub [hl]                                      ; $7312: $96
    reti                                          ; $7313: $d9


    sbc h                                         ; $7314: $9c
    xor b                                         ; $7315: $a8
    inc bc                                        ; $7316: $03
    call z, $c5d9                                 ; $7317: $cc $d9 $c5
    and [hl]                                      ; $731a: $a6
    reti                                          ; $731b: $d9


    xor h                                         ; $731c: $ac
    sbc b                                         ; $731d: $98
    inc bc                                        ; $731e: $03
    adc h                                         ; $731f: $8c
    reti                                          ; $7320: $d9


    adc h                                         ; $7321: $8c
    reti                                          ; $7322: $d9


    adc h                                         ; $7323: $8c
    inc a                                         ; $7324: $3c
    reti                                          ; $7325: $d9


    inc a                                         ; $7326: $3c
    reti                                          ; $7327: $d9


    inc a                                         ; $7328: $3c
    reti                                          ; $7329: $d9


    inc a                                         ; $732a: $3c
    reti                                          ; $732b: $d9


    inc a                                         ; $732c: $3c
    inc c                                         ; $732d: $0c
    inc c                                         ; $732e: $0c
    inc c                                         ; $732f: $0c
    inc c                                         ; $7330: $0c
    cp h                                          ; $7331: $bc
    reti                                          ; $7332: $d9


    or l                                          ; $7333: $b5
    rst $10                                       ; $7334: $d7
    ld d, $d9                                     ; $7335: $16 $d9
    inc e                                         ; $7337: $1c
    inc a                                         ; $7338: $3c
    inc e                                         ; $7339: $1c
    reti                                          ; $733a: $d9


    inc e                                         ; $733b: $1c
    reti                                          ; $733c: $d9


    inc e                                         ; $733d: $1c
    adc h                                         ; $733e: $8c
    reti                                          ; $733f: $d9


    adc h                                         ; $7340: $8c
    reti                                          ; $7341: $d9


    adc h                                         ; $7342: $8c
    reti                                          ; $7343: $d9


    adc h                                         ; $7344: $8c
    reti                                          ; $7345: $d9


    adc h                                         ; $7346: $8c
    adc h                                         ; $7347: $8c
    reti                                          ; $7348: $d9


    add l                                         ; $7349: $85
    ld h, [hl]                                    ; $734a: $66
    reti                                          ; $734b: $d9


    ld l, h                                       ; $734c: $6c
    adc h                                         ; $734d: $8c
    adc h                                         ; $734e: $8c
    reti                                          ; $734f: $d9


    add l                                         ; $7350: $85
    and [hl]                                      ; $7351: $a6
    reti                                          ; $7352: $d9


    xor h                                         ; $7353: $ac
    cp h                                          ; $7354: $bc
    xor h                                         ; $7355: $ac
    reti                                          ; $7356: $d9


    xor h                                         ; $7357: $ac
    reti                                          ; $7358: $d9


    xor h                                         ; $7359: $ac
    reti                                          ; $735a: $d9


    xor h                                         ; $735b: $ac
    reti                                          ; $735c: $d9


    xor h                                         ; $735d: $ac
    reti                                          ; $735e: $d9


    xor h                                         ; $735f: $ac
    reti                                          ; $7360: $d9


    xor h                                         ; $7361: $ac
    reti                                          ; $7362: $d9


    and l                                         ; $7363: $a5
    ld b, $d8                                     ; $7364: $06 $d8
    ret c                                         ; $7366: $d8

    adc h                                         ; $7367: $8c
    reti                                          ; $7368: $d9


    add l                                         ; $7369: $85
    halt                                          ; $736a: $76
    reti                                          ; $736b: $d9


    ld a, h                                       ; $736c: $7c
    ld l, h                                       ; $736d: $6c
    reti                                          ; $736e: $d9


    ld l, h                                       ; $736f: $6c
    inc a                                         ; $7370: $3c
    inc e                                         ; $7371: $1c
    ret c                                         ; $7372: $d8

    cp h                                          ; $7373: $bc
    xor $22                                       ; $7374: $ee $22
    adc h                                         ; $7376: $8c
    inc c                                         ; $7377: $0c
    rst $38                                       ; $7378: $ff
    call nc, $d93c                                ; $7379: $d4 $3c $d9
    inc a                                         ; $737c: $3c
    reti                                          ; $737d: $d9


    inc a                                         ; $737e: $3c
    inc l                                         ; $737f: $2c
    ret c                                         ; $7380: $d8

    push bc                                       ; $7381: $c5
    ld b, $a5                                     ; $7382: $06 $a5
    ld b, $95                                     ; $7384: $06 $95
    and [hl]                                      ; $7386: $a6
    reti                                          ; $7387: $d9


    and l                                         ; $7388: $a5
    or e                                          ; $7389: $b3
    jp nz, Jump_07c_5ccc                          ; $738a: $c2 $cc $5c

    reti                                          ; $738d: $d9


    ld e, h                                       ; $738e: $5c
    reti                                          ; $738f: $d9


    ld e, h                                       ; $7390: $5c
    dec b                                         ; $7391: $05
    ld d, [hl]                                    ; $7392: $56
    dec [hl]                                      ; $7393: $35
    ld d, [hl]                                    ; $7394: $56
    ld [hl], l                                    ; $7395: $75
    sub [hl]                                      ; $7396: $96
    and l                                         ; $7397: $a5
    add $e3                                       ; $7398: $c6 $e3

    db $d0, $01, $e5, $40, $dc, $11, $ea, $10, $eb, $15, $d5, $e8, $03, $e6, $50, $ee
    db $22, $df, $08, $5c, $d8, $5c, $d7, $5c, $d8, $5c, $d7, $e0

    xor $46                                       ; $73b6: $ee $46
    add sp, $07                                   ; $73b8: $e8 $07
    and $90                                       ; $73ba: $e6 $90
    ld [c], a                                     ; $73bc: $e2
    adc h                                         ; $73bd: $8c
    ld [hl], h                                    ; $73be: $74
    add sp, $03                                   ; $73bf: $e8 $03
    and $50                                       ; $73c1: $e6 $50
    xor $22                                       ; $73c3: $ee $22
    push de                                       ; $73c5: $d5
    rst $18                                       ; $73c6: $df
    inc b                                         ; $73c7: $04
    ld e, h                                       ; $73c8: $5c
    ret c                                         ; $73c9: $d8

    ld e, h                                       ; $73ca: $5c
    rst $10                                       ; $73cb: $d7
    ld e, h                                       ; $73cc: $5c
    ret c                                         ; $73cd: $d8

    ld e, h                                       ; $73ce: $5c
    rst $10                                       ; $73cf: $d7
    ldh [$ee], a                                  ; $73d0: $e0 $ee
    ld b, [hl]                                    ; $73d2: $46
    and $90                                       ; $73d3: $e6 $90
    add sp, $07                                   ; $73d5: $e8 $07
    ld [c], a                                     ; $73d7: $e2
    adc h                                         ; $73d8: $8c
    ld [hl], h                                    ; $73d9: $74
    xor $22                                       ; $73da: $ee $22
    db $d3                                        ; $73dc: $d3
    ld e, h                                       ; $73dd: $5c
    rst $10                                       ; $73de: $d7
    ld d, l                                       ; $73df: $55
    ret c                                         ; $73e0: $d8

    ld b, $3c                                     ; $73e1: $06 $3c
    rst $10                                       ; $73e3: $d7
    dec [hl]                                      ; $73e4: $35
    ret c                                         ; $73e5: $d8

    ld b, $2c                                     ; $73e6: $06 $2c
    rst $10                                       ; $73e8: $d7
    dec h                                         ; $73e9: $25
    ret c                                         ; $73ea: $d8

    ld b, $d8                                     ; $73eb: $06 $d8
    call z, $c5d7                                 ; $73ed: $cc $d7 $c5
    ld b, $ee                                     ; $73f0: $06 $ee
    ld b, [hl]                                    ; $73f2: $46
    ret c                                         ; $73f3: $d8

    xor h                                         ; $73f4: $ac
    inc a                                         ; $73f5: $3c
    ld a, h                                       ; $73f6: $7c
    and l                                         ; $73f7: $a5
    rst $10                                       ; $73f8: $d7
    ld [hl], $d9                                  ; $73f9: $36 $d9
    dec [hl]                                      ; $73fb: $35
    ret c                                         ; $73fc: $d8

    and [hl]                                      ; $73fd: $a6
    ld a, h                                       ; $73fe: $7c
    inc a                                         ; $73ff: $3c
    xor h                                         ; $7400: $ac
    adc h                                         ; $7401: $8c
    inc a                                         ; $7402: $3c
    call z, $8635                                 ; $7403: $cc $35 $86
    reti                                          ; $7406: $d9


    add l                                         ; $7407: $85
    ld [hl], $ac                                  ; $7408: $36 $ac
    call z, $d23c                                 ; $740a: $cc $3c $d2
    or l                                          ; $740d: $b5
    ld h, [hl]                                    ; $740e: $66
    rst $10                                       ; $740f: $d7
    dec [hl]                                      ; $7410: $35
    ret c                                         ; $7411: $d8

    or [hl]                                       ; $7412: $b6
    rst $10                                       ; $7413: $d7
    ld h, l                                       ; $7414: $65
    ld [hl], $d8                                  ; $7415: $36 $d8
    or l                                          ; $7417: $b5
    ld h, [hl]                                    ; $7418: $66
    or l                                          ; $7419: $b5
    ld h, [hl]                                    ; $741a: $66
    rst $10                                       ; $741b: $d7
    dec [hl]                                      ; $741c: $35
    ret c                                         ; $741d: $d8

    ld h, [hl]                                    ; $741e: $66
    rst $10                                       ; $741f: $d7
    ld h, l                                       ; $7420: $65
    ld [hl], $d8                                  ; $7421: $36 $d8
    or l                                          ; $7423: $b5
    ld h, [hl]                                    ; $7424: $66
    rst $10                                       ; $7425: $d7
    dec d                                         ; $7426: $15
    ret c                                         ; $7427: $d8

    add [hl]                                      ; $7428: $86
    rst $10                                       ; $7429: $d7
    ld d, l                                       ; $742a: $55
    ret c                                         ; $742b: $d8

    add [hl]                                      ; $742c: $86
    rst $10                                       ; $742d: $d7
    add l                                         ; $742e: $85
    ld d, [hl]                                    ; $742f: $56
    dec d                                         ; $7430: $15
    ret c                                         ; $7431: $d8

    add [hl]                                      ; $7432: $86
    rst $10                                       ; $7433: $d7
    dec d                                         ; $7434: $15
    ret c                                         ; $7435: $d8

    add [hl]                                      ; $7436: $86
    rst $10                                       ; $7437: $d7
    ld d, l                                       ; $7438: $55
    ret c                                         ; $7439: $d8

    add [hl]                                      ; $743a: $86
    rst $10                                       ; $743b: $d7
    add l                                         ; $743c: $85
    ld d, [hl]                                    ; $743d: $56
    dec d                                         ; $743e: $15
    ret c                                         ; $743f: $d8

    add [hl]                                      ; $7440: $86
    rst $10                                       ; $7441: $d7
    rst $10                                       ; $7442: $d7
    ld c, h                                       ; $7443: $4c
    reti                                          ; $7444: $d9


    ld b, l                                       ; $7445: $45
    ld [hl], $d9                                  ; $7446: $36 $d9
    inc a                                         ; $7448: $3c
    ld c, h                                       ; $7449: $4c
    ld c, h                                       ; $744a: $4c
    reti                                          ; $744b: $d9


    ld b, l                                       ; $744c: $45
    ld h, [hl]                                    ; $744d: $66
    reti                                          ; $744e: $d9


    ld l, h                                       ; $744f: $6c
    adc h                                         ; $7450: $8c
    ld l, h                                       ; $7451: $6c
    reti                                          ; $7452: $d9


    ld l, h                                       ; $7453: $6c
    reti                                          ; $7454: $d9


    ld l, h                                       ; $7455: $6c
    reti                                          ; $7456: $d9


    ld l, h                                       ; $7457: $6c
    reti                                          ; $7458: $d9


    ld l, h                                       ; $7459: $6c
    reti                                          ; $745a: $d9


    ld l, h                                       ; $745b: $6c
    reti                                          ; $745c: $d9


    ld l, h                                       ; $745d: $6c
    reti                                          ; $745e: $d9


    ld h, l                                       ; $745f: $65
    ld b, $e6                                     ; $7460: $06 $e6
    ld h, b                                       ; $7462: $60
    xor $22                                       ; $7463: $ee $22
    add sp, $03                                   ; $7465: $e8 $03
    rst $10                                       ; $7467: $d7
    add l                                         ; $7468: $85
    ret c                                         ; $7469: $d8

    add [hl]                                      ; $746a: $86
    rst $10                                       ; $746b: $d7
    dec [hl]                                      ; $746c: $35
    add [hl]                                      ; $746d: $86
    ret c                                         ; $746e: $d8

    add l                                         ; $746f: $85
    rst $10                                       ; $7470: $d7
    add [hl]                                      ; $7471: $86
    ret c                                         ; $7472: $d8

    add l                                         ; $7473: $85
    rst $10                                       ; $7474: $d7
    ld [hl], $85                                  ; $7475: $36 $85
    ret c                                         ; $7477: $d8

    add [hl]                                      ; $7478: $86
    rst $10                                       ; $7479: $d7
    add l                                         ; $747a: $85
    ret c                                         ; $747b: $d8

    add [hl]                                      ; $747c: $86
    rst $10                                       ; $747d: $d7
    dec [hl]                                      ; $747e: $35
    add [hl]                                      ; $747f: $86
    ret c                                         ; $7480: $d8

    add l                                         ; $7481: $85
    rst $10                                       ; $7482: $d7
    ld [hl], $e8                                  ; $7483: $36 $e8
    rlca                                          ; $7485: $07
    and $90                                       ; $7486: $e6 $90
    ret c                                         ; $7488: $d8

    adc h                                         ; $7489: $8c
    inc c                                         ; $748a: $0c
    rst $38                                       ; $748b: $ff
    jp nc, $d9ac                                  ; $748c: $d2 $ac $d9

    and l                                         ; $748f: $a5
    sub [hl]                                      ; $7490: $96
    reti                                          ; $7491: $d9


    sbc h                                         ; $7492: $9c
    xor h                                         ; $7493: $ac
    call z, $c5d9                                 ; $7494: $cc $d9 $c5
    and [hl]                                      ; $7497: $a6
    reti                                          ; $7498: $d9


    xor h                                         ; $7499: $ac
    call z, $d9ac                                 ; $749a: $cc $ac $d9
    xor h                                         ; $749d: $ac
    reti                                          ; $749e: $d9


    xor h                                         ; $749f: $ac
    rst $10                                       ; $74a0: $d7
    inc a                                         ; $74a1: $3c
    reti                                          ; $74a2: $d9


    inc a                                         ; $74a3: $3c
    reti                                          ; $74a4: $d9


    inc a                                         ; $74a5: $3c
    reti                                          ; $74a6: $d9


    inc a                                         ; $74a7: $3c
    reti                                          ; $74a8: $d9


    inc a                                         ; $74a9: $3c
    db $e3                                        ; $74aa: $e3

    db $d0, $01, $e7, $01, $e6, $20, $e9, $00, $dc, $11, $e8, $07, $d1, $e2, $4a, $75
    db $e2, $58, $75

    ld [c], a                                     ; $74be: $e2
    ld c, d                                       ; $74bf: $4a
    ld [hl], l                                    ; $74c0: $75
    ld [c], a                                     ; $74c1: $e2
    ld e, b                                       ; $74c2: $58
    ld [hl], l                                    ; $74c3: $75
    ld [c], a                                     ; $74c4: $e2
    ld c, d                                       ; $74c5: $4a
    ld [hl], l                                    ; $74c6: $75
    ld [c], a                                     ; $74c7: $e2
    ld h, [hl]                                    ; $74c8: $66
    ld [hl], l                                    ; $74c9: $75
    ld [c], a                                     ; $74ca: $e2
    ld c, d                                       ; $74cb: $4a
    ld [hl], l                                    ; $74cc: $75
    ld [c], a                                     ; $74cd: $e2
    ld e, b                                       ; $74ce: $58
    ld [hl], l                                    ; $74cf: $75
    ld [c], a                                     ; $74d0: $e2
    ld c, d                                       ; $74d1: $4a
    ld [hl], l                                    ; $74d2: $75
    ld [c], a                                     ; $74d3: $e2
    ld h, [hl]                                    ; $74d4: $66
    ld [hl], l                                    ; $74d5: $75
    pop de                                        ; $74d6: $d1
    ld e, h                                       ; $74d7: $5c
    ld e, h                                       ; $74d8: $5c
    rst $10                                       ; $74d9: $d7
    ld e, h                                       ; $74da: $5c
    ret c                                         ; $74db: $d8

    ld d, l                                       ; $74dc: $55
    rst $10                                       ; $74dd: $d7
    ld [hl], $d9                                  ; $74de: $36 $d9
    dec [hl]                                      ; $74e0: $35
    ret c                                         ; $74e1: $d8

    ld d, [hl]                                    ; $74e2: $56
    rst $10                                       ; $74e3: $d7
    inc l                                         ; $74e4: $2c
    ret c                                         ; $74e5: $d8

    call z, Call_000_2cd7                         ; $74e6: $cc $d7 $2c
    ret c                                         ; $74e9: $d8

    inc a                                         ; $74ea: $3c
    inc a                                         ; $74eb: $3c
    rst $10                                       ; $74ec: $d7
    inc a                                         ; $74ed: $3c
    ret c                                         ; $74ee: $d8

    dec [hl]                                      ; $74ef: $35
    rst $10                                       ; $74f0: $d7
    ld h, $d9                                     ; $74f1: $26 $d9
    dec h                                         ; $74f3: $25
    ret c                                         ; $74f4: $d8

    ld [hl], $cc                                  ; $74f5: $36 $cc
    xor h                                         ; $74f7: $ac
    call z, $8c8c                                 ; $74f8: $cc $8c $8c
    rst $10                                       ; $74fb: $d7
    adc h                                         ; $74fc: $8c
    ret c                                         ; $74fd: $d8

    add l                                         ; $74fe: $85
    rst $10                                       ; $74ff: $d7
    ld h, [hl]                                    ; $7500: $66
    reti                                          ; $7501: $d9


    ld h, l                                       ; $7502: $65
    ret c                                         ; $7503: $d8

    add [hl]                                      ; $7504: $86
    rst $10                                       ; $7505: $d7
    inc a                                         ; $7506: $3c
    ret c                                         ; $7507: $d8

    adc h                                         ; $7508: $8c
    rst $10                                       ; $7509: $d7
    adc h                                         ; $750a: $8c
    ret c                                         ; $750b: $d8

    rst $18                                       ; $750c: $df
    ld [bc], a                                    ; $750d: $02
    cp h                                          ; $750e: $bc
    rst $10                                       ; $750f: $d7
    cp h                                          ; $7510: $bc
    ret c                                         ; $7511: $d8

    cp h                                          ; $7512: $bc
    rst $10                                       ; $7513: $d7
    cp h                                          ; $7514: $bc
    ret c                                         ; $7515: $d8

    ldh [$d7], a                                  ; $7516: $e0 $d7
    rst $18                                       ; $7518: $df
    ld [bc], a                                    ; $7519: $02
    inc e                                         ; $751a: $1c
    rst $10                                       ; $751b: $d7
    inc e                                         ; $751c: $1c
    ret c                                         ; $751d: $d8

    inc e                                         ; $751e: $1c
    rst $10                                       ; $751f: $d7
    inc e                                         ; $7520: $1c
    ret c                                         ; $7521: $d8

    ldh [$d8], a                                  ; $7522: $e0 $d8
    rst $18                                       ; $7524: $df
    ld [bc], a                                    ; $7525: $02
    ld c, h                                       ; $7526: $4c
    rst $10                                       ; $7527: $d7
    ld c, h                                       ; $7528: $4c
    ret c                                         ; $7529: $d8

    ld c, h                                       ; $752a: $4c
    rst $10                                       ; $752b: $d7
    ld c, h                                       ; $752c: $4c
    ret c                                         ; $752d: $d8

    ldh [$df], a                                  ; $752e: $e0 $df
    ld [bc], a                                    ; $7530: $02
    ld l, h                                       ; $7531: $6c
    rst $10                                       ; $7532: $d7
    ld l, h                                       ; $7533: $6c
    ret c                                         ; $7534: $d8

    ld l, h                                       ; $7535: $6c
    rst $10                                       ; $7536: $d7
    ld l, h                                       ; $7537: $6c
    ret c                                         ; $7538: $d8

    ldh [$d7], a                                  ; $7539: $e0 $d7
    adc h                                         ; $753b: $8c
    add l                                         ; $753c: $85
    ld [hl], l                                    ; $753d: $75
    reti                                          ; $753e: $d9


    ld a, h                                       ; $753f: $7c
    ld l, h                                       ; $7540: $6c
    reti                                          ; $7541: $d9


    ld l, h                                       ; $7542: $6c
    inc a                                         ; $7543: $3c
    inc e                                         ; $7544: $1c
    ret c                                         ; $7545: $d8

    cp h                                          ; $7546: $bc
    adc h                                         ; $7547: $8c
    inc c                                         ; $7548: $0c
    rst $38                                       ; $7549: $ff

    db $d1, $5c, $5c, $9c, $55, $a6, $d9, $a5, $56, $cc, $d7, $2c, $3c, $e3, $d1, $5c
    db $5c, $9c, $55

    and [hl]                                      ; $755d: $a6
    reti                                          ; $755e: $d9


    and l                                         ; $755f: $a5
    ld d, [hl]                                    ; $7560: $56
    call z, Call_000_3cd7                         ; $7561: $cc $d7 $3c
    ld e, h                                       ; $7564: $5c
    db $e3                                        ; $7565: $e3
    pop de                                        ; $7566: $d1
    inc a                                         ; $7567: $3c
    inc a                                         ; $7568: $3c
    rst $10                                       ; $7569: $d7
    inc a                                         ; $756a: $3c
    ret c                                         ; $756b: $d8

    dec [hl]                                      ; $756c: $35
    rst $10                                       ; $756d: $d7
    ld h, $d9                                     ; $756e: $26 $d9
    dec h                                         ; $7570: $25
    ret c                                         ; $7571: $d8

    ld [hl], $cc                                  ; $7572: $36 $cc
    xor h                                         ; $7574: $ac
    sub l                                         ; $7575: $95
    and [hl]                                      ; $7576: $a6
    db $e3                                        ; $7577: $e3

    db $d0, $01, $d1, $1c, $55, $56, $1c, $55, $56, $1c, $55, $56, $1c, $55, $56, $1c
    db $55, $56, $1c, $55

    ld d, [hl]                                    ; $758c: $56
    inc e                                         ; $758d: $1c
    ld d, l                                       ; $758e: $55
    ld d, [hl]                                    ; $758f: $56
    dec [hl]                                      ; $7590: $35
    ld [hl], $35                                  ; $7591: $36 $35
    ld [hl], $d7                                  ; $7593: $36 $d7
    sbc h                                         ; $7595: $9c
    ret c                                         ; $7596: $d8

    inc e                                         ; $7597: $1c
    dec [hl]                                      ; $7598: $35
    ld d, [hl]                                    ; $7599: $56
    dec d                                         ; $759a: $15
    ld d, $05                                     ; $759b: $16 $05
    ld d, [hl]                                    ; $759d: $56
    ld d, l                                       ; $759e: $55
    ld d, $3c                                     ; $759f: $16 $3c
    dec [hl]                                      ; $75a1: $35
    ld d, [hl]                                    ; $75a2: $56
    dec d                                         ; $75a3: $15
    ld d, [hl]                                    ; $75a4: $56
    inc e                                         ; $75a5: $1c
    inc a                                         ; $75a6: $3c
    dec d                                         ; $75a7: $15
    ld d, $55                                     ; $75a8: $16 $55
    ld d, $05                                     ; $75aa: $16 $05
    ld d, $35                                     ; $75ac: $16 $35
    ld d, [hl]                                    ; $75ae: $56
    dec [hl]                                      ; $75af: $35
    ld d, [hl]                                    ; $75b0: $56
    dec d                                         ; $75b1: $15
    ld d, [hl]                                    ; $75b2: $56
    dec d                                         ; $75b3: $15
    ld d, [hl]                                    ; $75b4: $56
    inc a                                         ; $75b5: $3c
    dec d                                         ; $75b6: $15
    ld d, $05                                     ; $75b7: $16 $05
    ld d, [hl]                                    ; $75b9: $56
    ld d, l                                       ; $75ba: $55
    ld d, $3c                                     ; $75bb: $16 $3c
    dec [hl]                                      ; $75bd: $35
    ld d, [hl]                                    ; $75be: $56
    dec d                                         ; $75bf: $15
    ld d, [hl]                                    ; $75c0: $56
    inc e                                         ; $75c1: $1c
    inc a                                         ; $75c2: $3c
    dec d                                         ; $75c3: $15
    ld d, $05                                     ; $75c4: $16 $05
    ld d, $55                                     ; $75c6: $16 $55
    ld d, $35                                     ; $75c8: $16 $35
    ld [hl], $35                                  ; $75ca: $36 $35
    ld [hl], $d7                                  ; $75cc: $36 $d7
    sbc h                                         ; $75ce: $9c
    ret c                                         ; $75cf: $d8

    dec d                                         ; $75d0: $15
    ld d, [hl]                                    ; $75d1: $56
    inc a                                         ; $75d2: $3c
    dec d                                         ; $75d3: $15
    ld d, $05                                     ; $75d4: $16 $05
    ld d, [hl]                                    ; $75d6: $56
    ld d, l                                       ; $75d7: $55
    ld d, $3c                                     ; $75d8: $16 $3c
    inc a                                         ; $75da: $3c
    dec d                                         ; $75db: $15
    ld d, [hl]                                    ; $75dc: $56
    inc e                                         ; $75dd: $1c
    dec [hl]                                      ; $75de: $35
    ld d, [hl]                                    ; $75df: $56
    dec d                                         ; $75e0: $15
    ld d, $05                                     ; $75e1: $16 $05
    ld d, $55                                     ; $75e3: $16 $55
    ld d, $3c                                     ; $75e5: $16 $3c
    inc a                                         ; $75e7: $3c
    inc e                                         ; $75e8: $1c
    inc e                                         ; $75e9: $1c
    dec [hl]                                      ; $75ea: $35
    ld d, [hl]                                    ; $75eb: $56
    dec d                                         ; $75ec: $15
    ld d, $05                                     ; $75ed: $16 $05
    ld d, [hl]                                    ; $75ef: $56
    ld d, l                                       ; $75f0: $55
    ld d, $35                                     ; $75f1: $16 $35
    ld d, [hl]                                    ; $75f3: $56
    dec [hl]                                      ; $75f4: $35
    ld d, [hl]                                    ; $75f5: $56
    dec d                                         ; $75f6: $15
    ld d, [hl]                                    ; $75f7: $56
    dec d                                         ; $75f8: $15
    ld d, [hl]                                    ; $75f9: $56
    inc a                                         ; $75fa: $3c
    dec d                                         ; $75fb: $15
    ld d, $05                                     ; $75fc: $16 $05
    ld d, $55                                     ; $75fe: $16 $55
    ld d, $35                                     ; $7600: $16 $35
    ld [hl], $35                                  ; $7602: $36 $35
    ld [hl], $d7                                  ; $7604: $36 $d7
    sub [hl]                                      ; $7606: $96
    ret c                                         ; $7607: $d8

    ld d, l                                       ; $7608: $55
    inc e                                         ; $7609: $1c
    inc a                                         ; $760a: $3c
    dec d                                         ; $760b: $15
    ld d, $55                                     ; $760c: $16 $55
    ld d, $05                                     ; $760e: $16 $05
    ld d, $3c                                     ; $7610: $16 $3c
    inc a                                         ; $7612: $3c
    dec d                                         ; $7613: $15
    ld d, [hl]                                    ; $7614: $56
    inc e                                         ; $7615: $1c
    inc a                                         ; $7616: $3c
    dec d                                         ; $7617: $15
    ld d, $55                                     ; $7618: $16 $55
    ld d, $05                                     ; $761a: $16 $05
    ld d, $3c                                     ; $761c: $16 $3c
    dec [hl]                                      ; $761e: $35
    ld [hl], $15                                  ; $761f: $36 $15
    ld d, [hl]                                    ; $7621: $56
    inc e                                         ; $7622: $1c
    inc a                                         ; $7623: $3c
    dec d                                         ; $7624: $15
    dec d                                         ; $7625: $15
    ld d, l                                       ; $7626: $55
    ld d, $d7                                     ; $7627: $16 $d7
    ld d, l                                       ; $7629: $55
    ld d, [hl]                                    ; $762a: $56
    ret c                                         ; $762b: $d8

    or l                                          ; $762c: $b5
    or [hl]                                       ; $762d: $b6
    and l                                         ; $762e: $a5
    and [hl]                                      ; $762f: $a6
    inc e                                         ; $7630: $1c
    sbc h                                         ; $7631: $9c
    inc a                                         ; $7632: $3c
    sbc h                                         ; $7633: $9c
    inc e                                         ; $7634: $1c
    sbc h                                         ; $7635: $9c
    inc a                                         ; $7636: $3c
    ld d, l                                       ; $7637: $55
    sub [hl]                                      ; $7638: $96
    inc e                                         ; $7639: $1c
    sbc h                                         ; $763a: $9c
    inc a                                         ; $763b: $3c
    sbc h                                         ; $763c: $9c
    inc e                                         ; $763d: $1c
    sbc h                                         ; $763e: $9c
    dec [hl]                                      ; $763f: $35
    ld [hl], $35                                  ; $7640: $36 $35
    ld [hl], $d7                                  ; $7642: $36 $d7
    sbc h                                         ; $7644: $9c
    ret c                                         ; $7645: $d8

    sbc h                                         ; $7646: $9c
    inc a                                         ; $7647: $3c
    sbc h                                         ; $7648: $9c
    inc e                                         ; $7649: $1c
    sbc h                                         ; $764a: $9c
    inc a                                         ; $764b: $3c
    ld d, l                                       ; $764c: $55
    sub [hl]                                      ; $764d: $96
    inc e                                         ; $764e: $1c
    sbc h                                         ; $764f: $9c
    inc a                                         ; $7650: $3c
    sbc h                                         ; $7651: $9c
    inc e                                         ; $7652: $1c
    sbc h                                         ; $7653: $9c
    dec [hl]                                      ; $7654: $35
    ld [hl], $35                                  ; $7655: $36 $35
    ld [hl], $d0                                  ; $7657: $36 $d0
    inc de                                        ; $7659: $13
    ret nz                                        ; $765a: $c0

    ret nc                                        ; $765b: $d0

    ld bc, $0c16                                  ; $765c: $01 $16 $0c
    ret nc                                        ; $765f: $d0

    ld a, [de]                                    ; $7660: $1a
    ret nz                                        ; $7661: $c0

    ret nc                                        ; $7662: $d0

    ld bc, $d73c                                  ; $7663: $01 $3c $d7
    ld d, l                                       ; $7666: $55
    ld d, [hl]                                    ; $7667: $56
    ret c                                         ; $7668: $d8

    or l                                          ; $7669: $b5
    and [hl]                                      ; $766a: $a6
    ret nc                                        ; $766b: $d0

    ld a, [de]                                    ; $766c: $1a
    ret nz                                        ; $766d: $c0

    rst $38                                       ; $766e: $ff
    ret nc                                        ; $766f: $d0

    inc bc                                        ; $7670: $03
    push hl                                       ; $7671: $e5
    ld b, b                                       ; $7672: $40
    and $b0                                       ; $7673: $e6 $b0
    call c, $ea11                                 ; $7675: $dc $11 $ea
    ld bc, $14eb                                  ; $7678: $01 $eb $14
    add sp, $07                                   ; $767b: $e8 $07
    db $d3                                        ; $767d: $d3
    rrca                                          ; $767e: $0f
    db $dd                                        ; $767f: $dd
    rst $18                                       ; $7680: $df
    ld [bc], a                                    ; $7681: $02
    db $d3                                        ; $7682: $d3
    sub a                                         ; $7683: $97
    and l                                         ; $7684: $a5
    ld bc, $a303                                  ; $7685: $01 $03 $a3
    inc bc                                        ; $7688: $03
    and e                                         ; $7689: $a3
    inc bc                                        ; $768a: $03
    sub e                                         ; $768b: $93
    rlca                                          ; $768c: $07
    sub d                                         ; $768d: $92
    nop                                           ; $768e: $00
    ld a, e                                       ; $768f: $7b
    sub a                                         ; $7690: $97
    and e                                         ; $7691: $a3
    inc bc                                        ; $7692: $03
    inc bc                                        ; $7693: $03
    and e                                         ; $7694: $a3
    inc bc                                        ; $7695: $03
    and e                                         ; $7696: $a3
    inc bc                                        ; $7697: $03
    jp nz, $cb00                                  ; $7698: $c2 $00 $cb

    reti                                          ; $769b: $d9


    set 4, b                                      ; $769c: $cb $e0
    db $d3                                        ; $769e: $d3
    and a                                         ; $769f: $a7
    push bc                                       ; $76a0: $c5
    ld bc, $c303                                  ; $76a1: $01 $03 $c3
    inc bc                                        ; $76a4: $03
    jp $a303                                      ; $76a5: $c3 $03 $a3


    rlca                                          ; $76a8: $07
    and d                                         ; $76a9: $a2
    nop                                           ; $76aa: $00
    ld a, e                                       ; $76ab: $7b
    sub e                                         ; $76ac: $93
    sub e                                         ; $76ad: $93
    inc bc                                        ; $76ae: $03
    and e                                         ; $76af: $a3
    inc bc                                        ; $76b0: $03
    and e                                         ; $76b1: $a3
    inc bc                                        ; $76b2: $03
    ld a, c                                       ; $76b3: $79
    reti                                          ; $76b4: $d9


    ld a, c                                       ; $76b5: $79
    rst $10                                       ; $76b6: $d7
    ccf                                           ; $76b7: $3f
    sbc $ff                                       ; $76b8: $de $ff
    ret nc                                        ; $76ba: $d0

    inc bc                                        ; $76bb: $03
    push hl                                       ; $76bc: $e5
    add b                                         ; $76bd: $80
    and $90                                       ; $76be: $e6 $90
    call c, $ea11                                 ; $76c0: $dc $11 $ea
    ld bc, $14eb                                  ; $76c3: $01 $eb $14
    add sp, $07                                   ; $76c6: $e8 $07
    db $d3                                        ; $76c8: $d3
    rrca                                          ; $76c9: $0f
    db $dd                                        ; $76ca: $dd
    rst $18                                       ; $76cb: $df
    ld [bc], a                                    ; $76cc: $02
    jp nc, $d7c7                                  ; $76cd: $d2 $c7 $d7

    dec h                                         ; $76d0: $25
    ld bc, $2303                                  ; $76d1: $01 $03 $23
    inc bc                                        ; $76d4: $03
    inc hl                                        ; $76d5: $23
    inc bc                                        ; $76d6: $03
    ret c                                         ; $76d7: $d8

    jp $c207                                      ; $76d8: $c3 $07 $c2


    nop                                           ; $76db: $00
    set 0, a                                      ; $76dc: $cb $c7
    rst $10                                       ; $76de: $d7
    inc hl                                        ; $76df: $23
    inc bc                                        ; $76e0: $03
    inc bc                                        ; $76e1: $03
    inc hl                                        ; $76e2: $23
    inc bc                                        ; $76e3: $03
    inc hl                                        ; $76e4: $23
    inc bc                                        ; $76e5: $03
    ld b, d                                       ; $76e6: $42

jr_07c_76e7:
    nop                                           ; $76e7: $00
    ld c, e                                       ; $76e8: $4b
    reti                                          ; $76e9: $d9


    ld c, e                                       ; $76ea: $4b
    ldh [$d3], a                                  ; $76eb: $e0 $d3
    scf                                           ; $76ed: $37
    dec [hl]                                      ; $76ee: $35
    ld bc, $3303                                  ; $76ef: $01 $03 $33
    inc bc                                        ; $76f2: $03
    inc sp                                        ; $76f3: $33
    inc bc                                        ; $76f4: $03
    inc sp                                        ; $76f5: $33
    rlca                                          ; $76f6: $07
    ld [hl-], a                                   ; $76f7: $32
    nop                                           ; $76f8: $00
    ret c                                         ; $76f9: $d8

    xor e                                         ; $76fa: $ab
    jp Jump_000_03c3                              ; $76fb: $c3 $c3 $03


    rst $10                                       ; $76fe: $d7
    inc hl                                        ; $76ff: $23
    inc bc                                        ; $7700: $03
    inc hl                                        ; $7701: $23
    inc bc                                        ; $7702: $03
    ret c                                         ; $7703: $d8

    xor c                                         ; $7704: $a9
    reti                                          ; $7705: $d9


    xor c                                         ; $7706: $a9
    rst $10                                       ; $7707: $d7
    xor a                                         ; $7708: $af
    sbc $ff                                       ; $7709: $de $ff
    ret nc                                        ; $770b: $d0

    ld b, $e7                                     ; $770c: $06 $e7
    ld bc, $20e6                                  ; $770e: $01 $e6 $20
    jp hl                                         ; $7711: $e9


    nop                                           ; $7712: $00
    call c, $e811                                 ; $7713: $dc $11 $e8
    ld b, $07                                     ; $7716: $06 $07
    db $dd                                        ; $7718: $dd
    pop de                                        ; $7719: $d1
    rst $18                                       ; $771a: $df
    db $10                                        ; $771b: $10
    ld d, c                                       ; $771c: $51
    rst $10                                       ; $771d: $d7
    ld d, c                                       ; $771e: $51
    ret c                                         ; $771f: $d8

    ld d, c                                       ; $7720: $51
    rst $10                                       ; $7721: $d7
    ld d, c                                       ; $7722: $51
    ret c                                         ; $7723: $d8

    ldh [$df], a                                  ; $7724: $e0 $df
    inc b                                         ; $7726: $04
    ld sp, $31d7                                  ; $7727: $31 $d7 $31
    ret c                                         ; $772a: $d8

    ld sp, $31d7                                  ; $772b: $31 $d7 $31
    ret c                                         ; $772e: $d8

    ldh [rHDMA1], a                               ; $772f: $e0 $51
    ld d, c                                       ; $7731: $51
    ret nc                                        ; $7732: $d0

    inc bc                                        ; $7733: $03
    ld d, b                                       ; $7734: $50
    ld [bc], a                                    ; $7735: $02
    rst $10                                       ; $7736: $d7
    inc hl                                        ; $7737: $23
    jr nz, @+$04                                  ; $7738: $20 $02

    ret nc                                        ; $773a: $d0

    ld b, $21                                     ; $773b: $06 $21
    ld sp, $33d8                                  ; $773d: $31 $d8 $33
    rst $10                                       ; $7740: $d7
    ld sp, $31d8                                  ; $7741: $31 $d8 $31
    rst $10                                       ; $7744: $d7
    ld sp, $31d8                                  ; $7745: $31 $d8 $31
    rst $10                                       ; $7748: $d7
    ld sp, $31d8                                  ; $7749: $31 $d8 $31
    rst $10                                       ; $774c: $d7
    ld sp, $ded8                                  ; $774d: $31 $d8 $de

jr_07c_7750:
    rst $38                                       ; $7750: $ff
    ret nc                                        ; $7751: $d0

    ld b, $d1                                     ; $7752: $06 $d1
    jr nc, jr_07c_7786                            ; $7754: $30 $30

    jr nc, jr_07c_7788                            ; $7756: $30 $30

    jr nc, @+$32                                  ; $7758: $30 $30

    jr nc, @+$32                                  ; $775a: $30 $30

    db $dd                                        ; $775c: $dd
    rst $18                                       ; $775d: $df
    ld [bc], a                                    ; $775e: $02
    rst $10                                       ; $775f: $d7
    sub b                                         ; $7760: $90
    ret c                                         ; $7761: $d8

    ld h, b                                       ; $7762: $60
    ld d, b                                       ; $7763: $50
    db $10                                        ; $7764: $10
    jr nc, jr_07c_76e7                            ; $7765: $30 $80

    ld d, b                                       ; $7767: $50
    nop                                           ; $7768: $00
    ld [c], a                                     ; $7769: $e2
    pop bc                                        ; $776a: $c1
    ld [hl], a                                    ; $776b: $77
    ld [c], a                                     ; $776c: $e2
    jp z, $e277                                   ; $776d: $ca $77 $e2

    pop bc                                        ; $7770: $c1
    ld [hl], a                                    ; $7771: $77
    ld [c], a                                     ; $7772: $e2
    jp z, Jump_000_1077                           ; $7773: $ca $77 $10

    ld d, b                                       ; $7776: $50
    stop                                          ; $7777: $10 $00
    jr nc, jr_07c_77db                            ; $7779: $30 $60

    ld d, b                                       ; $777b: $50
    jr nz, @+$12                                  ; $777c: $20 $10

    ld d, b                                       ; $777e: $50
    stop                                          ; $777f: $10 $00
    jr nc, jr_07c_7793                            ; $7781: $30 $10

    ld d, b                                       ; $7783: $50
    db $10                                        ; $7784: $10
    db $10                                        ; $7785: $10

jr_07c_7786:
    db $10                                        ; $7786: $10
    db $10                                        ; $7787: $10

jr_07c_7788:
    ld d, b                                       ; $7788: $50
    jr nc, jr_07c_77ab                            ; $7789: $30 $20

    jr nc, jr_07c_77bd                            ; $778b: $30 $30

    ldh [$e2], a                                  ; $778d: $e0 $e2
    jp z, Jump_000_1077                           ; $778f: $ca $77 $10

    ld d, b                                       ; $7792: $50

jr_07c_7793:
    stop                                          ; $7793: $10 $00
    jr nc, jr_07c_77f7                            ; $7795: $30 $60

    ld d, b                                       ; $7797: $50
    jr nz, @+$12                                  ; $7798: $20 $10

    ld d, b                                       ; $779a: $50
    stop                                          ; $779b: $10 $00
    jr nc, jr_07c_77af                            ; $779d: $30 $10

    ld d, b                                       ; $779f: $50
    stop                                          ; $77a0: $10 $00
    db $10                                        ; $77a2: $10
    db $10                                        ; $77a3: $10
    ld d, b                                       ; $77a4: $50
    ld sp, $3131                                  ; $77a5: $31 $31 $31
    ld sp, $3111                                  ; $77a8: $31 $11 $31

jr_07c_77ab:
    ld bc, $1131                                  ; $77ab: $01 $31 $11
    rst $10                                       ; $77ae: $d7

jr_07c_77af:
    sub d                                         ; $77af: $92
    ret c                                         ; $77b0: $d8

    ld d, b                                       ; $77b1: $50
    ld de, $1030                                  ; $77b2: $11 $30 $10
    ld d, b                                       ; $77b5: $50
    stop                                          ; $77b6: $10 $00
    db $10                                        ; $77b8: $10
    db $10                                        ; $77b9: $10
    ld d, b                                       ; $77ba: $50
    jr nc, jr_07c_77dd                            ; $77bb: $30 $20

jr_07c_77bd:
    jr nc, jr_07c_77ef                            ; $77bd: $30 $30

    sbc $ff                                       ; $77bf: $de $ff
    db $10                                        ; $77c1: $10
    ld d, b                                       ; $77c2: $50
    stop                                          ; $77c3: $10 $00
    jr nc, jr_07c_7827                            ; $77c5: $30 $60

    ld d, b                                       ; $77c7: $50
    nop                                           ; $77c8: $00
    db $e3                                        ; $77c9: $e3
    db $10                                        ; $77ca: $10
    ld h, b                                       ; $77cb: $60
    ld d, b                                       ; $77cc: $50
    db $10                                        ; $77cd: $10
    jr nc, jr_07c_7750                            ; $77ce: $30 $80

    ld d, b                                       ; $77d0: $50
    nop                                           ; $77d1: $00
    db $e3                                        ; $77d2: $e3
    rst $38                                       ; $77d3: $ff
    rst $38                                       ; $77d4: $ff
    rst $38                                       ; $77d5: $ff
    rst $38                                       ; $77d6: $ff
    rst $38                                       ; $77d7: $ff
    rst $38                                       ; $77d8: $ff
    rst $38                                       ; $77d9: $ff
    rst $38                                       ; $77da: $ff

jr_07c_77db:
    rst $38                                       ; $77db: $ff
    rst $38                                       ; $77dc: $ff

jr_07c_77dd:
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

jr_07c_77ef:
    rst $38                                       ; $77ef: $ff
    rst $38                                       ; $77f0: $ff
    rst $38                                       ; $77f1: $ff
    rst $38                                       ; $77f2: $ff
    rst $38                                       ; $77f3: $ff
    rst $38                                       ; $77f4: $ff
    rst $38                                       ; $77f5: $ff
    rst $38                                       ; $77f6: $ff

jr_07c_77f7:
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

jr_07c_7827:
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
