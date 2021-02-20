; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $07e", ROMX[$4000], BANK[$7e]

    db $72, $40, $eb, $40, $16, $40, $22, $40

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
    jr nc, jr_07e_4020                            ; $401b: $30 $03

    ld [$c4c0], a                                 ; $401d: $ea $c0 $c4

jr_07e_4020:
    pop hl                                        ; $4020: $e1
    ret                                           ; $4021: $c9


    push bc                                       ; $4022: $c5
    push hl                                       ; $4023: $e5
    ld b, $00                                     ; $4024: $06 $00
    ld c, a                                       ; $4026: $4f
    or a                                          ; $4027: $b7
    jr z, jr_07e_4038                             ; $4028: $28 $0e

    ld hl, $5235                                  ; $402a: $21 $35 $52
    add hl, bc                                    ; $402d: $09
    ld b, [hl]                                    ; $402e: $46
    ld a, [$c4c3]                                 ; $402f: $fa $c3 $c4
    or a                                          ; $4032: $b7
    jr z, jr_07e_4038                             ; $4033: $28 $03

    cp b                                          ; $4035: $b8
    jr c, jr_07e_4040                             ; $4036: $38 $08

jr_07e_4038:
    ld a, b                                       ; $4038: $78
    ld [$c4c3], a                                 ; $4039: $ea $c3 $c4
    ld a, c                                       ; $403c: $79
    ld [$c4c2], a                                 ; $403d: $ea $c2 $c4

jr_07e_4040:
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

jr_07e_40bd:
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
    jr nz, jr_07e_40bd                            ; $40da: $20 $e1

    ld hl, $4c3b                                  ; $40dc: $21 $3b $4c
    ld bc, $c536                                  ; $40df: $01 $36 $c5
    ld d, $08                                     ; $40e2: $16 $08

jr_07e_40e4:
    ld a, [hl+]                                   ; $40e4: $2a

Call_07e_40e5:
    ld [bc], a                                    ; $40e5: $02
    inc bc                                        ; $40e6: $03
    dec d                                         ; $40e7: $15
    jr nz, jr_07e_40e4                            ; $40e8: $20 $fa

    ret                                           ; $40ea: $c9


    call Call_07e_42b8                            ; $40eb: $cd $b8 $42
    call Call_07e_4119                            ; $40ee: $cd $19 $41
    rst $18                                       ; $40f1: $df

    db $02, $7f

    ld a, [$c4c1]                                 ; $40f4: $fa $c1 $c4
    ldh [$bf], a                                  ; $40f7: $e0 $bf
    ld [$2000], a                                 ; $40f9: $ea $00 $20
    ld a, [$c535]                                 ; $40fc: $fa $35 $c5
    or a                                          ; $40ff: $b7
    jr z, jr_07e_4107                             ; $4100: $28 $05

    call Call_07e_499b                            ; $4102: $cd $9b $49
    jr jr_07e_4113                                ; $4105: $18 $0c

jr_07e_4107:
    call Call_07e_42b9                            ; $4107: $cd $b9 $42
    call Call_07e_4308                            ; $410a: $cd $08 $43
    call Call_07e_4359                            ; $410d: $cd $59 $43
    call Call_07e_43ae                            ; $4110: $cd $ae $43

jr_07e_4113:
    call Call_07e_48a0                            ; $4113: $cd $a0 $48
    jp Jump_07e_49cc                              ; $4116: $c3 $cc $49


Call_07e_4119:
    ld a, [$c4c0]                                 ; $4119: $fa $c0 $c4
    rla                                           ; $411c: $17
    jr c, jr_07e_4130                             ; $411d: $38 $11

    call Call_07e_4145                            ; $411f: $cd $45 $41
    ld a, [$c4c0]                                 ; $4122: $fa $c0 $c4
    call Call_07e_4186                            ; $4125: $cd $86 $41
    ld a, [$c4c0]                                 ; $4128: $fa $c0 $c4
    or $80                                        ; $412b: $f6 $80
    ld [$c4c0], a                                 ; $412d: $ea $c0 $c4

jr_07e_4130:
    ld a, [$c4c2]                                 ; $4130: $fa $c2 $c4
    rla                                           ; $4133: $17
    jr c, jr_07e_4144                             ; $4134: $38 $0e

    ld a, [$c4c2]                                 ; $4136: $fa $c2 $c4
    rst $18                                       ; $4139: $df

    db $00, $7f

    ld a, [$c4c2]                                 ; $413c: $fa $c2 $c4
    or $80                                        ; $413f: $f6 $80
    ld [$c4c2], a                                 ; $4141: $ea $c2 $c4

jr_07e_4144:
    ret                                           ; $4144: $c9


Call_07e_4145:
    ld a, [$c4cc]                                 ; $4145: $fa $cc $c4
    ld d, a                                       ; $4148: $57
    xor a                                         ; $4149: $af
    ld [$c4cd], a                                 ; $414a: $ea $cd $c4
    bit 0, d                                      ; $414d: $cb $42
    jr nz, jr_07e_4159                            ; $414f: $20 $08

    ld a, $08                                     ; $4151: $3e $08
    ldh [rNR12], a                                ; $4153: $e0 $12
    swap a                                        ; $4155: $cb $37
    ldh [rNR14], a                                ; $4157: $e0 $14

jr_07e_4159:
    xor a                                         ; $4159: $af
    ld [$c4ce], a                                 ; $415a: $ea $ce $c4
    bit 1, d                                      ; $415d: $cb $4a
    jr nz, jr_07e_4169                            ; $415f: $20 $08

    ld a, $08                                     ; $4161: $3e $08
    ldh [rNR22], a                                ; $4163: $e0 $17
    swap a                                        ; $4165: $cb $37
    ldh [rNR24], a                                ; $4167: $e0 $19

jr_07e_4169:
    xor a                                         ; $4169: $af
    ld [$c4d0], a                                 ; $416a: $ea $d0 $c4
    bit 3, d                                      ; $416d: $cb $5a
    jr nz, jr_07e_4179                            ; $416f: $20 $08

    ld a, $08                                     ; $4171: $3e $08
    ldh [rNR42], a                                ; $4173: $e0 $21
    swap a                                        ; $4175: $cb $37
    ldh [rNR44], a                                ; $4177: $e0 $23

jr_07e_4179:
    xor a                                         ; $4179: $af
    ld [$c4cf], a                                 ; $417a: $ea $cf $c4
    bit 2, d                                      ; $417d: $cb $52
    jr nz, jr_07e_4185                            ; $417f: $20 $04

    ld a, $00                                     ; $4181: $3e $00
    ldh [rNR32], a                                ; $4183: $e0 $1c

jr_07e_4185:
    ret                                           ; $4185: $c9


Call_07e_4186:
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
    jr nc, jr_07e_41f2                            ; $41aa: $30 $46

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

jr_07e_41f2:
    rr e                                          ; $41f2: $cb $1b
    jr nc, jr_07e_423c                            ; $41f4: $30 $46

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

jr_07e_423c:
    rr e                                          ; $423c: $cb $1b
    jr nc, jr_07e_4279                            ; $423e: $30 $39

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

jr_07e_4279:
    rr e                                          ; $4279: $cb $1b
    jr nc, jr_07e_42b3                            ; $427b: $30 $36

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

jr_07e_42b3:
    xor a                                         ; $42b3: $af
    ld [$c535], a                                 ; $42b4: $ea $35 $c5
    ret                                           ; $42b7: $c9


Call_07e_42b8:
    ret                                           ; $42b8: $c9


Call_07e_42b9:
    ld a, [$c4cd]                                 ; $42b9: $fa $cd $c4
    or a                                          ; $42bc: $b7
    jr z, jr_07e_42f8                             ; $42bd: $28 $39

    ld a, [$c4f7]                                 ; $42bf: $fa $f7 $c4
    or a                                          ; $42c2: $b7
    jr z, jr_07e_42d9                             ; $42c3: $28 $14

    ld hl, $c503                                  ; $42c5: $21 $03 $c5
    dec [hl]                                      ; $42c8: $35
    jr nz, jr_07e_42d9                            ; $42c9: $20 $0e

    ld a, [$c4fb]                                 ; $42cb: $fa $fb $c4
    cp $01                                        ; $42ce: $fe $01
    jr z, jr_07e_42d9                             ; $42d0: $28 $07

    ld a, [$c4cc]                                 ; $42d2: $fa $cc $c4
    rrca                                          ; $42d5: $0f
    call nc, Call_07e_4737                        ; $42d6: $d4 $37 $47

jr_07e_42d9:
    ld hl, $c4fb                                  ; $42d9: $21 $fb $c4
    dec [hl]                                      ; $42dc: $35
    jr nz, jr_07e_42f4                            ; $42dd: $20 $15

    ld hl, $c4d5                                  ; $42df: $21 $d5 $c4
    ld a, [hl+]                                   ; $42e2: $2a
    ld h, [hl]                                    ; $42e3: $66
    ld l, a                                       ; $42e4: $6f
    ld bc, $0000                                  ; $42e5: $01 $00 $00
    call Call_07e_43ef                            ; $42e8: $cd $ef $43
    ld a, [$c4cd]                                 ; $42eb: $fa $cd $c4
    or a                                          ; $42ee: $b7
    jr z, jr_07e_42f8                             ; $42ef: $28 $07

    call Call_07e_46f8                            ; $42f1: $cd $f8 $46

jr_07e_42f4:
    xor a                                         ; $42f4: $af
    jp Jump_07e_492e                              ; $42f5: $c3 $2e $49


jr_07e_42f8:
    ld a, [$c4cc]                                 ; $42f8: $fa $cc $c4
    bit 0, a                                      ; $42fb: $cb $47
    jr nz, jr_07e_4307                            ; $42fd: $20 $08

    ld a, $08                                     ; $42ff: $3e $08
    ldh [rNR12], a                                ; $4301: $e0 $12
    swap a                                        ; $4303: $cb $37
    ldh [rNR14], a                                ; $4305: $e0 $14

jr_07e_4307:
    ret                                           ; $4307: $c9


Call_07e_4308:
    ld a, [$c4ce]                                 ; $4308: $fa $ce $c4
    or a                                          ; $430b: $b7
    jr z, jr_07e_4349                             ; $430c: $28 $3b

    ld a, [$c4f8]                                 ; $430e: $fa $f8 $c4
    or a                                          ; $4311: $b7
    jr z, jr_07e_4329                             ; $4312: $28 $15

    ld hl, $c504                                  ; $4314: $21 $04 $c5
    dec [hl]                                      ; $4317: $35
    jr nz, jr_07e_4329                            ; $4318: $20 $0f

    ld a, [$c4fc]                                 ; $431a: $fa $fc $c4
    cp $01                                        ; $431d: $fe $01
    jr z, jr_07e_4329                             ; $431f: $28 $08

    ld a, [$c4cc]                                 ; $4321: $fa $cc $c4
    bit 1, a                                      ; $4324: $cb $4f
    call z, Call_07e_47ab                         ; $4326: $cc $ab $47

jr_07e_4329:
    ld hl, $c4fc                                  ; $4329: $21 $fc $c4
    dec [hl]                                      ; $432c: $35
    jr nz, jr_07e_4344                            ; $432d: $20 $15

    ld hl, $c4d7                                  ; $432f: $21 $d7 $c4
    ld a, [hl+]                                   ; $4332: $2a
    ld h, [hl]                                    ; $4333: $66
    ld l, a                                       ; $4334: $6f
    ld bc, $0001                                  ; $4335: $01 $01 $00
    call Call_07e_43ef                            ; $4338: $cd $ef $43
    ld a, [$c4ce]                                 ; $433b: $fa $ce $c4
    or a                                          ; $433e: $b7
    jr z, jr_07e_4349                             ; $433f: $28 $08

    call Call_07e_476f                            ; $4341: $cd $6f $47

jr_07e_4344:
    ld a, $01                                     ; $4344: $3e $01
    jp Jump_07e_492e                              ; $4346: $c3 $2e $49


jr_07e_4349:
    ld a, [$c4cc]                                 ; $4349: $fa $cc $c4
    bit 1, a                                      ; $434c: $cb $4f
    jr nz, jr_07e_4358                            ; $434e: $20 $08

    ld a, $08                                     ; $4350: $3e $08
    ldh [rNR22], a                                ; $4352: $e0 $17
    swap a                                        ; $4354: $cb $37
    ldh [rNR24], a                                ; $4356: $e0 $19

jr_07e_4358:
    ret                                           ; $4358: $c9


Call_07e_4359:
    ld a, [$c4cf]                                 ; $4359: $fa $cf $c4
    or a                                          ; $435c: $b7
    jr z, jr_07e_439e                             ; $435d: $28 $3f

    ld a, [$c4f9]                                 ; $435f: $fa $f9 $c4
    or a                                          ; $4362: $b7
    jr z, jr_07e_437e                             ; $4363: $28 $19

    ld hl, $c505                                  ; $4365: $21 $05 $c5
    dec [hl]                                      ; $4368: $35
    jr nz, jr_07e_437e                            ; $4369: $20 $13

    ld a, [$c4cc]                                 ; $436b: $fa $cc $c4
    bit 2, a                                      ; $436e: $cb $57
    jr nz, jr_07e_437e                            ; $4370: $20 $0c

    ld a, [$c4fd]                                 ; $4372: $fa $fd $c4
    cp $01                                        ; $4375: $fe $01
    jr z, jr_07e_437e                             ; $4377: $28 $05

    ld a, [$c509]                                 ; $4379: $fa $09 $c5
    ldh [rNR32], a                                ; $437c: $e0 $1c

jr_07e_437e:
    ld hl, $c4fd                                  ; $437e: $21 $fd $c4
    dec [hl]                                      ; $4381: $35
    jr nz, jr_07e_4399                            ; $4382: $20 $15

    ld hl, $c4d9                                  ; $4384: $21 $d9 $c4
    ld a, [hl+]                                   ; $4387: $2a
    ld h, [hl]                                    ; $4388: $66
    ld l, a                                       ; $4389: $6f
    ld bc, $0002                                  ; $438a: $01 $02 $00
    call Call_07e_43ef                            ; $438d: $cd $ef $43
    ld a, [$c4cf]                                 ; $4390: $fa $cf $c4
    or a                                          ; $4393: $b7
    jr z, jr_07e_439e                             ; $4394: $28 $08

    call Call_07e_47e3                            ; $4396: $cd $e3 $47

jr_07e_4399:
    ld a, $02                                     ; $4399: $3e $02
    jp Jump_07e_492e                              ; $439b: $c3 $2e $49


jr_07e_439e:
    ld a, [$c4cc]                                 ; $439e: $fa $cc $c4
    bit 2, a                                      ; $43a1: $cb $57
    jr nz, jr_07e_43ad                            ; $43a3: $20 $08

    ld a, $00                                     ; $43a5: $3e $00
    ldh [rNR32], a                                ; $43a7: $e0 $1c
    ld a, $80                                     ; $43a9: $3e $80
    ldh [rNR34], a                                ; $43ab: $e0 $1e

jr_07e_43ad:
    ret                                           ; $43ad: $c9


Call_07e_43ae:
    ld a, [$c4d0]                                 ; $43ae: $fa $d0 $c4
    or a                                          ; $43b1: $b7
    jr z, jr_07e_43db                             ; $43b2: $28 $27

    ld hl, $c4fe                                  ; $43b4: $21 $fe $c4
    dec [hl]                                      ; $43b7: $35
    jr nz, jr_07e_43d1                            ; $43b8: $20 $17

    ld hl, $c4db                                  ; $43ba: $21 $db $c4
    ld a, [hl+]                                   ; $43bd: $2a
    ld h, [hl]                                    ; $43be: $66
    ld l, a                                       ; $43bf: $6f
    ld bc, $0003                                  ; $43c0: $01 $03 $00
    call Call_07e_43ef                            ; $43c3: $cd $ef $43
    ld a, [$c4d0]                                 ; $43c6: $fa $d0 $c4
    or a                                          ; $43c9: $b7
    jr z, jr_07e_43db                             ; $43ca: $28 $0f

    call Call_07e_4851                            ; $43cc: $cd $51 $48
    jr jr_07e_43ee                                ; $43cf: $18 $1d

jr_07e_43d1:
    ld a, [$c532]                                 ; $43d1: $fa $32 $c5
    or a                                          ; $43d4: $b7
    jr z, jr_07e_43ee                             ; $43d5: $28 $17

    call Call_07e_487f                            ; $43d7: $cd $7f $48
    ret                                           ; $43da: $c9


jr_07e_43db:
    ld a, [$c4cc]                                 ; $43db: $fa $cc $c4
    bit 3, a                                      ; $43de: $cb $5f
    jr nz, jr_07e_43ee                            ; $43e0: $20 $0c

    xor a                                         ; $43e2: $af
    ld [$c532], a                                 ; $43e3: $ea $32 $c5
    ld a, $08                                     ; $43e6: $3e $08
    ldh [rNR42], a                                ; $43e8: $e0 $21
    swap a                                        ; $43ea: $cb $37
    ldh [rNR44], a                                ; $43ec: $e0 $23

jr_07e_43ee:
    ret                                           ; $43ee: $c9


Call_07e_43ef:
Jump_07e_43ef:
    ld a, [hl+]                                   ; $43ef: $2a
    push hl                                       ; $43f0: $e5
    push af                                       ; $43f1: $f5
    cp $d0                                        ; $43f2: $fe $d0
    jr c, jr_07e_4467                             ; $43f4: $38 $71

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

    db $ab, $45, $c6, $45, $d4, $45, $e0, $45, $f5, $45

    rrca                                          ; $4429: $0f
    ld b, [hl]                                    ; $442a: $46

    db $16, $46, $2d, $46

    ld a, $46                                     ; $442f: $3e $46

    db $4b, $46, $5a, $46, $67, $46, $77, $46, $84, $46, $91, $46, $a3, $46

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

jr_07e_4467:
    push af                                       ; $4467: $f5
    ld a, [hl]                                    ; $4468: $7e
    ld e, a                                       ; $4469: $5f
    ld hl, $c4d1                                  ; $446a: $21 $d1 $c4
    add hl, bc                                    ; $446d: $09
    ld a, [hl]                                    ; $446e: $7e
    cp $80                                        ; $446f: $fe $80
    jr z, jr_07e_448b                             ; $4471: $28 $18

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

jr_07e_448b:
    pop af                                        ; $448b: $f1
    push de                                       ; $448c: $d5
    ld hl, $c50f                                  ; $448d: $21 $0f $c5
    add hl, bc                                    ; $4490: $09
    ld d, [hl]                                    ; $4491: $56
    and $0f                                       ; $4492: $e6 $0f
    inc a                                         ; $4494: $3c
    cp d                                          ; $4495: $ba
    jr nc, jr_07e_449b                            ; $4496: $30 $03

    ld e, a                                       ; $4498: $5f
    ld a, d                                       ; $4499: $7a
    ld d, e                                       ; $449a: $53

jr_07e_449b:
    ld e, a                                       ; $449b: $5f

jr_07e_449c:
    dec d                                         ; $449c: $15
    jr z, jr_07e_44a2                             ; $449d: $28 $03

    add e                                         ; $449f: $83
    jr jr_07e_449c                                ; $44a0: $18 $fa

jr_07e_44a2:
    ld hl, $c4fb                                  ; $44a2: $21 $fb $c4
    add hl, bc                                    ; $44a5: $09
    ld [hl], a                                    ; $44a6: $77
    pop de                                        ; $44a7: $d1
    ld d, a                                       ; $44a8: $57
    ld a, e                                       ; $44a9: $7b
    cp $d9                                        ; $44aa: $fe $d9
    ld a, d                                       ; $44ac: $7a
    jr z, jr_07e_44d6                             ; $44ad: $28 $27

    ld e, a                                       ; $44af: $5f
    ld hl, $c4ff                                  ; $44b0: $21 $ff $c4
    add hl, bc                                    ; $44b3: $09
    ld a, [hl]                                    ; $44b4: $7e
    cp $08                                        ; $44b5: $fe $08
    ld d, a                                       ; $44b7: $57
    ld a, e                                       ; $44b8: $7b
    jr z, jr_07e_44d6                             ; $44b9: $28 $1b

    push hl                                       ; $44bb: $e5
    push bc                                       ; $44bc: $c5
    ld b, $00                                     ; $44bd: $06 $00
    ld c, a                                       ; $44bf: $4f
    ld hl, $0000                                  ; $44c0: $21 $00 $00

jr_07e_44c3:
    add hl, bc                                    ; $44c3: $09
    dec d                                         ; $44c4: $15
    jr nz, jr_07e_44c3                            ; $44c5: $20 $fc

    srl h                                         ; $44c7: $cb $3c
    rr l                                          ; $44c9: $cb $1d
    srl h                                         ; $44cb: $cb $3c
    rr l                                          ; $44cd: $cb $1d
    srl h                                         ; $44cf: $cb $3c
    rr l                                          ; $44d1: $cb $1d
    ld a, l                                       ; $44d3: $7d
    pop bc                                        ; $44d4: $c1
    pop hl                                        ; $44d5: $e1

jr_07e_44d6:
    ld hl, $c503                                  ; $44d6: $21 $03 $c5
    add hl, bc                                    ; $44d9: $09
    ld [hl], a                                    ; $44da: $77
    pop af                                        ; $44db: $f1
    and $f0                                       ; $44dc: $e6 $f0
    ld hl, $c4f7                                  ; $44de: $21 $f7 $c4
    add hl, bc                                    ; $44e1: $09
    ld [hl], a                                    ; $44e2: $77
    or a                                          ; $44e3: $b7
    jr nz, jr_07e_44e9                            ; $44e4: $20 $03

    jp Jump_07e_4565                              ; $44e6: $c3 $65 $45


jr_07e_44e9:
    swap a                                        ; $44e9: $cb $37
    dec a                                         ; $44eb: $3d
    ld h, a                                       ; $44ec: $67
    ld a, $03                                     ; $44ed: $3e $03
    cp c                                          ; $44ef: $b9
    ld a, h                                       ; $44f0: $7c
    jr z, jr_07e_44f5                             ; $44f1: $28 $02

    jr jr_07e_453b                                ; $44f3: $18 $46

jr_07e_44f5:
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
    jr jr_07e_4565                                ; $4539: $18 $2a

jr_07e_453b:
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
    call Call_07e_4982                            ; $455e: $cd $82 $49
    pop hl                                        ; $4561: $e1
    ld a, e                                       ; $4562: $7b
    ld [hl+], a                                   ; $4563: $22
    ld [hl], d                                    ; $4564: $72

Jump_07e_4565:
jr_07e_4565:
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
    jp Jump_07e_46f4                              ; $4577: $c3 $f4 $46


    and $07                                       ; $457a: $e6 $07
    dec a                                         ; $457c: $3d
    ld hl, $c4ef                                  ; $457d: $21 $ef $c4
    add hl, bc                                    ; $4580: $09
    push af                                       ; $4581: $f5
    ld a, c                                       ; $4582: $79
    cp $02                                        ; $4583: $fe $02
    jr nz, jr_07e_458d                            ; $4585: $20 $06

    pop af                                        ; $4587: $f1
    inc a                                         ; $4588: $3c
    ld [hl], a                                    ; $4589: $77
    jp Jump_07e_46f4                              ; $458a: $c3 $f4 $46


jr_07e_458d:
    pop af                                        ; $458d: $f1
    ld [hl], a                                    ; $458e: $77
    jp Jump_07e_46f4                              ; $458f: $c3 $f4 $46


    ld hl, $c4ef                                  ; $4592: $21 $ef $c4
    add hl, bc                                    ; $4595: $09
    inc [hl]                                      ; $4596: $34
    jp Jump_07e_46f4                              ; $4597: $c3 $f4 $46


    ld hl, $c4ef                                  ; $459a: $21 $ef $c4
    add hl, bc                                    ; $459d: $09
    dec [hl]                                      ; $459e: $35
    jp Jump_07e_46f4                              ; $459f: $c3 $f4 $46


    ld hl, $c4d1                                  ; $45a2: $21 $d1 $c4
    add hl, bc                                    ; $45a5: $09
    ld [hl], $80                                  ; $45a6: $36 $80
    jp Jump_07e_46f4                              ; $45a8: $c3 $f4 $46


    pop hl                                        ; $45ab: $e1
    ld a, [hl+]                                   ; $45ac: $2a
    push hl                                       ; $45ad: $e5
    push bc                                       ; $45ae: $c5
    inc c                                         ; $45af: $0c
    ld e, $ee                                     ; $45b0: $1e $ee

jr_07e_45b2:
    dec c                                         ; $45b2: $0d
    jr z, jr_07e_45ba                             ; $45b3: $28 $05

    rlca                                          ; $45b5: $07
    rlc e                                         ; $45b6: $cb $03
    jr jr_07e_45b2                                ; $45b8: $18 $f8

jr_07e_45ba:
    ld d, a                                       ; $45ba: $57
    ld hl, $c4c4                                  ; $45bb: $21 $c4 $c4
    ld a, [hl]                                    ; $45be: $7e
    and e                                         ; $45bf: $a3
    or d                                          ; $45c0: $b2
    ld [hl], a                                    ; $45c1: $77
    pop bc                                        ; $45c2: $c1
    jp Jump_07e_46f4                              ; $45c3: $c3 $f4 $46


    pop de                                        ; $45c6: $d1
    push de                                       ; $45c7: $d5
    dec de                                        ; $45c8: $1b
    ld hl, $c4dd                                  ; $45c9: $21 $dd $c4
    add hl, bc                                    ; $45cc: $09
    add hl, bc                                    ; $45cd: $09
    ld [hl], e                                    ; $45ce: $73
    inc hl                                        ; $45cf: $23
    ld [hl], d                                    ; $45d0: $72
    jp Jump_07e_46f4                              ; $45d1: $c3 $f4 $46


    pop hl                                        ; $45d4: $e1
    ld hl, $c4dd                                  ; $45d5: $21 $dd $c4
    add hl, bc                                    ; $45d8: $09
    add hl, bc                                    ; $45d9: $09
    ld a, [hl+]                                   ; $45da: $2a
    ld h, [hl]                                    ; $45db: $66
    ld l, a                                       ; $45dc: $6f
    jp Jump_07e_43ef                              ; $45dd: $c3 $ef $43


    pop de                                        ; $45e0: $d1
    ld a, [de]                                    ; $45e1: $1a
    inc de                                        ; $45e2: $13
    push af                                       ; $45e3: $f5
    call Call_07e_46e0                            ; $45e4: $cd $e0 $46
    ld [hl], e                                    ; $45e7: $73
    inc hl                                        ; $45e8: $23
    ld [hl], d                                    ; $45e9: $72
    inc hl                                        ; $45ea: $23
    pop af                                        ; $45eb: $f1
    ld [hl], a                                    ; $45ec: $77
    inc hl                                        ; $45ed: $23
    push de                                       ; $45ee: $d5
    call Call_07e_46e9                            ; $45ef: $cd $e9 $46
    jp Jump_07e_46f4                              ; $45f2: $c3 $f4 $46


    call Call_07e_46e0                            ; $45f5: $cd $e0 $46
    dec hl                                        ; $45f8: $2b
    ld a, [hl]                                    ; $45f9: $7e
    dec a                                         ; $45fa: $3d
    jr z, jr_07e_4607                             ; $45fb: $28 $0a

    ld [hl-], a                                   ; $45fd: $32
    ld d, [hl]                                    ; $45fe: $56
    dec hl                                        ; $45ff: $2b
    ld e, [hl]                                    ; $4600: $5e
    pop hl                                        ; $4601: $e1
    ld h, d                                       ; $4602: $62
    ld l, e                                       ; $4603: $6b
    jp Jump_07e_43ef                              ; $4604: $c3 $ef $43


jr_07e_4607:
    dec hl                                        ; $4607: $2b
    dec hl                                        ; $4608: $2b
    call Call_07e_46e9                            ; $4609: $cd $e9 $46
    jp Jump_07e_46f4                              ; $460c: $c3 $f4 $46


    pop hl                                        ; $460f: $e1
    ld a, [hl+]                                   ; $4610: $2a
    ld h, [hl]                                    ; $4611: $66
    ld l, a                                       ; $4612: $6f
    jp Jump_07e_43ef                              ; $4613: $c3 $ef $43


    call Call_07e_46e0                            ; $4616: $cd $e0 $46
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
    call Call_07e_46e9                            ; $4627: $cd $e9 $46
    jp Jump_07e_46f4                              ; $462a: $c3 $f4 $46


    pop de                                        ; $462d: $d1
    call Call_07e_46e0                            ; $462e: $cd $e0 $46
    dec hl                                        ; $4631: $2b
    ld a, [hl-]                                   ; $4632: $3a
    ld e, [hl]                                    ; $4633: $5e
    ld d, a                                       ; $4634: $57
    inc de                                        ; $4635: $13
    inc de                                        ; $4636: $13
    push de                                       ; $4637: $d5
    call Call_07e_46e9                            ; $4638: $cd $e9 $46
    jp Jump_07e_46f4                              ; $463b: $c3 $f4 $46


    pop de                                        ; $463e: $d1
    ld a, [de]                                    ; $463f: $1a
    inc de                                        ; $4640: $13
    ld hl, $c52d                                  ; $4641: $21 $2d $c5
    add hl, bc                                    ; $4644: $09
    ld [hl], a                                    ; $4645: $77
    ld h, d                                       ; $4646: $62
    ld l, e                                       ; $4647: $6b
    jp Jump_07e_43ef                              ; $4648: $c3 $ef $43


    pop de                                        ; $464b: $d1
    ld a, [de]                                    ; $464c: $1a
    and $c0                                       ; $464d: $e6 $c0
    inc de                                        ; $464f: $13
    ld hl, $c4c6                                  ; $4650: $21 $c6 $c4
    add hl, bc                                    ; $4653: $09
    ld [hl], a                                    ; $4654: $77
    ld h, d                                       ; $4655: $62
    ld l, e                                       ; $4656: $6b
    jp Jump_07e_43ef                              ; $4657: $c3 $ef $43


    pop de                                        ; $465a: $d1
    ld a, [de]                                    ; $465b: $1a
    inc de                                        ; $465c: $13
    ld hl, $c527                                  ; $465d: $21 $27 $c5
    add hl, bc                                    ; $4660: $09
    ld [hl], a                                    ; $4661: $77
    ld h, d                                       ; $4662: $62
    ld l, e                                       ; $4663: $6b
    jp Jump_07e_43ef                              ; $4664: $c3 $ef $43


    pop de                                        ; $4667: $d1
    ld a, [de]                                    ; $4668: $1a
    inc de                                        ; $4669: $13
    ld [$c4ca], a                                 ; $466a: $ea $ca $c4
    ld a, $01                                     ; $466d: $3e $01
    ld [$c4cb], a                                 ; $466f: $ea $cb $c4
    ld h, d                                       ; $4672: $62
    ld l, e                                       ; $4673: $6b
    jp Jump_07e_43ef                              ; $4674: $c3 $ef $43


    pop de                                        ; $4677: $d1
    ld a, [de]                                    ; $4678: $1a
    inc de                                        ; $4679: $13
    ld hl, $c4ff                                  ; $467a: $21 $ff $c4
    add hl, bc                                    ; $467d: $09
    ld [hl], a                                    ; $467e: $77
    ld h, d                                       ; $467f: $62
    ld l, e                                       ; $4680: $6b
    jp Jump_07e_43ef                              ; $4681: $c3 $ef $43


    pop de                                        ; $4684: $d1
    ld a, [de]                                    ; $4685: $1a
    inc de                                        ; $4686: $13
    ld hl, $c507                                  ; $4687: $21 $07 $c5
    add hl, bc                                    ; $468a: $09
    ld [hl], a                                    ; $468b: $77
    ld h, d                                       ; $468c: $62
    ld l, e                                       ; $468d: $6b
    jp Jump_07e_43ef                              ; $468e: $c3 $ef $43


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
    jp Jump_07e_43ef                              ; $46a0: $c3 $ef $43


    pop de                                        ; $46a3: $d1
    ld a, [de]                                    ; $46a4: $1a
    inc de                                        ; $46a5: $13
    ld hl, $c51f                                  ; $46a6: $21 $1f $c5
    add hl, bc                                    ; $46a9: $09
    ld [hl], a                                    ; $46aa: $77
    ld h, d                                       ; $46ab: $62
    ld l, e                                       ; $46ac: $6b
    jp Jump_07e_43ef                              ; $46ad: $c3 $ef $43


    pop de                                        ; $46b0: $d1
    ld a, [de]                                    ; $46b1: $1a
    inc de                                        ; $46b2: $13
    ld hl, $c50b                                  ; $46b3: $21 $0b $c5
    add hl, bc                                    ; $46b6: $09
    ld [hl], a                                    ; $46b7: $77
    ld h, d                                       ; $46b8: $62
    ld l, e                                       ; $46b9: $6b
    jp Jump_07e_43ef                              ; $46ba: $c3 $ef $43


    pop de                                        ; $46bd: $d1
    ld a, [de]                                    ; $46be: $1a
    inc de                                        ; $46bf: $13
    ld hl, $c50b                                  ; $46c0: $21 $0b $c5
    add hl, bc                                    ; $46c3: $09
    add [hl]                                      ; $46c4: $86
    ld [hl], a                                    ; $46c5: $77
    ld h, d                                       ; $46c6: $62
    ld l, e                                       ; $46c7: $6b
    jp Jump_07e_43ef                              ; $46c8: $c3 $ef $43


    pop de                                        ; $46cb: $d1
    ld a, [de]                                    ; $46cc: $1a
    inc de                                        ; $46cd: $13
    ld hl, $c52a                                  ; $46ce: $21 $2a $c5
    add hl, bc                                    ; $46d1: $09
    ld [hl], a                                    ; $46d2: $77
    ld h, d                                       ; $46d3: $62
    ld l, e                                       ; $46d4: $6b
    jp Jump_07e_43ef                              ; $46d5: $c3 $ef $43


    ld hl, $c4cd                                  ; $46d8: $21 $cd $c4
    add hl, bc                                    ; $46db: $09
    ld [hl], $00                                  ; $46dc: $36 $00
    pop hl                                        ; $46de: $e1
    ret                                           ; $46df: $c9


Call_07e_46e0:
    ld hl, $c536                                  ; $46e0: $21 $36 $c5
    add hl, bc                                    ; $46e3: $09
    add hl, bc                                    ; $46e4: $09
    ld a, [hl+]                                   ; $46e5: $2a
    ld h, [hl]                                    ; $46e6: $66
    ld l, a                                       ; $46e7: $6f
    ret                                           ; $46e8: $c9


Call_07e_46e9:
    ld d, h                                       ; $46e9: $54
    ld e, l                                       ; $46ea: $5d
    ld hl, $c536                                  ; $46eb: $21 $36 $c5
    add hl, bc                                    ; $46ee: $09
    add hl, bc                                    ; $46ef: $09
    ld [hl], e                                    ; $46f0: $73
    inc hl                                        ; $46f1: $23
    ld [hl], d                                    ; $46f2: $72
    ret                                           ; $46f3: $c9


Jump_07e_46f4:
    pop hl                                        ; $46f4: $e1
    jp Jump_07e_43ef                              ; $46f5: $c3 $ef $43


Call_07e_46f8:
    ld a, [$c4cc]                                 ; $46f8: $fa $cc $c4
    bit 0, a                                      ; $46fb: $cb $47
    jr nz, jr_07e_4732                            ; $46fd: $20 $33

    ld a, [$c4f7]                                 ; $46ff: $fa $f7 $c4
    or a                                          ; $4702: $b7
    jr z, jr_07e_4737                             ; $4703: $28 $32

    ld a, $01                                     ; $4705: $3e $01
    ld [$c598], a                                 ; $4707: $ea $98 $c5
    ld d, $00                                     ; $470a: $16 $00
    ld hl, $c4d1                                  ; $470c: $21 $d1 $c4
    ld a, [hl]                                    ; $470f: $7e
    cp $80                                        ; $4710: $fe $80
    jr z, jr_07e_471b                             ; $4712: $28 $07

    ld a, [$c527]                                 ; $4714: $fa $27 $c5
    ldh [rNR12], a                                ; $4717: $e0 $12
    ld d, $80                                     ; $4719: $16 $80

jr_07e_471b:
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


jr_07e_4732:
    xor a                                         ; $4732: $af
    ld [$c598], a                                 ; $4733: $ea $98 $c5
    ret                                           ; $4736: $c9


Call_07e_4737:
jr_07e_4737:
    ld a, [$c598]                                 ; $4737: $fa $98 $c5
    or a                                          ; $473a: $b7
    jr z, jr_07e_476e                             ; $473b: $28 $31

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
    jr nc, jr_07e_475f                            ; $475b: $30 $02

    ld a, $00                                     ; $475d: $3e $00

jr_07e_475f:
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

jr_07e_476e:
    ret                                           ; $476e: $c9


Call_07e_476f:
    ld a, [$c4cc]                                 ; $476f: $fa $cc $c4
    bit 1, a                                      ; $4772: $cb $4f
    jr nz, jr_07e_47a6                            ; $4774: $20 $30

    ld a, [$c4f8]                                 ; $4776: $fa $f8 $c4
    cp $00                                        ; $4779: $fe $00
    jr z, jr_07e_47ab                             ; $477b: $28 $2e

    ld a, $01                                     ; $477d: $3e $01
    ld [$c599], a                                 ; $477f: $ea $99 $c5
    ld d, $00                                     ; $4782: $16 $00
    ld hl, $c4d2                                  ; $4784: $21 $d2 $c4
    ld a, [hl]                                    ; $4787: $7e
    cp $80                                        ; $4788: $fe $80
    jr z, jr_07e_4793                             ; $478a: $28 $07

    ld a, [$c528]                                 ; $478c: $fa $28 $c5
    ldh [rNR22], a                                ; $478f: $e0 $17
    ld d, $80                                     ; $4791: $16 $80

jr_07e_4793:
    ld [hl], $02                                  ; $4793: $36 $02
    ld a, [$c4c7]                                 ; $4795: $fa $c7 $c4
    ldh [rNR21], a                                ; $4798: $e0 $16
    ld a, [$c4e7]                                 ; $479a: $fa $e7 $c4
    ldh [rNR23], a                                ; $479d: $e0 $18
    ld a, [$c4e8]                                 ; $479f: $fa $e8 $c4
    or d                                          ; $47a2: $b2
    ldh [rNR24], a                                ; $47a3: $e0 $19
    ret                                           ; $47a5: $c9


jr_07e_47a6:
    xor a                                         ; $47a6: $af
    ld [$c599], a                                 ; $47a7: $ea $99 $c5
    ret                                           ; $47aa: $c9


Call_07e_47ab:
jr_07e_47ab:
    ld a, [$c599]                                 ; $47ab: $fa $99 $c5
    or a                                          ; $47ae: $b7
    jr z, jr_07e_47e2                             ; $47af: $28 $31

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
    jr nc, jr_07e_47d3                            ; $47cf: $30 $02

    ld a, $00                                     ; $47d1: $3e $00

jr_07e_47d3:
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

jr_07e_47e2:
    ret                                           ; $47e2: $c9


Call_07e_47e3:
    ld a, [$c4cc]                                 ; $47e3: $fa $cc $c4
    bit 2, a                                      ; $47e6: $cb $57
    jr nz, jr_07e_4827                            ; $47e8: $20 $3d

    ld d, $00                                     ; $47ea: $16 $00
    ld a, [$c4cb]                                 ; $47ec: $fa $cb $c4
    or a                                          ; $47ef: $b7
    jr z, jr_07e_47fa                             ; $47f0: $28 $08

    xor a                                         ; $47f2: $af
    ldh [rNR30], a                                ; $47f3: $e0 $1a
    call Call_07e_4831                            ; $47f5: $cd $31 $48
    ld d, $80                                     ; $47f8: $16 $80

jr_07e_47fa:
    ld a, [$c4f9]                                 ; $47fa: $fa $f9 $c4
    cp $00                                        ; $47fd: $fe $00
    jr z, jr_07e_4828                             ; $47ff: $28 $27

    ld hl, $c4d3                                  ; $4801: $21 $d3 $c4
    ld a, [hl]                                    ; $4804: $7e
    cp $80                                        ; $4805: $fe $80
    jr z, jr_07e_4813                             ; $4807: $28 $0a

    ld a, [$c529]                                 ; $4809: $fa $29 $c5
    ldh [rNR32], a                                ; $480c: $e0 $1c
    xor a                                         ; $480e: $af
    ldh [rNR30], a                                ; $480f: $e0 $1a
    ld d, $80                                     ; $4811: $16 $80

jr_07e_4813:
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

jr_07e_4827:
    ret                                           ; $4827: $c9


jr_07e_4828:
    ld hl, $c4d1                                  ; $4828: $21 $d1 $c4
    ld [hl], $00                                  ; $482b: $36 $00
    xor a                                         ; $482d: $af
    ldh [rNR30], a                                ; $482e: $e0 $1a
    ret                                           ; $4830: $c9


Call_07e_4831:
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

jr_07e_4843:
    ld a, [hl+]                                   ; $4843: $2a
    ld [de], a                                    ; $4844: $12
    inc de                                        ; $4845: $13
    inc b                                         ; $4846: $04
    ld a, b                                       ; $4847: $78
    cp $10                                        ; $4848: $fe $10
    jr nz, jr_07e_4843                            ; $484a: $20 $f7

    xor a                                         ; $484c: $af
    ld [$c4cb], a                                 ; $484d: $ea $cb $c4
    ret                                           ; $4850: $c9


Call_07e_4851:
    ld a, [$c4cc]                                 ; $4851: $fa $cc $c4
    bit 3, a                                      ; $4854: $cb $5f
    jr nz, jr_07e_486f                            ; $4856: $20 $17

    ld a, [$c4fa]                                 ; $4858: $fa $fa $c4
    or a                                          ; $485b: $b7
    jr z, jr_07e_4870                             ; $485c: $28 $12

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

jr_07e_486f:
    ret                                           ; $486f: $c9


jr_07e_4870:
    xor a                                         ; $4870: $af
    ld [$c532], a                                 ; $4871: $ea $32 $c5
    ld hl, $ff21                                  ; $4874: $21 $21 $ff
    ld a, $08                                     ; $4877: $3e $08
    ld [hl+], a                                   ; $4879: $22
    inc hl                                        ; $487a: $23
    swap a                                        ; $487b: $cb $37
    ld [hl], a                                    ; $487d: $77
    ret                                           ; $487e: $c9


Call_07e_487f:
    ld a, [$c4cc]                                 ; $487f: $fa $cc $c4
    bit 3, a                                      ; $4882: $cb $5f
    jr z, jr_07e_488c                             ; $4884: $28 $06

    xor a                                         ; $4886: $af
    ld [$c532], a                                 ; $4887: $ea $32 $c5
    jr jr_07e_489f                                ; $488a: $18 $13

jr_07e_488c:
    ld hl, $c530                                  ; $488c: $21 $30 $c5
    ld a, [hl+]                                   ; $488f: $2a
    ld d, [hl]                                    ; $4890: $56
    ld e, a                                       ; $4891: $5f
    ld a, [de]                                    ; $4892: $1a
    cp $ff                                        ; $4893: $fe $ff
    jr nz, jr_07e_4899                            ; $4895: $20 $02

    jr jr_07e_4870                                ; $4897: $18 $d7

jr_07e_4899:
    ldh [rNR43], a                                ; $4899: $e0 $22
    inc de                                        ; $489b: $13
    ld a, d                                       ; $489c: $7a
    ld [hl-], a                                   ; $489d: $32
    ld [hl], e                                    ; $489e: $73

jr_07e_489f:
    ret                                           ; $489f: $c9


Call_07e_48a0:
    ld a, [$c534]                                 ; $48a0: $fa $34 $c5
    ldh [rNR50], a                                ; $48a3: $e0 $24
    ld a, [$c4cc]                                 ; $48a5: $fa $cc $c4
    or a                                          ; $48a8: $b7
    ld hl, $c4c4                                  ; $48a9: $21 $c4 $c4
    ld a, [hl+]                                   ; $48ac: $2a
    jr z, jr_07e_48c1                             ; $48ad: $28 $12

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

jr_07e_48c1:
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


Call_07e_48d0:
    ld hl, $c51f                                  ; $48d0: $21 $1f $c5
    add hl, bc                                    ; $48d3: $09
    ld a, [hl]                                    ; $48d4: $7e
    or a                                          ; $48d5: $b7
    jr z, jr_07e_4925                             ; $48d6: $28 $4d

    ld hl, $c523                                  ; $48d8: $21 $23 $c5
    add hl, bc                                    ; $48db: $09
    cp [hl]                                       ; $48dc: $be
    jr z, jr_07e_48e2                             ; $48dd: $28 $03

    inc [hl]                                      ; $48df: $34
    jr jr_07e_4925                                ; $48e0: $18 $43

jr_07e_48e2:
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
    jr z, jr_07e_4911                             ; $48fd: $28 $12

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


jr_07e_4911:
    push hl                                       ; $4911: $e5
    ld hl, $c51b                                  ; $4912: $21 $1b $c5
    add hl, bc                                    ; $4915: $09
    ld [hl], $00                                  ; $4916: $36 $00
    pop hl                                        ; $4918: $e1
    ld a, [hl]                                    ; $4919: $7e
    cp $80                                        ; $491a: $fe $80
    jr z, jr_07e_48e2                             ; $491c: $28 $c4

    ld hl, $c513                                  ; $491e: $21 $13 $c5
    add hl, bc                                    ; $4921: $09
    ld [hl], a                                    ; $4922: $77
    jr jr_07e_48e2                                ; $4923: $18 $bd

jr_07e_4925:
    ld hl, $c4e5                                  ; $4925: $21 $e5 $c4
    add hl, bc                                    ; $4928: $09
    add hl, bc                                    ; $4929: $09
    ld e, [hl]                                    ; $492a: $5e
    inc hl                                        ; $492b: $23
    ld d, [hl]                                    ; $492c: $56
    ret                                           ; $492d: $c9


Jump_07e_492e:
    push af                                       ; $492e: $f5
    ld b, $00                                     ; $492f: $06 $00
    ld c, a                                       ; $4931: $4f
    call Call_07e_48d0                            ; $4932: $cd $d0 $48
    pop af                                        ; $4935: $f1
    or a                                          ; $4936: $b7
    jr nz, jr_07e_4950                            ; $4937: $20 $17

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


jr_07e_4950:
    dec a                                         ; $4950: $3d
    jr nz, jr_07e_496b                            ; $4951: $20 $18

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


jr_07e_496b:
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


Call_07e_4982:
    ld hl, $c52d                                  ; $4982: $21 $2d $c5
    add hl, bc                                    ; $4985: $09
    ld a, [hl]                                    ; $4986: $7e
    bit 7, a                                      ; $4987: $cb $7f
    jr nz, jr_07e_4991                            ; $4989: $20 $06

    add e                                         ; $498b: $83
    ld e, a                                       ; $498c: $5f
    ld a, d                                       ; $498d: $7a
    adc b                                         ; $498e: $88
    ld d, a                                       ; $498f: $57
    ret                                           ; $4990: $c9


jr_07e_4991:
    xor $ff                                       ; $4991: $ee $ff
    ld h, a                                       ; $4993: $67
    ld a, e                                       ; $4994: $7b
    sub h                                         ; $4995: $94
    ld e, a                                       ; $4996: $5f
    ld a, d                                       ; $4997: $7a
    sbc b                                         ; $4998: $98
    ld d, a                                       ; $4999: $57
    ret                                           ; $499a: $c9


Call_07e_499b:
    ld a, [$c4cc]                                 ; $499b: $fa $cc $c4
    ld d, a                                       ; $499e: $57
    bit 0, d                                      ; $499f: $cb $42
    jr nz, jr_07e_49ab                            ; $49a1: $20 $08

    ld a, $08                                     ; $49a3: $3e $08
    ldh [rNR12], a                                ; $49a5: $e0 $12
    swap a                                        ; $49a7: $cb $37
    ldh [rNR14], a                                ; $49a9: $e0 $14

jr_07e_49ab:
    bit 1, d                                      ; $49ab: $cb $4a
    jr nz, jr_07e_49b7                            ; $49ad: $20 $08

    swap a                                        ; $49af: $cb $37
    ldh [rNR22], a                                ; $49b1: $e0 $17
    swap a                                        ; $49b3: $cb $37
    ldh [rNR24], a                                ; $49b5: $e0 $19

jr_07e_49b7:
    bit 3, d                                      ; $49b7: $cb $5a
    jr nz, jr_07e_49c3                            ; $49b9: $20 $08

    swap a                                        ; $49bb: $cb $37
    ldh [rNR42], a                                ; $49bd: $e0 $21
    swap a                                        ; $49bf: $cb $37
    ldh [rNR44], a                                ; $49c1: $e0 $23

jr_07e_49c3:
    bit 2, d                                      ; $49c3: $cb $52
    jr nz, jr_07e_49cb                            ; $49c5: $20 $04

    ld a, $00                                     ; $49c7: $3e $00
    ldh [rNR32], a                                ; $49c9: $e0 $1c

jr_07e_49cb:
    ret                                           ; $49cb: $c9


Jump_07e_49cc:
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
    call Call_07e_499b                            ; $49e0: $cd $9b $49
    call Call_07e_49f7                            ; $49e3: $cd $f7 $49
    call Call_07e_4145                            ; $49e6: $cd $45 $41
    ei                                            ; $49e9: $fb
    ret                                           ; $49ea: $c9


    di                                            ; $49eb: $f3
    call Call_07e_499b                            ; $49ec: $cd $9b $49
    call Call_07e_4145                            ; $49ef: $cd $45 $41
    call Call_07e_4b1c                            ; $49f2: $cd $1c $4b
    ei                                            ; $49f5: $fb
    ret                                           ; $49f6: $c9


Call_07e_49f7:
    ld a, [$c4c0]                                 ; $49f7: $fa $c0 $c4
    ld [$c59a], a                                 ; $49fa: $ea $9a $c5
    ld a, [$c4c1]                                 ; $49fd: $fa $c1 $c4
    ld [$c59b], a                                 ; $4a00: $ea $9b $c5
    ld a, [$c4c4]                                 ; $4a03: $fa $c4 $c4
    ld [$c59c], a                                 ; $4a06: $ea $9c $c5
    ld hl, $c4c6                                  ; $4a09: $21 $c6 $c4
    ld de, $c59d                                  ; $4a0c: $11 $9d $c5
    ld a, $04                                     ; $4a0f: $3e $04
    call Call_07e_4c33                            ; $4a11: $cd $33 $4c
    ld a, [$c4ca]                                 ; $4a14: $fa $ca $c4
    ld [$c5a1], a                                 ; $4a17: $ea $a1 $c5
    ld a, [$c4cb]                                 ; $4a1a: $fa $cb $c4
    ld [$c5a2], a                                 ; $4a1d: $ea $a2 $c5
    ld hl, $c4cd                                  ; $4a20: $21 $cd $c4
    ld de, $c5a3                                  ; $4a23: $11 $a3 $c5
    ld a, $04                                     ; $4a26: $3e $04
    call Call_07e_4c33                            ; $4a28: $cd $33 $4c
    ld hl, $c4d1                                  ; $4a2b: $21 $d1 $c4
    ld de, $c5a7                                  ; $4a2e: $11 $a7 $c5
    ld a, $04                                     ; $4a31: $3e $04
    call Call_07e_4c33                            ; $4a33: $cd $33 $4c
    ld hl, $c4d5                                  ; $4a36: $21 $d5 $c4
    ld de, $c5ab                                  ; $4a39: $11 $ab $c5
    ld a, $08                                     ; $4a3c: $3e $08
    call Call_07e_4c33                            ; $4a3e: $cd $33 $4c
    ld hl, $c4dd                                  ; $4a41: $21 $dd $c4
    ld de, $c5b3                                  ; $4a44: $11 $b3 $c5
    ld a, $08                                     ; $4a47: $3e $08
    call Call_07e_4c33                            ; $4a49: $cd $33 $4c
    ld a, [$c4eb]                                 ; $4a4c: $fa $eb $c4
    ld [$c5bb], a                                 ; $4a4f: $ea $bb $c5
    ld a, [$c4ec]                                 ; $4a52: $fa $ec $c4
    ld [$c5bc], a                                 ; $4a55: $ea $bc $c5
    ld hl, $c4ef                                  ; $4a58: $21 $ef $c4
    ld de, $c5bd                                  ; $4a5b: $11 $bd $c5
    ld a, $04                                     ; $4a5e: $3e $04
    call Call_07e_4c33                            ; $4a60: $cd $33 $4c
    ld hl, $c4f3                                  ; $4a63: $21 $f3 $c4
    ld de, $c5c1                                  ; $4a66: $11 $c1 $c5
    ld a, $04                                     ; $4a69: $3e $04
    call Call_07e_4c33                            ; $4a6b: $cd $33 $4c
    ld hl, $c4f7                                  ; $4a6e: $21 $f7 $c4
    ld de, $c5c5                                  ; $4a71: $11 $c5 $c5
    ld a, $04                                     ; $4a74: $3e $04
    call Call_07e_4c33                            ; $4a76: $cd $33 $4c
    ld hl, $c4fb                                  ; $4a79: $21 $fb $c4
    ld de, $c5c9                                  ; $4a7c: $11 $c9 $c5
    ld a, $04                                     ; $4a7f: $3e $04
    call Call_07e_4c33                            ; $4a81: $cd $33 $4c
    ld hl, $c4ff                                  ; $4a84: $21 $ff $c4
    ld de, $c5cd                                  ; $4a87: $11 $cd $c5
    ld a, $04                                     ; $4a8a: $3e $04
    call Call_07e_4c33                            ; $4a8c: $cd $33 $4c
    ld hl, $c503                                  ; $4a8f: $21 $03 $c5
    ld de, $c5d1                                  ; $4a92: $11 $d1 $c5
    ld a, $04                                     ; $4a95: $3e $04
    call Call_07e_4c33                            ; $4a97: $cd $33 $4c
    ld hl, $c507                                  ; $4a9a: $21 $07 $c5
    ld de, $c5d5                                  ; $4a9d: $11 $d5 $c5
    ld a, $04                                     ; $4aa0: $3e $04
    call Call_07e_4c33                            ; $4aa2: $cd $33 $4c
    ld hl, $c50b                                  ; $4aa5: $21 $0b $c5
    ld de, $c5d9                                  ; $4aa8: $11 $d9 $c5
    ld a, $04                                     ; $4aab: $3e $04
    call Call_07e_4c33                            ; $4aad: $cd $33 $4c
    ld hl, $c50f                                  ; $4ab0: $21 $0f $c5
    ld de, $c5dd                                  ; $4ab3: $11 $dd $c5
    ld a, $04                                     ; $4ab6: $3e $04
    call Call_07e_4c33                            ; $4ab8: $cd $33 $4c
    ld hl, $c517                                  ; $4abb: $21 $17 $c5
    ld de, $c5e1                                  ; $4abe: $11 $e1 $c5
    ld a, $04                                     ; $4ac1: $3e $04
    call Call_07e_4c33                            ; $4ac3: $cd $33 $4c
    ld hl, $c51f                                  ; $4ac6: $21 $1f $c5
    ld de, $c5e5                                  ; $4ac9: $11 $e5 $c5
    ld a, $04                                     ; $4acc: $3e $04
    call Call_07e_4c33                            ; $4ace: $cd $33 $4c
    ld a, $00                                     ; $4ad1: $3e $00
    ld [$c51b], a                                 ; $4ad3: $ea $1b $c5
    ld [$c51c], a                                 ; $4ad6: $ea $1c $c5
    ld [$c51d], a                                 ; $4ad9: $ea $1d $c5
    ld [$c51e], a                                 ; $4adc: $ea $1e $c5
    ld hl, $c527                                  ; $4adf: $21 $27 $c5
    ld de, $c5e9                                  ; $4ae2: $11 $e9 $c5
    ld a, $03                                     ; $4ae5: $3e $03
    call Call_07e_4c33                            ; $4ae7: $cd $33 $4c
    ld hl, $c52d                                  ; $4aea: $21 $2d $c5
    ld de, $c5ec                                  ; $4aed: $11 $ec $c5
    ld a, $03                                     ; $4af0: $3e $03
    call Call_07e_4c33                            ; $4af2: $cd $33 $4c
    ld hl, $c530                                  ; $4af5: $21 $30 $c5
    ld de, $c5ef                                  ; $4af8: $11 $ef $c5
    ld a, $02                                     ; $4afb: $3e $02
    call Call_07e_4c33                            ; $4afd: $cd $33 $4c
    ld a, $00                                     ; $4b00: $3e $00
    ld [$c5f1], a                                 ; $4b02: $ea $f1 $c5
    ld hl, $c536                                  ; $4b05: $21 $36 $c5
    ld de, $c5f2                                  ; $4b08: $11 $f2 $c5
    ld a, $08                                     ; $4b0b: $3e $08
    call Call_07e_4c33                            ; $4b0d: $cd $33 $4c
    ld hl, $c53e                                  ; $4b10: $21 $3e $c5
    ld de, $c5fa                                  ; $4b13: $11 $fa $c5
    ld a, $30                                     ; $4b16: $3e $30
    call Call_07e_4c33                            ; $4b18: $cd $33 $4c
    ret                                           ; $4b1b: $c9


Call_07e_4b1c:
    ld a, [$c59a]                                 ; $4b1c: $fa $9a $c5
    ld [$c4c0], a                                 ; $4b1f: $ea $c0 $c4
    ld a, [$c59b]                                 ; $4b22: $fa $9b $c5
    ld [$c4c1], a                                 ; $4b25: $ea $c1 $c4
    ld a, [$c59c]                                 ; $4b28: $fa $9c $c5
    ld [$c4c4], a                                 ; $4b2b: $ea $c4 $c4
    ld hl, $c59d                                  ; $4b2e: $21 $9d $c5
    ld de, $c4c6                                  ; $4b31: $11 $c6 $c4
    ld a, $04                                     ; $4b34: $3e $04
    call Call_07e_4c33                            ; $4b36: $cd $33 $4c
    ld a, [$c5a1]                                 ; $4b39: $fa $a1 $c5
    ld [$c4ca], a                                 ; $4b3c: $ea $ca $c4
    ld a, $01                                     ; $4b3f: $3e $01
    ld [$c4cb], a                                 ; $4b41: $ea $cb $c4
    ld hl, $c5a3                                  ; $4b44: $21 $a3 $c5
    ld de, $c4cd                                  ; $4b47: $11 $cd $c4
    ld a, $04                                     ; $4b4a: $3e $04
    call Call_07e_4c33                            ; $4b4c: $cd $33 $4c
    ld hl, $c5a7                                  ; $4b4f: $21 $a7 $c5
    ld de, $c4d1                                  ; $4b52: $11 $d1 $c4
    ld a, $04                                     ; $4b55: $3e $04
    call Call_07e_4c33                            ; $4b57: $cd $33 $4c
    ld hl, $c5ab                                  ; $4b5a: $21 $ab $c5
    ld de, $c4d5                                  ; $4b5d: $11 $d5 $c4
    ld a, $08                                     ; $4b60: $3e $08
    call Call_07e_4c33                            ; $4b62: $cd $33 $4c
    ld hl, $c5b3                                  ; $4b65: $21 $b3 $c5
    ld de, $c4dd                                  ; $4b68: $11 $dd $c4
    ld a, $08                                     ; $4b6b: $3e $08
    call Call_07e_4c33                            ; $4b6d: $cd $33 $4c
    ld a, [$c5bb]                                 ; $4b70: $fa $bb $c5
    ld [$c4eb], a                                 ; $4b73: $ea $eb $c4
    ld a, [$c5bc]                                 ; $4b76: $fa $bc $c5
    ld [$c4ec], a                                 ; $4b79: $ea $ec $c4
    ld hl, $c5bd                                  ; $4b7c: $21 $bd $c5
    ld de, $c4ef                                  ; $4b7f: $11 $ef $c4
    ld a, $04                                     ; $4b82: $3e $04
    call Call_07e_4c33                            ; $4b84: $cd $33 $4c
    ld hl, $c5c1                                  ; $4b87: $21 $c1 $c5
    ld de, $c4f3                                  ; $4b8a: $11 $f3 $c4
    ld a, $04                                     ; $4b8d: $3e $04
    call Call_07e_4c33                            ; $4b8f: $cd $33 $4c
    ld hl, $c5c5                                  ; $4b92: $21 $c5 $c5
    ld de, $c4f7                                  ; $4b95: $11 $f7 $c4
    ld a, $04                                     ; $4b98: $3e $04
    call Call_07e_4c33                            ; $4b9a: $cd $33 $4c
    ld hl, $c5c9                                  ; $4b9d: $21 $c9 $c5
    ld de, $c4fb                                  ; $4ba0: $11 $fb $c4
    ld a, $04                                     ; $4ba3: $3e $04
    call Call_07e_4c33                            ; $4ba5: $cd $33 $4c
    ld hl, $c5cd                                  ; $4ba8: $21 $cd $c5
    ld de, $c4ff                                  ; $4bab: $11 $ff $c4
    ld a, $04                                     ; $4bae: $3e $04
    call Call_07e_4c33                            ; $4bb0: $cd $33 $4c
    ld hl, $c5d1                                  ; $4bb3: $21 $d1 $c5
    ld de, $c503                                  ; $4bb6: $11 $03 $c5
    ld a, $04                                     ; $4bb9: $3e $04
    call Call_07e_4c33                            ; $4bbb: $cd $33 $4c
    ld hl, $c5d5                                  ; $4bbe: $21 $d5 $c5
    ld de, $c507                                  ; $4bc1: $11 $07 $c5
    ld a, $04                                     ; $4bc4: $3e $04
    call Call_07e_4c33                            ; $4bc6: $cd $33 $4c
    ld hl, $c5d9                                  ; $4bc9: $21 $d9 $c5
    ld de, $c50b                                  ; $4bcc: $11 $0b $c5
    ld a, $04                                     ; $4bcf: $3e $04
    call Call_07e_4c33                            ; $4bd1: $cd $33 $4c
    ld hl, $c5dd                                  ; $4bd4: $21 $dd $c5
    ld de, $c50f                                  ; $4bd7: $11 $0f $c5
    ld a, $04                                     ; $4bda: $3e $04
    call Call_07e_4c33                            ; $4bdc: $cd $33 $4c
    ld hl, $c5e1                                  ; $4bdf: $21 $e1 $c5
    ld de, $c517                                  ; $4be2: $11 $17 $c5
    ld a, $04                                     ; $4be5: $3e $04
    call Call_07e_4c33                            ; $4be7: $cd $33 $4c
    ld hl, $c5e5                                  ; $4bea: $21 $e5 $c5
    ld de, $c51f                                  ; $4bed: $11 $1f $c5
    ld a, $04                                     ; $4bf0: $3e $04
    call Call_07e_4c33                            ; $4bf2: $cd $33 $4c
    ld hl, $c5e9                                  ; $4bf5: $21 $e9 $c5
    ld de, $c527                                  ; $4bf8: $11 $27 $c5
    ld a, $03                                     ; $4bfb: $3e $03
    call Call_07e_4c33                            ; $4bfd: $cd $33 $4c
    ld hl, $c5ec                                  ; $4c00: $21 $ec $c5
    ld de, $c52d                                  ; $4c03: $11 $2d $c5
    ld a, $03                                     ; $4c06: $3e $03
    call Call_07e_4c33                            ; $4c08: $cd $33 $4c
    ld hl, $c5ef                                  ; $4c0b: $21 $ef $c5
    ld de, $c530                                  ; $4c0e: $11 $30 $c5
    ld a, $02                                     ; $4c11: $3e $02
    call Call_07e_4c33                            ; $4c13: $cd $33 $4c
    ld a, [$c5f1]                                 ; $4c16: $fa $f1 $c5
    ld [$c532], a                                 ; $4c19: $ea $32 $c5
    ld hl, $c5f2                                  ; $4c1c: $21 $f2 $c5
    ld de, $c536                                  ; $4c1f: $11 $36 $c5
    ld a, $08                                     ; $4c22: $3e $08
    call Call_07e_4c33                            ; $4c24: $cd $33 $4c
    ld hl, $c5fa                                  ; $4c27: $21 $fa $c5
    ld de, $c53e                                  ; $4c2a: $11 $3e $c5
    ld a, $30                                     ; $4c2d: $3e $30
    call Call_07e_4c33                            ; $4c2f: $cd $33 $4c
    ret                                           ; $4c32: $c9


Call_07e_4c33:
    ld c, a                                       ; $4c33: $4f

jr_07e_4c34:
    ld a, [hl+]                                   ; $4c34: $2a
    ld [de], a                                    ; $4c35: $12
    inc de                                        ; $4c36: $13
    dec c                                         ; $4c37: $0d
    jr nz, jr_07e_4c34                            ; $4c38: $20 $fa

    ret                                           ; $4c3a: $c9


    db $3e, $c5, $4a, $c5, $56, $c5, $62, $c5

    nop                                           ; $4c43: $00

    db $18, $30, $48

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
    ld bc, $022a                                  ; $4c54: $01 $2a $02
    ld a, l                                       ; $4c57: $7d
    ld [bc], a                                    ; $4c58: $02
    call $1702                                    ; $4c59: $cd $02 $17
    inc bc                                        ; $4c5c: $03
    ld e, [hl]                                    ; $4c5d: $5e
    inc bc                                        ; $4c5e: $03
    and b                                         ; $4c5f: $a0
    inc bc                                        ; $4c60: $03
    rst $18                                       ; $4c61: $df
    inc bc                                        ; $4c62: $03

    db $1b, $04, $53, $04, $87, $04, $b9, $04, $e8, $04, $15, $05, $3f, $05, $66, $05
    db $8c, $05, $af, $05, $d0, $05, $f0, $05, $0d, $06, $29, $06, $44, $06, $5d, $06
    db $74, $06, $8a, $06, $9f, $06, $b3, $06, $c6, $06, $d7, $06, $e8, $06, $f8, $06
    db $07, $07, $15, $07, $22, $07, $2e, $07, $3a, $07, $45, $07, $50, $07, $5a, $07

    ld h, e                                       ; $4ca3: $63
    rlca                                          ; $4ca4: $07

    db $6c, $07

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
    db $01                                        ; $4ced: $01
    ld c, a                                       ; $4cee: $4f

    db $11, $4f

    ld hl, $314f                                  ; $4cf1: $21 $4f $31
    ld c, a                                       ; $4cf4: $4f
    pop bc                                        ; $4cf5: $c1
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
    ld hl, $314d                                  ; $4d15: $21 $4d $31
    ld c, l                                       ; $4d18: $4d

    db $41, $4d

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
    jr nz, jr_07e_4d2c                            ; $4d2a: $20 $00

jr_07e_4d2c:
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

    db $ee, $ee, $ee, $ee, $ee, $ee, $ee, $ca, $63, $00, $00, $00, $00, $00, $00, $00

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
    xor $ee                                       ; $4f01: $ee $ee
    xor $ee                                       ; $4f03: $ee $ee
    xor $ee                                       ; $4f05: $ee $ee
    xor $ee                                       ; $4f07: $ee $ee
    nop                                           ; $4f09: $00
    nop                                           ; $4f0a: $00
    nop                                           ; $4f0b: $00
    nop                                           ; $4f0c: $00
    nop                                           ; $4f0d: $00
    nop                                           ; $4f0e: $00
    nop                                           ; $4f0f: $00
    nop                                           ; $4f10: $00

    db $dd, $dd, $dd, $dd, $dd, $dd, $dd, $dd, $11, $11, $11, $11, $11, $11, $11, $11

    call z, $cccc                                 ; $4f21: $cc $cc $cc
    call z, $cccc                                 ; $4f24: $cc $cc $cc
    call z, Call_000_22cc                         ; $4f27: $cc $cc $22
    ld [hl+], a                                   ; $4f2a: $22
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

    db $77, $4f, $99, $4f, $7f, $4f

    adc h                                         ; $4f47: $8c
    ld c, a                                       ; $4f48: $4f

    db $c5, $4f, $db, $4f

    rst $08                                       ; $4f4d: $cf
    ld c, a                                       ; $4f4e: $4f

    db $e5, $4f

    db $fa                                        ; $4f51: $fa
    ld c, a                                       ; $4f52: $4f

    db $2f, $50, $42, $50

    ld d, l                                       ; $4f57: $55
    ld d, b                                       ; $4f58: $50
    sbc c                                         ; $4f59: $99
    ld c, a                                       ; $4f5a: $4f
    and l                                         ; $4f5b: $a5
    ld c, a                                       ; $4f5c: $4f
    or b                                          ; $4f5d: $b0
    ld c, a                                       ; $4f5e: $4f
    cp h                                          ; $4f5f: $bc
    ld c, a                                       ; $4f60: $4f
    inc e                                         ; $4f61: $1c
    ld d, b                                       ; $4f62: $50

    db $83, $50

    and c                                         ; $4f65: $a1
    ld d, b                                       ; $4f66: $50
    adc d                                         ; $4f67: $8a
    ld d, b                                       ; $4f68: $50
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
    adc b                                         ; $501c: $88
    db $ed                                        ; $501d: $ed
    ld [hl], d                                    ; $501e: $72

jr_07e_501f:
    add b                                         ; $501f: $80
    ld e, c                                       ; $5020: $59
    ccf                                           ; $5021: $3f
    ld hl, $2322                                  ; $5022: $21 $22 $23
    inc hl                                        ; $5025: $23
    inc hl                                        ; $5026: $23
    inc hl                                        ; $5027: $23
    inc hl                                        ; $5028: $23
    inc hl                                        ; $5029: $23
    inc hl                                        ; $502a: $23
    inc hl                                        ; $502b: $23
    inc hl                                        ; $502c: $23
    inc hl                                        ; $502d: $23
    rst $38                                       ; $502e: $ff

    db $88, $ed, $72, $80, $59, $3f, $35, $36, $37, $37, $37, $37, $37, $37, $37

    scf                                           ; $503e: $37
    scf                                           ; $503f: $37
    scf                                           ; $5040: $37
    rst $38                                       ; $5041: $ff

    db $88, $ed, $72, $80, $59, $3f, $25, $26, $27, $27, $27, $27, $27, $27

    daa                                           ; $5050: $27
    daa                                           ; $5051: $27
    daa                                           ; $5052: $27
    daa                                           ; $5053: $27
    rst $38                                       ; $5054: $ff
    adc b                                         ; $5055: $88
    jr nz, @-$6a                                  ; $5056: $20 $94

    add b                                         ; $5058: $80
    ld e, [hl]                                    ; $5059: $5e
    inc b                                         ; $505a: $04
    inc b                                         ; $505b: $04
    inc b                                         ; $505c: $04

jr_07e_505d:
    inc b                                         ; $505d: $04
    inc b                                         ; $505e: $04
    inc b                                         ; $505f: $04
    inc b                                         ; $5060: $04
    inc b                                         ; $5061: $04
    inc b                                         ; $5062: $04
    inc b                                         ; $5063: $04
    inc b                                         ; $5064: $04
    inc b                                         ; $5065: $04
    inc b                                         ; $5066: $04
    inc b                                         ; $5067: $04
    inc b                                         ; $5068: $04
    inc b                                         ; $5069: $04
    inc b                                         ; $506a: $04
    inc b                                         ; $506b: $04
    inc b                                         ; $506c: $04
    inc b                                         ; $506d: $04
    inc b                                         ; $506e: $04
    inc b                                         ; $506f: $04
    inc b                                         ; $5070: $04
    inc b                                         ; $5071: $04
    inc b                                         ; $5072: $04
    inc b                                         ; $5073: $04
    inc b                                         ; $5074: $04
    inc b                                         ; $5075: $04
    inc b                                         ; $5076: $04
    inc b                                         ; $5077: $04
    inc b                                         ; $5078: $04
    inc b                                         ; $5079: $04
    inc b                                         ; $507a: $04
    inc b                                         ; $507b: $04
    inc b                                         ; $507c: $04
    inc b                                         ; $507d: $04
    inc b                                         ; $507e: $04
    inc b                                         ; $507f: $04
    inc b                                         ; $5080: $04
    inc b                                         ; $5081: $04
    rst $38                                       ; $5082: $ff

    db $88, $f7, $81, $c0, $27, $34, $ff

    adc b                                         ; $508a: $88
    jr nz, jr_07e_501f                            ; $508b: $20 $92

    add b                                         ; $508d: $80
    ld bc, $0202                                  ; $508e: $01 $02 $02
    ld [bc], a                                    ; $5091: $02
    ld [bc], a                                    ; $5092: $02
    ld [bc], a                                    ; $5093: $02
    ld [bc], a                                    ; $5094: $02
    ld [bc], a                                    ; $5095: $02
    ld [bc], a                                    ; $5096: $02
    ld [bc], a                                    ; $5097: $02
    ld [bc], a                                    ; $5098: $02
    ld [bc], a                                    ; $5099: $02
    ld [bc], a                                    ; $509a: $02
    ld [bc], a                                    ; $509b: $02
    ld [bc], a                                    ; $509c: $02
    ld [bc], a                                    ; $509d: $02
    ld [bc], a                                    ; $509e: $02
    ld [bc], a                                    ; $509f: $02
    rst $38                                       ; $50a0: $ff
    adc b                                         ; $50a1: $88
    jr nz, @+$5b                                  ; $50a2: $20 $59

    add b                                         ; $50a4: $80
    inc b                                         ; $50a5: $04
    inc b                                         ; $50a6: $04
    rst $38                                       ; $50a7: $ff
    adc b                                         ; $50a8: $88
    jr nz, jr_07e_505d                            ; $50a9: $20 $b2

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
    ld hl, sp+$50                                 ; $50cb: $f8 $50
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

    db $56, $51

    ld h, d                                       ; $50e1: $62
    ld d, c                                       ; $50e2: $51

    db $72, $51

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
    ld bc, $0302                                  ; $50f8: $01 $02 $03
    ld [bc], a                                    ; $50fb: $02
    ld bc, $feff                                  ; $50fc: $01 $ff $fe
    db $fd                                        ; $50ff: $fd
    cp $ff                                        ; $5100: $fe $ff
    add b                                         ; $5102: $80
    add b                                         ; $5103: $80
    ld bc, $0202                                  ; $5104: $01 $02 $02
    ld bc, $ff00                                  ; $5107: $01 $00 $ff
    cp $fe                                        ; $510a: $fe $fe
    rst $38                                       ; $510c: $ff
    nop                                           ; $510d: $00
    add b                                         ; $510e: $80
    add b                                         ; $510f: $80

    db $01, $01, $02, $01, $01, $00, $ff, $ff, $fe, $ff, $ff, $00, $80, $80, $01, $01

    ld [bc], a                                    ; $5120: $02
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

    db $01, $03, $04, $03, $01, $ff, $fd, $fc, $fd, $ff, $80, $80

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

    db $01, $03, $04, $03, $01, $00, $ff, $fd, $fc, $fd, $ff, $00, $80, $80

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
    jr jr_07e_51f3                                ; $51d8: $18 $19

    ld a, [de]                                    ; $51da: $1a
    dec de                                        ; $51db: $1b
    inc e                                         ; $51dc: $1c
    dec e                                         ; $51dd: $1d
    ld e, $1f                                     ; $51de: $1e $1f
    jr nz, jr_07e_5203                            ; $51e0: $20 $21

    ld [hl+], a                                   ; $51e2: $22
    inc hl                                        ; $51e3: $23
    inc h                                         ; $51e4: $24
    dec h                                         ; $51e5: $25
    ld h, $27                                     ; $51e6: $26 $27
    jr z, jr_07e_5213                             ; $51e8: $28 $29

    ld a, [hl+]                                   ; $51ea: $2a
    dec hl                                        ; $51eb: $2b
    inc l                                         ; $51ec: $2c
    dec l                                         ; $51ed: $2d
    ld l, $2f                                     ; $51ee: $2e $2f
    jr nc, jr_07e_5223                            ; $51f0: $30 $31

    ld [hl-], a                                   ; $51f2: $32

jr_07e_51f3:
    inc sp                                        ; $51f3: $33
    inc [hl]                                      ; $51f4: $34
    dec [hl]                                      ; $51f5: $35
    ld [hl], $37                                  ; $51f6: $36 $37
    jr c, jr_07e_5233                             ; $51f8: $38 $39

    ld a, [hl-]                                   ; $51fa: $3a
    dec sp                                        ; $51fb: $3b
    inc a                                         ; $51fc: $3c
    dec a                                         ; $51fd: $3d
    ld a, $3f                                     ; $51fe: $3e $3f
    ld b, b                                       ; $5200: $40
    ld b, c                                       ; $5201: $41
    ld b, d                                       ; $5202: $42

jr_07e_5203:
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

jr_07e_5213:
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

jr_07e_5223:
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

jr_07e_5233:
    add b                                         ; $5233: $80
    add b                                         ; $5234: $80
    nop                                           ; $5235: $00

    db $0a

    ld a, [bc]                                    ; $5237: $0a

    db $0a

    ld a, [bc]                                    ; $5239: $0a

    db $0a, $0a

    ld a, [bc]                                    ; $523c: $0a

    db $0a, $0a

    ld a, [bc]                                    ; $523f: $0a
    ld a, [bc]                                    ; $5240: $0a
    ld a, [bc]                                    ; $5241: $0a
    ld a, [bc]                                    ; $5242: $0a
    ld a, [bc]                                    ; $5243: $0a
    ld a, [bc]                                    ; $5244: $0a
    ld a, [bc]                                    ; $5245: $0a
    ld a, [bc]                                    ; $5246: $0a
    ld a, [bc]                                    ; $5247: $0a

    db $0a

    ld a, [bc]                                    ; $5249: $0a
    ld a, [bc]                                    ; $524a: $0a

    db $0a

    ld a, [bc]                                    ; $524c: $0a

    db $0a

    ld a, [bc]                                    ; $524e: $0a

    db $0a, $0a, $0a, $0a, $0a, $0a, $0a

    ld a, [bc]                                    ; $5256: $0a

    db $0a

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

    db $0a, $0a, $0a, $0a

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

    db $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a

    ld a, [bc]                                    ; $527e: $0a

    db $0a

    ld a, [bc]                                    ; $5280: $0a

    db $0a, $0a

    ld a, [bc]                                    ; $5283: $0a

    db $0a, $0a

    ld a, [bc]                                    ; $5286: $0a

    db $0a

    add hl, bc                                    ; $5288: $09
    ld a, [bc]                                    ; $5289: $0a
    ld a, [bc]                                    ; $528a: $0a
    ld a, [bc]                                    ; $528b: $0a
    ld a, [bc]                                    ; $528c: $0a
    ld a, [bc]                                    ; $528d: $0a
    ld a, [bc]                                    ; $528e: $0a
    ld a, [bc]                                    ; $528f: $0a
    ld a, [bc]                                    ; $5290: $0a

    db $0a

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

    db $2b, $7e, $7e, $7e

    ld a, [hl]                                    ; $52a8: $7e
    ld a, [hl]                                    ; $52a9: $7e
    ld a, [hl]                                    ; $52aa: $7e
    ld a, [hl]                                    ; $52ab: $7e

    db $7e

    ld a, [hl]                                    ; $52ad: $7e
    ld a, [hl]                                    ; $52ae: $7e

    db $7d

    ld a, l                                       ; $52b0: $7d
    ld a, l                                       ; $52b1: $7d

    db $7d

    ld a, l                                       ; $52b3: $7d

    db $7d

    ld a, l                                       ; $52b5: $7d
    ld a, l                                       ; $52b6: $7d
    ld a, l                                       ; $52b7: $7d
    ld a, l                                       ; $52b8: $7d
    ld a, l                                       ; $52b9: $7d
    ld a, l                                       ; $52ba: $7d

    db $7d

    ld a, h                                       ; $52bc: $7c

    db $7c

    ld a, h                                       ; $52be: $7c
    ld a, h                                       ; $52bf: $7c
    ld a, h                                       ; $52c0: $7c
    ld a, h                                       ; $52c1: $7c

    db $7c

    ld a, h                                       ; $52c3: $7c

    db $7c

    ld a, h                                       ; $52c5: $7c
    ld a, h                                       ; $52c6: $7c
    ld a, h                                       ; $52c7: $7c

    db $7c, $7c

    ld a, h                                       ; $52ca: $7c

    db $7c, $7c

    ld a, h                                       ; $52cd: $7c

    db $7c

    ld a, h                                       ; $52cf: $7c
    ld a, h                                       ; $52d0: $7c
    ld a, h                                       ; $52d1: $7c
    ld a, h                                       ; $52d2: $7c
    ld a, h                                       ; $52d3: $7c
    ld a, h                                       ; $52d4: $7c
    ld a, h                                       ; $52d5: $7c
    ld a, h                                       ; $52d6: $7c

    db $3b, $53, $3c, $53, $45, $53

    ld c, [hl]                                    ; $52dd: $4e
    ld d, e                                       ; $52de: $53
    ld d, a                                       ; $52df: $57
    ld d, e                                       ; $52e0: $53
    ld h, b                                       ; $52e1: $60
    ld d, e                                       ; $52e2: $53
    ld l, c                                       ; $52e3: $69
    ld d, e                                       ; $52e4: $53

    db $72, $53

    ld a, e                                       ; $52e7: $7b
    ld d, e                                       ; $52e8: $53
    add h                                         ; $52e9: $84
    ld d, e                                       ; $52ea: $53
    nop                                           ; $52eb: $00
    nop                                           ; $52ec: $00
    nop                                           ; $52ed: $00
    nop                                           ; $52ee: $00
    nop                                           ; $52ef: $00
    nop                                           ; $52f0: $00
    nop                                           ; $52f1: $00
    nop                                           ; $52f2: $00
    nop                                           ; $52f3: $00

    db $00

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

    db $00, $0f, $8d, $53, $8b, $54, $92, $55, $68, $56, $0f, $1f, $57, $9f, $58, $41
    db $5a, $40, $5c

    rrca                                          ; $534e: $0f
    inc c                                         ; $534f: $0c
    ld e, l                                       ; $5350: $5d
    cp [hl]                                       ; $5351: $be
    ld e, [hl]                                    ; $5352: $5e
    inc c                                         ; $5353: $0c
    ld h, b                                       ; $5354: $60
    rst $18                                       ; $5355: $df
    ld h, c                                       ; $5356: $61
    rrca                                          ; $5357: $0f
    ld h, b                                       ; $5358: $60
    ld h, d                                       ; $5359: $62
    ld d, a                                       ; $535a: $57
    ld h, e                                       ; $535b: $63
    ld c, d                                       ; $535c: $4a
    ld h, h                                       ; $535d: $64
    ld b, b                                       ; $535e: $40
    ld h, l                                       ; $535f: $65
    rrca                                          ; $5360: $0f
    sub d                                         ; $5361: $92
    ld h, l                                       ; $5362: $65
    ld l, d                                       ; $5363: $6a
    ld h, a                                       ; $5364: $67
    ld a, [hl]                                    ; $5365: $7e
    ld l, c                                       ; $5366: $69
    rla                                           ; $5367: $17
    ld l, e                                       ; $5368: $6b
    rrca                                          ; $5369: $0f
    add e                                         ; $536a: $83
    ld l, h                                       ; $536b: $6c
    ret                                           ; $536c: $c9


    ld l, h                                       ; $536d: $6c
    db $e4                                        ; $536e: $e4
    ld l, h                                       ; $536f: $6c
    db $31                                        ; $5370: $31
    ld l, l                                       ; $5371: $6d

    db $0f, $3a, $6d, $ff, $6f, $8a, $71, $df, $72

    rrca                                          ; $537b: $0f
    daa                                           ; $537c: $27
    ld [hl], e                                    ; $537d: $73
    ld a, [hl]                                    ; $537e: $7e
    ld [hl], h                                    ; $537f: $74
    inc e                                         ; $5380: $1c
    halt                                          ; $5381: $76
    ld l, h                                       ; $5382: $6c
    ld [hl], a                                    ; $5383: $77
    rrca                                          ; $5384: $0f
    jr z, jr_07e_53ff                             ; $5385: $28 $78

    ld [hl], b                                    ; $5387: $70
    ld a, c                                       ; $5388: $79
    pop de                                        ; $5389: $d1
    ld a, d                                       ; $538a: $7a
    rst $30                                       ; $538b: $f7
    ld a, e                                       ; $538c: $7b

    db $dc, $11, $e6, $b0, $e8, $07, $ee, $33, $d4, $ea, $0b, $eb, $14, $e5, $40, $d0
    db $07, $e2, $50, $54, $d4, $31, $00, $21, $00, $d8, $c1, $a1, $00, $91, $00, $a1
    db $c1, $03

    ld d, c                                       ; $53af: $51
    rlca                                          ; $53b0: $07
    ld [c], a                                     ; $53b1: $e2
    ld d, b                                       ; $53b2: $50
    ld d, h                                       ; $53b3: $54
    ret c                                         ; $53b4: $d8

    pop bc                                        ; $53b5: $c1
    nop                                           ; $53b6: $00
    rst $10                                       ; $53b7: $d7
    ld hl, $3100                                  ; $53b8: $21 $00 $31
    ld d, c                                       ; $53bb: $51
    nop                                           ; $53bc: $00
    ret c                                         ; $53bd: $d8

    pop bc                                        ; $53be: $c1
    nop                                           ; $53bf: $00
    sub c                                         ; $53c0: $91
    and c                                         ; $53c1: $a1
    dec c                                         ; $53c2: $0d
    pop bc                                        ; $53c3: $c1
    ld bc, $31d7                                  ; $53c4: $01 $d7 $31
    ld bc, $5021                                  ; $53c7: $01 $21 $50
    and h                                         ; $53ca: $a4
    ret c                                         ; $53cb: $d8

    pop bc                                        ; $53cc: $c1
    rst $10                                       ; $53cd: $d7
    jr nc, jr_07e_53f1                            ; $53ce: $30 $21

    ld d, b                                       ; $53d0: $50
    xor c                                         ; $53d1: $a9
    ld hl, $2031                                  ; $53d2: $21 $31 $20
    ret c                                         ; $53d5: $d8

    and c                                         ; $53d6: $a1
    add c                                         ; $53d7: $81
    add c                                         ; $53d8: $81
    add b                                         ; $53d9: $80
    pop bc                                        ; $53da: $c1
    add c                                         ; $53db: $81
    ret nc                                        ; $53dc: $d0

    ld bc, $58d7                                  ; $53dd: $01 $d7 $58
    ld e, b                                       ; $53e0: $58
    ld e, c                                       ; $53e1: $59
    jr c, jr_07e_540c                             ; $53e2: $38 $28

    ret c                                         ; $53e4: $d8

    ret                                           ; $53e5: $c9


    ret nc                                        ; $53e6: $d0

    rlca                                          ; $53e7: $07
    add b                                         ; $53e8: $80
    add c                                         ; $53e9: $81
    add b                                         ; $53ea: $80
    jp Jump_07e_55d7                              ; $53eb: $c3 $d7 $55


    ld d, c                                       ; $53ee: $51
    ld h, c                                       ; $53ef: $61
    nop                                           ; $53f0: $00

jr_07e_53f1:
    add c                                         ; $53f1: $81
    nop                                           ; $53f2: $00
    and c                                         ; $53f3: $a1
    ld [hl], c                                    ; $53f4: $71
    nop                                           ; $53f5: $00
    add c                                         ; $53f6: $81
    nop                                           ; $53f7: $00
    and c                                         ; $53f8: $a1
    rst $00                                       ; $53f9: $c7
    ld d, l                                       ; $53fa: $55
    add c                                         ; $53fb: $81
    ld h, c                                       ; $53fc: $61
    nop                                           ; $53fd: $00
    ld d, c                                       ; $53fe: $51

jr_07e_53ff:
    nop                                           ; $53ff: $00
    ld sp, $0031                                  ; $5400: $31 $31 $00
    ld d, c                                       ; $5403: $51
    nop                                           ; $5404: $00
    ld [hl], c                                    ; $5405: $71
    add e                                         ; $5406: $83
    inc sp                                        ; $5407: $33
    ret nc                                        ; $5408: $d0

    ld bc, $0156                                  ; $5409: $01 $56 $01

jr_07e_540c:
    ld d, [hl]                                    ; $540c: $56
    ld bc, $0157                                  ; $540d: $01 $57 $01
    ld l, b                                       ; $5410: $68
    ld e, b                                       ; $5411: $58
    add hl, sp                                    ; $5412: $39
    ret nc                                        ; $5413: $d0

    rlca                                          ; $5414: $07
    ld de, $6100                                  ; $5415: $11 $00 $61
    nop                                           ; $5418: $00
    and c                                         ; $5419: $a1
    and c                                         ; $541a: $a1
    nop                                           ; $541b: $00
    ld [hl], c                                    ; $541c: $71
    nop                                           ; $541d: $00
    ld sp, $0081                                  ; $541e: $31 $81 $00
    and c                                         ; $5421: $a1
    nop                                           ; $5422: $00
    pop bc                                        ; $5423: $c1
    ld d, l                                       ; $5424: $55
    ld d, c                                       ; $5425: $51
    ld h, c                                       ; $5426: $61
    nop                                           ; $5427: $00
    ld d, c                                       ; $5428: $51
    nop                                           ; $5429: $00
    ld sp, $0071                                  ; $542a: $31 $71 $00
    ld sp, $d800                                  ; $542d: $31 $00 $d8
    and c                                         ; $5430: $a1
    rst $10                                       ; $5431: $d7
    add a                                         ; $5432: $87
    ret nc                                        ; $5433: $d0

    ld bc, $1818                                  ; $5434: $01 $18 $18
    add hl, de                                    ; $5437: $19
    jr c, @+$5a                                   ; $5438: $38 $58

    ld l, c                                       ; $543a: $69
    adc b                                         ; $543b: $88
    reti                                          ; $543c: $d9


    adc b                                         ; $543d: $88
    xor b                                         ; $543e: $a8
    reti                                          ; $543f: $d9


    xor c                                         ; $5440: $a9
    ret z                                         ; $5441: $c8

    reti                                          ; $5442: $d9


    ret                                           ; $5443: $c9


    rst $10                                       ; $5444: $d7
    dec e                                         ; $5445: $1d
    dec c                                         ; $5446: $0d
    ld [$1918], sp                                ; $5447: $08 $18 $19
    dec e                                         ; $544a: $1d
    dec c                                         ; $544b: $0d
    dec c                                         ; $544c: $0d
    dec c                                         ; $544d: $0d
    sbc $ff                                       ; $544e: $de $ff

    db $d3, $d0, $01, $94, $a8, $d0, $07, $00, $51, $00, $a1, $01, $c1, $d7, $21, $31
    db $21, $00, $d8, $c1, $00, $a1, $07, $a1, $00, $51, $00, $a1, $01, $c1, $d7, $21
    db $31, $51, $00, $31, $00, $21, $01, $d8, $c1, $a1, $91, $a1, $05, $c1, $00, $a1
    db $00, $91, $a1, $05, $a1, $00, $c1, $00, $d7, $21, $e3, $d0, $07, $dc, $11, $e8
    db $07, $ea, $0b, $eb, $14, $ee, $33, $d3, $e5, $40, $e6, $a0, $d0, $07, $e2, $5c
    db $55, $d3, $c1, $00, $a1, $00, $91, $71, $00, $51, $00, $71, $e6, $90, $50, $c0

    sub b                                         ; $54b0: $90
    ld d, b                                       ; $54b1: $50
    ret nz                                        ; $54b2: $c0

    sub b                                         ; $54b3: $90
    ld d, b                                       ; $54b4: $50
    pop bc                                        ; $54b5: $c1
    pop bc                                        ; $54b6: $c1
    sub b                                         ; $54b7: $90
    ld d, c                                       ; $54b8: $51
    pop bc                                        ; $54b9: $c1
    and $a0                                       ; $54ba: $e6 $a0
    ld [c], a                                     ; $54bc: $e2
    ld e, h                                       ; $54bd: $5c
    ld d, l                                       ; $54be: $55
    rst $10                                       ; $54bf: $d7
    ld [hl], b                                    ; $54c0: $70
    ret c                                         ; $54c1: $d8

    ret nz                                        ; $54c2: $c0

    rst $10                                       ; $54c3: $d7
    jr nc, jr_07e_5536                            ; $54c4: $30 $70

    ret nz                                        ; $54c6: $c0

    ld [hl], b                                    ; $54c7: $70
    jr nc, @-$26                                  ; $54c8: $30 $d8

    ret nz                                        ; $54ca: $c0

    rst $10                                       ; $54cb: $d7
    ld d, b                                       ; $54cc: $50
    ret c                                         ; $54cd: $d8

    ret nz                                        ; $54ce: $c0

jr_07e_54cf:
    rst $10                                       ; $54cf: $d7
    ld d, b                                       ; $54d0: $50
    sub b                                         ; $54d1: $90
    ret nz                                        ; $54d2: $c0

    sub b                                         ; $54d3: $90
    ld d, b                                       ; $54d4: $50
    ret c                                         ; $54d5: $d8

    ret nz                                        ; $54d6: $c0

    rst $10                                       ; $54d7: $d7
    ld hl, $3021                                  ; $54d8: $21 $21 $30
    ld d, c                                       ; $54db: $51
    and c                                         ; $54dc: $a1
    and c                                         ; $54dd: $a1
    jr nz, @-$5d                                  ; $54de: $20 $a1

    ld hl, $0181                                  ; $54e0: $21 $81 $01
    pop bc                                        ; $54e3: $c1
    ld bc, $d7a1                                  ; $54e4: $01 $a1 $d7
    jr nz, jr_07e_553d                            ; $54e7: $20 $54

    ret c                                         ; $54e9: $d8

    add c                                         ; $54ea: $81
    ret nz                                        ; $54eb: $c0

    and c                                         ; $54ec: $a1
    rst $10                                       ; $54ed: $d7
    jr nz, @+$5b                                  ; $54ee: $20 $59

    and $80                                       ; $54f0: $e6 $80
    ld bc, $3121                                  ; $54f2: $01 $21 $31
    jr nz, jr_07e_54cf                            ; $54f5: $20 $d8

    and c                                         ; $54f7: $a1
    add c                                         ; $54f8: $81
    add c                                         ; $54f9: $81
    add b                                         ; $54fa: $80
    pop bc                                        ; $54fb: $c1
    add c                                         ; $54fc: $81
    rst $10                                       ; $54fd: $d7
    ld d, b                                       ; $54fe: $50
    ld d, b                                       ; $54ff: $50
    ret nc                                        ; $5500: $d0

    ld bc, $3858                                  ; $5501: $01 $58 $38
    add hl, hl                                    ; $5504: $29
    ret c                                         ; $5505: $d8

    ret z                                         ; $5506: $c8

    adc b                                         ; $5507: $88
    adc c                                         ; $5508: $89
    ret nc                                        ; $5509: $d0

    rlca                                          ; $550a: $07
    nop                                           ; $550b: $00
    add b                                         ; $550c: $80
    pop bc                                        ; $550d: $c1
    and $80                                       ; $550e: $e6 $80
    push hl                                       ; $5510: $e5
    nop                                           ; $5511: $00
    rst $18                                       ; $5512: $df
    inc b                                         ; $5513: $04
    db $10                                        ; $5514: $10
    add b                                         ; $5515: $80
    ld d, b                                       ; $5516: $50
    db $10                                        ; $5517: $10
    add b                                         ; $5518: $80
    ld d, b                                       ; $5519: $50

jr_07e_551a:
    db $10                                        ; $551a: $10
    ld h, c                                       ; $551b: $61
    ld h, c                                       ; $551c: $61

jr_07e_551d:
    db $10                                        ; $551d: $10
    and c                                         ; $551e: $a1
    ld de, $a030                                  ; $551f: $11 $30 $a0
    ld [hl], b                                    ; $5522: $70
    jr nc, @-$5e                                  ; $5523: $30 $a0

    ld [hl], b                                    ; $5525: $70
    jr nc, @-$7d                                  ; $5526: $30 $81

    add c                                         ; $5528: $81
    ret c                                         ; $5529: $d8

    ret nz                                        ; $552a: $c0

    rst $10                                       ; $552b: $d7
    ld sp, $e081                                  ; $552c: $31 $81 $e0
    ret nc                                        ; $552f: $d0

    ld bc, $40e5                                  ; $5530: $01 $e5 $40
    and $a0                                       ; $5533: $e6 $a0
    ld e, b                                       ; $5535: $58

jr_07e_5536:
    ld e, b                                       ; $5536: $58
    ld e, c                                       ; $5537: $59
    ld l, b                                       ; $5538: $68
    adc b                                         ; $5539: $88
    xor c                                         ; $553a: $a9
    ret z                                         ; $553b: $c8

    reti                                          ; $553c: $d9


jr_07e_553d:
    ret z                                         ; $553d: $c8

    rst $10                                       ; $553e: $d7
    jr jr_07e_551a                                ; $553f: $18 $d9

    add hl, de                                    ; $5541: $19
    jr c, jr_07e_551d                             ; $5542: $38 $d9

    add hl, sp                                    ; $5544: $39
    ld e, l                                       ; $5545: $5d
    dec c                                         ; $5546: $0d
    ld [$5958], sp                                ; $5547: $08 $58 $59
    ret nc                                        ; $554a: $d0

    rlca                                          ; $554b: $07
    ld d, c                                       ; $554c: $51
    dec b                                         ; $554d: $05
    sbc $ff                                       ; $554e: $de $ff

    db $d3, $51, $00, $21, $00, $31, $71, $00, $51, $00, $31, $e3, $d3, $e2, $50, $55
    db $51, $00, $31, $00, $51, $71, $00, $51, $00, $31, $e2, $50, $55, $d7, $21, $00
    db $d8, $c1, $00, $a1, $01, $91, $71, $51, $d8, $30, $a0, $70, $30, $a0, $70, $30
    db $a1, $a1, $70, $31, $a1, $20, $a0, $50, $20, $a0, $50, $20, $a1, $a1, $50, $21
    db $a1, $e3, $d0, $07, $dc, $11, $e7, $01, $e6, $20, $e8, $07, $ea, $04, $eb, $14
    db $d1, $e2, $3e, $56, $d1, $a2, $52, $a1, $a2, $d7, $52, $d8, $a1, $df, $02, $d7
    db $32, $d8, $a2, $d7, $31, $d8, $e0, $df, $02, $d7, $52, $d8

    jp nz, $e051                                  ; $55bc: $c2 $51 $e0

    ld [c], a                                     ; $55bf: $e2
    ld a, $56                                     ; $55c0: $3e $56
    and d                                         ; $55c2: $a2
    ld d, d                                       ; $55c3: $52
    and c                                         ; $55c4: $a1
    rst $10                                       ; $55c5: $d7
    ld d, d                                       ; $55c6: $52
    ret c                                         ; $55c7: $d8

    jp nz, $c251                                  ; $55c8: $c2 $51 $c2

    ld [hl], d                                    ; $55cb: $72
    pop bc                                        ; $55cc: $c1
    ld d, d                                       ; $55cd: $52
    rst $10                                       ; $55ce: $d7
    ld d, d                                       ; $55cf: $52
    ret c                                         ; $55d0: $d8

    ld d, c                                       ; $55d1: $51
    and d                                         ; $55d2: $a2
    ld d, d                                       ; $55d3: $52
    and c                                         ; $55d4: $a1
    rst $10                                       ; $55d5: $d7
    ld d, d                                       ; $55d6: $52

Jump_07e_55d7:
    ret c                                         ; $55d7: $d8

    and d                                         ; $55d8: $a2
    ld d, c                                       ; $55d9: $51
    rst $18                                       ; $55da: $df
    ld [bc], a                                    ; $55db: $02
    add d                                         ; $55dc: $82
    rst $10                                       ; $55dd: $d7

jr_07e_55de:
    jr nc, jr_07e_5612                            ; $55de: $30 $32

    ret c                                         ; $55e0: $d8

    add b                                         ; $55e1: $80

jr_07e_55e2:
    add d                                         ; $55e2: $82
    rst $10                                       ; $55e3: $d7
    jr nc, jr_07e_5617                            ; $55e4: $30 $31

    ret c                                         ; $55e6: $d8

    add c                                         ; $55e7: $81
    ldh [$df], a                                  ; $55e8: $e0 $df
    ld [bc], a                                    ; $55ea: $02
    and d                                         ; $55eb: $a2
    and b                                         ; $55ec: $a0
    inc bc                                        ; $55ed: $03
    ld [bc], a                                    ; $55ee: $02
    add d                                         ; $55ef: $82
    add c                                         ; $55f0: $81
    ldh [$df], a                                  ; $55f1: $e0 $df
    inc b                                         ; $55f3: $04
    rst $10                                       ; $55f4: $d7
    ld [de], a                                    ; $55f5: $12
    db $10                                        ; $55f6: $10
    ret c                                         ; $55f7: $d8

    add d                                         ; $55f8: $82
    rst $10                                       ; $55f9: $d7
    db $10                                        ; $55fa: $10
    ret c                                         ; $55fb: $d8

    ld h, d                                       ; $55fc: $62
    ld h, b                                       ; $55fd: $60
    rst $10                                       ; $55fe: $d7
    ld h, c                                       ; $55ff: $61
    ret c                                         ; $5600: $d8

    ld h, c                                       ; $5601: $61
    rst $10                                       ; $5602: $d7
    ld [hl-], a                                   ; $5603: $32
    jr nc, jr_07e_55de                            ; $5604: $30 $d8

    and d                                         ; $5606: $a2
    rst $10                                       ; $5607: $d7
    jr nc, jr_07e_55e2                            ; $5608: $30 $d8

    add d                                         ; $560a: $82
    add b                                         ; $560b: $80
    rst $10                                       ; $560c: $d7
    add c                                         ; $560d: $81
    ret c                                         ; $560e: $d8

    add c                                         ; $560f: $81
    ldh [$d0], a                                  ; $5610: $e0 $d0

jr_07e_5612:
    ld bc, $18d7                                  ; $5612: $01 $d7 $18
    ret c                                         ; $5615: $d8

    ret z                                         ; $5616: $c8

jr_07e_5617:
    xor c                                         ; $5617: $a9
    adc b                                         ; $5618: $88
    xor b                                         ; $5619: $a8
    ret                                           ; $561a: $c9


    adc b                                         ; $561b: $88
    reti                                          ; $561c: $d9


    adc b                                         ; $561d: $88
    rst $10                                       ; $561e: $d7
    adc b                                         ; $561f: $88
    reti                                          ; $5620: $d9


    adc c                                         ; $5621: $89
    ret c                                         ; $5622: $d8

    adc b                                         ; $5623: $88
    reti                                          ; $5624: $d9


    adc c                                         ; $5625: $89
    rst $10                                       ; $5626: $d7
    dec e                                         ; $5627: $1d
    dec c                                         ; $5628: $0d
    ld [$1918], sp                                ; $5629: $08 $18 $19
    ret nc                                        ; $562c: $d0

    rlca                                          ; $562d: $07
    ld de, $de05                                  ; $562e: $11 $05 $de
    rst $38                                       ; $5631: $ff

    db $d1, $a2, $d7, $52, $d8, $51, $d7, $32, $22, $d8, $91, $e3, $d1, $e2, $32, $56
    db $a0, $a0, $d7, $a1, $50, $d8, $52, $d7, $32, $22, $d8, $91, $e2, $32, $56, $a2
    db $52, $a1, $d7, $52, $d8, $c2, $51, $d7, $30, $d8, $a0, $d7, $31, $30, $d8, $a2
    db $d7, $32, $d8, $a2, $31, $e3, $d0, $07, $d1, $e2, $f8, $56, $e2, $f8, $56, $e2
    db $f8, $56, $e2, $05, $57, $e2, $f8, $56, $e2, $f8, $56, $e2, $f8, $56, $e2, $05
    db $57

    ld [c], a                                     ; $5683: $e2
    ld hl, sp+$56                                 ; $5684: $f8 $56
    ld [c], a                                     ; $5686: $e2
    ld hl, sp+$56                                 ; $5687: $f8 $56
    ld [c], a                                     ; $5689: $e2
    ld hl, sp+$56                                 ; $568a: $f8 $56
    ld [c], a                                     ; $568c: $e2
    dec b                                         ; $568d: $05
    ld d, a                                       ; $568e: $57
    ld [c], a                                     ; $568f: $e2
    ld hl, sp+$56                                 ; $5690: $f8 $56
    ld [c], a                                     ; $5692: $e2
    ld hl, sp+$56                                 ; $5693: $f8 $56
    ld [c], a                                     ; $5695: $e2
    ld hl, sp+$56                                 ; $5696: $f8 $56
    db $10                                        ; $5698: $10
    ld h, b                                       ; $5699: $60
    ld d, b                                       ; $569a: $50
    db $10                                        ; $569b: $10
    db $10                                        ; $569c: $10
    ld bc, $0030                                  ; $569d: $01 $30 $00
    ld sp, $3130                                  ; $56a0: $31 $30 $31
    or b                                          ; $56a3: $b0
    and b                                         ; $56a4: $a0
    ld [c], a                                     ; $56a5: $e2
    ld de, $e257                                  ; $56a6: $11 $57 $e2
    ld de, $df57                                  ; $56a9: $11 $57 $df
    inc bc                                        ; $56ac: $03
    ld de, $5060                                  ; $56ad: $11 $60 $50
    ld de, $5080                                  ; $56b0: $11 $80 $50
    ldh [rNR11], a                                ; $56b3: $e0 $11
    ld h, b                                       ; $56b5: $60
    ld d, b                                       ; $56b6: $50
    ld sp, $3030                                  ; $56b7: $31 $30 $30
    jp Jump_07e_6031                              ; $56ba: $c3 $31 $60


    ld d, b                                       ; $56bd: $50
    db $10                                        ; $56be: $10
    add b                                         ; $56bf: $80
    ld d, b                                       ; $56c0: $50
    db $10                                        ; $56c1: $10
    ld sp, $e231                                  ; $56c2: $31 $31 $e2
    ld de, $e257                                  ; $56c5: $11 $57 $e2
    ld de, $e257                                  ; $56c8: $11 $57 $e2
    ld de, $e257                                  ; $56cb: $11 $57 $e2
    ld de, $e257                                  ; $56ce: $11 $57 $e2
    ld de, $e257                                  ; $56d1: $11 $57 $e2
    ld de, $e257                                  ; $56d4: $11 $57 $e2
    ld de, $d057                                  ; $56d7: $11 $57 $d0
    ld bc, $3838                                  ; $56da: $01 $38 $38
    add hl, sp                                    ; $56dd: $39
    rst $10                                       ; $56de: $d7
    ld e, b                                       ; $56df: $58
    ld e, b                                       ; $56e0: $58
    ld e, c                                       ; $56e1: $59
    ret c                                         ; $56e2: $d8

    cp a                                          ; $56e3: $bf
    ld bc, $02af                                  ; $56e4: $01 $af $02
    xor a                                         ; $56e7: $af
    ld [bc], a                                    ; $56e8: $02
    jr c, jr_07e_56f3                             ; $56e9: $38 $08

    add hl, bc                                    ; $56eb: $09
    ld [$3938], sp                                ; $56ec: $08 $38 $39
    jr c, @+$0a                                   ; $56ef: $38 $08

    add hl, bc                                    ; $56f1: $09
    xor a                                         ; $56f2: $af

jr_07e_56f3:
    dec bc                                        ; $56f3: $0b
    ret nc                                        ; $56f4: $d0

    rlca                                          ; $56f5: $07
    sbc $ff                                       ; $56f6: $de $ff

    db $10, $60, $50, $10, $10, $02, $10, $80, $50, $10, $10, $02, $e3, $10, $60, $50
    db $10, $10, $02, $31, $31, $30, $31, $a0, $e3

    db $10                                        ; $5711: $10
    ld h, b                                       ; $5712: $60
    ld d, b                                       ; $5713: $50
    db $10                                        ; $5714: $10
    ld sp, $6080                                  ; $5715: $31 $80 $60
    db $10                                        ; $5718: $10
    add b                                         ; $5719: $80
    ld d, b                                       ; $571a: $50
    db $10                                        ; $571b: $10
    ld sp, $e331                                  ; $571c: $31 $31 $e3

    db $d0, $01, $dc, $11, $e8, $07, $ea, $03, $eb, $14, $ee, $44, $d4, $e5, $80, $e6
    db $b0, $59, $5a, $09, $5a, $09, $1a, $59, $0a, $89, $0a, $09, $0a, $09, $0a, $09
    db $0a, $dd, $e5, $80, $e6, $70, $d4, $09, $0a, $09, $0a, $09, $0a, $59, $6a, $89
    db $aa, $89, $6a, $59, $3a, $d9, $39, $44, $55, $19, $d9, $1a, $d9, $19, $d9, $1a
    db $d9, $19, $d9, $1a, $d9, $19, $d9, $1a, $d9, $09, $0a, $09, $0a, $d8, $c6, $02
    db $d7, $16, $03, $36, $02, $d8, $86, $03, $e5, $40, $e6, $b0, $df, $02, $d7, $19
    db $0a, $09, $d8, $8a, $09, $0a, $59, $0a, $09, $aa, $09, $ca, $09, $ba, $a9, $0a
    db $89, $03, $d7, $19, $03, $59, $03, $a9, $0a, $69, $8a, $09, $5a, $09, $1a, $39
    db $d8, $ca, $09, $0a, $e0, $e2, $55, $58, $19, $d9, $1a, $d9

    add hl, de                                    ; $57ab: $19
    reti                                          ; $57ac: $d9


    ld a, [de]                                    ; $57ad: $1a
    reti                                          ; $57ae: $d9


    add hl, de                                    ; $57af: $19
    reti                                          ; $57b0: $d9


    ld a, [de]                                    ; $57b1: $1a
    reti                                          ; $57b2: $d9


    add hl, de                                    ; $57b3: $19
    reti                                          ; $57b4: $d9


    ld a, [de]                                    ; $57b5: $1a
    ld b, h                                       ; $57b6: $44
    ld d, h                                       ; $57b7: $54
    ld a, [de]                                    ; $57b8: $1a
    ret c                                         ; $57b9: $d8

    xor c                                         ; $57ba: $a9
    ld l, d                                       ; $57bb: $6a
    reti                                          ; $57bc: $d9


    ld l, c                                       ; $57bd: $69
    reti                                          ; $57be: $d9


    ld l, d                                       ; $57bf: $6a
    reti                                          ; $57c0: $d9


    ld l, c                                       ; $57c1: $69
    reti                                          ; $57c2: $d9


    ld l, d                                       ; $57c3: $6a
    ld [c], a                                     ; $57c4: $e2
    ld d, l                                       ; $57c5: $55
    ld e, b                                       ; $57c6: $58
    add hl, de                                    ; $57c7: $19
    reti                                          ; $57c8: $d9


    ld a, [de]                                    ; $57c9: $1a
    reti                                          ; $57ca: $d9


    add hl, de                                    ; $57cb: $19
    reti                                          ; $57cc: $d9


    ld a, [de]                                    ; $57cd: $1a
    reti                                          ; $57ce: $d9


    add hl, de                                    ; $57cf: $19
    reti                                          ; $57d0: $d9


    ld a, [de]                                    ; $57d1: $1a
    reti                                          ; $57d2: $d9


    add hl, de                                    ; $57d3: $19
    reti                                          ; $57d4: $d9


    ld a, [de]                                    ; $57d5: $1a
    reti                                          ; $57d6: $d9


    add hl, de                                    ; $57d7: $19
    reti                                          ; $57d8: $d9


    ld a, [de]                                    ; $57d9: $1a
    reti                                          ; $57da: $d9


    add hl, de                                    ; $57db: $19
    reti                                          ; $57dc: $d9


    ld a, [de]                                    ; $57dd: $1a
    reti                                          ; $57de: $d9


    add hl, de                                    ; $57df: $19
    reti                                          ; $57e0: $d9


    ld a, [de]                                    ; $57e1: $1a
    add hl, bc                                    ; $57e2: $09
    ld a, [bc]                                    ; $57e3: $0a
    ld [c], a                                     ; $57e4: $e2
    halt                                          ; $57e5: $76
    ld e, b                                       ; $57e6: $58
    rst $10                                       ; $57e7: $d7
    add hl, de                                    ; $57e8: $19
    ld a, [de]                                    ; $57e9: $1a
    add hl, bc                                    ; $57ea: $09
    ld a, [de]                                    ; $57eb: $1a
    add hl, bc                                    ; $57ec: $09
    ld a, [de]                                    ; $57ed: $1a
    add hl, sp                                    ; $57ee: $39
    ld e, d                                       ; $57ef: $5a
    add hl, bc                                    ; $57f0: $09
    ld a, [bc]                                    ; $57f1: $0a
    add hl, bc                                    ; $57f2: $09
    ld a, [bc]                                    ; $57f3: $0a
    add hl, bc                                    ; $57f4: $09
    ld a, [bc]                                    ; $57f5: $0a
    add hl, bc                                    ; $57f6: $09
    ld a, [bc]                                    ; $57f7: $0a
    ld [c], a                                     ; $57f8: $e2
    halt                                          ; $57f9: $76
    ld e, b                                       ; $57fa: $58
    call nc, Call_000_0359                        ; $57fb: $d4 $59 $03
    ld e, c                                       ; $57fe: $59
    inc bc                                        ; $57ff: $03
    ld e, c                                       ; $5800: $59
    inc bc                                        ; $5801: $03
    ld e, c                                       ; $5802: $59
    inc bc                                        ; $5803: $03
    add hl, de                                    ; $5804: $19
    inc bc                                        ; $5805: $03
    ld e, c                                       ; $5806: $59
    inc bc                                        ; $5807: $03
    adc c                                         ; $5808: $89
    ld a, [bc]                                    ; $5809: $0a
    add hl, bc                                    ; $580a: $09
    ld a, [bc]                                    ; $580b: $0a
    add hl, bc                                    ; $580c: $09
    ld a, [bc]                                    ; $580d: $0a
    add hl, bc                                    ; $580e: $09
    ld a, [bc]                                    ; $580f: $0a
    rst $18                                       ; $5810: $df
    ld [bc], a                                    ; $5811: $02
    ld [c], a                                     ; $5812: $e2
    adc c                                         ; $5813: $89
    ld e, b                                       ; $5814: $58
    db $d3                                        ; $5815: $d3
    call $add7                                    ; $5816: $cd $d7 $ad
    xor l                                         ; $5819: $ad
    xor l                                         ; $581a: $ad
    adc l                                         ; $581b: $8d
    ld l, l                                       ; $581c: $6d
    ld e, c                                       ; $581d: $59
    ld a, [de]                                    ; $581e: $1a
    add hl, bc                                    ; $581f: $09
    ret c                                         ; $5820: $d8

    xor d                                         ; $5821: $aa
    adc c                                         ; $5822: $89
    reti                                          ; $5823: $d9


    adc d                                         ; $5824: $8a
    add hl, bc                                    ; $5825: $09
    ld a, [bc]                                    ; $5826: $0a
    ld [c], a                                     ; $5827: $e2
    adc c                                         ; $5828: $89
    ld e, b                                       ; $5829: $58
    db $d3                                        ; $582a: $d3
    call $6dd7                                    ; $582b: $cd $d7 $6d
    ld l, l                                       ; $582e: $6d
    ld l, l                                       ; $582f: $6d
    ld e, l                                       ; $5830: $5d
    dec a                                         ; $5831: $3d
    add hl, de                                    ; $5832: $19
    reti                                          ; $5833: $d9


    ld a, [de]                                    ; $5834: $1a
    add hl, bc                                    ; $5835: $09
    ld a, [bc]                                    ; $5836: $0a
    add hl, bc                                    ; $5837: $09
    ld a, [bc]                                    ; $5838: $0a
    add hl, bc                                    ; $5839: $09
    ld a, [bc]                                    ; $583a: $0a
    ldh [$de], a                                  ; $583b: $e0 $de
    rst $38                                       ; $583d: $ff

    db $d4, $09, $0a, $89, $7a, $69, $3a, $09, $5a, $e3, $d3, $09, $8a, $a9, $d7, $1a
    db $09, $d8, $aa, $d7, $19, $3a, $e3, $d4, $e2, $3e, $58, $e2, $48, $58, $e2, $3e
    db $58, $09, $1a, $09, $1a, $19, $0a, $09, $0a, $e2, $3e, $58, $e2, $48, $58, $09
    db $0a, $49, $0a, $09, $3a, $09, $0a, $e3

    call nc, Call_000_1a19                        ; $5876: $d4 $19 $1a
    add hl, bc                                    ; $5879: $09
    ld a, [de]                                    ; $587a: $1a
    add hl, bc                                    ; $587b: $09
    ld a, [de]                                    ; $587c: $1a
    add hl, sp                                    ; $587d: $39
    ld a, [bc]                                    ; $587e: $0a
    ld e, c                                       ; $587f: $59
    ld a, [de]                                    ; $5880: $1a
    add hl, bc                                    ; $5881: $09
    ret c                                         ; $5882: $d8

    xor d                                         ; $5883: $aa
    adc c                                         ; $5884: $89
    ld a, [bc]                                    ; $5885: $0a
    add hl, bc                                    ; $5886: $09
    ld a, [bc]                                    ; $5887: $0a
    db $e3                                        ; $5888: $e3
    call nc, Call_000_1a59                        ; $5889: $d4 $59 $1a
    add hl, bc                                    ; $588c: $09
    ret c                                         ; $588d: $d8

    adc d                                         ; $588e: $8a
    add hl, bc                                    ; $588f: $09
    ld a, [bc]                                    ; $5890: $0a
    sbc c                                         ; $5891: $99
    ld a, [bc]                                    ; $5892: $0a
    xor c                                         ; $5893: $a9
    rst $10                                       ; $5894: $d7
    ld l, d                                       ; $5895: $6a
    add hl, bc                                    ; $5896: $09
    ld l, d                                       ; $5897: $6a
    ret c                                         ; $5898: $d8

    xor c                                         ; $5899: $a9
    reti                                          ; $589a: $d9


    xor d                                         ; $589b: $aa
    add hl, bc                                    ; $589c: $09
    ld a, [bc]                                    ; $589d: $0a
    db $e3                                        ; $589e: $e3

    db $d0, $01, $dc, $11, $e8, $07, $ea, $03, $eb, $14, $ee, $44, $d3, $e6, $90, $e5
    db $80, $19, $1a, $09, $1a, $09, $d8, $aa, $d7, $19, $0a, $d8, $c9, $0a, $09, $0a
    db $d7, $89, $d9, $84, $05, $09, $0a, $e5, $40, $dd, $e6, $70, $d2, $19, $d9, $1a
    db $89, $d9, $8a, $c9, $d9, $ca, $89, $d7, $1a, $d9, $19, $d8, $ca, $89, $6a, $59
    db $6a, $89, $d9, $8a, $19, $d9, $1a, $89, $d9, $8a, $c9, $d9, $ca, $89, $d7, $1a
    db $d8, $c9, $8a, $19, $d7, $1a, $d8, $c9, $8a, $69, $8a, $e2, $d2, $59, $e2, $d2
    db $59, $d2, $19, $d9, $1a, $89, $d9, $8a, $d7, $19, $d9, $1a, $d8, $89, $1a, $d9
    db $19, $6a, $a9, $d9, $aa, $19, $6a, $a9, $d9, $aa, $e2, $01, $5a, $d7, $59, $d9
    db $5a, $d9

    ld e, c                                       ; $5921: $59
    reti                                          ; $5922: $d9


    ld e, d                                       ; $5923: $5a
    reti                                          ; $5924: $d9


    ld e, c                                       ; $5925: $59
    reti                                          ; $5926: $d9


    ld e, d                                       ; $5927: $5a
    reti                                          ; $5928: $d9


    ld e, c                                       ; $5929: $59
    reti                                          ; $592a: $d9


    ld e, d                                       ; $592b: $5a
    add hl, bc                                    ; $592c: $09
    ld a, [bc]                                    ; $592d: $0a
    rst $10                                       ; $592e: $d7
    ld b, h                                       ; $592f: $44
    ld d, l                                       ; $5930: $55
    add hl, de                                    ; $5931: $19
    ret c                                         ; $5932: $d8

    xor d                                         ; $5933: $aa
    ld l, c                                       ; $5934: $69
    reti                                          ; $5935: $d9


    ld l, d                                       ; $5936: $6a
    reti                                          ; $5937: $d9


    ld l, c                                       ; $5938: $69
    jp nc, $d919                                  ; $5939: $d2 $19 $d9

    ld a, [de]                                    ; $593c: $1a
    ret                                           ; $593d: $c9


    reti                                          ; $593e: $d9


    jp z, $ca19                                   ; $593f: $ca $19 $ca

    reti                                          ; $5942: $d9


    ret                                           ; $5943: $c9


    ret c                                         ; $5944: $d8

jr_07e_5945:
    cp d                                          ; $5945: $ba
    add hl, bc                                    ; $5946: $09

jr_07e_5947:
    cp d                                          ; $5947: $ba
    rst $10                                       ; $5948: $d7
    xor c                                         ; $5949: $a9
    reti                                          ; $594a: $d9


    xor d                                         ; $594b: $aa
    ret c                                         ; $594c: $d8

    cp c                                          ; $594d: $b9
    rst $10                                       ; $594e: $d7
    xor d                                         ; $594f: $aa
    reti                                          ; $5950: $d9


    xor c                                         ; $5951: $a9
    ret c                                         ; $5952: $d8

    cp d                                          ; $5953: $ba
    ld [c], a                                     ; $5954: $e2
    ld bc, $d35a                                  ; $5955: $01 $5a $d3
    ld e, c                                       ; $5958: $59
    reti                                          ; $5959: $d9


    ld e, d                                       ; $595a: $5a
    reti                                          ; $595b: $d9


    ld e, c                                       ; $595c: $59
    reti                                          ; $595d: $d9


    ld e, d                                       ; $595e: $5a
    reti                                          ; $595f: $d9


    ld e, c                                       ; $5960: $59
    reti                                          ; $5961: $d9


    ld e, d                                       ; $5962: $5a
    reti                                          ; $5963: $d9


    ld e, c                                       ; $5964: $59
    reti                                          ; $5965: $d9


    ld e, d                                       ; $5966: $5a
    reti                                          ; $5967: $d9


    ld e, c                                       ; $5968: $59
    reti                                          ; $5969: $d9


    ld e, d                                       ; $596a: $5a
    reti                                          ; $596b: $d9


    ld e, c                                       ; $596c: $59
    reti                                          ; $596d: $d9


    ld e, d                                       ; $596e: $5a
    reti                                          ; $596f: $d9


    ld e, c                                       ; $5970: $59
    reti                                          ; $5971: $d9


    ld e, d                                       ; $5972: $5a
    add hl, bc                                    ; $5973: $09
    ld a, [bc]                                    ; $5974: $0a
    inc b                                         ; $5975: $04
    ld a, [bc]                                    ; $5976: $0a
    and $60                                       ; $5977: $e6 $60
    ld [c], a                                     ; $5979: $e2
    halt                                          ; $597a: $76
    ld e, b                                       ; $597b: $58
    call nc, Call_000_1a19                        ; $597c: $d4 $19 $1a
    add hl, bc                                    ; $597f: $09
    ld a, [de]                                    ; $5980: $1a
    add hl, bc                                    ; $5981: $09
    ld a, [de]                                    ; $5982: $1a
    add hl, sp                                    ; $5983: $39
    ld e, d                                       ; $5984: $5a
    add hl, bc                                    ; $5985: $09
    ld a, [bc]                                    ; $5986: $0a
    add hl, bc                                    ; $5987: $09
    ld a, [bc]                                    ; $5988: $0a
    add hl, bc                                    ; $5989: $09
    ld a, [bc]                                    ; $598a: $0a
    add hl, bc                                    ; $598b: $09
    ld a, [bc]                                    ; $598c: $0a
    add hl, de                                    ; $598d: $19
    ld a, [de]                                    ; $598e: $1a
    add hl, bc                                    ; $598f: $09
    ld a, [de]                                    ; $5990: $1a
    add hl, bc                                    ; $5991: $09
    ld a, [de]                                    ; $5992: $1a
    add hl, sp                                    ; $5993: $39
    ld a, [bc]                                    ; $5994: $0a
    ld e, c                                       ; $5995: $59
    ld a, [de]                                    ; $5996: $1a
    add hl, bc                                    ; $5997: $09
    ret c                                         ; $5998: $d8

    xor d                                         ; $5999: $aa
    adc c                                         ; $599a: $89
    ld a, [bc]                                    ; $599b: $0a
    inc b                                         ; $599c: $04
    and $80                                       ; $599d: $e6 $80
    rst $10                                       ; $599f: $d7
    add hl, de                                    ; $59a0: $19
    inc bc                                        ; $59a1: $03
    add hl, de                                    ; $59a2: $19
    inc bc                                        ; $59a3: $03
    add hl, de                                    ; $59a4: $19
    inc bc                                        ; $59a5: $03
    add hl, de                                    ; $59a6: $19
    inc bc                                        ; $59a7: $03
    ret c                                         ; $59a8: $d8

    xor c                                         ; $59a9: $a9
    inc bc                                        ; $59aa: $03
    rst $10                                       ; $59ab: $d7
    add hl, de                                    ; $59ac: $19
    inc bc                                        ; $59ad: $03
    ret c                                         ; $59ae: $d8

    ret                                           ; $59af: $c9


    ld a, [bc]                                    ; $59b0: $0a
    add hl, bc                                    ; $59b1: $09
    ld a, [bc]                                    ; $59b2: $0a
    add hl, bc                                    ; $59b3: $09
    ld a, [bc]                                    ; $59b4: $0a
    add hl, bc                                    ; $59b5: $09
    ld a, [bc]                                    ; $59b6: $0a
    ret nc                                        ; $59b7: $d0

    dec d                                         ; $59b8: $15
    rst $18                                       ; $59b9: $df
    inc b                                         ; $59ba: $04
    ld d, b                                       ; $59bb: $50
    db $10                                        ; $59bc: $10
    ld d, b                                       ; $59bd: $50
    db $10                                        ; $59be: $10
    db $10                                        ; $59bf: $10
    ld h, b                                       ; $59c0: $60
    db $10                                        ; $59c1: $10
    ld h, b                                       ; $59c2: $60
    jr nc, jr_07e_5945                            ; $59c3: $30 $80

    jr nc, jr_07e_5947                            ; $59c5: $30 $80

    ld d, b                                       ; $59c7: $50
    db $10                                        ; $59c8: $10
    ret c                                         ; $59c9: $d8

    add b                                         ; $59ca: $80
    rst $10                                       ; $59cb: $d7
    ld d, b                                       ; $59cc: $50
    ldh [$d0], a                                  ; $59cd: $e0 $d0
    ld bc, $ffde                                  ; $59cf: $01 $de $ff

    db $d2, $19, $d9, $1a, $89, $d9, $8a, $c9, $d9, $ca, $89, $1a, $d9, $19, $6a, $a9
    db $1a, $69, $aa, $19, $d9, $1a, $19, $d9, $1a, $89, $d9, $8a, $d7, $19, $d9, $1a
    db $d8, $a9, $6a, $d9, $69, $d7, $1a, $d8, $89, $6a, $c9, $8a, $39, $ca, $e3, $d2
    db $19, $d9, $1a, $89, $d9, $8a, $d7, $19, $d9, $1a, $d8, $89, $1a, $d9, $19, $e6
    db $a0, $d7, $8a, $09, $8a, $89, $0a, $09, $0a, $e6, $90, $d8, $19, $d9, $1a, $89
    db $d9, $8a, $d7, $19, $d9, $1a, $d8, $89, $1a, $d9, $19, $6a, $a9, $1a, $69, $aa
    db $19, $3a, $49, $0a, $d7, $39, $0a, $d8, $59, $d7, $3a, $d8, $39, $5a, $e3, $d0
    db $01, $dc, $11, $e7, $09, $e6, $20, $e8, $07, $d2, $39, $3a, $09, $3a, $09, $3a
    db $39, $0a, $d8, $89, $0a, $09, $0a, $09, $0a, $09, $0a, $dd, $d2, $19, $d9, $1a
    db $d8, $89, $d7, $1a, $d8, $c9, $d9, $ca, $d9, $c9, $aa, $d9, $a9, $aa, $a9, $d9
    db $aa, $89, $d9, $8a, $d9, $89, $d9, $8a, $d7, $19, $d9, $1a, $d8, $89, $d7, $1a
    db $d8, $c9, $d9, $ca, $d9, $c9, $aa, $d9, $a9, $aa, $a9, $d9, $aa, $89, $aa, $b9
    db $ca, $df, $02, $e2, $f8, $5b, $d2, $19, $d9, $1a, $d9, $19, $1a, $d8, $69, $d9
    db $6a, $69, $d7, $1a, $d9, $19, $1a, $d9, $19, $1a, $d8, $c9, $d9, $ca, $89, $d9
    db $8a, $e0, $e2, $f8, $5b, $e2, $f8, $5b, $e2, $f8, $5b, $d2, $49, $d9, $4a, $d9
    db $49, $d8, $ba, $d9, $b9, $d9, $ba, $d7, $49, $d9, $4a, $d8, $69, $d9, $6a, $d9

    ld l, c                                       ; $5ad2: $69
    reti                                          ; $5ad3: $d9


    ld l, d                                       ; $5ad4: $6a
    reti                                          ; $5ad5: $d9


    ld l, c                                       ; $5ad6: $69
    reti                                          ; $5ad7: $d9


    ld l, d                                       ; $5ad8: $6a
    reti                                          ; $5ad9: $d9


    ld l, c                                       ; $5ada: $69
    reti                                          ; $5adb: $d9


    ld l, d                                       ; $5adc: $6a
    reti                                          ; $5add: $d9


    ld l, c                                       ; $5ade: $69
    reti                                          ; $5adf: $d9


    ld l, d                                       ; $5ae0: $6a
    reti                                          ; $5ae1: $d9


    ld l, c                                       ; $5ae2: $69
    reti                                          ; $5ae3: $d9


    ld l, d                                       ; $5ae4: $6a
    reti                                          ; $5ae5: $d9


    ld l, c                                       ; $5ae6: $69
    reti                                          ; $5ae7: $d9


    ld l, d                                       ; $5ae8: $6a
    cp c                                          ; $5ae9: $b9
    jp z, $19d7                                   ; $5aea: $ca $d7 $19

    reti                                          ; $5aed: $d9


    ld a, [de]                                    ; $5aee: $1a
    reti                                          ; $5aef: $d9


    add hl, de                                    ; $5af0: $19
    ret c                                         ; $5af1: $d8

    adc d                                         ; $5af2: $8a
    reti                                          ; $5af3: $d9


    adc c                                         ; $5af4: $89
    reti                                          ; $5af5: $d9


    adc d                                         ; $5af6: $8a
    rst $10                                       ; $5af7: $d7
    add hl, de                                    ; $5af8: $19
    reti                                          ; $5af9: $d9


    ld a, [de]                                    ; $5afa: $1a
    ret c                                         ; $5afb: $d8

    cp c                                          ; $5afc: $b9
    reti                                          ; $5afd: $d9


    cp d                                          ; $5afe: $ba
    reti                                          ; $5aff: $d9


    cp c                                          ; $5b00: $b9
    ld l, d                                       ; $5b01: $6a
    reti                                          ; $5b02: $d9


    ld l, c                                       ; $5b03: $69
    reti                                          ; $5b04: $d9


    ld l, d                                       ; $5b05: $6a
    cp c                                          ; $5b06: $b9
    reti                                          ; $5b07: $d9


    cp d                                          ; $5b08: $ba
    jp nc, $d919                                  ; $5b09: $d2 $19 $d9

    ld a, [de]                                    ; $5b0c: $1a
    reti                                          ; $5b0d: $d9


    add hl, de                                    ; $5b0e: $19
    ret c                                         ; $5b0f: $d8

    adc d                                         ; $5b10: $8a
    reti                                          ; $5b11: $d9


    adc c                                         ; $5b12: $89
    reti                                          ; $5b13: $d9


    adc d                                         ; $5b14: $8a
    rst $10                                       ; $5b15: $d7
    add hl, de                                    ; $5b16: $19
    reti                                          ; $5b17: $d9


    ld a, [de]                                    ; $5b18: $1a
    ret c                                         ; $5b19: $d8

    ld l, c                                       ; $5b1a: $69
    reti                                          ; $5b1b: $d9


    ld l, d                                       ; $5b1c: $6a
    reti                                          ; $5b1d: $d9


    ld l, c                                       ; $5b1e: $69
    rst $10                                       ; $5b1f: $d7
    ld l, d                                       ; $5b20: $6a
    reti                                          ; $5b21: $d9


    ld l, c                                       ; $5b22: $69
    reti                                          ; $5b23: $d9


    ld l, d                                       ; $5b24: $6a
    add hl, de                                    ; $5b25: $19
    reti                                          ; $5b26: $d9


    ld a, [de]                                    ; $5b27: $1a
    add hl, de                                    ; $5b28: $19
    reti                                          ; $5b29: $d9


    ld a, [de]                                    ; $5b2a: $1a
    reti                                          ; $5b2b: $d9


    add hl, de                                    ; $5b2c: $19
    ret c                                         ; $5b2d: $d8

    adc d                                         ; $5b2e: $8a
    reti                                          ; $5b2f: $d9


    adc c                                         ; $5b30: $89
    reti                                          ; $5b31: $d9


    adc d                                         ; $5b32: $8a
    rst $10                                       ; $5b33: $d7
    add hl, de                                    ; $5b34: $19
    reti                                          ; $5b35: $d9


    ld a, [de]                                    ; $5b36: $1a
    ret c                                         ; $5b37: $d8

    cp c                                          ; $5b38: $b9
    reti                                          ; $5b39: $d9


    cp d                                          ; $5b3a: $ba
    reti                                          ; $5b3b: $d9


    cp c                                          ; $5b3c: $b9
    ld l, d                                       ; $5b3d: $6a
    reti                                          ; $5b3e: $d9


    ld l, c                                       ; $5b3f: $69
    reti                                          ; $5b40: $d9


    ld l, d                                       ; $5b41: $6a
    cp c                                          ; $5b42: $b9
    reti                                          ; $5b43: $d9


    cp d                                          ; $5b44: $ba
    ld c, c                                       ; $5b45: $49
    reti                                          ; $5b46: $d9


    ld c, d                                       ; $5b47: $4a
    reti                                          ; $5b48: $d9


    ld c, c                                       ; $5b49: $49
    rst $10                                       ; $5b4a: $d7
    ld c, d                                       ; $5b4b: $4a
    reti                                          ; $5b4c: $d9


    ld c, c                                       ; $5b4d: $49
    reti                                          ; $5b4e: $d9


    ld c, d                                       ; $5b4f: $4a
    ld c, c                                       ; $5b50: $49
    reti                                          ; $5b51: $d9


    ld c, d                                       ; $5b52: $4a
    ret c                                         ; $5b53: $d8

    ld l, c                                       ; $5b54: $69
    reti                                          ; $5b55: $d9


    ld l, d                                       ; $5b56: $6a
    reti                                          ; $5b57: $d9


    ld l, c                                       ; $5b58: $69
    reti                                          ; $5b59: $d9


    ld l, d                                       ; $5b5a: $6a
    reti                                          ; $5b5b: $d9


    ld l, c                                       ; $5b5c: $69
    reti                                          ; $5b5d: $d9


    ld l, d                                       ; $5b5e: $6a
    reti                                          ; $5b5f: $d9


    ld l, c                                       ; $5b60: $69
    reti                                          ; $5b61: $d9


    ld l, d                                       ; $5b62: $6a
    reti                                          ; $5b63: $d9


    ld l, c                                       ; $5b64: $69
    reti                                          ; $5b65: $d9


    ld l, d                                       ; $5b66: $6a
    reti                                          ; $5b67: $d9


    ld l, c                                       ; $5b68: $69
    reti                                          ; $5b69: $d9


    ld l, d                                       ; $5b6a: $6a
    reti                                          ; $5b6b: $d9


    ld l, c                                       ; $5b6c: $69
    reti                                          ; $5b6d: $d9


    ld l, d                                       ; $5b6e: $6a
    ld a, c                                       ; $5b6f: $79
    adc d                                         ; $5b70: $8a
    sbc c                                         ; $5b71: $99
    reti                                          ; $5b72: $d9


    sbc d                                         ; $5b73: $9a
    sbc c                                         ; $5b74: $99
    rst $10                                       ; $5b75: $d7
    sbc d                                         ; $5b76: $9a
    reti                                          ; $5b77: $d9


    sbc c                                         ; $5b78: $99
    ret c                                         ; $5b79: $d8

    sbc d                                         ; $5b7a: $9a
    rst $10                                       ; $5b7b: $d7
    ld c, c                                       ; $5b7c: $49
    sbc d                                         ; $5b7d: $9a
    ret c                                         ; $5b7e: $d8

    adc c                                         ; $5b7f: $89
    reti                                          ; $5b80: $d9


    adc d                                         ; $5b81: $8a
    adc c                                         ; $5b82: $89
    rst $10                                       ; $5b83: $d7
    adc d                                         ; $5b84: $8a
    reti                                          ; $5b85: $d9


    adc c                                         ; $5b86: $89
    ret c                                         ; $5b87: $d8

    adc d                                         ; $5b88: $8a
    rst $10                                       ; $5b89: $d7
    adc c                                         ; $5b8a: $89
    ret c                                         ; $5b8b: $d8

    adc d                                         ; $5b8c: $8a
    sbc c                                         ; $5b8d: $99
    reti                                          ; $5b8e: $d9


    sbc d                                         ; $5b8f: $9a
    reti                                          ; $5b90: $d9


    sbc c                                         ; $5b91: $99
    sbc d                                         ; $5b92: $9a
    reti                                          ; $5b93: $d9


    sbc c                                         ; $5b94: $99
    rst $10                                       ; $5b95: $d7
    sbc d                                         ; $5b96: $9a
    ret c                                         ; $5b97: $d8

    sbc c                                         ; $5b98: $99
    reti                                          ; $5b99: $d9


    sbc d                                         ; $5b9a: $9a
    rst $10                                       ; $5b9b: $d7
    add hl, de                                    ; $5b9c: $19
    reti                                          ; $5b9d: $d9


    ld a, [de]                                    ; $5b9e: $1a
    add hl, de                                    ; $5b9f: $19
    ld a, [de]                                    ; $5ba0: $1a
    reti                                          ; $5ba1: $d9


    add hl, de                                    ; $5ba2: $19
    ld a, [de]                                    ; $5ba3: $1a
    ret c                                         ; $5ba4: $d8

    adc c                                         ; $5ba5: $89
    rst $10                                       ; $5ba6: $d7
    ld a, [de]                                    ; $5ba7: $1a
    ret c                                         ; $5ba8: $d8

    sbc c                                         ; $5ba9: $99
    reti                                          ; $5baa: $d9


    sbc d                                         ; $5bab: $9a
    sbc c                                         ; $5bac: $99
    sbc d                                         ; $5bad: $9a
    reti                                          ; $5bae: $d9


    sbc c                                         ; $5baf: $99
    rst $10                                       ; $5bb0: $d7
    sbc d                                         ; $5bb1: $9a
    ld c, c                                       ; $5bb2: $49
    sbc d                                         ; $5bb3: $9a
    add hl, de                                    ; $5bb4: $19
    reti                                          ; $5bb5: $d9


    ld a, [de]                                    ; $5bb6: $1a
    add hl, de                                    ; $5bb7: $19
    ld a, [de]                                    ; $5bb8: $1a
    reti                                          ; $5bb9: $d9


    add hl, de                                    ; $5bba: $19
    ld a, [de]                                    ; $5bbb: $1a
    ret c                                         ; $5bbc: $d8

    adc c                                         ; $5bbd: $89
    rst $10                                       ; $5bbe: $d7
    ld a, [de]                                    ; $5bbf: $1a
    dec a                                         ; $5bc0: $3d
    dec a                                         ; $5bc1: $3d
    dec a                                         ; $5bc2: $3d
    dec a                                         ; $5bc3: $3d
    dec a                                         ; $5bc4: $3d
    dec a                                         ; $5bc5: $3d
    adc c                                         ; $5bc6: $89
    ld a, [bc]                                    ; $5bc7: $0a
    add hl, bc                                    ; $5bc8: $09
    ld a, [bc]                                    ; $5bc9: $0a
    ret c                                         ; $5bca: $d8

    adc c                                         ; $5bcb: $89
    reti                                          ; $5bcc: $d9


    adc d                                         ; $5bcd: $8a
    add hl, bc                                    ; $5bce: $09
    ld a, [bc]                                    ; $5bcf: $0a
    rst $18                                       ; $5bd0: $df
    inc bc                                        ; $5bd1: $03
    ld [c], a                                     ; $5bd2: $e2
    jr jr_07e_5c31                                ; $5bd3: $18 $5c

    jp nc, $d919                                  ; $5bd5: $d2 $19 $d9

    ld a, [de]                                    ; $5bd8: $1a
    ret c                                         ; $5bd9: $d8

    ret                                           ; $5bda: $c9


    reti                                          ; $5bdb: $d9


    jp z, $aaa9                                   ; $5bdc: $ca $a9 $aa

    ret                                           ; $5bdf: $c9


    reti                                          ; $5be0: $d9


    jp z, $e2e0                                   ; $5be1: $ca $e0 $e2

    jr @+$5e                                      ; $5be4: $18 $5c

    jp nc, $d919                                  ; $5be6: $d2 $19 $d9

    ld a, [de]                                    ; $5be9: $1a
    reti                                          ; $5bea: $d9


    add hl, de                                    ; $5beb: $19
    reti                                          ; $5bec: $d9


    ld a, [de]                                    ; $5bed: $1a
    reti                                          ; $5bee: $d9


    add hl, de                                    ; $5bef: $19
    reti                                          ; $5bf0: $d9


    ld a, [de]                                    ; $5bf1: $1a
    reti                                          ; $5bf2: $d9


    add hl, de                                    ; $5bf3: $19
    reti                                          ; $5bf4: $d9


    ld a, [de]                                    ; $5bf5: $1a
    sbc $ff                                       ; $5bf6: $de $ff

    db $d2, $19, $d9, $1a, $d9, $19, $d8, $8a, $d9, $89, $d9, $8a, $d7, $19, $d9, $1a
    db $d8, $69, $d9, $6a, $d9, $69, $d7, $1a, $d9, $19, $d9, $1a, $69, $d9, $6a, $e3

    jp nc, $d919                                  ; $5c18: $d2 $19 $d9

    ld a, [de]                                    ; $5c1b: $1a
    ret c                                         ; $5c1c: $d8

    ret                                           ; $5c1d: $c9


    reti                                          ; $5c1e: $d9


    jp z, $aaa9                                   ; $5c1f: $ca $a9 $aa

    adc c                                         ; $5c22: $89
    reti                                          ; $5c23: $d9


    adc d                                         ; $5c24: $8a
    ld l, c                                       ; $5c25: $69
    reti                                          ; $5c26: $d9


    ld l, d                                       ; $5c27: $6a
    rst $10                                       ; $5c28: $d7
    ld l, c                                       ; $5c29: $69
    reti                                          ; $5c2a: $d9


    ld l, d                                       ; $5c2b: $6a
    add hl, de                                    ; $5c2c: $19
    reti                                          ; $5c2d: $d9


    ld a, [de]                                    ; $5c2e: $1a
    ret c                                         ; $5c2f: $d8

    xor c                                         ; $5c30: $a9

jr_07e_5c31:
    reti                                          ; $5c31: $d9


    xor d                                         ; $5c32: $aa
    adc c                                         ; $5c33: $89
    reti                                          ; $5c34: $d9


    adc d                                         ; $5c35: $8a
    xor c                                         ; $5c36: $a9
    reti                                          ; $5c37: $d9


    xor d                                         ; $5c38: $aa
    ret                                           ; $5c39: $c9


    jp z, Jump_000_39d7                           ; $5c3a: $ca $d7 $39

    reti                                          ; $5c3d: $d9


    ld a, [hl-]                                   ; $5c3e: $3a
    db $e3                                        ; $5c3f: $e3

    db $d0, $01, $d1, $df, $02, $09, $0a, $09, $0a, $09, $0a, $09, $0a, $e0, $dd, $e2
    db $e0, $5c, $e2, $e9, $5c, $e2, $e0, $5c, $e2, $fd, $5c, $e2, $e0, $5c, $e2, $e9
    db $5c, $e2, $e0, $5c, $e2, $f3, $5c, $e2, $e0, $5c, $e2, $e9, $5c, $e2, $e0, $5c
    db $e2, $f3, $5c, $e2, $e0, $5c, $e2, $e9, $5c, $e2, $e0, $5c, $e2, $f3, $5c, $e2
    db $e0, $5c, $e2, $e9, $5c, $e2, $e0, $5c, $e2, $fd, $5c

    ld [c], a                                     ; $5c8b: $e2
    ld b, $5d                                     ; $5c8c: $06 $5d
    ld [c], a                                     ; $5c8e: $e2
    ldh [$5c], a                                  ; $5c8f: $e0 $5c
    ld [c], a                                     ; $5c91: $e2
    jp hl                                         ; $5c92: $e9


    ld e, h                                       ; $5c93: $5c
    ld [c], a                                     ; $5c94: $e2
    ldh [$5c], a                                  ; $5c95: $e0 $5c
    ld [c], a                                     ; $5c97: $e2
    di                                            ; $5c98: $f3
    ld e, h                                       ; $5c99: $5c
    ld [c], a                                     ; $5c9a: $e2
    ldh [$5c], a                                  ; $5c9b: $e0 $5c
    ld [c], a                                     ; $5c9d: $e2
    jp hl                                         ; $5c9e: $e9


    ld e, h                                       ; $5c9f: $5c
    ld [c], a                                     ; $5ca0: $e2
    ldh [$5c], a                                  ; $5ca1: $e0 $5c
    ld [c], a                                     ; $5ca3: $e2
    ld b, $5d                                     ; $5ca4: $06 $5d
    rst $10                                       ; $5ca6: $d7
    ld e, c                                       ; $5ca7: $59
    ld e, d                                       ; $5ca8: $5a
    ld e, c                                       ; $5ca9: $59
    ret c                                         ; $5caa: $d8

    cp a                                          ; $5cab: $bf
    inc b                                         ; $5cac: $04
    cp d                                          ; $5cad: $ba
    xor c                                         ; $5cae: $a9
    xor d                                         ; $5caf: $aa
    ld [c], a                                     ; $5cb0: $e2
    ldh [$5c], a                                  ; $5cb1: $e0 $5c
    ld [c], a                                     ; $5cb3: $e2
    jp hl                                         ; $5cb4: $e9


    ld e, h                                       ; $5cb5: $5c
    ld [c], a                                     ; $5cb6: $e2
    ldh [$5c], a                                  ; $5cb7: $e0 $5c
    ld [c], a                                     ; $5cb9: $e2
    db $fd                                        ; $5cba: $fd
    ld e, h                                       ; $5cbb: $5c
    ld [c], a                                     ; $5cbc: $e2
    ldh [$5c], a                                  ; $5cbd: $e0 $5c
    ld [c], a                                     ; $5cbf: $e2
    jp hl                                         ; $5cc0: $e9


    ld e, h                                       ; $5cc1: $5c
    dec l                                         ; $5cc2: $2d
    dec a                                         ; $5cc3: $3d
    dec a                                         ; $5cc4: $3d
    rst $10                                       ; $5cc5: $d7
    ld e, l                                       ; $5cc6: $5d
    ret c                                         ; $5cc7: $d8

    cp l                                          ; $5cc8: $bd
    xor l                                         ; $5cc9: $ad
    ld c, c                                       ; $5cca: $49
    ld a, [bc]                                    ; $5ccb: $0a
    add hl, bc                                    ; $5ccc: $09
    ld a, [bc]                                    ; $5ccd: $0a
    ret nc                                        ; $5cce: $d0

    ld a, [hl+]                                   ; $5ccf: $2a
    ret nz                                        ; $5cd0: $c0

    ret nc                                        ; $5cd1: $d0

    ld bc, $10df                                  ; $5cd2: $01 $df $10
    add hl, de                                    ; $5cd5: $19
    ld a, [bc]                                    ; $5cd6: $0a
    ld l, h                                       ; $5cd7: $6c
    ld d, a                                       ; $5cd8: $57
    add hl, sp                                    ; $5cd9: $39
    ld a, [bc]                                    ; $5cda: $0a
    adc h                                         ; $5cdb: $8c
    ld d, a                                       ; $5cdc: $57
    ldh [$de], a                                  ; $5cdd: $e0 $de
    rst $38                                       ; $5cdf: $ff

    db $19, $0a, $59, $1a, $69, $8a, $b9, $aa, $e3, $19, $0a, $59, $1a, $89, $6a, $39
    db $d9, $3a, $e3, $19, $0a, $59, $1a, $89, $6a, $a9, $d9, $aa, $e3, $19, $0a, $59
    db $1a, $89, $6a, $39, $3a, $e3

    ret nc                                        ; $5d06: $d0

    ld a, [hl+]                                   ; $5d07: $2a
    pop bc                                        ; $5d08: $c1
    ret nc                                        ; $5d09: $d0

    ld bc, $d0e3                                  ; $5d0a: $01 $e3 $d0
    ld bc, $11dc                                  ; $5d0d: $01 $dc $11
    push hl                                       ; $5d10: $e5
    add b                                         ; $5d11: $80
    and $00                                       ; $5d12: $e6 $00
    add sp, $07                                   ; $5d14: $e8 $07
    ld [$eb0c], a                                 ; $5d16: $ea $0c $eb
    inc e                                         ; $5d19: $1c
    db $d3                                        ; $5d1a: $d3
    ld [$0909], sp                                ; $5d1b: $08 $09 $09
    add hl, bc                                    ; $5d1e: $09
    ld [$0909], sp                                ; $5d1f: $08 $09 $09
    add hl, bc                                    ; $5d22: $09
    ld [$0909], sp                                ; $5d23: $08 $09 $09
    add hl, bc                                    ; $5d26: $09
    and $b0                                       ; $5d27: $e6 $b0
    sbc b                                         ; $5d29: $98
    reti                                          ; $5d2a: $d9


    sbc c                                         ; $5d2b: $99
    xor c                                         ; $5d2c: $a9
    reti                                          ; $5d2d: $d9


    xor c                                         ; $5d2e: $a9
    db $dd                                        ; $5d2f: $dd
    ret z                                         ; $5d30: $c8

    reti                                          ; $5d31: $d9


    ret                                           ; $5d32: $c9


    reti                                          ; $5d33: $d9


    ret                                           ; $5d34: $c9


    reti                                          ; $5d35: $d9


    ret                                           ; $5d36: $c9


    reti                                          ; $5d37: $d9


    ret z                                         ; $5d38: $c8

    reti                                          ; $5d39: $d9


    ret                                           ; $5d3a: $c9


    ld e, c                                       ; $5d3b: $59
    reti                                          ; $5d3c: $d9


    ld e, c                                       ; $5d3d: $59
    reti                                          ; $5d3e: $d9


    ld e, b                                       ; $5d3f: $58
    add hl, bc                                    ; $5d40: $09
    rst $10                                       ; $5d41: $d7
    add hl, hl                                    ; $5d42: $29
    reti                                          ; $5d43: $d9


    add hl, hl                                    ; $5d44: $29
    ret c                                         ; $5d45: $d8

    ret z                                         ; $5d46: $c8

    reti                                          ; $5d47: $d9


    ret                                           ; $5d48: $c9


    xor c                                         ; $5d49: $a9
    reti                                          ; $5d4a: $d9


    xor c                                         ; $5d4b: $a9
    ret z                                         ; $5d4c: $c8

    reti                                          ; $5d4d: $d9


    ret                                           ; $5d4e: $c9


    reti                                          ; $5d4f: $d9


    ret                                           ; $5d50: $c9


    reti                                          ; $5d51: $d9


    ret                                           ; $5d52: $c9


    reti                                          ; $5d53: $d9


    ret z                                         ; $5d54: $c8

    reti                                          ; $5d55: $d9


    ret                                           ; $5d56: $c9


    ld e, c                                       ; $5d57: $59
    reti                                          ; $5d58: $d9


    ld e, c                                       ; $5d59: $59
    reti                                          ; $5d5a: $d9


    ld e, b                                       ; $5d5b: $58
    add hl, bc                                    ; $5d5c: $09
    ld a, c                                       ; $5d5d: $79
    reti                                          ; $5d5e: $d9


    ld a, c                                       ; $5d5f: $79
    reti                                          ; $5d60: $d9


    ld a, b                                       ; $5d61: $78
    reti                                          ; $5d62: $d9


    ld a, c                                       ; $5d63: $79
    sbc c                                         ; $5d64: $99
    reti                                          ; $5d65: $d9


    sbc c                                         ; $5d66: $99
    xor b                                         ; $5d67: $a8
    reti                                          ; $5d68: $d9


    xor c                                         ; $5d69: $a9
    reti                                          ; $5d6a: $d9


    xor c                                         ; $5d6b: $a9
    reti                                          ; $5d6c: $d9


    xor c                                         ; $5d6d: $a9
    sbc b                                         ; $5d6e: $98
    reti                                          ; $5d6f: $d9


    sbc c                                         ; $5d70: $99
    reti                                          ; $5d71: $d9


    sbc c                                         ; $5d72: $99
    add hl, bc                                    ; $5d73: $09
    ld a, b                                       ; $5d74: $78
    reti                                          ; $5d75: $d9


    ld a, c                                       ; $5d76: $79
    ld e, c                                       ; $5d77: $59
    reti                                          ; $5d78: $d9


    ld e, c                                       ; $5d79: $59
    reti                                          ; $5d7a: $d9


    ld e, b                                       ; $5d7b: $58
    reti                                          ; $5d7c: $d9


    ld e, c                                       ; $5d7d: $59
    ld a, c                                       ; $5d7e: $79
    reti                                          ; $5d7f: $d9


    ld a, c                                       ; $5d80: $79
    reti                                          ; $5d81: $d9


    ld a, b                                       ; $5d82: $78
    reti                                          ; $5d83: $d9


    ld a, c                                       ; $5d84: $79
    reti                                          ; $5d85: $d9


    ld a, c                                       ; $5d86: $79
    reti                                          ; $5d87: $d9


    ld a, c                                       ; $5d88: $79
    reti                                          ; $5d89: $d9


    ld a, b                                       ; $5d8a: $78

jr_07e_5d8b:
    reti                                          ; $5d8b: $d9


    ld a, c                                       ; $5d8c: $79
    reti                                          ; $5d8d: $d9


    ld a, c                                       ; $5d8e: $79
    reti                                          ; $5d8f: $d9


    ld a, c                                       ; $5d90: $79

jr_07e_5d91:
    ld [$0909], sp                                ; $5d91: $08 $09 $09
    add hl, bc                                    ; $5d94: $09
    sbc b                                         ; $5d95: $98
    reti                                          ; $5d96: $d9


    sbc c                                         ; $5d97: $99
    xor c                                         ; $5d98: $a9

jr_07e_5d99:
    reti                                          ; $5d99: $d9


    xor c                                         ; $5d9a: $a9
    ret z                                         ; $5d9b: $c8

    reti                                          ; $5d9c: $d9


    ret                                           ; $5d9d: $c9


    reti                                          ; $5d9e: $d9


    ret                                           ; $5d9f: $c9


    reti                                          ; $5da0: $d9


    ret                                           ; $5da1: $c9


    reti                                          ; $5da2: $d9


    ret z                                         ; $5da3: $c8

    reti                                          ; $5da4: $d9


    ret                                           ; $5da5: $c9


    reti                                          ; $5da6: $d9


    ret                                           ; $5da7: $c9


    reti                                          ; $5da8: $d9


    ret                                           ; $5da9: $c9


    ld [$d709], sp                                ; $5daa: $08 $09 $d7
    add hl, hl                                    ; $5dad: $29
    reti                                          ; $5dae: $d9


    add hl, hl                                    ; $5daf: $29
    jr c, jr_07e_5d8b                             ; $5db0: $38 $d9

    add hl, sp                                    ; $5db2: $39
    ld e, c                                       ; $5db3: $59
    reti                                          ; $5db4: $d9


    ld e, c                                       ; $5db5: $59
    jr z, jr_07e_5d91                             ; $5db6: $28 $d9

    add hl, hl                                    ; $5db8: $29
    reti                                          ; $5db9: $d9


    add hl, hl                                    ; $5dba: $29
    reti                                          ; $5dbb: $d9


    add hl, hl                                    ; $5dbc: $29
    reti                                          ; $5dbd: $d9


    jr z, jr_07e_5d99                             ; $5dbe: $28 $d9

    add hl, hl                                    ; $5dc0: $29
    ret c                                         ; $5dc1: $d8

    xor c                                         ; $5dc2: $a9
    reti                                          ; $5dc3: $d9


    xor c                                         ; $5dc4: $a9
    reti                                          ; $5dc5: $d9


    xor b                                         ; $5dc6: $a8
    reti                                          ; $5dc7: $d9


    xor c                                         ; $5dc8: $a9
    reti                                          ; $5dc9: $d9


    xor c                                         ; $5dca: $a9
    reti                                          ; $5dcb: $d9


    xor c                                         ; $5dcc: $a9
    ld e, b                                       ; $5dcd: $58
    reti                                          ; $5dce: $d9


    ld e, c                                       ; $5dcf: $59
    reti                                          ; $5dd0: $d9


    ld e, c                                       ; $5dd1: $59
    reti                                          ; $5dd2: $d9


    ld e, c                                       ; $5dd3: $59
    ld a, b                                       ; $5dd4: $78
    reti                                          ; $5dd5: $d9


    ld a, c                                       ; $5dd6: $79
    reti                                          ; $5dd7: $d9


    ld a, c                                       ; $5dd8: $79
    reti                                          ; $5dd9: $d9


    ld a, c                                       ; $5dda: $79
    reti                                          ; $5ddb: $d9


    ld a, b                                       ; $5ddc: $78
    reti                                          ; $5ddd: $d9


    ld a, c                                       ; $5dde: $79
    reti                                          ; $5ddf: $d9


    ld a, c                                       ; $5de0: $79
    reti                                          ; $5de1: $d9


    ld a, c                                       ; $5de2: $79
    xor b                                         ; $5de3: $a8
    reti                                          ; $5de4: $d9


    xor c                                         ; $5de5: $a9
    sbc c                                         ; $5de6: $99
    reti                                          ; $5de7: $d9


    sbc c                                         ; $5de8: $99
    ld a, b                                       ; $5de9: $78
    reti                                          ; $5dea: $d9


    ld a, c                                       ; $5deb: $79
    sbc c                                         ; $5dec: $99
    reti                                          ; $5ded: $d9


    sbc c                                         ; $5dee: $99
    ld [c], a                                     ; $5def: $e2
    sbc l                                         ; $5df0: $9d
    ld e, [hl]                                    ; $5df1: $5e
    ld [c], a                                     ; $5df2: $e2
    add c                                         ; $5df3: $81
    ld e, [hl]                                    ; $5df4: $5e
    ret z                                         ; $5df5: $c8

    reti                                          ; $5df6: $d9


    ret                                           ; $5df7: $c9


    reti                                          ; $5df8: $d9


    ret                                           ; $5df9: $c9


    reti                                          ; $5dfa: $d9


    ret                                           ; $5dfb: $c9


    reti                                          ; $5dfc: $d9


    ret z                                         ; $5dfd: $c8

    reti                                          ; $5dfe: $d9


    ret                                           ; $5dff: $c9


    ld e, c                                       ; $5e00: $59
    reti                                          ; $5e01: $d9


    ld e, c                                       ; $5e02: $59
    reti                                          ; $5e03: $d9


    ld e, b                                       ; $5e04: $58
    reti                                          ; $5e05: $d9


    ld e, c                                       ; $5e06: $59
    reti                                          ; $5e07: $d9


    ld e, c                                       ; $5e08: $59
    reti                                          ; $5e09: $d9


    ld e, c                                       ; $5e0a: $59
    reti                                          ; $5e0b: $d9


    ld e, b                                       ; $5e0c: $58
    reti                                          ; $5e0d: $d9


    ld e, c                                       ; $5e0e: $59
    reti                                          ; $5e0f: $d9


    ld e, c                                       ; $5e10: $59
    reti                                          ; $5e11: $d9


    ld e, c                                       ; $5e12: $59
    ld [c], a                                     ; $5e13: $e2
    add c                                         ; $5e14: $81
    ld e, [hl]                                    ; $5e15: $5e
    ld [c], a                                     ; $5e16: $e2
    sbc l                                         ; $5e17: $9d
    ld e, [hl]                                    ; $5e18: $5e
    rst $18                                       ; $5e19: $df
    ld [bc], a                                    ; $5e1a: $02
    ld a, b                                       ; $5e1b: $78
    ld e, c                                       ; $5e1c: $59
    ld a, c                                       ; $5e1d: $79
    reti                                          ; $5e1e: $d9


    ld a, c                                       ; $5e1f: $79
    reti                                          ; $5e20: $d9


    ld a, b                                       ; $5e21: $78
    reti                                          ; $5e22: $d9


    ld a, c                                       ; $5e23: $79
    reti                                          ; $5e24: $d9


    ld a, c                                       ; $5e25: $79
    reti                                          ; $5e26: $d9


    ld a, c                                       ; $5e27: $79
    ldh [$98], a                                  ; $5e28: $e0 $98
    xor c                                         ; $5e2a: $a9
    ret                                           ; $5e2b: $c9


    rst $10                                       ; $5e2c: $d7
    add hl, hl                                    ; $5e2d: $29
    ret c                                         ; $5e2e: $d8

    ret z                                         ; $5e2f: $c8

    inc bc                                        ; $5e30: $03
    xor b                                         ; $5e31: $a8
    inc bc                                        ; $5e32: $03
    sbc b                                         ; $5e33: $98
    inc bc                                        ; $5e34: $03
    ld a, b                                       ; $5e35: $78
    reti                                          ; $5e36: $d9


    ld a, c                                       ; $5e37: $79
    reti                                          ; $5e38: $d9


    ld a, c                                       ; $5e39: $79
    reti                                          ; $5e3a: $d9


    ld a, c                                       ; $5e3b: $79
    ld e, b                                       ; $5e3c: $58
    reti                                          ; $5e3d: $d9


    ld e, c                                       ; $5e3e: $59
    reti                                          ; $5e3f: $d9


    ld e, c                                       ; $5e40: $59
    reti                                          ; $5e41: $d9


    ld e, c                                       ; $5e42: $59
    ld a, b                                       ; $5e43: $78
    reti                                          ; $5e44: $d9


    ld a, c                                       ; $5e45: $79
    reti                                          ; $5e46: $d9


    ld a, c                                       ; $5e47: $79
    reti                                          ; $5e48: $d9


    ld a, c                                       ; $5e49: $79
    reti                                          ; $5e4a: $d9


    ld a, b                                       ; $5e4b: $78
    reti                                          ; $5e4c: $d9


    ld a, c                                       ; $5e4d: $79
    reti                                          ; $5e4e: $d9


    ld a, c                                       ; $5e4f: $79
    reti                                          ; $5e50: $d9


    ld a, c                                       ; $5e51: $79
    reti                                          ; $5e52: $d9


    ld a, b                                       ; $5e53: $78
    reti                                          ; $5e54: $d9


    ld a, c                                       ; $5e55: $79
    reti                                          ; $5e56: $d9


    ld a, c                                       ; $5e57: $79
    reti                                          ; $5e58: $d9


    ld a, c                                       ; $5e59: $79
    reti                                          ; $5e5a: $d9


    ld a, b                                       ; $5e5b: $78
    reti                                          ; $5e5c: $d9


    ld a, c                                       ; $5e5d: $79
    reti                                          ; $5e5e: $d9


    ld a, c                                       ; $5e5f: $79
    reti                                          ; $5e60: $d9


    ld a, c                                       ; $5e61: $79
    ld a, b                                       ; $5e62: $78
    reti                                          ; $5e63: $d9


    ld a, c                                       ; $5e64: $79
    reti                                          ; $5e65: $d9


    ld a, c                                       ; $5e66: $79
    reti                                          ; $5e67: $d9


    ld a, c                                       ; $5e68: $79
    reti                                          ; $5e69: $d9


jr_07e_5e6a:
    ld a, b                                       ; $5e6a: $78
    reti                                          ; $5e6b: $d9


    ld a, c                                       ; $5e6c: $79
    reti                                          ; $5e6d: $d9


    ld a, c                                       ; $5e6e: $79
    reti                                          ; $5e6f: $d9


    ld a, c                                       ; $5e70: $79
    ld e, b                                       ; $5e71: $58
    reti                                          ; $5e72: $d9


    ld e, c                                       ; $5e73: $59
    reti                                          ; $5e74: $d9


    ld e, c                                       ; $5e75: $59
    reti                                          ; $5e76: $d9


    ld e, c                                       ; $5e77: $59
    reti                                          ; $5e78: $d9


    ld e, b                                       ; $5e79: $58
    reti                                          ; $5e7a: $d9


    ld e, c                                       ; $5e7b: $59
    reti                                          ; $5e7c: $d9


    ld e, c                                       ; $5e7d: $59
    reti                                          ; $5e7e: $d9


    ld e, c                                       ; $5e7f: $59
    sbc $d3                                       ; $5e80: $de $d3
    ld a, b                                       ; $5e82: $78
    reti                                          ; $5e83: $d9


    ld a, c                                       ; $5e84: $79
    sbc c                                         ; $5e85: $99
    reti                                          ; $5e86: $d9


    sbc c                                         ; $5e87: $99
    xor b                                         ; $5e88: $a8
    reti                                          ; $5e89: $d9


    xor c                                         ; $5e8a: $a9
    rst $10                                       ; $5e8b: $d7
    add hl, sp                                    ; $5e8c: $39
    reti                                          ; $5e8d: $d9


    add hl, sp                                    ; $5e8e: $39
    jr z, jr_07e_5e6a                             ; $5e8f: $28 $d9

    add hl, hl                                    ; $5e91: $29
    ret c                                         ; $5e92: $d8

    ret                                           ; $5e93: $c9


    reti                                          ; $5e94: $d9


    ret                                           ; $5e95: $c9


    xor b                                         ; $5e96: $a8
    reti                                          ; $5e97: $d9


    xor c                                         ; $5e98: $a9
    sbc c                                         ; $5e99: $99
    reti                                          ; $5e9a: $d9


    sbc c                                         ; $5e9b: $99
    db $e3                                        ; $5e9c: $e3
    db $d3                                        ; $5e9d: $d3
    xor b                                         ; $5e9e: $a8
    reti                                          ; $5e9f: $d9


    xor c                                         ; $5ea0: $a9
    reti                                          ; $5ea1: $d9


    xor c                                         ; $5ea2: $a9
    reti                                          ; $5ea3: $d9


    xor c                                         ; $5ea4: $a9
    reti                                          ; $5ea5: $d9


    xor b                                         ; $5ea6: $a8
    reti                                          ; $5ea7: $d9


    xor c                                         ; $5ea8: $a9
    reti                                          ; $5ea9: $d9


    xor c                                         ; $5eaa: $a9
    reti                                          ; $5eab: $d9


    xor c                                         ; $5eac: $a9
    reti                                          ; $5ead: $d9


    xor b                                         ; $5eae: $a8
    reti                                          ; $5eaf: $d9


    xor c                                         ; $5eb0: $a9

jr_07e_5eb1:
    reti                                          ; $5eb1: $d9


    xor c                                         ; $5eb2: $a9
    reti                                          ; $5eb3: $d9


    xor c                                         ; $5eb4: $a9
    reti                                          ; $5eb5: $d9


    xor b                                         ; $5eb6: $a8
    reti                                          ; $5eb7: $d9


    xor c                                         ; $5eb8: $a9
    reti                                          ; $5eb9: $d9


    xor c                                         ; $5eba: $a9
    reti                                          ; $5ebb: $d9


    xor c                                         ; $5ebc: $a9
    db $e3                                        ; $5ebd: $e3
    ret nc                                        ; $5ebe: $d0

    ld bc, $11dc                                  ; $5ebf: $01 $dc $11
    push hl                                       ; $5ec2: $e5
    ld b, b                                       ; $5ec3: $40
    and $00                                       ; $5ec4: $e6 $00
    add sp, $07                                   ; $5ec6: $e8 $07
    ld [$eb01], a                                 ; $5ec8: $ea $01 $eb
    jr jr_07e_5eb1                                ; $5ecb: $18 $e4

    cp $d3                                        ; $5ecd: $fe $d3
    rst $18                                       ; $5ecf: $df
    ld [bc], a                                    ; $5ed0: $02
    ld [$0909], sp                                ; $5ed1: $08 $09 $09
    add hl, bc                                    ; $5ed4: $09
    ld [$0909], sp                                ; $5ed5: $08 $09 $09
    add hl, bc                                    ; $5ed8: $09
    ldh [$dd], a                                  ; $5ed9: $e0 $dd
    rst $18                                       ; $5edb: $df
    ld [bc], a                                    ; $5edc: $02
    and $87                                       ; $5edd: $e6 $87
    sbc b                                         ; $5edf: $98
    reti                                          ; $5ee0: $d9


    sbc c                                         ; $5ee1: $99
    ld e, c                                       ; $5ee2: $59
    reti                                          ; $5ee3: $d9


    ld e, c                                       ; $5ee4: $59
    ret z                                         ; $5ee5: $c8

    reti                                          ; $5ee6: $d9


    ret                                           ; $5ee7: $c9


jr_07e_5ee8:
    ld e, c                                       ; $5ee8: $59
    reti                                          ; $5ee9: $d9


    ld e, c                                       ; $5eea: $59
    ldh [$98], a                                  ; $5eeb: $e0 $98
    reti                                          ; $5eed: $d9


    sbc c                                         ; $5eee: $99
    ld e, c                                       ; $5eef: $59
    reti                                          ; $5ef0: $d9


    ld e, c                                       ; $5ef1: $59
    rst $10                                       ; $5ef2: $d7
    jr c, @-$25                                   ; $5ef3: $38 $d9

    add hl, sp                                    ; $5ef5: $39

jr_07e_5ef6:
    ret c                                         ; $5ef6: $d8

    ld e, c                                       ; $5ef7: $59
    reti                                          ; $5ef8: $d9


    ld e, c                                       ; $5ef9: $59
    sbc b                                         ; $5efa: $98
    reti                                          ; $5efb: $d9


    sbc c                                         ; $5efc: $99
    ld e, c                                       ; $5efd: $59
    reti                                          ; $5efe: $d9


    ld e, c                                       ; $5eff: $59
    ret z                                         ; $5f00: $c8

    reti                                          ; $5f01: $d9


    ret                                           ; $5f02: $c9


    ld e, c                                       ; $5f03: $59
    reti                                          ; $5f04: $d9


    ld e, c                                       ; $5f05: $59
    xor b                                         ; $5f06: $a8
    reti                                          ; $5f07: $d9


    xor c                                         ; $5f08: $a9
    ld e, c                                       ; $5f09: $59
    reti                                          ; $5f0a: $d9


    ld e, c                                       ; $5f0b: $59
    rst $10                                       ; $5f0c: $d7
    jr z, jr_07e_5ee8                             ; $5f0d: $28 $d9

    add hl, hl                                    ; $5f0f: $29
    ret c                                         ; $5f10: $d8

    ld e, c                                       ; $5f11: $59
    reti                                          ; $5f12: $d9


    ld e, c                                       ; $5f13: $59
    ld a, b                                       ; $5f14: $78
    reti                                          ; $5f15: $d9


jr_07e_5f16:
    ld a, c                                       ; $5f16: $79
    add hl, sp                                    ; $5f17: $39
    reti                                          ; $5f18: $d9


    add hl, sp                                    ; $5f19: $39
    rst $10                                       ; $5f1a: $d7
    jr c, jr_07e_5ef6                             ; $5f1b: $38 $d9

    add hl, sp                                    ; $5f1d: $39
    ret c                                         ; $5f1e: $d8

    add hl, sp                                    ; $5f1f: $39
    reti                                          ; $5f20: $d9


    add hl, sp                                    ; $5f21: $39
    rst $18                                       ; $5f22: $df
    inc b                                         ; $5f23: $04
    ld a, b                                       ; $5f24: $78
    reti                                          ; $5f25: $d9


    ld a, c                                       ; $5f26: $79
    add hl, sp                                    ; $5f27: $39
    reti                                          ; $5f28: $d9


    add hl, sp                                    ; $5f29: $39
    ret z                                         ; $5f2a: $c8

    reti                                          ; $5f2b: $d9


    ret                                           ; $5f2c: $c9


    add hl, sp                                    ; $5f2d: $39
    reti                                          ; $5f2e: $d9


    add hl, sp                                    ; $5f2f: $39
    ldh [$e2], a                                  ; $5f30: $e0 $e2
    db $db                                        ; $5f32: $db
    ld e, a                                       ; $5f33: $5f
    xor b                                         ; $5f34: $a8
    reti                                          ; $5f35: $d9


jr_07e_5f36:
    xor c                                         ; $5f36: $a9
    ld a, c                                       ; $5f37: $79
    reti                                          ; $5f38: $d9


    ld a, c                                       ; $5f39: $79
    rst $10                                       ; $5f3a: $d7
    jr z, jr_07e_5f16                             ; $5f3b: $28 $d9

    add hl, hl                                    ; $5f3d: $29
    ret c                                         ; $5f3e: $d8

    ld a, c                                       ; $5f3f: $79
    reti                                          ; $5f40: $d9


    ld a, c                                       ; $5f41: $79
    sbc b                                         ; $5f42: $98
    reti                                          ; $5f43: $d9


    sbc c                                         ; $5f44: $99
    ld e, c                                       ; $5f45: $59
    reti                                          ; $5f46: $d9


    ld e, c                                       ; $5f47: $59
    ret z                                         ; $5f48: $c8

    reti                                          ; $5f49: $d9


    ret                                           ; $5f4a: $c9


    ld e, c                                       ; $5f4b: $59
    reti                                          ; $5f4c: $d9


    ld e, c                                       ; $5f4d: $59
    ld [c], a                                     ; $5f4e: $e2
    db $db                                        ; $5f4f: $db
    ld e, a                                       ; $5f50: $5f
    ld [c], a                                     ; $5f51: $e2
    xor $5f                                       ; $5f52: $ee $5f
    ld e, b                                       ; $5f54: $58
    reti                                          ; $5f55: $d9


    ld e, c                                       ; $5f56: $59
    xor c                                         ; $5f57: $a9
    reti                                          ; $5f58: $d9


jr_07e_5f59:
    xor c                                         ; $5f59: $a9
    rst $10                                       ; $5f5a: $d7
    jr z, jr_07e_5f36                             ; $5f5b: $28 $d9

    add hl, hl                                    ; $5f5d: $29
    add hl, sp                                    ; $5f5e: $39
    reti                                          ; $5f5f: $d9


    add hl, sp                                    ; $5f60: $39
    jr z, @-$25                                   ; $5f61: $28 $d9

    add hl, hl                                    ; $5f63: $29
    ret c                                         ; $5f64: $d8

    xor c                                         ; $5f65: $a9
    reti                                          ; $5f66: $d9


    xor c                                         ; $5f67: $a9

jr_07e_5f68:
    ld e, b                                       ; $5f68: $58
    reti                                          ; $5f69: $d9


    ld e, c                                       ; $5f6a: $59
    xor c                                         ; $5f6b: $a9
    reti                                          ; $5f6c: $d9


    xor c                                         ; $5f6d: $a9
    ld [c], a                                     ; $5f6e: $e2
    xor $5f                                       ; $5f6f: $ee $5f
    ld e, b                                       ; $5f71: $58
    reti                                          ; $5f72: $d9


    ld e, c                                       ; $5f73: $59
    xor c                                         ; $5f74: $a9
    reti                                          ; $5f75: $d9


jr_07e_5f76:
    xor c                                         ; $5f76: $a9
    rst $10                                       ; $5f77: $d7
    jr z, @-$25                                   ; $5f78: $28 $d9

    add hl, hl                                    ; $5f7a: $29
    add hl, sp                                    ; $5f7b: $39
    reti                                          ; $5f7c: $d9


    add hl, sp                                    ; $5f7d: $39
    jr z, jr_07e_5f59                             ; $5f7e: $28 $d9

    add hl, hl                                    ; $5f80: $29
    ret c                                         ; $5f81: $d8

    xor c                                         ; $5f82: $a9
    reti                                          ; $5f83: $d9


    xor c                                         ; $5f84: $a9
    ld e, b                                       ; $5f85: $58
    reti                                          ; $5f86: $d9


    ld e, c                                       ; $5f87: $59
    add hl, hl                                    ; $5f88: $29
    reti                                          ; $5f89: $d9


    add hl, hl                                    ; $5f8a: $29
    rst $18                                       ; $5f8b: $df
    ld [bc], a                                    ; $5f8c: $02
    jr c, jr_07e_5f68                             ; $5f8d: $38 $d9

    add hl, sp                                    ; $5f8f: $39
    ld a, c                                       ; $5f90: $79
    reti                                          ; $5f91: $d9


    ld a, c                                       ; $5f92: $79
    xor b                                         ; $5f93: $a8
    reti                                          ; $5f94: $d9


    xor c                                         ; $5f95: $a9
    rst $10                                       ; $5f96: $d7

jr_07e_5f97:
    add hl, hl                                    ; $5f97: $29
    reti                                          ; $5f98: $d9


    add hl, hl                                    ; $5f99: $29
    ret c                                         ; $5f9a: $d8

    jr z, jr_07e_5f76                             ; $5f9b: $28 $d9

jr_07e_5f9d:
    add hl, hl                                    ; $5f9d: $29
    ld e, c                                       ; $5f9e: $59
    reti                                          ; $5f9f: $d9


    ld e, c                                       ; $5fa0: $59
    sbc b                                         ; $5fa1: $98
    reti                                          ; $5fa2: $d9


    sbc c                                         ; $5fa3: $99
    ret                                           ; $5fa4: $c9


    reti                                          ; $5fa5: $d9


    ret                                           ; $5fa6: $c9


    ldh [$28], a                                  ; $5fa7: $e0 $28
    reti                                          ; $5fa9: $d9


    add hl, hl                                    ; $5faa: $29
    ld a, c                                       ; $5fab: $79
    reti                                          ; $5fac: $d9


    ld a, c                                       ; $5fad: $79
    cp b                                          ; $5fae: $b8

jr_07e_5faf:
    reti                                          ; $5faf: $d9


    cp c                                          ; $5fb0: $b9
    rst $10                                       ; $5fb1: $d7
    add hl, hl                                    ; $5fb2: $29
    reti                                          ; $5fb3: $d9


    add hl, hl                                    ; $5fb4: $29
    ret c                                         ; $5fb5: $d8

    cp b                                          ; $5fb6: $b8
    reti                                          ; $5fb7: $d9


    cp c                                          ; $5fb8: $b9
    ld a, c                                       ; $5fb9: $79
    reti                                          ; $5fba: $d9


    ld a, c                                       ; $5fbb: $79
    jr z, jr_07e_5f97                             ; $5fbc: $28 $d9

    add hl, hl                                    ; $5fbe: $29
    ld a, c                                       ; $5fbf: $79

jr_07e_5fc0:
    reti                                          ; $5fc0: $d9


    ld a, c                                       ; $5fc1: $79
    jr z, jr_07e_5f9d                             ; $5fc2: $28 $d9

    add hl, hl                                    ; $5fc4: $29
    ld e, c                                       ; $5fc5: $59
    reti                                          ; $5fc6: $d9


    ld e, c                                       ; $5fc7: $59
    sbc b                                         ; $5fc8: $98
    reti                                          ; $5fc9: $d9


jr_07e_5fca:
    sbc c                                         ; $5fca: $99
    ret                                           ; $5fcb: $c9


    reti                                          ; $5fcc: $d9


    ret                                           ; $5fcd: $c9


    sbc b                                         ; $5fce: $98
    reti                                          ; $5fcf: $d9


    sbc c                                         ; $5fd0: $99

jr_07e_5fd1:
    ld e, c                                       ; $5fd1: $59
    reti                                          ; $5fd2: $d9


    ld e, c                                       ; $5fd3: $59
    jr z, jr_07e_5faf                             ; $5fd4: $28 $d9

    add hl, hl                                    ; $5fd6: $29
    ld e, c                                       ; $5fd7: $59
    reti                                          ; $5fd8: $d9


    ld e, c                                       ; $5fd9: $59
    sbc $d3                                       ; $5fda: $de $d3
    rst $18                                       ; $5fdc: $df
    ld [bc], a                                    ; $5fdd: $02
    xor b                                         ; $5fde: $a8
    reti                                          ; $5fdf: $d9


    xor c                                         ; $5fe0: $a9
    ld e, c                                       ; $5fe1: $59
    reti                                          ; $5fe2: $d9


    ld e, c                                       ; $5fe3: $59
    rst $10                                       ; $5fe4: $d7
    jr z, jr_07e_5fc0                             ; $5fe5: $28 $d9

    add hl, hl                                    ; $5fe7: $29
    ret c                                         ; $5fe8: $d8

    ld e, c                                       ; $5fe9: $59
    reti                                          ; $5fea: $d9


    ld e, c                                       ; $5feb: $59
    ldh [$e3], a                                  ; $5fec: $e0 $e3
    db $d3                                        ; $5fee: $d3
    jr c, jr_07e_5fca                             ; $5fef: $38 $d9

    add hl, sp                                    ; $5ff1: $39
    xor c                                         ; $5ff2: $a9
    reti                                          ; $5ff3: $d9


    xor c                                         ; $5ff4: $a9
    rst $10                                       ; $5ff5: $d7
    jr c, jr_07e_5fd1                             ; $5ff6: $38 $d9

    add hl, sp                                    ; $5ff8: $39
    ret c                                         ; $5ff9: $d8

    ld a, c                                       ; $5ffa: $79
    reti                                          ; $5ffb: $d9


    ld a, c                                       ; $5ffc: $79
    xor b                                         ; $5ffd: $a8
    reti                                          ; $5ffe: $d9


    xor c                                         ; $5fff: $a9
    rst $10                                       ; $6000: $d7
    add hl, sp                                    ; $6001: $39
    reti                                          ; $6002: $d9


    add hl, sp                                    ; $6003: $39
    ret c                                         ; $6004: $d8

    xor b                                         ; $6005: $a8
    reti                                          ; $6006: $d9


    xor c                                         ; $6007: $a9
    ld a, c                                       ; $6008: $79
    reti                                          ; $6009: $d9


    ld a, c                                       ; $600a: $79
    db $e3                                        ; $600b: $e3
    ret nc                                        ; $600c: $d0

    ld bc, $11dc                                  ; $600d: $01 $dc $11
    rst $20                                       ; $6010: $e7
    add hl, bc                                    ; $6011: $09
    and $20                                       ; $6012: $e6 $20
    add sp, $07                                   ; $6014: $e8 $07
    pop de                                        ; $6016: $d1
    rst $18                                       ; $6017: $df
    ld [bc], a                                    ; $6018: $02
    ld [$0909], sp                                ; $6019: $08 $09 $09
    add hl, bc                                    ; $601c: $09
    ld [$0909], sp                                ; $601d: $08 $09 $09
    add hl, bc                                    ; $6020: $09
    ldh [$dd], a                                  ; $6021: $e0 $dd
    rst $18                                       ; $6023: $df
    inc bc                                        ; $6024: $03
    ld e, b                                       ; $6025: $58
    reti                                          ; $6026: $d9


    ld e, c                                       ; $6027: $59
    reti                                          ; $6028: $d9


    ld e, c                                       ; $6029: $59
    reti                                          ; $602a: $d9


    ld e, c                                       ; $602b: $59
    reti                                          ; $602c: $d9


jr_07e_602d:
    ld e, b                                       ; $602d: $58
    reti                                          ; $602e: $d9


    ld e, c                                       ; $602f: $59
    ld e, c                                       ; $6030: $59

Jump_07e_6031:
    reti                                          ; $6031: $d9


    ld e, c                                       ; $6032: $59
    ldh [$d7], a                                  ; $6033: $e0 $d7
    ld e, b                                       ; $6035: $58
    reti                                          ; $6036: $d9


    ld e, c                                       ; $6037: $59
    reti                                          ; $6038: $d9


    ld e, c                                       ; $6039: $59
    ret c                                         ; $603a: $d8

    ret                                           ; $603b: $c9


jr_07e_603c:
    reti                                          ; $603c: $d9


    ret z                                         ; $603d: $c8

    reti                                          ; $603e: $d9


    ret                                           ; $603f: $c9


    ld e, c                                       ; $6040: $59
    reti                                          ; $6041: $d9


    ld e, c                                       ; $6042: $59
    xor b                                         ; $6043: $a8

jr_07e_6044:
    reti                                          ; $6044: $d9


    xor c                                         ; $6045: $a9
    reti                                          ; $6046: $d9


    xor c                                         ; $6047: $a9
    reti                                          ; $6048: $d9


    xor c                                         ; $6049: $a9
    xor b                                         ; $604a: $a8

jr_07e_604b:
    reti                                          ; $604b: $d9


    xor c                                         ; $604c: $a9
    reti                                          ; $604d: $d9


    xor c                                         ; $604e: $a9
    reti                                          ; $604f: $d9


    xor c                                         ; $6050: $a9
    rst $10                                       ; $6051: $d7

jr_07e_6052:
    jr c, jr_07e_602d                             ; $6052: $38 $d9

    add hl, sp                                    ; $6054: $39
    reti                                          ; $6055: $d9


    add hl, sp                                    ; $6056: $39
    reti                                          ; $6057: $d9


    add hl, sp                                    ; $6058: $39
    jr c, @-$25                                   ; $6059: $38 $d9

    add hl, sp                                    ; $605b: $39
    reti                                          ; $605c: $d9


    add hl, sp                                    ; $605d: $39
    reti                                          ; $605e: $d9


    add hl, sp                                    ; $605f: $39
    ret c                                         ; $6060: $d8

    jr c, jr_07e_603c                             ; $6061: $38 $d9

    add hl, sp                                    ; $6063: $39
    reti                                          ; $6064: $d9


    add hl, sp                                    ; $6065: $39
    reti                                          ; $6066: $d9


    add hl, sp                                    ; $6067: $39
    reti                                          ; $6068: $d9


    jr c, jr_07e_6044                             ; $6069: $38 $d9

    add hl, sp                                    ; $606b: $39
    add hl, sp                                    ; $606c: $39
    reti                                          ; $606d: $d9


    add hl, sp                                    ; $606e: $39
    reti                                          ; $606f: $d9


    jr c, jr_07e_604b                             ; $6070: $38 $d9

    add hl, sp                                    ; $6072: $39
    reti                                          ; $6073: $d9


    add hl, sp                                    ; $6074: $39
    reti                                          ; $6075: $d9


    add hl, sp                                    ; $6076: $39
    jr c, jr_07e_6052                             ; $6077: $38 $d9

    add hl, sp                                    ; $6079: $39
    reti                                          ; $607a: $d9


    add hl, sp                                    ; $607b: $39
    reti                                          ; $607c: $d9


    add hl, sp                                    ; $607d: $39
    ret z                                         ; $607e: $c8

    reti                                          ; $607f: $d9


    ret                                           ; $6080: $c9


    reti                                          ; $6081: $d9


    ret                                           ; $6082: $c9


    reti                                          ; $6083: $d9


    ret                                           ; $6084: $c9


    reti                                          ; $6085: $d9


    ret z                                         ; $6086: $c8

    reti                                          ; $6087: $d9


    ret                                           ; $6088: $c9


    ret                                           ; $6089: $c9


    reti                                          ; $608a: $d9


    ret                                           ; $608b: $c9


    ret z                                         ; $608c: $c8

    reti                                          ; $608d: $d9


    ret                                           ; $608e: $c9


    reti                                          ; $608f: $d9


    ret                                           ; $6090: $c9


    reti                                          ; $6091: $d9


    ret                                           ; $6092: $c9


jr_07e_6093:
    reti                                          ; $6093: $d9


    ret z                                         ; $6094: $c8

    reti                                          ; $6095: $d9


    ret                                           ; $6096: $c9


    reti                                          ; $6097: $d9


    ret                                           ; $6098: $c9


    reti                                          ; $6099: $d9


    ret                                           ; $609a: $c9


jr_07e_609b:
    xor b                                         ; $609b: $a8
    reti                                          ; $609c: $d9


    xor c                                         ; $609d: $a9
    reti                                          ; $609e: $d9


    xor c                                         ; $609f: $a9
    reti                                          ; $60a0: $d9


    xor c                                         ; $60a1: $a9
    reti                                          ; $60a2: $d9


    xor b                                         ; $60a3: $a8
    reti                                          ; $60a4: $d9


    xor c                                         ; $60a5: $a9
    xor c                                         ; $60a6: $a9
    reti                                          ; $60a7: $d9


    xor c                                         ; $60a8: $a9
    rst $10                                       ; $60a9: $d7
    xor b                                         ; $60aa: $a8
    reti                                          ; $60ab: $d9


    xor c                                         ; $60ac: $a9
    reti                                          ; $60ad: $d9


    xor c                                         ; $60ae: $a9
    ld e, c                                       ; $60af: $59
    reti                                          ; $60b0: $d9


    ld e, b                                       ; $60b1: $58
    reti                                          ; $60b2: $d9


    ld e, c                                       ; $60b3: $59
    xor c                                         ; $60b4: $a9
    reti                                          ; $60b5: $d9


    xor c                                         ; $60b6: $a9
    ret c                                         ; $60b7: $d8

    jr c, jr_07e_6093                             ; $60b8: $38 $d9

    add hl, sp                                    ; $60ba: $39
    reti                                          ; $60bb: $d9


    add hl, sp                                    ; $60bc: $39
    reti                                          ; $60bd: $d9


    add hl, sp                                    ; $60be: $39
    reti                                          ; $60bf: $d9


    jr c, jr_07e_609b                             ; $60c0: $38 $d9

    add hl, sp                                    ; $60c2: $39
    add hl, sp                                    ; $60c3: $39
    reti                                          ; $60c4: $d9


    add hl, sp                                    ; $60c5: $39
    ld e, b                                       ; $60c6: $58
    reti                                          ; $60c7: $d9


    ld e, c                                       ; $60c8: $59
    reti                                          ; $60c9: $d9


    ld e, c                                       ; $60ca: $59
    ret                                           ; $60cb: $c9


jr_07e_60cc:
    reti                                          ; $60cc: $d9


    ret z                                         ; $60cd: $c8

    reti                                          ; $60ce: $d9


    ret                                           ; $60cf: $c9


    rst $10                                       ; $60d0: $d7
    ld e, c                                       ; $60d1: $59
    reti                                          ; $60d2: $d9


    ld e, c                                       ; $60d3: $59

jr_07e_60d4:
    ret c                                         ; $60d4: $d8

    xor b                                         ; $60d5: $a8
    reti                                          ; $60d6: $d9


    xor c                                         ; $60d7: $a9
    reti                                          ; $60d8: $d9


    xor c                                         ; $60d9: $a9

jr_07e_60da:
    reti                                          ; $60da: $d9


    xor c                                         ; $60db: $a9
    reti                                          ; $60dc: $d9


    xor b                                         ; $60dd: $a8
    reti                                          ; $60de: $d9


    xor c                                         ; $60df: $a9
    xor c                                         ; $60e0: $a9
    reti                                          ; $60e1: $d9


jr_07e_60e2:
    xor c                                         ; $60e2: $a9
    xor b                                         ; $60e3: $a8
    reti                                          ; $60e4: $d9


    xor c                                         ; $60e5: $a9
    reti                                          ; $60e6: $d9


    xor c                                         ; $60e7: $a9
    ld e, c                                       ; $60e8: $59
    reti                                          ; $60e9: $d9


    ld e, b                                       ; $60ea: $58
    reti                                          ; $60eb: $d9


    ld e, c                                       ; $60ec: $59
    xor c                                         ; $60ed: $a9
    reti                                          ; $60ee: $d9


    xor c                                         ; $60ef: $a9
    rst $10                                       ; $60f0: $d7
    jr c, jr_07e_60cc                             ; $60f1: $38 $d9

    add hl, sp                                    ; $60f3: $39
    reti                                          ; $60f4: $d9


    add hl, sp                                    ; $60f5: $39
    reti                                          ; $60f6: $d9


    add hl, sp                                    ; $60f7: $39
    reti                                          ; $60f8: $d9


    jr c, jr_07e_60d4                             ; $60f9: $38 $d9

    add hl, sp                                    ; $60fb: $39
    add hl, sp                                    ; $60fc: $39
    reti                                          ; $60fd: $d9


    add hl, sp                                    ; $60fe: $39
    jr c, jr_07e_60da                             ; $60ff: $38 $d9

    add hl, sp                                    ; $6101: $39
    reti                                          ; $6102: $d9


    add hl, sp                                    ; $6103: $39
    ret c                                         ; $6104: $d8

    add hl, sp                                    ; $6105: $39
    reti                                          ; $6106: $d9


    jr c, jr_07e_60e2                             ; $6107: $38 $d9

    add hl, sp                                    ; $6109: $39
    rst $10                                       ; $610a: $d7
    add hl, sp                                    ; $610b: $39
    reti                                          ; $610c: $d9


    add hl, sp                                    ; $610d: $39
    ret c                                         ; $610e: $d8

    xor b                                         ; $610f: $a8
    reti                                          ; $6110: $d9


    xor c                                         ; $6111: $a9
    reti                                          ; $6112: $d9


    xor c                                         ; $6113: $a9
    reti                                          ; $6114: $d9


    xor c                                         ; $6115: $a9
    reti                                          ; $6116: $d9


jr_07e_6117:
    xor b                                         ; $6117: $a8
    reti                                          ; $6118: $d9


    xor c                                         ; $6119: $a9
    xor c                                         ; $611a: $a9
    reti                                          ; $611b: $d9


    xor c                                         ; $611c: $a9
    rst $10                                       ; $611d: $d7
    xor b                                         ; $611e: $a8

jr_07e_611f:
    reti                                          ; $611f: $d9


    xor c                                         ; $6120: $a9
    reti                                          ; $6121: $d9


    xor c                                         ; $6122: $a9
    reti                                          ; $6123: $d9


    xor c                                         ; $6124: $a9
    ret c                                         ; $6125: $d8

    xor b                                         ; $6126: $a8
    reti                                          ; $6127: $d9


    xor c                                         ; $6128: $a9
    reti                                          ; $6129: $d9


    xor c                                         ; $612a: $a9
    reti                                          ; $612b: $d9


    xor c                                         ; $612c: $a9
    jr c, @-$25                                   ; $612d: $38 $d9

    add hl, sp                                    ; $612f: $39
    reti                                          ; $6130: $d9


    add hl, sp                                    ; $6131: $39
    xor c                                         ; $6132: $a9
    reti                                          ; $6133: $d9


    xor b                                         ; $6134: $a8
    reti                                          ; $6135: $d9


    xor c                                         ; $6136: $a9
    rst $10                                       ; $6137: $d7
    add hl, sp                                    ; $6138: $39
    reti                                          ; $6139: $d9


    add hl, sp                                    ; $613a: $39
    ret c                                         ; $613b: $d8

    jr c, jr_07e_6117                             ; $613c: $38 $d9

    add hl, sp                                    ; $613e: $39
    reti                                          ; $613f: $d9


    add hl, sp                                    ; $6140: $39

jr_07e_6141:
    reti                                          ; $6141: $d9


    add hl, sp                                    ; $6142: $39
    reti                                          ; $6143: $d9


    jr c, jr_07e_611f                             ; $6144: $38 $d9

    add hl, sp                                    ; $6146: $39
    add hl, sp                                    ; $6147: $39
    reti                                          ; $6148: $d9


jr_07e_6149:
    add hl, sp                                    ; $6149: $39
    xor b                                         ; $614a: $a8
    reti                                          ; $614b: $d9


    xor c                                         ; $614c: $a9
    reti                                          ; $614d: $d9


    xor c                                         ; $614e: $a9
    reti                                          ; $614f: $d9


jr_07e_6150:
    xor c                                         ; $6150: $a9
    reti                                          ; $6151: $d9


    xor b                                         ; $6152: $a8
    reti                                          ; $6153: $d9


    xor c                                         ; $6154: $a9
    xor c                                         ; $6155: $a9
    reti                                          ; $6156: $d9


    xor c                                         ; $6157: $a9

jr_07e_6158:
    xor b                                         ; $6158: $a8
    reti                                          ; $6159: $d9


    xor c                                         ; $615a: $a9
    reti                                          ; $615b: $d9


    xor c                                         ; $615c: $a9
    reti                                          ; $615d: $d9


jr_07e_615e:
    xor c                                         ; $615e: $a9
    xor b                                         ; $615f: $a8
    reti                                          ; $6160: $d9


    xor c                                         ; $6161: $a9
    reti                                          ; $6162: $d9


    xor c                                         ; $6163: $a9
    reti                                          ; $6164: $d9


    xor c                                         ; $6165: $a9
    jr c, jr_07e_6141                             ; $6166: $38 $d9

    add hl, sp                                    ; $6168: $39
    reti                                          ; $6169: $d9


    add hl, sp                                    ; $616a: $39
    reti                                          ; $616b: $d9


    add hl, sp                                    ; $616c: $39

jr_07e_616d:
    reti                                          ; $616d: $d9


    jr c, jr_07e_6149                             ; $616e: $38 $d9

    add hl, sp                                    ; $6170: $39
    add hl, sp                                    ; $6171: $39
    reti                                          ; $6172: $d9


    add hl, sp                                    ; $6173: $39
    rst $10                                       ; $6174: $d7
    jr z, jr_07e_6150                             ; $6175: $28 $d9

    add hl, hl                                    ; $6177: $29
    reti                                          ; $6178: $d9


    add hl, hl                                    ; $6179: $29
    reti                                          ; $617a: $d9


    add hl, hl                                    ; $617b: $29
    reti                                          ; $617c: $d9


    jr z, jr_07e_6158                             ; $617d: $28 $d9

    add hl, hl                                    ; $617f: $29
    add hl, hl                                    ; $6180: $29
    reti                                          ; $6181: $d9


    add hl, hl                                    ; $6182: $29
    jr c, jr_07e_615e                             ; $6183: $38 $d9

    add hl, sp                                    ; $6185: $39
    reti                                          ; $6186: $d9


    add hl, sp                                    ; $6187: $39
    ret c                                         ; $6188: $d8

    xor c                                         ; $6189: $a9
    reti                                          ; $618a: $d9


    xor b                                         ; $618b: $a8
    reti                                          ; $618c: $d9


    xor c                                         ; $618d: $a9
    rst $10                                       ; $618e: $d7
    add hl, sp                                    ; $618f: $39
    reti                                          ; $6190: $d9


    add hl, sp                                    ; $6191: $39
    jr z, jr_07e_616d                             ; $6192: $28 $d9

    add hl, hl                                    ; $6194: $29
    reti                                          ; $6195: $d9


    add hl, hl                                    ; $6196: $29
    ret c                                         ; $6197: $d8

    sbc c                                         ; $6198: $99
    reti                                          ; $6199: $d9


    sbc b                                         ; $619a: $98
    reti                                          ; $619b: $d9


    sbc c                                         ; $619c: $99
    rst $10                                       ; $619d: $d7
    add hl, hl                                    ; $619e: $29
    reti                                          ; $619f: $d9


    add hl, hl                                    ; $61a0: $29
    ret c                                         ; $61a1: $d8

    ld a, b                                       ; $61a2: $78
    reti                                          ; $61a3: $d9


    ld a, c                                       ; $61a4: $79
    reti                                          ; $61a5: $d9


    ld a, c                                       ; $61a6: $79
    reti                                          ; $61a7: $d9


    ld a, c                                       ; $61a8: $79
    reti                                          ; $61a9: $d9


    ld a, b                                       ; $61aa: $78
    reti                                          ; $61ab: $d9


    ld a, c                                       ; $61ac: $79
    ld a, c                                       ; $61ad: $79
    reti                                          ; $61ae: $d9


    ld a, c                                       ; $61af: $79
    rst $10                                       ; $61b0: $d7
    ld a, b                                       ; $61b1: $78
    reti                                          ; $61b2: $d9


    ld a, c                                       ; $61b3: $79
    reti                                          ; $61b4: $d9


    ld a, c                                       ; $61b5: $79
    add hl, hl                                    ; $61b6: $29
    reti                                          ; $61b7: $d9


    jr z, @-$25                                   ; $61b8: $28 $d9

    add hl, hl                                    ; $61ba: $29
    ret c                                         ; $61bb: $d8

    ld a, c                                       ; $61bc: $79
    reti                                          ; $61bd: $d9


    ld a, c                                       ; $61be: $79
    rst $10                                       ; $61bf: $d7
    ld e, b                                       ; $61c0: $58
    reti                                          ; $61c1: $d9


    ld e, c                                       ; $61c2: $59
    reti                                          ; $61c3: $d9


    ld e, c                                       ; $61c4: $59
    reti                                          ; $61c5: $d9


    ld e, c                                       ; $61c6: $59
    reti                                          ; $61c7: $d9


    ld e, b                                       ; $61c8: $58
    reti                                          ; $61c9: $d9


    ld e, c                                       ; $61ca: $59
    ld e, c                                       ; $61cb: $59
    reti                                          ; $61cc: $d9


    ld e, c                                       ; $61cd: $59
    ret c                                         ; $61ce: $d8

    ret z                                         ; $61cf: $c8

    reti                                          ; $61d0: $d9


    ret                                           ; $61d1: $c9


    reti                                          ; $61d2: $d9


    ret                                           ; $61d3: $c9


    rst $10                                       ; $61d4: $d7
    ld e, c                                       ; $61d5: $59
    reti                                          ; $61d6: $d9


    ld e, b                                       ; $61d7: $58
    reti                                          ; $61d8: $d9


    ld e, c                                       ; $61d9: $59
    ret c                                         ; $61da: $d8

    ld e, c                                       ; $61db: $59
    reti                                          ; $61dc: $d9


    ld e, c                                       ; $61dd: $59
    sbc $d0                                       ; $61de: $de $d0
    ld bc, $18d1                                  ; $61e0: $01 $d1 $18
    add hl, bc                                    ; $61e3: $09
    cp a                                          ; $61e4: $bf
    inc bc                                        ; $61e5: $03
    ld [$af09], sp                                ; $61e6: $08 $09 $af
    inc bc                                        ; $61e9: $03
    ld [$d709], sp                                ; $61ea: $08 $09 $d7
    ld e, a                                       ; $61ed: $5f
    inc bc                                        ; $61ee: $03
    ret c                                         ; $61ef: $d8

    cp a                                          ; $61f0: $bf
    ld [bc], a                                    ; $61f1: $02
    xor a                                         ; $61f2: $af
    inc bc                                        ; $61f3: $03
    db $dd                                        ; $61f4: $dd
    rst $18                                       ; $61f5: $df
    ld [bc], a                                    ; $61f6: $02
    ld [c], a                                     ; $61f7: $e2
    dec hl                                        ; $61f8: $2b
    ld h, d                                       ; $61f9: $62
    ld [c], a                                     ; $61fa: $e2
    inc a                                         ; $61fb: $3c
    ld h, d                                       ; $61fc: $62
    ld [c], a                                     ; $61fd: $e2
    dec hl                                        ; $61fe: $2b
    ld h, d                                       ; $61ff: $62
    ld [c], a                                     ; $6200: $e2
    ld c, l                                       ; $6201: $4d
    ld h, d                                       ; $6202: $62
    ldh [$d0], a                                  ; $6203: $e0 $d0
    daa                                           ; $6205: $27
    ret nz                                        ; $6206: $c0

    ret nc                                        ; $6207: $d0

    ld bc, $0968                                  ; $6208: $01 $68 $09
    add hl, de                                    ; $620b: $19
    add hl, bc                                    ; $620c: $09
    jr c, jr_07e_6218                             ; $620d: $38 $09

    add hl, bc                                    ; $620f: $09
    add hl, bc                                    ; $6210: $09
    adc b                                         ; $6211: $88
    add hl, bc                                    ; $6212: $09
    add hl, de                                    ; $6213: $19
    add hl, bc                                    ; $6214: $09
    ld [c], a                                     ; $6215: $e2
    inc a                                         ; $6216: $3c
    ld h, d                                       ; $6217: $62

jr_07e_6218:
    ld [c], a                                     ; $6218: $e2
    dec hl                                        ; $6219: $2b
    ld h, d                                       ; $621a: $62
    ld [c], a                                     ; $621b: $e2
    ld c, l                                       ; $621c: $4d
    ld h, d                                       ; $621d: $62
    ld [c], a                                     ; $621e: $e2
    dec hl                                        ; $621f: $2b
    ld h, d                                       ; $6220: $62
    ld [c], a                                     ; $6221: $e2
    inc a                                         ; $6222: $3c
    ld h, d                                       ; $6223: $62
    ld [c], a                                     ; $6224: $e2
    dec hl                                        ; $6225: $2b
    ld h, d                                       ; $6226: $62
    ld [c], a                                     ; $6227: $e2
    ld c, l                                       ; $6228: $4d
    ld h, d                                       ; $6229: $62
    sbc $18                                       ; $622a: $de $18
    add hl, bc                                    ; $622c: $09
    ld l, c                                       ; $622d: $69
    add hl, bc                                    ; $622e: $09
    adc b                                         ; $622f: $88
    add hl, bc                                    ; $6230: $09
    add hl, de                                    ; $6231: $19
    add hl, bc                                    ; $6232: $09
    jr c, jr_07e_623e                             ; $6233: $38 $09

    add hl, bc                                    ; $6235: $09
    add hl, bc                                    ; $6236: $09
    ld e, b                                       ; $6237: $58
    add hl, bc                                    ; $6238: $09
    add hl, de                                    ; $6239: $19
    add hl, bc                                    ; $623a: $09
    db $e3                                        ; $623b: $e3
    jr jr_07e_6247                                ; $623c: $18 $09

jr_07e_623e:
    ld l, c                                       ; $623e: $69
    add hl, bc                                    ; $623f: $09
    jr jr_07e_624b                                ; $6240: $18 $09

    add hl, de                                    ; $6242: $19
    add hl, bc                                    ; $6243: $09
    jr c, jr_07e_624f                             ; $6244: $38 $09

    add hl, bc                                    ; $6246: $09

jr_07e_6247:
    add hl, bc                                    ; $6247: $09
    adc b                                         ; $6248: $88
    add hl, bc                                    ; $6249: $09
    add hl, de                                    ; $624a: $19

jr_07e_624b:
    add hl, bc                                    ; $624b: $09
    db $e3                                        ; $624c: $e3
    jr jr_07e_6258                                ; $624d: $18 $09

jr_07e_624f:
    ld l, c                                       ; $624f: $69
    add hl, bc                                    ; $6250: $09
    jr c, jr_07e_625c                             ; $6251: $38 $09

    add hl, de                                    ; $6253: $19
    add hl, bc                                    ; $6254: $09
    rst $10                                       ; $6255: $d7
    ld e, b                                       ; $6256: $58
    add hl, bc                                    ; $6257: $09

jr_07e_6258:
    ld e, c                                       ; $6258: $59
    add hl, bc                                    ; $6259: $09
    ret c                                         ; $625a: $d8

    cp b                                          ; $625b: $b8

jr_07e_625c:
    add hl, bc                                    ; $625c: $09
    xor c                                         ; $625d: $a9
    add hl, bc                                    ; $625e: $09
    db $e3                                        ; $625f: $e3
    ret nc                                        ; $6260: $d0

    ld bc, $80e5                                  ; $6261: $01 $e5 $80

jr_07e_6264:
    and $b0                                       ; $6264: $e6 $b0
    call c, $ea11                                 ; $6266: $dc $11 $ea
    dec c                                         ; $6269: $0d
    db $eb                                        ; $626a: $eb
    ld d, $e8                                     ; $626b: $16 $e8
    rlca                                          ; $626d: $07
    db $d3                                        ; $626e: $d3
    adc b                                         ; $626f: $88
    xor c                                         ; $6270: $a9
    adc b                                         ; $6271: $88
    ld a, c                                       ; $6272: $79
    db $dd                                        ; $6273: $dd
    db $d3                                        ; $6274: $d3
    adc b                                         ; $6275: $88
    reti                                          ; $6276: $d9


    adc c                                         ; $6277: $89
    reti                                          ; $6278: $d9


    adc b                                         ; $6279: $88
    reti                                          ; $627a: $d9


    adc c                                         ; $627b: $89
    reti                                          ; $627c: $d9


    adc b                                         ; $627d: $88
    reti                                          ; $627e: $d9


    adc c                                         ; $627f: $89
    reti                                          ; $6280: $d9


    adc b                                         ; $6281: $88
    reti                                          ; $6282: $d9


    adc c                                         ; $6283: $89
    reti                                          ; $6284: $d9


    adc b                                         ; $6285: $88
    reti                                          ; $6286: $d9


    adc c                                         ; $6287: $89
    rst $10                                       ; $6288: $d7
    jr jr_07e_6264                                ; $6289: $18 $d9

    add hl, de                                    ; $628b: $19
    ld e, b                                       ; $628c: $58
    reti                                          ; $628d: $d9


    ld e, c                                       ; $628e: $59
    adc b                                         ; $628f: $88
    reti                                          ; $6290: $d9


    adc c                                         ; $6291: $89
    reti                                          ; $6292: $d9


    adc b                                         ; $6293: $88
    reti                                          ; $6294: $d9


    adc c                                         ; $6295: $89
    reti                                          ; $6296: $d9


    adc b                                         ; $6297: $88
    reti                                          ; $6298: $d9


    adc c                                         ; $6299: $89
    reti                                          ; $629a: $d9


    adc b                                         ; $629b: $88
    reti                                          ; $629c: $d9


    adc c                                         ; $629d: $89
    reti                                          ; $629e: $d9


    adc b                                         ; $629f: $88

jr_07e_62a0:
    reti                                          ; $62a0: $d9


    adc c                                         ; $62a1: $89
    ld l, b                                       ; $62a2: $68
    reti                                          ; $62a3: $d9


    ld l, c                                       ; $62a4: $69
    reti                                          ; $62a5: $d9


    ld l, b                                       ; $62a6: $68
    reti                                          ; $62a7: $d9


    ld l, c                                       ; $62a8: $69
    ret c                                         ; $62a9: $d8

    ld l, b                                       ; $62aa: $68
    adc c                                         ; $62ab: $89
    ld l, b                                       ; $62ac: $68
    ld e, c                                       ; $62ad: $59
    ld l, b                                       ; $62ae: $68
    reti                                          ; $62af: $d9


    ld l, c                                       ; $62b0: $69
    reti                                          ; $62b1: $d9


    ld l, b                                       ; $62b2: $68
    reti                                          ; $62b3: $d9


jr_07e_62b4:
    ld l, c                                       ; $62b4: $69
    reti                                          ; $62b5: $d9


    ld l, b                                       ; $62b6: $68
    reti                                          ; $62b7: $d9


jr_07e_62b8:
    ld l, c                                       ; $62b8: $69
    reti                                          ; $62b9: $d9


    ld l, b                                       ; $62ba: $68
    reti                                          ; $62bb: $d9


jr_07e_62bc:
    ld l, c                                       ; $62bc: $69
    reti                                          ; $62bd: $d9


    ld l, b                                       ; $62be: $68
    reti                                          ; $62bf: $d9


    ld l, c                                       ; $62c0: $69

jr_07e_62c1:
    xor b                                         ; $62c1: $a8
    reti                                          ; $62c2: $d9


    xor c                                         ; $62c3: $a9
    rst $10                                       ; $62c4: $d7
    jr c, jr_07e_62a0                             ; $62c5: $38 $d9

    add hl, sp                                    ; $62c7: $39
    ld l, b                                       ; $62c8: $68
    reti                                          ; $62c9: $d9


    ld l, c                                       ; $62ca: $69
    ld l, b                                       ; $62cb: $68

jr_07e_62cc:
    reti                                          ; $62cc: $d9


    ld l, c                                       ; $62cd: $69
    reti                                          ; $62ce: $d9


    ld l, b                                       ; $62cf: $68
    reti                                          ; $62d0: $d9


    ld l, c                                       ; $62d1: $69
    ld e, b                                       ; $62d2: $58
    reti                                          ; $62d3: $d9


    ld e, c                                       ; $62d4: $59

jr_07e_62d5:
    reti                                          ; $62d5: $d9


    ld e, b                                       ; $62d6: $58
    reti                                          ; $62d7: $d9


jr_07e_62d8:
    ld e, c                                       ; $62d8: $59
    jr c, jr_07e_62b4                             ; $62d9: $38 $d9

    add hl, sp                                    ; $62db: $39
    reti                                          ; $62dc: $d9


    jr c, jr_07e_62b8                             ; $62dd: $38 $d9

    add hl, sp                                    ; $62df: $39
    jr jr_07e_631b                                ; $62e0: $18 $39

    jr jr_07e_62bc                                ; $62e2: $18 $d8

    ret                                           ; $62e4: $c9


    rst $10                                       ; $62e5: $d7
    jr jr_07e_62c1                                ; $62e6: $18 $d9

    add hl, de                                    ; $62e8: $19
    ret c                                         ; $62e9: $d8

    ld l, b                                       ; $62ea: $68
    reti                                          ; $62eb: $d9


jr_07e_62ec:
    ld l, c                                       ; $62ec: $69
    xor b                                         ; $62ed: $a8
    reti                                          ; $62ee: $d9


    xor c                                         ; $62ef: $a9
    rst $10                                       ; $62f0: $d7
    jr jr_07e_62cc                                ; $62f1: $18 $d9

    add hl, de                                    ; $62f3: $19
    ld l, b                                       ; $62f4: $68
    reti                                          ; $62f5: $d9


    ld l, c                                       ; $62f6: $69
    ld e, b                                       ; $62f7: $58
    reti                                          ; $62f8: $d9


    ld e, c                                       ; $62f9: $59

jr_07e_62fa:
    jr c, jr_07e_62d5                             ; $62fa: $38 $d9

    add hl, sp                                    ; $62fc: $39
    jr jr_07e_62d8                                ; $62fd: $18 $d9

    add hl, de                                    ; $62ff: $19
    ret c                                         ; $6300: $d8

    ret z                                         ; $6301: $c8

jr_07e_6302:
    reti                                          ; $6302: $d9


    ret                                           ; $6303: $c9


    reti                                          ; $6304: $d9


    ret z                                         ; $6305: $c8

    reti                                          ; $6306: $d9


    ret                                           ; $6307: $c9


    reti                                          ; $6308: $d9


    ret z                                         ; $6309: $c8

    reti                                          ; $630a: $d9


    ret                                           ; $630b: $c9


    reti                                          ; $630c: $d9


    ret z                                         ; $630d: $c8

    reti                                          ; $630e: $d9


    ret                                           ; $630f: $c9


    rst $10                                       ; $6310: $d7

jr_07e_6311:
    jr jr_07e_62ec                                ; $6311: $18 $d9

    add hl, de                                    ; $6313: $19

jr_07e_6314:
    ret c                                         ; $6314: $d8

    ret z                                         ; $6315: $c8

    reti                                          ; $6316: $d9


    ret                                           ; $6317: $c9


jr_07e_6318:
    xor b                                         ; $6318: $a8
    reti                                          ; $6319: $d9


    xor c                                         ; $631a: $a9

jr_07e_631b:
    ret z                                         ; $631b: $c8

jr_07e_631c:
    reti                                          ; $631c: $d9


    ret                                           ; $631d: $c9


    rst $10                                       ; $631e: $d7
    jr jr_07e_62fa                                ; $631f: $18 $d9

    add hl, de                                    ; $6321: $19
    reti                                          ; $6322: $d9


    jr @-$25                                      ; $6323: $18 $d9

    add hl, de                                    ; $6325: $19
    reti                                          ; $6326: $d9


    jr jr_07e_6302                                ; $6327: $18 $d9

    add hl, de                                    ; $6329: $19
    xor b                                         ; $632a: $a8
    reti                                          ; $632b: $d9


    xor c                                         ; $632c: $a9
    adc b                                         ; $632d: $88
    reti                                          ; $632e: $d9


    adc c                                         ; $632f: $89
    ld l, b                                       ; $6330: $68
    reti                                          ; $6331: $d9


    ld l, c                                       ; $6332: $69
    ld e, b                                       ; $6333: $58
    reti                                          ; $6334: $d9


    ld e, c                                       ; $6335: $59
    jr c, jr_07e_6311                             ; $6336: $38 $d9

    add hl, sp                                    ; $6338: $39
    jr c, jr_07e_6314                             ; $6339: $38 $d9

    add hl, sp                                    ; $633b: $39
    reti                                          ; $633c: $d9


    jr c, jr_07e_6318                             ; $633d: $38 $d9

    add hl, sp                                    ; $633f: $39
    reti                                          ; $6340: $d9


    jr c, jr_07e_631c                             ; $6341: $38 $d9

    add hl, sp                                    ; $6343: $39
    reti                                          ; $6344: $d9


    jr c, @-$25                                   ; $6345: $38 $d9

    add hl, sp                                    ; $6347: $39
    reti                                          ; $6348: $d9


    jr c, @-$25                                   ; $6349: $38 $d9

    add hl, sp                                    ; $634b: $39
    reti                                          ; $634c: $d9


    jr c, @-$25                                   ; $634d: $38 $d9

    add hl, sp                                    ; $634f: $39
    ret c                                         ; $6350: $d8

    adc b                                         ; $6351: $88
    xor c                                         ; $6352: $a9
    adc b                                         ; $6353: $88
    ld a, c                                       ; $6354: $79
    sbc $ff                                       ; $6355: $de $ff
    ret nc                                        ; $6357: $d0

    ld bc, $80e5                                  ; $6358: $01 $e5 $80
    ld [$eb0d], a                                 ; $635b: $ea $0d $eb

jr_07e_635e:
    ld d, $e6                                     ; $635e: $16 $e6
    sub b                                         ; $6360: $90
    call c, $e811                                 ; $6361: $dc $11 $e8
    rlca                                          ; $6364: $07
    db $d3                                        ; $6365: $d3
    ld e, b                                       ; $6366: $58
    ld l, c                                       ; $6367: $69
    ld e, b                                       ; $6368: $58
    ld c, c                                       ; $6369: $49
    db $dd                                        ; $636a: $dd
    db $d3                                        ; $636b: $d3
    ld e, b                                       ; $636c: $58
    reti                                          ; $636d: $d9


    ld e, c                                       ; $636e: $59
    reti                                          ; $636f: $d9


    ld e, b                                       ; $6370: $58
    reti                                          ; $6371: $d9


    ld e, c                                       ; $6372: $59

jr_07e_6373:
    reti                                          ; $6373: $d9


    ld e, b                                       ; $6374: $58
    reti                                          ; $6375: $d9


    ld e, c                                       ; $6376: $59

jr_07e_6377:
    reti                                          ; $6377: $d9


    ld e, b                                       ; $6378: $58
    reti                                          ; $6379: $d9


    ld e, c                                       ; $637a: $59
    reti                                          ; $637b: $d9


    ld e, b                                       ; $637c: $58
    reti                                          ; $637d: $d9


    ld e, c                                       ; $637e: $59

jr_07e_637f:
    adc b                                         ; $637f: $88
    reti                                          ; $6380: $d9


    adc c                                         ; $6381: $89
    rst $10                                       ; $6382: $d7

jr_07e_6383:
    jr jr_07e_635e                                ; $6383: $18 $d9

    add hl, de                                    ; $6385: $19
    ld e, b                                       ; $6386: $58

jr_07e_6387:
    reti                                          ; $6387: $d9


    ld e, c                                       ; $6388: $59
    ld e, b                                       ; $6389: $58
    reti                                          ; $638a: $d9


jr_07e_638b:
    ld e, c                                       ; $638b: $59
    reti                                          ; $638c: $d9


    ld e, b                                       ; $638d: $58
    reti                                          ; $638e: $d9


jr_07e_638f:
    ld e, c                                       ; $638f: $59
    reti                                          ; $6390: $d9


    ld e, b                                       ; $6391: $58
    reti                                          ; $6392: $d9


    ld e, c                                       ; $6393: $59
    reti                                          ; $6394: $d9


    ld e, b                                       ; $6395: $58
    reti                                          ; $6396: $d9


    ld e, c                                       ; $6397: $59
    jr c, jr_07e_6373                             ; $6398: $38 $d9

    add hl, sp                                    ; $639a: $39
    reti                                          ; $639b: $d9


    jr c, jr_07e_6377                             ; $639c: $38 $d9

    add hl, sp                                    ; $639e: $39
    ret c                                         ; $639f: $d8

    jr c, jr_07e_63fb                             ; $63a0: $38 $59

    jr c, jr_07e_63bd                             ; $63a2: $38 $19

    jr c, jr_07e_637f                             ; $63a4: $38 $d9

    add hl, sp                                    ; $63a6: $39
    reti                                          ; $63a7: $d9


    jr c, jr_07e_6383                             ; $63a8: $38 $d9

    add hl, sp                                    ; $63aa: $39
    reti                                          ; $63ab: $d9


    jr c, jr_07e_6387                             ; $63ac: $38 $d9

    add hl, sp                                    ; $63ae: $39
    reti                                          ; $63af: $d9


    jr c, jr_07e_638b                             ; $63b0: $38 $d9

    add hl, sp                                    ; $63b2: $39
    reti                                          ; $63b3: $d9


    jr c, jr_07e_638f                             ; $63b4: $38 $d9

    add hl, sp                                    ; $63b6: $39
    ld l, b                                       ; $63b7: $68
    reti                                          ; $63b8: $d9


    ld l, c                                       ; $63b9: $69
    xor b                                         ; $63ba: $a8
    reti                                          ; $63bb: $d9


    xor c                                         ; $63bc: $a9

jr_07e_63bd:
    rst $10                                       ; $63bd: $d7
    jr c, @-$25                                   ; $63be: $38 $d9

    add hl, sp                                    ; $63c0: $39
    ret c                                         ; $63c1: $d8

    ret z                                         ; $63c2: $c8

    reti                                          ; $63c3: $d9


    ret                                           ; $63c4: $c9


    reti                                          ; $63c5: $d9


    ret z                                         ; $63c6: $c8

    reti                                          ; $63c7: $d9


    ret                                           ; $63c8: $c9


    ret z                                         ; $63c9: $c8

    reti                                          ; $63ca: $d9


    ret                                           ; $63cb: $c9


    reti                                          ; $63cc: $d9


    ret z                                         ; $63cd: $c8

    reti                                          ; $63ce: $d9


jr_07e_63cf:
    ret                                           ; $63cf: $c9


    ret z                                         ; $63d0: $c8

    reti                                          ; $63d1: $d9


    ret                                           ; $63d2: $c9


jr_07e_63d3:
    reti                                          ; $63d3: $d9


    ret z                                         ; $63d4: $c8

    reti                                          ; $63d5: $d9


    ret                                           ; $63d6: $c9


jr_07e_63d7:
    xor b                                         ; $63d7: $a8
    ret                                           ; $63d8: $c9


    xor b                                         ; $63d9: $a8
    adc c                                         ; $63da: $89

jr_07e_63db:
    xor b                                         ; $63db: $a8
    reti                                          ; $63dc: $d9


    xor c                                         ; $63dd: $a9
    xor b                                         ; $63de: $a8
    reti                                          ; $63df: $d9


    xor c                                         ; $63e0: $a9
    rst $10                                       ; $63e1: $d7
    jr jr_07e_63bd                                ; $63e2: $18 $d9

    add hl, de                                    ; $63e4: $19
    ld l, b                                       ; $63e5: $68
    reti                                          ; $63e6: $d9


    ld l, c                                       ; $63e7: $69
    xor b                                         ; $63e8: $a8
    reti                                          ; $63e9: $d9


    xor c                                         ; $63ea: $a9
    adc b                                         ; $63eb: $88
    reti                                          ; $63ec: $d9


    adc c                                         ; $63ed: $89
    ld l, b                                       ; $63ee: $68
    reti                                          ; $63ef: $d9


    ld l, c                                       ; $63f0: $69
    ld e, b                                       ; $63f1: $58
    reti                                          ; $63f2: $d9


    ld e, c                                       ; $63f3: $59
    jr c, jr_07e_63cf                             ; $63f4: $38 $d9

    add hl, sp                                    ; $63f6: $39
    reti                                          ; $63f7: $d9


    jr c, jr_07e_63d3                             ; $63f8: $38 $d9

    add hl, sp                                    ; $63fa: $39

jr_07e_63fb:
    reti                                          ; $63fb: $d9


    jr c, jr_07e_63d7                             ; $63fc: $38 $d9

    add hl, sp                                    ; $63fe: $39
    reti                                          ; $63ff: $d9


jr_07e_6400:
    jr c, jr_07e_63db                             ; $6400: $38 $d9

    add hl, sp                                    ; $6402: $39
    ret c                                         ; $6403: $d8

    xor b                                         ; $6404: $a8
    reti                                          ; $6405: $d9


    xor c                                         ; $6406: $a9
    adc b                                         ; $6407: $88

jr_07e_6408:
    reti                                          ; $6408: $d9


    adc c                                         ; $6409: $89
    ld e, b                                       ; $640a: $58
    reti                                          ; $640b: $d9


jr_07e_640c:
    ld e, c                                       ; $640c: $59
    adc b                                         ; $640d: $88
    reti                                          ; $640e: $d9


    adc c                                         ; $640f: $89

jr_07e_6410:
    xor b                                         ; $6410: $a8
    reti                                          ; $6411: $d9


    xor c                                         ; $6412: $a9
    reti                                          ; $6413: $d9


jr_07e_6414:
    xor b                                         ; $6414: $a8
    reti                                          ; $6415: $d9


    xor c                                         ; $6416: $a9
    reti                                          ; $6417: $d9


    xor b                                         ; $6418: $a8
    reti                                          ; $6419: $d9


    xor c                                         ; $641a: $a9
    rst $10                                       ; $641b: $d7
    ld l, b                                       ; $641c: $68
    reti                                          ; $641d: $d9


    ld l, c                                       ; $641e: $69
    ld e, b                                       ; $641f: $58
    reti                                          ; $6420: $d9


    ld e, c                                       ; $6421: $59
    jr c, @-$25                                   ; $6422: $38 $d9

    add hl, sp                                    ; $6424: $39
    jr jr_07e_6400                                ; $6425: $18 $d9

    add hl, de                                    ; $6427: $19
    ret c                                         ; $6428: $d8

    ret z                                         ; $6429: $c8

    reti                                          ; $642a: $d9


    ret                                           ; $642b: $c9


    rst $10                                       ; $642c: $d7
    jr jr_07e_6408                                ; $642d: $18 $d9

    add hl, de                                    ; $642f: $19
    reti                                          ; $6430: $d9


    jr jr_07e_640c                                ; $6431: $18 $d9

    add hl, de                                    ; $6433: $19
    reti                                          ; $6434: $d9


    jr jr_07e_6410                                ; $6435: $18 $d9

    add hl, de                                    ; $6437: $19
    reti                                          ; $6438: $d9


    jr jr_07e_6414                                ; $6439: $18 $d9

    add hl, de                                    ; $643b: $19
    ret c                                         ; $643c: $d8

    ret z                                         ; $643d: $c8

    reti                                          ; $643e: $d9


jr_07e_643f:
    ret                                           ; $643f: $c9


    reti                                          ; $6440: $d9


    ret z                                         ; $6441: $c8

    reti                                          ; $6442: $d9


jr_07e_6443:
    ret                                           ; $6443: $c9


    ld e, b                                       ; $6444: $58
    ld l, c                                       ; $6445: $69
    ld e, b                                       ; $6446: $58

jr_07e_6447:
    ld c, c                                       ; $6447: $49
    sbc $ff                                       ; $6448: $de $ff
    ret nc                                        ; $644a: $d0

jr_07e_644b:
    inc de                                        ; $644b: $13
    rst $20                                       ; $644c: $e7
    ld [$40e6], sp                                ; $644d: $08 $e6 $40
    jp hl                                         ; $6450: $e9


    nop                                           ; $6451: $00
    call c, $e811                                 ; $6452: $dc $11 $e8
    ld [$01d3], sp                                ; $6455: $08 $d3 $01
    db $dd                                        ; $6458: $dd
    db $d3                                        ; $6459: $d3
    rla                                           ; $645a: $17
    ret c                                         ; $645b: $d8

    ld h, a                                       ; $645c: $67
    ret nc                                        ; $645d: $d0

    ld bc, $38d7                                  ; $645e: $01 $d7 $38
    reti                                          ; $6461: $d9


    add hl, sp                                    ; $6462: $39
    reti                                          ; $6463: $d9


    jr c, jr_07e_643f                             ; $6464: $38 $d9

    add hl, sp                                    ; $6466: $39
    reti                                          ; $6467: $d9


    jr c, jr_07e_6443                             ; $6468: $38 $d9

    add hl, sp                                    ; $646a: $39
    reti                                          ; $646b: $d9


    jr c, jr_07e_6447                             ; $646c: $38 $d9

    dec [hl]                                      ; $646e: $35
    inc bc                                        ; $646f: $03
    jr c, jr_07e_644b                             ; $6470: $38 $d9

    add hl, sp                                    ; $6472: $39
    reti                                          ; $6473: $d9


    jr c, @-$25                                   ; $6474: $38 $d9

    dec [hl]                                      ; $6476: $35
    inc bc                                        ; $6477: $03
    jr c, @-$25                                   ; $6478: $38 $d9

    add hl, sp                                    ; $647a: $39
    reti                                          ; $647b: $d9


    jr c, @-$25                                   ; $647c: $38 $d9

    add hl, sp                                    ; $647e: $39
    ret nc                                        ; $647f: $d0

    inc de                                        ; $6480: $13
    ret c                                         ; $6481: $d8

    add c                                         ; $6482: $81
    sub c                                         ; $6483: $91
    and e                                         ; $6484: $a3
    ld h, a                                       ; $6485: $67
    add c                                         ; $6486: $81
    sub c                                         ; $6487: $91
    and e                                         ; $6488: $a3
    ret nc                                        ; $6489: $d0

    ld bc, $d968                                  ; $648a: $01 $68 $d9
    ld l, c                                       ; $648d: $69
    reti                                          ; $648e: $d9


    ld l, b                                       ; $648f: $68
    reti                                          ; $6490: $d9


    ld l, c                                       ; $6491: $69
    reti                                          ; $6492: $d9


    ld l, b                                       ; $6493: $68
    reti                                          ; $6494: $d9


    ld h, l                                       ; $6495: $65
    inc bc                                        ; $6496: $03
    ld l, b                                       ; $6497: $68
    reti                                          ; $6498: $d9


    ld h, l                                       ; $6499: $65
    inc bc                                        ; $649a: $03
    ld l, b                                       ; $649b: $68
    reti                                          ; $649c: $d9


    ld l, c                                       ; $649d: $69
    reti                                          ; $649e: $d9


    ld h, h                                       ; $649f: $64
    inc bc                                        ; $64a0: $03
    ld l, c                                       ; $64a1: $69
    reti                                          ; $64a2: $d9


    ld l, b                                       ; $64a3: $68
    reti                                          ; $64a4: $d9


    ld h, l                                       ; $64a5: $65
    inc bc                                        ; $64a6: $03
    ld l, b                                       ; $64a7: $68
    reti                                          ; $64a8: $d9


    ld l, c                                       ; $64a9: $69
    adc b                                         ; $64aa: $88
    reti                                          ; $64ab: $d9


    adc c                                         ; $64ac: $89
    reti                                          ; $64ad: $d9


    adc b                                         ; $64ae: $88
    reti                                          ; $64af: $d9


    adc c                                         ; $64b0: $89
    reti                                          ; $64b1: $d9


    adc b                                         ; $64b2: $88
    reti                                          ; $64b3: $d9


jr_07e_64b4:
    adc c                                         ; $64b4: $89
    rst $10                                       ; $64b5: $d7
    add [hl]                                      ; $64b6: $86
    ld [bc], a                                    ; $64b7: $02

jr_07e_64b8:
    adc c                                         ; $64b8: $89
    ret c                                         ; $64b9: $d8

    adc b                                         ; $64ba: $88
    reti                                          ; $64bb: $d9


jr_07e_64bc:
    adc c                                         ; $64bc: $89
    reti                                          ; $64bd: $d9


    adc b                                         ; $64be: $88
    reti                                          ; $64bf: $d9


jr_07e_64c0:
    adc c                                         ; $64c0: $89
    reti                                          ; $64c1: $d9


    adc b                                         ; $64c2: $88
    reti                                          ; $64c3: $d9


jr_07e_64c4:
    adc c                                         ; $64c4: $89
    reti                                          ; $64c5: $d9


    adc b                                         ; $64c6: $88
    reti                                          ; $64c7: $d9


jr_07e_64c8:
    adc c                                         ; $64c8: $89
    and $20                                       ; $64c9: $e6 $20
    db $dd                                        ; $64cb: $dd

jr_07e_64cc:
    ret nc                                        ; $64cc: $d0

    inc de                                        ; $64cd: $13
    jp nc, $d817                                  ; $64ce: $d2 $17 $d8

    ld h, a                                       ; $64d1: $67
    ret nc                                        ; $64d2: $d0

    ld bc, $38d7                                  ; $64d3: $01 $d7 $38
    reti                                          ; $64d6: $d9


    add hl, sp                                    ; $64d7: $39
    reti                                          ; $64d8: $d9


    jr c, jr_07e_64b4                             ; $64d9: $38 $d9

    add hl, sp                                    ; $64db: $39
    reti                                          ; $64dc: $d9


    jr c, jr_07e_64b8                             ; $64dd: $38 $d9

    add hl, sp                                    ; $64df: $39
    reti                                          ; $64e0: $d9


    jr c, jr_07e_64bc                             ; $64e1: $38 $d9

    dec [hl]                                      ; $64e3: $35
    inc bc                                        ; $64e4: $03
    jr c, jr_07e_64c0                             ; $64e5: $38 $d9

    add hl, sp                                    ; $64e7: $39
    reti                                          ; $64e8: $d9


    jr c, jr_07e_64c4                             ; $64e9: $38 $d9

    dec [hl]                                      ; $64eb: $35
    inc bc                                        ; $64ec: $03
    jr c, jr_07e_64c8                             ; $64ed: $38 $d9

    add hl, sp                                    ; $64ef: $39
    reti                                          ; $64f0: $d9


    jr c, jr_07e_64cc                             ; $64f1: $38 $d9

    add hl, sp                                    ; $64f3: $39
    ret nc                                        ; $64f4: $d0

    inc de                                        ; $64f5: $13
    ret c                                         ; $64f6: $d8

    add c                                         ; $64f7: $81
    sub c                                         ; $64f8: $91
    and e                                         ; $64f9: $a3
    ld h, a                                       ; $64fa: $67
    add c                                         ; $64fb: $81
    sub c                                         ; $64fc: $91
    and e                                         ; $64fd: $a3
    ret nc                                        ; $64fe: $d0

    ld bc, $d968                                  ; $64ff: $01 $68 $d9
    ld l, c                                       ; $6502: $69
    reti                                          ; $6503: $d9


    ld l, b                                       ; $6504: $68
    reti                                          ; $6505: $d9


    ld l, c                                       ; $6506: $69
    reti                                          ; $6507: $d9


    ld l, b                                       ; $6508: $68
    reti                                          ; $6509: $d9


    ld h, l                                       ; $650a: $65
    inc bc                                        ; $650b: $03
    ld l, b                                       ; $650c: $68
    reti                                          ; $650d: $d9


    ld h, l                                       ; $650e: $65
    inc bc                                        ; $650f: $03
    ld l, b                                       ; $6510: $68
    reti                                          ; $6511: $d9


    ld l, c                                       ; $6512: $69
    reti                                          ; $6513: $d9


    ld h, h                                       ; $6514: $64
    inc bc                                        ; $6515: $03
    ld l, c                                       ; $6516: $69
    reti                                          ; $6517: $d9


    ld l, b                                       ; $6518: $68
    reti                                          ; $6519: $d9


    ld h, l                                       ; $651a: $65
    inc bc                                        ; $651b: $03
    ld l, b                                       ; $651c: $68
    reti                                          ; $651d: $d9


    ld l, c                                       ; $651e: $69
    adc b                                         ; $651f: $88
    reti                                          ; $6520: $d9


    adc c                                         ; $6521: $89
    reti                                          ; $6522: $d9


    adc b                                         ; $6523: $88
    reti                                          ; $6524: $d9


    adc c                                         ; $6525: $89

jr_07e_6526:
    reti                                          ; $6526: $d9


    adc b                                         ; $6527: $88
    reti                                          ; $6528: $d9


    adc c                                         ; $6529: $89
    rst $10                                       ; $652a: $d7
    add [hl]                                      ; $652b: $86
    ld [bc], a                                    ; $652c: $02
    adc c                                         ; $652d: $89
    ret c                                         ; $652e: $d8

    adc b                                         ; $652f: $88
    reti                                          ; $6530: $d9


    adc c                                         ; $6531: $89
    reti                                          ; $6532: $d9


    adc b                                         ; $6533: $88
    reti                                          ; $6534: $d9


    adc c                                         ; $6535: $89
    reti                                          ; $6536: $d9


    adc b                                         ; $6537: $88
    reti                                          ; $6538: $d9


    adc c                                         ; $6539: $89
    reti                                          ; $653a: $d9


    adc b                                         ; $653b: $88
    reti                                          ; $653c: $d9


    adc c                                         ; $653d: $89
    sbc $ff                                       ; $653e: $de $ff
    ret nc                                        ; $6540: $d0

    ld bc, $38d1                                  ; $6541: $01 $d1 $38
    add hl, hl                                    ; $6544: $29
    jr z, jr_07e_657f                             ; $6545: $28 $38

    jr nz, jr_07e_6526                            ; $6547: $20 $dd

    ld [c], a                                     ; $6549: $e2
    ld [hl], d                                    ; $654a: $72
    ld h, l                                       ; $654b: $65
    ld [c], a                                     ; $654c: $e2
    ld a, l                                       ; $654d: $7d
    ld h, l                                       ; $654e: $65
    ld [c], a                                     ; $654f: $e2
    ld [hl], d                                    ; $6550: $72
    ld h, l                                       ; $6551: $65
    ld [c], a                                     ; $6552: $e2
    add a                                         ; $6553: $87
    ld h, l                                       ; $6554: $65
    rst $18                                       ; $6555: $df
    ld [bc], a                                    ; $6556: $02
    ld [c], a                                     ; $6557: $e2
    ld [hl], d                                    ; $6558: $72
    ld h, l                                       ; $6559: $65
    ld [c], a                                     ; $655a: $e2
    ld a, l                                       ; $655b: $7d
    ld h, l                                       ; $655c: $65
    ld [c], a                                     ; $655d: $e2
    ld [hl], d                                    ; $655e: $72
    ld h, l                                       ; $655f: $65

jr_07e_6560:
    ld [c], a                                     ; $6560: $e2
    add a                                         ; $6561: $87
    ld h, l                                       ; $6562: $65
    ldh [$e2], a                                  ; $6563: $e0 $e2
    ld [hl], d                                    ; $6565: $72
    ld h, l                                       ; $6566: $65
    ld [c], a                                     ; $6567: $e2
    ld a, l                                       ; $6568: $7d
    ld h, l                                       ; $6569: $65
    ld [c], a                                     ; $656a: $e2
    ld [hl], d                                    ; $656b: $72
    ld h, l                                       ; $656c: $65
    ld [c], a                                     ; $656d: $e2
    ld a, l                                       ; $656e: $7d
    ld h, l                                       ; $656f: $65
    sbc $ff                                       ; $6570: $de $ff
    jr c, jr_07e_657d                             ; $6572: $38 $09

    jr c, @+$0a                                   ; $6574: $38 $08

    jr nz, jr_07e_65b0                            ; $6576: $20 $38

    add hl, hl                                    ; $6578: $29
    jr z, jr_07e_65b3                             ; $6579: $28 $38

    jr nz, jr_07e_6560                            ; $657b: $20 $e3

jr_07e_657d:
    jr c, @+$0b                                   ; $657d: $38 $09

jr_07e_657f:
    jr c, @+$0b                                   ; $657f: $38 $09

    jr c, @+$0b                                   ; $6581: $38 $09

    ld [$2008], sp                                ; $6583: $08 $08 $20
    db $e3                                        ; $6586: $e3
    jr c, jr_07e_6592                             ; $6587: $38 $09

    jr c, @+$0b                                   ; $6589: $38 $09

    jr c, jr_07e_6596                             ; $658b: $38 $09

    inc sp                                        ; $658d: $33
    inc h                                         ; $658e: $24
    inc h                                         ; $658f: $24
    inc [hl]                                      ; $6590: $34
    db $e3                                        ; $6591: $e3

jr_07e_6592:
    ret nc                                        ; $6592: $d0

    ld bc, $11dc                                  ; $6593: $01 $dc $11

jr_07e_6596:
    and $b0                                       ; $6596: $e6 $b0
    add sp, $07                                   ; $6598: $e8 $07
    ld [$eb02], a                                 ; $659a: $ea $02 $eb
    dec d                                         ; $659d: $15
    xor $22                                       ; $659e: $ee $22
    call nc, Call_07e_40e5                        ; $65a0: $d4 $e5 $40
    ld [c], a                                     ; $65a3: $e2
    or l                                          ; $65a4: $b5
    ld h, [hl]                                    ; $65a5: $66
    rst $18                                       ; $65a6: $df
    ld [bc], a                                    ; $65a7: $02
    ld c, $0e                                     ; $65a8: $0e $0e
    ld c, $0e                                     ; $65aa: $0e $0e
    ldh [$e2], a                                  ; $65ac: $e0 $e2
    add hl, de                                    ; $65ae: $19
    ld h, a                                       ; $65af: $67

jr_07e_65b0:
    ld [c], a                                     ; $65b0: $e2
    sbc a                                         ; $65b1: $9f
    ld h, [hl]                                    ; $65b2: $66

jr_07e_65b3:
    ld d, [hl]                                    ; $65b3: $56
    rlca                                          ; $65b4: $07
    ld d, [hl]                                    ; $65b5: $56
    rlca                                          ; $65b6: $07
    ld [hl], $57                                  ; $65b7: $36 $57
    halt                                          ; $65b9: $76
    add a                                         ; $65ba: $87
    ld b, $77                                     ; $65bb: $06 $77
    ld d, [hl]                                    ; $65bd: $56
    scf                                           ; $65be: $37
    reti                                          ; $65bf: $d9


    ld a, $d9                                     ; $65c0: $3e $d9
    ld a, $e2                                     ; $65c2: $3e $e2
    sbc a                                         ; $65c4: $9f
    ld h, [hl]                                    ; $65c5: $66
    ld e, $d9                                     ; $65c6: $1e $d9
    ld d, $37                                     ; $65c8: $16 $37
    reti                                          ; $65ca: $d9


    ld a, $56                                     ; $65cb: $3e $56
    rlca                                          ; $65cd: $07
    ld a, $d9                                     ; $65ce: $3e $d9
    ld [hl], $57                                  ; $65d0: $36 $57
    reti                                          ; $65d2: $d9


    ld e, [hl]                                    ; $65d3: $5e
    halt                                          ; $65d4: $76
    rlca                                          ; $65d5: $07
    ld e, [hl]                                    ; $65d6: $5e
    reti                                          ; $65d7: $d9


    ld d, [hl]                                    ; $65d8: $56
    ld [hl], a                                    ; $65d9: $77
    reti                                          ; $65da: $d9


    ld a, [hl]                                    ; $65db: $7e
    add [hl]                                      ; $65dc: $86
    rlca                                          ; $65dd: $07
    xor [hl]                                      ; $65de: $ae
    reti                                          ; $65df: $d9


    xor [hl]                                      ; $65e0: $ae
    ld a, $d9                                     ; $65e1: $3e $d9
    ld a, $5e                                     ; $65e3: $3e $5e
    ld sp, $d811                                  ; $65e5: $31 $11 $d8
    pop bc                                        ; $65e8: $c1
    and c                                         ; $65e9: $a1
    add c                                         ; $65ea: $81
    ld h, c                                       ; $65eb: $61
    ld d, c                                       ; $65ec: $51
    ld sp, $d811                                  ; $65ed: $31 $11 $d8
    pop bc                                        ; $65f0: $c1
    and c                                         ; $65f1: $a1
    add c                                         ; $65f2: $81
    ld h, c                                       ; $65f3: $61
    ld d, c                                       ; $65f4: $51
    ld sp, $0e0e                                  ; $65f5: $31 $0e $0e
    ld c, $0e                                     ; $65f8: $0e $0e
    ld c, $d3                                     ; $65fa: $0e $d3
    adc [hl]                                      ; $65fc: $8e
    reti                                          ; $65fd: $d9


    add [hl]                                      ; $65fe: $86
    rst $10                                       ; $65ff: $d7
    daa                                           ; $6600: $27
    reti                                          ; $6601: $d9


    ld l, $d9                                     ; $6602: $2e $d9
    ld l, $d9                                     ; $6604: $2e $d9
    ld l, $d9                                     ; $6606: $2e $d9
    ld l, $d9                                     ; $6608: $2e $d9
    ld l, $d9                                     ; $660a: $2e $d9
    ld l, $e2                                     ; $660c: $2e $e2
    or l                                          ; $660e: $b5
    ld h, [hl]                                    ; $660f: $66
    ld [c], a                                     ; $6610: $e2
    db $f4                                        ; $6611: $f4
    ld h, [hl]                                    ; $6612: $66
    ld [c], a                                     ; $6613: $e2
    ld b, $67                                     ; $6614: $06 $67
    ld [c], a                                     ; $6616: $e2
    db $f4                                        ; $6617: $f4
    ld h, [hl]                                    ; $6618: $66
    halt                                          ; $6619: $76
    rlca                                          ; $661a: $07
    add [hl]                                      ; $661b: $86
    rlca                                          ; $661c: $07
    and [hl]                                      ; $661d: $a6
    scf                                           ; $661e: $37
    ld b, $d7                                     ; $661f: $06 $d7
    scf                                           ; $6621: $37
    reti                                          ; $6622: $d9


    ld a, $d9                                     ; $6623: $3e $d9
    ld a, $d9                                     ; $6625: $3e $d9
    ld a, $d9                                     ; $6627: $3e $d9
    ld a, $e2                                     ; $6629: $3e $e2
    db $f4                                        ; $662b: $f4
    ld h, [hl]                                    ; $662c: $66
    ld [c], a                                     ; $662d: $e2
    ld b, $67                                     ; $662e: $06 $67
    ld [c], a                                     ; $6630: $e2
    db $f4                                        ; $6631: $f4
    ld h, [hl]                                    ; $6632: $66
    push de                                       ; $6633: $d5
    ld [hl], $07                                  ; $6634: $36 $07
    ret c                                         ; $6636: $d8

    and [hl]                                      ; $6637: $a6
    rlca                                          ; $6638: $07
    halt                                          ; $6639: $76
    rlca                                          ; $663a: $07
    add [hl]                                      ; $663b: $86
    and a                                         ; $663c: $a7
    reti                                          ; $663d: $d9


    and [hl]                                      ; $663e: $a6
    scf                                           ; $663f: $37
    ld b, $77                                     ; $6640: $06 $77
    add [hl]                                      ; $6642: $86
    rlca                                          ; $6643: $07
    and [hl]                                      ; $6644: $a6
    rlca                                          ; $6645: $07
    ld [c], a                                     ; $6646: $e2
    add hl, de                                    ; $6647: $19
    ld h, a                                       ; $6648: $67
    push hl                                       ; $6649: $e5
    nop                                           ; $664a: $00
    add sp, $05                                   ; $664b: $e8 $05
    db $d3                                        ; $664d: $d3
    ld d, [hl]                                    ; $664e: $56
    ld d, a                                       ; $664f: $57
    add $57                                       ; $6650: $c6 $57
    and [hl]                                      ; $6652: $a6
    rst $00                                       ; $6653: $c7
    ld d, [hl]                                    ; $6654: $56
    rst $10                                       ; $6655: $d7
    ld d, a                                       ; $6656: $57
    ret c                                         ; $6657: $d8

    ld d, [hl]                                    ; $6658: $56
    rst $00                                       ; $6659: $c7
    ld d, [hl]                                    ; $665a: $56
    and a                                         ; $665b: $a7
    add $57                                       ; $665c: $c6 $57
    and [hl]                                      ; $665e: $a6
    rst $00                                       ; $665f: $c7
    ld d, [hl]                                    ; $6660: $56
    ld d, a                                       ; $6661: $57
    add $57                                       ; $6662: $c6 $57
    add $57                                       ; $6664: $c6 $57
    and [hl]                                      ; $6666: $a6
    rst $00                                       ; $6667: $c7
    ld d, [hl]                                    ; $6668: $56
    ld d, a                                       ; $6669: $57
    add $57                                       ; $666a: $c6 $57
    add $57                                       ; $666c: $c6 $57
    and [hl]                                      ; $666e: $a6
    rst $00                                       ; $666f: $c7
    add sp, $07                                   ; $6670: $e8 $07
    sbc $ff                                       ; $6672: $de $ff
    call nc, $0459                                ; $6674: $d4 $59 $04
    ld c, $39                                     ; $6677: $0e $39
    inc b                                         ; $6679: $04
    ld c, $29                                     ; $667a: $0e $29
    inc b                                         ; $667c: $04
    ld c, $d8                                     ; $667d: $0e $d8
    and [hl]                                      ; $667f: $a6
    rlca                                          ; $6680: $07
    ld b, $c7                                     ; $6681: $06 $c7
    reti                                          ; $6683: $d9


    ret z                                         ; $6684: $c8

    dec b                                         ; $6685: $05
    ld e, [hl]                                    ; $6686: $5e
    ld c, $0e                                     ; $6687: $0e $0e
    ld c, $56                                     ; $6689: $0e $56
    rlca                                          ; $668b: $07
    ld d, [hl]                                    ; $668c: $56
    scf                                           ; $668d: $37
    ld b, $57                                     ; $668e: $06 $57
    db $e3                                        ; $6690: $e3
    call nc, Call_000_3756                        ; $6691: $d4 $56 $37
    ld e, [hl]                                    ; $6694: $5e
    reti                                          ; $6695: $d9


    ld e, [hl]                                    ; $6696: $5e
    reti                                          ; $6697: $d9


    ld e, [hl]                                    ; $6698: $5e
    reti                                          ; $6699: $d9


    ld e, [hl]                                    ; $669a: $5e
    ld a, [hl]                                    ; $669b: $7e
    adc [hl]                                      ; $669c: $8e
    xor [hl]                                      ; $669d: $ae
    db $e3                                        ; $669e: $e3
    call nc, $0756                                ; $669f: $d4 $56 $07
    ld d, [hl]                                    ; $66a2: $56
    rlca                                          ; $66a3: $07
    ld [hl], $57                                  ; $66a4: $36 $57
    ld b, $87                                     ; $66a6: $06 $87
    ld b, $77                                     ; $66a8: $06 $77
    ld [hl], $d8                                  ; $66aa: $36 $d8
    and a                                         ; $66ac: $a7
    add $d9                                       ; $66ad: $c6 $d9
    rst $00                                       ; $66af: $c7
    rst $10                                       ; $66b0: $d7
    ld [hl], $d9                                  ; $66b1: $36 $d9
    scf                                           ; $66b3: $37
    db $e3                                        ; $66b4: $e3
    call nc, Call_07e_74e2                        ; $66b5: $d4 $e2 $74
    ld h, [hl]                                    ; $66b8: $66
    db $d3                                        ; $66b9: $d3
    ld a, $d9                                     ; $66ba: $3e $d9
    ld [hl], $57                                  ; $66bc: $36 $57
    reti                                          ; $66be: $d9


    ld d, h                                       ; $66bf: $54
    add hl, bc                                    ; $66c0: $09
    ld c, $0e                                     ; $66c1: $0e $0e
    ld c, $0e                                     ; $66c3: $0e $0e
    ld c, $df                                     ; $66c5: $0e $df
    ld [bc], a                                    ; $66c7: $02
    ld c, $0e                                     ; $66c8: $0e $0e
    ld c, $0e                                     ; $66ca: $0e $0e
    ldh [$e2], a                                  ; $66cc: $e0 $e2
    ld [hl], h                                    ; $66ce: $74
    ld h, [hl]                                    ; $66cf: $66
    adc [hl]                                      ; $66d0: $8e
    reti                                          ; $66d1: $d9


    add [hl]                                      ; $66d2: $86
    and a                                         ; $66d3: $a7
    reti                                          ; $66d4: $d9


    and c                                         ; $66d5: $a1
    inc c                                         ; $66d6: $0c
    ld c, $0e                                     ; $66d7: $0e $0e
    ld c, $0e                                     ; $66d9: $0e $0e
    add [hl]                                      ; $66db: $86
    and a                                         ; $66dc: $a7
    cp c                                          ; $66dd: $b9
    inc b                                         ; $66de: $04
    ld c, $a9                                     ; $66df: $0e $a9
    inc b                                         ; $66e1: $04
    ld c, $89                                     ; $66e2: $0e $89
    inc b                                         ; $66e4: $04
    ld c, $36                                     ; $66e5: $0e $36
    rlca                                          ; $66e7: $07
    ld b, $57                                     ; $66e8: $06 $57
    reti                                          ; $66ea: $d9


    ld e, [hl]                                    ; $66eb: $5e
    ld c, $0e                                     ; $66ec: $0e $0e
    ld c, $0e                                     ; $66ee: $0e $0e
    ld c, $0e                                     ; $66f0: $0e $0e
    ld c, $e3                                     ; $66f2: $0e $e3
    call nc, $0756                                ; $66f4: $d4 $56 $07
    add $07                                       ; $66f7: $c6 $07
    add $a7                                       ; $66f9: $c6 $a7
    ld b, $87                                     ; $66fb: $06 $87
    reti                                          ; $66fd: $d9


    add [hl]                                      ; $66fe: $86
    ld d, a                                       ; $66ff: $57
    ld b, $87                                     ; $6700: $06 $87
    and [hl]                                      ; $6702: $a6
    rlca                                          ; $6703: $07
    adc $e3                                       ; $6704: $ce $e3
    push de                                       ; $6706: $d5
    ld d, $d8                                     ; $6707: $16 $d8
    rst $00                                       ; $6709: $c7
    and [hl]                                      ; $670a: $a6
    add a                                         ; $670b: $87
    reti                                          ; $670c: $d9


    add [hl]                                      ; $670d: $86
    and a                                         ; $670e: $a7
    ld b, $87                                     ; $670f: $06 $87
    ld a, [hl]                                    ; $6711: $7e
    reti                                          ; $6712: $d9


    ld a, [hl]                                    ; $6713: $7e
    reti                                          ; $6714: $d9


    ld a, [hl]                                    ; $6715: $7e
    reti                                          ; $6716: $d9


    ld a, [hl]                                    ; $6717: $7e
    db $e3                                        ; $6718: $e3
    ld [c], a                                     ; $6719: $e2
    sub c                                         ; $671a: $91
    ld h, [hl]                                    ; $671b: $66
    call nc, $d98e                                ; $671c: $d4 $8e $d9
    add [hl]                                      ; $671f: $86
    ld [hl], a                                    ; $6720: $77
    reti                                          ; $6721: $d9


    ld a, [hl]                                    ; $6722: $7e
    ld a, $d9                                     ; $6723: $3e $d9
    ld a, $d9                                     ; $6725: $3e $d9
    ld a, $d9                                     ; $6727: $3e $d9
    ld a, $d9                                     ; $6729: $3e $d9
    ld a, $e2                                     ; $672b: $3e $e2
    sub c                                         ; $672d: $91
    ld h, [hl]                                    ; $672e: $66
    adc $d9                                       ; $672f: $ce $d9
    adc $d9                                       ; $6731: $ce $d9
    adc $3e                                       ; $6733: $ce $3e
    reti                                          ; $6735: $d9


    ld a, $d9                                     ; $6736: $3e $d9
    ld a, $d9                                     ; $6738: $3e $d9
    ld a, $d9                                     ; $673a: $3e $d9
    ld a, $e2                                     ; $673c: $3e $e2
    sub c                                         ; $673e: $91
    ld h, [hl]                                    ; $673f: $66
    adc $d9                                       ; $6740: $ce $d9
    add $a7                                       ; $6742: $c6 $a7
    reti                                          ; $6744: $d9


    xor [hl]                                      ; $6745: $ae
    adc [hl]                                      ; $6746: $8e
    ld a, [hl]                                    ; $6747: $7e
    reti                                          ; $6748: $d9


    halt                                          ; $6749: $76
    ld d, a                                       ; $674a: $57
    reti                                          ; $674b: $d9


    ld e, [hl]                                    ; $674c: $5e
    ld a, $1e                                     ; $674d: $3e $1e
    reti                                          ; $674f: $d9


    ld e, $d9                                     ; $6750: $1e $d9
    ld e, $d9                                     ; $6752: $1e $d9
    ld e, $ce                                     ; $6754: $1e $ce
    reti                                          ; $6756: $d9


    add $a7                                       ; $6757: $c6 $a7
    reti                                          ; $6759: $d9


    xor [hl]                                      ; $675a: $ae
    adc [hl]                                      ; $675b: $8e
    ld a, [hl]                                    ; $675c: $7e
    reti                                          ; $675d: $d9


    ld a, [hl]                                    ; $675e: $7e
    reti                                          ; $675f: $d9


    ld a, [hl]                                    ; $6760: $7e
    reti                                          ; $6761: $d9


    ld a, [hl]                                    ; $6762: $7e
    adc [hl]                                      ; $6763: $8e
    reti                                          ; $6764: $d9


    adc [hl]                                      ; $6765: $8e
    xor [hl]                                      ; $6766: $ae
    reti                                          ; $6767: $d9


    xor [hl]                                      ; $6768: $ae
    db $e3                                        ; $6769: $e3
    ret nc                                        ; $676a: $d0

    ld bc, $11dc                                  ; $676b: $01 $dc $11
    add sp, $07                                   ; $676e: $e8 $07
    jp nc, Jump_000_02ea                          ; $6770: $d2 $ea $02

    db $eb                                        ; $6773: $eb
    dec d                                         ; $6774: $15
    push hl                                       ; $6775: $e5
    add b                                         ; $6776: $80
    and $75                                       ; $6777: $e6 $75
    ld [c], a                                     ; $6779: $e2
    cp c                                          ; $677a: $b9
    ld l, b                                       ; $677b: $68
    ld d, [hl]                                    ; $677c: $56
    ld d, a                                       ; $677d: $57
    add $57                                       ; $677e: $c6 $57
    add $57                                       ; $6780: $c6 $57
    and [hl]                                      ; $6782: $a6
    rst $00                                       ; $6783: $c7
    ld d, [hl]                                    ; $6784: $56
    ld d, a                                       ; $6785: $57
    add $57                                       ; $6786: $c6 $57
    add $57                                       ; $6788: $c6 $57
    and [hl]                                      ; $678a: $a6
    rst $00                                       ; $678b: $c7
    and $70                                       ; $678c: $e6 $70
    push hl                                       ; $678e: $e5
    ld b, b                                       ; $678f: $40
    ld [$eb0b], a                                 ; $6790: $ea $0b $eb
    dec d                                         ; $6793: $15
    ld [c], a                                     ; $6794: $e2
    add hl, sp                                    ; $6795: $39
    ld l, c                                       ; $6796: $69
    ld [c], a                                     ; $6797: $e2
    and e                                         ; $6798: $a3
    ld l, b                                       ; $6799: $68
    db $d3                                        ; $679a: $d3
    add $07                                       ; $679b: $c6 $07
    add $07                                       ; $679d: $c6 $07
    and [hl]                                      ; $679f: $a6
    rst $00                                       ; $67a0: $c7
    rst $10                                       ; $67a1: $d7
    ld [hl], $37                                  ; $67a2: $36 $37
    ld b, $d8                                     ; $67a4: $06 $d8
    rst $00                                       ; $67a6: $c7
    and [hl]                                      ; $67a7: $a6
    and a                                         ; $67a8: $a7
    reti                                          ; $67a9: $d9


    xor [hl]                                      ; $67aa: $ae
    reti                                          ; $67ab: $d9


    xor [hl]                                      ; $67ac: $ae
    ld [c], a                                     ; $67ad: $e2
    and e                                         ; $67ae: $a3
    ld l, b                                       ; $67af: $68
    ld e, [hl]                                    ; $67b0: $5e
    reti                                          ; $67b1: $d9


    ld d, [hl]                                    ; $67b2: $56
    ld [hl], a                                    ; $67b3: $77
    reti                                          ; $67b4: $d9


    ld a, [hl]                                    ; $67b5: $7e
    add [hl]                                      ; $67b6: $86
    rlca                                          ; $67b7: $07
    ld a, [hl]                                    ; $67b8: $7e
    reti                                          ; $67b9: $d9


    halt                                          ; $67ba: $76
    add a                                         ; $67bb: $87
    reti                                          ; $67bc: $d9


    adc [hl]                                      ; $67bd: $8e
    and [hl]                                      ; $67be: $a6
    rlca                                          ; $67bf: $07
    adc [hl]                                      ; $67c0: $8e
    reti                                          ; $67c1: $d9


    add [hl]                                      ; $67c2: $86
    and a                                         ; $67c3: $a7
    reti                                          ; $67c4: $d9


    xor [hl]                                      ; $67c5: $ae
    add $07                                       ; $67c6: $c6 $07
    ld a, [hl]                                    ; $67c8: $7e
    reti                                          ; $67c9: $d9


    ld a, [hl]                                    ; $67ca: $7e
    xor [hl]                                      ; $67cb: $ae
    reti                                          ; $67cc: $d9


    xor [hl]                                      ; $67cd: $ae
    adc [hl]                                      ; $67ce: $8e
    reti                                          ; $67cf: $d9


    add [hl]                                      ; $67d0: $86
    rst $10                                       ; $67d1: $d7
    scf                                           ; $67d2: $37
    reti                                          ; $67d3: $d9


    ld a, $d9                                     ; $67d4: $3e $d9
    ld a, $d9                                     ; $67d6: $3e $d9
    ld a, $d9                                     ; $67d8: $3e $d9
    ld a, $d9                                     ; $67da: $3e $d9
    ld a, $d9                                     ; $67dc: $3e $d9
    ld a, $d3                                     ; $67de: $3e $d3
    ld e, [hl]                                    ; $67e0: $5e
    reti                                          ; $67e1: $d9


    ld d, [hl]                                    ; $67e2: $56
    ld d, a                                       ; $67e3: $57
    reti                                          ; $67e4: $d9


    ld e, [hl]                                    ; $67e5: $5e
    reti                                          ; $67e6: $d9


    ld e, [hl]                                    ; $67e7: $5e
    reti                                          ; $67e8: $d9


    ld e, [hl]                                    ; $67e9: $5e
    reti                                          ; $67ea: $d9


    ld e, [hl]                                    ; $67eb: $5e
    reti                                          ; $67ec: $d9


    ld e, [hl]                                    ; $67ed: $5e
    reti                                          ; $67ee: $d9


    ld e, [hl]                                    ; $67ef: $5e
    push hl                                       ; $67f0: $e5
    add b                                         ; $67f1: $80
    and $75                                       ; $67f2: $e6 $75
    ld [c], a                                     ; $67f4: $e2
    cp c                                          ; $67f5: $b9
    ld l, b                                       ; $67f6: $68
    push hl                                       ; $67f7: $e5
    ld b, b                                       ; $67f8: $40
    and $70                                       ; $67f9: $e6 $70
    ld [c], a                                     ; $67fb: $e2
    jr z, @+$6b                                   ; $67fc: $28 $69

    db $d3                                        ; $67fe: $d3
    xor [hl]                                      ; $67ff: $ae
    reti                                          ; $6800: $d9


    and [hl]                                      ; $6801: $a6
    ld [hl], a                                    ; $6802: $77
    reti                                          ; $6803: $d9


    ld a, [hl]                                    ; $6804: $7e
    ld a, $d9                                     ; $6805: $3e $d9
    ld a, $d9                                     ; $6807: $3e $d9
    ld a, $d9                                     ; $6809: $3e $d9
    ld a, $d9                                     ; $680b: $3e $d9
    ld a, $e2                                     ; $680d: $3e $e2
    jr z, @+$6b                                   ; $680f: $28 $69

    rst $10                                       ; $6811: $d7
    ld a, $d9                                     ; $6812: $3e $d9
    ld [hl], $d8                                  ; $6814: $36 $d8
    and a                                         ; $6816: $a7
    reti                                          ; $6817: $d9


    xor [hl]                                      ; $6818: $ae
    ld a, [hl]                                    ; $6819: $7e
    reti                                          ; $681a: $d9


    ld a, [hl]                                    ; $681b: $7e
    reti                                          ; $681c: $d9


    ld a, [hl]                                    ; $681d: $7e
    reti                                          ; $681e: $d9


    ld a, [hl]                                    ; $681f: $7e
    reti                                          ; $6820: $d9


    ld a, [hl]                                    ; $6821: $7e
    ld [c], a                                     ; $6822: $e2
    jr z, jr_07e_688e                             ; $6823: $28 $69

    rst $10                                       ; $6825: $d7
    ld e, $d9                                     ; $6826: $1e $d9
    ld d, $d8                                     ; $6828: $16 $d8
    and a                                         ; $682a: $a7
    reti                                          ; $682b: $d9


    xor [hl]                                      ; $682c: $ae
    ld a, [hl]                                    ; $682d: $7e
    reti                                          ; $682e: $d9


    ld a, [hl]                                    ; $682f: $7e
    reti                                          ; $6830: $d9


    ld a, [hl]                                    ; $6831: $7e
    reti                                          ; $6832: $d9


    ld a, [hl]                                    ; $6833: $7e
    reti                                          ; $6834: $d9


    ld a, [hl]                                    ; $6835: $7e
    ld [c], a                                     ; $6836: $e2
    jr z, jr_07e_68a2                             ; $6837: $28 $69

    rst $10                                       ; $6839: $d7
    ld a, $d9                                     ; $683a: $3e $d9
    ld [hl], $d8                                  ; $683c: $36 $d8
    ld [hl], a                                    ; $683e: $77
    reti                                          ; $683f: $d9


    ld a, [hl]                                    ; $6840: $7e
    ld a, $d9                                     ; $6841: $3e $d9
    ld a, $d9                                     ; $6843: $3e $d9
    ld a, $d9                                     ; $6845: $3e $d9
    ld a, $d9                                     ; $6847: $3e $d9
    ld a, $e2                                     ; $6849: $3e $e2
    add hl, sp                                    ; $684b: $39
    ld l, c                                       ; $684c: $69
    push hl                                       ; $684d: $e5
    nop                                           ; $684e: $00
    add sp, $05                                   ; $684f: $e8 $05
    and $60                                       ; $6851: $e6 $60
    db $e4                                        ; $6853: $e4
    cp $d3                                        ; $6854: $fe $d3
    ld c, $07                                     ; $6856: $0e $07
    ld d, [hl]                                    ; $6858: $56
    ld d, a                                       ; $6859: $57
    add $57                                       ; $685a: $c6 $57
    and [hl]                                      ; $685c: $a6
    rst $00                                       ; $685d: $c7
    ld d, [hl]                                    ; $685e: $56
    rst $10                                       ; $685f: $d7
    ld d, a                                       ; $6860: $57
    ret c                                         ; $6861: $d8

    ld d, [hl]                                    ; $6862: $56
    rst $00                                       ; $6863: $c7
    ld d, [hl]                                    ; $6864: $56
    and a                                         ; $6865: $a7
    add $57                                       ; $6866: $c6 $57
    and [hl]                                      ; $6868: $a6
    rst $00                                       ; $6869: $c7
    ld d, [hl]                                    ; $686a: $56
    ld d, a                                       ; $686b: $57
    add $57                                       ; $686c: $c6 $57
    add $57                                       ; $686e: $c6 $57
    and [hl]                                      ; $6870: $a6
    rst $00                                       ; $6871: $c7
    ld d, [hl]                                    ; $6872: $56
    ld d, a                                       ; $6873: $57
    add $57                                       ; $6874: $c6 $57
    add $e4                                       ; $6876: $c6 $e4
    nop                                           ; $6878: $00
    and $75                                       ; $6879: $e6 $75
    add sp, $07                                   ; $687b: $e8 $07
    sbc $ff                                       ; $687d: $de $ff
    jp nc, $5756                                  ; $687f: $d2 $56 $57

    add $57                                       ; $6882: $c6 $57
    and [hl]                                      ; $6884: $a6
    rst $00                                       ; $6885: $c7
    ld d, [hl]                                    ; $6886: $56
    rst $10                                       ; $6887: $d7
    ld d, a                                       ; $6888: $57
    ret c                                         ; $6889: $d8

    ld d, [hl]                                    ; $688a: $56
    rst $00                                       ; $688b: $c7
    ld d, [hl]                                    ; $688c: $56
    and a                                         ; $688d: $a7

jr_07e_688e:
    add $57                                       ; $688e: $c6 $57
    and [hl]                                      ; $6890: $a6
    rst $00                                       ; $6891: $c7
    ld d, [hl]                                    ; $6892: $56
    ld d, a                                       ; $6893: $57
    add $57                                       ; $6894: $c6 $57
    add $57                                       ; $6896: $c6 $57
    and [hl]                                      ; $6898: $a6
    rst $00                                       ; $6899: $c7
    ld d, [hl]                                    ; $689a: $56
    ld d, a                                       ; $689b: $57
    add $57                                       ; $689c: $c6 $57
    add $57                                       ; $689e: $c6 $57
    and [hl]                                      ; $68a0: $a6
    rst $00                                       ; $68a1: $c7

jr_07e_68a2:
    db $e3                                        ; $68a2: $e3
    db $d3                                        ; $68a3: $d3
    add $07                                       ; $68a4: $c6 $07
    add $07                                       ; $68a6: $c6 $07
    and [hl]                                      ; $68a8: $a6
    rst $00                                       ; $68a9: $c7
    ld b, $d7                                     ; $68aa: $06 $d7
    scf                                           ; $68ac: $37
    ld b, $27                                     ; $68ad: $06 $27
    ret c                                         ; $68af: $d8

    add $57                                       ; $68b0: $c6 $57
    ld d, [hl]                                    ; $68b2: $56
    reti                                          ; $68b3: $d9


    ld d, a                                       ; $68b4: $57
    ld [hl], $d9                                  ; $68b5: $36 $d9
    scf                                           ; $68b7: $37
    db $e3                                        ; $68b8: $e3
    jp nc, Jump_07e_7fe2                          ; $68b9: $d2 $e2 $7f

    ld l, b                                       ; $68bc: $68
    ld d, [hl]                                    ; $68bd: $56
    ld d, a                                       ; $68be: $57
    add $57                                       ; $68bf: $c6 $57
    and [hl]                                      ; $68c1: $a6
    ld d, a                                       ; $68c2: $57
    add $57                                       ; $68c3: $c6 $57
    ld d, [hl]                                    ; $68c5: $56
    ld d, a                                       ; $68c6: $57
    add $57                                       ; $68c7: $c6 $57
    add $57                                       ; $68c9: $c6 $57
    and [hl]                                      ; $68cb: $a6
    rst $00                                       ; $68cc: $c7
    ld d, [hl]                                    ; $68cd: $56
    and a                                         ; $68ce: $a7
    add $57                                       ; $68cf: $c6 $57
    rst $10                                       ; $68d1: $d7
    ld d, [hl]                                    ; $68d2: $56
    ret c                                         ; $68d3: $d8

    ld d, a                                       ; $68d4: $57
    add $57                                       ; $68d5: $c6 $57
    and [hl]                                      ; $68d7: $a6
    rst $00                                       ; $68d8: $c7
    ld d, [hl]                                    ; $68d9: $56
    rst $00                                       ; $68da: $c7
    ld d, [hl]                                    ; $68db: $56
    and a                                         ; $68dc: $a7
    add $57                                       ; $68dd: $c6 $57
    ld [c], a                                     ; $68df: $e2
    ld a, a                                       ; $68e0: $7f
    ld l, b                                       ; $68e1: $68
    and [hl]                                      ; $68e2: $a6
    and a                                         ; $68e3: $a7
    rst $10                                       ; $68e4: $d7
    ld d, [hl]                                    ; $68e5: $56
    ret c                                         ; $68e6: $d8

    and a                                         ; $68e7: $a7
    ld [hl], $d8                                  ; $68e8: $36 $d8
    and a                                         ; $68ea: $a7
    rst $10                                       ; $68eb: $d7
    ld d, [hl]                                    ; $68ec: $56
    ret c                                         ; $68ed: $d8

    and a                                         ; $68ee: $a7
    and [hl]                                      ; $68ef: $a6
    and a                                         ; $68f0: $a7
    rst $10                                       ; $68f1: $d7
    ld d, [hl]                                    ; $68f2: $56
    ret c                                         ; $68f3: $d8

    and a                                         ; $68f4: $a7
    rst $10                                       ; $68f5: $d7
    ld [hl], $d8                                  ; $68f6: $36 $d8
    and a                                         ; $68f8: $a7
    rst $10                                       ; $68f9: $d7
    ld [hl], $57                                  ; $68fa: $36 $57
    ret c                                         ; $68fc: $d8

    and [hl]                                      ; $68fd: $a6
    rst $10                                       ; $68fe: $d7
    scf                                           ; $68ff: $37
    ld d, [hl]                                    ; $6900: $56
    ret c                                         ; $6901: $d8

    and a                                         ; $6902: $a7
    rst $10                                       ; $6903: $d7
    ld d, [hl]                                    ; $6904: $56
    ret c                                         ; $6905: $d8

    and a                                         ; $6906: $a7
    rst $10                                       ; $6907: $d7
    ld [hl], $57                                  ; $6908: $36 $57
    ret c                                         ; $690a: $d8

    and [hl]                                      ; $690b: $a6
    rst $10                                       ; $690c: $d7
    scf                                           ; $690d: $37
    ld d, [hl]                                    ; $690e: $56
    scf                                           ; $690f: $37
    ret c                                         ; $6910: $d8

    and [hl]                                      ; $6911: $a6
    ld d, a                                       ; $6912: $57
    ld [hl], $57                                  ; $6913: $36 $57
    ld d, [hl]                                    ; $6915: $56
    ld d, a                                       ; $6916: $57
    add $57                                       ; $6917: $c6 $57
    and [hl]                                      ; $6919: $a6
    rst $00                                       ; $691a: $c7
    ld d, [hl]                                    ; $691b: $56
    rst $10                                       ; $691c: $d7
    ld d, a                                       ; $691d: $57
    ret c                                         ; $691e: $d8

    ld d, [hl]                                    ; $691f: $56
    rst $00                                       ; $6920: $c7
    ld d, [hl]                                    ; $6921: $56
    and a                                         ; $6922: $a7
    add $57                                       ; $6923: $c6 $57
    and [hl]                                      ; $6925: $a6
    rst $00                                       ; $6926: $c7
    db $e3                                        ; $6927: $e3
    db $d3                                        ; $6928: $d3
    adc $d9                                       ; $6929: $ce $d9
    add $87                                       ; $692b: $c6 $87
    reti                                          ; $692d: $d9


    adc [hl]                                      ; $692e: $8e
    ld e, [hl]                                    ; $692f: $5e
    reti                                          ; $6930: $d9


    ld e, [hl]                                    ; $6931: $5e
    reti                                          ; $6932: $d9


    ld e, [hl]                                    ; $6933: $5e
    reti                                          ; $6934: $d9


    ld e, [hl]                                    ; $6935: $5e
    reti                                          ; $6936: $d9


    ld e, [hl]                                    ; $6937: $5e
    db $e3                                        ; $6938: $e3
    db $d3                                        ; $6939: $d3
    rst $18                                       ; $693a: $df
    inc bc                                        ; $693b: $03
    adc [hl]                                      ; $693c: $8e
    reti                                          ; $693d: $d9


    add [hl]                                      ; $693e: $86
    rst $00                                       ; $693f: $c7
    reti                                          ; $6940: $d9


    adc $d9                                       ; $6941: $ce $d9
    adc $5e                                       ; $6943: $ce $5e
    reti                                          ; $6945: $d9


    ld d, [hl]                                    ; $6946: $56
    rst $00                                       ; $6947: $c7
    reti                                          ; $6948: $d9


    adc $d9                                       ; $6949: $ce $d9
    adc $7e                                       ; $694b: $ce $7e
    reti                                          ; $694d: $d9


    halt                                          ; $694e: $76
    rst $00                                       ; $694f: $c7
    reti                                          ; $6950: $d9


    adc $d9                                       ; $6951: $ce $d9
    adc $3e                                       ; $6953: $ce $3e
    reti                                          ; $6955: $d9


    ld [hl], $c7                                  ; $6956: $36 $c7
    reti                                          ; $6958: $d9


    adc $d9                                       ; $6959: $ce $d9
    adc $e0                                       ; $695b: $ce $e0
    adc [hl]                                      ; $695d: $8e
    reti                                          ; $695e: $d9


    add [hl]                                      ; $695f: $86
    add a                                         ; $6960: $87
    reti                                          ; $6961: $d9


    adc [hl]                                      ; $6962: $8e
    reti                                          ; $6963: $d9


    adc [hl]                                      ; $6964: $8e
    ld e, [hl]                                    ; $6965: $5e
    reti                                          ; $6966: $d9


    ld d, [hl]                                    ; $6967: $56
    add a                                         ; $6968: $87
    reti                                          ; $6969: $d9


    adc [hl]                                      ; $696a: $8e
    reti                                          ; $696b: $d9


    adc [hl]                                      ; $696c: $8e
    ld a, [hl]                                    ; $696d: $7e
    reti                                          ; $696e: $d9


    halt                                          ; $696f: $76
    and a                                         ; $6970: $a7
    reti                                          ; $6971: $d9


    xor [hl]                                      ; $6972: $ae
    reti                                          ; $6973: $d9


    xor [hl]                                      ; $6974: $ae
    ld c, [hl]                                    ; $6975: $4e
    reti                                          ; $6976: $d9


    ld b, [hl]                                    ; $6977: $46
    rst $00                                       ; $6978: $c7
    reti                                          ; $6979: $d9


    adc $d9                                       ; $697a: $ce $d9
    adc $e3                                       ; $697c: $ce $e3
    ret nc                                        ; $697e: $d0

    ld bc, $11dc                                  ; $697f: $01 $dc $11
    rst $20                                       ; $6982: $e7
    add hl, bc                                    ; $6983: $09
    and $20                                       ; $6984: $e6 $20
    add sp, $07                                   ; $6986: $e8 $07
    pop de                                        ; $6988: $d1
    ld [c], a                                     ; $6989: $e2
    ld a, a                                       ; $698a: $7f
    ld l, d                                       ; $698b: $6a
    ld [c], a                                     ; $698c: $e2
    add hl, sp                                    ; $698d: $39
    ld l, d                                       ; $698e: $6a
    ld [c], a                                     ; $698f: $e2
    call c, $d16a                                 ; $6990: $dc $6a $d1
    rst $18                                       ; $6993: $df
    inc bc                                        ; $6994: $03
    ld e, [hl]                                    ; $6995: $5e
    reti                                          ; $6996: $d9


    ld d, [hl]                                    ; $6997: $56
    ld d, a                                       ; $6998: $57
    ld e, [hl]                                    ; $6999: $5e
    ld c, $0e                                     ; $699a: $0e $0e
    ld d, [hl]                                    ; $699c: $56
    ld d, a                                       ; $699d: $57
    ld d, [hl]                                    ; $699e: $56
    rst $10                                       ; $699f: $d7
    ld d, a                                       ; $69a0: $57
    ret c                                         ; $69a1: $d8

    ld d, [hl]                                    ; $69a2: $56
    rst $10                                       ; $69a3: $d7
    ld d, a                                       ; $69a4: $57
    ret c                                         ; $69a5: $d8

    ldh [$d7], a                                  ; $69a6: $e0 $d7
    ld e, $d9                                     ; $69a8: $1e $d9
    ld d, $d8                                     ; $69aa: $16 $d8
    add a                                         ; $69ac: $87
    reti                                          ; $69ad: $d9


    adc [hl]                                      ; $69ae: $8e
    rst $10                                       ; $69af: $d7
    ld e, $3e                                     ; $69b0: $1e $3e
    reti                                          ; $69b2: $d9


    ld [hl], $d8                                  ; $69b3: $36 $d8
    and a                                         ; $69b5: $a7
    reti                                          ; $69b6: $d9


    xor [hl]                                      ; $69b7: $ae
    rst $10                                       ; $69b8: $d7
    ld a, $16                                     ; $69b9: $3e $16
    rla                                           ; $69bb: $17
    ld d, $d8                                     ; $69bc: $16 $d8
    add a                                         ; $69be: $87
    reti                                          ; $69bf: $d9


    add [hl]                                      ; $69c0: $86
    add a                                         ; $69c1: $87
    rst $10                                       ; $69c2: $d7
    ld d, $d8                                     ; $69c3: $16 $d8
    add a                                         ; $69c5: $87
    rst $10                                       ; $69c6: $d7
    ld [hl], $37                                  ; $69c7: $36 $37
    ret c                                         ; $69c9: $d8

    and [hl]                                      ; $69ca: $a6
    rst $10                                       ; $69cb: $d7
    scf                                           ; $69cc: $37
    ld [hl], $3e                                  ; $69cd: $36 $3e
    ret c                                         ; $69cf: $d8

    and a                                         ; $69d0: $a7
    ld [c], a                                     ; $69d1: $e2
    ld e, $6a                                     ; $69d2: $1e $6a
    ld [c], a                                     ; $69d4: $e2
    add hl, sp                                    ; $69d5: $39
    ld l, d                                       ; $69d6: $6a
    ld [c], a                                     ; $69d7: $e2
    ld a, a                                       ; $69d8: $7f
    ld l, d                                       ; $69d9: $6a
    pop de                                        ; $69da: $d1
    rst $18                                       ; $69db: $df
    inc b                                         ; $69dc: $04
    rst $10                                       ; $69dd: $d7
    ld e, $d8                                     ; $69de: $1e $d8
    adc [hl]                                      ; $69e0: $8e
    rst $10                                       ; $69e1: $d7
    ld e, $d8                                     ; $69e2: $1e $d8
    adc [hl]                                      ; $69e4: $8e
    rst $10                                       ; $69e5: $d7
    ld e, $d8                                     ; $69e6: $1e $d8
    adc [hl]                                      ; $69e8: $8e
    rst $10                                       ; $69e9: $d7
    ld e, $d8                                     ; $69ea: $1e $d8
    adc [hl]                                      ; $69ec: $8e
    rst $10                                       ; $69ed: $d7
    ld a, $d8                                     ; $69ee: $3e $d8
    xor [hl]                                      ; $69f0: $ae
    rst $10                                       ; $69f1: $d7
    ld a, $d8                                     ; $69f2: $3e $d8
    xor [hl]                                      ; $69f4: $ae
    rst $10                                       ; $69f5: $d7
    ld a, $d8                                     ; $69f6: $3e $d8
    xor [hl]                                      ; $69f8: $ae
    rst $10                                       ; $69f9: $d7
    ld a, $d8                                     ; $69fa: $3e $d8
    xor [hl]                                      ; $69fc: $ae
    ldh [$e2], a                                  ; $69fd: $e0 $e2
    call c, $d26a                                 ; $69ff: $dc $6a $d2
    ld d, [hl]                                    ; $6a02: $56
    ret c                                         ; $6a03: $d8

    rst $00                                       ; $6a04: $c7
    and [hl]                                      ; $6a05: $a6
    ld d, a                                       ; $6a06: $57
    reti                                          ; $6a07: $d9


    ld e, [hl]                                    ; $6a08: $5e
    ld c, $0e                                     ; $6a09: $0e $0e
    ld c, $0e                                     ; $6a0b: $0e $0e
    ld c, $5e                                     ; $6a0d: $0e $5e
    reti                                          ; $6a0f: $d9


    ld d, [hl]                                    ; $6a10: $56
    ld d, a                                       ; $6a11: $57
    reti                                          ; $6a12: $d9


    ld d, [hl]                                    ; $6a13: $56
    ld d, a                                       ; $6a14: $57
    ld [hl], $57                                  ; $6a15: $36 $57
    reti                                          ; $6a17: $d9


    ld e, [hl]                                    ; $6a18: $5e
    ld c, $0e                                     ; $6a19: $0e $0e
    ld c, $de                                     ; $6a1b: $0e $de
    rst $38                                       ; $6a1d: $ff
    pop de                                        ; $6a1e: $d1
    ld d, [hl]                                    ; $6a1f: $56
    rst $10                                       ; $6a20: $d7
    ld d, a                                       ; $6a21: $57
    ret c                                         ; $6a22: $d8

    ld d, [hl]                                    ; $6a23: $56
    rst $10                                       ; $6a24: $d7
    scf                                           ; $6a25: $37
    reti                                          ; $6a26: $d9


    ld [hl], $37                                  ; $6a27: $36 $37
    ret c                                         ; $6a29: $d8

    ld d, [hl]                                    ; $6a2a: $56
    rst $10                                       ; $6a2b: $d7
    ld d, a                                       ; $6a2c: $57
    ret c                                         ; $6a2d: $d8

    ld d, [hl]                                    ; $6a2e: $56
    ld d, a                                       ; $6a2f: $57
    rst $10                                       ; $6a30: $d7
    ld d, [hl]                                    ; $6a31: $56
    ret c                                         ; $6a32: $d8

    ld d, a                                       ; $6a33: $57
    rst $10                                       ; $6a34: $d7
    ld d, [hl]                                    ; $6a35: $56
    ld a, $47                                     ; $6a36: $3e $47
    db $e3                                        ; $6a38: $e3
    jp nc, $5756                                  ; $6a39: $d2 $56 $57

    ret c                                         ; $6a3c: $d8

    ld d, [hl]                                    ; $6a3d: $56
    rst $10                                       ; $6a3e: $d7
    scf                                           ; $6a3f: $37
    reti                                          ; $6a40: $d9


    ld [hl], $37                                  ; $6a41: $36 $37
    ret c                                         ; $6a43: $d8

    ld d, [hl]                                    ; $6a44: $56
    rst $10                                       ; $6a45: $d7
    ld d, a                                       ; $6a46: $57
    ret c                                         ; $6a47: $d8

    ld d, [hl]                                    ; $6a48: $56
    ld d, a                                       ; $6a49: $57
    rst $10                                       ; $6a4a: $d7
    ld d, [hl]                                    ; $6a4b: $56
    ret c                                         ; $6a4c: $d8

    ld d, a                                       ; $6a4d: $57
    rst $10                                       ; $6a4e: $d7
    ld d, [hl]                                    ; $6a4f: $56
    ret c                                         ; $6a50: $d8

    ld a, $47                                     ; $6a51: $3e $47
    db $e3                                        ; $6a53: $e3
    jp nc, $d81e                                  ; $6a54: $d2 $1e $d8

    adc [hl]                                      ; $6a57: $8e
    rst $10                                       ; $6a58: $d7
    ld d, $d8                                     ; $6a59: $16 $d8
    adc [hl]                                      ; $6a5b: $8e
    rst $10                                       ; $6a5c: $d7
    ld e, $17                                     ; $6a5d: $1e $17
    ret c                                         ; $6a5f: $d8

    adc [hl]                                      ; $6a60: $8e
    rst $10                                       ; $6a61: $d7
    ld e, $d8                                     ; $6a62: $1e $d8
    adc [hl]                                      ; $6a64: $8e
    db $e3                                        ; $6a65: $e3
    pop de                                        ; $6a66: $d1
    add $d7                                       ; $6a67: $c6 $d7
    rst $00                                       ; $6a69: $c7
    ret c                                         ; $6a6a: $d8

    add $ce                                       ; $6a6b: $c6 $ce
    rst $10                                       ; $6a6d: $d7
    and a                                         ; $6a6e: $a7
    ret c                                         ; $6a6f: $d8

    add $d7                                       ; $6a70: $c6 $d7
    rst $00                                       ; $6a72: $c7
    ret c                                         ; $6a73: $d8

    add $c7                                       ; $6a74: $c6 $c7
    rst $10                                       ; $6a76: $d7
    add $d8                                       ; $6a77: $c6 $d8
    rst $00                                       ; $6a79: $c7
    add $d7                                       ; $6a7a: $c6 $d7
    xor [hl]                                      ; $6a7c: $ae
    rst $00                                       ; $6a7d: $c7
    db $e3                                        ; $6a7e: $e3
    ld [c], a                                     ; $6a7f: $e2
    ld e, $6a                                     ; $6a80: $1e $6a
    ld [c], a                                     ; $6a82: $e2
    add hl, sp                                    ; $6a83: $39
    ld l, d                                       ; $6a84: $6a
    ld [c], a                                     ; $6a85: $e2
    ld e, $6a                                     ; $6a86: $1e $6a
    jp nc, $5756                                  ; $6a88: $d2 $56 $57

    ret c                                         ; $6a8b: $d8

    ld d, [hl]                                    ; $6a8c: $56
    rst $10                                       ; $6a8d: $d7
    scf                                           ; $6a8e: $37
    reti                                          ; $6a8f: $d9


    ld [hl], $37                                  ; $6a90: $36 $37
    ret c                                         ; $6a92: $d8

    ld d, [hl]                                    ; $6a93: $56
    rst $10                                       ; $6a94: $d7
    ld d, a                                       ; $6a95: $57
    ld d, [hl]                                    ; $6a96: $56
    ld d, a                                       ; $6a97: $57
    ld [hl], $37                                  ; $6a98: $36 $37
    ret c                                         ; $6a9a: $d8

    add $c7                                       ; $6a9b: $c6 $c7
    or [hl]                                       ; $6a9d: $b6
    add a                                         ; $6a9e: $87
    ld [c], a                                     ; $6a9f: $e2
    ld e, $6a                                     ; $6aa0: $1e $6a
    jp nc, $5756                                  ; $6aa2: $d2 $56 $57

    ret c                                         ; $6aa5: $d8

    ld d, [hl]                                    ; $6aa6: $56
    rst $10                                       ; $6aa7: $d7
    scf                                           ; $6aa8: $37
    reti                                          ; $6aa9: $d9


    ld [hl], $37                                  ; $6aaa: $36 $37
    ret c                                         ; $6aac: $d8

    ld d, [hl]                                    ; $6aad: $56
    rst $10                                       ; $6aae: $d7
    ld d, a                                       ; $6aaf: $57
    ret c                                         ; $6ab0: $d8

    ld d, [hl]                                    ; $6ab1: $56
    ld d, a                                       ; $6ab2: $57
    rst $10                                       ; $6ab3: $d7
    ld d, [hl]                                    ; $6ab4: $56
    ret c                                         ; $6ab5: $d8

    ld d, a                                       ; $6ab6: $57
    rst $10                                       ; $6ab7: $d7
    ld d, [hl]                                    ; $6ab8: $56
    ret c                                         ; $6ab9: $d8

    adc [hl]                                      ; $6aba: $8e
    sub a                                         ; $6abb: $97
    pop de                                        ; $6abc: $d1
    rst $18                                       ; $6abd: $df
    ld [bc], a                                    ; $6abe: $02
    and [hl]                                      ; $6abf: $a6
    rst $10                                       ; $6ac0: $d7
    and a                                         ; $6ac1: $a7
    ret c                                         ; $6ac2: $d8

    and [hl]                                      ; $6ac3: $a6
    rst $10                                       ; $6ac4: $d7
    add a                                         ; $6ac5: $87
    reti                                          ; $6ac6: $d9


    add [hl]                                      ; $6ac7: $86
    add a                                         ; $6ac8: $87
    ret c                                         ; $6ac9: $d8

    and [hl]                                      ; $6aca: $a6
    rst $10                                       ; $6acb: $d7
    and a                                         ; $6acc: $a7
    add [hl]                                      ; $6acd: $86
    and a                                         ; $6ace: $a7
    ret c                                         ; $6acf: $d8

    and [hl]                                      ; $6ad0: $a6
    and a                                         ; $6ad1: $a7
    rst $10                                       ; $6ad2: $d7
    and [hl]                                      ; $6ad3: $a6
    ret c                                         ; $6ad4: $d8

    xor [hl]                                      ; $6ad5: $ae
    and a                                         ; $6ad6: $a7
    ldh [$e2], a                                  ; $6ad7: $e0 $e2
    ld e, $6a                                     ; $6ad9: $1e $6a
    db $e3                                        ; $6adb: $e3
    ld [c], a                                     ; $6adc: $e2
    ld d, h                                       ; $6add: $54
    ld l, d                                       ; $6ade: $6a
    ld [c], a                                     ; $6adf: $e2
    ld h, [hl]                                    ; $6ae0: $66
    ld l, d                                       ; $6ae1: $6a
    ld [c], a                                     ; $6ae2: $e2
    ld d, h                                       ; $6ae3: $54
    ld l, d                                       ; $6ae4: $6a
    jp nc, Jump_000_3736                          ; $6ae5: $d2 $36 $37

    ret c                                         ; $6ae8: $d8

    and [hl]                                      ; $6ae9: $a6
    rst $10                                       ; $6aea: $d7
    ld a, $37                                     ; $6aeb: $3e $37
    ret c                                         ; $6aed: $d8

    and [hl]                                      ; $6aee: $a6
    rst $10                                       ; $6aef: $d7
    scf                                           ; $6af0: $37
    ld [hl], $37                                  ; $6af1: $36 $37
    ret c                                         ; $6af3: $d8

    and [hl]                                      ; $6af4: $a6
    rst $10                                       ; $6af5: $d7
    scf                                           ; $6af6: $37
    ld [hl], $3e                                  ; $6af7: $36 $3e
    ret c                                         ; $6af9: $d8

    and a                                         ; $6afa: $a7
    ld [c], a                                     ; $6afb: $e2
    ld d, h                                       ; $6afc: $54
    ld l, d                                       ; $6afd: $6a
    ld [c], a                                     ; $6afe: $e2
    ld h, [hl]                                    ; $6aff: $66
    ld l, d                                       ; $6b00: $6a
    ld [c], a                                     ; $6b01: $e2
    ld d, h                                       ; $6b02: $54
    ld l, d                                       ; $6b03: $6a
    jp nc, Jump_000_3736                          ; $6b04: $d2 $36 $37

    ld [hl], $d8                                  ; $6b07: $36 $d8
    xor [hl]                                      ; $6b09: $ae
    and a                                         ; $6b0a: $a7
    rst $10                                       ; $6b0b: $d7
    ld [hl], $d8                                  ; $6b0c: $36 $d8
    and a                                         ; $6b0e: $a7
    add $c7                                       ; $6b0f: $c6 $c7
    halt                                          ; $6b11: $76
    rst $00                                       ; $6b12: $c7
    add $ce                                       ; $6b13: $c6 $ce
    ld [hl], a                                    ; $6b15: $77
    db $e3                                        ; $6b16: $e3
    ret nc                                        ; $6b17: $d0

    ld bc, $e2d1                                  ; $6b18: $01 $d1 $e2
    call z, $e26b                                 ; $6b1b: $cc $6b $e2
    call z, $e26b                                 ; $6b1e: $cc $6b $e2
    call z, $e26b                                 ; $6b21: $cc $6b $e2
    db $db                                        ; $6b24: $db
    ld l, e                                       ; $6b25: $6b
    ld [c], a                                     ; $6b26: $e2
    call z, $e26b                                 ; $6b27: $cc $6b $e2
    jp hl                                         ; $6b2a: $e9


    ld l, e                                       ; $6b2b: $6b
    ld [c], a                                     ; $6b2c: $e2
    call z, $e26b                                 ; $6b2d: $cc $6b $e2
    jp hl                                         ; $6b30: $e9


    ld l, e                                       ; $6b31: $6b
    ld [c], a                                     ; $6b32: $e2
    ld hl, sp+$6b                                 ; $6b33: $f8 $6b
    ld [c], a                                     ; $6b35: $e2
    add hl, bc                                    ; $6b36: $09
    ld l, h                                       ; $6b37: $6c
    ld [c], a                                     ; $6b38: $e2
    inc e                                         ; $6b39: $1c
    ld l, h                                       ; $6b3a: $6c
    ld [c], a                                     ; $6b3b: $e2
    jr z, jr_07e_6baa                             ; $6b3c: $28 $6c

    ld [c], a                                     ; $6b3e: $e2
    inc e                                         ; $6b3f: $1c
    ld l, h                                       ; $6b40: $6c
    ld [c], a                                     ; $6b41: $e2
    dec [hl]                                      ; $6b42: $35
    ld l, h                                       ; $6b43: $6c
    ld [c], a                                     ; $6b44: $e2
    inc e                                         ; $6b45: $1c
    ld l, h                                       ; $6b46: $6c
    ld [c], a                                     ; $6b47: $e2
    jr z, jr_07e_6bb6                             ; $6b48: $28 $6c

    ld [c], a                                     ; $6b4a: $e2
    inc e                                         ; $6b4b: $1c
    ld l, h                                       ; $6b4c: $6c
    ld [c], a                                     ; $6b4d: $e2
    dec [hl]                                      ; $6b4e: $35
    ld l, h                                       ; $6b4f: $6c
    ld [c], a                                     ; $6b50: $e2
    ld b, e                                       ; $6b51: $43
    ld l, h                                       ; $6b52: $6c
    ld [c], a                                     ; $6b53: $e2
    ld c, a                                       ; $6b54: $4f
    ld l, h                                       ; $6b55: $6c
    ld [c], a                                     ; $6b56: $e2
    ld c, a                                       ; $6b57: $4f
    ld l, h                                       ; $6b58: $6c
    ld [c], a                                     ; $6b59: $e2
    ld e, c                                       ; $6b5a: $59
    ld l, h                                       ; $6b5b: $6c
    ld [c], a                                     ; $6b5c: $e2
    ld l, b                                       ; $6b5d: $68
    ld l, h                                       ; $6b5e: $6c
    ld [c], a                                     ; $6b5f: $e2
    ld b, e                                       ; $6b60: $43
    ld l, h                                       ; $6b61: $6c
    ld [c], a                                     ; $6b62: $e2
    ld a, b                                       ; $6b63: $78
    ld l, h                                       ; $6b64: $6c
    ld [c], a                                     ; $6b65: $e2
    call z, $e26b                                 ; $6b66: $cc $6b $e2
    call z, $e26b                                 ; $6b69: $cc $6b $e2
    call z, $e26b                                 ; $6b6c: $cc $6b $e2
    db $db                                        ; $6b6f: $db
    ld l, e                                       ; $6b70: $6b
    ld [c], a                                     ; $6b71: $e2
    call z, $e26b                                 ; $6b72: $cc $6b $e2
    jp hl                                         ; $6b75: $e9


    ld l, e                                       ; $6b76: $6b
    ld [c], a                                     ; $6b77: $e2
    call z, $e26b                                 ; $6b78: $cc $6b $e2
    jp hl                                         ; $6b7b: $e9


    ld l, e                                       ; $6b7c: $6b
    ld [c], a                                     ; $6b7d: $e2
    ld hl, sp+$6b                                 ; $6b7e: $f8 $6b
    ld [c], a                                     ; $6b80: $e2
    inc e                                         ; $6b81: $1c
    ld l, h                                       ; $6b82: $6c
    ld [c], a                                     ; $6b83: $e2
    jr z, jr_07e_6bf2                             ; $6b84: $28 $6c

    ld [c], a                                     ; $6b86: $e2
    inc e                                         ; $6b87: $1c
    ld l, h                                       ; $6b88: $6c
    ld [c], a                                     ; $6b89: $e2
    dec [hl]                                      ; $6b8a: $35
    ld l, h                                       ; $6b8b: $6c
    ld [c], a                                     ; $6b8c: $e2
    inc e                                         ; $6b8d: $1c
    ld l, h                                       ; $6b8e: $6c
    ld [c], a                                     ; $6b8f: $e2
    jr z, jr_07e_6bfe                             ; $6b90: $28 $6c

    ld [c], a                                     ; $6b92: $e2
    inc e                                         ; $6b93: $1c
    ld l, h                                       ; $6b94: $6c
    ld [c], a                                     ; $6b95: $e2
    dec [hl]                                      ; $6b96: $35
    ld l, h                                       ; $6b97: $6c
    ld [c], a                                     ; $6b98: $e2
    ld b, e                                       ; $6b99: $43
    ld l, h                                       ; $6b9a: $6c
    ld [c], a                                     ; $6b9b: $e2
    ld c, a                                       ; $6b9c: $4f
    ld l, h                                       ; $6b9d: $6c
    ld [c], a                                     ; $6b9e: $e2
    ld c, a                                       ; $6b9f: $4f
    ld l, h                                       ; $6ba0: $6c
    ld [c], a                                     ; $6ba1: $e2
    ld e, c                                       ; $6ba2: $59
    ld l, h                                       ; $6ba3: $6c
    ld [c], a                                     ; $6ba4: $e2
    ld l, b                                       ; $6ba5: $68
    ld l, h                                       ; $6ba6: $6c
    ld [c], a                                     ; $6ba7: $e2
    ld e, c                                       ; $6ba8: $59
    ld l, h                                       ; $6ba9: $6c

jr_07e_6baa:
    ld [c], a                                     ; $6baa: $e2
    ld l, b                                       ; $6bab: $68
    ld l, h                                       ; $6bac: $6c
    ld [c], a                                     ; $6bad: $e2
    ld a, b                                       ; $6bae: $78
    ld l, h                                       ; $6baf: $6c
    ld d, $67                                     ; $6bb0: $16 $67
    add [hl]                                      ; $6bb2: $86
    ret nc                                        ; $6bb3: $d0

    inc a                                         ; $6bb4: $3c
    ret nz                                        ; $6bb5: $c0

jr_07e_6bb6:
    ret nc                                        ; $6bb6: $d0

    ld bc, $3607                                  ; $6bb7: $01 $07 $36
    scf                                           ; $6bba: $37
    ld [hl], $37                                  ; $6bbb: $36 $37
    ld e, $66                                     ; $6bbd: $1e $66
    add a                                         ; $6bbf: $87
    ld e, $86                                     ; $6bc0: $1e $86
    ld h, a                                       ; $6bc2: $67
    ld e, $66                                     ; $6bc3: $1e $66
    add a                                         ; $6bc5: $87
    ld [hl], $37                                  ; $6bc6: $36 $37
    ld [hl], $37                                  ; $6bc8: $36 $37
    sbc $ff                                       ; $6bca: $de $ff
    ld d, $67                                     ; $6bcc: $16 $67
    ld d, $87                                     ; $6bce: $16 $87
    ld a, $16                                     ; $6bd0: $3e $16
    daa                                           ; $6bd2: $27
    ld d, $67                                     ; $6bd3: $16 $67
    ld d, $87                                     ; $6bd5: $16 $87
    ld a, $16                                     ; $6bd7: $3e $16
    ld d, a                                       ; $6bd9: $57
    db $e3                                        ; $6bda: $e3
    ld d, $67                                     ; $6bdb: $16 $67
    ld d, $87                                     ; $6bdd: $16 $87
    ld a, $16                                     ; $6bdf: $3e $16
    daa                                           ; $6be1: $27
    ld d, $67                                     ; $6be2: $16 $67
    ld d, $87                                     ; $6be4: $16 $87
    ld a, $3e                                     ; $6be6: $3e $3e
    db $e3                                        ; $6be8: $e3
    ld d, $67                                     ; $6be9: $16 $67
    ld d, $87                                     ; $6beb: $16 $87
    ld a, $16                                     ; $6bed: $3e $16
    daa                                           ; $6bef: $27
    ld d, $67                                     ; $6bf0: $16 $67

jr_07e_6bf2:
    ld d, $87                                     ; $6bf2: $16 $87
    ld a, $26                                     ; $6bf4: $3e $26
    scf                                           ; $6bf6: $37
    db $e3                                        ; $6bf7: $e3
    ld d, $67                                     ; $6bf8: $16 $67
    ld d, $87                                     ; $6bfa: $16 $87
    ld [hl], $57                                  ; $6bfc: $36 $57

jr_07e_6bfe:
    ld d, $27                                     ; $6bfe: $16 $27
    ld d, $67                                     ; $6c00: $16 $67
    ld d, $87                                     ; $6c02: $16 $87
    ld [hl], $57                                  ; $6c04: $36 $57
    ld h, $37                                     ; $6c06: $26 $37
    db $e3                                        ; $6c08: $e3
    ld d, $67                                     ; $6c09: $16 $67
    ld d, $87                                     ; $6c0b: $16 $87
    ld [hl], $57                                  ; $6c0d: $36 $57
    ld d, $27                                     ; $6c0f: $16 $27
    ld d, $67                                     ; $6c11: $16 $67
    ld d, $87                                     ; $6c13: $16 $87
    ld [hl], $d7                                  ; $6c15: $36 $d7
    ld d, a                                       ; $6c17: $57
    ret c                                         ; $6c18: $d8

    or [hl]                                       ; $6c19: $b6
    and a                                         ; $6c1a: $a7
    db $e3                                        ; $6c1b: $e3
    ld e, $16                                     ; $6c1c: $1e $16
    ld d, a                                       ; $6c1e: $57
    ld a, $16                                     ; $6c1f: $3e $16
    daa                                           ; $6c21: $27
    ld d, $57                                     ; $6c22: $16 $57
    ld e, $3e                                     ; $6c24: $1e $3e
    ld a, $e3                                     ; $6c26: $3e $e3
    ld e, $16                                     ; $6c28: $1e $16
    ld d, a                                       ; $6c2a: $57
    ld a, $16                                     ; $6c2b: $3e $16
    daa                                           ; $6c2d: $27
    ld d, $57                                     ; $6c2e: $16 $57
    ld e, $3e                                     ; $6c30: $1e $3e
    ld h, $37                                     ; $6c32: $26 $37
    db $e3                                        ; $6c34: $e3
    ld e, $16                                     ; $6c35: $1e $16
    ld d, a                                       ; $6c37: $57
    ld a, $16                                     ; $6c38: $3e $16
    daa                                           ; $6c3a: $27
    ld d, $57                                     ; $6c3b: $16 $57
    ld e, $36                                     ; $6c3d: $1e $36
    scf                                           ; $6c3f: $37
    ld h, $37                                     ; $6c40: $26 $37
    db $e3                                        ; $6c42: $e3
    ret nc                                        ; $6c43: $d0

    ld [bc], a                                    ; $6c44: $02
    adc $d0                                       ; $6c45: $ce $d0
    ld bc, $5e1e                                  ; $6c47: $01 $1e $5e
    ld e, $3e                                     ; $6c4a: $1e $3e
    ld e, $3e                                     ; $6c4c: $1e $3e
    db $e3                                        ; $6c4e: $e3
    rst $18                                       ; $6c4f: $df
    ld [bc], a                                    ; $6c50: $02
    ld e, $66                                     ; $6c51: $1e $66
    add a                                         ; $6c53: $87
    ld e, $86                                     ; $6c54: $1e $86
    ld h, a                                       ; $6c56: $67
    ldh [$e3], a                                  ; $6c57: $e0 $e3
    ld d, $67                                     ; $6c59: $16 $67
    add [hl]                                      ; $6c5b: $86
    rla                                           ; $6c5c: $17
    add [hl]                                      ; $6c5d: $86
    ld h, a                                       ; $6c5e: $67
    ld a, $16                                     ; $6c5f: $3e $16
    daa                                           ; $6c61: $27
    ld [hl], $17                                  ; $6c62: $36 $17
    ld h, [hl]                                    ; $6c64: $66
    add a                                         ; $6c65: $87
    ld a, $e3                                     ; $6c66: $3e $e3
    ld d, $67                                     ; $6c68: $16 $67
    add [hl]                                      ; $6c6a: $86
    rla                                           ; $6c6b: $17
    add [hl]                                      ; $6c6c: $86
    ld h, a                                       ; $6c6d: $67
    ld a, $16                                     ; $6c6e: $3e $16
    daa                                           ; $6c70: $27
    ld [hl], $17                                  ; $6c71: $36 $17
    ld h, [hl]                                    ; $6c73: $66
    add a                                         ; $6c74: $87
    ld [hl], $37                                  ; $6c75: $36 $37
    db $e3                                        ; $6c77: $e3
    ld e, $5e                                     ; $6c78: $1e $5e
    ld e, $5e                                     ; $6c7a: $1e $5e
    ld e, $5e                                     ; $6c7c: $1e $5e
    ld [hl], $37                                  ; $6c7e: $36 $37
    ld [hl], $37                                  ; $6c80: $36 $37
    db $e3                                        ; $6c82: $e3
    ret nc                                        ; $6c83: $d0

    add hl, de                                    ; $6c84: $19
    push hl                                       ; $6c85: $e5
    add b                                         ; $6c86: $80
    and $b0                                       ; $6c87: $e6 $b0
    call c, $ea11                                 ; $6c89: $dc $11 $ea
    inc b                                         ; $6c8c: $04
    db $eb                                        ; $6c8d: $eb
    cpl                                           ; $6c8e: $2f
    add sp, $07                                   ; $6c8f: $e8 $07
    db $d3                                        ; $6c91: $d3
    ld [c], a                                     ; $6c92: $e2
    sub a                                         ; $6c93: $97
    ld l, h                                       ; $6c94: $6c
    sbc $ff                                       ; $6c95: $de $ff
    db $d3                                        ; $6c97: $d3
    ld d, h                                       ; $6c98: $54
    ld d, b                                       ; $6c99: $50
    ld h, b                                       ; $6c9a: $60
    add b                                         ; $6c9b: $80
    add e                                         ; $6c9c: $83
    inc sp                                        ; $6c9d: $33
    ld h, h                                       ; $6c9e: $64
    ld d, b                                       ; $6c9f: $50
    jr nc, jr_07e_6cb2                            ; $6ca0: $30 $10

    scf                                           ; $6ca2: $37
    ld d, h                                       ; $6ca3: $54
    ld d, b                                       ; $6ca4: $50
    ld [hl], b                                    ; $6ca5: $70
    add b                                         ; $6ca6: $80
    and e                                         ; $6ca7: $a3
    inc sp                                        ; $6ca8: $33
    add h                                         ; $6ca9: $84
    ld [hl], c                                    ; $6caa: $71
    add b                                         ; $6cab: $80
    ld d, a                                       ; $6cac: $57
    inc [hl]                                      ; $6cad: $34
    db $10                                        ; $6cae: $10
    ret c                                         ; $6caf: $d8

    ret nz                                        ; $6cb0: $c0

    and b                                         ; $6cb1: $a0

jr_07e_6cb2:
    add d                                         ; $6cb2: $82
    rst $10                                       ; $6cb3: $d7
    ld [de], a                                    ; $6cb4: $12
    ld sp, $6064                                  ; $6cb5: $31 $64 $60
    add b                                         ; $6cb8: $80
    and b                                         ; $6cb9: $a0
    add a                                         ; $6cba: $87
    rst $10                                       ; $6cbb: $d7
    inc d                                         ; $6cbc: $14
    ret c                                         ; $6cbd: $d8

    ret nz                                        ; $6cbe: $c0

    and b                                         ; $6cbf: $a0
    add b                                         ; $6cc0: $80
    and a                                         ; $6cc1: $a7
    call nz, $d7c0                                ; $6cc2: $c4 $c0 $d7
    db $10                                        ; $6cc5: $10
    jr nc, jr_07e_6cdf                            ; $6cc6: $30 $17

    db $e3                                        ; $6cc8: $e3
    ret nc                                        ; $6cc9: $d0

    add hl, de                                    ; $6cca: $19
    push hl                                       ; $6ccb: $e5
    add b                                         ; $6ccc: $80
    and $50                                       ; $6ccd: $e6 $50
    ld [$eb04], a                                 ; $6ccf: $ea $04 $eb
    dec l                                         ; $6cd2: $2d
    add sp, $07                                   ; $6cd3: $e8 $07
    db $e4                                        ; $6cd5: $e4
    cp $d3                                        ; $6cd6: $fe $d3
    nop                                           ; $6cd8: $00
    ret nc                                        ; $6cd9: $d0

    ld bc, $d006                                  ; $6cda: $01 $06 $d0
    add hl, de                                    ; $6cdd: $19
    db $dd                                        ; $6cde: $dd

jr_07e_6cdf:
    ld [c], a                                     ; $6cdf: $e2
    sub a                                         ; $6ce0: $97
    ld l, h                                       ; $6ce1: $6c
    sbc $ff                                       ; $6ce2: $de $ff
    ret nc                                        ; $6ce4: $d0

    add hl, de                                    ; $6ce5: $19
    rst $20                                       ; $6ce6: $e7
    add hl, bc                                    ; $6ce7: $09
    and $40                                       ; $6ce8: $e6 $40
    jp hl                                         ; $6cea: $e9


    nop                                           ; $6ceb: $00
    call c, $e811                                 ; $6cec: $dc $11 $e8
    rlca                                          ; $6cef: $07
    db $d3                                        ; $6cf0: $d3
    ld [de], a                                    ; $6cf1: $12
    db $10                                        ; $6cf2: $10
    inc de                                        ; $6cf3: $13
    ret c                                         ; $6cf4: $d8

    or d                                          ; $6cf5: $b2
    or b                                          ; $6cf6: $b0
    or c                                          ; $6cf7: $b1
    or c                                          ; $6cf8: $b1
    ld h, d                                       ; $6cf9: $62
    ld h, b                                       ; $6cfa: $60
    ld h, e                                       ; $6cfb: $63
    or d                                          ; $6cfc: $b2
    or b                                          ; $6cfd: $b0
    or c                                          ; $6cfe: $b1
    or c                                          ; $6cff: $b1
    rst $10                                       ; $6d00: $d7
    ld [de], a                                    ; $6d01: $12
    db $10                                        ; $6d02: $10
    inc de                                        ; $6d03: $13
    ld [hl-], a                                   ; $6d04: $32
    jr nc, @+$35                                  ; $6d05: $30 $33

    ret c                                         ; $6d07: $d8

    add d                                         ; $6d08: $82
    add b                                         ; $6d09: $80
    add e                                         ; $6d0a: $83
    rst $10                                       ; $6d0b: $d7
    ld [de], a                                    ; $6d0c: $12
    db $10                                        ; $6d0d: $10
    ld de, $d811                                  ; $6d0e: $11 $11 $d8
    add d                                         ; $6d11: $82
    add b                                         ; $6d12: $80
    add e                                         ; $6d13: $83
    rst $10                                       ; $6d14: $d7
    ld [de], a                                    ; $6d15: $12
    db $10                                        ; $6d16: $10
    ld de, $d811                                  ; $6d17: $11 $11 $d8
    ld h, d                                       ; $6d1a: $62
    ld h, b                                       ; $6d1b: $60
    ld h, e                                       ; $6d1c: $63
    add d                                         ; $6d1d: $82
    add b                                         ; $6d1e: $80
    add c                                         ; $6d1f: $81
    add c                                         ; $6d20: $81
    and d                                         ; $6d21: $a2
    and b                                         ; $6d22: $a0
    and e                                         ; $6d23: $a3
    ld h, d                                       ; $6d24: $62
    ld h, b                                       ; $6d25: $60
    ld h, c                                       ; $6d26: $61
    ld h, c                                       ; $6d27: $61
    add d                                         ; $6d28: $82
    add b                                         ; $6d29: $80
    add e                                         ; $6d2a: $83
    ld [de], a                                    ; $6d2b: $12
    db $10                                        ; $6d2c: $10
    ld de, $de11                                  ; $6d2d: $11 $11 $de
    rst $38                                       ; $6d30: $ff
    ret nc                                        ; $6d31: $d0

    add hl, de                                    ; $6d32: $19
    pop de                                        ; $6d33: $d1
    ld [de], a                                    ; $6d34: $12
    db $10                                        ; $6d35: $10
    ld de, $de51                                  ; $6d36: $11 $51 $de
    rst $38                                       ; $6d39: $ff

    db $d0, $01, $dc, $11, $e5, $80, $e8, $07, $ea, $0d, $eb, $19, $d3, $df, $02, $e6
    db $00, $08, $08, $08, $09, $08, $08, $08, $09, $e0, $dd, $e6, $b0, $df, $02, $c8
    db $d9, $c8, $d9, $c8, $d9, $c9, $d9, $c8, $d9, $c8, $d9, $c8, $d9, $c9, $d9, $c8
    db $d9, $c8, $d9, $c8, $d9, $c9, $a8, $d9, $a8, $d9, $a8, $d9, $a9, $98, $d9, $98
    db $d9, $98, $d9, $99, $d9, $98, $d9, $98, $d9, $98, $d9, $99, $d9, $98, $d9, $98
    db $d9, $98, $d9, $99, $a8, $d9, $a8, $d9, $a8, $d9, $a9, $c8, $d9, $c8, $d9, $c8
    db $d9, $c9, $d9, $c8, $d9, $c8, $d9, $c8, $a9, $d9, $a8, $d9, $a8, $d9, $a8, $d9
    db $a9, $d9, $a8, $d9, $a8, $d9, $a8, $d9, $a9, $c8, $d9, $c8, $d9, $c8, $d9, $c9
    db $d9, $c8, $d9, $c8, $d9, $c8, $d9, $c9, $d9, $c8, $d9, $c8, $d9, $c8, $d9, $c9
    db $a8, $d9, $a8, $d9, $a8, $d9, $a9, $88, $d9, $88, $d9, $88, $d9, $89, $d9, $88
    db $d9, $88, $d9, $88, $79, $d9, $78, $d9, $78, $d9, $78, $d9, $79, $d9, $78, $d9
    db $78, $d9, $78, $d9, $79, $88, $d9, $88, $d9, $88, $d9, $89, $d9, $88, $d9, $88
    db $d9, $88, $d9, $89, $d9, $88, $d9, $88, $d9, $88, $d9, $89, $d9, $88, $d9, $88
    db $d9, $88, $d9, $89, $d7, $18, $d9, $18, $d9, $18, $d9, $19, $d9, $18, $d9, $18
    db $d9, $18, $d9, $19, $58, $d9, $58, $d9, $58, $d9, $59, $d9, $58, $d9, $58, $d9
    db $58, $d9, $59, $d8, $e0, $d4, $18, $08, $18, $09, $d8, $c8, $d7, $18, $d9, $12
    db $05, $39, $d9, $38, $d9, $38, $d9, $38, $d9, $39, $d9, $38, $d9, $38, $d9, $38
    db $d9, $39, $38, $08, $38, $09, $18, $d8, $c8, $d9, $c2, $05, $d7, $19, $d9, $18
    db $d9, $18, $d9, $18, $d9, $19, $d9, $18, $d9, $18, $d9, $18, $d9, $19, $18, $d9
    db $18, $d9, $18, $d8, $c9, $d9, $c8, $d9, $c8, $d7, $18, $d9, $19, $38, $d9, $38
    db $d9, $38, $19, $d9, $18, $d9, $18, $d8, $c8, $d9, $c9, $d7, $38, $d9, $38, $d9
    db $38, $d8, $b9, $d9, $b8, $d9, $b8, $d7, $38, $d9, $39, $48, $d9, $48, $d9, $48
    db $39, $d9, $38, $d9, $38, $18, $d9, $19, $68, $08, $68, $09, $08, $68, $d9, $62
    db $05, $89, $d9, $88, $d9, $88, $d9, $88, $d9, $89, $48, $d9, $48, $88, $d9, $89
    db $68, $08, $68, $09, $08, $68, $d9, $62, $05, $49, $d9, $48, $d9, $48, $d9, $48
    db $d9, $49, $d9, $48, $d9, $48, $d9, $48, $d9, $49, $e6, $c0, $df, $02, $d3, $c8
    db $d9, $c8, $d9, $c8, $d9, $c9, $d9, $c8, $d9, $c8, $d9, $c8, $d9, $c9, $d9, $c8
    db $d9, $c8, $d9, $c8, $d9, $c9, $d9, $c8, $d9, $c8, $d9, $c8, $d9, $c9, $d7, $18
    db $d9, $18, $d9, $18, $d9, $19, $d9, $18, $d9, $18, $d9, $18, $d9, $19, $58, $d9
    db $58, $d9, $58, $d9, $59, $d9, $58, $d9, $58, $d9, $58, $d9, $59, $88, $d9, $88
    db $d9, $88, $59, $d9, $58, $d9, $58, $18, $d9, $19, $d8, $c8, $d9, $c8, $d9, $c8
    db $d9, $c9, $a8, $d9, $a8, $c8, $d9, $c9, $d7, $18, $d9, $18, $d9, $18, $d9, $19
    db $d9, $18, $d9, $18, $d9, $18, $39, $d9, $38, $d9

    jr c, @-$25                                   ; $6f44: $38 $d9

    jr c, @-$25                                   ; $6f46: $38 $d9

    add hl, sp                                    ; $6f48: $39
    reti                                          ; $6f49: $d9


    jr c, @-$25                                   ; $6f4a: $38 $d9

    jr c, @-$25                                   ; $6f4c: $38 $d9

    jr c, @-$25                                   ; $6f4e: $38 $d9

    add hl, sp                                    ; $6f50: $39
    ret c                                         ; $6f51: $d8

    ldh [$de], a                                  ; $6f52: $e0 $de
    rst $38                                       ; $6f54: $ff

    db $d3, $98, $d9, $98, $d9, $98, $d9, $99, $d9, $98, $d9, $98, $d9, $98, $d9, $99
    db $d9, $98, $d9, $98, $d9, $98, $d9, $99, $78, $d9, $78, $d9, $78, $d9, $79, $58
    db $d9, $58, $d9, $58, $d9, $59, $d9, $58, $d9, $58, $d9, $58, $d9, $59, $d9, $58
    db $d9, $58, $d9, $58, $d9, $59, $78, $d9, $78, $d9, $78, $d9, $79, $98, $d9, $98
    db $d9, $98, $d9, $99, $d9, $98, $d9, $98, $d9, $98, $79, $d9, $78, $d9, $78, $d9
    db $78, $d9, $79, $d9, $78, $d9, $78, $d9, $78, $d9, $79, $88, $d9, $88, $d9, $88
    db $d9, $89, $d9, $88, $d9, $88, $d9, $88, $d9, $89, $d9, $88, $d9, $88, $d9, $88
    db $d9, $89, $78, $d9, $78, $d9, $78, $d9, $79, $58, $d9, $58, $d9, $58, $d9, $59
    db $d9, $58, $d9, $58, $d9, $58, $39, $d9, $38, $d9, $38, $d9, $38, $d9, $39, $d9
    db $38, $d9, $38, $d9, $38, $d9, $39, $df, $03, $58, $d9, $58, $d9, $58, $d9, $59
    db $d9, $e0, $58, $d9, $58, $d9, $58, $d9, $59, $e3, $d0, $01, $dc, $11, $e5, $80
    db $e8, $07, $ea, $0d, $eb, $19, $d3, $d3, $df, $02, $e6, $00, $08, $08, $08, $09
    db $08, $08, $08, $09, $e0, $dd, $e6, $90, $e2, $55, $6f, $d3, $df, $02, $88, $d9
    db $88, $d9, $88, $d9, $89, $d9, $88, $d9, $88, $d9, $88, $d9, $89, $e0, $e2, $55
    db $6f, $88, $d9, $88, $d9, $88, $d9, $89, $d9, $88, $d9, $88, $d9, $88, $d9, $89
    db $d7, $18, $d9, $18, $d9, $18, $d9, $19, $d9, $18, $d9, $18, $d9, $18, $d9, $19
    db $d8, $a8, $08, $a8, $09, $88, $a8, $d9, $a2, $05, $a9, $d9, $a8, $d9, $a8, $d9
    db $a8, $d9, $a9, $d9, $a8, $d9, $a8, $d9, $a8, $d9, $a9, $88, $08, $88, $09, $88
    db $88, $d9, $82, $05, $89, $d9, $88, $d9, $88, $d9, $88, $d9, $89, $d9, $88, $d9
    db $88, $d9, $88, $d9, $89, $df, $02, $a8, $d9, $a8, $d9, $a8, $a9, $d9, $a8, $d9
    db $a8, $a8, $d9, $a9, $e0, $b8, $d9, $b8, $d9, $b8, $d7, $19, $d9, $18, $d9, $18
    db $d8, $b8, $d9, $b9, $b8, $d9, $b8, $d9, $b8, $b9, $d9, $b8, $d9, $b8, $b8, $d9
    db $b9, $d7, $28, $08, $28, $09, $08, $28, $d9, $22, $05, $49, $d9, $48, $d9, $48
    db $d9, $48, $d9, $49, $08, $08, $08, $09, $38, $08, $38, $09, $08, $38, $d9, $32
    db $05, $19, $d9, $18, $d9, $18, $d9, $18, $d9, $19, $d9, $18, $d9, $18, $d9, $18
    db $d9, $19, $e6, $70, $e2, $6d, $71, $d3, $68, $d9, $68, $d9, $68, $a9, $d9, $a8
    db $d9, $a8, $68, $d9, $69, $d9, $68, $d9, $68, $d9, $68, $d9, $69, $a8, $d9, $a8
    db $68, $d9, $69, $e2, $6d, $71, $68, $d9, $68, $d9, $68, $d9, $69, $d9, $68, $d9
    db $68, $d9, $68, $69, $d9, $68, $d9

    ld l, b                                       ; $711c: $68
    reti                                          ; $711d: $d9


    ld l, b                                       ; $711e: $68
    reti                                          ; $711f: $d9


    ld l, c                                       ; $7120: $69
    reti                                          ; $7121: $d9


jr_07e_7122:
    ld l, b                                       ; $7122: $68
    reti                                          ; $7123: $d9


    ld l, b                                       ; $7124: $68
    reti                                          ; $7125: $d9


    ld l, b                                       ; $7126: $68
    reti                                          ; $7127: $d9


    ld l, c                                       ; $7128: $69
    ld [c], a                                     ; $7129: $e2
    ld l, l                                       ; $712a: $6d
    ld [hl], c                                    ; $712b: $71
    ld l, b                                       ; $712c: $68
    reti                                          ; $712d: $d9


    ld l, b                                       ; $712e: $68
    reti                                          ; $712f: $d9


    ld l, b                                       ; $7130: $68
    xor c                                         ; $7131: $a9
    reti                                          ; $7132: $d9


    xor b                                         ; $7133: $a8
    reti                                          ; $7134: $d9


    xor b                                         ; $7135: $a8
    rst $10                                       ; $7136: $d7
    jr @-$25                                      ; $7137: $18 $d9

    add hl, de                                    ; $7139: $19
    reti                                          ; $713a: $d9


    jr @-$25                                      ; $713b: $18 $d9

    jr @-$25                                      ; $713d: $18 $d9

    jr @-$25                                      ; $713f: $18 $d9

    add hl, de                                    ; $7141: $19
    ret c                                         ; $7142: $d8

    xor b                                         ; $7143: $a8
    reti                                          ; $7144: $d9


    xor b                                         ; $7145: $a8
    rst $10                                       ; $7146: $d7
    jr jr_07e_7122                                ; $7147: $18 $d9

    add hl, de                                    ; $7149: $19
    ld [c], a                                     ; $714a: $e2
    ld l, l                                       ; $714b: $6d
    ld [hl], c                                    ; $714c: $71
    ld l, b                                       ; $714d: $68
    reti                                          ; $714e: $d9


    ld l, b                                       ; $714f: $68
    reti                                          ; $7150: $d9


    ld l, b                                       ; $7151: $68
    reti                                          ; $7152: $d9


    ld l, c                                       ; $7153: $69
    reti                                          ; $7154: $d9


    ld l, b                                       ; $7155: $68
    reti                                          ; $7156: $d9


    ld l, b                                       ; $7157: $68
    reti                                          ; $7158: $d9


    ld l, b                                       ; $7159: $68
    ld l, c                                       ; $715a: $69
    reti                                          ; $715b: $d9


    ld l, b                                       ; $715c: $68
    reti                                          ; $715d: $d9


    ld l, b                                       ; $715e: $68
    reti                                          ; $715f: $d9


    ld l, b                                       ; $7160: $68
    reti                                          ; $7161: $d9


    ld l, c                                       ; $7162: $69
    reti                                          ; $7163: $d9


    ld l, b                                       ; $7164: $68
    reti                                          ; $7165: $d9


    ld l, b                                       ; $7166: $68
    reti                                          ; $7167: $d9


    ld l, b                                       ; $7168: $68
    reti                                          ; $7169: $d9


    ld l, c                                       ; $716a: $69
    sbc $ff                                       ; $716b: $de $ff

    db $d3, $58, $d9, $58, $d9, $58, $59, $d9, $58, $d9, $58, $58, $d9, $59, $d9, $58
    db $d9, $58, $d9, $58, $d9, $59, $58, $d9, $58, $58, $d9, $59, $e3, $d0, $01, $e7
    db $1e, $e6, $20, $e9, $00, $dc, $11, $e8, $06, $d1, $df, $02, $08, $08, $08, $09
    db $08, $08, $08, $09, $e0, $dd, $d1, $df, $02, $df, $03, $58, $d9, $58, $d9, $58
    db $d9, $59, $c8, $d9, $c8, $d9, $c8, $59, $d9, $58, $58, $58, $d9, $59, $c8, $d9
    db $c8, $d9, $c8, $d9, $c9, $e0, $88, $d9, $88, $d9, $88, $d9, $89, $d7, $38, $d9
    db $38, $d9, $38, $d8, $89, $d9, $88, $88, $88, $d9, $89, $d7, $38, $d9, $38, $d9
    db $38, $d9, $39, $d8, $a8, $d9, $a8, $d9, $a8, $d9, $a9, $d7, $58, $d9, $58, $d9
    db $58, $d8, $c9, $d9, $c8, $c8, $c8, $d9, $c9, $d7, $78, $d9, $78, $d8, $78, $d9
    db $79, $68, $d9, $68, $d9, $68, $d9, $69, $d7, $18, $d9, $18, $d9, $18, $d8, $69
    db $d9, $68, $68, $68, $d9, $69, $d7, $18, $d9, $18, $d9, $18, $d9, $19, $d8, $68
    db $d9, $68, $d9, $68, $d9, $69, $d7, $68, $d9, $68, $d9, $68, $d8, $69, $d9, $68
    db $68, $68, $d9, $69, $d7, $68, $d9, $68, $d9, $68, $d9, $69, $d8, $e0, $e2, $a3
    db $72, $e2, $c3, $72, $e2, $a3, $72, $48, $d9, $48, $d9, $48, $d9, $49, $d7, $48
    db $d9, $48, $d9, $48, $49, $d9, $48, $d8, $48, $48, $d9, $49, $d7, $48, $d9, $48
    db $d8, $48, $59, $78, $d9, $78, $d9, $78, $d9, $79, $d7, $78, $d9, $78, $d9, $78
    db $69, $d9, $68, $d8, $68, $68, $d9, $69, $d7, $68, $d9, $68, $d9, $68, $d9, $69
    db $d8, $48, $d9, $48, $d9, $48, $d9, $49, $d7, $48, $d9, $48, $d9, $48, $29, $d9
    db $28, $28, $d8, $98, $d9, $99, $d7, $28, $d9, $28, $d9, $28, $d9, $29, $df, $08
    db $e2, $c3, $72, $e0

    sbc $ff                                       ; $72a1: $de $ff

    db $d1, $38, $d9, $38, $d9, $38, $d9, $39, $d7, $38, $d9, $38, $d9, $38, $39, $d9
    db $38, $d8, $38, $38, $d9, $39, $d7, $38, $d9, $38, $d9, $38, $d9, $39, $d8, $e3
    db $d2, $18, $d9, $18, $d9, $18, $d9, $19, $88, $d9, $88, $d9, $88, $19, $d9, $18
    db $18, $18, $d9, $19, $88, $d9, $88, $d9, $88, $d9, $89, $e3, $d0, $01, $d1, $18
    db $08, $38, $29, $18, $28, $08, $39, $18, $08, $08, $19, $38, $28, $38, $39, $dd
    db $18, $08, $d7, $68, $d8, $09, $58, $d7, $68, $d8, $08, $d7, $69, $d8, $58, $d7
    db $68, $d8, $18, $09, $d7, $68, $d8, $08, $58, $09, $d7, $68, $d8, $08, $18, $09
    db $d7, $68, $d8, $08, $58, $19, $d7, $68, $d8, $18, $18, $09, $18, $08, $d7, $68
    db $d8, $59, $de

    rst $38                                       ; $7326: $ff
    ret nc                                        ; $7327: $d0

    ld bc, $40e5                                  ; $7328: $01 $e5 $40
    and $b0                                       ; $732b: $e6 $b0
    call c, $e811                                 ; $732d: $dc $11 $e8
    rlca                                          ; $7330: $07
    ld [$eb01], a                                 ; $7331: $ea $01 $eb

jr_07e_7334:
    ld e, $d4                                     ; $7334: $1e $d4
    ld [c], a                                     ; $7336: $e2
    rst $28                                       ; $7337: $ef
    ld [hl], e                                    ; $7338: $73
    ld [c], a                                     ; $7339: $e2
    ld c, e                                       ; $733a: $4b
    ld [hl], h                                    ; $733b: $74
    ld [c], a                                     ; $733c: $e2
    rst $28                                       ; $733d: $ef
    ld [hl], e                                    ; $733e: $73
    rst $18                                       ; $733f: $df

jr_07e_7340:
    ld [bc], a                                    ; $7340: $02
    call nc, $d818                                ; $7341: $d4 $18 $d8
    adc c                                         ; $7344: $89
    rst $10                                       ; $7345: $d7
    add hl, de                                    ; $7346: $19
    add hl, sp                                    ; $7347: $39
    ret c                                         ; $7348: $d8

    adc b                                         ; $7349: $88
    rst $10                                       ; $734a: $d7
    add hl, sp                                    ; $734b: $39
    ld e, c                                       ; $734c: $59
    ret c                                         ; $734d: $d8

    adc c                                         ; $734e: $89
    rst $10                                       ; $734f: $d7
    ld e, b                                       ; $7350: $58
    ld l, c                                       ; $7351: $69
    ld e, c                                       ; $7352: $59
    add hl, sp                                    ; $7353: $39
    ld e, b                                       ; $7354: $58
    ret c                                         ; $7355: $d8

    adc c                                         ; $7356: $89
    adc c                                         ; $7357: $89
    rst $10                                       ; $7358: $d7
    add hl, sp                                    ; $7359: $39
    jr jr_07e_7334                                ; $735a: $18 $d8

    ret                                           ; $735c: $c9


    rst $10                                       ; $735d: $d7
    add hl, de                                    ; $735e: $19
    ret c                                         ; $735f: $d8

jr_07e_7360:
    adc c                                         ; $7360: $89
    ld e, b                                       ; $7361: $58
    adc c                                         ; $7362: $89
    add hl, de                                    ; $7363: $19
    adc c                                         ; $7364: $89
    rst $10                                       ; $7365: $d7
    jr jr_07e_7340                                ; $7366: $18 $d8

    adc c                                         ; $7368: $89
    adc c                                         ; $7369: $89
    rst $10                                       ; $736a: $d7
    add hl, sp                                    ; $736b: $39
    ret c                                         ; $736c: $d8

    adc b                                         ; $736d: $88
    adc c                                         ; $736e: $89
    rst $10                                       ; $736f: $d7
    ld e, c                                       ; $7370: $59
    add hl, sp                                    ; $7371: $39
    jr jr_07e_73dd                                ; $7372: $18 $69

    ld e, c                                       ; $7374: $59
    add hl, sp                                    ; $7375: $39
    ret c                                         ; $7376: $d8

    ret z                                         ; $7377: $c8

    rst $10                                       ; $7378: $d7
    add hl, de                                    ; $7379: $19
    add hl, sp                                    ; $737a: $39
    add hl, de                                    ; $737b: $19
    ret c                                         ; $737c: $d8

    adc b                                         ; $737d: $88
    rst $10                                       ; $737e: $d7
    add hl, de                                    ; $737f: $19

jr_07e_7380:
    ret c                                         ; $7380: $d8

    adc c                                         ; $7381: $89
    reti                                          ; $7382: $d9


    adc c                                         ; $7383: $89
    rst $10                                       ; $7384: $d7
    jr jr_07e_7360                                ; $7385: $18 $d9

    add hl, de                                    ; $7387: $19
    ret c                                         ; $7388: $d8

    add hl, de                                    ; $7389: $19
    reti                                          ; $738a: $d9


    add hl, de                                    ; $738b: $19
    ldh [$e2], a                                  ; $738c: $e0 $e2
    ld c, e                                       ; $738e: $4b
    ld [hl], h                                    ; $738f: $74
    sbc $ff                                       ; $7390: $de $ff
    call nc, $d918                                ; $7392: $d4 $18 $d9
    add hl, de                                    ; $7395: $19
    reti                                          ; $7396: $d9


    dec e                                         ; $7397: $1d
    dec b                                         ; $7398: $05
    ret c                                         ; $7399: $d8

    ret z                                         ; $739a: $c8

    xor c                                         ; $739b: $a9
    adc c                                         ; $739c: $89
    reti                                          ; $739d: $d9


jr_07e_739e:
    adc c                                         ; $739e: $89
    ld l, b                                       ; $739f: $68
    reti                                          ; $73a0: $d9


    ld l, c                                       ; $73a1: $69
    ld e, c                                       ; $73a2: $59
    reti                                          ; $73a3: $d9


    ld e, c                                       ; $73a4: $59
    jr c, jr_07e_7380                             ; $73a5: $38 $d9

    add hl, sp                                    ; $73a7: $39
    ld e, c                                       ; $73a8: $59
    reti                                          ; $73a9: $d9


    ld e, c                                       ; $73aa: $59
    ld l, b                                       ; $73ab: $68
    reti                                          ; $73ac: $d9


    ld l, c                                       ; $73ad: $69
    adc c                                         ; $73ae: $89
    reti                                          ; $73af: $d9


    adc c                                         ; $73b0: $89
    reti                                          ; $73b1: $d9


    adc b                                         ; $73b2: $88
    reti                                          ; $73b3: $d9


    adc c                                         ; $73b4: $89
    db $e3                                        ; $73b5: $e3
    call nc, Call_000_0918                        ; $73b6: $d4 $18 $09
    add hl, de                                    ; $73b9: $19
    add hl, bc                                    ; $73ba: $09
    ret c                                         ; $73bb: $d8

    ret z                                         ; $73bc: $c8

    rst $10                                       ; $73bd: $d7
    add hl, de                                    ; $73be: $19
    add hl, sp                                    ; $73bf: $39
    reti                                          ; $73c0: $d9


    add hl, sp                                    ; $73c1: $39
    reti                                          ; $73c2: $d9


    jr c, jr_07e_739e                             ; $73c3: $38 $d9

    add hl, sp                                    ; $73c5: $39
    reti                                          ; $73c6: $d9


    add hl, sp                                    ; $73c7: $39
    reti                                          ; $73c8: $d9


    add hl, sp                                    ; $73c9: $39
    ld e, b                                       ; $73ca: $58
    add hl, bc                                    ; $73cb: $09
    ld e, c                                       ; $73cc: $59
    add hl, bc                                    ; $73cd: $09
    jr c, jr_07e_7429                             ; $73ce: $38 $59

    ld l, c                                       ; $73d0: $69
    reti                                          ; $73d1: $d9


    ld l, c                                       ; $73d2: $69
    reti                                          ; $73d3: $d9


    ld l, b                                       ; $73d4: $68
    reti                                          ; $73d5: $d9


    ld l, c                                       ; $73d6: $69
    reti                                          ; $73d7: $d9


    ld l, c                                       ; $73d8: $69
    reti                                          ; $73d9: $d9


    ld l, c                                       ; $73da: $69
    jr jr_07e_73e6                                ; $73db: $18 $09

jr_07e_73dd:
    add hl, de                                    ; $73dd: $19
    add hl, bc                                    ; $73de: $09
    ret c                                         ; $73df: $d8

    ret z                                         ; $73e0: $c8

    rst $10                                       ; $73e1: $d7
    add hl, de                                    ; $73e2: $19
    add hl, sp                                    ; $73e3: $39
    reti                                          ; $73e4: $d9


    add hl, sp                                    ; $73e5: $39

jr_07e_73e6:
    ret c                                         ; $73e6: $d8

    adc b                                         ; $73e7: $88
    reti                                          ; $73e8: $d9


    adc c                                         ; $73e9: $89
    rst $10                                       ; $73ea: $d7
    add hl, sp                                    ; $73eb: $39
    reti                                          ; $73ec: $d9


    add hl, sp                                    ; $73ed: $39
    db $e3                                        ; $73ee: $e3
    call nc, $92e2                                ; $73ef: $d4 $e2 $92
    ld [hl], e                                    ; $73f2: $73
    jp nc, $d9c9                                  ; $73f3: $d2 $c9 $d9

    ret                                           ; $73f6: $c9


    rst $10                                       ; $73f7: $d7
    jr jr_07e_7433                                ; $73f8: $18 $39

    ld e, c                                       ; $73fa: $59
    ld l, c                                       ; $73fb: $69
    adc b                                         ; $73fc: $88
    xor c                                         ; $73fd: $a9
    adc c                                         ; $73fe: $89
    reti                                          ; $73ff: $d9


    adc c                                         ; $7400: $89
    reti                                          ; $7401: $d9


    adc b                                         ; $7402: $88
    reti                                          ; $7403: $d9


    adc c                                         ; $7404: $89
    rst $10                                       ; $7405: $d7
    add hl, de                                    ; $7406: $19
    reti                                          ; $7407: $d9


    add hl, de                                    ; $7408: $19
    ret c                                         ; $7409: $d8

    ret z                                         ; $740a: $c8

    reti                                          ; $740b: $d9


jr_07e_740c:
    ret                                           ; $740c: $c9


    reti                                          ; $740d: $d9


    ret                                           ; $740e: $c9


    reti                                          ; $740f: $d9


    ret                                           ; $7410: $c9


    reti                                          ; $7411: $d9


    ret z                                         ; $7412: $c8

    reti                                          ; $7413: $d9


    ret                                           ; $7414: $c9


    adc c                                         ; $7415: $89
    reti                                          ; $7416: $d9


    adc c                                         ; $7417: $89
    reti                                          ; $7418: $d9


    adc b                                         ; $7419: $88
    reti                                          ; $741a: $d9


    adc c                                         ; $741b: $89
    reti                                          ; $741c: $d9


    adc c                                         ; $741d: $89
    reti                                          ; $741e: $d9


    adc c                                         ; $741f: $89
    ld [c], a                                     ; $7420: $e2
    sub d                                         ; $7421: $92
    ld [hl], e                                    ; $7422: $73
    db $d3                                        ; $7423: $d3
    add hl, sp                                    ; $7424: $39
    reti                                          ; $7425: $d9


    add hl, sp                                    ; $7426: $39
    xor b                                         ; $7427: $a8
    adc c                                         ; $7428: $89

jr_07e_7429:
    ld l, c                                       ; $7429: $69
    adc c                                         ; $742a: $89
    ld e, b                                       ; $742b: $58
    ld l, c                                       ; $742c: $69
    add hl, de                                    ; $742d: $19
    reti                                          ; $742e: $d9


    add hl, de                                    ; $742f: $19
    rst $10                                       ; $7430: $d7
    jr jr_07e_740c                                ; $7431: $18 $d9

jr_07e_7433:
    add hl, de                                    ; $7433: $19
    ret c                                         ; $7434: $d8

    add hl, de                                    ; $7435: $19
    reti                                          ; $7436: $d9


    add hl, de                                    ; $7437: $19

jr_07e_7438:
    ret z                                         ; $7438: $c8

    reti                                          ; $7439: $d9


    ret                                           ; $743a: $c9


    xor c                                         ; $743b: $a9
    reti                                          ; $743c: $d9


    xor c                                         ; $743d: $a9
    adc b                                         ; $743e: $88
    reti                                          ; $743f: $d9


    adc c                                         ; $7440: $89
    ld l, c                                       ; $7441: $69
    reti                                          ; $7442: $d9


    ld l, c                                       ; $7443: $69
    ld e, b                                       ; $7444: $58
    reti                                          ; $7445: $d9


    ld e, c                                       ; $7446: $59
    add hl, sp                                    ; $7447: $39
    reti                                          ; $7448: $d9


    add hl, sp                                    ; $7449: $39
    db $e3                                        ; $744a: $e3

jr_07e_744b:
    call nc, $b6e2                                ; $744b: $d4 $e2 $b6
    ld [hl], e                                    ; $744e: $73
    ld e, b                                       ; $744f: $58
    reti                                          ; $7450: $d9


    ld e, c                                       ; $7451: $59
    reti                                          ; $7452: $d9


jr_07e_7453:
    ld e, c                                       ; $7453: $59
    reti                                          ; $7454: $d9


    ld e, c                                       ; $7455: $59
    ld l, b                                       ; $7456: $68
    reti                                          ; $7457: $d9


    ld l, c                                       ; $7458: $69
    add hl, sp                                    ; $7459: $39
    reti                                          ; $745a: $d9


    add hl, sp                                    ; $745b: $39
    reti                                          ; $745c: $d9


    jr c, jr_07e_7438                             ; $745d: $38 $d9

    add hl, sp                                    ; $745f: $39
    reti                                          ; $7460: $d9


    add hl, sp                                    ; $7461: $39
    reti                                          ; $7462: $d9


    add hl, sp                                    ; $7463: $39
    ld [c], a                                     ; $7464: $e2
    or [hl]                                       ; $7465: $b6
    ld [hl], e                                    ; $7466: $73
    call nc, $d918                                ; $7467: $d4 $18 $d9
    add hl, de                                    ; $746a: $19
    reti                                          ; $746b: $d9


    add hl, de                                    ; $746c: $19
    reti                                          ; $746d: $d9


    add hl, de                                    ; $746e: $19
    reti                                          ; $746f: $d9


    jr jr_07e_744b                                ; $7470: $18 $d9

    add hl, de                                    ; $7472: $19
    reti                                          ; $7473: $d9


    add hl, de                                    ; $7474: $19
    reti                                          ; $7475: $d9


    add hl, de                                    ; $7476: $19
    reti                                          ; $7477: $d9


    jr jr_07e_7453                                ; $7478: $18 $d9

    add hl, de                                    ; $747a: $19
    add hl, bc                                    ; $747b: $09
    add hl, bc                                    ; $747c: $09
    db $e3                                        ; $747d: $e3
    ret nc                                        ; $747e: $d0

    ld bc, $11dc                                  ; $747f: $01 $dc $11
    push hl                                       ; $7482: $e5
    ld b, b                                       ; $7483: $40
    add sp, $07                                   ; $7484: $e8 $07
    ld [$eb01], a                                 ; $7486: $ea $01 $eb
    ld e, $d3                                     ; $7489: $1e $d3
    and $90                                       ; $748b: $e6 $90
    ld [c], a                                     ; $748d: $e2

jr_07e_748e:
    dec [hl]                                      ; $748e: $35
    ld [hl], l                                    ; $748f: $75
    ld [c], a                                     ; $7490: $e2
    adc h                                         ; $7491: $8c
    ld [hl], l                                    ; $7492: $75
    ld [c], a                                     ; $7493: $e2
    dec [hl]                                      ; $7494: $35
    ld [hl], l                                    ; $7495: $75
    and $60                                       ; $7496: $e6 $60
    db $e4                                        ; $7498: $e4
    rst $38                                       ; $7499: $ff

jr_07e_749a:
    call nc, Call_000_1809                        ; $749a: $d4 $09 $18
    ret c                                         ; $749d: $d8

    adc c                                         ; $749e: $89
    rst $10                                       ; $749f: $d7
    add hl, de                                    ; $74a0: $19
    add hl, sp                                    ; $74a1: $39
    ret c                                         ; $74a2: $d8

    adc b                                         ; $74a3: $88
    rst $10                                       ; $74a4: $d7
    add hl, sp                                    ; $74a5: $39
    ld e, c                                       ; $74a6: $59
    ret c                                         ; $74a7: $d8

    adc c                                         ; $74a8: $89

jr_07e_74a9:
    rst $10                                       ; $74a9: $d7
    ld e, b                                       ; $74aa: $58
    ld l, c                                       ; $74ab: $69
    ld e, c                                       ; $74ac: $59
    add hl, sp                                    ; $74ad: $39
    ld e, b                                       ; $74ae: $58

jr_07e_74af:
    ret c                                         ; $74af: $d8

    adc c                                         ; $74b0: $89
    adc c                                         ; $74b1: $89
    rst $10                                       ; $74b2: $d7
    add hl, sp                                    ; $74b3: $39
    jr jr_07e_748e                                ; $74b4: $18 $d8

    ret                                           ; $74b6: $c9


    rst $10                                       ; $74b7: $d7
    add hl, de                                    ; $74b8: $19
    ret c                                         ; $74b9: $d8

    adc c                                         ; $74ba: $89
    ld e, b                                       ; $74bb: $58
    adc c                                         ; $74bc: $89
    add hl, de                                    ; $74bd: $19
    adc c                                         ; $74be: $89
    rst $10                                       ; $74bf: $d7
    jr jr_07e_749a                                ; $74c0: $18 $d8

    adc c                                         ; $74c2: $89
    adc c                                         ; $74c3: $89
    rst $10                                       ; $74c4: $d7
    add hl, sp                                    ; $74c5: $39
    ret c                                         ; $74c6: $d8

jr_07e_74c7:
    adc b                                         ; $74c7: $88
    adc c                                         ; $74c8: $89
    rst $10                                       ; $74c9: $d7
    ld e, c                                       ; $74ca: $59
    add hl, sp                                    ; $74cb: $39
    jr jr_07e_7537                                ; $74cc: $18 $69

jr_07e_74ce:
    ld e, c                                       ; $74ce: $59
    jr c, jr_07e_74a9                             ; $74cf: $38 $d8

    adc c                                         ; $74d1: $89
    rst $10                                       ; $74d2: $d7
    add hl, de                                    ; $74d3: $19
    add hl, sp                                    ; $74d4: $39
    jr jr_07e_74af                                ; $74d5: $18 $d8

    adc c                                         ; $74d7: $89
    rst $10                                       ; $74d8: $d7
    add hl, de                                    ; $74d9: $19
    ret c                                         ; $74da: $d8

    adc c                                         ; $74db: $89
    reti                                          ; $74dc: $d9


    adc b                                         ; $74dd: $88
    rst $10                                       ; $74de: $d7
    add hl, de                                    ; $74df: $19
    reti                                          ; $74e0: $d9


    add hl, de                                    ; $74e1: $19

Call_07e_74e2:
    ret c                                         ; $74e2: $d8

    add hl, de                                    ; $74e3: $19
    db $e4                                        ; $74e4: $e4
    nop                                           ; $74e5: $00
    and $c3                                       ; $74e6: $e6 $c3
    add sp, $08                                   ; $74e8: $e8 $08
    rst $18                                       ; $74ea: $df
    inc b                                         ; $74eb: $04
    jr jr_07e_74c7                                ; $74ec: $18 $d9

    add hl, de                                    ; $74ee: $19
    ret c                                         ; $74ef: $d8

    adc c                                         ; $74f0: $89
    reti                                          ; $74f1: $d9


    adc c                                         ; $74f2: $89
    jr jr_07e_74ce                                ; $74f3: $18 $d9

    add hl, de                                    ; $74f5: $19
    rst $10                                       ; $74f6: $d7
    add hl, de                                    ; $74f7: $19
    reti                                          ; $74f8: $d9


    add hl, de                                    ; $74f9: $19
    ret c                                         ; $74fa: $d8

    adc b                                         ; $74fb: $88
    reti                                          ; $74fc: $d9


    adc c                                         ; $74fd: $89
    add hl, de                                    ; $74fe: $19
    reti                                          ; $74ff: $d9


    add hl, de                                    ; $7500: $19

jr_07e_7501:
    rst $10                                       ; $7501: $d7
    ldh [$e8], a                                  ; $7502: $e0 $e8
    rlca                                          ; $7504: $07
    and $90                                       ; $7505: $e6 $90
    ld [c], a                                     ; $7507: $e2

jr_07e_7508:
    adc h                                         ; $7508: $8c
    ld [hl], l                                    ; $7509: $75
    sbc $ff                                       ; $750a: $de $ff
    db $d3                                        ; $750c: $d3
    ld e, b                                       ; $750d: $58
    reti                                          ; $750e: $d9


    ld e, c                                       ; $750f: $59
    reti                                          ; $7510: $d9


    ld e, l                                       ; $7511: $5d
    dec b                                         ; $7512: $05
    jr c, @+$1b                                   ; $7513: $38 $19

    add hl, de                                    ; $7515: $19
    reti                                          ; $7516: $d9


    add hl, de                                    ; $7517: $19
    ret c                                         ; $7518: $d8

    xor b                                         ; $7519: $a8
    reti                                          ; $751a: $d9


    xor c                                         ; $751b: $a9
    adc c                                         ; $751c: $89
    reti                                          ; $751d: $d9


    adc c                                         ; $751e: $89
    ret z                                         ; $751f: $c8

    reti                                          ; $7520: $d9


    ret                                           ; $7521: $c9


    rst $10                                       ; $7522: $d7
    add hl, de                                    ; $7523: $19
    reti                                          ; $7524: $d9


    add hl, de                                    ; $7525: $19
    jr c, jr_07e_7501                             ; $7526: $38 $d9

    add hl, sp                                    ; $7528: $39
    add hl, sp                                    ; $7529: $39
    reti                                          ; $752a: $d9


    add hl, sp                                    ; $752b: $39
    reti                                          ; $752c: $d9


    jr c, jr_07e_7508                             ; $752d: $38 $d9

    add hl, sp                                    ; $752f: $39
    ret c                                         ; $7530: $d8

    adc c                                         ; $7531: $89
    reti                                          ; $7532: $d9


    adc c                                         ; $7533: $89
    db $e3                                        ; $7534: $e3

jr_07e_7535:
    db $d3                                        ; $7535: $d3
    ld [c], a                                     ; $7536: $e2

jr_07e_7537:
    inc c                                         ; $7537: $0c
    ld [hl], l                                    ; $7538: $75
    jp nc, $c988                                  ; $7539: $d2 $88 $c9

    rst $10                                       ; $753c: $d7
    add hl, de                                    ; $753d: $19
    add hl, sp                                    ; $753e: $39
    ld e, b                                       ; $753f: $58
    ld l, c                                       ; $7540: $69
    ld e, c                                       ; $7541: $59
    reti                                          ; $7542: $d9


    ld e, c                                       ; $7543: $59
    reti                                          ; $7544: $d9


    ld e, b                                       ; $7545: $58
    reti                                          ; $7546: $d9


    ld e, c                                       ; $7547: $59
    adc c                                         ; $7548: $89
    reti                                          ; $7549: $d9


    adc c                                         ; $754a: $89
    adc b                                         ; $754b: $88
    reti                                          ; $754c: $d9


    adc c                                         ; $754d: $89
    reti                                          ; $754e: $d9


    adc c                                         ; $754f: $89
    reti                                          ; $7550: $d9


    adc c                                         ; $7551: $89
    reti                                          ; $7552: $d9


    adc b                                         ; $7553: $88
    reti                                          ; $7554: $d9


    adc c                                         ; $7555: $89
    add hl, sp                                    ; $7556: $39
    reti                                          ; $7557: $d9


    add hl, sp                                    ; $7558: $39
    reti                                          ; $7559: $d9


    jr c, jr_07e_7535                             ; $755a: $38 $d9

    add hl, sp                                    ; $755c: $39
    reti                                          ; $755d: $d9


    add hl, sp                                    ; $755e: $39

jr_07e_755f:
    reti                                          ; $755f: $d9


    add hl, sp                                    ; $7560: $39
    ld [c], a                                     ; $7561: $e2
    inc c                                         ; $7562: $0c
    ld [hl], l                                    ; $7563: $75
    db $d3                                        ; $7564: $d3
    ld l, b                                       ; $7565: $68
    ld e, c                                       ; $7566: $59

jr_07e_7567:
    add hl, sp                                    ; $7567: $39
    ld e, c                                       ; $7568: $59
    jr @+$3b                                      ; $7569: $18 $39

    ret c                                         ; $756b: $d8

    ld l, c                                       ; $756c: $69
    reti                                          ; $756d: $d9


    ld l, c                                       ; $756e: $69
    rst $10                                       ; $756f: $d7
    ld l, b                                       ; $7570: $68
    reti                                          ; $7571: $d9


    ld l, c                                       ; $7572: $69
    ret c                                         ; $7573: $d8

    ld l, c                                       ; $7574: $69
    reti                                          ; $7575: $d9


    ld l, c                                       ; $7576: $69

jr_07e_7577:
    rst $10                                       ; $7577: $d7
    adc b                                         ; $7578: $88
    reti                                          ; $7579: $d9


    adc c                                         ; $757a: $89
    ld l, c                                       ; $757b: $69
    reti                                          ; $757c: $d9


jr_07e_757d:
    ld l, c                                       ; $757d: $69
    ld e, b                                       ; $757e: $58
    reti                                          ; $757f: $d9


    ld e, c                                       ; $7580: $59
    add hl, sp                                    ; $7581: $39
    reti                                          ; $7582: $d9


jr_07e_7583:
    add hl, sp                                    ; $7583: $39
    jr jr_07e_755f                                ; $7584: $18 $d9

    add hl, de                                    ; $7586: $19
    ret c                                         ; $7587: $d8

    ret                                           ; $7588: $c9


    reti                                          ; $7589: $d9


    ret                                           ; $758a: $c9


    db $e3                                        ; $758b: $e3
    db $d3                                        ; $758c: $d3
    jr jr_07e_7567                                ; $758d: $18 $d8

    adc c                                         ; $758f: $89
    ld e, c                                       ; $7590: $59
    adc c                                         ; $7591: $89
    jr jr_07e_75ed                                ; $7592: $18 $59

    adc c                                         ; $7594: $89
    add hl, sp                                    ; $7595: $39
    ret z                                         ; $7596: $c8

    adc c                                         ; $7597: $89
    rst $10                                       ; $7598: $d7
    add hl, sp                                    ; $7599: $39
    ret c                                         ; $759a: $d8

    adc c                                         ; $759b: $89
    rst $10                                       ; $759c: $d7
    jr jr_07e_7577                                ; $759d: $18 $d8

    adc c                                         ; $759f: $89
    add hl, sp                                    ; $75a0: $39

jr_07e_75a1:
    rst $10                                       ; $75a1: $d7
    ld e, c                                       ; $75a2: $59
    jr jr_07e_757d                                ; $75a3: $18 $d8

    adc c                                         ; $75a5: $89
    xor c                                         ; $75a6: $a9
    ld l, c                                       ; $75a7: $69
    rst $10                                       ; $75a8: $d7
    jr jr_07e_7583                                ; $75a9: $18 $d8

    xor c                                         ; $75ab: $a9
    rst $10                                       ; $75ac: $d7
    ld l, c                                       ; $75ad: $69
    add hl, de                                    ; $75ae: $19
    ret c                                         ; $75af: $d8

    adc b                                         ; $75b0: $88
    add hl, sp                                    ; $75b1: $39
    rst $10                                       ; $75b2: $d7
    add hl, de                                    ; $75b3: $19
    ret c                                         ; $75b4: $d8

    adc c                                         ; $75b5: $89
    rst $10                                       ; $75b6: $d7

jr_07e_75b7:
    ld e, b                                       ; $75b7: $58
    add hl, de                                    ; $75b8: $19
    ret c                                         ; $75b9: $d8

    adc c                                         ; $75ba: $89
    add hl, sp                                    ; $75bb: $39
    ret z                                         ; $75bc: $c8

    adc c                                         ; $75bd: $89
    rst $10                                       ; $75be: $d7
    add hl, sp                                    ; $75bf: $39
    ret c                                         ; $75c0: $d8

    ret                                           ; $75c1: $c9


    ld l, b                                       ; $75c2: $68
    add hl, sp                                    ; $75c3: $39
    xor c                                         ; $75c4: $a9
    ld l, c                                       ; $75c5: $69
    rst $10                                       ; $75c6: $d7
    jr jr_07e_75a1                                ; $75c7: $18 $d8

    xor c                                         ; $75c9: $a9
    ret                                           ; $75ca: $c9


jr_07e_75cb:
    add hl, sp                                    ; $75cb: $39
    adc b                                         ; $75cc: $88
    ret                                           ; $75cd: $c9


    rst $10                                       ; $75ce: $d7
    add hl, sp                                    ; $75cf: $39
    ret c                                         ; $75d0: $d8

    ret                                           ; $75d1: $c9


    adc b                                         ; $75d2: $88
    ld e, c                                       ; $75d3: $59
    rst $10                                       ; $75d4: $d7
    add hl, de                                    ; $75d5: $19
    ret c                                         ; $75d6: $d8

    adc c                                         ; $75d7: $89
    rst $10                                       ; $75d8: $d7
    ld e, b                                       ; $75d9: $58
    add hl, de                                    ; $75da: $19

jr_07e_75db:
    ret c                                         ; $75db: $d8

    ret                                           ; $75dc: $c9


    adc c                                         ; $75dd: $89
    jr c, jr_07e_75b7                             ; $75de: $38 $d7

    add hl, sp                                    ; $75e0: $39
    ret c                                         ; $75e1: $d8

    ret                                           ; $75e2: $c9


    adc c                                         ; $75e3: $89
    adc b                                         ; $75e4: $88
    ld e, c                                       ; $75e5: $59
    rst $10                                       ; $75e6: $d7

jr_07e_75e7:
    add hl, de                                    ; $75e7: $19
    ret c                                         ; $75e8: $d8

    adc c                                         ; $75e9: $89
    rst $10                                       ; $75ea: $d7
    ld e, b                                       ; $75eb: $58
    add hl, de                                    ; $75ec: $19

jr_07e_75ed:
    ret c                                         ; $75ed: $d8

    xor c                                         ; $75ee: $a9
    ld l, c                                       ; $75ef: $69
    rst $10                                       ; $75f0: $d7
    jr jr_07e_75cb                                ; $75f1: $18 $d8

    xor c                                         ; $75f3: $a9
    ld l, c                                       ; $75f4: $69
    add hl, de                                    ; $75f5: $19
    adc b                                         ; $75f6: $88
    ld e, c                                       ; $75f7: $59
    rst $10                                       ; $75f8: $d7
    add hl, de                                    ; $75f9: $19
    ret c                                         ; $75fa: $d8

    adc c                                         ; $75fb: $89
    rst $10                                       ; $75fc: $d7
    ld e, b                                       ; $75fd: $58
    add hl, de                                    ; $75fe: $19
    ret c                                         ; $75ff: $d8

    ret                                           ; $7600: $c9


    adc c                                         ; $7601: $89
    jr c, jr_07e_75db                             ; $7602: $38 $d7

    add hl, sp                                    ; $7604: $39
    ret c                                         ; $7605: $d8

    ret                                           ; $7606: $c9


    adc c                                         ; $7607: $89
    jr jr_07e_7623                                ; $7608: $18 $19

    ld e, c                                       ; $760a: $59
    adc c                                         ; $760b: $89
    rst $10                                       ; $760c: $d7
    jr jr_07e_75e7                                ; $760d: $18 $d8

    ld e, c                                       ; $760f: $59
    rst $10                                       ; $7610: $d7
    ld e, c                                       ; $7611: $59
    add hl, de                                    ; $7612: $19
    ret c                                         ; $7613: $d8

    adc b                                         ; $7614: $88
    rst $10                                       ; $7615: $d7
    add hl, de                                    ; $7616: $19
    ret c                                         ; $7617: $d8

    ld e, c                                       ; $7618: $59
    rst $10                                       ; $7619: $d7
    adc c                                         ; $761a: $89
    db $e3                                        ; $761b: $e3
    ret nc                                        ; $761c: $d0

    ld bc, $1de7                                  ; $761d: $01 $e7 $1d
    and $20                                       ; $7620: $e6 $20
    jp hl                                         ; $7622: $e9


jr_07e_7623:
    nop                                           ; $7623: $00
    call c, $e811                                 ; $7624: $dc $11 $e8
    rlca                                          ; $7627: $07
    jp nc, $c3e2                                  ; $7628: $d2 $e2 $c3

    halt                                          ; $762b: $76

jr_07e_762c:
    ld [c], a                                     ; $762c: $e2
    rst $28                                       ; $762d: $ef
    halt                                          ; $762e: $76
    ld [c], a                                     ; $762f: $e2
    jp $df76                                      ; $7630: $c3 $76 $df


    inc b                                         ; $7633: $04
    jp nc, $d918                                  ; $7634: $d2 $18 $d9

    add hl, de                                    ; $7637: $19
    add hl, bc                                    ; $7638: $09
    add hl, de                                    ; $7639: $19
    ld [$1909], sp                                ; $763a: $08 $09 $19
    reti                                          ; $763d: $d9


    add hl, de                                    ; $763e: $19
    ret c                                         ; $763f: $d8

    adc b                                         ; $7640: $88
    reti                                          ; $7641: $d9


    adc c                                         ; $7642: $89
    rst $10                                       ; $7643: $d7
    add hl, de                                    ; $7644: $19
    reti                                          ; $7645: $d9


    add hl, de                                    ; $7646: $19
    ldh [$df], a                                  ; $7647: $e0 $df
    inc b                                         ; $7649: $04
    jr @-$25                                      ; $764a: $18 $d9

    add hl, de                                    ; $764c: $19
    reti                                          ; $764d: $d9


    add hl, de                                    ; $764e: $19
    add hl, de                                    ; $764f: $19
    reti                                          ; $7650: $d9


    jr jr_07e_762c                                ; $7651: $18 $d9

    add hl, de                                    ; $7653: $19
    add hl, de                                    ; $7654: $19
    reti                                          ; $7655: $d9


    add hl, de                                    ; $7656: $19
    ret c                                         ; $7657: $d8

    adc b                                         ; $7658: $88
    reti                                          ; $7659: $d9


    adc c                                         ; $765a: $89
    rst $10                                       ; $765b: $d7
    add hl, de                                    ; $765c: $19
    reti                                          ; $765d: $d9


    add hl, de                                    ; $765e: $19
    ldh [$e2], a                                  ; $765f: $e0 $e2

jr_07e_7661:
    rst $28                                       ; $7661: $ef
    halt                                          ; $7662: $76
    sbc $ff                                       ; $7663: $de $ff
    jp nc, $d918                                  ; $7665: $d2 $18 $d9

    add hl, de                                    ; $7668: $19
    reti                                          ; $7669: $d9


    add hl, de                                    ; $766a: $19
    ret c                                         ; $766b: $d8

    adc c                                         ; $766c: $89
    reti                                          ; $766d: $d9


    adc b                                         ; $766e: $88
    reti                                          ; $766f: $d9


    adc c                                         ; $7670: $89
    rst $10                                       ; $7671: $d7
    add hl, de                                    ; $7672: $19
    reti                                          ; $7673: $d9


    add hl, de                                    ; $7674: $19
    ret c                                         ; $7675: $d8

    adc b                                         ; $7676: $88
    reti                                          ; $7677: $d9


    adc c                                         ; $7678: $89
    rst $10                                       ; $7679: $d7
    add hl, de                                    ; $767a: $19
    reti                                          ; $767b: $d9


    add hl, de                                    ; $767c: $19
    db $e3                                        ; $767d: $e3
    jp nc, $d938                                  ; $767e: $d2 $38 $d9

    add hl, sp                                    ; $7681: $39
    reti                                          ; $7682: $d9


    add hl, sp                                    ; $7683: $39
    add hl, sp                                    ; $7684: $39
    reti                                          ; $7685: $d9


    jr c, jr_07e_7661                             ; $7686: $38 $d9

    add hl, sp                                    ; $7688: $39
    adc c                                         ; $7689: $89
    reti                                          ; $768a: $d9


    adc c                                         ; $768b: $89
    ret c                                         ; $768c: $d8

    adc b                                         ; $768d: $88

jr_07e_768e:
    reti                                          ; $768e: $d9


    adc c                                         ; $768f: $89
    rst $10                                       ; $7690: $d7
    adc c                                         ; $7691: $89
    reti                                          ; $7692: $d9


    adc c                                         ; $7693: $89
    db $e3                                        ; $7694: $e3
    jp nc, $d988                                  ; $7695: $d2 $88 $d9

    adc c                                         ; $7698: $89
    reti                                          ; $7699: $d9


    adc c                                         ; $769a: $89
    adc c                                         ; $769b: $89
    reti                                          ; $769c: $d9


    adc b                                         ; $769d: $88
    reti                                          ; $769e: $d9


    adc c                                         ; $769f: $89
    add hl, sp                                    ; $76a0: $39
    reti                                          ; $76a1: $d9


    add hl, sp                                    ; $76a2: $39
    adc b                                         ; $76a3: $88
    reti                                          ; $76a4: $d9


    adc c                                         ; $76a5: $89
    ret c                                         ; $76a6: $d8

    adc c                                         ; $76a7: $89
    reti                                          ; $76a8: $d9


    adc c                                         ; $76a9: $89
    db $e3                                        ; $76aa: $e3
    jp nc, $d918                                  ; $76ab: $d2 $18 $d9

    add hl, de                                    ; $76ae: $19
    reti                                          ; $76af: $d9


    add hl, de                                    ; $76b0: $19
    add hl, de                                    ; $76b1: $19
    reti                                          ; $76b2: $d9


    jr jr_07e_768e                                ; $76b3: $18 $d9

    add hl, de                                    ; $76b5: $19
    ret c                                         ; $76b6: $d8

    adc c                                         ; $76b7: $89

jr_07e_76b8:
    reti                                          ; $76b8: $d9


    adc c                                         ; $76b9: $89
    reti                                          ; $76ba: $d9


    adc b                                         ; $76bb: $88
    reti                                          ; $76bc: $d9


    adc c                                         ; $76bd: $89
    rst $10                                       ; $76be: $d7
    adc c                                         ; $76bf: $89
    reti                                          ; $76c0: $d9


    adc c                                         ; $76c1: $89
    db $e3                                        ; $76c2: $e3
    jp nc, $65e2                                  ; $76c3: $d2 $e2 $65

    halt                                          ; $76c6: $76
    ld [c], a                                     ; $76c7: $e2
    ld a, [hl]                                    ; $76c8: $7e
    halt                                          ; $76c9: $76
    ld [c], a                                     ; $76ca: $e2
    ld h, l                                       ; $76cb: $65
    halt                                          ; $76cc: $76
    ld [c], a                                     ; $76cd: $e2
    sub l                                         ; $76ce: $95
    halt                                          ; $76cf: $76
    ld [c], a                                     ; $76d0: $e2
    ld h, l                                       ; $76d1: $65
    halt                                          ; $76d2: $76

jr_07e_76d3:
    ld [c], a                                     ; $76d3: $e2
    ld a, [hl]                                    ; $76d4: $7e
    halt                                          ; $76d5: $76
    ld l, b                                       ; $76d6: $68
    reti                                          ; $76d7: $d9


    ld l, c                                       ; $76d8: $69
    reti                                          ; $76d9: $d9


    ld l, c                                       ; $76da: $69
    add hl, de                                    ; $76db: $19
    reti                                          ; $76dc: $d9


    jr jr_07e_76b8                                ; $76dd: $18 $d9

    add hl, de                                    ; $76df: $19
    ld l, c                                       ; $76e0: $69
    reti                                          ; $76e1: $d9


    ld l, c                                       ; $76e2: $69

jr_07e_76e3:
    ret c                                         ; $76e3: $d8

    ld l, b                                       ; $76e4: $68
    reti                                          ; $76e5: $d9


    ld l, c                                       ; $76e6: $69
    rst $10                                       ; $76e7: $d7
    add hl, de                                    ; $76e8: $19
    reti                                          ; $76e9: $d9


    add hl, de                                    ; $76ea: $19

jr_07e_76eb:
    ld [c], a                                     ; $76eb: $e2
    sub l                                         ; $76ec: $95
    halt                                          ; $76ed: $76
    db $e3                                        ; $76ee: $e3
    jp nc, $d918                                  ; $76ef: $d2 $18 $d9

    add hl, de                                    ; $76f2: $19
    reti                                          ; $76f3: $d9


    add hl, de                                    ; $76f4: $19
    reti                                          ; $76f5: $d9


    add hl, de                                    ; $76f6: $19
    reti                                          ; $76f7: $d9


    jr jr_07e_76d3                                ; $76f8: $18 $d9

    add hl, de                                    ; $76fa: $19
    ret c                                         ; $76fb: $d8

    adc c                                         ; $76fc: $89
    reti                                          ; $76fd: $d9


    adc c                                         ; $76fe: $89
    reti                                          ; $76ff: $d9


    adc b                                         ; $7700: $88
    reti                                          ; $7701: $d9


    adc c                                         ; $7702: $89
    reti                                          ; $7703: $d9


    adc c                                         ; $7704: $89
    reti                                          ; $7705: $d9


    adc c                                         ; $7706: $89
    rst $10                                       ; $7707: $d7
    jr jr_07e_76e3                                ; $7708: $18 $d9

    add hl, de                                    ; $770a: $19
    reti                                          ; $770b: $d9


    add hl, de                                    ; $770c: $19
    reti                                          ; $770d: $d9


    add hl, de                                    ; $770e: $19
    reti                                          ; $770f: $d9


    jr jr_07e_76eb                                ; $7710: $18 $d9

    add hl, de                                    ; $7712: $19
    ld l, c                                       ; $7713: $69
    reti                                          ; $7714: $d9


    ld l, c                                       ; $7715: $69
    reti                                          ; $7716: $d9


    ld l, b                                       ; $7717: $68
    reti                                          ; $7718: $d9


    ld l, c                                       ; $7719: $69
    reti                                          ; $771a: $d9


    ld l, c                                       ; $771b: $69
    reti                                          ; $771c: $d9


jr_07e_771d:
    ld l, c                                       ; $771d: $69
    ld [c], a                                     ; $771e: $e2
    xor e                                         ; $771f: $ab
    halt                                          ; $7720: $76
    pop de                                        ; $7721: $d1
    ld l, b                                       ; $7722: $68
    reti                                          ; $7723: $d9


    ld l, c                                       ; $7724: $69
    reti                                          ; $7725: $d9


    ld l, c                                       ; $7726: $69
    ld l, c                                       ; $7727: $69
    reti                                          ; $7728: $d9


    ld l, b                                       ; $7729: $68
    reti                                          ; $772a: $d9


    ld l, c                                       ; $772b: $69
    adc c                                         ; $772c: $89
    reti                                          ; $772d: $d9


    adc c                                         ; $772e: $89
    reti                                          ; $772f: $d9


    adc b                                         ; $7730: $88
    reti                                          ; $7731: $d9


    adc c                                         ; $7732: $89
    rst $10                                       ; $7733: $d7
    adc c                                         ; $7734: $89
    reti                                          ; $7735: $d9


    adc c                                         ; $7736: $89

jr_07e_7737:
    ld [c], a                                     ; $7737: $e2
    xor e                                         ; $7738: $ab
    halt                                          ; $7739: $76
    jp nc, $d918                                  ; $773a: $d2 $18 $d9

    add hl, de                                    ; $773d: $19
    reti                                          ; $773e: $d9


    add hl, de                                    ; $773f: $19
    add hl, de                                    ; $7740: $19
    reti                                          ; $7741: $d9


    jr jr_07e_771d                                ; $7742: $18 $d9

    add hl, de                                    ; $7744: $19
    ret c                                         ; $7745: $d8

    ld l, c                                       ; $7746: $69
    reti                                          ; $7747: $d9


    ld l, c                                       ; $7748: $69
    reti                                          ; $7749: $d9


    ld l, b                                       ; $774a: $68
    reti                                          ; $774b: $d9


    ld l, c                                       ; $774c: $69
    rst $10                                       ; $774d: $d7
    ld l, c                                       ; $774e: $69
    reti                                          ; $774f: $d9


    ld l, c                                       ; $7750: $69
    ld [c], a                                     ; $7751: $e2
    xor e                                         ; $7752: $ab
    halt                                          ; $7753: $76
    jp nc, $d918                                  ; $7754: $d2 $18 $d9

    add hl, de                                    ; $7757: $19
    reti                                          ; $7758: $d9


    add hl, de                                    ; $7759: $19
    add hl, de                                    ; $775a: $19
    reti                                          ; $775b: $d9


    jr jr_07e_7737                                ; $775c: $18 $d9

    add hl, de                                    ; $775e: $19
    ret c                                         ; $775f: $d8

    adc c                                         ; $7760: $89
    reti                                          ; $7761: $d9


    adc c                                         ; $7762: $89
    reti                                          ; $7763: $d9


    adc b                                         ; $7764: $88
    reti                                          ; $7765: $d9


    adc c                                         ; $7766: $89
    rst $10                                       ; $7767: $d7
    add hl, de                                    ; $7768: $19
    reti                                          ; $7769: $d9


    add hl, de                                    ; $776a: $19
    db $e3                                        ; $776b: $e3
    ret nc                                        ; $776c: $d0

    ld bc, $dfd1                                  ; $776d: $01 $d1 $df
    ld [bc], a                                    ; $7770: $02
    rst $18                                       ; $7771: $df
    ld [bc], a                                    ; $7772: $02
    ld [c], a                                     ; $7773: $e2
    add hl, bc                                    ; $7774: $09
    ld a, b                                       ; $7775: $78
    ld [c], a                                     ; $7776: $e2
    add hl, bc                                    ; $7777: $09
    ld a, b                                       ; $7778: $78
    jr jr_07e_77e4                                ; $7779: $18 $69

    adc c                                         ; $777b: $89
    add hl, de                                    ; $777c: $19
    adc b                                         ; $777d: $88
    ld l, c                                       ; $777e: $69
    add hl, sp                                    ; $777f: $39
    add hl, de                                    ; $7780: $19
    ld e, b                                       ; $7781: $58
    add hl, bc                                    ; $7782: $09
    ld e, c                                       ; $7783: $59
    add hl, sp                                    ; $7784: $39
    jr jr_07e_77f0                                ; $7785: $18 $69

    adc c                                         ; $7787: $89
    add hl, de                                    ; $7788: $19
    adc b                                         ; $7789: $88
    ld l, c                                       ; $778a: $69
    add hl, sp                                    ; $778b: $39
    add hl, de                                    ; $778c: $19
    ld e, b                                       ; $778d: $58
    add hl, de                                    ; $778e: $19
    ld e, c                                       ; $778f: $59
    add hl, de                                    ; $7790: $19
    ldh [$df], a                                  ; $7791: $e0 $df
    ld [bc], a                                    ; $7793: $02
    ret nc                                        ; $7794: $d0

    ld a, [hl-]                                   ; $7795: $3a
    ret nz                                        ; $7796: $c0

    ret nc                                        ; $7797: $d0

    ld bc, $0939                                  ; $7798: $01 $39 $09
    ld [$b9b9], sp                                ; $779b: $08 $b9 $b9
    xor c                                         ; $779e: $a9
    ldh [$df], a                                  ; $779f: $e0 $df
    ld [bc], a                                    ; $77a1: $02
    jr jr_07e_780d                                ; $77a2: $18 $69

    adc c                                         ; $77a4: $89
    add hl, sp                                    ; $77a5: $39
    ld e, b                                       ; $77a6: $58
    add hl, de                                    ; $77a7: $19
    add hl, de                                    ; $77a8: $19
    ld e, c                                       ; $77a9: $59
    jr c, jr_07e_7805                             ; $77aa: $38 $59

    add hl, de                                    ; $77ac: $19
    add hl, bc                                    ; $77ad: $09
    ldh [$df], a                                  ; $77ae: $e0 $df
    inc bc                                        ; $77b0: $03
    jr @-$75                                      ; $77b1: $18 $89

    ld l, c                                       ; $77b3: $69
    add hl, sp                                    ; $77b4: $39
    ld e, b                                       ; $77b5: $58
    add hl, de                                    ; $77b6: $19
    add hl, de                                    ; $77b7: $19
    ld e, c                                       ; $77b8: $59
    jr c, jr_07e_7814                             ; $77b9: $38 $59

    add hl, de                                    ; $77bb: $19
    xor c                                         ; $77bc: $a9
    ldh [rNR23], a                                ; $77bd: $e0 $18
    adc c                                         ; $77bf: $89
    ld l, c                                       ; $77c0: $69
    add hl, sp                                    ; $77c1: $39
    ld e, b                                       ; $77c2: $58
    add hl, de                                    ; $77c3: $19
    add hl, de                                    ; $77c4: $19
    ld e, c                                       ; $77c5: $59
    jr c, jr_07e_7801                             ; $77c6: $38 $39

    add hl, sp                                    ; $77c8: $39
    add hl, sp                                    ; $77c9: $39
    ldh [$e2], a                                  ; $77ca: $e0 $e2
    ld d, $78                                     ; $77cc: $16 $78
    ld e, b                                       ; $77ce: $58
    add hl, bc                                    ; $77cf: $09
    ld e, c                                       ; $77d0: $59
    add hl, de                                    ; $77d1: $19
    ld e, b                                       ; $77d2: $58
    add hl, bc                                    ; $77d3: $09
    ld e, c                                       ; $77d4: $59
    add hl, de                                    ; $77d5: $19
    ld e, b                                       ; $77d6: $58
    add hl, bc                                    ; $77d7: $09
    ld e, c                                       ; $77d8: $59
    add hl, de                                    ; $77d9: $19
    ld [c], a                                     ; $77da: $e2
    ld d, $78                                     ; $77db: $16 $78
    ld e, b                                       ; $77dd: $58
    add hl, bc                                    ; $77de: $09
    ld e, c                                       ; $77df: $59
    add hl, de                                    ; $77e0: $19
    ld e, b                                       ; $77e1: $58
    add hl, bc                                    ; $77e2: $09
    ld e, c                                       ; $77e3: $59

jr_07e_77e4:
    add hl, de                                    ; $77e4: $19
    jr c, jr_07e_7820                             ; $77e5: $38 $39

    add hl, sp                                    ; $77e7: $39
    add hl, sp                                    ; $77e8: $39
    rst $18                                       ; $77e9: $df
    ld [bc], a                                    ; $77ea: $02
    jr jr_07e_7856                                ; $77eb: $18 $69

    adc c                                         ; $77ed: $89
    add hl, sp                                    ; $77ee: $39
    ld e, b                                       ; $77ef: $58

jr_07e_77f0:
    adc c                                         ; $77f0: $89
    ld l, c                                       ; $77f1: $69
    ld e, c                                       ; $77f2: $59
    jr c, jr_07e_784e                             ; $77f3: $38 $59

    add hl, de                                    ; $77f5: $19
    add hl, bc                                    ; $77f6: $09
    ldh [$df], a                                  ; $77f7: $e0 $df
    ld [bc], a                                    ; $77f9: $02
    jr jr_07e_7865                                ; $77fa: $18 $69

    adc c                                         ; $77fc: $89
    add hl, sp                                    ; $77fd: $39
    ld e, b                                       ; $77fe: $58
    add hl, de                                    ; $77ff: $19
    add hl, de                                    ; $7800: $19

jr_07e_7801:
    ld e, c                                       ; $7801: $59
    jr c, jr_07e_785d                             ; $7802: $38 $59

    add hl, de                                    ; $7804: $19

jr_07e_7805:
    xor c                                         ; $7805: $a9
    ldh [$de], a                                  ; $7806: $e0 $de
    rst $38                                       ; $7808: $ff
    jr jr_07e_7864                                ; $7809: $18 $59

    add hl, bc                                    ; $780b: $09
    add hl, de                                    ; $780c: $19

jr_07e_780d:
    ld e, b                                       ; $780d: $58
    add hl, bc                                    ; $780e: $09
    add hl, sp                                    ; $780f: $39
    add hl, de                                    ; $7810: $19
    ld e, b                                       ; $7811: $58
    add hl, bc                                    ; $7812: $09
    ld e, c                                       ; $7813: $59

jr_07e_7814:
    add hl, bc                                    ; $7814: $09
    db $e3                                        ; $7815: $e3
    ret nc                                        ; $7816: $d0

    inc de                                        ; $7817: $13
    rst $10                                       ; $7818: $d7
    sub b                                         ; $7819: $90
    ret c                                         ; $781a: $d8

    ret nc                                        ; $781b: $d0

    ld bc, $1959                                  ; $781c: $01 $59 $19
    ld e, b                                       ; $781f: $58

jr_07e_7820:
    add hl, bc                                    ; $7820: $09
    ld e, c                                       ; $7821: $59
    add hl, de                                    ; $7822: $19
    ld e, b                                       ; $7823: $58
    add hl, bc                                    ; $7824: $09
    ld e, c                                       ; $7825: $59
    add hl, de                                    ; $7826: $19
    db $e3                                        ; $7827: $e3
    ret nc                                        ; $7828: $d0

    ld bc, $00e5                                  ; $7829: $01 $e5 $00
    and $c7                                       ; $782c: $e6 $c7
    call c, $ea11                                 ; $782e: $dc $11 $ea
    ld bc, $1eeb                                  ; $7831: $01 $eb $1e
    add sp, $07                                   ; $7834: $e8 $07
    xor $33                                       ; $7836: $ee $33
    db $d3                                        ; $7838: $d3
    ld [c], a                                     ; $7839: $e2
    add c                                         ; $783a: $81
    ld a, b                                       ; $783b: $78
    ld [c], a                                     ; $783c: $e2
    add c                                         ; $783d: $81
    ld a, b                                       ; $783e: $78
    ld [c], a                                     ; $783f: $e2
    add hl, hl                                    ; $7840: $29
    ld a, d                                       ; $7841: $7a
    ld [c], a                                     ; $7842: $e2
    add c                                         ; $7843: $81
    ld a, b                                       ; $7844: $78
    ld [c], a                                     ; $7845: $e2
    add hl, hl                                    ; $7846: $29
    ld a, d                                       ; $7847: $7a
    ld [c], a                                     ; $7848: $e2
    ld b, c                                       ; $7849: $41
    ld a, c                                       ; $784a: $79
    rst $18                                       ; $784b: $df
    ld [bc], a                                    ; $784c: $02
    ld [c], a                                     ; $784d: $e2

jr_07e_784e:
    inc sp                                        ; $784e: $33
    ld a, c                                       ; $784f: $79
    sbc b                                         ; $7850: $98
    sbc b                                         ; $7851: $98
    ld [$0899], sp                                ; $7852: $08 $99 $08
    sbc b                                         ; $7855: $98

jr_07e_7856:
    xor b                                         ; $7856: $a8
    add hl, bc                                    ; $7857: $09
    xor b                                         ; $7858: $a8
    ld [$09a8], sp                                ; $7859: $08 $a8 $09
    ld [c], a                                     ; $785c: $e2

jr_07e_785d:
    inc sp                                        ; $785d: $33
    ld a, c                                       ; $785e: $79
    ld e, b                                       ; $785f: $58
    ld e, b                                       ; $7860: $58
    ld [$0859], sp                                ; $7861: $08 $59 $08

jr_07e_7864:
    ld e, b                                       ; $7864: $58

jr_07e_7865:
    ld a, b                                       ; $7865: $78
    add hl, bc                                    ; $7866: $09
    ld a, b                                       ; $7867: $78
    ld [$0978], sp                                ; $7868: $08 $78 $09
    ldh [$e2], a                                  ; $786b: $e0 $e2
    ld b, c                                       ; $786d: $41
    ld a, c                                       ; $786e: $79
    sbc $ff                                       ; $786f: $de $ff
    db $d3                                        ; $7871: $d3
    jr z, @+$3a                                   ; $7872: $28 $38

    ld [$0859], sp                                ; $7874: $08 $59 $08
    jr c, jr_07e_78a7                             ; $7877: $38 $2e

    inc bc                                        ; $7879: $03
    ret c                                         ; $787a: $d8

    xor [hl]                                      ; $787b: $ae
    ld [bc], a                                    ; $787c: $02
    rst $10                                       ; $787d: $d7

jr_07e_787e:
    ld l, $03                                     ; $787e: $2e $03
    db $e3                                        ; $7880: $e3
    db $d3                                        ; $7881: $d3
    ld [c], a                                     ; $7882: $e2
    ld [hl], c                                    ; $7883: $71

jr_07e_7884:
    ld a, b                                       ; $7884: $78
    jp nc, $d7c8                                  ; $7885: $d2 $c8 $d7

    jr z, jr_07e_7892                             ; $7888: $28 $08

    add hl, sp                                    ; $788a: $39
    ld [$d828], sp                                ; $788b: $08 $28 $d8
    adc $03                                       ; $788e: $ce $03
    adc [hl]                                      ; $7890: $8e
    ld [bc], a                                    ; $7891: $02

jr_07e_7892:
    adc $03                                       ; $7892: $ce $03
    ld [c], a                                     ; $7894: $e2
    ld [hl], c                                    ; $7895: $71
    ld a, b                                       ; $7896: $78
    db $d3                                        ; $7897: $d3
    ld c, b                                       ; $7898: $48
    ld e, b                                       ; $7899: $58
    ld a, b                                       ; $789a: $78
    ret c                                         ; $789b: $d8

    ret                                           ; $789c: $c9


    rst $10                                       ; $789d: $d7
    ret z                                         ; $789e: $c8

    xor b                                         ; $789f: $a8
    sbc b                                         ; $78a0: $98
    ld a, c                                       ; $78a1: $79
    ld e, b                                       ; $78a2: $58
    ld c, b                                       ; $78a3: $48
    jr z, jr_07e_787e                             ; $78a4: $28 $d8

    ret                                           ; $78a6: $c9


jr_07e_78a7:
    db $e3                                        ; $78a7: $e3
    db $d3                                        ; $78a8: $d3
    jr jr_07e_7884                                ; $78a9: $18 $d9

    jr jr_07e_78e5                                ; $78ab: $18 $38

jr_07e_78ad:
    reti                                          ; $78ad: $d9


    add hl, sp                                    ; $78ae: $39
    ld e, b                                       ; $78af: $58
    reti                                          ; $78b0: $d9


    ld e, b                                       ; $78b1: $58
    jr c, @-$25                                   ; $78b2: $38 $d9

    add hl, sp                                    ; $78b4: $39
    reti                                          ; $78b5: $d9


jr_07e_78b6:
    jr c, jr_07e_7910                             ; $78b6: $38 $58

    ld a, b                                       ; $78b8: $78
    reti                                          ; $78b9: $d9


    ld a, c                                       ; $78ba: $79
    sbc b                                         ; $78bb: $98
    reti                                          ; $78bc: $d9


    sbc b                                         ; $78bd: $98
    reti                                          ; $78be: $d9


    sbc b                                         ; $78bf: $98
    reti                                          ; $78c0: $d9


    sbc c                                         ; $78c1: $99
    ret c                                         ; $78c2: $d8

    ret z                                         ; $78c3: $c8

    reti                                          ; $78c4: $d9


    ret z                                         ; $78c5: $c8

    rst $10                                       ; $78c6: $d7
    ret z                                         ; $78c7: $c8

    reti                                          ; $78c8: $d9


    ret                                           ; $78c9: $c9


    reti                                          ; $78ca: $d9


    ret z                                         ; $78cb: $c8

    reti                                          ; $78cc: $d9


    ret z                                         ; $78cd: $c8

    reti                                          ; $78ce: $d9


    ret z                                         ; $78cf: $c8

    reti                                          ; $78d0: $d9


    ret                                           ; $78d1: $c9


    jr jr_07e_78ad                                ; $78d2: $18 $d9

    jr jr_07e_790e                                ; $78d4: $18 $38

    reti                                          ; $78d6: $d9


    add hl, sp                                    ; $78d7: $39
    ld e, b                                       ; $78d8: $58
    reti                                          ; $78d9: $d9


    ld e, b                                       ; $78da: $58
    jr c, jr_07e_78b6                             ; $78db: $38 $d9

jr_07e_78dd:
    add hl, sp                                    ; $78dd: $39
    reti                                          ; $78de: $d9


    jr c, jr_07e_7939                             ; $78df: $38 $58

    ld a, b                                       ; $78e1: $78
    reti                                          ; $78e2: $d9


    ld a, c                                       ; $78e3: $79
    ld e, b                                       ; $78e4: $58

jr_07e_78e5:
    ld [$c8d8], sp                                ; $78e5: $08 $d8 $c8
    add hl, bc                                    ; $78e8: $09
    rst $10                                       ; $78e9: $d7
    ret z                                         ; $78ea: $c8

    ld [$d998], sp                                ; $78eb: $08 $98 $d9
    sbc c                                         ; $78ee: $99

jr_07e_78ef:
    reti                                          ; $78ef: $d9


    sbc b                                         ; $78f0: $98
    reti                                          ; $78f1: $d9


    sbc b                                         ; $78f2: $98

jr_07e_78f3:
    reti                                          ; $78f3: $d9


jr_07e_78f4:
    sbc b                                         ; $78f4: $98
    reti                                          ; $78f5: $d9


    sbc c                                         ; $78f6: $99

jr_07e_78f7:
    db $e3                                        ; $78f7: $e3
    db $d3                                        ; $78f8: $d3
    ld l, b                                       ; $78f9: $68
    reti                                          ; $78fa: $d9


    ld l, b                                       ; $78fb: $68
    reti                                          ; $78fc: $d9


    ld l, b                                       ; $78fd: $68
    adc c                                         ; $78fe: $89
    xor b                                         ; $78ff: $a8
    ret z                                         ; $7900: $c8

    rst $10                                       ; $7901: $d7
    jr jr_07e_78dd                                ; $7902: $18 $d9

    add hl, de                                    ; $7904: $19
    ret c                                         ; $7905: $d8

    ret z                                         ; $7906: $c8

    reti                                          ; $7907: $d9


    ret z                                         ; $7908: $c8

    xor b                                         ; $7909: $a8
    reti                                          ; $790a: $d9


    xor c                                         ; $790b: $a9
    ld l, b                                       ; $790c: $68
    reti                                          ; $790d: $d9


jr_07e_790e:
    ld l, b                                       ; $790e: $68
    reti                                          ; $790f: $d9


jr_07e_7910:
    ld l, b                                       ; $7910: $68
    adc c                                         ; $7911: $89
    xor b                                         ; $7912: $a8
    ret z                                         ; $7913: $c8

    jr c, jr_07e_78ef                             ; $7914: $38 $d9

    add hl, sp                                    ; $7916: $39
    rst $10                                       ; $7917: $d7
    jr c, jr_07e_78f3                             ; $7918: $38 $d9

    jr c, jr_07e_78f4                             ; $791a: $38 $d8

    jr c, jr_07e_78f7                             ; $791c: $38 $d9

    add hl, sp                                    ; $791e: $39
    ld l, b                                       ; $791f: $68
    reti                                          ; $7920: $d9


    ld l, b                                       ; $7921: $68
    reti                                          ; $7922: $d9


    ld l, b                                       ; $7923: $68
    adc c                                         ; $7924: $89
    xor b                                         ; $7925: $a8
    ret z                                         ; $7926: $c8

    rst $10                                       ; $7927: $d7
    jr @-$25                                      ; $7928: $18 $d9

    add hl, de                                    ; $792a: $19
    ret c                                         ; $792b: $d8

    ret z                                         ; $792c: $c8

    reti                                          ; $792d: $d9


    ret z                                         ; $792e: $c8

    xor b                                         ; $792f: $a8
    reti                                          ; $7930: $d9


    xor c                                         ; $7931: $a9
    db $e3                                        ; $7932: $e3
    db $d3                                        ; $7933: $d3
    sbc b                                         ; $7934: $98
    sbc b                                         ; $7935: $98
    ld [$0899], sp                                ; $7936: $08 $99 $08

jr_07e_7939:
    sbc b                                         ; $7939: $98
    ld a, b                                       ; $793a: $78
    add hl, bc                                    ; $793b: $09
    ld a, b                                       ; $793c: $78
    ld [$0978], sp                                ; $793d: $08 $78 $09
    db $e3                                        ; $7940: $e3
    db $d3                                        ; $7941: $d3
    ld [c], a                                     ; $7942: $e2
    ld hl, sp+$78                                 ; $7943: $f8 $78
    db $d3                                        ; $7945: $d3
    ret z                                         ; $7946: $c8

    reti                                          ; $7947: $d9


    ret z                                         ; $7948: $c8

    reti                                          ; $7949: $d9


    ret z                                         ; $794a: $c8

    reti                                          ; $794b: $d9


    ret                                           ; $794c: $c9


    reti                                          ; $794d: $d9


    ret z                                         ; $794e: $c8

    reti                                          ; $794f: $d9


    ret z                                         ; $7950: $c8

    reti                                          ; $7951: $d9


    ret z                                         ; $7952: $c8

    reti                                          ; $7953: $d9


    ret                                           ; $7954: $c9


    reti                                          ; $7955: $d9


    ret z                                         ; $7956: $c8

    reti                                          ; $7957: $d9


    ret z                                         ; $7958: $c8

    reti                                          ; $7959: $d9


    ret z                                         ; $795a: $c8

    reti                                          ; $795b: $d9


    ret                                           ; $795c: $c9


    ld [c], a                                     ; $795d: $e2
    ld hl, sp+$78                                 ; $795e: $f8 $78
    db $d3                                        ; $7960: $d3
    sbc b                                         ; $7961: $98
    xor b                                         ; $7962: $a8
    ret z                                         ; $7963: $c8

    ld e, c                                       ; $7964: $59
    rst $10                                       ; $7965: $d7
    ld e, b                                       ; $7966: $58
    jr c, @+$2a                                   ; $7967: $38 $28

    ret c                                         ; $7969: $d8

    ret                                           ; $796a: $c9


    xor b                                         ; $796b: $a8
    sbc b                                         ; $796c: $98
    ld a, b                                       ; $796d: $78
    ld e, c                                       ; $796e: $59
    db $e3                                        ; $796f: $e3
    ret nc                                        ; $7970: $d0

    ld bc, $00e5                                  ; $7971: $01 $e5 $00
    and $a7                                       ; $7974: $e6 $a7
    call c, $ea11                                 ; $7976: $dc $11 $ea
    ld bc, $1eeb                                  ; $7979: $01 $eb $1e
    add sp, $07                                   ; $797c: $e8 $07
    xor $33                                       ; $797e: $ee $33
    jp nc, $05e2                                  ; $7980: $d2 $e2 $05

    ld a, d                                       ; $7983: $7a

jr_07e_7984:
    ld [c], a                                     ; $7984: $e2
    dec b                                         ; $7985: $05
    ld a, d                                       ; $7986: $7a
    ld [c], a                                     ; $7987: $e2

jr_07e_7988:
    xor b                                         ; $7988: $a8
    ld a, b                                       ; $7989: $78

jr_07e_798a:
    ld [c], a                                     ; $798a: $e2
    dec b                                         ; $798b: $05

jr_07e_798c:
    ld a, d                                       ; $798c: $7a
    ld [c], a                                     ; $798d: $e2
    xor b                                         ; $798e: $a8
    ld a, b                                       ; $798f: $78
    and $77                                       ; $7990: $e6 $77
    push hl                                       ; $7992: $e5
    add b                                         ; $7993: $80
    ld [c], a                                     ; $7994: $e2
    sbc e                                         ; $7995: $9b
    ld a, d                                       ; $7996: $7a
    and $a7                                       ; $7997: $e6 $a7
    push hl                                       ; $7999: $e5
    nop                                           ; $799a: $00
    rst $18                                       ; $799b: $df
    inc bc                                        ; $799c: $03

jr_07e_799d:
    db $d3                                        ; $799d: $d3
    ld e, b                                       ; $799e: $58
    reti                                          ; $799f: $d9


    ld e, b                                       ; $79a0: $58

jr_07e_79a1:
    reti                                          ; $79a1: $d9


    ld e, b                                       ; $79a2: $58

jr_07e_79a3:
    reti                                          ; $79a3: $d9


    ld e, c                                       ; $79a4: $59

jr_07e_79a5:
    reti                                          ; $79a5: $d9


    ld e, b                                       ; $79a6: $58
    reti                                          ; $79a7: $d9


    ld e, b                                       ; $79a8: $58
    jr c, jr_07e_7984                             ; $79a9: $38 $d9

    add hl, sp                                    ; $79ab: $39
    reti                                          ; $79ac: $d9


    jr c, jr_07e_7988                             ; $79ad: $38 $d9

    jr c, jr_07e_798a                             ; $79af: $38 $d9

    jr c, jr_07e_798c                             ; $79b1: $38 $d9

    add hl, sp                                    ; $79b3: $39
    ldh [$d8], a                                  ; $79b4: $e0 $d8
    ret z                                         ; $79b6: $c8

    reti                                          ; $79b7: $d9


    ret z                                         ; $79b8: $c8

    reti                                          ; $79b9: $d9


    ret z                                         ; $79ba: $c8

    reti                                          ; $79bb: $d9


    ret                                           ; $79bc: $c9


    reti                                          ; $79bd: $d9


    ret z                                         ; $79be: $c8

    reti                                          ; $79bf: $d9


    ret z                                         ; $79c0: $c8

    rst $10                                       ; $79c1: $d7
    jr c, jr_07e_799d                             ; $79c2: $38 $d9

    add hl, sp                                    ; $79c4: $39
    reti                                          ; $79c5: $d9


    jr c, jr_07e_79a1                             ; $79c6: $38 $d9

    jr c, jr_07e_79a3                             ; $79c8: $38 $d9

    jr c, jr_07e_79a5                             ; $79ca: $38 $d9

    add hl, sp                                    ; $79cc: $39
    rst $18                                       ; $79cd: $df
    inc bc                                        ; $79ce: $03
    ld e, b                                       ; $79cf: $58
    ld e, b                                       ; $79d0: $58
    ld [$0859], sp                                ; $79d1: $08 $59 $08
    ld e, b                                       ; $79d4: $58
    jr c, jr_07e_79e0                             ; $79d5: $38 $09

    jr c, @+$0a                                   ; $79d7: $38 $08

    jr c, jr_07e_79e4                             ; $79d9: $38 $09

    ldh [$28], a                                  ; $79db: $e0 $28
    jr z, @+$0a                                   ; $79dd: $28 $08

    add hl, hl                                    ; $79df: $29

jr_07e_79e0:
    ld [$5828], sp                                ; $79e0: $08 $28 $58
    add hl, bc                                    ; $79e3: $09

jr_07e_79e4:
    ld e, b                                       ; $79e4: $58
    ld [$0948], sp                                ; $79e5: $08 $48 $09
    and $77                                       ; $79e8: $e6 $77
    push hl                                       ; $79ea: $e5
    add b                                         ; $79eb: $80
    ld [c], a                                     ; $79ec: $e2
    sbc e                                         ; $79ed: $9b
    ld a, d                                       ; $79ee: $7a
    push hl                                       ; $79ef: $e5
    nop                                           ; $79f0: $00
    and $a7                                       ; $79f1: $e6 $a7
    sbc $ff                                       ; $79f3: $de $ff
    jp nc, $c8a8                                  ; $79f5: $d2 $a8 $c8

    ld [$29d7], sp                                ; $79f8: $08 $d7 $29
    ld [$c8d8], sp                                ; $79fb: $08 $d8 $c8
    xor [hl]                                      ; $79fe: $ae
    inc bc                                        ; $79ff: $03
    ld e, [hl]                                    ; $7a00: $5e
    ld [bc], a                                    ; $7a01: $02
    xor [hl]                                      ; $7a02: $ae
    inc bc                                        ; $7a03: $03
    db $e3                                        ; $7a04: $e3
    jp nc, $f5e2                                  ; $7a05: $d2 $e2 $f5

    ld a, c                                       ; $7a08: $79
    adc b                                         ; $7a09: $88
    xor b                                         ; $7a0a: $a8
    ld [$08c9], sp                                ; $7a0b: $08 $c9 $08
    xor b                                         ; $7a0e: $a8
    adc [hl]                                      ; $7a0f: $8e
    inc bc                                        ; $7a10: $03
    ld a, $02                                     ; $7a11: $3e $02
    adc [hl]                                      ; $7a13: $8e
    inc bc                                        ; $7a14: $03
    ld [c], a                                     ; $7a15: $e2
    push af                                       ; $7a16: $f5

jr_07e_7a17:
    ld a, c                                       ; $7a17: $79

jr_07e_7a18:
    ret z                                         ; $7a18: $c8

    rst $10                                       ; $7a19: $d7
    jr z, @+$4a                                   ; $7a1a: $28 $48

    ret c                                         ; $7a1c: $d8

    ld a, c                                       ; $7a1d: $79
    rst $10                                       ; $7a1e: $d7
    sbc b                                         ; $7a1f: $98

jr_07e_7a20:
    ld a, b                                       ; $7a20: $78
    ld e, b                                       ; $7a21: $58
    ld c, c                                       ; $7a22: $49
    jr z, @-$26                                   ; $7a23: $28 $d8

    ret z                                         ; $7a25: $c8

    xor b                                         ; $7a26: $a8
    sbc c                                         ; $7a27: $99
    db $e3                                        ; $7a28: $e3
    call nc, $05ea                                ; $7a29: $d4 $ea $05
    db $eb                                        ; $7a2c: $eb
    ld bc, $d958                                  ; $7a2d: $01 $58 $d9
    ld e, b                                       ; $7a30: $58
    reti                                          ; $7a31: $d9


    ld e, b                                       ; $7a32: $58
    reti                                          ; $7a33: $d9


    ld e, c                                       ; $7a34: $59
    jr c, jr_07e_7a4f                             ; $7a35: $38 $18

    ret c                                         ; $7a37: $d8

    xor b                                         ; $7a38: $a8
    reti                                          ; $7a39: $d9


    xor c                                         ; $7a3a: $a9
    rst $10                                       ; $7a3b: $d7
    jr c, jr_07e_7a17                             ; $7a3c: $38 $d9

jr_07e_7a3e:
    jr c, jr_07e_7a18                             ; $7a3e: $38 $d8

    xor b                                         ; $7a40: $a8
    reti                                          ; $7a41: $d9


    xor c                                         ; $7a42: $a9
    ret z                                         ; $7a43: $c8

    reti                                          ; $7a44: $d9


    ret z                                         ; $7a45: $c8

    ld e, b                                       ; $7a46: $58
    reti                                          ; $7a47: $d9


    ld e, c                                       ; $7a48: $59
    rst $10                                       ; $7a49: $d7
    ld e, b                                       ; $7a4a: $58
    reti                                          ; $7a4b: $d9


    ld e, b                                       ; $7a4c: $58
    sbc b                                         ; $7a4d: $98
    ld a, c                                       ; $7a4e: $79

jr_07e_7a4f:
    ld e, b                                       ; $7a4f: $58
    ld c, b                                       ; $7a50: $48
    jr z, @-$26                                   ; $7a51: $28 $d8

    ret                                           ; $7a53: $c9


    rst $10                                       ; $7a54: $d7
    ld e, b                                       ; $7a55: $58
    reti                                          ; $7a56: $d9


    ld e, b                                       ; $7a57: $58
    reti                                          ; $7a58: $d9


    ld e, b                                       ; $7a59: $58
    reti                                          ; $7a5a: $d9


    ld e, c                                       ; $7a5b: $59
    jr c, jr_07e_7a76                             ; $7a5c: $38 $18

    ret c                                         ; $7a5e: $d8

    xor b                                         ; $7a5f: $a8
    reti                                          ; $7a60: $d9


    xor c                                         ; $7a61: $a9
    rst $10                                       ; $7a62: $d7
    jr c, jr_07e_7a3e                             ; $7a63: $38 $d9

    jr c, @-$26                                   ; $7a65: $38 $d8

    xor b                                         ; $7a67: $a8
    reti                                          ; $7a68: $d9


    xor c                                         ; $7a69: $a9
    sbc b                                         ; $7a6a: $98
    ld [$0958], sp                                ; $7a6b: $08 $58 $09
    rst $10                                       ; $7a6e: $d7
    ld e, b                                       ; $7a6f: $58
    ld [$c8d8], sp                                ; $7a70: $08 $d8 $c8
    reti                                          ; $7a73: $d9


    ret                                           ; $7a74: $c9


    reti                                          ; $7a75: $d9


jr_07e_7a76:
    ret z                                         ; $7a76: $c8

    reti                                          ; $7a77: $d9


    ret z                                         ; $7a78: $c8

    reti                                          ; $7a79: $d9


    ret z                                         ; $7a7a: $c8

    reti                                          ; $7a7b: $d9


    ret                                           ; $7a7c: $c9


    ld [$eb01], a                                 ; $7a7d: $ea $01 $eb
    ld e, $e3                                     ; $7a80: $1e $e3
    jp nc, Jump_000_03df                          ; $7a82: $d2 $df $03

    ld l, b                                       ; $7a85: $68
    rst $10                                       ; $7a86: $d7
    jr jr_07e_7af1                                ; $7a87: $18 $68

    xor c                                         ; $7a89: $a9
    rst $10                                       ; $7a8a: $d7
    jr jr_07e_7af5                                ; $7a8b: $18 $68

    ret c                                         ; $7a8d: $d8

    ret c                                         ; $7a8e: $d8

    adc b                                         ; $7a8f: $88
    rst $10                                       ; $7a90: $d7
    add hl, sp                                    ; $7a91: $39
    adc b                                         ; $7a92: $88
    ret z                                         ; $7a93: $c8

    rst $10                                       ; $7a94: $d7
    jr c, jr_07e_7a20                             ; $7a95: $38 $89

    ret c                                         ; $7a97: $d8

    ret c                                         ; $7a98: $d8

    ldh [$e3], a                                  ; $7a99: $e0 $e3
    db $d3                                        ; $7a9b: $d3
    ld [c], a                                     ; $7a9c: $e2
    add d                                         ; $7a9d: $82
    ld a, d                                       ; $7a9e: $7a
    db $d3                                        ; $7a9f: $d3

jr_07e_7aa0:
    ld e, b                                       ; $7aa0: $58
    reti                                          ; $7aa1: $d9


    ld e, b                                       ; $7aa2: $58
    reti                                          ; $7aa3: $d9


jr_07e_7aa4:
    ld e, b                                       ; $7aa4: $58
    reti                                          ; $7aa5: $d9


jr_07e_7aa6:
    ld e, c                                       ; $7aa6: $59
    reti                                          ; $7aa7: $d9


jr_07e_7aa8:
    ld e, b                                       ; $7aa8: $58
    reti                                          ; $7aa9: $d9


    ld e, b                                       ; $7aaa: $58
    ld c, b                                       ; $7aab: $48
    reti                                          ; $7aac: $d9


    ld c, c                                       ; $7aad: $49
    reti                                          ; $7aae: $d9


    ld c, b                                       ; $7aaf: $48
    reti                                          ; $7ab0: $d9


    ld c, b                                       ; $7ab1: $48
    reti                                          ; $7ab2: $d9


    ld c, b                                       ; $7ab3: $48
    reti                                          ; $7ab4: $d9


    ld c, c                                       ; $7ab5: $49
    ld [c], a                                     ; $7ab6: $e2
    add d                                         ; $7ab7: $82
    ld a, d                                       ; $7ab8: $7a
    db $d3                                        ; $7ab9: $d3
    ld e, b                                       ; $7aba: $58
    reti                                          ; $7abb: $d9


    ld e, b                                       ; $7abc: $58
    reti                                          ; $7abd: $d9


    ld e, b                                       ; $7abe: $58
    reti                                          ; $7abf: $d9


    ld e, c                                       ; $7ac0: $59
    reti                                          ; $7ac1: $d9


    ld e, b                                       ; $7ac2: $58
    reti                                          ; $7ac3: $d9


    ld e, b                                       ; $7ac4: $58
    jr c, jr_07e_7aa0                             ; $7ac5: $38 $d9

    add hl, sp                                    ; $7ac7: $39
    reti                                          ; $7ac8: $d9


    jr c, jr_07e_7aa4                             ; $7ac9: $38 $d9

    jr c, jr_07e_7aa6                             ; $7acb: $38 $d9

    jr c, jr_07e_7aa8                             ; $7acd: $38 $d9

    add hl, sp                                    ; $7acf: $39
    db $e3                                        ; $7ad0: $e3
    ret nc                                        ; $7ad1: $d0

    ld bc, $09e7                                  ; $7ad2: $01 $e7 $09
    and $20                                       ; $7ad5: $e6 $20
    jp hl                                         ; $7ad7: $e9


    nop                                           ; $7ad8: $00

jr_07e_7ad9:
    call c, $e811                                 ; $7ad9: $dc $11 $e8

jr_07e_7adc:
    rlca                                          ; $7adc: $07
    pop de                                        ; $7add: $d1
    ld [c], a                                     ; $7ade: $e2
    dec [hl]                                      ; $7adf: $35
    ld a, e                                       ; $7ae0: $7b
    ld [c], a                                     ; $7ae1: $e2
    dec [hl]                                      ; $7ae2: $35
    ld a, e                                       ; $7ae3: $7b
    ld [c], a                                     ; $7ae4: $e2
    ld a, h                                       ; $7ae5: $7c
    ld a, e                                       ; $7ae6: $7b
    ld [c], a                                     ; $7ae7: $e2
    dec [hl]                                      ; $7ae8: $35
    ld a, e                                       ; $7ae9: $7b
    ld [c], a                                     ; $7aea: $e2
    ld a, h                                       ; $7aeb: $7c
    ld a, e                                       ; $7aec: $7b
    ld [c], a                                     ; $7aed: $e2
    rst $00                                       ; $7aee: $c7
    ld a, e                                       ; $7aef: $7b
    rst $18                                       ; $7af0: $df

jr_07e_7af1:
    rlca                                          ; $7af1: $07
    pop de                                        ; $7af2: $d1
    ld e, b                                       ; $7af3: $58
    reti                                          ; $7af4: $d9


jr_07e_7af5:
    ld e, b                                       ; $7af5: $58
    ld e, b                                       ; $7af6: $58
    rst $10                                       ; $7af7: $d7
    ld e, c                                       ; $7af8: $59
    reti                                          ; $7af9: $d9


    ld e, b                                       ; $7afa: $58
    ret c                                         ; $7afb: $d8

    ld e, b                                       ; $7afc: $58
    rst $10                                       ; $7afd: $d7
    jr c, jr_07e_7ad9                             ; $7afe: $38 $d9

    add hl, sp                                    ; $7b00: $39
    jr c, jr_07e_7adc                             ; $7b01: $38 $d9

    jr c, jr_07e_7b3d                             ; $7b03: $38 $38

    reti                                          ; $7b05: $d9


    add hl, sp                                    ; $7b06: $39
    ldh [$d1], a                                  ; $7b07: $e0 $d1
    xor b                                         ; $7b09: $a8
    reti                                          ; $7b0a: $d9


    xor b                                         ; $7b0b: $a8
    xor b                                         ; $7b0c: $a8
    xor c                                         ; $7b0d: $a9
    reti                                          ; $7b0e: $d9


    xor b                                         ; $7b0f: $a8
    xor b                                         ; $7b10: $a8
    ret z                                         ; $7b11: $c8

    reti                                          ; $7b12: $d9


    ret                                           ; $7b13: $c9


    ret z                                         ; $7b14: $c8

    reti                                          ; $7b15: $d9


    ret z                                         ; $7b16: $c8

    ret z                                         ; $7b17: $c8

    reti                                          ; $7b18: $d9


jr_07e_7b19:
    ret                                           ; $7b19: $c9


    ld [c], a                                     ; $7b1a: $e2
    rst $00                                       ; $7b1b: $c7
    ld a, e                                       ; $7b1c: $7b
    sbc $ff                                       ; $7b1d: $de $ff
    pop de                                        ; $7b1f: $d1
    xor b                                         ; $7b20: $a8

jr_07e_7b21:
    xor b                                         ; $7b21: $a8

jr_07e_7b22:
    xor b                                         ; $7b22: $a8
    rst $10                                       ; $7b23: $d7
    ld e, c                                       ; $7b24: $59
    reti                                          ; $7b25: $d9


    ld e, b                                       ; $7b26: $58
    ret c                                         ; $7b27: $d8

    xor b                                         ; $7b28: $a8
    xor b                                         ; $7b29: $a8
    reti                                          ; $7b2a: $d9


    xor c                                         ; $7b2b: $a9
    rst $10                                       ; $7b2c: $d7
    ld e, b                                       ; $7b2d: $58
    reti                                          ; $7b2e: $d9


    ld e, b                                       ; $7b2f: $58
    ret c                                         ; $7b30: $d8

    xor b                                         ; $7b31: $a8
    reti                                          ; $7b32: $d9


    xor c                                         ; $7b33: $a9
    db $e3                                        ; $7b34: $e3
    pop de                                        ; $7b35: $d1
    ld [c], a                                     ; $7b36: $e2
    rra                                           ; $7b37: $1f
    ld a, e                                       ; $7b38: $7b
    adc b                                         ; $7b39: $88
    adc b                                         ; $7b3a: $88
    adc b                                         ; $7b3b: $88
    rst $10                                       ; $7b3c: $d7

jr_07e_7b3d:
    add hl, sp                                    ; $7b3d: $39
    reti                                          ; $7b3e: $d9


    jr c, jr_07e_7b19                             ; $7b3f: $38 $d8

    adc b                                         ; $7b41: $88

jr_07e_7b42:
    adc b                                         ; $7b42: $88
    reti                                          ; $7b43: $d9


    adc c                                         ; $7b44: $89
    rst $10                                       ; $7b45: $d7
    jr c, jr_07e_7b21                             ; $7b46: $38 $d9

    jr c, jr_07e_7b22                             ; $7b48: $38 $d8

    adc b                                         ; $7b4a: $88
    reti                                          ; $7b4b: $d9


    adc c                                         ; $7b4c: $89
    ld [c], a                                     ; $7b4d: $e2
    rra                                           ; $7b4e: $1f
    ld a, e                                       ; $7b4f: $7b
    ret z                                         ; $7b50: $c8

    ret z                                         ; $7b51: $c8

jr_07e_7b52:
    ret z                                         ; $7b52: $c8

    rst $10                                       ; $7b53: $d7
    ret                                           ; $7b54: $c9


    reti                                          ; $7b55: $d9


    ret z                                         ; $7b56: $c8

    ret c                                         ; $7b57: $d8

    ret z                                         ; $7b58: $c8

    rst $10                                       ; $7b59: $d7
    ld a, b                                       ; $7b5a: $78
    reti                                          ; $7b5b: $d9


    ld a, c                                       ; $7b5c: $79
    ret z                                         ; $7b5d: $c8

    reti                                          ; $7b5e: $d9


    ret z                                         ; $7b5f: $c8

    ret c                                         ; $7b60: $d8

    ret z                                         ; $7b61: $c8

    reti                                          ; $7b62: $d9


    ret                                           ; $7b63: $c9


    db $e3                                        ; $7b64: $e3
    jp nc, Jump_000_1818                          ; $7b65: $d2 $18 $18

    jr jr_07e_7b42                                ; $7b68: $18 $d8

    adc c                                         ; $7b6a: $89
    reti                                          ; $7b6b: $d9


    adc b                                         ; $7b6c: $88
    rst $10                                       ; $7b6d: $d7
    jr jr_07e_7ba8                                ; $7b6e: $18 $38

    reti                                          ; $7b70: $d9


    add hl, sp                                    ; $7b71: $39
    ret c                                         ; $7b72: $d8

    xor b                                         ; $7b73: $a8
    reti                                          ; $7b74: $d9


    xor b                                         ; $7b75: $a8
    rst $10                                       ; $7b76: $d7
    jr c, jr_07e_7b52                             ; $7b77: $38 $d9

    add hl, sp                                    ; $7b79: $39
    ret c                                         ; $7b7a: $d8

    db $e3                                        ; $7b7b: $e3
    jp nc, $65e2                                  ; $7b7c: $d2 $e2 $65

    ld a, e                                       ; $7b7f: $7b
    pop de                                        ; $7b80: $d1
    ld e, b                                       ; $7b81: $58
    ld e, b                                       ; $7b82: $58
    ld e, b                                       ; $7b83: $58
    rst $10                                       ; $7b84: $d7
    ld e, c                                       ; $7b85: $59
    reti                                          ; $7b86: $d9


    ld e, b                                       ; $7b87: $58
    ret c                                         ; $7b88: $d8

    ld e, b                                       ; $7b89: $58
    ret z                                         ; $7b8a: $c8

    reti                                          ; $7b8b: $d9


    ret                                           ; $7b8c: $c9


    rst $10                                       ; $7b8d: $d7
    ld e, b                                       ; $7b8e: $58
    reti                                          ; $7b8f: $d9


    ld e, b                                       ; $7b90: $58
    ret c                                         ; $7b91: $d8

    ld e, b                                       ; $7b92: $58
    reti                                          ; $7b93: $d9


    ld e, c                                       ; $7b94: $59
    ld [c], a                                     ; $7b95: $e2
    ld h, l                                       ; $7b96: $65
    ld a, e                                       ; $7b97: $7b
    pop de                                        ; $7b98: $d1
    ld e, b                                       ; $7b99: $58
    ld [$0958], sp                                ; $7b9a: $08 $58 $09
    rst $10                                       ; $7b9d: $d7
    ld e, b                                       ; $7b9e: $58
    ld [$58d8], sp                                ; $7b9f: $08 $d8 $58
    reti                                          ; $7ba2: $d9


    ld e, c                                       ; $7ba3: $59
    reti                                          ; $7ba4: $d9


    ld e, b                                       ; $7ba5: $58
    reti                                          ; $7ba6: $d9


    ld e, b                                       ; $7ba7: $58

jr_07e_7ba8:
    reti                                          ; $7ba8: $d9


    ld e, b                                       ; $7ba9: $58
    reti                                          ; $7baa: $d9


    ld e, c                                       ; $7bab: $59
    db $e3                                        ; $7bac: $e3
    jp nc, Jump_000_03df                          ; $7bad: $d2 $df $03

    jp nc, $d968                                  ; $7bb0: $d2 $68 $d9

    ld l, b                                       ; $7bb3: $68
    ld l, b                                       ; $7bb4: $68
    add hl, de                                    ; $7bb5: $19
    ld l, b                                       ; $7bb6: $68
    reti                                          ; $7bb7: $d9


    ld l, b                                       ; $7bb8: $68
    ret c                                         ; $7bb9: $d8

    adc b                                         ; $7bba: $88
    reti                                          ; $7bbb: $d9


    adc c                                         ; $7bbc: $89
    rst $10                                       ; $7bbd: $d7
    adc b                                         ; $7bbe: $88
    reti                                          ; $7bbf: $d9


    adc b                                         ; $7bc0: $88
    ret c                                         ; $7bc1: $d8

    adc b                                         ; $7bc2: $88
    reti                                          ; $7bc3: $d9


    adc c                                         ; $7bc4: $89
    ldh [$e3], a                                  ; $7bc5: $e0 $e3
    jp nc, $ade2                                  ; $7bc7: $d2 $e2 $ad

    ld a, e                                       ; $7bca: $7b
    pop de                                        ; $7bcb: $d1
    ret z                                         ; $7bcc: $c8

    rst $10                                       ; $7bcd: $d7
    ld e, b                                       ; $7bce: $58
    ld a, b                                       ; $7bcf: $78
    ret                                           ; $7bd0: $c9


    ld a, b                                       ; $7bd1: $78
    ld e, b                                       ; $7bd2: $58
    ret c                                         ; $7bd3: $d8

    ret z                                         ; $7bd4: $c8

    rst $10                                       ; $7bd5: $d7
    ld c, c                                       ; $7bd6: $49
    ld a, b                                       ; $7bd7: $78
    ret z                                         ; $7bd8: $c8

    rst $10                                       ; $7bd9: $d7
    ld c, b                                       ; $7bda: $48
    ld a, c                                       ; $7bdb: $79
    ld [c], a                                     ; $7bdc: $e2
    xor l                                         ; $7bdd: $ad
    ld a, e                                       ; $7bde: $7b
    jp nc, $d958                                  ; $7bdf: $d2 $58 $d9

    ld e, b                                       ; $7be2: $58
    ld e, b                                       ; $7be3: $58
    ret c                                         ; $7be4: $d8

    ret                                           ; $7be5: $c9


    rst $10                                       ; $7be6: $d7
    ld e, b                                       ; $7be7: $58
    reti                                          ; $7be8: $d9


    ld e, b                                       ; $7be9: $58
    ret c                                         ; $7bea: $d8

    ld e, b                                       ; $7beb: $58
    reti                                          ; $7bec: $d9


    ld e, c                                       ; $7bed: $59
    rst $10                                       ; $7bee: $d7
    ld e, b                                       ; $7bef: $58
    reti                                          ; $7bf0: $d9


    ld e, b                                       ; $7bf1: $58
    ret c                                         ; $7bf2: $d8

    ld e, b                                       ; $7bf3: $58
    reti                                          ; $7bf4: $d9


    ld e, c                                       ; $7bf5: $59
    db $e3                                        ; $7bf6: $e3
    ret nc                                        ; $7bf7: $d0

    ld bc, $e2d1                                  ; $7bf8: $01 $d1 $e2
    or b                                          ; $7bfb: $b0
    ld a, h                                       ; $7bfc: $7c
    ld [c], a                                     ; $7bfd: $e2
    or b                                          ; $7bfe: $b0
    ld a, h                                       ; $7bff: $7c
    ld [c], a                                     ; $7c00: $e2
    or b                                          ; $7c01: $b0
    ld a, h                                       ; $7c02: $7c
    jr jr_07e_7c5d                                ; $7c03: $18 $58

    jr jr_07e_7c40                                ; $7c05: $18 $39

    ld e, b                                       ; $7c07: $58
    jr jr_07e_7c22                                ; $7c08: $18 $18

    ld e, c                                       ; $7c0a: $59
    jr jr_07e_7c45                                ; $7c0b: $18 $38

    jr c, jr_07e_7c48                             ; $7c0d: $38 $39

    ld [c], a                                     ; $7c0f: $e2
    or b                                          ; $7c10: $b0
    ld a, h                                       ; $7c11: $7c
    ld [c], a                                     ; $7c12: $e2
    or b                                          ; $7c13: $b0
    ld a, h                                       ; $7c14: $7c
    ld [c], a                                     ; $7c15: $e2
    or b                                          ; $7c16: $b0
    ld a, h                                       ; $7c17: $7c
    jr jr_07e_7c72                                ; $7c18: $18 $58

    jr @+$3b                                      ; $7c1a: $18 $39

    ld e, b                                       ; $7c1c: $58
    jr jr_07e_7c37                                ; $7c1d: $18 $18

    ld e, c                                       ; $7c1f: $59
    jr @-$27                                      ; $7c20: $18 $d7

jr_07e_7c22:
    ld e, b                                       ; $7c22: $58
    ret c                                         ; $7c23: $d8

    cp b                                          ; $7c24: $b8
    xor c                                         ; $7c25: $a9
    ld [c], a                                     ; $7c26: $e2
    cp l                                          ; $7c27: $bd
    ld a, h                                       ; $7c28: $7c
    ld [c], a                                     ; $7c29: $e2
    or b                                          ; $7c2a: $b0
    ld a, h                                       ; $7c2b: $7c
    ld [c], a                                     ; $7c2c: $e2
    or b                                          ; $7c2d: $b0
    ld a, h                                       ; $7c2e: $7c
    ld [c], a                                     ; $7c2f: $e2
    or b                                          ; $7c30: $b0
    ld a, h                                       ; $7c31: $7c
    jr @+$5a                                      ; $7c32: $18 $58

    jr @+$3b                                      ; $7c34: $18 $39

    ld e, b                                       ; $7c36: $58

jr_07e_7c37:
    jr @+$1a                                      ; $7c37: $18 $18

    ld e, c                                       ; $7c39: $59
    jr jr_07e_7c74                                ; $7c3a: $18 $38

    jr c, jr_07e_7c77                             ; $7c3c: $38 $39

    ld [c], a                                     ; $7c3e: $e2
    cp l                                          ; $7c3f: $bd

jr_07e_7c40:
    ld a, h                                       ; $7c40: $7c
    rst $18                                       ; $7c41: $df
    ld [bc], a                                    ; $7c42: $02
    ld [c], a                                     ; $7c43: $e2
    db $f4                                        ; $7c44: $f4

jr_07e_7c45:
    ld a, h                                       ; $7c45: $7c
    ld [c], a                                     ; $7c46: $e2
    db $f4                                        ; $7c47: $f4

jr_07e_7c48:
    ld a, h                                       ; $7c48: $7c
    ld [c], a                                     ; $7c49: $e2
    db $f4                                        ; $7c4a: $f4
    ld a, h                                       ; $7c4b: $7c
    jr @+$5a                                      ; $7c4c: $18 $58

    jr @+$3b                                      ; $7c4e: $18 $39

    ld [$1818], sp                                ; $7c50: $08 $18 $18
    ld e, c                                       ; $7c53: $59
    jr c, @+$1a                                   ; $7c54: $38 $18

    jr c, jr_07e_7c91                             ; $7c56: $38 $39

    ldh [$df], a                                  ; $7c58: $e0 $df
    ld [bc], a                                    ; $7c5a: $02
    jr c, jr_07e_7c65                             ; $7c5b: $38 $08

jr_07e_7c5d:
    jr jr_07e_7c98                                ; $7c5d: $18 $39

    ld [$d718], sp                                ; $7c5f: $08 $18 $d7
    ld e, a                                       ; $7c62: $5f
    ld [bc], a                                    ; $7c63: $02
    ret c                                         ; $7c64: $d8

jr_07e_7c65:
    cp a                                          ; $7c65: $bf
    ld bc, $02af                                  ; $7c66: $01 $af $02
    jr c, jr_07e_7c73                             ; $7c69: $38 $08

    jr @+$3b                                      ; $7c6b: $18 $39

    ld [$d718], sp                                ; $7c6d: $08 $18 $d7
    ld e, b                                       ; $7c70: $58
    ld e, c                                       ; $7c71: $59

jr_07e_7c72:
    ret c                                         ; $7c72: $d8

jr_07e_7c73:
    cp b                                          ; $7c73: $b8

jr_07e_7c74:
    cp b                                          ; $7c74: $b8
    xor b                                         ; $7c75: $a8
    xor c                                         ; $7c76: $a9

jr_07e_7c77:
    ldh [$e2], a                                  ; $7c77: $e0 $e2
    ld bc, $187d                                  ; $7c79: $01 $7d $18
    jr jr_07e_7c96                                ; $7c7c: $18 $18

    add hl, sp                                    ; $7c7e: $39
    ld e, b                                       ; $7c7f: $58
    jr jr_07e_7c9a                                ; $7c80: $18 $18

    add hl, bc                                    ; $7c82: $09
    jr c, jr_07e_7cdd                             ; $7c83: $38 $58

    jr @+$5b                                      ; $7c85: $18 $59

    ld [c], a                                     ; $7c87: $e2
    ld bc, $187d                                  ; $7c88: $01 $7d $18
    jr jr_07e_7ca5                                ; $7c8b: $18 $18

    add hl, sp                                    ; $7c8d: $39
    ld e, b                                       ; $7c8e: $58
    jr jr_07e_7ca9                                ; $7c8f: $18 $18

jr_07e_7c91:
    add hl, bc                                    ; $7c91: $09
    jr c, @+$3a                                   ; $7c92: $38 $38

    jr c, jr_07e_7ccf                             ; $7c94: $38 $39

jr_07e_7c96:
    rst $18                                       ; $7c96: $df
    ld [bc], a                                    ; $7c97: $02

jr_07e_7c98:
    ld [c], a                                     ; $7c98: $e2
    db $f4                                        ; $7c99: $f4

jr_07e_7c9a:
    ld a, h                                       ; $7c9a: $7c
    ld [c], a                                     ; $7c9b: $e2
    db $f4                                        ; $7c9c: $f4
    ld a, h                                       ; $7c9d: $7c
    ld [c], a                                     ; $7c9e: $e2
    db $f4                                        ; $7c9f: $f4
    ld a, h                                       ; $7ca0: $7c
    jr jr_07e_7cfb                                ; $7ca1: $18 $58

    jr @+$3b                                      ; $7ca3: $18 $39

jr_07e_7ca5:
    ld [$1818], sp                                ; $7ca5: $08 $18 $18
    ld e, c                                       ; $7ca8: $59

jr_07e_7ca9:
    jr c, jr_07e_7cc3                             ; $7ca9: $38 $18

    jr c, jr_07e_7ce6                             ; $7cab: $38 $39

    ldh [$de], a                                  ; $7cad: $e0 $de
    rst $38                                       ; $7caf: $ff
    jr @+$5a                                      ; $7cb0: $18 $58

    jr jr_07e_7ced                                ; $7cb2: $18 $39

    ld e, b                                       ; $7cb4: $58
    jr jr_07e_7ccf                                ; $7cb5: $18 $18

    ld e, c                                       ; $7cb7: $59
    jr jr_07e_7d12                                ; $7cb8: $18 $58

    jr c, jr_07e_7d15                             ; $7cba: $38 $59

    db $e3                                        ; $7cbc: $e3
    rst $10                                       ; $7cbd: $d7
    sbc b                                         ; $7cbe: $98
    ret c                                         ; $7cbf: $d8

    ld e, b                                       ; $7cc0: $58
    jr @+$0b                                      ; $7cc1: $18 $09

jr_07e_7cc3:
    jr c, jr_07e_7ccd                             ; $7cc3: $38 $08

    jr jr_07e_7d20                                ; $7cc5: $18 $59

    jr jr_07e_7cd1                                ; $7cc7: $18 $08

    jr c, @+$0b                                   ; $7cc9: $38 $09

    jr jr_07e_7d25                                ; $7ccb: $18 $58

jr_07e_7ccd:
    jr @+$0b                                      ; $7ccd: $18 $09

jr_07e_7ccf:
    jr c, jr_07e_7cd9                             ; $7ccf: $38 $08

jr_07e_7cd1:
    jr jr_07e_7d2c                                ; $7cd1: $18 $59

    jr jr_07e_7cdd                                ; $7cd3: $18 $08

    jr c, jr_07e_7d10                             ; $7cd5: $38 $39

    jr jr_07e_7d31                                ; $7cd7: $18 $58

jr_07e_7cd9:
    jr jr_07e_7ce4                                ; $7cd9: $18 $09

    jr c, jr_07e_7ce5                             ; $7cdb: $38 $08

jr_07e_7cdd:
    jr jr_07e_7d38                                ; $7cdd: $18 $59

    jr jr_07e_7ce9                                ; $7cdf: $18 $08

    jr c, @+$0b                                   ; $7ce1: $38 $09

    rst $10                                       ; $7ce3: $d7

jr_07e_7ce4:
    ld e, a                                       ; $7ce4: $5f

jr_07e_7ce5:
    ret c                                         ; $7ce5: $d8

jr_07e_7ce6:
    ld bc, $02bf                                  ; $7ce6: $01 $bf $02

jr_07e_7ce9:
    xor a                                         ; $7ce9: $af
    ld bc, $1cd0                                  ; $7cea: $01 $d0 $1c

jr_07e_7ced:
    ret nz                                        ; $7ced: $c0

    ret nc                                        ; $7cee: $d0

    ld bc, $3838                                  ; $7cef: $01 $38 $38
    add hl, sp                                    ; $7cf2: $39
    db $e3                                        ; $7cf3: $e3
    jr jr_07e_7d4e                                ; $7cf4: $18 $58

    jr jr_07e_7d31                                ; $7cf6: $18 $39

    ld [$1818], sp                                ; $7cf8: $08 $18 $18

jr_07e_7cfb:
    ld e, c                                       ; $7cfb: $59
    jr c, @+$0a                                   ; $7cfc: $38 $08

    jr jr_07e_7d09                                ; $7cfe: $18 $09

    db $e3                                        ; $7d00: $e3
    ret z                                         ; $7d01: $c8

    ld e, b                                       ; $7d02: $58
    jr jr_07e_7d3e                                ; $7d03: $18 $39

    ld [$1818], sp                                ; $7d05: $08 $18 $18
    ld e, c                                       ; $7d08: $59

jr_07e_7d09:
    jr c, jr_07e_7d13                             ; $7d09: $38 $08

    jr jr_07e_7d66                                ; $7d0b: $18 $59

    db $e3                                        ; $7d0d: $e3
    rst $38                                       ; $7d0e: $ff
    rst $38                                       ; $7d0f: $ff

jr_07e_7d10:
    rst $38                                       ; $7d10: $ff
    rst $38                                       ; $7d11: $ff

jr_07e_7d12:
    rst $38                                       ; $7d12: $ff

jr_07e_7d13:
    rst $38                                       ; $7d13: $ff
    rst $38                                       ; $7d14: $ff

jr_07e_7d15:
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

jr_07e_7d20:
    rst $38                                       ; $7d20: $ff
    rst $38                                       ; $7d21: $ff
    rst $38                                       ; $7d22: $ff
    rst $38                                       ; $7d23: $ff
    rst $38                                       ; $7d24: $ff

jr_07e_7d25:
    rst $38                                       ; $7d25: $ff
    rst $38                                       ; $7d26: $ff
    rst $38                                       ; $7d27: $ff
    rst $38                                       ; $7d28: $ff
    rst $38                                       ; $7d29: $ff
    rst $38                                       ; $7d2a: $ff
    rst $38                                       ; $7d2b: $ff

jr_07e_7d2c:
    rst $38                                       ; $7d2c: $ff
    rst $38                                       ; $7d2d: $ff
    rst $38                                       ; $7d2e: $ff
    rst $38                                       ; $7d2f: $ff
    rst $38                                       ; $7d30: $ff

jr_07e_7d31:
    rst $38                                       ; $7d31: $ff
    rst $38                                       ; $7d32: $ff
    rst $38                                       ; $7d33: $ff
    rst $38                                       ; $7d34: $ff
    rst $38                                       ; $7d35: $ff
    rst $38                                       ; $7d36: $ff
    rst $38                                       ; $7d37: $ff

jr_07e_7d38:
    rst $38                                       ; $7d38: $ff
    rst $38                                       ; $7d39: $ff
    rst $38                                       ; $7d3a: $ff
    rst $38                                       ; $7d3b: $ff
    rst $38                                       ; $7d3c: $ff
    rst $38                                       ; $7d3d: $ff

jr_07e_7d3e:
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

jr_07e_7d4e:
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

jr_07e_7d66:
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

Jump_07e_7fe2:
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
