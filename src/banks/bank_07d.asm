; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $07d", ROMX[$4000], BANK[$7d]

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
    jr nc, jr_07d_4020                            ; $401b: $30 $03

    ld [$c4c0], a                                 ; $401d: $ea $c0 $c4

jr_07d_4020:
    pop hl                                        ; $4020: $e1
    ret                                           ; $4021: $c9


    push bc                                       ; $4022: $c5
    push hl                                       ; $4023: $e5
    ld b, $00                                     ; $4024: $06 $00
    ld c, a                                       ; $4026: $4f
    or a                                          ; $4027: $b7
    jr z, jr_07d_4038                             ; $4028: $28 $0e

    ld hl, $5235                                  ; $402a: $21 $35 $52
    add hl, bc                                    ; $402d: $09
    ld b, [hl]                                    ; $402e: $46
    ld a, [$c4c3]                                 ; $402f: $fa $c3 $c4
    or a                                          ; $4032: $b7
    jr z, jr_07d_4038                             ; $4033: $28 $03

    cp b                                          ; $4035: $b8
    jr c, jr_07d_4040                             ; $4036: $38 $08

jr_07d_4038:
    ld a, b                                       ; $4038: $78
    ld [$c4c3], a                                 ; $4039: $ea $c3 $c4
    ld a, c                                       ; $403c: $79
    ld [$c4c2], a                                 ; $403d: $ea $c2 $c4

jr_07d_4040:
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

jr_07d_40bd:
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
    jr nz, jr_07d_40bd                            ; $40da: $20 $e1

    ld hl, $4c3b                                  ; $40dc: $21 $3b $4c
    ld bc, $c536                                  ; $40df: $01 $36 $c5
    ld d, $08                                     ; $40e2: $16 $08

jr_07d_40e4:
    ld a, [hl+]                                   ; $40e4: $2a
    ld [bc], a                                    ; $40e5: $02
    inc bc                                        ; $40e6: $03
    dec d                                         ; $40e7: $15
    jr nz, jr_07d_40e4                            ; $40e8: $20 $fa

    ret                                           ; $40ea: $c9


    call Call_07d_42b8                            ; $40eb: $cd $b8 $42
    call Call_07d_4119                            ; $40ee: $cd $19 $41

    rst $18                                       ; $40f1: $df

    db $02, $7f

    ld a, [$c4c1]                                 ; $40f4: $fa $c1 $c4
    ldh [$bf], a                                  ; $40f7: $e0 $bf
    ld [$2000], a                                 ; $40f9: $ea $00 $20

    ld a, [$c535]                                 ; $40fc: $fa $35 $c5
    or a                                          ; $40ff: $b7
    jr z, jr_07d_4107                             ; $4100: $28 $05

    call Call_07d_499b                            ; $4102: $cd $9b $49
    jr jr_07d_4113                                ; $4105: $18 $0c

jr_07d_4107:
    call Call_07d_42b9                            ; $4107: $cd $b9 $42
    call Call_07d_4308                            ; $410a: $cd $08 $43
    call Call_07d_4359                            ; $410d: $cd $59 $43
    call Call_07d_43ae                            ; $4110: $cd $ae $43

jr_07d_4113:
    call Call_07d_48a0                            ; $4113: $cd $a0 $48
    jp Jump_07d_49cc                              ; $4116: $c3 $cc $49


Call_07d_4119:
    ld a, [$c4c0]                                 ; $4119: $fa $c0 $c4
    rla                                           ; $411c: $17
    jr c, jr_07d_4130                             ; $411d: $38 $11

    call Call_07d_4145                            ; $411f: $cd $45 $41
    ld a, [$c4c0]                                 ; $4122: $fa $c0 $c4
    call Call_07d_4186                            ; $4125: $cd $86 $41

    ld a, [$c4c0]                                 ; $4128: $fa $c0 $c4
    or $80                                        ; $412b: $f6 $80
    ld [$c4c0], a                                 ; $412d: $ea $c0 $c4

jr_07d_4130:
    ld a, [$c4c2]                                 ; $4130: $fa $c2 $c4
    rla                                           ; $4133: $17
    jr c, jr_07d_4144                             ; $4134: $38 $0e

    ld a, [$c4c2]                                 ; $4136: $fa $c2 $c4
    rst $18                                       ; $4139: $df

    db $00, $7f

    ld a, [$c4c2]                                 ; $413c: $fa $c2 $c4
    or $80                                        ; $413f: $f6 $80
    ld [$c4c2], a                                 ; $4141: $ea $c2 $c4

jr_07d_4144:
    ret                                           ; $4144: $c9


Call_07d_4145:
    ld a, [$c4cc]                                 ; $4145: $fa $cc $c4
    ld d, a                                       ; $4148: $57
    xor a                                         ; $4149: $af
    ld [$c4cd], a                                 ; $414a: $ea $cd $c4
    bit 0, d                                      ; $414d: $cb $42
    jr nz, jr_07d_4159                            ; $414f: $20 $08

    ld a, $08                                     ; $4151: $3e $08
    ldh [rNR12], a                                ; $4153: $e0 $12
    swap a                                        ; $4155: $cb $37
    ldh [rNR14], a                                ; $4157: $e0 $14

jr_07d_4159:
    xor a                                         ; $4159: $af
    ld [$c4ce], a                                 ; $415a: $ea $ce $c4
    bit 1, d                                      ; $415d: $cb $4a
    jr nz, jr_07d_4169                            ; $415f: $20 $08

    ld a, $08                                     ; $4161: $3e $08
    ldh [rNR22], a                                ; $4163: $e0 $17
    swap a                                        ; $4165: $cb $37
    ldh [rNR24], a                                ; $4167: $e0 $19

jr_07d_4169:
    xor a                                         ; $4169: $af
    ld [$c4d0], a                                 ; $416a: $ea $d0 $c4
    bit 3, d                                      ; $416d: $cb $5a
    jr nz, jr_07d_4179                            ; $416f: $20 $08

    ld a, $08                                     ; $4171: $3e $08
    ldh [rNR42], a                                ; $4173: $e0 $21
    swap a                                        ; $4175: $cb $37
    ldh [rNR44], a                                ; $4177: $e0 $23

jr_07d_4179:
    xor a                                         ; $4179: $af
    ld [$c4cf], a                                 ; $417a: $ea $cf $c4
    bit 2, d                                      ; $417d: $cb $52
    jr nz, jr_07d_4185                            ; $417f: $20 $04

    ld a, $00                                     ; $4181: $3e $00
    ldh [rNR32], a                                ; $4183: $e0 $1c

jr_07d_4185:
    ret                                           ; $4185: $c9


Call_07d_4186:
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
    jr nc, jr_07d_41f2                            ; $41aa: $30 $46

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

jr_07d_41f2:
    rr e                                          ; $41f2: $cb $1b
    jr nc, jr_07d_423c                            ; $41f4: $30 $46

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

jr_07d_423c:
    rr e                                          ; $423c: $cb $1b
    jr nc, jr_07d_4279                            ; $423e: $30 $39

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

jr_07d_4279:
    rr e                                          ; $4279: $cb $1b
    jr nc, jr_07d_42b3                            ; $427b: $30 $36

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

jr_07d_42b3:
    xor a                                         ; $42b3: $af
    ld [$c535], a                                 ; $42b4: $ea $35 $c5
    ret                                           ; $42b7: $c9


Call_07d_42b8:
    ret                                           ; $42b8: $c9


Call_07d_42b9:
    ld a, [$c4cd]                                 ; $42b9: $fa $cd $c4
    or a                                          ; $42bc: $b7
    jr z, jr_07d_42f8                             ; $42bd: $28 $39

    ld a, [$c4f7]                                 ; $42bf: $fa $f7 $c4
    or a                                          ; $42c2: $b7
    jr z, jr_07d_42d9                             ; $42c3: $28 $14

    ld hl, $c503                                  ; $42c5: $21 $03 $c5
    dec [hl]                                      ; $42c8: $35
    jr nz, jr_07d_42d9                            ; $42c9: $20 $0e

    ld a, [$c4fb]                                 ; $42cb: $fa $fb $c4
    cp $01                                        ; $42ce: $fe $01
    jr z, jr_07d_42d9                             ; $42d0: $28 $07

    ld a, [$c4cc]                                 ; $42d2: $fa $cc $c4
    rrca                                          ; $42d5: $0f
    call nc, Call_07d_4737                        ; $42d6: $d4 $37 $47

jr_07d_42d9:
    ld hl, $c4fb                                  ; $42d9: $21 $fb $c4
    dec [hl]                                      ; $42dc: $35
    jr nz, jr_07d_42f4                            ; $42dd: $20 $15

    ld hl, $c4d5                                  ; $42df: $21 $d5 $c4
    ld a, [hl+]                                   ; $42e2: $2a
    ld h, [hl]                                    ; $42e3: $66
    ld l, a                                       ; $42e4: $6f
    ld bc, $0000                                  ; $42e5: $01 $00 $00
    call Call_07d_43ef                            ; $42e8: $cd $ef $43
    ld a, [$c4cd]                                 ; $42eb: $fa $cd $c4
    or a                                          ; $42ee: $b7
    jr z, jr_07d_42f8                             ; $42ef: $28 $07

    call Call_07d_46f8                            ; $42f1: $cd $f8 $46

jr_07d_42f4:
    xor a                                         ; $42f4: $af
    jp Jump_07d_492e                              ; $42f5: $c3 $2e $49


jr_07d_42f8:
    ld a, [$c4cc]                                 ; $42f8: $fa $cc $c4
    bit 0, a                                      ; $42fb: $cb $47
    jr nz, jr_07d_4307                            ; $42fd: $20 $08

    ld a, $08                                     ; $42ff: $3e $08
    ldh [rNR12], a                                ; $4301: $e0 $12
    swap a                                        ; $4303: $cb $37
    ldh [rNR14], a                                ; $4305: $e0 $14

jr_07d_4307:
    ret                                           ; $4307: $c9


Call_07d_4308:
    ld a, [$c4ce]                                 ; $4308: $fa $ce $c4
    or a                                          ; $430b: $b7
    jr z, jr_07d_4349                             ; $430c: $28 $3b

    ld a, [$c4f8]                                 ; $430e: $fa $f8 $c4
    or a                                          ; $4311: $b7
    jr z, jr_07d_4329                             ; $4312: $28 $15

    ld hl, $c504                                  ; $4314: $21 $04 $c5
    dec [hl]                                      ; $4317: $35
    jr nz, jr_07d_4329                            ; $4318: $20 $0f

    ld a, [$c4fc]                                 ; $431a: $fa $fc $c4
    cp $01                                        ; $431d: $fe $01
    jr z, jr_07d_4329                             ; $431f: $28 $08

    ld a, [$c4cc]                                 ; $4321: $fa $cc $c4
    bit 1, a                                      ; $4324: $cb $4f
    call z, Call_07d_47ab                         ; $4326: $cc $ab $47

jr_07d_4329:
    ld hl, $c4fc                                  ; $4329: $21 $fc $c4
    dec [hl]                                      ; $432c: $35
    jr nz, jr_07d_4344                            ; $432d: $20 $15

    ld hl, $c4d7                                  ; $432f: $21 $d7 $c4
    ld a, [hl+]                                   ; $4332: $2a
    ld h, [hl]                                    ; $4333: $66
    ld l, a                                       ; $4334: $6f
    ld bc, $0001                                  ; $4335: $01 $01 $00
    call Call_07d_43ef                            ; $4338: $cd $ef $43
    ld a, [$c4ce]                                 ; $433b: $fa $ce $c4
    or a                                          ; $433e: $b7
    jr z, jr_07d_4349                             ; $433f: $28 $08

    call Call_07d_476f                            ; $4341: $cd $6f $47

jr_07d_4344:
    ld a, $01                                     ; $4344: $3e $01
    jp Jump_07d_492e                              ; $4346: $c3 $2e $49


jr_07d_4349:
    ld a, [$c4cc]                                 ; $4349: $fa $cc $c4
    bit 1, a                                      ; $434c: $cb $4f
    jr nz, jr_07d_4358                            ; $434e: $20 $08

    ld a, $08                                     ; $4350: $3e $08
    ldh [rNR22], a                                ; $4352: $e0 $17
    swap a                                        ; $4354: $cb $37
    ldh [rNR24], a                                ; $4356: $e0 $19

jr_07d_4358:
    ret                                           ; $4358: $c9


Call_07d_4359:
    ld a, [$c4cf]                                 ; $4359: $fa $cf $c4
    or a                                          ; $435c: $b7
    jr z, jr_07d_439e                             ; $435d: $28 $3f

    ld a, [$c4f9]                                 ; $435f: $fa $f9 $c4
    or a                                          ; $4362: $b7
    jr z, jr_07d_437e                             ; $4363: $28 $19

    ld hl, $c505                                  ; $4365: $21 $05 $c5
    dec [hl]                                      ; $4368: $35
    jr nz, jr_07d_437e                            ; $4369: $20 $13

    ld a, [$c4cc]                                 ; $436b: $fa $cc $c4
    bit 2, a                                      ; $436e: $cb $57
    jr nz, jr_07d_437e                            ; $4370: $20 $0c

    ld a, [$c4fd]                                 ; $4372: $fa $fd $c4
    cp $01                                        ; $4375: $fe $01
    jr z, jr_07d_437e                             ; $4377: $28 $05

    ld a, [$c509]                                 ; $4379: $fa $09 $c5
    ldh [rNR32], a                                ; $437c: $e0 $1c

jr_07d_437e:
    ld hl, $c4fd                                  ; $437e: $21 $fd $c4
    dec [hl]                                      ; $4381: $35
    jr nz, jr_07d_4399                            ; $4382: $20 $15

    ld hl, $c4d9                                  ; $4384: $21 $d9 $c4
    ld a, [hl+]                                   ; $4387: $2a
    ld h, [hl]                                    ; $4388: $66
    ld l, a                                       ; $4389: $6f
    ld bc, $0002                                  ; $438a: $01 $02 $00
    call Call_07d_43ef                            ; $438d: $cd $ef $43
    ld a, [$c4cf]                                 ; $4390: $fa $cf $c4
    or a                                          ; $4393: $b7
    jr z, jr_07d_439e                             ; $4394: $28 $08

    call Call_07d_47e3                            ; $4396: $cd $e3 $47

jr_07d_4399:
    ld a, $02                                     ; $4399: $3e $02
    jp Jump_07d_492e                              ; $439b: $c3 $2e $49


jr_07d_439e:
    ld a, [$c4cc]                                 ; $439e: $fa $cc $c4
    bit 2, a                                      ; $43a1: $cb $57
    jr nz, jr_07d_43ad                            ; $43a3: $20 $08

    ld a, $00                                     ; $43a5: $3e $00
    ldh [rNR32], a                                ; $43a7: $e0 $1c
    ld a, $80                                     ; $43a9: $3e $80
    ldh [rNR34], a                                ; $43ab: $e0 $1e

jr_07d_43ad:
    ret                                           ; $43ad: $c9


Call_07d_43ae:
    ld a, [$c4d0]                                 ; $43ae: $fa $d0 $c4
    or a                                          ; $43b1: $b7
    jr z, jr_07d_43db                             ; $43b2: $28 $27

    ld hl, $c4fe                                  ; $43b4: $21 $fe $c4
    dec [hl]                                      ; $43b7: $35
    jr nz, jr_07d_43d1                            ; $43b8: $20 $17

    ld hl, $c4db                                  ; $43ba: $21 $db $c4
    ld a, [hl+]                                   ; $43bd: $2a
    ld h, [hl]                                    ; $43be: $66
    ld l, a                                       ; $43bf: $6f
    ld bc, $0003                                  ; $43c0: $01 $03 $00
    call Call_07d_43ef                            ; $43c3: $cd $ef $43
    ld a, [$c4d0]                                 ; $43c6: $fa $d0 $c4
    or a                                          ; $43c9: $b7
    jr z, jr_07d_43db                             ; $43ca: $28 $0f

    call Call_07d_4851                            ; $43cc: $cd $51 $48
    jr jr_07d_43ee                                ; $43cf: $18 $1d

jr_07d_43d1:
    ld a, [$c532]                                 ; $43d1: $fa $32 $c5
    or a                                          ; $43d4: $b7
    jr z, jr_07d_43ee                             ; $43d5: $28 $17

    call Call_07d_487f                            ; $43d7: $cd $7f $48
    ret                                           ; $43da: $c9


jr_07d_43db:
    ld a, [$c4cc]                                 ; $43db: $fa $cc $c4
    bit 3, a                                      ; $43de: $cb $5f
    jr nz, jr_07d_43ee                            ; $43e0: $20 $0c

    xor a                                         ; $43e2: $af
    ld [$c532], a                                 ; $43e3: $ea $32 $c5
    ld a, $08                                     ; $43e6: $3e $08
    ldh [rNR42], a                                ; $43e8: $e0 $21
    swap a                                        ; $43ea: $cb $37
    ldh [rNR44], a                                ; $43ec: $e0 $23

jr_07d_43ee:
    ret                                           ; $43ee: $c9


Call_07d_43ef:
Jump_07d_43ef:
    ld a, [hl+]                                   ; $43ef: $2a
    push hl                                       ; $43f0: $e5
    push af                                       ; $43f1: $f5
    cp $d0                                        ; $43f2: $fe $d0
    jr c, jr_07d_4467                             ; $43f4: $38 $71

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


    db $6f, $45, $7a, $45, $7a, $45, $7a, $45, $7a, $45

    ld a, d                                       ; $4411: $7a
    ld b, l                                       ; $4412: $45
    ld a, d                                       ; $4413: $7a
    ld b, l                                       ; $4414: $45

    db $92, $45, $9a, $45, $a2, $45

    ret c                                         ; $441b: $d8

    ld b, [hl]                                    ; $441c: $46
    ret c                                         ; $441d: $d8

    ld b, [hl]                                    ; $441e: $46

    db $ab, $45

    add $45                                       ; $4421: $c6 $45
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
    ret c                                         ; $4465: $d8

    ld b, [hl]                                    ; $4466: $46

jr_07d_4467:
    push af                                       ; $4467: $f5
    ld a, [hl]                                    ; $4468: $7e
    ld e, a                                       ; $4469: $5f
    ld hl, $c4d1                                  ; $446a: $21 $d1 $c4
    add hl, bc                                    ; $446d: $09
    ld a, [hl]                                    ; $446e: $7e
    cp $80                                        ; $446f: $fe $80
    jr z, jr_07d_448b                             ; $4471: $28 $18

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

jr_07d_448b:
    pop af                                        ; $448b: $f1
    push de                                       ; $448c: $d5
    ld hl, $c50f                                  ; $448d: $21 $0f $c5
    add hl, bc                                    ; $4490: $09
    ld d, [hl]                                    ; $4491: $56
    and $0f                                       ; $4492: $e6 $0f
    inc a                                         ; $4494: $3c
    cp d                                          ; $4495: $ba
    jr nc, jr_07d_449b                            ; $4496: $30 $03

    ld e, a                                       ; $4498: $5f
    ld a, d                                       ; $4499: $7a
    ld d, e                                       ; $449a: $53

jr_07d_449b:
    ld e, a                                       ; $449b: $5f

jr_07d_449c:
    dec d                                         ; $449c: $15
    jr z, jr_07d_44a2                             ; $449d: $28 $03

    add e                                         ; $449f: $83
    jr jr_07d_449c                                ; $44a0: $18 $fa

jr_07d_44a2:
    ld hl, $c4fb                                  ; $44a2: $21 $fb $c4
    add hl, bc                                    ; $44a5: $09
    ld [hl], a                                    ; $44a6: $77
    pop de                                        ; $44a7: $d1
    ld d, a                                       ; $44a8: $57
    ld a, e                                       ; $44a9: $7b
    cp $d9                                        ; $44aa: $fe $d9
    ld a, d                                       ; $44ac: $7a
    jr z, jr_07d_44d6                             ; $44ad: $28 $27

    ld e, a                                       ; $44af: $5f
    ld hl, $c4ff                                  ; $44b0: $21 $ff $c4
    add hl, bc                                    ; $44b3: $09
    ld a, [hl]                                    ; $44b4: $7e
    cp $08                                        ; $44b5: $fe $08
    ld d, a                                       ; $44b7: $57
    ld a, e                                       ; $44b8: $7b
    jr z, jr_07d_44d6                             ; $44b9: $28 $1b

    push hl                                       ; $44bb: $e5
    push bc                                       ; $44bc: $c5
    ld b, $00                                     ; $44bd: $06 $00
    ld c, a                                       ; $44bf: $4f
    ld hl, $0000                                  ; $44c0: $21 $00 $00

jr_07d_44c3:
    add hl, bc                                    ; $44c3: $09
    dec d                                         ; $44c4: $15
    jr nz, jr_07d_44c3                            ; $44c5: $20 $fc

    srl h                                         ; $44c7: $cb $3c
    rr l                                          ; $44c9: $cb $1d
    srl h                                         ; $44cb: $cb $3c
    rr l                                          ; $44cd: $cb $1d
    srl h                                         ; $44cf: $cb $3c
    rr l                                          ; $44d1: $cb $1d
    ld a, l                                       ; $44d3: $7d
    pop bc                                        ; $44d4: $c1
    pop hl                                        ; $44d5: $e1

jr_07d_44d6:
    ld hl, $c503                                  ; $44d6: $21 $03 $c5
    add hl, bc                                    ; $44d9: $09
    ld [hl], a                                    ; $44da: $77
    pop af                                        ; $44db: $f1
    and $f0                                       ; $44dc: $e6 $f0
    ld hl, $c4f7                                  ; $44de: $21 $f7 $c4
    add hl, bc                                    ; $44e1: $09
    ld [hl], a                                    ; $44e2: $77
    or a                                          ; $44e3: $b7
    jr nz, jr_07d_44e9                            ; $44e4: $20 $03

    jp Jump_07d_4565                              ; $44e6: $c3 $65 $45


jr_07d_44e9:
    swap a                                        ; $44e9: $cb $37
    dec a                                         ; $44eb: $3d
    ld h, a                                       ; $44ec: $67
    ld a, $03                                     ; $44ed: $3e $03
    cp c                                          ; $44ef: $b9
    ld a, h                                       ; $44f0: $7c
    jr z, jr_07d_44f5                             ; $44f1: $28 $02

    jr jr_07d_453b                                ; $44f3: $18 $46

jr_07d_44f5:
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
    jr jr_07d_4565                                ; $4539: $18 $2a

jr_07d_453b:
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
    call Call_07d_4982                            ; $455e: $cd $82 $49
    pop hl                                        ; $4561: $e1
    ld a, e                                       ; $4562: $7b
    ld [hl+], a                                   ; $4563: $22
    ld [hl], d                                    ; $4564: $72

Jump_07d_4565:
jr_07d_4565:
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
    jp Jump_07d_46f4                              ; $4577: $c3 $f4 $46


    and $07                                       ; $457a: $e6 $07
    dec a                                         ; $457c: $3d
    ld hl, $c4ef                                  ; $457d: $21 $ef $c4
    add hl, bc                                    ; $4580: $09
    push af                                       ; $4581: $f5
    ld a, c                                       ; $4582: $79
    cp $02                                        ; $4583: $fe $02
    jr nz, jr_07d_458d                            ; $4585: $20 $06

    pop af                                        ; $4587: $f1
    inc a                                         ; $4588: $3c
    ld [hl], a                                    ; $4589: $77
    jp Jump_07d_46f4                              ; $458a: $c3 $f4 $46


jr_07d_458d:
    pop af                                        ; $458d: $f1
    ld [hl], a                                    ; $458e: $77
    jp Jump_07d_46f4                              ; $458f: $c3 $f4 $46


    ld hl, $c4ef                                  ; $4592: $21 $ef $c4
    add hl, bc                                    ; $4595: $09
    inc [hl]                                      ; $4596: $34
    jp Jump_07d_46f4                              ; $4597: $c3 $f4 $46


    ld hl, $c4ef                                  ; $459a: $21 $ef $c4
    add hl, bc                                    ; $459d: $09
    dec [hl]                                      ; $459e: $35
    jp Jump_07d_46f4                              ; $459f: $c3 $f4 $46


    ld hl, $c4d1                                  ; $45a2: $21 $d1 $c4
    add hl, bc                                    ; $45a5: $09
    ld [hl], $80                                  ; $45a6: $36 $80
    jp Jump_07d_46f4                              ; $45a8: $c3 $f4 $46


    pop hl                                        ; $45ab: $e1
    ld a, [hl+]                                   ; $45ac: $2a
    push hl                                       ; $45ad: $e5
    push bc                                       ; $45ae: $c5
    inc c                                         ; $45af: $0c
    ld e, $ee                                     ; $45b0: $1e $ee

jr_07d_45b2:
    dec c                                         ; $45b2: $0d
    jr z, jr_07d_45ba                             ; $45b3: $28 $05

    rlca                                          ; $45b5: $07
    rlc e                                         ; $45b6: $cb $03
    jr jr_07d_45b2                                ; $45b8: $18 $f8

jr_07d_45ba:
    ld d, a                                       ; $45ba: $57
    ld hl, $c4c4                                  ; $45bb: $21 $c4 $c4
    ld a, [hl]                                    ; $45be: $7e
    and e                                         ; $45bf: $a3
    or d                                          ; $45c0: $b2
    ld [hl], a                                    ; $45c1: $77
    pop bc                                        ; $45c2: $c1
    jp Jump_07d_46f4                              ; $45c3: $c3 $f4 $46


    pop de                                        ; $45c6: $d1
    push de                                       ; $45c7: $d5
    dec de                                        ; $45c8: $1b
    ld hl, $c4dd                                  ; $45c9: $21 $dd $c4
    add hl, bc                                    ; $45cc: $09
    add hl, bc                                    ; $45cd: $09
    ld [hl], e                                    ; $45ce: $73
    inc hl                                        ; $45cf: $23
    ld [hl], d                                    ; $45d0: $72
    jp Jump_07d_46f4                              ; $45d1: $c3 $f4 $46


    pop hl                                        ; $45d4: $e1
    ld hl, $c4dd                                  ; $45d5: $21 $dd $c4
    add hl, bc                                    ; $45d8: $09
    add hl, bc                                    ; $45d9: $09
    ld a, [hl+]                                   ; $45da: $2a
    ld h, [hl]                                    ; $45db: $66
    ld l, a                                       ; $45dc: $6f
    jp Jump_07d_43ef                              ; $45dd: $c3 $ef $43


    pop de                                        ; $45e0: $d1
    ld a, [de]                                    ; $45e1: $1a
    inc de                                        ; $45e2: $13
    push af                                       ; $45e3: $f5
    call Call_07d_46e0                            ; $45e4: $cd $e0 $46
    ld [hl], e                                    ; $45e7: $73
    inc hl                                        ; $45e8: $23
    ld [hl], d                                    ; $45e9: $72
    inc hl                                        ; $45ea: $23
    pop af                                        ; $45eb: $f1
    ld [hl], a                                    ; $45ec: $77
    inc hl                                        ; $45ed: $23
    push de                                       ; $45ee: $d5
    call Call_07d_46e9                            ; $45ef: $cd $e9 $46
    jp Jump_07d_46f4                              ; $45f2: $c3 $f4 $46


    call Call_07d_46e0                            ; $45f5: $cd $e0 $46
    dec hl                                        ; $45f8: $2b
    ld a, [hl]                                    ; $45f9: $7e
    dec a                                         ; $45fa: $3d
    jr z, jr_07d_4607                             ; $45fb: $28 $0a

    ld [hl-], a                                   ; $45fd: $32
    ld d, [hl]                                    ; $45fe: $56
    dec hl                                        ; $45ff: $2b
    ld e, [hl]                                    ; $4600: $5e
    pop hl                                        ; $4601: $e1
    ld h, d                                       ; $4602: $62
    ld l, e                                       ; $4603: $6b
    jp Jump_07d_43ef                              ; $4604: $c3 $ef $43


jr_07d_4607:
    dec hl                                        ; $4607: $2b
    dec hl                                        ; $4608: $2b
    call Call_07d_46e9                            ; $4609: $cd $e9 $46
    jp Jump_07d_46f4                              ; $460c: $c3 $f4 $46


    pop hl                                        ; $460f: $e1
    ld a, [hl+]                                   ; $4610: $2a
    ld h, [hl]                                    ; $4611: $66
    ld l, a                                       ; $4612: $6f
    jp Jump_07d_43ef                              ; $4613: $c3 $ef $43


    call Call_07d_46e0                            ; $4616: $cd $e0 $46
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
    call Call_07d_46e9                            ; $4627: $cd $e9 $46
    jp Jump_07d_46f4                              ; $462a: $c3 $f4 $46


    pop de                                        ; $462d: $d1
    call Call_07d_46e0                            ; $462e: $cd $e0 $46
    dec hl                                        ; $4631: $2b
    ld a, [hl-]                                   ; $4632: $3a
    ld e, [hl]                                    ; $4633: $5e
    ld d, a                                       ; $4634: $57
    inc de                                        ; $4635: $13
    inc de                                        ; $4636: $13
    push de                                       ; $4637: $d5
    call Call_07d_46e9                            ; $4638: $cd $e9 $46
    jp Jump_07d_46f4                              ; $463b: $c3 $f4 $46


    pop de                                        ; $463e: $d1
    ld a, [de]                                    ; $463f: $1a
    inc de                                        ; $4640: $13
    ld hl, $c52d                                  ; $4641: $21 $2d $c5
    add hl, bc                                    ; $4644: $09
    ld [hl], a                                    ; $4645: $77
    ld h, d                                       ; $4646: $62
    ld l, e                                       ; $4647: $6b
    jp Jump_07d_43ef                              ; $4648: $c3 $ef $43


    pop de                                        ; $464b: $d1
    ld a, [de]                                    ; $464c: $1a
    and $c0                                       ; $464d: $e6 $c0
    inc de                                        ; $464f: $13
    ld hl, $c4c6                                  ; $4650: $21 $c6 $c4
    add hl, bc                                    ; $4653: $09
    ld [hl], a                                    ; $4654: $77
    ld h, d                                       ; $4655: $62
    ld l, e                                       ; $4656: $6b
    jp Jump_07d_43ef                              ; $4657: $c3 $ef $43


    pop de                                        ; $465a: $d1
    ld a, [de]                                    ; $465b: $1a
    inc de                                        ; $465c: $13
    ld hl, $c527                                  ; $465d: $21 $27 $c5
    add hl, bc                                    ; $4660: $09
    ld [hl], a                                    ; $4661: $77
    ld h, d                                       ; $4662: $62
    ld l, e                                       ; $4663: $6b
    jp Jump_07d_43ef                              ; $4664: $c3 $ef $43


    pop de                                        ; $4667: $d1
    ld a, [de]                                    ; $4668: $1a
    inc de                                        ; $4669: $13
    ld [$c4ca], a                                 ; $466a: $ea $ca $c4
    ld a, $01                                     ; $466d: $3e $01
    ld [$c4cb], a                                 ; $466f: $ea $cb $c4
    ld h, d                                       ; $4672: $62
    ld l, e                                       ; $4673: $6b
    jp Jump_07d_43ef                              ; $4674: $c3 $ef $43


    pop de                                        ; $4677: $d1
    ld a, [de]                                    ; $4678: $1a
    inc de                                        ; $4679: $13
    ld hl, $c4ff                                  ; $467a: $21 $ff $c4
    add hl, bc                                    ; $467d: $09
    ld [hl], a                                    ; $467e: $77
    ld h, d                                       ; $467f: $62
    ld l, e                                       ; $4680: $6b
    jp Jump_07d_43ef                              ; $4681: $c3 $ef $43


    pop de                                        ; $4684: $d1
    ld a, [de]                                    ; $4685: $1a
    inc de                                        ; $4686: $13
    ld hl, $c507                                  ; $4687: $21 $07 $c5
    add hl, bc                                    ; $468a: $09
    ld [hl], a                                    ; $468b: $77
    ld h, d                                       ; $468c: $62
    ld l, e                                       ; $468d: $6b
    jp Jump_07d_43ef                              ; $468e: $c3 $ef $43


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
    jp Jump_07d_43ef                              ; $46a0: $c3 $ef $43


    pop de                                        ; $46a3: $d1
    ld a, [de]                                    ; $46a4: $1a
    inc de                                        ; $46a5: $13
    ld hl, $c51f                                  ; $46a6: $21 $1f $c5
    add hl, bc                                    ; $46a9: $09
    ld [hl], a                                    ; $46aa: $77
    ld h, d                                       ; $46ab: $62
    ld l, e                                       ; $46ac: $6b
    jp Jump_07d_43ef                              ; $46ad: $c3 $ef $43


    pop de                                        ; $46b0: $d1
    ld a, [de]                                    ; $46b1: $1a
    inc de                                        ; $46b2: $13
    ld hl, $c50b                                  ; $46b3: $21 $0b $c5
    add hl, bc                                    ; $46b6: $09
    ld [hl], a                                    ; $46b7: $77
    ld h, d                                       ; $46b8: $62
    ld l, e                                       ; $46b9: $6b
    jp Jump_07d_43ef                              ; $46ba: $c3 $ef $43


    pop de                                        ; $46bd: $d1
    ld a, [de]                                    ; $46be: $1a
    inc de                                        ; $46bf: $13
    ld hl, $c50b                                  ; $46c0: $21 $0b $c5
    add hl, bc                                    ; $46c3: $09
    add [hl]                                      ; $46c4: $86
    ld [hl], a                                    ; $46c5: $77
    ld h, d                                       ; $46c6: $62
    ld l, e                                       ; $46c7: $6b
    jp Jump_07d_43ef                              ; $46c8: $c3 $ef $43


    pop de                                        ; $46cb: $d1
    ld a, [de]                                    ; $46cc: $1a
    inc de                                        ; $46cd: $13
    ld hl, $c52a                                  ; $46ce: $21 $2a $c5
    add hl, bc                                    ; $46d1: $09
    ld [hl], a                                    ; $46d2: $77
    ld h, d                                       ; $46d3: $62
    ld l, e                                       ; $46d4: $6b
    jp Jump_07d_43ef                              ; $46d5: $c3 $ef $43


    ld hl, $c4cd                                  ; $46d8: $21 $cd $c4
    add hl, bc                                    ; $46db: $09
    ld [hl], $00                                  ; $46dc: $36 $00
    pop hl                                        ; $46de: $e1
    ret                                           ; $46df: $c9


Call_07d_46e0:
    ld hl, $c536                                  ; $46e0: $21 $36 $c5
    add hl, bc                                    ; $46e3: $09
    add hl, bc                                    ; $46e4: $09
    ld a, [hl+]                                   ; $46e5: $2a
    ld h, [hl]                                    ; $46e6: $66
    ld l, a                                       ; $46e7: $6f
    ret                                           ; $46e8: $c9


Call_07d_46e9:
    ld d, h                                       ; $46e9: $54
    ld e, l                                       ; $46ea: $5d
    ld hl, $c536                                  ; $46eb: $21 $36 $c5
    add hl, bc                                    ; $46ee: $09
    add hl, bc                                    ; $46ef: $09
    ld [hl], e                                    ; $46f0: $73
    inc hl                                        ; $46f1: $23
    ld [hl], d                                    ; $46f2: $72
    ret                                           ; $46f3: $c9


Jump_07d_46f4:
    pop hl                                        ; $46f4: $e1
    jp Jump_07d_43ef                              ; $46f5: $c3 $ef $43


Call_07d_46f8:
    ld a, [$c4cc]                                 ; $46f8: $fa $cc $c4
    bit 0, a                                      ; $46fb: $cb $47
    jr nz, jr_07d_4732                            ; $46fd: $20 $33

    ld a, [$c4f7]                                 ; $46ff: $fa $f7 $c4
    or a                                          ; $4702: $b7
    jr z, jr_07d_4737                             ; $4703: $28 $32

    ld a, $01                                     ; $4705: $3e $01
    ld [$c598], a                                 ; $4707: $ea $98 $c5
    ld d, $00                                     ; $470a: $16 $00
    ld hl, $c4d1                                  ; $470c: $21 $d1 $c4
    ld a, [hl]                                    ; $470f: $7e
    cp $80                                        ; $4710: $fe $80
    jr z, jr_07d_471b                             ; $4712: $28 $07

    ld a, [$c527]                                 ; $4714: $fa $27 $c5
    ldh [rNR12], a                                ; $4717: $e0 $12
    ld d, $80                                     ; $4719: $16 $80

jr_07d_471b:
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


jr_07d_4732:
    xor a                                         ; $4732: $af
    ld [$c598], a                                 ; $4733: $ea $98 $c5
    ret                                           ; $4736: $c9


Call_07d_4737:
jr_07d_4737:
    ld a, [$c598]                                 ; $4737: $fa $98 $c5
    or a                                          ; $473a: $b7
    jr z, jr_07d_476e                             ; $473b: $28 $31

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
    jr nc, jr_07d_475f                            ; $475b: $30 $02

    ld a, $00                                     ; $475d: $3e $00

jr_07d_475f:
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

jr_07d_476e:
    ret                                           ; $476e: $c9


Call_07d_476f:
    ld a, [$c4cc]                                 ; $476f: $fa $cc $c4
    bit 1, a                                      ; $4772: $cb $4f
    jr nz, jr_07d_47a6                            ; $4774: $20 $30

    ld a, [$c4f8]                                 ; $4776: $fa $f8 $c4
    cp $00                                        ; $4779: $fe $00
    jr z, jr_07d_47ab                             ; $477b: $28 $2e

    ld a, $01                                     ; $477d: $3e $01
    ld [$c599], a                                 ; $477f: $ea $99 $c5
    ld d, $00                                     ; $4782: $16 $00
    ld hl, $c4d2                                  ; $4784: $21 $d2 $c4
    ld a, [hl]                                    ; $4787: $7e
    cp $80                                        ; $4788: $fe $80
    jr z, jr_07d_4793                             ; $478a: $28 $07

    ld a, [$c528]                                 ; $478c: $fa $28 $c5
    ldh [rNR22], a                                ; $478f: $e0 $17
    ld d, $80                                     ; $4791: $16 $80

jr_07d_4793:
    ld [hl], $02                                  ; $4793: $36 $02
    ld a, [$c4c7]                                 ; $4795: $fa $c7 $c4
    ldh [rNR21], a                                ; $4798: $e0 $16
    ld a, [$c4e7]                                 ; $479a: $fa $e7 $c4
    ldh [rNR23], a                                ; $479d: $e0 $18
    ld a, [$c4e8]                                 ; $479f: $fa $e8 $c4
    or d                                          ; $47a2: $b2
    ldh [rNR24], a                                ; $47a3: $e0 $19
    ret                                           ; $47a5: $c9


jr_07d_47a6:
    xor a                                         ; $47a6: $af
    ld [$c599], a                                 ; $47a7: $ea $99 $c5
    ret                                           ; $47aa: $c9


Call_07d_47ab:
jr_07d_47ab:
    ld a, [$c599]                                 ; $47ab: $fa $99 $c5
    or a                                          ; $47ae: $b7
    jr z, jr_07d_47e2                             ; $47af: $28 $31

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
    jr nc, jr_07d_47d3                            ; $47cf: $30 $02

    ld a, $00                                     ; $47d1: $3e $00

jr_07d_47d3:
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

jr_07d_47e2:
    ret                                           ; $47e2: $c9


Call_07d_47e3:
    ld a, [$c4cc]                                 ; $47e3: $fa $cc $c4
    bit 2, a                                      ; $47e6: $cb $57
    jr nz, jr_07d_4827                            ; $47e8: $20 $3d

    ld d, $00                                     ; $47ea: $16 $00
    ld a, [$c4cb]                                 ; $47ec: $fa $cb $c4
    or a                                          ; $47ef: $b7
    jr z, jr_07d_47fa                             ; $47f0: $28 $08

    xor a                                         ; $47f2: $af
    ldh [rNR30], a                                ; $47f3: $e0 $1a
    call Call_07d_4831                            ; $47f5: $cd $31 $48
    ld d, $80                                     ; $47f8: $16 $80

jr_07d_47fa:
    ld a, [$c4f9]                                 ; $47fa: $fa $f9 $c4
    cp $00                                        ; $47fd: $fe $00
    jr z, jr_07d_4828                             ; $47ff: $28 $27

    ld hl, $c4d3                                  ; $4801: $21 $d3 $c4
    ld a, [hl]                                    ; $4804: $7e
    cp $80                                        ; $4805: $fe $80
    jr z, jr_07d_4813                             ; $4807: $28 $0a

    ld a, [$c529]                                 ; $4809: $fa $29 $c5
    ldh [rNR32], a                                ; $480c: $e0 $1c
    xor a                                         ; $480e: $af
    ldh [rNR30], a                                ; $480f: $e0 $1a
    ld d, $80                                     ; $4811: $16 $80

jr_07d_4813:
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

jr_07d_4827:
    ret                                           ; $4827: $c9


jr_07d_4828:
    ld hl, $c4d1                                  ; $4828: $21 $d1 $c4
    ld [hl], $00                                  ; $482b: $36 $00
    xor a                                         ; $482d: $af
    ldh [rNR30], a                                ; $482e: $e0 $1a
    ret                                           ; $4830: $c9


Call_07d_4831:
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

jr_07d_4843:
    ld a, [hl+]                                   ; $4843: $2a
    ld [de], a                                    ; $4844: $12
    inc de                                        ; $4845: $13
    inc b                                         ; $4846: $04
    ld a, b                                       ; $4847: $78
    cp $10                                        ; $4848: $fe $10
    jr nz, jr_07d_4843                            ; $484a: $20 $f7

    xor a                                         ; $484c: $af
    ld [$c4cb], a                                 ; $484d: $ea $cb $c4
    ret                                           ; $4850: $c9


Call_07d_4851:
    ld a, [$c4cc]                                 ; $4851: $fa $cc $c4
    bit 3, a                                      ; $4854: $cb $5f
    jr nz, jr_07d_486f                            ; $4856: $20 $17

    ld a, [$c4fa]                                 ; $4858: $fa $fa $c4
    or a                                          ; $485b: $b7
    jr z, jr_07d_4870                             ; $485c: $28 $12

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

jr_07d_486f:
    ret                                           ; $486f: $c9


jr_07d_4870:
    xor a                                         ; $4870: $af
    ld [$c532], a                                 ; $4871: $ea $32 $c5
    ld hl, $ff21                                  ; $4874: $21 $21 $ff
    ld a, $08                                     ; $4877: $3e $08
    ld [hl+], a                                   ; $4879: $22
    inc hl                                        ; $487a: $23
    swap a                                        ; $487b: $cb $37
    ld [hl], a                                    ; $487d: $77
    ret                                           ; $487e: $c9


Call_07d_487f:
    ld a, [$c4cc]                                 ; $487f: $fa $cc $c4
    bit 3, a                                      ; $4882: $cb $5f
    jr z, jr_07d_488c                             ; $4884: $28 $06

    xor a                                         ; $4886: $af
    ld [$c532], a                                 ; $4887: $ea $32 $c5
    jr jr_07d_489f                                ; $488a: $18 $13

jr_07d_488c:
    ld hl, $c530                                  ; $488c: $21 $30 $c5
    ld a, [hl+]                                   ; $488f: $2a
    ld d, [hl]                                    ; $4890: $56
    ld e, a                                       ; $4891: $5f
    ld a, [de]                                    ; $4892: $1a
    cp $ff                                        ; $4893: $fe $ff
    jr nz, jr_07d_4899                            ; $4895: $20 $02

    jr jr_07d_4870                                ; $4897: $18 $d7

jr_07d_4899:
    ldh [rNR43], a                                ; $4899: $e0 $22
    inc de                                        ; $489b: $13
    ld a, d                                       ; $489c: $7a
    ld [hl-], a                                   ; $489d: $32
    ld [hl], e                                    ; $489e: $73

jr_07d_489f:
    ret                                           ; $489f: $c9


Call_07d_48a0:
    ld a, [$c534]                                 ; $48a0: $fa $34 $c5
    ldh [rNR50], a                                ; $48a3: $e0 $24
    ld a, [$c4cc]                                 ; $48a5: $fa $cc $c4
    or a                                          ; $48a8: $b7
    ld hl, $c4c4                                  ; $48a9: $21 $c4 $c4
    ld a, [hl+]                                   ; $48ac: $2a
    jr z, jr_07d_48c1                             ; $48ad: $28 $12

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

jr_07d_48c1:
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


Call_07d_48d0:
    ld hl, $c51f                                  ; $48d0: $21 $1f $c5
    add hl, bc                                    ; $48d3: $09
    ld a, [hl]                                    ; $48d4: $7e
    or a                                          ; $48d5: $b7
    jr z, jr_07d_4925                             ; $48d6: $28 $4d

    ld hl, $c523                                  ; $48d8: $21 $23 $c5
    add hl, bc                                    ; $48db: $09
    cp [hl]                                       ; $48dc: $be
    jr z, jr_07d_48e2                             ; $48dd: $28 $03

    inc [hl]                                      ; $48df: $34
    jr jr_07d_4925                                ; $48e0: $18 $43

jr_07d_48e2:
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
    jr z, jr_07d_4911                             ; $48fd: $28 $12

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


jr_07d_4911:
    push hl                                       ; $4911: $e5
    ld hl, $c51b                                  ; $4912: $21 $1b $c5
    add hl, bc                                    ; $4915: $09
    ld [hl], $00                                  ; $4916: $36 $00
    pop hl                                        ; $4918: $e1
    ld a, [hl]                                    ; $4919: $7e
    cp $80                                        ; $491a: $fe $80
    jr z, jr_07d_48e2                             ; $491c: $28 $c4

    ld hl, $c513                                  ; $491e: $21 $13 $c5
    add hl, bc                                    ; $4921: $09
    ld [hl], a                                    ; $4922: $77
    jr jr_07d_48e2                                ; $4923: $18 $bd

jr_07d_4925:
    ld hl, $c4e5                                  ; $4925: $21 $e5 $c4
    add hl, bc                                    ; $4928: $09
    add hl, bc                                    ; $4929: $09
    ld e, [hl]                                    ; $492a: $5e
    inc hl                                        ; $492b: $23
    ld d, [hl]                                    ; $492c: $56
    ret                                           ; $492d: $c9


Jump_07d_492e:
    push af                                       ; $492e: $f5
    ld b, $00                                     ; $492f: $06 $00
    ld c, a                                       ; $4931: $4f
    call Call_07d_48d0                            ; $4932: $cd $d0 $48
    pop af                                        ; $4935: $f1
    or a                                          ; $4936: $b7
    jr nz, jr_07d_4950                            ; $4937: $20 $17

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


jr_07d_4950:
    dec a                                         ; $4950: $3d
    jr nz, jr_07d_496b                            ; $4951: $20 $18

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


jr_07d_496b:
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


Call_07d_4982:
    ld hl, $c52d                                  ; $4982: $21 $2d $c5
    add hl, bc                                    ; $4985: $09
    ld a, [hl]                                    ; $4986: $7e
    bit 7, a                                      ; $4987: $cb $7f
    jr nz, jr_07d_4991                            ; $4989: $20 $06

    add e                                         ; $498b: $83
    ld e, a                                       ; $498c: $5f
    ld a, d                                       ; $498d: $7a
    adc b                                         ; $498e: $88
    ld d, a                                       ; $498f: $57
    ret                                           ; $4990: $c9


jr_07d_4991:
    xor $ff                                       ; $4991: $ee $ff
    ld h, a                                       ; $4993: $67
    ld a, e                                       ; $4994: $7b
    sub h                                         ; $4995: $94
    ld e, a                                       ; $4996: $5f
    ld a, d                                       ; $4997: $7a
    sbc b                                         ; $4998: $98
    ld d, a                                       ; $4999: $57
    ret                                           ; $499a: $c9


Call_07d_499b:
    ld a, [$c4cc]                                 ; $499b: $fa $cc $c4
    ld d, a                                       ; $499e: $57
    bit 0, d                                      ; $499f: $cb $42
    jr nz, jr_07d_49ab                            ; $49a1: $20 $08

    ld a, $08                                     ; $49a3: $3e $08
    ldh [rNR12], a                                ; $49a5: $e0 $12
    swap a                                        ; $49a7: $cb $37
    ldh [rNR14], a                                ; $49a9: $e0 $14

jr_07d_49ab:
    bit 1, d                                      ; $49ab: $cb $4a
    jr nz, jr_07d_49b7                            ; $49ad: $20 $08

    swap a                                        ; $49af: $cb $37
    ldh [rNR22], a                                ; $49b1: $e0 $17
    swap a                                        ; $49b3: $cb $37
    ldh [rNR24], a                                ; $49b5: $e0 $19

jr_07d_49b7:
    bit 3, d                                      ; $49b7: $cb $5a
    jr nz, jr_07d_49c3                            ; $49b9: $20 $08

    swap a                                        ; $49bb: $cb $37
    ldh [rNR42], a                                ; $49bd: $e0 $21
    swap a                                        ; $49bf: $cb $37
    ldh [rNR44], a                                ; $49c1: $e0 $23

jr_07d_49c3:
    bit 2, d                                      ; $49c3: $cb $52
    jr nz, jr_07d_49cb                            ; $49c5: $20 $04

    ld a, $00                                     ; $49c7: $3e $00
    ldh [rNR32], a                                ; $49c9: $e0 $1c

jr_07d_49cb:
    ret                                           ; $49cb: $c9


Jump_07d_49cc:
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
    call Call_07d_499b                            ; $49e0: $cd $9b $49
    call Call_07d_49f7                            ; $49e3: $cd $f7 $49
    call Call_07d_4145                            ; $49e6: $cd $45 $41
    ei                                            ; $49e9: $fb
    ret                                           ; $49ea: $c9


    di                                            ; $49eb: $f3
    call Call_07d_499b                            ; $49ec: $cd $9b $49
    call Call_07d_4145                            ; $49ef: $cd $45 $41
    call Call_07d_4b1c                            ; $49f2: $cd $1c $4b
    ei                                            ; $49f5: $fb
    ret                                           ; $49f6: $c9


Call_07d_49f7:
    ld a, [$c4c0]                                 ; $49f7: $fa $c0 $c4
    ld [$c59a], a                                 ; $49fa: $ea $9a $c5
    ld a, [$c4c1]                                 ; $49fd: $fa $c1 $c4
    ld [$c59b], a                                 ; $4a00: $ea $9b $c5
    ld a, [$c4c4]                                 ; $4a03: $fa $c4 $c4
    ld [$c59c], a                                 ; $4a06: $ea $9c $c5
    ld hl, $c4c6                                  ; $4a09: $21 $c6 $c4
    ld de, $c59d                                  ; $4a0c: $11 $9d $c5
    ld a, $04                                     ; $4a0f: $3e $04
    call Call_07d_4c33                            ; $4a11: $cd $33 $4c
    ld a, [$c4ca]                                 ; $4a14: $fa $ca $c4
    ld [$c5a1], a                                 ; $4a17: $ea $a1 $c5
    ld a, [$c4cb]                                 ; $4a1a: $fa $cb $c4
    ld [$c5a2], a                                 ; $4a1d: $ea $a2 $c5
    ld hl, $c4cd                                  ; $4a20: $21 $cd $c4
    ld de, $c5a3                                  ; $4a23: $11 $a3 $c5
    ld a, $04                                     ; $4a26: $3e $04
    call Call_07d_4c33                            ; $4a28: $cd $33 $4c
    ld hl, $c4d1                                  ; $4a2b: $21 $d1 $c4
    ld de, $c5a7                                  ; $4a2e: $11 $a7 $c5
    ld a, $04                                     ; $4a31: $3e $04
    call Call_07d_4c33                            ; $4a33: $cd $33 $4c
    ld hl, $c4d5                                  ; $4a36: $21 $d5 $c4
    ld de, $c5ab                                  ; $4a39: $11 $ab $c5
    ld a, $08                                     ; $4a3c: $3e $08
    call Call_07d_4c33                            ; $4a3e: $cd $33 $4c
    ld hl, $c4dd                                  ; $4a41: $21 $dd $c4
    ld de, $c5b3                                  ; $4a44: $11 $b3 $c5
    ld a, $08                                     ; $4a47: $3e $08
    call Call_07d_4c33                            ; $4a49: $cd $33 $4c
    ld a, [$c4eb]                                 ; $4a4c: $fa $eb $c4
    ld [$c5bb], a                                 ; $4a4f: $ea $bb $c5
    ld a, [$c4ec]                                 ; $4a52: $fa $ec $c4
    ld [$c5bc], a                                 ; $4a55: $ea $bc $c5
    ld hl, $c4ef                                  ; $4a58: $21 $ef $c4
    ld de, $c5bd                                  ; $4a5b: $11 $bd $c5
    ld a, $04                                     ; $4a5e: $3e $04
    call Call_07d_4c33                            ; $4a60: $cd $33 $4c
    ld hl, $c4f3                                  ; $4a63: $21 $f3 $c4
    ld de, $c5c1                                  ; $4a66: $11 $c1 $c5
    ld a, $04                                     ; $4a69: $3e $04
    call Call_07d_4c33                            ; $4a6b: $cd $33 $4c
    ld hl, $c4f7                                  ; $4a6e: $21 $f7 $c4
    ld de, $c5c5                                  ; $4a71: $11 $c5 $c5
    ld a, $04                                     ; $4a74: $3e $04
    call Call_07d_4c33                            ; $4a76: $cd $33 $4c
    ld hl, $c4fb                                  ; $4a79: $21 $fb $c4
    ld de, $c5c9                                  ; $4a7c: $11 $c9 $c5
    ld a, $04                                     ; $4a7f: $3e $04
    call Call_07d_4c33                            ; $4a81: $cd $33 $4c
    ld hl, $c4ff                                  ; $4a84: $21 $ff $c4
    ld de, $c5cd                                  ; $4a87: $11 $cd $c5
    ld a, $04                                     ; $4a8a: $3e $04
    call Call_07d_4c33                            ; $4a8c: $cd $33 $4c
    ld hl, $c503                                  ; $4a8f: $21 $03 $c5
    ld de, $c5d1                                  ; $4a92: $11 $d1 $c5
    ld a, $04                                     ; $4a95: $3e $04
    call Call_07d_4c33                            ; $4a97: $cd $33 $4c
    ld hl, $c507                                  ; $4a9a: $21 $07 $c5
    ld de, $c5d5                                  ; $4a9d: $11 $d5 $c5
    ld a, $04                                     ; $4aa0: $3e $04
    call Call_07d_4c33                            ; $4aa2: $cd $33 $4c
    ld hl, $c50b                                  ; $4aa5: $21 $0b $c5
    ld de, $c5d9                                  ; $4aa8: $11 $d9 $c5
    ld a, $04                                     ; $4aab: $3e $04
    call Call_07d_4c33                            ; $4aad: $cd $33 $4c
    ld hl, $c50f                                  ; $4ab0: $21 $0f $c5
    ld de, $c5dd                                  ; $4ab3: $11 $dd $c5
    ld a, $04                                     ; $4ab6: $3e $04
    call Call_07d_4c33                            ; $4ab8: $cd $33 $4c
    ld hl, $c517                                  ; $4abb: $21 $17 $c5
    ld de, $c5e1                                  ; $4abe: $11 $e1 $c5
    ld a, $04                                     ; $4ac1: $3e $04
    call Call_07d_4c33                            ; $4ac3: $cd $33 $4c
    ld hl, $c51f                                  ; $4ac6: $21 $1f $c5
    ld de, $c5e5                                  ; $4ac9: $11 $e5 $c5
    ld a, $04                                     ; $4acc: $3e $04
    call Call_07d_4c33                            ; $4ace: $cd $33 $4c
    ld a, $00                                     ; $4ad1: $3e $00
    ld [$c51b], a                                 ; $4ad3: $ea $1b $c5
    ld [$c51c], a                                 ; $4ad6: $ea $1c $c5
    ld [$c51d], a                                 ; $4ad9: $ea $1d $c5
    ld [$c51e], a                                 ; $4adc: $ea $1e $c5
    ld hl, $c527                                  ; $4adf: $21 $27 $c5
    ld de, $c5e9                                  ; $4ae2: $11 $e9 $c5
    ld a, $03                                     ; $4ae5: $3e $03
    call Call_07d_4c33                            ; $4ae7: $cd $33 $4c
    ld hl, $c52d                                  ; $4aea: $21 $2d $c5
    ld de, $c5ec                                  ; $4aed: $11 $ec $c5
    ld a, $03                                     ; $4af0: $3e $03
    call Call_07d_4c33                            ; $4af2: $cd $33 $4c
    ld hl, $c530                                  ; $4af5: $21 $30 $c5
    ld de, $c5ef                                  ; $4af8: $11 $ef $c5
    ld a, $02                                     ; $4afb: $3e $02
    call Call_07d_4c33                            ; $4afd: $cd $33 $4c
    ld a, $00                                     ; $4b00: $3e $00
    ld [$c5f1], a                                 ; $4b02: $ea $f1 $c5
    ld hl, $c536                                  ; $4b05: $21 $36 $c5
    ld de, $c5f2                                  ; $4b08: $11 $f2 $c5
    ld a, $08                                     ; $4b0b: $3e $08
    call Call_07d_4c33                            ; $4b0d: $cd $33 $4c
    ld hl, $c53e                                  ; $4b10: $21 $3e $c5
    ld de, $c5fa                                  ; $4b13: $11 $fa $c5
    ld a, $30                                     ; $4b16: $3e $30
    call Call_07d_4c33                            ; $4b18: $cd $33 $4c
    ret                                           ; $4b1b: $c9


Call_07d_4b1c:
    ld a, [$c59a]                                 ; $4b1c: $fa $9a $c5
    ld [$c4c0], a                                 ; $4b1f: $ea $c0 $c4
    ld a, [$c59b]                                 ; $4b22: $fa $9b $c5
    ld [$c4c1], a                                 ; $4b25: $ea $c1 $c4
    ld a, [$c59c]                                 ; $4b28: $fa $9c $c5
    ld [$c4c4], a                                 ; $4b2b: $ea $c4 $c4
    ld hl, $c59d                                  ; $4b2e: $21 $9d $c5
    ld de, $c4c6                                  ; $4b31: $11 $c6 $c4
    ld a, $04                                     ; $4b34: $3e $04
    call Call_07d_4c33                            ; $4b36: $cd $33 $4c
    ld a, [$c5a1]                                 ; $4b39: $fa $a1 $c5
    ld [$c4ca], a                                 ; $4b3c: $ea $ca $c4
    ld a, $01                                     ; $4b3f: $3e $01
    ld [$c4cb], a                                 ; $4b41: $ea $cb $c4
    ld hl, $c5a3                                  ; $4b44: $21 $a3 $c5
    ld de, $c4cd                                  ; $4b47: $11 $cd $c4
    ld a, $04                                     ; $4b4a: $3e $04
    call Call_07d_4c33                            ; $4b4c: $cd $33 $4c
    ld hl, $c5a7                                  ; $4b4f: $21 $a7 $c5
    ld de, $c4d1                                  ; $4b52: $11 $d1 $c4
    ld a, $04                                     ; $4b55: $3e $04
    call Call_07d_4c33                            ; $4b57: $cd $33 $4c
    ld hl, $c5ab                                  ; $4b5a: $21 $ab $c5
    ld de, $c4d5                                  ; $4b5d: $11 $d5 $c4
    ld a, $08                                     ; $4b60: $3e $08
    call Call_07d_4c33                            ; $4b62: $cd $33 $4c
    ld hl, $c5b3                                  ; $4b65: $21 $b3 $c5
    ld de, $c4dd                                  ; $4b68: $11 $dd $c4
    ld a, $08                                     ; $4b6b: $3e $08
    call Call_07d_4c33                            ; $4b6d: $cd $33 $4c
    ld a, [$c5bb]                                 ; $4b70: $fa $bb $c5
    ld [$c4eb], a                                 ; $4b73: $ea $eb $c4
    ld a, [$c5bc]                                 ; $4b76: $fa $bc $c5
    ld [$c4ec], a                                 ; $4b79: $ea $ec $c4
    ld hl, $c5bd                                  ; $4b7c: $21 $bd $c5
    ld de, $c4ef                                  ; $4b7f: $11 $ef $c4
    ld a, $04                                     ; $4b82: $3e $04
    call Call_07d_4c33                            ; $4b84: $cd $33 $4c
    ld hl, $c5c1                                  ; $4b87: $21 $c1 $c5
    ld de, $c4f3                                  ; $4b8a: $11 $f3 $c4
    ld a, $04                                     ; $4b8d: $3e $04
    call Call_07d_4c33                            ; $4b8f: $cd $33 $4c
    ld hl, $c5c5                                  ; $4b92: $21 $c5 $c5
    ld de, $c4f7                                  ; $4b95: $11 $f7 $c4
    ld a, $04                                     ; $4b98: $3e $04
    call Call_07d_4c33                            ; $4b9a: $cd $33 $4c
    ld hl, $c5c9                                  ; $4b9d: $21 $c9 $c5
    ld de, $c4fb                                  ; $4ba0: $11 $fb $c4
    ld a, $04                                     ; $4ba3: $3e $04
    call Call_07d_4c33                            ; $4ba5: $cd $33 $4c
    ld hl, $c5cd                                  ; $4ba8: $21 $cd $c5
    ld de, $c4ff                                  ; $4bab: $11 $ff $c4
    ld a, $04                                     ; $4bae: $3e $04
    call Call_07d_4c33                            ; $4bb0: $cd $33 $4c
    ld hl, $c5d1                                  ; $4bb3: $21 $d1 $c5
    ld de, $c503                                  ; $4bb6: $11 $03 $c5
    ld a, $04                                     ; $4bb9: $3e $04
    call Call_07d_4c33                            ; $4bbb: $cd $33 $4c
    ld hl, $c5d5                                  ; $4bbe: $21 $d5 $c5
    ld de, $c507                                  ; $4bc1: $11 $07 $c5
    ld a, $04                                     ; $4bc4: $3e $04
    call Call_07d_4c33                            ; $4bc6: $cd $33 $4c
    ld hl, $c5d9                                  ; $4bc9: $21 $d9 $c5
    ld de, $c50b                                  ; $4bcc: $11 $0b $c5
    ld a, $04                                     ; $4bcf: $3e $04
    call Call_07d_4c33                            ; $4bd1: $cd $33 $4c
    ld hl, $c5dd                                  ; $4bd4: $21 $dd $c5
    ld de, $c50f                                  ; $4bd7: $11 $0f $c5
    ld a, $04                                     ; $4bda: $3e $04
    call Call_07d_4c33                            ; $4bdc: $cd $33 $4c
    ld hl, $c5e1                                  ; $4bdf: $21 $e1 $c5
    ld de, $c517                                  ; $4be2: $11 $17 $c5
    ld a, $04                                     ; $4be5: $3e $04
    call Call_07d_4c33                            ; $4be7: $cd $33 $4c
    ld hl, $c5e5                                  ; $4bea: $21 $e5 $c5
    ld de, $c51f                                  ; $4bed: $11 $1f $c5
    ld a, $04                                     ; $4bf0: $3e $04
    call Call_07d_4c33                            ; $4bf2: $cd $33 $4c
    ld hl, $c5e9                                  ; $4bf5: $21 $e9 $c5
    ld de, $c527                                  ; $4bf8: $11 $27 $c5
    ld a, $03                                     ; $4bfb: $3e $03
    call Call_07d_4c33                            ; $4bfd: $cd $33 $4c
    ld hl, $c5ec                                  ; $4c00: $21 $ec $c5
    ld de, $c52d                                  ; $4c03: $11 $2d $c5
    ld a, $03                                     ; $4c06: $3e $03
    call Call_07d_4c33                            ; $4c08: $cd $33 $4c
    ld hl, $c5ef                                  ; $4c0b: $21 $ef $c5
    ld de, $c530                                  ; $4c0e: $11 $30 $c5
    ld a, $02                                     ; $4c11: $3e $02
    call Call_07d_4c33                            ; $4c13: $cd $33 $4c
    ld a, [$c5f1]                                 ; $4c16: $fa $f1 $c5
    ld [$c532], a                                 ; $4c19: $ea $32 $c5
    ld hl, $c5f2                                  ; $4c1c: $21 $f2 $c5
    ld de, $c536                                  ; $4c1f: $11 $36 $c5
    ld a, $08                                     ; $4c22: $3e $08
    call Call_07d_4c33                            ; $4c24: $cd $33 $4c
    ld hl, $c5fa                                  ; $4c27: $21 $fa $c5
    ld de, $c53e                                  ; $4c2a: $11 $3e $c5
    ld a, $30                                     ; $4c2d: $3e $30
    call Call_07d_4c33                            ; $4c2f: $cd $33 $4c
    ret                                           ; $4c32: $c9


Call_07d_4c33:
    ld c, a                                       ; $4c33: $4f

jr_07d_4c34:
    ld a, [hl+]                                   ; $4c34: $2a
    ld [de], a                                    ; $4c35: $12
    inc de                                        ; $4c36: $13
    dec c                                         ; $4c37: $0d
    jr nz, jr_07d_4c34                            ; $4c38: $20 $fa

    ret                                           ; $4c3a: $c9


    db $3e, $c5, $4a, $c5, $56, $c5, $62, $c5, $00, $18, $30, $48

    ld h, b                                       ; $4c47: $60
    ld a, b                                       ; $4c48: $78
    sub b                                         ; $4c49: $90
    xor b                                         ; $4c4a: $a8
    dec [hl]                                      ; $4c4b: $35
    nop                                           ; $4c4c: $00
    and l                                         ; $4c4d: $a5
    nop                                           ; $4c4e: $00
    rrca                                          ; $4c4f: $0f
    ld bc, $0172                                  ; $4c50: $01 $72 $01
    pop de                                        ; $4c53: $d1
    db $01                                        ; $4c54: $01

    db $2a, $02

    ld a, l                                       ; $4c57: $7d
    ld [bc], a                                    ; $4c58: $02

    db $cd, $02

    rla                                           ; $4c5b: $17
    inc bc                                        ; $4c5c: $03

    db $5e, $03

    and b                                         ; $4c5f: $a0
    inc bc                                        ; $4c60: $03

    db $df, $03, $1b, $04

    ld d, e                                       ; $4c65: $53
    inc b                                         ; $4c66: $04

    db $87, $04

    cp c                                          ; $4c69: $b9
    inc b                                         ; $4c6a: $04

    db $e8, $04, $15, $05

    ccf                                           ; $4c6f: $3f
    dec b                                         ; $4c70: $05

    db $66, $05, $8c, $05, $af, $05, $d0, $05, $f0, $05, $0d, $06, $29, $06, $44, $06
    db $5d, $06, $74, $06, $8a, $06, $9f, $06, $b3, $06, $c6, $06, $d7, $06, $e8, $06
    db $f8, $06, $07, $07, $15, $07, $22, $07

    ld l, $07                                     ; $4c99: $2e $07

    db $3a, $07, $45, $07

    ld d, b                                       ; $4c9f: $50
    rlca                                          ; $4ca0: $07

    db $5a, $07

    ld h, e                                       ; $4ca3: $63
    rlca                                          ; $4ca4: $07
    ld l, h                                       ; $4ca5: $6c
    rlca                                          ; $4ca6: $07
    ld [hl], h                                    ; $4ca7: $74
    rlca                                          ; $4ca8: $07
    ld a, h                                       ; $4ca9: $7c
    rlca                                          ; $4caa: $07
    add e                                         ; $4cab: $83
    rlca                                          ; $4cac: $07
    adc d                                         ; $4cad: $8a
    rlca                                          ; $4cae: $07
    sub c                                         ; $4caf: $91
    rlca                                          ; $4cb0: $07
    sub a                                         ; $4cb1: $97
    rlca                                          ; $4cb2: $07
    sbc l                                         ; $4cb3: $9d
    rlca                                          ; $4cb4: $07
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

    ld de, $214f                                  ; $4cef: $11 $4f $21
    ld c, a                                       ; $4cf2: $4f
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
    ld b, c                                       ; $4d05: $41
    ld c, [hl]                                    ; $4d06: $4e
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

    db $21, $4d

    ld sp, $414d                                  ; $4d17: $31 $4d $41
    ld c, l                                       ; $4d1a: $4d
    ld d, c                                       ; $4d1b: $51
    ld c, l                                       ; $4d1c: $4d
    ld h, c                                       ; $4d1d: $61
    ld c, l                                       ; $4d1e: $4d
    ld [hl], c                                    ; $4d1f: $71
    ld c, l                                       ; $4d20: $4d

    db $ee, $ee, $ee, $ee, $ee, $ee, $ec, $a8, $64, $20, $00, $00, $00, $00, $00, $00

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
    xor $ee                                       ; $4e41: $ee $ee
    nop                                           ; $4e43: $00
    nop                                           ; $4e44: $00
    nop                                           ; $4e45: $00
    nop                                           ; $4e46: $00
    nop                                           ; $4e47: $00
    nop                                           ; $4e48: $00
    nop                                           ; $4e49: $00
    nop                                           ; $4e4a: $00
    nop                                           ; $4e4b: $00
    nop                                           ; $4e4c: $00
    nop                                           ; $4e4d: $00
    nop                                           ; $4e4e: $00
    nop                                           ; $4e4f: $00
    nop                                           ; $4e50: $00
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
    ld de, $cc11                                  ; $4f1f: $11 $11 $cc
    call z, $cccc                                 ; $4f22: $cc $cc $cc
    call z, $cccc                                 ; $4f25: $cc $cc $cc
    call z, $2222                                 ; $4f28: $cc $22 $22
    ld [hl+], a                                   ; $4f2b: $22
    ld [hl+], a                                   ; $4f2c: $22
    ld [hl+], a                                   ; $4f2d: $22
    ld [hl+], a                                   ; $4f2e: $22
    ld [hl+], a                                   ; $4f2f: $22
    ld [hl+], a                                   ; $4f30: $22
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

    db $77, $4f

    sbc c                                         ; $4f43: $99
    ld c, a                                       ; $4f44: $4f

    db $7f, $4f

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
    adc b                                         ; $4f99: $88
    nop                                           ; $4f9a: $00
    add c                                         ; $4f9b: $81
    add b                                         ; $4f9c: $80
    dec d                                         ; $4f9d: $15
    ld d, $15                                     ; $4f9e: $16 $15
    ld d, $17                                     ; $4fa0: $16 $17
    inc h                                         ; $4fa2: $24
    dec h                                         ; $4fa3: $25
    rst $38                                       ; $4fa4: $ff
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

    db $88, $ed, $72, $80, $59, $3f, $21, $22, $23, $23, $23, $23, $23, $23

    inc hl                                        ; $502a: $23
    inc hl                                        ; $502b: $23
    inc hl                                        ; $502c: $23
    inc hl                                        ; $502d: $23
    rst $38                                       ; $502e: $ff

    db $88, $ed, $72, $80, $59, $3f, $35, $36, $37, $37, $37, $37, $37, $37, $37, $37
    db $37, $37, $ff, $88, $ed, $72, $80, $59, $3f, $25, $26, $27, $27, $27, $27, $27
    db $27, $27, $27, $27, $27, $ff, $88, $20, $94, $80, $5e, $04, $04, $04, $04, $04
    db $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
    db $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
    db $04, $04, $04

    rst $38                                       ; $5082: $ff
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

    db $10, $51

    ld e, $51                                     ; $50d1: $1e $51
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

    db $01, $01, $02, $01, $01, $00, $ff, $ff, $fe, $ff, $ff, $00, $80, $80

    ld bc, $0201                                  ; $511e: $01 $01 $02
    ld [bc], a                                    ; $5121: $02
    ld bc, $0001                                  ; $5122: $01 $01 $00
    rst $38                                       ; $5125: $ff
    rst $38                                       ; $5126: $ff
    cp $fe                                        ; $5127: $fe $fe
    rst $38                                       ; $5129: $ff
    rst $38                                       ; $512a: $ff
    nop                                           ; $512b: $00
    add b                                         ; $512c: $80
    add b                                         ; $512d: $80
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
    jr jr_07d_51f3                                ; $51d8: $18 $19

    ld a, [de]                                    ; $51da: $1a
    dec de                                        ; $51db: $1b
    inc e                                         ; $51dc: $1c
    dec e                                         ; $51dd: $1d
    ld e, $1f                                     ; $51de: $1e $1f
    jr nz, jr_07d_5203                            ; $51e0: $20 $21

    ld [hl+], a                                   ; $51e2: $22
    inc hl                                        ; $51e3: $23
    inc h                                         ; $51e4: $24
    dec h                                         ; $51e5: $25
    ld h, $27                                     ; $51e6: $26 $27
    jr z, jr_07d_5213                             ; $51e8: $28 $29

    ld a, [hl+]                                   ; $51ea: $2a
    dec hl                                        ; $51eb: $2b
    inc l                                         ; $51ec: $2c
    dec l                                         ; $51ed: $2d
    ld l, $2f                                     ; $51ee: $2e $2f
    jr nc, jr_07d_5223                            ; $51f0: $30 $31

    ld [hl-], a                                   ; $51f2: $32

jr_07d_51f3:
    inc sp                                        ; $51f3: $33
    inc [hl]                                      ; $51f4: $34
    dec [hl]                                      ; $51f5: $35
    ld [hl], $37                                  ; $51f6: $36 $37
    jr c, jr_07d_5233                             ; $51f8: $38 $39

    ld a, [hl-]                                   ; $51fa: $3a
    dec sp                                        ; $51fb: $3b
    inc a                                         ; $51fc: $3c
    dec a                                         ; $51fd: $3d
    ld a, $3f                                     ; $51fe: $3e $3f
    ld b, b                                       ; $5200: $40
    ld b, c                                       ; $5201: $41
    ld b, d                                       ; $5202: $42

jr_07d_5203:
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

jr_07d_5213:
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

jr_07d_5223:
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

jr_07d_5233:
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

Jump_07d_5253:
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

Jump_07d_52d7:
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

    db $3c, $53

    ld b, l                                       ; $52ed: $45
    ld d, e                                       ; $52ee: $53
    ld c, [hl]                                    ; $52ef: $4e
    ld d, e                                       ; $52f0: $53

    db $57, $53

    ld h, b                                       ; $52f3: $60
    ld d, e                                       ; $52f4: $53

    db $69, $53

    ld [hl], d                                    ; $52f7: $72
    ld d, e                                       ; $52f8: $53
    ld a, e                                       ; $52f9: $7b
    ld d, e                                       ; $52fa: $53
    add h                                         ; $52fb: $84
    ld d, e                                       ; $52fc: $53
    adc l                                         ; $52fd: $8d
    ld d, e                                       ; $52fe: $53
    sub [hl]                                      ; $52ff: $96
    ld d, e                                       ; $5300: $53

Jump_07d_5301:
    sbc a                                         ; $5301: $9f
    ld d, e                                       ; $5302: $53

    db $a8, $53

    nop                                           ; $5305: $00
    nop                                           ; $5306: $00
    nop                                           ; $5307: $00
    nop                                           ; $5308: $00
    nop                                           ; $5309: $00
    nop                                           ; $530a: $00
    nop                                           ; $530b: $00
    nop                                           ; $530c: $00
    nop                                           ; $530d: $00
    nop                                           ; $530e: $00
    nop                                           ; $530f: $00
    nop                                           ; $5310: $00
    nop                                           ; $5311: $00
    nop                                           ; $5312: $00

Jump_07d_5313:
    nop                                           ; $5313: $00
    nop                                           ; $5314: $00
    nop                                           ; $5315: $00
    nop                                           ; $5316: $00
    nop                                           ; $5317: $00
    nop                                           ; $5318: $00
    nop                                           ; $5319: $00
    nop                                           ; $531a: $00
    nop                                           ; $531b: $00
    nop                                           ; $531c: $00
    nop                                           ; $531d: $00
    nop                                           ; $531e: $00
    nop                                           ; $531f: $00
    nop                                           ; $5320: $00
    nop                                           ; $5321: $00
    nop                                           ; $5322: $00
    nop                                           ; $5323: $00
    nop                                           ; $5324: $00
    nop                                           ; $5325: $00
    nop                                           ; $5326: $00
    nop                                           ; $5327: $00
    nop                                           ; $5328: $00
    nop                                           ; $5329: $00
    nop                                           ; $532a: $00
    nop                                           ; $532b: $00
    nop                                           ; $532c: $00
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

    db $0f, $b1, $53, $3c, $55, $af, $56, $88, $58

    rrca                                          ; $5345: $0f
    ccf                                           ; $5346: $3f
    ld e, c                                       ; $5347: $59
    ld b, h                                       ; $5348: $44
    ld e, e                                       ; $5349: $5b
    push af                                       ; $534a: $f5
    ld e, h                                       ; $534b: $5c
    ld a, [c]                                     ; $534c: $f2
    ld e, l                                       ; $534d: $5d
    rrca                                          ; $534e: $0f
    pop hl                                        ; $534f: $e1
    ld e, [hl]                                    ; $5350: $5e
    jp hl                                         ; $5351: $e9


    ld e, a                                       ; $5352: $5f
    xor $60                                       ; $5353: $ee $60

Jump_07d_5355:
    rst $20                                       ; $5355: $e7
    ld h, c                                       ; $5356: $61

    db $0f, $94, $62, $c5, $63, $86, $64, $ed, $64

    rrca                                          ; $5360: $0f
    ld a, h                                       ; $5361: $7c
    ld h, l                                       ; $5362: $65
    dec [hl]                                      ; $5363: $35
    ld h, [hl]                                    ; $5364: $66
    dec hl                                        ; $5365: $2b
    ld h, a                                       ; $5366: $67
    ldh [$67], a                                  ; $5367: $e0 $67

    db $0f, $7b, $68, $61, $6a, $ef, $6b, $5f, $6c

    rrca                                          ; $5372: $0f
    ld [c], a                                     ; $5373: $e2
    ld l, h                                       ; $5374: $6c
    ei                                            ; $5375: $fb
    ld l, l                                       ; $5376: $6d
    and $6e                                       ; $5377: $e6 $6e
    ld [hl], e                                    ; $5379: $73
    ld l, a                                       ; $537a: $6f
    rrca                                          ; $537b: $0f
    rrca                                          ; $537c: $0f
    ld [hl], b                                    ; $537d: $70
    ld e, [hl]                                    ; $537e: $5e
    ld [hl], b                                    ; $537f: $70
    ret z                                         ; $5380: $c8

    ld [hl], b                                    ; $5381: $70
    ld h, b                                       ; $5382: $60
    ld [hl], c                                    ; $5383: $71
    rrca                                          ; $5384: $0f
    push af                                       ; $5385: $f5
    ld [hl], c                                    ; $5386: $71
    ld c, a                                       ; $5387: $4f
    ld [hl], d                                    ; $5388: $72
    ld [$e073], sp                                ; $5389: $08 $73 $e0
    ld [hl], e                                    ; $538c: $73
    rrca                                          ; $538d: $0f
    ld a, a                                       ; $538e: $7f
    ld [hl], h                                    ; $538f: $74
    ei                                            ; $5390: $fb
    ld [hl], h                                    ; $5391: $74
    ld e, l                                       ; $5392: $5d
    ld [hl], l                                    ; $5393: $75
    add $75                                       ; $5394: $c6 $75
    rrca                                          ; $5396: $0f
    jr z, @+$78                                   ; $5397: $28 $76

    dec sp                                        ; $5399: $3b
    ld [hl], a                                    ; $539a: $77
    ld b, $78                                     ; $539b: $06 $78
    ld h, h                                       ; $539d: $64
    ld a, b                                       ; $539e: $78
    rrca                                          ; $539f: $0f
    ld [hl], l                                    ; $53a0: $75
    ld a, b                                       ; $53a1: $78
    adc [hl]                                      ; $53a2: $8e
    ld a, c                                       ; $53a3: $79
    xor e                                         ; $53a4: $ab
    ld a, d                                       ; $53a5: $7a
    xor c                                         ; $53a6: $a9
    ld a, e                                       ; $53a7: $7b

    db $0f, $79, $7c, $0c, $7d, $98, $7d, $0e, $7e, $d0, $01, $e5, $80, $e6, $b0, $dc
    db $11, $ea, $03, $eb, $1c, $e8, $07, $ee, $33, $d3, $df, $02, $e2, $17, $55, $d3
    db $c9, $d9, $ca, $d9, $ca, $d9, $c9, $d9, $ca, $d9, $ca, $a9, $d9, $ac, $08, $c9
    db $d9, $cc, $08, $e2, $17, $55, $d3, $c9, $d9, $ca, $d9, $ca, $d9, $c9, $d9, $ca
    db $d9, $ca, $89, $d9, $8a, $d9, $8a, $d9, $89, $d9, $8a, $d9, $8a, $a9, $d9, $aa
    db $ba, $c9, $d9, $ca, $d7, $1a, $69, $d9, $6a, $5a, $39, $d9, $3a, $1a, $59, $d9
    db $5a, $d9, $5a, $d9, $5f, $1f, $d9, $19, $d9, $1a, $d9, $1a, $d8, $89, $d9, $8a
    db $d9, $8a, $a9, $d9, $aa, $ba, $c9, $d9, $ca, $d7, $1a, $69, $d9, $6a, $d9, $6a
    db $59, $d9, $5a, $6a, $89, $d9, $8c, $08, $39, $d9, $3c, $08, $d8, $c9, $d9, $cc
    db $08, $89, $d9, $8c, $08, $e0, $d4, $19, $d9, $1a, $d9, $1a, $d9, $19, $d9, $1a
    db $0a, $d8, $c9, $d9, $ca, $aa, $89, $d9, $8a, $6a, $89, $d9, $8a, $d9, $8a, $d9
    db $89, $d9, $8a, $d9, $8a, $19, $d9, $1a, $d9, $1a, $d9, $19, $d9, $1a, $d9, $1a
    db $d7, $19, $d9, $1a, $d9, $1a, $d9, $19, $d9, $1a, $d9, $1a, $d8, $c9, $d9, $ca
    db $d7, $1a, $39, $d9, $3a, $5a, $19, $d9, $1a, $d9, $1a, $d9, $19, $d9, $1a, $d9
    db $1a, $39, $d9, $3a, $d9, $3a, $d9, $39, $d9, $3a, $d9, $3a, $59, $d9, $5a, $d9
    db $5a, $d9, $59, $d9, $5a, $5a, $69, $d9, $6a, $5a, $39, $d9, $3a, $5a, $19, $d9
    db $1a, $d9, $1a, $d8, $c9, $d9, $ca, $d9, $ca, $a9, $d9, $aa, $d9, $aa, $89, $d9
    db $8a, $d9, $8a, $69, $d9, $6a, $d9, $6a, $d9, $69, $d9, $6a, $d9, $6a, $89, $d9
    db $8a, $ca

    reti                                          ; $54ca: $d9


    rst $08                                       ; $54cb: $cf
    rst $10                                       ; $54cc: $d7
    ccf                                           ; $54cd: $3f
    add hl, de                                    ; $54ce: $19
    reti                                          ; $54cf: $d9


    ld a, [de]                                    ; $54d0: $1a
    reti                                          ; $54d1: $d9


    ld a, [de]                                    ; $54d2: $1a
    reti                                          ; $54d3: $d9


    add hl, de                                    ; $54d4: $19
    reti                                          ; $54d5: $d9


    ld a, [de]                                    ; $54d6: $1a
    reti                                          ; $54d7: $d9


    ld a, [de]                                    ; $54d8: $1a
    reti                                          ; $54d9: $d9


    add hl, de                                    ; $54da: $19
    reti                                          ; $54db: $d9


    ld a, [de]                                    ; $54dc: $1a
    reti                                          ; $54dd: $d9


    ld a, [de]                                    ; $54de: $1a
    reti                                          ; $54df: $d9


    add hl, de                                    ; $54e0: $19
    reti                                          ; $54e1: $d9


    ld a, [de]                                    ; $54e2: $1a
    reti                                          ; $54e3: $d9


    ld a, [de]                                    ; $54e4: $1a
    rst $18                                       ; $54e5: $df
    ld [bc], a                                    ; $54e6: $02
    ld [c], a                                     ; $54e7: $e2
    jr z, @+$57                                   ; $54e8: $28 $55

    ld l, c                                       ; $54ea: $69
    reti                                          ; $54eb: $d9


    ld l, d                                       ; $54ec: $6a
    reti                                          ; $54ed: $d9


    ld l, d                                       ; $54ee: $6a
    reti                                          ; $54ef: $d9


    ld l, a                                       ; $54f0: $6f
    ld d, a                                       ; $54f1: $57
    scf                                           ; $54f2: $37
    add hl, de                                    ; $54f3: $19
    reti                                          ; $54f4: $d9


    ld a, [de]                                    ; $54f5: $1a
    reti                                          ; $54f6: $d9


    ld a, [de]                                    ; $54f7: $1a
    ret c                                         ; $54f8: $d8

    ret                                           ; $54f9: $c9


    reti                                          ; $54fa: $d9


    jp z, $cad9                                   ; $54fb: $ca $d9 $ca

    ld [c], a                                     ; $54fe: $e2
    jr z, @+$57                                   ; $54ff: $28 $55

    xor c                                         ; $5501: $a9
    reti                                          ; $5502: $d9


    xor d                                         ; $5503: $aa
    adc d                                         ; $5504: $8a
    ld l, c                                       ; $5505: $69
    reti                                          ; $5506: $d9


    ld l, d                                       ; $5507: $6a
    ld e, d                                       ; $5508: $5a
    add hl, sp                                    ; $5509: $39
    reti                                          ; $550a: $d9


    ld a, [hl-]                                   ; $550b: $3a
    reti                                          ; $550c: $d9


    ld a, [hl-]                                   ; $550d: $3a
    reti                                          ; $550e: $d9


    add hl, sp                                    ; $550f: $39
    reti                                          ; $5510: $d9


    ld a, [hl-]                                   ; $5511: $3a
    reti                                          ; $5512: $d9


    ld a, [hl-]                                   ; $5513: $3a
    ldh [$de], a                                  ; $5514: $e0 $de
    rst $38                                       ; $5516: $ff

    db $d3, $5c, $07, $6a, $79, $0a, $8a, $d7, $19, $0a, $0a, $d8, $89, $0a, $d7, $1a
    db $e3

    call nc, $d959                                ; $5528: $d4 $59 $d9
    ld e, h                                       ; $552b: $5c
    ld [$d919], sp                                ; $552c: $08 $19 $d9
    inc e                                         ; $552f: $1c
    ld [$89d8], sp                                ; $5530: $08 $d8 $89
    reti                                          ; $5533: $d9


    adc h                                         ; $5534: $8c
    ld [$59d7], sp                                ; $5535: $08 $d7 $59
    reti                                          ; $5538: $d9


    ld e, h                                       ; $5539: $5c
    adc b                                         ; $553a: $88
    db $e3                                        ; $553b: $e3

    db $d0, $01, $e5, $80, $dc, $11, $ea, $03, $eb, $1c, $ee, $33, $d3, $e6, $90, $e8
    db $07, $df, $02, $e2, $91, $56, $39, $d9, $3a, $d9, $3a, $d9, $39, $d9, $3a, $d9
    db $3a, $19, $d9, $1c, $08, $39, $d9, $3c, $08, $e2, $91, $56, $39, $d9, $3a, $d9
    db $3a, $d9, $39, $d9, $3a, $d9, $3a, $d8, $c9, $d9, $ca, $d9, $ca, $d9, $c9, $d9
    db $ca, $d9, $ca, $d7, $69, $d9, $6a, $7a, $89, $d9, $8a, $aa, $d7, $39, $d9, $3a
    db $1a, $d8, $c9, $d9, $ca, $aa, $d7, $19, $d9, $1a, $d9, $1a, $d9, $1f, $d8, $8f
    db $d9, $89, $d9, $8a, $d9, $8a, $59, $d9, $5a, $d9, $5a, $69, $d9, $6a, $7a, $89
    db $d9, $8a, $aa, $d7, $19, $d9, $1a, $d9, $1a, $19, $d9, $1a, $1a, $39, $d9, $3c
    db $08, $d8, $c9, $d9, $cc, $08, $89, $d9, $8c, $08, $39, $d9, $3c, $08, $e0, $e6
    db $b2, $e8, $06, $e4, $fd, $e2, $9f, $56, $d2, $19, $5a, $8a, $d7, $19, $d8, $8a
    db $d7, $1a, $59, $1a, $5a, $89, $5a, $1a, $e2, $9f, $56, $d2, $99, $d7, $1a, $4a
    db $99, $4a, $d7, $1a, $d8, $d8, $b9, $d7, $3a, $6a, $b9, $6a, $d7, $3a, $d8, $19
    db $5a, $8a, $d7, $19, $d8, $8a, $5a, $d8, $c9, $d7, $3a, $8a, $c9, $8a, $3a, $d8
    db $a9, $d7, $1a, $5a, $a9, $5a, $1a, $d8, $c9, $d7, $3a, $8a, $c9, $8a, $3a, $19
    db $5a, $8a, $d7, $19, $d8, $8a, $5a, $d8, $c9, $d7, $3a, $8a

    ret                                           ; $5628: $c9


    adc d                                         ; $5629: $8a
    ld a, [hl-]                                   ; $562a: $3a
    ld e, c                                       ; $562b: $59
    ld a, [de]                                    ; $562c: $1a
    ld e, d                                       ; $562d: $5a
    adc c                                         ; $562e: $89
    ld e, d                                       ; $562f: $5a
    adc d                                         ; $5630: $8a
    add hl, bc                                    ; $5631: $09
    adc d                                         ; $5632: $8a
    ld e, d                                       ; $5633: $5a
    add hl, de                                    ; $5634: $19
    ret c                                         ; $5635: $d8

    adc d                                         ; $5636: $8a
    ld a, [de]                                    ; $5637: $1a
    db $e4                                        ; $5638: $e4
    nop                                           ; $5639: $00
    and $90                                       ; $563a: $e6 $90
    add sp, $07                                   ; $563c: $e8 $07
    rst $18                                       ; $563e: $df
    ld [bc], a                                    ; $563f: $02
    call nc, $d919                                ; $5640: $d4 $19 $d9
    inc e                                         ; $5643: $1c
    ld [$89d8], sp                                ; $5644: $08 $d8 $89
    reti                                          ; $5647: $d9


    adc h                                         ; $5648: $8c
    ld [$d959], sp                                ; $5649: $08 $59 $d9
    ld e, h                                       ; $564c: $5c
    ld [$19d7], sp                                ; $564d: $08 $d7 $19
    reti                                          ; $5650: $d9


    inc e                                         ; $5651: $1c
    ld e, b                                       ; $5652: $58
    add hl, sp                                    ; $5653: $39
    reti                                          ; $5654: $d9


    ld a, [hl-]                                   ; $5655: $3a
    reti                                          ; $5656: $d9


    ld a, [hl-]                                   ; $5657: $3a
    reti                                          ; $5658: $d9


    ccf                                           ; $5659: $3f
    rla                                           ; $565a: $17
    ret c                                         ; $565b: $d8

    rst $00                                       ; $565c: $c7
    xor c                                         ; $565d: $a9
    reti                                          ; $565e: $d9


    xor d                                         ; $565f: $aa
    reti                                          ; $5660: $d9


    xor d                                         ; $5661: $aa
    adc c                                         ; $5662: $89
    reti                                          ; $5663: $d9


    adc d                                         ; $5664: $8a
    reti                                          ; $5665: $d9


    adc d                                         ; $5666: $8a
    rst $10                                       ; $5667: $d7
    add hl, de                                    ; $5668: $19
    reti                                          ; $5669: $d9


    inc e                                         ; $566a: $1c
    ld [$89d8], sp                                ; $566b: $08 $d8 $89
    reti                                          ; $566e: $d9


    adc h                                         ; $566f: $8c
    ld [$d959], sp                                ; $5670: $08 $59 $d9
    ld e, h                                       ; $5673: $5c
    ld [$19d7], sp                                ; $5674: $08 $d7 $19
    reti                                          ; $5677: $d9


    inc e                                         ; $5678: $1c
    ld e, b                                       ; $5679: $58
    ld l, c                                       ; $567a: $69
    reti                                          ; $567b: $d9


    ld l, d                                       ; $567c: $6a
    ld e, d                                       ; $567d: $5a
    add hl, sp                                    ; $567e: $39
    reti                                          ; $567f: $d9


    ld a, [hl-]                                   ; $5680: $3a
    ld a, [de]                                    ; $5681: $1a
    ret c                                         ; $5682: $d8

    ret                                           ; $5683: $c9


    reti                                          ; $5684: $d9


    jp z, $cad9                                   ; $5685: $ca $d9 $ca

    reti                                          ; $5688: $d9


    ret                                           ; $5689: $c9


    reti                                          ; $568a: $d9


    jp z, $cad9                                   ; $568b: $ca $d9 $ca

    ldh [$de], a                                  ; $568e: $e0 $de
    rst $38                                       ; $5690: $ff

    db $d3, $1c, $07, $3a, $49, $0a, $5a, $89, $0a, $0a, $59, $0a, $8a, $e3, $d3, $19
    db $d8, $ca, $aa, $89, $6a, $5a, $39, $1a, $d8, $ca, $a9, $8a, $6a, $e3, $d0, $01
    db $e7, $01, $e6, $20, $e9, $00, $dc, $11, $e8, $07, $d2, $df, $02, $e2, $2d, $58
    db $d1, $89, $d9, $8a, $d7, $8a, $d8, $89, $d9, $8a, $d7, $8a, $d8, $69, $d9, $6a
    db $d7, $6a, $d8, $89, $d9, $8a, $d7, $8a, $e2, $2d, $58, $d1, $89, $d9, $8a, $8a
    db $d7, $89, $d9, $8a, $d8, $8a, $89, $d9, $8a, $d7, $8a, $d8, $89, $d9, $8a, $d7
    db $8a, $d8, $69, $d9, $6a, $d9, $6a, $d9, $69, $d9, $6a, $6a, $d7, $69, $d9, $6a
    db $d9, $6a, $d8, $69, $d9, $6a, $d9, $6a, $d7, $19, $d9, $1a, $1a, $d8, $89, $d9
    db $8a, $d7, $1a, $19, $d9, $1a, $1a, $d8, $89, $d9, $8a, $d7, $1a, $69, $d9, $6a
    db $d9, $6a, $d9, $69, $d9, $6a, $d7, $6a, $d8, $69, $d9, $6a, $d9, $6a, $d7, $69
    db $d9, $6a, $d9, $6a, $d8, $89, $d9, $8a, $8a, $d7, $89, $d9, $8a, $d8, $8a, $89
    db $d9, $8a, $d7, $8a, $d8, $89, $d9, $8a, $d7, $8a, $e0, $d1, $69, $d9, $6a, $6a
    db $d7, $69, $d9, $6a, $d8, $6a, $69, $d9, $6a, $d7, $6a, $d8, $69, $d9, $6a, $d7
    db $6a, $19, $d9, $1a, $1a, $d8, $89, $d9, $8a, $d7, $1a, $19, $d9, $1a, $d8, $8a
    db $d7, $19, $d9, $1a, $d8, $8a, $69, $d9, $6a, $6a, $d7, $69, $d9, $6a, $d8, $6a
    db $69, $d9, $6a, $d7, $6a, $d8, $69, $d9, $6a, $d7, $6a, $d8, $99, $d9, $9a, $9a
    db $d7, $99, $d9, $9a, $d8, $9a, $b9, $d9, $ba, $ba, $d7, $b9, $d9, $ba, $d8, $ba
    db $d7, $19, $d9, $1a, $d9, $1a, $d9, $19, $d9, $1a, $d9, $1a, $d8, $c9, $d9, $ca
    db $d9, $ca, $d9, $c9, $d9, $ca, $d9, $ca, $a9, $d9, $aa, $d9, $aa, $d9, $a9, $d9
    db $aa, $d9, $aa, $89, $d9, $8a, $d9, $8a, $d9, $89, $d9, $8a, $d9, $8a, $69, $d9
    db $6a, $d9, $6a, $d9, $69, $d9, $6a, $d9, $6a, $89, $d9, $8a, $d9

    adc d                                         ; $57de: $8a
    reti                                          ; $57df: $d9


    adc c                                         ; $57e0: $89
    reti                                          ; $57e1: $d9


    adc d                                         ; $57e2: $8a
    reti                                          ; $57e3: $d9


    adc d                                         ; $57e4: $8a
    rst $10                                       ; $57e5: $d7
    add hl, de                                    ; $57e6: $19
    reti                                          ; $57e7: $d9


    ld a, [de]                                    ; $57e8: $1a
    reti                                          ; $57e9: $d9


    ld a, [de]                                    ; $57ea: $1a
    ret c                                         ; $57eb: $d8

    ret                                           ; $57ec: $c9


    reti                                          ; $57ed: $d9


    jp z, $cad9                                   ; $57ee: $ca $d9 $ca

    xor c                                         ; $57f1: $a9
    reti                                          ; $57f2: $d9


    xor d                                         ; $57f3: $aa
    reti                                          ; $57f4: $d9


    xor d                                         ; $57f5: $aa
    ret                                           ; $57f6: $c9


    reti                                          ; $57f7: $d9


    jp z, $cad9                                   ; $57f8: $ca $d9 $ca

    ld [c], a                                     ; $57fb: $e2
    ld b, l                                       ; $57fc: $45
    ld e, b                                       ; $57fd: $58
    pop de                                        ; $57fe: $d1
    ld l, c                                       ; $57ff: $69
    reti                                          ; $5800: $d9


    ld l, d                                       ; $5801: $6a
    reti                                          ; $5802: $d9


    ld l, d                                       ; $5803: $6a
    reti                                          ; $5804: $d9


    ld l, c                                       ; $5805: $69
    reti                                          ; $5806: $d9


    ld l, d                                       ; $5807: $6a
    ld l, d                                       ; $5808: $6a
    adc c                                         ; $5809: $89
    reti                                          ; $580a: $d9


    adc d                                         ; $580b: $8a
    reti                                          ; $580c: $d9


    adc d                                         ; $580d: $8a
    reti                                          ; $580e: $d9


    adc c                                         ; $580f: $89
    reti                                          ; $5810: $d9


    adc d                                         ; $5811: $8a
    adc d                                         ; $5812: $8a
    ld [c], a                                     ; $5813: $e2
    ld b, l                                       ; $5814: $45
    ld e, b                                       ; $5815: $58
    pop de                                        ; $5816: $d1
    ld l, c                                       ; $5817: $69
    reti                                          ; $5818: $d9


    ld l, d                                       ; $5819: $6a
    reti                                          ; $581a: $d9


    ld l, d                                       ; $581b: $6a
    reti                                          ; $581c: $d9


    ld l, c                                       ; $581d: $69
    reti                                          ; $581e: $d9


    ld l, d                                       ; $581f: $6a
    ld l, d                                       ; $5820: $6a
    adc c                                         ; $5821: $89
    reti                                          ; $5822: $d9


    adc d                                         ; $5823: $8a
    reti                                          ; $5824: $d9


    adc d                                         ; $5825: $8a
    adc c                                         ; $5826: $89
    reti                                          ; $5827: $d9


    adc d                                         ; $5828: $8a
    reti                                          ; $5829: $d9


    adc d                                         ; $582a: $8a
    sbc $ff                                       ; $582b: $de $ff

    db $d2, $19, $d9, $1a, $d9, $1a, $d9, $19, $d9, $1a, $1a, $d8, $89, $d9, $8a, $d9
    db $8a, $d7, $19, $d9, $1a, $d9, $1a, $e3

    jp nc, $d919                                  ; $5845: $d2 $19 $d9

    ld a, [de]                                    ; $5848: $1a
    reti                                          ; $5849: $d9


    ld a, [de]                                    ; $584a: $1a
    reti                                          ; $584b: $d9


    add hl, de                                    ; $584c: $19
    reti                                          ; $584d: $d9


    ld a, [de]                                    ; $584e: $1a
    ld a, [de]                                    ; $584f: $1a
    ret c                                         ; $5850: $d8

    adc c                                         ; $5851: $89
    reti                                          ; $5852: $d9


    adc d                                         ; $5853: $8a
    reti                                          ; $5854: $d9


    adc d                                         ; $5855: $8a
    reti                                          ; $5856: $d9


    adc c                                         ; $5857: $89
    reti                                          ; $5858: $d9


    adc d                                         ; $5859: $8a
    adc d                                         ; $585a: $8a
    rst $10                                       ; $585b: $d7
    add hl, sp                                    ; $585c: $39
    reti                                          ; $585d: $d9


    ld a, [hl-]                                   ; $585e: $3a
    reti                                          ; $585f: $d9


    ld a, [hl-]                                   ; $5860: $3a
    reti                                          ; $5861: $d9


    add hl, sp                                    ; $5862: $39
    reti                                          ; $5863: $d9


    ld a, [hl-]                                   ; $5864: $3a
    ld a, [hl-]                                   ; $5865: $3a
    ret c                                         ; $5866: $d8

    adc c                                         ; $5867: $89
    reti                                          ; $5868: $d9


    adc d                                         ; $5869: $8a
    reti                                          ; $586a: $d9


    adc d                                         ; $586b: $8a
    reti                                          ; $586c: $d9


    adc c                                         ; $586d: $89
    reti                                          ; $586e: $d9


    adc d                                         ; $586f: $8a
    adc d                                         ; $5870: $8a
    rst $10                                       ; $5871: $d7
    add hl, de                                    ; $5872: $19
    reti                                          ; $5873: $d9


    ld a, [de]                                    ; $5874: $1a
    reti                                          ; $5875: $d9


    ld a, [de]                                    ; $5876: $1a
    reti                                          ; $5877: $d9


    add hl, de                                    ; $5878: $19
    reti                                          ; $5879: $d9


    ld a, [de]                                    ; $587a: $1a
    ld a, [de]                                    ; $587b: $1a
    ret c                                         ; $587c: $d8

    adc c                                         ; $587d: $89
    reti                                          ; $587e: $d9


    adc d                                         ; $587f: $8a
    reti                                          ; $5880: $d9


    adc d                                         ; $5881: $8a
    reti                                          ; $5882: $d9


    adc c                                         ; $5883: $89
    reti                                          ; $5884: $d9


    adc d                                         ; $5885: $8a
    adc d                                         ; $5886: $8a
    db $e3                                        ; $5887: $e3

    db $d0, $01, $d1, $df, $02, $e2, $0b, $59, $e2, $18, $59, $e2, $0b, $59, $19, $8a
    db $5a, $09, $5a, $0a, $39, $0a, $0a, $d7, $59, $d8, $ba, $aa, $e2, $0b, $59, $e2
    db $18, $59, $e2, $0b, $59, $19, $8a, $5a, $d7, $59, $d8, $5a, $0a, $39, $0a, $ba
    db $d7, $59, $d8, $ba, $aa, $e0, $df, $07, $19, $0a, $1a, $39, $0a, $0a, $e0, $19
    db $0a, $1a, $39, $3a, $3a, $d0, $20, $c1, $c1, $c0, $30, $c0, $d0, $01, $39, $3a
    db $3a, $e2, $0b, $59

    add hl, de                                    ; $58dc: $19
    adc d                                         ; $58dd: $8a
    ld e, d                                       ; $58de: $5a
    add hl, de                                    ; $58df: $19
    ld e, d                                       ; $58e0: $5a
    ld a, [bc]                                    ; $58e1: $0a
    add hl, sp                                    ; $58e2: $39
    ld a, [de]                                    ; $58e3: $1a
    ld a, [bc]                                    ; $58e4: $0a
    add hl, sp                                    ; $58e5: $39
    ld a, [hl-]                                   ; $58e6: $3a
    ld a, [hl-]                                   ; $58e7: $3a
    ld [c], a                                     ; $58e8: $e2
    dec h                                         ; $58e9: $25
    ld e, c                                       ; $58ea: $59
    ld [c], a                                     ; $58eb: $e2
    ld [hl-], a                                   ; $58ec: $32
    ld e, c                                       ; $58ed: $59
    ld [c], a                                     ; $58ee: $e2
    dec h                                         ; $58ef: $25
    ld e, c                                       ; $58f0: $59
    ld [c], a                                     ; $58f1: $e2
    ld [hl-], a                                   ; $58f2: $32
    ld e, c                                       ; $58f3: $59
    ld [c], a                                     ; $58f4: $e2
    dec h                                         ; $58f5: $25
    ld e, c                                       ; $58f6: $59
    ld [c], a                                     ; $58f7: $e2
    ld [hl-], a                                   ; $58f8: $32
    ld e, c                                       ; $58f9: $59
    ld [c], a                                     ; $58fa: $e2
    dec h                                         ; $58fb: $25
    ld e, c                                       ; $58fc: $59
    add hl, de                                    ; $58fd: $19
    ld e, d                                       ; $58fe: $5a
    ld a, [de]                                    ; $58ff: $1a
    add hl, sp                                    ; $5900: $39
    ld e, d                                       ; $5901: $5a
    ld a, [bc]                                    ; $5902: $0a
    add hl, bc                                    ; $5903: $09
    ld a, [de]                                    ; $5904: $1a
    ld e, d                                       ; $5905: $5a
    add hl, sp                                    ; $5906: $39
    ld a, [hl-]                                   ; $5907: $3a
    ld a, [hl-]                                   ; $5908: $3a
    sbc $ff                                       ; $5909: $de $ff

    db $19, $6a, $5a, $09, $5a, $0a, $39, $0a, $0a, $09, $5a, $0a, $e3, $19, $8a, $5a
    db $09, $5a, $0a, $39, $0a, $0a, $59, $6a, $5a, $e3

    add hl, de                                    ; $5925: $19
    ld e, d                                       ; $5926: $5a
    ld a, [de]                                    ; $5927: $1a
    add hl, sp                                    ; $5928: $39
    ld e, d                                       ; $5929: $5a
    ld a, [bc]                                    ; $592a: $0a
    add hl, bc                                    ; $592b: $09
    ld a, [de]                                    ; $592c: $1a
    ld e, d                                       ; $592d: $5a
    add hl, sp                                    ; $592e: $39
    ld a, [bc]                                    ; $592f: $0a
    ld a, [hl-]                                   ; $5930: $3a
    db $e3                                        ; $5931: $e3
    add hl, de                                    ; $5932: $19
    ld e, d                                       ; $5933: $5a
    ld a, [de]                                    ; $5934: $1a
    add hl, sp                                    ; $5935: $39
    ld e, d                                       ; $5936: $5a
    ld a, [bc]                                    ; $5937: $0a
    add hl, bc                                    ; $5938: $09
    ld a, [de]                                    ; $5939: $1a
    ld e, d                                       ; $593a: $5a
    add hl, sp                                    ; $593b: $39
    ld a, [bc]                                    ; $593c: $0a
    ld e, d                                       ; $593d: $5a
    db $e3                                        ; $593e: $e3
    ret nc                                        ; $593f: $d0

    ld bc, $40e5                                  ; $5940: $01 $e5 $40
    and $b0                                       ; $5943: $e6 $b0
    call c, $ea11                                 ; $5945: $dc $11 $ea
    ld c, $eb                                     ; $5948: $0e $eb
    inc e                                         ; $594a: $1c
    add sp, $07                                   ; $594b: $e8 $07
    call nc, $02df                                ; $594d: $d4 $df $02
    ld [c], a                                     ; $5950: $e2
    or l                                          ; $5951: $b5
    ld e, d                                       ; $5952: $5a
    call nc, $d955                                ; $5953: $d4 $55 $d9
    ld d, [hl]                                    ; $5956: $56
    reti                                          ; $5957: $d9


    ld d, l                                       ; $5958: $55
    reti                                          ; $5959: $d9


    ld d, [hl]                                    ; $595a: $56
    reti                                          ; $595b: $d9


    ld d, l                                       ; $595c: $55
    reti                                          ; $595d: $d9


    ld d, [hl]                                    ; $595e: $56
    reti                                          ; $595f: $d9


    ld d, l                                       ; $5960: $55
    reti                                          ; $5961: $d9


    ld d, [hl]                                    ; $5962: $56
    ld [hl], l                                    ; $5963: $75
    add [hl]                                      ; $5964: $86
    ld [hl], l                                    ; $5965: $75
    ld [hl], $d8                                  ; $5966: $36 $d8
    and l                                         ; $5968: $a5
    add [hl]                                      ; $5969: $86
    ld [hl], l                                    ; $596a: $75
    ld [hl], $e2                                  ; $596b: $36 $e2
    or l                                          ; $596d: $b5
    ld e, d                                       ; $596e: $5a
    call nc, $d955                                ; $596f: $d4 $55 $d9
    ld d, [hl]                                    ; $5972: $56
    reti                                          ; $5973: $d9


    ld d, l                                       ; $5974: $55
    ld d, $d9                                     ; $5975: $16 $d9
    dec d                                         ; $5977: $15
    reti                                          ; $5978: $d9


    ld d, $85                                     ; $5979: $16 $85
    reti                                          ; $597b: $d9


    add [hl]                                      ; $597c: $86
    ld [hl], l                                    ; $597d: $75
    reti                                          ; $597e: $d9


    halt                                          ; $597f: $76
    reti                                          ; $5980: $d9


    ld [hl], l                                    ; $5981: $75
    add [hl]                                      ; $5982: $86
    reti                                          ; $5983: $d9


    add l                                         ; $5984: $85
    reti                                          ; $5985: $d9


    add [hl]                                      ; $5986: $86
    and l                                         ; $5987: $a5
    reti                                          ; $5988: $d9


    and [hl]                                      ; $5989: $a6
    ld [c], a                                     ; $598a: $e2
    pop af                                        ; $598b: $f1
    ld e, d                                       ; $598c: $5a
    call nc, $d975                                ; $598d: $d4 $75 $d9
    halt                                          ; $5990: $76
    reti                                          ; $5991: $d9


    ld [hl], l                                    ; $5992: $75
    reti                                          ; $5993: $d9


    halt                                          ; $5994: $76
    add sp, $05                                   ; $5995: $e8 $05
    ld h, l                                       ; $5997: $65
    ld b, $15                                     ; $5998: $06 $15
    ld b, $a5                                     ; $599a: $06 $a5
    ld d, $05                                     ; $599c: $16 $05
    ld h, [hl]                                    ; $599e: $66
    add l                                         ; $599f: $85
    ld b, $35                                     ; $59a0: $06 $35
    ld b, $c5                                     ; $59a2: $06 $c5
    ld [hl], $05                                  ; $59a4: $36 $05
    add [hl]                                      ; $59a6: $86
    add sp, $07                                   ; $59a7: $e8 $07
    ld [c], a                                     ; $59a9: $e2
    pop af                                        ; $59aa: $f1
    ld e, d                                       ; $59ab: $5a
    call nc, $d975                                ; $59ac: $d4 $75 $d9
    halt                                          ; $59af: $76
    reti                                          ; $59b0: $d9


    ld [hl], l                                    ; $59b1: $75
    reti                                          ; $59b2: $d9


    halt                                          ; $59b3: $76
    ret c                                         ; $59b4: $d8

    ld d, l                                       ; $59b5: $55
    reti                                          ; $59b6: $d9


    ld d, [hl]                                    ; $59b7: $56
    reti                                          ; $59b8: $d9


    ld d, l                                       ; $59b9: $55
    ld b, [hl]                                    ; $59ba: $46
    reti                                          ; $59bb: $d9


    ld b, l                                       ; $59bc: $45
    reti                                          ; $59bd: $d9


    ld b, [hl]                                    ; $59be: $46
    dec [hl]                                      ; $59bf: $35
    reti                                          ; $59c0: $d9


    ld [hl], $d9                                  ; $59c1: $36 $d9
    dec [hl]                                      ; $59c3: $35
    reti                                          ; $59c4: $d9


    ld [hl], $d8                                  ; $59c5: $36 $d8
    push bc                                       ; $59c7: $c5
    reti                                          ; $59c8: $d9


    add $a5                                       ; $59c9: $c6 $a5
    reti                                          ; $59cb: $d9


    and [hl]                                      ; $59cc: $a6
    add l                                         ; $59cd: $85
    reti                                          ; $59ce: $d9


    add [hl]                                      ; $59cf: $86
    ldh [$d4], a                                  ; $59d0: $e0 $d4
    ld d, l                                       ; $59d2: $55
    reti                                          ; $59d3: $d9


    ld d, [hl]                                    ; $59d4: $56
    reti                                          ; $59d5: $d9


    ld d, l                                       ; $59d6: $55
    reti                                          ; $59d7: $d9


    ld d, [hl]                                    ; $59d8: $56
    reti                                          ; $59d9: $d9


    ld d, l                                       ; $59da: $55
    reti                                          ; $59db: $d9


    ld d, [hl]                                    ; $59dc: $56
    ret c                                         ; $59dd: $d8

    push bc                                       ; $59de: $c5
    reti                                          ; $59df: $d9


    add $d9                                       ; $59e0: $c6 $d9
    push bc                                       ; $59e2: $c5
    reti                                          ; $59e3: $d9


    add $d9                                       ; $59e4: $c6 $d9
    push bc                                       ; $59e6: $c5
    reti                                          ; $59e7: $d9


    add $d9                                       ; $59e8: $c6 $d9
    push bc                                       ; $59ea: $c5
    reti                                          ; $59eb: $d9


    add $d9                                       ; $59ec: $c6 $d9
    push bc                                       ; $59ee: $c5
    reti                                          ; $59ef: $d9


    add $d7                                       ; $59f0: $c6 $d7
    add l                                         ; $59f2: $85
    reti                                          ; $59f3: $d9


    add [hl]                                      ; $59f4: $86
    reti                                          ; $59f5: $d9


    add l                                         ; $59f6: $85
    reti                                          ; $59f7: $d9


    add [hl]                                      ; $59f8: $86
    reti                                          ; $59f9: $d9


    add l                                         ; $59fa: $85
    reti                                          ; $59fb: $d9


    add [hl]                                      ; $59fc: $86
    ld [hl], l                                    ; $59fd: $75
    reti                                          ; $59fe: $d9


    halt                                          ; $59ff: $76
    reti                                          ; $5a00: $d9


    ld [hl], l                                    ; $5a01: $75
    reti                                          ; $5a02: $d9


    halt                                          ; $5a03: $76
    reti                                          ; $5a04: $d9


    ld [hl], l                                    ; $5a05: $75
    reti                                          ; $5a06: $d9


    halt                                          ; $5a07: $76
    dec [hl]                                      ; $5a08: $35
    reti                                          ; $5a09: $d9


    ld [hl], $d9                                  ; $5a0a: $36 $d9
    dec [hl]                                      ; $5a0c: $35
    reti                                          ; $5a0d: $d9


    ld [hl], $55                                  ; $5a0e: $36 $55
    halt                                          ; $5a10: $76
    add l                                         ; $5a11: $85
    reti                                          ; $5a12: $d9


    add [hl]                                      ; $5a13: $86
    reti                                          ; $5a14: $d9


    add l                                         ; $5a15: $85
    reti                                          ; $5a16: $d9


    add [hl]                                      ; $5a17: $86
    reti                                          ; $5a18: $d9


    add l                                         ; $5a19: $85
    reti                                          ; $5a1a: $d9


    add [hl]                                      ; $5a1b: $86
    add l                                         ; $5a1c: $85
    reti                                          ; $5a1d: $d9


    add [hl]                                      ; $5a1e: $86
    reti                                          ; $5a1f: $d9


    add l                                         ; $5a20: $85
    halt                                          ; $5a21: $76
    reti                                          ; $5a22: $d9


    ld [hl], l                                    ; $5a23: $75
    reti                                          ; $5a24: $d9


    halt                                          ; $5a25: $76
    add l                                         ; $5a26: $85
    reti                                          ; $5a27: $d9


    add [hl]                                      ; $5a28: $86
    and l                                         ; $5a29: $a5
    reti                                          ; $5a2a: $d9


    and [hl]                                      ; $5a2b: $a6
    reti                                          ; $5a2c: $d9


    and l                                         ; $5a2d: $a5
    reti                                          ; $5a2e: $d9


    and [hl]                                      ; $5a2f: $a6
    reti                                          ; $5a30: $d9


    and l                                         ; $5a31: $a5
    reti                                          ; $5a32: $d9


    and [hl]                                      ; $5a33: $a6
    reti                                          ; $5a34: $d9


    and l                                         ; $5a35: $a5
    reti                                          ; $5a36: $d9


    and [hl]                                      ; $5a37: $a6
    push bc                                       ; $5a38: $c5
    reti                                          ; $5a39: $d9


    add $d9                                       ; $5a3a: $c6 $d9
    push bc                                       ; $5a3c: $c5
    reti                                          ; $5a3d: $d9


    add $d9                                       ; $5a3e: $c6 $d9
    push bc                                       ; $5a40: $c5
    reti                                          ; $5a41: $d9


    add $d9                                       ; $5a42: $c6 $d9
    push bc                                       ; $5a44: $c5
    reti                                          ; $5a45: $d9


    add $55                                       ; $5a46: $c6 $55
    halt                                          ; $5a48: $76
    add l                                         ; $5a49: $85
    ld d, [hl]                                    ; $5a4a: $56
    push bc                                       ; $5a4b: $c5
    reti                                          ; $5a4c: $d9


    add $d9                                       ; $5a4d: $c6 $d9
    push bc                                       ; $5a4f: $c5
    reti                                          ; $5a50: $d9


    add $d9                                       ; $5a51: $c6 $d9
    push bc                                       ; $5a53: $c5
    reti                                          ; $5a54: $d9


    add $d9                                       ; $5a55: $c6 $d9
    push bc                                       ; $5a57: $c5
    reti                                          ; $5a58: $d9


    add $d9                                       ; $5a59: $c6 $d9
    push bc                                       ; $5a5b: $c5
    reti                                          ; $5a5c: $d9


    add $d9                                       ; $5a5d: $c6 $d9
    push bc                                       ; $5a5f: $c5
    reti                                          ; $5a60: $d9


    add $c5                                       ; $5a61: $c6 $c5
    reti                                          ; $5a63: $d9


    add $d9                                       ; $5a64: $c6 $d9
    push bc                                       ; $5a66: $c5
    and [hl]                                      ; $5a67: $a6
    reti                                          ; $5a68: $d9


    and l                                         ; $5a69: $a5
    reti                                          ; $5a6a: $d9


    and [hl]                                      ; $5a6b: $a6
    add l                                         ; $5a6c: $85
    reti                                          ; $5a6d: $d9


    add [hl]                                      ; $5a6e: $86
    ld [hl], l                                    ; $5a6f: $75
    reti                                          ; $5a70: $d9


    halt                                          ; $5a71: $76
    reti                                          ; $5a72: $d9


    ld [hl], l                                    ; $5a73: $75
    ld d, [hl]                                    ; $5a74: $56
    reti                                          ; $5a75: $d9


    ld d, l                                       ; $5a76: $55
    reti                                          ; $5a77: $d9


    ld d, [hl]                                    ; $5a78: $56
    ld [hl], l                                    ; $5a79: $75
    reti                                          ; $5a7a: $d9


    halt                                          ; $5a7b: $76
    ld d, l                                       ; $5a7c: $55
    reti                                          ; $5a7d: $d9


    ld d, [hl]                                    ; $5a7e: $56
    reti                                          ; $5a7f: $d9


    ld d, l                                       ; $5a80: $55
    reti                                          ; $5a81: $d9


    ld d, [hl]                                    ; $5a82: $56
    reti                                          ; $5a83: $d9


    ld d, l                                       ; $5a84: $55
    reti                                          ; $5a85: $d9


    ld d, [hl]                                    ; $5a86: $56
    push bc                                       ; $5a87: $c5
    reti                                          ; $5a88: $d9


    add $d9                                       ; $5a89: $c6 $d9
    push bc                                       ; $5a8b: $c5
    reti                                          ; $5a8c: $d9


    add $a5                                       ; $5a8d: $c6 $a5
    reti                                          ; $5a8f: $d9


    and [hl]                                      ; $5a90: $a6
    reti                                          ; $5a91: $d9


    and l                                         ; $5a92: $a5
    reti                                          ; $5a93: $d9


    and [hl]                                      ; $5a94: $a6
    add l                                         ; $5a95: $85
    reti                                          ; $5a96: $d9


    add [hl]                                      ; $5a97: $86
    and l                                         ; $5a98: $a5
    reti                                          ; $5a99: $d9


    and [hl]                                      ; $5a9a: $a6
    reti                                          ; $5a9b: $d9


    and l                                         ; $5a9c: $a5
    reti                                          ; $5a9d: $d9


    and [hl]                                      ; $5a9e: $a6
    reti                                          ; $5a9f: $d9


    and l                                         ; $5aa0: $a5
    reti                                          ; $5aa1: $d9


    and [hl]                                      ; $5aa2: $a6
    reti                                          ; $5aa3: $d9


    and l                                         ; $5aa4: $a5
    reti                                          ; $5aa5: $d9


    and [hl]                                      ; $5aa6: $a6
    rst $10                                       ; $5aa7: $d7
    dec [hl]                                      ; $5aa8: $35
    ret c                                         ; $5aa9: $d8

    and [hl]                                      ; $5aaa: $a6
    rst $10                                       ; $5aab: $d7
    dec [hl]                                      ; $5aac: $35
    ret c                                         ; $5aad: $d8

    and [hl]                                      ; $5aae: $a6
    ld [hl], l                                    ; $5aaf: $75
    and [hl]                                      ; $5ab0: $a6
    dec [hl]                                      ; $5ab1: $35
    halt                                          ; $5ab2: $76
    sbc $ff                                       ; $5ab3: $de $ff
    call nc, Call_000_0655                        ; $5ab5: $d4 $55 $06
    dec [hl]                                      ; $5ab8: $35
    ld b, $25                                     ; $5ab9: $06 $25
    ld b, $d8                                     ; $5abb: $06 $d8
    push bc                                       ; $5abd: $c5
    rst $10                                       ; $5abe: $d7
    ld h, $35                                     ; $5abf: $26 $35
    ld d, [hl]                                    ; $5ac1: $56
    dec b                                         ; $5ac2: $05
    ld d, [hl]                                    ; $5ac3: $56
    dec b                                         ; $5ac4: $05
    ld [hl], $05                                  ; $5ac5: $36 $05
    ld h, $d8                                     ; $5ac7: $26 $d8
    push bc                                       ; $5ac9: $c5
    rst $10                                       ; $5aca: $d7
    ld h, $d8                                     ; $5acb: $26 $d8
    and l                                         ; $5acd: $a5
    ld b, $a5                                     ; $5ace: $06 $a5
    ld b, $c5                                     ; $5ad0: $06 $c5
    ld b, $c5                                     ; $5ad2: $06 $c5
    ld d, [hl]                                    ; $5ad4: $56
    dec b                                         ; $5ad5: $05
    ld d, [hl]                                    ; $5ad6: $56
    reti                                          ; $5ad7: $d9


    ld d, l                                       ; $5ad8: $55
    reti                                          ; $5ad9: $d9


    ld d, [hl]                                    ; $5ada: $56
    reti                                          ; $5adb: $d9


    ld d, l                                       ; $5adc: $55
    reti                                          ; $5add: $d9


    ld d, [hl]                                    ; $5ade: $56
    rst $10                                       ; $5adf: $d7
    ld d, l                                       ; $5ae0: $55
    ld b, $35                                     ; $5ae1: $06 $35
    ld b, $55                                     ; $5ae3: $06 $55
    ld b, $75                                     ; $5ae5: $06 $75
    sub [hl]                                      ; $5ae7: $96
    and l                                         ; $5ae8: $a5
    sub [hl]                                      ; $5ae9: $96
    dec b                                         ; $5aea: $05
    halt                                          ; $5aeb: $76
    dec b                                         ; $5aec: $05
    ld d, [hl]                                    ; $5aed: $56
    dec b                                         ; $5aee: $05
    ld [hl], $e3                                  ; $5aef: $36 $e3
    db $d3                                        ; $5af1: $d3
    and l                                         ; $5af2: $a5
    reti                                          ; $5af3: $d9


    and [hl]                                      ; $5af4: $a6
    reti                                          ; $5af5: $d9


    and l                                         ; $5af6: $a5
    reti                                          ; $5af7: $d9


    and [hl]                                      ; $5af8: $a6
    reti                                          ; $5af9: $d9


    and l                                         ; $5afa: $a5
    reti                                          ; $5afb: $d9


    and [hl]                                      ; $5afc: $a6
    push bc                                       ; $5afd: $c5
    reti                                          ; $5afe: $d9


    add $d9                                       ; $5aff: $c6 $d9
    push bc                                       ; $5b01: $c5
    reti                                          ; $5b02: $d9


    add $d9                                       ; $5b03: $c6 $d9
    push bc                                       ; $5b05: $c5
    reti                                          ; $5b06: $d9


    add $d7                                       ; $5b07: $c6 $d7
    dec d                                         ; $5b09: $15
    reti                                          ; $5b0a: $d9


    ld d, $d9                                     ; $5b0b: $16 $d9
    dec d                                         ; $5b0d: $15
    reti                                          ; $5b0e: $d9


    ld d, $15                                     ; $5b0f: $16 $15
    ld [hl], $55                                  ; $5b11: $36 $55
    reti                                          ; $5b13: $d9


    ld d, [hl]                                    ; $5b14: $56
    reti                                          ; $5b15: $d9


    ld d, l                                       ; $5b16: $55
    reti                                          ; $5b17: $d9


    ld d, [hl]                                    ; $5b18: $56
    reti                                          ; $5b19: $d9


    ld d, l                                       ; $5b1a: $55
    reti                                          ; $5b1b: $d9


    ld d, [hl]                                    ; $5b1c: $56
    reti                                          ; $5b1d: $d9


    ld d, l                                       ; $5b1e: $55
    reti                                          ; $5b1f: $d9


    ld d, [hl]                                    ; $5b20: $56
    reti                                          ; $5b21: $d9


    ld d, l                                       ; $5b22: $55
    reti                                          ; $5b23: $d9


    ld d, [hl]                                    ; $5b24: $56
    reti                                          ; $5b25: $d9


    ld d, l                                       ; $5b26: $55
    reti                                          ; $5b27: $d9


    ld d, [hl]                                    ; $5b28: $56
    reti                                          ; $5b29: $d9


    ld d, l                                       ; $5b2a: $55
    reti                                          ; $5b2b: $d9


    ld d, [hl]                                    ; $5b2c: $56
    dec [hl]                                      ; $5b2d: $35
    reti                                          ; $5b2e: $d9


    ld [hl], $d9                                  ; $5b2f: $36 $d9
    dec [hl]                                      ; $5b31: $35
    reti                                          ; $5b32: $d9


    ld [hl], $d9                                  ; $5b33: $36 $d9
    dec [hl]                                      ; $5b35: $35
    reti                                          ; $5b36: $d9


    ld [hl], $55                                  ; $5b37: $36 $55
    reti                                          ; $5b39: $d9


    ld d, [hl]                                    ; $5b3a: $56
    reti                                          ; $5b3b: $d9


    ld d, l                                       ; $5b3c: $55
    reti                                          ; $5b3d: $d9


    ld d, [hl]                                    ; $5b3e: $56
    reti                                          ; $5b3f: $d9


    ld d, l                                       ; $5b40: $55
    reti                                          ; $5b41: $d9


    ld d, [hl]                                    ; $5b42: $56
    db $e3                                        ; $5b43: $e3
    ret nc                                        ; $5b44: $d0

    ld bc, $0eea                                  ; $5b45: $01 $ea $0e
    db $eb                                        ; $5b48: $eb
    inc e                                         ; $5b49: $1c
    call c, $d311                                 ; $5b4a: $dc $11 $d3
    rst $18                                       ; $5b4d: $df
    ld [bc], a                                    ; $5b4e: $02
    push hl                                       ; $5b4f: $e5
    ld b, b                                       ; $5b50: $40
    xor $44                                       ; $5b51: $ee $44
    add sp, $07                                   ; $5b53: $e8 $07
    and $90                                       ; $5b55: $e6 $90
    db $e4                                        ; $5b57: $e4
    nop                                           ; $5b58: $00
    db $d3                                        ; $5b59: $d3
    ld d, l                                       ; $5b5a: $55
    inc c                                         ; $5b5b: $0c
    ld [hl], $0c                                  ; $5b5c: $36 $0c
    inc l                                         ; $5b5e: $2c
    ret c                                         ; $5b5f: $d8

    push bc                                       ; $5b60: $c5
    inc c                                         ; $5b61: $0c
    rst $10                                       ; $5b62: $d7
    ld h, $0c                                     ; $5b63: $26 $0c
    inc a                                         ; $5b65: $3c
    ld d, l                                       ; $5b66: $55
    inc c                                         ; $5b67: $0c
    ld [hl], $0c                                  ; $5b68: $36 $0c
    inc l                                         ; $5b6a: $2c
    ret c                                         ; $5b6b: $d8

    push bc                                       ; $5b6c: $c5
    inc c                                         ; $5b6d: $0c
    rst $10                                       ; $5b6e: $d7
    ld h, $0c                                     ; $5b6f: $26 $0c
    ret c                                         ; $5b71: $d8

    xor h                                         ; $5b72: $ac
    rst $10                                       ; $5b73: $d7
    ld d, l                                       ; $5b74: $55
    inc c                                         ; $5b75: $0c
    ld [hl], $0c                                  ; $5b76: $36 $0c
    ld e, h                                       ; $5b78: $5c
    ld [hl], l                                    ; $5b79: $75
    inc c                                         ; $5b7a: $0c
    sub [hl]                                      ; $5b7b: $96
    inc c                                         ; $5b7c: $0c
    xor h                                         ; $5b7d: $ac
    adc h                                         ; $5b7e: $8c
    reti                                          ; $5b7f: $d9


    adc h                                         ; $5b80: $8c
    reti                                          ; $5b81: $d9


    adc h                                         ; $5b82: $8c
    reti                                          ; $5b83: $d9


    adc h                                         ; $5b84: $8c
    rst $10                                       ; $5b85: $d7
    dec [hl]                                      ; $5b86: $35
    ld [hl], $35                                  ; $5b87: $36 $35
    ret c                                         ; $5b89: $d8

    and [hl]                                      ; $5b8a: $a6
    ld [hl], l                                    ; $5b8b: $75
    ld [hl], $35                                  ; $5b8c: $36 $35
    ret c                                         ; $5b8e: $d8

    and [hl]                                      ; $5b8f: $a6
    and $60                                       ; $5b90: $e6 $60
    rst $10                                       ; $5b92: $d7
    push bc                                       ; $5b93: $c5
    ld b, $c5                                     ; $5b94: $06 $c5
    ld b, $a5                                     ; $5b96: $06 $a5
    ld b, $95                                     ; $5b98: $06 $95
    and [hl]                                      ; $5b9a: $a6
    push bc                                       ; $5b9b: $c5
    rst $10                                       ; $5b9c: $d7
    ld h, $05                                     ; $5b9d: $26 $05
    ld h, $05                                     ; $5b9f: $26 $05
    ret c                                         ; $5ba1: $d8

    add $05                                       ; $5ba2: $c6 $05
    and [hl]                                      ; $5ba4: $a6
    sub l                                         ; $5ba5: $95
    and [hl]                                      ; $5ba6: $a6
    ld d, l                                       ; $5ba7: $55
    ld b, $55                                     ; $5ba8: $06 $55
    ld b, $95                                     ; $5baa: $06 $95
    ld b, $95                                     ; $5bac: $06 $95
    ret c                                         ; $5bae: $d8

    add $05                                       ; $5baf: $c6 $05
    add $d9                                       ; $5bb1: $c6 $d9
    call z, $ccd9                                 ; $5bb3: $cc $d9 $cc
    rst $10                                       ; $5bb6: $d7
    rst $10                                       ; $5bb7: $d7
    dec h                                         ; $5bb8: $25
    ld b, $d8                                     ; $5bb9: $06 $d8
    push bc                                       ; $5bbb: $c5
    ld b, $d7                                     ; $5bbc: $06 $d7
    dec h                                         ; $5bbe: $25
    ld b, $35                                     ; $5bbf: $06 $35
    ld d, [hl]                                    ; $5bc1: $56
    ld [hl], l                                    ; $5bc2: $75
    ld d, [hl]                                    ; $5bc3: $56
    dec b                                         ; $5bc4: $05
    ld [hl], $05                                  ; $5bc5: $36 $05
    ld h, $05                                     ; $5bc7: $26 $05
    ret c                                         ; $5bc9: $d8

    add $e6                                       ; $5bca: $c6 $e6
    sub b                                         ; $5bcc: $90
    rst $10                                       ; $5bcd: $d7
    dec d                                         ; $5bce: $15
    reti                                          ; $5bcf: $d9


    ld d, $d9                                     ; $5bd0: $16 $d9
    dec d                                         ; $5bd2: $15
    ret c                                         ; $5bd3: $d8

    add [hl]                                      ; $5bd4: $86
    reti                                          ; $5bd5: $d9


    add l                                         ; $5bd6: $85
    reti                                          ; $5bd7: $d9


    add [hl]                                      ; $5bd8: $86
    rst $10                                       ; $5bd9: $d7
    ld d, l                                       ; $5bda: $55
    reti                                          ; $5bdb: $d9


    ld d, [hl]                                    ; $5bdc: $56
    dec [hl]                                      ; $5bdd: $35
    reti                                          ; $5bde: $d9


    ld [hl], $d9                                  ; $5bdf: $36 $d9
    dec [hl]                                      ; $5be1: $35
    ld d, [hl]                                    ; $5be2: $56
    reti                                          ; $5be3: $d9


    ld d, l                                       ; $5be4: $55
    reti                                          ; $5be5: $d9


    ld d, [hl]                                    ; $5be6: $56
    ld [hl], l                                    ; $5be7: $75
    reti                                          ; $5be8: $d9


    halt                                          ; $5be9: $76
    inc c                                         ; $5bea: $0c
    inc b                                         ; $5beb: $04
    and $70                                       ; $5bec: $e6 $70
    db $e4                                        ; $5bee: $e4
    rst $38                                       ; $5bef: $ff
    ld [c], a                                     ; $5bf0: $e2
    pop af                                        ; $5bf1: $f1
    ld e, d                                       ; $5bf2: $5a
    call nc, $d975                                ; $5bf3: $d4 $75 $d9
    ld [hl], c                                    ; $5bf6: $71
    and $90                                       ; $5bf7: $e6 $90
    db $e4                                        ; $5bf9: $e4
    nop                                           ; $5bfa: $00
    add sp, $05                                   ; $5bfb: $e8 $05
    dec d                                         ; $5bfd: $15
    ld b, $d8                                     ; $5bfe: $06 $d8
    and l                                         ; $5c00: $a5
    ld b, $d7                                     ; $5c01: $06 $d7
    ld h, l                                       ; $5c03: $65
    ret c                                         ; $5c04: $d8

    and [hl]                                      ; $5c05: $a6
    dec b                                         ; $5c06: $05
    rst $10                                       ; $5c07: $d7
    ld d, $35                                     ; $5c08: $16 $35
    ld b, $d8                                     ; $5c0a: $06 $d8
    push bc                                       ; $5c0c: $c5
    ld b, $d7                                     ; $5c0d: $06 $d7
    add l                                         ; $5c0f: $85
    ret c                                         ; $5c10: $d8

    add $05                                       ; $5c11: $c6 $05
    rst $10                                       ; $5c13: $d7
    ld [hl], $e8                                  ; $5c14: $36 $e8
    rlca                                          ; $5c16: $07
    inc c                                         ; $5c17: $0c
    inc b                                         ; $5c18: $04
    and $70                                       ; $5c19: $e6 $70
    db $e4                                        ; $5c1b: $e4
    rst $38                                       ; $5c1c: $ff
    ld [c], a                                     ; $5c1d: $e2
    pop af                                        ; $5c1e: $f1
    ld e, d                                       ; $5c1f: $5a
    call nc, $d975                                ; $5c20: $d4 $75 $d9
    halt                                          ; $5c23: $76
    reti                                          ; $5c24: $d9


    ld [hl], l                                    ; $5c25: $75
    reti                                          ; $5c26: $d9


    halt                                          ; $5c27: $76
    ret c                                         ; $5c28: $d8

    ld d, l                                       ; $5c29: $55
    reti                                          ; $5c2a: $d9


    ld d, [hl]                                    ; $5c2b: $56
    reti                                          ; $5c2c: $d9


    ld d, l                                       ; $5c2d: $55
    ld b, [hl]                                    ; $5c2e: $46
    reti                                          ; $5c2f: $d9


    ld b, l                                       ; $5c30: $45
    reti                                          ; $5c31: $d9


    ld b, [hl]                                    ; $5c32: $46
    dec [hl]                                      ; $5c33: $35
    reti                                          ; $5c34: $d9


    ld [hl], $d9                                  ; $5c35: $36 $d9
    dec [hl]                                      ; $5c37: $35
    reti                                          ; $5c38: $d9


    ld [hl], $d8                                  ; $5c39: $36 $d8
    call z, $e0a7                                 ; $5c3b: $cc $a7 $e0
    db $e4                                        ; $5c3e: $e4
    nop                                           ; $5c3f: $00
    add sp, $05                                   ; $5c40: $e8 $05
    and $90                                       ; $5c42: $e6 $90
    push hl                                       ; $5c44: $e5
    nop                                           ; $5c45: $00
    xor $22                                       ; $5c46: $ee $22
    jp nc, $c655                                  ; $5c48: $d2 $55 $c6

    rst $10                                       ; $5c4b: $d7
    ld d, l                                       ; $5c4c: $55
    add [hl]                                      ; $5c4d: $86
    push bc                                       ; $5c4e: $c5
    add [hl]                                      ; $5c4f: $86
    ld d, l                                       ; $5c50: $55
    ret c                                         ; $5c51: $d8

    add $55                                       ; $5c52: $c6 $55
    add [hl]                                      ; $5c54: $86
    push bc                                       ; $5c55: $c5
    rst $10                                       ; $5c56: $d7
    ld d, [hl]                                    ; $5c57: $56
    add l                                         ; $5c58: $85
    ld d, [hl]                                    ; $5c59: $56
    push bc                                       ; $5c5a: $c5
    ld d, [hl]                                    ; $5c5b: $56
    ret c                                         ; $5c5c: $d8

    dec d                                         ; $5c5d: $15
    add [hl]                                      ; $5c5e: $86
    rst $10                                       ; $5c5f: $d7
    dec d                                         ; $5c60: $15
    ld d, [hl]                                    ; $5c61: $56
    add l                                         ; $5c62: $85
    ld d, $55                                     ; $5c63: $16 $55
    add [hl]                                      ; $5c65: $86
    ret c                                         ; $5c66: $d8

    dec [hl]                                      ; $5c67: $35
    and [hl]                                      ; $5c68: $a6
    rst $10                                       ; $5c69: $d7
    dec [hl]                                      ; $5c6a: $35
    halt                                          ; $5c6b: $76
    and l                                         ; $5c6c: $a5
    ld [hl], $75                                  ; $5c6d: $36 $75
    and [hl]                                      ; $5c6f: $a6
    ret c                                         ; $5c70: $d8

    ld d, l                                       ; $5c71: $55
    add [hl]                                      ; $5c72: $86
    push bc                                       ; $5c73: $c5
    rst $10                                       ; $5c74: $d7
    ld d, [hl]                                    ; $5c75: $56
    add l                                         ; $5c76: $85
    ret c                                         ; $5c77: $d8

    add $d7                                       ; $5c78: $c6 $d7
    ld d, l                                       ; $5c7a: $55
    add [hl]                                      ; $5c7b: $86
    add l                                         ; $5c7c: $85
    add $55                                       ; $5c7d: $c6 $55
    add [hl]                                      ; $5c7f: $86
    ret c                                         ; $5c80: $d8

    push bc                                       ; $5c81: $c5
    rst $10                                       ; $5c82: $d7
    ld d, [hl]                                    ; $5c83: $56
    add l                                         ; $5c84: $85
    add $d8                                       ; $5c85: $c6 $d8
    and l                                         ; $5c87: $a5
    rst $10                                       ; $5c88: $d7
    ld d, $55                                     ; $5c89: $16 $55
    and [hl]                                      ; $5c8b: $a6
    ld d, l                                       ; $5c8c: $55
    ld d, $d8                                     ; $5c8d: $16 $d8
    and l                                         ; $5c8f: $a5
    rst $10                                       ; $5c90: $d7
    ld d, $d8                                     ; $5c91: $16 $d8
    push bc                                       ; $5c93: $c5
    rst $10                                       ; $5c94: $d7
    ld d, [hl]                                    ; $5c95: $56
    ld [hl], l                                    ; $5c96: $75
    add $75                                       ; $5c97: $c6 $75
    ld b, [hl]                                    ; $5c99: $46
    ret c                                         ; $5c9a: $d8

    push bc                                       ; $5c9b: $c5
    rst $10                                       ; $5c9c: $d7
    halt                                          ; $5c9d: $76
    ret c                                         ; $5c9e: $d8

    ld d, l                                       ; $5c9f: $55
    add [hl]                                      ; $5ca0: $86
    push bc                                       ; $5ca1: $c5
    rst $10                                       ; $5ca2: $d7
    ld d, [hl]                                    ; $5ca3: $56
    add l                                         ; $5ca4: $85
    ret c                                         ; $5ca5: $d8

    add $d7                                       ; $5ca6: $c6 $d7
    ld d, l                                       ; $5ca8: $55
    add [hl]                                      ; $5ca9: $86
    push bc                                       ; $5caa: $c5
    add [hl]                                      ; $5cab: $86
    ld d, l                                       ; $5cac: $55
    ret c                                         ; $5cad: $d8

    add $d7                                       ; $5cae: $c6 $d7
    add l                                         ; $5cb0: $85
    ld d, [hl]                                    ; $5cb1: $56
    ret c                                         ; $5cb2: $d8

    push bc                                       ; $5cb3: $c5
    add [hl]                                      ; $5cb4: $86
    dec d                                         ; $5cb5: $15
    add [hl]                                      ; $5cb6: $86
    rst $10                                       ; $5cb7: $d7
    dec d                                         ; $5cb8: $15
    ld d, [hl]                                    ; $5cb9: $56
    add l                                         ; $5cba: $85
    ld d, $55                                     ; $5cbb: $16 $55
    add [hl]                                      ; $5cbd: $86
    dec [hl]                                      ; $5cbe: $35
    halt                                          ; $5cbf: $76
    and l                                         ; $5cc0: $a5
    halt                                          ; $5cc1: $76
    dec [hl]                                      ; $5cc2: $35
    ret c                                         ; $5cc3: $d8

    and [hl]                                      ; $5cc4: $a6
    ld [hl], l                                    ; $5cc5: $75
    ld [hl], $d7                                  ; $5cc6: $36 $d7
    dec d                                         ; $5cc8: $15
    ld d, [hl]                                    ; $5cc9: $56
    add l                                         ; $5cca: $85
    rst $10                                       ; $5ccb: $d7
    ld d, $d8                                     ; $5ccc: $16 $d8
    add l                                         ; $5cce: $85
    ld d, [hl]                                    ; $5ccf: $56
    dec d                                         ; $5cd0: $15
    ld d, [hl]                                    ; $5cd1: $56
    add l                                         ; $5cd2: $85
    rst $10                                       ; $5cd3: $d7
    ld d, $d8                                     ; $5cd4: $16 $d8
    add l                                         ; $5cd6: $85
    ld d, [hl]                                    ; $5cd7: $56
    dec d                                         ; $5cd8: $15
    ld d, [hl]                                    ; $5cd9: $56
    add l                                         ; $5cda: $85
    rst $10                                       ; $5cdb: $d7
    ld d, $d8                                     ; $5cdc: $16 $d8
    dec [hl]                                      ; $5cde: $35
    halt                                          ; $5cdf: $76
    and l                                         ; $5ce0: $a5
    rst $10                                       ; $5ce1: $d7
    ld [hl], $d8                                  ; $5ce2: $36 $d8
    and l                                         ; $5ce4: $a5
    halt                                          ; $5ce5: $76
    dec [hl]                                      ; $5ce6: $35
    halt                                          ; $5ce7: $76
    and l                                         ; $5ce8: $a5
    rst $10                                       ; $5ce9: $d7
    ld [hl], $d8                                  ; $5cea: $36 $d8
    and l                                         ; $5cec: $a5
    halt                                          ; $5ced: $76
    dec [hl]                                      ; $5cee: $35
    halt                                          ; $5cef: $76
    and l                                         ; $5cf0: $a5
    rst $10                                       ; $5cf1: $d7
    ld [hl], $de                                  ; $5cf2: $36 $de
    rst $38                                       ; $5cf4: $ff
    ret nc                                        ; $5cf5: $d0

    ld bc, $01e7                                  ; $5cf6: $01 $e7 $01
    and $20                                       ; $5cf9: $e6 $20
    jp hl                                         ; $5cfb: $e9


    nop                                           ; $5cfc: $00
    call c, $e811                                 ; $5cfd: $dc $11 $e8
    rlca                                          ; $5d00: $07
    pop de                                        ; $5d01: $d1
    rst $18                                       ; $5d02: $df
    ld [bc], a                                    ; $5d03: $02
    rst $18                                       ; $5d04: $df
    ld [bc], a                                    ; $5d05: $02
    ld [c], a                                     ; $5d06: $e2
    xor e                                         ; $5d07: $ab
    ld e, l                                       ; $5d08: $5d
    ld [c], a                                     ; $5d09: $e2
    xor e                                         ; $5d0a: $ab
    ld e, l                                       ; $5d0b: $5d
    ld [c], a                                     ; $5d0c: $e2
    xor e                                         ; $5d0d: $ab
    ld e, l                                       ; $5d0e: $5d
    pop de                                        ; $5d0f: $d1
    inc e                                         ; $5d10: $1c
    rst $10                                       ; $5d11: $d7
    dec d                                         ; $5d12: $15
    ld d, $d8                                     ; $5d13: $16 $d8
    inc e                                         ; $5d15: $1c
    rst $10                                       ; $5d16: $d7
    dec d                                         ; $5d17: $15
    ld d, $d8                                     ; $5d18: $16 $d8
    inc a                                         ; $5d1a: $3c
    rst $10                                       ; $5d1b: $d7
    dec [hl]                                      ; $5d1c: $35
    ld [hl], $d8                                  ; $5d1d: $36 $d8
    dec [hl]                                      ; $5d1f: $35
    and [hl]                                      ; $5d20: $a6
    rst $10                                       ; $5d21: $d7
    dec [hl]                                      ; $5d22: $35
    and [hl]                                      ; $5d23: $a6
    ldh [$e2], a                                  ; $5d24: $e0 $e2
    cp c                                          ; $5d26: $b9
    ld e, l                                       ; $5d27: $5d
    pop de                                        ; $5d28: $d1
    ld l, h                                       ; $5d29: $6c
    rst $10                                       ; $5d2a: $d7
    ld l, h                                       ; $5d2b: $6c
    ret c                                         ; $5d2c: $d8

    ld l, h                                       ; $5d2d: $6c
    rst $10                                       ; $5d2e: $d7
    ld l, h                                       ; $5d2f: $6c
    ret c                                         ; $5d30: $d8

    adc h                                         ; $5d31: $8c
    rst $10                                       ; $5d32: $d7
    adc h                                         ; $5d33: $8c
    ret c                                         ; $5d34: $d8

    adc h                                         ; $5d35: $8c
    rst $10                                       ; $5d36: $d7
    adc h                                         ; $5d37: $8c
    ret c                                         ; $5d38: $d8

    ld [c], a                                     ; $5d39: $e2
    cp c                                          ; $5d3a: $b9
    ld e, l                                       ; $5d3b: $5d
    jp nc, $d95c                                  ; $5d3c: $d2 $5c $d9

    ld d, l                                       ; $5d3f: $55
    ld b, [hl]                                    ; $5d40: $46
    reti                                          ; $5d41: $d9


    ld c, h                                       ; $5d42: $4c
    inc a                                         ; $5d43: $3c
    reti                                          ; $5d44: $d9


    inc a                                         ; $5d45: $3c
    ret c                                         ; $5d46: $d8

    call z, $8cac                                 ; $5d47: $cc $ac $8c
    ldh [$e2], a                                  ; $5d4a: $e0 $e2
    db $e3                                        ; $5d4c: $e3
    ld e, l                                       ; $5d4d: $5d
    pop de                                        ; $5d4e: $d1
    inc e                                         ; $5d4f: $1c
    rst $10                                       ; $5d50: $d7
    dec d                                         ; $5d51: $15
    ld d, $d8                                     ; $5d52: $16 $d8
    inc e                                         ; $5d54: $1c
    rst $10                                       ; $5d55: $d7
    dec d                                         ; $5d56: $15
    ld d, $d8                                     ; $5d57: $16 $d8
    inc a                                         ; $5d59: $3c
    rst $10                                       ; $5d5a: $d7
    dec [hl]                                      ; $5d5b: $35
    ld [hl], $d8                                  ; $5d5c: $36 $d8
    inc a                                         ; $5d5e: $3c
    rst $10                                       ; $5d5f: $d7
    dec [hl]                                      ; $5d60: $35
    ld [hl], $d8                                  ; $5d61: $36 $d8
    ld [c], a                                     ; $5d63: $e2
    db $e3                                        ; $5d64: $e3
    ld e, l                                       ; $5d65: $5d
    pop de                                        ; $5d66: $d1
    xor h                                         ; $5d67: $ac
    rst $10                                       ; $5d68: $d7
    and l                                         ; $5d69: $a5
    and [hl]                                      ; $5d6a: $a6
    ret c                                         ; $5d6b: $d8

    xor h                                         ; $5d6c: $ac
    rst $10                                       ; $5d6d: $d7
    and l                                         ; $5d6e: $a5
    and [hl]                                      ; $5d6f: $a6
    ret c                                         ; $5d70: $d8

    call z, $c5d7                                 ; $5d71: $cc $d7 $c5
    add $d8                                       ; $5d74: $c6 $d8
    call z, $c5d7                                 ; $5d76: $cc $d7 $c5
    add $d8                                       ; $5d79: $c6 $d8
    ld [c], a                                     ; $5d7b: $e2
    db $e3                                        ; $5d7c: $e3
    ld e, l                                       ; $5d7d: $5d
    pop de                                        ; $5d7e: $d1
    inc e                                         ; $5d7f: $1c
    rst $10                                       ; $5d80: $d7
    dec d                                         ; $5d81: $15
    ld d, $d8                                     ; $5d82: $16 $d8
    inc e                                         ; $5d84: $1c
    rst $10                                       ; $5d85: $d7
    dec d                                         ; $5d86: $15
    ld d, $d8                                     ; $5d87: $16 $d8
    inc a                                         ; $5d89: $3c
    rst $10                                       ; $5d8a: $d7
    dec [hl]                                      ; $5d8b: $35
    ld [hl], $d8                                  ; $5d8c: $36 $d8
    inc a                                         ; $5d8e: $3c
    rst $10                                       ; $5d8f: $d7
    dec [hl]                                      ; $5d90: $35
    ld [hl], $d8                                  ; $5d91: $36 $d8
    rst $18                                       ; $5d93: $df
    ld [bc], a                                    ; $5d94: $02
    inc e                                         ; $5d95: $1c
    rst $10                                       ; $5d96: $d7
    inc e                                         ; $5d97: $1c
    ret c                                         ; $5d98: $d8

    inc e                                         ; $5d99: $1c
    rst $10                                       ; $5d9a: $d7
    inc e                                         ; $5d9b: $1c
    ret c                                         ; $5d9c: $d8

    ldh [$df], a                                  ; $5d9d: $e0 $df
    ld [bc], a                                    ; $5d9f: $02
    inc a                                         ; $5da0: $3c
    rst $10                                       ; $5da1: $d7
    inc a                                         ; $5da2: $3c
    ret c                                         ; $5da3: $d8

    inc a                                         ; $5da4: $3c
    rst $10                                       ; $5da5: $d7
    inc a                                         ; $5da6: $3c
    ret c                                         ; $5da7: $d8

    ldh [$de], a                                  ; $5da8: $e0 $de
    rst $38                                       ; $5daa: $ff
    pop de                                        ; $5dab: $d1
    ld e, h                                       ; $5dac: $5c
    ld e, h                                       ; $5dad: $5c
    adc h                                         ; $5dae: $8c
    ld d, l                                       ; $5daf: $55
    and [hl]                                      ; $5db0: $a6
    reti                                          ; $5db1: $d9


    and l                                         ; $5db2: $a5
    ld d, [hl]                                    ; $5db3: $56
    cp h                                          ; $5db4: $bc
    call z, Call_000_3cd7                         ; $5db5: $cc $d7 $3c
    db $e3                                        ; $5db8: $e3
    pop de                                        ; $5db9: $d1
    xor h                                         ; $5dba: $ac
    xor h                                         ; $5dbb: $ac
    add l                                         ; $5dbc: $85
    xor h                                         ; $5dbd: $ac
    and [hl]                                      ; $5dbe: $a6
    reti                                          ; $5dbf: $d9


    and l                                         ; $5dc0: $a5
    and [hl]                                      ; $5dc1: $a6
    adc h                                         ; $5dc2: $8c
    ld e, h                                       ; $5dc3: $5c
    adc h                                         ; $5dc4: $8c
    rst $10                                       ; $5dc5: $d7
    inc e                                         ; $5dc6: $1c
    inc e                                         ; $5dc7: $1c
    ret c                                         ; $5dc8: $d8

    or l                                          ; $5dc9: $b5
    rst $10                                       ; $5dca: $d7
    inc e                                         ; $5dcb: $1c
    ld d, $d9                                     ; $5dcc: $16 $d9
    dec d                                         ; $5dce: $15
    ld d, $d8                                     ; $5dcf: $16 $d8
    cp h                                          ; $5dd1: $bc
    adc h                                         ; $5dd2: $8c
    cp h                                          ; $5dd3: $bc
    rst $10                                       ; $5dd4: $d7
    inc a                                         ; $5dd5: $3c
    inc a                                         ; $5dd6: $3c
    dec d                                         ; $5dd7: $15
    inc a                                         ; $5dd8: $3c
    ld [hl], $d9                                  ; $5dd9: $36 $d9
    dec [hl]                                      ; $5ddb: $35
    ld [hl], $1c                                  ; $5ddc: $36 $1c
    ret c                                         ; $5dde: $d8

    xor h                                         ; $5ddf: $ac
    rst $10                                       ; $5de0: $d7
    inc e                                         ; $5de1: $1c
    db $e3                                        ; $5de2: $e3
    pop de                                        ; $5de3: $d1
    rst $18                                       ; $5de4: $df
    ld [bc], a                                    ; $5de5: $02
    ld e, h                                       ; $5de6: $5c
    rst $10                                       ; $5de7: $d7
    ld d, l                                       ; $5de8: $55
    ld d, [hl]                                    ; $5de9: $56
    ret c                                         ; $5dea: $d8

    ld e, h                                       ; $5deb: $5c
    rst $10                                       ; $5dec: $d7
    ld d, l                                       ; $5ded: $55
    ld d, [hl]                                    ; $5dee: $56
    ret c                                         ; $5def: $d8

    ldh [$e3], a                                  ; $5df0: $e0 $e3
    ret nc                                        ; $5df2: $d0

    ld bc, $dfd1                                  ; $5df3: $01 $d1 $df
    ld [bc], a                                    ; $5df6: $02
    ld [c], a                                     ; $5df7: $e2
    ld h, d                                       ; $5df8: $62
    ld e, [hl]                                    ; $5df9: $5e
    ld [c], a                                     ; $5dfa: $e2
    ld [hl], c                                    ; $5dfb: $71
    ld e, [hl]                                    ; $5dfc: $5e
    ld [c], a                                     ; $5dfd: $e2
    ld a, a                                       ; $5dfe: $7f
    ld e, [hl]                                    ; $5dff: $5e
    ld [c], a                                     ; $5e00: $e2
    adc h                                         ; $5e01: $8c
    ld e, [hl]                                    ; $5e02: $5e
    ld [c], a                                     ; $5e03: $e2
    ld h, d                                       ; $5e04: $62
    ld e, [hl]                                    ; $5e05: $5e
    ld [c], a                                     ; $5e06: $e2
    ld [hl], c                                    ; $5e07: $71
    ld e, [hl]                                    ; $5e08: $5e
    ld [c], a                                     ; $5e09: $e2
    ld a, a                                       ; $5e0a: $7f
    ld e, [hl]                                    ; $5e0b: $5e
    ld [c], a                                     ; $5e0c: $e2
    adc h                                         ; $5e0d: $8c
    ld e, [hl]                                    ; $5e0e: $5e
    ld [c], a                                     ; $5e0f: $e2
    ld a, a                                       ; $5e10: $7f
    ld e, [hl]                                    ; $5e11: $5e
    ld [c], a                                     ; $5e12: $e2
    ld [hl], c                                    ; $5e13: $71
    ld e, [hl]                                    ; $5e14: $5e
    ld [c], a                                     ; $5e15: $e2
    sbc d                                         ; $5e16: $9a
    ld e, [hl]                                    ; $5e17: $5e
    ld [c], a                                     ; $5e18: $e2
    and a                                         ; $5e19: $a7
    ld e, [hl]                                    ; $5e1a: $5e
    ld [c], a                                     ; $5e1b: $e2
    ld a, a                                       ; $5e1c: $7f
    ld e, [hl]                                    ; $5e1d: $5e
    ld [c], a                                     ; $5e1e: $e2
    ld [hl], c                                    ; $5e1f: $71
    ld e, [hl]                                    ; $5e20: $5e
    ld [c], a                                     ; $5e21: $e2
    sbc d                                         ; $5e22: $9a
    ld e, [hl]                                    ; $5e23: $5e
    inc a                                         ; $5e24: $3c
    dec d                                         ; $5e25: $15
    ld [hl], $05                                  ; $5e26: $36 $05
    ld d, $d0                                     ; $5e28: $16 $d0
    ld a, [de]                                    ; $5e2a: $1a
    rst $10                                       ; $5e2b: $d7
    sub b                                         ; $5e2c: $90
    ret c                                         ; $5e2d: $d8

    ret nc                                        ; $5e2e: $d0

    ld bc, $d73c                                  ; $5e2f: $01 $3c $d7
    ld d, l                                       ; $5e32: $55
    ld d, [hl]                                    ; $5e33: $56
    ret c                                         ; $5e34: $d8

    or l                                          ; $5e35: $b5
    and [hl]                                      ; $5e36: $a6
    ldh [$e2], a                                  ; $5e37: $e0 $e2
    or h                                          ; $5e39: $b4
    ld e, [hl]                                    ; $5e3a: $5e
    ld [c], a                                     ; $5e3b: $e2
    ret                                           ; $5e3c: $c9


    ld e, [hl]                                    ; $5e3d: $5e
    ld [c], a                                     ; $5e3e: $e2
    or h                                          ; $5e3f: $b4
    ld e, [hl]                                    ; $5e40: $5e
    ld [c], a                                     ; $5e41: $e2
    ret                                           ; $5e42: $c9


    ld e, [hl]                                    ; $5e43: $5e
    ld [c], a                                     ; $5e44: $e2
    or h                                          ; $5e45: $b4
    ld e, [hl]                                    ; $5e46: $5e
    ld [c], a                                     ; $5e47: $e2
    ret                                           ; $5e48: $c9


    ld e, [hl]                                    ; $5e49: $5e
    ld [c], a                                     ; $5e4a: $e2
    or h                                          ; $5e4b: $b4
    ld e, [hl]                                    ; $5e4c: $5e
    inc e                                         ; $5e4d: $1c
    rst $10                                       ; $5e4e: $d7
    ld [hl], l                                    ; $5e4f: $75
    halt                                          ; $5e50: $76
    ret c                                         ; $5e51: $d8

    inc a                                         ; $5e52: $3c
    rst $10                                       ; $5e53: $d7
    ld [hl], l                                    ; $5e54: $75
    halt                                          ; $5e55: $76
    ret c                                         ; $5e56: $d8

    inc e                                         ; $5e57: $1c
    rst $10                                       ; $5e58: $d7
    ld [hl], l                                    ; $5e59: $75
    ret c                                         ; $5e5a: $d8

    ld d, $35                                     ; $5e5b: $16 $35
    ld [hl], $35                                  ; $5e5d: $36 $35
    ld [hl], $de                                  ; $5e5f: $36 $de
    rst $38                                       ; $5e61: $ff
    rst $10                                       ; $5e62: $d7
    sub l                                         ; $5e63: $95
    ret c                                         ; $5e64: $d8

    ld d, [hl]                                    ; $5e65: $56
    inc e                                         ; $5e66: $1c
    inc a                                         ; $5e67: $3c
    dec d                                         ; $5e68: $15
    ld d, $05                                     ; $5e69: $16 $05
    ld d, $1c                                     ; $5e6b: $16 $1c
    inc a                                         ; $5e6d: $3c
    ld d, l                                       ; $5e6e: $55
    ld d, [hl]                                    ; $5e6f: $56
    db $e3                                        ; $5e70: $e3
    dec d                                         ; $5e71: $15
    ld d, [hl]                                    ; $5e72: $56
    inc e                                         ; $5e73: $1c
    inc a                                         ; $5e74: $3c
    dec d                                         ; $5e75: $15
    ld d, $05                                     ; $5e76: $16 $05
    ld d, $1c                                     ; $5e78: $16 $1c
    dec [hl]                                      ; $5e7a: $35
    ld d, [hl]                                    ; $5e7b: $56
    dec [hl]                                      ; $5e7c: $35
    ld d, [hl]                                    ; $5e7d: $56
    db $e3                                        ; $5e7e: $e3
    dec d                                         ; $5e7f: $15
    ld d, [hl]                                    ; $5e80: $56
    inc e                                         ; $5e81: $1c
    inc a                                         ; $5e82: $3c
    dec d                                         ; $5e83: $15
    ld d, $05                                     ; $5e84: $16 $05
    ld d, $1c                                     ; $5e86: $16 $1c
    inc a                                         ; $5e88: $3c
    ld d, l                                       ; $5e89: $55
    ld d, [hl]                                    ; $5e8a: $56
    db $e3                                        ; $5e8b: $e3
    dec d                                         ; $5e8c: $15
    ld d, [hl]                                    ; $5e8d: $56
    inc e                                         ; $5e8e: $1c
    inc a                                         ; $5e8f: $3c
    dec d                                         ; $5e90: $15
    ld d, $05                                     ; $5e91: $16 $05
    ld d, $1c                                     ; $5e93: $16 $1c
    dec [hl]                                      ; $5e95: $35
    ld [hl], $35                                  ; $5e96: $36 $35
    ld [hl], $e3                                  ; $5e98: $36 $e3
    dec d                                         ; $5e9a: $15
    ld d, [hl]                                    ; $5e9b: $56
    inc e                                         ; $5e9c: $1c
    inc a                                         ; $5e9d: $3c
    dec d                                         ; $5e9e: $15
    ld d, $05                                     ; $5e9f: $16 $05
    ld d, $1c                                     ; $5ea1: $16 $1c
    inc a                                         ; $5ea3: $3c
    dec [hl]                                      ; $5ea4: $35
    ld [hl], $e3                                  ; $5ea5: $36 $e3
    inc e                                         ; $5ea7: $1c
    ld d, l                                       ; $5ea8: $55
    ld d, [hl]                                    ; $5ea9: $56
    inc a                                         ; $5eaa: $3c
    ld d, l                                       ; $5eab: $55
    ld d, [hl]                                    ; $5eac: $56
    inc e                                         ; $5ead: $1c
    ld d, l                                       ; $5eae: $55
    ld d, $3c                                     ; $5eaf: $16 $3c
    ld d, l                                       ; $5eb1: $55
    ld d, [hl]                                    ; $5eb2: $56
    db $e3                                        ; $5eb3: $e3
    inc e                                         ; $5eb4: $1c
    rst $10                                       ; $5eb5: $d7
    halt                                          ; $5eb6: $76
    ld [hl], l                                    ; $5eb7: $75
    ret c                                         ; $5eb8: $d8

    inc a                                         ; $5eb9: $3c
    rst $10                                       ; $5eba: $d7
    halt                                          ; $5ebb: $76
    ld [hl], l                                    ; $5ebc: $75
    ret c                                         ; $5ebd: $d8

    inc e                                         ; $5ebe: $1c
    rst $10                                       ; $5ebf: $d7
    ld [hl], l                                    ; $5ec0: $75
    ret c                                         ; $5ec1: $d8

    ld d, $3c                                     ; $5ec2: $16 $3c
    rst $10                                       ; $5ec4: $d7
    halt                                          ; $5ec5: $76
    ld [hl], l                                    ; $5ec6: $75
    ret c                                         ; $5ec7: $d8

    db $e3                                        ; $5ec8: $e3
    inc e                                         ; $5ec9: $1c
    rst $10                                       ; $5eca: $d7
    halt                                          ; $5ecb: $76
    ld [hl], l                                    ; $5ecc: $75
    ret c                                         ; $5ecd: $d8

    inc a                                         ; $5ece: $3c
    rst $10                                       ; $5ecf: $d7
    halt                                          ; $5ed0: $76
    ld [hl], l                                    ; $5ed1: $75
    ret c                                         ; $5ed2: $d8

    inc e                                         ; $5ed3: $1c
    rst $10                                       ; $5ed4: $d7
    halt                                          ; $5ed5: $76
    ret c                                         ; $5ed6: $d8

    dec d                                         ; $5ed7: $15
    ld [hl], $d7                                  ; $5ed8: $36 $d7
    ld [hl], l                                    ; $5eda: $75
    ret c                                         ; $5edb: $d8

    ld [hl], $d7                                  ; $5edc: $36 $d7
    ld [hl], l                                    ; $5ede: $75
    ret c                                         ; $5edf: $d8

    db $e3                                        ; $5ee0: $e3
    ret nc                                        ; $5ee1: $d0

    add hl, bc                                    ; $5ee2: $09
    push hl                                       ; $5ee3: $e5
    ld b, b                                       ; $5ee4: $40
    and $b7                                       ; $5ee5: $e6 $b7
    call c, $ea11                                 ; $5ee7: $dc $11 $ea
    ld bc, $1eeb                                  ; $5eea: $01 $eb $1e
    add sp, $07                                   ; $5eed: $e8 $07
    xor $22                                       ; $5eef: $ee $22
    call nc, $5050                                ; $5ef1: $d4 $50 $50
    nop                                           ; $5ef4: $00
    ld d, b                                       ; $5ef5: $50
    nop                                           ; $5ef6: $00
    db $10                                        ; $5ef7: $10
    ld d, b                                       ; $5ef8: $50
    nop                                           ; $5ef9: $00
    add b                                         ; $5efa: $80
    ld [bc], a                                    ; $5efb: $02
    ret c                                         ; $5efc: $d8

    add b                                         ; $5efd: $80
    ld [bc], a                                    ; $5efe: $02
    db $dd                                        ; $5eff: $dd
    rst $18                                       ; $5f00: $df

jr_07d_5f01:
    ld [bc], a                                    ; $5f01: $02
    rst $18                                       ; $5f02: $df
    ld [bc], a                                    ; $5f03: $02
    call nc, $0110                                ; $5f04: $d4 $10 $01
    ret c                                         ; $5f07: $d8

    add b                                         ; $5f08: $80
    ld bc, $0050                                  ; $5f09: $01 $50 $00
    nop                                           ; $5f0c: $00
    and b                                         ; $5f0d: $a0
    nop                                           ; $5f0e: $00
    ret nz                                        ; $5f0f: $c0

    nop                                           ; $5f10: $00
    or b                                          ; $5f11: $b0
    and b                                         ; $5f12: $a0
    nop                                           ; $5f13: $00
    ret nc                                        ; $5f14: $d0

    ld bc, $0189                                  ; $5f15: $01 $89 $01
    rst $10                                       ; $5f18: $d7
    ld e, c                                       ; $5f19: $59
    ld bc, $0189                                  ; $5f1a: $01 $89 $01
    ret nc                                        ; $5f1d: $d0

    add hl, bc                                    ; $5f1e: $09
    and b                                         ; $5f1f: $a0
    nop                                           ; $5f20: $00
    ld h, b                                       ; $5f21: $60
    add b                                         ; $5f22: $80
    nop                                           ; $5f23: $00
    ld d, b                                       ; $5f24: $50
    nop                                           ; $5f25: $00
    db $10                                        ; $5f26: $10
    jr nc, jr_07d_5f01                            ; $5f27: $30 $d8

    ret nz                                        ; $5f29: $c0

    ld bc, $dfe0                                  ; $5f2a: $01 $e0 $df
    ld [bc], a                                    ; $5f2d: $02
    ld [c], a                                     ; $5f2e: $e2
    jp $d45f                                      ; $5f2f: $c3 $5f $d4


    ld bc, $7080                                  ; $5f32: $01 $80 $70
    ld h, b                                       ; $5f35: $60
    ld b, b                                       ; $5f36: $40
    nop                                           ; $5f37: $00
    ld d, b                                       ; $5f38: $50
    ld [$eb07], a                                 ; $5f39: $ea $07 $eb
    ld bc, $06e8                                  ; $5f3c: $01 $e8 $06
    nop                                           ; $5f3f: $00
    rst $10                                       ; $5f40: $d7
    stop                                          ; $5f41: $10 $00
    db $10                                        ; $5f43: $10
    db $10                                        ; $5f44: $10
    ld [bc], a                                    ; $5f45: $02
    ld [$eb01], a                                 ; $5f46: $ea $01 $eb
    ld e, $e8                                     ; $5f49: $1e $e8
    rlca                                          ; $5f4b: $07
    ld [c], a                                     ; $5f4c: $e2
    jp $d45f                                      ; $5f4d: $c3 $5f $d4


    ld bc, $0040                                  ; $5f50: $01 $40 $00
    nop                                           ; $5f53: $00
    jr nc, jr_07d_5f57                            ; $5f54: $30 $01

    db $10                                        ; $5f56: $10

jr_07d_5f57:
    ld b, $e0                                     ; $5f57: $06 $e0
    ld [c], a                                     ; $5f59: $e2
    ret c                                         ; $5f5a: $d8

    ld e, a                                       ; $5f5b: $5f
    call nc, $1010                                ; $5f5c: $d4 $10 $10
    nop                                           ; $5f5f: $00
    stop                                          ; $5f60: $10 $00
    db $10                                        ; $5f62: $10
    jr nc, jr_07d_5fb5                            ; $5f63: $30 $50

    rlca                                          ; $5f65: $07
    ld [c], a                                     ; $5f66: $e2
    ret c                                         ; $5f67: $d8

    ld e, a                                       ; $5f68: $5f
    call nc, $5050                                ; $5f69: $d4 $50 $50
    nop                                           ; $5f6c: $00
    ld d, b                                       ; $5f6d: $50
    nop                                           ; $5f6e: $00
    db $10                                        ; $5f6f: $10
    ld d, b                                       ; $5f70: $50
    nop                                           ; $5f71: $00
    add b                                         ; $5f72: $80
    ld b, $e0                                     ; $5f73: $06 $e0
    rst $18                                       ; $5f75: $df
    ld [bc], a                                    ; $5f76: $02
    call nc, $1050                                ; $5f77: $d4 $50 $10
    nop                                           ; $5f7a: $00
    ret c                                         ; $5f7b: $d8

    add b                                         ; $5f7c: $80
    ld bc, $0090                                  ; $5f7d: $01 $90 $00
    and b                                         ; $5f80: $a0
    rst $10                                       ; $5f81: $d7
    ld h, b                                       ; $5f82: $60
    nop                                           ; $5f83: $00
    ld h, b                                       ; $5f84: $60
    ret c                                         ; $5f85: $d8

    and b                                         ; $5f86: $a0
    ld [bc], a                                    ; $5f87: $02
    ret nz                                        ; $5f88: $c0

    rst $10                                       ; $5f89: $d7
    and b                                         ; $5f8a: $a0
    nop                                           ; $5f8b: $00
    and b                                         ; $5f8c: $a0
    ret nc                                        ; $5f8d: $d0

    ld bc, $01a9                                  ; $5f8e: $01 $a9 $01
    adc c                                         ; $5f91: $89
    ld bc, $0169                                  ; $5f92: $01 $69 $01
    ret nc                                        ; $5f95: $d0

    add hl, bc                                    ; $5f96: $09
    ld d, b                                       ; $5f97: $50
    stop                                          ; $5f98: $10 $00
    ret c                                         ; $5f9a: $d8

    and b                                         ; $5f9b: $a0
    add b                                         ; $5f9c: $80
    ld [bc], a                                    ; $5f9d: $02
    rst $10                                       ; $5f9e: $d7
    ld d, b                                       ; $5f9f: $50
    stop                                          ; $5fa0: $10 $00
    ret c                                         ; $5fa2: $d8

    add b                                         ; $5fa3: $80
    ld bc, $0090                                  ; $5fa4: $01 $90 $00
    and b                                         ; $5fa7: $a0
    rst $10                                       ; $5fa8: $d7
    ld h, b                                       ; $5fa9: $60
    nop                                           ; $5faa: $00
    ld h, b                                       ; $5fab: $60
    ret c                                         ; $5fac: $d8

    and b                                         ; $5fad: $a0
    ld [bc], a                                    ; $5fae: $02
    ret nz                                        ; $5faf: $c0

    rst $10                                       ; $5fb0: $d7
    ld h, b                                       ; $5fb1: $60
    nop                                           ; $5fb2: $00
    ld h, b                                       ; $5fb3: $60
    ret nc                                        ; $5fb4: $d0

jr_07d_5fb5:
    ld bc, $0169                                  ; $5fb5: $01 $69 $01
    ld e, c                                       ; $5fb8: $59
    ld bc, $0139                                  ; $5fb9: $01 $39 $01
    ret nc                                        ; $5fbc: $d0

    add hl, bc                                    ; $5fbd: $09
    db $10                                        ; $5fbe: $10
    ld b, $e0                                     ; $5fbf: $06 $e0
    sbc $ff                                       ; $5fc1: $de $ff
    call nc, $8001                                ; $5fc3: $d4 $01 $80
    ld [hl], b                                    ; $5fc6: $70
    ld h, b                                       ; $5fc7: $60
    ld b, b                                       ; $5fc8: $40
    nop                                           ; $5fc9: $00
    ld d, b                                       ; $5fca: $50
    nop                                           ; $5fcb: $00
    ret c                                         ; $5fcc: $d8

    sub b                                         ; $5fcd: $90
    and b                                         ; $5fce: $a0
    rst $10                                       ; $5fcf: $d7
    stop                                          ; $5fd0: $10 $00
    ret c                                         ; $5fd2: $d8

    and b                                         ; $5fd3: $a0
    rst $10                                       ; $5fd4: $d7
    db $10                                        ; $5fd5: $10
    jr nc, @-$1b                                  ; $5fd6: $30 $e3

    call nc, $1010                                ; $5fd8: $d4 $10 $10
    nop                                           ; $5fdb: $00
    stop                                          ; $5fdc: $10 $00
    db $10                                        ; $5fde: $10
    jr nc, jr_07d_5fe1                            ; $5fdf: $30 $00

jr_07d_5fe1:
    ld d, b                                       ; $5fe1: $50
    stop                                          ; $5fe2: $10 $00
    ret c                                         ; $5fe4: $d8

    and b                                         ; $5fe5: $a0
    add b                                         ; $5fe6: $80
    ld [bc], a                                    ; $5fe7: $02
    db $e3                                        ; $5fe8: $e3
    ret nc                                        ; $5fe9: $d0

    add hl, bc                                    ; $5fea: $09
    push hl                                       ; $5feb: $e5
    ld b, b                                       ; $5fec: $40
    ld [$eb01], a                                 ; $5fed: $ea $01 $eb
    ld e, $e6                                     ; $5ff0: $1e $e6
    sub a                                         ; $5ff2: $97
    call c, $e811                                 ; $5ff3: $dc $11 $e8
    rlca                                          ; $5ff6: $07
    xor $22                                       ; $5ff7: $ee $22
    db $d3                                        ; $5ff9: $d3
    ld [hl], b                                    ; $5ffa: $70
    ld [hl], b                                    ; $5ffb: $70
    nop                                           ; $5ffc: $00
    ld [hl], b                                    ; $5ffd: $70
    nop                                           ; $5ffe: $00
    and b                                         ; $5fff: $a0
    rst $10                                       ; $6000: $d7
    stop                                          ; $6001: $10 $00
    ret c                                         ; $6003: $d8

    ret nz                                        ; $6004: $c0

    ld [bc], a                                    ; $6005: $02
    ret c                                         ; $6006: $d8

    add b                                         ; $6007: $80
    ld [bc], a                                    ; $6008: $02
    db $dd                                        ; $6009: $dd
    rst $18                                       ; $600a: $df
    ld [bc], a                                    ; $600b: $02
    rst $18                                       ; $600c: $df
    ld [bc], a                                    ; $600d: $02
    db $d3                                        ; $600e: $d3
    ld d, b                                       ; $600f: $50
    ld bc, $0150                                  ; $6010: $01 $50 $01
    stop                                          ; $6013: $10 $00
    nop                                           ; $6015: $00
    ld h, b                                       ; $6016: $60
    nop                                           ; $6017: $00

jr_07d_6018:
    add b                                         ; $6018: $80
    nop                                           ; $6019: $00
    ld [hl], b                                    ; $601a: $70
    ld h, b                                       ; $601b: $60
    nop                                           ; $601c: $00
    ret nc                                        ; $601d: $d0

    ld bc, $0159                                  ; $601e: $01 $59 $01
    rst $10                                       ; $6021: $d7
    add hl, de                                    ; $6022: $19
    ld bc, $0159                                  ; $6023: $01 $59 $01
    ret nc                                        ; $6026: $d0

    add hl, bc                                    ; $6027: $09
    ld h, b                                       ; $6028: $60
    nop                                           ; $6029: $00
    jr nc, jr_07d_607c                            ; $602a: $30 $50

    nop                                           ; $602c: $00
    stop                                          ; $602d: $10 $00
    ret c                                         ; $602f: $d8

    and b                                         ; $6030: $a0
    ret nz                                        ; $6031: $c0

    add b                                         ; $6032: $80
    ld bc, $dfe0                                  ; $6033: $01 $e0 $df
    ld [bc], a                                    ; $6036: $02
    ld [c], a                                     ; $6037: $e2
    ret z                                         ; $6038: $c8

    ld h, b                                       ; $6039: $60
    call nc, $5001                                ; $603a: $d4 $01 $50
    ld b, b                                       ; $603d: $40
    jr nc, jr_07d_6018                            ; $603e: $30 $d8

    ret nz                                        ; $6040: $c0

    nop                                           ; $6041: $00
    rst $10                                       ; $6042: $d7
    db $10                                        ; $6043: $10
    add sp, $06                                   ; $6044: $e8 $06
    nop                                           ; $6046: $00
    ld h, b                                       ; $6047: $60
    nop                                           ; $6048: $00
    ld h, b                                       ; $6049: $60
    ld h, b                                       ; $604a: $60
    ld [bc], a                                    ; $604b: $02
    add sp, $07                                   ; $604c: $e8 $07
    ld [c], a                                     ; $604e: $e2
    ret z                                         ; $604f: $c8

    ld h, b                                       ; $6050: $60
    call nc, $1001                                ; $6051: $d4 $01 $10
    nop                                           ; $6054: $00
    nop                                           ; $6055: $00
    ret c                                         ; $6056: $d8

    or b                                          ; $6057: $b0
    ld bc, $0680                                  ; $6058: $01 $80 $06
    ldh [$e2], a                                  ; $605b: $e0 $e2
    call c, $d360                                 ; $605d: $dc $60 $d3
    sub b                                         ; $6060: $90
    sub b                                         ; $6061: $90
    nop                                           ; $6062: $00
    sub b                                         ; $6063: $90
    nop                                           ; $6064: $00
    sub b                                         ; $6065: $90
    or b                                          ; $6066: $b0
    rst $10                                       ; $6067: $d7
    db $10                                        ; $6068: $10
    rlca                                          ; $6069: $07
    ld [c], a                                     ; $606a: $e2
    call c, $d360                                 ; $606b: $dc $60 $d3
    ld [hl], b                                    ; $606e: $70
    ld [hl], b                                    ; $606f: $70
    nop                                           ; $6070: $00
    ld [hl], b                                    ; $6071: $70
    nop                                           ; $6072: $00
    and b                                         ; $6073: $a0
    rst $10                                       ; $6074: $d7
    stop                                          ; $6075: $10 $00
    ret c                                         ; $6077: $d8

    ret nz                                        ; $6078: $c0

    ld [bc], a                                    ; $6079: $02
    add b                                         ; $607a: $80
    ld [bc], a                                    ; $607b: $02

jr_07d_607c:
    ldh [$df], a                                  ; $607c: $e0 $df
    ld [bc], a                                    ; $607e: $02
    call nc, $d810                                ; $607f: $d4 $10 $d8
    add b                                         ; $6082: $80
    nop                                           ; $6083: $00
    ld d, b                                       ; $6084: $50
    ld bc, $0060                                  ; $6085: $01 $60 $00
    ld h, b                                       ; $6088: $60

jr_07d_6089:
    and b                                         ; $6089: $a0
    nop                                           ; $608a: $00
    and b                                         ; $608b: $a0
    ld h, b                                       ; $608c: $60
    ld [bc], a                                    ; $608d: $02
    add b                                         ; $608e: $80
    rst $10                                       ; $608f: $d7
    ld h, b                                       ; $6090: $60
    nop                                           ; $6091: $00
    ld h, b                                       ; $6092: $60
    ret nc                                        ; $6093: $d0

    ld bc, $0169                                  ; $6094: $01 $69 $01
    ld e, c                                       ; $6097: $59
    ld bc, $0139                                  ; $6098: $01 $39 $01
    ret nc                                        ; $609b: $d0

    add hl, bc                                    ; $609c: $09
    db $10                                        ; $609d: $10
    ret c                                         ; $609e: $d8

    add b                                         ; $609f: $80
    nop                                           ; $60a0: $00
    ld h, b                                       ; $60a1: $60
    ld d, b                                       ; $60a2: $50
    ld [bc], a                                    ; $60a3: $02
    rst $10                                       ; $60a4: $d7
    db $10                                        ; $60a5: $10

jr_07d_60a6:
    ret c                                         ; $60a6: $d8

    add b                                         ; $60a7: $80
    nop                                           ; $60a8: $00
    ld d, b                                       ; $60a9: $50
    ld bc, $0060                                  ; $60aa: $01 $60 $00
    ld h, b                                       ; $60ad: $60
    and b                                         ; $60ae: $a0
    nop                                           ; $60af: $00
    and b                                         ; $60b0: $a0
    ld h, b                                       ; $60b1: $60
    ld [bc], a                                    ; $60b2: $02
    add b                                         ; $60b3: $80
    rst $10                                       ; $60b4: $d7
    jr nc, jr_07d_60b7                            ; $60b5: $30 $00

jr_07d_60b7:
    jr nc, jr_07d_6089                            ; $60b7: $30 $d0

    ld bc, $0139                                  ; $60b9: $01 $39 $01
    add hl, de                                    ; $60bc: $19
    ld bc, $c9d8                                  ; $60bd: $01 $d8 $c9
    ld bc, $09d0                                  ; $60c0: $01 $d0 $09
    add b                                         ; $60c3: $80
    ld b, $e0                                     ; $60c4: $06 $e0
    sbc $ff                                       ; $60c6: $de $ff
    call nc, $5001                                ; $60c8: $d4 $01 $50
    ld b, b                                       ; $60cb: $40
    jr nc, jr_07d_60a6                            ; $60cc: $30 $d8

    ret nz                                        ; $60ce: $c0

    nop                                           ; $60cf: $00
    rst $10                                       ; $60d0: $d7
    stop                                          ; $60d1: $10 $00
    ret c                                         ; $60d3: $d8

    ld d, b                                       ; $60d4: $50
    ld h, b                                       ; $60d5: $60
    and b                                         ; $60d6: $a0
    nop                                           ; $60d7: $00
    ld h, b                                       ; $60d8: $60
    and b                                         ; $60d9: $a0
    ret nz                                        ; $60da: $c0

    db $e3                                        ; $60db: $e3
    db $d3                                        ; $60dc: $d3
    sub b                                         ; $60dd: $90
    sub b                                         ; $60de: $90
    nop                                           ; $60df: $00
    sub b                                         ; $60e0: $90
    nop                                           ; $60e1: $00
    sub b                                         ; $60e2: $90
    or b                                          ; $60e3: $b0
    nop                                           ; $60e4: $00
    rst $10                                       ; $60e5: $d7
    db $10                                        ; $60e6: $10
    ret c                                         ; $60e7: $d8

    add b                                         ; $60e8: $80
    nop                                           ; $60e9: $00
    ld h, b                                       ; $60ea: $60
    ld d, b                                       ; $60eb: $50
    ld [bc], a                                    ; $60ec: $02
    db $e3                                        ; $60ed: $e3
    ret nc                                        ; $60ee: $d0

    add hl, bc                                    ; $60ef: $09
    rst $20                                       ; $60f0: $e7
    ld [$20e6], sp                                ; $60f1: $08 $e6 $20
    jp hl                                         ; $60f4: $e9


    nop                                           ; $60f5: $00
    call c, $e811                                 ; $60f6: $dc $11 $e8
    rlca                                          ; $60f9: $07
    jp nc, $3030                                  ; $60fa: $d2 $30 $30

    nop                                           ; $60fd: $00
    jr nc, jr_07d_6100                            ; $60fe: $30 $00

jr_07d_6100:
    jr nc, jr_07d_6132                            ; $6100: $30 $30

    nop                                           ; $6102: $00
    add b                                         ; $6103: $80
    ld [bc], a                                    ; $6104: $02
    and $40                                       ; $6105: $e6 $40

jr_07d_6107:
    ret c                                         ; $6107: $d8

    add e                                         ; $6108: $83
    and $20                                       ; $6109: $e6 $20
    db $dd                                        ; $610b: $dd
    rst $18                                       ; $610c: $df
    ld [bc], a                                    ; $610d: $02
    rst $18                                       ; $610e: $df
    ld [bc], a                                    ; $610f: $02
    jp nc, $0110                                  ; $6110: $d2 $10 $01

    ret c                                         ; $6113: $d8

    add b                                         ; $6114: $80
    ld bc, $0050                                  ; $6115: $01 $50 $00
    nop                                           ; $6118: $00
    and b                                         ; $6119: $a0
    nop                                           ; $611a: $00
    ret nz                                        ; $611b: $c0

    nop                                           ; $611c: $00
    or b                                          ; $611d: $b0
    and b                                         ; $611e: $a0
    nop                                           ; $611f: $00
    ret nc                                        ; $6120: $d0

    ld bc, $d78b                                  ; $6121: $01 $8b $d7
    ld e, e                                       ; $6124: $5b
    adc e                                         ; $6125: $8b
    ret nc                                        ; $6126: $d0

    add hl, bc                                    ; $6127: $09
    and c                                         ; $6128: $a1
    ld h, b                                       ; $6129: $60
    add c                                         ; $612a: $81
    ld d, c                                       ; $612b: $51
    db $10                                        ; $612c: $10
    jr nc, jr_07d_6107                            ; $612d: $30 $d8

    jp nz, $dfe0                                  ; $612f: $c2 $e0 $df

jr_07d_6132:
    ld [bc], a                                    ; $6132: $02
    pop de                                        ; $6133: $d1
    db $10                                        ; $6134: $10
    ld bc, $0180                                  ; $6135: $01 $80 $01
    rst $10                                       ; $6138: $d7
    stop                                          ; $6139: $10 $00
    ret c                                         ; $613b: $d8

    ld h, b                                       ; $613c: $60
    ld bc, $10d7                                  ; $613d: $01 $d7 $10
    ld bc, $60d8                                  ; $6140: $01 $d8 $60
    nop                                           ; $6143: $00
    db $10                                        ; $6144: $10
    ld bc, $0150                                  ; $6145: $01 $50 $01
    add b                                         ; $6148: $80
    rst $10                                       ; $6149: $d7
    db $10                                        ; $614a: $10
    add sp, $06                                   ; $614b: $e8 $06
    and $40                                       ; $614d: $e6 $40
    rst $10                                       ; $614f: $d7
    rst $10                                       ; $6150: $d7
    nop                                           ; $6151: $00
    add b                                         ; $6152: $80
    nop                                           ; $6153: $00
    add b                                         ; $6154: $80
    add b                                         ; $6155: $80
    nop                                           ; $6156: $00
    ret c                                         ; $6157: $d8

    ret c                                         ; $6158: $d8

    ret c                                         ; $6159: $d8

    add sp, $07                                   ; $615a: $e8 $07
    and $20                                       ; $615c: $e6 $20
    add b                                         ; $615e: $80
    nop                                           ; $615f: $00
    db $10                                        ; $6160: $10
    ld bc, $0180                                  ; $6161: $01 $80 $01
    rst $10                                       ; $6164: $d7
    stop                                          ; $6165: $10 $00
    ret c                                         ; $6167: $d8

    ld h, b                                       ; $6168: $60
    ld bc, $10d7                                  ; $6169: $01 $d7 $10
    ld bc, $60d8                                  ; $616c: $01 $d8 $60
    nop                                           ; $616f: $00
    stop                                          ; $6170: $10 $00
    sub b                                         ; $6172: $90
    nop                                           ; $6173: $00
    nop                                           ; $6174: $00
    or b                                          ; $6175: $b0
    ld bc, $10d7                                  ; $6176: $01 $d7 $10
    ret c                                         ; $6179: $d8

    ld bc, $8080                                  ; $617a: $01 $80 $80
    nop                                           ; $617d: $00
    stop                                          ; $617e: $10 $00
    ldh [$df], a                                  ; $6180: $e0 $df
    inc bc                                        ; $6182: $03
    pop de                                        ; $6183: $d1
    sub b                                         ; $6184: $90
    ld bc, $40d7                                  ; $6185: $01 $d7 $40
    ld bc, $0090                                  ; $6188: $01 $90 $00
    add b                                         ; $618b: $80
    ld bc, $0110                                  ; $618c: $01 $10 $01
    ret c                                         ; $618f: $d8

    add b                                         ; $6190: $80
    nop                                           ; $6191: $00
    ldh [$d7], a                                  ; $6192: $e0 $d7
    jr nc, @+$32                                  ; $6194: $30 $30

    nop                                           ; $6196: $00
    jr nc, jr_07d_6199                            ; $6197: $30 $00

jr_07d_6199:
    jr nc, jr_07d_61cb                            ; $6199: $30 $30

    nop                                           ; $619b: $00
    add b                                         ; $619c: $80
    ld [bc], a                                    ; $619d: $02
    ret c                                         ; $619e: $d8

    add c                                         ; $619f: $81
    ld bc, $dfe0                                  ; $61a0: $01 $e0 $df
    ld [bc], a                                    ; $61a3: $02
    pop de                                        ; $61a4: $d1
    db $10                                        ; $61a5: $10
    ld bc, $0180                                  ; $61a6: $01 $80 $01
    rst $10                                       ; $61a9: $d7
    stop                                          ; $61aa: $10 $00
    ret c                                         ; $61ac: $d8

    ld h, b                                       ; $61ad: $60
    ld bc, $01a0                                  ; $61ae: $01 $a0 $01
    rst $10                                       ; $61b1: $d7
    stop                                          ; $61b2: $10 $00
    ret c                                         ; $61b4: $d8

    add b                                         ; $61b5: $80
    ld bc, $01c0                                  ; $61b6: $01 $c0 $01
    rst $10                                       ; $61b9: $d7
    jr nc, jr_07d_61bc                            ; $61ba: $30 $00

jr_07d_61bc:
    ret c                                         ; $61bc: $d8

    db $10                                        ; $61bd: $10
    ld bc, $0110                                  ; $61be: $01 $10 $01
    add b                                         ; $61c1: $80
    nop                                           ; $61c2: $00
    db $10                                        ; $61c3: $10
    ld bc, $0180                                  ; $61c4: $01 $80 $01
    rst $10                                       ; $61c7: $d7
    stop                                          ; $61c8: $10 $00
    ret c                                         ; $61ca: $d8

jr_07d_61cb:
    ld h, b                                       ; $61cb: $60
    ld bc, $01a0                                  ; $61cc: $01 $a0 $01
    rst $10                                       ; $61cf: $d7
    stop                                          ; $61d0: $10 $00
    ret c                                         ; $61d2: $d8

    add c                                         ; $61d3: $81
    ld bc, $01d0                                  ; $61d4: $01 $d0 $01
    adc e                                         ; $61d7: $8b
    xor e                                         ; $61d8: $ab
    set 2, b                                      ; $61d9: $cb $d0
    add hl, bc                                    ; $61db: $09
    rst $10                                       ; $61dc: $d7
    db $10                                        ; $61dd: $10
    ret c                                         ; $61de: $d8

    add b                                         ; $61df: $80
    nop                                           ; $61e0: $00
    add b                                         ; $61e1: $80
    db $10                                        ; $61e2: $10
    ld [bc], a                                    ; $61e3: $02

jr_07d_61e4:
    ldh [$de], a                                  ; $61e4: $e0 $de
    rst $38                                       ; $61e6: $ff
    ret nc                                        ; $61e7: $d0

    add hl, bc                                    ; $61e8: $09
    pop de                                        ; $61e9: $d1
    rrca                                          ; $61ea: $0f
    db $dd                                        ; $61eb: $dd
    rst $18                                       ; $61ec: $df
    ld [bc], a                                    ; $61ed: $02
    ld [c], a                                     ; $61ee: $e2
    ld h, e                                       ; $61ef: $63
    ld h, d                                       ; $61f0: $62
    ld [c], a                                     ; $61f1: $e2
    ld a, l                                       ; $61f2: $7d
    ld h, d                                       ; $61f3: $62
    ld [c], a                                     ; $61f4: $e2
    ld h, e                                       ; $61f5: $63
    ld h, d                                       ; $61f6: $62
    ld [c], a                                     ; $61f7: $e2
    ld a, l                                       ; $61f8: $7d
    ld h, d                                       ; $61f9: $62
    rst $18                                       ; $61fa: $df
    ld [bc], a                                    ; $61fb: $02
    ld [c], a                                     ; $61fc: $e2
    ld h, e                                       ; $61fd: $63
    ld h, d                                       ; $61fe: $62
    rst $10                                       ; $61ff: $d7
    and b                                         ; $6200: $a0
    ret c                                         ; $6201: $d8

    ld d, b                                       ; $6202: $50
    rst $10                                       ; $6203: $d7
    and c                                         ; $6204: $a1
    ret c                                         ; $6205: $d8

    jr nc, jr_07d_6258                            ; $6206: $30 $50

    rst $10                                       ; $6208: $d7
    and b                                         ; $6209: $a0
    ret c                                         ; $620a: $d8

    jr nz, jr_07d_61e4                            ; $620b: $20 $d7

    and b                                         ; $620d: $a0
    ret c                                         ; $620e: $d8

    ld sp, $3020                                  ; $620f: $31 $20 $30
    ld d, b                                       ; $6212: $50
    and c                                         ; $6213: $a1
    ld [c], a                                     ; $6214: $e2
    ld h, e                                       ; $6215: $63
    ld h, d                                       ; $6216: $62
    ld [c], a                                     ; $6217: $e2
    ld a, l                                       ; $6218: $7d
    ld h, d                                       ; $6219: $62
    ldh [$e2], a                                  ; $621a: $e0 $e2
    ld h, e                                       ; $621c: $63
    ld h, d                                       ; $621d: $62
    ld [c], a                                     ; $621e: $e2
    ld a, l                                       ; $621f: $7d
    ld h, d                                       ; $6220: $62
    ld [c], a                                     ; $6221: $e2
    ld h, e                                       ; $6222: $63
    ld h, d                                       ; $6223: $62
    jr nc, @+$33                                  ; $6224: $30 $31

    ld sp, $3130                                  ; $6226: $31 $30 $31
    and e                                         ; $6229: $a3
    jp $dfe0                                      ; $622a: $c3 $e0 $df


    rlca                                          ; $622d: $07
    rst $10                                       ; $622e: $d7

jr_07d_622f:
    and c                                         ; $622f: $a1
    ret c                                         ; $6230: $d8

    ld h, b                                       ; $6231: $60
    ld d, b                                       ; $6232: $50

jr_07d_6233:
    rst $10                                       ; $6233: $d7
    and c                                         ; $6234: $a1
    ret c                                         ; $6235: $d8

    add b                                         ; $6236: $80
    ld d, b                                       ; $6237: $50
    ldh [$d7], a                                  ; $6238: $e0 $d7
    and c                                         ; $623a: $a1
    ret c                                         ; $623b: $d8

    ld h, b                                       ; $623c: $60
    ld d, b                                       ; $623d: $50
    ld sp, $3020                                  ; $623e: $31 $20 $30
    ld [c], a                                     ; $6241: $e2
    ld h, e                                       ; $6242: $63
    ld h, d                                       ; $6243: $62
    ld [c], a                                     ; $6244: $e2
    ld a, l                                       ; $6245: $7d
    ld h, d                                       ; $6246: $62
    ld [c], a                                     ; $6247: $e2

jr_07d_6248:
    ld h, e                                       ; $6248: $63
    ld h, d                                       ; $6249: $62
    rst $10                                       ; $624a: $d7
    and b                                         ; $624b: $a0

jr_07d_624c:
    ret c                                         ; $624c: $d8

    ld d, b                                       ; $624d: $50
    rst $10                                       ; $624e: $d7
    and c                                         ; $624f: $a1
    ret c                                         ; $6250: $d8

    jr nc, @+$52                                  ; $6251: $30 $50

    rst $10                                       ; $6253: $d7
    and b                                         ; $6254: $a0
    ret c                                         ; $6255: $d8

    jr nz, jr_07d_622f                            ; $6256: $20 $d7

jr_07d_6258:
    and b                                         ; $6258: $a0
    ret c                                         ; $6259: $d8

    jr nz, jr_07d_6233                            ; $625a: $20 $d7

    and c                                         ; $625c: $a1
    ret c                                         ; $625d: $d8

    ld sp, $3020                                  ; $625e: $31 $20 $30
    sbc $ff                                       ; $6261: $de $ff
    rst $10                                       ; $6263: $d7
    and b                                         ; $6264: $a0
    ret c                                         ; $6265: $d8

jr_07d_6266:
    ld d, b                                       ; $6266: $50
    rst $10                                       ; $6267: $d7
    and c                                         ; $6268: $a1
    ret c                                         ; $6269: $d8

    jr nc, jr_07d_62bc                            ; $626a: $30 $50

    rst $10                                       ; $626c: $d7
    and b                                         ; $626d: $a0
    ret c                                         ; $626e: $d8

    jr nz, jr_07d_6248                            ; $626f: $20 $d7

    and b                                         ; $6271: $a0
    ret c                                         ; $6272: $d8

    jr nz, jr_07d_624c                            ; $6273: $20 $d7

    and c                                         ; $6275: $a1
    ret c                                         ; $6276: $d8

    ld sp, $a0d7                                  ; $6277: $31 $d7 $a0
    ret c                                         ; $627a: $d8

    ld d, b                                       ; $627b: $50
    db $e3                                        ; $627c: $e3
    rst $10                                       ; $627d: $d7
    and b                                         ; $627e: $a0
    ret c                                         ; $627f: $d8

    ld d, b                                       ; $6280: $50
    rst $10                                       ; $6281: $d7
    and c                                         ; $6282: $a1
    ret c                                         ; $6283: $d8

    jr nc, jr_07d_62d6                            ; $6284: $30 $50

    rst $10                                       ; $6286: $d7
    and b                                         ; $6287: $a0
    ret c                                         ; $6288: $d8

    jr nz, @-$27                                  ; $6289: $20 $d7

    and b                                         ; $628b: $a0
    ret c                                         ; $628c: $d8

    jr nz, jr_07d_6266                            ; $628d: $20 $d7

    and c                                         ; $628f: $a1
    ret c                                         ; $6290: $d8

    ld sp, $e331                                  ; $6291: $31 $31 $e3

    db $d0, $01, $dc, $11, $e8, $07, $ea, $01, $eb, $1e, $ee, $33, $d4, $e5, $00, $e6
    db $c0, $e2, $46, $63, $37, $37, $07, $08, $0f, $07, $08

    rrca                                          ; $62af: $0f
    rlca                                          ; $62b0: $07
    ld [$070f], sp                                ; $62b1: $08 $0f $07
    ld [$46e2], sp                                ; $62b4: $08 $e2 $46
    ld h, e                                       ; $62b7: $63
    push hl                                       ; $62b8: $e5
    add b                                         ; $62b9: $80
    and $80                                       ; $62ba: $e6 $80

jr_07d_62bc:
    jp nc, $d9a7                                  ; $62bc: $d2 $a7 $d9

    and a                                         ; $62bf: $a7
    rst $10                                       ; $62c0: $d7
    ld d, a                                       ; $62c1: $57
    reti                                          ; $62c2: $d9


    ld e, b                                       ; $62c3: $58
    ret c                                         ; $62c4: $d8

    and a                                         ; $62c5: $a7
    reti                                          ; $62c6: $d9


    and a                                         ; $62c7: $a7
    and a                                         ; $62c8: $a7
    xor b                                         ; $62c9: $a8
    reti                                          ; $62ca: $d9


    and a                                         ; $62cb: $a7
    rst $10                                       ; $62cc: $d7
    daa                                           ; $62cd: $27
    ret c                                         ; $62ce: $d8

    and a                                         ; $62cf: $a7
    reti                                          ; $62d0: $d9


    xor b                                         ; $62d1: $a8
    and a                                         ; $62d2: $a7
    reti                                          ; $62d3: $d9


    and a                                         ; $62d4: $a7
    reti                                          ; $62d5: $d9


jr_07d_62d6:
    and a                                         ; $62d6: $a7
    reti                                          ; $62d7: $d9


    xor b                                         ; $62d8: $a8
    push hl                                       ; $62d9: $e5
    nop                                           ; $62da: $00
    and $c0                                       ; $62db: $e6 $c0

jr_07d_62dd:
    ld [c], a                                     ; $62dd: $e2
    ld b, [hl]                                    ; $62de: $46
    ld h, e                                       ; $62df: $63
    scf                                           ; $62e0: $37
    scf                                           ; $62e1: $37
    rlca                                          ; $62e2: $07
    ld [$070f], sp                                ; $62e3: $08 $0f $07
    ld [$070f], sp                                ; $62e6: $08 $0f $07
    ld [$070f], sp                                ; $62e9: $08 $0f $07
    ld [$46e2], sp                                ; $62ec: $08 $e2 $46
    ld h, e                                       ; $62ef: $63
    push hl                                       ; $62f0: $e5
    add b                                         ; $62f1: $80
    ld [$eb08], a                                 ; $62f2: $ea $08 $eb
    ld bc, $90e6                                  ; $62f5: $01 $e6 $90
    pop de                                        ; $62f8: $d1
    and a                                         ; $62f9: $a7
    reti                                          ; $62fa: $d9


    and a                                         ; $62fb: $a7
    rst $10                                       ; $62fc: $d7
    and a                                         ; $62fd: $a7
    ld [$87a7], sp                                ; $62fe: $08 $a7 $87
    ld d, a                                       ; $6301: $57
    jr c, jr_07d_62dd                             ; $6302: $38 $d9

    scf                                           ; $6304: $37
    ld b, a                                       ; $6305: $47
    ld d, a                                       ; $6306: $57
    ret c                                         ; $6307: $d8

    xor b                                         ; $6308: $a8
    reti                                          ; $6309: $d9


    and a                                         ; $630a: $a7
    or a                                          ; $630b: $b7
    rst $00                                       ; $630c: $c7
    reti                                          ; $630d: $d9


    ret z                                         ; $630e: $c8

    push hl                                       ; $630f: $e5
    ld b, b                                       ; $6310: $40
    ld [$eb01], a                                 ; $6311: $ea $01 $eb
    ld e, $e6                                     ; $6314: $1e $e6
    or b                                          ; $6316: $b0
    ld [c], a                                     ; $6317: $e2
    ld e, d                                       ; $6318: $5a
    ld h, e                                       ; $6319: $63
    db $d3                                        ; $631a: $d3
    ld d, a                                       ; $631b: $57
    reti                                          ; $631c: $d9


    ld e, b                                       ; $631d: $58
    reti                                          ; $631e: $d9


    ld d, a                                       ; $631f: $57
    reti                                          ; $6320: $d9


    ld d, a                                       ; $6321: $57
    reti                                          ; $6322: $d9


    ld d, a                                       ; $6323: $57
    reti                                          ; $6324: $d9


    ld e, b                                       ; $6325: $58
    reti                                          ; $6326: $d9


    ld d, a                                       ; $6327: $57
    reti                                          ; $6328: $d9


    ld d, a                                       ; $6329: $57
    reti                                          ; $632a: $d9


    ld d, a                                       ; $632b: $57
    reti                                          ; $632c: $d9


    ld e, b                                       ; $632d: $58
    ld [c], a                                     ; $632e: $e2
    ld e, d                                       ; $632f: $5a
    ld h, e                                       ; $6330: $63
    db $d3                                        ; $6331: $d3
    ld [hl], a                                    ; $6332: $77
    reti                                          ; $6333: $d9


    ld a, b                                       ; $6334: $78
    reti                                          ; $6335: $d9


    ld [hl], a                                    ; $6336: $77
    reti                                          ; $6337: $d9


    ld [hl], a                                    ; $6338: $77
    reti                                          ; $6339: $d9


    ld [hl], a                                    ; $633a: $77
    reti                                          ; $633b: $d9


    ld a, b                                       ; $633c: $78
    ld d, a                                       ; $633d: $57
    reti                                          ; $633e: $d9


    ld d, a                                       ; $633f: $57
    reti                                          ; $6340: $d9


    ld d, a                                       ; $6341: $57
    reti                                          ; $6342: $d9


    ld e, b                                       ; $6343: $58
    sbc $ff                                       ; $6344: $de $ff

    db $d4, $37, $07, $37, $08, $37, $27, $07, $28, $07, $d8, $c7, $c7, $08, $c7, $07
    db $d7, $27, $08, $e3

    db $d3                                        ; $635a: $d3
    ld [hl], a                                    ; $635b: $77
    reti                                          ; $635c: $d9


    ld [hl], a                                    ; $635d: $77
    reti                                          ; $635e: $d9


    ld [hl], a                                    ; $635f: $77
    reti                                          ; $6360: $d9


    ld a, b                                       ; $6361: $78
    reti                                          ; $6362: $d9


    ld [hl], a                                    ; $6363: $77
    reti                                          ; $6364: $d9


    ld [hl], a                                    ; $6365: $77
    reti                                          ; $6366: $d9


    ld [hl], a                                    ; $6367: $77
    reti                                          ; $6368: $d9


    ld a, b                                       ; $6369: $78
    rst $10                                       ; $636a: $d7
    daa                                           ; $636b: $27
    reti                                          ; $636c: $d9


    daa                                           ; $636d: $27
    reti                                          ; $636e: $d9


    daa                                           ; $636f: $27
    reti                                          ; $6370: $d9


    jr z, @-$25                                   ; $6371: $28 $d9

    daa                                           ; $6373: $27
    reti                                          ; $6374: $d9


    daa                                           ; $6375: $27
    reti                                          ; $6376: $d9


    daa                                           ; $6377: $27
    reti                                          ; $6378: $d9


    jr z, @-$25                                   ; $6379: $28 $d9

    daa                                           ; $637b: $27
    reti                                          ; $637c: $d9


    daa                                           ; $637d: $27
    reti                                          ; $637e: $d9


    daa                                           ; $637f: $27
    ret c                                         ; $6380: $d8

    ret z                                         ; $6381: $c8

    reti                                          ; $6382: $d9


    rst $00                                       ; $6383: $c7
    reti                                          ; $6384: $d9


    rst $00                                       ; $6385: $c7
    reti                                          ; $6386: $d9


    rst $00                                       ; $6387: $c7
    reti                                          ; $6388: $d9


    ret z                                         ; $6389: $c8

jr_07d_638a:
    reti                                          ; $638a: $d9


    rst $00                                       ; $638b: $c7
    reti                                          ; $638c: $d9


    rst $00                                       ; $638d: $c7
    reti                                          ; $638e: $d9


    rst $00                                       ; $638f: $c7
    reti                                          ; $6390: $d9


jr_07d_6391:
    ret z                                         ; $6391: $c8

    ld d, a                                       ; $6392: $57
    reti                                          ; $6393: $d9


    ld d, a                                       ; $6394: $57
    reti                                          ; $6395: $d9


    ld d, a                                       ; $6396: $57
    reti                                          ; $6397: $d9


    ld e, b                                       ; $6398: $58
    ld [hl], a                                    ; $6399: $77
    reti                                          ; $639a: $d9


    ld [hl], a                                    ; $639b: $77
    reti                                          ; $639c: $d9


    ld [hl], a                                    ; $639d: $77
    reti                                          ; $639e: $d9


    ld a, b                                       ; $639f: $78
    reti                                          ; $63a0: $d9


    ld [hl], a                                    ; $63a1: $77
    reti                                          ; $63a2: $d9


    ld [hl], a                                    ; $63a3: $77
    reti                                          ; $63a4: $d9


    ld [hl], a                                    ; $63a5: $77
    reti                                          ; $63a6: $d9


    ld a, b                                       ; $63a7: $78
    rst $10                                       ; $63a8: $d7
    daa                                           ; $63a9: $27
    reti                                          ; $63aa: $d9


    daa                                           ; $63ab: $27
    reti                                          ; $63ac: $d9


    daa                                           ; $63ad: $27
    reti                                          ; $63ae: $d9


    jr z, jr_07d_638a                             ; $63af: $28 $d9

    daa                                           ; $63b1: $27
    reti                                          ; $63b2: $d9


    daa                                           ; $63b3: $27
    reti                                          ; $63b4: $d9


    daa                                           ; $63b5: $27
    reti                                          ; $63b6: $d9


    jr z, jr_07d_6391                             ; $63b7: $28 $d8

    rst $00                                       ; $63b9: $c7
    reti                                          ; $63ba: $d9


    rst $00                                       ; $63bb: $c7
    reti                                          ; $63bc: $d9


    rst $00                                       ; $63bd: $c7
    rst $10                                       ; $63be: $d7
    ld e, b                                       ; $63bf: $58
    reti                                          ; $63c0: $d9


    ld d, a                                       ; $63c1: $57
    reti                                          ; $63c2: $d9


    ld d, a                                       ; $63c3: $57
    db $e3                                        ; $63c4: $e3

    db $d0, $01, $ea, $01, $eb, $1e, $dc, $11, $e8, $07, $ee, $33, $d3, $e5, $00, $e6
    db $a0, $e2, $74, $64, $c7, $c7, $07, $08, $0f, $07, $08

    rrca                                          ; $63e0: $0f
    rlca                                          ; $63e1: $07
    ld [$070f], sp                                ; $63e2: $08 $0f $07
    ld [$74e2], sp                                ; $63e5: $08 $e2 $74
    ld h, h                                       ; $63e8: $64
    push hl                                       ; $63e9: $e5
    add b                                         ; $63ea: $80
    and $60                                       ; $63eb: $e6 $60
    ld d, a                                       ; $63ed: $57
    reti                                          ; $63ee: $d9


jr_07d_63ef:
    ld d, a                                       ; $63ef: $57
    ret c                                         ; $63f0: $d8

    and a                                         ; $63f1: $a7
    reti                                          ; $63f2: $d9


    xor b                                         ; $63f3: $a8
    rst $10                                       ; $63f4: $d7
    scf                                           ; $63f5: $37
    reti                                          ; $63f6: $d9


    scf                                           ; $63f7: $37
    scf                                           ; $63f8: $37
    jr z, @-$25                                   ; $63f9: $28 $d9

    daa                                           ; $63fb: $27
    ret c                                         ; $63fc: $d8

    and a                                         ; $63fd: $a7
    rst $10                                       ; $63fe: $d7
    scf                                           ; $63ff: $37
    reti                                          ; $6400: $d9


    jr c, jr_07d_643a                             ; $6401: $38 $37

    reti                                          ; $6403: $d9


    scf                                           ; $6404: $37
    reti                                          ; $6405: $d9


    scf                                           ; $6406: $37
    reti                                          ; $6407: $d9


    jr c, jr_07d_63ef                             ; $6408: $38 $e5

    nop                                           ; $640a: $00
    and $a0                                       ; $640b: $e6 $a0
    ld [c], a                                     ; $640d: $e2
    ld [hl], h                                    ; $640e: $74
    ld h, h                                       ; $640f: $64

jr_07d_6410:
    rst $00                                       ; $6410: $c7
    rst $00                                       ; $6411: $c7
    rlca                                          ; $6412: $07
    ld [$070f], sp                                ; $6413: $08 $0f $07
    ld [$070f], sp                                ; $6416: $08 $0f $07
    ld [$070f], sp                                ; $6419: $08 $0f $07
    ld [$74e2], sp                                ; $641c: $08 $e2 $74
    ld h, h                                       ; $641f: $64
    push hl                                       ; $6420: $e5
    add b                                         ; $6421: $80
    and $60                                       ; $6422: $e6 $60
    ld [$eb08], a                                 ; $6424: $ea $08 $eb
    ld bc, $fee4                                  ; $6427: $01 $e4 $fe
    pop de                                        ; $642a: $d1
    rlca                                          ; $642b: $07
    and a                                         ; $642c: $a7
    reti                                          ; $642d: $d9


    and a                                         ; $642e: $a7
    rst $10                                       ; $642f: $d7
    and a                                         ; $6430: $a7
    ld [$87a7], sp                                ; $6431: $08 $a7 $87
    ld d, a                                       ; $6434: $57
    jr c, jr_07d_6410                             ; $6435: $38 $d9

    scf                                           ; $6437: $37
    ld b, a                                       ; $6438: $47
    ld d, a                                       ; $6439: $57

jr_07d_643a:
    ret c                                         ; $643a: $d8

    xor b                                         ; $643b: $a8
    reti                                          ; $643c: $d9


    and a                                         ; $643d: $a7
    or a                                          ; $643e: $b7
    ret z                                         ; $643f: $c8

    push hl                                       ; $6440: $e5
    ld b, b                                       ; $6441: $40
    ld [$eb01], a                                 ; $6442: $ea $01 $eb
    ld e, $0f                                     ; $6445: $1e $0f
    ld [c], a                                     ; $6447: $e2
    ld e, d                                       ; $6448: $5a
    ld h, e                                       ; $6449: $63
    db $d3                                        ; $644a: $d3
    ld d, a                                       ; $644b: $57
    reti                                          ; $644c: $d9


    ld e, b                                       ; $644d: $58
    reti                                          ; $644e: $d9


    ld d, a                                       ; $644f: $57
    reti                                          ; $6450: $d9


    ld d, a                                       ; $6451: $57
    reti                                          ; $6452: $d9


    ld d, a                                       ; $6453: $57
    reti                                          ; $6454: $d9


    ld e, b                                       ; $6455: $58
    reti                                          ; $6456: $d9


    ld d, a                                       ; $6457: $57
    reti                                          ; $6458: $d9


    ld d, a                                       ; $6459: $57
    reti                                          ; $645a: $d9


    ld d, a                                       ; $645b: $57
    reti                                          ; $645c: $d9


    ld e, b                                       ; $645d: $58
    ld [c], a                                     ; $645e: $e2
    ld e, d                                       ; $645f: $5a
    ld h, e                                       ; $6460: $63
    db $d3                                        ; $6461: $d3
    ld [hl], a                                    ; $6462: $77
    reti                                          ; $6463: $d9


    ld a, b                                       ; $6464: $78
    reti                                          ; $6465: $d9


    ld [hl], a                                    ; $6466: $77
    reti                                          ; $6467: $d9


    ld [hl], a                                    ; $6468: $77
    reti                                          ; $6469: $d9


    ld [hl], a                                    ; $646a: $77
    reti                                          ; $646b: $d9


    ld a, b                                       ; $646c: $78
    ld d, a                                       ; $646d: $57
    reti                                          ; $646e: $d9


    ld e, b                                       ; $646f: $58
    db $e4                                        ; $6470: $e4
    nop                                           ; $6471: $00
    sbc $ff                                       ; $6472: $de $ff

    db $d3, $c7, $07, $c7, $08, $c7, $a7, $07, $a8, $07, $97, $97, $08, $97, $07, $a7
    db $08, $e3, $d0, $01, $e7, $08, $e6, $20, $e9, $00, $dc, $11, $e8, $07, $d1, $df
    db $07, $0f, $57, $d9, $58, $07, $5f, $58, $5f, $07, $08, $54, $02, $54, $02, $d7
    db $37, $58, $d8, $e0

    and a                                         ; $64a8: $a7
    reti                                          ; $64a9: $d9


    and a                                         ; $64aa: $a7
    rst $10                                       ; $64ab: $d7
    and a                                         ; $64ac: $a7
    ld [$87a7], sp                                ; $64ad: $08 $a7 $87
    ld d, a                                       ; $64b0: $57
    jr c, @-$25                                   ; $64b1: $38 $d9

    scf                                           ; $64b3: $37
    ld b, a                                       ; $64b4: $47
    ld d, a                                       ; $64b5: $57
    ret c                                         ; $64b6: $d8

    xor b                                         ; $64b7: $a8
    reti                                          ; $64b8: $d9


    and a                                         ; $64b9: $a7
    or a                                          ; $64ba: $b7
    rst $00                                       ; $64bb: $c7
    reti                                          ; $64bc: $d9


    ret z                                         ; $64bd: $c8

    pop de                                        ; $64be: $d1
    rst $18                                       ; $64bf: $df
    rlca                                          ; $64c0: $07
    rrca                                          ; $64c1: $0f
    ld [hl], a                                    ; $64c2: $77
    reti                                          ; $64c3: $d9


    ld a, b                                       ; $64c4: $78
    rlca                                          ; $64c5: $07
    ld a, a                                       ; $64c6: $7f
    ld a, b                                       ; $64c7: $78
    ld a, a                                       ; $64c8: $7f
    rlca                                          ; $64c9: $07

jr_07d_64ca:
    ld [$0274], sp                                ; $64ca: $08 $74 $02
    ld [hl], h                                    ; $64cd: $74
    ld [bc], a                                    ; $64ce: $02
    rst $10                                       ; $64cf: $d7
    ld d, a                                       ; $64d0: $57
    ld a, b                                       ; $64d1: $78
    ret c                                         ; $64d2: $d8

    ldh [$c7], a                                  ; $64d3: $e0 $c7
    reti                                          ; $64d5: $d9


    rst $00                                       ; $64d6: $c7
    rst $10                                       ; $64d7: $d7
    rst $00                                       ; $64d8: $c7
    ld [$a7c7], sp                                ; $64d9: $08 $c7 $a7
    ld [hl], a                                    ; $64dc: $77
    ld e, b                                       ; $64dd: $58

jr_07d_64de:
    reti                                          ; $64de: $d9


    ld d, a                                       ; $64df: $57
    ld h, a                                       ; $64e0: $67
    ld [hl], a                                    ; $64e1: $77
    ret c                                         ; $64e2: $d8

    ret z                                         ; $64e3: $c8

    reti                                          ; $64e4: $d9


    rst $00                                       ; $64e5: $c7
    rst $10                                       ; $64e6: $d7
    rla                                           ; $64e7: $17
    daa                                           ; $64e8: $27
    reti                                          ; $64e9: $d9


    jr z, jr_07d_64ca                             ; $64ea: $28 $de

    rst $38                                       ; $64ec: $ff

    db $d0, $01, $d1, $e2, $2a, $65

    rla                                           ; $64f3: $17
    rlca                                          ; $64f4: $07
    rla                                           ; $64f5: $17
    ld [$2ae2], sp                                ; $64f6: $08 $e2 $2a
    ld h, l                                       ; $64f9: $65
    scf                                           ; $64fa: $37
    rlca                                          ; $64fb: $07
    daa                                           ; $64fc: $27
    jr c, jr_07d_64de                             ; $64fd: $38 $df

    ld [bc], a                                    ; $64ff: $02
    rst $10                                       ; $6500: $d7
    sbc a                                         ; $6501: $9f
    ret c                                         ; $6502: $d8

    rla                                           ; $6503: $17
    ld e, b                                       ; $6504: $58
    scf                                           ; $6505: $37
    rla                                           ; $6506: $17
    ld d, a                                       ; $6507: $57

jr_07d_6508:
    jr jr_07d_6561                                ; $6508: $18 $57

    scf                                           ; $650a: $37
    rla                                           ; $650b: $17
    ld e, b                                       ; $650c: $58
    scf                                           ; $650d: $37
    rlca                                          ; $650e: $07
    scf                                           ; $650f: $37
    ld [$6be2], sp                                ; $6510: $08 $e2 $6b
    ld h, l                                       ; $6513: $65
    ld [c], a                                     ; $6514: $e2
    ld l, e                                       ; $6515: $6b
    ld h, l                                       ; $6516: $65
    ld h, a                                       ; $6517: $67
    add a                                         ; $6518: $87
    rla                                           ; $6519: $17
    ld e, b                                       ; $651a: $58
    scf                                           ; $651b: $37
    rla                                           ; $651c: $17
    ld d, a                                       ; $651d: $57
    jr jr_07d_6577                                ; $651e: $18 $57

    scf                                           ; $6520: $37
    rla                                           ; $6521: $17
    ld e, b                                       ; $6522: $58
    scf                                           ; $6523: $37
    rlca                                          ; $6524: $07
    scf                                           ; $6525: $37
    jr c, jr_07d_6508                             ; $6526: $38 $e0

    sbc $ff                                       ; $6528: $de $ff

    db $57, $87, $17, $68, $87, $17, $07, $18, $17, $67, $87, $08, $67, $87, $07, $58
    db $57, $87, $17, $08, $57, $17, $07, $18

    rst $10                                       ; $6542: $d7
    ld d, a                                       ; $6543: $57
    ld d, a                                       ; $6544: $57
    ld d, a                                       ; $6545: $57
    ret c                                         ; $6546: $d8

    cp a                                          ; $6547: $bf
    nop                                           ; $6548: $00
    or a                                          ; $6549: $b7
    xor a                                         ; $654a: $af
    nop                                           ; $654b: $00
    ld d, a                                       ; $654c: $57
    add a                                         ; $654d: $87
    rla                                           ; $654e: $17
    ld [$1787], sp                                ; $654f: $08 $87 $17
    rlca                                          ; $6552: $07
    jr jr_07d_656c                                ; $6553: $18 $17

    ld h, a                                       ; $6555: $67
    add a                                         ; $6556: $87
    jr jr_07d_65c0                                ; $6557: $18 $67

    add a                                         ; $6559: $87
    rlca                                          ; $655a: $07
    ld e, b                                       ; $655b: $58
    ld d, a                                       ; $655c: $57
    add a                                         ; $655d: $87
    rst $10                                       ; $655e: $d7
    ld e, a                                       ; $655f: $5f
    ret c                                         ; $6560: $d8

jr_07d_6561:
    nop                                           ; $6561: $00
    ld h, a                                       ; $6562: $67
    add a                                         ; $6563: $87
    rlca                                          ; $6564: $07
    ld l, b                                       ; $6565: $68
    add a                                         ; $6566: $87
    rlca                                          ; $6567: $07
    ld h, a                                       ; $6568: $67
    adc b                                         ; $6569: $88
    db $e3                                        ; $656a: $e3
    ld h, a                                       ; $656b: $67

jr_07d_656c:
    add a                                         ; $656c: $87
    rla                                           ; $656d: $17
    ld e, b                                       ; $656e: $58
    scf                                           ; $656f: $37
    rla                                           ; $6570: $17
    ld d, a                                       ; $6571: $57
    jr jr_07d_65cb                                ; $6572: $18 $57

    scf                                           ; $6574: $37
    rla                                           ; $6575: $17
    ld e, b                                       ; $6576: $58

jr_07d_6577:
    scf                                           ; $6577: $37
    rlca                                          ; $6578: $07
    scf                                           ; $6579: $37
    ld [$d0e3], sp                                ; $657a: $08 $e3 $d0
    ld bc, $40e5                                  ; $657d: $01 $e5 $40
    call c, $ea11                                 ; $6580: $dc $11 $ea
    add hl, bc                                    ; $6583: $09
    db $eb                                        ; $6584: $eb
    ld a, [hl+]                                   ; $6585: $2a
    add sp, $07                                   ; $6586: $e8 $07
    xor $11                                       ; $6588: $ee $11
    db $d3                                        ; $658a: $d3
    and $b0                                       ; $658b: $e6 $b0
    ld [c], a                                     ; $658d: $e2
    db $10                                        ; $658e: $10
    ld h, [hl]                                    ; $658f: $66
    rlca                                          ; $6590: $07
    and $80                                       ; $6591: $e6 $80
    db $d3                                        ; $6593: $d3
    ld c, $0e                                     ; $6594: $0e $0e
    ld c, $0e                                     ; $6596: $0e $0e
    ld d, $07                                     ; $6598: $16 $07
    add [hl]                                      ; $659a: $86
    rlca                                          ; $659b: $07
    add [hl]                                      ; $659c: $86
    or a                                          ; $659d: $b7
    ld b, $87                                     ; $659e: $06 $87
    and $b0                                       ; $65a0: $e6 $b0
    ld [c], a                                     ; $65a2: $e2
    db $10                                        ; $65a3: $10
    ld h, [hl]                                    ; $65a4: $66
    rlca                                          ; $65a5: $07
    and $80                                       ; $65a6: $e6 $80
    db $d3                                        ; $65a8: $d3
    cp [hl]                                       ; $65a9: $be
    reti                                          ; $65aa: $d9


    cp [hl]                                       ; $65ab: $be
    reti                                          ; $65ac: $d9


    cp [hl]                                       ; $65ad: $be
    reti                                          ; $65ae: $d9


    cp [hl]                                       ; $65af: $be
    reti                                          ; $65b0: $d9


    cp [hl]                                       ; $65b1: $be
    reti                                          ; $65b2: $d9


    cp [hl]                                       ; $65b3: $be
    reti                                          ; $65b4: $d9


    cp [hl]                                       ; $65b5: $be
    reti                                          ; $65b6: $d9


    cp [hl]                                       ; $65b7: $be
    and $b0                                       ; $65b8: $e6 $b0
    ld [c], a                                     ; $65ba: $e2
    inc hl                                        ; $65bb: $23
    ld h, [hl]                                    ; $65bc: $66
    and $80                                       ; $65bd: $e6 $80
    db $d3                                        ; $65bf: $d3

jr_07d_65c0:
    ld l, [hl]                                    ; $65c0: $6e
    reti                                          ; $65c1: $d9


    ld l, [hl]                                    ; $65c2: $6e
    reti                                          ; $65c3: $d9


    ld l, [hl]                                    ; $65c4: $6e
    ld c, [hl]                                    ; $65c5: $4e
    reti                                          ; $65c6: $d9


    ld c, [hl]                                    ; $65c7: $4e
    reti                                          ; $65c8: $d9


    ld c, [hl]                                    ; $65c9: $4e
    reti                                          ; $65ca: $d9


jr_07d_65cb:
    ld c, [hl]                                    ; $65cb: $4e
    reti                                          ; $65cc: $d9


    ld c, [hl]                                    ; $65cd: $4e
    and $b0                                       ; $65ce: $e6 $b0
    ld [c], a                                     ; $65d0: $e2
    inc hl                                        ; $65d1: $23
    ld h, [hl]                                    ; $65d2: $66
    db $d3                                        ; $65d3: $d3
    ld c, $0e                                     ; $65d4: $0e $0e
    ld c, $0e                                     ; $65d6: $0e $0e
    ld c, $0e                                     ; $65d8: $0e $0e
    ld b, $47                                     ; $65da: $06 $47
    ld [hl], $27                                  ; $65dc: $36 $27
    and $c0                                       ; $65de: $e6 $c0
    ld e, $d9                                     ; $65e0: $1e $d9
    ld e, $4e                                     ; $65e2: $1e $4e
    reti                                          ; $65e4: $d9


    ld c, [hl]                                    ; $65e5: $4e
    ld a, $d9                                     ; $65e6: $3e $d9
    ld a, $d8                                     ; $65e8: $3e $d8
    sbc [hl]                                      ; $65ea: $9e
    reti                                          ; $65eb: $d9


    sbc [hl]                                      ; $65ec: $9e
    adc [hl]                                      ; $65ed: $8e
    reti                                          ; $65ee: $d9


    adc [hl]                                      ; $65ef: $8e
    rst $10                                       ; $65f0: $d7
    ld l, $d9                                     ; $65f1: $2e $d9
    ld l, $19                                     ; $65f3: $2e $19
    ld a, c                                       ; $65f5: $79
    ld l, c                                       ; $65f6: $69
    ld e, c                                       ; $65f7: $59
    ret                                           ; $65f8: $c9


    cp c                                          ; $65f9: $b9
    xor c                                         ; $65fa: $a9
    add hl, bc                                    ; $65fb: $09
    ld c, c                                       ; $65fc: $49
    add hl, bc                                    ; $65fd: $09
    ret c                                         ; $65fe: $d8

    ret                                           ; $65ff: $c9


    add hl, bc                                    ; $6600: $09
    cp c                                          ; $6601: $b9
    add hl, bc                                    ; $6602: $09
    xor c                                         ; $6603: $a9
    add hl, bc                                    ; $6604: $09
    sbc c                                         ; $6605: $99
    add hl, bc                                    ; $6606: $09
    rst $18                                       ; $6607: $df
    ld [bc], a                                    ; $6608: $02
    ld c, $0e                                     ; $6609: $0e $0e
    ld c, $0e                                     ; $660b: $0e $0e
    ldh [$de], a                                  ; $660d: $e0 $de
    rst $38                                       ; $660f: $ff
    db $d3                                        ; $6610: $d3
    ld e, $d7                                     ; $6611: $1e $d7
    ld d, $d8                                     ; $6613: $16 $d8
    rlca                                          ; $6615: $07
    ret c                                         ; $6616: $d8

    xor [hl]                                      ; $6617: $ae
    rst $10                                       ; $6618: $d7
    and [hl]                                      ; $6619: $a6
    ret c                                         ; $661a: $d8

    rlca                                          ; $661b: $07
    cp [hl]                                       ; $661c: $be
    rst $10                                       ; $661d: $d7
    or [hl]                                       ; $661e: $b6
    rlca                                          ; $661f: $07
    ld c, $06                                     ; $6620: $0e $06
    db $e3                                        ; $6622: $e3
    jp nc, $d76e                                  ; $6623: $d2 $6e $d7

    ld h, [hl]                                    ; $6626: $66
    ret c                                         ; $6627: $d8

    rlca                                          ; $6628: $07
    ld a, $d7                                     ; $6629: $3e $d7
    ld [hl], $d8                                  ; $662b: $36 $d8
    rlca                                          ; $662d: $07
    ld c, [hl]                                    ; $662e: $4e
    rst $10                                       ; $662f: $d7
    ld b, [hl]                                    ; $6630: $46
    rlca                                          ; $6631: $07
    ld c, $0e                                     ; $6632: $0e $0e
    db $e3                                        ; $6634: $e3
    ret nc                                        ; $6635: $d0

    ld bc, $09ea                                  ; $6636: $01 $ea $09
    db $eb                                        ; $6639: $eb
    ld a, [hl+]                                   ; $663a: $2a
    call c, $ee11                                 ; $663b: $dc $11 $ee
    ld de, $e8d3                                  ; $663e: $11 $d3 $e8
    rlca                                          ; $6641: $07
    push hl                                       ; $6642: $e5
    ld b, b                                       ; $6643: $40
    and $70                                       ; $6644: $e6 $70
    db $e4                                        ; $6646: $e4
    cp $07                                        ; $6647: $fe $07
    ld [c], a                                     ; $6649: $e2
    db $10                                        ; $664a: $10
    ld h, [hl]                                    ; $664b: $66
    and $90                                       ; $664c: $e6 $90
    call nc, Call_000_0e0e                        ; $664e: $d4 $0e $0e
    ld c, $0e                                     ; $6651: $0e $0e
    ld c, $16                                     ; $6653: $0e $16
    rlca                                          ; $6655: $07
    ld d, $07                                     ; $6656: $16 $07
    ld c, $e6                                     ; $6658: $0e $e6
    ld [hl], b                                    ; $665a: $70
    rlca                                          ; $665b: $07
    ld [c], a                                     ; $665c: $e2
    db $10                                        ; $665d: $10
    ld h, [hl]                                    ; $665e: $66
    db $e4                                        ; $665f: $e4
    nop                                           ; $6660: $00
    and $80                                       ; $6661: $e6 $80
    db $d3                                        ; $6663: $d3
    ld e, $d9                                     ; $6664: $1e $d9
    ld e, $d9                                     ; $6666: $1e $d9
    ld e, $d9                                     ; $6668: $1e $d9
    ld e, $d9                                     ; $666a: $1e $d9
    ld e, $d9                                     ; $666c: $1e $d9
    ld e, $d9                                     ; $666e: $1e $d9
    ld e, $d9                                     ; $6670: $1e $d9
    ld e, $e6                                     ; $6672: $1e $e6
    sub b                                         ; $6674: $90
    ld [c], a                                     ; $6675: $e2
    add hl, de                                    ; $6676: $19
    ld h, a                                       ; $6677: $67
    pop de                                        ; $6678: $d1
    ld c, $c0                                     ; $6679: $0e $c0
    rst $10                                       ; $667b: $d7
    ld de, $5131                                  ; $667c: $11 $31 $51
    ld h, c                                       ; $667f: $61
    add c                                         ; $6680: $81
    and c                                         ; $6681: $a1
    pop bc                                        ; $6682: $c1
    and $80                                       ; $6683: $e6 $80
    db $d3                                        ; $6685: $d3
    ld e, $d9                                     ; $6686: $1e $d9
    ld e, $d9                                     ; $6688: $1e $d9
    ld e, $d8                                     ; $668a: $1e $d8
    cp [hl]                                       ; $668c: $be
    reti                                          ; $668d: $d9


    cp [hl]                                       ; $668e: $be
    reti                                          ; $668f: $d9


    cp [hl]                                       ; $6690: $be
    reti                                          ; $6691: $d9


    cp [hl]                                       ; $6692: $be
    reti                                          ; $6693: $d9


    cp [hl]                                       ; $6694: $be
    and $90                                       ; $6695: $e6 $90
    ld [c], a                                     ; $6697: $e2
    add hl, de                                    ; $6698: $19
    ld h, a                                       ; $6699: $67
    ld c, $0e                                     ; $669a: $0e $0e
    jp nc, Jump_000_0e0e                          ; $669c: $d2 $0e $0e

    ld c, $0e                                     ; $669f: $0e $0e
    ld c, $0e                                     ; $66a1: $0e $0e
    ld b, $77                                     ; $66a3: $06 $77
    ld h, [hl]                                    ; $66a5: $66
    ld d, a                                       ; $66a6: $57
    ld c, [hl]                                    ; $66a7: $4e
    reti                                          ; $66a8: $d9


    ld c, [hl]                                    ; $66a9: $4e
    ld a, [hl]                                    ; $66aa: $7e
    reti                                          ; $66ab: $d9


    ld a, [hl]                                    ; $66ac: $7e
    ld l, [hl]                                    ; $66ad: $6e
    reti                                          ; $66ae: $d9


    ld l, [hl]                                    ; $66af: $6e
    ret c                                         ; $66b0: $d8

    adc $d9                                       ; $66b1: $ce $d9
    adc $be                                       ; $66b3: $ce $be
    reti                                          ; $66b5: $d9


    cp [hl]                                       ; $66b6: $be
    rst $10                                       ; $66b7: $d7
    ld e, [hl]                                    ; $66b8: $5e
    reti                                          ; $66b9: $d9


    ld e, [hl]                                    ; $66ba: $5e
    ld c, c                                       ; $66bb: $49
    xor c                                         ; $66bc: $a9
    sbc c                                         ; $66bd: $99
    adc c                                         ; $66be: $89
    rst $10                                       ; $66bf: $d7
    add hl, sp                                    ; $66c0: $39
    add hl, hl                                    ; $66c1: $29
    push hl                                       ; $66c2: $e5
    add b                                         ; $66c3: $80
    and $b0                                       ; $66c4: $e6 $b0
    jp nc, $a352                                  ; $66c6: $d2 $52 $a3

    rst $10                                       ; $66c9: $d7
    inc sp                                        ; $66ca: $33
    ret c                                         ; $66cb: $d8

    ld h, e                                       ; $66cc: $63
    or d                                          ; $66cd: $b2
    rst $10                                       ; $66ce: $d7
    ld b, e                                       ; $66cf: $43
    ret c                                         ; $66d0: $d8

    ld [hl], e                                    ; $66d1: $73
    jp Jump_07d_52d7                              ; $66d2: $c3 $d7 $52


    ret c                                         ; $66d5: $d8

    add e                                         ; $66d6: $83
    rst $10                                       ; $66d7: $d7
    inc de                                        ; $66d8: $13
    ld h, e                                       ; $66d9: $63

jr_07d_66da:
    ret c                                         ; $66da: $d8

    sub d                                         ; $66db: $92
    rst $10                                       ; $66dc: $d7
    inc hl                                        ; $66dd: $23
    ld [hl], e                                    ; $66de: $73
    ret c                                         ; $66df: $d8

    and e                                         ; $66e0: $a3
    rst $10                                       ; $66e1: $d7
    ld [hl-], a                                   ; $66e2: $32
    add e                                         ; $66e3: $83
    ret c                                         ; $66e4: $d8

    or e                                          ; $66e5: $b3
    rst $10                                       ; $66e6: $d7
    ld b, e                                       ; $66e7: $43
    sub d                                         ; $66e8: $92
    ret c                                         ; $66e9: $d8

    jp $53d7                                      ; $66ea: $c3 $d7 $53


    and e                                         ; $66ed: $a3
    ld [de], a                                    ; $66ee: $12
    ld h, e                                       ; $66ef: $63
    or e                                          ; $66f0: $b3
    inc hl                                        ; $66f1: $23
    ld [hl], d                                    ; $66f2: $72
    jp $8333                                      ; $66f3: $c3 $33 $83


    rst $10                                       ; $66f6: $d7
    ld b, b                                       ; $66f7: $40
    ld hl, $c1d8                                  ; $66f8: $21 $d8 $c1
    and c                                         ; $66fb: $a1
    sub c                                         ; $66fc: $91
    ld [hl], c                                    ; $66fd: $71
    ld d, c                                       ; $66fe: $51
    ld b, c                                       ; $66ff: $41
    jr nz, jr_07d_66da                            ; $6700: $20 $d8

    pop bc                                        ; $6702: $c1
    and c                                         ; $6703: $a1
    sub c                                         ; $6704: $91
    ld [hl], c                                    ; $6705: $71
    ld d, c                                       ; $6706: $51
    ld b, c                                       ; $6707: $41
    ld hl, $c0d8                                  ; $6708: $21 $d8 $c0
    and c                                         ; $670b: $a1
    sub c                                         ; $670c: $91
    ld [hl], c                                    ; $670d: $71
    ld d, c                                       ; $670e: $51
    ld b, c                                       ; $670f: $41
    ld hl, $0e11                                  ; $6710: $21 $11 $0e
    ld c, $0e                                     ; $6713: $0e $0e
    ld c, $0e                                     ; $6715: $0e $0e
    sbc $ff                                       ; $6717: $de $ff
    jp nc, $d71e                                  ; $6719: $d2 $1e $d7

    ld d, $d8                                     ; $671c: $16 $d8
    rlca                                          ; $671e: $07
    ret c                                         ; $671f: $d8

    xor [hl]                                      ; $6720: $ae
    rst $10                                       ; $6721: $d7
    and [hl]                                      ; $6722: $a6
    ret c                                         ; $6723: $d8

    rlca                                          ; $6724: $07
    cp [hl]                                       ; $6725: $be
    rst $10                                       ; $6726: $d7
    or [hl]                                       ; $6727: $b6
    rlca                                          ; $6728: $07
    ret c                                         ; $6729: $d8

    db $e3                                        ; $672a: $e3
    ret nc                                        ; $672b: $d0

    ld bc, $01e7                                  ; $672c: $01 $e7 $01
    and $20                                       ; $672f: $e6 $20
    jp hl                                         ; $6731: $e9


    nop                                           ; $6732: $00
    call c, $e811                                 ; $6733: $dc $11 $e8
    rlca                                          ; $6736: $07
    jp nc, $bbe2                                  ; $6737: $d2 $e2 $bb

    ld h, a                                       ; $673a: $67
    pop de                                        ; $673b: $d1
    ld c, $0e                                     ; $673c: $0e $0e
    ld c, $0e                                     ; $673e: $0e $0e
    ld c, $0e                                     ; $6740: $0e $0e
    ld c, $b6                                     ; $6742: $0e $b6
    rst $00                                       ; $6744: $c7
    ld [c], a                                     ; $6745: $e2
    cp e                                          ; $6746: $bb
    ld h, a                                       ; $6747: $67
    and $40                                       ; $6748: $e6 $40
    db $d3                                        ; $674a: $d3
    ld l, [hl]                                    ; $674b: $6e
    reti                                          ; $674c: $d9


    ld l, [hl]                                    ; $674d: $6e
    reti                                          ; $674e: $d9


    ld l, [hl]                                    ; $674f: $6e
    reti                                          ; $6750: $d9


    ld l, [hl]                                    ; $6751: $6e
    reti                                          ; $6752: $d9


    ld l, [hl]                                    ; $6753: $6e
    reti                                          ; $6754: $d9


    ld l, [hl]                                    ; $6755: $6e
    reti                                          ; $6756: $d9


    ld l, [hl]                                    ; $6757: $6e
    ret c                                         ; $6758: $d8

    ret c                                         ; $6759: $d8

    and $20                                       ; $675a: $e6 $20
    ld l, [hl]                                    ; $675c: $6e
    ld [c], a                                     ; $675d: $e2
    adc $67                                       ; $675e: $ce $67
    and $40                                       ; $6760: $e6 $40
    jp nc, $d9ae                                  ; $6762: $d2 $ae $d9

    xor [hl]                                      ; $6765: $ae
    reti                                          ; $6766: $d9


    xor [hl]                                      ; $6767: $ae
    adc [hl]                                      ; $6768: $8e
    reti                                          ; $6769: $d9


    adc [hl]                                      ; $676a: $8e
    reti                                          ; $676b: $d9


    adc [hl]                                      ; $676c: $8e
    reti                                          ; $676d: $d9


    adc [hl]                                      ; $676e: $8e
    and $20                                       ; $676f: $e6 $20
    ret c                                         ; $6771: $d8

    ld h, [hl]                                    ; $6772: $66
    ld h, a                                       ; $6773: $67
    ld [c], a                                     ; $6774: $e2
    adc $67                                       ; $6775: $ce $67
    pop de                                        ; $6777: $d1
    ld c, $0e                                     ; $6778: $0e $0e
    ld c, $0e                                     ; $677a: $0e $0e
    ld c, $0e                                     ; $677c: $0e $0e
    sub [hl]                                      ; $677e: $96
    and a                                         ; $677f: $a7
    or [hl]                                       ; $6780: $b6
    rst $00                                       ; $6781: $c7
    rst $10                                       ; $6782: $d7
    ld e, $d9                                     ; $6783: $1e $d9
    ld e, $d9                                     ; $6785: $1e $d9
    ld e, $1e                                     ; $6787: $1e $1e
    ret c                                         ; $6789: $d8

    adc $d9                                       ; $678a: $ce $d9
    adc $d9                                       ; $678c: $ce $d9
    adc $ce                                       ; $678e: $ce $ce
    cp [hl]                                       ; $6790: $be
    reti                                          ; $6791: $d9


    cp [hl]                                       ; $6792: $be
    reti                                          ; $6793: $d9


    cp [hl]                                       ; $6794: $be
    cp [hl]                                       ; $6795: $be
    xor [hl]                                      ; $6796: $ae
    reti                                          ; $6797: $d9


    xor [hl]                                      ; $6798: $ae
    reti                                          ; $6799: $d9


    xor [hl]                                      ; $679a: $ae
    xor [hl]                                      ; $679b: $ae
    rst $10                                       ; $679c: $d7
    xor c                                         ; $679d: $a9
    add hl, bc                                    ; $679e: $09
    ld c, c                                       ; $679f: $49
    add hl, bc                                    ; $67a0: $09
    add hl, de                                    ; $67a1: $19
    add hl, bc                                    ; $67a2: $09
    ret c                                         ; $67a3: $d8

    cp c                                          ; $67a4: $b9
    rst $10                                       ; $67a5: $d7
    or h                                          ; $67a6: $b4
    inc b                                         ; $67a7: $04
    ret c                                         ; $67a8: $d8

    xor c                                         ; $67a9: $a9
    rst $10                                       ; $67aa: $d7
    and h                                         ; $67ab: $a4
    inc b                                         ; $67ac: $04
    ret c                                         ; $67ad: $d8

    sbc c                                         ; $67ae: $99
    rst $10                                       ; $67af: $d7
    sub h                                         ; $67b0: $94
    inc b                                         ; $67b1: $04
    rst $18                                       ; $67b2: $df
    ld [bc], a                                    ; $67b3: $02
    ld c, $0e                                     ; $67b4: $0e $0e
    ld c, $0e                                     ; $67b6: $0e $0e
    ldh [$de], a                                  ; $67b8: $e0 $de
    rst $38                                       ; $67ba: $ff
    jp nc, $d71e                                  ; $67bb: $d2 $1e $d7

    ld e, $d8                                     ; $67be: $1e $d8
    ret c                                         ; $67c0: $d8

    xor [hl]                                      ; $67c1: $ae
    rst $10                                       ; $67c2: $d7
    and [hl]                                      ; $67c3: $a6
    ret c                                         ; $67c4: $d8

    or a                                          ; $67c5: $b7
    reti                                          ; $67c6: $d9


    or [hl]                                       ; $67c7: $b6
    or a                                          ; $67c8: $b7
    rst $10                                       ; $67c9: $d7
    cp [hl]                                       ; $67ca: $be
    ld c, $0e                                     ; $67cb: $0e $0e
    db $e3                                        ; $67cd: $e3
    pop de                                        ; $67ce: $d1
    ld l, [hl]                                    ; $67cf: $6e
    rst $10                                       ; $67d0: $d7
    ld l, [hl]                                    ; $67d1: $6e
    ret c                                         ; $67d2: $d8

    ld a, $d7                                     ; $67d3: $3e $d7
    ld [hl], $d8                                  ; $67d5: $36 $d8
    ld b, a                                       ; $67d7: $47
    reti                                          ; $67d8: $d9


    ld b, [hl]                                    ; $67d9: $46
    ld b, a                                       ; $67da: $47
    rst $10                                       ; $67db: $d7
    ld c, [hl]                                    ; $67dc: $4e
    ld c, $0e                                     ; $67dd: $0e $0e
    db $e3                                        ; $67df: $e3
    ret nc                                        ; $67e0: $d0

    ld bc, $16d1                                  ; $67e1: $01 $d1 $16
    rlca                                          ; $67e4: $07
    ld c, $56                                     ; $67e5: $0e $56
    add a                                         ; $67e7: $87
    ld h, [hl]                                    ; $67e8: $66
    ld d, a                                       ; $67e9: $57
    ld a, $16                                     ; $67ea: $3e $16
    rla                                           ; $67ec: $17
    ld d, [hl]                                    ; $67ed: $56
    ld e, $57                                     ; $67ee: $1e $57
    ld [c], a                                     ; $67f0: $e2
    ld l, h                                       ; $67f1: $6c
    ld l, b                                       ; $67f2: $68
    ld d, $07                                     ; $67f3: $16 $07
    ld c, $56                                     ; $67f5: $0e $56
    add a                                         ; $67f7: $87
    ld h, [hl]                                    ; $67f8: $66
    ld d, a                                       ; $67f9: $57
    ld a, $16                                     ; $67fa: $3e $16
    rla                                           ; $67fc: $17
    ld d, [hl]                                    ; $67fd: $56
    ld e, $d7                                     ; $67fe: $1e $d7
    ld d, a                                       ; $6800: $57
    ret c                                         ; $6801: $d8

    ld d, $d7                                     ; $6802: $16 $d7
    ld e, [hl]                                    ; $6804: $5e
    ld d, a                                       ; $6805: $57
    ret c                                         ; $6806: $d8

    ld d, $b7                                     ; $6807: $16 $b7
    cp [hl]                                       ; $6809: $be
    ld a, $b6                                     ; $680a: $3e $b6
    rla                                           ; $680c: $17
    and [hl]                                      ; $680d: $a6
    rla                                           ; $680e: $17
    ld [hl], $17                                  ; $680f: $36 $17
    ld d, $07                                     ; $6811: $16 $07
    ld c, $56                                     ; $6813: $0e $56
    add a                                         ; $6815: $87
    ld h, [hl]                                    ; $6816: $66
    ld d, a                                       ; $6817: $57
    ld a, $16                                     ; $6818: $3e $16
    rla                                           ; $681a: $17
    ld d, [hl]                                    ; $681b: $56
    rla                                           ; $681c: $17
    ld c, $e2                                     ; $681d: $0e $e2
    ld l, h                                       ; $681f: $6c
    ld l, b                                       ; $6820: $68
    ld d, $07                                     ; $6821: $16 $07
    ld c, $56                                     ; $6823: $0e $56
    add a                                         ; $6825: $87
    ld h, [hl]                                    ; $6826: $66
    ld d, a                                       ; $6827: $57
    ld a, $16                                     ; $6828: $3e $16
    rla                                           ; $682a: $17
    rst $10                                       ; $682b: $d7
    ld d, [hl]                                    ; $682c: $56
    ret c                                         ; $682d: $d8

    rla                                           ; $682e: $17
    rst $10                                       ; $682f: $d7
    ld d, [hl]                                    ; $6830: $56
    ld d, a                                       ; $6831: $57
    ret c                                         ; $6832: $d8

    ld d, $d7                                     ; $6833: $16 $d7
    ld d, a                                       ; $6835: $57
    ld e, [hl]                                    ; $6836: $5e
    ld e, [hl]                                    ; $6837: $5e
    ret c                                         ; $6838: $d8

    cp [hl]                                       ; $6839: $be
    ld [hl], $b7                                  ; $683a: $36 $b7
    ld d, $a7                                     ; $683c: $16 $a7
    ld [hl], $a7                                  ; $683e: $36 $a7
    ld [hl], $17                                  ; $6840: $36 $17
    ret nc                                        ; $6842: $d0

    inc a                                         ; $6843: $3c
    ret nz                                        ; $6844: $c0

    ret nc                                        ; $6845: $d0

    ld bc, $3919                                  ; $6846: $01 $19 $39
    add hl, sp                                    ; $6849: $39
    add hl, sp                                    ; $684a: $39
    add hl, de                                    ; $684b: $19
    add hl, sp                                    ; $684c: $39
    add hl, de                                    ; $684d: $19
    cp c                                          ; $684e: $b9
    cp c                                          ; $684f: $b9
    cp c                                          ; $6850: $b9
    xor c                                         ; $6851: $a9
    xor c                                         ; $6852: $a9
    add hl, de                                    ; $6853: $19
    add hl, de                                    ; $6854: $19
    add hl, de                                    ; $6855: $19
    add hl, sp                                    ; $6856: $39
    add hl, sp                                    ; $6857: $39
    add hl, de                                    ; $6858: $19
    ret nc                                        ; $6859: $d0

    ld e, $c1                                     ; $685a: $1e $c1
    pop bc                                        ; $685c: $c1
    ret nz                                        ; $685d: $c0

    ret nc                                        ; $685e: $d0

    ld bc, $6756                                  ; $685f: $01 $56 $67
    add [hl]                                      ; $6862: $86
    ld d, a                                       ; $6863: $57
    ld a, $16                                     ; $6864: $3e $16
    rla                                           ; $6866: $17
    ld [hl], $3e                                  ; $6867: $36 $3e
    scf                                           ; $6869: $37
    sbc $ff                                       ; $686a: $de $ff
    ld d, $07                                     ; $686c: $16 $07
    ld c, $56                                     ; $686e: $0e $56
    add a                                         ; $6870: $87
    ld h, [hl]                                    ; $6871: $66
    ld d, a                                       ; $6872: $57
    ld a, $16                                     ; $6873: $3e $16
    rla                                           ; $6875: $17
    or [hl]                                       ; $6876: $b6
    rla                                           ; $6877: $17
    ld [hl], $17                                  ; $6878: $36 $17
    db $e3                                        ; $687a: $e3

    db $d0, $01, $dc, $11, $e5, $80, $e6, $b0, $e8, $07, $ea, $01, $eb, $23, $d4, $e2
    db $8d, $69

    db $d3                                        ; $688d: $d3
    add hl, sp                                    ; $688e: $39
    reti                                          ; $688f: $d9


    ld a, [hl-]                                   ; $6890: $3a
    ld e, c                                       ; $6891: $59
    reti                                          ; $6892: $d9


    ld e, d                                       ; $6893: $5a
    ld a, c                                       ; $6894: $79
    reti                                          ; $6895: $d9


    ld a, d                                       ; $6896: $7a
    xor c                                         ; $6897: $a9
    reti                                          ; $6898: $d9


    xor d                                         ; $6899: $aa
    sbc c                                         ; $689a: $99
    reti                                          ; $689b: $d9


    sbc d                                         ; $689c: $9a
    ld a, c                                       ; $689d: $79
    reti                                          ; $689e: $d9


    ld a, d                                       ; $689f: $7a
    ld e, c                                       ; $68a0: $59
    reti                                          ; $68a1: $d9


    ld e, d                                       ; $68a2: $5a
    add hl, sp                                    ; $68a3: $39
    reti                                          ; $68a4: $d9


    ld a, [hl-]                                   ; $68a5: $3a
    add hl, sp                                    ; $68a6: $39
    reti                                          ; $68a7: $d9


    ld a, [hl-]                                   ; $68a8: $3a
    reti                                          ; $68a9: $d9


    add hl, sp                                    ; $68aa: $39
    reti                                          ; $68ab: $d9


    ld a, [hl-]                                   ; $68ac: $3a
    reti                                          ; $68ad: $d9


    add hl, sp                                    ; $68ae: $39
    reti                                          ; $68af: $d9


    ld a, [hl-]                                   ; $68b0: $3a
    add hl, hl                                    ; $68b1: $29
    ld a, [hl-]                                   ; $68b2: $3a
    add hl, hl                                    ; $68b3: $29
    reti                                          ; $68b4: $d9


    ld a, [hl+]                                   ; $68b5: $2a
    reti                                          ; $68b6: $d9


    add hl, hl                                    ; $68b7: $29
    reti                                          ; $68b8: $d9


    ld a, [hl+]                                   ; $68b9: $2a
    reti                                          ; $68ba: $d9


    add hl, hl                                    ; $68bb: $29
    reti                                          ; $68bc: $d9


    ld a, [hl+]                                   ; $68bd: $2a
    reti                                          ; $68be: $d9


    add hl, hl                                    ; $68bf: $29
    reti                                          ; $68c0: $d9


    ld a, [hl+]                                   ; $68c1: $2a
    ld [c], a                                     ; $68c2: $e2
    adc l                                         ; $68c3: $8d
    ld l, c                                       ; $68c4: $69
    db $d3                                        ; $68c5: $d3
    add hl, sp                                    ; $68c6: $39
    reti                                          ; $68c7: $d9


    ld a, [hl-]                                   ; $68c8: $3a
    ld e, c                                       ; $68c9: $59
    reti                                          ; $68ca: $d9


    ld e, d                                       ; $68cb: $5a
    ld a, c                                       ; $68cc: $79
    reti                                          ; $68cd: $d9


    ld a, d                                       ; $68ce: $7a
    xor c                                         ; $68cf: $a9
    reti                                          ; $68d0: $d9


    xor d                                         ; $68d1: $aa
    sbc c                                         ; $68d2: $99
    reti                                          ; $68d3: $d9


    sbc d                                         ; $68d4: $9a
    ld a, c                                       ; $68d5: $79
    reti                                          ; $68d6: $d9


    ld a, d                                       ; $68d7: $7a
    sbc c                                         ; $68d8: $99
    reti                                          ; $68d9: $d9


    sbc d                                         ; $68da: $9a
    reti                                          ; $68db: $d9


    sbc c                                         ; $68dc: $99
    reti                                          ; $68dd: $d9


    sbc d                                         ; $68de: $9a
    xor c                                         ; $68df: $a9
    reti                                          ; $68e0: $d9


    xor d                                         ; $68e1: $aa
    reti                                          ; $68e2: $d9


    xor c                                         ; $68e3: $a9
    reti                                          ; $68e4: $d9


    xor d                                         ; $68e5: $aa
    ld e, c                                       ; $68e6: $59
    reti                                          ; $68e7: $d9


    ld e, d                                       ; $68e8: $5a
    reti                                          ; $68e9: $d9


    ld e, c                                       ; $68ea: $59
    reti                                          ; $68eb: $d9


    ld e, d                                       ; $68ec: $5a
    xor c                                         ; $68ed: $a9
    reti                                          ; $68ee: $d9


    xor d                                         ; $68ef: $aa
    reti                                          ; $68f0: $d9


    xor c                                         ; $68f1: $a9
    reti                                          ; $68f2: $d9


    xor d                                         ; $68f3: $aa
    reti                                          ; $68f4: $d9


    xor c                                         ; $68f5: $a9
    reti                                          ; $68f6: $d9


    xor d                                         ; $68f7: $aa
    reti                                          ; $68f8: $d9


    xor c                                         ; $68f9: $a9
    reti                                          ; $68fa: $d9


    xor d                                         ; $68fb: $aa
    ld [c], a                                     ; $68fc: $e2
    ld sp, $d36a                                  ; $68fd: $31 $6a $d3
    xor c                                         ; $6900: $a9
    reti                                          ; $6901: $d9


    xor d                                         ; $6902: $aa
    reti                                          ; $6903: $d9


    xor c                                         ; $6904: $a9
    reti                                          ; $6905: $d9


    xor d                                         ; $6906: $aa
    reti                                          ; $6907: $d9


    xor c                                         ; $6908: $a9
    reti                                          ; $6909: $d9


    xor d                                         ; $690a: $aa
    ld e, c                                       ; $690b: $59
    reti                                          ; $690c: $d9


    ld e, d                                       ; $690d: $5a
    reti                                          ; $690e: $d9


    ld e, c                                       ; $690f: $59
    reti                                          ; $6910: $d9


    ld e, d                                       ; $6911: $5a
    reti                                          ; $6912: $d9


    ld e, c                                       ; $6913: $59
    reti                                          ; $6914: $d9


    ld e, d                                       ; $6915: $5a
    reti                                          ; $6916: $d9


    ld e, c                                       ; $6917: $59
    reti                                          ; $6918: $d9


    ld e, d                                       ; $6919: $5a
    reti                                          ; $691a: $d9


    ld e, c                                       ; $691b: $59
    reti                                          ; $691c: $d9


    ld e, d                                       ; $691d: $5a
    ld [c], a                                     ; $691e: $e2
    ld sp, $a96a                                  ; $691f: $31 $6a $a9
    reti                                          ; $6922: $d9


    xor d                                         ; $6923: $aa
    reti                                          ; $6924: $d9


    xor c                                         ; $6925: $a9
    reti                                          ; $6926: $d9


    xor d                                         ; $6927: $aa
    reti                                          ; $6928: $d9


    xor c                                         ; $6929: $a9
    reti                                          ; $692a: $d9


    xor d                                         ; $692b: $aa
    reti                                          ; $692c: $d9


    xor c                                         ; $692d: $a9
    reti                                          ; $692e: $d9


    xor d                                         ; $692f: $aa
    reti                                          ; $6930: $d9


    xor c                                         ; $6931: $a9
    reti                                          ; $6932: $d9


    xor d                                         ; $6933: $aa
    reti                                          ; $6934: $d9


    xor c                                         ; $6935: $a9
    reti                                          ; $6936: $d9


    xor d                                         ; $6937: $aa
    reti                                          ; $6938: $d9


    xor c                                         ; $6939: $a9
    reti                                          ; $693a: $d9


    xor d                                         ; $693b: $aa
    reti                                          ; $693c: $d9


    xor c                                         ; $693d: $a9
    reti                                          ; $693e: $d9


    xor d                                         ; $693f: $aa
    ld [c], a                                     ; $6940: $e2
    ld sp, $a96a                                  ; $6941: $31 $6a $a9
    reti                                          ; $6944: $d9


    xor d                                         ; $6945: $aa
    reti                                          ; $6946: $d9


    xor c                                         ; $6947: $a9
    reti                                          ; $6948: $d9


    xor d                                         ; $6949: $aa
    reti                                          ; $694a: $d9


    xor c                                         ; $694b: $a9
    reti                                          ; $694c: $d9


    xor d                                         ; $694d: $aa
    ld e, c                                       ; $694e: $59
    reti                                          ; $694f: $d9


    ld e, d                                       ; $6950: $5a
    reti                                          ; $6951: $d9


    ld e, c                                       ; $6952: $59
    reti                                          ; $6953: $d9


    ld e, d                                       ; $6954: $5a
    reti                                          ; $6955: $d9


    ld e, c                                       ; $6956: $59
    reti                                          ; $6957: $d9


    ld e, d                                       ; $6958: $5a
    reti                                          ; $6959: $d9


    ld e, c                                       ; $695a: $59
    reti                                          ; $695b: $d9


    ld e, d                                       ; $695c: $5a
    reti                                          ; $695d: $d9


    ld e, c                                       ; $695e: $59
    reti                                          ; $695f: $d9


    ld e, d                                       ; $6960: $5a
    ld [c], a                                     ; $6961: $e2
    ld c, l                                       ; $6962: $4d
    ld l, d                                       ; $6963: $6a
    adc c                                         ; $6964: $89
    ld a, [bc]                                    ; $6965: $0a
    cp c                                          ; $6966: $b9
    ld a, [bc]                                    ; $6967: $0a
    cp c                                          ; $6968: $b9
    adc d                                         ; $6969: $8a
    add hl, bc                                    ; $696a: $09
    rst $10                                       ; $696b: $d7
    ld a, [hl-]                                   ; $696c: $3a
    add hl, bc                                    ; $696d: $09
    ld a, [hl-]                                   ; $696e: $3a
    ret c                                         ; $696f: $d8

    cp c                                          ; $6970: $b9
    ld a, [bc]                                    ; $6971: $0a
    adc c                                         ; $6972: $89
    ld a, [bc]                                    ; $6973: $0a
    cp c                                          ; $6974: $b9
    ld a, [bc]                                    ; $6975: $0a
    ld [c], a                                     ; $6976: $e2
    ld c, l                                       ; $6977: $4d
    ld l, d                                       ; $6978: $6a
    ld l, c                                       ; $6979: $69
    ld a, [bc]                                    ; $697a: $0a
    sbc c                                         ; $697b: $99
    ld a, [bc]                                    ; $697c: $0a
    sbc c                                         ; $697d: $99
    ld l, d                                       ; $697e: $6a
    add hl, bc                                    ; $697f: $09
    rst $10                                       ; $6980: $d7
    ld a, [de]                                    ; $6981: $1a
    add hl, bc                                    ; $6982: $09
    ld a, [de]                                    ; $6983: $1a
    ret c                                         ; $6984: $d8

    sbc c                                         ; $6985: $99
    ld a, [bc]                                    ; $6986: $0a
    ld l, c                                       ; $6987: $69
    ld a, [bc]                                    ; $6988: $0a
    sbc c                                         ; $6989: $99
    ld a, [bc]                                    ; $698a: $0a
    sbc $ff                                       ; $698b: $de $ff

    db $d4, $d8, $c4, $d7, $24, $d9, $2a, $d9, $29, $d9, $2a, $d9, $29, $0a, $39, $5a
    db $39, $d9, $3a, $29, $d9, $2a, $d8, $c9, $d9, $ca, $a9, $d9, $aa, $c9, $d9, $ca
    db $d9, $c9, $d9, $ca, $d9, $c9, $d9, $ca, $59, $d9, $5a, $59, $d9, $5a, $d9, $59
    db $d9, $5a, $d9, $59, $d9, $5a, $d9, $59, $d9, $5a, $79, $d9, $7a, $d9, $79, $d9
    db $7a, $d9, $79, $d9, $7a, $99, $aa, $c9, $d9, $ca, $a9, $d9, $aa, $99, $d9, $9a
    db $a9, $d9, $aa, $a9, $d9, $aa, $d9, $a9, $d9, $aa, $d9, $a9, $d9, $aa, $99, $aa
    db $99, $d9

    sbc d                                         ; $69ef: $9a
    reti                                          ; $69f0: $d9


    sbc c                                         ; $69f1: $99
    reti                                          ; $69f2: $d9


    sbc d                                         ; $69f3: $9a
    reti                                          ; $69f4: $d9


    sbc c                                         ; $69f5: $99
    reti                                          ; $69f6: $d9


    sbc d                                         ; $69f7: $9a
    reti                                          ; $69f8: $d9


    sbc c                                         ; $69f9: $99
    reti                                          ; $69fa: $d9


    sbc d                                         ; $69fb: $9a
    ld a, c                                       ; $69fc: $79
    reti                                          ; $69fd: $d9


    ld a, d                                       ; $69fe: $7a
    ld e, c                                       ; $69ff: $59
    reti                                          ; $6a00: $d9


    ld e, d                                       ; $6a01: $5a
    ld a, c                                       ; $6a02: $79
    reti                                          ; $6a03: $d9


    ld a, d                                       ; $6a04: $7a
    sbc c                                         ; $6a05: $99
    reti                                          ; $6a06: $d9


    sbc d                                         ; $6a07: $9a
    xor c                                         ; $6a08: $a9
    reti                                          ; $6a09: $d9


    xor d                                         ; $6a0a: $aa
    reti                                          ; $6a0b: $d9


    xor c                                         ; $6a0c: $a9
    reti                                          ; $6a0d: $d9


    xor d                                         ; $6a0e: $aa
    ld e, c                                       ; $6a0f: $59
    reti                                          ; $6a10: $d9


    ld e, d                                       ; $6a11: $5a
    reti                                          ; $6a12: $d9


    ld e, c                                       ; $6a13: $59
    reti                                          ; $6a14: $d9


    ld e, d                                       ; $6a15: $5a
    xor c                                         ; $6a16: $a9
    reti                                          ; $6a17: $d9


    xor d                                         ; $6a18: $aa
    sbc c                                         ; $6a19: $99
    reti                                          ; $6a1a: $d9


    sbc d                                         ; $6a1b: $9a
    ld a, c                                       ; $6a1c: $79
    reti                                          ; $6a1d: $d9


    ld a, d                                       ; $6a1e: $7a
    sbc c                                         ; $6a1f: $99
    reti                                          ; $6a20: $d9


    sbc d                                         ; $6a21: $9a
    xor c                                         ; $6a22: $a9
    reti                                          ; $6a23: $d9


    xor d                                         ; $6a24: $aa
    reti                                          ; $6a25: $d9


    xor c                                         ; $6a26: $a9
    reti                                          ; $6a27: $d9


    xor d                                         ; $6a28: $aa
    ld e, c                                       ; $6a29: $59
    reti                                          ; $6a2a: $d9


    ld e, d                                       ; $6a2b: $5a
    reti                                          ; $6a2c: $d9


    ld e, c                                       ; $6a2d: $59
    reti                                          ; $6a2e: $d9


    ld e, d                                       ; $6a2f: $5a
    db $e3                                        ; $6a30: $e3
    db $d3                                        ; $6a31: $d3
    ld a, c                                       ; $6a32: $79
    sbc d                                         ; $6a33: $9a
    xor c                                         ; $6a34: $a9
    reti                                          ; $6a35: $d9


    xor d                                         ; $6a36: $aa
    reti                                          ; $6a37: $d9


    xor c                                         ; $6a38: $a9
    reti                                          ; $6a39: $d9


    xor d                                         ; $6a3a: $aa
    rst $10                                       ; $6a3b: $d7
    add hl, sp                                    ; $6a3c: $39
    reti                                          ; $6a3d: $d9


    ld a, [hl-]                                   ; $6a3e: $3a
    add hl, hl                                    ; $6a3f: $29
    reti                                          ; $6a40: $d9


    ld a, [hl+]                                   ; $6a41: $2a
    ret c                                         ; $6a42: $d8

    ret                                           ; $6a43: $c9


    reti                                          ; $6a44: $d9


    jp z, $d9a9                                   ; $6a45: $ca $a9 $d9

    xor d                                         ; $6a48: $aa
    sbc c                                         ; $6a49: $99
    reti                                          ; $6a4a: $d9


    sbc d                                         ; $6a4b: $9a
    db $e3                                        ; $6a4c: $e3
    db $d3                                        ; $6a4d: $d3
    ld l, c                                       ; $6a4e: $69
    ld a, [bc]                                    ; $6a4f: $0a
    xor c                                         ; $6a50: $a9
    ld a, [bc]                                    ; $6a51: $0a
    xor c                                         ; $6a52: $a9
    ld l, d                                       ; $6a53: $6a
    add hl, bc                                    ; $6a54: $09
    rst $10                                       ; $6a55: $d7
    ld a, [de]                                    ; $6a56: $1a
    add hl, bc                                    ; $6a57: $09
    ld a, [de]                                    ; $6a58: $1a
    ret c                                         ; $6a59: $d8

    xor c                                         ; $6a5a: $a9
    ld a, [bc]                                    ; $6a5b: $0a
    ld l, c                                       ; $6a5c: $69
    ld a, [bc]                                    ; $6a5d: $0a
    xor c                                         ; $6a5e: $a9
    ld a, [bc]                                    ; $6a5f: $0a
    db $e3                                        ; $6a60: $e3

    db $d0, $01, $dc, $11, $e8, $07, $ea, $01, $eb, $23, $d3, $e5, $80, $e6, $90, $e2
    db $2e, $6b

    jp nc, $d9a9                                  ; $6a73: $d2 $a9 $d9

    xor d                                         ; $6a76: $aa
    reti                                          ; $6a77: $d9


    xor c                                         ; $6a78: $a9
    reti                                          ; $6a79: $d9


    xor d                                         ; $6a7a: $aa
    reti                                          ; $6a7b: $d9


    xor c                                         ; $6a7c: $a9
    reti                                          ; $6a7d: $d9


    xor d                                         ; $6a7e: $aa
    xor c                                         ; $6a7f: $a9
    xor d                                         ; $6a80: $aa
    xor c                                         ; $6a81: $a9
    reti                                          ; $6a82: $d9


    xor d                                         ; $6a83: $aa
    reti                                          ; $6a84: $d9


    xor c                                         ; $6a85: $a9
    reti                                          ; $6a86: $d9


    xor d                                         ; $6a87: $aa
    reti                                          ; $6a88: $d9


    xor c                                         ; $6a89: $a9
    reti                                          ; $6a8a: $d9


    xor d                                         ; $6a8b: $aa
    reti                                          ; $6a8c: $d9


    xor c                                         ; $6a8d: $a9
    reti                                          ; $6a8e: $d9


    xor d                                         ; $6a8f: $aa
    ld [c], a                                     ; $6a90: $e2
    ld l, $6b                                     ; $6a91: $2e $6b
    db $d3                                        ; $6a93: $d3
    ld e, c                                       ; $6a94: $59
    reti                                          ; $6a95: $d9


    ld e, d                                       ; $6a96: $5a
    reti                                          ; $6a97: $d9


    ld e, c                                       ; $6a98: $59
    reti                                          ; $6a99: $d9


    ld e, d                                       ; $6a9a: $5a
    ret c                                         ; $6a9b: $d8

    xor c                                         ; $6a9c: $a9
    reti                                          ; $6a9d: $d9


    xor d                                         ; $6a9e: $aa
    reti                                          ; $6a9f: $d9


    xor c                                         ; $6aa0: $a9
    reti                                          ; $6aa1: $d9


    xor d                                         ; $6aa2: $aa
    rst $10                                       ; $6aa3: $d7
    ld e, c                                       ; $6aa4: $59
    reti                                          ; $6aa5: $d9


    ld e, d                                       ; $6aa6: $5a
    reti                                          ; $6aa7: $d9


    ld e, c                                       ; $6aa8: $59
    reti                                          ; $6aa9: $d9


    ld e, d                                       ; $6aaa: $5a
    reti                                          ; $6aab: $d9


    ld e, c                                       ; $6aac: $59
    reti                                          ; $6aad: $d9


    ld e, d                                       ; $6aae: $5a
    reti                                          ; $6aaf: $d9


    ld e, c                                       ; $6ab0: $59
    reti                                          ; $6ab1: $d9


    ld e, d                                       ; $6ab2: $5a
    ret c                                         ; $6ab3: $d8

    push hl                                       ; $6ab4: $e5
    nop                                           ; $6ab5: $00
    and $93                                       ; $6ab6: $e6 $93
    rst $18                                       ; $6ab8: $df
    inc bc                                        ; $6ab9: $03
    add hl, sp                                    ; $6aba: $39
    ld a, d                                       ; $6abb: $7a
    xor c                                         ; $6abc: $a9
    rst $10                                       ; $6abd: $d7
    ld a, [hl-]                                   ; $6abe: $3a
    ret c                                         ; $6abf: $d8

    xor c                                         ; $6ac0: $a9
    ld a, d                                       ; $6ac1: $7a
    add hl, sp                                    ; $6ac2: $39
    ld a, d                                       ; $6ac3: $7a
    xor c                                         ; $6ac4: $a9
    rst $10                                       ; $6ac5: $d7
    ld a, [hl-]                                   ; $6ac6: $3a
    ret c                                         ; $6ac7: $d8

    xor c                                         ; $6ac8: $a9
    ld a, d                                       ; $6ac9: $7a
    add hl, sp                                    ; $6aca: $39
    ld a, d                                       ; $6acb: $7a
    xor c                                         ; $6acc: $a9
    rst $10                                       ; $6acd: $d7
    ld a, [hl-]                                   ; $6ace: $3a
    ret c                                         ; $6acf: $d8

    ret c                                         ; $6ad0: $d8

    xor c                                         ; $6ad1: $a9
    rst $10                                       ; $6ad2: $d7
    ld a, [hl+]                                   ; $6ad3: $2a
    ld e, c                                       ; $6ad4: $59
    xor d                                         ; $6ad5: $aa
    ld e, c                                       ; $6ad6: $59
    ld a, [hl+]                                   ; $6ad7: $2a
    ret c                                         ; $6ad8: $d8

    xor c                                         ; $6ad9: $a9
    rst $10                                       ; $6ada: $d7
    ld a, [hl-]                                   ; $6adb: $3a
    ld e, c                                       ; $6adc: $59
    xor d                                         ; $6add: $aa
    ld e, c                                       ; $6ade: $59
    ld a, [hl+]                                   ; $6adf: $2a
    ret c                                         ; $6ae0: $d8

    xor c                                         ; $6ae1: $a9
    rst $10                                       ; $6ae2: $d7
    ld a, [hl+]                                   ; $6ae3: $2a
    ld e, c                                       ; $6ae4: $59
    xor d                                         ; $6ae5: $aa
    ldh [$e5], a                                  ; $6ae6: $e0 $e5
    add b                                         ; $6ae8: $80
    and $90                                       ; $6ae9: $e6 $90
    db $d3                                        ; $6aeb: $d3
    add hl, de                                    ; $6aec: $19
    ld a, [bc]                                    ; $6aed: $0a
    ld l, c                                       ; $6aee: $69
    ld a, [bc]                                    ; $6aef: $0a
    ld l, c                                       ; $6af0: $69
    ld a, [de]                                    ; $6af1: $1a
    add hl, bc                                    ; $6af2: $09
    xor d                                         ; $6af3: $aa
    add hl, bc                                    ; $6af4: $09
    xor d                                         ; $6af5: $aa
    ld l, c                                       ; $6af6: $69
    ld a, [bc]                                    ; $6af7: $0a
    add hl, de                                    ; $6af8: $19
    ld a, [bc]                                    ; $6af9: $0a
    ld l, c                                       ; $6afa: $69
    ld a, [bc]                                    ; $6afb: $0a
    ld c, c                                       ; $6afc: $49
    ld a, [bc]                                    ; $6afd: $0a
    adc c                                         ; $6afe: $89
    ld a, [bc]                                    ; $6aff: $0a
    adc c                                         ; $6b00: $89
    ld c, d                                       ; $6b01: $4a
    add hl, bc                                    ; $6b02: $09
    cp d                                          ; $6b03: $ba
    add hl, bc                                    ; $6b04: $09
    cp d                                          ; $6b05: $ba
    adc c                                         ; $6b06: $89
    ld a, [bc]                                    ; $6b07: $0a
    ld c, c                                       ; $6b08: $49
    ld a, [bc]                                    ; $6b09: $0a
    adc c                                         ; $6b0a: $89
    ld a, [bc]                                    ; $6b0b: $0a
    add hl, sp                                    ; $6b0c: $39
    ld a, [bc]                                    ; $6b0d: $0a
    ld l, c                                       ; $6b0e: $69
    ld a, [bc]                                    ; $6b0f: $0a
    ld l, c                                       ; $6b10: $69
    ld a, [hl-]                                   ; $6b11: $3a
    add hl, bc                                    ; $6b12: $09
    xor d                                         ; $6b13: $aa
    add hl, bc                                    ; $6b14: $09
    xor d                                         ; $6b15: $aa
    ld l, c                                       ; $6b16: $69
    ld a, [bc]                                    ; $6b17: $0a
    add hl, sp                                    ; $6b18: $39
    ld a, [bc]                                    ; $6b19: $0a
    ld l, c                                       ; $6b1a: $69
    ld a, [bc]                                    ; $6b1b: $0a
    add hl, hl                                    ; $6b1c: $29
    ld a, [bc]                                    ; $6b1d: $0a
    ld l, c                                       ; $6b1e: $69
    ld a, [bc]                                    ; $6b1f: $0a
    ld l, c                                       ; $6b20: $69
    ld a, [hl+]                                   ; $6b21: $2a
    add hl, bc                                    ; $6b22: $09
    sbc d                                         ; $6b23: $9a
    add hl, bc                                    ; $6b24: $09
    sbc d                                         ; $6b25: $9a
    ld l, c                                       ; $6b26: $69
    ld a, [bc]                                    ; $6b27: $0a
    add hl, hl                                    ; $6b28: $29
    ld a, [bc]                                    ; $6b29: $0a
    ld l, c                                       ; $6b2a: $69
    ld a, [bc]                                    ; $6b2b: $0a
    sbc $ff                                       ; $6b2c: $de $ff

    db $d3, $a9, $d9, $aa, $d9, $a9, $d9, $aa, $d9, $a9, $0a, $c9, $d7, $2a, $d8, $c9
    db $d9, $ca, $a9, $d9, $aa, $99, $d9, $9a, $79, $d9, $7a, $99, $d9, $9a, $d9, $99
    db $d9, $9a, $d9, $99, $d9, $9a, $d8, $c9, $d9, $ca, $c9, $d9, $ca, $d9, $c9, $d9
    db $ca, $d9, $c9, $d9, $ca, $d9, $c9, $d9, $ca, $d7, $39, $d9, $3a, $d9, $39, $d9
    db $3a, $d9, $39, $d9, $3a, $59, $7a, $99, $d9, $9a, $79, $d9, $7a, $59, $d9, $5a
    db $79, $d9, $7a, $59, $d9, $5a, $d9, $59, $d9, $5a, $d9, $59, $d9, $5a, $59, $d9
    db $5a, $59, $d9

    ld e, d                                       ; $6b91: $5a
    reti                                          ; $6b92: $d9


    ld e, c                                       ; $6b93: $59
    reti                                          ; $6b94: $d9


    ld e, d                                       ; $6b95: $5a
    ld e, c                                       ; $6b96: $59
    reti                                          ; $6b97: $d9


    ld e, d                                       ; $6b98: $5a
    reti                                          ; $6b99: $d9


    ld e, c                                       ; $6b9a: $59
    reti                                          ; $6b9b: $d9


    ld e, d                                       ; $6b9c: $5a
    add hl, sp                                    ; $6b9d: $39
    reti                                          ; $6b9e: $d9


    ld a, [hl-]                                   ; $6b9f: $3a
    add hl, hl                                    ; $6ba0: $29
    reti                                          ; $6ba1: $d9


    ld a, [hl+]                                   ; $6ba2: $2a
    add hl, sp                                    ; $6ba3: $39
    reti                                          ; $6ba4: $d9


    ld a, [hl-]                                   ; $6ba5: $3a
    ld e, c                                       ; $6ba6: $59
    reti                                          ; $6ba7: $d9


    ld e, d                                       ; $6ba8: $5a
    ld e, c                                       ; $6ba9: $59
    reti                                          ; $6baa: $d9


    ld e, d                                       ; $6bab: $5a
    reti                                          ; $6bac: $d9


    ld e, c                                       ; $6bad: $59
    reti                                          ; $6bae: $d9


    ld e, d                                       ; $6baf: $5a
    ret c                                         ; $6bb0: $d8

    xor c                                         ; $6bb1: $a9
    reti                                          ; $6bb2: $d9


    xor d                                         ; $6bb3: $aa
    reti                                          ; $6bb4: $d9


    xor c                                         ; $6bb5: $a9
    reti                                          ; $6bb6: $d9


    xor d                                         ; $6bb7: $aa
    rst $10                                       ; $6bb8: $d7
    ld a, c                                       ; $6bb9: $79
    reti                                          ; $6bba: $d9


    ld a, d                                       ; $6bbb: $7a
    ld e, c                                       ; $6bbc: $59
    reti                                          ; $6bbd: $d9


    ld e, d                                       ; $6bbe: $5a
    add hl, sp                                    ; $6bbf: $39
    reti                                          ; $6bc0: $d9


    ld a, [hl-]                                   ; $6bc1: $3a
    ld e, c                                       ; $6bc2: $59
    reti                                          ; $6bc3: $d9


    ld e, d                                       ; $6bc4: $5a
    ld e, c                                       ; $6bc5: $59
    reti                                          ; $6bc6: $d9


    ld e, d                                       ; $6bc7: $5a
    reti                                          ; $6bc8: $d9


    ld e, c                                       ; $6bc9: $59
    reti                                          ; $6bca: $d9


    ld e, d                                       ; $6bcb: $5a
    ret c                                         ; $6bcc: $d8

    xor c                                         ; $6bcd: $a9
    reti                                          ; $6bce: $d9


    xor d                                         ; $6bcf: $aa
    reti                                          ; $6bd0: $d9


    xor c                                         ; $6bd1: $a9
    reti                                          ; $6bd2: $d9


    xor d                                         ; $6bd3: $aa
    xor c                                         ; $6bd4: $a9
    reti                                          ; $6bd5: $d9


    xor d                                         ; $6bd6: $aa
    rst $10                                       ; $6bd7: $d7
    add hl, hl                                    ; $6bd8: $29
    reti                                          ; $6bd9: $d9


    ld a, [hl+]                                   ; $6bda: $2a
    add hl, sp                                    ; $6bdb: $39
    reti                                          ; $6bdc: $d9


    ld a, [hl-]                                   ; $6bdd: $3a
    ld a, c                                       ; $6bde: $79
    reti                                          ; $6bdf: $d9


    ld a, d                                       ; $6be0: $7a
    ld e, c                                       ; $6be1: $59
    reti                                          ; $6be2: $d9


    ld e, d                                       ; $6be3: $5a
    add hl, sp                                    ; $6be4: $39
    reti                                          ; $6be5: $d9


    ld a, [hl-]                                   ; $6be6: $3a
    add hl, hl                                    ; $6be7: $29
    reti                                          ; $6be8: $d9


    ld a, [hl+]                                   ; $6be9: $2a
    ret c                                         ; $6bea: $d8

    ret                                           ; $6beb: $c9


    reti                                          ; $6bec: $d9


    db $ca                                        ; $6bed: $ca
    db $e3                                        ; $6bee: $e3

    db $d0, $15, $dc, $11, $e7, $1c, $e6, $20, $e8, $07, $d1, $e2, $2d, $6c

    and b                                         ; $6bfd: $a0
    rst $10                                       ; $6bfe: $d7
    and b                                         ; $6bff: $a0
    sub b                                         ; $6c00: $90
    and b                                         ; $6c01: $a0
    ld d, b                                       ; $6c02: $50
    and b                                         ; $6c03: $a0
    ret c                                         ; $6c04: $d8

    and b                                         ; $6c05: $a0
    rst $10                                       ; $6c06: $d7
    and b                                         ; $6c07: $a0
    ld [c], a                                     ; $6c08: $e2
    dec l                                         ; $6c09: $2d
    ld l, h                                       ; $6c0a: $6c
    pop de                                        ; $6c0b: $d1
    and b                                         ; $6c0c: $a0
    rst $10                                       ; $6c0d: $d7
    and b                                         ; $6c0e: $a0
    sub b                                         ; $6c0f: $90
    and b                                         ; $6c10: $a0
    ret c                                         ; $6c11: $d8

    and e                                         ; $6c12: $a3
    rst $18                                       ; $6c13: $df
    inc bc                                        ; $6c14: $03
    rst $10                                       ; $6c15: $d7
    ld [hl-], a                                   ; $6c16: $32
    ld [hl-], a                                   ; $6c17: $32
    ld sp, $a2d8                                  ; $6c18: $31 $d8 $a2
    and d                                         ; $6c1b: $a2
    and c                                         ; $6c1c: $a1
    ldh [$62], a                                  ; $6c1d: $e0 $62
    ld h, d                                       ; $6c1f: $62
    ld h, c                                       ; $6c20: $61
    rst $10                                       ; $6c21: $d7
    ld b, d                                       ; $6c22: $42
    ld b, d                                       ; $6c23: $42
    ld b, c                                       ; $6c24: $41
    ld [hl-], a                                   ; $6c25: $32
    ld [hl-], a                                   ; $6c26: $32
    ld sp, $2222                                  ; $6c27: $31 $22 $22
    ld hl, $ffde                                  ; $6c2a: $21 $de $ff

    db $d1, $a1, $d7, $a1, $91, $51, $d8, $51, $51, $d7, $51, $d8, $51, $d7, $31, $d8
    db $a1, $d7, $31, $31, $51, $d8, $51, $c1, $51

    rst $10                                       ; $6c46: $d7
    ld sp, $a1d8                                  ; $6c47: $31 $d8 $a1
    rst $10                                       ; $6c4a: $d7
    ld hl, $a1d8                                  ; $6c4b: $21 $d8 $a1
    rst $10                                       ; $6c4e: $d7
    ld sp, $a1d8                                  ; $6c4f: $31 $d8 $a1
    rst $10                                       ; $6c52: $d7
    ld hl, $a1d8                                  ; $6c53: $21 $d8 $a1
    rst $10                                       ; $6c56: $d7
    ld sp, $a1d8                                  ; $6c57: $31 $d8 $a1
    rst $10                                       ; $6c5a: $d7
    ld d, c                                       ; $6c5b: $51
    ret c                                         ; $6c5c: $d8

    ld d, c                                       ; $6c5d: $51
    db $e3                                        ; $6c5e: $e3

    db $d0, $15, $d1, $df, $02, $e2, $d0, $6c, $e2, $d9, $6c, $e2, $d0, $6c, $e2, $d9
    db $6c

    ld [c], a                                     ; $6c70: $e2
    ret nc                                        ; $6c71: $d0

    ld l, h                                       ; $6c72: $6c
    ld [c], a                                     ; $6c73: $e2
    reti                                          ; $6c74: $d9


    ld l, h                                       ; $6c75: $6c
    ld [c], a                                     ; $6c76: $e2
    ret nc                                        ; $6c77: $d0

    ld l, h                                       ; $6c78: $6c
    db $10                                        ; $6c79: $10
    ld d, b                                       ; $6c7a: $50
    nop                                           ; $6c7b: $00
    ld d, b                                       ; $6c7c: $50
    jr nc, @+$52                                  ; $6c7d: $30 $50

    ret nc                                        ; $6c7f: $d0

    ld bc, $d719                                  ; $6c80: $01 $19 $d7
    ld e, d                                       ; $6c83: $5a

jr_07d_6c84:
    ret c                                         ; $6c84: $d8

    cp c                                          ; $6c85: $b9
    xor d                                         ; $6c86: $aa
    ret nc                                        ; $6c87: $d0

    dec d                                         ; $6c88: $15
    ldh [rNR12], a                                ; $6c89: $e0 $12
    ld [de], a                                    ; $6c8b: $12
    ld sp, $1212                                  ; $6c8c: $31 $12 $12
    jr nc, @-$5e                                  ; $6c8f: $30 $a0

    rst $18                                       ; $6c91: $df
    ld [bc], a                                    ; $6c92: $02
    ld [de], a                                    ; $6c93: $12
    ld [de], a                                    ; $6c94: $12
    ld sp, $1112                                  ; $6c95: $31 $12 $11
    db $10                                        ; $6c98: $10

jr_07d_6c99:
    ret nc                                        ; $6c99: $d0

    ld bc, $d739                                  ; $6c9a: $01 $39 $d7
    ld e, d                                       ; $6c9d: $5a
    ret c                                         ; $6c9e: $d8

    cp c                                          ; $6c9f: $b9
    xor d                                         ; $6ca0: $aa
    ret nc                                        ; $6ca1: $d0

    dec d                                         ; $6ca2: $15
    ldh [rNR10], a                                ; $6ca3: $e0 $10
    ld d, b                                       ; $6ca5: $50
    jr nc, @+$52                                  ; $6ca6: $30 $50

    db $10                                        ; $6ca8: $10
    ld d, b                                       ; $6ca9: $50
    jr nc, jr_07d_6cfc                            ; $6caa: $30 $50

    db $10                                        ; $6cac: $10
    ld d, b                                       ; $6cad: $50
    jr nc, jr_07d_6d00                            ; $6cae: $30 $50

    db $10                                        ; $6cb0: $10
    ld d, b                                       ; $6cb1: $50
    jr nc, jr_07d_6c84                            ; $6cb2: $30 $d0

    ld bc, $3a59                                  ; $6cb4: $01 $59 $3a
    ret nc                                        ; $6cb7: $d0

    dec d                                         ; $6cb8: $15
    db $10                                        ; $6cb9: $10
    ld d, b                                       ; $6cba: $50
    jr nc, jr_07d_6d0d                            ; $6cbb: $30 $50

    db $10                                        ; $6cbd: $10
    ld d, b                                       ; $6cbe: $50
    jr nc, jr_07d_6d11                            ; $6cbf: $30 $50

    db $10                                        ; $6cc1: $10
    ld d, b                                       ; $6cc2: $50
    jr nc, jr_07d_6d15                            ; $6cc3: $30 $50

    db $10                                        ; $6cc5: $10
    ld d, b                                       ; $6cc6: $50
    jr nc, jr_07d_6c99                            ; $6cc7: $30 $d0

    ld bc, $3a39                                  ; $6cc9: $01 $39 $3a
    ret nc                                        ; $6ccc: $d0

    dec d                                         ; $6ccd: $15
    sbc $ff                                       ; $6cce: $de $ff

    db $10, $50, $00, $50, $30, $50, $b0, $a0, $e3, $10, $50, $00, $50, $30, $50, $10
    db $50, $e3

    ret nc                                        ; $6ce2: $d0

    inc c                                         ; $6ce3: $0c
    push hl                                       ; $6ce4: $e5
    add b                                         ; $6ce5: $80
    and $c0                                       ; $6ce6: $e6 $c0
    call c, $ea11                                 ; $6ce8: $dc $11 $ea

jr_07d_6ceb:
    ld bc, $1ceb                                  ; $6ceb: $01 $eb $1c
    xor $44                                       ; $6cee: $ee $44
    add sp, $07                                   ; $6cf0: $e8 $07
    db $d3                                        ; $6cf2: $d3
    ld [c], a                                     ; $6cf3: $e2
    ld [hl], h                                    ; $6cf4: $74
    ld l, l                                       ; $6cf5: $6d
    call nc, Call_000_3010                        ; $6cf6: $d4 $10 $30
    ld d, b                                       ; $6cf9: $50
    jr nc, jr_07d_6d0c                            ; $6cfa: $30 $10

jr_07d_6cfc:
    ret c                                         ; $6cfc: $d8

    and b                                         ; $6cfd: $a0
    ld [hl], c                                    ; $6cfe: $71
    ld d, b                                       ; $6cff: $50

jr_07d_6d00:
    ld b, b                                       ; $6d00: $40
    jr nc, jr_07d_6d13                            ; $6d01: $30 $10

    ret c                                         ; $6d03: $d8

    and b                                         ; $6d04: $a0
    ld [hl], b                                    ; $6d05: $70
    inc [hl]                                      ; $6d06: $34
    ld [c], a                                     ; $6d07: $e2
    ld [hl], h                                    ; $6d08: $74
    ld l, l                                       ; $6d09: $6d
    db $d3                                        ; $6d0a: $d3
    and b                                         ; $6d0b: $a0

jr_07d_6d0c:
    ret nz                                        ; $6d0c: $c0

jr_07d_6d0d:
    rst $10                                       ; $6d0d: $d7
    db $10                                        ; $6d0e: $10
    jr nc, jr_07d_6d21                            ; $6d0f: $30 $10

jr_07d_6d11:
    jr nc, jr_07d_6ceb                            ; $6d11: $30 $d8

jr_07d_6d13:
    and c                                         ; $6d13: $a1
    ret nz                                        ; $6d14: $c0

jr_07d_6d15:
    and b                                         ; $6d15: $a0
    ret nz                                        ; $6d16: $c0

    rst $10                                       ; $6d17: $d7
    stop                                          ; $6d18: $10 $00
    db $10                                        ; $6d1a: $10
    ld bc, $1010                                  ; $6d1b: $01 $10 $10
    db $10                                        ; $6d1e: $10
    ld [c], a                                     ; $6d1f: $e2
    and c                                         ; $6d20: $a1

jr_07d_6d21:
    ld l, l                                       ; $6d21: $6d
    ret nz                                        ; $6d22: $c0

    ld d, b                                       ; $6d23: $50
    add b                                         ; $6d24: $80
    rst $10                                       ; $6d25: $d7
    db $10                                        ; $6d26: $10
    ld d, c                                       ; $6d27: $51
    db $10                                        ; $6d28: $10
    ret c                                         ; $6d29: $d8

    ret nz                                        ; $6d2a: $c0

    rst $10                                       ; $6d2b: $d7
    db $10                                        ; $6d2c: $10
    ret c                                         ; $6d2d: $d8

    ret nz                                        ; $6d2e: $c0

    and b                                         ; $6d2f: $a0

jr_07d_6d30:
    and b                                         ; $6d30: $a0
    and c                                         ; $6d31: $a1
    and b                                         ; $6d32: $a0
    sub b                                         ; $6d33: $90
    and b                                         ; $6d34: $a0
    ld h, b                                       ; $6d35: $60
    and b                                         ; $6d36: $a0
    rst $10                                       ; $6d37: $d7
    ld d, b                                       ; $6d38: $50

jr_07d_6d39:
    ld h, c                                       ; $6d39: $61
    ld d, b                                       ; $6d3a: $50
    jr nc, jr_07d_6d9d                            ; $6d3b: $30 $60

    db $10                                        ; $6d3d: $10
    ret c                                         ; $6d3e: $d8

    ret nz                                        ; $6d3f: $c0

    ret nz                                        ; $6d40: $c0

    pop bc                                        ; $6d41: $c1
    ret nz                                        ; $6d42: $c0

    or b                                          ; $6d43: $b0
    ret nz                                        ; $6d44: $c0

    add b                                         ; $6d45: $80
    ret nz                                        ; $6d46: $c0

    rst $10                                       ; $6d47: $d7
    ld d, b                                       ; $6d48: $50
    add c                                         ; $6d49: $81
    ld h, b                                       ; $6d4a: $60
    ld d, b                                       ; $6d4b: $50
    add b                                         ; $6d4c: $80
    ld h, b                                       ; $6d4d: $60
    ld d, b                                       ; $6d4e: $50
    ld d, b                                       ; $6d4f: $50
    ld d, c                                       ; $6d50: $51
    jr nc, jr_07d_6d63                            ; $6d51: $30 $10

    ld d, b                                       ; $6d53: $50
    jr nc, jr_07d_6d66                            ; $6d54: $30 $10

    jr nc, jr_07d_6d30                            ; $6d56: $30 $d8

    and c                                         ; $6d58: $a1
    rst $10                                       ; $6d59: $d7
    jr nc, jr_07d_6d6c                            ; $6d5a: $30 $10

    ld d, b                                       ; $6d5c: $50
    jr nc, jr_07d_6d6f                            ; $6d5d: $30 $10

    jr nc, jr_07d_6d39                            ; $6d5f: $30 $d8

    and c                                         ; $6d61: $a1
    ret nz                                        ; $6d62: $c0

jr_07d_6d63:
    and b                                         ; $6d63: $a0
    ret nz                                        ; $6d64: $c0

    rst $10                                       ; $6d65: $d7

jr_07d_6d66:
    stop                                          ; $6d66: $10 $00
    db $10                                        ; $6d68: $10
    ld bc, $1010                                  ; $6d69: $01 $10 $10

jr_07d_6d6c:
    db $10                                        ; $6d6c: $10
    inc b                                         ; $6d6d: $04
    ret c                                         ; $6d6e: $d8

jr_07d_6d6f:
    add b                                         ; $6d6f: $80
    add b                                         ; $6d70: $80
    add b                                         ; $6d71: $80
    sbc $ff                                       ; $6d72: $de $ff
    db $d3                                        ; $6d74: $d3
    add b                                         ; $6d75: $80
    ld bc, $00a0                                  ; $6d76: $01 $a0 $00
    add b                                         ; $6d79: $80
    nop                                           ; $6d7a: $00
    ld [hl], b                                    ; $6d7b: $70
    add b                                         ; $6d7c: $80
    rst $10                                       ; $6d7d: $d7
    db $10                                        ; $6d7e: $10
    ld d, b                                       ; $6d7f: $50
    nop                                           ; $6d80: $00
    ld bc, $80d8                                  ; $6d81: $01 $d8 $80
    rst $10                                       ; $6d84: $d7
    db $10                                        ; $6d85: $10
    ret c                                         ; $6d86: $d8

    ld h, b                                       ; $6d87: $60
    ld bc, $0080                                  ; $6d88: $01 $80 $00
    ld h, b                                       ; $6d8b: $60
    nop                                           ; $6d8c: $00
    ld d, b                                       ; $6d8d: $50
    ld h, b                                       ; $6d8e: $60
    and b                                         ; $6d8f: $a0
    rst $10                                       ; $6d90: $d7
    jr nc, @+$06                                  ; $6d91: $30 $04

    ret c                                         ; $6d93: $d8

    ld d, b                                       ; $6d94: $50
    ld bc, $0060                                  ; $6d95: $01 $60 $00
    ld d, b                                       ; $6d98: $50
    nop                                           ; $6d99: $00
    ld b, b                                       ; $6d9a: $40
    ld d, b                                       ; $6d9b: $50
    and b                                         ; $6d9c: $a0

jr_07d_6d9d:
    rst $10                                       ; $6d9d: $d7
    db $10                                        ; $6d9e: $10
    ld bc, $d3e3                                  ; $6d9f: $01 $e3 $d3
    inc b                                         ; $6da2: $04
    add b                                         ; $6da3: $80
    ld [hl], b                                    ; $6da4: $70
    add b                                         ; $6da5: $80
    ld d, b                                       ; $6da6: $50
    add b                                         ; $6da7: $80
    rst $10                                       ; $6da8: $d7
    db $10                                        ; $6da9: $10
    ld d, c                                       ; $6daa: $51
    db $10                                        ; $6dab: $10
    ret c                                         ; $6dac: $d8

    ret nz                                        ; $6dad: $c0

    rst $10                                       ; $6dae: $d7
    db $10                                        ; $6daf: $10
    ret c                                         ; $6db0: $d8

    ret nz                                        ; $6db1: $c0

    and b                                         ; $6db2: $a0

jr_07d_6db3:
    and b                                         ; $6db3: $a0
    and c                                         ; $6db4: $a1
    and b                                         ; $6db5: $a0
    sub b                                         ; $6db6: $90
    and b                                         ; $6db7: $a0
    ld h, b                                       ; $6db8: $60
    and b                                         ; $6db9: $a0
    rst $10                                       ; $6dba: $d7
    ld d, b                                       ; $6dbb: $50

jr_07d_6dbc:
    ld h, c                                       ; $6dbc: $61
    ld d, b                                       ; $6dbd: $50
    jr nc, jr_07d_6e20                            ; $6dbe: $30 $60

    db $10                                        ; $6dc0: $10
    ret c                                         ; $6dc1: $d8

    ret nz                                        ; $6dc2: $c0

    ret nz                                        ; $6dc3: $c0

    pop bc                                        ; $6dc4: $c1

jr_07d_6dc5:
    ret nz                                        ; $6dc5: $c0

    or b                                          ; $6dc6: $b0
    ret nz                                        ; $6dc7: $c0

    add b                                         ; $6dc8: $80
    ret nz                                        ; $6dc9: $c0

    rst $10                                       ; $6dca: $d7
    ld d, b                                       ; $6dcb: $50
    add c                                         ; $6dcc: $81
    ld h, b                                       ; $6dcd: $60
    ld d, b                                       ; $6dce: $50
    add b                                         ; $6dcf: $80
    ld h, b                                       ; $6dd0: $60

jr_07d_6dd1:
    ld d, b                                       ; $6dd1: $50
    ld d, b                                       ; $6dd2: $50
    ld d, c                                       ; $6dd3: $51
    jr nc, jr_07d_6de6                            ; $6dd4: $30 $10

    ld d, b                                       ; $6dd6: $50
    jr nc, jr_07d_6de9                            ; $6dd7: $30 $10

    jr nc, jr_07d_6db3                            ; $6dd9: $30 $d8

    and c                                         ; $6ddb: $a1
    rst $10                                       ; $6ddc: $d7
    jr nc, jr_07d_6def                            ; $6ddd: $30 $10

    ld d, b                                       ; $6ddf: $50
    jr nc, jr_07d_6df2                            ; $6de0: $30 $10

    jr nc, jr_07d_6dbc                            ; $6de2: $30 $d8

    and c                                         ; $6de4: $a1
    rst $10                                       ; $6de5: $d7

jr_07d_6de6:
    jr nc, @+$12                                  ; $6de6: $30 $10

    ld d, b                                       ; $6de8: $50

jr_07d_6de9:
    jr nc, jr_07d_6dfb                            ; $6de9: $30 $10

    jr nc, jr_07d_6dc5                            ; $6deb: $30 $d8

    add c                                         ; $6ded: $81
    add b                                         ; $6dee: $80

jr_07d_6def:
    rst $10                                       ; $6def: $d7
    db $10                                        ; $6df0: $10
    add b                                         ; $6df1: $80

jr_07d_6df2:
    add b                                         ; $6df2: $80
    ld h, b                                       ; $6df3: $60
    ld h, b                                       ; $6df4: $60
    ld d, b                                       ; $6df5: $50
    ld d, b                                       ; $6df6: $50
    jr nc, jr_07d_6dd1                            ; $6df7: $30 $d8

    and b                                         ; $6df9: $a0
    db $e3                                        ; $6dfa: $e3

jr_07d_6dfb:
    push hl                                       ; $6dfb: $e5
    add b                                         ; $6dfc: $80
    ld [$eb01], a                                 ; $6dfd: $ea $01 $eb
    inc e                                         ; $6e00: $1c
    call c, $ee11                                 ; $6e01: $dc $11 $ee
    ld b, h                                       ; $6e04: $44
    add sp, $07                                   ; $6e05: $e8 $07
    db $d3                                        ; $6e07: $d3
    and $b0                                       ; $6e08: $e6 $b0
    ret nc                                        ; $6e0a: $d0

    ld b, $e2                                     ; $6e0b: $06 $e2
    adc e                                         ; $6e0d: $8b
    ld l, [hl]                                    ; $6e0e: $6e
    db $d3                                        ; $6e0f: $d3
    and c                                         ; $6e10: $a1
    pop bc                                        ; $6e11: $c1
    rst $10                                       ; $6e12: $d7
    ld de, $0f0f                                  ; $6e13: $11 $0f $0f
    ld [c], a                                     ; $6e16: $e2
    or h                                          ; $6e17: $b4
    ld l, [hl]                                    ; $6e18: $6e
    db $d3                                        ; $6e19: $d3
    ld d, c                                       ; $6e1a: $51
    add c                                         ; $6e1b: $81
    and c                                         ; $6e1c: $a1
    ld [hl], l                                    ; $6e1d: $75
    ld d, $02                                     ; $6e1e: $16 $02

jr_07d_6e20:
    ld d, c                                       ; $6e20: $51
    ld bc, $0351                                  ; $6e21: $01 $51 $03
    ld h, c                                       ; $6e24: $61
    ld h, c                                       ; $6e25: $61
    ld d, c                                       ; $6e26: $51
    ret nc                                        ; $6e27: $d0

    inc c                                         ; $6e28: $0c

jr_07d_6e29:
    nop                                           ; $6e29: $00
    and $70                                       ; $6e2a: $e6 $70
    db $e4                                        ; $6e2c: $e4
    cp $e2                                        ; $6e2d: $fe $e2
    and c                                         ; $6e2f: $a1
    ld l, l                                       ; $6e30: $6d
    and $90                                       ; $6e31: $e6 $90
    db $e4                                        ; $6e33: $e4
    nop                                           ; $6e34: $00
    db $d3                                        ; $6e35: $d3
    db $10                                        ; $6e36: $10
    ld d, b                                       ; $6e37: $50
    add b                                         ; $6e38: $80
    rst $10                                       ; $6e39: $d7
    ld de, $80d8                                  ; $6e3a: $11 $d8 $80
    add b                                         ; $6e3d: $80
    add b                                         ; $6e3e: $80
    add b                                         ; $6e3f: $80
    ld h, b                                       ; $6e40: $60
    ld h, b                                       ; $6e41: $60
    ld h, c                                       ; $6e42: $61
    ld h, b                                       ; $6e43: $60
    ld d, b                                       ; $6e44: $50
    ld h, b                                       ; $6e45: $60
    jr nc, jr_07d_6ea8                            ; $6e46: $30 $60

    and b                                         ; $6e48: $a0
    rst $10                                       ; $6e49: $d7
    ld sp, $d810                                  ; $6e4a: $31 $10 $d8
    ret nz                                        ; $6e4d: $c0

    rst $10                                       ; $6e4e: $d7
    jr nc, jr_07d_6e29                            ; $6e4f: $30 $d8

    and b                                         ; $6e51: $a0
    add b                                         ; $6e52: $80
    add b                                         ; $6e53: $80
    add c                                         ; $6e54: $81
    add b                                         ; $6e55: $80
    ld [hl], b                                    ; $6e56: $70
    add b                                         ; $6e57: $80
    ld d, b                                       ; $6e58: $50
    add b                                         ; $6e59: $80
    ret nz                                        ; $6e5a: $c0

    rst $10                                       ; $6e5b: $d7
    ld d, c                                       ; $6e5c: $51
    jr nc, @+$12                                  ; $6e5d: $30 $10

    ld d, b                                       ; $6e5f: $50
    jr nc, jr_07d_6e72                            ; $6e60: $30 $10

    db $10                                        ; $6e62: $10
    ld de, $c0d8                                  ; $6e63: $11 $d8 $c0
    and b                                         ; $6e66: $a0
    rst $10                                       ; $6e67: $d7
    db $10                                        ; $6e68: $10
    ret c                                         ; $6e69: $d8

    and b                                         ; $6e6a: $a0
    and b                                         ; $6e6b: $a0
    and b                                         ; $6e6c: $a0
    ld sp, $a0a0                                  ; $6e6d: $31 $a0 $a0
    rst $10                                       ; $6e70: $d7
    db $10                                        ; $6e71: $10

jr_07d_6e72:
    ret c                                         ; $6e72: $d8

    ret nz                                        ; $6e73: $c0

    and b                                         ; $6e74: $a0
    ret nz                                        ; $6e75: $c0

    ld h, c                                       ; $6e76: $61
    add b                                         ; $6e77: $80
    ld h, b                                       ; $6e78: $60
    add b                                         ; $6e79: $80
    and $b0                                       ; $6e7a: $e6 $b0
    ld d, b                                       ; $6e7c: $50
    nop                                           ; $6e7d: $00
    ld d, b                                       ; $6e7e: $50
    ld bc, $6060                                  ; $6e7f: $01 $60 $60
    ld d, b                                       ; $6e82: $50
    inc b                                         ; $6e83: $04
    and $90                                       ; $6e84: $e6 $90
    db $10                                        ; $6e86: $10
    db $10                                        ; $6e87: $10
    db $10                                        ; $6e88: $10
    sbc $ff                                       ; $6e89: $de $ff
    db $d3                                        ; $6e8b: $d3
    ld d, c                                       ; $6e8c: $51
    inc bc                                        ; $6e8d: $03
    ld h, c                                       ; $6e8e: $61
    ld bc, $0151                                  ; $6e8f: $01 $51 $01
    ld b, c                                       ; $6e92: $41
    ld d, c                                       ; $6e93: $51
    dec b                                         ; $6e94: $05

jr_07d_6e95:
    ret c                                         ; $6e95: $d8

    add c                                         ; $6e96: $81
    rst $10                                       ; $6e97: $d7
    ld de, $3103                                  ; $6e98: $11 $03 $31
    inc bc                                        ; $6e9b: $03
    ld d, c                                       ; $6e9c: $51
    ld bc, $0131                                  ; $6e9d: $01 $31 $01
    ld hl, $0531                                  ; $6ea0: $21 $31 $05
    and $80                                       ; $6ea3: $e6 $80
    rlca                                          ; $6ea5: $07
    and $b0                                       ; $6ea6: $e6 $b0

jr_07d_6ea8:
    ld de, $3103                                  ; $6ea8: $11 $03 $31
    ld bc, $0111                                  ; $6eab: $01 $11 $01
    ret c                                         ; $6eae: $d8

    pop bc                                        ; $6eaf: $c1
    rst $10                                       ; $6eb0: $d7
    ld de, $e307                                  ; $6eb1: $11 $07 $e3
    db $d3                                        ; $6eb4: $d3
    ld d, c                                       ; $6eb5: $51
    inc bc                                        ; $6eb6: $03
    ld h, c                                       ; $6eb7: $61
    ld bc, $0151                                  ; $6eb8: $01 $51 $01
    ld b, c                                       ; $6ebb: $41
    ld d, c                                       ; $6ebc: $51
    dec b                                         ; $6ebd: $05
    ret c                                         ; $6ebe: $d8

jr_07d_6ebf:
    add c                                         ; $6ebf: $81
    rst $10                                       ; $6ec0: $d7
    ld de, $3103                                  ; $6ec1: $11 $03 $31
    inc bc                                        ; $6ec4: $03
    ld d, c                                       ; $6ec5: $51
    ld bc, $0131                                  ; $6ec6: $01 $31 $01
    ld hl, $0531                                  ; $6ec9: $21 $31 $05
    and $80                                       ; $6ecc: $e6 $80
    rst $10                                       ; $6ece: $d7
    jr nc, @-$26                                  ; $6ecf: $30 $d8

    ret nz                                        ; $6ed1: $c0

    ld h, b                                       ; $6ed2: $60
    jr nc, jr_07d_6e95                            ; $6ed3: $30 $c0

    add b                                         ; $6ed5: $80
    ld h, b                                       ; $6ed6: $60
    jr nc, jr_07d_6ebf                            ; $6ed7: $30 $e6

    or b                                          ; $6ed9: $b0
    ld de, $3103                                  ; $6eda: $11 $03 $31

jr_07d_6edd:
    ld bc, $0111                                  ; $6edd: $01 $11 $01
    ret c                                         ; $6ee0: $d8

    pop bc                                        ; $6ee1: $c1
    rst $10                                       ; $6ee2: $d7
    ld de, $e307                                  ; $6ee3: $11 $07 $e3
    ret nc                                        ; $6ee6: $d0

    inc c                                         ; $6ee7: $0c
    and $20                                       ; $6ee8: $e6 $20
    jp hl                                         ; $6eea: $e9


    nop                                           ; $6eeb: $00
    call c, $e811                                 ; $6eec: $dc $11 $e8
    ld [$e7d3], sp                                ; $6eef: $08 $d3 $e7
    ld hl, $45e2                                  ; $6ef2: $21 $e2 $45
    ld l, a                                       ; $6ef5: $6f
    jp nc, Jump_000_3472                          ; $6ef6: $d2 $72 $34

    ld [de], a                                    ; $6ef9: $12
    ret c                                         ; $6efa: $d8

    and h                                         ; $6efb: $a4
    ld [c], a                                     ; $6efc: $e2
    ld b, l                                       ; $6efd: $45
    ld l, a                                       ; $6efe: $6f
    jp nc, $d772                                  ; $6eff: $d2 $72 $d7

    inc sp                                        ; $6f02: $33
    ret c                                         ; $6f03: $d8

    ret c                                         ; $6f04: $d8

    ret nz                                        ; $6f05: $c0

    rst $10                                       ; $6f06: $d7
    inc de                                        ; $6f07: $13
    nop                                           ; $6f08: $00
    ret c                                         ; $6f09: $d8

    add c                                         ; $6f0a: $81
    db $10                                        ; $6f0b: $10
    rst $20                                       ; $6f0c: $e7
    ld [$03d1], sp                                ; $6f0d: $08 $d1 $03
    jp Jump_07d_5313                              ; $6f10: $c3 $13 $53


    ld h, e                                       ; $6f13: $63
    ld sp, $3321                                  ; $6f14: $31 $21 $33
    and c                                         ; $6f17: $a1
    ld sp, $6383                                  ; $6f18: $31 $83 $63
    ld d, e                                       ; $6f1b: $53
    sub e                                         ; $6f1c: $93
    and e                                         ; $6f1d: $a3
    add e                                         ; $6f1e: $83
    ld [hl], e                                    ; $6f1f: $73
    rst $10                                       ; $6f20: $d7
    ld sp, $31d8                                  ; $6f21: $31 $d8 $31
    ld h, a                                       ; $6f24: $67
    ld d, a                                       ; $6f25: $57
    inc sp                                        ; $6f26: $33
    add e                                         ; $6f27: $83
    inc de                                        ; $6f28: $13
    ld d, e                                       ; $6f29: $53
    ld h, e                                       ; $6f2a: $63
    ld d, e                                       ; $6f2b: $53
    inc sp                                        ; $6f2c: $33
    ld d, c                                       ; $6f2d: $51
    ld h, c                                       ; $6f2e: $61
    add e                                         ; $6f2f: $83
    ld h, e                                       ; $6f30: $63
    ld d, e                                       ; $6f31: $53
    sub e                                         ; $6f32: $93
    and e                                         ; $6f33: $a3
    add e                                         ; $6f34: $83
    ld [hl], e                                    ; $6f35: $73
    inc sp                                        ; $6f36: $33
    ld h, e                                       ; $6f37: $63
    ld sp, $1081                                  ; $6f38: $31 $81 $10
    nop                                           ; $6f3b: $00
    db $10                                        ; $6f3c: $10
    ld bc, $1010                                  ; $6f3d: $01 $10 $10
    db $10                                        ; $6f40: $10
    inc bc                                        ; $6f41: $03
    inc de                                        ; $6f42: $13
    sbc $ff                                       ; $6f43: $de $ff
    db $d3                                        ; $6f45: $d3
    ld de, $d800                                  ; $6f46: $11 $00 $d8
    ret nz                                        ; $6f49: $c0

    nop                                           ; $6f4a: $00
    or b                                          ; $6f4b: $b0
    nop                                           ; $6f4c: $00
    and b                                         ; $6f4d: $a0
    add b                                         ; $6f4e: $80
    ld [hl], b                                    ; $6f4f: $70
    add b                                         ; $6f50: $80
    db $10                                        ; $6f51: $10
    inc bc                                        ; $6f52: $03
    pop bc                                        ; $6f53: $c1
    nop                                           ; $6f54: $00
    or b                                          ; $6f55: $b0
    nop                                           ; $6f56: $00
    and b                                         ; $6f57: $a0
    nop                                           ; $6f58: $00
    sub b                                         ; $6f59: $90
    add b                                         ; $6f5a: $80
    jr nc, jr_07d_6edd                            ; $6f5b: $30 $80

    ret c                                         ; $6f5d: $d8

    add b                                         ; $6f5e: $80
    inc bc                                        ; $6f5f: $03
    rst $10                                       ; $6f60: $d7
    and d                                         ; $6f61: $a2
    ret c                                         ; $6f62: $d8

    and b                                         ; $6f63: $a0
    ret nc                                        ; $6f64: $d0

    ld b, $d7                                     ; $6f65: $06 $d7
    and d                                         ; $6f67: $a2
    ld d, d                                       ; $6f68: $52
    and c                                         ; $6f69: $a1
    ret nc                                        ; $6f6a: $d0

    inc c                                         ; $6f6b: $0c
    ret c                                         ; $6f6c: $d8

    and c                                         ; $6f6d: $a1
    pop bc                                        ; $6f6e: $c1
    rst $10                                       ; $6f6f: $d7
    ld de, $e331                                  ; $6f70: $11 $31 $e3
    ret nc                                        ; $6f73: $d0

    ld b, $d1                                     ; $6f74: $06 $d1
    rst $18                                       ; $6f76: $df
    ld [bc], a                                    ; $6f77: $02
    rrca                                          ; $6f78: $0f
    rrca                                          ; $6f79: $0f
    rrca                                          ; $6f7a: $0f
    rrca                                          ; $6f7b: $0f
    ldh [$03], a                                  ; $6f7c: $e0 $03
    ld h, e                                       ; $6f7e: $63
    inc bc                                        ; $6f7f: $03
    add e                                         ; $6f80: $83
    inc bc                                        ; $6f81: $03
    ld h, e                                       ; $6f82: $63
    inc bc                                        ; $6f83: $03
    add c                                         ; $6f84: $81
    ld h, c                                       ; $6f85: $61
    inc bc                                        ; $6f86: $03
    add e                                         ; $6f87: $83
    inc bc                                        ; $6f88: $03
    ld h, e                                       ; $6f89: $63
    inc bc                                        ; $6f8a: $03
    add e                                         ; $6f8b: $83
    inc bc                                        ; $6f8c: $03
    ld h, b                                       ; $6f8d: $60
    or b                                          ; $6f8e: $b0
    and b                                         ; $6f8f: $a0
    and b                                         ; $6f90: $a0
    rst $10                                       ; $6f91: $d7
    sub e                                         ; $6f92: $93
    ret c                                         ; $6f93: $d8

    ld d, c                                       ; $6f94: $51
    ld de, $5133                                  ; $6f95: $11 $33 $51
    ld de, $1111                                  ; $6f98: $11 $11 $11
    ld d, c                                       ; $6f9b: $51
    ld de, $5333                                  ; $6f9c: $11 $33 $53
    inc de                                        ; $6f9f: $13
    ld d, c                                       ; $6fa0: $51
    ld de, $d731                                  ; $6fa1: $11 $31 $d7
    ld d, c                                       ; $6fa4: $51
    ret c                                         ; $6fa5: $d8

    or c                                          ; $6fa6: $b1
    and c                                         ; $6fa7: $a1
    inc sp                                        ; $6fa8: $33
    inc sp                                        ; $6fa9: $33
    ld de, $51d7                                  ; $6faa: $11 $d7 $51
    ret c                                         ; $6fad: $d8

    or c                                          ; $6fae: $b1
    and c                                         ; $6faf: $a1
    rrca                                          ; $6fb0: $0f
    jp Jump_07d_5355                              ; $6fb1: $c3 $55 $53


    ld d, c                                       ; $6fb4: $51
    inc bc                                        ; $6fb5: $03
    ld d, l                                       ; $6fb6: $55
    or e                                          ; $6fb7: $b3
    and c                                         ; $6fb8: $a1
    inc de                                        ; $6fb9: $13
    ld d, l                                       ; $6fba: $55
    ld d, c                                       ; $6fbb: $51
    ld de, $1351                                  ; $6fbc: $11 $51 $13
    ld d, e                                       ; $6fbf: $53
    ld de, $a1b3                                  ; $6fc0: $11 $b3 $a1
    inc de                                        ; $6fc3: $13
    ld d, l                                       ; $6fc4: $55
    ld d, c                                       ; $6fc5: $51
    ld de, $1351                                  ; $6fc6: $11 $51 $13
    ld d, e                                       ; $6fc9: $53
    ld de, $51d7                                  ; $6fca: $11 $d7 $51
    ret c                                         ; $6fcd: $d8

    or c                                          ; $6fce: $b1
    and c                                         ; $6fcf: $a1
    inc bc                                        ; $6fd0: $03
    ld d, l                                       ; $6fd1: $55
    or e                                          ; $6fd2: $b3
    and c                                         ; $6fd3: $a1
    inc de                                        ; $6fd4: $13
    ld d, l                                       ; $6fd5: $55
    ld d, c                                       ; $6fd6: $51
    ld de, $1351                                  ; $6fd7: $11 $51 $13
    ld d, e                                       ; $6fda: $53
    ld de, $a1b3                                  ; $6fdb: $11 $b3 $a1
    inc de                                        ; $6fde: $13
    ld d, e                                       ; $6fdf: $53
    rst $10                                       ; $6fe0: $d7
    ld d, c                                       ; $6fe1: $51
    ret c                                         ; $6fe2: $d8

    and c                                         ; $6fe3: $a1
    or c                                          ; $6fe4: $b1
    and c                                         ; $6fe5: $a1
    rst $18                                       ; $6fe6: $df
    ld [bc], a                                    ; $6fe7: $02
    rst $10                                       ; $6fe8: $d7
    sub c                                         ; $6fe9: $91
    ret c                                         ; $6fea: $d8

    ld de, $1151                                  ; $6feb: $11 $51 $11
    inc sp                                        ; $6fee: $33
    ld d, e                                       ; $6fef: $53
    inc de                                        ; $6ff0: $13
    ld d, c                                       ; $6ff1: $51
    ld de, $5333                                  ; $6ff2: $11 $33 $53
    ld de, $5111                                  ; $6ff5: $11 $11 $51
    ld de, $5333                                  ; $6ff8: $11 $33 $53
    inc de                                        ; $6ffb: $13
    ld d, c                                       ; $6ffc: $51
    ld de, $d731                                  ; $6ffd: $11 $31 $d7
    ld d, c                                       ; $7000: $51
    ret c                                         ; $7001: $d8

    or c                                          ; $7002: $b1
    and c                                         ; $7003: $a1
    ldh [$33], a                                  ; $7004: $e0 $33
    inc sp                                        ; $7006: $33
    ld bc, $3131                                  ; $7007: $01 $31 $31
    push bc                                       ; $700a: $c5
    ld h, a                                       ; $700b: $67
    add e                                         ; $700c: $83
    sbc $ff                                       ; $700d: $de $ff
    ret nc                                        ; $700f: $d0

    rlca                                          ; $7010: $07
    push hl                                       ; $7011: $e5
    nop                                           ; $7012: $00
    call c, $ea11                                 ; $7013: $dc $11 $ea
    dec bc                                        ; $7016: $0b
    db $eb                                        ; $7017: $eb
    ld a, [de]                                    ; $7018: $1a
    add sp, $07                                   ; $7019: $e8 $07
    xor $22                                       ; $701b: $ee $22
    db $d3                                        ; $701d: $d3
    and $70                                       ; $701e: $e6 $70
    db $d3                                        ; $7020: $d3
    rst $18                                       ; $7021: $df
    ld b, $01                                     ; $7022: $06 $01
    pop bc                                        ; $7024: $c1
    ld bc, $01c1                                  ; $7025: $01 $c1 $01
    pop bc                                        ; $7028: $c1
    ld bc, $e0c1                                  ; $7029: $01 $c1 $e0
    ld bc, $01c1                                  ; $702c: $01 $c1 $01
    pop bc                                        ; $702f: $c1
    ld bc, $21d7                                  ; $7030: $01 $d7 $21
    ld bc, $e621                                  ; $7033: $01 $21 $e6
    and b                                         ; $7036: $a0
    db $d3                                        ; $7037: $d3
    jp nz, $a3b2                                  ; $7038: $c2 $b2 $a3

    add c                                         ; $703b: $81
    ld d, c                                       ; $703c: $51
    ld sp, $b6e2                                  ; $703d: $31 $e2 $b6
    ld [hl], b                                    ; $7040: $70
    ld [hl], c                                    ; $7041: $71
    ld e, a                                       ; $7042: $5f
    ld [c], a                                     ; $7043: $e2
    or [hl]                                       ; $7044: $b6
    ld [hl], b                                    ; $7045: $70
    call nc, Call_07d_77a1                        ; $7046: $d4 $a1 $77
    ld b, a                                       ; $7049: $47
    sbc $ff                                       ; $704a: $de $ff
    db $d3                                        ; $704c: $d3
    add d                                         ; $704d: $82
    and d                                         ; $704e: $a2
    pop bc                                        ; $704f: $c1
    and d                                         ; $7050: $a2
    jp nz, $21d7                                  ; $7051: $c2 $d7 $21

    ret c                                         ; $7054: $d8

    push bc                                       ; $7055: $c5
    ld e, c                                       ; $7056: $59
    rst $10                                       ; $7057: $d7
    ld [hl-], a                                   ; $7058: $32
    ld [hl+], a                                   ; $7059: $22
    ld sp, $3252                                  ; $705a: $31 $52 $32
    db $e3                                        ; $705d: $e3
    ret nc                                        ; $705e: $d0

    rlca                                          ; $705f: $07
    push hl                                       ; $7060: $e5
    nop                                           ; $7061: $00
    ld [$eb0b], a                                 ; $7062: $ea $0b $eb
    ld a, [de]                                    ; $7065: $1a
    call c, $e811                                 ; $7066: $dc $11 $e8
    rlca                                          ; $7069: $07
    xor $22                                       ; $706a: $ee $22
    db $d3                                        ; $706c: $d3
    and $70                                       ; $706d: $e6 $70
    rst $18                                       ; $706f: $df
    ld [bc], a                                    ; $7070: $02
    ld bc, $0151                                  ; $7071: $01 $51 $01
    ld d, c                                       ; $7074: $51
    ld bc, $0151                                  ; $7075: $01 $51 $01
    ld d, c                                       ; $7078: $51
    ldh [rSB], a                                  ; $7079: $e0 $01
    ld sp, $3101                                  ; $707b: $31 $01 $31
    ld bc, $0151                                  ; $707e: $01 $51 $01
    ld d, c                                       ; $7081: $51
    ld bc, $0151                                  ; $7082: $01 $51 $01
    ld d, c                                       ; $7085: $51
    ld bc, $0151                                  ; $7086: $01 $51 $01
    ld d, c                                       ; $7089: $51
    rst $18                                       ; $708a: $df
    ld [bc], a                                    ; $708b: $02
    ld bc, $0151                                  ; $708c: $01 $51 $01
    ld d, c                                       ; $708f: $51
    ld bc, $0151                                  ; $7090: $01 $51 $01
    ld d, c                                       ; $7093: $51
    ldh [rSB], a                                  ; $7094: $e0 $01
    ld sp, $3101                                  ; $7096: $31 $01 $31
    ld bc, $0151                                  ; $7099: $01 $51 $01
    ld d, c                                       ; $709c: $51
    db $d3                                        ; $709d: $d3
    ld [hl], d                                    ; $709e: $72
    ld h, d                                       ; $709f: $62
    ld d, e                                       ; $70a0: $53
    ld sp, $c1d8                                  ; $70a1: $31 $d8 $c1
    and c                                         ; $70a4: $a1
    ld [c], a                                     ; $70a5: $e2
    ld c, h                                       ; $70a6: $4c
    ld [hl], b                                    ; $70a7: $70
    call nc, $d821                                ; $70a8: $d4 $21 $d8
    rst $08                                       ; $70ab: $cf
    ld [c], a                                     ; $70ac: $e2
    ld c, h                                       ; $70ad: $4c
    ld [hl], b                                    ; $70ae: $70
    call nc, $d851                                ; $70af: $d4 $51 $d8
    rst $00                                       ; $70b2: $c7
    rst $00                                       ; $70b3: $c7
    sbc $ff                                       ; $70b4: $de $ff
    call nc, $2035                                ; $70b6: $d4 $35 $20
    jr nc, @+$55                                  ; $70b9: $30 $53

    ld [hl], e                                    ; $70bb: $73
    add d                                         ; $70bc: $82
    ld [hl], d                                    ; $70bd: $72
    add c                                         ; $70be: $81
    and d                                         ; $70bf: $a2
    add d                                         ; $70c0: $82
    ld [hl], c                                    ; $70c1: $71
    add d                                         ; $70c2: $82
    ld [hl], d                                    ; $70c3: $72
    add c                                         ; $70c4: $81
    and d                                         ; $70c5: $a2
    add d                                         ; $70c6: $82
    db $e3                                        ; $70c7: $e3
    ret nc                                        ; $70c8: $d0

    rlca                                          ; $70c9: $07
    rst $20                                       ; $70ca: $e7
    ld bc, $20e6                                  ; $70cb: $01 $e6 $20
    jp hl                                         ; $70ce: $e9


    nop                                           ; $70cf: $00
    call c, $e811                                 ; $70d0: $dc $11 $e8
    rlca                                          ; $70d3: $07
    pop de                                        ; $70d4: $d1
    ld [c], a                                     ; $70d5: $e2
    db $10                                        ; $70d6: $10
    ld [hl], c                                    ; $70d7: $71
    pop de                                        ; $70d8: $d1
    ld d, d                                       ; $70d9: $52
    ld d, d                                       ; $70da: $52
    rst $10                                       ; $70db: $d7
    ld d, e                                       ; $70dc: $53
    ret c                                         ; $70dd: $d8

    ld d, c                                       ; $70de: $51
    pop bc                                        ; $70df: $c1
    rst $10                                       ; $70e0: $d7
    ld sp, $10e2                                  ; $70e1: $31 $e2 $10
    ld [hl], c                                    ; $70e4: $71
    pop de                                        ; $70e5: $d1
    jp nz, $a3b2                                  ; $70e6: $c2 $b2 $a3

    add c                                         ; $70e9: $81
    ld d, c                                       ; $70ea: $51
    ld sp, $3ee2                                  ; $70eb: $31 $e2 $3e
    ld [hl], c                                    ; $70ee: $71
    ld [c], a                                     ; $70ef: $e2
    ld d, b                                       ; $70f0: $50
    ld [hl], c                                    ; $70f1: $71
    ld [c], a                                     ; $70f2: $e2
    ld a, $71                                     ; $70f3: $3e $71
    ld [c], a                                     ; $70f5: $e2
    ld d, b                                       ; $70f6: $50
    ld [hl], c                                    ; $70f7: $71
    ld [c], a                                     ; $70f8: $e2
    ld a, $71                                     ; $70f9: $3e $71
    ld [c], a                                     ; $70fb: $e2
    ld d, b                                       ; $70fc: $50
    ld [hl], c                                    ; $70fd: $71
    ld [c], a                                     ; $70fe: $e2
    ld a, $71                                     ; $70ff: $3e $71
    ret nc                                        ; $7101: $d0

    ld bc, $dfd1                                  ; $7102: $01 $d1 $df
    inc b                                         ; $7105: $04
    call $c4d7                                    ; $7106: $cd $d7 $c4
    ld bc, $01c4                                  ; $7109: $01 $c4 $01
    ret c                                         ; $710c: $d8

    ldh [$de], a                                  ; $710d: $e0 $de
    rst $38                                       ; $710f: $ff
    pop de                                        ; $7110: $d1
    ld d, c                                       ; $7111: $51
    ld d, c                                       ; $7112: $51
    rst $10                                       ; $7113: $d7
    ld d, c                                       ; $7114: $51
    ret c                                         ; $7115: $d8

    ld d, b                                       ; $7116: $50
    rst $10                                       ; $7117: $d7
    ld sp, $50d8                                  ; $7118: $31 $d8 $50
    pop bc                                        ; $711b: $c1
    rst $10                                       ; $711c: $d7
    ld sp, $5141                                  ; $711d: $31 $41 $51
    ret c                                         ; $7120: $d8

    ld d, c                                       ; $7121: $51
    rst $10                                       ; $7122: $d7
    ld sp, $50d8                                  ; $7123: $31 $d8 $50
    rst $10                                       ; $7126: $d7
    ld hl, $d820                                  ; $7127: $21 $20 $d8
    pop bc                                        ; $712a: $c1
    and c                                         ; $712b: $a1
    pop bc                                        ; $712c: $c1
    add c                                         ; $712d: $81
    rst $10                                       ; $712e: $d7
    add c                                         ; $712f: $81
    ret c                                         ; $7130: $d8

    add c                                         ; $7131: $81
    rst $10                                       ; $7132: $d7
    add b                                         ; $7133: $80
    ret c                                         ; $7134: $d8

    and c                                         ; $7135: $a1
    and b                                         ; $7136: $a0
    rst $10                                       ; $7137: $d7
    and c                                         ; $7138: $a1
    ret c                                         ; $7139: $d8

    and c                                         ; $713a: $a1
    rst $10                                       ; $713b: $d7
    and c                                         ; $713c: $a1
    db $e3                                        ; $713d: $e3
    pop de                                        ; $713e: $d1
    add c                                         ; $713f: $81
    rst $10                                       ; $7140: $d7
    add c                                         ; $7141: $81
    ret c                                         ; $7142: $d8

    add c                                         ; $7143: $81
    rst $10                                       ; $7144: $d7
    add c                                         ; $7145: $81
    ret c                                         ; $7146: $d8

    and c                                         ; $7147: $a1
    rst $10                                       ; $7148: $d7
    and c                                         ; $7149: $a1
    ret c                                         ; $714a: $d8

    and c                                         ; $714b: $a1
    rst $10                                       ; $714c: $d7
    and c                                         ; $714d: $a1
    ret c                                         ; $714e: $d8

    db $e3                                        ; $714f: $e3
    pop de                                        ; $7150: $d1
    ld d, c                                       ; $7151: $51
    ld d, c                                       ; $7152: $51
    rst $10                                       ; $7153: $d7
    ld d, c                                       ; $7154: $51
    ret c                                         ; $7155: $d8

    ld d, b                                       ; $7156: $50
    rst $10                                       ; $7157: $d7
    ld sp, $50d8                                  ; $7158: $31 $d8 $50
    rst $10                                       ; $715b: $d7
    ld d, c                                       ; $715c: $51
    ld sp, $e351                                  ; $715d: $31 $51 $e3
    ret nc                                        ; $7160: $d0

    rlca                                          ; $7161: $07
    pop de                                        ; $7162: $d1
    rst $10                                       ; $7163: $d7
    sub b                                         ; $7164: $90
    ret c                                         ; $7165: $d8

    ld d, b                                       ; $7166: $50
    ld de, $5030                                  ; $7167: $11 $30 $50
    db $10                                        ; $716a: $10
    stop                                          ; $716b: $10 $00
    db $10                                        ; $716d: $10
    ld de, $5030                                  ; $716e: $11 $30 $50
    ld bc, $d7e2                                  ; $7171: $01 $e2 $d7
    ld [hl], c                                    ; $7174: $71
    ld [c], a                                     ; $7175: $e2
    rst $20                                       ; $7176: $e7
    ld [hl], c                                    ; $7177: $71
    ld [c], a                                     ; $7178: $e2
    rst $10                                       ; $7179: $d7
    ld [hl], c                                    ; $717a: $71
    db $10                                        ; $717b: $10
    ld d, b                                       ; $717c: $50
    ld de, $5030                                  ; $717d: $11 $30 $50
    db $10                                        ; $7180: $10
    stop                                          ; $7181: $10 $00
    db $10                                        ; $7183: $10
    ld de, $5030                                  ; $7184: $11 $30 $50
    ld h, b                                       ; $7187: $60
    add b                                         ; $7188: $80
    ld [c], a                                     ; $7189: $e2
    rst $10                                       ; $718a: $d7
    ld [hl], c                                    ; $718b: $71
    ld [c], a                                     ; $718c: $e2
    rst $20                                       ; $718d: $e7
    ld [hl], c                                    ; $718e: $71
    rst $10                                       ; $718f: $d7
    sub d                                         ; $7190: $92
    ret c                                         ; $7191: $d8

    jp nz, $91d7                                  ; $7192: $c2 $d7 $91

    ret c                                         ; $7195: $d8

    db $10                                        ; $7196: $10
    stop                                          ; $7197: $10 $00
    db $10                                        ; $7199: $10

jr_07d_719a:
    jr nc, @-$27                                  ; $719a: $30 $d7

    ld d, b                                       ; $719c: $50
    ret c                                         ; $719d: $d8

    or b                                          ; $719e: $b0
    and b                                         ; $719f: $a0
    rst $18                                       ; $71a0: $df
    inc bc                                        ; $71a1: $03
    ld de, $3051                                  ; $71a2: $11 $51 $30
    db $10                                        ; $71a5: $10
    ld d, b                                       ; $71a6: $50
    stop                                          ; $71a7: $10 $00
    db $10                                        ; $71a9: $10
    ld de, $5131                                  ; $71aa: $11 $31 $51
    ld de, $3051                                  ; $71ad: $11 $51 $30
    db $10                                        ; $71b0: $10
    ld d, b                                       ; $71b1: $50
    stop                                          ; $71b2: $10 $00
    db $10                                        ; $71b4: $10
    ld de, $3031                                  ; $71b5: $11 $31 $30
    jr nc, jr_07d_719a                            ; $71b8: $30 $e0

    ld de, $3051                                  ; $71ba: $11 $51 $30
    db $10                                        ; $71bd: $10
    ld d, b                                       ; $71be: $50
    stop                                          ; $71bf: $10 $00
    db $10                                        ; $71c1: $10
    ld de, $5131                                  ; $71c2: $11 $31 $51
    ld de, $3051                                  ; $71c5: $11 $51 $30
    db $10                                        ; $71c8: $10
    ld d, b                                       ; $71c9: $50
    stop                                          ; $71ca: $10 $00
    db $10                                        ; $71cc: $10
    rst $10                                       ; $71cd: $d7
    ld d, b                                       ; $71ce: $50
    ld d, b                                       ; $71cf: $50
    ret c                                         ; $71d0: $d8

    or b                                          ; $71d1: $b0
    or b                                          ; $71d2: $b0
    and b                                         ; $71d3: $a0
    and b                                         ; $71d4: $a0
    sbc $ff                                       ; $71d5: $de $ff
    db $10                                        ; $71d7: $10
    ld hl, $3110                                  ; $71d8: $21 $10 $31
    db $10                                        ; $71db: $10
    stop                                          ; $71dc: $10 $00
    ld de, $3010                                  ; $71de: $11 $10 $30
    rst $10                                       ; $71e1: $d7
    ld d, b                                       ; $71e2: $50
    ret c                                         ; $71e3: $d8

    or b                                          ; $71e4: $b0
    and b                                         ; $71e5: $a0
    db $e3                                        ; $71e6: $e3
    db $10                                        ; $71e7: $10
    ld d, b                                       ; $71e8: $50
    ld de, $5030                                  ; $71e9: $11 $30 $50
    db $10                                        ; $71ec: $10
    stop                                          ; $71ed: $10 $00
    db $10                                        ; $71ef: $10
    ld de, $5030                                  ; $71f0: $11 $30 $50
    ld bc, $d0e3                                  ; $71f3: $01 $e3 $d0
    ld b, $e5                                     ; $71f6: $06 $e5
    ld b, b                                       ; $71f8: $40
    and $b0                                       ; $71f9: $e6 $b0
    call c, $ea11                                 ; $71fb: $dc $11 $ea
    ld bc, $16eb                                  ; $71fe: $01 $eb $16
    add sp, $07                                   ; $7201: $e8 $07
    db $d3                                        ; $7203: $d3
    ld [c], a                                     ; $7204: $e2
    jr nc, jr_07d_7279                            ; $7205: $30 $72

    call nc, $d827                                ; $7207: $d4 $27 $d8
    and a                                         ; $720a: $a7
    ld [c], a                                     ; $720b: $e2
    jr nc, jr_07d_7280                            ; $720c: $30 $72

    call nc, Call_000_352f                        ; $720e: $d4 $2f $35
    ret c                                         ; $7211: $d8

    and l                                         ; $7212: $a5
    inc sp                                        ; $7213: $33
    ld d, a                                       ; $7214: $57
    ld d, d                                       ; $7215: $52
    ld [hl], d                                    ; $7216: $72
    add c                                         ; $7217: $81
    rst $10                                       ; $7218: $d7

jr_07d_7219:
    dec [hl]                                      ; $7219: $35
    ret c                                         ; $721a: $d8

jr_07d_721b:
    and l                                         ; $721b: $a5
    inc sp                                        ; $721c: $33
    ld e, a                                       ; $721d: $5f
    rst $10                                       ; $721e: $d7

jr_07d_721f:
    dec [hl]                                      ; $721f: $35
    ret c                                         ; $7220: $d8

jr_07d_7221:
    and l                                         ; $7221: $a5
    inc sp                                        ; $7222: $33
    ld d, a                                       ; $7223: $57
    ld d, d                                       ; $7224: $52
    ld [hl], d                                    ; $7225: $72
    add c                                         ; $7226: $81
    dec [hl]                                      ; $7227: $35
    pop bc                                        ; $7228: $c1
    pop bc                                        ; $7229: $c1
    and c                                         ; $722a: $a1
    add c                                         ; $722b: $81
    ld [hl], c                                    ; $722c: $71
    ld e, a                                       ; $722d: $5f
    sbc $ff                                       ; $722e: $de $ff
    db $d3                                        ; $7230: $d3
    xor c                                         ; $7231: $a9

jr_07d_7232:
    ld [hl], c                                    ; $7232: $71
    add c                                         ; $7233: $81
    and c                                         ; $7234: $a1
    inc [hl]                                      ; $7235: $34
    nop                                           ; $7236: $00
    and h                                         ; $7237: $a4
    nop                                           ; $7238: $00
    inc sp                                        ; $7239: $33
    adc c                                         ; $723a: $89
    ld [hl], c                                    ; $723b: $71
    ld d, c                                       ; $723c: $51
    ld sp, $d857                                  ; $723d: $31 $57 $d8
    and a                                         ; $7240: $a7
    rst $10                                       ; $7241: $d7
    dec [hl]                                      ; $7242: $35
    and l                                         ; $7243: $a5
    inc sp                                        ; $7244: $33
    add $00                                       ; $7245: $c6 $00
    jp nz, $22d7                                  ; $7247: $c2 $d7 $22

    ld sp, $203d                                  ; $724a: $31 $3d $20
    jr nc, jr_07d_7232                            ; $724d: $30 $e3

    ret nc                                        ; $724f: $d0

    ld b, $ea                                     ; $7250: $06 $ea
    ld bc, $16eb                                  ; $7252: $01 $eb $16
    add sp, $07                                   ; $7255: $e8 $07
    call c, $d311                                 ; $7257: $dc $11 $d3
    push hl                                       ; $725a: $e5
    ld b, b                                       ; $725b: $40
    and $90                                       ; $725c: $e6 $90

jr_07d_725e:
    ld [c], a                                     ; $725e: $e2
    ret nz                                        ; $725f: $c0

    ld [hl], d                                    ; $7260: $72
    db $d3                                        ; $7261: $d3
    and a                                         ; $7262: $a7
    ld d, a                                       ; $7263: $57
    ld [c], a                                     ; $7264: $e2
    ret nz                                        ; $7265: $c0

    ld [hl], d                                    ; $7266: $72
    db $d3                                        ; $7267: $d3
    xor a                                         ; $7268: $af
    push hl                                       ; $7269: $e5

jr_07d_726a:
    add b                                         ; $726a: $80
    and $b3                                       ; $726b: $e6 $b3
    ld [c], a                                     ; $726d: $e2
    and $72                                       ; $726e: $e6 $72
    ld [hl], c                                    ; $7270: $71
    ld sp, $3171                                  ; $7271: $31 $71 $31
    add c                                         ; $7274: $81
    ld sp, $3181                                  ; $7275: $31 $81 $31
    push hl                                       ; $7278: $e5

jr_07d_7279:
    nop                                           ; $7279: $00
    and $83                                       ; $727a: $e6 $83
    rst $10                                       ; $727c: $d7

jr_07d_727d:
    rst $18                                       ; $727d: $df
    ld [bc], a                                    ; $727e: $02
    ld d, b                                       ; $727f: $50

jr_07d_7280:
    jr nz, jr_07d_72d2                            ; $7280: $20 $50

    and b                                         ; $7282: $a0
    rst $10                                       ; $7283: $d7
    jr nz, jr_07d_725e                            ; $7284: $20 $d8

    and b                                         ; $7286: $a0

jr_07d_7287:
    ld d, b                                       ; $7287: $50
    jr nz, jr_07d_726a                            ; $7288: $20 $e0

    and $b3                                       ; $728a: $e6 $b3
    push hl                                       ; $728c: $e5
    add b                                         ; $728d: $80

jr_07d_728e:
    ld [c], a                                     ; $728e: $e2
    and $72                                       ; $728f: $e6 $72
    push hl                                       ; $7291: $e5
    nop                                           ; $7292: $00
    and $83                                       ; $7293: $e6 $83

jr_07d_7295:
    db $d3                                        ; $7295: $d3
    add b                                         ; $7296: $80
    jr nc, jr_07d_7219                            ; $7297: $30 $80

    jr nc, jr_07d_721b                            ; $7299: $30 $80

    jr nc, @-$3e                                  ; $729b: $30 $c0

    jr nc, jr_07d_721f                            ; $729d: $30 $80

    jr nc, jr_07d_7221                            ; $729f: $30 $80

    ret nz                                        ; $72a1: $c0

    rst $10                                       ; $72a2: $d7
    jr nc, jr_07d_727d                            ; $72a3: $30 $d8

    ret nz                                        ; $72a5: $c0

    add b                                         ; $72a6: $80
    jr nc, @-$5e                                  ; $72a7: $30 $a0

    ld d, b                                       ; $72a9: $50
    and b                                         ; $72aa: $a0
    ret nz                                        ; $72ab: $c0

    rst $10                                       ; $72ac: $d7
    jr nz, jr_07d_7287                            ; $72ad: $20 $d8

    ld d, b                                       ; $72af: $50
    and b                                         ; $72b0: $a0
    ret nz                                        ; $72b1: $c0

    ld d, b                                       ; $72b2: $50
    rst $10                                       ; $72b3: $d7
    jr nz, jr_07d_728e                            ; $72b4: $20 $d8

    ld d, b                                       ; $72b6: $50
    and b                                         ; $72b7: $a0
    ret nz                                        ; $72b8: $c0

    ld d, b                                       ; $72b9: $50
    rst $10                                       ; $72ba: $d7
    jr nz, jr_07d_7295                            ; $72bb: $20 $d8

    ld d, b                                       ; $72bd: $50
    sbc $ff                                       ; $72be: $de $ff
    db $d3                                        ; $72c0: $d3
    ld a, c                                       ; $72c1: $79
    ld sp, $7151                                  ; $72c2: $31 $51 $71
    ret c                                         ; $72c5: $d8

    and h                                         ; $72c6: $a4
    nop                                           ; $72c7: $00
    rst $10                                       ; $72c8: $d7
    inc [hl]                                      ; $72c9: $34
    nop                                           ; $72ca: $00
    ret c                                         ; $72cb: $d8

    and e                                         ; $72cc: $a3
    rst $10                                       ; $72cd: $d7
    add hl, sp                                    ; $72ce: $39
    ld sp, $d821                                  ; $72cf: $31 $21 $d8

jr_07d_72d2:
    pop bc                                        ; $72d2: $c1
    rst $10                                       ; $72d3: $d7
    daa                                           ; $72d4: $27
    ret c                                         ; $72d5: $d8

    ld d, a                                       ; $72d6: $57

jr_07d_72d7:
    push bc                                       ; $72d7: $c5
    rst $10                                       ; $72d8: $d7
    dec [hl]                                      ; $72d9: $35
    ret c                                         ; $72da: $d8

jr_07d_72db:
    and e                                         ; $72db: $a3
    rst $10                                       ; $72dc: $d7
    add [hl]                                      ; $72dd: $86
    nop                                           ; $72de: $00
    add d                                         ; $72df: $82
    and d                                         ; $72e0: $a2
    pop bc                                        ; $72e1: $c1
    xor l                                         ; $72e2: $ad
    and b                                         ; $72e3: $a0
    and b                                         ; $72e4: $a0
    db $e3                                        ; $72e5: $e3
    jp nc, Jump_000_3171                          ; $72e6: $d2 $71 $31

    ld [hl], c                                    ; $72e9: $71
    ld sp, $3181                                  ; $72ea: $31 $81 $31
    add c                                         ; $72ed: $81
    ld sp, $51a1                                  ; $72ee: $31 $a1 $51
    and c                                         ; $72f1: $a1
    ld d, c                                       ; $72f2: $51
    push hl                                       ; $72f3: $e5
    nop                                           ; $72f4: $00
    and $83                                       ; $72f5: $e6 $83
    rst $10                                       ; $72f7: $d7
    ld d, b                                       ; $72f8: $50
    jr nz, jr_07d_734b                            ; $72f9: $20 $50

    and b                                         ; $72fb: $a0
    rst $10                                       ; $72fc: $d7
    jr nz, jr_07d_72d7                            ; $72fd: $20 $d8

    and b                                         ; $72ff: $a0
    ld d, b                                       ; $7300: $50
    jr nz, jr_07d_72db                            ; $7301: $20 $d8

    and $b3                                       ; $7303: $e6 $b3
    push hl                                       ; $7305: $e5
    add b                                         ; $7306: $80
    db $e3                                        ; $7307: $e3
    ret nc                                        ; $7308: $d0

    ld b, $e7                                     ; $7309: $06 $e7
    ld bc, $20e6                                  ; $730b: $01 $e6 $20
    jp hl                                         ; $730e: $e9


    nop                                           ; $730f: $00
    call c, $e811                                 ; $7310: $dc $11 $e8
    ld b, $d2                                     ; $7313: $06 $d2
    rst $18                                       ; $7315: $df
    ld [bc], a                                    ; $7316: $02
    ld sp, $3131                                  ; $7317: $31 $31 $31
    ld sp, $2121                                  ; $731a: $31 $21 $21
    ld hl, $d821                                  ; $731d: $21 $21 $d8
    pop bc                                        ; $7320: $c1
    pop bc                                        ; $7321: $c1
    pop bc                                        ; $7322: $c1
    pop bc                                        ; $7323: $c1
    and c                                         ; $7324: $a1
    and c                                         ; $7325: $a1
    and c                                         ; $7326: $a1
    and c                                         ; $7327: $a1
    rst $18                                       ; $7328: $df
    ld [bc], a                                    ; $7329: $02
    add c                                         ; $732a: $81
    rst $10                                       ; $732b: $d7
    add c                                         ; $732c: $81
    ret c                                         ; $732d: $d8

    add c                                         ; $732e: $81
    rst $10                                       ; $732f: $d7
    add c                                         ; $7330: $81
    ret c                                         ; $7331: $d8

    ldh [$df], a                                  ; $7332: $e0 $df
    ld [bc], a                                    ; $7334: $02
    and c                                         ; $7335: $a1
    rst $10                                       ; $7336: $d7
    and c                                         ; $7337: $a1
    ret c                                         ; $7338: $d8

    and c                                         ; $7339: $a1
    rst $10                                       ; $733a: $d7
    and c                                         ; $733b: $a1
    ret c                                         ; $733c: $d8

    ldh [$c1], a                                  ; $733d: $e0 $c1
    rst $10                                       ; $733f: $d7
    pop bc                                        ; $7340: $c1
    ret c                                         ; $7341: $d8

    pop bc                                        ; $7342: $c1
    rst $10                                       ; $7343: $d7
    pop bc                                        ; $7344: $c1
    ret c                                         ; $7345: $d8

    and c                                         ; $7346: $a1
    rst $10                                       ; $7347: $d7
    and c                                         ; $7348: $a1
    ret c                                         ; $7349: $d8

    and c                                         ; $734a: $a1

jr_07d_734b:
    rst $10                                       ; $734b: $d7
    and c                                         ; $734c: $a1
    ret c                                         ; $734d: $d8

    rst $18                                       ; $734e: $df
    ld [bc], a                                    ; $734f: $02
    add c                                         ; $7350: $81
    rst $10                                       ; $7351: $d7
    add c                                         ; $7352: $81
    ret c                                         ; $7353: $d8

    add c                                         ; $7354: $81
    rst $10                                       ; $7355: $d7
    add c                                         ; $7356: $81
    ret c                                         ; $7357: $d8

    ldh [$df], a                                  ; $7358: $e0 $df
    ld [bc], a                                    ; $735a: $02
    and c                                         ; $735b: $a1
    rst $10                                       ; $735c: $d7
    and c                                         ; $735d: $a1
    ret c                                         ; $735e: $d8

    and c                                         ; $735f: $a1
    rst $10                                       ; $7360: $d7
    and c                                         ; $7361: $a1
    ret c                                         ; $7362: $d8

    ldh [$a1], a                                  ; $7363: $e0 $a1
    rst $10                                       ; $7365: $d7
    and c                                         ; $7366: $a1
    ret c                                         ; $7367: $d8

    add c                                         ; $7368: $81
    rst $10                                       ; $7369: $d7
    add c                                         ; $736a: $81
    ret c                                         ; $736b: $d8

    ld [hl], c                                    ; $736c: $71
    rst $10                                       ; $736d: $d7
    ld [hl], c                                    ; $736e: $71
    ret c                                         ; $736f: $d8

    ld d, c                                       ; $7370: $51
    rst $10                                       ; $7371: $d7
    ld d, c                                       ; $7372: $51
    ldh [$d1], a                                  ; $7373: $e0 $d1
    ld [hl], c                                    ; $7375: $71
    ld [hl], c                                    ; $7376: $71
    ld [hl], c                                    ; $7377: $71
    ld [hl], c                                    ; $7378: $71
    add c                                         ; $7379: $81
    add c                                         ; $737a: $81
    add c                                         ; $737b: $81
    add c                                         ; $737c: $81
    and c                                         ; $737d: $a1
    and c                                         ; $737e: $a1
    and c                                         ; $737f: $a1
    and c                                         ; $7380: $a1
    and c                                         ; $7381: $a1
    rst $10                                       ; $7382: $d7
    and c                                         ; $7383: $a1
    ret c                                         ; $7384: $d8

    and c                                         ; $7385: $a1
    rst $10                                       ; $7386: $d7
    and c                                         ; $7387: $a1
    ret c                                         ; $7388: $d8

    ld [hl], c                                    ; $7389: $71
    rst $10                                       ; $738a: $d7
    ld [hl], c                                    ; $738b: $71
    ret c                                         ; $738c: $d8

    ld [hl], c                                    ; $738d: $71
    rst $10                                       ; $738e: $d7
    ld [hl], c                                    ; $738f: $71
    ret c                                         ; $7390: $d8

    add c                                         ; $7391: $81
    rst $10                                       ; $7392: $d7
    add c                                         ; $7393: $81
    ret c                                         ; $7394: $d8

    add c                                         ; $7395: $81
    rst $10                                       ; $7396: $d7
    add c                                         ; $7397: $81
    ret c                                         ; $7398: $d8

    and c                                         ; $7399: $a1
    rst $10                                       ; $739a: $d7
    and c                                         ; $739b: $a1
    ret c                                         ; $739c: $d8

    add c                                         ; $739d: $81
    rst $10                                       ; $739e: $d7
    add c                                         ; $739f: $81
    ret c                                         ; $73a0: $d8

    ld [hl], c                                    ; $73a1: $71
    rst $10                                       ; $73a2: $d7
    ld [hl], c                                    ; $73a3: $71
    ret c                                         ; $73a4: $d8

    ld d, c                                       ; $73a5: $51
    rst $10                                       ; $73a6: $d7
    ld d, c                                       ; $73a7: $51
    ret c                                         ; $73a8: $d8

    ld sp, $3131                                  ; $73a9: $31 $31 $31
    ld sp, $d781                                  ; $73ac: $31 $81 $d7
    add c                                         ; $73af: $81
    ret c                                         ; $73b0: $d8

    add c                                         ; $73b1: $81
    rst $10                                       ; $73b2: $d7
    add c                                         ; $73b3: $81
    ret c                                         ; $73b4: $d8

    and c                                         ; $73b5: $a1
    and c                                         ; $73b6: $a1
    rst $10                                       ; $73b7: $d7
    and c                                         ; $73b8: $a1
    ret c                                         ; $73b9: $d8

    and c                                         ; $73ba: $a1
    and c                                         ; $73bb: $a1
    rst $10                                       ; $73bc: $d7
    and c                                         ; $73bd: $a1
    ret c                                         ; $73be: $d8

    and c                                         ; $73bf: $a1
    and c                                         ; $73c0: $a1
    add c                                         ; $73c1: $81
    add c                                         ; $73c2: $81
    rst $10                                       ; $73c3: $d7
    add c                                         ; $73c4: $81
    ret c                                         ; $73c5: $d8

    add c                                         ; $73c6: $81
    add c                                         ; $73c7: $81
    rst $10                                       ; $73c8: $d7
    add c                                         ; $73c9: $81
    ret c                                         ; $73ca: $d8

    add c                                         ; $73cb: $81
    rst $10                                       ; $73cc: $d7
    add c                                         ; $73cd: $81
    ret c                                         ; $73ce: $d8

    and c                                         ; $73cf: $a1
    rst $10                                       ; $73d0: $d7
    and c                                         ; $73d1: $a1
    ret c                                         ; $73d2: $d8

    add c                                         ; $73d3: $81
    rst $10                                       ; $73d4: $d7
    add c                                         ; $73d5: $81
    ret c                                         ; $73d6: $d8

    ld [hl], c                                    ; $73d7: $71

jr_07d_73d8:
    rst $10                                       ; $73d8: $d7
    ld [hl], c                                    ; $73d9: $71
    ret c                                         ; $73da: $d8

    ld d, c                                       ; $73db: $51
    rst $10                                       ; $73dc: $d7
    ld d, c                                       ; $73dd: $51
    sbc $ff                                       ; $73de: $de $ff
    ret nc                                        ; $73e0: $d0

    ld b, $d1                                     ; $73e1: $06 $d1
    ld [c], a                                     ; $73e3: $e2
    ld b, a                                       ; $73e4: $47
    ld [hl], h                                    ; $73e5: $74
    ld [c], a                                     ; $73e6: $e2
    ld b, a                                       ; $73e7: $47
    ld [hl], h                                    ; $73e8: $74
    ld [c], a                                     ; $73e9: $e2
    ld b, a                                       ; $73ea: $47
    ld [hl], h                                    ; $73eb: $74
    ld [c], a                                     ; $73ec: $e2
    ld d, c                                       ; $73ed: $51
    ld [hl], h                                    ; $73ee: $74
    ld [c], a                                     ; $73ef: $e2
    ld b, a                                       ; $73f0: $47
    ld [hl], h                                    ; $73f1: $74
    ld [c], a                                     ; $73f2: $e2
    ld b, a                                       ; $73f3: $47
    ld [hl], h                                    ; $73f4: $74
    ld [c], a                                     ; $73f5: $e2
    ld d, c                                       ; $73f6: $51
    ld [hl], h                                    ; $73f7: $74
    ld de, $3151                                  ; $73f8: $11 $51 $31
    ld d, c                                       ; $73fb: $51
    ld de, $1050                                  ; $73fc: $11 $50 $10
    jr nc, jr_07d_73d8                            ; $73ff: $30 $d7

    ld d, b                                       ; $7401: $50
    ret c                                         ; $7402: $d8

    or b                                          ; $7403: $b0
    and b                                         ; $7404: $a0
    ld [c], a                                     ; $7405: $e2
    ld b, a                                       ; $7406: $47
    ld [hl], h                                    ; $7407: $74
    ld [c], a                                     ; $7408: $e2
    ld b, a                                       ; $7409: $47
    ld [hl], h                                    ; $740a: $74
    ld [c], a                                     ; $740b: $e2
    ld b, a                                       ; $740c: $47
    ld [hl], h                                    ; $740d: $74
    ld [c], a                                     ; $740e: $e2
    ld d, c                                       ; $740f: $51
    ld [hl], h                                    ; $7410: $74
    ld [c], a                                     ; $7411: $e2
    ld b, a                                       ; $7412: $47
    ld [hl], h                                    ; $7413: $74
    ld [c], a                                     ; $7414: $e2
    ld b, a                                       ; $7415: $47
    ld [hl], h                                    ; $7416: $74
    ld [c], a                                     ; $7417: $e2
    ld d, c                                       ; $7418: $51
    ld [hl], h                                    ; $7419: $74
    ld de, $3151                                  ; $741a: $11 $51 $31
    ld d, c                                       ; $741d: $51
    ld de, $1050                                  ; $741e: $11 $50 $10
    ld sp, $3040                                  ; $7421: $31 $40 $30
    rst $10                                       ; $7424: $d7
    sub d                                         ; $7425: $92
    ret c                                         ; $7426: $d8

    db $10                                        ; $7427: $10
    ld sp, $1111                                  ; $7428: $31 $11 $11
    ld d, b                                       ; $742b: $50
    db $10                                        ; $742c: $10
    ld sp, $2050                                  ; $742d: $31 $50 $20
    ld [c], a                                     ; $7430: $e2
    ld e, h                                       ; $7431: $5c
    ld [hl], h                                    ; $7432: $74
    ld [c], a                                     ; $7433: $e2
    ld h, a                                       ; $7434: $67
    ld [hl], h                                    ; $7435: $74
    ld [c], a                                     ; $7436: $e2
    ld e, h                                       ; $7437: $5c
    ld [hl], h                                    ; $7438: $74
    ld [c], a                                     ; $7439: $e2
    ld [hl], e                                    ; $743a: $73
    ld [hl], h                                    ; $743b: $74
    ld [c], a                                     ; $743c: $e2
    ld e, h                                       ; $743d: $5c
    ld [hl], h                                    ; $743e: $74
    ld [c], a                                     ; $743f: $e2
    ld e, h                                       ; $7440: $5c
    ld [hl], h                                    ; $7441: $74
    ld [c], a                                     ; $7442: $e2
    ld [hl], e                                    ; $7443: $73
    ld [hl], h                                    ; $7444: $74
    sbc $ff                                       ; $7445: $de $ff
    ld de, $3151                                  ; $7447: $11 $51 $31
    ld d, c                                       ; $744a: $51
    ld de, $1050                                  ; $744b: $11 $50 $10
    ld sp, $e351                                  ; $744e: $31 $51 $e3
    ld de, $3151                                  ; $7451: $11 $51 $31
    ld d, c                                       ; $7454: $51
    ld de, $1050                                  ; $7455: $11 $50 $10
    ld sp, $2050                                  ; $7458: $31 $50 $20
    db $e3                                        ; $745b: $e3
    ld de, $1050                                  ; $745c: $11 $50 $10
    ld sp, $1151                                  ; $745f: $31 $51 $11
    ld d, b                                       ; $7462: $50
    db $10                                        ; $7463: $10
    ld sp, $e351                                  ; $7464: $31 $51 $e3
    ld de, $1050                                  ; $7467: $11 $50 $10
    ld sp, $1151                                  ; $746a: $31 $51 $11
    ld d, b                                       ; $746d: $50
    db $10                                        ; $746e: $10
    ld sp, $2050                                  ; $746f: $31 $50 $20
    db $e3                                        ; $7472: $e3
    ld de, $1050                                  ; $7473: $11 $50 $10
    ld sp, $1151                                  ; $7476: $31 $51 $11
    ld d, b                                       ; $7479: $50
    db $10                                        ; $747a: $10
    ld sp, $3030                                  ; $747b: $31 $30 $30
    db $e3                                        ; $747e: $e3
    ret nc                                        ; $747f: $d0

    ld [$11dc], sp                                ; $7480: $08 $dc $11
    push hl                                       ; $7483: $e5
    add b                                         ; $7484: $80
    xor $22                                       ; $7485: $ee $22
    pop de                                        ; $7487: $d1
    and $a0                                       ; $7488: $e6 $a0
    add sp, $08                                   ; $748a: $e8 $08
    ld [$eb0a], a                                 ; $748c: $ea $0a $eb
    ld bc, $02df                                  ; $748f: $01 $df $02
    and a                                         ; $7492: $a7
    add a                                         ; $7493: $87
    and a                                         ; $7494: $a7
    add a                                         ; $7495: $87
    and a                                         ; $7496: $a7
    add a                                         ; $7497: $87
    and a                                         ; $7498: $a7
    add a                                         ; $7499: $87
    ldh [$e6], a                                  ; $749a: $e0 $e6
    ret nz                                        ; $749c: $c0

    ld [$e805], a                                 ; $749d: $ea $05 $e8
    ld b, $df                                     ; $74a0: $06 $df
    ld [bc], a                                    ; $74a2: $02
    ld [c], a                                     ; $74a3: $e2
    and $74                                       ; $74a4: $e6 $74
    db $d3                                        ; $74a6: $d3
    add c                                         ; $74a7: $81
    add b                                         ; $74a8: $80
    jr nc, @-$7b                                  ; $74a9: $30 $83

    ld d, c                                       ; $74ab: $51
    ld d, b                                       ; $74ac: $50
    ret c                                         ; $74ad: $d8

    and b                                         ; $74ae: $a0
    rst $10                                       ; $74af: $d7
    ld d, e                                       ; $74b0: $53
    ld [c], a                                     ; $74b1: $e2
    and $74                                       ; $74b2: $e6 $74
    call nc, $d810                                ; $74b4: $d4 $10 $d8
    ret nz                                        ; $74b7: $c0

    and b                                         ; $74b8: $a0
    nop                                           ; $74b9: $00
    add b                                         ; $74ba: $80
    nop                                           ; $74bb: $00
    and b                                         ; $74bc: $a0
    nop                                           ; $74bd: $00
    ld d, a                                       ; $74be: $57
    ldh [$e6], a                                  ; $74bf: $e0 $e6
    and b                                         ; $74c1: $a0
    add sp, $08                                   ; $74c2: $e8 $08
    ld [$d10a], a                                 ; $74c4: $ea $0a $d1
    rst $18                                       ; $74c7: $df
    ld [bc], a                                    ; $74c8: $02
    ld d, a                                       ; $74c9: $57
    add a                                         ; $74ca: $87
    ld d, a                                       ; $74cb: $57
    add a                                         ; $74cc: $87
    ld d, a                                       ; $74cd: $57
    add a                                         ; $74ce: $87
    ld d, a                                       ; $74cf: $57
    add a                                         ; $74d0: $87
    ldh [$de], a                                  ; $74d1: $e0 $de
    rst $38                                       ; $74d3: $ff
    jp nc, $d7a1                                  ; $74d4: $d2 $a1 $d7

    ld d, c                                       ; $74d7: $51
    add c                                         ; $74d8: $81
    ld [hl], b                                    ; $74d9: $70
    ld d, b                                       ; $74da: $50
    jr nc, jr_07d_74dd                            ; $74db: $30 $00

jr_07d_74dd:
    ld d, b                                       ; $74dd: $50
    nop                                           ; $74de: $00
    ret c                                         ; $74df: $d8

    and b                                         ; $74e0: $a0
    nop                                           ; $74e1: $00
    rst $10                                       ; $74e2: $d7
    ld d, b                                       ; $74e3: $50
    nop                                           ; $74e4: $00
    db $e3                                        ; $74e5: $e3
    jp nc, $a2a3                                  ; $74e6: $d2 $a3 $a2

    add b                                         ; $74e9: $80
    and c                                         ; $74ea: $a1
    rst $10                                       ; $74eb: $d7
    ld sp, $a151                                  ; $74ec: $31 $51 $a1
    db $e3                                        ; $74ef: $e3
    db $d3                                        ; $74f0: $d3
    ld d, e                                       ; $74f1: $53
    ld [hl-], a                                   ; $74f2: $32
    ld d, b                                       ; $74f3: $50
    ret c                                         ; $74f4: $d8

    and c                                         ; $74f5: $a1
    pop bc                                        ; $74f6: $c1
    rst $10                                       ; $74f7: $d7
    ld sp, $e351                                  ; $74f8: $31 $51 $e3
    ret nc                                        ; $74fb: $d0

    ld [$11dc], sp                                ; $74fc: $08 $dc $11
    push hl                                       ; $74ff: $e5
    add b                                         ; $7500: $80
    xor $22                                       ; $7501: $ee $22
    jp nc, $0aea                                  ; $7503: $d2 $ea $0a

    db $eb                                        ; $7506: $eb
    ld bc, $a0e6                                  ; $7507: $01 $e6 $a0
    add sp, $08                                   ; $750a: $e8 $08
    rst $18                                       ; $750c: $df
    ld [bc], a                                    ; $750d: $02
    ld d, a                                       ; $750e: $57
    scf                                           ; $750f: $37
    ld d, a                                       ; $7510: $57
    scf                                           ; $7511: $37
    ld d, a                                       ; $7512: $57
    scf                                           ; $7513: $37
    ld d, a                                       ; $7514: $57
    scf                                           ; $7515: $37
    ldh [$ea], a                                  ; $7516: $e0 $ea
    dec b                                         ; $7518: $05
    add sp, $06                                   ; $7519: $e8 $06
    rst $18                                       ; $751b: $df
    ld [bc], a                                    ; $751c: $02
    ld [c], a                                     ; $751d: $e2
    ld d, e                                       ; $751e: $53
    ld [hl], l                                    ; $751f: $75
    db $d3                                        ; $7520: $d3
    ld sp, $d830                                  ; $7521: $31 $30 $d8
    and b                                         ; $7524: $a0
    rst $10                                       ; $7525: $d7
    inc sp                                        ; $7526: $33
    ret c                                         ; $7527: $d8

    pop bc                                        ; $7528: $c1
    ret nz                                        ; $7529: $c0

    ld d, b                                       ; $752a: $50
    jp $53e2                                      ; $752b: $c3 $e2 $53


    ld [hl], l                                    ; $752e: $75
    db $d3                                        ; $752f: $d3
    add b                                         ; $7530: $80
    ld [hl], b                                    ; $7531: $70
    ld d, b                                       ; $7532: $50
    nop                                           ; $7533: $00
    jr nc, jr_07d_7536                            ; $7534: $30 $00

jr_07d_7536:
    ld d, b                                       ; $7536: $50
    nop                                           ; $7537: $00
    ret c                                         ; $7538: $d8

    rst $00                                       ; $7539: $c7
    ldh [$e8], a                                  ; $753a: $e0 $e8
    ld [$dfd1], sp                                ; $753c: $08 $d1 $df
    ld [bc], a                                    ; $753f: $02
    rst $00                                       ; $7540: $c7
    rst $10                                       ; $7541: $d7
    scf                                           ; $7542: $37
    ret c                                         ; $7543: $d8

    rst $00                                       ; $7544: $c7
    rst $10                                       ; $7545: $d7

jr_07d_7546:
    scf                                           ; $7546: $37
    ret c                                         ; $7547: $d8

    rst $00                                       ; $7548: $c7
    rst $10                                       ; $7549: $d7
    scf                                           ; $754a: $37
    ret c                                         ; $754b: $d8

    rst $00                                       ; $754c: $c7
    rst $10                                       ; $754d: $d7
    scf                                           ; $754e: $37
    ret c                                         ; $754f: $d8

    ldh [$de], a                                  ; $7550: $e0 $de
    rst $38                                       ; $7552: $ff
    jp nc, Jump_07d_5253                          ; $7553: $d2 $53 $52

    jr nc, jr_07d_75a9                            ; $7556: $30 $51

    and c                                         ; $7558: $a1
    pop bc                                        ; $7559: $c1
    rst $10                                       ; $755a: $d7
    ld d, c                                       ; $755b: $51
    db $e3                                        ; $755c: $e3
    ret nc                                        ; $755d: $d0

    ld [$11dc], sp                                ; $755e: $08 $dc $11
    and $20                                       ; $7561: $e6 $20
    jp nc, Jump_000_1fe7                          ; $7563: $d2 $e7 $1f

    add sp, $07                                   ; $7566: $e8 $07
    rst $18                                       ; $7568: $df
    ld [bc], a                                    ; $7569: $02
    ld [c], a                                     ; $756a: $e2
    call nc, $d274                                ; $756b: $d4 $74 $d2
    and b                                         ; $756e: $a0
    nop                                           ; $756f: $00
    and b                                         ; $7570: $a0
    add b                                         ; $7571: $80
    xor e                                         ; $7572: $ab
    ld [c], a                                     ; $7573: $e2
    call nc, $d374                                ; $7574: $d4 $74 $d3
    and b                                         ; $7577: $a0
    add b                                         ; $7578: $80
    ld [hl], b                                    ; $7579: $70
    nop                                           ; $757a: $00
    ld d, b                                       ; $757b: $50
    nop                                           ; $757c: $00
    ld [hl], b                                    ; $757d: $70
    nop                                           ; $757e: $00
    inc sp                                        ; $757f: $33
    ld d, e                                       ; $7580: $53
    ldh [$e8], a                                  ; $7581: $e0 $e8

jr_07d_7583:
    ld [$01e7], sp                                ; $7583: $08 $e7 $01
    pop de                                        ; $7586: $d1
    rst $18                                       ; $7587: $df
    ld [bc], a                                    ; $7588: $02
    and a                                         ; $7589: $a7
    add a                                         ; $758a: $87
    and a                                         ; $758b: $a7
    add a                                         ; $758c: $87
    and a                                         ; $758d: $a7
    add a                                         ; $758e: $87
    and a                                         ; $758f: $a7
    add a                                         ; $7590: $87
    ldh [$e7], a                                  ; $7591: $e0 $e7
    rra                                           ; $7593: $1f
    add sp, $07                                   ; $7594: $e8 $07
    rst $18                                       ; $7596: $df
    ld [bc], a                                    ; $7597: $02
    ld [c], a                                     ; $7598: $e2
    ldh a, [$74]                                  ; $7599: $f0 $74
    jp nc, $c0a0                                  ; $759b: $d2 $a0 $c0

    rst $10                                       ; $759e: $d7
    jr nc, @+$52                                  ; $759f: $30 $50

    add b                                         ; $75a1: $80
    ld [hl], b                                    ; $75a2: $70
    ld d, b                                       ; $75a3: $50
    jr nc, jr_07d_7546                            ; $75a4: $30 $a0

    add b                                         ; $75a6: $80
    ld [hl], b                                    ; $75a7: $70
    ld d, b                                       ; $75a8: $50

jr_07d_75a9:
    jr nc, jr_07d_7583                            ; $75a9: $30 $d8

    ret nz                                        ; $75ab: $c0

    and b                                         ; $75ac: $a0
    ret nz                                        ; $75ad: $c0

    ld [c], a                                     ; $75ae: $e2
    ldh a, [$74]                                  ; $75af: $f0 $74
    jp nc, $c0a0                                  ; $75b1: $d2 $a0 $c0

    rst $10                                       ; $75b4: $d7
    jr nc, jr_07d_7607                            ; $75b5: $30 $50

    ret c                                         ; $75b7: $d8

    and b                                         ; $75b8: $a0
    ret nz                                        ; $75b9: $c0

    rst $10                                       ; $75ba: $d7
    jr nc, jr_07d_760d                            ; $75bb: $30 $50

    ret c                                         ; $75bd: $d8

    and b                                         ; $75be: $a0
    nop                                           ; $75bf: $00
    add b                                         ; $75c0: $80
    nop                                           ; $75c1: $00
    and e                                         ; $75c2: $a3
    ldh [$de], a                                  ; $75c3: $e0 $de
    rst $38                                       ; $75c5: $ff
    ret nc                                        ; $75c6: $d0

    ld [$e2d1], sp                                ; $75c7: $08 $d1 $e2
    inc d                                         ; $75ca: $14
    halt                                          ; $75cb: $76
    ld de, $a0a0                                  ; $75cc: $11 $a0 $a0
    ld [c], a                                     ; $75cf: $e2
    inc d                                         ; $75d0: $14
    halt                                          ; $75d1: $76
    db $10                                        ; $75d2: $10
    jr nc, jr_07d_7605                            ; $75d3: $30 $30

    jr nc, @-$1f                                  ; $75d5: $30 $df

    inc bc                                        ; $75d7: $03
    ld de, $3151                                  ; $75d8: $11 $51 $31
    ld d, c                                       ; $75db: $51
    ld de, $3151                                  ; $75dc: $11 $51 $31
    and b                                         ; $75df: $a0
    and b                                         ; $75e0: $a0
    ld de, $3151                                  ; $75e1: $11 $51 $31
    ld d, c                                       ; $75e4: $51
    ld de, $3151                                  ; $75e5: $11 $51 $31
    and c                                         ; $75e8: $a1
    ldh [rNR11], a                                ; $75e9: $e0 $11
    ld d, c                                       ; $75eb: $51
    ld sp, $1151                                  ; $75ec: $31 $51 $11
    ld d, c                                       ; $75ef: $51
    ld sp, $a0a0                                  ; $75f0: $31 $a0 $a0
    ld de, $3151                                  ; $75f3: $11 $51 $31
    ld d, c                                       ; $75f6: $51
    ld de, $3051                                  ; $75f7: $11 $51 $30
    jr nc, jr_07d_762c                            ; $75fa: $30 $30

    jr nc, @-$1f                                  ; $75fc: $30 $df

    ld [bc], a                                    ; $75fe: $02
    rst $18                                       ; $75ff: $df
    inc bc                                        ; $7600: $03
    and c                                         ; $7601: $a1
    ld d, c                                       ; $7602: $51
    inc de                                        ; $7603: $13
    and c                                         ; $7604: $a1

jr_07d_7605:
    ld d, c                                       ; $7605: $51
    inc de                                        ; $7606: $13

jr_07d_7607:
    ldh [$a1], a                                  ; $7607: $e0 $a1
    ld d, c                                       ; $7609: $51
    inc de                                        ; $760a: $13
    and c                                         ; $760b: $a1
    ld d, c                                       ; $760c: $51

jr_07d_760d:
    db $10                                        ; $760d: $10
    jr nc, jr_07d_7640                            ; $760e: $30 $30

    jr nc, @-$1e                                  ; $7610: $30 $e0

    sbc $ff                                       ; $7612: $de $ff
    and e                                         ; $7614: $a3
    inc de                                        ; $7615: $13
    and e                                         ; $7616: $a3
    inc de                                        ; $7617: $13
    and c                                         ; $7618: $a1
    and b                                         ; $7619: $a0
    and b                                         ; $761a: $a0
    inc de                                        ; $761b: $13
    and e                                         ; $761c: $a3
    inc de                                        ; $761d: $13
    and e                                         ; $761e: $a3
    inc de                                        ; $761f: $13
    and e                                         ; $7620: $a3
    inc de                                        ; $7621: $13
    and c                                         ; $7622: $a1
    and b                                         ; $7623: $a0
    and b                                         ; $7624: $a0
    inc de                                        ; $7625: $13
    and e                                         ; $7626: $a3
    db $e3                                        ; $7627: $e3
    ret nc                                        ; $7628: $d0

    ld bc, $00e5                                  ; $7629: $01 $e5 $00

jr_07d_762c:
    and $d7                                       ; $762c: $e6 $d7
    call c, $ea11                                 ; $762e: $dc $11 $ea
    ld bc, $14eb                                  ; $7631: $01 $eb $14
    xor $22                                       ; $7634: $ee $22
    call nc, $06e8                                ; $7636: $d4 $e8 $06
    rst $18                                       ; $7639: $df
    ld [bc], a                                    ; $763a: $02
    ld d, $07                                     ; $763b: $16 $07
    ret c                                         ; $763d: $d8

    add [hl]                                      ; $763e: $86
    rlca                                          ; $763f: $07

jr_07d_7640:
    rst $10                                       ; $7640: $d7
    ld d, $07                                     ; $7641: $16 $07
    ret c                                         ; $7643: $d8

    or [hl]                                       ; $7644: $b6
    rlca                                          ; $7645: $07
    ld c, $66                                     ; $7646: $0e $66
    rlca                                          ; $7648: $07
    ld c, $d7                                     ; $7649: $0e $d7
    ld [hl], $07                                  ; $764b: $36 $07
    ld c, $16                                     ; $764d: $0e $16
    rlca                                          ; $764f: $07
    ret c                                         ; $7650: $d8

    or [hl]                                       ; $7651: $b6
    rlca                                          ; $7652: $07
    rst $10                                       ; $7653: $d7
    ld d, $07                                     ; $7654: $16 $07
    ld c, $0e                                     ; $7656: $0e $0e
    ld c, $0e                                     ; $7658: $0e $0e
    ld d, $07                                     ; $765a: $16 $07
    ret c                                         ; $765c: $d8

    add [hl]                                      ; $765d: $86
    rlca                                          ; $765e: $07
    rst $10                                       ; $765f: $d7
    ld d, $07                                     ; $7660: $16 $07
    ret c                                         ; $7662: $d8

    or [hl]                                       ; $7663: $b6
    rlca                                          ; $7664: $07
    ld c, $66                                     ; $7665: $0e $66
    rlca                                          ; $7667: $07
    ld c, $86                                     ; $7668: $0e $86
    rlca                                          ; $766a: $07
    rst $18                                       ; $766b: $df
    ld [bc], a                                    ; $766c: $02
    ld c, $0e                                     ; $766d: $0e $0e
    ld c, $0e                                     ; $766f: $0e $0e
    ldh [$d7], a                                  ; $7671: $e0 $d7
    ldh [$e2], a                                  ; $7673: $e0 $e2
    db $ec                                        ; $7675: $ec
    halt                                          ; $7676: $76
    call nc, $160e                                ; $7677: $d4 $0e $16
    rlca                                          ; $767a: $07
    ld d, $07                                     ; $767b: $16 $07
    ld c, $0e                                     ; $767d: $0e $0e
    ld c, $0e                                     ; $767f: $0e $0e
    ld c, $d8                                     ; $7681: $0e $d8
    or [hl]                                       ; $7683: $b6
    rlca                                          ; $7684: $07
    ld h, [hl]                                    ; $7685: $66
    rlca                                          ; $7686: $07
    or [hl]                                       ; $7687: $b6
    rlca                                          ; $7688: $07
    rst $10                                       ; $7689: $d7
    ld [hl], $07                                  ; $768a: $36 $07
    ld c, $16                                     ; $768c: $0e $16
    rlca                                          ; $768e: $07
    ret c                                         ; $768f: $d8

    or [hl]                                       ; $7690: $b6
    rlca                                          ; $7691: $07
    rst $10                                       ; $7692: $d7
    ld d, $07                                     ; $7693: $16 $07
    rst $18                                       ; $7695: $df
    ld [bc], a                                    ; $7696: $02
    ld c, $0e                                     ; $7697: $0e $0e
    ld c, $0e                                     ; $7699: $0e $0e
    ldh [$e2], a                                  ; $769b: $e0 $e2
    db $ec                                        ; $769d: $ec
    halt                                          ; $769e: $76
    call nc, $160e                                ; $769f: $d4 $0e $16
    rlca                                          ; $76a2: $07
    ld d, $07                                     ; $76a3: $16 $07
    ld c, $0e                                     ; $76a5: $0e $0e
    ld c, $0e                                     ; $76a7: $0e $0e
    ld c, $e2                                     ; $76a9: $0e $e2
    db $ec                                        ; $76ab: $ec
    halt                                          ; $76ac: $76
    call nc, $d816                                ; $76ad: $d4 $16 $d8
    add a                                         ; $76b0: $87
    ld d, $b7                                     ; $76b1: $16 $b7
    add [hl]                                      ; $76b3: $86
    rla                                           ; $76b4: $17
    and [hl]                                      ; $76b5: $a6
    ld h, a                                       ; $76b6: $67
    ld d, $87                                     ; $76b7: $16 $87
    ld h, [hl]                                    ; $76b9: $66
    rla                                           ; $76ba: $17
    add [hl]                                      ; $76bb: $86
    rla                                           ; $76bc: $17
    and [hl]                                      ; $76bd: $a6
    rla                                           ; $76be: $17
    add sp, $05                                   ; $76bf: $e8 $05
    ld [c], a                                     ; $76c1: $e2
    nop                                           ; $76c2: $00
    ld [hl], a                                    ; $76c3: $77
    ld [c], a                                     ; $76c4: $e2
    rra                                           ; $76c5: $1f
    ld [hl], a                                    ; $76c6: $77
    ld [c], a                                     ; $76c7: $e2
    rra                                           ; $76c8: $1f
    ld [hl], a                                    ; $76c9: $77
    ld [c], a                                     ; $76ca: $e2
    nop                                           ; $76cb: $00
    ld [hl], a                                    ; $76cc: $77
    ld [c], a                                     ; $76cd: $e2
    rra                                           ; $76ce: $1f
    ld [hl], a                                    ; $76cf: $77
    db $d3                                        ; $76d0: $d3
    ld [hl], $37                                  ; $76d1: $36 $37
    rst $10                                       ; $76d3: $d7
    ld [hl], $d8                                  ; $76d4: $36 $d8
    scf                                           ; $76d6: $37
    ld [hl], $d7                                  ; $76d7: $36 $d7
    scf                                           ; $76d9: $37
    ret c                                         ; $76da: $d8

    and [hl]                                      ; $76db: $a6
    scf                                           ; $76dc: $37
    ld [hl], $37                                  ; $76dd: $36 $37
    rst $10                                       ; $76df: $d7
    ld [hl], $d8                                  ; $76e0: $36 $d8
    scf                                           ; $76e2: $37
    rst $10                                       ; $76e3: $d7
    ld [hl], $d8                                  ; $76e4: $36 $d8
    scf                                           ; $76e6: $37
    and [hl]                                      ; $76e7: $a6
    rst $10                                       ; $76e8: $d7
    scf                                           ; $76e9: $37
    sbc $ff                                       ; $76ea: $de $ff
    db $d3                                        ; $76ec: $d3
    or [hl]                                       ; $76ed: $b6
    rlca                                          ; $76ee: $07
    ld h, [hl]                                    ; $76ef: $66
    rlca                                          ; $76f0: $07
    or [hl]                                       ; $76f1: $b6
    rlca                                          ; $76f2: $07
    rst $10                                       ; $76f3: $d7
    ld [hl], $07                                  ; $76f4: $36 $07
    ld b, $07                                     ; $76f6: $06 $07
    ld d, $07                                     ; $76f8: $16 $07
    ret c                                         ; $76fa: $d8

    or [hl]                                       ; $76fb: $b6
    rlca                                          ; $76fc: $07
    ld b, $07                                     ; $76fd: $06 $07
    db $e3                                        ; $76ff: $e3
    db $d3                                        ; $7700: $d3
    rst $18                                       ; $7701: $df
    ld [bc], a                                    ; $7702: $02
    ld d, $17                                     ; $7703: $16 $17
    rst $10                                       ; $7705: $d7
    ld d, $d8                                     ; $7706: $16 $d8
    add a                                         ; $7708: $87
    ld d, $d7                                     ; $7709: $16 $d7
    rla                                           ; $770b: $17
    ret c                                         ; $770c: $d8

    add [hl]                                      ; $770d: $86
    rla                                           ; $770e: $17
    ld d, $17                                     ; $770f: $16 $17
    rst $10                                       ; $7711: $d7
    ld d, $d8                                     ; $7712: $16 $d8
    rla                                           ; $7714: $17
    rst $10                                       ; $7715: $d7
    ld d, $d8                                     ; $7716: $16 $d8
    rla                                           ; $7718: $17
    add [hl]                                      ; $7719: $86
    rst $10                                       ; $771a: $d7
    rla                                           ; $771b: $17
    ret c                                         ; $771c: $d8

    ldh [$e3], a                                  ; $771d: $e0 $e3
    db $d3                                        ; $771f: $d3
    ld b, [hl]                                    ; $7720: $46
    ld b, a                                       ; $7721: $47
    rst $10                                       ; $7722: $d7
    ld b, [hl]                                    ; $7723: $46
    ret c                                         ; $7724: $d8

    ld b, a                                       ; $7725: $47
    ld b, [hl]                                    ; $7726: $46
    rst $10                                       ; $7727: $d7
    ld b, a                                       ; $7728: $47
    ret c                                         ; $7729: $d8

    or [hl]                                       ; $772a: $b6
    ld b, a                                       ; $772b: $47
    ld b, [hl]                                    ; $772c: $46
    ld b, a                                       ; $772d: $47
    rst $10                                       ; $772e: $d7
    ld b, [hl]                                    ; $772f: $46
    ret c                                         ; $7730: $d8

    ld b, a                                       ; $7731: $47
    rst $10                                       ; $7732: $d7
    ld b, [hl]                                    ; $7733: $46
    ret c                                         ; $7734: $d8

    ld b, a                                       ; $7735: $47
    or [hl]                                       ; $7736: $b6
    rst $10                                       ; $7737: $d7
    ld b, a                                       ; $7738: $47
    ret c                                         ; $7739: $d8

    db $e3                                        ; $773a: $e3
    ret nc                                        ; $773b: $d0

    ld bc, $80e5                                  ; $773c: $01 $e5 $80
    and $60                                       ; $773f: $e6 $60
    call c, $ee11                                 ; $7741: $dc $11 $ee
    ld de, $ead4                                  ; $7744: $11 $d4 $ea
    rlca                                          ; $7747: $07
    db $eb                                        ; $7748: $eb
    ld e, $e8                                     ; $7749: $1e $e8
    inc b                                         ; $774b: $04
    rst $18                                       ; $774c: $df
    db $10                                        ; $774d: $10
    ld [c], a                                     ; $774e: $e2
    sbc e                                         ; $774f: $9b
    ld [hl], a                                    ; $7750: $77
    ldh [$df], a                                  ; $7751: $e0 $df
    inc b                                         ; $7753: $04
    ld [c], a                                     ; $7754: $e2
    xor c                                         ; $7755: $a9
    ld [hl], a                                    ; $7756: $77
    ld [c], a                                     ; $7757: $e2
    xor c                                         ; $7758: $a9
    ld [hl], a                                    ; $7759: $77
    ld [c], a                                     ; $775a: $e2
    sbc e                                         ; $775b: $9b
    ld [hl], a                                    ; $775c: $77
    ld [c], a                                     ; $775d: $e2
    sbc e                                         ; $775e: $9b
    ld [hl], a                                    ; $775f: $77
    ldh [$e8], a                                  ; $7760: $e0 $e8
    ld b, $ea                                     ; $7762: $06 $ea
    nop                                           ; $7764: $00
    ld [c], a                                     ; $7765: $e2
    or a                                          ; $7766: $b7
    ld [hl], a                                    ; $7767: $77
    ld [c], a                                     ; $7768: $e2
    ldh [rPCM34], a                               ; $7769: $e0 $77
    ld [c], a                                     ; $776b: $e2
    ldh [rPCM34], a                               ; $776c: $e0 $77
    ld [c], a                                     ; $776e: $e2
    or a                                          ; $776f: $b7
    ld [hl], a                                    ; $7770: $77
    ld [c], a                                     ; $7771: $e2
    ldh [rPCM34], a                               ; $7772: $e0 $77
    db $d3                                        ; $7774: $d3
    inc [hl]                                      ; $7775: $34
    inc [hl]                                      ; $7776: $34
    rst $10                                       ; $7777: $d7
    inc [hl]                                      ; $7778: $34
    ret c                                         ; $7779: $d8

    inc [hl]                                      ; $777a: $34
    inc [hl]                                      ; $777b: $34
    inc [hl]                                      ; $777c: $34
    rst $10                                       ; $777d: $d7
    inc [hl]                                      ; $777e: $34
    ret c                                         ; $777f: $d8

    inc [hl]                                      ; $7780: $34
    inc [hl]                                      ; $7781: $34
    inc [hl]                                      ; $7782: $34
    rst $10                                       ; $7783: $d7
    inc [hl]                                      ; $7784: $34
    ret c                                         ; $7785: $d8

    inc [hl]                                      ; $7786: $34
    inc [hl]                                      ; $7787: $34
    inc [hl]                                      ; $7788: $34
    rst $10                                       ; $7789: $d7
    inc [hl]                                      ; $778a: $34
    ret c                                         ; $778b: $d8

    inc [hl]                                      ; $778c: $34
    inc [hl]                                      ; $778d: $34
    inc [hl]                                      ; $778e: $34
    rst $10                                       ; $778f: $d7
    inc [hl]                                      ; $7790: $34
    ret c                                         ; $7791: $d8

    inc [hl]                                      ; $7792: $34
    inc [hl]                                      ; $7793: $34
    inc [hl]                                      ; $7794: $34
    rst $10                                       ; $7795: $d7
    inc [hl]                                      ; $7796: $34
    ret c                                         ; $7797: $d8

    inc [hl]                                      ; $7798: $34
    sbc $ff                                       ; $7799: $de $ff
    db $d3                                        ; $779b: $d3
    ld d, $17                                     ; $779c: $16 $17
    rst $10                                       ; $779e: $d7
    ld d, $d8                                     ; $779f: $16 $d8

Call_07d_77a1:
    rla                                           ; $77a1: $17
    ld d, $17                                     ; $77a2: $16 $17
    rst $10                                       ; $77a4: $d7
    ld d, $d8                                     ; $77a5: $16 $d8
    rla                                           ; $77a7: $17
    db $e3                                        ; $77a8: $e3
    db $d3                                        ; $77a9: $d3
    ld [hl], $37                                  ; $77aa: $36 $37
    rst $10                                       ; $77ac: $d7
    ld [hl], $d8                                  ; $77ad: $36 $d8
    scf                                           ; $77af: $37
    ld [hl], $37                                  ; $77b0: $36 $37
    rst $10                                       ; $77b2: $d7
    ld [hl], $d8                                  ; $77b3: $36 $d8
    scf                                           ; $77b5: $37
    db $e3                                        ; $77b6: $e3
    db $d3                                        ; $77b7: $d3
    rst $18                                       ; $77b8: $df
    ld [bc], a                                    ; $77b9: $02
    inc d                                         ; $77ba: $14
    inc d                                         ; $77bb: $14
    rst $10                                       ; $77bc: $d7
    inc d                                         ; $77bd: $14
    ret c                                         ; $77be: $d8

    inc d                                         ; $77bf: $14
    inc d                                         ; $77c0: $14
    inc d                                         ; $77c1: $14
    rst $10                                       ; $77c2: $d7
    inc d                                         ; $77c3: $14
    ret c                                         ; $77c4: $d8

    inc d                                         ; $77c5: $14
    inc d                                         ; $77c6: $14
    inc d                                         ; $77c7: $14
    rst $10                                       ; $77c8: $d7
    inc d                                         ; $77c9: $14
    ret c                                         ; $77ca: $d8

    inc d                                         ; $77cb: $14
    inc d                                         ; $77cc: $14
    inc d                                         ; $77cd: $14
    rst $10                                       ; $77ce: $d7
    inc d                                         ; $77cf: $14
    ret c                                         ; $77d0: $d8

    inc d                                         ; $77d1: $14
    inc d                                         ; $77d2: $14
    inc d                                         ; $77d3: $14
    rst $10                                       ; $77d4: $d7
    inc d                                         ; $77d5: $14
    ret c                                         ; $77d6: $d8

    inc d                                         ; $77d7: $14
    inc d                                         ; $77d8: $14
    inc d                                         ; $77d9: $14
    rst $10                                       ; $77da: $d7
    inc d                                         ; $77db: $14
    ret c                                         ; $77dc: $d8

    inc d                                         ; $77dd: $14
    ldh [$e3], a                                  ; $77de: $e0 $e3
    db $d3                                        ; $77e0: $d3
    ld b, h                                       ; $77e1: $44
    ld b, h                                       ; $77e2: $44
    rst $10                                       ; $77e3: $d7
    ld b, h                                       ; $77e4: $44
    ret c                                         ; $77e5: $d8

    ld b, h                                       ; $77e6: $44
    ld b, h                                       ; $77e7: $44
    ld b, h                                       ; $77e8: $44
    rst $10                                       ; $77e9: $d7
    ld b, h                                       ; $77ea: $44
    ret c                                         ; $77eb: $d8

    ld b, h                                       ; $77ec: $44
    ld b, h                                       ; $77ed: $44
    ld b, h                                       ; $77ee: $44
    rst $10                                       ; $77ef: $d7
    ld b, h                                       ; $77f0: $44
    ret c                                         ; $77f1: $d8

    ld b, h                                       ; $77f2: $44
    ld b, h                                       ; $77f3: $44
    ld b, h                                       ; $77f4: $44
    rst $10                                       ; $77f5: $d7
    ld b, h                                       ; $77f6: $44
    ret c                                         ; $77f7: $d8

    ld b, h                                       ; $77f8: $44
    ld b, h                                       ; $77f9: $44
    ld b, h                                       ; $77fa: $44
    rst $10                                       ; $77fb: $d7
    ld b, h                                       ; $77fc: $44
    ret c                                         ; $77fd: $d8

    ld b, h                                       ; $77fe: $44
    ld b, h                                       ; $77ff: $44
    ld b, h                                       ; $7800: $44
    rst $10                                       ; $7801: $d7
    ld b, h                                       ; $7802: $44
    ret c                                         ; $7803: $d8

    ld b, h                                       ; $7804: $44
    db $e3                                        ; $7805: $e3
    ret nc                                        ; $7806: $d0

    rrca                                          ; $7807: $0f
    rst $20                                       ; $7808: $e7
    ld bc, $20e6                                  ; $7809: $01 $e6 $20
    jp hl                                         ; $780c: $e9


    nop                                           ; $780d: $00
    call c, $e811                                 ; $780e: $dc $11 $e8
    ld [$dfd1], sp                                ; $7811: $08 $d1 $df
    ld [$0010], sp                                ; $7814: $08 $10 $00
    stop                                          ; $7817: $10 $00
    stop                                          ; $7819: $10 $00
    stop                                          ; $781b: $10 $00
    ldh [$df], a                                  ; $781d: $e0 $df
    inc b                                         ; $781f: $04
    or b                                          ; $7820: $b0
    nop                                           ; $7821: $00
    or b                                          ; $7822: $b0
    nop                                           ; $7823: $00
    or b                                          ; $7824: $b0
    nop                                           ; $7825: $00
    or b                                          ; $7826: $b0
    nop                                           ; $7827: $00
    stop                                          ; $7828: $10 $00
    stop                                          ; $782a: $10 $00
    stop                                          ; $782c: $10 $00
    stop                                          ; $782e: $10 $00
    ldh [$df], a                                  ; $7830: $e0 $df
    ld [bc], a                                    ; $7832: $02
    stop                                          ; $7833: $10 $00
    stop                                          ; $7835: $10 $00
    stop                                          ; $7837: $10 $00
    stop                                          ; $7839: $10 $00
    ldh [$df], a                                  ; $783b: $e0 $df
    ld [bc], a                                    ; $783d: $02
    ld b, b                                       ; $783e: $40
    nop                                           ; $783f: $00
    ld b, b                                       ; $7840: $40
    nop                                           ; $7841: $00
    ld b, b                                       ; $7842: $40
    nop                                           ; $7843: $00
    ld b, b                                       ; $7844: $40
    nop                                           ; $7845: $00
    ldh [$df], a                                  ; $7846: $e0 $df
    ld [bc], a                                    ; $7848: $02
    stop                                          ; $7849: $10 $00
    stop                                          ; $784b: $10 $00
    stop                                          ; $784d: $10 $00
    stop                                          ; $784f: $10 $00
    ldh [rLCDC], a                                ; $7851: $e0 $40
    nop                                           ; $7853: $00
    ld b, b                                       ; $7854: $40
    nop                                           ; $7855: $00
    ld b, b                                       ; $7856: $40
    nop                                           ; $7857: $00
    ld b, b                                       ; $7858: $40
    nop                                           ; $7859: $00
    jr nc, jr_07d_785c                            ; $785a: $30 $00

jr_07d_785c:
    jr nc, jr_07d_785e                            ; $785c: $30 $00

jr_07d_785e:
    jr nc, jr_07d_7860                            ; $785e: $30 $00

jr_07d_7860:
    jr nc, jr_07d_7862                            ; $7860: $30 $00

jr_07d_7862:
    sbc $ff                                       ; $7862: $de $ff
    ret nc                                        ; $7864: $d0

    ld bc, $1ed1                                  ; $7865: $01 $d1 $1e
    ld h, [hl]                                    ; $7868: $66
    ld d, a                                       ; $7869: $57
    ld e, $86                                     ; $786a: $1e $86
    ld d, a                                       ; $786c: $57
    ld e, $66                                     ; $786d: $1e $66
    ld d, a                                       ; $786f: $57
    ld e, $86                                     ; $7870: $1e $86
    ld d, a                                       ; $7872: $57
    sbc $ff                                       ; $7873: $de $ff
    ret nc                                        ; $7875: $d0

    ld bc, $40e5                                  ; $7876: $01 $e5 $40
    and $b7                                       ; $7879: $e6 $b7
    call c, $ea11                                 ; $787b: $dc $11 $ea
    ld bc, $1eeb                                  ; $787e: $01 $eb $1e
    xor $33                                       ; $7881: $ee $33
    call nc, Call_000_0258                        ; $7883: $d4 $58 $02
    ld d, [hl]                                    ; $7886: $56
    dec bc                                        ; $7887: $0b
    ld d, [hl]                                    ; $7888: $56
    dec bc                                        ; $7889: $0b
    ld d, $55                                     ; $788a: $16 $55
    inc c                                         ; $788c: $0c
    add l                                         ; $788d: $85
    inc c                                         ; $788e: $0c
    dec b                                         ; $788f: $05
    inc c                                         ; $7890: $0c
    ret c                                         ; $7891: $d8

    add l                                         ; $7892: $85
    inc c                                         ; $7893: $0c
    dec b                                         ; $7894: $05
    inc c                                         ; $7895: $0c
    db $dd                                        ; $7896: $dd
    call nc, $02df                                ; $7897: $d4 $df $02
    dec d                                         ; $789a: $15
    inc c                                         ; $789b: $0c
    dec bc                                        ; $789c: $0b
    ret c                                         ; $789d: $d8

    add [hl]                                      ; $789e: $86
    dec b                                         ; $789f: $05
    inc c                                         ; $78a0: $0c
    ld d, l                                       ; $78a1: $55
    inc c                                         ; $78a2: $0c
    dec bc                                        ; $78a3: $0b
    and [hl]                                      ; $78a4: $a6
    dec bc                                        ; $78a5: $0b
    add $0b                                       ; $78a6: $c6 $0b
    or [hl]                                       ; $78a8: $b6
    and l                                         ; $78a9: $a5
    inc c                                         ; $78aa: $0c
    add a                                         ; $78ab: $87
    inc bc                                        ; $78ac: $03
    rst $10                                       ; $78ad: $d7
    ld d, a                                       ; $78ae: $57
    inc b                                         ; $78af: $04
    add a                                         ; $78b0: $87
    inc b                                         ; $78b1: $04
    and l                                         ; $78b2: $a5
    inc c                                         ; $78b3: $0c
    ld l, e                                       ; $78b4: $6b
    add [hl]                                      ; $78b5: $86
    dec bc                                        ; $78b6: $0b
    ld d, [hl]                                    ; $78b7: $56
    dec bc                                        ; $78b8: $0b
    ld d, $3b                                     ; $78b9: $16 $3b
    ret c                                         ; $78bb: $d8

    add $05                                       ; $78bc: $c6 $05
    inc c                                         ; $78be: $0c
    rst $10                                       ; $78bf: $d7
    ldh [$df], a                                  ; $78c0: $e0 $df
    ld [bc], a                                    ; $78c2: $02
    ld [c], a                                     ; $78c3: $e2
    ld c, l                                       ; $78c4: $4d
    ld a, c                                       ; $78c5: $79
    call nc, Call_000_0c05                        ; $78c6: $d4 $05 $0c
    adc e                                         ; $78c9: $8b
    halt                                          ; $78ca: $76
    ld l, e                                       ; $78cb: $6b
    ld b, [hl]                                    ; $78cc: $46
    dec bc                                        ; $78cd: $0b
    ld d, [hl]                                    ; $78ce: $56
    dec bc                                        ; $78cf: $0b
    rst $10                                       ; $78d0: $d7
    ld d, $0b                                     ; $78d1: $16 $0b
    ld d, $15                                     ; $78d3: $16 $15
    inc c                                         ; $78d5: $0c
    dec b                                         ; $78d6: $05
    inc c                                         ; $78d7: $0c
    ld [c], a                                     ; $78d8: $e2
    ld c, l                                       ; $78d9: $4d
    ld a, c                                       ; $78da: $79
    call nc, $060b                                ; $78db: $d4 $0b $06
    ld b, l                                       ; $78de: $45
    inc c                                         ; $78df: $0c
    dec bc                                        ; $78e0: $0b
    ld [hl], $0b                                  ; $78e1: $36 $0b
    ld b, $15                                     ; $78e3: $06 $15
    inc c                                         ; $78e5: $0c
    dec b                                         ; $78e6: $05
    inc c                                         ; $78e7: $0c
    dec b                                         ; $78e8: $05
    inc c                                         ; $78e9: $0c
    dec b                                         ; $78ea: $05
    inc c                                         ; $78eb: $0c
    ldh [$e2], a                                  ; $78ec: $e0 $e2
    ld h, e                                       ; $78ee: $63
    ld a, c                                       ; $78ef: $79
    call nc, $d915                                ; $78f0: $d4 $15 $d9
    inc de                                        ; $78f3: $13
    ld bc, $0b16                                  ; $78f4: $01 $16 $0b
    ld d, $0b                                     ; $78f7: $16 $0b
    ld d, $3b                                     ; $78f9: $16 $3b
    ld d, [hl]                                    ; $78fb: $56
    dec b                                         ; $78fc: $05
    inc c                                         ; $78fd: $0c
    dec b                                         ; $78fe: $05
    inc c                                         ; $78ff: $0c
    dec b                                         ; $7900: $05
    inc c                                         ; $7901: $0c
    dec b                                         ; $7902: $05
    inc c                                         ; $7903: $0c
    ld [c], a                                     ; $7904: $e2
    ld h, e                                       ; $7905: $63
    ld a, c                                       ; $7906: $79
    call nc, Call_000_0258                        ; $7907: $d4 $58 $02
    ld d, [hl]                                    ; $790a: $56
    dec bc                                        ; $790b: $0b
    ld d, [hl]                                    ; $790c: $56
    dec bc                                        ; $790d: $0b
    ld d, $55                                     ; $790e: $16 $55
    inc c                                         ; $7910: $0c
    add l                                         ; $7911: $85
    inc c                                         ; $7912: $0c
    dec b                                         ; $7913: $05
    inc c                                         ; $7914: $0c
    dec b                                         ; $7915: $05
    inc c                                         ; $7916: $0c
    dec b                                         ; $7917: $05
    inc c                                         ; $7918: $0c
    rst $18                                       ; $7919: $df
    ld [bc], a                                    ; $791a: $02
    ld [c], a                                     ; $791b: $e2
    ld a, c                                       ; $791c: $79
    ld a, c                                       ; $791d: $79
    db $d3                                        ; $791e: $d3
    set 2, a                                      ; $791f: $cb $d7
    and [hl]                                      ; $7921: $a6
    dec bc                                        ; $7922: $0b
    and [hl]                                      ; $7923: $a6
    and a                                         ; $7924: $a7
    inc bc                                        ; $7925: $03
    add a                                         ; $7926: $87
    inc b                                         ; $7927: $04
    ld h, a                                       ; $7928: $67
    inc b                                         ; $7929: $04
    ld e, e                                       ; $792a: $5b
    ld d, $0b                                     ; $792b: $16 $0b
    ret c                                         ; $792d: $d8

    and [hl]                                      ; $792e: $a6
    add l                                         ; $792f: $85
    inc c                                         ; $7930: $0c
    dec b                                         ; $7931: $05
    inc c                                         ; $7932: $0c
    ld [c], a                                     ; $7933: $e2
    ld a, c                                       ; $7934: $79
    ld a, c                                       ; $7935: $79
    db $d3                                        ; $7936: $d3
    set 2, a                                      ; $7937: $cb $d7
    ld h, [hl]                                    ; $7939: $66
    dec bc                                        ; $793a: $0b
    ld h, [hl]                                    ; $793b: $66
    ld h, a                                       ; $793c: $67
    inc bc                                        ; $793d: $03
    ld d, a                                       ; $793e: $57
    inc b                                         ; $793f: $04
    scf                                           ; $7940: $37
    inc b                                         ; $7941: $04
    dec d                                         ; $7942: $15
    inc c                                         ; $7943: $0c
    dec b                                         ; $7944: $05
    inc c                                         ; $7945: $0c
    dec b                                         ; $7946: $05
    inc c                                         ; $7947: $0c
    dec b                                         ; $7948: $05
    inc c                                         ; $7949: $0c
    ldh [$de], a                                  ; $794a: $e0 $de
    rst $38                                       ; $794c: $ff
    call nc, Call_000_0c05                        ; $794d: $d4 $05 $0c
    adc e                                         ; $7950: $8b
    halt                                          ; $7951: $76
    ld l, e                                       ; $7952: $6b
    ld b, [hl]                                    ; $7953: $46
    dec bc                                        ; $7954: $0b
    ld d, [hl]                                    ; $7955: $56
    dec bc                                        ; $7956: $0b
    ret c                                         ; $7957: $d8

    sub [hl]                                      ; $7958: $96
    xor e                                         ; $7959: $ab
    rst $10                                       ; $795a: $d7
    ld d, $d8                                     ; $795b: $16 $d8
    dec bc                                        ; $795d: $0b
    and [hl]                                      ; $795e: $a6
    rst $10                                       ; $795f: $d7
    dec de                                        ; $7960: $1b
    ld [hl], $e3                                  ; $7961: $36 $e3
    call nc, $d915                                ; $7963: $d4 $15 $d9
    inc de                                        ; $7966: $13
    ld bc, $0b16                                  ; $7967: $01 $16 $0b
    ld d, $0b                                     ; $796a: $16 $0b
    ld d, $35                                     ; $796c: $16 $35
    inc c                                         ; $796e: $0c
    ld e, e                                       ; $796f: $5b
    ld d, $0b                                     ; $7970: $16 $0b
    ret c                                         ; $7972: $d8

    and [hl]                                      ; $7973: $a6
    add l                                         ; $7974: $85
    inc c                                         ; $7975: $0c
    dec b                                         ; $7976: $05
    inc c                                         ; $7977: $0c
    db $e3                                        ; $7978: $e3
    call nc, Call_000_165b                        ; $7979: $d4 $5b $16
    dec bc                                        ; $797c: $0b
    ret c                                         ; $797d: $d8

    add [hl]                                      ; $797e: $86
    dec b                                         ; $797f: $05
    inc c                                         ; $7980: $0c
    sub l                                         ; $7981: $95
    inc c                                         ; $7982: $0c
    xor e                                         ; $7983: $ab
    rst $10                                       ; $7984: $d7
    ld h, [hl]                                    ; $7985: $66
    dec bc                                        ; $7986: $0b
    ld h, [hl]                                    ; $7987: $66
    ret c                                         ; $7988: $d8

    and l                                         ; $7989: $a5
    inc c                                         ; $798a: $0c
    dec b                                         ; $798b: $05
    inc c                                         ; $798c: $0c
    db $e3                                        ; $798d: $e3
    ret nc                                        ; $798e: $d0

    ld bc, $40e5                                  ; $798f: $01 $e5 $40
    ld [$eb01], a                                 ; $7992: $ea $01 $eb
    ld e, $e6                                     ; $7995: $1e $e6
    sub a                                         ; $7997: $97
    call c, $ee11                                 ; $7998: $dc $11 $ee
    inc sp                                        ; $799b: $33
    db $d3                                        ; $799c: $d3
    ld a, b                                       ; $799d: $78
    ld [bc], a                                    ; $799e: $02
    halt                                          ; $799f: $76
    dec bc                                        ; $79a0: $0b
    halt                                          ; $79a1: $76
    dec bc                                        ; $79a2: $0b
    and [hl]                                      ; $79a3: $a6
    rst $10                                       ; $79a4: $d7
    dec d                                         ; $79a5: $15
    inc c                                         ; $79a6: $0c
    ret c                                         ; $79a7: $d8

    push bc                                       ; $79a8: $c5
    inc c                                         ; $79a9: $0c
    dec b                                         ; $79aa: $05
    inc c                                         ; $79ab: $0c
    ret c                                         ; $79ac: $d8

    add l                                         ; $79ad: $85
    inc c                                         ; $79ae: $0c
    dec b                                         ; $79af: $05
    inc c                                         ; $79b0: $0c
    db $dd                                        ; $79b1: $dd
    db $d3                                        ; $79b2: $d3
    rst $18                                       ; $79b3: $df
    ld [bc], a                                    ; $79b4: $02
    ld d, l                                       ; $79b5: $55
    inc c                                         ; $79b6: $0c
    dec bc                                        ; $79b7: $0b
    ld d, [hl]                                    ; $79b8: $56
    dec b                                         ; $79b9: $05
    inc c                                         ; $79ba: $0c
    dec d                                         ; $79bb: $15
    inc c                                         ; $79bc: $0c
    dec bc                                        ; $79bd: $0b
    ld h, [hl]                                    ; $79be: $66
    dec bc                                        ; $79bf: $0b
    add [hl]                                      ; $79c0: $86
    dec bc                                        ; $79c1: $0b
    halt                                          ; $79c2: $76
    ld h, l                                       ; $79c3: $65
    inc c                                         ; $79c4: $0c
    ld d, a                                       ; $79c5: $57
    inc bc                                        ; $79c6: $03
    rst $10                                       ; $79c7: $d7
    rla                                           ; $79c8: $17
    inc b                                         ; $79c9: $04
    ld d, a                                       ; $79ca: $57
    inc b                                         ; $79cb: $04
    ld h, l                                       ; $79cc: $65
    inc c                                         ; $79cd: $0c
    dec sp                                        ; $79ce: $3b
    ld d, [hl]                                    ; $79cf: $56
    dec bc                                        ; $79d0: $0b
    ld d, $0b                                     ; $79d1: $16 $0b
    ret c                                         ; $79d3: $d8

    and [hl]                                      ; $79d4: $a6
    res 0, [hl]                                   ; $79d5: $cb $86
    dec b                                         ; $79d7: $05
    inc c                                         ; $79d8: $0c
    ldh [$df], a                                  ; $79d9: $e0 $df
    ld [bc], a                                    ; $79db: $02
    ld [c], a                                     ; $79dc: $e2
    ld l, h                                       ; $79dd: $6c
    ld a, d                                       ; $79de: $7a
    call nc, Call_000_0c05                        ; $79df: $d4 $05 $0c
    ld e, e                                       ; $79e2: $5b
    ld b, [hl]                                    ; $79e3: $46
    dec sp                                        ; $79e4: $3b
    ret c                                         ; $79e5: $d8

    add $0b                                       ; $79e6: $c6 $0b
    rst $10                                       ; $79e8: $d7
    ld d, $0b                                     ; $79e9: $16 $0b
    ld h, [hl]                                    ; $79eb: $66
    dec bc                                        ; $79ec: $0b
    ld h, [hl]                                    ; $79ed: $66
    ld h, l                                       ; $79ee: $65
    inc c                                         ; $79ef: $0c
    dec b                                         ; $79f0: $05
    inc c                                         ; $79f1: $0c
    ld [c], a                                     ; $79f2: $e2
    ld l, h                                       ; $79f3: $6c
    ld a, d                                       ; $79f4: $7a
    call nc, $060b                                ; $79f5: $d4 $0b $06
    dec d                                         ; $79f8: $15
    inc c                                         ; $79f9: $0c
    dec bc                                        ; $79fa: $0b
    ret c                                         ; $79fb: $d8

    or [hl]                                       ; $79fc: $b6
    dec bc                                        ; $79fd: $0b
    ld b, $85                                     ; $79fe: $06 $85
    inc c                                         ; $7a00: $0c
    dec b                                         ; $7a01: $05
    inc c                                         ; $7a02: $0c
    dec b                                         ; $7a03: $05
    inc c                                         ; $7a04: $0c
    dec b                                         ; $7a05: $05
    inc c                                         ; $7a06: $0c
    ldh [$e2], a                                  ; $7a07: $e0 $e2
    add c                                         ; $7a09: $81
    ld a, d                                       ; $7a0a: $7a
    db $d3                                        ; $7a0b: $d3
    sub l                                         ; $7a0c: $95
    reti                                          ; $7a0d: $d9


    sub e                                         ; $7a0e: $93
    ld bc, $0b96                                  ; $7a0f: $01 $96 $0b
    sub [hl]                                      ; $7a12: $96
    dec bc                                        ; $7a13: $0b
    sub [hl]                                      ; $7a14: $96
    cp e                                          ; $7a15: $bb
    rst $10                                       ; $7a16: $d7
    ld d, $05                                     ; $7a17: $16 $05
    inc c                                         ; $7a19: $0c
    dec b                                         ; $7a1a: $05
    inc c                                         ; $7a1b: $0c
    dec b                                         ; $7a1c: $05
    inc c                                         ; $7a1d: $0c
    dec b                                         ; $7a1e: $05
    inc c                                         ; $7a1f: $0c
    ld [c], a                                     ; $7a20: $e2
    add c                                         ; $7a21: $81
    ld a, d                                       ; $7a22: $7a
    db $d3                                        ; $7a23: $d3
    ld a, b                                       ; $7a24: $78
    ld [bc], a                                    ; $7a25: $02
    halt                                          ; $7a26: $76
    dec bc                                        ; $7a27: $0b
    halt                                          ; $7a28: $76
    dec bc                                        ; $7a29: $0b
    and [hl]                                      ; $7a2a: $a6
    rst $10                                       ; $7a2b: $d7
    dec d                                         ; $7a2c: $15
    inc c                                         ; $7a2d: $0c
    ret c                                         ; $7a2e: $d8

    push bc                                       ; $7a2f: $c5
    inc c                                         ; $7a30: $0c
    dec b                                         ; $7a31: $05
    inc c                                         ; $7a32: $0c
    add l                                         ; $7a33: $85
    inc c                                         ; $7a34: $0c
    dec b                                         ; $7a35: $05
    inc c                                         ; $7a36: $0c
    rst $18                                       ; $7a37: $df
    ld [bc], a                                    ; $7a38: $02
    ld [c], a                                     ; $7a39: $e2
    sbc b                                         ; $7a3a: $98
    ld a, d                                       ; $7a3b: $7a
    db $d3                                        ; $7a3c: $d3
    adc e                                         ; $7a3d: $8b
    rst $10                                       ; $7a3e: $d7
    ld h, [hl]                                    ; $7a3f: $66
    dec bc                                        ; $7a40: $0b
    ld h, [hl]                                    ; $7a41: $66
    ld h, a                                       ; $7a42: $67
    inc bc                                        ; $7a43: $03
    ld d, a                                       ; $7a44: $57
    inc b                                         ; $7a45: $04
    scf                                           ; $7a46: $37
    inc b                                         ; $7a47: $04
    dec de                                        ; $7a48: $1b
    ret c                                         ; $7a49: $d8

    add [hl]                                      ; $7a4a: $86
    dec bc                                        ; $7a4b: $0b
    ld h, [hl]                                    ; $7a4c: $66
    ld d, l                                       ; $7a4d: $55
    inc c                                         ; $7a4e: $0c
    dec b                                         ; $7a4f: $05
    inc c                                         ; $7a50: $0c
    ld [c], a                                     ; $7a51: $e2
    sbc b                                         ; $7a52: $98
    ld a, d                                       ; $7a53: $7a
    db $d3                                        ; $7a54: $d3
    adc e                                         ; $7a55: $8b
    rst $10                                       ; $7a56: $d7
    ld [hl], $0b                                  ; $7a57: $36 $0b
    ld [hl], $37                                  ; $7a59: $36 $37
    inc bc                                        ; $7a5b: $03
    rla                                           ; $7a5c: $17
    inc b                                         ; $7a5d: $04
    ret c                                         ; $7a5e: $d8

    rst $00                                       ; $7a5f: $c7
    inc b                                         ; $7a60: $04
    add l                                         ; $7a61: $85
    inc c                                         ; $7a62: $0c
    dec b                                         ; $7a63: $05
    inc c                                         ; $7a64: $0c
    dec b                                         ; $7a65: $05
    inc c                                         ; $7a66: $0c
    dec b                                         ; $7a67: $05
    inc c                                         ; $7a68: $0c
    ldh [$de], a                                  ; $7a69: $e0 $de
    rst $38                                       ; $7a6b: $ff
    call nc, Call_000_0c05                        ; $7a6c: $d4 $05 $0c
    ld e, e                                       ; $7a6f: $5b
    ld b, [hl]                                    ; $7a70: $46
    dec sp                                        ; $7a71: $3b
    ret c                                         ; $7a72: $d8

    add $0b                                       ; $7a73: $c6 $0b
    rst $10                                       ; $7a75: $d7
    ld d, $0b                                     ; $7a76: $16 $0b
    ret c                                         ; $7a78: $d8

    ld d, [hl]                                    ; $7a79: $56
    ld l, e                                       ; $7a7a: $6b
    and [hl]                                      ; $7a7b: $a6
    dec bc                                        ; $7a7c: $0b
    ld h, [hl]                                    ; $7a7d: $66
    xor e                                         ; $7a7e: $ab
    add $e3                                       ; $7a7f: $c6 $e3
    db $d3                                        ; $7a81: $d3
    sub l                                         ; $7a82: $95
    reti                                          ; $7a83: $d9


    sub e                                         ; $7a84: $93
    ld bc, $0b96                                  ; $7a85: $01 $96 $0b
    sub [hl]                                      ; $7a88: $96
    dec bc                                        ; $7a89: $0b
    sub [hl]                                      ; $7a8a: $96
    or l                                          ; $7a8b: $b5
    inc c                                         ; $7a8c: $0c
    rst $10                                       ; $7a8d: $d7
    dec de                                        ; $7a8e: $1b
    ret c                                         ; $7a8f: $d8

    add [hl]                                      ; $7a90: $86
    dec bc                                        ; $7a91: $0b
    ld h, [hl]                                    ; $7a92: $66
    ld d, l                                       ; $7a93: $55
    inc c                                         ; $7a94: $0c
    dec b                                         ; $7a95: $05
    inc c                                         ; $7a96: $0c
    db $e3                                        ; $7a97: $e3
    call nc, $d81b                                ; $7a98: $d4 $1b $d8
    add [hl]                                      ; $7a9b: $86
    dec bc                                        ; $7a9c: $0b
    ld d, [hl]                                    ; $7a9d: $56
    dec b                                         ; $7a9e: $05
    inc c                                         ; $7a9f: $0c
    ld h, l                                       ; $7aa0: $65
    inc c                                         ; $7aa1: $0c
    ld l, e                                       ; $7aa2: $6b
    and [hl]                                      ; $7aa3: $a6
    dec bc                                        ; $7aa4: $0b
    and [hl]                                      ; $7aa5: $a6
    ld h, l                                       ; $7aa6: $65
    inc c                                         ; $7aa7: $0c
    dec b                                         ; $7aa8: $05
    inc c                                         ; $7aa9: $0c
    db $e3                                        ; $7aaa: $e3
    ret nc                                        ; $7aab: $d0

    ld bc, $20e7                                  ; $7aac: $01 $e7 $20
    and $20                                       ; $7aaf: $e6 $20
    jp hl                                         ; $7ab1: $e9


    nop                                           ; $7ab2: $00
    call c, $d211                                 ; $7ab3: $dc $11 $d2
    jr c, jr_07d_7aba                             ; $7ab6: $38 $02

    ld [hl], $0b                                  ; $7ab8: $36 $0b

jr_07d_7aba:
    ld [hl], $0b                                  ; $7aba: $36 $0b
    ld [hl], $35                                  ; $7abc: $36 $35
    inc c                                         ; $7abe: $0c
    add l                                         ; $7abf: $85
    inc c                                         ; $7ac0: $0c
    dec b                                         ; $7ac1: $05
    inc c                                         ; $7ac2: $0c
    ret c                                         ; $7ac3: $d8

    add l                                         ; $7ac4: $85
    inc c                                         ; $7ac5: $0c
    dec b                                         ; $7ac6: $05
    inc c                                         ; $7ac7: $0c
    db $dd                                        ; $7ac8: $dd
    jp nc, $02df                                  ; $7ac9: $d2 $df $02

    dec d                                         ; $7acc: $15
    inc c                                         ; $7acd: $0c
    dec bc                                        ; $7ace: $0b
    ret c                                         ; $7acf: $d8

    add [hl]                                      ; $7ad0: $86
    dec b                                         ; $7ad1: $05
    inc c                                         ; $7ad2: $0c
    ld d, l                                       ; $7ad3: $55
    inc c                                         ; $7ad4: $0c
    dec bc                                        ; $7ad5: $0b
    ld h, [hl]                                    ; $7ad6: $66
    dec bc                                        ; $7ad7: $0b
    add [hl]                                      ; $7ad8: $86
    dec bc                                        ; $7ad9: $0b
    halt                                          ; $7ada: $76
    ld h, l                                       ; $7adb: $65
    inc c                                         ; $7adc: $0c
    ld e, e                                       ; $7add: $5b
    rst $10                                       ; $7ade: $d7
    ld d, $d9                                     ; $7adf: $16 $d9
    dec d                                         ; $7ae1: $15
    ld e, h                                       ; $7ae2: $5c
    ld h, l                                       ; $7ae3: $65
    inc c                                         ; $7ae4: $0c
    dec de                                        ; $7ae5: $1b
    ld d, [hl]                                    ; $7ae6: $56
    dec bc                                        ; $7ae7: $0b
    ld d, $0b                                     ; $7ae8: $16 $0b
    ret c                                         ; $7aea: $d8

    and [hl]                                      ; $7aeb: $a6
    res 0, [hl]                                   ; $7aec: $cb $86
    dec b                                         ; $7aee: $05
    inc c                                         ; $7aef: $0c
    rst $10                                       ; $7af0: $d7
    ldh [$df], a                                  ; $7af1: $e0 $df
    ld [bc], a                                    ; $7af3: $02
    ld [c], a                                     ; $7af4: $e2
    ld a, l                                       ; $7af5: $7d
    ld a, e                                       ; $7af6: $7b
    pop de                                        ; $7af7: $d1
    dec d                                         ; $7af8: $15
    inc c                                         ; $7af9: $0c
    dec bc                                        ; $7afa: $0b
    ld d, [hl]                                    ; $7afb: $56
    dec b                                         ; $7afc: $05
    inc c                                         ; $7afd: $0c
    add l                                         ; $7afe: $85
    reti                                          ; $7aff: $d9


    add l                                         ; $7b00: $85
    rst $10                                       ; $7b01: $d7
    ld d, $d4                                     ; $7b02: $16 $d4
    dec bc                                        ; $7b04: $0b
    add [hl]                                      ; $7b05: $86
    dec bc                                        ; $7b06: $0b
    add [hl]                                      ; $7b07: $86
    add l                                         ; $7b08: $85
    inc c                                         ; $7b09: $0c
    pop de                                        ; $7b0a: $d1
    add l                                         ; $7b0b: $85
    inc c                                         ; $7b0c: $0c
    ld [c], a                                     ; $7b0d: $e2
    ld a, l                                       ; $7b0e: $7d
    ld a, e                                       ; $7b0f: $7b
    pop de                                        ; $7b10: $d1
    dec d                                         ; $7b11: $15
    inc c                                         ; $7b12: $0c
    sub l                                         ; $7b13: $95
    inc c                                         ; $7b14: $0c
    dec bc                                        ; $7b15: $0b
    or [hl]                                       ; $7b16: $b6
    dec b                                         ; $7b17: $05
    inc c                                         ; $7b18: $0c
    rst $10                                       ; $7b19: $d7
    dec d                                         ; $7b1a: $15
    inc c                                         ; $7b1b: $0c
    dec bc                                        ; $7b1c: $0b
    ret c                                         ; $7b1d: $d8

    add [hl]                                      ; $7b1e: $86
    add l                                         ; $7b1f: $85
    inc c                                         ; $7b20: $0c
    dec d                                         ; $7b21: $15
    inc c                                         ; $7b22: $0c
    ldh [$df], a                                  ; $7b23: $e0 $df
    inc bc                                        ; $7b25: $03
    sub l                                         ; $7b26: $95
    inc c                                         ; $7b27: $0c
    dec bc                                        ; $7b28: $0b
    rst $10                                       ; $7b29: $d7
    ld b, [hl]                                    ; $7b2a: $46
    dec b                                         ; $7b2b: $05
    inc c                                         ; $7b2c: $0c
    sub l                                         ; $7b2d: $95
    inc c                                         ; $7b2e: $0c
    add l                                         ; $7b2f: $85
    inc c                                         ; $7b30: $0c
    dec bc                                        ; $7b31: $0b
    ld d, $05                                     ; $7b32: $16 $05
    inc c                                         ; $7b34: $0c
    ret c                                         ; $7b35: $d8

    add l                                         ; $7b36: $85
    inc c                                         ; $7b37: $0c
    ldh [$d7], a                                  ; $7b38: $e0 $d7
    jr c, jr_07d_7b3e                             ; $7b3a: $38 $02

    ld [hl], $0b                                  ; $7b3c: $36 $0b

jr_07d_7b3e:
    ld [hl], $0b                                  ; $7b3e: $36 $0b
    ld [hl], $35                                  ; $7b40: $36 $35
    inc c                                         ; $7b42: $0c
    add l                                         ; $7b43: $85
    inc c                                         ; $7b44: $0c
    dec b                                         ; $7b45: $05
    inc c                                         ; $7b46: $0c
    ret c                                         ; $7b47: $d8

    add l                                         ; $7b48: $85
    inc c                                         ; $7b49: $0c
    dec b                                         ; $7b4a: $05
    inc c                                         ; $7b4b: $0c
    rst $18                                       ; $7b4c: $df
    ld [bc], a                                    ; $7b4d: $02
    ld [c], a                                     ; $7b4e: $e2
    sub e                                         ; $7b4f: $93
    ld a, e                                       ; $7b50: $7b
    pop de                                        ; $7b51: $d1
    add l                                         ; $7b52: $85
    inc c                                         ; $7b53: $0c
    dec b                                         ; $7b54: $05
    dec b                                         ; $7b55: $05
    add $05                                       ; $7b56: $c6 $05
    inc c                                         ; $7b58: $0c
    rst $10                                       ; $7b59: $d7
    dec [hl]                                      ; $7b5a: $35
    ret c                                         ; $7b5b: $d8

    inc c                                         ; $7b5c: $0c
    dec d                                         ; $7b5d: $15
    inc c                                         ; $7b5e: $0c
    dec bc                                        ; $7b5f: $0b
    ld d, [hl]                                    ; $7b60: $56
    dec b                                         ; $7b61: $05
    inc c                                         ; $7b62: $0c
    add l                                         ; $7b63: $85
    inc c                                         ; $7b64: $0c
    ld [c], a                                     ; $7b65: $e2
    sub e                                         ; $7b66: $93
    ld a, e                                       ; $7b67: $7b
    pop de                                        ; $7b68: $d1
    adc e                                         ; $7b69: $8b
    ld b, $05                                     ; $7b6a: $06 $05
    inc c                                         ; $7b6c: $0c
    adc e                                         ; $7b6d: $8b
    xor h                                         ; $7b6e: $ac
    call z, $1bd7                                 ; $7b6f: $cc $d7 $1b
    ret c                                         ; $7b72: $d8

    add [hl]                                      ; $7b73: $86
    dec bc                                        ; $7b74: $0b
    add [hl]                                      ; $7b75: $86
    dec d                                         ; $7b76: $15
    inc c                                         ; $7b77: $0c
    dec b                                         ; $7b78: $05
    inc c                                         ; $7b79: $0c
    ldh [$de], a                                  ; $7b7a: $e0 $de
    rst $38                                       ; $7b7c: $ff
    pop de                                        ; $7b7d: $d1
    dec d                                         ; $7b7e: $15
    inc c                                         ; $7b7f: $0c
    dec bc                                        ; $7b80: $0b
    add [hl]                                      ; $7b81: $86
    dec b                                         ; $7b82: $05
    inc c                                         ; $7b83: $0c
    rst $10                                       ; $7b84: $d7
    dec d                                         ; $7b85: $15
    ret c                                         ; $7b86: $d8

    inc c                                         ; $7b87: $0c
    ld h, l                                       ; $7b88: $65
    inc c                                         ; $7b89: $0c
    dec bc                                        ; $7b8a: $0b
    rst $10                                       ; $7b8b: $d7
    ld d, $d8                                     ; $7b8c: $16 $d8
    dec b                                         ; $7b8e: $05
    inc c                                         ; $7b8f: $0c
    ld h, l                                       ; $7b90: $65
    inc c                                         ; $7b91: $0c
    db $e3                                        ; $7b92: $e3
    pop de                                        ; $7b93: $d1
    dec d                                         ; $7b94: $15
    inc c                                         ; $7b95: $0c
    dec bc                                        ; $7b96: $0b
    add [hl]                                      ; $7b97: $86
    dec b                                         ; $7b98: $05
    inc c                                         ; $7b99: $0c
    rst $10                                       ; $7b9a: $d7
    dec d                                         ; $7b9b: $15
    ret c                                         ; $7b9c: $d8

    inc c                                         ; $7b9d: $0c
    ld h, l                                       ; $7b9e: $65
    inc c                                         ; $7b9f: $0c
    dec bc                                        ; $7ba0: $0b
    and [hl]                                      ; $7ba1: $a6
    dec b                                         ; $7ba2: $05
    inc c                                         ; $7ba3: $0c
    rst $10                                       ; $7ba4: $d7
    dec d                                         ; $7ba5: $15
    ret c                                         ; $7ba6: $d8

    inc c                                         ; $7ba7: $0c
    db $e3                                        ; $7ba8: $e3
    ret nc                                        ; $7ba9: $d0

    ld bc, $55d1                                  ; $7baa: $01 $d1 $55
    inc c                                         ; $7bad: $0c
    ld d, l                                       ; $7bae: $55
    dec b                                         ; $7baf: $05
    ld d, [hl]                                    ; $7bb0: $56
    ld d, l                                       ; $7bb1: $55
    inc c                                         ; $7bb2: $0c
    ld d, l                                       ; $7bb3: $55
    dec b                                         ; $7bb4: $05
    ld d, [hl]                                    ; $7bb5: $56
    dec [hl]                                      ; $7bb6: $35
    dec b                                         ; $7bb7: $05
    rst $10                                       ; $7bb8: $d7
    and [hl]                                      ; $7bb9: $a6
    ret c                                         ; $7bba: $d8

    dec bc                                        ; $7bbb: $0b
    rst $10                                       ; $7bbc: $d7
    and [hl]                                      ; $7bbd: $a6
    ret c                                         ; $7bbe: $d8

    ret nc                                        ; $7bbf: $d0

    ld h, $c0                                     ; $7bc0: $26 $c0
    ret nc                                        ; $7bc2: $d0

    ld bc, $dfdd                                  ; $7bc3: $01 $dd $df
    ld d, $5b                                     ; $7bc6: $16 $5b
    ld b, $6b                                     ; $7bc8: $06 $6b
    ld d, [hl]                                    ; $7bca: $56
    ld e, e                                       ; $7bcb: $5b
    ld b, $8b                                     ; $7bcc: $06 $8b
    ld d, [hl]                                    ; $7bce: $56
    ldh [$d7], a                                  ; $7bcf: $e0 $d7
    xor e                                         ; $7bd1: $ab
    ret c                                         ; $7bd2: $d8

    ld b, $3b                                     ; $7bd3: $06 $3b
    ld b, $d7                                     ; $7bd5: $06 $d7
    xor e                                         ; $7bd7: $ab
    ret c                                         ; $7bd8: $d8

    rst $10                                       ; $7bd9: $d7
    and [hl]                                      ; $7bda: $a6
    ret c                                         ; $7bdb: $d8

    dec sp                                        ; $7bdc: $3b
    ld b, $d7                                     ; $7bdd: $06 $d7
    xor e                                         ; $7bdf: $ab
    ret c                                         ; $7be0: $d8

    rst $10                                       ; $7be1: $d7
    and [hl]                                      ; $7be2: $a6
    ret c                                         ; $7be3: $d8

    dec sp                                        ; $7be4: $3b
    ld b, $d7                                     ; $7be5: $06 $d7
    ld d, l                                       ; $7be7: $55
    ld d, l                                       ; $7be8: $55
    ld d, [hl]                                    ; $7be9: $56
    ret c                                         ; $7bea: $d8

    or l                                          ; $7beb: $b5
    or l                                          ; $7bec: $b5
    and [hl]                                      ; $7bed: $a6
    ret nc                                        ; $7bee: $d0

    inc de                                        ; $7bef: $13
    rst $10                                       ; $7bf0: $d7
    sub b                                         ; $7bf1: $90
    ret c                                         ; $7bf2: $d8

    ret nc                                        ; $7bf3: $d0

    ld bc, $566b                                  ; $7bf4: $01 $6b $56
    ld e, e                                       ; $7bf7: $5b
    ld b, $8b                                     ; $7bf8: $06 $8b
    ld d, [hl]                                    ; $7bfa: $56
    rst $18                                       ; $7bfb: $df
    ld b, $5b                                     ; $7bfc: $06 $5b
    ld b, $6b                                     ; $7bfe: $06 $6b
    ld d, [hl]                                    ; $7c00: $56
    ld e, e                                       ; $7c01: $5b
    ld b, $8b                                     ; $7c02: $06 $8b
    ld d, [hl]                                    ; $7c04: $56
    ldh [$3b], a                                  ; $7c05: $e0 $3b
    rst $10                                       ; $7c07: $d7
    and [hl]                                      ; $7c08: $a6
    ret c                                         ; $7c09: $d8

    dec bc                                        ; $7c0a: $0b
    rst $10                                       ; $7c0b: $d7
    and [hl]                                      ; $7c0c: $a6
    ret c                                         ; $7c0d: $d8

    ret nc                                        ; $7c0e: $d0

    ld h, $c0                                     ; $7c0f: $26 $c0
    ret nc                                        ; $7c11: $d0

    inc de                                        ; $7c12: $13
    rst $10                                       ; $7c13: $d7
    sub b                                         ; $7c14: $90
    ret c                                         ; $7c15: $d8

    ret nc                                        ; $7c16: $d0

    ld bc, $566b                                  ; $7c17: $01 $6b $56
    dec sp                                        ; $7c1a: $3b
    ld b, $8b                                     ; $7c1b: $06 $8b
    ld d, [hl]                                    ; $7c1d: $56
    rst $18                                       ; $7c1e: $df
    inc b                                         ; $7c1f: $04
    rst $10                                       ; $7c20: $d7
    xor e                                         ; $7c21: $ab
    ret c                                         ; $7c22: $d8

    ld b, $6b                                     ; $7c23: $06 $6b
    ld d, [hl]                                    ; $7c25: $56
    dec sp                                        ; $7c26: $3b
    ld b, $8b                                     ; $7c27: $06 $8b
    ld d, [hl]                                    ; $7c29: $56
    ldh [$d7], a                                  ; $7c2a: $e0 $d7
    xor e                                         ; $7c2c: $ab
    ret c                                         ; $7c2d: $d8

    ld b, $6b                                     ; $7c2e: $06 $6b
    ld d, [hl]                                    ; $7c30: $56
    dec sp                                        ; $7c31: $3b
    ld b, $3b                                     ; $7c32: $06 $3b
    ld d, [hl]                                    ; $7c34: $56
    rst $10                                       ; $7c35: $d7
    xor e                                         ; $7c36: $ab
    ret c                                         ; $7c37: $d8

    ld [hl], $0b                                  ; $7c38: $36 $0b
    ld [hl], $d7                                  ; $7c3a: $36 $d7
    ld e, e                                       ; $7c3c: $5b
    ret c                                         ; $7c3d: $d8

    cp h                                          ; $7c3e: $bc
    xor h                                         ; $7c3f: $ac
    ret nc                                        ; $7c40: $d0

    ld h, $c0                                     ; $7c41: $26 $c0
    ret nc                                        ; $7c43: $d0

    ld bc, $063b                                  ; $7c44: $01 $3b $06
    dec sp                                        ; $7c47: $3b
    ld b, $df                                     ; $7c48: $06 $df
    dec b                                         ; $7c4a: $05
    rst $10                                       ; $7c4b: $d7
    xor e                                         ; $7c4c: $ab
    ret c                                         ; $7c4d: $d8

    ld b, $6b                                     ; $7c4e: $06 $6b
    ld d, [hl]                                    ; $7c50: $56
    dec sp                                        ; $7c51: $3b
    ld b, $8b                                     ; $7c52: $06 $8b
    ld d, [hl]                                    ; $7c54: $56
    ldh [$d7], a                                  ; $7c55: $e0 $d7
    xor e                                         ; $7c57: $ab
    ret c                                         ; $7c58: $d8

    ld b, $6b                                     ; $7c59: $06 $6b
    ld d, [hl]                                    ; $7c5b: $56
    dec sp                                        ; $7c5c: $3b
    ld b, $3b                                     ; $7c5d: $06 $3b
    ld d, [hl]                                    ; $7c5f: $56
    rst $10                                       ; $7c60: $d7
    xor e                                         ; $7c61: $ab
    ret c                                         ; $7c62: $d8

    ld [hl], $0b                                  ; $7c63: $36 $0b
    ld [hl], $d7                                  ; $7c65: $36 $d7
    ld e, e                                       ; $7c67: $5b
    ret c                                         ; $7c68: $d8

    cp h                                          ; $7c69: $bc
    xor h                                         ; $7c6a: $ac
    ret nc                                        ; $7c6b: $d0

    ld h, $c0                                     ; $7c6c: $26 $c0
    ret nc                                        ; $7c6e: $d0

    ld bc, $abd7                                  ; $7c6f: $01 $d7 $ab
    ret c                                         ; $7c72: $d8

    ld b, $35                                     ; $7c73: $06 $35
    dec h                                         ; $7c75: $25
    ld h, $de                                     ; $7c76: $26 $de
    rst $38                                       ; $7c78: $ff

    db $d0, $04, $e5, $40, $e6, $b0, $dc, $11, $ea, $01, $eb, $1c, $e8, $07, $d3, $e2
    db $e6, $7c

    call nc, Call_000_0252                        ; $7c8b: $d4 $52 $02
    ret c                                         ; $7c8e: $d8

    jp $a301                                      ; $7c8f: $c3 $01 $a3


    sub c                                         ; $7c92: $91
    inc bc                                        ; $7c93: $03
    and c                                         ; $7c94: $a1
    reti                                          ; $7c95: $d9


    xor a                                         ; $7c96: $af
    reti                                          ; $7c97: $d9


    and e                                         ; $7c98: $a3
    inc bc                                        ; $7c99: $03
    ld [c], a                                     ; $7c9a: $e2
    and $7c                                       ; $7c9b: $e6 $7c
    call nc, Call_000_0252                        ; $7c9d: $d4 $52 $02
    ld d, e                                       ; $7ca0: $53
    ld bc, $7153                                  ; $7ca1: $01 $53 $71
    inc bc                                        ; $7ca4: $03
    ld d, c                                       ; $7ca5: $51
    reti                                          ; $7ca6: $d9


    ld e, a                                       ; $7ca7: $5f
    reti                                          ; $7ca8: $d9


    ld d, e                                       ; $7ca9: $53
    inc bc                                        ; $7caa: $03
    ld [c], a                                     ; $7cab: $e2
    inc bc                                        ; $7cac: $03
    ld a, l                                       ; $7cad: $7d
    db $d3                                        ; $7cae: $d3
    xor c                                         ; $7caf: $a9
    rst $10                                       ; $7cb0: $d7
    daa                                           ; $7cb1: $27
    ret c                                         ; $7cb2: $d8

    ld d, l                                       ; $7cb3: $55
    ld [c], a                                     ; $7cb4: $e2
    inc bc                                        ; $7cb5: $03
    ld a, l                                       ; $7cb6: $7d
    db $d3                                        ; $7cb7: $d3
    and d                                         ; $7cb8: $a2
    ld [bc], a                                    ; $7cb9: $02
    ld d, d                                       ; $7cba: $52
    ld [bc], a                                    ; $7cbb: $02
    rst $10                                       ; $7cbc: $d7
    daa                                           ; $7cbd: $27
    inc bc                                        ; $7cbe: $03
    ld [c], a                                     ; $7cbf: $e2
    inc bc                                        ; $7cc0: $03
    ld a, l                                       ; $7cc1: $7d
    db $d3                                        ; $7cc2: $d3
    xor c                                         ; $7cc3: $a9
    rst $10                                       ; $7cc4: $d7
    daa                                           ; $7cc5: $27
    ld d, l                                       ; $7cc6: $55
    ld [hl], d                                    ; $7cc7: $72
    ld [bc], a                                    ; $7cc8: $02
    ld d, e                                       ; $7cc9: $53
    ld bc, $2333                                  ; $7cca: $01 $33 $23
    ld bc, $c1d8                                  ; $7ccd: $01 $d8 $c1
    reti                                          ; $7cd0: $d9


    set 3, c                                      ; $7cd1: $cb $d9
    set 3, [hl]                                   ; $7cd3: $cb $de
    rst $38                                       ; $7cd5: $ff

    db $d3, $a2, $02, $53, $01, $73, $91

    inc bc                                        ; $7cdd: $03
    and c                                         ; $7cde: $a1
    inc bc                                        ; $7cdf: $03
    rst $10                                       ; $7ce0: $d7
    inc sp                                        ; $7ce1: $33
    ld bc, $2331                                  ; $7ce2: $01 $31 $23
    db $e3                                        ; $7ce5: $e3

    db $d3, $e2, $d6, $7c

    db $d3                                        ; $7cea: $d3
    ld bc, $01c3                                  ; $7ceb: $01 $c3 $01
    and d                                         ; $7cee: $a2
    ld [bc], a                                    ; $7cef: $02
    ld d, e                                       ; $7cf0: $53
    ld bc, $8173                                  ; $7cf1: $01 $73 $81
    inc bc                                        ; $7cf4: $03
    sub c                                         ; $7cf5: $91
    reti                                          ; $7cf6: $d9


    sbc a                                         ; $7cf7: $9f
    reti                                          ; $7cf8: $d9


    sub e                                         ; $7cf9: $93
    inc bc                                        ; $7cfa: $03
    ld [c], a                                     ; $7cfb: $e2
    sub $7c                                       ; $7cfc: $d6 $7c
    call nc, Call_000_3301                        ; $7cfe: $d4 $01 $33
    ld bc, $d4e3                                  ; $7d01: $01 $e3 $d4
    ld [hl-], a                                   ; $7d04: $32
    ld [bc], a                                    ; $7d05: $02
    ret c                                         ; $7d06: $d8

    ld [hl], e                                    ; $7d07: $73
    sub c                                         ; $7d08: $91
    and l                                         ; $7d09: $a5
    push bc                                       ; $7d0a: $c5
    db $e3                                        ; $7d0b: $e3

    db $d0, $04, $e5, $40, $dc, $11, $ea, $01, $eb, $1c, $e8, $07, $d3, $e6, $70, $e2
    db $7a, $7d

    jp nc, Jump_000_0292                          ; $7d1e: $d2 $92 $02

    sub e                                         ; $7d21: $93
    ld bc, $c153                                  ; $7d22: $01 $53 $c1
    inc bc                                        ; $7d25: $03
    rst $10                                       ; $7d26: $d7
    inc l                                         ; $7d27: $2c
    reti                                          ; $7d28: $d9


    jr z, jr_07d_7d2e                             ; $7d29: $28 $03

    ld [c], a                                     ; $7d2b: $e2
    ld a, d                                       ; $7d2c: $7a
    ld a, l                                       ; $7d2d: $7d

jr_07d_7d2e:
    jp nc, Jump_000_0292                          ; $7d2e: $d2 $92 $02

    sub e                                         ; $7d31: $93
    ld bc, $a193                                  ; $7d32: $01 $93 $a1
    inc bc                                        ; $7d35: $03
    sbc h                                         ; $7d36: $9c
    reti                                          ; $7d37: $d9


    sbc b                                         ; $7d38: $98
    inc bc                                        ; $7d39: $03
    inc bc                                        ; $7d3a: $03
    and $70                                       ; $7d3b: $e6 $70
    ld [c], a                                     ; $7d3d: $e2
    inc bc                                        ; $7d3e: $03
    ld a, l                                       ; $7d3f: $7d
    db $d3                                        ; $7d40: $d3
    xor c                                         ; $7d41: $a9
    rst $10                                       ; $7d42: $d7
    daa                                           ; $7d43: $27
    ret c                                         ; $7d44: $d8

    ld d, l                                       ; $7d45: $55
    ld [c], a                                     ; $7d46: $e2
    inc bc                                        ; $7d47: $03
    ld a, l                                       ; $7d48: $7d
    db $d3                                        ; $7d49: $d3
    and d                                         ; $7d4a: $a2
    ld [bc], a                                    ; $7d4b: $02
    ld d, d                                       ; $7d4c: $52
    ld [bc], a                                    ; $7d4d: $02
    rst $10                                       ; $7d4e: $d7
    daa                                           ; $7d4f: $27
    inc bc                                        ; $7d50: $03
    ld [c], a                                     ; $7d51: $e2
    inc bc                                        ; $7d52: $03
    ld a, l                                       ; $7d53: $7d
    db $d3                                        ; $7d54: $d3
    xor c                                         ; $7d55: $a9
    rst $10                                       ; $7d56: $d7
    daa                                           ; $7d57: $27
    ld d, l                                       ; $7d58: $55
    ld [hl], d                                    ; $7d59: $72
    ld [bc], a                                    ; $7d5a: $02
    ld d, e                                       ; $7d5b: $53
    ld bc, $2333                                  ; $7d5c: $01 $33 $23
    ld bc, $c1d8                                  ; $7d5f: $01 $d8 $c1
    reti                                          ; $7d62: $d9


    ret                                           ; $7d63: $c9


    reti                                          ; $7d64: $d9


    ret                                           ; $7d65: $c9


    sbc $ff                                       ; $7d66: $de $ff

    db $d3, $22, $02, $23, $01, $d8, $a3, $d7

    ld sp, $d803                                  ; $7d70: $31 $03 $d8
    ld d, c                                       ; $7d73: $51
    inc bc                                        ; $7d74: $03
    ld [hl], e                                    ; $7d75: $73
    ld bc, $5371                                  ; $7d76: $01 $71 $53
    db $e3                                        ; $7d79: $e3

    db $d3, $e2, $68, $7d

    jp nc, Jump_07d_5301                          ; $7d7e: $d2 $01 $53

    ld bc, $0222                                  ; $7d81: $01 $22 $02
    inc hl                                        ; $7d84: $23
    ld bc, $a3d8                                  ; $7d85: $01 $d8 $a3
    or c                                          ; $7d88: $b1
    inc bc                                        ; $7d89: $03
    pop bc                                        ; $7d8a: $c1
    reti                                          ; $7d8b: $d9


    rst $08                                       ; $7d8c: $cf
    reti                                          ; $7d8d: $d9


    jp $e203                                      ; $7d8e: $c3 $03 $e2


    ld l, b                                       ; $7d91: $68
    ld a, l                                       ; $7d92: $7d
    jp nc, Jump_07d_5301                          ; $7d93: $d2 $01 $53

    db $01                                        ; $7d96: $01
    db $e3                                        ; $7d97: $e3

    db $d0, $08, $e7, $01, $e6, $20, $e9, $00, $dc, $11, $e8, $07, $d1, $e2, $f0, $7d

    pop de                                        ; $7da8: $d1
    and c                                         ; $7da9: $a1
    and b                                         ; $7daa: $a0
    sub d                                         ; $7dab: $92
    ld [hl], d                                    ; $7dac: $72
    and d                                         ; $7dad: $a2
    ld [c], a                                     ; $7dae: $e2
    ldh a, [$7d]                                  ; $7daf: $f0 $7d
    pop de                                        ; $7db1: $d1
    ld d, b                                       ; $7db2: $50
    rst $10                                       ; $7db3: $d7
    ld d, b                                       ; $7db4: $50
    ret c                                         ; $7db5: $d8

    ld d, b                                       ; $7db6: $50
    rst $10                                       ; $7db7: $d7
    ld sp, $2230                                  ; $7db8: $31 $30 $22
    ret c                                         ; $7dbb: $d8

    jp nz, Jump_000_35d7                          ; $7dbc: $c2 $d7 $35

    dec [hl]                                      ; $7dbf: $35
    and d                                         ; $7dc0: $a2
    sub d                                         ; $7dc1: $92
    ld [hl], d                                    ; $7dc2: $72
    ld d, d                                       ; $7dc3: $52
    rst $18                                       ; $7dc4: $df
    ld [bc], a                                    ; $7dc5: $02
    ld [hl-], a                                   ; $7dc6: $32
    ld [hl-], a                                   ; $7dc7: $32
    ld d, d                                       ; $7dc8: $52
    ret c                                         ; $7dc9: $d8

    ld d, d                                       ; $7dca: $52
    and c                                         ; $7dcb: $a1
    and b                                         ; $7dcc: $a0
    sub d                                         ; $7dcd: $92
    ld [hl], d                                    ; $7dce: $72
    ld d, d                                       ; $7dcf: $52
    rst $10                                       ; $7dd0: $d7
    ldh [$32], a                                  ; $7dd1: $e0 $32
    ld [hl+], a                                   ; $7dd3: $22
    ret c                                         ; $7dd4: $d8

    pop bc                                        ; $7dd5: $c1
    and d                                         ; $7dd6: $a2
    ld d, b                                       ; $7dd7: $50
    reti                                          ; $7dd8: $d9


    ld d, c                                       ; $7dd9: $51
    ld d, b                                       ; $7dda: $50
    rst $10                                       ; $7ddb: $d7
    ld d, d                                       ; $7ddc: $52
    ret c                                         ; $7ddd: $d8

    ld d, d                                       ; $7dde: $52
    rst $10                                       ; $7ddf: $d7
    ld d, d                                       ; $7de0: $52
    sbc $ff                                       ; $7de1: $de $ff

    db $d1, $a2, $d7, $a2, $92, $72

    ld d, c                                       ; $7de9: $51
    ld d, b                                       ; $7dea: $50
    ld [hl-], a                                   ; $7deb: $32
    ld [hl+], a                                   ; $7dec: $22
    ret c                                         ; $7ded: $d8

    db $c2                                        ; $7dee: $c2
    db $e3                                        ; $7def: $e3

    db $d1, $e2, $e3, $7d

    pop de                                        ; $7df4: $d1
    and d                                         ; $7df5: $a2
    and d                                         ; $7df6: $a2
    rst $10                                       ; $7df7: $d7
    ld [hl-], a                                   ; $7df8: $32
    ld sp, $5130                                  ; $7df9: $31 $30 $51
    ld d, b                                       ; $7dfc: $50
    ld [hl-], a                                   ; $7dfd: $32
    ld [hl+], a                                   ; $7dfe: $22
    ret c                                         ; $7dff: $d8

    jp nz, $e3e2                                  ; $7e00: $c2 $e2 $e3

    ld a, l                                       ; $7e03: $7d
    pop de                                        ; $7e04: $d1
    ld d, d                                       ; $7e05: $52
    rst $10                                       ; $7e06: $d7
    ld d, d                                       ; $7e07: $52
    ret c                                         ; $7e08: $d8

    ld d, d                                       ; $7e09: $52
    rst $10                                       ; $7e0a: $d7
    ld d, c                                       ; $7e0b: $51
    ld d, b                                       ; $7e0c: $50
    db $e3                                        ; $7e0d: $e3

    db $d0, $08, $d2, $df, $02, $e2, $85, $7e

    ld [c], a                                     ; $7e16: $e2

jr_07d_7e17:
    add l                                         ; $7e17: $85
    ld a, [hl]                                    ; $7e18: $7e
    ld [c], a                                     ; $7e19: $e2
    add l                                         ; $7e1a: $85
    ld a, [hl]                                    ; $7e1b: $7e
    jp nc, $d880                                  ; $7e1c: $d2 $80 $d8

    ld hl, $81d7                                  ; $7e1f: $21 $d7 $81
    add b                                         ; $7e22: $80

jr_07d_7e23:
    add b                                         ; $7e23: $80
    ld d, b                                       ; $7e24: $50
    ret c                                         ; $7e25: $d8

    or b                                          ; $7e26: $b0
    db $10                                        ; $7e27: $10
    and b                                         ; $7e28: $a0
    and b                                         ; $7e29: $a0
    jp nc, $d880                                  ; $7e2a: $d2 $80 $d8

    ld hl, $81d7                                  ; $7e2d: $21 $d7 $81
    add b                                         ; $7e30: $80
    add c                                         ; $7e31: $81
    add b                                         ; $7e32: $80
    ret c                                         ; $7e33: $d8

    ld de, $80d7                                  ; $7e34: $11 $d7 $80
    jp nc, $8182                                  ; $7e37: $d2 $82 $81

    add b                                         ; $7e3a: $80
    add b                                         ; $7e3b: $80
    add b                                         ; $7e3c: $80
    ret c                                         ; $7e3d: $d8

    jr nc, jr_07d_7e17                            ; $7e3e: $30 $d7

    add c                                         ; $7e40: $81
    add b                                         ; $7e41: $80
    pop de                                        ; $7e42: $d1
    db $10                                        ; $7e43: $10
    rst $10                                       ; $7e44: $d7
    add c                                         ; $7e45: $81
    add c                                         ; $7e46: $81
    add b                                         ; $7e47: $80
    add b                                         ; $7e48: $80
    ret c                                         ; $7e49: $d8

    jr nz, jr_07d_7e23                            ; $7e4a: $20 $d7

    add b                                         ; $7e4c: $80
    add c                                         ; $7e4d: $81
    add b                                         ; $7e4e: $80
    jp nc, $d880                                  ; $7e4f: $d2 $80 $d8

    jr nz, @+$32                                  ; $7e52: $20 $30

    rst $10                                       ; $7e54: $d7
    add b                                         ; $7e55: $80
    ret c                                         ; $7e56: $d8

    db $10                                        ; $7e57: $10
    rst $10                                       ; $7e58: $d7
    add b                                         ; $7e59: $80

jr_07d_7e5a:
    add b                                         ; $7e5a: $80
    ld d, b                                       ; $7e5b: $50
    ret c                                         ; $7e5c: $d8

    or b                                          ; $7e5d: $b0
    db $10                                        ; $7e5e: $10
    and b                                         ; $7e5f: $a0
    and b                                         ; $7e60: $a0
    ldh [$e2], a                                  ; $7e61: $e0 $e2
    adc l                                         ; $7e63: $8d
    ld a, [hl]                                    ; $7e64: $7e
    ld [c], a                                     ; $7e65: $e2
    sbc d                                         ; $7e66: $9a
    ld a, [hl]                                    ; $7e67: $7e
    ld [c], a                                     ; $7e68: $e2
    adc l                                         ; $7e69: $8d
    ld a, [hl]                                    ; $7e6a: $7e
    pop de                                        ; $7e6b: $d1
    db $10                                        ; $7e6c: $10
    ld d, b                                       ; $7e6d: $50
    ld d, b                                       ; $7e6e: $50
    ld sp, $1050                                  ; $7e6f: $31 $50 $10
    ld d, b                                       ; $7e72: $50
    db $10                                        ; $7e73: $10
    jr nc, jr_07d_7ec6                            ; $7e74: $30 $50

    jr nc, jr_07d_7e5a                            ; $7e76: $30 $e2

    adc l                                         ; $7e78: $8d
    ld a, [hl]                                    ; $7e79: $7e
    ld [c], a                                     ; $7e7a: $e2
    sbc d                                         ; $7e7b: $9a
    ld a, [hl]                                    ; $7e7c: $7e
    ld [c], a                                     ; $7e7d: $e2
    adc l                                         ; $7e7e: $8d
    ld a, [hl]                                    ; $7e7f: $7e
    ld [c], a                                     ; $7e80: $e2
    sbc d                                         ; $7e81: $9a
    ld a, [hl]                                    ; $7e82: $7e
    sbc $ff                                       ; $7e83: $de $ff

    db $d2, $82, $81, $80, $82, $81

    add b                                         ; $7e8b: $80
    db $e3                                        ; $7e8c: $e3
    pop de                                        ; $7e8d: $d1
    ret nz                                        ; $7e8e: $c0

    ld d, b                                       ; $7e8f: $50
    ld d, b                                       ; $7e90: $50
    ld sp, $1050                                  ; $7e91: $31 $50 $10
    ld d, b                                       ; $7e94: $50
    db $10                                        ; $7e95: $10
    jr nc, jr_07d_7ee8                            ; $7e96: $30 $50

    ld d, b                                       ; $7e98: $50
    db $e3                                        ; $7e99: $e3
    pop de                                        ; $7e9a: $d1
    db $10                                        ; $7e9b: $10
    ld d, b                                       ; $7e9c: $50
    ld d, b                                       ; $7e9d: $50
    ld sp, $1050                                  ; $7e9e: $31 $50 $10
    ld d, b                                       ; $7ea1: $50
    db $10                                        ; $7ea2: $10
    jr nc, jr_07d_7ed5                            ; $7ea3: $30 $30

    jr nc, @-$1b                                  ; $7ea5: $30 $e3

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

jr_07d_7ec6:
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

jr_07d_7ed5:
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

jr_07d_7ee8:
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
