; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $045", ROMX[$4000], BANK[$45]

    db $10                                        ; $4000: $10
    ld b, b                                       ; $4001: $40
    db $10                                        ; $4002: $10
    ld b, b                                       ; $4003: $40
    push bc                                       ; $4004: $c5
    ld c, c                                       ; $4005: $49
    ld l, e                                       ; $4006: $6b
    ld d, e                                       ; $4007: $53
    ld b, [hl]                                    ; $4008: $46
    ld e, l                                       ; $4009: $5d
    db $fc                                        ; $400a: $fc
    ld h, [hl]                                    ; $400b: $66
    and c                                         ; $400c: $a1
    ld [hl], c                                    ; $400d: $71
    db $10                                        ; $400e: $10
    ld b, b                                       ; $400f: $40
    inc a                                         ; $4010: $3c
    ld c, c                                       ; $4011: $49
    ld [hl], $40                                  ; $4012: $36 $40
    jp Jump_045_4b40                              ; $4014: $c3 $40 $4b


    ld b, c                                       ; $4017: $41
    ret nc                                        ; $4018: $d0

    ld b, c                                       ; $4019: $41
    ld e, b                                       ; $401a: $58
    ld b, d                                       ; $401b: $42
    db $dd                                        ; $401c: $dd
    ld b, d                                       ; $401d: $42
    ld h, h                                       ; $401e: $64
    ld b, e                                       ; $401f: $43
    di                                            ; $4020: $f3
    ld b, e                                       ; $4021: $43
    ld a, b                                       ; $4022: $78
    ld b, h                                       ; $4023: $44
    rst $38                                       ; $4024: $ff
    ld b, h                                       ; $4025: $44
    adc c                                         ; $4026: $89
    ld b, l                                       ; $4027: $45
    ld de, $9646                                  ; $4028: $11 $46 $96
    ld b, [hl]                                    ; $402b: $46
    dec e                                         ; $402c: $1d
    ld b, a                                       ; $402d: $47
    and [hl]                                      ; $402e: $a6
    ld b, a                                       ; $402f: $47
    cpl                                           ; $4030: $2f
    ld c, b                                       ; $4031: $48
    or a                                          ; $4032: $b7
    ld c, b                                       ; $4033: $48
    inc a                                         ; $4034: $3c
    ld c, c                                       ; $4035: $49
    nop                                           ; $4036: $00
    nop                                           ; $4037: $00
    nop                                           ; $4038: $00
    rst $38                                       ; $4039: $ff
    rst $38                                       ; $403a: $ff
    nop                                           ; $403b: $00
    nop                                           ; $403c: $00
    nop                                           ; $403d: $00
    nop                                           ; $403e: $00
    nop                                           ; $403f: $00
    rrca                                          ; $4040: $0f
    pop af                                        ; $4041: $f1
    rra                                           ; $4042: $1f
    ldh a, [rP1]                                  ; $4043: $f0 $00
    nop                                           ; $4045: $00
    nop                                           ; $4046: $00
    nop                                           ; $4047: $00
    rrca                                          ; $4048: $0f
    rra                                           ; $4049: $1f
    rst $38                                       ; $404a: $ff
    ldh a, [rP1]                                  ; $404b: $f0 $00
    nop                                           ; $404d: $00
    nop                                           ; $404e: $00
    nop                                           ; $404f: $00
    rrca                                          ; $4050: $0f
    rra                                           ; $4051: $1f
    pop af                                        ; $4052: $f1
    rst $38                                       ; $4053: $ff
    nop                                           ; $4054: $00
    nop                                           ; $4055: $00
    nop                                           ; $4056: $00
    nop                                           ; $4057: $00
    rrca                                          ; $4058: $0f
    rst $38                                       ; $4059: $ff
    rst $38                                       ; $405a: $ff
    ldh a, [rP1]                                  ; $405b: $f0 $00
    nop                                           ; $405d: $00
    nop                                           ; $405e: $00
    nop                                           ; $405f: $00
    rst $38                                       ; $4060: $ff
    rra                                           ; $4061: $1f
    rst $38                                       ; $4062: $ff
    ldh a, [rP1]                                  ; $4063: $f0 $00
    nop                                           ; $4065: $00
    nop                                           ; $4066: $00
    nop                                           ; $4067: $00
    rst $38                                       ; $4068: $ff
    rst $38                                       ; $4069: $ff
    rst $38                                       ; $406a: $ff
    ldh a, [rP1]                                  ; $406b: $f0 $00
    nop                                           ; $406d: $00
    nop                                           ; $406e: $00
    nop                                           ; $406f: $00
    rrca                                          ; $4070: $0f
    rst $38                                       ; $4071: $ff
    rst $38                                       ; $4072: $ff
    ldh a, [rP1]                                  ; $4073: $f0 $00
    nop                                           ; $4075: $00
    nop                                           ; $4076: $00
    nop                                           ; $4077: $00
    rrca                                          ; $4078: $0f
    di                                            ; $4079: $f3
    ccf                                           ; $407a: $3f
    rst $38                                       ; $407b: $ff
    nop                                           ; $407c: $00
    nop                                           ; $407d: $00
    nop                                           ; $407e: $00
    nop                                           ; $407f: $00
    rrca                                          ; $4080: $0f
    rst $38                                       ; $4081: $ff
    ccf                                           ; $4082: $3f
    rra                                           ; $4083: $1f
    nop                                           ; $4084: $00
    nop                                           ; $4085: $00
    nop                                           ; $4086: $00
    nop                                           ; $4087: $00
    nop                                           ; $4088: $00
    rst $38                                       ; $4089: $ff
    rst $38                                       ; $408a: $ff
    ldh a, [rP1]                                  ; $408b: $f0 $00
    nop                                           ; $408d: $00
    nop                                           ; $408e: $00
    nop                                           ; $408f: $00
    rrca                                          ; $4090: $0f
    rra                                           ; $4091: $1f
    rst $38                                       ; $4092: $ff
    ldh a, [rP1]                                  ; $4093: $f0 $00
    nop                                           ; $4095: $00
    nop                                           ; $4096: $00
    nop                                           ; $4097: $00
    rrca                                          ; $4098: $0f
    rst $38                                       ; $4099: $ff
    pop af                                        ; $409a: $f1
    ldh a, [rP1]                                  ; $409b: $f0 $00
    nop                                           ; $409d: $00
    nop                                           ; $409e: $00
    nop                                           ; $409f: $00
    nop                                           ; $40a0: $00
    rst $38                                       ; $40a1: $ff
    rst $38                                       ; $40a2: $ff
    nop                                           ; $40a3: $00
    nop                                           ; $40a4: $00
    nop                                           ; $40a5: $00
    nop                                           ; $40a6: $00
    nop                                           ; $40a7: $00
    nop                                           ; $40a8: $00
    di                                            ; $40a9: $f3
    ccf                                           ; $40aa: $3f
    nop                                           ; $40ab: $00
    nop                                           ; $40ac: $00
    nop                                           ; $40ad: $00
    nop                                           ; $40ae: $00
    nop                                           ; $40af: $00
    nop                                           ; $40b0: $00
    rst $38                                       ; $40b1: $ff
    rst $38                                       ; $40b2: $ff
    nop                                           ; $40b3: $00
    nop                                           ; $40b4: $00
    nop                                           ; $40b5: $00
    ld c, [hl]                                    ; $40b6: $4e
    daa                                           ; $40b7: $27
    jr z, jr_045_4100                             ; $40b8: $28 $46

    ld b, a                                       ; $40ba: $47
    ld c, b                                       ; $40bb: $48
    ld e, c                                       ; $40bc: $59
    ld h, [hl]                                    ; $40bd: $66
    ld h, a                                       ; $40be: $67
    ld l, b                                       ; $40bf: $68
    ld a, c                                       ; $40c0: $79
    rst $38                                       ; $40c1: $ff
    ld a, [bc]                                    ; $40c2: $0a
    nop                                           ; $40c3: $00
    nop                                           ; $40c4: $00
    nop                                           ; $40c5: $00
    nop                                           ; $40c6: $00
    rrca                                          ; $40c7: $0f
    ld [hl+], a                                   ; $40c8: $22
    ld [hl+], a                                   ; $40c9: $22
    ld [hl+], a                                   ; $40ca: $22
    nop                                           ; $40cb: $00
    nop                                           ; $40cc: $00
    nop                                           ; $40cd: $00
    rrca                                          ; $40ce: $0f
    rst $38                                       ; $40cf: $ff
    ld a, [c]                                     ; $40d0: $f2
    ld [hl+], a                                   ; $40d1: $22
    ld [hl+], a                                   ; $40d2: $22
    nop                                           ; $40d3: $00
    nop                                           ; $40d4: $00
    rrca                                          ; $40d5: $0f
    pop af                                        ; $40d6: $f1
    rra                                           ; $40d7: $1f
    ld [hl+], a                                   ; $40d8: $22
    ld [hl+], a                                   ; $40d9: $22
    ld [hl+], a                                   ; $40da: $22
    nop                                           ; $40db: $00
    nop                                           ; $40dc: $00
    rrca                                          ; $40dd: $0f
    rra                                           ; $40de: $1f
    rst $38                                       ; $40df: $ff
    ld [hl+], a                                   ; $40e0: $22
    ld [hl+], a                                   ; $40e1: $22
    ld [hl+], a                                   ; $40e2: $22
    nop                                           ; $40e3: $00
    nop                                           ; $40e4: $00
    rrca                                          ; $40e5: $0f
    rst $38                                       ; $40e6: $ff
    rst $38                                       ; $40e7: $ff
    ld [hl+], a                                   ; $40e8: $22
    ld [hl+], a                                   ; $40e9: $22
    ld [hl+], a                                   ; $40ea: $22
    nop                                           ; $40eb: $00
    nop                                           ; $40ec: $00
    rst $38                                       ; $40ed: $ff
    rst $38                                       ; $40ee: $ff
    ld a, [c]                                     ; $40ef: $f2
    ld [hl+], a                                   ; $40f0: $22
    ld [hl+], a                                   ; $40f1: $22
    ld [hl+], a                                   ; $40f2: $22
    nop                                           ; $40f3: $00
    nop                                           ; $40f4: $00
    rst $38                                       ; $40f5: $ff
    rst $38                                       ; $40f6: $ff
    rst $38                                       ; $40f7: $ff
    ld [hl+], a                                   ; $40f8: $22
    ld [hl+], a                                   ; $40f9: $22
    ld [hl+], a                                   ; $40fa: $22
    nop                                           ; $40fb: $00
    nop                                           ; $40fc: $00
    rrca                                          ; $40fd: $0f
    rst $38                                       ; $40fe: $ff
    ccf                                           ; $40ff: $3f

jr_045_4100:
    ld a, [c]                                     ; $4100: $f2
    ld [hl+], a                                   ; $4101: $22
    ld [hl+], a                                   ; $4102: $22
    nop                                           ; $4103: $00
    nop                                           ; $4104: $00
    nop                                           ; $4105: $00
    rst $38                                       ; $4106: $ff
    rst $38                                       ; $4107: $ff
    ld a, [c]                                     ; $4108: $f2
    ld [hl+], a                                   ; $4109: $22
    ld [hl+], a                                   ; $410a: $22
    nop                                           ; $410b: $00
    nop                                           ; $410c: $00
    nop                                           ; $410d: $00
    rst $38                                       ; $410e: $ff
    di                                            ; $410f: $f3
    ld a, [c]                                     ; $4110: $f2
    ld [hl+], a                                   ; $4111: $22
    ld [hl+], a                                   ; $4112: $22
    nop                                           ; $4113: $00
    nop                                           ; $4114: $00
    nop                                           ; $4115: $00
    rst $38                                       ; $4116: $ff
    ccf                                           ; $4117: $3f
    rst $38                                       ; $4118: $ff
    ld [hl+], a                                   ; $4119: $22
    ld [hl+], a                                   ; $411a: $22
    nop                                           ; $411b: $00
    nop                                           ; $411c: $00
    nop                                           ; $411d: $00
    rrca                                          ; $411e: $0f
    ccf                                           ; $411f: $3f
    rst $38                                       ; $4120: $ff
    ld a, [c]                                     ; $4121: $f2
    ld [hl+], a                                   ; $4122: $22
    nop                                           ; $4123: $00
    nop                                           ; $4124: $00
    nop                                           ; $4125: $00
    rst $38                                       ; $4126: $ff
    pop af                                        ; $4127: $f1
    ldh a, [rIE]                                  ; $4128: $f0 $ff
    ld a, [c]                                     ; $412a: $f2
    nop                                           ; $412b: $00
    nop                                           ; $412c: $00
    nop                                           ; $412d: $00
    rst $38                                       ; $412e: $ff
    rst $38                                       ; $412f: $ff
    ldh a, [rP1]                                  ; $4130: $f0 $00
    rst $38                                       ; $4132: $ff
    nop                                           ; $4133: $00
    nop                                           ; $4134: $00
    nop                                           ; $4135: $00
    rst $38                                       ; $4136: $ff
    rst $38                                       ; $4137: $ff
    nop                                           ; $4138: $00
    nop                                           ; $4139: $00
    nop                                           ; $413a: $00
    nop                                           ; $413b: $00
    nop                                           ; $413c: $00
    nop                                           ; $413d: $00
    rrca                                          ; $413e: $0f
    ldh a, [rP1]                                  ; $413f: $f0 $00
    nop                                           ; $4141: $00
    nop                                           ; $4142: $00
    ld c, b                                       ; $4143: $48
    ld b, [hl]                                    ; $4144: $46
    ld c, b                                       ; $4145: $48
    ld d, l                                       ; $4146: $55
    ld h, [hl]                                    ; $4147: $66
    ld [hl], a                                    ; $4148: $77
    rst $38                                       ; $4149: $ff
    dec b                                         ; $414a: $05
    nop                                           ; $414b: $00
    nop                                           ; $414c: $00
    nop                                           ; $414d: $00
    nop                                           ; $414e: $00
    nop                                           ; $414f: $00
    nop                                           ; $4150: $00
    nop                                           ; $4151: $00
    nop                                           ; $4152: $00
    nop                                           ; $4153: $00
    nop                                           ; $4154: $00
    nop                                           ; $4155: $00
    nop                                           ; $4156: $00
    nop                                           ; $4157: $00
    nop                                           ; $4158: $00
    nop                                           ; $4159: $00
    nop                                           ; $415a: $00
    nop                                           ; $415b: $00
    nop                                           ; $415c: $00
    nop                                           ; $415d: $00
    nop                                           ; $415e: $00
    nop                                           ; $415f: $00
    nop                                           ; $4160: $00
    nop                                           ; $4161: $00
    nop                                           ; $4162: $00
    nop                                           ; $4163: $00
    nop                                           ; $4164: $00
    nop                                           ; $4165: $00
    rst $38                                       ; $4166: $ff
    rst $38                                       ; $4167: $ff
    nop                                           ; $4168: $00
    nop                                           ; $4169: $00
    nop                                           ; $416a: $00
    nop                                           ; $416b: $00
    nop                                           ; $416c: $00
    rrca                                          ; $416d: $0f
    pop af                                        ; $416e: $f1
    rra                                           ; $416f: $1f
    ldh a, [rP1]                                  ; $4170: $f0 $00
    nop                                           ; $4172: $00
    nop                                           ; $4173: $00
    nop                                           ; $4174: $00
    rst $38                                       ; $4175: $ff
    rra                                           ; $4176: $1f
    pop af                                        ; $4177: $f1
    ldh a, [rP1]                                  ; $4178: $f0 $00
    nop                                           ; $417a: $00
    nop                                           ; $417b: $00
    nop                                           ; $417c: $00
    rrca                                          ; $417d: $0f
    rst $38                                       ; $417e: $ff
    pop af                                        ; $417f: $f1
    rra                                           ; $4180: $1f
    nop                                           ; $4181: $00
    nop                                           ; $4182: $00
    nop                                           ; $4183: $00
    nop                                           ; $4184: $00
    nop                                           ; $4185: $00
    rst $38                                       ; $4186: $ff
    pop af                                        ; $4187: $f1
    rst $38                                       ; $4188: $ff
    nop                                           ; $4189: $00
    nop                                           ; $418a: $00
    nop                                           ; $418b: $00
    nop                                           ; $418c: $00
    rrca                                          ; $418d: $0f
    rst $38                                       ; $418e: $ff
    rst $38                                       ; $418f: $ff
    ldh a, [rP1]                                  ; $4190: $f0 $00
    nop                                           ; $4192: $00
    nop                                           ; $4193: $00
    nop                                           ; $4194: $00
    rrca                                          ; $4195: $0f
    rra                                           ; $4196: $1f
    pop af                                        ; $4197: $f1
    ldh a, [rP1]                                  ; $4198: $f0 $00
    nop                                           ; $419a: $00
    nop                                           ; $419b: $00
    nop                                           ; $419c: $00
    nop                                           ; $419d: $00
    rst $38                                       ; $419e: $ff
    rst $38                                       ; $419f: $ff
    ldh a, [rP1]                                  ; $41a0: $f0 $00
    nop                                           ; $41a2: $00
    nop                                           ; $41a3: $00
    nop                                           ; $41a4: $00
    nop                                           ; $41a5: $00
    rst $38                                       ; $41a6: $ff
    rst $38                                       ; $41a7: $ff
    ldh a, [rP1]                                  ; $41a8: $f0 $00
    nop                                           ; $41aa: $00
    nop                                           ; $41ab: $00
    nop                                           ; $41ac: $00
    nop                                           ; $41ad: $00
    rst $38                                       ; $41ae: $ff
    rra                                           ; $41af: $1f
    nop                                           ; $41b0: $00
    nop                                           ; $41b1: $00
    nop                                           ; $41b2: $00
    nop                                           ; $41b3: $00
    nop                                           ; $41b4: $00
    nop                                           ; $41b5: $00
    rrca                                          ; $41b6: $0f
    ldh a, [rP1]                                  ; $41b7: $f0 $00
    nop                                           ; $41b9: $00
    nop                                           ; $41ba: $00
    nop                                           ; $41bb: $00
    nop                                           ; $41bc: $00
    nop                                           ; $41bd: $00
    nop                                           ; $41be: $00
    nop                                           ; $41bf: $00
    nop                                           ; $41c0: $00
    nop                                           ; $41c1: $00
    nop                                           ; $41c2: $00
    nop                                           ; $41c3: $00
    nop                                           ; $41c4: $00
    nop                                           ; $41c5: $00
    nop                                           ; $41c6: $00
    nop                                           ; $41c7: $00
    nop                                           ; $41c8: $00
    nop                                           ; $41c9: $00
    nop                                           ; $41ca: $00
    jr nc, jr_045_4224                            ; $41cb: $30 $57

    ld e, b                                       ; $41cd: $58
    rst $38                                       ; $41ce: $ff
    ld [bc], a                                    ; $41cf: $02
    nop                                           ; $41d0: $00
    rst $38                                       ; $41d1: $ff
    nop                                           ; $41d2: $00
    nop                                           ; $41d3: $00
    nop                                           ; $41d4: $00
    nop                                           ; $41d5: $00
    nop                                           ; $41d6: $00
    nop                                           ; $41d7: $00
    rrca                                          ; $41d8: $0f
    rst $38                                       ; $41d9: $ff
    ldh a, [rP1]                                  ; $41da: $f0 $00
    nop                                           ; $41dc: $00
    nop                                           ; $41dd: $00
    nop                                           ; $41de: $00
    nop                                           ; $41df: $00
    rrca                                          ; $41e0: $0f
    rst $38                                       ; $41e1: $ff
    ldh a, [rP1]                                  ; $41e2: $f0 $00
    nop                                           ; $41e4: $00
    nop                                           ; $41e5: $00
    nop                                           ; $41e6: $00
    nop                                           ; $41e7: $00
    rrca                                          ; $41e8: $0f
    di                                            ; $41e9: $f3
    rst $38                                       ; $41ea: $ff
    nop                                           ; $41eb: $00
    nop                                           ; $41ec: $00
    nop                                           ; $41ed: $00
    nop                                           ; $41ee: $00
    nop                                           ; $41ef: $00
    nop                                           ; $41f0: $00
    rst $38                                       ; $41f1: $ff
    rst $38                                       ; $41f2: $ff
    rst $38                                       ; $41f3: $ff
    nop                                           ; $41f4: $00
    nop                                           ; $41f5: $00
    nop                                           ; $41f6: $00
    nop                                           ; $41f7: $00
    nop                                           ; $41f8: $00
    rst $38                                       ; $41f9: $ff
    di                                            ; $41fa: $f3
    rst $38                                       ; $41fb: $ff
    rst $38                                       ; $41fc: $ff
    nop                                           ; $41fd: $00
    nop                                           ; $41fe: $00
    nop                                           ; $41ff: $00
    nop                                           ; $4200: $00
    rrca                                          ; $4201: $0f
    rst $38                                       ; $4202: $ff
    di                                            ; $4203: $f3
    rst $38                                       ; $4204: $ff
    ldh a, [rP1]                                  ; $4205: $f0 $00
    nop                                           ; $4207: $00
    nop                                           ; $4208: $00
    nop                                           ; $4209: $00
    rst $38                                       ; $420a: $ff
    rst $38                                       ; $420b: $ff
    inc sp                                        ; $420c: $33
    rst $38                                       ; $420d: $ff
    nop                                           ; $420e: $00
    nop                                           ; $420f: $00
    nop                                           ; $4210: $00
    nop                                           ; $4211: $00
    nop                                           ; $4212: $00
    rst $38                                       ; $4213: $ff
    rst $38                                       ; $4214: $ff
    rst $38                                       ; $4215: $ff
    nop                                           ; $4216: $00
    nop                                           ; $4217: $00
    nop                                           ; $4218: $00
    nop                                           ; $4219: $00
    nop                                           ; $421a: $00
    rrca                                          ; $421b: $0f
    rst $38                                       ; $421c: $ff
    rst $38                                       ; $421d: $ff
    nop                                           ; $421e: $00
    nop                                           ; $421f: $00
    nop                                           ; $4220: $00
    nop                                           ; $4221: $00
    nop                                           ; $4222: $00
    nop                                           ; $4223: $00

jr_045_4224:
    rst $38                                       ; $4224: $ff
    ccf                                           ; $4225: $3f
    ldh a, [rP1]                                  ; $4226: $f0 $00
    nop                                           ; $4228: $00
    nop                                           ; $4229: $00
    nop                                           ; $422a: $00
    nop                                           ; $422b: $00
    rst $38                                       ; $422c: $ff
    ccf                                           ; $422d: $3f
    rst $38                                       ; $422e: $ff
    nop                                           ; $422f: $00
    nop                                           ; $4230: $00
    nop                                           ; $4231: $00
    nop                                           ; $4232: $00
    nop                                           ; $4233: $00
    rrca                                          ; $4234: $0f
    rst $38                                       ; $4235: $ff
    rra                                           ; $4236: $1f
    ldh a, [rP1]                                  ; $4237: $f0 $00
    nop                                           ; $4239: $00
    nop                                           ; $423a: $00
    nop                                           ; $423b: $00
    nop                                           ; $423c: $00
    rst $38                                       ; $423d: $ff
    rst $38                                       ; $423e: $ff
    ldh a, [rP1]                                  ; $423f: $f0 $00
    nop                                           ; $4241: $00
    nop                                           ; $4242: $00
    nop                                           ; $4243: $00
    nop                                           ; $4244: $00
    rst $38                                       ; $4245: $ff
    rst $38                                       ; $4246: $ff
    ldh a, [rP1]                                  ; $4247: $f0 $00
    nop                                           ; $4249: $00
    nop                                           ; $424a: $00
    nop                                           ; $424b: $00
    nop                                           ; $424c: $00
    rrca                                          ; $424d: $0f
    rst $38                                       ; $424e: $ff
    nop                                           ; $424f: $00
    ld c, [hl]                                    ; $4250: $4e
    ld [de], a                                    ; $4251: $12
    inc de                                        ; $4252: $13
    inc h                                         ; $4253: $24
    ld [hl], a                                    ; $4254: $77
    adc b                                         ; $4255: $88
    rst $38                                       ; $4256: $ff
    dec b                                         ; $4257: $05
    nop                                           ; $4258: $00
    nop                                           ; $4259: $00
    nop                                           ; $425a: $00
    nop                                           ; $425b: $00
    nop                                           ; $425c: $00
    nop                                           ; $425d: $00
    nop                                           ; $425e: $00
    nop                                           ; $425f: $00
    nop                                           ; $4260: $00
    nop                                           ; $4261: $00
    nop                                           ; $4262: $00
    rst $38                                       ; $4263: $ff
    rst $38                                       ; $4264: $ff
    nop                                           ; $4265: $00
    nop                                           ; $4266: $00
    nop                                           ; $4267: $00
    nop                                           ; $4268: $00
    nop                                           ; $4269: $00
    rrca                                          ; $426a: $0f
    pop af                                        ; $426b: $f1
    rra                                           ; $426c: $1f
    ldh a, [rP1]                                  ; $426d: $f0 $00
    nop                                           ; $426f: $00
    nop                                           ; $4270: $00
    nop                                           ; $4271: $00
    rrca                                          ; $4272: $0f
    rst $38                                       ; $4273: $ff
    pop af                                        ; $4274: $f1
    ldh a, [rP1]                                  ; $4275: $f0 $00
    nop                                           ; $4277: $00
    nop                                           ; $4278: $00
    nop                                           ; $4279: $00
    rrca                                          ; $427a: $0f
    rst $38                                       ; $427b: $ff
    rst $38                                       ; $427c: $ff
    nop                                           ; $427d: $00
    nop                                           ; $427e: $00
    nop                                           ; $427f: $00
    nop                                           ; $4280: $00
    nop                                           ; $4281: $00
    rrca                                          ; $4282: $0f
    rst $38                                       ; $4283: $ff
    rst $38                                       ; $4284: $ff
    nop                                           ; $4285: $00
    nop                                           ; $4286: $00
    nop                                           ; $4287: $00
    nop                                           ; $4288: $00
    nop                                           ; $4289: $00
    rrca                                          ; $428a: $0f
    rst $38                                       ; $428b: $ff
    rst $38                                       ; $428c: $ff
    nop                                           ; $428d: $00
    nop                                           ; $428e: $00
    nop                                           ; $428f: $00
    nop                                           ; $4290: $00
    nop                                           ; $4291: $00
    pop af                                        ; $4292: $f1
    ccf                                           ; $4293: $3f
    rra                                           ; $4294: $1f
    nop                                           ; $4295: $00
    nop                                           ; $4296: $00
    nop                                           ; $4297: $00
    nop                                           ; $4298: $00
    nop                                           ; $4299: $00
    rst $38                                       ; $429a: $ff
    rst $38                                       ; $429b: $ff
    rst $38                                       ; $429c: $ff
    nop                                           ; $429d: $00
    nop                                           ; $429e: $00
    nop                                           ; $429f: $00
    nop                                           ; $42a0: $00
    nop                                           ; $42a1: $00
    rrca                                          ; $42a2: $0f
    rst $38                                       ; $42a3: $ff
    ccf                                           ; $42a4: $3f
    ldh a, [rP1]                                  ; $42a5: $f0 $00
    nop                                           ; $42a7: $00
    nop                                           ; $42a8: $00
    nop                                           ; $42a9: $00
    rrca                                          ; $42aa: $0f
    rra                                           ; $42ab: $1f
    rst $38                                       ; $42ac: $ff
    ldh a, [rP1]                                  ; $42ad: $f0 $00
    nop                                           ; $42af: $00
    nop                                           ; $42b0: $00
    nop                                           ; $42b1: $00
    rrca                                          ; $42b2: $0f
    rra                                           ; $42b3: $1f
    pop af                                        ; $42b4: $f1
    ldh a, [rP1]                                  ; $42b5: $f0 $00
    nop                                           ; $42b7: $00
    nop                                           ; $42b8: $00
    nop                                           ; $42b9: $00
    rrca                                          ; $42ba: $0f
    rra                                           ; $42bb: $1f
    pop af                                        ; $42bc: $f1
    ldh a, [rP1]                                  ; $42bd: $f0 $00
    nop                                           ; $42bf: $00
    nop                                           ; $42c0: $00
    nop                                           ; $42c1: $00
    nop                                           ; $42c2: $00
    rst $38                                       ; $42c3: $ff
    rst $38                                       ; $42c4: $ff
    ldh a, [rP1]                                  ; $42c5: $f0 $00
    nop                                           ; $42c7: $00
    nop                                           ; $42c8: $00
    nop                                           ; $42c9: $00
    nop                                           ; $42ca: $00
    rst $38                                       ; $42cb: $ff
    rst $38                                       ; $42cc: $ff
    nop                                           ; $42cd: $00
    nop                                           ; $42ce: $00
    nop                                           ; $42cf: $00
    nop                                           ; $42d0: $00
    nop                                           ; $42d1: $00
    nop                                           ; $42d2: $00
    rst $38                                       ; $42d3: $ff
    rst $38                                       ; $42d4: $ff
    nop                                           ; $42d5: $00
    nop                                           ; $42d6: $00
    nop                                           ; $42d7: $00
    ld b, h                                       ; $42d8: $44
    ld b, a                                       ; $42d9: $47
    ld c, b                                       ; $42da: $48
    rst $38                                       ; $42db: $ff
    ld [bc], a                                    ; $42dc: $02
    nop                                           ; $42dd: $00
    nop                                           ; $42de: $00
    nop                                           ; $42df: $00
    nop                                           ; $42e0: $00
    nop                                           ; $42e1: $00
    nop                                           ; $42e2: $00
    nop                                           ; $42e3: $00
    nop                                           ; $42e4: $00
    nop                                           ; $42e5: $00
    nop                                           ; $42e6: $00
    nop                                           ; $42e7: $00
    nop                                           ; $42e8: $00
    nop                                           ; $42e9: $00
    nop                                           ; $42ea: $00
    nop                                           ; $42eb: $00
    nop                                           ; $42ec: $00
    nop                                           ; $42ed: $00
    nop                                           ; $42ee: $00
    rst $38                                       ; $42ef: $ff
    rst $38                                       ; $42f0: $ff
    ldh a, [rP1]                                  ; $42f1: $f0 $00
    nop                                           ; $42f3: $00
    nop                                           ; $42f4: $00
    nop                                           ; $42f5: $00
    nop                                           ; $42f6: $00
    rst $38                                       ; $42f7: $ff
    rst $38                                       ; $42f8: $ff
    rra                                           ; $42f9: $1f
    ldh a, [rP1]                                  ; $42fa: $f0 $00
    nop                                           ; $42fc: $00
    nop                                           ; $42fd: $00
    nop                                           ; $42fe: $00
    rst $38                                       ; $42ff: $ff
    rst $38                                       ; $4300: $ff
    rst $38                                       ; $4301: $ff
    ldh a, [rP1]                                  ; $4302: $f0 $00
    nop                                           ; $4304: $00
    nop                                           ; $4305: $00
    nop                                           ; $4306: $00
    rst $38                                       ; $4307: $ff
    rst $38                                       ; $4308: $ff
    rst $38                                       ; $4309: $ff
    ldh a, [rP1]                                  ; $430a: $f0 $00
    nop                                           ; $430c: $00
    nop                                           ; $430d: $00
    nop                                           ; $430e: $00
    rst $38                                       ; $430f: $ff
    rst $38                                       ; $4310: $ff
    rst $38                                       ; $4311: $ff
    rst $38                                       ; $4312: $ff
    nop                                           ; $4313: $00
    nop                                           ; $4314: $00
    nop                                           ; $4315: $00
    nop                                           ; $4316: $00
    rst $38                                       ; $4317: $ff
    cpl                                           ; $4318: $2f
    ccf                                           ; $4319: $3f
    rra                                           ; $431a: $1f
    nop                                           ; $431b: $00
    nop                                           ; $431c: $00
    nop                                           ; $431d: $00
    nop                                           ; $431e: $00
    rst $38                                       ; $431f: $ff
    rst $38                                       ; $4320: $ff
    ccf                                           ; $4321: $3f
    rra                                           ; $4322: $1f
    nop                                           ; $4323: $00
    nop                                           ; $4324: $00
    nop                                           ; $4325: $00
    nop                                           ; $4326: $00
    rrca                                          ; $4327: $0f
    rst $38                                       ; $4328: $ff
    ccf                                           ; $4329: $3f
    rra                                           ; $432a: $1f
    nop                                           ; $432b: $00
    nop                                           ; $432c: $00
    nop                                           ; $432d: $00
    nop                                           ; $432e: $00
    rrca                                          ; $432f: $0f
    rra                                           ; $4330: $1f
    ccf                                           ; $4331: $3f
    ldh a, [rP1]                                  ; $4332: $f0 $00
    nop                                           ; $4334: $00
    nop                                           ; $4335: $00
    nop                                           ; $4336: $00
    rrca                                          ; $4337: $0f
    rra                                           ; $4338: $1f
    pop af                                        ; $4339: $f1
    ldh a, [rP1]                                  ; $433a: $f0 $00
    nop                                           ; $433c: $00
    nop                                           ; $433d: $00
    nop                                           ; $433e: $00
    rrca                                          ; $433f: $0f
    di                                            ; $4340: $f3
    ccf                                           ; $4341: $3f
    ldh a, [rP1]                                  ; $4342: $f0 $00
    nop                                           ; $4344: $00
    nop                                           ; $4345: $00
    nop                                           ; $4346: $00
    rrca                                          ; $4347: $0f
    rst $38                                       ; $4348: $ff
    rst $38                                       ; $4349: $ff
    ldh a, [rP1]                                  ; $434a: $f0 $00
    nop                                           ; $434c: $00
    nop                                           ; $434d: $00
    nop                                           ; $434e: $00
    nop                                           ; $434f: $00
    rst $38                                       ; $4350: $ff
    rst $38                                       ; $4351: $ff
    nop                                           ; $4352: $00
    nop                                           ; $4353: $00
    nop                                           ; $4354: $00
    nop                                           ; $4355: $00
    nop                                           ; $4356: $00
    nop                                           ; $4357: $00
    nop                                           ; $4358: $00
    nop                                           ; $4359: $00
    nop                                           ; $435a: $00
    nop                                           ; $435b: $00
    nop                                           ; $435c: $00
    ld b, a                                       ; $435d: $47
    inc [hl]                                      ; $435e: $34
    dec [hl]                                      ; $435f: $35
    ld [hl], $37                                  ; $4360: $36 $37
    rst $38                                       ; $4362: $ff
    inc b                                         ; $4363: $04
    nop                                           ; $4364: $00
    nop                                           ; $4365: $00
    nop                                           ; $4366: $00
    nop                                           ; $4367: $00
    rst $38                                       ; $4368: $ff
    ldh a, [rP1]                                  ; $4369: $f0 $00
    nop                                           ; $436b: $00
    nop                                           ; $436c: $00
    nop                                           ; $436d: $00
    nop                                           ; $436e: $00
    rst $38                                       ; $436f: $ff
    rst $38                                       ; $4370: $ff
    ldh a, [rP1]                                  ; $4371: $f0 $00
    nop                                           ; $4373: $00
    nop                                           ; $4374: $00
    nop                                           ; $4375: $00
    rrca                                          ; $4376: $0f
    rst $38                                       ; $4377: $ff
    rst $38                                       ; $4378: $ff
    rst $38                                       ; $4379: $ff
    nop                                           ; $437a: $00
    nop                                           ; $437b: $00
    nop                                           ; $437c: $00
    nop                                           ; $437d: $00
    rrca                                          ; $437e: $0f
    rst $38                                       ; $437f: $ff
    rst $38                                       ; $4380: $ff
    ldh a, [rP1]                                  ; $4381: $f0 $00
    nop                                           ; $4383: $00
    nop                                           ; $4384: $00
    nop                                           ; $4385: $00
    rrca                                          ; $4386: $0f
    di                                            ; $4387: $f3
    rst $38                                       ; $4388: $ff
    ldh a, [rP1]                                  ; $4389: $f0 $00
    nop                                           ; $438b: $00
    nop                                           ; $438c: $00
    nop                                           ; $438d: $00
    rst $38                                       ; $438e: $ff
    rst $38                                       ; $438f: $ff
    rst $38                                       ; $4390: $ff
    nop                                           ; $4391: $00
    nop                                           ; $4392: $00
    nop                                           ; $4393: $00
    nop                                           ; $4394: $00
    nop                                           ; $4395: $00
    rst $38                                       ; $4396: $ff
    rst $38                                       ; $4397: $ff
    rst $38                                       ; $4398: $ff
    nop                                           ; $4399: $00
    nop                                           ; $439a: $00
    nop                                           ; $439b: $00
    nop                                           ; $439c: $00
    nop                                           ; $439d: $00
    rst $38                                       ; $439e: $ff
    rst $38                                       ; $439f: $ff
    rst $38                                       ; $43a0: $ff
    nop                                           ; $43a1: $00
    nop                                           ; $43a2: $00
    nop                                           ; $43a3: $00
    nop                                           ; $43a4: $00
    nop                                           ; $43a5: $00
    rst $38                                       ; $43a6: $ff
    rst $38                                       ; $43a7: $ff
    rst $38                                       ; $43a8: $ff
    nop                                           ; $43a9: $00
    nop                                           ; $43aa: $00
    nop                                           ; $43ab: $00
    nop                                           ; $43ac: $00
    nop                                           ; $43ad: $00
    rst $38                                       ; $43ae: $ff
    ccf                                           ; $43af: $3f
    rst $38                                       ; $43b0: $ff
    nop                                           ; $43b1: $00
    nop                                           ; $43b2: $00
    nop                                           ; $43b3: $00
    nop                                           ; $43b4: $00
    nop                                           ; $43b5: $00
    rst $38                                       ; $43b6: $ff
    inc sp                                        ; $43b7: $33
    pop af                                        ; $43b8: $f1
    ldh a, [rP1]                                  ; $43b9: $f0 $00
    nop                                           ; $43bb: $00
    nop                                           ; $43bc: $00
    nop                                           ; $43bd: $00
    rst $38                                       ; $43be: $ff
    di                                            ; $43bf: $f3
    pop af                                        ; $43c0: $f1
    ldh a, [rP1]                                  ; $43c1: $f0 $00
    nop                                           ; $43c3: $00
    nop                                           ; $43c4: $00
    nop                                           ; $43c5: $00
    ld bc, $3fff                                  ; $43c6: $01 $ff $3f
    rst $38                                       ; $43c9: $ff
    nop                                           ; $43ca: $00
    nop                                           ; $43cb: $00
    nop                                           ; $43cc: $00
    nop                                           ; $43cd: $00
    rrca                                          ; $43ce: $0f
    pop af                                        ; $43cf: $f1
    rst $38                                       ; $43d0: $ff
    rst $38                                       ; $43d1: $ff
    nop                                           ; $43d2: $00
    nop                                           ; $43d3: $00
    nop                                           ; $43d4: $00
    nop                                           ; $43d5: $00
    nop                                           ; $43d6: $00
    rst $38                                       ; $43d7: $ff
    di                                            ; $43d8: $f3
    rst $38                                       ; $43d9: $ff
    nop                                           ; $43da: $00
    nop                                           ; $43db: $00
    nop                                           ; $43dc: $00
    nop                                           ; $43dd: $00
    nop                                           ; $43de: $00
    nop                                           ; $43df: $00
    rst $38                                       ; $43e0: $ff
    ldh a, [rP1]                                  ; $43e1: $f0 $00
    nop                                           ; $43e3: $00
    ld d, e                                       ; $43e4: $53
    jr jr_045_4400                                ; $43e5: $18 $19

    ld a, [hl+]                                   ; $43e7: $2a
    add hl, sp                                    ; $43e8: $39
    ld b, l                                       ; $43e9: $45
    ld h, l                                       ; $43ea: $65
    ld h, [hl]                                    ; $43eb: $66
    ld h, a                                       ; $43ec: $67
    ld l, b                                       ; $43ed: $68
    add l                                         ; $43ee: $85
    add a                                         ; $43ef: $87
    adc b                                         ; $43f0: $88
    rst $38                                       ; $43f1: $ff
    inc c                                         ; $43f2: $0c
    nop                                           ; $43f3: $00
    nop                                           ; $43f4: $00
    nop                                           ; $43f5: $00
    nop                                           ; $43f6: $00
    nop                                           ; $43f7: $00
    nop                                           ; $43f8: $00
    nop                                           ; $43f9: $00
    nop                                           ; $43fa: $00
    nop                                           ; $43fb: $00
    nop                                           ; $43fc: $00
    nop                                           ; $43fd: $00
    nop                                           ; $43fe: $00
    nop                                           ; $43ff: $00

jr_045_4400:
    nop                                           ; $4400: $00
    nop                                           ; $4401: $00
    nop                                           ; $4402: $00
    nop                                           ; $4403: $00
    nop                                           ; $4404: $00
    nop                                           ; $4405: $00
    nop                                           ; $4406: $00
    nop                                           ; $4407: $00
    nop                                           ; $4408: $00
    nop                                           ; $4409: $00
    nop                                           ; $440a: $00
    nop                                           ; $440b: $00
    nop                                           ; $440c: $00
    nop                                           ; $440d: $00
    rrca                                          ; $440e: $0f
    ldh a, [rP1]                                  ; $440f: $f0 $00
    nop                                           ; $4411: $00
    nop                                           ; $4412: $00
    nop                                           ; $4413: $00
    nop                                           ; $4414: $00
    rrca                                          ; $4415: $0f
    rst $38                                       ; $4416: $ff
    rst $38                                       ; $4417: $ff
    nop                                           ; $4418: $00
    nop                                           ; $4419: $00
    nop                                           ; $441a: $00
    nop                                           ; $441b: $00
    nop                                           ; $441c: $00
    rrca                                          ; $441d: $0f
    rst $38                                       ; $441e: $ff
    rst $38                                       ; $441f: $ff
    nop                                           ; $4420: $00
    nop                                           ; $4421: $00
    nop                                           ; $4422: $00
    nop                                           ; $4423: $00
    nop                                           ; $4424: $00
    rrca                                          ; $4425: $0f
    rst $38                                       ; $4426: $ff
    rst $38                                       ; $4427: $ff
    nop                                           ; $4428: $00
    nop                                           ; $4429: $00
    nop                                           ; $442a: $00
    nop                                           ; $442b: $00
    nop                                           ; $442c: $00
    nop                                           ; $442d: $00
    rst $38                                       ; $442e: $ff
    pop af                                        ; $442f: $f1
    ldh a, [rP1]                                  ; $4430: $f0 $00
    nop                                           ; $4432: $00
    nop                                           ; $4433: $00
    nop                                           ; $4434: $00
    nop                                           ; $4435: $00
    rst $38                                       ; $4436: $ff
    rst $38                                       ; $4437: $ff
    nop                                           ; $4438: $00
    nop                                           ; $4439: $00
    nop                                           ; $443a: $00
    nop                                           ; $443b: $00
    nop                                           ; $443c: $00
    nop                                           ; $443d: $00
    rst $38                                       ; $443e: $ff
    rst $38                                       ; $443f: $ff
    nop                                           ; $4440: $00
    nop                                           ; $4441: $00
    nop                                           ; $4442: $00
    nop                                           ; $4443: $00
    nop                                           ; $4444: $00
    nop                                           ; $4445: $00
    rst $38                                       ; $4446: $ff
    rst $38                                       ; $4447: $ff
    nop                                           ; $4448: $00
    nop                                           ; $4449: $00
    nop                                           ; $444a: $00
    nop                                           ; $444b: $00
    nop                                           ; $444c: $00
    nop                                           ; $444d: $00
    rst $38                                       ; $444e: $ff
    ldh a, [rP1]                                  ; $444f: $f0 $00
    nop                                           ; $4451: $00
    nop                                           ; $4452: $00
    nop                                           ; $4453: $00
    nop                                           ; $4454: $00
    nop                                           ; $4455: $00
    nop                                           ; $4456: $00
    nop                                           ; $4457: $00
    nop                                           ; $4458: $00
    nop                                           ; $4459: $00
    nop                                           ; $445a: $00
    nop                                           ; $445b: $00
    nop                                           ; $445c: $00
    nop                                           ; $445d: $00
    nop                                           ; $445e: $00
    nop                                           ; $445f: $00
    nop                                           ; $4460: $00
    nop                                           ; $4461: $00
    nop                                           ; $4462: $00
    nop                                           ; $4463: $00
    nop                                           ; $4464: $00
    nop                                           ; $4465: $00
    nop                                           ; $4466: $00
    nop                                           ; $4467: $00
    nop                                           ; $4468: $00
    nop                                           ; $4469: $00
    nop                                           ; $446a: $00
    nop                                           ; $446b: $00
    nop                                           ; $446c: $00
    nop                                           ; $446d: $00
    nop                                           ; $446e: $00
    nop                                           ; $446f: $00
    nop                                           ; $4470: $00
    nop                                           ; $4471: $00
    nop                                           ; $4472: $00
    inc h                                         ; $4473: $24
    ld d, a                                       ; $4474: $57
    ld e, b                                       ; $4475: $58
    rst $38                                       ; $4476: $ff
    ld [bc], a                                    ; $4477: $02
    nop                                           ; $4478: $00
    nop                                           ; $4479: $00
    nop                                           ; $447a: $00
    rrca                                          ; $447b: $0f
    rst $38                                       ; $447c: $ff
    nop                                           ; $447d: $00
    nop                                           ; $447e: $00
    nop                                           ; $447f: $00
    nop                                           ; $4480: $00
    nop                                           ; $4481: $00
    nop                                           ; $4482: $00
    rrca                                          ; $4483: $0f
    rra                                           ; $4484: $1f
    ldh a, [rP1]                                  ; $4485: $f0 $00
    nop                                           ; $4487: $00
    nop                                           ; $4488: $00
    nop                                           ; $4489: $00
    rrca                                          ; $448a: $0f
    pop af                                        ; $448b: $f1
    rst $38                                       ; $448c: $ff
    ldh a, [rP1]                                  ; $448d: $f0 $00
    nop                                           ; $448f: $00
    nop                                           ; $4490: $00
    nop                                           ; $4491: $00
    rrca                                          ; $4492: $0f
    pop af                                        ; $4493: $f1
    rst $38                                       ; $4494: $ff
    ldh a, [rP1]                                  ; $4495: $f0 $00
    nop                                           ; $4497: $00
    nop                                           ; $4498: $00
    nop                                           ; $4499: $00
    nop                                           ; $449a: $00
    rst $38                                       ; $449b: $ff
    pop af                                        ; $449c: $f1
    ldh a, [rP1]                                  ; $449d: $f0 $00
    nop                                           ; $449f: $00
    nop                                           ; $44a0: $00
    nop                                           ; $44a1: $00
    nop                                           ; $44a2: $00
    rst $38                                       ; $44a3: $ff
    ccf                                           ; $44a4: $3f
    ldh a, [rP1]                                  ; $44a5: $f0 $00
    nop                                           ; $44a7: $00
    nop                                           ; $44a8: $00
    nop                                           ; $44a9: $00
    nop                                           ; $44aa: $00
    rst $38                                       ; $44ab: $ff
    rst $38                                       ; $44ac: $ff
    rst $38                                       ; $44ad: $ff
    nop                                           ; $44ae: $00
    nop                                           ; $44af: $00
    nop                                           ; $44b0: $00
    nop                                           ; $44b1: $00
    nop                                           ; $44b2: $00
    rrca                                          ; $44b3: $0f
    di                                            ; $44b4: $f3
    rst $38                                       ; $44b5: $ff
    nop                                           ; $44b6: $00
    nop                                           ; $44b7: $00
    nop                                           ; $44b8: $00
    nop                                           ; $44b9: $00
    rrca                                          ; $44ba: $0f
    rst $38                                       ; $44bb: $ff
    inc sp                                        ; $44bc: $33
    ldh a, [rP1]                                  ; $44bd: $f0 $00
    nop                                           ; $44bf: $00
    nop                                           ; $44c0: $00
    nop                                           ; $44c1: $00
    rrca                                          ; $44c2: $0f
    rra                                           ; $44c3: $1f
    rst $38                                       ; $44c4: $ff
    ldh a, [rP1]                                  ; $44c5: $f0 $00
    nop                                           ; $44c7: $00
    nop                                           ; $44c8: $00
    nop                                           ; $44c9: $00
    nop                                           ; $44ca: $00
    rst $38                                       ; $44cb: $ff
    rst $38                                       ; $44cc: $ff
    nop                                           ; $44cd: $00
    nop                                           ; $44ce: $00
    nop                                           ; $44cf: $00
    nop                                           ; $44d0: $00
    nop                                           ; $44d1: $00
    rrca                                          ; $44d2: $0f
    rst $38                                       ; $44d3: $ff
    rst $38                                       ; $44d4: $ff
    nop                                           ; $44d5: $00
    nop                                           ; $44d6: $00
    nop                                           ; $44d7: $00
    nop                                           ; $44d8: $00
    nop                                           ; $44d9: $00
    rst $38                                       ; $44da: $ff
    pop af                                        ; $44db: $f1
    ldh a, [rP1]                                  ; $44dc: $f0 $00
    nop                                           ; $44de: $00
    nop                                           ; $44df: $00
    nop                                           ; $44e0: $00
    nop                                           ; $44e1: $00
    rst $38                                       ; $44e2: $ff
    ccf                                           ; $44e3: $3f
    nop                                           ; $44e4: $00
    nop                                           ; $44e5: $00
    nop                                           ; $44e6: $00
    nop                                           ; $44e7: $00
    nop                                           ; $44e8: $00
    nop                                           ; $44e9: $00
    rrca                                          ; $44ea: $0f
    rst $38                                       ; $44eb: $ff
    nop                                           ; $44ec: $00
    nop                                           ; $44ed: $00
    nop                                           ; $44ee: $00
    nop                                           ; $44ef: $00
    nop                                           ; $44f0: $00
    nop                                           ; $44f1: $00
    rrca                                          ; $44f2: $0f
    rst $38                                       ; $44f3: $ff
    nop                                           ; $44f4: $00
    nop                                           ; $44f5: $00
    nop                                           ; $44f6: $00
    nop                                           ; $44f7: $00
    ld b, c                                       ; $44f8: $41
    jr z, jr_045_4524                             ; $44f9: $28 $29

    ld l, b                                       ; $44fb: $68
    ld [hl], a                                    ; $44fc: $77
    rst $38                                       ; $44fd: $ff
    inc b                                         ; $44fe: $04
    nop                                           ; $44ff: $00
    nop                                           ; $4500: $00
    nop                                           ; $4501: $00
    nop                                           ; $4502: $00
    nop                                           ; $4503: $00
    nop                                           ; $4504: $00
    nop                                           ; $4505: $00
    nop                                           ; $4506: $00
    nop                                           ; $4507: $00
    nop                                           ; $4508: $00
    nop                                           ; $4509: $00
    rst $38                                       ; $450a: $ff
    nop                                           ; $450b: $00
    nop                                           ; $450c: $00
    nop                                           ; $450d: $00
    nop                                           ; $450e: $00
    nop                                           ; $450f: $00
    nop                                           ; $4510: $00
    rrca                                          ; $4511: $0f
    rst $38                                       ; $4512: $ff
    rst $38                                       ; $4513: $ff
    nop                                           ; $4514: $00
    nop                                           ; $4515: $00
    nop                                           ; $4516: $00
    nop                                           ; $4517: $00
    nop                                           ; $4518: $00
    rrca                                          ; $4519: $0f
    rst $38                                       ; $451a: $ff
    rra                                           ; $451b: $1f
    nop                                           ; $451c: $00
    nop                                           ; $451d: $00
    nop                                           ; $451e: $00
    nop                                           ; $451f: $00
    nop                                           ; $4520: $00
    nop                                           ; $4521: $00
    rst $38                                       ; $4522: $ff
    rst $38                                       ; $4523: $ff

jr_045_4524:
    ldh a, [rP1]                                  ; $4524: $f0 $00
    nop                                           ; $4526: $00
    nop                                           ; $4527: $00
    nop                                           ; $4528: $00
    nop                                           ; $4529: $00
    rst $38                                       ; $452a: $ff
    rst $38                                       ; $452b: $ff
    rst $38                                       ; $452c: $ff
    nop                                           ; $452d: $00
    nop                                           ; $452e: $00
    nop                                           ; $452f: $00
    nop                                           ; $4530: $00
    nop                                           ; $4531: $00
    rst $38                                       ; $4532: $ff
    rst $38                                       ; $4533: $ff
    rst $38                                       ; $4534: $ff
    nop                                           ; $4535: $00
    nop                                           ; $4536: $00
    nop                                           ; $4537: $00
    nop                                           ; $4538: $00
    nop                                           ; $4539: $00
    rrca                                          ; $453a: $0f
    di                                            ; $453b: $f3
    rst $38                                       ; $453c: $ff
    nop                                           ; $453d: $00
    nop                                           ; $453e: $00
    nop                                           ; $453f: $00
    nop                                           ; $4540: $00
    nop                                           ; $4541: $00
    rrca                                          ; $4542: $0f
    rst $38                                       ; $4543: $ff
    ldh a, [rP1]                                  ; $4544: $f0 $00
    nop                                           ; $4546: $00
    nop                                           ; $4547: $00
    nop                                           ; $4548: $00
    nop                                           ; $4549: $00
    rst $38                                       ; $454a: $ff
    ccf                                           ; $454b: $3f
    ldh a, [rP1]                                  ; $454c: $f0 $00
    nop                                           ; $454e: $00
    nop                                           ; $454f: $00
    nop                                           ; $4550: $00
    rrca                                          ; $4551: $0f
    rst $38                                       ; $4552: $ff
    pop af                                        ; $4553: $f1
    ldh a, [rP1]                                  ; $4554: $f0 $00
    nop                                           ; $4556: $00
    nop                                           ; $4557: $00
    nop                                           ; $4558: $00
    rrca                                          ; $4559: $0f
    ld de, $001f                                  ; $455a: $11 $1f $00
    nop                                           ; $455d: $00
    nop                                           ; $455e: $00
    nop                                           ; $455f: $00
    nop                                           ; $4560: $00
    rrca                                          ; $4561: $0f
    inc sp                                        ; $4562: $33
    rst $38                                       ; $4563: $ff
    nop                                           ; $4564: $00
    nop                                           ; $4565: $00
    nop                                           ; $4566: $00
    nop                                           ; $4567: $00
    nop                                           ; $4568: $00
    rrca                                          ; $4569: $0f
    rst $38                                       ; $456a: $ff
    ldh a, [rP1]                                  ; $456b: $f0 $00
    nop                                           ; $456d: $00
    nop                                           ; $456e: $00
    nop                                           ; $456f: $00
    nop                                           ; $4570: $00
    rrca                                          ; $4571: $0f
    rst $38                                       ; $4572: $ff
    nop                                           ; $4573: $00
    nop                                           ; $4574: $00
    nop                                           ; $4575: $00
    nop                                           ; $4576: $00
    nop                                           ; $4577: $00
    nop                                           ; $4578: $00
    nop                                           ; $4579: $00
    nop                                           ; $457a: $00
    nop                                           ; $457b: $00
    nop                                           ; $457c: $00
    nop                                           ; $457d: $00
    nop                                           ; $457e: $00
    add hl, sp                                    ; $457f: $39
    ld h, $27                                     ; $4580: $26 $27
    ld b, [hl]                                    ; $4582: $46
    ld b, a                                       ; $4583: $47
    ld c, b                                       ; $4584: $48
    ld e, c                                       ; $4585: $59
    ld e, d                                       ; $4586: $5a
    rst $38                                       ; $4587: $ff
    rlca                                          ; $4588: $07
    nop                                           ; $4589: $00
    nop                                           ; $458a: $00
    nop                                           ; $458b: $00
    rst $38                                       ; $458c: $ff
    rst $38                                       ; $458d: $ff
    nop                                           ; $458e: $00
    nop                                           ; $458f: $00
    nop                                           ; $4590: $00
    nop                                           ; $4591: $00
    nop                                           ; $4592: $00
    rst $38                                       ; $4593: $ff
    rst $38                                       ; $4594: $ff
    pop af                                        ; $4595: $f1
    ldh a, [rP1]                                  ; $4596: $f0 $00
    nop                                           ; $4598: $00
    nop                                           ; $4599: $00
    rrca                                          ; $459a: $0f
    rst $38                                       ; $459b: $ff
    rst $38                                       ; $459c: $ff
    rst $38                                       ; $459d: $ff
    ldh a, [rP1]                                  ; $459e: $f0 $00
    nop                                           ; $45a0: $00
    nop                                           ; $45a1: $00
    rrca                                          ; $45a2: $0f
    rst $38                                       ; $45a3: $ff
    rst $38                                       ; $45a4: $ff
    rra                                           ; $45a5: $1f
    nop                                           ; $45a6: $00
    nop                                           ; $45a7: $00
    nop                                           ; $45a8: $00
    nop                                           ; $45a9: $00
    rrca                                          ; $45aa: $0f
    di                                            ; $45ab: $f3
    pop af                                        ; $45ac: $f1
    rst $38                                       ; $45ad: $ff
    nop                                           ; $45ae: $00
    nop                                           ; $45af: $00
    nop                                           ; $45b0: $00
    nop                                           ; $45b1: $00
    rrca                                          ; $45b2: $0f
    rst $38                                       ; $45b3: $ff
    pop af                                        ; $45b4: $f1
    ldh a, [rP1]                                  ; $45b5: $f0 $00
    nop                                           ; $45b7: $00
    nop                                           ; $45b8: $00
    nop                                           ; $45b9: $00
    nop                                           ; $45ba: $00
    rst $38                                       ; $45bb: $ff
    pop af                                        ; $45bc: $f1
    ldh a, [rP1]                                  ; $45bd: $f0 $00
    nop                                           ; $45bf: $00
    nop                                           ; $45c0: $00
    nop                                           ; $45c1: $00
    nop                                           ; $45c2: $00
    rrca                                          ; $45c3: $0f
    rst $38                                       ; $45c4: $ff
    rra                                           ; $45c5: $1f
    nop                                           ; $45c6: $00
    nop                                           ; $45c7: $00
    nop                                           ; $45c8: $00
    nop                                           ; $45c9: $00
    nop                                           ; $45ca: $00
    rst $38                                       ; $45cb: $ff
    rst $38                                       ; $45cc: $ff
    ldh a, [rP1]                                  ; $45cd: $f0 $00
    nop                                           ; $45cf: $00
    nop                                           ; $45d0: $00
    nop                                           ; $45d1: $00
    nop                                           ; $45d2: $00
    rst $38                                       ; $45d3: $ff
    inc sp                                        ; $45d4: $33
    rst $38                                       ; $45d5: $ff
    ldh a, [rP1]                                  ; $45d6: $f0 $00
    nop                                           ; $45d8: $00
    nop                                           ; $45d9: $00
    nop                                           ; $45da: $00
    rst $38                                       ; $45db: $ff
    inc sp                                        ; $45dc: $33
    pop af                                        ; $45dd: $f1
    rst $38                                       ; $45de: $ff
    nop                                           ; $45df: $00
    nop                                           ; $45e0: $00
    nop                                           ; $45e1: $00
    nop                                           ; $45e2: $00
    rrca                                          ; $45e3: $0f
    rst $38                                       ; $45e4: $ff
    rst $38                                       ; $45e5: $ff
    ldh a, [rP1]                                  ; $45e6: $f0 $00
    nop                                           ; $45e8: $00
    nop                                           ; $45e9: $00
    nop                                           ; $45ea: $00
    rrca                                          ; $45eb: $0f
    pop af                                        ; $45ec: $f1
    rst $38                                       ; $45ed: $ff
    rst $38                                       ; $45ee: $ff
    nop                                           ; $45ef: $00
    nop                                           ; $45f0: $00
    nop                                           ; $45f1: $00
    nop                                           ; $45f2: $00
    nop                                           ; $45f3: $00
    rrca                                          ; $45f4: $0f
    rst $38                                       ; $45f5: $ff
    rst $38                                       ; $45f6: $ff
    ldh a, [rP1]                                  ; $45f7: $f0 $00
    nop                                           ; $45f9: $00
    nop                                           ; $45fa: $00
    nop                                           ; $45fb: $00
    nop                                           ; $45fc: $00
    rst $38                                       ; $45fd: $ff
    ccf                                           ; $45fe: $3f
    ldh a, [rP1]                                  ; $45ff: $f0 $00
    nop                                           ; $4601: $00
    nop                                           ; $4602: $00
    nop                                           ; $4603: $00
    nop                                           ; $4604: $00
    rst $38                                       ; $4605: $ff
    rst $38                                       ; $4606: $ff
    nop                                           ; $4607: $00
    nop                                           ; $4608: $00
    ld d, e                                       ; $4609: $53
    rla                                           ; $460a: $17
    jr jr_045_4643                                ; $460b: $18 $36

    scf                                           ; $460d: $37
    halt                                          ; $460e: $76
    rst $38                                       ; $460f: $ff
    dec b                                         ; $4610: $05
    nop                                           ; $4611: $00
    nop                                           ; $4612: $00
    nop                                           ; $4613: $00
    nop                                           ; $4614: $00
    nop                                           ; $4615: $00
    nop                                           ; $4616: $00
    nop                                           ; $4617: $00
    nop                                           ; $4618: $00
    nop                                           ; $4619: $00
    nop                                           ; $461a: $00
    nop                                           ; $461b: $00
    nop                                           ; $461c: $00
    nop                                           ; $461d: $00
    nop                                           ; $461e: $00
    nop                                           ; $461f: $00
    nop                                           ; $4620: $00
    nop                                           ; $4621: $00
    nop                                           ; $4622: $00
    nop                                           ; $4623: $00
    nop                                           ; $4624: $00
    nop                                           ; $4625: $00
    nop                                           ; $4626: $00
    nop                                           ; $4627: $00
    nop                                           ; $4628: $00
    nop                                           ; $4629: $00
    nop                                           ; $462a: $00
    nop                                           ; $462b: $00
    rrca                                          ; $462c: $0f
    ldh a, [rP1]                                  ; $462d: $f0 $00
    nop                                           ; $462f: $00
    nop                                           ; $4630: $00
    nop                                           ; $4631: $00
    nop                                           ; $4632: $00
    nop                                           ; $4633: $00
    rst $38                                       ; $4634: $ff
    rra                                           ; $4635: $1f
    ldh a, [rP1]                                  ; $4636: $f0 $00
    nop                                           ; $4638: $00
    nop                                           ; $4639: $00
    nop                                           ; $463a: $00
    rrca                                          ; $463b: $0f
    rst $38                                       ; $463c: $ff
    pop af                                        ; $463d: $f1
    ldh a, [rP1]                                  ; $463e: $f0 $00
    nop                                           ; $4640: $00
    nop                                           ; $4641: $00
    nop                                           ; $4642: $00

jr_045_4643:
    rrca                                          ; $4643: $0f
    rst $38                                       ; $4644: $ff
    rst $38                                       ; $4645: $ff
    ldh a, [rP1]                                  ; $4646: $f0 $00
    nop                                           ; $4648: $00
    nop                                           ; $4649: $00
    nop                                           ; $464a: $00
    nop                                           ; $464b: $00
    rst $38                                       ; $464c: $ff
    rst $38                                       ; $464d: $ff
    nop                                           ; $464e: $00
    nop                                           ; $464f: $00
    nop                                           ; $4650: $00
    nop                                           ; $4651: $00
    nop                                           ; $4652: $00
    nop                                           ; $4653: $00
    nop                                           ; $4654: $00
    nop                                           ; $4655: $00
    nop                                           ; $4656: $00
    nop                                           ; $4657: $00
    nop                                           ; $4658: $00
    nop                                           ; $4659: $00
    nop                                           ; $465a: $00
    nop                                           ; $465b: $00
    rst $38                                       ; $465c: $ff
    rst $38                                       ; $465d: $ff
    nop                                           ; $465e: $00
    nop                                           ; $465f: $00
    nop                                           ; $4660: $00
    nop                                           ; $4661: $00
    nop                                           ; $4662: $00
    nop                                           ; $4663: $00
    di                                            ; $4664: $f3
    ccf                                           ; $4665: $3f
    nop                                           ; $4666: $00
    nop                                           ; $4667: $00
    nop                                           ; $4668: $00
    nop                                           ; $4669: $00
    nop                                           ; $466a: $00
    nop                                           ; $466b: $00
    rst $38                                       ; $466c: $ff
    rst $38                                       ; $466d: $ff
    nop                                           ; $466e: $00
    nop                                           ; $466f: $00
    nop                                           ; $4670: $00
    nop                                           ; $4671: $00
    nop                                           ; $4672: $00
    nop                                           ; $4673: $00
    rrca                                          ; $4674: $0f
    ldh a, [rP1]                                  ; $4675: $f0 $00
    nop                                           ; $4677: $00
    nop                                           ; $4678: $00
    nop                                           ; $4679: $00
    nop                                           ; $467a: $00
    nop                                           ; $467b: $00
    nop                                           ; $467c: $00
    nop                                           ; $467d: $00
    nop                                           ; $467e: $00
    nop                                           ; $467f: $00
    nop                                           ; $4680: $00
    nop                                           ; $4681: $00
    nop                                           ; $4682: $00
    nop                                           ; $4683: $00
    nop                                           ; $4684: $00
    nop                                           ; $4685: $00
    nop                                           ; $4686: $00
    nop                                           ; $4687: $00
    nop                                           ; $4688: $00
    nop                                           ; $4689: $00
    nop                                           ; $468a: $00
    nop                                           ; $468b: $00
    nop                                           ; $468c: $00
    nop                                           ; $468d: $00
    nop                                           ; $468e: $00
    nop                                           ; $468f: $00
    nop                                           ; $4690: $00
    ld hl, $5857                                  ; $4691: $21 $57 $58
    rst $38                                       ; $4694: $ff
    ld [bc], a                                    ; $4695: $02
    nop                                           ; $4696: $00
    nop                                           ; $4697: $00
    nop                                           ; $4698: $00
    rrca                                          ; $4699: $0f
    rst $38                                       ; $469a: $ff
    nop                                           ; $469b: $00
    nop                                           ; $469c: $00
    nop                                           ; $469d: $00
    nop                                           ; $469e: $00
    nop                                           ; $469f: $00
    nop                                           ; $46a0: $00
    rst $38                                       ; $46a1: $ff
    pop af                                        ; $46a2: $f1
    ldh a, [rP1]                                  ; $46a3: $f0 $00
    nop                                           ; $46a5: $00
    nop                                           ; $46a6: $00
    nop                                           ; $46a7: $00
    rrca                                          ; $46a8: $0f
    rst $38                                       ; $46a9: $ff
    rst $38                                       ; $46aa: $ff
    ldh a, [rP1]                                  ; $46ab: $f0 $00
    nop                                           ; $46ad: $00
    nop                                           ; $46ae: $00
    nop                                           ; $46af: $00
    rrca                                          ; $46b0: $0f
    rst $38                                       ; $46b1: $ff
    pop af                                        ; $46b2: $f1
    ldh a, [rP1]                                  ; $46b3: $f0 $00
    nop                                           ; $46b5: $00
    nop                                           ; $46b6: $00
    nop                                           ; $46b7: $00
    pop af                                        ; $46b8: $f1
    rst $38                                       ; $46b9: $ff
    pop af                                        ; $46ba: $f1
    ldh a, [rP1]                                  ; $46bb: $f0 $00
    nop                                           ; $46bd: $00
    nop                                           ; $46be: $00
    nop                                           ; $46bf: $00
    pop af                                        ; $46c0: $f1
    rst $38                                       ; $46c1: $ff
    rst $38                                       ; $46c2: $ff
    ldh a, [rP1]                                  ; $46c3: $f0 $00
    nop                                           ; $46c5: $00
    nop                                           ; $46c6: $00
    nop                                           ; $46c7: $00
    rst $38                                       ; $46c8: $ff
    di                                            ; $46c9: $f3
    rst $38                                       ; $46ca: $ff
    ldh a, [rP1]                                  ; $46cb: $f0 $00
    nop                                           ; $46cd: $00
    nop                                           ; $46ce: $00
    nop                                           ; $46cf: $00
    rrca                                          ; $46d0: $0f
    di                                            ; $46d1: $f3
    rst $38                                       ; $46d2: $ff
    nop                                           ; $46d3: $00
    nop                                           ; $46d4: $00
    nop                                           ; $46d5: $00
    nop                                           ; $46d6: $00
    nop                                           ; $46d7: $00
    rrca                                          ; $46d8: $0f
    di                                            ; $46d9: $f3
    rst $38                                       ; $46da: $ff
    nop                                           ; $46db: $00
    nop                                           ; $46dc: $00
    nop                                           ; $46dd: $00
    nop                                           ; $46de: $00
    nop                                           ; $46df: $00
    rrca                                          ; $46e0: $0f
    di                                            ; $46e1: $f3
    rst $38                                       ; $46e2: $ff
    nop                                           ; $46e3: $00
    nop                                           ; $46e4: $00
    nop                                           ; $46e5: $00
    nop                                           ; $46e6: $00
    nop                                           ; $46e7: $00
    rst $38                                       ; $46e8: $ff
    rra                                           ; $46e9: $1f
    rst $38                                       ; $46ea: $ff
    nop                                           ; $46eb: $00
    nop                                           ; $46ec: $00
    nop                                           ; $46ed: $00
    nop                                           ; $46ee: $00
    nop                                           ; $46ef: $00
    rst $38                                       ; $46f0: $ff
    rst $38                                       ; $46f1: $ff
    rra                                           ; $46f2: $1f
    nop                                           ; $46f3: $00
    nop                                           ; $46f4: $00
    nop                                           ; $46f5: $00
    nop                                           ; $46f6: $00
    nop                                           ; $46f7: $00
    rrca                                          ; $46f8: $0f
    rst $38                                       ; $46f9: $ff
    rst $38                                       ; $46fa: $ff
    nop                                           ; $46fb: $00
    nop                                           ; $46fc: $00
    nop                                           ; $46fd: $00
    nop                                           ; $46fe: $00
    nop                                           ; $46ff: $00
    rrca                                          ; $4700: $0f
    di                                            ; $4701: $f3
    rst $38                                       ; $4702: $ff
    nop                                           ; $4703: $00
    nop                                           ; $4704: $00
    nop                                           ; $4705: $00
    nop                                           ; $4706: $00
    nop                                           ; $4707: $00
    rrca                                          ; $4708: $0f
    rst $38                                       ; $4709: $ff
    rst $38                                       ; $470a: $ff
    nop                                           ; $470b: $00
    nop                                           ; $470c: $00
    nop                                           ; $470d: $00
    nop                                           ; $470e: $00
    nop                                           ; $470f: $00
    nop                                           ; $4710: $00
    rst $38                                       ; $4711: $ff
    ldh a, [rP1]                                  ; $4712: $f0 $00
    nop                                           ; $4714: $00
    nop                                           ; $4715: $00
    ld c, d                                       ; $4716: $4a
    jr jr_045_4740                                ; $4717: $18 $27

    jr c, jr_045_4762                             ; $4719: $38 $47

    rst $38                                       ; $471b: $ff
    inc b                                         ; $471c: $04
    nop                                           ; $471d: $00
    nop                                           ; $471e: $00
    nop                                           ; $471f: $00
    rst $38                                       ; $4720: $ff
    rst $38                                       ; $4721: $ff
    ldh a, [rP1]                                  ; $4722: $f0 $00
    nop                                           ; $4724: $00
    nop                                           ; $4725: $00
    nop                                           ; $4726: $00
    nop                                           ; $4727: $00
    rst $38                                       ; $4728: $ff
    rst $38                                       ; $4729: $ff
    ldh a, [rP1]                                  ; $472a: $f0 $00
    nop                                           ; $472c: $00
    nop                                           ; $472d: $00
    nop                                           ; $472e: $00
    nop                                           ; $472f: $00
    rst $38                                       ; $4730: $ff
    rst $38                                       ; $4731: $ff
    ldh a, [rP1]                                  ; $4732: $f0 $00
    nop                                           ; $4734: $00
    nop                                           ; $4735: $00
    nop                                           ; $4736: $00
    rrca                                          ; $4737: $0f
    rst $38                                       ; $4738: $ff
    rst $38                                       ; $4739: $ff
    ldh a, [rP1]                                  ; $473a: $f0 $00
    nop                                           ; $473c: $00
    nop                                           ; $473d: $00
    nop                                           ; $473e: $00
    rrca                                          ; $473f: $0f

jr_045_4740:
    rra                                           ; $4740: $1f
    rst $38                                       ; $4741: $ff
    ldh a, [rP1]                                  ; $4742: $f0 $00
    nop                                           ; $4744: $00
    nop                                           ; $4745: $00
    nop                                           ; $4746: $00
    rrca                                          ; $4747: $0f
    rst $38                                       ; $4748: $ff
    rst $38                                       ; $4749: $ff
    nop                                           ; $474a: $00
    nop                                           ; $474b: $00
    nop                                           ; $474c: $00
    nop                                           ; $474d: $00
    nop                                           ; $474e: $00
    rst $38                                       ; $474f: $ff
    rst $38                                       ; $4750: $ff
    rst $38                                       ; $4751: $ff
    nop                                           ; $4752: $00
    nop                                           ; $4753: $00
    nop                                           ; $4754: $00
    nop                                           ; $4755: $00
    nop                                           ; $4756: $00
    rst $38                                       ; $4757: $ff
    ccf                                           ; $4758: $3f
    rst $38                                       ; $4759: $ff
    ldh a, [rP1]                                  ; $475a: $f0 $00
    nop                                           ; $475c: $00
    nop                                           ; $475d: $00
    nop                                           ; $475e: $00
    pop af                                        ; $475f: $f1
    rst $38                                       ; $4760: $ff
    rst $38                                       ; $4761: $ff

jr_045_4762:
    ldh a, [rP1]                                  ; $4762: $f0 $00
    nop                                           ; $4764: $00
    nop                                           ; $4765: $00
    nop                                           ; $4766: $00
    rrca                                          ; $4767: $0f
    rra                                           ; $4768: $1f
    pop af                                        ; $4769: $f1
    ldh a, [rP1]                                  ; $476a: $f0 $00
    nop                                           ; $476c: $00
    nop                                           ; $476d: $00
    nop                                           ; $476e: $00
    rrca                                          ; $476f: $0f
    rra                                           ; $4770: $1f
    pop af                                        ; $4771: $f1
    ldh a, [rP1]                                  ; $4772: $f0 $00
    nop                                           ; $4774: $00
    nop                                           ; $4775: $00
    nop                                           ; $4776: $00
    rrca                                          ; $4777: $0f
    rra                                           ; $4778: $1f
    rst $38                                       ; $4779: $ff
    ldh a, [rP1]                                  ; $477a: $f0 $00
    nop                                           ; $477c: $00
    nop                                           ; $477d: $00
    nop                                           ; $477e: $00
    rrca                                          ; $477f: $0f
    rra                                           ; $4780: $1f
    ld de, $00f0                                  ; $4781: $11 $f0 $00
    nop                                           ; $4784: $00
    nop                                           ; $4785: $00
    nop                                           ; $4786: $00
    rrca                                          ; $4787: $0f
    rst $38                                       ; $4788: $ff
    rst $38                                       ; $4789: $ff
    ldh a, [rP1]                                  ; $478a: $f0 $00
    nop                                           ; $478c: $00
    nop                                           ; $478d: $00
    nop                                           ; $478e: $00
    rrca                                          ; $478f: $0f
    di                                            ; $4790: $f3
    ccf                                           ; $4791: $3f
    ldh a, [rP1]                                  ; $4792: $f0 $00
    nop                                           ; $4794: $00
    nop                                           ; $4795: $00
    nop                                           ; $4796: $00
    nop                                           ; $4797: $00
    rst $38                                       ; $4798: $ff
    rst $38                                       ; $4799: $ff
    nop                                           ; $479a: $00
    nop                                           ; $479b: $00
    nop                                           ; $479c: $00
    ld c, a                                       ; $479d: $4f
    daa                                           ; $479e: $27
    jr z, jr_045_47f7                             ; $479f: $28 $56

    ld e, b                                       ; $47a1: $58
    ld h, a                                       ; $47a2: $67
    ld a, b                                       ; $47a3: $78
    rst $38                                       ; $47a4: $ff
    ld b, $00                                     ; $47a5: $06 $00
    nop                                           ; $47a7: $00
    nop                                           ; $47a8: $00
    rst $38                                       ; $47a9: $ff
    ldh a, [rP1]                                  ; $47aa: $f0 $00
    nop                                           ; $47ac: $00
    nop                                           ; $47ad: $00
    nop                                           ; $47ae: $00
    nop                                           ; $47af: $00
    rrca                                          ; $47b0: $0f
    ld de, $00f0                                  ; $47b1: $11 $f0 $00
    nop                                           ; $47b4: $00
    nop                                           ; $47b5: $00
    nop                                           ; $47b6: $00
    nop                                           ; $47b7: $00
    rrca                                          ; $47b8: $0f
    rst $38                                       ; $47b9: $ff
    rra                                           ; $47ba: $1f
    nop                                           ; $47bb: $00
    nop                                           ; $47bc: $00
    nop                                           ; $47bd: $00
    nop                                           ; $47be: $00
    nop                                           ; $47bf: $00
    rrca                                          ; $47c0: $0f
    rst $38                                       ; $47c1: $ff
    rra                                           ; $47c2: $1f
    nop                                           ; $47c3: $00
    nop                                           ; $47c4: $00
    nop                                           ; $47c5: $00
    nop                                           ; $47c6: $00
    nop                                           ; $47c7: $00
    rrca                                          ; $47c8: $0f
    rst $38                                       ; $47c9: $ff
    rst $38                                       ; $47ca: $ff
    ldh a, [rP1]                                  ; $47cb: $f0 $00
    nop                                           ; $47cd: $00
    nop                                           ; $47ce: $00
    nop                                           ; $47cf: $00
    rrca                                          ; $47d0: $0f
    rra                                           ; $47d1: $1f
    ccf                                           ; $47d2: $3f
    ldh a, [rP1]                                  ; $47d3: $f0 $00
    nop                                           ; $47d5: $00
    nop                                           ; $47d6: $00
    nop                                           ; $47d7: $00
    rrca                                          ; $47d8: $0f
    rst $38                                       ; $47d9: $ff
    ccf                                           ; $47da: $3f
    ldh a, [rP1]                                  ; $47db: $f0 $00
    nop                                           ; $47dd: $00
    nop                                           ; $47de: $00
    nop                                           ; $47df: $00
    rrca                                          ; $47e0: $0f
    ccf                                           ; $47e1: $3f
    pop af                                        ; $47e2: $f1
    ldh a, [rP1]                                  ; $47e3: $f0 $00
    nop                                           ; $47e5: $00
    nop                                           ; $47e6: $00
    nop                                           ; $47e7: $00
    rrca                                          ; $47e8: $0f
    inc sp                                        ; $47e9: $33
    rst $38                                       ; $47ea: $ff
    ldh a, [rP1]                                  ; $47eb: $f0 $00
    nop                                           ; $47ed: $00
    nop                                           ; $47ee: $00
    nop                                           ; $47ef: $00
    rrca                                          ; $47f0: $0f
    di                                            ; $47f1: $f3
    rst $38                                       ; $47f2: $ff
    nop                                           ; $47f3: $00
    nop                                           ; $47f4: $00
    nop                                           ; $47f5: $00
    nop                                           ; $47f6: $00

jr_045_47f7:
    nop                                           ; $47f7: $00
    rrca                                          ; $47f8: $0f
    di                                            ; $47f9: $f3
    rst $38                                       ; $47fa: $ff
    nop                                           ; $47fb: $00
    nop                                           ; $47fc: $00
    nop                                           ; $47fd: $00
    nop                                           ; $47fe: $00
    nop                                           ; $47ff: $00
    rrca                                          ; $4800: $0f
    di                                            ; $4801: $f3
    rst $38                                       ; $4802: $ff
    nop                                           ; $4803: $00
    nop                                           ; $4804: $00
    nop                                           ; $4805: $00
    nop                                           ; $4806: $00
    nop                                           ; $4807: $00
    rrca                                          ; $4808: $0f
    rst $38                                       ; $4809: $ff
    rra                                           ; $480a: $1f
    nop                                           ; $480b: $00
    nop                                           ; $480c: $00
    nop                                           ; $480d: $00
    nop                                           ; $480e: $00
    nop                                           ; $480f: $00
    rst $38                                       ; $4810: $ff
    rst $38                                       ; $4811: $ff
    rst $38                                       ; $4812: $ff
    nop                                           ; $4813: $00
    nop                                           ; $4814: $00
    nop                                           ; $4815: $00
    nop                                           ; $4816: $00
    nop                                           ; $4817: $00
    pop af                                        ; $4818: $f1
    di                                            ; $4819: $f3
    rst $38                                       ; $481a: $ff
    nop                                           ; $481b: $00
    nop                                           ; $481c: $00
    nop                                           ; $481d: $00
    nop                                           ; $481e: $00
    nop                                           ; $481f: $00
    rrca                                          ; $4820: $0f
    rst $38                                       ; $4821: $ff
    rst $38                                       ; $4822: $ff
    nop                                           ; $4823: $00
    nop                                           ; $4824: $00
    nop                                           ; $4825: $00
    ld b, e                                       ; $4826: $43
    ld h, $35                                     ; $4827: $26 $35
    scf                                           ; $4829: $37
    ld b, [hl]                                    ; $482a: $46
    ld [hl], a                                    ; $482b: $77
    ld a, b                                       ; $482c: $78
    rst $38                                       ; $482d: $ff
    ld b, $00                                     ; $482e: $06 $00
    nop                                           ; $4830: $00
    nop                                           ; $4831: $00
    nop                                           ; $4832: $00
    nop                                           ; $4833: $00
    nop                                           ; $4834: $00
    nop                                           ; $4835: $00
    nop                                           ; $4836: $00
    nop                                           ; $4837: $00
    nop                                           ; $4838: $00
    nop                                           ; $4839: $00
    nop                                           ; $483a: $00
    rst $38                                       ; $483b: $ff
    ldh a, [rP1]                                  ; $483c: $f0 $00
    nop                                           ; $483e: $00
    nop                                           ; $483f: $00
    nop                                           ; $4840: $00
    nop                                           ; $4841: $00
    rrca                                          ; $4842: $0f
    pop af                                        ; $4843: $f1
    rra                                           ; $4844: $1f
    nop                                           ; $4845: $00
    nop                                           ; $4846: $00
    nop                                           ; $4847: $00
    nop                                           ; $4848: $00
    nop                                           ; $4849: $00
    pop af                                        ; $484a: $f1
    rst $38                                       ; $484b: $ff
    rst $38                                       ; $484c: $ff
    nop                                           ; $484d: $00
    nop                                           ; $484e: $00
    nop                                           ; $484f: $00
    nop                                           ; $4850: $00
    rrca                                          ; $4851: $0f
    rst $38                                       ; $4852: $ff
    rst $38                                       ; $4853: $ff
    rst $38                                       ; $4854: $ff
    nop                                           ; $4855: $00
    nop                                           ; $4856: $00
    nop                                           ; $4857: $00
    nop                                           ; $4858: $00
    rrca                                          ; $4859: $0f
    rst $38                                       ; $485a: $ff
    pop af                                        ; $485b: $f1
    rst $38                                       ; $485c: $ff
    nop                                           ; $485d: $00
    nop                                           ; $485e: $00
    nop                                           ; $485f: $00
    nop                                           ; $4860: $00
    rst $38                                       ; $4861: $ff
    rst $38                                       ; $4862: $ff
    rra                                           ; $4863: $1f
    ldh a, [rP1]                                  ; $4864: $f0 $00
    nop                                           ; $4866: $00
    nop                                           ; $4867: $00
    nop                                           ; $4868: $00
    rst $38                                       ; $4869: $ff
    ccf                                           ; $486a: $3f
    ldh a, [rP1]                                  ; $486b: $f0 $00
    nop                                           ; $486d: $00
    nop                                           ; $486e: $00
    nop                                           ; $486f: $00
    nop                                           ; $4870: $00
    rst $38                                       ; $4871: $ff
    ccf                                           ; $4872: $3f
    rra                                           ; $4873: $1f
    nop                                           ; $4874: $00
    nop                                           ; $4875: $00
    nop                                           ; $4876: $00
    nop                                           ; $4877: $00
    nop                                           ; $4878: $00
    rst $38                                       ; $4879: $ff
    rst $38                                       ; $487a: $ff
    rst $38                                       ; $487b: $ff
    ldh a, [rP1]                                  ; $487c: $f0 $00
    nop                                           ; $487e: $00
    nop                                           ; $487f: $00
    nop                                           ; $4880: $00
    rrca                                          ; $4881: $0f
    rst $38                                       ; $4882: $ff
    pop af                                        ; $4883: $f1
    ldh a, [rP1]                                  ; $4884: $f0 $00
    nop                                           ; $4886: $00
    nop                                           ; $4887: $00
    nop                                           ; $4888: $00
    nop                                           ; $4889: $00
    rst $38                                       ; $488a: $ff
    rst $38                                       ; $488b: $ff
    nop                                           ; $488c: $00
    nop                                           ; $488d: $00
    nop                                           ; $488e: $00
    nop                                           ; $488f: $00
    nop                                           ; $4890: $00
    nop                                           ; $4891: $00
    rst $38                                       ; $4892: $ff
    rst $38                                       ; $4893: $ff
    ldh a, [rP1]                                  ; $4894: $f0 $00
    nop                                           ; $4896: $00
    nop                                           ; $4897: $00
    nop                                           ; $4898: $00
    nop                                           ; $4899: $00
    rst $38                                       ; $489a: $ff
    ccf                                           ; $489b: $3f
    rst $38                                       ; $489c: $ff
    nop                                           ; $489d: $00
    nop                                           ; $489e: $00
    nop                                           ; $489f: $00
    nop                                           ; $48a0: $00
    nop                                           ; $48a1: $00
    rrca                                          ; $48a2: $0f
    rst $38                                       ; $48a3: $ff
    ldh a, [rP1]                                  ; $48a4: $f0 $00
    nop                                           ; $48a6: $00
    nop                                           ; $48a7: $00
    nop                                           ; $48a8: $00
    nop                                           ; $48a9: $00
    nop                                           ; $48aa: $00
    rst $38                                       ; $48ab: $ff
    nop                                           ; $48ac: $00
    nop                                           ; $48ad: $00
    nop                                           ; $48ae: $00
    ld b, [hl]                                    ; $48af: $46
    jr c, jr_045_48eb                             ; $48b0: $38 $39

    ld a, [hl-]                                   ; $48b2: $3a
    ld b, a                                       ; $48b3: $47
    ld d, [hl]                                    ; $48b4: $56
    rst $38                                       ; $48b5: $ff
    dec b                                         ; $48b6: $05
    nop                                           ; $48b7: $00
    nop                                           ; $48b8: $00
    nop                                           ; $48b9: $00
    nop                                           ; $48ba: $00
    nop                                           ; $48bb: $00
    nop                                           ; $48bc: $00
    nop                                           ; $48bd: $00
    rst $38                                       ; $48be: $ff
    nop                                           ; $48bf: $00
    nop                                           ; $48c0: $00
    nop                                           ; $48c1: $00
    nop                                           ; $48c2: $00
    ldh a, [rIE]                                  ; $48c3: $f0 $ff
    rst $38                                       ; $48c5: $ff
    rst $38                                       ; $48c6: $ff
    nop                                           ; $48c7: $00
    nop                                           ; $48c8: $00
    nop                                           ; $48c9: $00
    nop                                           ; $48ca: $00
    rst $38                                       ; $48cb: $ff
    rst $38                                       ; $48cc: $ff
    rst $38                                       ; $48cd: $ff
    ldh a, [rP1]                                  ; $48ce: $f0 $00
    nop                                           ; $48d0: $00
    nop                                           ; $48d1: $00
    rrca                                          ; $48d2: $0f
    rst $38                                       ; $48d3: $ff
    rst $38                                       ; $48d4: $ff
    nop                                           ; $48d5: $00
    nop                                           ; $48d6: $00
    nop                                           ; $48d7: $00
    nop                                           ; $48d8: $00
    nop                                           ; $48d9: $00
    rst $38                                       ; $48da: $ff
    rst $38                                       ; $48db: $ff
    nop                                           ; $48dc: $00
    nop                                           ; $48dd: $00
    nop                                           ; $48de: $00
    nop                                           ; $48df: $00
    nop                                           ; $48e0: $00
    rrca                                          ; $48e1: $0f
    rst $38                                       ; $48e2: $ff
    rst $38                                       ; $48e3: $ff
    ldh a, [rP1]                                  ; $48e4: $f0 $00
    nop                                           ; $48e6: $00
    nop                                           ; $48e7: $00
    nop                                           ; $48e8: $00
    rrca                                          ; $48e9: $0f
    rst $38                                       ; $48ea: $ff

jr_045_48eb:
    rst $38                                       ; $48eb: $ff
    rst $38                                       ; $48ec: $ff
    nop                                           ; $48ed: $00
    nop                                           ; $48ee: $00
    nop                                           ; $48ef: $00
    nop                                           ; $48f0: $00
    nop                                           ; $48f1: $00
    rst $38                                       ; $48f2: $ff
    rst $38                                       ; $48f3: $ff
    ldh a, [rP1]                                  ; $48f4: $f0 $00
    nop                                           ; $48f6: $00
    nop                                           ; $48f7: $00
    nop                                           ; $48f8: $00
    rrca                                          ; $48f9: $0f
    rst $38                                       ; $48fa: $ff
    rst $38                                       ; $48fb: $ff
    ldh a, [rP1]                                  ; $48fc: $f0 $00
    nop                                           ; $48fe: $00
    nop                                           ; $48ff: $00
    rst $38                                       ; $4900: $ff
    rst $38                                       ; $4901: $ff
    rst $38                                       ; $4902: $ff
    rst $38                                       ; $4903: $ff
    nop                                           ; $4904: $00
    nop                                           ; $4905: $00
    nop                                           ; $4906: $00
    rst $38                                       ; $4907: $ff
    rst $38                                       ; $4908: $ff
    rrca                                          ; $4909: $0f
    rst $38                                       ; $490a: $ff
    rst $38                                       ; $490b: $ff
    ldh a, [rP1]                                  ; $490c: $f0 $00
    nop                                           ; $490e: $00
    rst $38                                       ; $490f: $ff
    nop                                           ; $4910: $00
    rrca                                          ; $4911: $0f
    rst $38                                       ; $4912: $ff
    rst $38                                       ; $4913: $ff
    ldh a, [rP1]                                  ; $4914: $f0 $00
    nop                                           ; $4916: $00
    nop                                           ; $4917: $00
    nop                                           ; $4918: $00
    nop                                           ; $4919: $00
    rst $38                                       ; $491a: $ff
    rst $38                                       ; $491b: $ff
    nop                                           ; $491c: $00
    nop                                           ; $491d: $00
    nop                                           ; $491e: $00
    nop                                           ; $491f: $00
    nop                                           ; $4920: $00
    nop                                           ; $4921: $00
    ldh a, [rP1]                                  ; $4922: $f0 $00
    nop                                           ; $4924: $00
    nop                                           ; $4925: $00
    nop                                           ; $4926: $00
    nop                                           ; $4927: $00
    nop                                           ; $4928: $00
    nop                                           ; $4929: $00
    nop                                           ; $492a: $00
    nop                                           ; $492b: $00
    nop                                           ; $492c: $00
    nop                                           ; $492d: $00
    nop                                           ; $492e: $00
    nop                                           ; $492f: $00
    nop                                           ; $4930: $00
    nop                                           ; $4931: $00
    nop                                           ; $4932: $00
    nop                                           ; $4933: $00
    nop                                           ; $4934: $00
    nop                                           ; $4935: $00
    nop                                           ; $4936: $00
    ld d, b                                       ; $4937: $50
    ld d, a                                       ; $4938: $57
    ld e, b                                       ; $4939: $58
    rst $38                                       ; $493a: $ff
    ld [bc], a                                    ; $493b: $02
    nop                                           ; $493c: $00
    nop                                           ; $493d: $00
    rst $38                                       ; $493e: $ff
    rst $38                                       ; $493f: $ff
    rst $38                                       ; $4940: $ff
    nop                                           ; $4941: $00
    nop                                           ; $4942: $00
    nop                                           ; $4943: $00
    nop                                           ; $4944: $00
    nop                                           ; $4945: $00
    pop af                                        ; $4946: $f1
    rst $38                                       ; $4947: $ff
    rst $38                                       ; $4948: $ff
    ldh a, [rP1]                                  ; $4949: $f0 $00
    nop                                           ; $494b: $00
    nop                                           ; $494c: $00
    nop                                           ; $494d: $00
    pop af                                        ; $494e: $f1
    rst $38                                       ; $494f: $ff
    rst $38                                       ; $4950: $ff
    ldh a, [rP1]                                  ; $4951: $f0 $00
    nop                                           ; $4953: $00
    nop                                           ; $4954: $00
    nop                                           ; $4955: $00
    rrca                                          ; $4956: $0f
    rst $38                                       ; $4957: $ff
    rst $38                                       ; $4958: $ff
    rst $38                                       ; $4959: $ff
    ldh a, [rP1]                                  ; $495a: $f0 $00
    nop                                           ; $495c: $00
    nop                                           ; $495d: $00
    rrca                                          ; $495e: $0f
    ld a, [c]                                     ; $495f: $f2
    rst $38                                       ; $4960: $ff
    pop af                                        ; $4961: $f1
    ldh a, [rP1]                                  ; $4962: $f0 $00
    nop                                           ; $4964: $00
    nop                                           ; $4965: $00
    nop                                           ; $4966: $00
    rst $38                                       ; $4967: $ff
    rst $38                                       ; $4968: $ff
    pop af                                        ; $4969: $f1
    ldh a, [rP1]                                  ; $496a: $f0 $00
    nop                                           ; $496c: $00
    nop                                           ; $496d: $00
    rrca                                          ; $496e: $0f
    rst $38                                       ; $496f: $ff
    cpl                                           ; $4970: $2f
    rst $38                                       ; $4971: $ff
    ldh a, [rP1]                                  ; $4972: $f0 $00
    nop                                           ; $4974: $00
    nop                                           ; $4975: $00
    rrca                                          ; $4976: $0f
    ld a, [c]                                     ; $4977: $f2
    rst $38                                       ; $4978: $ff
    rst $38                                       ; $4979: $ff
    ldh a, [rP1]                                  ; $497a: $f0 $00
    nop                                           ; $497c: $00
    nop                                           ; $497d: $00
    rrca                                          ; $497e: $0f
    ld a, [c]                                     ; $497f: $f2
    rst $38                                       ; $4980: $ff
    pop af                                        ; $4981: $f1
    rst $38                                       ; $4982: $ff
    nop                                           ; $4983: $00
    nop                                           ; $4984: $00
    nop                                           ; $4985: $00
    nop                                           ; $4986: $00
    rst $38                                       ; $4987: $ff
    rst $38                                       ; $4988: $ff
    rst $38                                       ; $4989: $ff
    ldh a, [rP1]                                  ; $498a: $f0 $00
    nop                                           ; $498c: $00
    nop                                           ; $498d: $00
    nop                                           ; $498e: $00
    pop af                                        ; $498f: $f1
    di                                            ; $4990: $f3
    ccf                                           ; $4991: $3f
    ldh a, [rP1]                                  ; $4992: $f0 $00
    nop                                           ; $4994: $00
    nop                                           ; $4995: $00
    rrca                                          ; $4996: $0f
    rst $38                                       ; $4997: $ff
    ccf                                           ; $4998: $3f
    rst $38                                       ; $4999: $ff
    ldh a, [rP1]                                  ; $499a: $f0 $00
    nop                                           ; $499c: $00
    nop                                           ; $499d: $00
    pop af                                        ; $499e: $f1
    rst $38                                       ; $499f: $ff
    rst $38                                       ; $49a0: $ff
    rra                                           ; $49a1: $1f
    nop                                           ; $49a2: $00
    nop                                           ; $49a3: $00
    nop                                           ; $49a4: $00
    nop                                           ; $49a5: $00
    rst $38                                       ; $49a6: $ff
    rst $38                                       ; $49a7: $ff
    rra                                           ; $49a8: $1f
    ldh a, [rP1]                                  ; $49a9: $f0 $00
    nop                                           ; $49ab: $00
    nop                                           ; $49ac: $00
    nop                                           ; $49ad: $00
    rst $38                                       ; $49ae: $ff
    rst $38                                       ; $49af: $ff
    rst $38                                       ; $49b0: $ff
    nop                                           ; $49b1: $00
    nop                                           ; $49b2: $00
    nop                                           ; $49b3: $00
    nop                                           ; $49b4: $00
    nop                                           ; $49b5: $00
    rst $38                                       ; $49b6: $ff
    rst $38                                       ; $49b7: $ff
    nop                                           ; $49b8: $00
    nop                                           ; $49b9: $00
    nop                                           ; $49ba: $00
    nop                                           ; $49bb: $00
    ld h, e                                       ; $49bc: $63
    ld d, $17                                     ; $49bd: $16 $17
    jr jr_045_49ea                                ; $49bf: $18 $29

    ld l, d                                       ; $49c1: $6a
    ld l, e                                       ; $49c2: $6b
    rst $38                                       ; $49c3: $ff
    ld b, $e3                                     ; $49c4: $06 $e3
    ld d, d                                       ; $49c6: $52
    db $eb                                        ; $49c7: $eb
    ld c, c                                       ; $49c8: $49
    ld [hl], c                                    ; $49c9: $71
    ld c, d                                       ; $49ca: $4a
    ld sp, hl                                     ; $49cb: $f9
    ld c, d                                       ; $49cc: $4a
    ld a, a                                       ; $49cd: $7f
    ld c, e                                       ; $49ce: $4b
    ld [$8d4c], sp                                ; $49cf: $08 $4c $8d
    ld c, h                                       ; $49d2: $4c
    jr jr_045_4a22                                ; $49d3: $18 $4d

    and d                                         ; $49d5: $a2
    ld c, l                                       ; $49d6: $4d
    add hl, hl                                    ; $49d7: $29
    ld c, [hl]                                    ; $49d8: $4e
    or c                                          ; $49d9: $b1
    ld c, [hl]                                    ; $49da: $4e
    scf                                           ; $49db: $37
    ld c, a                                       ; $49dc: $4f
    cp h                                          ; $49dd: $bc
    ld c, a                                       ; $49de: $4f
    ld b, c                                       ; $49df: $41
    ld d, b                                       ; $49e0: $50
    ret                                           ; $49e1: $c9


    ld d, b                                       ; $49e2: $50
    ld c, [hl]                                    ; $49e3: $4e
    ld d, c                                       ; $49e4: $51
    push de                                       ; $49e5: $d5
    ld d, c                                       ; $49e6: $51
    ld e, e                                       ; $49e7: $5b
    ld d, d                                       ; $49e8: $52
    db $e3                                        ; $49e9: $e3

jr_045_49ea:
    ld d, d                                       ; $49ea: $52
    nop                                           ; $49eb: $00
    nop                                           ; $49ec: $00
    nop                                           ; $49ed: $00
    nop                                           ; $49ee: $00
    ldh a, [rP1]                                  ; $49ef: $f0 $00
    nop                                           ; $49f1: $00
    nop                                           ; $49f2: $00
    nop                                           ; $49f3: $00
    nop                                           ; $49f4: $00
    nop                                           ; $49f5: $00
    rrca                                          ; $49f6: $0f
    rst $38                                       ; $49f7: $ff
    nop                                           ; $49f8: $00
    nop                                           ; $49f9: $00
    nop                                           ; $49fa: $00
    nop                                           ; $49fb: $00
    nop                                           ; $49fc: $00
    rrca                                          ; $49fd: $0f
    rst $38                                       ; $49fe: $ff
    rst $38                                       ; $49ff: $ff
    ldh a, [rP1]                                  ; $4a00: $f0 $00
    nop                                           ; $4a02: $00
    nop                                           ; $4a03: $00
    nop                                           ; $4a04: $00
    rst $38                                       ; $4a05: $ff
    rst $38                                       ; $4a06: $ff
    rst $38                                       ; $4a07: $ff
    nop                                           ; $4a08: $00
    nop                                           ; $4a09: $00
    nop                                           ; $4a0a: $00
    nop                                           ; $4a0b: $00
    nop                                           ; $4a0c: $00
    rst $38                                       ; $4a0d: $ff
    rst $38                                       ; $4a0e: $ff
    rst $38                                       ; $4a0f: $ff
    ldh a, [rP1]                                  ; $4a10: $f0 $00
    nop                                           ; $4a12: $00
    nop                                           ; $4a13: $00
    nop                                           ; $4a14: $00
    rrca                                          ; $4a15: $0f
    rst $38                                       ; $4a16: $ff
    rst $38                                       ; $4a17: $ff
    ldh a, [rP1]                                  ; $4a18: $f0 $00
    nop                                           ; $4a1a: $00
    nop                                           ; $4a1b: $00
    nop                                           ; $4a1c: $00
    rrca                                          ; $4a1d: $0f
    rst $38                                       ; $4a1e: $ff
    di                                            ; $4a1f: $f3
    ldh a, [rP1]                                  ; $4a20: $f0 $00

jr_045_4a22:
    nop                                           ; $4a22: $00
    nop                                           ; $4a23: $00
    nop                                           ; $4a24: $00
    rrca                                          ; $4a25: $0f
    rst $38                                       ; $4a26: $ff
    rst $38                                       ; $4a27: $ff
    ldh a, [rP1]                                  ; $4a28: $f0 $00
    nop                                           ; $4a2a: $00
    nop                                           ; $4a2b: $00
    nop                                           ; $4a2c: $00
    rrca                                          ; $4a2d: $0f
    di                                            ; $4a2e: $f3
    rst $38                                       ; $4a2f: $ff
    rst $38                                       ; $4a30: $ff
    nop                                           ; $4a31: $00
    nop                                           ; $4a32: $00
    nop                                           ; $4a33: $00
    nop                                           ; $4a34: $00
    rrca                                          ; $4a35: $0f
    di                                            ; $4a36: $f3
    rst $38                                       ; $4a37: $ff
    rst $38                                       ; $4a38: $ff
    nop                                           ; $4a39: $00
    nop                                           ; $4a3a: $00
    nop                                           ; $4a3b: $00
    nop                                           ; $4a3c: $00
    rrca                                          ; $4a3d: $0f
    di                                            ; $4a3e: $f3
    rst $38                                       ; $4a3f: $ff
    nop                                           ; $4a40: $00
    nop                                           ; $4a41: $00
    nop                                           ; $4a42: $00
    nop                                           ; $4a43: $00
    nop                                           ; $4a44: $00
    nop                                           ; $4a45: $00
    rst $38                                       ; $4a46: $ff
    rst $38                                       ; $4a47: $ff
    nop                                           ; $4a48: $00
    nop                                           ; $4a49: $00
    nop                                           ; $4a4a: $00
    nop                                           ; $4a4b: $00
    nop                                           ; $4a4c: $00
    nop                                           ; $4a4d: $00
    rst $38                                       ; $4a4e: $ff
    rra                                           ; $4a4f: $1f
    nop                                           ; $4a50: $00
    nop                                           ; $4a51: $00
    nop                                           ; $4a52: $00
    nop                                           ; $4a53: $00
    nop                                           ; $4a54: $00
    nop                                           ; $4a55: $00
    rst $38                                       ; $4a56: $ff
    rst $38                                       ; $4a57: $ff
    nop                                           ; $4a58: $00
    nop                                           ; $4a59: $00
    nop                                           ; $4a5a: $00
    nop                                           ; $4a5b: $00
    nop                                           ; $4a5c: $00
    nop                                           ; $4a5d: $00
    rst $38                                       ; $4a5e: $ff
    rst $38                                       ; $4a5f: $ff
    nop                                           ; $4a60: $00
    nop                                           ; $4a61: $00
    nop                                           ; $4a62: $00
    nop                                           ; $4a63: $00
    nop                                           ; $4a64: $00
    nop                                           ; $4a65: $00
    rst $38                                       ; $4a66: $ff
    rst $38                                       ; $4a67: $ff
    nop                                           ; $4a68: $00
    nop                                           ; $4a69: $00
    nop                                           ; $4a6a: $00
    ld c, e                                       ; $4a6b: $4b
    daa                                           ; $4a6c: $27
    jr z, jr_045_4a98                             ; $4a6d: $28 $29

    rst $38                                       ; $4a6f: $ff
    inc bc                                        ; $4a70: $03
    nop                                           ; $4a71: $00
    nop                                           ; $4a72: $00
    nop                                           ; $4a73: $00
    nop                                           ; $4a74: $00
    nop                                           ; $4a75: $00
    nop                                           ; $4a76: $00
    nop                                           ; $4a77: $00
    nop                                           ; $4a78: $00
    nop                                           ; $4a79: $00
    nop                                           ; $4a7a: $00
    nop                                           ; $4a7b: $00
    nop                                           ; $4a7c: $00
    nop                                           ; $4a7d: $00
    rst $38                                       ; $4a7e: $ff
    ldh a, [rP1]                                  ; $4a7f: $f0 $00
    nop                                           ; $4a81: $00
    nop                                           ; $4a82: $00
    nop                                           ; $4a83: $00
    nop                                           ; $4a84: $00
    rrca                                          ; $4a85: $0f
    pop af                                        ; $4a86: $f1
    rst $38                                       ; $4a87: $ff
    nop                                           ; $4a88: $00
    nop                                           ; $4a89: $00
    nop                                           ; $4a8a: $00
    nop                                           ; $4a8b: $00
    nop                                           ; $4a8c: $00
    rrca                                          ; $4a8d: $0f
    rst $38                                       ; $4a8e: $ff
    rst $38                                       ; $4a8f: $ff
    nop                                           ; $4a90: $00
    nop                                           ; $4a91: $00
    nop                                           ; $4a92: $00
    nop                                           ; $4a93: $00
    nop                                           ; $4a94: $00
    rrca                                          ; $4a95: $0f
    rst $38                                       ; $4a96: $ff
    pop af                                        ; $4a97: $f1

jr_045_4a98:
    ldh a, [rP1]                                  ; $4a98: $f0 $00
    nop                                           ; $4a9a: $00
    nop                                           ; $4a9b: $00
    rrca                                          ; $4a9c: $0f
    rst $38                                       ; $4a9d: $ff
    pop af                                        ; $4a9e: $f1
    rst $38                                       ; $4a9f: $ff
    ldh a, [rP1]                                  ; $4aa0: $f0 $00
    nop                                           ; $4aa2: $00
    rrca                                          ; $4aa3: $0f
    rst $38                                       ; $4aa4: $ff
    rra                                           ; $4aa5: $1f
    rst $38                                       ; $4aa6: $ff
    nop                                           ; $4aa7: $00
    nop                                           ; $4aa8: $00
    nop                                           ; $4aa9: $00
    nop                                           ; $4aaa: $00
    rst $38                                       ; $4aab: $ff
    rra                                           ; $4aac: $1f
    rst $38                                       ; $4aad: $ff
    rst $38                                       ; $4aae: $ff
    nop                                           ; $4aaf: $00
    nop                                           ; $4ab0: $00
    nop                                           ; $4ab1: $00
    nop                                           ; $4ab2: $00
    pop af                                        ; $4ab3: $f1
    di                                            ; $4ab4: $f3
    rst $38                                       ; $4ab5: $ff
    rra                                           ; $4ab6: $1f
    nop                                           ; $4ab7: $00
    nop                                           ; $4ab8: $00
    nop                                           ; $4ab9: $00
    rrca                                          ; $4aba: $0f
    rst $38                                       ; $4abb: $ff
    ccf                                           ; $4abc: $3f
    rra                                           ; $4abd: $1f
    ldh a, [rP1]                                  ; $4abe: $f0 $00
    nop                                           ; $4ac0: $00
    nop                                           ; $4ac1: $00
    rst $38                                       ; $4ac2: $ff
    rst $38                                       ; $4ac3: $ff
    rst $38                                       ; $4ac4: $ff
    ldh a, [rP1]                                  ; $4ac5: $f0 $00
    nop                                           ; $4ac7: $00
    nop                                           ; $4ac8: $00
    nop                                           ; $4ac9: $00
    rst $38                                       ; $4aca: $ff
    rst $38                                       ; $4acb: $ff
    rst $38                                       ; $4acc: $ff
    nop                                           ; $4acd: $00
    nop                                           ; $4ace: $00
    nop                                           ; $4acf: $00
    nop                                           ; $4ad0: $00
    nop                                           ; $4ad1: $00
    rst $38                                       ; $4ad2: $ff
    rst $38                                       ; $4ad3: $ff
    ldh a, [rP1]                                  ; $4ad4: $f0 $00
    nop                                           ; $4ad6: $00
    nop                                           ; $4ad7: $00
    nop                                           ; $4ad8: $00
    nop                                           ; $4ad9: $00
    rst $38                                       ; $4ada: $ff
    rst $38                                       ; $4adb: $ff
    nop                                           ; $4adc: $00
    nop                                           ; $4add: $00
    nop                                           ; $4ade: $00
    nop                                           ; $4adf: $00
    nop                                           ; $4ae0: $00
    nop                                           ; $4ae1: $00
    nop                                           ; $4ae2: $00
    nop                                           ; $4ae3: $00
    nop                                           ; $4ae4: $00
    nop                                           ; $4ae5: $00
    nop                                           ; $4ae6: $00
    nop                                           ; $4ae7: $00
    nop                                           ; $4ae8: $00
    nop                                           ; $4ae9: $00
    nop                                           ; $4aea: $00
    nop                                           ; $4aeb: $00
    nop                                           ; $4aec: $00
    nop                                           ; $4aed: $00
    nop                                           ; $4aee: $00
    nop                                           ; $4aef: $00
    nop                                           ; $4af0: $00
    ld b, [hl]                                    ; $4af1: $46
    dec sp                                        ; $4af2: $3b
    inc a                                         ; $4af3: $3c
    ld e, d                                       ; $4af4: $5a
    ld a, c                                       ; $4af5: $79
    ld a, d                                       ; $4af6: $7a
    rst $38                                       ; $4af7: $ff
    dec b                                         ; $4af8: $05
    nop                                           ; $4af9: $00
    nop                                           ; $4afa: $00
    rst $38                                       ; $4afb: $ff
    nop                                           ; $4afc: $00
    nop                                           ; $4afd: $00
    nop                                           ; $4afe: $00
    nop                                           ; $4aff: $00
    nop                                           ; $4b00: $00
    nop                                           ; $4b01: $00
    rrca                                          ; $4b02: $0f
    pop af                                        ; $4b03: $f1
    ldh a, [rP1]                                  ; $4b04: $f0 $00
    nop                                           ; $4b06: $00
    nop                                           ; $4b07: $00
    nop                                           ; $4b08: $00
    nop                                           ; $4b09: $00
    rst $38                                       ; $4b0a: $ff
    rst $38                                       ; $4b0b: $ff
    rst $38                                       ; $4b0c: $ff
    nop                                           ; $4b0d: $00
    nop                                           ; $4b0e: $00
    nop                                           ; $4b0f: $00
    nop                                           ; $4b10: $00
    nop                                           ; $4b11: $00
    rst $38                                       ; $4b12: $ff
    rst $38                                       ; $4b13: $ff
    ldh a, [rP1]                                  ; $4b14: $f0 $00
    nop                                           ; $4b16: $00
    nop                                           ; $4b17: $00
    nop                                           ; $4b18: $00
    nop                                           ; $4b19: $00
    rst $38                                       ; $4b1a: $ff
    ccf                                           ; $4b1b: $3f
    ldh a, [rP1]                                  ; $4b1c: $f0 $00
    nop                                           ; $4b1e: $00
    nop                                           ; $4b1f: $00
    nop                                           ; $4b20: $00
    nop                                           ; $4b21: $00
    rst $38                                       ; $4b22: $ff
    di                                            ; $4b23: $f3
    ldh a, [rP1]                                  ; $4b24: $f0 $00
    nop                                           ; $4b26: $00
    nop                                           ; $4b27: $00
    nop                                           ; $4b28: $00
    nop                                           ; $4b29: $00
    rrca                                          ; $4b2a: $0f
    di                                            ; $4b2b: $f3
    ldh a, [rP1]                                  ; $4b2c: $f0 $00
    nop                                           ; $4b2e: $00
    nop                                           ; $4b2f: $00
    nop                                           ; $4b30: $00
    nop                                           ; $4b31: $00
    rrca                                          ; $4b32: $0f
    rra                                           ; $4b33: $1f
    rst $38                                       ; $4b34: $ff
    nop                                           ; $4b35: $00
    nop                                           ; $4b36: $00
    nop                                           ; $4b37: $00
    nop                                           ; $4b38: $00
    nop                                           ; $4b39: $00
    rrca                                          ; $4b3a: $0f
    rst $38                                       ; $4b3b: $ff
    ccf                                           ; $4b3c: $3f
    ldh a, [rP1]                                  ; $4b3d: $f0 $00
    nop                                           ; $4b3f: $00

Jump_045_4b40:
    nop                                           ; $4b40: $00
    nop                                           ; $4b41: $00
    nop                                           ; $4b42: $00
    rst $38                                       ; $4b43: $ff
    inc sp                                        ; $4b44: $33
    rst $38                                       ; $4b45: $ff
    nop                                           ; $4b46: $00
    nop                                           ; $4b47: $00
    nop                                           ; $4b48: $00
    nop                                           ; $4b49: $00
    nop                                           ; $4b4a: $00
    pop af                                        ; $4b4b: $f1
    di                                            ; $4b4c: $f3
    ccf                                           ; $4b4d: $3f
    ldh a, [rP1]                                  ; $4b4e: $f0 $00
    nop                                           ; $4b50: $00
    nop                                           ; $4b51: $00
    nop                                           ; $4b52: $00
    pop af                                        ; $4b53: $f1
    rra                                           ; $4b54: $1f
    rst $38                                       ; $4b55: $ff
    rst $38                                       ; $4b56: $ff
    rst $38                                       ; $4b57: $ff
    nop                                           ; $4b58: $00
    nop                                           ; $4b59: $00
    nop                                           ; $4b5a: $00
    rst $38                                       ; $4b5b: $ff
    rst $38                                       ; $4b5c: $ff
    rra                                           ; $4b5d: $1f
    rst $38                                       ; $4b5e: $ff
    rra                                           ; $4b5f: $1f
    ldh a, [rP1]                                  ; $4b60: $f0 $00
    nop                                           ; $4b62: $00
    nop                                           ; $4b63: $00
    rrca                                          ; $4b64: $0f
    rst $38                                       ; $4b65: $ff
    rst $38                                       ; $4b66: $ff
    rst $38                                       ; $4b67: $ff
    ldh a, [rP1]                                  ; $4b68: $f0 $00
    nop                                           ; $4b6a: $00
    nop                                           ; $4b6b: $00
    nop                                           ; $4b6c: $00
    rrca                                          ; $4b6d: $0f
    rst $38                                       ; $4b6e: $ff
    rst $38                                       ; $4b6f: $ff
    ldh a, [rP1]                                  ; $4b70: $f0 $00
    nop                                           ; $4b72: $00
    nop                                           ; $4b73: $00
    nop                                           ; $4b74: $00
    nop                                           ; $4b75: $00
    rrca                                          ; $4b76: $0f
    rst $38                                       ; $4b77: $ff
    ldh a, [rVBK]                                 ; $4b78: $f0 $4f
    inc h                                         ; $4b7a: $24
    dec h                                         ; $4b7b: $25
    ld h, $ff                                     ; $4b7c: $26 $ff
    inc bc                                        ; $4b7e: $03
    nop                                           ; $4b7f: $00
    nop                                           ; $4b80: $00
    nop                                           ; $4b81: $00
    nop                                           ; $4b82: $00
    nop                                           ; $4b83: $00
    nop                                           ; $4b84: $00
    nop                                           ; $4b85: $00
    nop                                           ; $4b86: $00
    nop                                           ; $4b87: $00
    nop                                           ; $4b88: $00
    rst $38                                       ; $4b89: $ff
    rst $38                                       ; $4b8a: $ff
    ldh a, [rP1]                                  ; $4b8b: $f0 $00
    nop                                           ; $4b8d: $00
    nop                                           ; $4b8e: $00
    nop                                           ; $4b8f: $00
    nop                                           ; $4b90: $00
    pop af                                        ; $4b91: $f1
    rst $38                                       ; $4b92: $ff
    rst $38                                       ; $4b93: $ff
    nop                                           ; $4b94: $00
    nop                                           ; $4b95: $00
    nop                                           ; $4b96: $00
    nop                                           ; $4b97: $00
    nop                                           ; $4b98: $00
    pop af                                        ; $4b99: $f1
    rst $38                                       ; $4b9a: $ff
    ld de, $00f0                                  ; $4b9b: $11 $f0 $00
    nop                                           ; $4b9e: $00
    nop                                           ; $4b9f: $00
    nop                                           ; $4ba0: $00
    pop af                                        ; $4ba1: $f1
    rst $38                                       ; $4ba2: $ff
    pop af                                        ; $4ba3: $f1
    ldh a, [rP1]                                  ; $4ba4: $f0 $00
    nop                                           ; $4ba6: $00
    nop                                           ; $4ba7: $00
    nop                                           ; $4ba8: $00
    rst $38                                       ; $4ba9: $ff
    rst $38                                       ; $4baa: $ff
    rst $38                                       ; $4bab: $ff
    ldh a, [rP1]                                  ; $4bac: $f0 $00
    nop                                           ; $4bae: $00
    nop                                           ; $4baf: $00
    nop                                           ; $4bb0: $00
    nop                                           ; $4bb1: $00
    rst $38                                       ; $4bb2: $ff
    ccf                                           ; $4bb3: $3f
    ldh a, [rP1]                                  ; $4bb4: $f0 $00
    nop                                           ; $4bb6: $00
    nop                                           ; $4bb7: $00
    nop                                           ; $4bb8: $00
    rrca                                          ; $4bb9: $0f
    rst $38                                       ; $4bba: $ff
    ccf                                           ; $4bbb: $3f
    rst $38                                       ; $4bbc: $ff
    nop                                           ; $4bbd: $00
    nop                                           ; $4bbe: $00
    nop                                           ; $4bbf: $00
    nop                                           ; $4bc0: $00
    rrca                                          ; $4bc1: $0f
    rst $38                                       ; $4bc2: $ff
    ccf                                           ; $4bc3: $3f
    rst $38                                       ; $4bc4: $ff
    nop                                           ; $4bc5: $00
    nop                                           ; $4bc6: $00
    nop                                           ; $4bc7: $00
    nop                                           ; $4bc8: $00
    nop                                           ; $4bc9: $00
    rst $38                                       ; $4bca: $ff
    rst $38                                       ; $4bcb: $ff
    ldh a, [rP1]                                  ; $4bcc: $f0 $00
    nop                                           ; $4bce: $00
    nop                                           ; $4bcf: $00
    nop                                           ; $4bd0: $00
    rrca                                          ; $4bd1: $0f
    rra                                           ; $4bd2: $1f
    rst $38                                       ; $4bd3: $ff
    ldh a, [rP1]                                  ; $4bd4: $f0 $00
    nop                                           ; $4bd6: $00
    nop                                           ; $4bd7: $00
    nop                                           ; $4bd8: $00
    rrca                                          ; $4bd9: $0f
    rst $38                                       ; $4bda: $ff
    rst $38                                       ; $4bdb: $ff
    ldh a, [rP1]                                  ; $4bdc: $f0 $00
    nop                                           ; $4bde: $00
    nop                                           ; $4bdf: $00
    nop                                           ; $4be0: $00
    rst $38                                       ; $4be1: $ff
    rst $38                                       ; $4be2: $ff
    rra                                           ; $4be3: $1f
    nop                                           ; $4be4: $00
    nop                                           ; $4be5: $00
    nop                                           ; $4be6: $00
    nop                                           ; $4be7: $00
    nop                                           ; $4be8: $00
    rst $38                                       ; $4be9: $ff
    ccf                                           ; $4bea: $3f
    rst $38                                       ; $4beb: $ff
    nop                                           ; $4bec: $00
    nop                                           ; $4bed: $00
    nop                                           ; $4bee: $00
    nop                                           ; $4bef: $00
    nop                                           ; $4bf0: $00
    rrca                                          ; $4bf1: $0f
    rst $38                                       ; $4bf2: $ff
    ldh a, [rP1]                                  ; $4bf3: $f0 $00
    nop                                           ; $4bf5: $00
    nop                                           ; $4bf6: $00
    nop                                           ; $4bf7: $00
    nop                                           ; $4bf8: $00
    rrca                                          ; $4bf9: $0f
    rst $38                                       ; $4bfa: $ff
    nop                                           ; $4bfb: $00
    nop                                           ; $4bfc: $00
    nop                                           ; $4bfd: $00
    nop                                           ; $4bfe: $00
    ld c, e                                       ; $4bff: $4b
    ld [hl], $37                                  ; $4c00: $36 $37
    ld d, [hl]                                    ; $4c02: $56
    ld d, a                                       ; $4c03: $57
    ld l, c                                       ; $4c04: $69
    ld [hl], a                                    ; $4c05: $77
    rst $38                                       ; $4c06: $ff
    ld b, $00                                     ; $4c07: $06 $00
    nop                                           ; $4c09: $00
    nop                                           ; $4c0a: $00
    nop                                           ; $4c0b: $00
    nop                                           ; $4c0c: $00
    nop                                           ; $4c0d: $00
    nop                                           ; $4c0e: $00
    nop                                           ; $4c0f: $00
    nop                                           ; $4c10: $00
    nop                                           ; $4c11: $00
    nop                                           ; $4c12: $00
    nop                                           ; $4c13: $00
    nop                                           ; $4c14: $00
    nop                                           ; $4c15: $00
    nop                                           ; $4c16: $00
    nop                                           ; $4c17: $00
    nop                                           ; $4c18: $00
    nop                                           ; $4c19: $00
    nop                                           ; $4c1a: $00
    nop                                           ; $4c1b: $00
    nop                                           ; $4c1c: $00
    nop                                           ; $4c1d: $00
    nop                                           ; $4c1e: $00
    nop                                           ; $4c1f: $00
    nop                                           ; $4c20: $00
    nop                                           ; $4c21: $00
    nop                                           ; $4c22: $00
    nop                                           ; $4c23: $00
    rst $38                                       ; $4c24: $ff
    ldh a, [rP1]                                  ; $4c25: $f0 $00
    nop                                           ; $4c27: $00
    nop                                           ; $4c28: $00
    nop                                           ; $4c29: $00
    nop                                           ; $4c2a: $00
    rrca                                          ; $4c2b: $0f
    pop af                                        ; $4c2c: $f1
    rra                                           ; $4c2d: $1f
    nop                                           ; $4c2e: $00
    nop                                           ; $4c2f: $00
    nop                                           ; $4c30: $00
    nop                                           ; $4c31: $00
    nop                                           ; $4c32: $00
    rrca                                          ; $4c33: $0f
    rst $38                                       ; $4c34: $ff
    rst $38                                       ; $4c35: $ff
    nop                                           ; $4c36: $00
    nop                                           ; $4c37: $00
    nop                                           ; $4c38: $00
    nop                                           ; $4c39: $00
    rrca                                          ; $4c3a: $0f
    rst $38                                       ; $4c3b: $ff
    rst $38                                       ; $4c3c: $ff
    rst $38                                       ; $4c3d: $ff
    nop                                           ; $4c3e: $00
    nop                                           ; $4c3f: $00
    nop                                           ; $4c40: $00
    nop                                           ; $4c41: $00
    rst $38                                       ; $4c42: $ff
    rra                                           ; $4c43: $1f
    rst $38                                       ; $4c44: $ff
    rst $38                                       ; $4c45: $ff
    nop                                           ; $4c46: $00
    nop                                           ; $4c47: $00
    nop                                           ; $4c48: $00
    nop                                           ; $4c49: $00
    rst $38                                       ; $4c4a: $ff
    rst $38                                       ; $4c4b: $ff
    ld de, $001f                                  ; $4c4c: $11 $1f $00
    nop                                           ; $4c4f: $00
    nop                                           ; $4c50: $00
    nop                                           ; $4c51: $00
    rst $38                                       ; $4c52: $ff
    rst $38                                       ; $4c53: $ff
    rst $38                                       ; $4c54: $ff
    ldh a, [rP1]                                  ; $4c55: $f0 $00
    nop                                           ; $4c57: $00
    nop                                           ; $4c58: $00
    nop                                           ; $4c59: $00
    rst $38                                       ; $4c5a: $ff
    rst $38                                       ; $4c5b: $ff
    ldh a, [rP1]                                  ; $4c5c: $f0 $00
    nop                                           ; $4c5e: $00
    nop                                           ; $4c5f: $00
    nop                                           ; $4c60: $00
    nop                                           ; $4c61: $00
    rst $38                                       ; $4c62: $ff
    rra                                           ; $4c63: $1f
    ldh a, [rP1]                                  ; $4c64: $f0 $00
    nop                                           ; $4c66: $00
    nop                                           ; $4c67: $00
    nop                                           ; $4c68: $00
    nop                                           ; $4c69: $00
    rrca                                          ; $4c6a: $0f
    rst $38                                       ; $4c6b: $ff
    nop                                           ; $4c6c: $00
    nop                                           ; $4c6d: $00
    nop                                           ; $4c6e: $00
    nop                                           ; $4c6f: $00
    nop                                           ; $4c70: $00
    nop                                           ; $4c71: $00
    nop                                           ; $4c72: $00
    nop                                           ; $4c73: $00
    nop                                           ; $4c74: $00
    nop                                           ; $4c75: $00
    nop                                           ; $4c76: $00
    nop                                           ; $4c77: $00
    nop                                           ; $4c78: $00
    nop                                           ; $4c79: $00
    nop                                           ; $4c7a: $00
    nop                                           ; $4c7b: $00
    nop                                           ; $4c7c: $00
    nop                                           ; $4c7d: $00
    nop                                           ; $4c7e: $00
    nop                                           ; $4c7f: $00
    nop                                           ; $4c80: $00
    nop                                           ; $4c81: $00
    nop                                           ; $4c82: $00
    nop                                           ; $4c83: $00
    nop                                           ; $4c84: $00
    nop                                           ; $4c85: $00
    nop                                           ; $4c86: $00
    nop                                           ; $4c87: $00
    ld sp, $6968                                  ; $4c88: $31 $68 $69
    rst $38                                       ; $4c8b: $ff
    ld [bc], a                                    ; $4c8c: $02
    nop                                           ; $4c8d: $00
    nop                                           ; $4c8e: $00
    nop                                           ; $4c8f: $00
    rst $38                                       ; $4c90: $ff
    ldh a, [rP1]                                  ; $4c91: $f0 $00
    nop                                           ; $4c93: $00
    nop                                           ; $4c94: $00
    nop                                           ; $4c95: $00
    nop                                           ; $4c96: $00
    rrca                                          ; $4c97: $0f
    pop af                                        ; $4c98: $f1
    rst $38                                       ; $4c99: $ff
    nop                                           ; $4c9a: $00
    nop                                           ; $4c9b: $00
    nop                                           ; $4c9c: $00
    nop                                           ; $4c9d: $00
    nop                                           ; $4c9e: $00
    rrca                                          ; $4c9f: $0f
    rst $38                                       ; $4ca0: $ff
    rra                                           ; $4ca1: $1f
    ldh a, [rP1]                                  ; $4ca2: $f0 $00
    nop                                           ; $4ca4: $00
    nop                                           ; $4ca5: $00
    nop                                           ; $4ca6: $00
    rrca                                          ; $4ca7: $0f
    rst $38                                       ; $4ca8: $ff
    pop af                                        ; $4ca9: $f1
    ldh a, [rP1]                                  ; $4caa: $f0 $00
    nop                                           ; $4cac: $00
    nop                                           ; $4cad: $00
    nop                                           ; $4cae: $00
    rrca                                          ; $4caf: $0f
    di                                            ; $4cb0: $f3
    rst $38                                       ; $4cb1: $ff
    nop                                           ; $4cb2: $00
    nop                                           ; $4cb3: $00
    nop                                           ; $4cb4: $00
    nop                                           ; $4cb5: $00
    nop                                           ; $4cb6: $00
    rrca                                          ; $4cb7: $0f
    rst $38                                       ; $4cb8: $ff
    rst $38                                       ; $4cb9: $ff
    nop                                           ; $4cba: $00
    nop                                           ; $4cbb: $00
    nop                                           ; $4cbc: $00
    nop                                           ; $4cbd: $00
    nop                                           ; $4cbe: $00
    rrca                                          ; $4cbf: $0f
    di                                            ; $4cc0: $f3
    rst $38                                       ; $4cc1: $ff
    ldh a, [rP1]                                  ; $4cc2: $f0 $00
    nop                                           ; $4cc4: $00
    nop                                           ; $4cc5: $00
    nop                                           ; $4cc6: $00
    rrca                                          ; $4cc7: $0f
    di                                            ; $4cc8: $f3
    rst $38                                       ; $4cc9: $ff
    ldh a, [rP1]                                  ; $4cca: $f0 $00
    nop                                           ; $4ccc: $00
    nop                                           ; $4ccd: $00
    nop                                           ; $4cce: $00
    rrca                                          ; $4ccf: $0f
    di                                            ; $4cd0: $f3
    rst $38                                       ; $4cd1: $ff
    ldh a, [rP1]                                  ; $4cd2: $f0 $00
    nop                                           ; $4cd4: $00
    nop                                           ; $4cd5: $00
    nop                                           ; $4cd6: $00
    rrca                                          ; $4cd7: $0f
    di                                            ; $4cd8: $f3
    pop af                                        ; $4cd9: $f1
    ldh a, [rP1]                                  ; $4cda: $f0 $00
    nop                                           ; $4cdc: $00
    nop                                           ; $4cdd: $00
    nop                                           ; $4cde: $00
    rrca                                          ; $4cdf: $0f
    di                                            ; $4ce0: $f3
    pop af                                        ; $4ce1: $f1
    ldh a, [rP1]                                  ; $4ce2: $f0 $00
    nop                                           ; $4ce4: $00
    nop                                           ; $4ce5: $00
    nop                                           ; $4ce6: $00
    rrca                                          ; $4ce7: $0f
    rst $38                                       ; $4ce8: $ff
    rst $38                                       ; $4ce9: $ff
    ldh a, [rP1]                                  ; $4cea: $f0 $00
    nop                                           ; $4cec: $00
    nop                                           ; $4ced: $00
    nop                                           ; $4cee: $00
    rrca                                          ; $4cef: $0f
    rra                                           ; $4cf0: $1f
    rra                                           ; $4cf1: $1f
    nop                                           ; $4cf2: $00
    nop                                           ; $4cf3: $00
    nop                                           ; $4cf4: $00
    nop                                           ; $4cf5: $00
    nop                                           ; $4cf6: $00
    rrca                                          ; $4cf7: $0f
    rst $38                                       ; $4cf8: $ff
    rst $38                                       ; $4cf9: $ff
    nop                                           ; $4cfa: $00
    nop                                           ; $4cfb: $00
    nop                                           ; $4cfc: $00
    nop                                           ; $4cfd: $00
    nop                                           ; $4cfe: $00
    rrca                                          ; $4cff: $0f
    di                                            ; $4d00: $f3
    rst $38                                       ; $4d01: $ff
    nop                                           ; $4d02: $00
    nop                                           ; $4d03: $00
    nop                                           ; $4d04: $00
    nop                                           ; $4d05: $00
    nop                                           ; $4d06: $00
    nop                                           ; $4d07: $00
    rst $38                                       ; $4d08: $ff
    ldh a, [rP1]                                  ; $4d09: $f0 $00
    nop                                           ; $4d0b: $00
    nop                                           ; $4d0c: $00
    ld b, [hl]                                    ; $4d0d: $46
    ld h, $27                                     ; $4d0e: $26 $27
    jr c, jr_045_4d58                             ; $4d10: $38 $46

    ld d, a                                       ; $4d12: $57
    ld e, b                                       ; $4d13: $58
    ld h, [hl]                                    ; $4d14: $66
    ld a, b                                       ; $4d15: $78
    rst $38                                       ; $4d16: $ff
    ld [$0000], sp                                ; $4d17: $08 $00 $00
    nop                                           ; $4d1a: $00
    nop                                           ; $4d1b: $00
    nop                                           ; $4d1c: $00
    nop                                           ; $4d1d: $00
    nop                                           ; $4d1e: $00
    nop                                           ; $4d1f: $00
    nop                                           ; $4d20: $00
    nop                                           ; $4d21: $00
    nop                                           ; $4d22: $00
    nop                                           ; $4d23: $00
    nop                                           ; $4d24: $00
    rrca                                          ; $4d25: $0f
    rst $38                                       ; $4d26: $ff
    nop                                           ; $4d27: $00
    nop                                           ; $4d28: $00
    nop                                           ; $4d29: $00
    nop                                           ; $4d2a: $00
    nop                                           ; $4d2b: $00
    rrca                                          ; $4d2c: $0f
    rst $38                                       ; $4d2d: $ff
    rst $38                                       ; $4d2e: $ff
    nop                                           ; $4d2f: $00
    nop                                           ; $4d30: $00
    nop                                           ; $4d31: $00
    nop                                           ; $4d32: $00
    nop                                           ; $4d33: $00
    rrca                                          ; $4d34: $0f
    rst $38                                       ; $4d35: $ff
    pop af                                        ; $4d36: $f1
    ldh a, [rP1]                                  ; $4d37: $f0 $00
    nop                                           ; $4d39: $00
    nop                                           ; $4d3a: $00
    nop                                           ; $4d3b: $00
    rst $38                                       ; $4d3c: $ff
    rst $38                                       ; $4d3d: $ff
    rst $38                                       ; $4d3e: $ff
    nop                                           ; $4d3f: $00
    nop                                           ; $4d40: $00
    nop                                           ; $4d41: $00
    nop                                           ; $4d42: $00
    nop                                           ; $4d43: $00
    rst $38                                       ; $4d44: $ff
    rst $38                                       ; $4d45: $ff
    ldh a, [rP1]                                  ; $4d46: $f0 $00
    nop                                           ; $4d48: $00
    nop                                           ; $4d49: $00
    rrca                                          ; $4d4a: $0f
    rst $38                                       ; $4d4b: $ff
    rst $38                                       ; $4d4c: $ff
    rst $38                                       ; $4d4d: $ff
    ldh a, [rP1]                                  ; $4d4e: $f0 $00
    nop                                           ; $4d50: $00
    nop                                           ; $4d51: $00
    rrca                                          ; $4d52: $0f
    rra                                           ; $4d53: $1f
    rst $38                                       ; $4d54: $ff
    ldh a, [rP1]                                  ; $4d55: $f0 $00
    nop                                           ; $4d57: $00

jr_045_4d58:
    nop                                           ; $4d58: $00
    nop                                           ; $4d59: $00
    rst $38                                       ; $4d5a: $ff
    rst $38                                       ; $4d5b: $ff
    rst $38                                       ; $4d5c: $ff
    ldh a, [rP1]                                  ; $4d5d: $f0 $00
    nop                                           ; $4d5f: $00
    nop                                           ; $4d60: $00
    rrca                                          ; $4d61: $0f
    rst $38                                       ; $4d62: $ff
    ccf                                           ; $4d63: $3f
    pop af                                        ; $4d64: $f1
    ldh a, [rP1]                                  ; $4d65: $f0 $00
    nop                                           ; $4d67: $00
    nop                                           ; $4d68: $00
    rrca                                          ; $4d69: $0f
    rra                                           ; $4d6a: $1f
    rst $38                                       ; $4d6b: $ff
    rst $38                                       ; $4d6c: $ff
    nop                                           ; $4d6d: $00
    nop                                           ; $4d6e: $00
    nop                                           ; $4d6f: $00
    nop                                           ; $4d70: $00
    rrca                                          ; $4d71: $0f
    rst $38                                       ; $4d72: $ff
    rst $38                                       ; $4d73: $ff
    nop                                           ; $4d74: $00
    nop                                           ; $4d75: $00
    nop                                           ; $4d76: $00
    nop                                           ; $4d77: $00
    rrca                                          ; $4d78: $0f
    rst $38                                       ; $4d79: $ff
    rst $38                                       ; $4d7a: $ff
    rst $38                                       ; $4d7b: $ff
    nop                                           ; $4d7c: $00
    nop                                           ; $4d7d: $00
    nop                                           ; $4d7e: $00
    nop                                           ; $4d7f: $00
    rrca                                          ; $4d80: $0f
    rst $38                                       ; $4d81: $ff
    rst $38                                       ; $4d82: $ff
    ldh a, [rP1]                                  ; $4d83: $f0 $00
    nop                                           ; $4d85: $00
    nop                                           ; $4d86: $00
    nop                                           ; $4d87: $00
    rrca                                          ; $4d88: $0f
    rst $38                                       ; $4d89: $ff
    ldh a, [rP1]                                  ; $4d8a: $f0 $00
    nop                                           ; $4d8c: $00
    nop                                           ; $4d8d: $00
    nop                                           ; $4d8e: $00
    nop                                           ; $4d8f: $00
    nop                                           ; $4d90: $00
    rst $38                                       ; $4d91: $ff
    nop                                           ; $4d92: $00
    nop                                           ; $4d93: $00
    nop                                           ; $4d94: $00
    nop                                           ; $4d95: $00
    nop                                           ; $4d96: $00
    nop                                           ; $4d97: $00
    ld d, b                                       ; $4d98: $50
    dec hl                                        ; $4d99: $2b
    inc l                                         ; $4d9a: $2c
    ld l, b                                       ; $4d9b: $68
    ld [hl], a                                    ; $4d9c: $77
    ld a, c                                       ; $4d9d: $79
    adc b                                         ; $4d9e: $88
    sub a                                         ; $4d9f: $97
    rst $38                                       ; $4da0: $ff
    rlca                                          ; $4da1: $07
    nop                                           ; $4da2: $00
    nop                                           ; $4da3: $00
    nop                                           ; $4da4: $00
    nop                                           ; $4da5: $00
    nop                                           ; $4da6: $00
    nop                                           ; $4da7: $00
    nop                                           ; $4da8: $00
    nop                                           ; $4da9: $00
    nop                                           ; $4daa: $00
    nop                                           ; $4dab: $00
    nop                                           ; $4dac: $00
    nop                                           ; $4dad: $00
    nop                                           ; $4dae: $00
    nop                                           ; $4daf: $00
    nop                                           ; $4db0: $00
    nop                                           ; $4db1: $00
    nop                                           ; $4db2: $00
    nop                                           ; $4db3: $00
    nop                                           ; $4db4: $00
    nop                                           ; $4db5: $00
    nop                                           ; $4db6: $00
    nop                                           ; $4db7: $00
    nop                                           ; $4db8: $00
    nop                                           ; $4db9: $00
    nop                                           ; $4dba: $00
    nop                                           ; $4dbb: $00
    nop                                           ; $4dbc: $00
    rst $38                                       ; $4dbd: $ff
    ldh a, [rP1]                                  ; $4dbe: $f0 $00
    nop                                           ; $4dc0: $00
    nop                                           ; $4dc1: $00
    nop                                           ; $4dc2: $00
    nop                                           ; $4dc3: $00
    nop                                           ; $4dc4: $00
    rst $38                                       ; $4dc5: $ff
    rst $38                                       ; $4dc6: $ff
    nop                                           ; $4dc7: $00
    nop                                           ; $4dc8: $00
    nop                                           ; $4dc9: $00
    nop                                           ; $4dca: $00
    nop                                           ; $4dcb: $00
    nop                                           ; $4dcc: $00
    rst $38                                       ; $4dcd: $ff
    rst $38                                       ; $4dce: $ff
    nop                                           ; $4dcf: $00
    nop                                           ; $4dd0: $00
    nop                                           ; $4dd1: $00
    nop                                           ; $4dd2: $00
    nop                                           ; $4dd3: $00
    nop                                           ; $4dd4: $00
    rst $38                                       ; $4dd5: $ff
    rst $38                                       ; $4dd6: $ff
    nop                                           ; $4dd7: $00
    nop                                           ; $4dd8: $00
    nop                                           ; $4dd9: $00
    nop                                           ; $4dda: $00
    nop                                           ; $4ddb: $00
    nop                                           ; $4ddc: $00
    pop af                                        ; $4ddd: $f1
    ldh a, [rP1]                                  ; $4dde: $f0 $00
    nop                                           ; $4de0: $00
    nop                                           ; $4de1: $00
    nop                                           ; $4de2: $00
    nop                                           ; $4de3: $00
    nop                                           ; $4de4: $00
    rrca                                          ; $4de5: $0f
    ldh a, [rP1]                                  ; $4de6: $f0 $00
    nop                                           ; $4de8: $00
    nop                                           ; $4de9: $00
    nop                                           ; $4dea: $00
    nop                                           ; $4deb: $00
    nop                                           ; $4dec: $00
    rst $38                                       ; $4ded: $ff
    rst $38                                       ; $4dee: $ff
    nop                                           ; $4def: $00
    nop                                           ; $4df0: $00
    nop                                           ; $4df1: $00
    nop                                           ; $4df2: $00
    nop                                           ; $4df3: $00
    nop                                           ; $4df4: $00
    di                                            ; $4df5: $f3
    rst $38                                       ; $4df6: $ff
    nop                                           ; $4df7: $00
    nop                                           ; $4df8: $00
    nop                                           ; $4df9: $00
    nop                                           ; $4dfa: $00
    nop                                           ; $4dfb: $00
    nop                                           ; $4dfc: $00
    rst $38                                       ; $4dfd: $ff
    ldh a, [rP1]                                  ; $4dfe: $f0 $00
    nop                                           ; $4e00: $00
    nop                                           ; $4e01: $00
    nop                                           ; $4e02: $00
    nop                                           ; $4e03: $00
    nop                                           ; $4e04: $00
    rst $38                                       ; $4e05: $ff
    ldh a, [rP1]                                  ; $4e06: $f0 $00
    nop                                           ; $4e08: $00
    nop                                           ; $4e09: $00
    nop                                           ; $4e0a: $00
    nop                                           ; $4e0b: $00
    nop                                           ; $4e0c: $00
    nop                                           ; $4e0d: $00
    nop                                           ; $4e0e: $00
    nop                                           ; $4e0f: $00
    nop                                           ; $4e10: $00
    nop                                           ; $4e11: $00
    nop                                           ; $4e12: $00
    nop                                           ; $4e13: $00
    nop                                           ; $4e14: $00
    nop                                           ; $4e15: $00
    nop                                           ; $4e16: $00
    nop                                           ; $4e17: $00
    nop                                           ; $4e18: $00
    nop                                           ; $4e19: $00
    nop                                           ; $4e1a: $00
    nop                                           ; $4e1b: $00
    nop                                           ; $4e1c: $00
    nop                                           ; $4e1d: $00
    nop                                           ; $4e1e: $00
    nop                                           ; $4e1f: $00
    nop                                           ; $4e20: $00
    nop                                           ; $4e21: $00
    jr nz, jr_045_4e6b                            ; $4e22: $20 $47

    ld c, b                                       ; $4e24: $48
    ld h, a                                       ; $4e25: $67
    ld l, b                                       ; $4e26: $68
    rst $38                                       ; $4e27: $ff
    inc b                                         ; $4e28: $04
    nop                                           ; $4e29: $00
    nop                                           ; $4e2a: $00
    nop                                           ; $4e2b: $00
    nop                                           ; $4e2c: $00
    nop                                           ; $4e2d: $00
    nop                                           ; $4e2e: $00
    nop                                           ; $4e2f: $00
    nop                                           ; $4e30: $00
    nop                                           ; $4e31: $00
    nop                                           ; $4e32: $00
    rrca                                          ; $4e33: $0f
    rst $38                                       ; $4e34: $ff
    nop                                           ; $4e35: $00
    nop                                           ; $4e36: $00
    nop                                           ; $4e37: $00
    nop                                           ; $4e38: $00
    rst $38                                       ; $4e39: $ff
    ldh a, [rIE]                                  ; $4e3a: $f0 $ff
    rst $38                                       ; $4e3c: $ff
    nop                                           ; $4e3d: $00
    nop                                           ; $4e3e: $00
    nop                                           ; $4e3f: $00
    nop                                           ; $4e40: $00
    nop                                           ; $4e41: $00
    rst $38                                       ; $4e42: $ff
    rst $38                                       ; $4e43: $ff
    rst $38                                       ; $4e44: $ff
    ldh a, [rP1]                                  ; $4e45: $f0 $00
    nop                                           ; $4e47: $00
    nop                                           ; $4e48: $00
    nop                                           ; $4e49: $00
    nop                                           ; $4e4a: $00
    rst $38                                       ; $4e4b: $ff
    rst $38                                       ; $4e4c: $ff
    rst $38                                       ; $4e4d: $ff
    rst $38                                       ; $4e4e: $ff
    nop                                           ; $4e4f: $00
    nop                                           ; $4e50: $00
    nop                                           ; $4e51: $00
    nop                                           ; $4e52: $00
    rst $38                                       ; $4e53: $ff
    rst $38                                       ; $4e54: $ff
    pop af                                        ; $4e55: $f1
    rra                                           ; $4e56: $1f
    nop                                           ; $4e57: $00
    nop                                           ; $4e58: $00
    nop                                           ; $4e59: $00
    nop                                           ; $4e5a: $00
    nop                                           ; $4e5b: $00
    rst $38                                       ; $4e5c: $ff
    rst $38                                       ; $4e5d: $ff
    rra                                           ; $4e5e: $1f
    nop                                           ; $4e5f: $00
    nop                                           ; $4e60: $00
    nop                                           ; $4e61: $00
    nop                                           ; $4e62: $00
    rrca                                          ; $4e63: $0f
    pop af                                        ; $4e64: $f1
    rst $38                                       ; $4e65: $ff
    rst $38                                       ; $4e66: $ff
    nop                                           ; $4e67: $00
    nop                                           ; $4e68: $00
    nop                                           ; $4e69: $00
    nop                                           ; $4e6a: $00

jr_045_4e6b:
    rrca                                          ; $4e6b: $0f
    rst $38                                       ; $4e6c: $ff
    rst $38                                       ; $4e6d: $ff
    ldh a, [rP1]                                  ; $4e6e: $f0 $00
    nop                                           ; $4e70: $00
    nop                                           ; $4e71: $00
    nop                                           ; $4e72: $00
    rrca                                          ; $4e73: $0f
    rst $38                                       ; $4e74: $ff
    ccf                                           ; $4e75: $3f
    nop                                           ; $4e76: $00
    nop                                           ; $4e77: $00
    nop                                           ; $4e78: $00
    nop                                           ; $4e79: $00
    nop                                           ; $4e7a: $00
    rrca                                          ; $4e7b: $0f
    rst $38                                       ; $4e7c: $ff
    rst $38                                       ; $4e7d: $ff
    nop                                           ; $4e7e: $00
    nop                                           ; $4e7f: $00
    nop                                           ; $4e80: $00
    nop                                           ; $4e81: $00
    nop                                           ; $4e82: $00
    rrca                                          ; $4e83: $0f
    rst $38                                       ; $4e84: $ff
    rra                                           ; $4e85: $1f
    nop                                           ; $4e86: $00
    nop                                           ; $4e87: $00
    nop                                           ; $4e88: $00
    nop                                           ; $4e89: $00
    nop                                           ; $4e8a: $00
    rst $38                                       ; $4e8b: $ff
    rst $38                                       ; $4e8c: $ff
    rst $38                                       ; $4e8d: $ff
    nop                                           ; $4e8e: $00
    nop                                           ; $4e8f: $00
    nop                                           ; $4e90: $00
    nop                                           ; $4e91: $00
    nop                                           ; $4e92: $00
    rst $38                                       ; $4e93: $ff
    ccf                                           ; $4e94: $3f
    rst $38                                       ; $4e95: $ff
    nop                                           ; $4e96: $00
    nop                                           ; $4e97: $00
    nop                                           ; $4e98: $00
    nop                                           ; $4e99: $00
    nop                                           ; $4e9a: $00
    rrca                                          ; $4e9b: $0f
    rst $38                                       ; $4e9c: $ff
    ldh a, [rP1]                                  ; $4e9d: $f0 $00
    nop                                           ; $4e9f: $00
    nop                                           ; $4ea0: $00
    nop                                           ; $4ea1: $00
    nop                                           ; $4ea2: $00
    nop                                           ; $4ea3: $00
    nop                                           ; $4ea4: $00
    ldh a, [rP1]                                  ; $4ea5: $f0 $00
    nop                                           ; $4ea7: $00
    nop                                           ; $4ea8: $00
    ld c, l                                       ; $4ea9: $4d
    dec [hl]                                      ; $4eaa: $35
    ld [hl], $47                                  ; $4eab: $36 $47
    ld l, b                                       ; $4ead: $68
    ld a, c                                       ; $4eae: $79
    rst $38                                       ; $4eaf: $ff
    dec b                                         ; $4eb0: $05
    nop                                           ; $4eb1: $00
    nop                                           ; $4eb2: $00
    nop                                           ; $4eb3: $00
    rrca                                          ; $4eb4: $0f
    rst $38                                       ; $4eb5: $ff
    nop                                           ; $4eb6: $00
    nop                                           ; $4eb7: $00
    nop                                           ; $4eb8: $00
    rrca                                          ; $4eb9: $0f
    rst $38                                       ; $4eba: $ff
    rst $38                                       ; $4ebb: $ff
    rst $38                                       ; $4ebc: $ff
    rst $38                                       ; $4ebd: $ff
    nop                                           ; $4ebe: $00
    nop                                           ; $4ebf: $00
    nop                                           ; $4ec0: $00
    rst $38                                       ; $4ec1: $ff
    rst $38                                       ; $4ec2: $ff
    rst $38                                       ; $4ec3: $ff
    rst $38                                       ; $4ec4: $ff
    rst $38                                       ; $4ec5: $ff
    nop                                           ; $4ec6: $00
    nop                                           ; $4ec7: $00
    nop                                           ; $4ec8: $00
    ld [hl+], a                                   ; $4ec9: $22
    ld [hl+], a                                   ; $4eca: $22
    cpl                                           ; $4ecb: $2f
    rst $38                                       ; $4ecc: $ff
    rst $38                                       ; $4ecd: $ff
    nop                                           ; $4ece: $00
    nop                                           ; $4ecf: $00
    nop                                           ; $4ed0: $00
    ld [hl+], a                                   ; $4ed1: $22
    ld [hl+], a                                   ; $4ed2: $22
    cpl                                           ; $4ed3: $2f
    rst $38                                       ; $4ed4: $ff
    ldh a, [rP1]                                  ; $4ed5: $f0 $00
    nop                                           ; $4ed7: $00
    nop                                           ; $4ed8: $00
    ld [hl+], a                                   ; $4ed9: $22
    ld [hl+], a                                   ; $4eda: $22
    cpl                                           ; $4edb: $2f
    ccf                                           ; $4edc: $3f
    rst $38                                       ; $4edd: $ff
    nop                                           ; $4ede: $00
    nop                                           ; $4edf: $00
    nop                                           ; $4ee0: $00
    ld [hl+], a                                   ; $4ee1: $22
    ld [hl+], a                                   ; $4ee2: $22
    cpl                                           ; $4ee3: $2f
    ccf                                           ; $4ee4: $3f
    rst $38                                       ; $4ee5: $ff
    ldh a, [rP1]                                  ; $4ee6: $f0 $00
    nop                                           ; $4ee8: $00
    ld [hl+], a                                   ; $4ee9: $22
    ld [hl+], a                                   ; $4eea: $22
    cpl                                           ; $4eeb: $2f
    di                                            ; $4eec: $f3
    rst $38                                       ; $4eed: $ff
    ldh a, [rP1]                                  ; $4eee: $f0 $00
    nop                                           ; $4ef0: $00
    ld [hl+], a                                   ; $4ef1: $22
    ld [hl+], a                                   ; $4ef2: $22
    cpl                                           ; $4ef3: $2f
    di                                            ; $4ef4: $f3
    ccf                                           ; $4ef5: $3f
    rra                                           ; $4ef6: $1f
    nop                                           ; $4ef7: $00
    nop                                           ; $4ef8: $00
    ld [hl+], a                                   ; $4ef9: $22
    ld [hl+], a                                   ; $4efa: $22
    ld [hl+], a                                   ; $4efb: $22
    di                                            ; $4efc: $f3
    ccf                                           ; $4efd: $3f
    rra                                           ; $4efe: $1f
    nop                                           ; $4eff: $00
    nop                                           ; $4f00: $00
    ld [hl+], a                                   ; $4f01: $22
    rst $38                                       ; $4f02: $ff
    rst $38                                       ; $4f03: $ff
    rst $38                                       ; $4f04: $ff
    rst $38                                       ; $4f05: $ff
    rst $38                                       ; $4f06: $ff
    nop                                           ; $4f07: $00
    nop                                           ; $4f08: $00
    rst $38                                       ; $4f09: $ff
    ldh a, [rIF]                                  ; $4f0a: $f0 $0f
    rra                                           ; $4f0c: $1f
    pop af                                        ; $4f0d: $f1
    ldh a, [rP1]                                  ; $4f0e: $f0 $00
    nop                                           ; $4f10: $00
    nop                                           ; $4f11: $00
    nop                                           ; $4f12: $00
    rrca                                          ; $4f13: $0f
    rra                                           ; $4f14: $1f
    pop af                                        ; $4f15: $f1
    ldh a, [rP1]                                  ; $4f16: $f0 $00
    nop                                           ; $4f18: $00
    nop                                           ; $4f19: $00
    nop                                           ; $4f1a: $00
    rrca                                          ; $4f1b: $0f
    rst $38                                       ; $4f1c: $ff
    rst $38                                       ; $4f1d: $ff
    ldh a, [rP1]                                  ; $4f1e: $f0 $00
    nop                                           ; $4f20: $00
    nop                                           ; $4f21: $00
    nop                                           ; $4f22: $00
    nop                                           ; $4f23: $00
    rst $38                                       ; $4f24: $ff
    rst $38                                       ; $4f25: $ff
    nop                                           ; $4f26: $00
    nop                                           ; $4f27: $00
    nop                                           ; $4f28: $00
    nop                                           ; $4f29: $00
    nop                                           ; $4f2a: $00
    nop                                           ; $4f2b: $00
    rrca                                          ; $4f2c: $0f
    ldh a, [rP1]                                  ; $4f2d: $f0 $00
    nop                                           ; $4f2f: $00
    nop                                           ; $4f30: $00
    ld d, l                                       ; $4f31: $55
    rla                                           ; $4f32: $17
    jr jr_045_4f5b                                ; $4f33: $18 $26

    rst $38                                       ; $4f35: $ff
    inc bc                                        ; $4f36: $03
    nop                                           ; $4f37: $00
    nop                                           ; $4f38: $00
    nop                                           ; $4f39: $00
    rst $38                                       ; $4f3a: $ff
    rst $38                                       ; $4f3b: $ff
    ldh a, [rP1]                                  ; $4f3c: $f0 $00
    nop                                           ; $4f3e: $00
    nop                                           ; $4f3f: $00
    nop                                           ; $4f40: $00
    rrca                                          ; $4f41: $0f
    rst $38                                       ; $4f42: $ff
    rra                                           ; $4f43: $1f
    rst $38                                       ; $4f44: $ff
    nop                                           ; $4f45: $00
    nop                                           ; $4f46: $00
    nop                                           ; $4f47: $00
    nop                                           ; $4f48: $00
    rrca                                          ; $4f49: $0f
    rra                                           ; $4f4a: $1f
    rst $38                                       ; $4f4b: $ff
    rst $38                                       ; $4f4c: $ff
    nop                                           ; $4f4d: $00
    nop                                           ; $4f4e: $00
    nop                                           ; $4f4f: $00
    nop                                           ; $4f50: $00
    rrca                                          ; $4f51: $0f
    rra                                           ; $4f52: $1f
    rst $38                                       ; $4f53: $ff
    ldh a, [rP1]                                  ; $4f54: $f0 $00
    nop                                           ; $4f56: $00
    nop                                           ; $4f57: $00
    nop                                           ; $4f58: $00
    rrca                                          ; $4f59: $0f
    rra                                           ; $4f5a: $1f

jr_045_4f5b:
    pop af                                        ; $4f5b: $f1
    ldh a, [rP1]                                  ; $4f5c: $f0 $00
    nop                                           ; $4f5e: $00
    nop                                           ; $4f5f: $00
    nop                                           ; $4f60: $00
    rrca                                          ; $4f61: $0f
    rra                                           ; $4f62: $1f
    pop af                                        ; $4f63: $f1
    ldh a, [rP1]                                  ; $4f64: $f0 $00
    nop                                           ; $4f66: $00
    nop                                           ; $4f67: $00
    nop                                           ; $4f68: $00
    rrca                                          ; $4f69: $0f
    rra                                           ; $4f6a: $1f
    pop af                                        ; $4f6b: $f1
    ldh a, [rP1]                                  ; $4f6c: $f0 $00
    nop                                           ; $4f6e: $00
    nop                                           ; $4f6f: $00
    nop                                           ; $4f70: $00
    rrca                                          ; $4f71: $0f
    rra                                           ; $4f72: $1f
    pop af                                        ; $4f73: $f1
    ldh a, [rP1]                                  ; $4f74: $f0 $00
    nop                                           ; $4f76: $00
    nop                                           ; $4f77: $00
    nop                                           ; $4f78: $00
    rrca                                          ; $4f79: $0f
    rra                                           ; $4f7a: $1f
    rst $38                                       ; $4f7b: $ff
    ldh a, [rP1]                                  ; $4f7c: $f0 $00
    nop                                           ; $4f7e: $00
    nop                                           ; $4f7f: $00
    nop                                           ; $4f80: $00
    rrca                                          ; $4f81: $0f
    rra                                           ; $4f82: $1f
    rst $38                                       ; $4f83: $ff
    ldh a, [rP1]                                  ; $4f84: $f0 $00
    nop                                           ; $4f86: $00
    nop                                           ; $4f87: $00
    nop                                           ; $4f88: $00
    rrca                                          ; $4f89: $0f
    rra                                           ; $4f8a: $1f
    rst $38                                       ; $4f8b: $ff
    ldh a, [rP1]                                  ; $4f8c: $f0 $00
    nop                                           ; $4f8e: $00
    nop                                           ; $4f8f: $00
    nop                                           ; $4f90: $00
    nop                                           ; $4f91: $00
    rra                                           ; $4f92: $1f
    rst $38                                       ; $4f93: $ff
    rst $38                                       ; $4f94: $ff
    ldh a, [rP1]                                  ; $4f95: $f0 $00
    nop                                           ; $4f97: $00
    nop                                           ; $4f98: $00
    nop                                           ; $4f99: $00
    rst $38                                       ; $4f9a: $ff
    pop af                                        ; $4f9b: $f1
    rst $38                                       ; $4f9c: $ff
    ldh a, [rP1]                                  ; $4f9d: $f0 $00
    nop                                           ; $4f9f: $00
    nop                                           ; $4fa0: $00
    rrca                                          ; $4fa1: $0f
    rst $38                                       ; $4fa2: $ff
    rst $38                                       ; $4fa3: $ff
    ldh a, [$f0]                                  ; $4fa4: $f0 $f0
    nop                                           ; $4fa6: $00
    nop                                           ; $4fa7: $00
    nop                                           ; $4fa8: $00
    rrca                                          ; $4fa9: $0f
    di                                            ; $4faa: $f3
    ccf                                           ; $4fab: $3f
    nop                                           ; $4fac: $00
    ldh a, [rP1]                                  ; $4fad: $f0 $00
    nop                                           ; $4faf: $00
    nop                                           ; $4fb0: $00
    nop                                           ; $4fb1: $00
    rst $38                                       ; $4fb2: $ff
    rst $38                                       ; $4fb3: $ff
    nop                                           ; $4fb4: $00
    ldh a, [rP1]                                  ; $4fb5: $f0 $00
    ld d, c                                       ; $4fb7: $51
    rla                                           ; $4fb8: $17
    jr z, @+$01                                   ; $4fb9: $28 $ff

    ld [bc], a                                    ; $4fbb: $02
    nop                                           ; $4fbc: $00
    nop                                           ; $4fbd: $00
    nop                                           ; $4fbe: $00
    nop                                           ; $4fbf: $00
    nop                                           ; $4fc0: $00
    nop                                           ; $4fc1: $00
    nop                                           ; $4fc2: $00
    nop                                           ; $4fc3: $00
    nop                                           ; $4fc4: $00
    nop                                           ; $4fc5: $00
    nop                                           ; $4fc6: $00
    nop                                           ; $4fc7: $00
    nop                                           ; $4fc8: $00
    nop                                           ; $4fc9: $00
    nop                                           ; $4fca: $00
    nop                                           ; $4fcb: $00
    nop                                           ; $4fcc: $00
    nop                                           ; $4fcd: $00
    nop                                           ; $4fce: $00
    nop                                           ; $4fcf: $00
    nop                                           ; $4fd0: $00
    nop                                           ; $4fd1: $00
    nop                                           ; $4fd2: $00
    nop                                           ; $4fd3: $00
    nop                                           ; $4fd4: $00
    nop                                           ; $4fd5: $00
    nop                                           ; $4fd6: $00
    nop                                           ; $4fd7: $00
    nop                                           ; $4fd8: $00
    nop                                           ; $4fd9: $00
    nop                                           ; $4fda: $00
    nop                                           ; $4fdb: $00
    nop                                           ; $4fdc: $00
    nop                                           ; $4fdd: $00
    nop                                           ; $4fde: $00
    rst $38                                       ; $4fdf: $ff
    nop                                           ; $4fe0: $00
    nop                                           ; $4fe1: $00
    nop                                           ; $4fe2: $00
    nop                                           ; $4fe3: $00
    nop                                           ; $4fe4: $00
    nop                                           ; $4fe5: $00
    nop                                           ; $4fe6: $00
    pop af                                        ; $4fe7: $f1
    ldh a, [rP1]                                  ; $4fe8: $f0 $00
    nop                                           ; $4fea: $00
    nop                                           ; $4feb: $00
    nop                                           ; $4fec: $00
    nop                                           ; $4fed: $00
    rrca                                          ; $4fee: $0f
    rst $38                                       ; $4fef: $ff
    ldh a, [rP1]                                  ; $4ff0: $f0 $00
    nop                                           ; $4ff2: $00
    nop                                           ; $4ff3: $00
    nop                                           ; $4ff4: $00
    nop                                           ; $4ff5: $00
    rst $38                                       ; $4ff6: $ff
    rst $38                                       ; $4ff7: $ff
    ldh a, [rP1]                                  ; $4ff8: $f0 $00
    nop                                           ; $4ffa: $00
    nop                                           ; $4ffb: $00
    nop                                           ; $4ffc: $00
    nop                                           ; $4ffd: $00
    rst $38                                       ; $4ffe: $ff
    rst $38                                       ; $4fff: $ff
    ldh a, [rP1]                                  ; $5000: $f0 $00
    nop                                           ; $5002: $00
    nop                                           ; $5003: $00
    nop                                           ; $5004: $00
    nop                                           ; $5005: $00
    pop af                                        ; $5006: $f1
    pop af                                        ; $5007: $f1
    ldh a, [rP1]                                  ; $5008: $f0 $00
    nop                                           ; $500a: $00
    nop                                           ; $500b: $00
    nop                                           ; $500c: $00
    nop                                           ; $500d: $00
    rst $38                                       ; $500e: $ff
    rst $38                                       ; $500f: $ff
    ldh a, [rP1]                                  ; $5010: $f0 $00
    nop                                           ; $5012: $00
    nop                                           ; $5013: $00
    nop                                           ; $5014: $00
    nop                                           ; $5015: $00
    rst $38                                       ; $5016: $ff
    pop af                                        ; $5017: $f1
    ldh a, [rP1]                                  ; $5018: $f0 $00
    nop                                           ; $501a: $00
    nop                                           ; $501b: $00
    nop                                           ; $501c: $00
    nop                                           ; $501d: $00
    rrca                                          ; $501e: $0f
    rst $38                                       ; $501f: $ff
    ldh a, [rP1]                                  ; $5020: $f0 $00
    nop                                           ; $5022: $00
    nop                                           ; $5023: $00
    nop                                           ; $5024: $00
    nop                                           ; $5025: $00
    rrca                                          ; $5026: $0f
    rst $38                                       ; $5027: $ff
    nop                                           ; $5028: $00
    nop                                           ; $5029: $00
    nop                                           ; $502a: $00
    nop                                           ; $502b: $00
    nop                                           ; $502c: $00
    nop                                           ; $502d: $00
    rrca                                          ; $502e: $0f
    rst $38                                       ; $502f: $ff
    nop                                           ; $5030: $00
    nop                                           ; $5031: $00
    nop                                           ; $5032: $00
    nop                                           ; $5033: $00
    nop                                           ; $5034: $00
    nop                                           ; $5035: $00
    nop                                           ; $5036: $00
    nop                                           ; $5037: $00
    nop                                           ; $5038: $00
    nop                                           ; $5039: $00
    nop                                           ; $503a: $00
    nop                                           ; $503b: $00
    jr z, jr_045_50a5                             ; $503c: $28 $67

    halt                                          ; $503e: $76
    rst $38                                       ; $503f: $ff
    ld [bc], a                                    ; $5040: $02
    nop                                           ; $5041: $00
    nop                                           ; $5042: $00
    nop                                           ; $5043: $00
    nop                                           ; $5044: $00
    nop                                           ; $5045: $00
    rst $38                                       ; $5046: $ff
    nop                                           ; $5047: $00
    nop                                           ; $5048: $00
    nop                                           ; $5049: $00
    nop                                           ; $504a: $00
    nop                                           ; $504b: $00
    nop                                           ; $504c: $00
    rst $38                                       ; $504d: $ff
    rst $38                                       ; $504e: $ff
    ldh a, [rP1]                                  ; $504f: $f0 $00
    nop                                           ; $5051: $00
    nop                                           ; $5052: $00
    nop                                           ; $5053: $00
    rrca                                          ; $5054: $0f
    rst $38                                       ; $5055: $ff
    rst $38                                       ; $5056: $ff
    ldh a, [rP1]                                  ; $5057: $f0 $00
    nop                                           ; $5059: $00
    nop                                           ; $505a: $00
    nop                                           ; $505b: $00
    rst $38                                       ; $505c: $ff
    ccf                                           ; $505d: $3f
    rst $38                                       ; $505e: $ff
    ldh a, [rP1]                                  ; $505f: $f0 $00
    nop                                           ; $5061: $00
    nop                                           ; $5062: $00
    nop                                           ; $5063: $00
    rst $38                                       ; $5064: $ff
    rst $38                                       ; $5065: $ff
    rst $38                                       ; $5066: $ff
    nop                                           ; $5067: $00
    nop                                           ; $5068: $00
    nop                                           ; $5069: $00
    nop                                           ; $506a: $00
    nop                                           ; $506b: $00
    rst $38                                       ; $506c: $ff
    rst $38                                       ; $506d: $ff
    nop                                           ; $506e: $00
    nop                                           ; $506f: $00
    nop                                           ; $5070: $00
    nop                                           ; $5071: $00
    nop                                           ; $5072: $00
    nop                                           ; $5073: $00
    rst $38                                       ; $5074: $ff
    rst $38                                       ; $5075: $ff
    ldh a, [rP1]                                  ; $5076: $f0 $00
    nop                                           ; $5078: $00
    nop                                           ; $5079: $00
    nop                                           ; $507a: $00
    rrca                                          ; $507b: $0f
    rst $38                                       ; $507c: $ff
    rst $38                                       ; $507d: $ff
    ldh a, [rP1]                                  ; $507e: $f0 $00
    nop                                           ; $5080: $00
    nop                                           ; $5081: $00
    nop                                           ; $5082: $00
    rrca                                          ; $5083: $0f
    ld a, [c]                                     ; $5084: $f2
    di                                            ; $5085: $f3
    ldh a, [rP1]                                  ; $5086: $f0 $00
    nop                                           ; $5088: $00
    nop                                           ; $5089: $00
    nop                                           ; $508a: $00
    rrca                                          ; $508b: $0f
    rst $38                                       ; $508c: $ff
    rst $38                                       ; $508d: $ff
    ldh a, [rP1]                                  ; $508e: $f0 $00
    nop                                           ; $5090: $00
    nop                                           ; $5091: $00
    nop                                           ; $5092: $00
    rrca                                          ; $5093: $0f
    rst $38                                       ; $5094: $ff
    ccf                                           ; $5095: $3f
    ldh a, [rP1]                                  ; $5096: $f0 $00
    nop                                           ; $5098: $00
    nop                                           ; $5099: $00
    nop                                           ; $509a: $00
    rrca                                          ; $509b: $0f
    di                                            ; $509c: $f3
    ccf                                           ; $509d: $3f
    ldh a, [rP1]                                  ; $509e: $f0 $00
    nop                                           ; $50a0: $00
    nop                                           ; $50a1: $00
    nop                                           ; $50a2: $00
    rrca                                          ; $50a3: $0f
    di                                            ; $50a4: $f3

jr_045_50a5:
    pop af                                        ; $50a5: $f1
    ldh a, [rP1]                                  ; $50a6: $f0 $00
    nop                                           ; $50a8: $00
    nop                                           ; $50a9: $00
    nop                                           ; $50aa: $00
    rst $38                                       ; $50ab: $ff
    rst $38                                       ; $50ac: $ff
    rra                                           ; $50ad: $1f
    ldh a, [rP1]                                  ; $50ae: $f0 $00
    nop                                           ; $50b0: $00
    nop                                           ; $50b1: $00
    nop                                           ; $50b2: $00
    rst $38                                       ; $50b3: $ff
    ccf                                           ; $50b4: $3f
    ldh a, [rP1]                                  ; $50b5: $f0 $00
    nop                                           ; $50b7: $00
    nop                                           ; $50b8: $00
    nop                                           ; $50b9: $00
    nop                                           ; $50ba: $00
    rrca                                          ; $50bb: $0f
    rst $38                                       ; $50bc: $ff
    nop                                           ; $50bd: $00
    nop                                           ; $50be: $00
    nop                                           ; $50bf: $00
    nop                                           ; $50c0: $00
    ld c, h                                       ; $50c1: $4c
    ld a, [de]                                    ; $50c2: $1a
    dec de                                        ; $50c3: $1b
    inc l                                         ; $50c4: $2c
    ld a, [hl-]                                   ; $50c5: $3a
    dec sp                                        ; $50c6: $3b
    rst $38                                       ; $50c7: $ff
    dec b                                         ; $50c8: $05
    nop                                           ; $50c9: $00
    nop                                           ; $50ca: $00
    nop                                           ; $50cb: $00
    rrca                                          ; $50cc: $0f
    ldh a, [rP1]                                  ; $50cd: $f0 $00
    nop                                           ; $50cf: $00
    nop                                           ; $50d0: $00
    nop                                           ; $50d1: $00
    nop                                           ; $50d2: $00
    nop                                           ; $50d3: $00
    rst $38                                       ; $50d4: $ff
    rst $38                                       ; $50d5: $ff
    nop                                           ; $50d6: $00
    nop                                           ; $50d7: $00
    nop                                           ; $50d8: $00
    nop                                           ; $50d9: $00
    nop                                           ; $50da: $00
    nop                                           ; $50db: $00
    rst $38                                       ; $50dc: $ff
    rst $38                                       ; $50dd: $ff
    nop                                           ; $50de: $00
    nop                                           ; $50df: $00
    nop                                           ; $50e0: $00
    nop                                           ; $50e1: $00
    nop                                           ; $50e2: $00
    nop                                           ; $50e3: $00
    rst $38                                       ; $50e4: $ff
    rst $38                                       ; $50e5: $ff
    ldh a, [rP1]                                  ; $50e6: $f0 $00
    nop                                           ; $50e8: $00
    nop                                           ; $50e9: $00
    nop                                           ; $50ea: $00
    nop                                           ; $50eb: $00
    pop af                                        ; $50ec: $f1
    pop af                                        ; $50ed: $f1
    ldh a, [rP1]                                  ; $50ee: $f0 $00
    nop                                           ; $50f0: $00
    nop                                           ; $50f1: $00
    nop                                           ; $50f2: $00
    rst $38                                       ; $50f3: $ff
    rst $38                                       ; $50f4: $ff
    rst $38                                       ; $50f5: $ff
    nop                                           ; $50f6: $00
    nop                                           ; $50f7: $00
    nop                                           ; $50f8: $00
    nop                                           ; $50f9: $00
    nop                                           ; $50fa: $00
    rst $38                                       ; $50fb: $ff
    rst $38                                       ; $50fc: $ff
    rst $38                                       ; $50fd: $ff
    nop                                           ; $50fe: $00
    nop                                           ; $50ff: $00
    nop                                           ; $5100: $00
    nop                                           ; $5101: $00
    rrca                                          ; $5102: $0f
    rst $38                                       ; $5103: $ff
    rst $38                                       ; $5104: $ff
    rra                                           ; $5105: $1f
    nop                                           ; $5106: $00
    nop                                           ; $5107: $00
    nop                                           ; $5108: $00
    nop                                           ; $5109: $00
    rrca                                          ; $510a: $0f
    rst $38                                       ; $510b: $ff
    pop af                                        ; $510c: $f1
    ldh a, [rP1]                                  ; $510d: $f0 $00
    nop                                           ; $510f: $00
    nop                                           ; $5110: $00
    nop                                           ; $5111: $00
    rrca                                          ; $5112: $0f
    rst $38                                       ; $5113: $ff
    ccf                                           ; $5114: $3f
    ldh a, [rP1]                                  ; $5115: $f0 $00
    nop                                           ; $5117: $00
    nop                                           ; $5118: $00
    nop                                           ; $5119: $00
    nop                                           ; $511a: $00
    rrca                                          ; $511b: $0f
    rst $38                                       ; $511c: $ff
    ldh a, [rP1]                                  ; $511d: $f0 $00
    nop                                           ; $511f: $00
    nop                                           ; $5120: $00
    nop                                           ; $5121: $00
    nop                                           ; $5122: $00
    rrca                                          ; $5123: $0f
    rst $38                                       ; $5124: $ff
    rst $38                                       ; $5125: $ff
    nop                                           ; $5126: $00
    nop                                           ; $5127: $00
    nop                                           ; $5128: $00
    nop                                           ; $5129: $00
    nop                                           ; $512a: $00
    nop                                           ; $512b: $00
    rst $38                                       ; $512c: $ff
    rst $38                                       ; $512d: $ff
    nop                                           ; $512e: $00
    nop                                           ; $512f: $00
    nop                                           ; $5130: $00
    nop                                           ; $5131: $00
    nop                                           ; $5132: $00
    nop                                           ; $5133: $00
    di                                            ; $5134: $f3
    ccf                                           ; $5135: $3f
    nop                                           ; $5136: $00
    nop                                           ; $5137: $00
    nop                                           ; $5138: $00
    nop                                           ; $5139: $00
    nop                                           ; $513a: $00
    nop                                           ; $513b: $00
    rst $38                                       ; $513c: $ff
    rst $38                                       ; $513d: $ff
    nop                                           ; $513e: $00
    nop                                           ; $513f: $00
    nop                                           ; $5140: $00
    nop                                           ; $5141: $00
    nop                                           ; $5142: $00
    nop                                           ; $5143: $00
    rrca                                          ; $5144: $0f
    ldh a, [rP1]                                  ; $5145: $f0 $00
    nop                                           ; $5147: $00
    nop                                           ; $5148: $00
    ld b, e                                       ; $5149: $43
    rla                                           ; $514a: $17
    jr z, @+$01                                   ; $514b: $28 $ff

    ld [bc], a                                    ; $514d: $02
    nop                                           ; $514e: $00
    nop                                           ; $514f: $00
    nop                                           ; $5150: $00
    nop                                           ; $5151: $00
    nop                                           ; $5152: $00
    nop                                           ; $5153: $00
    nop                                           ; $5154: $00
    nop                                           ; $5155: $00
    nop                                           ; $5156: $00
    nop                                           ; $5157: $00
    nop                                           ; $5158: $00
    nop                                           ; $5159: $00
    nop                                           ; $515a: $00
    nop                                           ; $515b: $00
    nop                                           ; $515c: $00
    nop                                           ; $515d: $00
    nop                                           ; $515e: $00
    nop                                           ; $515f: $00
    nop                                           ; $5160: $00
    nop                                           ; $5161: $00
    nop                                           ; $5162: $00
    nop                                           ; $5163: $00
    nop                                           ; $5164: $00
    nop                                           ; $5165: $00
    nop                                           ; $5166: $00
    nop                                           ; $5167: $00
    nop                                           ; $5168: $00
    nop                                           ; $5169: $00
    rst $38                                       ; $516a: $ff
    nop                                           ; $516b: $00
    nop                                           ; $516c: $00
    nop                                           ; $516d: $00
    nop                                           ; $516e: $00
    nop                                           ; $516f: $00
    nop                                           ; $5170: $00
    rst $38                                       ; $5171: $ff
    rra                                           ; $5172: $1f
    ldh a, [rP1]                                  ; $5173: $f0 $00
    nop                                           ; $5175: $00
    nop                                           ; $5176: $00
    nop                                           ; $5177: $00
    nop                                           ; $5178: $00
    pop af                                        ; $5179: $f1
    rra                                           ; $517a: $1f
    rst $38                                       ; $517b: $ff
    nop                                           ; $517c: $00
    nop                                           ; $517d: $00
    nop                                           ; $517e: $00
    nop                                           ; $517f: $00
    nop                                           ; $5180: $00
    rrca                                          ; $5181: $0f
    rst $38                                       ; $5182: $ff
    pop af                                        ; $5183: $f1
    ldh a, [rP1]                                  ; $5184: $f0 $00
    nop                                           ; $5186: $00
    nop                                           ; $5187: $00
    nop                                           ; $5188: $00
    rrca                                          ; $5189: $0f
    rst $38                                       ; $518a: $ff
    ld de, $00f0                                  ; $518b: $11 $f0 $00
    nop                                           ; $518e: $00
    nop                                           ; $518f: $00
    rst $38                                       ; $5190: $ff
    rst $38                                       ; $5191: $ff
    rst $38                                       ; $5192: $ff
    rst $38                                       ; $5193: $ff
    ldh a, [rP1]                                  ; $5194: $f0 $00
    nop                                           ; $5196: $00
    nop                                           ; $5197: $00
    rst $38                                       ; $5198: $ff
    rst $38                                       ; $5199: $ff
    ldh a, [rIE]                                  ; $519a: $f0 $ff
    nop                                           ; $519c: $00
    nop                                           ; $519d: $00
    nop                                           ; $519e: $00
    nop                                           ; $519f: $00
    rst $38                                       ; $51a0: $ff
    rst $38                                       ; $51a1: $ff
    ldh a, [rP1]                                  ; $51a2: $f0 $00
    nop                                           ; $51a4: $00
    nop                                           ; $51a5: $00
    nop                                           ; $51a6: $00
    nop                                           ; $51a7: $00
    rst $38                                       ; $51a8: $ff
    pop af                                        ; $51a9: $f1
    ldh a, [rP1]                                  ; $51aa: $f0 $00
    nop                                           ; $51ac: $00
    nop                                           ; $51ad: $00
    nop                                           ; $51ae: $00
    nop                                           ; $51af: $00
    nop                                           ; $51b0: $00
    rst $38                                       ; $51b1: $ff
    nop                                           ; $51b2: $00
    nop                                           ; $51b3: $00
    nop                                           ; $51b4: $00
    nop                                           ; $51b5: $00
    nop                                           ; $51b6: $00
    nop                                           ; $51b7: $00
    nop                                           ; $51b8: $00
    nop                                           ; $51b9: $00
    nop                                           ; $51ba: $00
    nop                                           ; $51bb: $00
    nop                                           ; $51bc: $00
    nop                                           ; $51bd: $00
    nop                                           ; $51be: $00
    nop                                           ; $51bf: $00
    nop                                           ; $51c0: $00
    nop                                           ; $51c1: $00
    nop                                           ; $51c2: $00
    nop                                           ; $51c3: $00
    nop                                           ; $51c4: $00
    nop                                           ; $51c5: $00
    nop                                           ; $51c6: $00
    nop                                           ; $51c7: $00
    nop                                           ; $51c8: $00
    nop                                           ; $51c9: $00
    nop                                           ; $51ca: $00
    nop                                           ; $51cb: $00
    nop                                           ; $51cc: $00
    nop                                           ; $51cd: $00
    ld l, $59                                     ; $51ce: $2e $59
    ld l, b                                       ; $51d0: $68
    ld l, d                                       ; $51d1: $6a
    ld a, c                                       ; $51d2: $79
    rst $38                                       ; $51d3: $ff
    inc b                                         ; $51d4: $04
    nop                                           ; $51d5: $00
    nop                                           ; $51d6: $00
    nop                                           ; $51d7: $00
    nop                                           ; $51d8: $00
    nop                                           ; $51d9: $00
    nop                                           ; $51da: $00
    nop                                           ; $51db: $00
    nop                                           ; $51dc: $00
    nop                                           ; $51dd: $00
    nop                                           ; $51de: $00
    rrca                                          ; $51df: $0f
    rst $38                                       ; $51e0: $ff
    ldh a, [rP1]                                  ; $51e1: $f0 $00
    nop                                           ; $51e3: $00
    nop                                           ; $51e4: $00
    nop                                           ; $51e5: $00
    nop                                           ; $51e6: $00
    rrca                                          ; $51e7: $0f
    rst $38                                       ; $51e8: $ff
    ldh a, [rP1]                                  ; $51e9: $f0 $00
    nop                                           ; $51eb: $00
    nop                                           ; $51ec: $00
    nop                                           ; $51ed: $00
    nop                                           ; $51ee: $00
    rrca                                          ; $51ef: $0f
    rst $38                                       ; $51f0: $ff
    rra                                           ; $51f1: $1f
    nop                                           ; $51f2: $00
    nop                                           ; $51f3: $00
    nop                                           ; $51f4: $00
    nop                                           ; $51f5: $00
    nop                                           ; $51f6: $00
    rrca                                          ; $51f7: $0f
    rst $38                                       ; $51f8: $ff
    rst $38                                       ; $51f9: $ff
    nop                                           ; $51fa: $00
    nop                                           ; $51fb: $00
    nop                                           ; $51fc: $00
    nop                                           ; $51fd: $00
    nop                                           ; $51fe: $00
    rrca                                          ; $51ff: $0f
    rst $38                                       ; $5200: $ff
    rst $38                                       ; $5201: $ff
    ldh a, [rP1]                                  ; $5202: $f0 $00
    nop                                           ; $5204: $00
    nop                                           ; $5205: $00
    nop                                           ; $5206: $00
    rrca                                          ; $5207: $0f
    rst $38                                       ; $5208: $ff
    rst $38                                       ; $5209: $ff
    rst $38                                       ; $520a: $ff
    nop                                           ; $520b: $00
    nop                                           ; $520c: $00
    nop                                           ; $520d: $00
    nop                                           ; $520e: $00
    rrca                                          ; $520f: $0f
    rst $38                                       ; $5210: $ff
    rst $38                                       ; $5211: $ff
    rst $38                                       ; $5212: $ff
    nop                                           ; $5213: $00
    nop                                           ; $5214: $00
    nop                                           ; $5215: $00
    nop                                           ; $5216: $00
    nop                                           ; $5217: $00
    rst $38                                       ; $5218: $ff
    rst $38                                       ; $5219: $ff
    rst $38                                       ; $521a: $ff
    nop                                           ; $521b: $00
    nop                                           ; $521c: $00
    nop                                           ; $521d: $00
    nop                                           ; $521e: $00
    nop                                           ; $521f: $00
    rst $38                                       ; $5220: $ff
    rra                                           ; $5221: $1f
    rst $38                                       ; $5222: $ff
    nop                                           ; $5223: $00
    nop                                           ; $5224: $00
    nop                                           ; $5225: $00
    nop                                           ; $5226: $00
    nop                                           ; $5227: $00
    di                                            ; $5228: $f3
    rst $38                                       ; $5229: $ff
    rst $38                                       ; $522a: $ff
    nop                                           ; $522b: $00
    nop                                           ; $522c: $00
    nop                                           ; $522d: $00
    nop                                           ; $522e: $00
    nop                                           ; $522f: $00
    rst $38                                       ; $5230: $ff
    rst $38                                       ; $5231: $ff
    nop                                           ; $5232: $00
    nop                                           ; $5233: $00
    nop                                           ; $5234: $00
    nop                                           ; $5235: $00
    nop                                           ; $5236: $00
    nop                                           ; $5237: $00
    rst $38                                       ; $5238: $ff
    pop af                                        ; $5239: $f1
    ldh a, [rP1]                                  ; $523a: $f0 $00
    nop                                           ; $523c: $00
    nop                                           ; $523d: $00
    nop                                           ; $523e: $00
    nop                                           ; $523f: $00
    di                                            ; $5240: $f3
    ccf                                           ; $5241: $3f
    ldh a, [rP1]                                  ; $5242: $f0 $00
    nop                                           ; $5244: $00
    nop                                           ; $5245: $00
    nop                                           ; $5246: $00
    nop                                           ; $5247: $00
    rst $38                                       ; $5248: $ff
    rst $38                                       ; $5249: $ff
    nop                                           ; $524a: $00
    nop                                           ; $524b: $00
    nop                                           ; $524c: $00
    nop                                           ; $524d: $00
    nop                                           ; $524e: $00
    nop                                           ; $524f: $00
    rst $38                                       ; $5250: $ff
    rst $38                                       ; $5251: $ff
    nop                                           ; $5252: $00
    nop                                           ; $5253: $00
    nop                                           ; $5254: $00
    ld c, b                                       ; $5255: $48
    ld [hl], $37                                  ; $5256: $36 $37
    ld a, b                                       ; $5258: $78
    rst $38                                       ; $5259: $ff
    inc bc                                        ; $525a: $03
    nop                                           ; $525b: $00
    rrca                                          ; $525c: $0f
    rst $38                                       ; $525d: $ff
    nop                                           ; $525e: $00
    nop                                           ; $525f: $00
    nop                                           ; $5260: $00
    nop                                           ; $5261: $00
    nop                                           ; $5262: $00
    nop                                           ; $5263: $00
    rrca                                          ; $5264: $0f
    rst $38                                       ; $5265: $ff
    rst $38                                       ; $5266: $ff
    ldh a, [rP1]                                  ; $5267: $f0 $00
    nop                                           ; $5269: $00
    nop                                           ; $526a: $00
    nop                                           ; $526b: $00
    rrca                                          ; $526c: $0f
    rst $38                                       ; $526d: $ff
    pop af                                        ; $526e: $f1
    rra                                           ; $526f: $1f
    ldh a, [rP1]                                  ; $5270: $f0 $00
    nop                                           ; $5272: $00
    nop                                           ; $5273: $00
    rrca                                          ; $5274: $0f
    rst $38                                       ; $5275: $ff
    rst $38                                       ; $5276: $ff
    rst $38                                       ; $5277: $ff
    ldh a, [rP1]                                  ; $5278: $f0 $00
    nop                                           ; $527a: $00
    nop                                           ; $527b: $00
    nop                                           ; $527c: $00
    rst $38                                       ; $527d: $ff
    rst $38                                       ; $527e: $ff
    ccf                                           ; $527f: $3f
    rst $38                                       ; $5280: $ff
    nop                                           ; $5281: $00
    nop                                           ; $5282: $00
    nop                                           ; $5283: $00
    nop                                           ; $5284: $00
    nop                                           ; $5285: $00
    rst $38                                       ; $5286: $ff
    pop af                                        ; $5287: $f1
    ldh a, [rP1]                                  ; $5288: $f0 $00
    nop                                           ; $528a: $00
    nop                                           ; $528b: $00
    nop                                           ; $528c: $00
    nop                                           ; $528d: $00
    rst $38                                       ; $528e: $ff
    rst $38                                       ; $528f: $ff
    nop                                           ; $5290: $00
    nop                                           ; $5291: $00
    nop                                           ; $5292: $00
    nop                                           ; $5293: $00
    nop                                           ; $5294: $00
    rrca                                          ; $5295: $0f
    rst $38                                       ; $5296: $ff
    rst $38                                       ; $5297: $ff
    nop                                           ; $5298: $00
    nop                                           ; $5299: $00
    nop                                           ; $529a: $00
    nop                                           ; $529b: $00
    nop                                           ; $529c: $00
    rrca                                          ; $529d: $0f
    di                                            ; $529e: $f3
    rra                                           ; $529f: $1f
    nop                                           ; $52a0: $00
    nop                                           ; $52a1: $00
    nop                                           ; $52a2: $00
    nop                                           ; $52a3: $00
    nop                                           ; $52a4: $00
    rst $38                                       ; $52a5: $ff
    di                                            ; $52a6: $f3
    rst $38                                       ; $52a7: $ff
    nop                                           ; $52a8: $00
    nop                                           ; $52a9: $00
    nop                                           ; $52aa: $00
    nop                                           ; $52ab: $00
    nop                                           ; $52ac: $00
    pop af                                        ; $52ad: $f1
    di                                            ; $52ae: $f3
    ccf                                           ; $52af: $3f
    ldh a, [rP1]                                  ; $52b0: $f0 $00
    nop                                           ; $52b2: $00
    nop                                           ; $52b3: $00
    nop                                           ; $52b4: $00
    rst $38                                       ; $52b5: $ff
    rst $38                                       ; $52b6: $ff
    rst $38                                       ; $52b7: $ff
    rst $38                                       ; $52b8: $ff
    ldh a, [rP1]                                  ; $52b9: $f0 $00
    nop                                           ; $52bb: $00
    nop                                           ; $52bc: $00
    rrca                                          ; $52bd: $0f
    rst $38                                       ; $52be: $ff
    rst $38                                       ; $52bf: $ff
    pop af                                        ; $52c0: $f1
    ldh a, [rP1]                                  ; $52c1: $f0 $00
    nop                                           ; $52c3: $00
    nop                                           ; $52c4: $00
    nop                                           ; $52c5: $00
    nop                                           ; $52c6: $00
    rst $38                                       ; $52c7: $ff
    rst $38                                       ; $52c8: $ff
    rst $38                                       ; $52c9: $ff
    nop                                           ; $52ca: $00
    nop                                           ; $52cb: $00
    nop                                           ; $52cc: $00
    nop                                           ; $52cd: $00
    nop                                           ; $52ce: $00
    rrca                                          ; $52cf: $0f
    di                                            ; $52d0: $f3
    rst $38                                       ; $52d1: $ff
    nop                                           ; $52d2: $00
    nop                                           ; $52d3: $00
    nop                                           ; $52d4: $00
    nop                                           ; $52d5: $00
    nop                                           ; $52d6: $00
    nop                                           ; $52d7: $00
    rst $38                                       ; $52d8: $ff
    ldh a, [rP1]                                  ; $52d9: $f0 $00
    ld d, h                                       ; $52db: $54
    inc h                                         ; $52dc: $24
    dec h                                         ; $52dd: $25
    ld b, a                                       ; $52de: $47
    ld h, a                                       ; $52df: $67
    halt                                          ; $52e0: $76
    rst $38                                       ; $52e1: $ff
    dec b                                         ; $52e2: $05
    nop                                           ; $52e3: $00
    nop                                           ; $52e4: $00
    nop                                           ; $52e5: $00
    rrca                                          ; $52e6: $0f
    ldh a, [rP1]                                  ; $52e7: $f0 $00
    nop                                           ; $52e9: $00
    nop                                           ; $52ea: $00
    nop                                           ; $52eb: $00
    nop                                           ; $52ec: $00
    rrca                                          ; $52ed: $0f
    rst $38                                       ; $52ee: $ff
    rra                                           ; $52ef: $1f
    nop                                           ; $52f0: $00
    nop                                           ; $52f1: $00
    nop                                           ; $52f2: $00
    nop                                           ; $52f3: $00
    nop                                           ; $52f4: $00
    rrca                                          ; $52f5: $0f
    rst $38                                       ; $52f6: $ff
    rst $38                                       ; $52f7: $ff
    ldh a, [rP1]                                  ; $52f8: $f0 $00
    nop                                           ; $52fa: $00
    nop                                           ; $52fb: $00
    nop                                           ; $52fc: $00
    rrca                                          ; $52fd: $0f
    rst $38                                       ; $52fe: $ff
    pop af                                        ; $52ff: $f1
    ldh a, [rP1]                                  ; $5300: $f0 $00
    nop                                           ; $5302: $00
    nop                                           ; $5303: $00
    nop                                           ; $5304: $00
    rst $38                                       ; $5305: $ff
    rst $38                                       ; $5306: $ff
    rst $38                                       ; $5307: $ff
    ldh a, [rP1]                                  ; $5308: $f0 $00
    nop                                           ; $530a: $00
    nop                                           ; $530b: $00
    nop                                           ; $530c: $00
    rst $38                                       ; $530d: $ff
    rst $38                                       ; $530e: $ff
    rst $38                                       ; $530f: $ff
    nop                                           ; $5310: $00
    nop                                           ; $5311: $00
    nop                                           ; $5312: $00
    nop                                           ; $5313: $00
    nop                                           ; $5314: $00
    rrca                                          ; $5315: $0f
    di                                            ; $5316: $f3
    pop af                                        ; $5317: $f1
    ldh a, [rP1]                                  ; $5318: $f0 $00
    nop                                           ; $531a: $00
    nop                                           ; $531b: $00
    nop                                           ; $531c: $00
    rrca                                          ; $531d: $0f
    di                                            ; $531e: $f3
    pop af                                        ; $531f: $f1
    rra                                           ; $5320: $1f
    nop                                           ; $5321: $00
    nop                                           ; $5322: $00
    nop                                           ; $5323: $00
    nop                                           ; $5324: $00
    rrca                                          ; $5325: $0f
    di                                            ; $5326: $f3
    rst $38                                       ; $5327: $ff
    ldh a, [rP1]                                  ; $5328: $f0 $00
    nop                                           ; $532a: $00
    nop                                           ; $532b: $00
    nop                                           ; $532c: $00
    rrca                                          ; $532d: $0f
    rst $38                                       ; $532e: $ff
    rst $38                                       ; $532f: $ff
    nop                                           ; $5330: $00
    nop                                           ; $5331: $00
    nop                                           ; $5332: $00
    nop                                           ; $5333: $00
    nop                                           ; $5334: $00
    rrca                                          ; $5335: $0f
    rra                                           ; $5336: $1f
    rst $38                                       ; $5337: $ff
    ldh a, [rP1]                                  ; $5338: $f0 $00
    nop                                           ; $533a: $00
    nop                                           ; $533b: $00
    nop                                           ; $533c: $00
    rrca                                          ; $533d: $0f
    rra                                           ; $533e: $1f
    rst $38                                       ; $533f: $ff
    nop                                           ; $5340: $00
    nop                                           ; $5341: $00
    nop                                           ; $5342: $00
    nop                                           ; $5343: $00
    nop                                           ; $5344: $00
    rrca                                          ; $5345: $0f
    rra                                           ; $5346: $1f
    rra                                           ; $5347: $1f
    nop                                           ; $5348: $00
    nop                                           ; $5349: $00
    nop                                           ; $534a: $00
    nop                                           ; $534b: $00
    nop                                           ; $534c: $00
    rrca                                          ; $534d: $0f
    di                                            ; $534e: $f3
    pop af                                        ; $534f: $f1
    ldh a, [rP1]                                  ; $5350: $f0 $00
    nop                                           ; $5352: $00
    nop                                           ; $5353: $00
    nop                                           ; $5354: $00
    nop                                           ; $5355: $00
    rst $38                                       ; $5356: $ff
    rst $38                                       ; $5357: $ff
    ldh a, [rP1]                                  ; $5358: $f0 $00
    nop                                           ; $535a: $00
    nop                                           ; $535b: $00
    nop                                           ; $535c: $00
    nop                                           ; $535d: $00
    rst $38                                       ; $535e: $ff
    nop                                           ; $535f: $00
    nop                                           ; $5360: $00
    nop                                           ; $5361: $00
    nop                                           ; $5362: $00
    ld b, a                                       ; $5363: $47
    daa                                           ; $5364: $27
    jr z, jr_045_53af                             ; $5365: $28 $48

    ld d, [hl]                                    ; $5367: $56
    ld d, a                                       ; $5368: $57
    rst $38                                       ; $5369: $ff
    dec b                                         ; $536a: $05
    cp [hl]                                       ; $536b: $be
    ld e, h                                       ; $536c: $5c
    sub c                                         ; $536d: $91
    ld d, e                                       ; $536e: $53
    ld [hl+], a                                   ; $536f: $22
    ld d, h                                       ; $5370: $54
    xor h                                         ; $5371: $ac
    ld d, h                                       ; $5372: $54
    scf                                           ; $5373: $37
    ld d, l                                       ; $5374: $55
    cp a                                          ; $5375: $bf
    ld d, l                                       ; $5376: $55
    ld c, b                                       ; $5377: $48
    ld d, [hl]                                    ; $5378: $56
    push de                                       ; $5379: $d5
    ld d, [hl]                                    ; $537a: $56
    ld e, h                                       ; $537b: $5c
    ld d, a                                       ; $537c: $57
    xor $57                                       ; $537d: $ee $57
    ld [hl], a                                    ; $537f: $77
    ld e, b                                       ; $5380: $58
    nop                                           ; $5381: $00
    ld e, c                                       ; $5382: $59
    add l                                         ; $5383: $85
    ld e, c                                       ; $5384: $59
    rrca                                          ; $5385: $0f
    ld e, d                                       ; $5386: $5a
    sbc d                                         ; $5387: $9a
    ld e, d                                       ; $5388: $5a
    dec h                                         ; $5389: $25
    ld e, e                                       ; $538a: $5b
    xor l                                         ; $538b: $ad
    ld e, e                                       ; $538c: $5b
    jr c, jr_045_53eb                             ; $538d: $38 $5c

    cp [hl]                                       ; $538f: $be
    ld e, h                                       ; $5390: $5c
    nop                                           ; $5391: $00
    nop                                           ; $5392: $00
    nop                                           ; $5393: $00
    rrca                                          ; $5394: $0f
    ldh a, [rP1]                                  ; $5395: $f0 $00
    nop                                           ; $5397: $00
    nop                                           ; $5398: $00
    nop                                           ; $5399: $00
    nop                                           ; $539a: $00
    nop                                           ; $539b: $00
    rst $38                                       ; $539c: $ff
    ldh a, [rP1]                                  ; $539d: $f0 $00
    nop                                           ; $539f: $00
    nop                                           ; $53a0: $00
    nop                                           ; $53a1: $00
    nop                                           ; $53a2: $00
    nop                                           ; $53a3: $00
    rst $38                                       ; $53a4: $ff
    rst $38                                       ; $53a5: $ff
    nop                                           ; $53a6: $00
    nop                                           ; $53a7: $00
    nop                                           ; $53a8: $00
    nop                                           ; $53a9: $00
    nop                                           ; $53aa: $00
    nop                                           ; $53ab: $00
    rst $38                                       ; $53ac: $ff
    rst $38                                       ; $53ad: $ff
    nop                                           ; $53ae: $00

jr_045_53af:
    nop                                           ; $53af: $00
    nop                                           ; $53b0: $00
    nop                                           ; $53b1: $00
    nop                                           ; $53b2: $00
    rst $38                                       ; $53b3: $ff
    rst $38                                       ; $53b4: $ff
    rst $38                                       ; $53b5: $ff
    ldh a, [rP1]                                  ; $53b6: $f0 $00
    nop                                           ; $53b8: $00
    nop                                           ; $53b9: $00
    nop                                           ; $53ba: $00
    rst $38                                       ; $53bb: $ff
    rst $38                                       ; $53bc: $ff
    rst $38                                       ; $53bd: $ff
    nop                                           ; $53be: $00
    nop                                           ; $53bf: $00
    nop                                           ; $53c0: $00
    nop                                           ; $53c1: $00
    nop                                           ; $53c2: $00
    rst $38                                       ; $53c3: $ff
    ccf                                           ; $53c4: $3f
    rst $38                                       ; $53c5: $ff
    nop                                           ; $53c6: $00
    nop                                           ; $53c7: $00
    nop                                           ; $53c8: $00
    nop                                           ; $53c9: $00
    nop                                           ; $53ca: $00
    rrca                                          ; $53cb: $0f
    di                                            ; $53cc: $f3
    rst $38                                       ; $53cd: $ff
    nop                                           ; $53ce: $00
    nop                                           ; $53cf: $00
    nop                                           ; $53d0: $00
    nop                                           ; $53d1: $00
    nop                                           ; $53d2: $00
    rrca                                          ; $53d3: $0f
    di                                            ; $53d4: $f3
    rst $38                                       ; $53d5: $ff
    nop                                           ; $53d6: $00
    nop                                           ; $53d7: $00
    nop                                           ; $53d8: $00
    nop                                           ; $53d9: $00
    nop                                           ; $53da: $00
    rrca                                          ; $53db: $0f
    di                                            ; $53dc: $f3
    rst $38                                       ; $53dd: $ff
    nop                                           ; $53de: $00
    nop                                           ; $53df: $00
    nop                                           ; $53e0: $00
    nop                                           ; $53e1: $00
    nop                                           ; $53e2: $00
    rrca                                          ; $53e3: $0f
    di                                            ; $53e4: $f3
    rst $38                                       ; $53e5: $ff
    nop                                           ; $53e6: $00
    nop                                           ; $53e7: $00
    nop                                           ; $53e8: $00
    nop                                           ; $53e9: $00
    nop                                           ; $53ea: $00

jr_045_53eb:
    rrca                                          ; $53eb: $0f
    rst $38                                       ; $53ec: $ff
    rra                                           ; $53ed: $1f
    nop                                           ; $53ee: $00
    nop                                           ; $53ef: $00
    nop                                           ; $53f0: $00
    nop                                           ; $53f1: $00
    nop                                           ; $53f2: $00
    nop                                           ; $53f3: $00
    pop af                                        ; $53f4: $f1
    ldh a, [rP1]                                  ; $53f5: $f0 $00
    nop                                           ; $53f7: $00
    nop                                           ; $53f8: $00
    nop                                           ; $53f9: $00
    nop                                           ; $53fa: $00
    rrca                                          ; $53fb: $0f
    rst $38                                       ; $53fc: $ff
    rst $38                                       ; $53fd: $ff
    nop                                           ; $53fe: $00
    nop                                           ; $53ff: $00
    nop                                           ; $5400: $00
    nop                                           ; $5401: $00
    nop                                           ; $5402: $00
    rrca                                          ; $5403: $0f
    rst $38                                       ; $5404: $ff
    rst $38                                       ; $5405: $ff
    nop                                           ; $5406: $00
    nop                                           ; $5407: $00
    nop                                           ; $5408: $00
    nop                                           ; $5409: $00
    nop                                           ; $540a: $00
    nop                                           ; $540b: $00
    rst $38                                       ; $540c: $ff
    nop                                           ; $540d: $00
    nop                                           ; $540e: $00
    nop                                           ; $540f: $00
    nop                                           ; $5410: $00
    ld b, c                                       ; $5411: $41
    rla                                           ; $5412: $17
    jr jr_045_543b                                ; $5413: $18 $26

    scf                                           ; $5415: $37
    jr c, @+$48                                   ; $5416: $38 $46

    ld c, c                                       ; $5418: $49
    ld d, l                                       ; $5419: $55
    ld d, a                                       ; $541a: $57
    ld e, b                                       ; $541b: $58
    ld l, c                                       ; $541c: $69
    ld [hl], l                                    ; $541d: $75
    halt                                          ; $541e: $76
    ld a, b                                       ; $541f: $78
    rst $38                                       ; $5420: $ff
    ld c, $00                                     ; $5421: $0e $00
    nop                                           ; $5423: $00
    nop                                           ; $5424: $00
    nop                                           ; $5425: $00
    rst $38                                       ; $5426: $ff
    nop                                           ; $5427: $00
    nop                                           ; $5428: $00
    nop                                           ; $5429: $00
    nop                                           ; $542a: $00
    nop                                           ; $542b: $00
    nop                                           ; $542c: $00
    rrca                                          ; $542d: $0f
    rst $38                                       ; $542e: $ff
    ldh a, [rP1]                                  ; $542f: $f0 $00
    nop                                           ; $5431: $00
    nop                                           ; $5432: $00
    nop                                           ; $5433: $00
    nop                                           ; $5434: $00
    rrca                                          ; $5435: $0f
    rst $38                                       ; $5436: $ff
    rra                                           ; $5437: $1f
    nop                                           ; $5438: $00
    nop                                           ; $5439: $00
    nop                                           ; $543a: $00

jr_045_543b:
    nop                                           ; $543b: $00
    nop                                           ; $543c: $00
    rrca                                          ; $543d: $0f
    rst $38                                       ; $543e: $ff
    rra                                           ; $543f: $1f
    nop                                           ; $5440: $00
    nop                                           ; $5441: $00
    nop                                           ; $5442: $00
    nop                                           ; $5443: $00
    nop                                           ; $5444: $00
    rst $38                                       ; $5445: $ff
    rst $38                                       ; $5446: $ff
    ldh a, [rP1]                                  ; $5447: $f0 $00
    nop                                           ; $5449: $00
    nop                                           ; $544a: $00
    nop                                           ; $544b: $00
    rrca                                          ; $544c: $0f
    rst $38                                       ; $544d: $ff
    rst $38                                       ; $544e: $ff
    nop                                           ; $544f: $00
    nop                                           ; $5450: $00
    nop                                           ; $5451: $00
    nop                                           ; $5452: $00
    nop                                           ; $5453: $00
    rrca                                          ; $5454: $0f
    rst $38                                       ; $5455: $ff
    rst $38                                       ; $5456: $ff
    nop                                           ; $5457: $00
    nop                                           ; $5458: $00
    nop                                           ; $5459: $00
    nop                                           ; $545a: $00
    nop                                           ; $545b: $00
    ld bc, $1fff                                  ; $545c: $01 $ff $1f
    nop                                           ; $545f: $00
    nop                                           ; $5460: $00
    nop                                           ; $5461: $00
    nop                                           ; $5462: $00

Call_045_5463:
    nop                                           ; $5463: $00
    rrca                                          ; $5464: $0f
    rst $38                                       ; $5465: $ff
    rst $38                                       ; $5466: $ff
    nop                                           ; $5467: $00
    nop                                           ; $5468: $00
    nop                                           ; $5469: $00
    nop                                           ; $546a: $00
    nop                                           ; $546b: $00
    rrca                                          ; $546c: $0f
    rst $38                                       ; $546d: $ff
    ldh a, [rP1]                                  ; $546e: $f0 $00
    nop                                           ; $5470: $00
    nop                                           ; $5471: $00
    nop                                           ; $5472: $00
    nop                                           ; $5473: $00
    rrca                                          ; $5474: $0f
    rra                                           ; $5475: $1f
    rst $38                                       ; $5476: $ff
    nop                                           ; $5477: $00
    nop                                           ; $5478: $00
    nop                                           ; $5479: $00
    nop                                           ; $547a: $00
    nop                                           ; $547b: $00
    rrca                                          ; $547c: $0f
    rra                                           ; $547d: $1f
    rra                                           ; $547e: $1f
    nop                                           ; $547f: $00
    nop                                           ; $5480: $00
    nop                                           ; $5481: $00
    nop                                           ; $5482: $00
    nop                                           ; $5483: $00
    ld bc, $1f11                                  ; $5484: $01 $11 $1f
    nop                                           ; $5487: $00
    nop                                           ; $5488: $00
    nop                                           ; $5489: $00
    nop                                           ; $548a: $00
    nop                                           ; $548b: $00
    rrca                                          ; $548c: $0f
    rst $38                                       ; $548d: $ff
    rra                                           ; $548e: $1f
    nop                                           ; $548f: $00
    nop                                           ; $5490: $00
    nop                                           ; $5491: $00
    nop                                           ; $5492: $00
    nop                                           ; $5493: $00
    rrca                                          ; $5494: $0f
    rst $38                                       ; $5495: $ff
    ldh a, [rP1]                                  ; $5496: $f0 $00
    nop                                           ; $5498: $00
    nop                                           ; $5499: $00
    nop                                           ; $549a: $00
    nop                                           ; $549b: $00
    nop                                           ; $549c: $00
    rst $38                                       ; $549d: $ff
    nop                                           ; $549e: $00
    nop                                           ; $549f: $00
    nop                                           ; $54a0: $00
    nop                                           ; $54a1: $00
    dec sp                                        ; $54a2: $3b
    jr z, jr_045_54ce                             ; $54a3: $28 $29

    ld c, b                                       ; $54a5: $48
    ld c, c                                       ; $54a6: $49
    ld h, a                                       ; $54a7: $67
    ld l, b                                       ; $54a8: $68
    ld l, c                                       ; $54a9: $69
    rst $38                                       ; $54aa: $ff
    rlca                                          ; $54ab: $07
    nop                                           ; $54ac: $00
    nop                                           ; $54ad: $00
    rst $38                                       ; $54ae: $ff
    rrca                                          ; $54af: $0f
    nop                                           ; $54b0: $00
    nop                                           ; $54b1: $00
    nop                                           ; $54b2: $00
    nop                                           ; $54b3: $00
    nop                                           ; $54b4: $00
    rst $38                                       ; $54b5: $ff
    rst $38                                       ; $54b6: $ff
    rst $38                                       ; $54b7: $ff
    ldh a, [rP1]                                  ; $54b8: $f0 $00
    nop                                           ; $54ba: $00
    nop                                           ; $54bb: $00
    nop                                           ; $54bc: $00
    rst $38                                       ; $54bd: $ff
    rst $38                                       ; $54be: $ff
    rra                                           ; $54bf: $1f
    rra                                           ; $54c0: $1f
    nop                                           ; $54c1: $00
    nop                                           ; $54c2: $00
    nop                                           ; $54c3: $00
    nop                                           ; $54c4: $00
    rst $38                                       ; $54c5: $ff
    rst $38                                       ; $54c6: $ff
    rst $38                                       ; $54c7: $ff
    rst $38                                       ; $54c8: $ff
    ldh a, [rP1]                                  ; $54c9: $f0 $00
    nop                                           ; $54cb: $00
    nop                                           ; $54cc: $00
    nop                                           ; $54cd: $00

jr_045_54ce:
    rrca                                          ; $54ce: $0f
    rst $38                                       ; $54cf: $ff
    pop af                                        ; $54d0: $f1
    ldh a, [rP1]                                  ; $54d1: $f0 $00
    nop                                           ; $54d3: $00
    nop                                           ; $54d4: $00
    nop                                           ; $54d5: $00
    nop                                           ; $54d6: $00
    rst $38                                       ; $54d7: $ff
    rst $38                                       ; $54d8: $ff
    ldh a, [rP1]                                  ; $54d9: $f0 $00
    nop                                           ; $54db: $00
    nop                                           ; $54dc: $00
    nop                                           ; $54dd: $00
    nop                                           ; $54de: $00
    rst $38                                       ; $54df: $ff
    rra                                           ; $54e0: $1f
    nop                                           ; $54e1: $00
    nop                                           ; $54e2: $00
    nop                                           ; $54e3: $00
    nop                                           ; $54e4: $00
    nop                                           ; $54e5: $00
    nop                                           ; $54e6: $00
    rst $38                                       ; $54e7: $ff
    rst $38                                       ; $54e8: $ff
    nop                                           ; $54e9: $00
    nop                                           ; $54ea: $00
    nop                                           ; $54eb: $00
    nop                                           ; $54ec: $00
    nop                                           ; $54ed: $00
    nop                                           ; $54ee: $00
    rst $38                                       ; $54ef: $ff
    rst $38                                       ; $54f0: $ff
    ldh a, [rP1]                                  ; $54f1: $f0 $00
    nop                                           ; $54f3: $00
    nop                                           ; $54f4: $00
    nop                                           ; $54f5: $00
    rrca                                          ; $54f6: $0f
    rst $38                                       ; $54f7: $ff
    pop af                                        ; $54f8: $f1
    ldh a, [rP1]                                  ; $54f9: $f0 $00
    nop                                           ; $54fb: $00
    nop                                           ; $54fc: $00
    nop                                           ; $54fd: $00
    rrca                                          ; $54fe: $0f
    rra                                           ; $54ff: $1f
    rst $38                                       ; $5500: $ff
    rst $38                                       ; $5501: $ff
    ldh a, [rP1]                                  ; $5502: $f0 $00
    nop                                           ; $5504: $00
    nop                                           ; $5505: $00
    nop                                           ; $5506: $00
    rst $38                                       ; $5507: $ff
    rst $38                                       ; $5508: $ff
    pop af                                        ; $5509: $f1
    ldh a, [rP1]                                  ; $550a: $f0 $00
    nop                                           ; $550c: $00
    nop                                           ; $550d: $00
    nop                                           ; $550e: $00
    rst $38                                       ; $550f: $ff
    rra                                           ; $5510: $1f
    rst $38                                       ; $5511: $ff
    rst $38                                       ; $5512: $ff
    nop                                           ; $5513: $00
    nop                                           ; $5514: $00
    nop                                           ; $5515: $00
    nop                                           ; $5516: $00
    nop                                           ; $5517: $00
    ldh a, [rIE]                                  ; $5518: $f0 $ff
    rst $38                                       ; $551a: $ff
    ldh a, [rP1]                                  ; $551b: $f0 $00
    nop                                           ; $551d: $00
    nop                                           ; $551e: $00
    nop                                           ; $551f: $00
    nop                                           ; $5520: $00
    rst $38                                       ; $5521: $ff
    rst $38                                       ; $5522: $ff
    nop                                           ; $5523: $00
    nop                                           ; $5524: $00
    nop                                           ; $5525: $00
    nop                                           ; $5526: $00
    nop                                           ; $5527: $00
    nop                                           ; $5528: $00
    rrca                                          ; $5529: $0f
    ldh a, [rP1]                                  ; $552a: $f0 $00
    ld d, h                                       ; $552c: $54
    inc hl                                        ; $552d: $23
    inc h                                         ; $552e: $24
    scf                                           ; $552f: $37
    jr c, jr_045_5578                             ; $5530: $38 $46

    ld d, a                                       ; $5532: $57
    ld e, b                                       ; $5533: $58
    ld [hl], a                                    ; $5534: $77
    rst $38                                       ; $5535: $ff
    ld [$0000], sp                                ; $5536: $08 $00 $00
    nop                                           ; $5539: $00
    nop                                           ; $553a: $00
    nop                                           ; $553b: $00
    nop                                           ; $553c: $00
    nop                                           ; $553d: $00
    nop                                           ; $553e: $00
    nop                                           ; $553f: $00
    nop                                           ; $5540: $00
    nop                                           ; $5541: $00
    nop                                           ; $5542: $00
    nop                                           ; $5543: $00
    nop                                           ; $5544: $00
    nop                                           ; $5545: $00
    nop                                           ; $5546: $00
    nop                                           ; $5547: $00
    nop                                           ; $5548: $00
    nop                                           ; $5549: $00
    nop                                           ; $554a: $00
    nop                                           ; $554b: $00
    nop                                           ; $554c: $00
    nop                                           ; $554d: $00
    nop                                           ; $554e: $00
    nop                                           ; $554f: $00
    nop                                           ; $5550: $00
    nop                                           ; $5551: $00
    rrca                                          ; $5552: $0f
    rst $38                                       ; $5553: $ff
    nop                                           ; $5554: $00
    nop                                           ; $5555: $00
    nop                                           ; $5556: $00
    nop                                           ; $5557: $00
    nop                                           ; $5558: $00
    rrca                                          ; $5559: $0f
    rst $38                                       ; $555a: $ff
    pop af                                        ; $555b: $f1
    ldh a, [rP1]                                  ; $555c: $f0 $00
    nop                                           ; $555e: $00
    nop                                           ; $555f: $00
    nop                                           ; $5560: $00
    rrca                                          ; $5561: $0f
    rst $38                                       ; $5562: $ff
    rst $38                                       ; $5563: $ff
    rra                                           ; $5564: $1f
    nop                                           ; $5565: $00
    nop                                           ; $5566: $00
    nop                                           ; $5567: $00
    nop                                           ; $5568: $00
    nop                                           ; $5569: $00
    rst $38                                       ; $556a: $ff
    pop af                                        ; $556b: $f1
    rst $38                                       ; $556c: $ff
    nop                                           ; $556d: $00
    nop                                           ; $556e: $00
    nop                                           ; $556f: $00
    nop                                           ; $5570: $00
    nop                                           ; $5571: $00
    rst $38                                       ; $5572: $ff
    rst $38                                       ; $5573: $ff
    ldh a, [rP1]                                  ; $5574: $f0 $00
    nop                                           ; $5576: $00
    nop                                           ; $5577: $00

jr_045_5578:
    nop                                           ; $5578: $00
    rrca                                          ; $5579: $0f
    rst $38                                       ; $557a: $ff
    rst $38                                       ; $557b: $ff
    ldh a, [rP1]                                  ; $557c: $f0 $00
    nop                                           ; $557e: $00
    nop                                           ; $557f: $00
    nop                                           ; $5580: $00
    rrca                                          ; $5581: $0f
    di                                            ; $5582: $f3
    ccf                                           ; $5583: $3f
    rst $38                                       ; $5584: $ff
    nop                                           ; $5585: $00
    nop                                           ; $5586: $00
    nop                                           ; $5587: $00
    nop                                           ; $5588: $00
    rrca                                          ; $5589: $0f
    rra                                           ; $558a: $1f
    pop af                                        ; $558b: $f1
    rst $38                                       ; $558c: $ff
    nop                                           ; $558d: $00
    nop                                           ; $558e: $00
    nop                                           ; $558f: $00
    nop                                           ; $5590: $00
    rrca                                          ; $5591: $0f
    pop af                                        ; $5592: $f1
    rra                                           ; $5593: $1f
    ldh a, [rP1]                                  ; $5594: $f0 $00
    nop                                           ; $5596: $00
    nop                                           ; $5597: $00
    nop                                           ; $5598: $00
    nop                                           ; $5599: $00
    rst $38                                       ; $559a: $ff
    rst $38                                       ; $559b: $ff
    nop                                           ; $559c: $00
    nop                                           ; $559d: $00
    nop                                           ; $559e: $00
    nop                                           ; $559f: $00
    nop                                           ; $55a0: $00
    nop                                           ; $55a1: $00
    rrca                                          ; $55a2: $0f
    ldh a, [rP1]                                  ; $55a3: $f0 $00
    nop                                           ; $55a5: $00
    nop                                           ; $55a6: $00
    nop                                           ; $55a7: $00
    nop                                           ; $55a8: $00
    nop                                           ; $55a9: $00
    nop                                           ; $55aa: $00
    nop                                           ; $55ab: $00
    nop                                           ; $55ac: $00
    nop                                           ; $55ad: $00
    nop                                           ; $55ae: $00
    nop                                           ; $55af: $00
    nop                                           ; $55b0: $00
    nop                                           ; $55b1: $00
    nop                                           ; $55b2: $00
    nop                                           ; $55b3: $00
    nop                                           ; $55b4: $00
    nop                                           ; $55b5: $00
    nop                                           ; $55b6: $00
    ld [hl-], a                                   ; $55b7: $32
    ld b, a                                       ; $55b8: $47
    ld c, b                                       ; $55b9: $48
    ld d, [hl]                                    ; $55ba: $56
    ld h, a                                       ; $55bb: $67
    ld l, b                                       ; $55bc: $68
    rst $38                                       ; $55bd: $ff
    dec b                                         ; $55be: $05
    nop                                           ; $55bf: $00
    nop                                           ; $55c0: $00
    nop                                           ; $55c1: $00
    nop                                           ; $55c2: $00
    rst $38                                       ; $55c3: $ff
    ldh a, [rP1]                                  ; $55c4: $f0 $00
    nop                                           ; $55c6: $00
    nop                                           ; $55c7: $00
    nop                                           ; $55c8: $00
    nop                                           ; $55c9: $00
    rst $38                                       ; $55ca: $ff
    rst $38                                       ; $55cb: $ff
    rst $38                                       ; $55cc: $ff
    nop                                           ; $55cd: $00
    nop                                           ; $55ce: $00
    nop                                           ; $55cf: $00
    nop                                           ; $55d0: $00
    nop                                           ; $55d1: $00
    rst $38                                       ; $55d2: $ff
    rst $38                                       ; $55d3: $ff
    rst $38                                       ; $55d4: $ff
    nop                                           ; $55d5: $00
    nop                                           ; $55d6: $00
    nop                                           ; $55d7: $00
    nop                                           ; $55d8: $00
    rst $38                                       ; $55d9: $ff
    rst $38                                       ; $55da: $ff
    rst $38                                       ; $55db: $ff
    ldh a, [rP1]                                  ; $55dc: $f0 $00
    nop                                           ; $55de: $00
    nop                                           ; $55df: $00
    nop                                           ; $55e0: $00
    pop af                                        ; $55e1: $f1
    rst $38                                       ; $55e2: $ff
    rst $38                                       ; $55e3: $ff
    nop                                           ; $55e4: $00
    nop                                           ; $55e5: $00
    nop                                           ; $55e6: $00
    nop                                           ; $55e7: $00
    nop                                           ; $55e8: $00
    pop af                                        ; $55e9: $f1
    rst $38                                       ; $55ea: $ff
    ldh a, [rP1]                                  ; $55eb: $f0 $00
    nop                                           ; $55ed: $00
    nop                                           ; $55ee: $00
    nop                                           ; $55ef: $00
    nop                                           ; $55f0: $00
    rst $38                                       ; $55f1: $ff
    pop af                                        ; $55f2: $f1
    ldh a, [rP1]                                  ; $55f3: $f0 $00
    nop                                           ; $55f5: $00
    nop                                           ; $55f6: $00
    nop                                           ; $55f7: $00
    nop                                           ; $55f8: $00
    rst $38                                       ; $55f9: $ff
    rst $38                                       ; $55fa: $ff
    ldh a, [rP1]                                  ; $55fb: $f0 $00
    nop                                           ; $55fd: $00
    nop                                           ; $55fe: $00
    nop                                           ; $55ff: $00
    nop                                           ; $5600: $00
    rst $38                                       ; $5601: $ff
    rst $38                                       ; $5602: $ff
    nop                                           ; $5603: $00
    nop                                           ; $5604: $00
    nop                                           ; $5605: $00
    nop                                           ; $5606: $00
    nop                                           ; $5607: $00
    nop                                           ; $5608: $00
    rst $38                                       ; $5609: $ff
    ccf                                           ; $560a: $3f
    ldh a, [rP1]                                  ; $560b: $f0 $00
    nop                                           ; $560d: $00
    nop                                           ; $560e: $00
    nop                                           ; $560f: $00
    nop                                           ; $5610: $00
    rrca                                          ; $5611: $0f
    pop af                                        ; $5612: $f1
    ldh a, [rP1]                                  ; $5613: $f0 $00
    nop                                           ; $5615: $00
    nop                                           ; $5616: $00
    nop                                           ; $5617: $00
    nop                                           ; $5618: $00
    rrca                                          ; $5619: $0f
    pop af                                        ; $561a: $f1
    rst $38                                       ; $561b: $ff
    nop                                           ; $561c: $00
    nop                                           ; $561d: $00
    nop                                           ; $561e: $00
    nop                                           ; $561f: $00
    nop                                           ; $5620: $00
    nop                                           ; $5621: $00
    rst $38                                       ; $5622: $ff
    rst $38                                       ; $5623: $ff
    nop                                           ; $5624: $00
    nop                                           ; $5625: $00
    nop                                           ; $5626: $00
    nop                                           ; $5627: $00
    nop                                           ; $5628: $00
    nop                                           ; $5629: $00
    di                                            ; $562a: $f3
    ccf                                           ; $562b: $3f
    nop                                           ; $562c: $00
    nop                                           ; $562d: $00
    nop                                           ; $562e: $00
    nop                                           ; $562f: $00
    nop                                           ; $5630: $00
    nop                                           ; $5631: $00
    rst $38                                       ; $5632: $ff
    rst $38                                       ; $5633: $ff
    nop                                           ; $5634: $00
    nop                                           ; $5635: $00
    nop                                           ; $5636: $00
    nop                                           ; $5637: $00
    nop                                           ; $5638: $00
    nop                                           ; $5639: $00
    nop                                           ; $563a: $00
    nop                                           ; $563b: $00
    nop                                           ; $563c: $00
    nop                                           ; $563d: $00
    nop                                           ; $563e: $00
    ld b, c                                       ; $563f: $41
    add hl, de                                    ; $5640: $19
    ld a, [de]                                    ; $5641: $1a
    daa                                           ; $5642: $27
    jr z, jr_045_568b                             ; $5643: $28 $46

    ld h, l                                       ; $5645: $65
    rst $38                                       ; $5646: $ff
    ld b, $00                                     ; $5647: $06 $00
    nop                                           ; $5649: $00
    nop                                           ; $564a: $00
    nop                                           ; $564b: $00
    nop                                           ; $564c: $00
    nop                                           ; $564d: $00
    nop                                           ; $564e: $00
    nop                                           ; $564f: $00
    nop                                           ; $5650: $00
    nop                                           ; $5651: $00
    rrca                                          ; $5652: $0f
    ldh a, [rP1]                                  ; $5653: $f0 $00
    nop                                           ; $5655: $00
    nop                                           ; $5656: $00
    nop                                           ; $5657: $00
    nop                                           ; $5658: $00
    nop                                           ; $5659: $00
    rrca                                          ; $565a: $0f
    rst $38                                       ; $565b: $ff
    rst $38                                       ; $565c: $ff
    nop                                           ; $565d: $00
    nop                                           ; $565e: $00
    nop                                           ; $565f: $00
    nop                                           ; $5660: $00
    nop                                           ; $5661: $00
    rrca                                          ; $5662: $0f
    rst $38                                       ; $5663: $ff
    rst $38                                       ; $5664: $ff
    ldh a, [rP1]                                  ; $5665: $f0 $00
    nop                                           ; $5667: $00
    nop                                           ; $5668: $00
    nop                                           ; $5669: $00
    rrca                                          ; $566a: $0f
    rst $38                                       ; $566b: $ff
    rst $38                                       ; $566c: $ff
    ldh a, [rP1]                                  ; $566d: $f0 $00
    nop                                           ; $566f: $00
    nop                                           ; $5670: $00
    nop                                           ; $5671: $00
    nop                                           ; $5672: $00
    rrca                                          ; $5673: $0f
    inc sp                                        ; $5674: $33
    ldh a, [rP1]                                  ; $5675: $f0 $00
    nop                                           ; $5677: $00
    nop                                           ; $5678: $00
    nop                                           ; $5679: $00
    nop                                           ; $567a: $00
    rrca                                          ; $567b: $0f
    rst $38                                       ; $567c: $ff
    ldh a, [rP1]                                  ; $567d: $f0 $00
    nop                                           ; $567f: $00
    nop                                           ; $5680: $00
    nop                                           ; $5681: $00
    nop                                           ; $5682: $00
    rrca                                          ; $5683: $0f
    ccf                                           ; $5684: $3f
    ldh a, [rP1]                                  ; $5685: $f0 $00
    nop                                           ; $5687: $00
    nop                                           ; $5688: $00
    nop                                           ; $5689: $00
    rrca                                          ; $568a: $0f

jr_045_568b:
    rst $38                                       ; $568b: $ff
    ccf                                           ; $568c: $3f
    ldh a, [rP1]                                  ; $568d: $f0 $00
    nop                                           ; $568f: $00
    nop                                           ; $5690: $00
    nop                                           ; $5691: $00
    rrca                                          ; $5692: $0f
    rra                                           ; $5693: $1f
    rst $38                                       ; $5694: $ff
    ldh a, [rP1]                                  ; $5695: $f0 $00
    nop                                           ; $5697: $00
    nop                                           ; $5698: $00
    nop                                           ; $5699: $00
    rrca                                          ; $569a: $0f
    rst $38                                       ; $569b: $ff
    rst $38                                       ; $569c: $ff
    nop                                           ; $569d: $00
    nop                                           ; $569e: $00
    nop                                           ; $569f: $00
    nop                                           ; $56a0: $00
    nop                                           ; $56a1: $00
    nop                                           ; $56a2: $00
    rst $38                                       ; $56a3: $ff
    rra                                           ; $56a4: $1f
    nop                                           ; $56a5: $00
    nop                                           ; $56a6: $00
    nop                                           ; $56a7: $00
    nop                                           ; $56a8: $00
    nop                                           ; $56a9: $00
    rrca                                          ; $56aa: $0f
    rst $38                                       ; $56ab: $ff
    rra                                           ; $56ac: $1f
    nop                                           ; $56ad: $00
    nop                                           ; $56ae: $00
    nop                                           ; $56af: $00
    nop                                           ; $56b0: $00
    nop                                           ; $56b1: $00
    rrca                                          ; $56b2: $0f
    di                                            ; $56b3: $f3
    rst $38                                       ; $56b4: $ff
    nop                                           ; $56b5: $00
    nop                                           ; $56b6: $00
    nop                                           ; $56b7: $00
    nop                                           ; $56b8: $00
    nop                                           ; $56b9: $00
    rrca                                          ; $56ba: $0f
    rst $38                                       ; $56bb: $ff
    ldh a, [rP1]                                  ; $56bc: $f0 $00
    nop                                           ; $56be: $00
    nop                                           ; $56bf: $00
    nop                                           ; $56c0: $00
    nop                                           ; $56c1: $00
    nop                                           ; $56c2: $00
    rst $38                                       ; $56c3: $ff
    nop                                           ; $56c4: $00
    nop                                           ; $56c5: $00
    nop                                           ; $56c6: $00
    nop                                           ; $56c7: $00
    inc a                                         ; $56c8: $3c
    dec d                                         ; $56c9: $15
    ld d, $36                                     ; $56ca: $16 $36
    scf                                           ; $56cc: $37
    ld c, c                                       ; $56cd: $49
    ld c, d                                       ; $56ce: $4a
    ld d, a                                       ; $56cf: $57
    ld l, b                                       ; $56d0: $68
    ld l, c                                       ; $56d1: $69
    ld l, d                                       ; $56d2: $6a
    rst $38                                       ; $56d3: $ff
    ld a, [bc]                                    ; $56d4: $0a
    nop                                           ; $56d5: $00
    nop                                           ; $56d6: $00
    nop                                           ; $56d7: $00
    rrca                                          ; $56d8: $0f
    rst $38                                       ; $56d9: $ff
    nop                                           ; $56da: $00
    nop                                           ; $56db: $00
    nop                                           ; $56dc: $00
    nop                                           ; $56dd: $00
    nop                                           ; $56de: $00
    nop                                           ; $56df: $00
    rrca                                          ; $56e0: $0f
    rst $38                                       ; $56e1: $ff
    nop                                           ; $56e2: $00
    nop                                           ; $56e3: $00
    nop                                           ; $56e4: $00
    nop                                           ; $56e5: $00
    nop                                           ; $56e6: $00
    nop                                           ; $56e7: $00
    rrca                                          ; $56e8: $0f
    rst $38                                       ; $56e9: $ff
    ldh a, [rP1]                                  ; $56ea: $f0 $00
    nop                                           ; $56ec: $00
    nop                                           ; $56ed: $00
    nop                                           ; $56ee: $00
    nop                                           ; $56ef: $00
    rst $38                                       ; $56f0: $ff
    pop af                                        ; $56f1: $f1
    ldh a, [rP1]                                  ; $56f2: $f0 $00
    nop                                           ; $56f4: $00
    nop                                           ; $56f5: $00
    nop                                           ; $56f6: $00
    rrca                                          ; $56f7: $0f
    rst $38                                       ; $56f8: $ff
    pop af                                        ; $56f9: $f1
    ldh a, [rP1]                                  ; $56fa: $f0 $00
    nop                                           ; $56fc: $00
    nop                                           ; $56fd: $00
    nop                                           ; $56fe: $00
    rrca                                          ; $56ff: $0f
    rst $38                                       ; $5700: $ff
    rst $38                                       ; $5701: $ff
    nop                                           ; $5702: $00
    nop                                           ; $5703: $00
    nop                                           ; $5704: $00
    nop                                           ; $5705: $00
    nop                                           ; $5706: $00
    rrca                                          ; $5707: $0f
    rst $38                                       ; $5708: $ff
    ldh a, [rP1]                                  ; $5709: $f0 $00
    nop                                           ; $570b: $00
    nop                                           ; $570c: $00
    nop                                           ; $570d: $00
    nop                                           ; $570e: $00
    rrca                                          ; $570f: $0f
    di                                            ; $5710: $f3
    rst $38                                       ; $5711: $ff
    ldh a, [rP1]                                  ; $5712: $f0 $00
    nop                                           ; $5714: $00
    nop                                           ; $5715: $00
    nop                                           ; $5716: $00
    rrca                                          ; $5717: $0f
    di                                            ; $5718: $f3
    pop af                                        ; $5719: $f1
    ldh a, [rP1]                                  ; $571a: $f0 $00
    nop                                           ; $571c: $00
    nop                                           ; $571d: $00
    nop                                           ; $571e: $00
    nop                                           ; $571f: $00
    rra                                           ; $5720: $1f
    pop af                                        ; $5721: $f1
    ldh a, [rP1]                                  ; $5722: $f0 $00
    nop                                           ; $5724: $00
    nop                                           ; $5725: $00
    nop                                           ; $5726: $00
    nop                                           ; $5727: $00
    rst $38                                       ; $5728: $ff
    ccf                                           ; $5729: $3f
    ldh a, [rP1]                                  ; $572a: $f0 $00
    nop                                           ; $572c: $00
    nop                                           ; $572d: $00
    nop                                           ; $572e: $00
    nop                                           ; $572f: $00
    pop af                                        ; $5730: $f1
    pop af                                        ; $5731: $f1
    ldh a, [rP1]                                  ; $5732: $f0 $00
    nop                                           ; $5734: $00
    nop                                           ; $5735: $00
    nop                                           ; $5736: $00
    nop                                           ; $5737: $00
    pop af                                        ; $5738: $f1
    rra                                           ; $5739: $1f
    ldh a, [rP1]                                  ; $573a: $f0 $00
    nop                                           ; $573c: $00
    nop                                           ; $573d: $00
    nop                                           ; $573e: $00
    nop                                           ; $573f: $00
    rst $38                                       ; $5740: $ff
    rst $38                                       ; $5741: $ff
    ldh a, [rP1]                                  ; $5742: $f0 $00
    nop                                           ; $5744: $00
    nop                                           ; $5745: $00
    nop                                           ; $5746: $00
    nop                                           ; $5747: $00
    rst $38                                       ; $5748: $ff
    rst $38                                       ; $5749: $ff
    nop                                           ; $574a: $00
    nop                                           ; $574b: $00
    nop                                           ; $574c: $00
    nop                                           ; $574d: $00
    nop                                           ; $574e: $00
    nop                                           ; $574f: $00
    rrca                                          ; $5750: $0f
    rst $38                                       ; $5751: $ff
    nop                                           ; $5752: $00
    nop                                           ; $5753: $00
    nop                                           ; $5754: $00
    ld a, $17                                     ; $5755: $3e $17
    jr jr_045_5772                                ; $5757: $18 $19

    ld a, b                                       ; $5759: $78
    rst $38                                       ; $575a: $ff
    inc b                                         ; $575b: $04
    nop                                           ; $575c: $00
    nop                                           ; $575d: $00
    nop                                           ; $575e: $00
    nop                                           ; $575f: $00
    nop                                           ; $5760: $00
    nop                                           ; $5761: $00
    nop                                           ; $5762: $00
    nop                                           ; $5763: $00
    nop                                           ; $5764: $00
    nop                                           ; $5765: $00
    nop                                           ; $5766: $00
    nop                                           ; $5767: $00
    nop                                           ; $5768: $00
    nop                                           ; $5769: $00
    nop                                           ; $576a: $00
    nop                                           ; $576b: $00
    nop                                           ; $576c: $00
    nop                                           ; $576d: $00
    nop                                           ; $576e: $00
    nop                                           ; $576f: $00
    ldh a, [rP1]                                  ; $5770: $f0 $00

jr_045_5772:
    nop                                           ; $5772: $00
    nop                                           ; $5773: $00
    nop                                           ; $5774: $00
    nop                                           ; $5775: $00
    nop                                           ; $5776: $00
    rst $38                                       ; $5777: $ff
    rst $38                                       ; $5778: $ff
    nop                                           ; $5779: $00
    nop                                           ; $577a: $00
    nop                                           ; $577b: $00
    nop                                           ; $577c: $00
    nop                                           ; $577d: $00
    nop                                           ; $577e: $00
    rst $38                                       ; $577f: $ff
    rst $38                                       ; $5780: $ff
    nop                                           ; $5781: $00
    nop                                           ; $5782: $00
    nop                                           ; $5783: $00
    nop                                           ; $5784: $00
    nop                                           ; $5785: $00
    rrca                                          ; $5786: $0f
    rst $38                                       ; $5787: $ff
    pop af                                        ; $5788: $f1
    ldh a, [rP1]                                  ; $5789: $f0 $00
    nop                                           ; $578b: $00
    nop                                           ; $578c: $00
    nop                                           ; $578d: $00
    rrca                                          ; $578e: $0f
    rst $38                                       ; $578f: $ff
    rst $38                                       ; $5790: $ff
    rst $38                                       ; $5791: $ff
    nop                                           ; $5792: $00
    nop                                           ; $5793: $00
    nop                                           ; $5794: $00
    nop                                           ; $5795: $00
    rrca                                          ; $5796: $0f
    rst $38                                       ; $5797: $ff
    rst $38                                       ; $5798: $ff
    rst $38                                       ; $5799: $ff
    nop                                           ; $579a: $00
    nop                                           ; $579b: $00
    nop                                           ; $579c: $00
    nop                                           ; $579d: $00
    rrca                                          ; $579e: $0f
    ldh a, [rIE]                                  ; $579f: $f0 $ff
    ldh a, [rP1]                                  ; $57a1: $f0 $00
    nop                                           ; $57a3: $00
    nop                                           ; $57a4: $00
    nop                                           ; $57a5: $00
    rrca                                          ; $57a6: $0f
    rst $38                                       ; $57a7: $ff
    rst $38                                       ; $57a8: $ff
    nop                                           ; $57a9: $00
    nop                                           ; $57aa: $00
    nop                                           ; $57ab: $00
    nop                                           ; $57ac: $00
    nop                                           ; $57ad: $00
    nop                                           ; $57ae: $00
    rst $38                                       ; $57af: $ff
    rst $38                                       ; $57b0: $ff
    nop                                           ; $57b1: $00
    nop                                           ; $57b2: $00
    nop                                           ; $57b3: $00
    nop                                           ; $57b4: $00
    nop                                           ; $57b5: $00
    nop                                           ; $57b6: $00
    rst $38                                       ; $57b7: $ff
    ldh a, [rP1]                                  ; $57b8: $f0 $00
    nop                                           ; $57ba: $00
    nop                                           ; $57bb: $00
    nop                                           ; $57bc: $00
    nop                                           ; $57bd: $00
    nop                                           ; $57be: $00
    rrca                                          ; $57bf: $0f
    nop                                           ; $57c0: $00
    nop                                           ; $57c1: $00
    nop                                           ; $57c2: $00
    nop                                           ; $57c3: $00
    nop                                           ; $57c4: $00
    nop                                           ; $57c5: $00
    nop                                           ; $57c6: $00
    nop                                           ; $57c7: $00
    nop                                           ; $57c8: $00
    nop                                           ; $57c9: $00
    nop                                           ; $57ca: $00
    nop                                           ; $57cb: $00
    nop                                           ; $57cc: $00
    nop                                           ; $57cd: $00
    nop                                           ; $57ce: $00
    nop                                           ; $57cf: $00
    nop                                           ; $57d0: $00
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
    ld l, $37                                     ; $57dc: $2e $37
    jr c, jr_045_5837                             ; $57de: $38 $57

    ld e, b                                       ; $57e0: $58
    ld h, l                                       ; $57e1: $65
    ld h, [hl]                                    ; $57e2: $66
    ld l, c                                       ; $57e3: $69
    ld l, d                                       ; $57e4: $6a
    ld [hl], a                                    ; $57e5: $77
    ld a, b                                       ; $57e6: $78
    add l                                         ; $57e7: $85
    add [hl]                                      ; $57e8: $86
    adc c                                         ; $57e9: $89
    adc d                                         ; $57ea: $8a
    sub a                                         ; $57eb: $97
    rst $38                                       ; $57ec: $ff
    rrca                                          ; $57ed: $0f
    nop                                           ; $57ee: $00
    nop                                           ; $57ef: $00
    nop                                           ; $57f0: $00
    nop                                           ; $57f1: $00
    rst $38                                       ; $57f2: $ff
    nop                                           ; $57f3: $00
    nop                                           ; $57f4: $00
    nop                                           ; $57f5: $00
    nop                                           ; $57f6: $00
    nop                                           ; $57f7: $00
    rrca                                          ; $57f8: $0f
    rst $38                                       ; $57f9: $ff
    pop af                                        ; $57fa: $f1
    ldh a, [rP1]                                  ; $57fb: $f0 $00
    nop                                           ; $57fd: $00
    nop                                           ; $57fe: $00
    nop                                           ; $57ff: $00
    pop af                                        ; $5800: $f1
    rra                                           ; $5801: $1f
    rst $38                                       ; $5802: $ff
    ldh a, [rP1]                                  ; $5803: $f0 $00
    nop                                           ; $5805: $00
    nop                                           ; $5806: $00
    nop                                           ; $5807: $00
    rst $38                                       ; $5808: $ff
    rst $38                                       ; $5809: $ff
    rst $38                                       ; $580a: $ff
    rst $38                                       ; $580b: $ff
    ldh a, [rP1]                                  ; $580c: $f0 $00
    nop                                           ; $580e: $00
    rrca                                          ; $580f: $0f
    di                                            ; $5810: $f3
    rst $38                                       ; $5811: $ff
    ld [hl+], a                                   ; $5812: $22
    cpl                                           ; $5813: $2f
    ldh a, [rP1]                                  ; $5814: $f0 $00
    nop                                           ; $5816: $00
    rrca                                          ; $5817: $0f
    di                                            ; $5818: $f3
    ld a, [c]                                     ; $5819: $f2
    rst $38                                       ; $581a: $ff
    cpl                                           ; $581b: $2f
    ldh a, [rP1]                                  ; $581c: $f0 $00
    nop                                           ; $581e: $00
    rrca                                          ; $581f: $0f
    di                                            ; $5820: $f3
    ld a, [c]                                     ; $5821: $f2
    rst $38                                       ; $5822: $ff
    rst $38                                       ; $5823: $ff
    ldh a, [rP1]                                  ; $5824: $f0 $00
    nop                                           ; $5826: $00
    nop                                           ; $5827: $00
    rst $38                                       ; $5828: $ff
    ld a, [c]                                     ; $5829: $f2
    rst $38                                       ; $582a: $ff
    rst $38                                       ; $582b: $ff
    ldh a, [rP1]                                  ; $582c: $f0 $00
    nop                                           ; $582e: $00
    nop                                           ; $582f: $00
    rst $38                                       ; $5830: $ff
    rst $38                                       ; $5831: $ff
    ld [hl+], a                                   ; $5832: $22
    rst $38                                       ; $5833: $ff
    ldh a, [rP1]                                  ; $5834: $f0 $00
    nop                                           ; $5836: $00

jr_045_5837:
    nop                                           ; $5837: $00
    rst $38                                       ; $5838: $ff
    rst $38                                       ; $5839: $ff
    ld [hl+], a                                   ; $583a: $22
    cpl                                           ; $583b: $2f
    ldh a, [rP1]                                  ; $583c: $f0 $00
    nop                                           ; $583e: $00
    nop                                           ; $583f: $00
    rst $38                                       ; $5840: $ff
    ccf                                           ; $5841: $3f
    rst $38                                       ; $5842: $ff
    rst $38                                       ; $5843: $ff
    ldh a, [rP1]                                  ; $5844: $f0 $00
    nop                                           ; $5846: $00
    nop                                           ; $5847: $00
    rst $38                                       ; $5848: $ff
    rst $38                                       ; $5849: $ff
    rst $38                                       ; $584a: $ff
    rst $38                                       ; $584b: $ff
    nop                                           ; $584c: $00
    nop                                           ; $584d: $00
    nop                                           ; $584e: $00
    nop                                           ; $584f: $00
    rrca                                          ; $5850: $0f
    rst $38                                       ; $5851: $ff
    rst $38                                       ; $5852: $ff
    rst $38                                       ; $5853: $ff
    nop                                           ; $5854: $00
    nop                                           ; $5855: $00
    nop                                           ; $5856: $00

Jump_045_5857:
    nop                                           ; $5857: $00
    nop                                           ; $5858: $00
    ld bc, $ff1f                                  ; $5859: $01 $1f $ff
    ldh a, [rP1]                                  ; $585c: $f0 $00
    nop                                           ; $585e: $00
    nop                                           ; $585f: $00
    nop                                           ; $5860: $00
    rrca                                          ; $5861: $0f
    rst $38                                       ; $5862: $ff
    ccf                                           ; $5863: $3f
    ldh a, [rP1]                                  ; $5864: $f0 $00
    nop                                           ; $5866: $00
    nop                                           ; $5867: $00
    nop                                           ; $5868: $00
    nop                                           ; $5869: $00
    rrca                                          ; $586a: $0f
    rst $38                                       ; $586b: $ff
    nop                                           ; $586c: $00
    nop                                           ; $586d: $00
    ld h, d                                       ; $586e: $62
    daa                                           ; $586f: $27
    jr z, jr_045_589b                             ; $5870: $28 $29

    ld e, b                                       ; $5872: $58
    ld e, c                                       ; $5873: $59
    ld a, c                                       ; $5874: $79
    rst $38                                       ; $5875: $ff
    ld b, $00                                     ; $5876: $06 $00
    nop                                           ; $5878: $00
    nop                                           ; $5879: $00
    rst $38                                       ; $587a: $ff
    nop                                           ; $587b: $00
    nop                                           ; $587c: $00
    nop                                           ; $587d: $00
    nop                                           ; $587e: $00
    nop                                           ; $587f: $00
    nop                                           ; $5880: $00
    rrca                                          ; $5881: $0f
    pop af                                        ; $5882: $f1
    ldh a, [rP1]                                  ; $5883: $f0 $00
    nop                                           ; $5885: $00
    nop                                           ; $5886: $00
    nop                                           ; $5887: $00
    nop                                           ; $5888: $00
    pop af                                        ; $5889: $f1
    rst $38                                       ; $588a: $ff
    ldh a, [rP1]                                  ; $588b: $f0 $00
    nop                                           ; $588d: $00
    nop                                           ; $588e: $00
    nop                                           ; $588f: $00
    nop                                           ; $5890: $00
    rrca                                          ; $5891: $0f
    rst $38                                       ; $5892: $ff
    ldh a, [rP1]                                  ; $5893: $f0 $00
    nop                                           ; $5895: $00
    nop                                           ; $5896: $00
    nop                                           ; $5897: $00
    nop                                           ; $5898: $00
    rst $38                                       ; $5899: $ff
    rst $38                                       ; $589a: $ff

jr_045_589b:
    rst $38                                       ; $589b: $ff
    nop                                           ; $589c: $00
    nop                                           ; $589d: $00
    nop                                           ; $589e: $00
    nop                                           ; $589f: $00
    rrca                                          ; $58a0: $0f
    rst $38                                       ; $58a1: $ff
    rst $38                                       ; $58a2: $ff
    rst $38                                       ; $58a3: $ff
    nop                                           ; $58a4: $00
    nop                                           ; $58a5: $00
    nop                                           ; $58a6: $00
    nop                                           ; $58a7: $00
    rrca                                          ; $58a8: $0f
    rst $38                                       ; $58a9: $ff
    di                                            ; $58aa: $f3
    rst $38                                       ; $58ab: $ff
    nop                                           ; $58ac: $00
    nop                                           ; $58ad: $00
    nop                                           ; $58ae: $00
    nop                                           ; $58af: $00
    nop                                           ; $58b0: $00
    rrca                                          ; $58b1: $0f
    rst $38                                       ; $58b2: $ff
    rst $38                                       ; $58b3: $ff
    nop                                           ; $58b4: $00
    nop                                           ; $58b5: $00
    nop                                           ; $58b6: $00
    nop                                           ; $58b7: $00
    nop                                           ; $58b8: $00
    pop af                                        ; $58b9: $f1
    rst $38                                       ; $58ba: $ff
    ldh a, [rP1]                                  ; $58bb: $f0 $00
    nop                                           ; $58bd: $00
    nop                                           ; $58be: $00
    nop                                           ; $58bf: $00
    nop                                           ; $58c0: $00
    rst $38                                       ; $58c1: $ff
    rst $38                                       ; $58c2: $ff
    rst $38                                       ; $58c3: $ff
    nop                                           ; $58c4: $00
    nop                                           ; $58c5: $00
    nop                                           ; $58c6: $00
    nop                                           ; $58c7: $00
    nop                                           ; $58c8: $00
    rrca                                          ; $58c9: $0f
    rst $38                                       ; $58ca: $ff
    ldh a, [rP1]                                  ; $58cb: $f0 $00
    nop                                           ; $58cd: $00
    nop                                           ; $58ce: $00
    nop                                           ; $58cf: $00
    nop                                           ; $58d0: $00
    rrca                                          ; $58d1: $0f
    rst $38                                       ; $58d2: $ff
    ldh a, [rP1]                                  ; $58d3: $f0 $00
    nop                                           ; $58d5: $00
    nop                                           ; $58d6: $00
    nop                                           ; $58d7: $00
    nop                                           ; $58d8: $00
    rrca                                          ; $58d9: $0f
    rst $38                                       ; $58da: $ff
    ldh a, [rP1]                                  ; $58db: $f0 $00
    nop                                           ; $58dd: $00
    nop                                           ; $58de: $00
    nop                                           ; $58df: $00
    nop                                           ; $58e0: $00
    rrca                                          ; $58e1: $0f
    rst $38                                       ; $58e2: $ff
    ldh a, [rP1]                                  ; $58e3: $f0 $00
    nop                                           ; $58e5: $00
    nop                                           ; $58e6: $00
    nop                                           ; $58e7: $00
    nop                                           ; $58e8: $00
    rrca                                          ; $58e9: $0f
    di                                            ; $58ea: $f3
    ldh a, [rP1]                                  ; $58eb: $f0 $00
    nop                                           ; $58ed: $00
    nop                                           ; $58ee: $00
    nop                                           ; $58ef: $00
    nop                                           ; $58f0: $00
    rrca                                          ; $58f1: $0f
    rst $38                                       ; $58f2: $ff
    ldh a, [rP1]                                  ; $58f3: $f0 $00
    nop                                           ; $58f5: $00
    nop                                           ; $58f6: $00
    ld b, [hl]                                    ; $58f7: $46
    ld d, $27                                     ; $58f8: $16 $27
    ld [hl], $57                                  ; $58fa: $36 $57
    ld e, b                                       ; $58fc: $58
    ld h, [hl]                                    ; $58fd: $66
    rst $38                                       ; $58fe: $ff
    ld b, $00                                     ; $58ff: $06 $00
    nop                                           ; $5901: $00
    nop                                           ; $5902: $00
    nop                                           ; $5903: $00
    nop                                           ; $5904: $00
    nop                                           ; $5905: $00
    nop                                           ; $5906: $00
    nop                                           ; $5907: $00
    nop                                           ; $5908: $00
    nop                                           ; $5909: $00
    nop                                           ; $590a: $00
    nop                                           ; $590b: $00
    nop                                           ; $590c: $00
    nop                                           ; $590d: $00
    nop                                           ; $590e: $00
    nop                                           ; $590f: $00
    nop                                           ; $5910: $00
    nop                                           ; $5911: $00
    nop                                           ; $5912: $00
    nop                                           ; $5913: $00
    nop                                           ; $5914: $00
    nop                                           ; $5915: $00
    nop                                           ; $5916: $00
    nop                                           ; $5917: $00
    nop                                           ; $5918: $00
    nop                                           ; $5919: $00
    rrca                                          ; $591a: $0f
    rst $38                                       ; $591b: $ff
    rst $38                                       ; $591c: $ff
    nop                                           ; $591d: $00
    nop                                           ; $591e: $00
    nop                                           ; $591f: $00
    nop                                           ; $5920: $00
    nop                                           ; $5921: $00
    rst $38                                       ; $5922: $ff
    rst $38                                       ; $5923: $ff
    rst $38                                       ; $5924: $ff
    ldh a, [rP1]                                  ; $5925: $f0 $00
    nop                                           ; $5927: $00
    nop                                           ; $5928: $00
    nop                                           ; $5929: $00
    rst $38                                       ; $592a: $ff
    rst $38                                       ; $592b: $ff
    rst $38                                       ; $592c: $ff
    rra                                           ; $592d: $1f
    nop                                           ; $592e: $00
    nop                                           ; $592f: $00
    nop                                           ; $5930: $00
    nop                                           ; $5931: $00
    nop                                           ; $5932: $00
    rst $38                                       ; $5933: $ff
    rst $38                                       ; $5934: $ff
    rra                                           ; $5935: $1f
    nop                                           ; $5936: $00
    nop                                           ; $5937: $00
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    nop                                           ; $593a: $00
    rrca                                          ; $593b: $0f
    ld de, $001f                                  ; $593c: $11 $1f $00
    nop                                           ; $593f: $00
    nop                                           ; $5940: $00
    nop                                           ; $5941: $00
    nop                                           ; $5942: $00
    nop                                           ; $5943: $00
    pop af                                        ; $5944: $f1
    rra                                           ; $5945: $1f
    nop                                           ; $5946: $00
    nop                                           ; $5947: $00
    nop                                           ; $5948: $00
    nop                                           ; $5949: $00
    nop                                           ; $594a: $00
    nop                                           ; $594b: $00
    rst $38                                       ; $594c: $ff
    rst $38                                       ; $594d: $ff
    nop                                           ; $594e: $00
    nop                                           ; $594f: $00
    nop                                           ; $5950: $00
    nop                                           ; $5951: $00
    nop                                           ; $5952: $00
    rrca                                          ; $5953: $0f
    rst $38                                       ; $5954: $ff
    rst $38                                       ; $5955: $ff
    nop                                           ; $5956: $00
    nop                                           ; $5957: $00
    nop                                           ; $5958: $00
    nop                                           ; $5959: $00
    nop                                           ; $595a: $00
    rrca                                          ; $595b: $0f
    rra                                           ; $595c: $1f
    ldh a, [rP1]                                  ; $595d: $f0 $00
    nop                                           ; $595f: $00
    nop                                           ; $5960: $00
    nop                                           ; $5961: $00
    nop                                           ; $5962: $00
    rrca                                          ; $5963: $0f
    ldh a, [rP1]                                  ; $5964: $f0 $00
    nop                                           ; $5966: $00
    nop                                           ; $5967: $00
    nop                                           ; $5968: $00
    nop                                           ; $5969: $00
    nop                                           ; $596a: $00
    nop                                           ; $596b: $00
    nop                                           ; $596c: $00
    nop                                           ; $596d: $00
    nop                                           ; $596e: $00
    nop                                           ; $596f: $00
    nop                                           ; $5970: $00
    nop                                           ; $5971: $00
    nop                                           ; $5972: $00
    nop                                           ; $5973: $00
    nop                                           ; $5974: $00
    nop                                           ; $5975: $00
    nop                                           ; $5976: $00
    nop                                           ; $5977: $00
    nop                                           ; $5978: $00
    nop                                           ; $5979: $00
    nop                                           ; $597a: $00
    nop                                           ; $597b: $00
    nop                                           ; $597c: $00
    nop                                           ; $597d: $00
    nop                                           ; $597e: $00
    nop                                           ; $597f: $00
    ld a, [hl+]                                   ; $5980: $2a
    ld b, a                                       ; $5981: $47
    ld c, b                                       ; $5982: $48
    rst $38                                       ; $5983: $ff
    ld [bc], a                                    ; $5984: $02
    nop                                           ; $5985: $00
    nop                                           ; $5986: $00
    nop                                           ; $5987: $00
    nop                                           ; $5988: $00
    rrca                                          ; $5989: $0f
    nop                                           ; $598a: $00
    nop                                           ; $598b: $00
    nop                                           ; $598c: $00
    nop                                           ; $598d: $00
    nop                                           ; $598e: $00
    nop                                           ; $598f: $00
    rrca                                          ; $5990: $0f
    rst $38                                       ; $5991: $ff
    ldh a, [rP1]                                  ; $5992: $f0 $00
    nop                                           ; $5994: $00
    nop                                           ; $5995: $00
    nop                                           ; $5996: $00
    nop                                           ; $5997: $00
    rrca                                          ; $5998: $0f
    rst $38                                       ; $5999: $ff
    ldh a, [rP1]                                  ; $599a: $f0 $00
    nop                                           ; $599c: $00
    nop                                           ; $599d: $00
    nop                                           ; $599e: $00
    nop                                           ; $599f: $00
    rrca                                          ; $59a0: $0f
    rst $38                                       ; $59a1: $ff
    ldh a, [rP1]                                  ; $59a2: $f0 $00
    nop                                           ; $59a4: $00
    nop                                           ; $59a5: $00
    nop                                           ; $59a6: $00
    nop                                           ; $59a7: $00
    rst $38                                       ; $59a8: $ff
    ccf                                           ; $59a9: $3f
    ldh a, [rP1]                                  ; $59aa: $f0 $00
    nop                                           ; $59ac: $00
    nop                                           ; $59ad: $00
    nop                                           ; $59ae: $00
    rrca                                          ; $59af: $0f
    rst $38                                       ; $59b0: $ff
    pop af                                        ; $59b1: $f1
    ldh a, [rP1]                                  ; $59b2: $f0 $00
    nop                                           ; $59b4: $00
    nop                                           ; $59b5: $00
    nop                                           ; $59b6: $00
    rrca                                          ; $59b7: $0f
    rst $38                                       ; $59b8: $ff
    rst $38                                       ; $59b9: $ff
    ldh a, [rP1]                                  ; $59ba: $f0 $00
    nop                                           ; $59bc: $00
    nop                                           ; $59bd: $00
    nop                                           ; $59be: $00
    rrca                                          ; $59bf: $0f
    rst $38                                       ; $59c0: $ff
    rst $38                                       ; $59c1: $ff
    nop                                           ; $59c2: $00
    nop                                           ; $59c3: $00
    nop                                           ; $59c4: $00
    nop                                           ; $59c5: $00
    nop                                           ; $59c6: $00
    rrca                                          ; $59c7: $0f
    rst $38                                       ; $59c8: $ff
    rst $38                                       ; $59c9: $ff
    ldh a, [rP1]                                  ; $59ca: $f0 $00
    nop                                           ; $59cc: $00
    nop                                           ; $59cd: $00
    nop                                           ; $59ce: $00
    rrca                                          ; $59cf: $0f
    rst $38                                       ; $59d0: $ff
    pop af                                        ; $59d1: $f1
    ldh a, [rP1]                                  ; $59d2: $f0 $00
    nop                                           ; $59d4: $00
    nop                                           ; $59d5: $00
    nop                                           ; $59d6: $00
    nop                                           ; $59d7: $00
    rst $38                                       ; $59d8: $ff
    pop af                                        ; $59d9: $f1
    ldh a, [rP1]                                  ; $59da: $f0 $00
    nop                                           ; $59dc: $00
    nop                                           ; $59dd: $00
    nop                                           ; $59de: $00
    nop                                           ; $59df: $00
    rrca                                          ; $59e0: $0f
    pop af                                        ; $59e1: $f1
    ldh a, [rP1]                                  ; $59e2: $f0 $00
    nop                                           ; $59e4: $00
    nop                                           ; $59e5: $00
    nop                                           ; $59e6: $00
    nop                                           ; $59e7: $00
    rst $38                                       ; $59e8: $ff
    rst $38                                       ; $59e9: $ff
    nop                                           ; $59ea: $00
    nop                                           ; $59eb: $00
    nop                                           ; $59ec: $00
    nop                                           ; $59ed: $00
    nop                                           ; $59ee: $00
    nop                                           ; $59ef: $00
    rst $38                                       ; $59f0: $ff
    ccf                                           ; $59f1: $3f
    ldh a, [rP1]                                  ; $59f2: $f0 $00
    nop                                           ; $59f4: $00
    nop                                           ; $59f5: $00
    nop                                           ; $59f6: $00
    nop                                           ; $59f7: $00
    rrca                                          ; $59f8: $0f
    rst $38                                       ; $59f9: $ff
    nop                                           ; $59fa: $00
    nop                                           ; $59fb: $00
    nop                                           ; $59fc: $00
    nop                                           ; $59fd: $00
    nop                                           ; $59fe: $00
    nop                                           ; $59ff: $00
    nop                                           ; $5a00: $00
    nop                                           ; $5a01: $00
    nop                                           ; $5a02: $00
    nop                                           ; $5a03: $00
    nop                                           ; $5a04: $00
    ld a, $28                                     ; $5a05: $3e $28
    add hl, hl                                    ; $5a07: $29
    ld a, [hl+]                                   ; $5a08: $2a
    ld b, a                                       ; $5a09: $47
    ld h, l                                       ; $5a0a: $65
    ld h, a                                       ; $5a0b: $67
    ld l, b                                       ; $5a0c: $68
    rst $38                                       ; $5a0d: $ff
    rlca                                          ; $5a0e: $07
    nop                                           ; $5a0f: $00
    nop                                           ; $5a10: $00
    nop                                           ; $5a11: $00
    nop                                           ; $5a12: $00
    nop                                           ; $5a13: $00
    rst $38                                       ; $5a14: $ff
    nop                                           ; $5a15: $00
    nop                                           ; $5a16: $00
    nop                                           ; $5a17: $00
    nop                                           ; $5a18: $00
    nop                                           ; $5a19: $00
    rst $38                                       ; $5a1a: $ff
    rst $38                                       ; $5a1b: $ff
    rst $38                                       ; $5a1c: $ff
    ldh a, [rP1]                                  ; $5a1d: $f0 $00
    nop                                           ; $5a1f: $00
    nop                                           ; $5a20: $00
    rrca                                          ; $5a21: $0f
    rst $38                                       ; $5a22: $ff
    rst $38                                       ; $5a23: $ff
    rra                                           ; $5a24: $1f
    nop                                           ; $5a25: $00
    nop                                           ; $5a26: $00
    nop                                           ; $5a27: $00
    nop                                           ; $5a28: $00
    rrca                                          ; $5a29: $0f
    rst $38                                       ; $5a2a: $ff
    rst $38                                       ; $5a2b: $ff
    rst $38                                       ; $5a2c: $ff
    nop                                           ; $5a2d: $00
    nop                                           ; $5a2e: $00
    nop                                           ; $5a2f: $00
    nop                                           ; $5a30: $00
    rrca                                          ; $5a31: $0f
    rst $38                                       ; $5a32: $ff
    rra                                           ; $5a33: $1f
    nop                                           ; $5a34: $00
    nop                                           ; $5a35: $00
    nop                                           ; $5a36: $00
    nop                                           ; $5a37: $00
    nop                                           ; $5a38: $00
    rrca                                          ; $5a39: $0f
    rst $38                                       ; $5a3a: $ff
    rst $38                                       ; $5a3b: $ff
    nop                                           ; $5a3c: $00
    nop                                           ; $5a3d: $00
    nop                                           ; $5a3e: $00
    nop                                           ; $5a3f: $00
    nop                                           ; $5a40: $00
    nop                                           ; $5a41: $00
    rst $38                                       ; $5a42: $ff
    rst $38                                       ; $5a43: $ff
    nop                                           ; $5a44: $00
    nop                                           ; $5a45: $00
    nop                                           ; $5a46: $00
    nop                                           ; $5a47: $00
    nop                                           ; $5a48: $00
    nop                                           ; $5a49: $00
    rst $38                                       ; $5a4a: $ff
    rst $38                                       ; $5a4b: $ff
    ldh a, [rP1]                                  ; $5a4c: $f0 $00
    nop                                           ; $5a4e: $00
    nop                                           ; $5a4f: $00
    nop                                           ; $5a50: $00
    nop                                           ; $5a51: $00
    rst $38                                       ; $5a52: $ff
    pop af                                        ; $5a53: $f1
    ldh a, [rP1]                                  ; $5a54: $f0 $00
    nop                                           ; $5a56: $00
    nop                                           ; $5a57: $00
    nop                                           ; $5a58: $00
    nop                                           ; $5a59: $00
    rst $38                                       ; $5a5a: $ff
    rst $38                                       ; $5a5b: $ff
    rst $38                                       ; $5a5c: $ff
    nop                                           ; $5a5d: $00
    nop                                           ; $5a5e: $00
    nop                                           ; $5a5f: $00
    nop                                           ; $5a60: $00
    rst $38                                       ; $5a61: $ff
    rst $38                                       ; $5a62: $ff
    pop af                                        ; $5a63: $f1
    ldh a, [rP1]                                  ; $5a64: $f0 $00
    nop                                           ; $5a66: $00
    nop                                           ; $5a67: $00
    nop                                           ; $5a68: $00
    rst $38                                       ; $5a69: $ff
    ccf                                           ; $5a6a: $3f
    rst $38                                       ; $5a6b: $ff
    ldh a, [rP1]                                  ; $5a6c: $f0 $00
    nop                                           ; $5a6e: $00
    nop                                           ; $5a6f: $00
    nop                                           ; $5a70: $00
    rst $38                                       ; $5a71: $ff
    rst $38                                       ; $5a72: $ff
    nop                                           ; $5a73: $00
    nop                                           ; $5a74: $00
    nop                                           ; $5a75: $00
    nop                                           ; $5a76: $00
    nop                                           ; $5a77: $00
    rrca                                          ; $5a78: $0f
    rst $38                                       ; $5a79: $ff
    rst $38                                       ; $5a7a: $ff
    nop                                           ; $5a7b: $00
    nop                                           ; $5a7c: $00
    nop                                           ; $5a7d: $00
    nop                                           ; $5a7e: $00
    nop                                           ; $5a7f: $00
    rrca                                          ; $5a80: $0f
    rst $38                                       ; $5a81: $ff
    ldh a, [rP1]                                  ; $5a82: $f0 $00
    nop                                           ; $5a84: $00
    nop                                           ; $5a85: $00
    nop                                           ; $5a86: $00
    nop                                           ; $5a87: $00
    nop                                           ; $5a88: $00
    rst $38                                       ; $5a89: $ff
    nop                                           ; $5a8a: $00
    nop                                           ; $5a8b: $00
    nop                                           ; $5a8c: $00
    nop                                           ; $5a8d: $00
    nop                                           ; $5a8e: $00
    ld c, l                                       ; $5a8f: $4d
    ld a, [de]                                    ; $5a90: $1a
    dec de                                        ; $5a91: $1b
    daa                                           ; $5a92: $27
    jr z, jr_045_5acb                             ; $5a93: $28 $36

    ld [hl], a                                    ; $5a95: $77
    adc b                                         ; $5a96: $88
    sub a                                         ; $5a97: $97
    rst $38                                       ; $5a98: $ff
    ld [$0000], sp                                ; $5a99: $08 $00 $00
    nop                                           ; $5a9c: $00
    nop                                           ; $5a9d: $00
    nop                                           ; $5a9e: $00
    nop                                           ; $5a9f: $00
    nop                                           ; $5aa0: $00
    nop                                           ; $5aa1: $00
    nop                                           ; $5aa2: $00
    nop                                           ; $5aa3: $00
    nop                                           ; $5aa4: $00
    nop                                           ; $5aa5: $00
    nop                                           ; $5aa6: $00
    nop                                           ; $5aa7: $00
    nop                                           ; $5aa8: $00
    nop                                           ; $5aa9: $00
    nop                                           ; $5aaa: $00
    nop                                           ; $5aab: $00
    rst $38                                       ; $5aac: $ff
    rrca                                          ; $5aad: $0f
    nop                                           ; $5aae: $00
    nop                                           ; $5aaf: $00
    nop                                           ; $5ab0: $00
    nop                                           ; $5ab1: $00
    nop                                           ; $5ab2: $00
    nop                                           ; $5ab3: $00
    rst $38                                       ; $5ab4: $ff
    rst $38                                       ; $5ab5: $ff
    rst $38                                       ; $5ab6: $ff
    ldh a, [rP1]                                  ; $5ab7: $f0 $00
    nop                                           ; $5ab9: $00
    nop                                           ; $5aba: $00
    nop                                           ; $5abb: $00
    rst $38                                       ; $5abc: $ff
    rst $38                                       ; $5abd: $ff
    pop af                                        ; $5abe: $f1
    rst $38                                       ; $5abf: $ff
    nop                                           ; $5ac0: $00
    nop                                           ; $5ac1: $00
    nop                                           ; $5ac2: $00
    nop                                           ; $5ac3: $00
    rrca                                          ; $5ac4: $0f
    rst $38                                       ; $5ac5: $ff
    rst $38                                       ; $5ac6: $ff
    rst $38                                       ; $5ac7: $ff
    nop                                           ; $5ac8: $00
    nop                                           ; $5ac9: $00
    nop                                           ; $5aca: $00

jr_045_5acb:
    nop                                           ; $5acb: $00
    nop                                           ; $5acc: $00
    nop                                           ; $5acd: $00
    rst $38                                       ; $5ace: $ff
    rst $38                                       ; $5acf: $ff
    ldh a, [rP1]                                  ; $5ad0: $f0 $00
    nop                                           ; $5ad2: $00
    nop                                           ; $5ad3: $00
    nop                                           ; $5ad4: $00
    nop                                           ; $5ad5: $00
    rra                                           ; $5ad6: $1f
    rst $38                                       ; $5ad7: $ff
    ldh a, [rP1]                                  ; $5ad8: $f0 $00
    nop                                           ; $5ada: $00
    nop                                           ; $5adb: $00
    nop                                           ; $5adc: $00
    rrca                                          ; $5add: $0f
    rst $38                                       ; $5ade: $ff
    rst $38                                       ; $5adf: $ff
    ldh a, [rP1]                                  ; $5ae0: $f0 $00
    nop                                           ; $5ae2: $00
    nop                                           ; $5ae3: $00
    nop                                           ; $5ae4: $00
    rrca                                          ; $5ae5: $0f
    di                                            ; $5ae6: $f3
    rst $38                                       ; $5ae7: $ff
    ldh a, [rP1]                                  ; $5ae8: $f0 $00
    nop                                           ; $5aea: $00
    nop                                           ; $5aeb: $00
    nop                                           ; $5aec: $00
    rrca                                          ; $5aed: $0f
    di                                            ; $5aee: $f3
    rst $38                                       ; $5aef: $ff
    nop                                           ; $5af0: $00
    nop                                           ; $5af1: $00
    nop                                           ; $5af2: $00
    nop                                           ; $5af3: $00
    nop                                           ; $5af4: $00
    pop af                                        ; $5af5: $f1
    rst $38                                       ; $5af6: $ff
    rra                                           ; $5af7: $1f
    nop                                           ; $5af8: $00
    nop                                           ; $5af9: $00
    nop                                           ; $5afa: $00
    nop                                           ; $5afb: $00
    nop                                           ; $5afc: $00
    pop af                                        ; $5afd: $f1
    pop af                                        ; $5afe: $f1
    rst $38                                       ; $5aff: $ff
    nop                                           ; $5b00: $00
    nop                                           ; $5b01: $00
    nop                                           ; $5b02: $00
    nop                                           ; $5b03: $00
    nop                                           ; $5b04: $00
    rst $38                                       ; $5b05: $ff
    rst $38                                       ; $5b06: $ff
    ldh a, [rP1]                                  ; $5b07: $f0 $00
    nop                                           ; $5b09: $00
    nop                                           ; $5b0a: $00
    nop                                           ; $5b0b: $00
    nop                                           ; $5b0c: $00
    rst $38                                       ; $5b0d: $ff
    ldh a, [rP1]                                  ; $5b0e: $f0 $00
    nop                                           ; $5b10: $00
    nop                                           ; $5b11: $00
    nop                                           ; $5b12: $00
    nop                                           ; $5b13: $00
    nop                                           ; $5b14: $00
    nop                                           ; $5b15: $00
    nop                                           ; $5b16: $00
    nop                                           ; $5b17: $00
    nop                                           ; $5b18: $00
    nop                                           ; $5b19: $00
    ld b, b                                       ; $5b1a: $40
    inc [hl]                                      ; $5b1b: $34
    dec [hl]                                      ; $5b1c: $35
    scf                                           ; $5b1d: $37
    ld c, b                                       ; $5b1e: $48
    ld e, c                                       ; $5b1f: $59
    ld e, d                                       ; $5b20: $5a
    ld a, d                                       ; $5b21: $7a
    ld a, e                                       ; $5b22: $7b
    rst $38                                       ; $5b23: $ff
    ld [$0000], sp                                ; $5b24: $08 $00 $00
    nop                                           ; $5b27: $00
    rrca                                          ; $5b28: $0f
    nop                                           ; $5b29: $00
    nop                                           ; $5b2a: $00
    nop                                           ; $5b2b: $00
    nop                                           ; $5b2c: $00
    nop                                           ; $5b2d: $00
    nop                                           ; $5b2e: $00
    nop                                           ; $5b2f: $00
    rst $38                                       ; $5b30: $ff
    nop                                           ; $5b31: $00
    nop                                           ; $5b32: $00
    nop                                           ; $5b33: $00
    nop                                           ; $5b34: $00
    nop                                           ; $5b35: $00
    nop                                           ; $5b36: $00
    nop                                           ; $5b37: $00
    rst $38                                       ; $5b38: $ff
    ldh a, [rP1]                                  ; $5b39: $f0 $00
    nop                                           ; $5b3b: $00
    nop                                           ; $5b3c: $00
    nop                                           ; $5b3d: $00
    nop                                           ; $5b3e: $00
    nop                                           ; $5b3f: $00
    pop af                                        ; $5b40: $f1
    ldh a, [rP1]                                  ; $5b41: $f0 $00
    nop                                           ; $5b43: $00
    nop                                           ; $5b44: $00
    nop                                           ; $5b45: $00
    nop                                           ; $5b46: $00
    nop                                           ; $5b47: $00
    rst $38                                       ; $5b48: $ff
    rst $38                                       ; $5b49: $ff
    nop                                           ; $5b4a: $00
    nop                                           ; $5b4b: $00
    nop                                           ; $5b4c: $00
    nop                                           ; $5b4d: $00
    nop                                           ; $5b4e: $00
    rrca                                          ; $5b4f: $0f
    rst $38                                       ; $5b50: $ff
    rst $38                                       ; $5b51: $ff
    ldh a, [rP1]                                  ; $5b52: $f0 $00
    nop                                           ; $5b54: $00
    nop                                           ; $5b55: $00
    nop                                           ; $5b56: $00
    rrca                                          ; $5b57: $0f
    rst $38                                       ; $5b58: $ff
    rst $38                                       ; $5b59: $ff
    ldh a, [rP1]                                  ; $5b5a: $f0 $00
    nop                                           ; $5b5c: $00
    nop                                           ; $5b5d: $00
    nop                                           ; $5b5e: $00
    nop                                           ; $5b5f: $00
    rst $38                                       ; $5b60: $ff
    rst $38                                       ; $5b61: $ff
    nop                                           ; $5b62: $00
    nop                                           ; $5b63: $00
    nop                                           ; $5b64: $00
    nop                                           ; $5b65: $00
    nop                                           ; $5b66: $00
    nop                                           ; $5b67: $00
    rrca                                          ; $5b68: $0f
    rst $38                                       ; $5b69: $ff
    nop                                           ; $5b6a: $00
    nop                                           ; $5b6b: $00
    nop                                           ; $5b6c: $00
    nop                                           ; $5b6d: $00
    nop                                           ; $5b6e: $00
    nop                                           ; $5b6f: $00
    rst $38                                       ; $5b70: $ff
    rst $38                                       ; $5b71: $ff
    nop                                           ; $5b72: $00
    nop                                           ; $5b73: $00
    nop                                           ; $5b74: $00
    nop                                           ; $5b75: $00
    nop                                           ; $5b76: $00
    nop                                           ; $5b77: $00
    rst $38                                       ; $5b78: $ff
    rst $38                                       ; $5b79: $ff
    nop                                           ; $5b7a: $00
    nop                                           ; $5b7b: $00
    nop                                           ; $5b7c: $00
    nop                                           ; $5b7d: $00
    nop                                           ; $5b7e: $00
    nop                                           ; $5b7f: $00
    rrca                                          ; $5b80: $0f
    rst $38                                       ; $5b81: $ff
    ldh a, [rP1]                                  ; $5b82: $f0 $00
    nop                                           ; $5b84: $00
    nop                                           ; $5b85: $00
    nop                                           ; $5b86: $00
    nop                                           ; $5b87: $00
    nop                                           ; $5b88: $00
    pop af                                        ; $5b89: $f1
    ldh a, [rP1]                                  ; $5b8a: $f0 $00
    nop                                           ; $5b8c: $00
    nop                                           ; $5b8d: $00
    nop                                           ; $5b8e: $00
    nop                                           ; $5b8f: $00
    nop                                           ; $5b90: $00
    rst $38                                       ; $5b91: $ff
    nop                                           ; $5b92: $00
    nop                                           ; $5b93: $00
    nop                                           ; $5b94: $00
    nop                                           ; $5b95: $00
    nop                                           ; $5b96: $00
    nop                                           ; $5b97: $00
    nop                                           ; $5b98: $00
    rst $38                                       ; $5b99: $ff
    nop                                           ; $5b9a: $00
    nop                                           ; $5b9b: $00
    nop                                           ; $5b9c: $00
    nop                                           ; $5b9d: $00
    nop                                           ; $5b9e: $00
    nop                                           ; $5b9f: $00
    nop                                           ; $5ba0: $00
    rst $38                                       ; $5ba1: $ff
    nop                                           ; $5ba2: $00
    nop                                           ; $5ba3: $00
    nop                                           ; $5ba4: $00
    inc sp                                        ; $5ba5: $33
    ld b, a                                       ; $5ba6: $47
    ld c, b                                       ; $5ba7: $48
    ld e, c                                       ; $5ba8: $59
    ld h, a                                       ; $5ba9: $67
    ld l, b                                       ; $5baa: $68
    rst $38                                       ; $5bab: $ff
    dec b                                         ; $5bac: $05
    nop                                           ; $5bad: $00
    nop                                           ; $5bae: $00
    nop                                           ; $5baf: $00
    nop                                           ; $5bb0: $00
    rrca                                          ; $5bb1: $0f
    ldh a, [rP1]                                  ; $5bb2: $f0 $00
    nop                                           ; $5bb4: $00
    nop                                           ; $5bb5: $00
    nop                                           ; $5bb6: $00
    nop                                           ; $5bb7: $00
    nop                                           ; $5bb8: $00
    rst $38                                       ; $5bb9: $ff
    rst $38                                       ; $5bba: $ff
    ldh a, [rP1]                                  ; $5bbb: $f0 $00
    nop                                           ; $5bbd: $00
    nop                                           ; $5bbe: $00
    nop                                           ; $5bbf: $00
    nop                                           ; $5bc0: $00
    rst $38                                       ; $5bc1: $ff
    pop af                                        ; $5bc2: $f1
    ldh a, [rP1]                                  ; $5bc3: $f0 $00
    nop                                           ; $5bc5: $00
    nop                                           ; $5bc6: $00
    nop                                           ; $5bc7: $00
    rrca                                          ; $5bc8: $0f
    rst $38                                       ; $5bc9: $ff
    pop af                                        ; $5bca: $f1
    ldh a, [rP1]                                  ; $5bcb: $f0 $00
    nop                                           ; $5bcd: $00
    nop                                           ; $5bce: $00
    rrca                                          ; $5bcf: $0f
    rst $38                                       ; $5bd0: $ff
    pop af                                        ; $5bd1: $f1
    rst $38                                       ; $5bd2: $ff
    ldh a, [rP1]                                  ; $5bd3: $f0 $00
    nop                                           ; $5bd5: $00
    nop                                           ; $5bd6: $00
    rrca                                          ; $5bd7: $0f
    rst $38                                       ; $5bd8: $ff
    rst $38                                       ; $5bd9: $ff
    nop                                           ; $5bda: $00
    nop                                           ; $5bdb: $00
    nop                                           ; $5bdc: $00
    nop                                           ; $5bdd: $00
    nop                                           ; $5bde: $00
    rrca                                          ; $5bdf: $0f
    rst $38                                       ; $5be0: $ff
    ldh a, [rP1]                                  ; $5be1: $f0 $00
    nop                                           ; $5be3: $00
    nop                                           ; $5be4: $00
    nop                                           ; $5be5: $00
    nop                                           ; $5be6: $00
    pop af                                        ; $5be7: $f1
    rst $38                                       ; $5be8: $ff
    ldh a, [rP1]                                  ; $5be9: $f0 $00
    nop                                           ; $5beb: $00
    nop                                           ; $5bec: $00
    nop                                           ; $5bed: $00
    nop                                           ; $5bee: $00
    pop af                                        ; $5bef: $f1
    rst $38                                       ; $5bf0: $ff
    ldh a, [rP1]                                  ; $5bf1: $f0 $00
    nop                                           ; $5bf3: $00
    nop                                           ; $5bf4: $00
    nop                                           ; $5bf5: $00
    nop                                           ; $5bf6: $00
    rrca                                          ; $5bf7: $0f
    rst $38                                       ; $5bf8: $ff
    ldh a, [rP1]                                  ; $5bf9: $f0 $00
    nop                                           ; $5bfb: $00
    nop                                           ; $5bfc: $00
    nop                                           ; $5bfd: $00
    nop                                           ; $5bfe: $00
    rrca                                          ; $5bff: $0f
    rst $38                                       ; $5c00: $ff
    nop                                           ; $5c01: $00
    nop                                           ; $5c02: $00
    nop                                           ; $5c03: $00
    nop                                           ; $5c04: $00
    nop                                           ; $5c05: $00
    nop                                           ; $5c06: $00
    rst $38                                       ; $5c07: $ff
    rst $38                                       ; $5c08: $ff
    ldh a, [rP1]                                  ; $5c09: $f0 $00
    nop                                           ; $5c0b: $00
    nop                                           ; $5c0c: $00
    nop                                           ; $5c0d: $00
    nop                                           ; $5c0e: $00
    rst $38                                       ; $5c0f: $ff
    rst $38                                       ; $5c10: $ff
    ldh a, [rP1]                                  ; $5c11: $f0 $00
    nop                                           ; $5c13: $00
    nop                                           ; $5c14: $00
    nop                                           ; $5c15: $00
    nop                                           ; $5c16: $00
    rrca                                          ; $5c17: $0f
    rst $38                                       ; $5c18: $ff
    rst $38                                       ; $5c19: $ff
    nop                                           ; $5c1a: $00
    nop                                           ; $5c1b: $00
    nop                                           ; $5c1c: $00
    nop                                           ; $5c1d: $00
    nop                                           ; $5c1e: $00
    rrca                                          ; $5c1f: $0f
    rst $38                                       ; $5c20: $ff
    ldh a, [rP1]                                  ; $5c21: $f0 $00
    nop                                           ; $5c23: $00
    nop                                           ; $5c24: $00
    nop                                           ; $5c25: $00
    nop                                           ; $5c26: $00
    nop                                           ; $5c27: $00
    rst $38                                       ; $5c28: $ff
    ldh a, [rP1]                                  ; $5c29: $f0 $00
    nop                                           ; $5c2b: $00
    nop                                           ; $5c2c: $00
    ld b, l                                       ; $5c2d: $45
    add hl, de                                    ; $5c2e: $19
    ld a, [de]                                    ; $5c2f: $1a
    ld a, [hl-]                                   ; $5c30: $3a
    ld b, a                                       ; $5c31: $47
    ld c, b                                       ; $5c32: $48
    ld d, [hl]                                    ; $5c33: $56
    ld [hl], a                                    ; $5c34: $77
    ld a, b                                       ; $5c35: $78
    rst $38                                       ; $5c36: $ff
    ld [$0000], sp                                ; $5c37: $08 $00 $00
    nop                                           ; $5c3a: $00
    nop                                           ; $5c3b: $00
    rst $38                                       ; $5c3c: $ff
    ldh a, [rP1]                                  ; $5c3d: $f0 $00
    nop                                           ; $5c3f: $00
    nop                                           ; $5c40: $00
    nop                                           ; $5c41: $00
    nop                                           ; $5c42: $00
    rrca                                          ; $5c43: $0f
    rst $38                                       ; $5c44: $ff
    rst $38                                       ; $5c45: $ff
    ldh a, [rP1]                                  ; $5c46: $f0 $00
    nop                                           ; $5c48: $00
    nop                                           ; $5c49: $00
    nop                                           ; $5c4a: $00
    rrca                                          ; $5c4b: $0f
    rst $38                                       ; $5c4c: $ff
    pop af                                        ; $5c4d: $f1
    ldh a, [rP1]                                  ; $5c4e: $f0 $00
    nop                                           ; $5c50: $00
    nop                                           ; $5c51: $00
    nop                                           ; $5c52: $00
    rrca                                          ; $5c53: $0f
    rst $38                                       ; $5c54: $ff
    pop af                                        ; $5c55: $f1
    ldh a, [rP1]                                  ; $5c56: $f0 $00
    nop                                           ; $5c58: $00
    nop                                           ; $5c59: $00
    nop                                           ; $5c5a: $00
    nop                                           ; $5c5b: $00
    rrca                                          ; $5c5c: $0f
    ccf                                           ; $5c5d: $3f
    ldh a, [rP1]                                  ; $5c5e: $f0 $00
    nop                                           ; $5c60: $00
    nop                                           ; $5c61: $00
    nop                                           ; $5c62: $00
    nop                                           ; $5c63: $00
    rrca                                          ; $5c64: $0f
    rst $38                                       ; $5c65: $ff
    rst $38                                       ; $5c66: $ff
    nop                                           ; $5c67: $00
    nop                                           ; $5c68: $00
    nop                                           ; $5c69: $00
    nop                                           ; $5c6a: $00
    rst $38                                       ; $5c6b: $ff
    nop                                           ; $5c6c: $00
    di                                            ; $5c6d: $f3
    pop af                                        ; $5c6e: $f1
    ldh a, [rP1]                                  ; $5c6f: $f0 $00
    nop                                           ; $5c71: $00
    rrca                                          ; $5c72: $0f
    rst $38                                       ; $5c73: $ff
    rrca                                          ; $5c74: $0f
    rst $38                                       ; $5c75: $ff
    pop af                                        ; $5c76: $f1
    ldh a, [rP1]                                  ; $5c77: $f0 $00
    nop                                           ; $5c79: $00
    rrca                                          ; $5c7a: $0f
    rst $38                                       ; $5c7b: $ff
    rst $38                                       ; $5c7c: $ff
    rst $38                                       ; $5c7d: $ff
    rra                                           ; $5c7e: $1f
    nop                                           ; $5c7f: $00
    nop                                           ; $5c80: $00
    nop                                           ; $5c81: $00
    rrca                                          ; $5c82: $0f
    rst $38                                       ; $5c83: $ff
    rst $38                                       ; $5c84: $ff
    ld de, $00ff                                  ; $5c85: $11 $ff $00
    nop                                           ; $5c88: $00
    nop                                           ; $5c89: $00
    rrca                                          ; $5c8a: $0f
    di                                            ; $5c8b: $f3
    rst $38                                       ; $5c8c: $ff
    rra                                           ; $5c8d: $1f
    ldh a, [rP1]                                  ; $5c8e: $f0 $00
    nop                                           ; $5c90: $00
    rrca                                          ; $5c91: $0f
    rst $38                                       ; $5c92: $ff
    rst $38                                       ; $5c93: $ff
    pop af                                        ; $5c94: $f1
    ldh a, [rP1]                                  ; $5c95: $f0 $00
    nop                                           ; $5c97: $00
    nop                                           ; $5c98: $00
    rst $38                                       ; $5c99: $ff
    rst $38                                       ; $5c9a: $ff
    rst $38                                       ; $5c9b: $ff
    rst $38                                       ; $5c9c: $ff
    ldh a, [rP1]                                  ; $5c9d: $f0 $00
    nop                                           ; $5c9f: $00
    rrca                                          ; $5ca0: $0f
    rst $38                                       ; $5ca1: $ff
    rst $38                                       ; $5ca2: $ff
    rst $38                                       ; $5ca3: $ff
    rst $38                                       ; $5ca4: $ff
    nop                                           ; $5ca5: $00
    nop                                           ; $5ca6: $00
    nop                                           ; $5ca7: $00
    rrca                                          ; $5ca8: $0f
    rst $38                                       ; $5ca9: $ff
    rst $38                                       ; $5caa: $ff
    nop                                           ; $5cab: $00
    nop                                           ; $5cac: $00
    nop                                           ; $5cad: $00
    nop                                           ; $5cae: $00
    nop                                           ; $5caf: $00
    nop                                           ; $5cb0: $00
    rst $38                                       ; $5cb1: $ff
    nop                                           ; $5cb2: $00
    nop                                           ; $5cb3: $00
    nop                                           ; $5cb4: $00
    nop                                           ; $5cb5: $00
    nop                                           ; $5cb6: $00
    nop                                           ; $5cb7: $00
    ld e, l                                       ; $5cb8: $5d
    jr z, jr_045_5ce4                             ; $5cb9: $28 $29

    ld a, [hl+]                                   ; $5cbb: $2a
    rst $38                                       ; $5cbc: $ff
    inc bc                                        ; $5cbd: $03
    nop                                           ; $5cbe: $00
    nop                                           ; $5cbf: $00
    nop                                           ; $5cc0: $00
    nop                                           ; $5cc1: $00
    nop                                           ; $5cc2: $00
    nop                                           ; $5cc3: $00
    nop                                           ; $5cc4: $00
    nop                                           ; $5cc5: $00
    nop                                           ; $5cc6: $00
    nop                                           ; $5cc7: $00
    nop                                           ; $5cc8: $00
    rrca                                          ; $5cc9: $0f
    rst $38                                       ; $5cca: $ff
    ldh a, [rP1]                                  ; $5ccb: $f0 $00
    nop                                           ; $5ccd: $00
    nop                                           ; $5cce: $00
    nop                                           ; $5ccf: $00
    nop                                           ; $5cd0: $00
    rst $38                                       ; $5cd1: $ff
    rst $38                                       ; $5cd2: $ff
    ldh a, [rP1]                                  ; $5cd3: $f0 $00
    nop                                           ; $5cd5: $00
    nop                                           ; $5cd6: $00
    nop                                           ; $5cd7: $00
    rrca                                          ; $5cd8: $0f
    pop af                                        ; $5cd9: $f1
    pop af                                        ; $5cda: $f1
    ldh a, [rP1]                                  ; $5cdb: $f0 $00
    nop                                           ; $5cdd: $00
    nop                                           ; $5cde: $00
    nop                                           ; $5cdf: $00
    rrca                                          ; $5ce0: $0f
    ld de, $ff11                                  ; $5ce1: $11 $11 $ff

jr_045_5ce4:
    nop                                           ; $5ce4: $00
    nop                                           ; $5ce5: $00
    nop                                           ; $5ce6: $00
    nop                                           ; $5ce7: $00
    nop                                           ; $5ce8: $00
    rst $38                                       ; $5ce9: $ff
    pop af                                        ; $5cea: $f1
    ldh a, [rP1]                                  ; $5ceb: $f0 $00
    nop                                           ; $5ced: $00
    nop                                           ; $5cee: $00
    nop                                           ; $5cef: $00
    nop                                           ; $5cf0: $00
    rst $38                                       ; $5cf1: $ff
    ccf                                           ; $5cf2: $3f
    rst $38                                       ; $5cf3: $ff
    nop                                           ; $5cf4: $00
    nop                                           ; $5cf5: $00
    nop                                           ; $5cf6: $00
    nop                                           ; $5cf7: $00
    rrca                                          ; $5cf8: $0f
    rst $38                                       ; $5cf9: $ff
    rst $38                                       ; $5cfa: $ff
    rra                                           ; $5cfb: $1f
    nop                                           ; $5cfc: $00
    nop                                           ; $5cfd: $00
    nop                                           ; $5cfe: $00
    nop                                           ; $5cff: $00
    rst $38                                       ; $5d00: $ff
    rst $38                                       ; $5d01: $ff
    pop af                                        ; $5d02: $f1
    rst $38                                       ; $5d03: $ff
    nop                                           ; $5d04: $00
    nop                                           ; $5d05: $00
    nop                                           ; $5d06: $00
    nop                                           ; $5d07: $00
    pop af                                        ; $5d08: $f1
    rst $38                                       ; $5d09: $ff
    rra                                           ; $5d0a: $1f
    ldh a, [rP1]                                  ; $5d0b: $f0 $00
    nop                                           ; $5d0d: $00
    nop                                           ; $5d0e: $00
    nop                                           ; $5d0f: $00
    rst $38                                       ; $5d10: $ff
    rst $38                                       ; $5d11: $ff
    ld de, $00f0                                  ; $5d12: $11 $f0 $00
    nop                                           ; $5d15: $00
    nop                                           ; $5d16: $00
    nop                                           ; $5d17: $00
    rst $38                                       ; $5d18: $ff
    rst $38                                       ; $5d19: $ff
    rst $38                                       ; $5d1a: $ff
    nop                                           ; $5d1b: $00
    nop                                           ; $5d1c: $00
    nop                                           ; $5d1d: $00
    nop                                           ; $5d1e: $00
    nop                                           ; $5d1f: $00
    rst $38                                       ; $5d20: $ff
    ld de, $00f0                                  ; $5d21: $11 $f0 $00
    nop                                           ; $5d24: $00
    nop                                           ; $5d25: $00
    nop                                           ; $5d26: $00
    nop                                           ; $5d27: $00
    rrca                                          ; $5d28: $0f
    rst $38                                       ; $5d29: $ff
    ldh a, [rP1]                                  ; $5d2a: $f0 $00
    nop                                           ; $5d2c: $00
    nop                                           ; $5d2d: $00
    nop                                           ; $5d2e: $00
    nop                                           ; $5d2f: $00
    nop                                           ; $5d30: $00
    rst $38                                       ; $5d31: $ff
    ldh a, [rP1]                                  ; $5d32: $f0 $00
    nop                                           ; $5d34: $00
    nop                                           ; $5d35: $00
    nop                                           ; $5d36: $00
    nop                                           ; $5d37: $00
    nop                                           ; $5d38: $00
    rst $38                                       ; $5d39: $ff
    ldh a, [rP1]                                  ; $5d3a: $f0 $00
    nop                                           ; $5d3c: $00
    nop                                           ; $5d3d: $00
    ld b, e                                       ; $5d3e: $43
    jr jr_045_5d5a                                ; $5d3f: $18 $19

    daa                                           ; $5d41: $27
    ld l, c                                       ; $5d42: $69
    ld a, b                                       ; $5d43: $78
    rst $38                                       ; $5d44: $ff
    dec b                                         ; $5d45: $05
    ld [hl], l                                    ; $5d46: $75
    ld h, [hl]                                    ; $5d47: $66
    ld l, h                                       ; $5d48: $6c
    ld e, l                                       ; $5d49: $5d
    push af                                       ; $5d4a: $f5
    ld e, l                                       ; $5d4b: $5d
    ld a, [hl]                                    ; $5d4c: $7e
    ld e, [hl]                                    ; $5d4d: $5e
    inc b                                         ; $5d4e: $04
    ld e, a                                       ; $5d4f: $5f
    adc l                                         ; $5d50: $8d
    ld e, a                                       ; $5d51: $5f
    ld d, $60                                     ; $5d52: $16 $60
    sbc d                                         ; $5d54: $9a
    ld h, b                                       ; $5d55: $60
    inc h                                         ; $5d56: $24
    ld h, c                                       ; $5d57: $61
    xor h                                         ; $5d58: $ac
    ld h, c                                       ; $5d59: $61

jr_045_5d5a:
    dec [hl]                                      ; $5d5a: $35
    ld h, d                                       ; $5d5b: $62
    cp h                                          ; $5d5c: $bc
    ld h, d                                       ; $5d5d: $62
    ld b, h                                       ; $5d5e: $44
    ld h, e                                       ; $5d5f: $63
    call Call_045_5463                            ; $5d60: $cd $63 $54
    ld h, h                                       ; $5d63: $64
    db $dd                                        ; $5d64: $dd
    ld h, h                                       ; $5d65: $64
    ld h, d                                       ; $5d66: $62
    ld h, l                                       ; $5d67: $65
    ld [$7565], a                                 ; $5d68: $ea $65 $75
    ld h, [hl]                                    ; $5d6b: $66
    nop                                           ; $5d6c: $00
    nop                                           ; $5d6d: $00
    nop                                           ; $5d6e: $00
    rst $38                                       ; $5d6f: $ff
    ldh a, [rP1]                                  ; $5d70: $f0 $00
    nop                                           ; $5d72: $00
    nop                                           ; $5d73: $00
    nop                                           ; $5d74: $00
    nop                                           ; $5d75: $00
    rrca                                          ; $5d76: $0f
    rst $38                                       ; $5d77: $ff
    rst $38                                       ; $5d78: $ff
    nop                                           ; $5d79: $00
    nop                                           ; $5d7a: $00
    nop                                           ; $5d7b: $00
    nop                                           ; $5d7c: $00
    nop                                           ; $5d7d: $00
    rrca                                          ; $5d7e: $0f
    rst $38                                       ; $5d7f: $ff
    rra                                           ; $5d80: $1f
    nop                                           ; $5d81: $00
    nop                                           ; $5d82: $00
    nop                                           ; $5d83: $00
    nop                                           ; $5d84: $00
    nop                                           ; $5d85: $00
    rrca                                          ; $5d86: $0f
    rst $38                                       ; $5d87: $ff
    ldh a, [rP1]                                  ; $5d88: $f0 $00
    nop                                           ; $5d8a: $00
    nop                                           ; $5d8b: $00
    nop                                           ; $5d8c: $00
    nop                                           ; $5d8d: $00
    rrca                                          ; $5d8e: $0f
    rst $38                                       ; $5d8f: $ff
    ldh a, [rP1]                                  ; $5d90: $f0 $00
    nop                                           ; $5d92: $00
    nop                                           ; $5d93: $00
    nop                                           ; $5d94: $00
    nop                                           ; $5d95: $00
    rrca                                          ; $5d96: $0f
    rst $38                                       ; $5d97: $ff
    rst $38                                       ; $5d98: $ff
    nop                                           ; $5d99: $00
    nop                                           ; $5d9a: $00
    nop                                           ; $5d9b: $00
    nop                                           ; $5d9c: $00
    nop                                           ; $5d9d: $00
    rrca                                          ; $5d9e: $0f
    rst $38                                       ; $5d9f: $ff
    rst $38                                       ; $5da0: $ff
    nop                                           ; $5da1: $00
    nop                                           ; $5da2: $00
    nop                                           ; $5da3: $00
    nop                                           ; $5da4: $00
    nop                                           ; $5da5: $00
    rrca                                          ; $5da6: $0f
    di                                            ; $5da7: $f3
    rst $38                                       ; $5da8: $ff
    nop                                           ; $5da9: $00
    nop                                           ; $5daa: $00
    nop                                           ; $5dab: $00
    nop                                           ; $5dac: $00
    nop                                           ; $5dad: $00
    rrca                                          ; $5dae: $0f
    rst $38                                       ; $5daf: $ff
    ldh a, [rP1]                                  ; $5db0: $f0 $00
    nop                                           ; $5db2: $00
    nop                                           ; $5db3: $00
    nop                                           ; $5db4: $00
    nop                                           ; $5db5: $00
    nop                                           ; $5db6: $00
    di                                            ; $5db7: $f3
    rst $38                                       ; $5db8: $ff
    nop                                           ; $5db9: $00
    nop                                           ; $5dba: $00
    nop                                           ; $5dbb: $00
    nop                                           ; $5dbc: $00
    nop                                           ; $5dbd: $00
    nop                                           ; $5dbe: $00
    di                                            ; $5dbf: $f3
    rst $38                                       ; $5dc0: $ff
    nop                                           ; $5dc1: $00
    nop                                           ; $5dc2: $00
    nop                                           ; $5dc3: $00
    nop                                           ; $5dc4: $00
    nop                                           ; $5dc5: $00
    rrca                                          ; $5dc6: $0f
    rst $38                                       ; $5dc7: $ff
    ldh a, [rP1]                                  ; $5dc8: $f0 $00
    nop                                           ; $5dca: $00
    nop                                           ; $5dcb: $00
    nop                                           ; $5dcc: $00
    nop                                           ; $5dcd: $00
    rst $38                                       ; $5dce: $ff
    rst $38                                       ; $5dcf: $ff
    ldh a, [rP1]                                  ; $5dd0: $f0 $00
    nop                                           ; $5dd2: $00
    nop                                           ; $5dd3: $00
    nop                                           ; $5dd4: $00
    nop                                           ; $5dd5: $00
    rst $38                                       ; $5dd6: $ff
    rst $38                                       ; $5dd7: $ff
    ldh a, [rP1]                                  ; $5dd8: $f0 $00
    nop                                           ; $5dda: $00
    nop                                           ; $5ddb: $00
    nop                                           ; $5ddc: $00
    nop                                           ; $5ddd: $00
    rst $38                                       ; $5dde: $ff
    ccf                                           ; $5ddf: $3f
    ldh a, [rP1]                                  ; $5de0: $f0 $00
    nop                                           ; $5de2: $00
    nop                                           ; $5de3: $00
    nop                                           ; $5de4: $00
    nop                                           ; $5de5: $00
    rrca                                          ; $5de6: $0f
    rst $38                                       ; $5de7: $ff
    nop                                           ; $5de8: $00
    nop                                           ; $5de9: $00
    nop                                           ; $5dea: $00
    nop                                           ; $5deb: $00
    ld b, c                                       ; $5dec: $41
    ld d, $17                                     ; $5ded: $16 $17
    jr jr_045_5e27                                ; $5def: $18 $36

    ld d, a                                       ; $5df1: $57
    halt                                          ; $5df2: $76
    rst $38                                       ; $5df3: $ff
    ld b, $00                                     ; $5df4: $06 $00
    rrca                                          ; $5df6: $0f
    ldh a, [rP1]                                  ; $5df7: $f0 $00
    nop                                           ; $5df9: $00
    nop                                           ; $5dfa: $00
    nop                                           ; $5dfb: $00
    nop                                           ; $5dfc: $00
    nop                                           ; $5dfd: $00
    rst $38                                       ; $5dfe: $ff
    ldh a, [rP1]                                  ; $5dff: $f0 $00
    nop                                           ; $5e01: $00
    nop                                           ; $5e02: $00
    nop                                           ; $5e03: $00
    nop                                           ; $5e04: $00
    nop                                           ; $5e05: $00
    rst $38                                       ; $5e06: $ff
    ldh a, [rP1]                                  ; $5e07: $f0 $00
    nop                                           ; $5e09: $00
    nop                                           ; $5e0a: $00
    nop                                           ; $5e0b: $00
    nop                                           ; $5e0c: $00
    nop                                           ; $5e0d: $00
    rst $38                                       ; $5e0e: $ff
    rst $38                                       ; $5e0f: $ff
    nop                                           ; $5e10: $00
    nop                                           ; $5e11: $00
    nop                                           ; $5e12: $00
    nop                                           ; $5e13: $00
    nop                                           ; $5e14: $00
    nop                                           ; $5e15: $00
    rst $38                                       ; $5e16: $ff
    rst $38                                       ; $5e17: $ff
    ldh a, [rP1]                                  ; $5e18: $f0 $00
    nop                                           ; $5e1a: $00
    nop                                           ; $5e1b: $00
    nop                                           ; $5e1c: $00
    nop                                           ; $5e1d: $00
    rrca                                          ; $5e1e: $0f
    rst $38                                       ; $5e1f: $ff
    ldh a, [rP1]                                  ; $5e20: $f0 $00
    nop                                           ; $5e22: $00
    nop                                           ; $5e23: $00
    nop                                           ; $5e24: $00
    nop                                           ; $5e25: $00
    nop                                           ; $5e26: $00

jr_045_5e27:
    rst $38                                       ; $5e27: $ff
    ldh a, [rP1]                                  ; $5e28: $f0 $00
    nop                                           ; $5e2a: $00
    nop                                           ; $5e2b: $00
    nop                                           ; $5e2c: $00
    nop                                           ; $5e2d: $00
    nop                                           ; $5e2e: $00
    rst $38                                       ; $5e2f: $ff
    rst $38                                       ; $5e30: $ff
    nop                                           ; $5e31: $00
    nop                                           ; $5e32: $00
    nop                                           ; $5e33: $00
    nop                                           ; $5e34: $00
    nop                                           ; $5e35: $00
    nop                                           ; $5e36: $00
    rst $38                                       ; $5e37: $ff
    rst $38                                       ; $5e38: $ff
    nop                                           ; $5e39: $00
    nop                                           ; $5e3a: $00
    nop                                           ; $5e3b: $00
    nop                                           ; $5e3c: $00
    nop                                           ; $5e3d: $00
    nop                                           ; $5e3e: $00
    rst $38                                       ; $5e3f: $ff
    rst $38                                       ; $5e40: $ff
    nop                                           ; $5e41: $00
    nop                                           ; $5e42: $00
    nop                                           ; $5e43: $00
    nop                                           ; $5e44: $00
    nop                                           ; $5e45: $00
    nop                                           ; $5e46: $00
    rst $38                                       ; $5e47: $ff
    rst $38                                       ; $5e48: $ff
    ldh a, [rP1]                                  ; $5e49: $f0 $00
    nop                                           ; $5e4b: $00
    nop                                           ; $5e4c: $00
    nop                                           ; $5e4d: $00
    nop                                           ; $5e4e: $00
    rst $38                                       ; $5e4f: $ff
    rst $38                                       ; $5e50: $ff
    rst $38                                       ; $5e51: $ff
    nop                                           ; $5e52: $00
    nop                                           ; $5e53: $00
    nop                                           ; $5e54: $00
    nop                                           ; $5e55: $00
    nop                                           ; $5e56: $00
    rst $38                                       ; $5e57: $ff
    di                                            ; $5e58: $f3
    ccf                                           ; $5e59: $3f
    rst $38                                       ; $5e5a: $ff
    nop                                           ; $5e5b: $00
    nop                                           ; $5e5c: $00
    nop                                           ; $5e5d: $00
    nop                                           ; $5e5e: $00
    rrca                                          ; $5e5f: $0f
    rst $38                                       ; $5e60: $ff
    rst $38                                       ; $5e61: $ff
    rst $38                                       ; $5e62: $ff
    rst $38                                       ; $5e63: $ff
    nop                                           ; $5e64: $00
    nop                                           ; $5e65: $00
    nop                                           ; $5e66: $00
    nop                                           ; $5e67: $00
    rrca                                          ; $5e68: $0f
    rst $38                                       ; $5e69: $ff
    rst $38                                       ; $5e6a: $ff
    rst $38                                       ; $5e6b: $ff
    nop                                           ; $5e6c: $00
    nop                                           ; $5e6d: $00
    nop                                           ; $5e6e: $00
    nop                                           ; $5e6f: $00
    nop                                           ; $5e70: $00
    nop                                           ; $5e71: $00
    rst $38                                       ; $5e72: $ff
    ldh a, [rP1]                                  ; $5e73: $f0 $00
    ld c, b                                       ; $5e75: $48
    inc de                                        ; $5e76: $13
    inc d                                         ; $5e77: $14
    inc sp                                        ; $5e78: $33
    ld b, l                                       ; $5e79: $45
    ld h, l                                       ; $5e7a: $65
    sub l                                         ; $5e7b: $95
    rst $38                                       ; $5e7c: $ff
    ld b, $00                                     ; $5e7d: $06 $00
    nop                                           ; $5e7f: $00
    nop                                           ; $5e80: $00
    nop                                           ; $5e81: $00
    nop                                           ; $5e82: $00
    nop                                           ; $5e83: $00
    nop                                           ; $5e84: $00
    nop                                           ; $5e85: $00
    nop                                           ; $5e86: $00
    nop                                           ; $5e87: $00
    nop                                           ; $5e88: $00
    nop                                           ; $5e89: $00
    nop                                           ; $5e8a: $00
    nop                                           ; $5e8b: $00
    nop                                           ; $5e8c: $00
    nop                                           ; $5e8d: $00
    nop                                           ; $5e8e: $00
    nop                                           ; $5e8f: $00
    nop                                           ; $5e90: $00
    nop                                           ; $5e91: $00
    nop                                           ; $5e92: $00
    nop                                           ; $5e93: $00
    nop                                           ; $5e94: $00
    nop                                           ; $5e95: $00
    nop                                           ; $5e96: $00
    nop                                           ; $5e97: $00
    nop                                           ; $5e98: $00
    nop                                           ; $5e99: $00
    nop                                           ; $5e9a: $00
    nop                                           ; $5e9b: $00
    nop                                           ; $5e9c: $00
    nop                                           ; $5e9d: $00
    nop                                           ; $5e9e: $00
    nop                                           ; $5e9f: $00
    nop                                           ; $5ea0: $00
    rrca                                          ; $5ea1: $0f
    rst $38                                       ; $5ea2: $ff
    ldh a, [rP1]                                  ; $5ea3: $f0 $00
    nop                                           ; $5ea5: $00
    nop                                           ; $5ea6: $00
    nop                                           ; $5ea7: $00
    nop                                           ; $5ea8: $00
    rst $38                                       ; $5ea9: $ff
    rst $38                                       ; $5eaa: $ff
    ldh a, [rP1]                                  ; $5eab: $f0 $00
    nop                                           ; $5ead: $00
    nop                                           ; $5eae: $00
    nop                                           ; $5eaf: $00
    nop                                           ; $5eb0: $00
    rst $38                                       ; $5eb1: $ff
    rst $38                                       ; $5eb2: $ff
    ldh a, [rP1]                                  ; $5eb3: $f0 $00
    nop                                           ; $5eb5: $00
    nop                                           ; $5eb6: $00
    nop                                           ; $5eb7: $00
    nop                                           ; $5eb8: $00
    rrca                                          ; $5eb9: $0f
    rst $38                                       ; $5eba: $ff
    nop                                           ; $5ebb: $00
    nop                                           ; $5ebc: $00
    nop                                           ; $5ebd: $00
    nop                                           ; $5ebe: $00
    nop                                           ; $5ebf: $00
    nop                                           ; $5ec0: $00
    pop af                                        ; $5ec1: $f1
    ldh a, [rP1]                                  ; $5ec2: $f0 $00
    nop                                           ; $5ec4: $00
    nop                                           ; $5ec5: $00
    nop                                           ; $5ec6: $00
    nop                                           ; $5ec7: $00
    rrca                                          ; $5ec8: $0f
    pop af                                        ; $5ec9: $f1
    ldh a, [rP1]                                  ; $5eca: $f0 $00
    nop                                           ; $5ecc: $00
    nop                                           ; $5ecd: $00
    nop                                           ; $5ece: $00
    nop                                           ; $5ecf: $00
    rrca                                          ; $5ed0: $0f
    inc sp                                        ; $5ed1: $33
    ldh a, [rP1]                                  ; $5ed2: $f0 $00
    nop                                           ; $5ed4: $00
    nop                                           ; $5ed5: $00
    nop                                           ; $5ed6: $00
    nop                                           ; $5ed7: $00
    rrca                                          ; $5ed8: $0f
    rst $38                                       ; $5ed9: $ff
    ldh a, [rP1]                                  ; $5eda: $f0 $00
    nop                                           ; $5edc: $00
    nop                                           ; $5edd: $00
    nop                                           ; $5ede: $00
    nop                                           ; $5edf: $00
    nop                                           ; $5ee0: $00
    rst $38                                       ; $5ee1: $ff
    nop                                           ; $5ee2: $00
    nop                                           ; $5ee3: $00
    nop                                           ; $5ee4: $00
    nop                                           ; $5ee5: $00
    nop                                           ; $5ee6: $00
    nop                                           ; $5ee7: $00
    nop                                           ; $5ee8: $00
    nop                                           ; $5ee9: $00
    nop                                           ; $5eea: $00
    nop                                           ; $5eeb: $00
    nop                                           ; $5eec: $00
    nop                                           ; $5eed: $00
    nop                                           ; $5eee: $00
    nop                                           ; $5eef: $00
    nop                                           ; $5ef0: $00
    nop                                           ; $5ef1: $00
    nop                                           ; $5ef2: $00
    nop                                           ; $5ef3: $00
    nop                                           ; $5ef4: $00
    nop                                           ; $5ef5: $00
    nop                                           ; $5ef6: $00
    nop                                           ; $5ef7: $00
    nop                                           ; $5ef8: $00
    nop                                           ; $5ef9: $00
    nop                                           ; $5efa: $00
    nop                                           ; $5efb: $00
    nop                                           ; $5efc: $00
    nop                                           ; $5efd: $00
    ld e, $57                                     ; $5efe: $1e $57
    ld e, b                                       ; $5f00: $58
    ld l, c                                       ; $5f01: $69
    rst $38                                       ; $5f02: $ff
    inc bc                                        ; $5f03: $03
    nop                                           ; $5f04: $00
    rrca                                          ; $5f05: $0f
    ldh a, [rP1]                                  ; $5f06: $f0 $00
    nop                                           ; $5f08: $00
    nop                                           ; $5f09: $00
    nop                                           ; $5f0a: $00
    nop                                           ; $5f0b: $00
    nop                                           ; $5f0c: $00
    rst $38                                       ; $5f0d: $ff
    rst $38                                       ; $5f0e: $ff
    nop                                           ; $5f0f: $00
    ldh a, [rP1]                                  ; $5f10: $f0 $00
    nop                                           ; $5f12: $00
    nop                                           ; $5f13: $00
    nop                                           ; $5f14: $00
    rst $38                                       ; $5f15: $ff
    pop af                                        ; $5f16: $f1
    rst $38                                       ; $5f17: $ff
    rst $38                                       ; $5f18: $ff
    ldh a, [rP1]                                  ; $5f19: $f0 $00
    nop                                           ; $5f1b: $00
    nop                                           ; $5f1c: $00
    rrca                                          ; $5f1d: $0f
    rst $38                                       ; $5f1e: $ff
    pop af                                        ; $5f1f: $f1
    rst $38                                       ; $5f20: $ff
    ldh a, [rP1]                                  ; $5f21: $f0 $00
    nop                                           ; $5f23: $00
    nop                                           ; $5f24: $00
    nop                                           ; $5f25: $00
    nop                                           ; $5f26: $00
    rst $38                                       ; $5f27: $ff
    rst $38                                       ; $5f28: $ff
    ldh a, [rP1]                                  ; $5f29: $f0 $00
    nop                                           ; $5f2b: $00
    nop                                           ; $5f2c: $00
    nop                                           ; $5f2d: $00
    nop                                           ; $5f2e: $00
    rrca                                          ; $5f2f: $0f
    rst $38                                       ; $5f30: $ff
    ldh a, [rP1]                                  ; $5f31: $f0 $00
    nop                                           ; $5f33: $00
    nop                                           ; $5f34: $00
    nop                                           ; $5f35: $00
    nop                                           ; $5f36: $00
    nop                                           ; $5f37: $00
    rrca                                          ; $5f38: $0f
    rst $38                                       ; $5f39: $ff
    nop                                           ; $5f3a: $00
    nop                                           ; $5f3b: $00
    nop                                           ; $5f3c: $00
    nop                                           ; $5f3d: $00
    nop                                           ; $5f3e: $00
    nop                                           ; $5f3f: $00
    rst $38                                       ; $5f40: $ff
    rst $38                                       ; $5f41: $ff
    nop                                           ; $5f42: $00
    nop                                           ; $5f43: $00
    nop                                           ; $5f44: $00
    nop                                           ; $5f45: $00
    nop                                           ; $5f46: $00
    nop                                           ; $5f47: $00
    rst $38                                       ; $5f48: $ff
    rst $38                                       ; $5f49: $ff
    nop                                           ; $5f4a: $00
    nop                                           ; $5f4b: $00
    nop                                           ; $5f4c: $00
    nop                                           ; $5f4d: $00
    nop                                           ; $5f4e: $00
    nop                                           ; $5f4f: $00
    rst $38                                       ; $5f50: $ff
    rst $38                                       ; $5f51: $ff
    nop                                           ; $5f52: $00
    nop                                           ; $5f53: $00
    nop                                           ; $5f54: $00
    nop                                           ; $5f55: $00
    nop                                           ; $5f56: $00
    rrca                                          ; $5f57: $0f
    rra                                           ; $5f58: $1f
    rst $38                                       ; $5f59: $ff
    nop                                           ; $5f5a: $00
    nop                                           ; $5f5b: $00
    nop                                           ; $5f5c: $00
    nop                                           ; $5f5d: $00
    nop                                           ; $5f5e: $00
    rst $38                                       ; $5f5f: $ff
    rst $38                                       ; $5f60: $ff
    rst $38                                       ; $5f61: $ff
    nop                                           ; $5f62: $00
    nop                                           ; $5f63: $00
    nop                                           ; $5f64: $00
    nop                                           ; $5f65: $00
    rrca                                          ; $5f66: $0f
    rst $38                                       ; $5f67: $ff
    rst $38                                       ; $5f68: $ff
    ldh a, [rP1]                                  ; $5f69: $f0 $00
    nop                                           ; $5f6b: $00
    nop                                           ; $5f6c: $00
    nop                                           ; $5f6d: $00
    rst $38                                       ; $5f6e: $ff
    rst $38                                       ; $5f6f: $ff
    rst $38                                       ; $5f70: $ff
    ldh a, [rP1]                                  ; $5f71: $f0 $00
    nop                                           ; $5f73: $00
    nop                                           ; $5f74: $00
    nop                                           ; $5f75: $00
    di                                            ; $5f76: $f3
    rst $38                                       ; $5f77: $ff
    ldh a, [rP1]                                  ; $5f78: $f0 $00
    nop                                           ; $5f7a: $00
    nop                                           ; $5f7b: $00
    nop                                           ; $5f7c: $00
    nop                                           ; $5f7d: $00
    rst $38                                       ; $5f7e: $ff
    ldh a, [rP1]                                  ; $5f7f: $f0 $00
    nop                                           ; $5f81: $00
    nop                                           ; $5f82: $00
    nop                                           ; $5f83: $00
    ld c, h                                       ; $5f84: $4c
    jr z, jr_045_5fb0                             ; $5f85: $28 $29

    ld c, b                                       ; $5f87: $48
    ld a, c                                       ; $5f88: $79
    sbc c                                         ; $5f89: $99
    sbc d                                         ; $5f8a: $9a
    rst $38                                       ; $5f8b: $ff
    ld b, $00                                     ; $5f8c: $06 $00
    nop                                           ; $5f8e: $00
    nop                                           ; $5f8f: $00
    nop                                           ; $5f90: $00
    rst $38                                       ; $5f91: $ff
    nop                                           ; $5f92: $00
    nop                                           ; $5f93: $00
    nop                                           ; $5f94: $00
    nop                                           ; $5f95: $00
    nop                                           ; $5f96: $00
    nop                                           ; $5f97: $00
    rst $38                                       ; $5f98: $ff
    rst $38                                       ; $5f99: $ff
    ldh a, [rP1]                                  ; $5f9a: $f0 $00
    nop                                           ; $5f9c: $00
    nop                                           ; $5f9d: $00
    nop                                           ; $5f9e: $00
    nop                                           ; $5f9f: $00
    rst $38                                       ; $5fa0: $ff
    rst $38                                       ; $5fa1: $ff
    nop                                           ; $5fa2: $00
    nop                                           ; $5fa3: $00
    nop                                           ; $5fa4: $00
    nop                                           ; $5fa5: $00
    nop                                           ; $5fa6: $00
    nop                                           ; $5fa7: $00
    rst $38                                       ; $5fa8: $ff
    rst $38                                       ; $5fa9: $ff
    nop                                           ; $5faa: $00
    nop                                           ; $5fab: $00
    nop                                           ; $5fac: $00
    nop                                           ; $5fad: $00
    nop                                           ; $5fae: $00
    nop                                           ; $5faf: $00

jr_045_5fb0:
    rst $38                                       ; $5fb0: $ff
    rst $38                                       ; $5fb1: $ff
    nop                                           ; $5fb2: $00
    nop                                           ; $5fb3: $00
    nop                                           ; $5fb4: $00
    nop                                           ; $5fb5: $00
    nop                                           ; $5fb6: $00
    nop                                           ; $5fb7: $00
    rst $38                                       ; $5fb8: $ff
    rst $38                                       ; $5fb9: $ff
    ldh a, [rP1]                                  ; $5fba: $f0 $00
    nop                                           ; $5fbc: $00
    nop                                           ; $5fbd: $00
    nop                                           ; $5fbe: $00
    nop                                           ; $5fbf: $00
    rst $38                                       ; $5fc0: $ff
    pop af                                        ; $5fc1: $f1
    ldh a, [rP1]                                  ; $5fc2: $f0 $00
    nop                                           ; $5fc4: $00
    nop                                           ; $5fc5: $00
    nop                                           ; $5fc6: $00
    rrca                                          ; $5fc7: $0f
    rst $38                                       ; $5fc8: $ff
    rst $38                                       ; $5fc9: $ff
    nop                                           ; $5fca: $00
    nop                                           ; $5fcb: $00
    nop                                           ; $5fcc: $00
    nop                                           ; $5fcd: $00
    nop                                           ; $5fce: $00
    rrca                                          ; $5fcf: $0f
    rst $38                                       ; $5fd0: $ff
    rst $38                                       ; $5fd1: $ff
    nop                                           ; $5fd2: $00
    nop                                           ; $5fd3: $00
    nop                                           ; $5fd4: $00
    nop                                           ; $5fd5: $00
    nop                                           ; $5fd6: $00
    rrca                                          ; $5fd7: $0f
    rst $38                                       ; $5fd8: $ff
    rst $38                                       ; $5fd9: $ff
    nop                                           ; $5fda: $00
    nop                                           ; $5fdb: $00
    nop                                           ; $5fdc: $00
    nop                                           ; $5fdd: $00
    nop                                           ; $5fde: $00
    rrca                                          ; $5fdf: $0f
    rst $38                                       ; $5fe0: $ff
    ldh a, [rP1]                                  ; $5fe1: $f0 $00
    nop                                           ; $5fe3: $00
    nop                                           ; $5fe4: $00
    nop                                           ; $5fe5: $00
    nop                                           ; $5fe6: $00
    rrca                                          ; $5fe7: $0f
    rst $38                                       ; $5fe8: $ff
    ldh a, [rP1]                                  ; $5fe9: $f0 $00
    nop                                           ; $5feb: $00
    nop                                           ; $5fec: $00
    nop                                           ; $5fed: $00
    nop                                           ; $5fee: $00
    rrca                                          ; $5fef: $0f
    rst $38                                       ; $5ff0: $ff
    nop                                           ; $5ff1: $00
    nop                                           ; $5ff2: $00
    nop                                           ; $5ff3: $00
    nop                                           ; $5ff4: $00
    nop                                           ; $5ff5: $00
    nop                                           ; $5ff6: $00
    rrca                                          ; $5ff7: $0f
    rst $38                                       ; $5ff8: $ff
    nop                                           ; $5ff9: $00
    nop                                           ; $5ffa: $00
    nop                                           ; $5ffb: $00
    nop                                           ; $5ffc: $00
    nop                                           ; $5ffd: $00
    nop                                           ; $5ffe: $00
    rst $38                                       ; $5fff: $ff
    ccf                                           ; $6000: $3f
    nop                                           ; $6001: $00
    nop                                           ; $6002: $00
    nop                                           ; $6003: $00
    nop                                           ; $6004: $00
    nop                                           ; $6005: $00
    nop                                           ; $6006: $00
    rrca                                          ; $6007: $0f
    rst $38                                       ; $6008: $ff
    nop                                           ; $6009: $00
    nop                                           ; $600a: $00
    nop                                           ; $600b: $00
    nop                                           ; $600c: $00
    ccf                                           ; $600d: $3f
    jr jr_045_6029                                ; $600e: $18 $19

    daa                                           ; $6010: $27
    ld l, b                                       ; $6011: $68
    halt                                          ; $6012: $76
    ld [hl], a                                    ; $6013: $77
    rst $38                                       ; $6014: $ff
    ld b, $00                                     ; $6015: $06 $00
    nop                                           ; $6017: $00
    nop                                           ; $6018: $00
    nop                                           ; $6019: $00
    nop                                           ; $601a: $00
    nop                                           ; $601b: $00
    nop                                           ; $601c: $00
    nop                                           ; $601d: $00
    nop                                           ; $601e: $00
    nop                                           ; $601f: $00
    nop                                           ; $6020: $00
    nop                                           ; $6021: $00
    nop                                           ; $6022: $00
    nop                                           ; $6023: $00
    nop                                           ; $6024: $00
    nop                                           ; $6025: $00
    nop                                           ; $6026: $00
    nop                                           ; $6027: $00
    nop                                           ; $6028: $00

jr_045_6029:
    nop                                           ; $6029: $00
    nop                                           ; $602a: $00
    nop                                           ; $602b: $00
    nop                                           ; $602c: $00
    nop                                           ; $602d: $00
    nop                                           ; $602e: $00
    nop                                           ; $602f: $00
    nop                                           ; $6030: $00
    nop                                           ; $6031: $00
    rst $38                                       ; $6032: $ff
    ldh a, [rP1]                                  ; $6033: $f0 $00
    nop                                           ; $6035: $00
    nop                                           ; $6036: $00
    nop                                           ; $6037: $00
    nop                                           ; $6038: $00
    rrca                                          ; $6039: $0f
    ld de, $001f                                  ; $603a: $11 $1f $00
    nop                                           ; $603d: $00
    nop                                           ; $603e: $00
    nop                                           ; $603f: $00
    nop                                           ; $6040: $00
    rrca                                          ; $6041: $0f
    rst $38                                       ; $6042: $ff
    rra                                           ; $6043: $1f
    nop                                           ; $6044: $00
    nop                                           ; $6045: $00
    nop                                           ; $6046: $00
    nop                                           ; $6047: $00
    nop                                           ; $6048: $00
    pop af                                        ; $6049: $f1
    rst $38                                       ; $604a: $ff
    rra                                           ; $604b: $1f
    nop                                           ; $604c: $00
    nop                                           ; $604d: $00
    nop                                           ; $604e: $00
    nop                                           ; $604f: $00
    nop                                           ; $6050: $00
    rst $38                                       ; $6051: $ff
    rst $38                                       ; $6052: $ff
    ldh a, [rP1]                                  ; $6053: $f0 $00
    nop                                           ; $6055: $00
    nop                                           ; $6056: $00
    nop                                           ; $6057: $00
    rrca                                          ; $6058: $0f
    rst $38                                       ; $6059: $ff
    pop af                                        ; $605a: $f1
    ldh a, [rP1]                                  ; $605b: $f0 $00
    nop                                           ; $605d: $00
    nop                                           ; $605e: $00
    nop                                           ; $605f: $00
    pop af                                        ; $6060: $f1
    rst $38                                       ; $6061: $ff
    rra                                           ; $6062: $1f
    ldh a, [rP1]                                  ; $6063: $f0 $00
    nop                                           ; $6065: $00
    nop                                           ; $6066: $00
    nop                                           ; $6067: $00
    rst $38                                       ; $6068: $ff
    rst $38                                       ; $6069: $ff
    rra                                           ; $606a: $1f
    nop                                           ; $606b: $00
    nop                                           ; $606c: $00
    nop                                           ; $606d: $00
    nop                                           ; $606e: $00
    nop                                           ; $606f: $00
    rst $38                                       ; $6070: $ff
    ccf                                           ; $6071: $3f
    rra                                           ; $6072: $1f
    nop                                           ; $6073: $00
    nop                                           ; $6074: $00
    nop                                           ; $6075: $00
    nop                                           ; $6076: $00
    nop                                           ; $6077: $00
    rrca                                          ; $6078: $0f
    rst $38                                       ; $6079: $ff
    ldh a, [rP1]                                  ; $607a: $f0 $00
    nop                                           ; $607c: $00
    nop                                           ; $607d: $00
    nop                                           ; $607e: $00
    nop                                           ; $607f: $00
    nop                                           ; $6080: $00
    nop                                           ; $6081: $00
    nop                                           ; $6082: $00
    nop                                           ; $6083: $00
    nop                                           ; $6084: $00
    nop                                           ; $6085: $00
    nop                                           ; $6086: $00
    nop                                           ; $6087: $00
    nop                                           ; $6088: $00
    nop                                           ; $6089: $00
    nop                                           ; $608a: $00
    nop                                           ; $608b: $00
    nop                                           ; $608c: $00
    nop                                           ; $608d: $00
    nop                                           ; $608e: $00
    nop                                           ; $608f: $00
    nop                                           ; $6090: $00
    nop                                           ; $6091: $00
    nop                                           ; $6092: $00
    nop                                           ; $6093: $00
    nop                                           ; $6094: $00
    nop                                           ; $6095: $00
    add hl, hl                                    ; $6096: $29
    ld e, c                                       ; $6097: $59
    rst $38                                       ; $6098: $ff
    ld bc, $0000                                  ; $6099: $01 $00 $00
    nop                                           ; $609c: $00
    nop                                           ; $609d: $00
    rrca                                          ; $609e: $0f
    nop                                           ; $609f: $00
    nop                                           ; $60a0: $00
    nop                                           ; $60a1: $00
    nop                                           ; $60a2: $00
    nop                                           ; $60a3: $00
    nop                                           ; $60a4: $00
    rrca                                          ; $60a5: $0f
    rst $38                                       ; $60a6: $ff
    ldh a, [rP1]                                  ; $60a7: $f0 $00
    nop                                           ; $60a9: $00
    nop                                           ; $60aa: $00
    nop                                           ; $60ab: $00
    nop                                           ; $60ac: $00
    rst $38                                       ; $60ad: $ff
    rst $38                                       ; $60ae: $ff
    rst $38                                       ; $60af: $ff
    nop                                           ; $60b0: $00
    nop                                           ; $60b1: $00
    nop                                           ; $60b2: $00
    nop                                           ; $60b3: $00
    rrca                                          ; $60b4: $0f
    rst $38                                       ; $60b5: $ff
    rst $38                                       ; $60b6: $ff
    ldh a, [rP1]                                  ; $60b7: $f0 $00
    nop                                           ; $60b9: $00
    nop                                           ; $60ba: $00
    nop                                           ; $60bb: $00
    rst $38                                       ; $60bc: $ff
    rst $38                                       ; $60bd: $ff
    ldh a, [rP1]                                  ; $60be: $f0 $00
    nop                                           ; $60c0: $00
    nop                                           ; $60c1: $00
    nop                                           ; $60c2: $00
    nop                                           ; $60c3: $00
    rst $38                                       ; $60c4: $ff
    rst $38                                       ; $60c5: $ff
    ldh a, [rP1]                                  ; $60c6: $f0 $00
    nop                                           ; $60c8: $00
    nop                                           ; $60c9: $00
    nop                                           ; $60ca: $00
    nop                                           ; $60cb: $00
    rst $38                                       ; $60cc: $ff
    rst $38                                       ; $60cd: $ff
    ldh a, [rP1]                                  ; $60ce: $f0 $00
    nop                                           ; $60d0: $00
    nop                                           ; $60d1: $00
    nop                                           ; $60d2: $00
    nop                                           ; $60d3: $00
    rst $38                                       ; $60d4: $ff
    rst $38                                       ; $60d5: $ff
    rst $38                                       ; $60d6: $ff
    nop                                           ; $60d7: $00
    nop                                           ; $60d8: $00
    nop                                           ; $60d9: $00
    nop                                           ; $60da: $00
    nop                                           ; $60db: $00
    rst $38                                       ; $60dc: $ff
    di                                            ; $60dd: $f3
    pop af                                        ; $60de: $f1
    ldh a, [rP1]                                  ; $60df: $f0 $00
    nop                                           ; $60e1: $00
    nop                                           ; $60e2: $00
    nop                                           ; $60e3: $00
    rrca                                          ; $60e4: $0f
    rst $38                                       ; $60e5: $ff
    rst $38                                       ; $60e6: $ff
    ldh a, [rP1]                                  ; $60e7: $f0 $00
    nop                                           ; $60e9: $00
    nop                                           ; $60ea: $00
    nop                                           ; $60eb: $00
    nop                                           ; $60ec: $00
    rrca                                          ; $60ed: $0f
    rst $38                                       ; $60ee: $ff
    rra                                           ; $60ef: $1f
    nop                                           ; $60f0: $00
    nop                                           ; $60f1: $00
    nop                                           ; $60f2: $00
    nop                                           ; $60f3: $00
    nop                                           ; $60f4: $00
    rrca                                          ; $60f5: $0f
    rst $38                                       ; $60f6: $ff
    rra                                           ; $60f7: $1f
    nop                                           ; $60f8: $00
    nop                                           ; $60f9: $00
    nop                                           ; $60fa: $00
    nop                                           ; $60fb: $00
    nop                                           ; $60fc: $00
    rrca                                          ; $60fd: $0f
    rst $38                                       ; $60fe: $ff
    rra                                           ; $60ff: $1f
    nop                                           ; $6100: $00
    nop                                           ; $6101: $00
    nop                                           ; $6102: $00
    nop                                           ; $6103: $00
    nop                                           ; $6104: $00
    nop                                           ; $6105: $00
    rst $38                                       ; $6106: $ff
    rst $38                                       ; $6107: $ff
    nop                                           ; $6108: $00
    nop                                           ; $6109: $00
    nop                                           ; $610a: $00
    nop                                           ; $610b: $00
    nop                                           ; $610c: $00
    nop                                           ; $610d: $00
    rst $38                                       ; $610e: $ff
    rst $38                                       ; $610f: $ff
    nop                                           ; $6110: $00
    nop                                           ; $6111: $00
    nop                                           ; $6112: $00
    nop                                           ; $6113: $00
    nop                                           ; $6114: $00
    nop                                           ; $6115: $00
    rrca                                          ; $6116: $0f
    rst $38                                       ; $6117: $ff
    nop                                           ; $6118: $00
    nop                                           ; $6119: $00
    ld c, b                                       ; $611a: $48
    jr jr_045_6136                                ; $611b: $18 $19

    ld [hl], $37                                  ; $611d: $36 $37
    ld d, l                                       ; $611f: $55
    ld h, h                                       ; $6120: $64
    ld h, [hl]                                    ; $6121: $66
    rst $38                                       ; $6122: $ff
    rlca                                          ; $6123: $07
    nop                                           ; $6124: $00
    nop                                           ; $6125: $00
    nop                                           ; $6126: $00
    nop                                           ; $6127: $00
    nop                                           ; $6128: $00
    rrca                                          ; $6129: $0f
    rst $38                                       ; $612a: $ff
    nop                                           ; $612b: $00
    nop                                           ; $612c: $00
    nop                                           ; $612d: $00
    nop                                           ; $612e: $00
    nop                                           ; $612f: $00
    nop                                           ; $6130: $00
    rst $38                                       ; $6131: $ff
    rst $38                                       ; $6132: $ff
    nop                                           ; $6133: $00
    nop                                           ; $6134: $00
    nop                                           ; $6135: $00

jr_045_6136:
    nop                                           ; $6136: $00
    nop                                           ; $6137: $00
    nop                                           ; $6138: $00
    rst $38                                       ; $6139: $ff
    rst $38                                       ; $613a: $ff
    nop                                           ; $613b: $00
    nop                                           ; $613c: $00
    nop                                           ; $613d: $00
    nop                                           ; $613e: $00
    nop                                           ; $613f: $00
    nop                                           ; $6140: $00
    rst $38                                       ; $6141: $ff
    rst $38                                       ; $6142: $ff
    nop                                           ; $6143: $00
    nop                                           ; $6144: $00
    nop                                           ; $6145: $00
    nop                                           ; $6146: $00
    nop                                           ; $6147: $00
    nop                                           ; $6148: $00
    rrca                                          ; $6149: $0f
    rst $38                                       ; $614a: $ff
    nop                                           ; $614b: $00
    nop                                           ; $614c: $00
    nop                                           ; $614d: $00
    nop                                           ; $614e: $00
    nop                                           ; $614f: $00
    nop                                           ; $6150: $00
    rst $38                                       ; $6151: $ff
    rst $38                                       ; $6152: $ff
    nop                                           ; $6153: $00
    nop                                           ; $6154: $00
    nop                                           ; $6155: $00
    nop                                           ; $6156: $00
    nop                                           ; $6157: $00
    nop                                           ; $6158: $00
    rst $38                                       ; $6159: $ff
    rst $38                                       ; $615a: $ff
    nop                                           ; $615b: $00
    nop                                           ; $615c: $00
    nop                                           ; $615d: $00
    nop                                           ; $615e: $00
    rrca                                          ; $615f: $0f
    rst $38                                       ; $6160: $ff
    rst $38                                       ; $6161: $ff
    rst $38                                       ; $6162: $ff
    nop                                           ; $6163: $00
    nop                                           ; $6164: $00
    nop                                           ; $6165: $00
    nop                                           ; $6166: $00
    rst $38                                       ; $6167: $ff
    rst $38                                       ; $6168: $ff
    rst $38                                       ; $6169: $ff
    ldh a, [rP1]                                  ; $616a: $f0 $00
    nop                                           ; $616c: $00
    nop                                           ; $616d: $00
    rrca                                          ; $616e: $0f
    rst $38                                       ; $616f: $ff
    rst $38                                       ; $6170: $ff
    rst $38                                       ; $6171: $ff
    nop                                           ; $6172: $00
    nop                                           ; $6173: $00
    nop                                           ; $6174: $00
    nop                                           ; $6175: $00
    rst $38                                       ; $6176: $ff
    rst $38                                       ; $6177: $ff
    rst $38                                       ; $6178: $ff
    nop                                           ; $6179: $00
    nop                                           ; $617a: $00
    nop                                           ; $617b: $00
    nop                                           ; $617c: $00
    rst $38                                       ; $617d: $ff
    di                                            ; $617e: $f3
    rst $38                                       ; $617f: $ff
    ldh a, [rP1]                                  ; $6180: $f0 $00
    nop                                           ; $6182: $00
    nop                                           ; $6183: $00
    rrca                                          ; $6184: $0f
    pop af                                        ; $6185: $f1
    rst $38                                       ; $6186: $ff
    rst $38                                       ; $6187: $ff
    nop                                           ; $6188: $00
    nop                                           ; $6189: $00
    nop                                           ; $618a: $00
    nop                                           ; $618b: $00
    rrca                                          ; $618c: $0f
    rst $38                                       ; $618d: $ff
    pop af                                        ; $618e: $f1
    rst $38                                       ; $618f: $ff
    nop                                           ; $6190: $00
    nop                                           ; $6191: $00
    nop                                           ; $6192: $00
    nop                                           ; $6193: $00
    rrca                                          ; $6194: $0f
    di                                            ; $6195: $f3
    rst $38                                       ; $6196: $ff
    ldh a, [rP1]                                  ; $6197: $f0 $00
    nop                                           ; $6199: $00
    nop                                           ; $619a: $00
    nop                                           ; $619b: $00
    nop                                           ; $619c: $00
    rst $38                                       ; $619d: $ff
    ldh a, [rP1]                                  ; $619e: $f0 $00
    nop                                           ; $61a0: $00
    nop                                           ; $61a1: $00
    nop                                           ; $61a2: $00
    nop                                           ; $61a3: $00
    ld c, a                                       ; $61a4: $4f
    dec de                                        ; $61a5: $1b
    inc e                                         ; $61a6: $1c
    ld e, e                                       ; $61a7: $5b
    sbc b                                         ; $61a8: $98
    sbc c                                         ; $61a9: $99
    rst $38                                       ; $61aa: $ff
    dec b                                         ; $61ab: $05
    nop                                           ; $61ac: $00
    nop                                           ; $61ad: $00
    nop                                           ; $61ae: $00
    rrca                                          ; $61af: $0f
    rst $38                                       ; $61b0: $ff
    nop                                           ; $61b1: $00
    nop                                           ; $61b2: $00
    nop                                           ; $61b3: $00
    nop                                           ; $61b4: $00
    nop                                           ; $61b5: $00
    nop                                           ; $61b6: $00
    rrca                                          ; $61b7: $0f
    rst $38                                       ; $61b8: $ff
    nop                                           ; $61b9: $00
    nop                                           ; $61ba: $00
    nop                                           ; $61bb: $00
    nop                                           ; $61bc: $00
    nop                                           ; $61bd: $00
    nop                                           ; $61be: $00
    rrca                                          ; $61bf: $0f
    rst $38                                       ; $61c0: $ff
    nop                                           ; $61c1: $00
    nop                                           ; $61c2: $00
    nop                                           ; $61c3: $00
    nop                                           ; $61c4: $00
    nop                                           ; $61c5: $00
    nop                                           ; $61c6: $00
    rrca                                          ; $61c7: $0f
    rst $38                                       ; $61c8: $ff
    ldh a, [rP1]                                  ; $61c9: $f0 $00
    nop                                           ; $61cb: $00
    nop                                           ; $61cc: $00
    nop                                           ; $61cd: $00
    nop                                           ; $61ce: $00
    rrca                                          ; $61cf: $0f
    rst $38                                       ; $61d0: $ff
    ldh a, [rP1]                                  ; $61d1: $f0 $00
    nop                                           ; $61d3: $00
    nop                                           ; $61d4: $00
    nop                                           ; $61d5: $00
    nop                                           ; $61d6: $00
    rrca                                          ; $61d7: $0f
    rst $38                                       ; $61d8: $ff
    ldh a, [rP1]                                  ; $61d9: $f0 $00
    nop                                           ; $61db: $00
    nop                                           ; $61dc: $00
    nop                                           ; $61dd: $00
    nop                                           ; $61de: $00
    rrca                                          ; $61df: $0f
    rst $38                                       ; $61e0: $ff
    nop                                           ; $61e1: $00
    nop                                           ; $61e2: $00
    nop                                           ; $61e3: $00
    nop                                           ; $61e4: $00
    nop                                           ; $61e5: $00
    nop                                           ; $61e6: $00
    rrca                                          ; $61e7: $0f
    rst $38                                       ; $61e8: $ff
    ldh a, [rP1]                                  ; $61e9: $f0 $00
    nop                                           ; $61eb: $00
    nop                                           ; $61ec: $00
    nop                                           ; $61ed: $00
    nop                                           ; $61ee: $00
    rst $38                                       ; $61ef: $ff
    ccf                                           ; $61f0: $3f
    ldh a, [rP1]                                  ; $61f1: $f0 $00
    nop                                           ; $61f3: $00
    nop                                           ; $61f4: $00
    nop                                           ; $61f5: $00
    nop                                           ; $61f6: $00
    rrca                                          ; $61f7: $0f
    rst $38                                       ; $61f8: $ff
    ldh a, [rP1]                                  ; $61f9: $f0 $00
    nop                                           ; $61fb: $00
    nop                                           ; $61fc: $00
    nop                                           ; $61fd: $00
    nop                                           ; $61fe: $00
    rrca                                          ; $61ff: $0f
    rst $38                                       ; $6200: $ff
    ldh a, [rP1]                                  ; $6201: $f0 $00
    nop                                           ; $6203: $00
    nop                                           ; $6204: $00
    nop                                           ; $6205: $00
    nop                                           ; $6206: $00
    rrca                                          ; $6207: $0f
    rst $38                                       ; $6208: $ff
    nop                                           ; $6209: $00
    nop                                           ; $620a: $00
    nop                                           ; $620b: $00
    nop                                           ; $620c: $00
    nop                                           ; $620d: $00
    nop                                           ; $620e: $00
    nop                                           ; $620f: $00
    pop af                                        ; $6210: $f1
    ldh a, [rP1]                                  ; $6211: $f0 $00
    nop                                           ; $6213: $00
    nop                                           ; $6214: $00
    nop                                           ; $6215: $00
    nop                                           ; $6216: $00
    rrca                                          ; $6217: $0f
    rst $38                                       ; $6218: $ff
    rst $38                                       ; $6219: $ff
    nop                                           ; $621a: $00
    nop                                           ; $621b: $00
    nop                                           ; $621c: $00
    nop                                           ; $621d: $00
    nop                                           ; $621e: $00
    rrca                                          ; $621f: $0f
    di                                            ; $6220: $f3
    ldh a, [rP1]                                  ; $6221: $f0 $00
    nop                                           ; $6223: $00
    nop                                           ; $6224: $00
    nop                                           ; $6225: $00
    nop                                           ; $6226: $00
    nop                                           ; $6227: $00
    rst $38                                       ; $6228: $ff
    ldh a, [rP1]                                  ; $6229: $f0 $00
    nop                                           ; $622b: $00
    jr c, jr_045_6245                             ; $622c: $38 $17

    jr jr_045_6249                                ; $622e: $18 $19

    ld e, c                                       ; $6230: $59
    ld l, b                                       ; $6231: $68
    sbc c                                         ; $6232: $99
    rst $38                                       ; $6233: $ff
    ld b, $00                                     ; $6234: $06 $00
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

jr_045_6245:
    nop                                           ; $6245: $00
    nop                                           ; $6246: $00
    nop                                           ; $6247: $00
    nop                                           ; $6248: $00

jr_045_6249:
    nop                                           ; $6249: $00
    nop                                           ; $624a: $00
    nop                                           ; $624b: $00
    nop                                           ; $624c: $00
    nop                                           ; $624d: $00
    nop                                           ; $624e: $00
    rrca                                          ; $624f: $0f
    rst $38                                       ; $6250: $ff
    nop                                           ; $6251: $00
    nop                                           ; $6252: $00
    nop                                           ; $6253: $00
    nop                                           ; $6254: $00
    nop                                           ; $6255: $00
    nop                                           ; $6256: $00
    rst $38                                       ; $6257: $ff
    rra                                           ; $6258: $1f
    ldh a, [rP1]                                  ; $6259: $f0 $00
    nop                                           ; $625b: $00
    nop                                           ; $625c: $00
    nop                                           ; $625d: $00
    nop                                           ; $625e: $00
    pop af                                        ; $625f: $f1
    rra                                           ; $6260: $1f
    rst $38                                       ; $6261: $ff
    nop                                           ; $6262: $00
    nop                                           ; $6263: $00
    nop                                           ; $6264: $00
    nop                                           ; $6265: $00
    nop                                           ; $6266: $00
    rrca                                          ; $6267: $0f
    rst $38                                       ; $6268: $ff
    rst $38                                       ; $6269: $ff
    nop                                           ; $626a: $00
    nop                                           ; $626b: $00
    nop                                           ; $626c: $00
    nop                                           ; $626d: $00
    nop                                           ; $626e: $00
    rrca                                          ; $626f: $0f
    rst $38                                       ; $6270: $ff
    ld de, $00f0                                  ; $6271: $11 $f0 $00
    nop                                           ; $6274: $00
    nop                                           ; $6275: $00
    nop                                           ; $6276: $00
    rrca                                          ; $6277: $0f
    pop af                                        ; $6278: $f1
    rra                                           ; $6279: $1f
    ldh a, [rP1]                                  ; $627a: $f0 $00
    nop                                           ; $627c: $00
    nop                                           ; $627d: $00
    nop                                           ; $627e: $00
    nop                                           ; $627f: $00
    pop af                                        ; $6280: $f1
    rra                                           ; $6281: $1f
    nop                                           ; $6282: $00
    nop                                           ; $6283: $00
    nop                                           ; $6284: $00
    nop                                           ; $6285: $00
    nop                                           ; $6286: $00
    rrca                                          ; $6287: $0f
    pop af                                        ; $6288: $f1
    ld de, $00f0                                  ; $6289: $11 $f0 $00
    nop                                           ; $628c: $00
    nop                                           ; $628d: $00
    nop                                           ; $628e: $00
    rrca                                          ; $628f: $0f
    di                                            ; $6290: $f3
    ccf                                           ; $6291: $3f
    ldh a, [rP1]                                  ; $6292: $f0 $00
    nop                                           ; $6294: $00
    nop                                           ; $6295: $00
    nop                                           ; $6296: $00
    nop                                           ; $6297: $00
    rst $38                                       ; $6298: $ff
    rst $38                                       ; $6299: $ff
    nop                                           ; $629a: $00
    nop                                           ; $629b: $00
    nop                                           ; $629c: $00
    nop                                           ; $629d: $00
    nop                                           ; $629e: $00
    nop                                           ; $629f: $00
    rrca                                          ; $62a0: $0f
    rst $38                                       ; $62a1: $ff
    nop                                           ; $62a2: $00
    nop                                           ; $62a3: $00
    nop                                           ; $62a4: $00
    nop                                           ; $62a5: $00
    nop                                           ; $62a6: $00
    nop                                           ; $62a7: $00
    nop                                           ; $62a8: $00
    nop                                           ; $62a9: $00
    nop                                           ; $62aa: $00
    nop                                           ; $62ab: $00
    nop                                           ; $62ac: $00
    nop                                           ; $62ad: $00
    nop                                           ; $62ae: $00
    nop                                           ; $62af: $00
    nop                                           ; $62b0: $00
    nop                                           ; $62b1: $00
    nop                                           ; $62b2: $00
    nop                                           ; $62b3: $00
    nop                                           ; $62b4: $00
    jr z, jr_045_630e                             ; $62b5: $28 $57

    ld e, b                                       ; $62b7: $58
    ld h, [hl]                                    ; $62b8: $66
    ld [hl], a                                    ; $62b9: $77
    rst $38                                       ; $62ba: $ff
    inc b                                         ; $62bb: $04
    nop                                           ; $62bc: $00
    nop                                           ; $62bd: $00
    nop                                           ; $62be: $00
    rrca                                          ; $62bf: $0f
    ldh a, [rP1]                                  ; $62c0: $f0 $00
    nop                                           ; $62c2: $00
    nop                                           ; $62c3: $00
    nop                                           ; $62c4: $00
    nop                                           ; $62c5: $00
    nop                                           ; $62c6: $00
    rst $38                                       ; $62c7: $ff
    rst $38                                       ; $62c8: $ff
    ldh a, [rP1]                                  ; $62c9: $f0 $00
    nop                                           ; $62cb: $00
    nop                                           ; $62cc: $00
    nop                                           ; $62cd: $00
    nop                                           ; $62ce: $00
    rst $38                                       ; $62cf: $ff
    rst $38                                       ; $62d0: $ff
    ldh a, [rP1]                                  ; $62d1: $f0 $00
    nop                                           ; $62d3: $00
    nop                                           ; $62d4: $00
    nop                                           ; $62d5: $00
    nop                                           ; $62d6: $00
    rst $38                                       ; $62d7: $ff
    rst $38                                       ; $62d8: $ff
    nop                                           ; $62d9: $00
    nop                                           ; $62da: $00
    nop                                           ; $62db: $00
    nop                                           ; $62dc: $00
    nop                                           ; $62dd: $00
    nop                                           ; $62de: $00
    rst $38                                       ; $62df: $ff
    pop af                                        ; $62e0: $f1
    ldh a, [rP1]                                  ; $62e1: $f0 $00
    nop                                           ; $62e3: $00
    nop                                           ; $62e4: $00
    nop                                           ; $62e5: $00
    rrca                                          ; $62e6: $0f
    rra                                           ; $62e7: $1f
    pop af                                        ; $62e8: $f1
    ldh a, [rP1]                                  ; $62e9: $f0 $00
    nop                                           ; $62eb: $00
    nop                                           ; $62ec: $00
    nop                                           ; $62ed: $00
    nop                                           ; $62ee: $00
    rst $38                                       ; $62ef: $ff
    pop af                                        ; $62f0: $f1
    rst $38                                       ; $62f1: $ff
    nop                                           ; $62f2: $00
    nop                                           ; $62f3: $00
    nop                                           ; $62f4: $00
    nop                                           ; $62f5: $00
    nop                                           ; $62f6: $00
    rst $38                                       ; $62f7: $ff
    rst $38                                       ; $62f8: $ff
    ldh a, [rP1]                                  ; $62f9: $f0 $00
    nop                                           ; $62fb: $00
    nop                                           ; $62fc: $00
    nop                                           ; $62fd: $00
    nop                                           ; $62fe: $00
    rst $38                                       ; $62ff: $ff
    rst $38                                       ; $6300: $ff
    ldh a, [rP1]                                  ; $6301: $f0 $00
    nop                                           ; $6303: $00
    nop                                           ; $6304: $00
    nop                                           ; $6305: $00
    nop                                           ; $6306: $00
    rst $38                                       ; $6307: $ff
    ccf                                           ; $6308: $3f
    ldh a, [rP1]                                  ; $6309: $f0 $00
    nop                                           ; $630b: $00
    nop                                           ; $630c: $00
    nop                                           ; $630d: $00

jr_045_630e:
    nop                                           ; $630e: $00
    rst $38                                       ; $630f: $ff
    rst $38                                       ; $6310: $ff
    ldh a, [rP1]                                  ; $6311: $f0 $00
    nop                                           ; $6313: $00
    nop                                           ; $6314: $00
    nop                                           ; $6315: $00
    nop                                           ; $6316: $00
    rrca                                          ; $6317: $0f
    rst $38                                       ; $6318: $ff
    rra                                           ; $6319: $1f
    nop                                           ; $631a: $00
    nop                                           ; $631b: $00
    nop                                           ; $631c: $00
    nop                                           ; $631d: $00
    nop                                           ; $631e: $00
    rrca                                          ; $631f: $0f
    ld de, $00f0                                  ; $6320: $11 $f0 $00
    nop                                           ; $6323: $00
    nop                                           ; $6324: $00
    nop                                           ; $6325: $00
    nop                                           ; $6326: $00
    rrca                                          ; $6327: $0f
    rst $38                                       ; $6328: $ff
    rst $38                                       ; $6329: $ff
    nop                                           ; $632a: $00
    nop                                           ; $632b: $00
    nop                                           ; $632c: $00
    nop                                           ; $632d: $00
    nop                                           ; $632e: $00
    rrca                                          ; $632f: $0f
    rst $38                                       ; $6330: $ff
    rst $38                                       ; $6331: $ff
    nop                                           ; $6332: $00
    nop                                           ; $6333: $00
    nop                                           ; $6334: $00
    nop                                           ; $6335: $00
    nop                                           ; $6336: $00
    nop                                           ; $6337: $00
    rst $38                                       ; $6338: $ff
    ldh a, [rP1]                                  ; $6339: $f0 $00
    nop                                           ; $633b: $00
    ld b, e                                       ; $633c: $43
    rla                                           ; $633d: $17
    jr jr_045_6369                                ; $633e: $18 $29

    ld d, a                                       ; $6340: $57
    ld l, b                                       ; $6341: $68
    rst $38                                       ; $6342: $ff
    dec b                                         ; $6343: $05
    nop                                           ; $6344: $00
    rst $38                                       ; $6345: $ff
    nop                                           ; $6346: $00
    nop                                           ; $6347: $00
    nop                                           ; $6348: $00
    nop                                           ; $6349: $00
    nop                                           ; $634a: $00
    nop                                           ; $634b: $00
    rrca                                          ; $634c: $0f
    rst $38                                       ; $634d: $ff
    ldh a, [rP1]                                  ; $634e: $f0 $00
    nop                                           ; $6350: $00
    nop                                           ; $6351: $00
    nop                                           ; $6352: $00
    nop                                           ; $6353: $00
    rrca                                          ; $6354: $0f
    rst $38                                       ; $6355: $ff
    ldh a, [rP1]                                  ; $6356: $f0 $00
    nop                                           ; $6358: $00
    nop                                           ; $6359: $00
    nop                                           ; $635a: $00
    nop                                           ; $635b: $00
    nop                                           ; $635c: $00
    rst $38                                       ; $635d: $ff
    rst $38                                       ; $635e: $ff
    nop                                           ; $635f: $00
    nop                                           ; $6360: $00
    nop                                           ; $6361: $00
    nop                                           ; $6362: $00
    nop                                           ; $6363: $00
    nop                                           ; $6364: $00
    rst $38                                       ; $6365: $ff
    rst $38                                       ; $6366: $ff
    nop                                           ; $6367: $00
    nop                                           ; $6368: $00

jr_045_6369:
    nop                                           ; $6369: $00
    nop                                           ; $636a: $00
    nop                                           ; $636b: $00
    nop                                           ; $636c: $00
    rst $38                                       ; $636d: $ff
    rst $38                                       ; $636e: $ff
    nop                                           ; $636f: $00
    nop                                           ; $6370: $00
    nop                                           ; $6371: $00
    nop                                           ; $6372: $00
    nop                                           ; $6373: $00
    nop                                           ; $6374: $00
    rst $38                                       ; $6375: $ff
    rst $38                                       ; $6376: $ff
    ldh a, [rP1]                                  ; $6377: $f0 $00
    nop                                           ; $6379: $00
    nop                                           ; $637a: $00
    nop                                           ; $637b: $00
    nop                                           ; $637c: $00
    rrca                                          ; $637d: $0f
    rst $38                                       ; $637e: $ff
    rst $38                                       ; $637f: $ff
    ldh a, [rP1]                                  ; $6380: $f0 $00
    nop                                           ; $6382: $00
    nop                                           ; $6383: $00
    nop                                           ; $6384: $00
    nop                                           ; $6385: $00
    rst $38                                       ; $6386: $ff
    rst $38                                       ; $6387: $ff
    rst $38                                       ; $6388: $ff
    nop                                           ; $6389: $00
    nop                                           ; $638a: $00
    nop                                           ; $638b: $00
    nop                                           ; $638c: $00
    nop                                           ; $638d: $00
    rrca                                          ; $638e: $0f
    rst $38                                       ; $638f: $ff
    rst $38                                       ; $6390: $ff
    ldh a, [rP1]                                  ; $6391: $f0 $00
    nop                                           ; $6393: $00
    nop                                           ; $6394: $00
    nop                                           ; $6395: $00
    rrca                                          ; $6396: $0f
    rst $38                                       ; $6397: $ff
    rst $38                                       ; $6398: $ff
    rst $38                                       ; $6399: $ff
    ldh a, [rP1]                                  ; $639a: $f0 $00
    nop                                           ; $639c: $00
    nop                                           ; $639d: $00
    nop                                           ; $639e: $00
    rrca                                          ; $639f: $0f
    rst $38                                       ; $63a0: $ff
    rst $38                                       ; $63a1: $ff
    rst $38                                       ; $63a2: $ff
    nop                                           ; $63a3: $00
    nop                                           ; $63a4: $00
    nop                                           ; $63a5: $00
    nop                                           ; $63a6: $00
    nop                                           ; $63a7: $00
    rst $38                                       ; $63a8: $ff
    rst $38                                       ; $63a9: $ff
    rst $38                                       ; $63aa: $ff
    nop                                           ; $63ab: $00
    nop                                           ; $63ac: $00
    nop                                           ; $63ad: $00
    nop                                           ; $63ae: $00
    nop                                           ; $63af: $00
    rrca                                          ; $63b0: $0f
    rst $38                                       ; $63b1: $ff
    rst $38                                       ; $63b2: $ff
    ldh a, [rP1]                                  ; $63b3: $f0 $00
    nop                                           ; $63b5: $00
    nop                                           ; $63b6: $00
    nop                                           ; $63b7: $00
    nop                                           ; $63b8: $00
    rrca                                          ; $63b9: $0f
    ccf                                           ; $63ba: $3f
    ldh a, [rP1]                                  ; $63bb: $f0 $00
    nop                                           ; $63bd: $00
    nop                                           ; $63be: $00
    nop                                           ; $63bf: $00
    nop                                           ; $63c0: $00
    rrca                                          ; $63c1: $0f
    rst $38                                       ; $63c2: $ff
    nop                                           ; $63c3: $00
    ld c, [hl]                                    ; $63c4: $4e
    ld [de], a                                    ; $63c5: $12
    inc de                                        ; $63c6: $13
    ld d, h                                       ; $63c7: $54
    add [hl]                                      ; $63c8: $86
    sub a                                         ; $63c9: $97
    sbc b                                         ; $63ca: $98
    rst $38                                       ; $63cb: $ff
    ld b, $00                                     ; $63cc: $06 $00
    nop                                           ; $63ce: $00
    nop                                           ; $63cf: $00
    nop                                           ; $63d0: $00
    nop                                           ; $63d1: $00
    nop                                           ; $63d2: $00
    nop                                           ; $63d3: $00
    nop                                           ; $63d4: $00
    nop                                           ; $63d5: $00
    nop                                           ; $63d6: $00
    rrca                                          ; $63d7: $0f
    nop                                           ; $63d8: $00
    nop                                           ; $63d9: $00
    nop                                           ; $63da: $00
    nop                                           ; $63db: $00
    nop                                           ; $63dc: $00
    nop                                           ; $63dd: $00
    nop                                           ; $63de: $00
    rst $38                                       ; $63df: $ff
    rst $38                                       ; $63e0: $ff
    ldh a, [rP1]                                  ; $63e1: $f0 $00
    nop                                           ; $63e3: $00
    nop                                           ; $63e4: $00
    nop                                           ; $63e5: $00
    nop                                           ; $63e6: $00
    rst $38                                       ; $63e7: $ff
    rst $38                                       ; $63e8: $ff
    rst $38                                       ; $63e9: $ff
    nop                                           ; $63ea: $00
    nop                                           ; $63eb: $00
    nop                                           ; $63ec: $00
    nop                                           ; $63ed: $00
    nop                                           ; $63ee: $00
    rrca                                          ; $63ef: $0f
    rst $38                                       ; $63f0: $ff
    rst $38                                       ; $63f1: $ff
    ldh a, [rP1]                                  ; $63f2: $f0 $00
    nop                                           ; $63f4: $00
    nop                                           ; $63f5: $00
    nop                                           ; $63f6: $00
    nop                                           ; $63f7: $00
    pop af                                        ; $63f8: $f1
    rst $38                                       ; $63f9: $ff
    ldh a, [rP1]                                  ; $63fa: $f0 $00
    nop                                           ; $63fc: $00
    nop                                           ; $63fd: $00
    nop                                           ; $63fe: $00
    rst $38                                       ; $63ff: $ff
    pop af                                        ; $6400: $f1
    rst $38                                       ; $6401: $ff
    ldh a, [rP1]                                  ; $6402: $f0 $00
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00
    nop                                           ; $6406: $00
    nop                                           ; $6407: $00
    rst $38                                       ; $6408: $ff
    rst $38                                       ; $6409: $ff
    ldh a, [rP1]                                  ; $640a: $f0 $00
    nop                                           ; $640c: $00
    nop                                           ; $640d: $00
    nop                                           ; $640e: $00
    nop                                           ; $640f: $00
    rst $38                                       ; $6410: $ff
    rst $38                                       ; $6411: $ff
    nop                                           ; $6412: $00
    nop                                           ; $6413: $00
    nop                                           ; $6414: $00
    nop                                           ; $6415: $00
    nop                                           ; $6416: $00
    nop                                           ; $6417: $00
    rst $38                                       ; $6418: $ff
    rst $38                                       ; $6419: $ff
    nop                                           ; $641a: $00
    nop                                           ; $641b: $00
    nop                                           ; $641c: $00
    nop                                           ; $641d: $00
    nop                                           ; $641e: $00
    nop                                           ; $641f: $00
    rst $38                                       ; $6420: $ff
    rst $38                                       ; $6421: $ff
    nop                                           ; $6422: $00
    nop                                           ; $6423: $00
    nop                                           ; $6424: $00
    nop                                           ; $6425: $00
    nop                                           ; $6426: $00
    rrca                                          ; $6427: $0f
    rst $38                                       ; $6428: $ff
    rra                                           ; $6429: $1f
    nop                                           ; $642a: $00
    nop                                           ; $642b: $00
    nop                                           ; $642c: $00
    nop                                           ; $642d: $00
    nop                                           ; $642e: $00
    rrca                                          ; $642f: $0f
    di                                            ; $6430: $f3
    ldh a, [rP1]                                  ; $6431: $f0 $00
    nop                                           ; $6433: $00
    nop                                           ; $6434: $00
    nop                                           ; $6435: $00
    nop                                           ; $6436: $00
    rrca                                          ; $6437: $0f
    rst $38                                       ; $6438: $ff
    ldh a, [rP1]                                  ; $6439: $f0 $00
    nop                                           ; $643b: $00
    nop                                           ; $643c: $00
    nop                                           ; $643d: $00
    nop                                           ; $643e: $00
    nop                                           ; $643f: $00
    nop                                           ; $6440: $00
    nop                                           ; $6441: $00
    nop                                           ; $6442: $00
    nop                                           ; $6443: $00
    nop                                           ; $6444: $00
    nop                                           ; $6445: $00
    nop                                           ; $6446: $00
    nop                                           ; $6447: $00
    nop                                           ; $6448: $00
    nop                                           ; $6449: $00
    nop                                           ; $644a: $00
    nop                                           ; $644b: $00
    nop                                           ; $644c: $00
    jr c, jr_045_6474                             ; $644d: $38 $25

    ld h, $48                                     ; $644f: $26 $48
    ld e, c                                       ; $6451: $59
    rst $38                                       ; $6452: $ff
    inc b                                         ; $6453: $04
    nop                                           ; $6454: $00
    nop                                           ; $6455: $00
    nop                                           ; $6456: $00
    nop                                           ; $6457: $00
    nop                                           ; $6458: $00
    nop                                           ; $6459: $00
    nop                                           ; $645a: $00
    nop                                           ; $645b: $00
    nop                                           ; $645c: $00
    nop                                           ; $645d: $00
    nop                                           ; $645e: $00
    nop                                           ; $645f: $00
    nop                                           ; $6460: $00
    rst $38                                       ; $6461: $ff
    ldh a, [rP1]                                  ; $6462: $f0 $00
    nop                                           ; $6464: $00
    nop                                           ; $6465: $00
    nop                                           ; $6466: $00
    nop                                           ; $6467: $00
    nop                                           ; $6468: $00
    pop af                                        ; $6469: $f1
    rst $38                                       ; $646a: $ff
    nop                                           ; $646b: $00
    nop                                           ; $646c: $00
    nop                                           ; $646d: $00
    nop                                           ; $646e: $00
    nop                                           ; $646f: $00
    rrca                                          ; $6470: $0f
    rst $38                                       ; $6471: $ff
    rst $38                                       ; $6472: $ff
    nop                                           ; $6473: $00

jr_045_6474:
    nop                                           ; $6474: $00
    nop                                           ; $6475: $00
    nop                                           ; $6476: $00
    nop                                           ; $6477: $00
    rrca                                          ; $6478: $0f
    rst $38                                       ; $6479: $ff
    rra                                           ; $647a: $1f
    nop                                           ; $647b: $00
    nop                                           ; $647c: $00
    nop                                           ; $647d: $00
    nop                                           ; $647e: $00
    nop                                           ; $647f: $00
    rst $38                                       ; $6480: $ff
    rst $38                                       ; $6481: $ff
    ldh a, [rP1]                                  ; $6482: $f0 $00
    nop                                           ; $6484: $00
    nop                                           ; $6485: $00
    nop                                           ; $6486: $00
    rrca                                          ; $6487: $0f
    rst $38                                       ; $6488: $ff
    rst $38                                       ; $6489: $ff
    nop                                           ; $648a: $00
    nop                                           ; $648b: $00
    nop                                           ; $648c: $00
    nop                                           ; $648d: $00
    nop                                           ; $648e: $00
    rrca                                          ; $648f: $0f
    rst $38                                       ; $6490: $ff
    rst $38                                       ; $6491: $ff
    nop                                           ; $6492: $00
    nop                                           ; $6493: $00
    nop                                           ; $6494: $00
    nop                                           ; $6495: $00
    rrca                                          ; $6496: $0f
    rst $38                                       ; $6497: $ff
    pop af                                        ; $6498: $f1
    ldh a, [rP1]                                  ; $6499: $f0 $00
    nop                                           ; $649b: $00
    nop                                           ; $649c: $00
    nop                                           ; $649d: $00
    rrca                                          ; $649e: $0f
    rst $38                                       ; $649f: $ff
    rst $38                                       ; $64a0: $ff
    nop                                           ; $64a1: $00
    nop                                           ; $64a2: $00
    nop                                           ; $64a3: $00
    nop                                           ; $64a4: $00
    nop                                           ; $64a5: $00
    rst $38                                       ; $64a6: $ff
    rst $38                                       ; $64a7: $ff
    rst $38                                       ; $64a8: $ff
    nop                                           ; $64a9: $00
    nop                                           ; $64aa: $00
    nop                                           ; $64ab: $00
    nop                                           ; $64ac: $00
    rrca                                          ; $64ad: $0f
    rst $38                                       ; $64ae: $ff
    pop af                                        ; $64af: $f1
    ldh a, [rP1]                                  ; $64b0: $f0 $00
    nop                                           ; $64b2: $00
    nop                                           ; $64b3: $00
    nop                                           ; $64b4: $00
    rst $38                                       ; $64b5: $ff
    rra                                           ; $64b6: $1f
    rra                                           ; $64b7: $1f
    ldh a, [rP1]                                  ; $64b8: $f0 $00
    nop                                           ; $64ba: $00
    nop                                           ; $64bb: $00
    nop                                           ; $64bc: $00
    rst $38                                       ; $64bd: $ff
    rst $38                                       ; $64be: $ff
    ldh a, [rP1]                                  ; $64bf: $f0 $00
    nop                                           ; $64c1: $00
    nop                                           ; $64c2: $00
    nop                                           ; $64c3: $00
    nop                                           ; $64c4: $00
    rst $38                                       ; $64c5: $ff
    rst $38                                       ; $64c6: $ff
    nop                                           ; $64c7: $00
    nop                                           ; $64c8: $00
    nop                                           ; $64c9: $00
    nop                                           ; $64ca: $00
    nop                                           ; $64cb: $00
    nop                                           ; $64cc: $00
    rrca                                          ; $64cd: $0f
    ldh a, [rP1]                                  ; $64ce: $f0 $00
    nop                                           ; $64d0: $00
    nop                                           ; $64d1: $00
    nop                                           ; $64d2: $00
    nop                                           ; $64d3: $00
    ld b, e                                       ; $64d4: $43
    dec sp                                        ; $64d5: $3b
    inc a                                         ; $64d6: $3c
    ld a, b                                       ; $64d7: $78
    ld a, c                                       ; $64d8: $79
    sub [hl]                                      ; $64d9: $96
    sub a                                         ; $64da: $97
    rst $38                                       ; $64db: $ff
    ld b, $00                                     ; $64dc: $06 $00
    nop                                           ; $64de: $00
    nop                                           ; $64df: $00
    nop                                           ; $64e0: $00
    nop                                           ; $64e1: $00
    nop                                           ; $64e2: $00
    nop                                           ; $64e3: $00
    nop                                           ; $64e4: $00
    nop                                           ; $64e5: $00
    nop                                           ; $64e6: $00
    nop                                           ; $64e7: $00
    nop                                           ; $64e8: $00
    nop                                           ; $64e9: $00
    nop                                           ; $64ea: $00
    nop                                           ; $64eb: $00
    nop                                           ; $64ec: $00
    nop                                           ; $64ed: $00
    nop                                           ; $64ee: $00
    nop                                           ; $64ef: $00
    nop                                           ; $64f0: $00
    ldh a, [rP1]                                  ; $64f1: $f0 $00
    nop                                           ; $64f3: $00
    nop                                           ; $64f4: $00
    nop                                           ; $64f5: $00
    nop                                           ; $64f6: $00
    nop                                           ; $64f7: $00
    nop                                           ; $64f8: $00
    ldh a, [rP1]                                  ; $64f9: $f0 $00
    nop                                           ; $64fb: $00
    nop                                           ; $64fc: $00
    nop                                           ; $64fd: $00
    nop                                           ; $64fe: $00
    nop                                           ; $64ff: $00
    nop                                           ; $6500: $00
    rst $38                                       ; $6501: $ff
    ldh a, [rP1]                                  ; $6502: $f0 $00
    nop                                           ; $6504: $00
    nop                                           ; $6505: $00
    nop                                           ; $6506: $00
    rrca                                          ; $6507: $0f
    rst $38                                       ; $6508: $ff
    pop af                                        ; $6509: $f1
    ldh a, [rP1]                                  ; $650a: $f0 $00
    nop                                           ; $650c: $00
    nop                                           ; $650d: $00
    nop                                           ; $650e: $00
    rrca                                          ; $650f: $0f
    rra                                           ; $6510: $1f
    rra                                           ; $6511: $1f
    rst $38                                       ; $6512: $ff
    ldh a, [rP1]                                  ; $6513: $f0 $00
    nop                                           ; $6515: $00
    nop                                           ; $6516: $00
    ld bc, $ffff                                  ; $6517: $01 $ff $ff
    rst $38                                       ; $651a: $ff
    ldh a, [rP1]                                  ; $651b: $f0 $00
    nop                                           ; $651d: $00
    nop                                           ; $651e: $00
    pop af                                        ; $651f: $f1
    rst $38                                       ; $6520: $ff
    rra                                           ; $6521: $1f
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    nop                                           ; $6524: $00
    nop                                           ; $6525: $00
    nop                                           ; $6526: $00
    rst $38                                       ; $6527: $ff
    pop af                                        ; $6528: $f1
    ld de, $00f0                                  ; $6529: $11 $f0 $00
    nop                                           ; $652c: $00
    nop                                           ; $652d: $00
    nop                                           ; $652e: $00
    nop                                           ; $652f: $00
    rrca                                          ; $6530: $0f
    pop af                                        ; $6531: $f1
    rst $38                                       ; $6532: $ff
    nop                                           ; $6533: $00
    nop                                           ; $6534: $00
    nop                                           ; $6535: $00
    nop                                           ; $6536: $00
    nop                                           ; $6537: $00
    nop                                           ; $6538: $00
    rst $38                                       ; $6539: $ff
    ccf                                           ; $653a: $3f
    nop                                           ; $653b: $00
    nop                                           ; $653c: $00
    nop                                           ; $653d: $00
    nop                                           ; $653e: $00
    nop                                           ; $653f: $00
    nop                                           ; $6540: $00
    rst $38                                       ; $6541: $ff
    rst $38                                       ; $6542: $ff
    nop                                           ; $6543: $00
    nop                                           ; $6544: $00
    nop                                           ; $6545: $00
    nop                                           ; $6546: $00
    nop                                           ; $6547: $00
    nop                                           ; $6548: $00
    rst $38                                       ; $6549: $ff
    rst $38                                       ; $654a: $ff
    nop                                           ; $654b: $00
    nop                                           ; $654c: $00
    nop                                           ; $654d: $00
    nop                                           ; $654e: $00
    nop                                           ; $654f: $00
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    ldh a, [rP1]                                  ; $6552: $f0 $00
    nop                                           ; $6554: $00
    nop                                           ; $6555: $00
    nop                                           ; $6556: $00
    nop                                           ; $6557: $00
    nop                                           ; $6558: $00
    nop                                           ; $6559: $00
    nop                                           ; $655a: $00
    nop                                           ; $655b: $00
    nop                                           ; $655c: $00
    cpl                                           ; $655d: $2f
    halt                                          ; $655e: $76
    ld [hl], a                                    ; $655f: $77
    rst $38                                       ; $6560: $ff
    ld [bc], a                                    ; $6561: $02
    nop                                           ; $6562: $00
    nop                                           ; $6563: $00
    nop                                           ; $6564: $00
    nop                                           ; $6565: $00
    nop                                           ; $6566: $00
    nop                                           ; $6567: $00
    ldh a, [rP1]                                  ; $6568: $f0 $00
    nop                                           ; $656a: $00
    nop                                           ; $656b: $00
    nop                                           ; $656c: $00
    nop                                           ; $656d: $00
    nop                                           ; $656e: $00
    rst $38                                       ; $656f: $ff
    rst $38                                       ; $6570: $ff
    nop                                           ; $6571: $00
    nop                                           ; $6572: $00
    nop                                           ; $6573: $00
    nop                                           ; $6574: $00
    nop                                           ; $6575: $00
    rst $38                                       ; $6576: $ff
    rst $38                                       ; $6577: $ff
    rst $38                                       ; $6578: $ff
    ldh a, [rP1]                                  ; $6579: $f0 $00
    nop                                           ; $657b: $00
    nop                                           ; $657c: $00
    rrca                                          ; $657d: $0f
    rst $38                                       ; $657e: $ff
    rst $38                                       ; $657f: $ff
    rst $38                                       ; $6580: $ff
    rst $38                                       ; $6581: $ff
    nop                                           ; $6582: $00
    nop                                           ; $6583: $00
    nop                                           ; $6584: $00
    rrca                                          ; $6585: $0f
    rst $38                                       ; $6586: $ff
    rst $38                                       ; $6587: $ff
    rst $38                                       ; $6588: $ff
    nop                                           ; $6589: $00
    nop                                           ; $658a: $00
    nop                                           ; $658b: $00
    nop                                           ; $658c: $00
    rrca                                          ; $658d: $0f
    rst $38                                       ; $658e: $ff
    ldh a, [$f0]                                  ; $658f: $f0 $f0
    nop                                           ; $6591: $00
    nop                                           ; $6592: $00
    nop                                           ; $6593: $00
    nop                                           ; $6594: $00
    rrca                                          ; $6595: $0f
    rst $38                                       ; $6596: $ff
    ldh a, [rP1]                                  ; $6597: $f0 $00
    nop                                           ; $6599: $00
    nop                                           ; $659a: $00
    nop                                           ; $659b: $00
    nop                                           ; $659c: $00
    rrca                                          ; $659d: $0f
    rst $38                                       ; $659e: $ff
    nop                                           ; $659f: $00
    nop                                           ; $65a0: $00
    nop                                           ; $65a1: $00
    nop                                           ; $65a2: $00
    nop                                           ; $65a3: $00
    nop                                           ; $65a4: $00
    rrca                                          ; $65a5: $0f
    rst $38                                       ; $65a6: $ff
    ldh a, [rP1]                                  ; $65a7: $f0 $00
    nop                                           ; $65a9: $00
    nop                                           ; $65aa: $00
    nop                                           ; $65ab: $00
    nop                                           ; $65ac: $00
    rst $38                                       ; $65ad: $ff
    rst $38                                       ; $65ae: $ff
    ldh a, [rP1]                                  ; $65af: $f0 $00
    nop                                           ; $65b1: $00
    nop                                           ; $65b2: $00
    rrca                                          ; $65b3: $0f
    ldh a, [rIE]                                  ; $65b4: $f0 $ff
    rst $38                                       ; $65b6: $ff
    ldh a, [rP1]                                  ; $65b7: $f0 $00
    nop                                           ; $65b9: $00
    rrca                                          ; $65ba: $0f
    rst $38                                       ; $65bb: $ff
    rst $38                                       ; $65bc: $ff
    rst $38                                       ; $65bd: $ff
    rst $38                                       ; $65be: $ff
    ldh a, [rP1]                                  ; $65bf: $f0 $00
    nop                                           ; $65c1: $00
    nop                                           ; $65c2: $00
    rst $38                                       ; $65c3: $ff
    rst $38                                       ; $65c4: $ff
    rst $38                                       ; $65c5: $ff
    rst $38                                       ; $65c6: $ff
    nop                                           ; $65c7: $00
    nop                                           ; $65c8: $00
    nop                                           ; $65c9: $00
    nop                                           ; $65ca: $00
    rst $38                                       ; $65cb: $ff
    rst $38                                       ; $65cc: $ff
    rst $38                                       ; $65cd: $ff
    ldh a, [rP1]                                  ; $65ce: $f0 $00
    nop                                           ; $65d0: $00
    nop                                           ; $65d1: $00
    nop                                           ; $65d2: $00
    rst $38                                       ; $65d3: $ff
    rst $38                                       ; $65d4: $ff
    rst $38                                       ; $65d5: $ff
    nop                                           ; $65d6: $00
    nop                                           ; $65d7: $00
    nop                                           ; $65d8: $00
    nop                                           ; $65d9: $00
    nop                                           ; $65da: $00
    rst $38                                       ; $65db: $ff
    ldh a, [rP1]                                  ; $65dc: $f0 $00
    nop                                           ; $65de: $00
    nop                                           ; $65df: $00
    nop                                           ; $65e0: $00
    nop                                           ; $65e1: $00
    ld e, d                                       ; $65e2: $5a
    inc l                                         ; $65e3: $2c
    dec l                                         ; $65e4: $2d
    ld c, c                                       ; $65e5: $49
    sbc b                                         ; $65e6: $98
    sbc c                                         ; $65e7: $99
    rst $38                                       ; $65e8: $ff
    dec b                                         ; $65e9: $05
    nop                                           ; $65ea: $00
    nop                                           ; $65eb: $00
    nop                                           ; $65ec: $00
    nop                                           ; $65ed: $00
    rst $38                                       ; $65ee: $ff
    nop                                           ; $65ef: $00
    nop                                           ; $65f0: $00
    nop                                           ; $65f1: $00
    nop                                           ; $65f2: $00
    nop                                           ; $65f3: $00
    nop                                           ; $65f4: $00
    nop                                           ; $65f5: $00
    rst $38                                       ; $65f6: $ff
    ldh a, [rP1]                                  ; $65f7: $f0 $00
    nop                                           ; $65f9: $00
    nop                                           ; $65fa: $00
    nop                                           ; $65fb: $00
    nop                                           ; $65fc: $00
    rrca                                          ; $65fd: $0f
    rst $38                                       ; $65fe: $ff
    ldh a, [rP1]                                  ; $65ff: $f0 $00
    nop                                           ; $6601: $00
    nop                                           ; $6602: $00
    nop                                           ; $6603: $00
    nop                                           ; $6604: $00
    nop                                           ; $6605: $00
    rst $38                                       ; $6606: $ff
    ldh a, [rP1]                                  ; $6607: $f0 $00
    nop                                           ; $6609: $00
    nop                                           ; $660a: $00
    nop                                           ; $660b: $00
    nop                                           ; $660c: $00
    rrca                                          ; $660d: $0f
    rst $38                                       ; $660e: $ff
    ldh a, [rP1]                                  ; $660f: $f0 $00
    nop                                           ; $6611: $00
    nop                                           ; $6612: $00
    nop                                           ; $6613: $00
    nop                                           ; $6614: $00
    rrca                                          ; $6615: $0f
    rst $38                                       ; $6616: $ff
    ldh a, [rP1]                                  ; $6617: $f0 $00
    nop                                           ; $6619: $00
    nop                                           ; $661a: $00
    nop                                           ; $661b: $00
    nop                                           ; $661c: $00
    rst $38                                       ; $661d: $ff
    rst $38                                       ; $661e: $ff
    ldh a, [rP1]                                  ; $661f: $f0 $00
    nop                                           ; $6621: $00
    nop                                           ; $6622: $00
    nop                                           ; $6623: $00
    nop                                           ; $6624: $00
    rst $38                                       ; $6625: $ff
    rst $38                                       ; $6626: $ff
    ldh a, [rP1]                                  ; $6627: $f0 $00
    nop                                           ; $6629: $00
    nop                                           ; $662a: $00
    nop                                           ; $662b: $00
    rrca                                          ; $662c: $0f
    rst $38                                       ; $662d: $ff
    rst $38                                       ; $662e: $ff
    nop                                           ; $662f: $00
    nop                                           ; $6630: $00
    nop                                           ; $6631: $00
    nop                                           ; $6632: $00
    nop                                           ; $6633: $00
    rrca                                          ; $6634: $0f
    rst $38                                       ; $6635: $ff
    ldh a, [rP1]                                  ; $6636: $f0 $00
    nop                                           ; $6638: $00
    nop                                           ; $6639: $00
    nop                                           ; $663a: $00
    nop                                           ; $663b: $00
    rrca                                          ; $663c: $0f
    rst $38                                       ; $663d: $ff
    ldh a, [rP1]                                  ; $663e: $f0 $00
    nop                                           ; $6640: $00
    nop                                           ; $6641: $00
    nop                                           ; $6642: $00
    nop                                           ; $6643: $00
    rrca                                          ; $6644: $0f
    di                                            ; $6645: $f3
    rst $38                                       ; $6646: $ff
    nop                                           ; $6647: $00
    nop                                           ; $6648: $00
    nop                                           ; $6649: $00
    nop                                           ; $664a: $00
    nop                                           ; $664b: $00
    nop                                           ; $664c: $00
    rst $38                                       ; $664d: $ff
    rra                                           ; $664e: $1f
    nop                                           ; $664f: $00
    nop                                           ; $6650: $00
    nop                                           ; $6651: $00
    nop                                           ; $6652: $00
    nop                                           ; $6653: $00
    nop                                           ; $6654: $00
    rrca                                          ; $6655: $0f
    rst $38                                       ; $6656: $ff
    nop                                           ; $6657: $00
    nop                                           ; $6658: $00
    nop                                           ; $6659: $00
    nop                                           ; $665a: $00
    nop                                           ; $665b: $00
    nop                                           ; $665c: $00
    rrca                                          ; $665d: $0f
    ccf                                           ; $665e: $3f
    nop                                           ; $665f: $00
    nop                                           ; $6660: $00
    nop                                           ; $6661: $00
    nop                                           ; $6662: $00
    nop                                           ; $6663: $00
    nop                                           ; $6664: $00
    rrca                                          ; $6665: $0f
    rst $38                                       ; $6666: $ff
    nop                                           ; $6667: $00
    nop                                           ; $6668: $00
    nop                                           ; $6669: $00
    ld a, [hl-]                                   ; $666a: $3a
    add hl, bc                                    ; $666b: $09
    jr jr_045_6688                                ; $666c: $18 $1a

    add hl, hl                                    ; $666e: $29
    ld e, c                                       ; $666f: $59
    ld h, a                                       ; $6670: $67
    ld l, b                                       ; $6671: $68
    add a                                         ; $6672: $87
    rst $38                                       ; $6673: $ff
    ld [$0000], sp                                ; $6674: $08 $00 $00
    nop                                           ; $6677: $00
    nop                                           ; $6678: $00
    nop                                           ; $6679: $00
    nop                                           ; $667a: $00
    nop                                           ; $667b: $00
    nop                                           ; $667c: $00
    nop                                           ; $667d: $00
    nop                                           ; $667e: $00
    nop                                           ; $667f: $00
    nop                                           ; $6680: $00
    nop                                           ; $6681: $00
    nop                                           ; $6682: $00
    nop                                           ; $6683: $00
    nop                                           ; $6684: $00
    nop                                           ; $6685: $00
    rrca                                          ; $6686: $0f
    rst $38                                       ; $6687: $ff

jr_045_6688:
    nop                                           ; $6688: $00
    nop                                           ; $6689: $00
    nop                                           ; $668a: $00
    nop                                           ; $668b: $00
    nop                                           ; $668c: $00
    nop                                           ; $668d: $00
    rst $38                                       ; $668e: $ff
    rst $38                                       ; $668f: $ff
    nop                                           ; $6690: $00
    nop                                           ; $6691: $00
    nop                                           ; $6692: $00
    nop                                           ; $6693: $00
    nop                                           ; $6694: $00
    nop                                           ; $6695: $00
    rst $38                                       ; $6696: $ff
    rst $38                                       ; $6697: $ff
    rst $38                                       ; $6698: $ff
    nop                                           ; $6699: $00
    nop                                           ; $669a: $00
    nop                                           ; $669b: $00
    nop                                           ; $669c: $00
    nop                                           ; $669d: $00
    rst $38                                       ; $669e: $ff
    rst $38                                       ; $669f: $ff
    rst $38                                       ; $66a0: $ff
    nop                                           ; $66a1: $00
    nop                                           ; $66a2: $00
    nop                                           ; $66a3: $00
    nop                                           ; $66a4: $00
    nop                                           ; $66a5: $00
    nop                                           ; $66a6: $00
    rrca                                          ; $66a7: $0f
    rst $38                                       ; $66a8: $ff
    rst $38                                       ; $66a9: $ff
    rst $38                                       ; $66aa: $ff
    ldh a, [rP1]                                  ; $66ab: $f0 $00
    nop                                           ; $66ad: $00
    nop                                           ; $66ae: $00
    rrca                                          ; $66af: $0f
    rst $38                                       ; $66b0: $ff
    rra                                           ; $66b1: $1f
    ldh a, [rP1]                                  ; $66b2: $f0 $00
    nop                                           ; $66b4: $00
    nop                                           ; $66b5: $00
    nop                                           ; $66b6: $00
    rrca                                          ; $66b7: $0f
    rst $38                                       ; $66b8: $ff
    rst $38                                       ; $66b9: $ff
    ldh a, [rP1]                                  ; $66ba: $f0 $00
    nop                                           ; $66bc: $00
    nop                                           ; $66bd: $00
    nop                                           ; $66be: $00
    nop                                           ; $66bf: $00
    rst $38                                       ; $66c0: $ff
    rst $38                                       ; $66c1: $ff
    rst $38                                       ; $66c2: $ff
    nop                                           ; $66c3: $00
    nop                                           ; $66c4: $00
    nop                                           ; $66c5: $00
    nop                                           ; $66c6: $00
    nop                                           ; $66c7: $00
    nop                                           ; $66c8: $00
    rst $38                                       ; $66c9: $ff
    rst $38                                       ; $66ca: $ff
    ldh a, [rP1]                                  ; $66cb: $f0 $00
    nop                                           ; $66cd: $00
    nop                                           ; $66ce: $00
    nop                                           ; $66cf: $00
    nop                                           ; $66d0: $00
    rst $38                                       ; $66d1: $ff
    rst $38                                       ; $66d2: $ff
    ldh a, [rP1]                                  ; $66d3: $f0 $00
    nop                                           ; $66d5: $00
    nop                                           ; $66d6: $00
    nop                                           ; $66d7: $00
    nop                                           ; $66d8: $00
    rst $38                                       ; $66d9: $ff
    rst $38                                       ; $66da: $ff
    rst $38                                       ; $66db: $ff
    nop                                           ; $66dc: $00
    nop                                           ; $66dd: $00
    nop                                           ; $66de: $00
    nop                                           ; $66df: $00
    nop                                           ; $66e0: $00
    rrca                                          ; $66e1: $0f
    rst $38                                       ; $66e2: $ff
    rst $38                                       ; $66e3: $ff
    ldh a, [rP1]                                  ; $66e4: $f0 $00
    nop                                           ; $66e6: $00
    nop                                           ; $66e7: $00
    nop                                           ; $66e8: $00
    nop                                           ; $66e9: $00
    rst $38                                       ; $66ea: $ff
    rst $38                                       ; $66eb: $ff
    ldh a, [rP1]                                  ; $66ec: $f0 $00
    nop                                           ; $66ee: $00
    nop                                           ; $66ef: $00
    nop                                           ; $66f0: $00
    nop                                           ; $66f1: $00
    rrca                                          ; $66f2: $0f
    rst $38                                       ; $66f3: $ff
    nop                                           ; $66f4: $00
    ld c, d                                       ; $66f5: $4a
    inc sp                                        ; $66f6: $33
    inc [hl]                                      ; $66f7: $34
    dec [hl]                                      ; $66f8: $35
    ld h, [hl]                                    ; $66f9: $66
    rst $38                                       ; $66fa: $ff
    inc b                                         ; $66fb: $04
    inc b                                         ; $66fc: $04
    ld [hl], c                                    ; $66fd: $71
    ld [hl+], a                                   ; $66fe: $22
    ld h, a                                       ; $66ff: $67
    cp e                                          ; $6700: $bb
    ld h, a                                       ; $6701: $67
    ld b, h                                       ; $6702: $44
    ld l, b                                       ; $6703: $68
    db $e3                                        ; $6704: $e3
    ld l, b                                       ; $6705: $68
    ld [hl], e                                    ; $6706: $73
    ld l, c                                       ; $6707: $69
    ld [de], a                                    ; $6708: $12
    ld l, d                                       ; $6709: $6a
    or h                                          ; $670a: $b4
    ld l, d                                       ; $670b: $6a
    ld a, $6b                                     ; $670c: $3e $6b
    rst $18                                       ; $670e: $df
    ld l, e                                       ; $670f: $6b
    ld h, h                                       ; $6710: $64
    ld l, h                                       ; $6711: $6c
    ld a, [$866c]                                 ; $6712: $fa $6c $86
    ld l, l                                       ; $6715: $6d
    ld [hl+], a                                   ; $6716: $22
    ld l, [hl]                                    ; $6717: $6e
    and a                                         ; $6718: $a7
    ld l, [hl]                                    ; $6719: $6e
    ld c, b                                       ; $671a: $48
    ld l, a                                       ; $671b: $6f
    rst $10                                       ; $671c: $d7
    ld l, a                                       ; $671d: $6f
    ld [hl], d                                    ; $671e: $72
    ld [hl], b                                    ; $671f: $70
    inc b                                         ; $6720: $04
    ld [hl], c                                    ; $6721: $71
    nop                                           ; $6722: $00
    nop                                           ; $6723: $00
    nop                                           ; $6724: $00
    rst $38                                       ; $6725: $ff
    rst $38                                       ; $6726: $ff
    nop                                           ; $6727: $00
    nop                                           ; $6728: $00
    nop                                           ; $6729: $00
    nop                                           ; $672a: $00
    nop                                           ; $672b: $00
    rrca                                          ; $672c: $0f
    rst $38                                       ; $672d: $ff
    rst $38                                       ; $672e: $ff
    ldh a, [rP1]                                  ; $672f: $f0 $00
    nop                                           ; $6731: $00
    nop                                           ; $6732: $00
    nop                                           ; $6733: $00
    rst $38                                       ; $6734: $ff
    rst $38                                       ; $6735: $ff
    rst $38                                       ; $6736: $ff
    rst $38                                       ; $6737: $ff
    nop                                           ; $6738: $00
    nop                                           ; $6739: $00
    nop                                           ; $673a: $00
    rrca                                          ; $673b: $0f
    rst $38                                       ; $673c: $ff
    rst $38                                       ; $673d: $ff
    rst $38                                       ; $673e: $ff
    rst $38                                       ; $673f: $ff
    ldh a, [rP1]                                  ; $6740: $f0 $00
    nop                                           ; $6742: $00
    rrca                                          ; $6743: $0f
    rst $38                                       ; $6744: $ff
    rst $38                                       ; $6745: $ff
    ccf                                           ; $6746: $3f
    rst $38                                       ; $6747: $ff
    ldh a, [rP1]                                  ; $6748: $f0 $00
    nop                                           ; $674a: $00
    rrca                                          ; $674b: $0f
    cpl                                           ; $674c: $2f
    rst $38                                       ; $674d: $ff
    di                                            ; $674e: $f3
    ld a, [c]                                     ; $674f: $f2
    ldh a, [rP1]                                  ; $6750: $f0 $00
    nop                                           ; $6752: $00
    rrca                                          ; $6753: $0f
    cpl                                           ; $6754: $2f
    rst $38                                       ; $6755: $ff
    inc sp                                        ; $6756: $33
    rst $38                                       ; $6757: $ff
    ldh a, [rP1]                                  ; $6758: $f0 $00
    nop                                           ; $675a: $00
    rrca                                          ; $675b: $0f
    cpl                                           ; $675c: $2f
    rst $38                                       ; $675d: $ff
    di                                            ; $675e: $f3
    rst $38                                       ; $675f: $ff
    ldh a, [rP1]                                  ; $6760: $f0 $00
    nop                                           ; $6762: $00
    rrca                                          ; $6763: $0f
    ld [hl+], a                                   ; $6764: $22
    rst $38                                       ; $6765: $ff
    rst $38                                       ; $6766: $ff
    ld a, [c]                                     ; $6767: $f2
    ldh a, [rP1]                                  ; $6768: $f0 $00
    nop                                           ; $676a: $00
    rrca                                          ; $676b: $0f
    rst $38                                       ; $676c: $ff
    pop af                                        ; $676d: $f1
    rra                                           ; $676e: $1f
    rst $38                                       ; $676f: $ff
    ldh a, [rP1]                                  ; $6770: $f0 $00
    nop                                           ; $6772: $00
    rrca                                          ; $6773: $0f
    rst $38                                       ; $6774: $ff
    rst $38                                       ; $6775: $ff
    rst $38                                       ; $6776: $ff
    rst $38                                       ; $6777: $ff
    ldh a, [rP1]                                  ; $6778: $f0 $00
    nop                                           ; $677a: $00
    rrca                                          ; $677b: $0f
    rst $38                                       ; $677c: $ff
    rst $38                                       ; $677d: $ff
    di                                            ; $677e: $f3
    ccf                                           ; $677f: $3f
    ldh a, [rP1]                                  ; $6780: $f0 $00
    nop                                           ; $6782: $00
    rrca                                          ; $6783: $0f
    rst $38                                       ; $6784: $ff
    rst $38                                       ; $6785: $ff
    rst $38                                       ; $6786: $ff
    ccf                                           ; $6787: $3f
    ldh a, [rP1]                                  ; $6788: $f0 $00
    nop                                           ; $678a: $00
    nop                                           ; $678b: $00
    rst $38                                       ; $678c: $ff
    ld de, $ff11                                  ; $678d: $11 $11 $ff
    nop                                           ; $6790: $00
    nop                                           ; $6791: $00
    nop                                           ; $6792: $00
    nop                                           ; $6793: $00
    rrca                                          ; $6794: $0f
    ld de, $f011                                  ; $6795: $11 $11 $f0
    nop                                           ; $6798: $00
    nop                                           ; $6799: $00
    nop                                           ; $679a: $00
    nop                                           ; $679b: $00
    nop                                           ; $679c: $00
    rst $38                                       ; $679d: $ff
    rst $38                                       ; $679e: $ff
    nop                                           ; $679f: $00
    nop                                           ; $67a0: $00
    nop                                           ; $67a1: $00
    ld l, a                                       ; $67a2: $6f
    jr c, jr_045_67e8                             ; $67a3: $38 $43

    ld b, [hl]                                    ; $67a5: $46
    ld b, a                                       ; $67a6: $47
    ld c, e                                       ; $67a7: $4b
    ld c, h                                       ; $67a8: $4c
    ld h, l                                       ; $67a9: $65
    ld h, [hl]                                    ; $67aa: $66
    ld h, a                                       ; $67ab: $67
    ld a, b                                       ; $67ac: $78
    add a                                         ; $67ad: $87
    sub h                                         ; $67ae: $94
    sub l                                         ; $67af: $95
    and [hl]                                      ; $67b0: $a6
    and a                                         ; $67b1: $a7
    xor b                                         ; $67b2: $a8
    or e                                          ; $67b3: $b3
    or l                                          ; $67b4: $b5
    cp e                                          ; $67b5: $bb
    cp h                                          ; $67b6: $bc
    add $c7                                       ; $67b7: $c6 $c7
    rst $38                                       ; $67b9: $ff
    ld d, $22                                     ; $67ba: $16 $22
    ld [hl+], a                                   ; $67bc: $22
    ld [hl+], a                                   ; $67bd: $22
    ld [hl+], a                                   ; $67be: $22
    cpl                                           ; $67bf: $2f
    rst $38                                       ; $67c0: $ff
    nop                                           ; $67c1: $00
    nop                                           ; $67c2: $00
    ld a, [c]                                     ; $67c3: $f2
    ld [hl+], a                                   ; $67c4: $22
    ld [hl+], a                                   ; $67c5: $22
    ld [hl+], a                                   ; $67c6: $22
    rst $38                                       ; $67c7: $ff
    ldh a, [rP1]                                  ; $67c8: $f0 $00
    nop                                           ; $67ca: $00
    rst $38                                       ; $67cb: $ff
    ld a, [c]                                     ; $67cc: $f2
    ld [hl+], a                                   ; $67cd: $22
    ld [hl+], a                                   ; $67ce: $22
    rst $38                                       ; $67cf: $ff
    ldh a, [rP1]                                  ; $67d0: $f0 $00
    nop                                           ; $67d2: $00
    rrca                                          ; $67d3: $0f
    ld a, [c]                                     ; $67d4: $f2
    ld [hl+], a                                   ; $67d5: $22
    ld [hl+], a                                   ; $67d6: $22
    rst $38                                       ; $67d7: $ff
    ldh a, [rP1]                                  ; $67d8: $f0 $00
    nop                                           ; $67da: $00
    nop                                           ; $67db: $00
    rst $38                                       ; $67dc: $ff
    ld [hl+], a                                   ; $67dd: $22
    ld [hl+], a                                   ; $67de: $22
    cpl                                           ; $67df: $2f
    rst $38                                       ; $67e0: $ff
    rst $38                                       ; $67e1: $ff
    rst $38                                       ; $67e2: $ff
    nop                                           ; $67e3: $00
    rrca                                          ; $67e4: $0f
    rst $38                                       ; $67e5: $ff
    rst $38                                       ; $67e6: $ff
    rst $38                                       ; $67e7: $ff

jr_045_67e8:
    ld a, [c]                                     ; $67e8: $f2
    ld [hl+], a                                   ; $67e9: $22
    rst $38                                       ; $67ea: $ff
    nop                                           ; $67eb: $00
    nop                                           ; $67ec: $00
    rrca                                          ; $67ed: $0f
    rst $38                                       ; $67ee: $ff
    rst $38                                       ; $67ef: $ff
    ld a, [c]                                     ; $67f0: $f2
    ld [hl+], a                                   ; $67f1: $22
    ld [hl+], a                                   ; $67f2: $22
    nop                                           ; $67f3: $00
    nop                                           ; $67f4: $00
    nop                                           ; $67f5: $00
    rrca                                          ; $67f6: $0f
    rst $38                                       ; $67f7: $ff
    ld a, [c]                                     ; $67f8: $f2
    ld [hl+], a                                   ; $67f9: $22
    ld [hl+], a                                   ; $67fa: $22
    rst $38                                       ; $67fb: $ff
    ldh a, [rP1]                                  ; $67fc: $f0 $00
    rrca                                          ; $67fe: $0f
    rst $38                                       ; $67ff: $ff
    ld [hl+], a                                   ; $6800: $22
    ld [hl+], a                                   ; $6801: $22
    ld [hl+], a                                   ; $6802: $22
    cpl                                           ; $6803: $2f
    rst $38                                       ; $6804: $ff
    ldh a, [rIE]                                  ; $6805: $f0 $ff
    rst $38                                       ; $6807: $ff
    ld [hl+], a                                   ; $6808: $22
    ld [hl+], a                                   ; $6809: $22
    ld [hl+], a                                   ; $680a: $22
    ld a, [c]                                     ; $680b: $f2
    cpl                                           ; $680c: $2f
    rst $38                                       ; $680d: $ff
    rst $38                                       ; $680e: $ff
    rst $38                                       ; $680f: $ff
    ld [hl+], a                                   ; $6810: $22
    ld [hl+], a                                   ; $6811: $22
    rst $38                                       ; $6812: $ff
    rst $38                                       ; $6813: $ff
    rst $38                                       ; $6814: $ff
    rst $38                                       ; $6815: $ff
    ld [hl+], a                                   ; $6816: $22
    ld [hl+], a                                   ; $6817: $22
    ld [hl+], a                                   ; $6818: $22
    ld [hl+], a                                   ; $6819: $22
    rst $38                                       ; $681a: $ff
    rrca                                          ; $681b: $0f
    rst $38                                       ; $681c: $ff
    rst $38                                       ; $681d: $ff
    rst $38                                       ; $681e: $ff
    rst $38                                       ; $681f: $ff
    ld a, [c]                                     ; $6820: $f2
    cpl                                           ; $6821: $2f
    rst $38                                       ; $6822: $ff
    nop                                           ; $6823: $00
    nop                                           ; $6824: $00
    rrca                                          ; $6825: $0f
    ld de, $fff0                                  ; $6826: $11 $f0 $ff
    rst $38                                       ; $6829: $ff
    ldh a, [rP1]                                  ; $682a: $f0 $00
    nop                                           ; $682c: $00
    rrca                                          ; $682d: $0f
    ccf                                           ; $682e: $3f
    ldh a, [rIE]                                  ; $682f: $f0 $ff
    ldh a, [rP1]                                  ; $6831: $f0 $00
    nop                                           ; $6833: $00
    nop                                           ; $6834: $00
    rrca                                          ; $6835: $0f
    rst $38                                       ; $6836: $ff
    nop                                           ; $6837: $00
    nop                                           ; $6838: $00
    nop                                           ; $6839: $00
    nop                                           ; $683a: $00
    ld l, h                                       ; $683b: $6c
    add hl, de                                    ; $683c: $19
    jr z, jr_045_6898                             ; $683d: $28 $59

    ld l, b                                       ; $683f: $68
    ld a, c                                       ; $6840: $79
    adc b                                         ; $6841: $88
    rst $38                                       ; $6842: $ff
    ld b, $00                                     ; $6843: $06 $00
    rst $38                                       ; $6845: $ff
    ldh a, [$f0]                                  ; $6846: $f0 $f0
    nop                                           ; $6848: $00
    nop                                           ; $6849: $00
    nop                                           ; $684a: $00
    nop                                           ; $684b: $00
    nop                                           ; $684c: $00
    rst $38                                       ; $684d: $ff
    rst $38                                       ; $684e: $ff
    rst $38                                       ; $684f: $ff
    rst $38                                       ; $6850: $ff
    rst $38                                       ; $6851: $ff
    ldh a, [rP1]                                  ; $6852: $f0 $00
    nop                                           ; $6854: $00
    rst $38                                       ; $6855: $ff
    rst $38                                       ; $6856: $ff
    rst $38                                       ; $6857: $ff
    rst $38                                       ; $6858: $ff
    rst $38                                       ; $6859: $ff
    ldh a, [rP1]                                  ; $685a: $f0 $00
    nop                                           ; $685c: $00
    rst $38                                       ; $685d: $ff
    rst $38                                       ; $685e: $ff
    rst $38                                       ; $685f: $ff
    ld de, $f0ff                                  ; $6860: $11 $ff $f0
    nop                                           ; $6863: $00
    nop                                           ; $6864: $00
    rst $38                                       ; $6865: $ff
    rst $38                                       ; $6866: $ff
    rst $38                                       ; $6867: $ff
    pop af                                        ; $6868: $f1
    rst $38                                       ; $6869: $ff
    nop                                           ; $686a: $00
    nop                                           ; $686b: $00
    nop                                           ; $686c: $00
    rst $38                                       ; $686d: $ff
    rst $38                                       ; $686e: $ff
    rra                                           ; $686f: $1f
    rst $38                                       ; $6870: $ff
    rst $38                                       ; $6871: $ff
    nop                                           ; $6872: $00
    nop                                           ; $6873: $00
    nop                                           ; $6874: $00
    rst $38                                       ; $6875: $ff
    rst $38                                       ; $6876: $ff
    rst $38                                       ; $6877: $ff
    rst $38                                       ; $6878: $ff
    rst $38                                       ; $6879: $ff
    ldh a, [rP1]                                  ; $687a: $f0 $00
    rrca                                          ; $687c: $0f
    rst $38                                       ; $687d: $ff
    nop                                           ; $687e: $00
    rrca                                          ; $687f: $0f
    pop af                                        ; $6880: $f1
    rra                                           ; $6881: $1f
    ldh a, [rP1]                                  ; $6882: $f0 $00
    rrca                                          ; $6884: $0f
    rst $38                                       ; $6885: $ff
    rst $38                                       ; $6886: $ff
    rst $38                                       ; $6887: $ff
    pop af                                        ; $6888: $f1
    rra                                           ; $6889: $1f
    rst $38                                       ; $688a: $ff
    nop                                           ; $688b: $00
    rrca                                          ; $688c: $0f
    rst $38                                       ; $688d: $ff
    rst $38                                       ; $688e: $ff
    rst $38                                       ; $688f: $ff
    rra                                           ; $6890: $1f
    rst $38                                       ; $6891: $ff
    rst $38                                       ; $6892: $ff
    ldh a, [rP1]                                  ; $6893: $f0 $00
    rst $38                                       ; $6895: $ff
    rst $38                                       ; $6896: $ff
    rst $38                                       ; $6897: $ff

jr_045_6898:
    rst $38                                       ; $6898: $ff
    pop af                                        ; $6899: $f1
    rst $38                                       ; $689a: $ff
    ldh a, [rP1]                                  ; $689b: $f0 $00
    nop                                           ; $689d: $00
    rst $38                                       ; $689e: $ff
    ld de, $1f11                                  ; $689f: $11 $11 $1f
    rst $38                                       ; $68a2: $ff
    ldh a, [rP1]                                  ; $68a3: $f0 $00
    nop                                           ; $68a5: $00
    rst $38                                       ; $68a6: $ff
    pop af                                        ; $68a7: $f1
    ld de, $ffff                                  ; $68a8: $11 $ff $ff
    nop                                           ; $68ab: $00
    nop                                           ; $68ac: $00
    nop                                           ; $68ad: $00
    rrca                                          ; $68ae: $0f
    rst $38                                       ; $68af: $ff
    rst $38                                       ; $68b0: $ff
    ccf                                           ; $68b1: $3f
    rst $38                                       ; $68b2: $ff
    nop                                           ; $68b3: $00
    nop                                           ; $68b4: $00
    nop                                           ; $68b5: $00
    rrca                                          ; $68b6: $0f
    rst $38                                       ; $68b7: $ff
    rst $38                                       ; $68b8: $ff
    rst $38                                       ; $68b9: $ff
    rst $38                                       ; $68ba: $ff
    nop                                           ; $68bb: $00
    nop                                           ; $68bc: $00
    nop                                           ; $68bd: $00
    nop                                           ; $68be: $00
    rst $38                                       ; $68bf: $ff
    rst $38                                       ; $68c0: $ff
    rst $38                                       ; $68c1: $ff
    ldh a, [rP1]                                  ; $68c2: $f0 $00
    sub b                                         ; $68c4: $90
    inc de                                        ; $68c5: $13
    inc d                                         ; $68c6: $14
    ld [hl+], a                                   ; $68c7: $22
    inc [hl]                                      ; $68c8: $34
    dec [hl]                                      ; $68c9: $35
    ld [hl], $37                                  ; $68ca: $36 $37
    ld b, e                                       ; $68cc: $43
    ld c, b                                       ; $68cd: $48
    ld d, l                                       ; $68ce: $55
    ld d, a                                       ; $68cf: $57
    ld e, c                                       ; $68d0: $59
    ld e, d                                       ; $68d1: $5a
    ld h, e                                       ; $68d2: $63
    ld h, h                                       ; $68d3: $64
    ld h, [hl]                                    ; $68d4: $66
    ld l, b                                       ; $68d5: $68
    ld [hl], l                                    ; $68d6: $75
    ld [hl], a                                    ; $68d7: $77
    add h                                         ; $68d8: $84
    add [hl]                                      ; $68d9: $86
    adc e                                         ; $68da: $8b
    sub l                                         ; $68db: $95
    sub a                                         ; $68dc: $97
    sbc c                                         ; $68dd: $99
    sbc d                                         ; $68de: $9a
    and [hl]                                      ; $68df: $a6
    xor b                                         ; $68e0: $a8
    rst $38                                       ; $68e1: $ff
    inc e                                         ; $68e2: $1c
    nop                                           ; $68e3: $00
    nop                                           ; $68e4: $00
    rst $38                                       ; $68e5: $ff
    nop                                           ; $68e6: $00
    nop                                           ; $68e7: $00
    nop                                           ; $68e8: $00
    nop                                           ; $68e9: $00
    nop                                           ; $68ea: $00
    nop                                           ; $68eb: $00
    rrca                                          ; $68ec: $0f
    rst $38                                       ; $68ed: $ff
    ldh a, [rP1]                                  ; $68ee: $f0 $00
    nop                                           ; $68f0: $00
    nop                                           ; $68f1: $00
    nop                                           ; $68f2: $00
    nop                                           ; $68f3: $00
    rrca                                          ; $68f4: $0f
    rst $38                                       ; $68f5: $ff
    rst $38                                       ; $68f6: $ff
    nop                                           ; $68f7: $00
    nop                                           ; $68f8: $00
    nop                                           ; $68f9: $00
    nop                                           ; $68fa: $00
    nop                                           ; $68fb: $00
    rrca                                          ; $68fc: $0f
    rst $38                                       ; $68fd: $ff
    rst $38                                       ; $68fe: $ff
    ldh a, [rP1]                                  ; $68ff: $f0 $00
    nop                                           ; $6901: $00
    nop                                           ; $6902: $00
    nop                                           ; $6903: $00
    nop                                           ; $6904: $00
    rst $38                                       ; $6905: $ff
    rst $38                                       ; $6906: $ff
    rst $38                                       ; $6907: $ff
    ldh a, [rP1]                                  ; $6908: $f0 $00
    nop                                           ; $690a: $00
    nop                                           ; $690b: $00
    nop                                           ; $690c: $00
    rrca                                          ; $690d: $0f
    rst $38                                       ; $690e: $ff
    rst $38                                       ; $690f: $ff
    rst $38                                       ; $6910: $ff
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00
    nop                                           ; $6913: $00
    nop                                           ; $6914: $00
    rrca                                          ; $6915: $0f
    rst $38                                       ; $6916: $ff
    rst $38                                       ; $6917: $ff
    cpl                                           ; $6918: $2f
    ldh a, [rP1]                                  ; $6919: $f0 $00
    nop                                           ; $691b: $00
    nop                                           ; $691c: $00
    nop                                           ; $691d: $00
    rrca                                          ; $691e: $0f
    rst $38                                       ; $691f: $ff
    cpl                                           ; $6920: $2f
    ldh a, [rP1]                                  ; $6921: $f0 $00
    nop                                           ; $6923: $00
    nop                                           ; $6924: $00
    nop                                           ; $6925: $00
    rrca                                          ; $6926: $0f
    rst $38                                       ; $6927: $ff
    rst $38                                       ; $6928: $ff
    nop                                           ; $6929: $00
    nop                                           ; $692a: $00
    nop                                           ; $692b: $00
    nop                                           ; $692c: $00
    nop                                           ; $692d: $00
    nop                                           ; $692e: $00
    di                                            ; $692f: $f3
    rst $38                                       ; $6930: $ff
    nop                                           ; $6931: $00
    nop                                           ; $6932: $00
    nop                                           ; $6933: $00
    nop                                           ; $6934: $00
    nop                                           ; $6935: $00
    nop                                           ; $6936: $00
    rst $38                                       ; $6937: $ff
    rst $38                                       ; $6938: $ff
    ldh a, [rP1]                                  ; $6939: $f0 $00
    nop                                           ; $693b: $00
    nop                                           ; $693c: $00
    nop                                           ; $693d: $00
    nop                                           ; $693e: $00
    rst $38                                       ; $693f: $ff
    rst $38                                       ; $6940: $ff
    ldh a, [rP1]                                  ; $6941: $f0 $00
    nop                                           ; $6943: $00
    nop                                           ; $6944: $00
    nop                                           ; $6945: $00
    nop                                           ; $6946: $00
    rrca                                          ; $6947: $0f
    rst $38                                       ; $6948: $ff
    rst $38                                       ; $6949: $ff
    nop                                           ; $694a: $00
    nop                                           ; $694b: $00
    nop                                           ; $694c: $00
    nop                                           ; $694d: $00
    nop                                           ; $694e: $00
    nop                                           ; $694f: $00
    rst $38                                       ; $6950: $ff
    rst $38                                       ; $6951: $ff
    nop                                           ; $6952: $00
    nop                                           ; $6953: $00
    nop                                           ; $6954: $00
    nop                                           ; $6955: $00
    nop                                           ; $6956: $00
    nop                                           ; $6957: $00
    rst $38                                       ; $6958: $ff
    rst $38                                       ; $6959: $ff
    nop                                           ; $695a: $00
    nop                                           ; $695b: $00
    nop                                           ; $695c: $00
    nop                                           ; $695d: $00
    nop                                           ; $695e: $00
    nop                                           ; $695f: $00
    rrca                                          ; $6960: $0f
    ldh a, [rP1]                                  ; $6961: $f0 $00
    ld c, h                                       ; $6963: $4c
    inc de                                        ; $6964: $13
    inc d                                         ; $6965: $14
    dec d                                         ; $6966: $15
    ld b, l                                       ; $6967: $45
    ld b, a                                       ; $6968: $47
    ld d, [hl]                                    ; $6969: $56
    ld e, b                                       ; $696a: $58
    ld [hl], a                                    ; $696b: $77
    ld a, b                                       ; $696c: $78
    xor b                                         ; $696d: $a8
    xor c                                         ; $696e: $a9
    cp d                                          ; $696f: $ba
    cp e                                          ; $6970: $bb
    rst $38                                       ; $6971: $ff
    dec c                                         ; $6972: $0d
    nop                                           ; $6973: $00
    nop                                           ; $6974: $00
    rrca                                          ; $6975: $0f
    ldh a, [rP1]                                  ; $6976: $f0 $00
    nop                                           ; $6978: $00
    nop                                           ; $6979: $00
    nop                                           ; $697a: $00
    nop                                           ; $697b: $00
    nop                                           ; $697c: $00
    rrca                                          ; $697d: $0f
    rst $38                                       ; $697e: $ff
    nop                                           ; $697f: $00
    nop                                           ; $6980: $00
    nop                                           ; $6981: $00
    nop                                           ; $6982: $00
    nop                                           ; $6983: $00
    rrca                                          ; $6984: $0f
    rst $38                                       ; $6985: $ff
    rrca                                          ; $6986: $0f
    rst $38                                       ; $6987: $ff
    nop                                           ; $6988: $00
    nop                                           ; $6989: $00
    nop                                           ; $698a: $00
    nop                                           ; $698b: $00
    rrca                                          ; $698c: $0f
    rrca                                          ; $698d: $0f
    rst $38                                       ; $698e: $ff
    rst $38                                       ; $698f: $ff
    nop                                           ; $6990: $00
    nop                                           ; $6991: $00
    nop                                           ; $6992: $00
    rrca                                          ; $6993: $0f
    rst $38                                       ; $6994: $ff
    rst $38                                       ; $6995: $ff
    rst $38                                       ; $6996: $ff
    ldh a, [rP1]                                  ; $6997: $f0 $00
    nop                                           ; $6999: $00
    nop                                           ; $699a: $00
    rst $38                                       ; $699b: $ff
    rst $38                                       ; $699c: $ff
    ldh a, [rP1]                                  ; $699d: $f0 $00
    ldh a, [rP1]                                  ; $699f: $f0 $00
    nop                                           ; $69a1: $00
    nop                                           ; $69a2: $00
    rst $38                                       ; $69a3: $ff
    pop af                                        ; $69a4: $f1
    rst $38                                       ; $69a5: $ff
    rst $38                                       ; $69a6: $ff
    ldh a, [rP1]                                  ; $69a7: $f0 $00
    nop                                           ; $69a9: $00
    nop                                           ; $69aa: $00
    rst $38                                       ; $69ab: $ff
    rst $38                                       ; $69ac: $ff
    rst $38                                       ; $69ad: $ff
    rst $38                                       ; $69ae: $ff
    ldh a, [rP1]                                  ; $69af: $f0 $00
    nop                                           ; $69b1: $00
    nop                                           ; $69b2: $00
    rrca                                          ; $69b3: $0f
    rst $38                                       ; $69b4: $ff
    rst $38                                       ; $69b5: $ff
    ldh a, [rP1]                                  ; $69b6: $f0 $00
    nop                                           ; $69b8: $00
    nop                                           ; $69b9: $00
    nop                                           ; $69ba: $00
    rrca                                          ; $69bb: $0f
    rst $38                                       ; $69bc: $ff
    rst $38                                       ; $69bd: $ff
    ldh a, [rP1]                                  ; $69be: $f0 $00
    nop                                           ; $69c0: $00
    nop                                           ; $69c1: $00
    nop                                           ; $69c2: $00
    nop                                           ; $69c3: $00
    rst $38                                       ; $69c4: $ff
    rst $38                                       ; $69c5: $ff
    nop                                           ; $69c6: $00
    nop                                           ; $69c7: $00
    nop                                           ; $69c8: $00
    nop                                           ; $69c9: $00
    nop                                           ; $69ca: $00
    nop                                           ; $69cb: $00
    rrca                                          ; $69cc: $0f
    ld de, $00f0                                  ; $69cd: $11 $f0 $00
    nop                                           ; $69d0: $00
    nop                                           ; $69d1: $00
    nop                                           ; $69d2: $00
    nop                                           ; $69d3: $00
    rrca                                          ; $69d4: $0f
    ld de, $00f0                                  ; $69d5: $11 $f0 $00
    nop                                           ; $69d8: $00
    nop                                           ; $69d9: $00
    nop                                           ; $69da: $00
    nop                                           ; $69db: $00
    rrca                                          ; $69dc: $0f
    rra                                           ; $69dd: $1f
    ldh a, [rP1]                                  ; $69de: $f0 $00
    nop                                           ; $69e0: $00
    nop                                           ; $69e1: $00
    nop                                           ; $69e2: $00
    nop                                           ; $69e3: $00
    rrca                                          ; $69e4: $0f
    ccf                                           ; $69e5: $3f
    ldh a, [rP1]                                  ; $69e6: $f0 $00
    nop                                           ; $69e8: $00
    nop                                           ; $69e9: $00
    nop                                           ; $69ea: $00
    nop                                           ; $69eb: $00
    rrca                                          ; $69ec: $0f
    rst $38                                       ; $69ed: $ff
    nop                                           ; $69ee: $00
    nop                                           ; $69ef: $00
    nop                                           ; $69f0: $00
    nop                                           ; $69f1: $00
    nop                                           ; $69f2: $00
    ld c, l                                       ; $69f3: $4d
    dec d                                         ; $69f4: $15
    ld d, $23                                     ; $69f5: $16 $23
    inc h                                         ; $69f7: $24
    daa                                           ; $69f8: $27
    jr z, jr_045_6a24                             ; $69f9: $28 $29

    dec [hl]                                      ; $69fb: $35
    ld [hl], $42                                  ; $69fc: $36 $42
    ld b, e                                       ; $69fe: $43
    ld b, h                                       ; $69ff: $44
    ld b, a                                       ; $6a00: $47
    ld c, b                                       ; $6a01: $48
    ld d, c                                       ; $6a02: $51
    ld d, l                                       ; $6a03: $55
    ld d, [hl]                                    ; $6a04: $56
    ld h, d                                       ; $6a05: $62
    ld h, h                                       ; $6a06: $64
    ld h, a                                       ; $6a07: $67
    ld l, b                                       ; $6a08: $68
    ld [hl], c                                    ; $6a09: $71
    ld [hl], e                                    ; $6a0a: $73
    ld [hl], l                                    ; $6a0b: $75
    add d                                         ; $6a0c: $82
    add h                                         ; $6a0d: $84
    sub e                                         ; $6a0e: $93
    and h                                         ; $6a0f: $a4
    rst $38                                       ; $6a10: $ff
    inc e                                         ; $6a11: $1c
    ld [hl+], a                                   ; $6a12: $22
    ld [hl+], a                                   ; $6a13: $22
    ld [hl+], a                                   ; $6a14: $22
    cpl                                           ; $6a15: $2f
    ld a, [c]                                     ; $6a16: $f2
    ld [hl+], a                                   ; $6a17: $22
    ld [hl+], a                                   ; $6a18: $22
    ld [hl+], a                                   ; $6a19: $22
    ld [hl+], a                                   ; $6a1a: $22
    ld [hl+], a                                   ; $6a1b: $22
    rst $38                                       ; $6a1c: $ff
    rst $38                                       ; $6a1d: $ff
    rst $38                                       ; $6a1e: $ff
    rst $38                                       ; $6a1f: $ff
    ld [hl+], a                                   ; $6a20: $22
    ld [hl+], a                                   ; $6a21: $22
    ld [hl+], a                                   ; $6a22: $22
    cpl                                           ; $6a23: $2f

jr_045_6a24:
    di                                            ; $6a24: $f3
    rst $38                                       ; $6a25: $ff
    rst $38                                       ; $6a26: $ff
    rst $38                                       ; $6a27: $ff
    ld a, [c]                                     ; $6a28: $f2
    ld [hl+], a                                   ; $6a29: $22
    ld [hl+], a                                   ; $6a2a: $22
    cpl                                           ; $6a2b: $2f
    cpl                                           ; $6a2c: $2f
    ld a, [c]                                     ; $6a2d: $f2
    rst $38                                       ; $6a2e: $ff
    di                                            ; $6a2f: $f3
    ld a, [c]                                     ; $6a30: $f2
    ld [hl+], a                                   ; $6a31: $22
    ld [hl+], a                                   ; $6a32: $22
    rst $38                                       ; $6a33: $ff
    rst $38                                       ; $6a34: $ff
    rst $38                                       ; $6a35: $ff
    rst $38                                       ; $6a36: $ff
    rst $38                                       ; $6a37: $ff
    ld a, [c]                                     ; $6a38: $f2
    ld [hl+], a                                   ; $6a39: $22
    ld [hl+], a                                   ; $6a3a: $22
    rst $38                                       ; $6a3b: $ff
    ldh a, [rIF]                                  ; $6a3c: $f0 $0f
    ldh a, [rIF]                                  ; $6a3e: $f0 $0f
    ld a, [c]                                     ; $6a40: $f2
    ld [hl+], a                                   ; $6a41: $22
    ld [hl+], a                                   ; $6a42: $22
    rst $38                                       ; $6a43: $ff
    rst $38                                       ; $6a44: $ff
    ldh a, [rIF]                                  ; $6a45: $f0 $0f
    rst $38                                       ; $6a47: $ff
    rst $38                                       ; $6a48: $ff
    ld [hl+], a                                   ; $6a49: $22
    ld [hl+], a                                   ; $6a4a: $22
    rst $38                                       ; $6a4b: $ff
    rst $38                                       ; $6a4c: $ff
    rst $38                                       ; $6a4d: $ff
    rst $38                                       ; $6a4e: $ff
    rst $38                                       ; $6a4f: $ff
    ld a, [c]                                     ; $6a50: $f2
    ld [hl+], a                                   ; $6a51: $22
    ld [hl+], a                                   ; $6a52: $22
    rst $38                                       ; $6a53: $ff
    rst $38                                       ; $6a54: $ff
    rst $38                                       ; $6a55: $ff
    rst $38                                       ; $6a56: $ff
    rrca                                          ; $6a57: $0f
    ld a, [c]                                     ; $6a58: $f2
    ld [hl+], a                                   ; $6a59: $22
    ld [hl+], a                                   ; $6a5a: $22
    rst $38                                       ; $6a5b: $ff
    ldh a, [rIE]                                  ; $6a5c: $f0 $ff
    rst $38                                       ; $6a5e: $ff
    rst $38                                       ; $6a5f: $ff
    ld a, [c]                                     ; $6a60: $f2
    ld [hl+], a                                   ; $6a61: $22
    ld [hl+], a                                   ; $6a62: $22
    cpl                                           ; $6a63: $2f
    rst $38                                       ; $6a64: $ff
    ldh a, [rIF]                                  ; $6a65: $f0 $0f
    rst $38                                       ; $6a67: $ff
    ld a, [c]                                     ; $6a68: $f2
    ld [hl+], a                                   ; $6a69: $22
    ld [hl+], a                                   ; $6a6a: $22
    rst $38                                       ; $6a6b: $ff
    rst $38                                       ; $6a6c: $ff
    rrca                                          ; $6a6d: $0f
    rrca                                          ; $6a6e: $0f
    di                                            ; $6a6f: $f3
    ld a, [c]                                     ; $6a70: $f2
    ld [hl+], a                                   ; $6a71: $22
    ld [hl+], a                                   ; $6a72: $22
    rst $38                                       ; $6a73: $ff
    rst $38                                       ; $6a74: $ff
    rst $38                                       ; $6a75: $ff
    rst $38                                       ; $6a76: $ff
    rst $38                                       ; $6a77: $ff
    ld a, [c]                                     ; $6a78: $f2
    ld [hl+], a                                   ; $6a79: $22
    ld [hl+], a                                   ; $6a7a: $22
    cpl                                           ; $6a7b: $2f
    rst $38                                       ; $6a7c: $ff
    rst $38                                       ; $6a7d: $ff
    rst $38                                       ; $6a7e: $ff
    rst $38                                       ; $6a7f: $ff
    ld [hl+], a                                   ; $6a80: $22
    ld [hl+], a                                   ; $6a81: $22
    ld [hl+], a                                   ; $6a82: $22
    ld [hl+], a                                   ; $6a83: $22
    ld [hl+], a                                   ; $6a84: $22
    rst $38                                       ; $6a85: $ff
    ld a, [c]                                     ; $6a86: $f2
    ld [hl+], a                                   ; $6a87: $22
    ld [hl+], a                                   ; $6a88: $22
    ld [hl+], a                                   ; $6a89: $22
    ld [hl+], a                                   ; $6a8a: $22
    ld [hl+], a                                   ; $6a8b: $22
    ld [hl+], a                                   ; $6a8c: $22
    cpl                                           ; $6a8d: $2f
    ld a, [c]                                     ; $6a8e: $f2
    ld [hl+], a                                   ; $6a8f: $22
    ld [hl+], a                                   ; $6a90: $22
    ld [hl+], a                                   ; $6a91: $22
    ld a, [hl]                                    ; $6a92: $7e
    rla                                           ; $6a93: $17
    jr jr_045_6ada                                ; $6a94: $18 $44

    ld b, l                                       ; $6a96: $45
    ld b, [hl]                                    ; $6a97: $46
    ld c, c                                       ; $6a98: $49
    ld c, d                                       ; $6a99: $4a
    ld d, a                                       ; $6a9a: $57
    ld e, b                                       ; $6a9b: $58
    ld h, h                                       ; $6a9c: $64
    ld h, l                                       ; $6a9d: $65
    ld h, [hl]                                    ; $6a9e: $66
    ld l, c                                       ; $6a9f: $69
    ld l, d                                       ; $6aa0: $6a
    ld [hl], a                                    ; $6aa1: $77
    ld a, b                                       ; $6aa2: $78
    add h                                         ; $6aa3: $84
    add l                                         ; $6aa4: $85
    add [hl]                                      ; $6aa5: $86
    adc c                                         ; $6aa6: $89
    adc d                                         ; $6aa7: $8a
    sub a                                         ; $6aa8: $97
    sbc b                                         ; $6aa9: $98
    and h                                         ; $6aaa: $a4
    and l                                         ; $6aab: $a5
    and [hl]                                      ; $6aac: $a6
    xor c                                         ; $6aad: $a9
    xor d                                         ; $6aae: $aa
    or a                                          ; $6aaf: $b7
    cp b                                          ; $6ab0: $b8
    add $ff                                       ; $6ab1: $c6 $ff
    rra                                           ; $6ab3: $1f
    ld [hl+], a                                   ; $6ab4: $22
    ld [hl+], a                                   ; $6ab5: $22
    ld [hl+], a                                   ; $6ab6: $22
    ld [hl+], a                                   ; $6ab7: $22
    ld [hl+], a                                   ; $6ab8: $22
    ld [hl+], a                                   ; $6ab9: $22
    ld [hl+], a                                   ; $6aba: $22
    ld [hl+], a                                   ; $6abb: $22
    ld [hl+], a                                   ; $6abc: $22
    ld [hl+], a                                   ; $6abd: $22
    ld [hl+], a                                   ; $6abe: $22
    ld [hl+], a                                   ; $6abf: $22
    ld [hl+], a                                   ; $6ac0: $22
    ld [hl+], a                                   ; $6ac1: $22
    ld [hl+], a                                   ; $6ac2: $22
    ld [hl+], a                                   ; $6ac3: $22
    ld [hl+], a                                   ; $6ac4: $22
    ld [hl+], a                                   ; $6ac5: $22
    ld [hl+], a                                   ; $6ac6: $22
    ld [hl+], a                                   ; $6ac7: $22
    ld [hl+], a                                   ; $6ac8: $22
    ld [hl+], a                                   ; $6ac9: $22
    ld [hl+], a                                   ; $6aca: $22
    ld [hl+], a                                   ; $6acb: $22
    rst $38                                       ; $6acc: $ff
    rst $38                                       ; $6acd: $ff
    ld a, [c]                                     ; $6ace: $f2
    ld a, [c]                                     ; $6acf: $f2
    ld [hl+], a                                   ; $6ad0: $22
    ld [hl+], a                                   ; $6ad1: $22
    ld [hl+], a                                   ; $6ad2: $22
    ld [hl+], a                                   ; $6ad3: $22
    rrca                                          ; $6ad4: $0f
    rst $38                                       ; $6ad5: $ff
    rst $38                                       ; $6ad6: $ff
    rst $38                                       ; $6ad7: $ff
    ld [hl+], a                                   ; $6ad8: $22
    ld [hl+], a                                   ; $6ad9: $22

jr_045_6ada:
    ld [hl+], a                                   ; $6ada: $22
    ld [hl+], a                                   ; $6adb: $22
    nop                                           ; $6adc: $00
    rst $38                                       ; $6add: $ff
    rst $38                                       ; $6ade: $ff
    rst $38                                       ; $6adf: $ff
    rst $38                                       ; $6ae0: $ff
    ld [hl+], a                                   ; $6ae1: $22
    ld [hl+], a                                   ; $6ae2: $22
    ld [hl+], a                                   ; $6ae3: $22
    nop                                           ; $6ae4: $00
    nop                                           ; $6ae5: $00
    rst $38                                       ; $6ae6: $ff
    rst $38                                       ; $6ae7: $ff
    rst $38                                       ; $6ae8: $ff
    ld [hl+], a                                   ; $6ae9: $22
    ld [hl+], a                                   ; $6aea: $22
    ld [hl+], a                                   ; $6aeb: $22
    nop                                           ; $6aec: $00
    nop                                           ; $6aed: $00
    rrca                                          ; $6aee: $0f
    rst $38                                       ; $6aef: $ff
    rst $38                                       ; $6af0: $ff
    ld [hl+], a                                   ; $6af1: $22
    ld [hl+], a                                   ; $6af2: $22
    ld [hl+], a                                   ; $6af3: $22
    nop                                           ; $6af4: $00
    nop                                           ; $6af5: $00
    ld bc, $22ff                                  ; $6af6: $01 $ff $22
    ld [hl+], a                                   ; $6af9: $22
    ld [hl+], a                                   ; $6afa: $22
    ld [hl+], a                                   ; $6afb: $22
    nop                                           ; $6afc: $00
    nop                                           ; $6afd: $00
    rrca                                          ; $6afe: $0f
    rst $38                                       ; $6aff: $ff
    rst $38                                       ; $6b00: $ff
    ld [hl+], a                                   ; $6b01: $22
    ld [hl+], a                                   ; $6b02: $22
    ld [hl+], a                                   ; $6b03: $22
    nop                                           ; $6b04: $00
    nop                                           ; $6b05: $00
    rrca                                          ; $6b06: $0f
    rst $38                                       ; $6b07: $ff
    rst $38                                       ; $6b08: $ff
    rst $38                                       ; $6b09: $ff
    ld a, [c]                                     ; $6b0a: $f2
    ld [hl+], a                                   ; $6b0b: $22
    nop                                           ; $6b0c: $00
    nop                                           ; $6b0d: $00
    nop                                           ; $6b0e: $00
    rst $38                                       ; $6b0f: $ff
    di                                            ; $6b10: $f3
    rst $38                                       ; $6b11: $ff
    rst $38                                       ; $6b12: $ff
    rst $38                                       ; $6b13: $ff
    nop                                           ; $6b14: $00
    nop                                           ; $6b15: $00
    nop                                           ; $6b16: $00
    rrca                                          ; $6b17: $0f
    rst $38                                       ; $6b18: $ff
    pop af                                        ; $6b19: $f1
    rst $38                                       ; $6b1a: $ff
    rst $38                                       ; $6b1b: $ff
    nop                                           ; $6b1c: $00
    nop                                           ; $6b1d: $00
    nop                                           ; $6b1e: $00
    nop                                           ; $6b1f: $00
    rst $38                                       ; $6b20: $ff
    rrca                                          ; $6b21: $0f
    rst $38                                       ; $6b22: $ff
    ldh a, [rP1]                                  ; $6b23: $f0 $00
    nop                                           ; $6b25: $00
    nop                                           ; $6b26: $00
    nop                                           ; $6b27: $00
    nop                                           ; $6b28: $00
    nop                                           ; $6b29: $00
    rst $38                                       ; $6b2a: $ff
    nop                                           ; $6b2b: $00
    nop                                           ; $6b2c: $00
    nop                                           ; $6b2d: $00
    nop                                           ; $6b2e: $00
    nop                                           ; $6b2f: $00
    nop                                           ; $6b30: $00
    nop                                           ; $6b31: $00
    nop                                           ; $6b32: $00
    nop                                           ; $6b33: $00
    ld c, b                                       ; $6b34: $48
    ld b, d                                       ; $6b35: $42
    ld b, e                                       ; $6b36: $43
    ld b, h                                       ; $6b37: $44
    ld b, l                                       ; $6b38: $45
    ld d, [hl]                                    ; $6b39: $56
    ld l, b                                       ; $6b3a: $68
    add [hl]                                      ; $6b3b: $86
    rst $38                                       ; $6b3c: $ff
    rlca                                          ; $6b3d: $07
    nop                                           ; $6b3e: $00
    nop                                           ; $6b3f: $00
    nop                                           ; $6b40: $00
    rst $38                                       ; $6b41: $ff
    ldh a, [rP1]                                  ; $6b42: $f0 $00
    nop                                           ; $6b44: $00
    nop                                           ; $6b45: $00
    nop                                           ; $6b46: $00
    nop                                           ; $6b47: $00
    rrca                                          ; $6b48: $0f
    rst $38                                       ; $6b49: $ff
    rst $38                                       ; $6b4a: $ff
    ldh a, [rP1]                                  ; $6b4b: $f0 $00
    nop                                           ; $6b4d: $00
    nop                                           ; $6b4e: $00
    nop                                           ; $6b4f: $00
    rst $38                                       ; $6b50: $ff
    rst $38                                       ; $6b51: $ff
    rst $38                                       ; $6b52: $ff
    ldh a, [rP1]                                  ; $6b53: $f0 $00
    nop                                           ; $6b55: $00
    nop                                           ; $6b56: $00
    rrca                                          ; $6b57: $0f
    rst $38                                       ; $6b58: $ff
    rst $38                                       ; $6b59: $ff
    rst $38                                       ; $6b5a: $ff
    rst $38                                       ; $6b5b: $ff
    nop                                           ; $6b5c: $00
    nop                                           ; $6b5d: $00
    nop                                           ; $6b5e: $00
    rrca                                          ; $6b5f: $0f
    rst $38                                       ; $6b60: $ff
    rst $38                                       ; $6b61: $ff
    rst $38                                       ; $6b62: $ff
    rst $38                                       ; $6b63: $ff
    ldh a, [rP1]                                  ; $6b64: $f0 $00
    nop                                           ; $6b66: $00
    rst $38                                       ; $6b67: $ff
    cpl                                           ; $6b68: $2f
    ldh a, [rIE]                                  ; $6b69: $f0 $ff
    rst $38                                       ; $6b6b: $ff
    ldh a, [rP1]                                  ; $6b6c: $f0 $00
    nop                                           ; $6b6e: $00
    rst $38                                       ; $6b6f: $ff
    cpl                                           ; $6b70: $2f
    rst $38                                       ; $6b71: $ff
    rst $38                                       ; $6b72: $ff
    cpl                                           ; $6b73: $2f
    rst $38                                       ; $6b74: $ff
    nop                                           ; $6b75: $00
    nop                                           ; $6b76: $00
    rst $38                                       ; $6b77: $ff
    cpl                                           ; $6b78: $2f
    rst $38                                       ; $6b79: $ff
    ld a, [c]                                     ; $6b7a: $f2
    cpl                                           ; $6b7b: $2f
    rst $38                                       ; $6b7c: $ff
    nop                                           ; $6b7d: $00
    nop                                           ; $6b7e: $00
    rst $38                                       ; $6b7f: $ff
    rst $38                                       ; $6b80: $ff
    rst $38                                       ; $6b81: $ff
    ld a, [c]                                     ; $6b82: $f2
    cpl                                           ; $6b83: $2f
    rst $38                                       ; $6b84: $ff
    nop                                           ; $6b85: $00
    nop                                           ; $6b86: $00
    rrca                                          ; $6b87: $0f
    rst $38                                       ; $6b88: $ff
    pop af                                        ; $6b89: $f1
    rst $38                                       ; $6b8a: $ff
    rst $38                                       ; $6b8b: $ff
    rst $38                                       ; $6b8c: $ff
    nop                                           ; $6b8d: $00
    nop                                           ; $6b8e: $00
    rrca                                          ; $6b8f: $0f
    rst $38                                       ; $6b90: $ff
    rst $38                                       ; $6b91: $ff
    rst $38                                       ; $6b92: $ff
    rst $38                                       ; $6b93: $ff
    rst $38                                       ; $6b94: $ff
    nop                                           ; $6b95: $00
    nop                                           ; $6b96: $00
    nop                                           ; $6b97: $00
    rst $38                                       ; $6b98: $ff
    rst $38                                       ; $6b99: $ff
    rst $38                                       ; $6b9a: $ff
    ccf                                           ; $6b9b: $3f
    ldh a, [rP1]                                  ; $6b9c: $f0 $00
    nop                                           ; $6b9e: $00
    nop                                           ; $6b9f: $00
    nop                                           ; $6ba0: $00
    rst $38                                       ; $6ba1: $ff
    rst $38                                       ; $6ba2: $ff
    rst $38                                       ; $6ba3: $ff
    nop                                           ; $6ba4: $00
    nop                                           ; $6ba5: $00
    nop                                           ; $6ba6: $00
    nop                                           ; $6ba7: $00
    nop                                           ; $6ba8: $00
    rrca                                          ; $6ba9: $0f
    pop af                                        ; $6baa: $f1
    ldh a, [rP1]                                  ; $6bab: $f0 $00
    nop                                           ; $6bad: $00
    nop                                           ; $6bae: $00
    nop                                           ; $6baf: $00
    nop                                           ; $6bb0: $00
    rrca                                          ; $6bb1: $0f
    ccf                                           ; $6bb2: $3f
    ldh a, [rP1]                                  ; $6bb3: $f0 $00
    nop                                           ; $6bb5: $00
    nop                                           ; $6bb6: $00
    nop                                           ; $6bb7: $00
    nop                                           ; $6bb8: $00
    rrca                                          ; $6bb9: $0f
    rst $38                                       ; $6bba: $ff
    nop                                           ; $6bbb: $00
    nop                                           ; $6bbc: $00
    nop                                           ; $6bbd: $00
    ld [hl], l                                    ; $6bbe: $75
    ld [$2725], sp                                ; $6bbf: $08 $25 $27
    jr z, jr_045_6bfa                             ; $6bc2: $28 $36

    add hl, sp                                    ; $6bc4: $39
    ld b, e                                       ; $6bc5: $43
    ld b, l                                       ; $6bc6: $45
    ld b, a                                       ; $6bc7: $47
    ld d, [hl]                                    ; $6bc8: $56
    ld e, b                                       ; $6bc9: $58
    ld e, h                                       ; $6bca: $5c
    ld h, a                                       ; $6bcb: $67
    ld [hl], l                                    ; $6bcc: $75
    halt                                          ; $6bcd: $76
    ld a, b                                       ; $6bce: $78
    add a                                         ; $6bcf: $87
    adc h                                         ; $6bd0: $8c
    sub l                                         ; $6bd1: $95
    sub [hl]                                      ; $6bd2: $96
    sbc e                                         ; $6bd3: $9b
    and h                                         ; $6bd4: $a4
    xor d                                         ; $6bd5: $aa
    xor h                                         ; $6bd6: $ac
    or [hl]                                       ; $6bd7: $b6
    or a                                          ; $6bd8: $b7
    cp b                                          ; $6bd9: $b8
    cp e                                          ; $6bda: $bb
    ret                                           ; $6bdb: $c9


    jp z, Jump_000_1eff                           ; $6bdc: $ca $ff $1e

    nop                                           ; $6bdf: $00
    nop                                           ; $6be0: $00
    nop                                           ; $6be1: $00
    nop                                           ; $6be2: $00
    nop                                           ; $6be3: $00
    nop                                           ; $6be4: $00
    nop                                           ; $6be5: $00
    nop                                           ; $6be6: $00
    nop                                           ; $6be7: $00
    nop                                           ; $6be8: $00
    nop                                           ; $6be9: $00
    nop                                           ; $6bea: $00
    nop                                           ; $6beb: $00
    nop                                           ; $6bec: $00
    nop                                           ; $6bed: $00
    nop                                           ; $6bee: $00
    nop                                           ; $6bef: $00
    nop                                           ; $6bf0: $00
    nop                                           ; $6bf1: $00
    nop                                           ; $6bf2: $00
    nop                                           ; $6bf3: $00
    nop                                           ; $6bf4: $00
    nop                                           ; $6bf5: $00
    nop                                           ; $6bf6: $00
    nop                                           ; $6bf7: $00
    nop                                           ; $6bf8: $00
    nop                                           ; $6bf9: $00

jr_045_6bfa:
    nop                                           ; $6bfa: $00
    nop                                           ; $6bfb: $00
    nop                                           ; $6bfc: $00
    nop                                           ; $6bfd: $00
    nop                                           ; $6bfe: $00
    nop                                           ; $6bff: $00
    nop                                           ; $6c00: $00
    nop                                           ; $6c01: $00
    rst $38                                       ; $6c02: $ff
    rst $38                                       ; $6c03: $ff
    nop                                           ; $6c04: $00
    nop                                           ; $6c05: $00
    nop                                           ; $6c06: $00
    nop                                           ; $6c07: $00
    nop                                           ; $6c08: $00
    rrca                                          ; $6c09: $0f
    rst $38                                       ; $6c0a: $ff
    rst $38                                       ; $6c0b: $ff
    ldh a, [rP1]                                  ; $6c0c: $f0 $00
    nop                                           ; $6c0e: $00
    nop                                           ; $6c0f: $00
    nop                                           ; $6c10: $00
    rrca                                          ; $6c11: $0f
    rra                                           ; $6c12: $1f
    rst $38                                       ; $6c13: $ff
    ldh a, [rP1]                                  ; $6c14: $f0 $00
    nop                                           ; $6c16: $00
    nop                                           ; $6c17: $00
    nop                                           ; $6c18: $00
    rrca                                          ; $6c19: $0f
    rra                                           ; $6c1a: $1f
    rst $38                                       ; $6c1b: $ff
    ldh a, [rP1]                                  ; $6c1c: $f0 $00
    nop                                           ; $6c1e: $00
    nop                                           ; $6c1f: $00
    nop                                           ; $6c20: $00
    rrca                                          ; $6c21: $0f
    rst $38                                       ; $6c22: $ff
    pop af                                        ; $6c23: $f1
    ldh a, [rP1]                                  ; $6c24: $f0 $00
    nop                                           ; $6c26: $00
    nop                                           ; $6c27: $00
    nop                                           ; $6c28: $00
    nop                                           ; $6c29: $00
    rst $38                                       ; $6c2a: $ff
    rst $38                                       ; $6c2b: $ff
    nop                                           ; $6c2c: $00
    nop                                           ; $6c2d: $00
    nop                                           ; $6c2e: $00
    nop                                           ; $6c2f: $00
    nop                                           ; $6c30: $00
    nop                                           ; $6c31: $00
    rst $38                                       ; $6c32: $ff
    rst $38                                       ; $6c33: $ff
    nop                                           ; $6c34: $00
    nop                                           ; $6c35: $00
    nop                                           ; $6c36: $00
    nop                                           ; $6c37: $00
    nop                                           ; $6c38: $00
    nop                                           ; $6c39: $00
    rst $38                                       ; $6c3a: $ff
    rst $38                                       ; $6c3b: $ff
    nop                                           ; $6c3c: $00
    nop                                           ; $6c3d: $00
    nop                                           ; $6c3e: $00
    nop                                           ; $6c3f: $00
    nop                                           ; $6c40: $00
    nop                                           ; $6c41: $00
    rrca                                          ; $6c42: $0f
    ldh a, [rP1]                                  ; $6c43: $f0 $00
    nop                                           ; $6c45: $00
    nop                                           ; $6c46: $00
    nop                                           ; $6c47: $00
    nop                                           ; $6c48: $00
    nop                                           ; $6c49: $00
    nop                                           ; $6c4a: $00
    nop                                           ; $6c4b: $00
    nop                                           ; $6c4c: $00
    nop                                           ; $6c4d: $00
    nop                                           ; $6c4e: $00
    nop                                           ; $6c4f: $00
    nop                                           ; $6c50: $00
    nop                                           ; $6c51: $00
    nop                                           ; $6c52: $00
    nop                                           ; $6c53: $00
    nop                                           ; $6c54: $00
    nop                                           ; $6c55: $00
    nop                                           ; $6c56: $00
    nop                                           ; $6c57: $00
    nop                                           ; $6c58: $00
    nop                                           ; $6c59: $00
    nop                                           ; $6c5a: $00
    nop                                           ; $6c5b: $00
    nop                                           ; $6c5c: $00
    nop                                           ; $6c5d: $00
    nop                                           ; $6c5e: $00
    daa                                           ; $6c5f: $27
    ld d, a                                       ; $6c60: $57
    ld e, b                                       ; $6c61: $58
    rst $38                                       ; $6c62: $ff
    ld [bc], a                                    ; $6c63: $02
    ld [hl+], a                                   ; $6c64: $22
    cpl                                           ; $6c65: $2f
    rst $38                                       ; $6c66: $ff
    ld [hl+], a                                   ; $6c67: $22
    ld [hl+], a                                   ; $6c68: $22
    ld [hl+], a                                   ; $6c69: $22
    ld [hl+], a                                   ; $6c6a: $22
    ld [hl+], a                                   ; $6c6b: $22
    ld [hl+], a                                   ; $6c6c: $22
    cpl                                           ; $6c6d: $2f
    rst $38                                       ; $6c6e: $ff
    ld a, [c]                                     ; $6c6f: $f2
    ld [hl+], a                                   ; $6c70: $22
    ld [hl+], a                                   ; $6c71: $22
    ld [hl+], a                                   ; $6c72: $22
    ld [hl+], a                                   ; $6c73: $22
    ld [hl+], a                                   ; $6c74: $22
    cpl                                           ; $6c75: $2f
    rst $38                                       ; $6c76: $ff
    cpl                                           ; $6c77: $2f
    ld a, [c]                                     ; $6c78: $f2
    ld [hl+], a                                   ; $6c79: $22
    ld [hl+], a                                   ; $6c7a: $22
    ld [hl+], a                                   ; $6c7b: $22
    ld [hl+], a                                   ; $6c7c: $22
    ld [hl+], a                                   ; $6c7d: $22
    cpl                                           ; $6c7e: $2f
    rst $38                                       ; $6c7f: $ff
    rst $38                                       ; $6c80: $ff
    ld [hl+], a                                   ; $6c81: $22
    ld [hl+], a                                   ; $6c82: $22
    ld [hl+], a                                   ; $6c83: $22
    ld [hl+], a                                   ; $6c84: $22
    ld [hl+], a                                   ; $6c85: $22
    cpl                                           ; $6c86: $2f
    rst $38                                       ; $6c87: $ff
    rst $38                                       ; $6c88: $ff
    ld [hl+], a                                   ; $6c89: $22
    ld [hl+], a                                   ; $6c8a: $22
    ld [hl+], a                                   ; $6c8b: $22
    ld [hl+], a                                   ; $6c8c: $22
    ld [hl+], a                                   ; $6c8d: $22
    cpl                                           ; $6c8e: $2f
    rst $38                                       ; $6c8f: $ff
    rst $38                                       ; $6c90: $ff
    ld a, [c]                                     ; $6c91: $f2
    ld [hl+], a                                   ; $6c92: $22
    ld [hl+], a                                   ; $6c93: $22
    ld [hl+], a                                   ; $6c94: $22
    ld [hl+], a                                   ; $6c95: $22
    cpl                                           ; $6c96: $2f
    rst $38                                       ; $6c97: $ff
    rst $38                                       ; $6c98: $ff
    ld a, [c]                                     ; $6c99: $f2
    ld [hl+], a                                   ; $6c9a: $22
    ld [hl+], a                                   ; $6c9b: $22
    ld [hl+], a                                   ; $6c9c: $22
    ld [hl+], a                                   ; $6c9d: $22
    cpl                                           ; $6c9e: $2f
    rst $38                                       ; $6c9f: $ff
    rst $38                                       ; $6ca0: $ff
    ld a, [c]                                     ; $6ca1: $f2
    ld [hl+], a                                   ; $6ca2: $22
    ld [hl+], a                                   ; $6ca3: $22
    ld [hl+], a                                   ; $6ca4: $22
    ld [hl+], a                                   ; $6ca5: $22
    cpl                                           ; $6ca6: $2f
    rst $38                                       ; $6ca7: $ff
    rst $38                                       ; $6ca8: $ff
    ld a, [c]                                     ; $6ca9: $f2
    ld [hl+], a                                   ; $6caa: $22
    ld [hl+], a                                   ; $6cab: $22
    ld [hl+], a                                   ; $6cac: $22
    ld [hl+], a                                   ; $6cad: $22
    cpl                                           ; $6cae: $2f
    rst $38                                       ; $6caf: $ff
    rst $38                                       ; $6cb0: $ff
    ld a, [c]                                     ; $6cb1: $f2
    ld [hl+], a                                   ; $6cb2: $22
    ld [hl+], a                                   ; $6cb3: $22
    ld [hl+], a                                   ; $6cb4: $22
    ld [hl+], a                                   ; $6cb5: $22
    cpl                                           ; $6cb6: $2f
    di                                            ; $6cb7: $f3
    rst $38                                       ; $6cb8: $ff
    ld a, [c]                                     ; $6cb9: $f2
    ld [hl+], a                                   ; $6cba: $22
    ld [hl+], a                                   ; $6cbb: $22
    ld [hl+], a                                   ; $6cbc: $22
    ld [hl+], a                                   ; $6cbd: $22
    cpl                                           ; $6cbe: $2f
    rst $38                                       ; $6cbf: $ff
    rst $38                                       ; $6cc0: $ff
    ld [hl+], a                                   ; $6cc1: $22
    ld [hl+], a                                   ; $6cc2: $22
    ld [hl+], a                                   ; $6cc3: $22
    ld [hl+], a                                   ; $6cc4: $22
    ld [hl+], a                                   ; $6cc5: $22
    ld [hl+], a                                   ; $6cc6: $22
    ld [hl+], a                                   ; $6cc7: $22
    rst $38                                       ; $6cc8: $ff
    ld a, [c]                                     ; $6cc9: $f2
    ld [hl+], a                                   ; $6cca: $22
    ld [hl+], a                                   ; $6ccb: $22
    ld [hl+], a                                   ; $6ccc: $22
    ld [hl+], a                                   ; $6ccd: $22
    ld [hl+], a                                   ; $6cce: $22
    cpl                                           ; $6ccf: $2f
    rst $38                                       ; $6cd0: $ff
    ld a, [c]                                     ; $6cd1: $f2
    ld [hl+], a                                   ; $6cd2: $22
    ld [hl+], a                                   ; $6cd3: $22
    ld [hl+], a                                   ; $6cd4: $22
    ld [hl+], a                                   ; $6cd5: $22
    ld [hl+], a                                   ; $6cd6: $22
    cpl                                           ; $6cd7: $2f
    rst $38                                       ; $6cd8: $ff
    ld a, [c]                                     ; $6cd9: $f2
    ld [hl+], a                                   ; $6cda: $22
    ld [hl+], a                                   ; $6cdb: $22
    ld [hl+], a                                   ; $6cdc: $22
    ld [hl+], a                                   ; $6cdd: $22
    ld [hl+], a                                   ; $6cde: $22
    ld [hl+], a                                   ; $6cdf: $22
    rst $38                                       ; $6ce0: $ff
    ld [hl+], a                                   ; $6ce1: $22
    ld [hl+], a                                   ; $6ce2: $22
    ld [hl+], a                                   ; $6ce3: $22
    ld c, e                                       ; $6ce4: $4b
    inc de                                        ; $6ce5: $13
    inc d                                         ; $6ce6: $14
    scf                                           ; $6ce7: $37
    ld b, [hl]                                    ; $6ce8: $46
    ld c, b                                       ; $6ce9: $48
    ld d, a                                       ; $6cea: $57
    ld h, [hl]                                    ; $6ceb: $66
    ld l, c                                       ; $6cec: $69
    ld [hl], l                                    ; $6ced: $75
    ld [hl], a                                    ; $6cee: $77
    ld a, b                                       ; $6cef: $78
    add [hl]                                      ; $6cf0: $86
    adc c                                         ; $6cf1: $89
    sub l                                         ; $6cf2: $95
    sub a                                         ; $6cf3: $97
    sbc b                                         ; $6cf4: $98
    and [hl]                                      ; $6cf5: $a6
    xor c                                         ; $6cf6: $a9
    or l                                          ; $6cf7: $b5
    rst $38                                       ; $6cf8: $ff
    inc de                                        ; $6cf9: $13
    nop                                           ; $6cfa: $00
    nop                                           ; $6cfb: $00
    rst $38                                       ; $6cfc: $ff
    ld a, [c]                                     ; $6cfd: $f2
    ld [hl+], a                                   ; $6cfe: $22
    ld [hl+], a                                   ; $6cff: $22
    ld [hl+], a                                   ; $6d00: $22
    ld [hl+], a                                   ; $6d01: $22
    nop                                           ; $6d02: $00
    nop                                           ; $6d03: $00
    rst $38                                       ; $6d04: $ff
    ld a, [c]                                     ; $6d05: $f2
    ld [hl+], a                                   ; $6d06: $22
    ld [hl+], a                                   ; $6d07: $22
    ld [hl+], a                                   ; $6d08: $22
    ld [hl+], a                                   ; $6d09: $22
    nop                                           ; $6d0a: $00
    nop                                           ; $6d0b: $00
    rst $38                                       ; $6d0c: $ff
    ld a, [c]                                     ; $6d0d: $f2
    ld [hl+], a                                   ; $6d0e: $22
    ld [hl+], a                                   ; $6d0f: $22
    ld [hl+], a                                   ; $6d10: $22
    ld [hl+], a                                   ; $6d11: $22
    nop                                           ; $6d12: $00
    nop                                           ; $6d13: $00
    rst $38                                       ; $6d14: $ff
    ld a, [c]                                     ; $6d15: $f2
    ld [hl+], a                                   ; $6d16: $22
    ld [hl+], a                                   ; $6d17: $22
    ld [hl+], a                                   ; $6d18: $22
    ld [hl+], a                                   ; $6d19: $22
    nop                                           ; $6d1a: $00
    nop                                           ; $6d1b: $00
    rst $38                                       ; $6d1c: $ff
    ld a, [c]                                     ; $6d1d: $f2
    ld [hl+], a                                   ; $6d1e: $22
    ld [hl+], a                                   ; $6d1f: $22
    ld [hl+], a                                   ; $6d20: $22
    ld [hl+], a                                   ; $6d21: $22
    nop                                           ; $6d22: $00
    nop                                           ; $6d23: $00
    rst $38                                       ; $6d24: $ff
    ld a, [c]                                     ; $6d25: $f2
    ld [hl+], a                                   ; $6d26: $22
    ld [hl+], a                                   ; $6d27: $22
    ld [hl+], a                                   ; $6d28: $22
    ld [hl+], a                                   ; $6d29: $22
    rrca                                          ; $6d2a: $0f
    rst $38                                       ; $6d2b: $ff
    rst $38                                       ; $6d2c: $ff
    ld a, [c]                                     ; $6d2d: $f2
    ld [hl+], a                                   ; $6d2e: $22
    ld [hl+], a                                   ; $6d2f: $22
    ld [hl+], a                                   ; $6d30: $22
    ld [hl+], a                                   ; $6d31: $22
    rst $38                                       ; $6d32: $ff
    rst $38                                       ; $6d33: $ff
    rst $38                                       ; $6d34: $ff
    ld a, [c]                                     ; $6d35: $f2
    ld [hl+], a                                   ; $6d36: $22
    ld [hl+], a                                   ; $6d37: $22
    ld [hl+], a                                   ; $6d38: $22
    ld [hl+], a                                   ; $6d39: $22
    rst $38                                       ; $6d3a: $ff
    ccf                                           ; $6d3b: $3f
    rst $38                                       ; $6d3c: $ff
    ld [hl+], a                                   ; $6d3d: $22
    ld [hl+], a                                   ; $6d3e: $22
    ld [hl+], a                                   ; $6d3f: $22
    ld [hl+], a                                   ; $6d40: $22
    ld [hl+], a                                   ; $6d41: $22
    rst $38                                       ; $6d42: $ff
    ccf                                           ; $6d43: $3f
    ld a, [c]                                     ; $6d44: $f2
    ld [hl+], a                                   ; $6d45: $22
    ld [hl+], a                                   ; $6d46: $22
    ld [hl+], a                                   ; $6d47: $22
    ld [hl+], a                                   ; $6d48: $22
    ld [hl+], a                                   ; $6d49: $22
    rrca                                          ; $6d4a: $0f
    rst $38                                       ; $6d4b: $ff
    ld a, [c]                                     ; $6d4c: $f2
    ld [hl+], a                                   ; $6d4d: $22
    ld [hl+], a                                   ; $6d4e: $22
    ld [hl+], a                                   ; $6d4f: $22
    ld [hl+], a                                   ; $6d50: $22
    ld [hl+], a                                   ; $6d51: $22
    nop                                           ; $6d52: $00
    rst $38                                       ; $6d53: $ff
    ld a, [c]                                     ; $6d54: $f2
    ld [hl+], a                                   ; $6d55: $22
    ld [hl+], a                                   ; $6d56: $22
    ld [hl+], a                                   ; $6d57: $22
    ld [hl+], a                                   ; $6d58: $22
    ld [hl+], a                                   ; $6d59: $22
    nop                                           ; $6d5a: $00
    rst $38                                       ; $6d5b: $ff
    rst $38                                       ; $6d5c: $ff
    ld [hl+], a                                   ; $6d5d: $22
    ld [hl+], a                                   ; $6d5e: $22
    ld [hl+], a                                   ; $6d5f: $22
    ld [hl+], a                                   ; $6d60: $22
    ld [hl+], a                                   ; $6d61: $22
    nop                                           ; $6d62: $00
    rst $38                                       ; $6d63: $ff
    rst $38                                       ; $6d64: $ff
    ld [hl+], a                                   ; $6d65: $22
    ld [hl+], a                                   ; $6d66: $22
    ld [hl+], a                                   ; $6d67: $22
    ld [hl+], a                                   ; $6d68: $22
    ld [hl+], a                                   ; $6d69: $22
    nop                                           ; $6d6a: $00
    rrca                                          ; $6d6b: $0f
    rst $38                                       ; $6d6c: $ff
    ld a, [c]                                     ; $6d6d: $f2
    ld [hl+], a                                   ; $6d6e: $22
    ld [hl+], a                                   ; $6d6f: $22
    ld [hl+], a                                   ; $6d70: $22
    ld [hl+], a                                   ; $6d71: $22
    nop                                           ; $6d72: $00
    rrca                                          ; $6d73: $0f
    rst $38                                       ; $6d74: $ff
    rst $38                                       ; $6d75: $ff
    ld [hl+], a                                   ; $6d76: $22
    ld [hl+], a                                   ; $6d77: $22
    ld [hl+], a                                   ; $6d78: $22
    ld [hl+], a                                   ; $6d79: $22
    ld b, b                                       ; $6d7a: $40
    inc d                                         ; $6d7b: $14
    dec d                                         ; $6d7c: $15
    ld d, $35                                     ; $6d7d: $16 $35
    ld d, l                                       ; $6d7f: $55
    ld h, h                                       ; $6d80: $64
    ld [hl], d                                    ; $6d81: $72
    ld [hl], e                                    ; $6d82: $73
    add c                                         ; $6d83: $81
    rst $38                                       ; $6d84: $ff
    add hl, bc                                    ; $6d85: $09
    ld [hl+], a                                   ; $6d86: $22
    cpl                                           ; $6d87: $2f
    ld a, [c]                                     ; $6d88: $f2
    ld [hl+], a                                   ; $6d89: $22
    ld [hl+], a                                   ; $6d8a: $22
    ld [hl+], a                                   ; $6d8b: $22
    ld [hl+], a                                   ; $6d8c: $22
    ld [hl+], a                                   ; $6d8d: $22
    ld [hl+], a                                   ; $6d8e: $22
    rst $38                                       ; $6d8f: $ff
    rst $38                                       ; $6d90: $ff
    ld [hl+], a                                   ; $6d91: $22
    ld [hl+], a                                   ; $6d92: $22
    ld [hl+], a                                   ; $6d93: $22
    ld [hl+], a                                   ; $6d94: $22
    ld [hl+], a                                   ; $6d95: $22
    ld [hl+], a                                   ; $6d96: $22
    rst $38                                       ; $6d97: $ff
    rst $38                                       ; $6d98: $ff
    ld [hl+], a                                   ; $6d99: $22
    ld [hl+], a                                   ; $6d9a: $22
    ld [hl+], a                                   ; $6d9b: $22
    ld [hl+], a                                   ; $6d9c: $22
    ld [hl+], a                                   ; $6d9d: $22
    ld [hl+], a                                   ; $6d9e: $22
    cpl                                           ; $6d9f: $2f
    rst $38                                       ; $6da0: $ff
    ld [hl+], a                                   ; $6da1: $22
    rst $38                                       ; $6da2: $ff
    ld [hl+], a                                   ; $6da3: $22
    ld [hl+], a                                   ; $6da4: $22
    ld [hl+], a                                   ; $6da5: $22
    ld [hl+], a                                   ; $6da6: $22
    ld [hl+], a                                   ; $6da7: $22
    cpl                                           ; $6da8: $2f
    rst $38                                       ; $6da9: $ff
    rst $38                                       ; $6daa: $ff
    ld [hl+], a                                   ; $6dab: $22
    ld [hl+], a                                   ; $6dac: $22
    ld [hl+], a                                   ; $6dad: $22
    ld [hl+], a                                   ; $6dae: $22
    ld [hl+], a                                   ; $6daf: $22
    rst $38                                       ; $6db0: $ff
    rst $38                                       ; $6db1: $ff
    rst $38                                       ; $6db2: $ff
    rst $38                                       ; $6db3: $ff
    ld [hl+], a                                   ; $6db4: $22
    ld [hl+], a                                   ; $6db5: $22
    ld [hl+], a                                   ; $6db6: $22
    ld [hl+], a                                   ; $6db7: $22
    rst $38                                       ; $6db8: $ff
    rst $38                                       ; $6db9: $ff
    rst $38                                       ; $6dba: $ff
    rst $38                                       ; $6dbb: $ff
    ld a, [c]                                     ; $6dbc: $f2
    ld [hl+], a                                   ; $6dbd: $22
    ld [hl+], a                                   ; $6dbe: $22
    ld [hl+], a                                   ; $6dbf: $22
    ld [hl+], a                                   ; $6dc0: $22
    ld a, [c]                                     ; $6dc1: $f2
    rst $38                                       ; $6dc2: $ff
    rst $38                                       ; $6dc3: $ff
    ld a, [c]                                     ; $6dc4: $f2
    ld [hl+], a                                   ; $6dc5: $22
    ld [hl+], a                                   ; $6dc6: $22
    ld [hl+], a                                   ; $6dc7: $22
    ld [hl+], a                                   ; $6dc8: $22
    rst $38                                       ; $6dc9: $ff
    rst $38                                       ; $6dca: $ff
    rst $38                                       ; $6dcb: $ff
    ld a, [c]                                     ; $6dcc: $f2
    ld [hl+], a                                   ; $6dcd: $22
    ld [hl+], a                                   ; $6dce: $22
    ld [hl+], a                                   ; $6dcf: $22
    ld [hl+], a                                   ; $6dd0: $22
    rst $38                                       ; $6dd1: $ff
    rst $38                                       ; $6dd2: $ff
    rst $38                                       ; $6dd3: $ff
    ld [hl+], a                                   ; $6dd4: $22
    ld [hl+], a                                   ; $6dd5: $22
    ld [hl+], a                                   ; $6dd6: $22
    ld [hl+], a                                   ; $6dd7: $22
    ld a, [c]                                     ; $6dd8: $f2
    rst $38                                       ; $6dd9: $ff
    rst $38                                       ; $6dda: $ff
    rst $38                                       ; $6ddb: $ff
    ld [hl+], a                                   ; $6ddc: $22
    ld [hl+], a                                   ; $6ddd: $22
    ld [hl+], a                                   ; $6dde: $22
    cpl                                           ; $6ddf: $2f
    rst $38                                       ; $6de0: $ff
    cpl                                           ; $6de1: $2f
    rst $38                                       ; $6de2: $ff
    rst $38                                       ; $6de3: $ff
    ld [hl+], a                                   ; $6de4: $22
    ld [hl+], a                                   ; $6de5: $22
    ld [hl+], a                                   ; $6de6: $22
    cpl                                           ; $6de7: $2f
    ccf                                           ; $6de8: $3f
    rst $38                                       ; $6de9: $ff
    rst $38                                       ; $6dea: $ff
    rst $38                                       ; $6deb: $ff
    ld [hl+], a                                   ; $6dec: $22
    ld [hl+], a                                   ; $6ded: $22
    ld [hl+], a                                   ; $6dee: $22
    cpl                                           ; $6def: $2f
    rst $38                                       ; $6df0: $ff
    rst $38                                       ; $6df1: $ff
    rst $38                                       ; $6df2: $ff
    rst $38                                       ; $6df3: $ff
    ld [hl+], a                                   ; $6df4: $22
    ld [hl+], a                                   ; $6df5: $22
    ld [hl+], a                                   ; $6df6: $22
    ld [hl+], a                                   ; $6df7: $22
    cpl                                           ; $6df8: $2f
    rst $38                                       ; $6df9: $ff
    rst $38                                       ; $6dfa: $ff
    rst $38                                       ; $6dfb: $ff
    rst $38                                       ; $6dfc: $ff
    ld [hl+], a                                   ; $6dfd: $22
    ld [hl+], a                                   ; $6dfe: $22
    ld [hl+], a                                   ; $6dff: $22
    ld [hl+], a                                   ; $6e00: $22
    rst $38                                       ; $6e01: $ff
    rst $38                                       ; $6e02: $ff
    rst $38                                       ; $6e03: $ff
    ld a, [c]                                     ; $6e04: $f2
    ld [hl+], a                                   ; $6e05: $22
    ld l, b                                       ; $6e06: $68
    inc de                                        ; $6e07: $13
    inc d                                         ; $6e08: $14
    dec d                                         ; $6e09: $15
    inc sp                                        ; $6e0a: $33
    inc [hl]                                      ; $6e0b: $34
    ld b, l                                       ; $6e0c: $45
    ld b, [hl]                                    ; $6e0d: $46
    ld c, b                                       ; $6e0e: $48
    ld d, h                                       ; $6e0f: $54
    ld d, a                                       ; $6e10: $57
    ld e, c                                       ; $6e11: $59
    ld e, d                                       ; $6e12: $5a
    ld e, e                                       ; $6e13: $5b
    ld h, l                                       ; $6e14: $65
    ld h, [hl]                                    ; $6e15: $66
    ld a, c                                       ; $6e16: $79
    ld a, d                                       ; $6e17: $7a
    ld a, e                                       ; $6e18: $7b
    sub a                                         ; $6e19: $97
    sbc b                                         ; $6e1a: $98
    sbc c                                         ; $6e1b: $99
    sbc d                                         ; $6e1c: $9a
    sbc e                                         ; $6e1d: $9b
    or h                                          ; $6e1e: $b4
    push bc                                       ; $6e1f: $c5
    rst $38                                       ; $6e20: $ff
    add hl, de                                    ; $6e21: $19
    nop                                           ; $6e22: $00
    nop                                           ; $6e23: $00
    nop                                           ; $6e24: $00
    nop                                           ; $6e25: $00
    nop                                           ; $6e26: $00
    nop                                           ; $6e27: $00
    nop                                           ; $6e28: $00
    nop                                           ; $6e29: $00
    nop                                           ; $6e2a: $00
    nop                                           ; $6e2b: $00
    nop                                           ; $6e2c: $00
    nop                                           ; $6e2d: $00
    nop                                           ; $6e2e: $00
    nop                                           ; $6e2f: $00
    nop                                           ; $6e30: $00
    nop                                           ; $6e31: $00
    nop                                           ; $6e32: $00
    nop                                           ; $6e33: $00
    nop                                           ; $6e34: $00
    rst $38                                       ; $6e35: $ff
    rst $38                                       ; $6e36: $ff
    nop                                           ; $6e37: $00
    nop                                           ; $6e38: $00
    nop                                           ; $6e39: $00
    nop                                           ; $6e3a: $00
    nop                                           ; $6e3b: $00
    rrca                                          ; $6e3c: $0f
    rst $38                                       ; $6e3d: $ff
    rst $38                                       ; $6e3e: $ff
    ldh a, [rP1]                                  ; $6e3f: $f0 $00
    nop                                           ; $6e41: $00
    nop                                           ; $6e42: $00
    nop                                           ; $6e43: $00
    rrca                                          ; $6e44: $0f
    rst $38                                       ; $6e45: $ff
    pop af                                        ; $6e46: $f1
    rst $38                                       ; $6e47: $ff
    nop                                           ; $6e48: $00
    nop                                           ; $6e49: $00
    nop                                           ; $6e4a: $00
    nop                                           ; $6e4b: $00
    rrca                                          ; $6e4c: $0f
    rst $38                                       ; $6e4d: $ff
    rst $38                                       ; $6e4e: $ff
    ldh a, [rP1]                                  ; $6e4f: $f0 $00
    nop                                           ; $6e51: $00
    nop                                           ; $6e52: $00
    nop                                           ; $6e53: $00
    rrca                                          ; $6e54: $0f
    rst $38                                       ; $6e55: $ff
    rst $38                                       ; $6e56: $ff
    nop                                           ; $6e57: $00
    nop                                           ; $6e58: $00
    nop                                           ; $6e59: $00
    nop                                           ; $6e5a: $00
    nop                                           ; $6e5b: $00
    rrca                                          ; $6e5c: $0f
    rst $38                                       ; $6e5d: $ff
    rst $38                                       ; $6e5e: $ff
    ldh a, [rP1]                                  ; $6e5f: $f0 $00
    nop                                           ; $6e61: $00
    nop                                           ; $6e62: $00
    nop                                           ; $6e63: $00
    nop                                           ; $6e64: $00
    rst $38                                       ; $6e65: $ff
    rst $38                                       ; $6e66: $ff
    ldh a, [rP1]                                  ; $6e67: $f0 $00
    nop                                           ; $6e69: $00
    nop                                           ; $6e6a: $00
    nop                                           ; $6e6b: $00
    rrca                                          ; $6e6c: $0f
    rst $38                                       ; $6e6d: $ff
    rst $38                                       ; $6e6e: $ff
    rst $38                                       ; $6e6f: $ff
    nop                                           ; $6e70: $00
    nop                                           ; $6e71: $00
    nop                                           ; $6e72: $00
    nop                                           ; $6e73: $00
    rst $38                                       ; $6e74: $ff
    ccf                                           ; $6e75: $3f
    rra                                           ; $6e76: $1f
    rst $38                                       ; $6e77: $ff
    nop                                           ; $6e78: $00
    nop                                           ; $6e79: $00
    nop                                           ; $6e7a: $00
    nop                                           ; $6e7b: $00
    rst $38                                       ; $6e7c: $ff
    rst $38                                       ; $6e7d: $ff
    rst $38                                       ; $6e7e: $ff
    ldh a, [rP1]                                  ; $6e7f: $f0 $00
    nop                                           ; $6e81: $00
    nop                                           ; $6e82: $00
    nop                                           ; $6e83: $00
    rst $38                                       ; $6e84: $ff
    rst $38                                       ; $6e85: $ff
    nop                                           ; $6e86: $00
    nop                                           ; $6e87: $00
    nop                                           ; $6e88: $00
    nop                                           ; $6e89: $00
    nop                                           ; $6e8a: $00
    nop                                           ; $6e8b: $00
    rrca                                          ; $6e8c: $0f
    ldh a, [rP1]                                  ; $6e8d: $f0 $00
    nop                                           ; $6e8f: $00
    nop                                           ; $6e90: $00
    nop                                           ; $6e91: $00
    nop                                           ; $6e92: $00
    nop                                           ; $6e93: $00
    nop                                           ; $6e94: $00
    nop                                           ; $6e95: $00
    nop                                           ; $6e96: $00
    nop                                           ; $6e97: $00
    nop                                           ; $6e98: $00
    nop                                           ; $6e99: $00
    nop                                           ; $6e9a: $00
    nop                                           ; $6e9b: $00
    nop                                           ; $6e9c: $00
    nop                                           ; $6e9d: $00
    nop                                           ; $6e9e: $00
    nop                                           ; $6e9f: $00
    nop                                           ; $6ea0: $00
    nop                                           ; $6ea1: $00
    ld b, b                                       ; $6ea2: $40
    ld h, a                                       ; $6ea3: $67
    ld l, b                                       ; $6ea4: $68
    rst $38                                       ; $6ea5: $ff
    ld [bc], a                                    ; $6ea6: $02
    ld [hl+], a                                   ; $6ea7: $22
    ld [hl+], a                                   ; $6ea8: $22
    ld [hl+], a                                   ; $6ea9: $22
    ld [hl+], a                                   ; $6eaa: $22
    ld [hl+], a                                   ; $6eab: $22
    ld [hl+], a                                   ; $6eac: $22
    ld [hl+], a                                   ; $6ead: $22
    ld [hl+], a                                   ; $6eae: $22
    ld [hl+], a                                   ; $6eaf: $22
    ld [hl+], a                                   ; $6eb0: $22
    ld [hl+], a                                   ; $6eb1: $22
    ld [hl+], a                                   ; $6eb2: $22
    ld [hl+], a                                   ; $6eb3: $22
    cpl                                           ; $6eb4: $2f
    ld a, [c]                                     ; $6eb5: $f2
    ld [hl+], a                                   ; $6eb6: $22
    ld [hl+], a                                   ; $6eb7: $22
    ld [hl+], a                                   ; $6eb8: $22
    ld [hl+], a                                   ; $6eb9: $22
    ld [hl+], a                                   ; $6eba: $22
    ld [hl+], a                                   ; $6ebb: $22
    rst $38                                       ; $6ebc: $ff
    ld a, [c]                                     ; $6ebd: $f2
    ld [hl+], a                                   ; $6ebe: $22
    ld [hl+], a                                   ; $6ebf: $22
    ld [hl+], a                                   ; $6ec0: $22
    ld [hl+], a                                   ; $6ec1: $22
    ld [hl+], a                                   ; $6ec2: $22
    rst $38                                       ; $6ec3: $ff
    rst $38                                       ; $6ec4: $ff
    ld a, [c]                                     ; $6ec5: $f2
    ld [hl+], a                                   ; $6ec6: $22
    ld [hl+], a                                   ; $6ec7: $22
    ld [hl+], a                                   ; $6ec8: $22
    cpl                                           ; $6ec9: $2f
    cpl                                           ; $6eca: $2f
    rst $38                                       ; $6ecb: $ff
    rst $38                                       ; $6ecc: $ff
    rst $38                                       ; $6ecd: $ff
    ld [hl+], a                                   ; $6ece: $22
    ld [hl+], a                                   ; $6ecf: $22
    ld [hl+], a                                   ; $6ed0: $22
    rst $38                                       ; $6ed1: $ff
    cpl                                           ; $6ed2: $2f
    rst $38                                       ; $6ed3: $ff
    nop                                           ; $6ed4: $00
    rst $38                                       ; $6ed5: $ff
    ld a, [c]                                     ; $6ed6: $f2
    ld [hl+], a                                   ; $6ed7: $22
    ld [hl+], a                                   ; $6ed8: $22
    rst $38                                       ; $6ed9: $ff
    rst $38                                       ; $6eda: $ff
    rst $38                                       ; $6edb: $ff
    rrca                                          ; $6edc: $0f
    rst $38                                       ; $6edd: $ff
    ld a, [c]                                     ; $6ede: $f2
    ld [hl+], a                                   ; $6edf: $22
    ld [hl+], a                                   ; $6ee0: $22
    rst $38                                       ; $6ee1: $ff
    rst $38                                       ; $6ee2: $ff
    rst $38                                       ; $6ee3: $ff
    rst $38                                       ; $6ee4: $ff
    rst $38                                       ; $6ee5: $ff
    ld [hl+], a                                   ; $6ee6: $22
    ld [hl+], a                                   ; $6ee7: $22
    ld [hl+], a                                   ; $6ee8: $22
    rst $38                                       ; $6ee9: $ff
    rst $38                                       ; $6eea: $ff
    rst $38                                       ; $6eeb: $ff
    rst $38                                       ; $6eec: $ff
    rst $38                                       ; $6eed: $ff
    ld [hl+], a                                   ; $6eee: $22
    ld [hl+], a                                   ; $6eef: $22
    rst $38                                       ; $6ef0: $ff
    rst $38                                       ; $6ef1: $ff
    rst $38                                       ; $6ef2: $ff
    rst $38                                       ; $6ef3: $ff
    rrca                                          ; $6ef4: $0f
    rst $38                                       ; $6ef5: $ff
    ld [hl+], a                                   ; $6ef6: $22
    cpl                                           ; $6ef7: $2f
    rst $38                                       ; $6ef8: $ff
    rst $38                                       ; $6ef9: $ff
    rst $38                                       ; $6efa: $ff
    rst $38                                       ; $6efb: $ff
    rst $38                                       ; $6efc: $ff
    ld a, [c]                                     ; $6efd: $f2
    ld [hl+], a                                   ; $6efe: $22
    cpl                                           ; $6eff: $2f
    di                                            ; $6f00: $f3
    rst $38                                       ; $6f01: $ff
    rst $38                                       ; $6f02: $ff
    rst $38                                       ; $6f03: $ff
    rst $38                                       ; $6f04: $ff
    ld a, [c]                                     ; $6f05: $f2
    ld [hl+], a                                   ; $6f06: $22
    cpl                                           ; $6f07: $2f
    rst $38                                       ; $6f08: $ff
    rst $38                                       ; $6f09: $ff
    ccf                                           ; $6f0a: $3f
    rst $38                                       ; $6f0b: $ff
    rst $38                                       ; $6f0c: $ff
    ld a, [c]                                     ; $6f0d: $f2
    ld [hl+], a                                   ; $6f0e: $22
    ld [hl+], a                                   ; $6f0f: $22
    rst $38                                       ; $6f10: $ff
    rst $38                                       ; $6f11: $ff
    ccf                                           ; $6f12: $3f
    rst $38                                       ; $6f13: $ff
    rst $38                                       ; $6f14: $ff
    ld [hl+], a                                   ; $6f15: $22
    ld [hl+], a                                   ; $6f16: $22
    ld [hl+], a                                   ; $6f17: $22
    ld [hl+], a                                   ; $6f18: $22
    rst $38                                       ; $6f19: $ff
    rst $38                                       ; $6f1a: $ff
    ld a, [c]                                     ; $6f1b: $f2
    ld [hl+], a                                   ; $6f1c: $22
    ld [hl+], a                                   ; $6f1d: $22
    ld [hl+], a                                   ; $6f1e: $22
    ld [hl+], a                                   ; $6f1f: $22
    ld [hl+], a                                   ; $6f20: $22
    cpl                                           ; $6f21: $2f
    ld a, [c]                                     ; $6f22: $f2
    ld [hl+], a                                   ; $6f23: $22
    ld [hl+], a                                   ; $6f24: $22
    ld [hl+], a                                   ; $6f25: $22
    ld [hl+], a                                   ; $6f26: $22
    ld [hl], l                                    ; $6f27: $75
    ld a, [hl+]                                   ; $6f28: $2a
    dec hl                                        ; $6f29: $2b
    inc l                                         ; $6f2a: $2c
    ld b, a                                       ; $6f2b: $47
    ld c, c                                       ; $6f2c: $49
    ld c, d                                       ; $6f2d: $4a
    ld c, e                                       ; $6f2e: $4b
    ld c, h                                       ; $6f2f: $4c
    ld c, l                                       ; $6f30: $4d
    ld h, [hl]                                    ; $6f31: $66
    ld h, a                                       ; $6f32: $67
    ld l, b                                       ; $6f33: $68
    ld l, c                                       ; $6f34: $69
    ld l, d                                       ; $6f35: $6a
    ld l, e                                       ; $6f36: $6b
    ld l, h                                       ; $6f37: $6c
    ld l, l                                       ; $6f38: $6d
    ld [hl], l                                    ; $6f39: $75
    add [hl]                                      ; $6f3a: $86
    add a                                         ; $6f3b: $87
    adc b                                         ; $6f3c: $88
    adc c                                         ; $6f3d: $89
    adc d                                         ; $6f3e: $8a
    sub l                                         ; $6f3f: $95
    sbc e                                         ; $6f40: $9b
    xor b                                         ; $6f41: $a8
    xor c                                         ; $6f42: $a9
    xor d                                         ; $6f43: $aa
    or [hl]                                       ; $6f44: $b6
    or a                                          ; $6f45: $b7
    rst $38                                       ; $6f46: $ff
    ld e, $00                                     ; $6f47: $1e $00
    nop                                           ; $6f49: $00
    rrca                                          ; $6f4a: $0f
    ldh a, [rP1]                                  ; $6f4b: $f0 $00
    nop                                           ; $6f4d: $00
    nop                                           ; $6f4e: $00
    nop                                           ; $6f4f: $00
    nop                                           ; $6f50: $00
    nop                                           ; $6f51: $00
    rst $38                                       ; $6f52: $ff
    rst $38                                       ; $6f53: $ff
    nop                                           ; $6f54: $00
    nop                                           ; $6f55: $00
    nop                                           ; $6f56: $00
    nop                                           ; $6f57: $00
    nop                                           ; $6f58: $00
    nop                                           ; $6f59: $00
    rst $38                                       ; $6f5a: $ff
    rst $38                                       ; $6f5b: $ff
    ldh a, [rP1]                                  ; $6f5c: $f0 $00
    nop                                           ; $6f5e: $00
    nop                                           ; $6f5f: $00
    nop                                           ; $6f60: $00
    nop                                           ; $6f61: $00
    rst $38                                       ; $6f62: $ff
    rst $38                                       ; $6f63: $ff
    ldh a, [rP1]                                  ; $6f64: $f0 $00
    nop                                           ; $6f66: $00
    nop                                           ; $6f67: $00
    nop                                           ; $6f68: $00
    nop                                           ; $6f69: $00
    rrca                                          ; $6f6a: $0f
    rst $38                                       ; $6f6b: $ff
    rst $38                                       ; $6f6c: $ff
    ldh a, [rP1]                                  ; $6f6d: $f0 $00
    nop                                           ; $6f6f: $00
    nop                                           ; $6f70: $00
    nop                                           ; $6f71: $00
    nop                                           ; $6f72: $00
    rst $38                                       ; $6f73: $ff
    ld [hl+], a                                   ; $6f74: $22
    rst $38                                       ; $6f75: $ff
    nop                                           ; $6f76: $00
    nop                                           ; $6f77: $00
    nop                                           ; $6f78: $00
    nop                                           ; $6f79: $00
    nop                                           ; $6f7a: $00
    rst $38                                       ; $6f7b: $ff
    rst $38                                       ; $6f7c: $ff
    rst $38                                       ; $6f7d: $ff
    nop                                           ; $6f7e: $00
    nop                                           ; $6f7f: $00
    nop                                           ; $6f80: $00
    nop                                           ; $6f81: $00
    nop                                           ; $6f82: $00
    rst $38                                       ; $6f83: $ff
    rst $38                                       ; $6f84: $ff
    rst $38                                       ; $6f85: $ff
    nop                                           ; $6f86: $00
    nop                                           ; $6f87: $00
    nop                                           ; $6f88: $00
    nop                                           ; $6f89: $00
    nop                                           ; $6f8a: $00
    rrca                                          ; $6f8b: $0f
    rst $38                                       ; $6f8c: $ff
    rst $38                                       ; $6f8d: $ff
    nop                                           ; $6f8e: $00
    nop                                           ; $6f8f: $00
    nop                                           ; $6f90: $00
    nop                                           ; $6f91: $00
    nop                                           ; $6f92: $00
    rrca                                          ; $6f93: $0f
    rst $38                                       ; $6f94: $ff
    ldh a, [rP1]                                  ; $6f95: $f0 $00
    nop                                           ; $6f97: $00
    nop                                           ; $6f98: $00
    nop                                           ; $6f99: $00
    nop                                           ; $6f9a: $00
    rrca                                          ; $6f9b: $0f
    rst $38                                       ; $6f9c: $ff
    ldh a, [rP1]                                  ; $6f9d: $f0 $00
    nop                                           ; $6f9f: $00
    nop                                           ; $6fa0: $00
    nop                                           ; $6fa1: $00
    nop                                           ; $6fa2: $00
    rrca                                          ; $6fa3: $0f
    rst $38                                       ; $6fa4: $ff
    nop                                           ; $6fa5: $00
    nop                                           ; $6fa6: $00
    nop                                           ; $6fa7: $00
    nop                                           ; $6fa8: $00
    nop                                           ; $6fa9: $00
    nop                                           ; $6faa: $00
    rrca                                          ; $6fab: $0f
    rst $38                                       ; $6fac: $ff
    nop                                           ; $6fad: $00
    nop                                           ; $6fae: $00
    nop                                           ; $6faf: $00
    nop                                           ; $6fb0: $00
    nop                                           ; $6fb1: $00
    nop                                           ; $6fb2: $00
    rrca                                          ; $6fb3: $0f
    rst $38                                       ; $6fb4: $ff
    ldh a, [rP1]                                  ; $6fb5: $f0 $00
    nop                                           ; $6fb7: $00
    nop                                           ; $6fb8: $00
    nop                                           ; $6fb9: $00
    nop                                           ; $6fba: $00
    rrca                                          ; $6fbb: $0f
    rst $38                                       ; $6fbc: $ff
    ldh a, [rP1]                                  ; $6fbd: $f0 $00
    nop                                           ; $6fbf: $00
    nop                                           ; $6fc0: $00
    nop                                           ; $6fc1: $00
    nop                                           ; $6fc2: $00
    rrca                                          ; $6fc3: $0f
    rst $38                                       ; $6fc4: $ff
    nop                                           ; $6fc5: $00
    nop                                           ; $6fc6: $00
    nop                                           ; $6fc7: $00
    ld b, h                                       ; $6fc8: $44
    inc h                                         ; $6fc9: $24
    dec h                                         ; $6fca: $25
    ld h, $66                                     ; $6fcb: $26 $66
    ld h, a                                       ; $6fcd: $67
    ld a, b                                       ; $6fce: $78
    ld a, c                                       ; $6fcf: $79
    sub a                                         ; $6fd0: $97
    sbc c                                         ; $6fd1: $99
    sbc d                                         ; $6fd2: $9a
    xor b                                         ; $6fd3: $a8
    ret z                                         ; $6fd4: $c8

    rst $38                                       ; $6fd5: $ff
    inc c                                         ; $6fd6: $0c
    ld [hl+], a                                   ; $6fd7: $22
    ld [hl+], a                                   ; $6fd8: $22
    ld [hl+], a                                   ; $6fd9: $22
    ld [hl+], a                                   ; $6fda: $22
    ld [hl+], a                                   ; $6fdb: $22
    ld [hl+], a                                   ; $6fdc: $22
    ld [hl+], a                                   ; $6fdd: $22
    ld [hl+], a                                   ; $6fde: $22
    ld [hl+], a                                   ; $6fdf: $22
    ld [hl+], a                                   ; $6fe0: $22
    ld [hl+], a                                   ; $6fe1: $22
    ld [hl+], a                                   ; $6fe2: $22
    ld [hl+], a                                   ; $6fe3: $22
    ld [hl+], a                                   ; $6fe4: $22
    ld [hl+], a                                   ; $6fe5: $22
    ld [hl+], a                                   ; $6fe6: $22
    ld [hl+], a                                   ; $6fe7: $22
    ld [hl+], a                                   ; $6fe8: $22
    cpl                                           ; $6fe9: $2f
    rst $38                                       ; $6fea: $ff
    rst $38                                       ; $6feb: $ff
    ld [hl+], a                                   ; $6fec: $22
    ld [hl+], a                                   ; $6fed: $22
    ld [hl+], a                                   ; $6fee: $22
    ld [hl+], a                                   ; $6fef: $22
    ld [hl+], a                                   ; $6ff0: $22
    rst $38                                       ; $6ff1: $ff
    rst $38                                       ; $6ff2: $ff
    rst $38                                       ; $6ff3: $ff
    ld a, [c]                                     ; $6ff4: $f2
    ld [hl+], a                                   ; $6ff5: $22
    ld [hl+], a                                   ; $6ff6: $22
    ld [hl+], a                                   ; $6ff7: $22
    ld [hl+], a                                   ; $6ff8: $22
    rst $38                                       ; $6ff9: $ff
    di                                            ; $6ffa: $f3
    inc sp                                        ; $6ffb: $33
    rst $38                                       ; $6ffc: $ff
    ld [hl+], a                                   ; $6ffd: $22
    ld [hl+], a                                   ; $6ffe: $22
    ld [hl+], a                                   ; $6fff: $22
    cpl                                           ; $7000: $2f
    rst $38                                       ; $7001: $ff
    di                                            ; $7002: $f3
    inc sp                                        ; $7003: $33
    ccf                                           ; $7004: $3f
    ld [hl+], a                                   ; $7005: $22
    ld [hl+], a                                   ; $7006: $22
    ld [hl+], a                                   ; $7007: $22
    cpl                                           ; $7008: $2f
    ccf                                           ; $7009: $3f
    rst $38                                       ; $700a: $ff
    inc sp                                        ; $700b: $33
    ccf                                           ; $700c: $3f
    ld a, [c]                                     ; $700d: $f2
    ld [hl+], a                                   ; $700e: $22
    ld [hl+], a                                   ; $700f: $22
    rst $38                                       ; $7010: $ff
    inc sp                                        ; $7011: $33
    rst $38                                       ; $7012: $ff
    inc sp                                        ; $7013: $33
    inc sp                                        ; $7014: $33
    rst $38                                       ; $7015: $ff
    ld [hl+], a                                   ; $7016: $22
    ld [hl+], a                                   ; $7017: $22
    rst $38                                       ; $7018: $ff
    di                                            ; $7019: $f3
    rst $38                                       ; $701a: $ff
    inc sp                                        ; $701b: $33
    inc sp                                        ; $701c: $33
    ccf                                           ; $701d: $3f
    ld [hl+], a                                   ; $701e: $22
    ld [hl+], a                                   ; $701f: $22
    cpl                                           ; $7020: $2f
    rst $38                                       ; $7021: $ff
    rst $38                                       ; $7022: $ff
    rst $38                                       ; $7023: $ff
    inc sp                                        ; $7024: $33
    rst $38                                       ; $7025: $ff
    ld [hl+], a                                   ; $7026: $22
    ld [hl+], a                                   ; $7027: $22
    cpl                                           ; $7028: $2f
    rst $38                                       ; $7029: $ff
    ldh a, [rIF]                                  ; $702a: $f0 $0f
    rst $38                                       ; $702c: $ff
    ld a, [c]                                     ; $702d: $f2
    ld [hl+], a                                   ; $702e: $22
    ld [hl+], a                                   ; $702f: $22
    cpl                                           ; $7030: $2f
    ldh a, [rIE]                                  ; $7031: $f0 $ff
    rst $38                                       ; $7033: $ff
    rst $38                                       ; $7034: $ff
    ld [hl+], a                                   ; $7035: $22
    ld [hl+], a                                   ; $7036: $22
    ld [hl+], a                                   ; $7037: $22
    cpl                                           ; $7038: $2f
    rst $38                                       ; $7039: $ff
    rst $38                                       ; $703a: $ff
    ldh a, [rIF]                                  ; $703b: $f0 $0f
    ld a, [c]                                     ; $703d: $f2
    ld [hl+], a                                   ; $703e: $22
    ld [hl+], a                                   ; $703f: $22
    ld [hl+], a                                   ; $7040: $22
    ld [hl+], a                                   ; $7041: $22
    ld [hl+], a                                   ; $7042: $22
    rst $38                                       ; $7043: $ff
    rst $38                                       ; $7044: $ff
    ld a, [c]                                     ; $7045: $f2
    ld [hl+], a                                   ; $7046: $22
    ld [hl+], a                                   ; $7047: $22
    ld [hl+], a                                   ; $7048: $22
    ld [hl+], a                                   ; $7049: $22
    ld [hl+], a                                   ; $704a: $22
    ld [hl+], a                                   ; $704b: $22
    ld [hl+], a                                   ; $704c: $22
    ld [hl+], a                                   ; $704d: $22
    ld [hl+], a                                   ; $704e: $22
    ld [hl+], a                                   ; $704f: $22
    ld [hl+], a                                   ; $7050: $22
    ld [hl+], a                                   ; $7051: $22
    ld [hl+], a                                   ; $7052: $22
    ld [hl+], a                                   ; $7053: $22
    ld [hl+], a                                   ; $7054: $22
    ld [hl+], a                                   ; $7055: $22
    ld [hl+], a                                   ; $7056: $22
    ld c, [hl]                                    ; $7057: $4e
    ld b, l                                       ; $7058: $45
    ld b, [hl]                                    ; $7059: $46
    ld h, l                                       ; $705a: $65
    ld h, [hl]                                    ; $705b: $66
    ld [hl], a                                    ; $705c: $77
    sub [hl]                                      ; $705d: $96
    sub a                                         ; $705e: $97
    sbc b                                         ; $705f: $98
    sbc c                                         ; $7060: $99
    and h                                         ; $7061: $a4
    and l                                         ; $7062: $a5
    or e                                          ; $7063: $b3
    or [hl]                                       ; $7064: $b6
    or a                                          ; $7065: $b7
    cp b                                          ; $7066: $b8
    cp c                                          ; $7067: $b9
    cp d                                          ; $7068: $ba
    cp e                                          ; $7069: $bb
    call nz, $d8c5                                ; $706a: $c4 $c5 $d8
    reti                                          ; $706d: $d9


    jp c, $ffdb                                   ; $706e: $da $db $ff

    jr jr_045_7095                                ; $7071: $18 $22

    ld [hl+], a                                   ; $7073: $22
    ld [hl+], a                                   ; $7074: $22
    ld [hl+], a                                   ; $7075: $22
    rst $38                                       ; $7076: $ff
    ldh a, [rP1]                                  ; $7077: $f0 $00
    nop                                           ; $7079: $00
    ld [hl+], a                                   ; $707a: $22
    ld [hl+], a                                   ; $707b: $22
    ld [hl+], a                                   ; $707c: $22
    ld [hl+], a                                   ; $707d: $22
    rst $38                                       ; $707e: $ff
    ldh a, [rP1]                                  ; $707f: $f0 $00
    nop                                           ; $7081: $00
    ld [hl+], a                                   ; $7082: $22
    ld [hl+], a                                   ; $7083: $22
    ld [hl+], a                                   ; $7084: $22
    ld [hl+], a                                   ; $7085: $22
    cpl                                           ; $7086: $2f
    ldh a, [rP1]                                  ; $7087: $f0 $00
    nop                                           ; $7089: $00
    ld [hl+], a                                   ; $708a: $22
    ld [hl+], a                                   ; $708b: $22
    ld [hl+], a                                   ; $708c: $22
    ld [hl+], a                                   ; $708d: $22
    cpl                                           ; $708e: $2f
    rst $38                                       ; $708f: $ff
    nop                                           ; $7090: $00
    nop                                           ; $7091: $00
    ld [hl+], a                                   ; $7092: $22
    ld [hl+], a                                   ; $7093: $22
    ld [hl+], a                                   ; $7094: $22

jr_045_7095:
    ld [hl+], a                                   ; $7095: $22
    ld [hl+], a                                   ; $7096: $22
    rst $38                                       ; $7097: $ff
    rst $38                                       ; $7098: $ff
    rst $38                                       ; $7099: $ff
    ld [hl+], a                                   ; $709a: $22
    ld [hl+], a                                   ; $709b: $22
    ld [hl+], a                                   ; $709c: $22
    ld [hl+], a                                   ; $709d: $22
    cpl                                           ; $709e: $2f
    rst $38                                       ; $709f: $ff
    rst $38                                       ; $70a0: $ff
    rst $38                                       ; $70a1: $ff
    ld [hl+], a                                   ; $70a2: $22
    ld [hl+], a                                   ; $70a3: $22
    ld [hl+], a                                   ; $70a4: $22
    ld [hl+], a                                   ; $70a5: $22
    cpl                                           ; $70a6: $2f
    rst $38                                       ; $70a7: $ff
    ldh a, [rP1]                                  ; $70a8: $f0 $00
    ld [hl+], a                                   ; $70aa: $22
    ld [hl+], a                                   ; $70ab: $22
    ld [hl+], a                                   ; $70ac: $22
    ld [hl+], a                                   ; $70ad: $22
    rst $38                                       ; $70ae: $ff
    rst $38                                       ; $70af: $ff
    nop                                           ; $70b0: $00
    nop                                           ; $70b1: $00
    ld [hl+], a                                   ; $70b2: $22
    ld [hl+], a                                   ; $70b3: $22
    ld [hl+], a                                   ; $70b4: $22
    cpl                                           ; $70b5: $2f
    rst $38                                       ; $70b6: $ff
    ldh a, [rP1]                                  ; $70b7: $f0 $00
    nop                                           ; $70b9: $00
    ld [hl+], a                                   ; $70ba: $22
    ld [hl+], a                                   ; $70bb: $22
    ld [hl+], a                                   ; $70bc: $22
    rst $38                                       ; $70bd: $ff
    rst $38                                       ; $70be: $ff
    ldh a, [rP1]                                  ; $70bf: $f0 $00
    nop                                           ; $70c1: $00
    ld [hl+], a                                   ; $70c2: $22
    ld [hl+], a                                   ; $70c3: $22
    ld [hl+], a                                   ; $70c4: $22
    rst $38                                       ; $70c5: $ff
    rst $38                                       ; $70c6: $ff
    ldh a, [rP1]                                  ; $70c7: $f0 $00
    nop                                           ; $70c9: $00
    ld [hl+], a                                   ; $70ca: $22
    ld [hl+], a                                   ; $70cb: $22
    rst $38                                       ; $70cc: $ff
    rst $38                                       ; $70cd: $ff
    rst $38                                       ; $70ce: $ff
    rst $38                                       ; $70cf: $ff
    ldh a, [rP1]                                  ; $70d0: $f0 $00
    cpl                                           ; $70d2: $2f
    rst $38                                       ; $70d3: $ff
    rst $38                                       ; $70d4: $ff
    rst $38                                       ; $70d5: $ff
    rrca                                          ; $70d6: $0f
    rst $38                                       ; $70d7: $ff
    rst $38                                       ; $70d8: $ff
    rst $38                                       ; $70d9: $ff
    rst $38                                       ; $70da: $ff
    ccf                                           ; $70db: $3f
    rst $38                                       ; $70dc: $ff
    ldh a, [rP1]                                  ; $70dd: $f0 $00
    rrca                                          ; $70df: $0f
    ldh a, [rP1]                                  ; $70e0: $f0 $00
    rrca                                          ; $70e2: $0f
    rst $38                                       ; $70e3: $ff
    rst $38                                       ; $70e4: $ff
    ldh a, [rP1]                                  ; $70e5: $f0 $00
    nop                                           ; $70e7: $00
    nop                                           ; $70e8: $00
    nop                                           ; $70e9: $00
    nop                                           ; $70ea: $00
    rst $38                                       ; $70eb: $ff
    rrca                                          ; $70ec: $0f
    ldh a, [rP1]                                  ; $70ed: $f0 $00
    nop                                           ; $70ef: $00
    nop                                           ; $70f0: $00
    nop                                           ; $70f1: $00
    ld d, a                                       ; $70f2: $57
    ld [$2a19], sp                                ; $70f3: $08 $19 $2a
    ld c, d                                       ; $70f6: $4a
    ld e, e                                       ; $70f7: $5b
    ld l, d                                       ; $70f8: $6a
    ld a, c                                       ; $70f9: $79
    adc b                                         ; $70fa: $88
    adc d                                         ; $70fb: $8a
    sbc c                                         ; $70fc: $99
    and a                                         ; $70fd: $a7
    xor b                                         ; $70fe: $a8
    or [hl]                                       ; $70ff: $b6
    push bc                                       ; $7100: $c5
    db $d3                                        ; $7101: $d3
    rst $38                                       ; $7102: $ff
    rrca                                          ; $7103: $0f
    ld [hl+], a                                   ; $7104: $22
    ld [hl+], a                                   ; $7105: $22
    ld [hl+], a                                   ; $7106: $22
    ld [hl+], a                                   ; $7107: $22
    rst $38                                       ; $7108: $ff
    ld a, [c]                                     ; $7109: $f2
    ld [hl+], a                                   ; $710a: $22
    ld [hl+], a                                   ; $710b: $22
    ld [hl+], a                                   ; $710c: $22
    ld [hl+], a                                   ; $710d: $22
    ld [hl+], a                                   ; $710e: $22
    cpl                                           ; $710f: $2f
    rst $38                                       ; $7110: $ff
    ld a, [c]                                     ; $7111: $f2
    ld [hl+], a                                   ; $7112: $22
    ld [hl+], a                                   ; $7113: $22
    ld [hl+], a                                   ; $7114: $22
    ld [hl+], a                                   ; $7115: $22
    ld [hl+], a                                   ; $7116: $22
    cpl                                           ; $7117: $2f
    rrca                                          ; $7118: $0f
    rst $38                                       ; $7119: $ff
    ld a, [c]                                     ; $711a: $f2
    ld [hl+], a                                   ; $711b: $22
    ld [hl+], a                                   ; $711c: $22
    ld [hl+], a                                   ; $711d: $22
    cpl                                           ; $711e: $2f
    rst $38                                       ; $711f: $ff
    rst $38                                       ; $7120: $ff
    rst $38                                       ; $7121: $ff
    ld a, [c]                                     ; $7122: $f2
    ld [hl+], a                                   ; $7123: $22
    ld [hl+], a                                   ; $7124: $22
    ld [hl+], a                                   ; $7125: $22
    cpl                                           ; $7126: $2f
    rst $38                                       ; $7127: $ff
    rst $38                                       ; $7128: $ff
    rst $38                                       ; $7129: $ff
    ld a, [c]                                     ; $712a: $f2
    ld [hl+], a                                   ; $712b: $22
    ld [hl+], a                                   ; $712c: $22
    ld [hl+], a                                   ; $712d: $22
    ld [hl+], a                                   ; $712e: $22
    rst $38                                       ; $712f: $ff
    rst $38                                       ; $7130: $ff
    rst $38                                       ; $7131: $ff
    ld a, [c]                                     ; $7132: $f2
    ld [hl+], a                                   ; $7133: $22
    ld [hl+], a                                   ; $7134: $22
    ld [hl+], a                                   ; $7135: $22
    ld [hl+], a                                   ; $7136: $22
    rst $38                                       ; $7137: $ff
    rst $38                                       ; $7138: $ff
    rst $38                                       ; $7139: $ff
    ld [hl+], a                                   ; $713a: $22
    ld [hl+], a                                   ; $713b: $22
    ld [hl+], a                                   ; $713c: $22
    ld [hl+], a                                   ; $713d: $22
    cpl                                           ; $713e: $2f
    rst $38                                       ; $713f: $ff
    rst $38                                       ; $7140: $ff
    ld a, [c]                                     ; $7141: $f2
    ld [hl+], a                                   ; $7142: $22
    ld [hl+], a                                   ; $7143: $22
    ld [hl+], a                                   ; $7144: $22
    ld [hl+], a                                   ; $7145: $22
    cpl                                           ; $7146: $2f
    rst $38                                       ; $7147: $ff
    rst $38                                       ; $7148: $ff
    ld a, [c]                                     ; $7149: $f2
    ld [hl+], a                                   ; $714a: $22
    ld [hl+], a                                   ; $714b: $22
    ld [hl+], a                                   ; $714c: $22
    ld [hl+], a                                   ; $714d: $22
    ld [hl+], a                                   ; $714e: $22
    rst $38                                       ; $714f: $ff
    rst $38                                       ; $7150: $ff
    rst $38                                       ; $7151: $ff
    ld [hl+], a                                   ; $7152: $22
    ld [hl+], a                                   ; $7153: $22
    ld [hl+], a                                   ; $7154: $22
    ld [hl+], a                                   ; $7155: $22
    ld [hl+], a                                   ; $7156: $22
    ldh a, [$f3]                                  ; $7157: $f0 $f3
    ld a, [c]                                     ; $7159: $f2
    ld [hl+], a                                   ; $715a: $22
    ld [hl+], a                                   ; $715b: $22
    ld [hl+], a                                   ; $715c: $22
    ld [hl+], a                                   ; $715d: $22
    ld [hl+], a                                   ; $715e: $22
    rst $38                                       ; $715f: $ff
    ccf                                           ; $7160: $3f
    ld a, [c]                                     ; $7161: $f2
    ld [hl+], a                                   ; $7162: $22
    ld [hl+], a                                   ; $7163: $22
    ld [hl+], a                                   ; $7164: $22
    cpl                                           ; $7165: $2f
    rst $38                                       ; $7166: $ff
    rst $38                                       ; $7167: $ff
    rst $38                                       ; $7168: $ff
    ld a, [c]                                     ; $7169: $f2
    ld [hl+], a                                   ; $716a: $22
    ld [hl+], a                                   ; $716b: $22
    ld [hl+], a                                   ; $716c: $22
    rst $38                                       ; $716d: $ff
    rst $38                                       ; $716e: $ff
    rst $38                                       ; $716f: $ff
    rst $38                                       ; $7170: $ff
    ld a, [c]                                     ; $7171: $f2
    ld [hl+], a                                   ; $7172: $22
    ld [hl+], a                                   ; $7173: $22
    ld [hl+], a                                   ; $7174: $22
    rst $38                                       ; $7175: $ff
    rst $38                                       ; $7176: $ff
    rst $38                                       ; $7177: $ff
    rst $38                                       ; $7178: $ff
    ld a, [c]                                     ; $7179: $f2
    ld [hl+], a                                   ; $717a: $22
    ld [hl+], a                                   ; $717b: $22
    ld [hl+], a                                   ; $717c: $22
    cpl                                           ; $717d: $2f
    ld a, [c]                                     ; $717e: $f2
    ld [hl+], a                                   ; $717f: $22
    ld [hl+], a                                   ; $7180: $22
    ld [hl+], a                                   ; $7181: $22
    ld [hl+], a                                   ; $7182: $22
    ld [hl+], a                                   ; $7183: $22
    ld e, [hl]                                    ; $7184: $5e
    jr jr_045_71a0                                ; $7185: $18 $19

    ld a, [de]                                    ; $7187: $1a
    daa                                           ; $7188: $27
    dec hl                                        ; $7189: $2b
    ld [hl], $38                                  ; $718a: $36 $38
    add hl, sp                                    ; $718c: $39
    ld a, [hl-]                                   ; $718d: $3a
    ld b, a                                       ; $718e: $47
    ld c, e                                       ; $718f: $4b
    ld c, h                                       ; $7190: $4c
    ld d, [hl]                                    ; $7191: $56
    ld e, b                                       ; $7192: $58
    ld e, c                                       ; $7193: $59
    ld e, d                                       ; $7194: $5a
    ld h, a                                       ; $7195: $67
    halt                                          ; $7196: $76
    ld a, b                                       ; $7197: $78
    ld a, c                                       ; $7198: $79
    ld a, d                                       ; $7199: $7a
    add a                                         ; $719a: $87
    sub [hl]                                      ; $719b: $96
    sbc b                                         ; $719c: $98
    and a                                         ; $719d: $a7
    or [hl]                                       ; $719e: $b6
    rst $38                                       ; $719f: $ff

jr_045_71a0:
    ld a, [de]                                    ; $71a0: $1a
    call c, $c77a                                 ; $71a1: $dc $7a $c7
    ld [hl], c                                    ; $71a4: $71
    rst $00                                       ; $71a5: $c7
    ld [hl], c                                    ; $71a6: $71
    rst $00                                       ; $71a7: $c7
    ld [hl], c                                    ; $71a8: $71
    rst $00                                       ; $71a9: $c7
    ld [hl], c                                    ; $71aa: $71
    rst $00                                       ; $71ab: $c7
    ld [hl], c                                    ; $71ac: $71
    rst $00                                       ; $71ad: $c7
    ld [hl], c                                    ; $71ae: $71
    rst $00                                       ; $71af: $c7
    ld [hl], c                                    ; $71b0: $71
    rst $00                                       ; $71b1: $c7
    ld [hl], c                                    ; $71b2: $71
    rst $00                                       ; $71b3: $c7
    ld [hl], c                                    ; $71b4: $71
    rst $00                                       ; $71b5: $c7
    ld [hl], c                                    ; $71b6: $71
    rst $00                                       ; $71b7: $c7
    ld [hl], c                                    ; $71b8: $71
    rst $00                                       ; $71b9: $c7
    ld [hl], c                                    ; $71ba: $71
    rst $00                                       ; $71bb: $c7
    ld [hl], c                                    ; $71bc: $71
    rst $00                                       ; $71bd: $c7
    ld [hl], c                                    ; $71be: $71
    rst $00                                       ; $71bf: $c7
    ld [hl], c                                    ; $71c0: $71
    rst $00                                       ; $71c1: $c7
    ld [hl], c                                    ; $71c2: $71
    rst $00                                       ; $71c3: $c7
    ld [hl], c                                    ; $71c4: $71
    rst $00                                       ; $71c5: $c7
    ld [hl], c                                    ; $71c6: $71
    nop                                           ; $71c7: $00
    nop                                           ; $71c8: $00
    rst $38                                       ; $71c9: $ff
    nop                                           ; $71ca: $00
    nop                                           ; $71cb: $00
    rrca                                          ; $71cc: $0f
    rrca                                          ; $71cd: $0f
    ldh a, [rP1]                                  ; $71ce: $f0 $00
    nop                                           ; $71d0: $00
    rst $38                                       ; $71d1: $ff
    ldh a, [rP1]                                  ; $71d2: $f0 $00
    rst $38                                       ; $71d4: $ff
    rst $38                                       ; $71d5: $ff
    rst $38                                       ; $71d6: $ff
    nop                                           ; $71d7: $00
    rrca                                          ; $71d8: $0f
    rst $38                                       ; $71d9: $ff
    ldh a, [rIF]                                  ; $71da: $f0 $0f
    ld a, [c]                                     ; $71dc: $f2
    rst $38                                       ; $71dd: $ff
    rst $38                                       ; $71de: $ff
    nop                                           ; $71df: $00
    rst $38                                       ; $71e0: $ff
    rst $38                                       ; $71e1: $ff
    ldh a, [rIF]                                  ; $71e2: $f0 $0f
    ld [hl+], a                                   ; $71e4: $22
    rst $38                                       ; $71e5: $ff
    ldh a, [rP1]                                  ; $71e6: $f0 $00
    rst $38                                       ; $71e8: $ff
    rst $38                                       ; $71e9: $ff
    rst $38                                       ; $71ea: $ff
    rst $38                                       ; $71eb: $ff
    cpl                                           ; $71ec: $2f
    rst $38                                       ; $71ed: $ff
    rst $38                                       ; $71ee: $ff
    nop                                           ; $71ef: $00
    rst $38                                       ; $71f0: $ff
    rst $38                                       ; $71f1: $ff
    rst $38                                       ; $71f2: $ff
    rst $38                                       ; $71f3: $ff
    ld a, [c]                                     ; $71f4: $f2
    rst $38                                       ; $71f5: $ff
    rst $38                                       ; $71f6: $ff
    nop                                           ; $71f7: $00
    rrca                                          ; $71f8: $0f
    rst $38                                       ; $71f9: $ff
    rra                                           ; $71fa: $1f
    rra                                           ; $71fb: $1f
    rst $38                                       ; $71fc: $ff
    rst $38                                       ; $71fd: $ff
    ldh a, [rP1]                                  ; $71fe: $f0 $00
    rst $38                                       ; $7200: $ff
    rst $38                                       ; $7201: $ff
    rst $38                                       ; $7202: $ff
    rst $38                                       ; $7203: $ff
    ccf                                           ; $7204: $3f
    rst $38                                       ; $7205: $ff
    nop                                           ; $7206: $00
    nop                                           ; $7207: $00
    rst $38                                       ; $7208: $ff
    di                                            ; $7209: $f3
    rst $38                                       ; $720a: $ff
    rst $38                                       ; $720b: $ff
    pop af                                        ; $720c: $f1
    ldh a, [rP1]                                  ; $720d: $f0 $00
    nop                                           ; $720f: $00
    rst $38                                       ; $7210: $ff
    rst $38                                       ; $7211: $ff
    rst $38                                       ; $7212: $ff
    rst $38                                       ; $7213: $ff
    rst $38                                       ; $7214: $ff
    rst $38                                       ; $7215: $ff
    nop                                           ; $7216: $00
    rrca                                          ; $7217: $0f
    rst $38                                       ; $7218: $ff
    rst $38                                       ; $7219: $ff
    rst $38                                       ; $721a: $ff
    rst $38                                       ; $721b: $ff
    rst $38                                       ; $721c: $ff
    pop af                                        ; $721d: $f1
    rst $38                                       ; $721e: $ff
    rrca                                          ; $721f: $0f
    rst $38                                       ; $7220: $ff
    rra                                           ; $7221: $1f
    rst $38                                       ; $7222: $ff
    rst $38                                       ; $7223: $ff
    rst $38                                       ; $7224: $ff
    rst $38                                       ; $7225: $ff
    rst $38                                       ; $7226: $ff
    pop af                                        ; $7227: $f1
    ld de, $ff1f                                  ; $7228: $11 $1f $ff
    rst $38                                       ; $722b: $ff
    rst $38                                       ; $722c: $ff
    rst $38                                       ; $722d: $ff
    rst $38                                       ; $722e: $ff
    rst $38                                       ; $722f: $ff
    pop af                                        ; $7230: $f1
    rst $38                                       ; $7231: $ff
    ldh a, [rIE]                                  ; $7232: $f0 $ff
    rst $38                                       ; $7234: $ff
    di                                            ; $7235: $f3
    rst $38                                       ; $7236: $ff
    rst $38                                       ; $7237: $ff
    pop af                                        ; $7238: $f1
    rst $38                                       ; $7239: $ff
    ldh a, [rIE]                                  ; $723a: $f0 $ff
    rst $38                                       ; $723c: $ff
    rst $38                                       ; $723d: $ff
    ldh a, [rIF]                                  ; $723e: $f0 $0f
    rst $38                                       ; $7240: $ff
    rst $38                                       ; $7241: $ff
    nop                                           ; $7242: $00
    rrca                                          ; $7243: $0f
    ldh a, [rIF]                                  ; $7244: $f0 $0f
    nop                                           ; $7246: $00
    xor a                                         ; $7247: $af
    inc sp                                        ; $7248: $33
    inc [hl]                                      ; $7249: $34
    ld c, h                                       ; $724a: $4c
    ld d, a                                       ; $724b: $57
    ld l, h                                       ; $724c: $6c
    ld l, l                                       ; $724d: $6d
    add e                                         ; $724e: $83
    sbc e                                         ; $724f: $9b
    sbc h                                         ; $7250: $9c
    or l                                          ; $7251: $b5
    or [hl]                                       ; $7252: $b6
    cp c                                          ; $7253: $b9
    cp d                                          ; $7254: $ba
    cp e                                          ; $7255: $bb
    cp h                                          ; $7256: $bc
    rst $38                                       ; $7257: $ff
    rrca                                          ; $7258: $0f
    rst $38                                       ; $7259: $ff
    rst $38                                       ; $725a: $ff
    rst $38                                       ; $725b: $ff
    nop                                           ; $725c: $00
    rrca                                          ; $725d: $0f
    ld [hl+], a                                   ; $725e: $22
    ld [hl+], a                                   ; $725f: $22
    ld [hl+], a                                   ; $7260: $22
    rst $38                                       ; $7261: $ff
    rst $38                                       ; $7262: $ff
    ldh a, [rIF]                                  ; $7263: $f0 $0f
    rst $38                                       ; $7265: $ff
    ld a, [c]                                     ; $7266: $f2
    ld [hl+], a                                   ; $7267: $22
    ld [hl+], a                                   ; $7268: $22
    rst $38                                       ; $7269: $ff
    rst $38                                       ; $726a: $ff
    rrca                                          ; $726b: $0f
    pop af                                        ; $726c: $f1
    rra                                           ; $726d: $1f
    ld [hl+], a                                   ; $726e: $22
    ld [hl+], a                                   ; $726f: $22
    ld [hl+], a                                   ; $7270: $22
    rst $38                                       ; $7271: $ff
    ldh a, [rIF]                                  ; $7272: $f0 $0f
    rra                                           ; $7274: $1f
    rst $38                                       ; $7275: $ff
    ld [hl+], a                                   ; $7276: $22
    ld [hl+], a                                   ; $7277: $22
    ld [hl+], a                                   ; $7278: $22
    rst $38                                       ; $7279: $ff
    ldh a, [rIF]                                  ; $727a: $f0 $0f
    rst $38                                       ; $727c: $ff
    rst $38                                       ; $727d: $ff
    ld [hl+], a                                   ; $727e: $22
    ld [hl+], a                                   ; $727f: $22
    ld [hl+], a                                   ; $7280: $22
    rst $38                                       ; $7281: $ff
    ldh a, [rIE]                                  ; $7282: $f0 $ff
    rst $38                                       ; $7284: $ff
    ld a, [c]                                     ; $7285: $f2
    ld [hl+], a                                   ; $7286: $22
    ld [hl+], a                                   ; $7287: $22
    ld [hl+], a                                   ; $7288: $22
    rst $38                                       ; $7289: $ff
    ldh a, [rIE]                                  ; $728a: $f0 $ff
    rst $38                                       ; $728c: $ff
    rst $38                                       ; $728d: $ff
    ld [hl+], a                                   ; $728e: $22
    ld [hl+], a                                   ; $728f: $22
    ld [hl+], a                                   ; $7290: $22
    rst $38                                       ; $7291: $ff
    ldh a, [rIF]                                  ; $7292: $f0 $0f
    rst $38                                       ; $7294: $ff
    ccf                                           ; $7295: $3f
    ld a, [c]                                     ; $7296: $f2
    ld [hl+], a                                   ; $7297: $22
    ld [hl+], a                                   ; $7298: $22
    rst $38                                       ; $7299: $ff
    ldh a, [rP1]                                  ; $729a: $f0 $00
    rst $38                                       ; $729c: $ff
    rst $38                                       ; $729d: $ff
    ld a, [c]                                     ; $729e: $f2
    ld [hl+], a                                   ; $729f: $22
    ld [hl+], a                                   ; $72a0: $22
    rst $38                                       ; $72a1: $ff
    rst $38                                       ; $72a2: $ff
    nop                                           ; $72a3: $00
    rst $38                                       ; $72a4: $ff
    di                                            ; $72a5: $f3
    ld a, [c]                                     ; $72a6: $f2
    ld [hl+], a                                   ; $72a7: $22
    ld [hl+], a                                   ; $72a8: $22
    rst $38                                       ; $72a9: $ff
    rst $38                                       ; $72aa: $ff
    ldh a, [rIE]                                  ; $72ab: $f0 $ff
    ccf                                           ; $72ad: $3f
    rst $38                                       ; $72ae: $ff
    ld [hl+], a                                   ; $72af: $22
    ld [hl+], a                                   ; $72b0: $22
    rst $38                                       ; $72b1: $ff
    rst $38                                       ; $72b2: $ff
    ldh a, [rIF]                                  ; $72b3: $f0 $0f
    ccf                                           ; $72b5: $3f
    rst $38                                       ; $72b6: $ff
    ld a, [c]                                     ; $72b7: $f2
    ld [hl+], a                                   ; $72b8: $22
    rst $38                                       ; $72b9: $ff
    rst $38                                       ; $72ba: $ff
    nop                                           ; $72bb: $00
    rst $38                                       ; $72bc: $ff
    pop af                                        ; $72bd: $f1
    ldh a, [rIE]                                  ; $72be: $f0 $ff
    ld a, [c]                                     ; $72c0: $f2
    rst $38                                       ; $72c1: $ff
    rst $38                                       ; $72c2: $ff
    ldh a, [rIE]                                  ; $72c3: $f0 $ff
    rst $38                                       ; $72c5: $ff
    ldh a, [rP1]                                  ; $72c6: $f0 $00
    rst $38                                       ; $72c8: $ff
    rst $38                                       ; $72c9: $ff
    rst $38                                       ; $72ca: $ff
    ldh a, [rIE]                                  ; $72cb: $f0 $ff
    rst $38                                       ; $72cd: $ff
    nop                                           ; $72ce: $00
    nop                                           ; $72cf: $00
    nop                                           ; $72d0: $00
    rst $38                                       ; $72d1: $ff
    rst $38                                       ; $72d2: $ff
    nop                                           ; $72d3: $00
    rrca                                          ; $72d4: $0f
    ldh a, [rIF]                                  ; $72d5: $f0 $0f
    rst $38                                       ; $72d7: $ff
    ldh a, [$8d]                                  ; $72d8: $f0 $8d
    ld b, [hl]                                    ; $72da: $46
    ld c, b                                       ; $72db: $48
    ld d, l                                       ; $72dc: $55
    ld h, [hl]                                    ; $72dd: $66
    ld [hl], a                                    ; $72de: $77
    rst $38                                       ; $72df: $ff
    dec b                                         ; $72e0: $05
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
    nop                                           ; $72ec: $00
    rrca                                          ; $72ed: $0f
    rst $38                                       ; $72ee: $ff
    rst $38                                       ; $72ef: $ff
    rst $38                                       ; $72f0: $ff
    rst $38                                       ; $72f1: $ff
    rst $38                                       ; $72f2: $ff
    rst $38                                       ; $72f3: $ff
    nop                                           ; $72f4: $00
    nop                                           ; $72f5: $00
    rrca                                          ; $72f6: $0f
    rst $38                                       ; $72f7: $ff
    rst $38                                       ; $72f8: $ff
    rst $38                                       ; $72f9: $ff
    rst $38                                       ; $72fa: $ff
    nop                                           ; $72fb: $00
    rst $38                                       ; $72fc: $ff
    rst $38                                       ; $72fd: $ff
    nop                                           ; $72fe: $00
    rrca                                          ; $72ff: $0f
    rst $38                                       ; $7300: $ff
    rst $38                                       ; $7301: $ff
    ldh a, [rIF]                                  ; $7302: $f0 $0f
    pop af                                        ; $7304: $f1
    rra                                           ; $7305: $1f
    ldh a, [rIE]                                  ; $7306: $f0 $ff
    rst $38                                       ; $7308: $ff
    rst $38                                       ; $7309: $ff
    ldh a, [rIE]                                  ; $730a: $f0 $ff
    rra                                           ; $730c: $1f
    pop af                                        ; $730d: $f1
    ldh a, [rIF]                                  ; $730e: $f0 $0f
    rst $38                                       ; $7310: $ff
    rst $38                                       ; $7311: $ff
    ldh a, [rIF]                                  ; $7312: $f0 $0f
    rst $38                                       ; $7314: $ff
    pop af                                        ; $7315: $f1
    rra                                           ; $7316: $1f
    nop                                           ; $7317: $00
    rst $38                                       ; $7318: $ff
    rst $38                                       ; $7319: $ff
    ldh a, [rP1]                                  ; $731a: $f0 $00
    rst $38                                       ; $731c: $ff
    pop af                                        ; $731d: $f1
    rst $38                                       ; $731e: $ff
    nop                                           ; $731f: $00
    rst $38                                       ; $7320: $ff
    rst $38                                       ; $7321: $ff
    rst $38                                       ; $7322: $ff
    rrca                                          ; $7323: $0f
    rst $38                                       ; $7324: $ff
    rst $38                                       ; $7325: $ff
    ldh a, [rIE]                                  ; $7326: $f0 $ff
    rst $38                                       ; $7328: $ff
    rst $38                                       ; $7329: $ff
    rst $38                                       ; $732a: $ff
    rrca                                          ; $732b: $0f
    rra                                           ; $732c: $1f
    pop af                                        ; $732d: $f1
    ldh a, [rIF]                                  ; $732e: $f0 $0f
    rst $38                                       ; $7330: $ff
    rst $38                                       ; $7331: $ff
    ldh a, [rP1]                                  ; $7332: $f0 $00
    rst $38                                       ; $7334: $ff
    rst $38                                       ; $7335: $ff
    ldh a, [rIE]                                  ; $7336: $f0 $ff
    rst $38                                       ; $7338: $ff
    rst $38                                       ; $7339: $ff
    rst $38                                       ; $733a: $ff
    ldh a, [rIE]                                  ; $733b: $f0 $ff
    rst $38                                       ; $733d: $ff
    ldh a, [rIE]                                  ; $733e: $f0 $ff
    rst $38                                       ; $7340: $ff
    rst $38                                       ; $7341: $ff
    rst $38                                       ; $7342: $ff
    nop                                           ; $7343: $00
    rst $38                                       ; $7344: $ff
    rra                                           ; $7345: $1f
    rrca                                          ; $7346: $0f
    rst $38                                       ; $7347: $ff
    rst $38                                       ; $7348: $ff
    rst $38                                       ; $7349: $ff
    rst $38                                       ; $734a: $ff
    ldh a, [rIF]                                  ; $734b: $f0 $0f
    ldh a, [rIF]                                  ; $734d: $f0 $0f
    rst $38                                       ; $734f: $ff
    rst $38                                       ; $7350: $ff
    rst $38                                       ; $7351: $ff
    rst $38                                       ; $7352: $ff
    rst $38                                       ; $7353: $ff
    nop                                           ; $7354: $00
    nop                                           ; $7355: $00
    rrca                                          ; $7356: $0f
    rst $38                                       ; $7357: $ff
    rst $38                                       ; $7358: $ff
    rst $38                                       ; $7359: $ff
    rst $38                                       ; $735a: $ff
    rst $38                                       ; $735b: $ff
    ldh a, [rIE]                                  ; $735c: $f0 $ff
    rst $38                                       ; $735e: $ff
    rst $38                                       ; $735f: $ff
    rst $38                                       ; $7360: $ff
    jp nz, Jump_045_5857                          ; $7361: $c2 $57 $58

    rst $38                                       ; $7364: $ff
    ld [bc], a                                    ; $7365: $02
    nop                                           ; $7366: $00
    rst $38                                       ; $7367: $ff
    rrca                                          ; $7368: $0f
    rst $38                                       ; $7369: $ff
    rst $38                                       ; $736a: $ff
    rst $38                                       ; $736b: $ff
    rst $38                                       ; $736c: $ff
    rst $38                                       ; $736d: $ff
    rrca                                          ; $736e: $0f
    rst $38                                       ; $736f: $ff
    ldh a, [rIE]                                  ; $7370: $f0 $ff
    rst $38                                       ; $7372: $ff
    rst $38                                       ; $7373: $ff
    rst $38                                       ; $7374: $ff
    rst $38                                       ; $7375: $ff
    rrca                                          ; $7376: $0f
    rst $38                                       ; $7377: $ff
    ldh a, [rIF]                                  ; $7378: $f0 $0f
    rst $38                                       ; $737a: $ff
    rst $38                                       ; $737b: $ff
    rst $38                                       ; $737c: $ff
    rst $38                                       ; $737d: $ff
    rrca                                          ; $737e: $0f
    di                                            ; $737f: $f3
    rst $38                                       ; $7380: $ff
    nop                                           ; $7381: $00
    rst $38                                       ; $7382: $ff
    rst $38                                       ; $7383: $ff
    rst $38                                       ; $7384: $ff
    rst $38                                       ; $7385: $ff
    nop                                           ; $7386: $00
    rst $38                                       ; $7387: $ff
    rst $38                                       ; $7388: $ff
    rst $38                                       ; $7389: $ff
    nop                                           ; $738a: $00
    rrca                                          ; $738b: $0f
    rst $38                                       ; $738c: $ff
    rst $38                                       ; $738d: $ff
    ldh a, [rIE]                                  ; $738e: $f0 $ff
    di                                            ; $7390: $f3
    rst $38                                       ; $7391: $ff
    rst $38                                       ; $7392: $ff
    rrca                                          ; $7393: $0f
    rst $38                                       ; $7394: $ff
    rst $38                                       ; $7395: $ff
    ldh a, [rIF]                                  ; $7396: $f0 $0f
    rst $38                                       ; $7398: $ff
    di                                            ; $7399: $f3
    rst $38                                       ; $739a: $ff
    ldh a, [rIF]                                  ; $739b: $f0 $0f
    rst $38                                       ; $739d: $ff
    rst $38                                       ; $739e: $ff
    nop                                           ; $739f: $00
    rst $38                                       ; $73a0: $ff
    rst $38                                       ; $73a1: $ff
    inc sp                                        ; $73a2: $33
    rst $38                                       ; $73a3: $ff
    nop                                           ; $73a4: $00
    rst $38                                       ; $73a5: $ff
    rst $38                                       ; $73a6: $ff
    rst $38                                       ; $73a7: $ff
    ldh a, [rIE]                                  ; $73a8: $f0 $ff
    rst $38                                       ; $73aa: $ff
    rst $38                                       ; $73ab: $ff
    rrca                                          ; $73ac: $0f
    rst $38                                       ; $73ad: $ff
    rst $38                                       ; $73ae: $ff
    rst $38                                       ; $73af: $ff
    rst $38                                       ; $73b0: $ff
    rrca                                          ; $73b1: $0f
    rst $38                                       ; $73b2: $ff
    rst $38                                       ; $73b3: $ff
    nop                                           ; $73b4: $00
    rst $38                                       ; $73b5: $ff
    rst $38                                       ; $73b6: $ff
    rst $38                                       ; $73b7: $ff
    rst $38                                       ; $73b8: $ff
    nop                                           ; $73b9: $00
    rst $38                                       ; $73ba: $ff
    ccf                                           ; $73bb: $3f
    ldh a, [rIF]                                  ; $73bc: $f0 $0f
    rst $38                                       ; $73be: $ff
    rst $38                                       ; $73bf: $ff
    rst $38                                       ; $73c0: $ff
    ldh a, [rIE]                                  ; $73c1: $f0 $ff
    ccf                                           ; $73c3: $3f
    rst $38                                       ; $73c4: $ff
    rst $38                                       ; $73c5: $ff
    rst $38                                       ; $73c6: $ff
    rst $38                                       ; $73c7: $ff
    rst $38                                       ; $73c8: $ff
    ldh a, [rIF]                                  ; $73c9: $f0 $0f
    rst $38                                       ; $73cb: $ff
    rra                                           ; $73cc: $1f
    ldh a, [rIE]                                  ; $73cd: $f0 $ff
    rst $38                                       ; $73cf: $ff
    rst $38                                       ; $73d0: $ff
    rst $38                                       ; $73d1: $ff
    nop                                           ; $73d2: $00
    rst $38                                       ; $73d3: $ff
    rst $38                                       ; $73d4: $ff
    ldh a, [rIE]                                  ; $73d5: $f0 $ff
    rst $38                                       ; $73d7: $ff
    rst $38                                       ; $73d8: $ff
    rst $38                                       ; $73d9: $ff
    ldh a, [rIE]                                  ; $73da: $f0 $ff
    rst $38                                       ; $73dc: $ff
    ldh a, [rIE]                                  ; $73dd: $f0 $ff
    rst $38                                       ; $73df: $ff
    rst $38                                       ; $73e0: $ff
    rst $38                                       ; $73e1: $ff
    ldh a, [rIF]                                  ; $73e2: $f0 $0f
    rst $38                                       ; $73e4: $ff
    nop                                           ; $73e5: $00
    ret z                                         ; $73e6: $c8

    ld [de], a                                    ; $73e7: $12
    inc de                                        ; $73e8: $13
    inc h                                         ; $73e9: $24
    ld [hl], a                                    ; $73ea: $77
    adc b                                         ; $73eb: $88
    rst $38                                       ; $73ec: $ff
    dec b                                         ; $73ed: $05
    rst $38                                       ; $73ee: $ff
    rst $38                                       ; $73ef: $ff
    rst $38                                       ; $73f0: $ff
    nop                                           ; $73f1: $00
    nop                                           ; $73f2: $00
    rrca                                          ; $73f3: $0f
    rst $38                                       ; $73f4: $ff
    rst $38                                       ; $73f5: $ff
    rst $38                                       ; $73f6: $ff
    rst $38                                       ; $73f7: $ff
    ldh a, [rIE]                                  ; $73f8: $f0 $ff
    rst $38                                       ; $73fa: $ff
    nop                                           ; $73fb: $00
    rst $38                                       ; $73fc: $ff
    rst $38                                       ; $73fd: $ff
    rst $38                                       ; $73fe: $ff
    rst $38                                       ; $73ff: $ff
    rrca                                          ; $7400: $0f
    pop af                                        ; $7401: $f1
    rra                                           ; $7402: $1f
    ldh a, [rIE]                                  ; $7403: $f0 $ff
    rst $38                                       ; $7405: $ff
    rst $38                                       ; $7406: $ff
    ldh a, [rIF]                                  ; $7407: $f0 $0f
    rst $38                                       ; $7409: $ff
    pop af                                        ; $740a: $f1
    ldh a, [rIF]                                  ; $740b: $f0 $0f
    rst $38                                       ; $740d: $ff
    rst $38                                       ; $740e: $ff
    ldh a, [rIF]                                  ; $740f: $f0 $0f
    rst $38                                       ; $7411: $ff
    rst $38                                       ; $7412: $ff
    nop                                           ; $7413: $00
    rst $38                                       ; $7414: $ff
    rst $38                                       ; $7415: $ff
    rst $38                                       ; $7416: $ff
    ldh a, [rIF]                                  ; $7417: $f0 $0f
    rst $38                                       ; $7419: $ff
    rst $38                                       ; $741a: $ff
    nop                                           ; $741b: $00
    rst $38                                       ; $741c: $ff
    rst $38                                       ; $741d: $ff
    rst $38                                       ; $741e: $ff
    ldh a, [rIF]                                  ; $741f: $f0 $0f
    rst $38                                       ; $7421: $ff
    rst $38                                       ; $7422: $ff
    rrca                                          ; $7423: $0f
    rst $38                                       ; $7424: $ff
    rst $38                                       ; $7425: $ff
    rst $38                                       ; $7426: $ff
    ldh a, [$f1]                                  ; $7427: $f0 $f1
    ccf                                           ; $7429: $3f
    rra                                           ; $742a: $1f
    nop                                           ; $742b: $00
    rst $38                                       ; $742c: $ff
    rst $38                                       ; $742d: $ff
    rst $38                                       ; $742e: $ff
    ldh a, [rIE]                                  ; $742f: $f0 $ff
    rst $38                                       ; $7431: $ff
    rst $38                                       ; $7432: $ff
    nop                                           ; $7433: $00
    rst $38                                       ; $7434: $ff
    rst $38                                       ; $7435: $ff
    rst $38                                       ; $7436: $ff
    ldh a, [rIF]                                  ; $7437: $f0 $0f
    rst $38                                       ; $7439: $ff
    ccf                                           ; $743a: $3f
    ldh a, [rIF]                                  ; $743b: $f0 $0f
    rst $38                                       ; $743d: $ff
    rst $38                                       ; $743e: $ff
    ldh a, [rIF]                                  ; $743f: $f0 $0f
    rra                                           ; $7441: $1f
    rst $38                                       ; $7442: $ff
    ldh a, [rIE]                                  ; $7443: $f0 $ff
    rst $38                                       ; $7445: $ff
    rst $38                                       ; $7446: $ff
    ldh a, [rIF]                                  ; $7447: $f0 $0f
    rra                                           ; $7449: $1f
    pop af                                        ; $744a: $f1
    ldh a, [rIE]                                  ; $744b: $f0 $ff
    rst $38                                       ; $744d: $ff
    rst $38                                       ; $744e: $ff
    rst $38                                       ; $744f: $ff
    rrca                                          ; $7450: $0f
    rra                                           ; $7451: $1f
    pop af                                        ; $7452: $f1
    ldh a, [rIF]                                  ; $7453: $f0 $0f
    rst $38                                       ; $7455: $ff
    rst $38                                       ; $7456: $ff
    rst $38                                       ; $7457: $ff
    ldh a, [rIE]                                  ; $7458: $f0 $ff
    rst $38                                       ; $745a: $ff
    ldh a, [rIE]                                  ; $745b: $f0 $ff
    rst $38                                       ; $745d: $ff
    rst $38                                       ; $745e: $ff
    rst $38                                       ; $745f: $ff
    ldh a, [rIE]                                  ; $7460: $f0 $ff
    rst $38                                       ; $7462: $ff
    nop                                           ; $7463: $00
    rst $38                                       ; $7464: $ff
    rst $38                                       ; $7465: $ff
    rst $38                                       ; $7466: $ff
    rst $38                                       ; $7467: $ff
    nop                                           ; $7468: $00
    rst $38                                       ; $7469: $ff
    rst $38                                       ; $746a: $ff
    rrca                                          ; $746b: $0f
    rst $38                                       ; $746c: $ff
    rst $38                                       ; $746d: $ff
    ret nz                                        ; $746e: $c0

    ld b, a                                       ; $746f: $47
    ld c, b                                       ; $7470: $48
    rst $38                                       ; $7471: $ff
    ld [bc], a                                    ; $7472: $02
    rst $38                                       ; $7473: $ff
    rst $38                                       ; $7474: $ff
    rst $38                                       ; $7475: $ff
    rst $38                                       ; $7476: $ff
    rst $38                                       ; $7477: $ff
    rst $38                                       ; $7478: $ff
    rst $38                                       ; $7479: $ff
    rst $38                                       ; $747a: $ff
    rst $38                                       ; $747b: $ff
    ldh a, [rP1]                                  ; $747c: $f0 $00
    nop                                           ; $747e: $00
    nop                                           ; $747f: $00
    rrca                                          ; $7480: $0f
    rst $38                                       ; $7481: $ff
    rst $38                                       ; $7482: $ff
    rst $38                                       ; $7483: $ff
    ldh a, [rIE]                                  ; $7484: $f0 $ff
    rst $38                                       ; $7486: $ff
    ldh a, [rIF]                                  ; $7487: $f0 $0f
    rst $38                                       ; $7489: $ff
    rst $38                                       ; $748a: $ff
    rst $38                                       ; $748b: $ff
    ldh a, [rIE]                                  ; $748c: $f0 $ff
    rst $38                                       ; $748e: $ff
    rra                                           ; $748f: $1f
    ldh a, [rIF]                                  ; $7490: $f0 $0f
    rst $38                                       ; $7492: $ff
    rst $38                                       ; $7493: $ff
    ldh a, [rIE]                                  ; $7494: $f0 $ff
    rst $38                                       ; $7496: $ff
    rst $38                                       ; $7497: $ff
    ldh a, [rIE]                                  ; $7498: $f0 $ff
    rst $38                                       ; $749a: $ff
    rst $38                                       ; $749b: $ff
    ldh a, [rIE]                                  ; $749c: $f0 $ff
    rst $38                                       ; $749e: $ff
    rst $38                                       ; $749f: $ff
    ldh a, [rIF]                                  ; $74a0: $f0 $0f
    rst $38                                       ; $74a2: $ff
    rst $38                                       ; $74a3: $ff
    ldh a, [rIE]                                  ; $74a4: $f0 $ff
    rst $38                                       ; $74a6: $ff
    rst $38                                       ; $74a7: $ff
    rst $38                                       ; $74a8: $ff
    rrca                                          ; $74a9: $0f
    rst $38                                       ; $74aa: $ff
    rst $38                                       ; $74ab: $ff
    ldh a, [rIE]                                  ; $74ac: $f0 $ff
    cpl                                           ; $74ae: $2f
    ccf                                           ; $74af: $3f
    rra                                           ; $74b0: $1f
    nop                                           ; $74b1: $00
    rst $38                                       ; $74b2: $ff
    rst $38                                       ; $74b3: $ff
    ldh a, [rIE]                                  ; $74b4: $f0 $ff
    rst $38                                       ; $74b6: $ff
    ccf                                           ; $74b7: $3f
    rra                                           ; $74b8: $1f
    rrca                                          ; $74b9: $0f
    rst $38                                       ; $74ba: $ff
    rst $38                                       ; $74bb: $ff
    ldh a, [rIF]                                  ; $74bc: $f0 $0f
    rst $38                                       ; $74be: $ff
    ccf                                           ; $74bf: $3f
    rra                                           ; $74c0: $1f
    rrca                                          ; $74c1: $0f
    rst $38                                       ; $74c2: $ff
    rst $38                                       ; $74c3: $ff
    ldh a, [rIF]                                  ; $74c4: $f0 $0f
    rra                                           ; $74c6: $1f
    ccf                                           ; $74c7: $3f
    ldh a, [rP1]                                  ; $74c8: $f0 $00
    rst $38                                       ; $74ca: $ff
    rst $38                                       ; $74cb: $ff
    ldh a, [rIF]                                  ; $74cc: $f0 $0f
    rra                                           ; $74ce: $1f
    pop af                                        ; $74cf: $f1
    ldh a, [rIE]                                  ; $74d0: $f0 $ff
    rst $38                                       ; $74d2: $ff
    rst $38                                       ; $74d3: $ff
    rst $38                                       ; $74d4: $ff
    rrca                                          ; $74d5: $0f
    di                                            ; $74d6: $f3
    ccf                                           ; $74d7: $3f
    ldh a, [rIF]                                  ; $74d8: $f0 $0f
    rst $38                                       ; $74da: $ff
    rst $38                                       ; $74db: $ff
    ldh a, [rIF]                                  ; $74dc: $f0 $0f
    rst $38                                       ; $74de: $ff
    rst $38                                       ; $74df: $ff
    ldh a, [rIE]                                  ; $74e0: $f0 $ff
    rst $38                                       ; $74e2: $ff
    rst $38                                       ; $74e3: $ff
    rst $38                                       ; $74e4: $ff
    nop                                           ; $74e5: $00
    rst $38                                       ; $74e6: $ff
    rst $38                                       ; $74e7: $ff
    nop                                           ; $74e8: $00
    rst $38                                       ; $74e9: $ff
    rst $38                                       ; $74ea: $ff
    rst $38                                       ; $74eb: $ff
    rst $38                                       ; $74ec: $ff
    nop                                           ; $74ed: $00
    nop                                           ; $74ee: $00
    nop                                           ; $74ef: $00
    rrca                                          ; $74f0: $0f
    rst $38                                       ; $74f1: $ff
    rst $38                                       ; $74f2: $ff
    cp h                                          ; $74f3: $bc
    inc [hl]                                      ; $74f4: $34
    dec [hl]                                      ; $74f5: $35
    ld [hl], $37                                  ; $74f6: $36 $37
    rst $38                                       ; $74f8: $ff
    inc b                                         ; $74f9: $04
    rst $38                                       ; $74fa: $ff
    rst $38                                       ; $74fb: $ff
    rst $38                                       ; $74fc: $ff
    nop                                           ; $74fd: $00
    rst $38                                       ; $74fe: $ff
    ldh a, [rIF]                                  ; $74ff: $f0 $0f
    rst $38                                       ; $7501: $ff
    rst $38                                       ; $7502: $ff
    ldh a, [rP1]                                  ; $7503: $f0 $00
    rst $38                                       ; $7505: $ff
    rst $38                                       ; $7506: $ff
    ldh a, [rP1]                                  ; $7507: $f0 $00
    rst $38                                       ; $7509: $ff
    rst $38                                       ; $750a: $ff
    rst $38                                       ; $750b: $ff
    rrca                                          ; $750c: $0f
    rst $38                                       ; $750d: $ff
    rst $38                                       ; $750e: $ff
    rst $38                                       ; $750f: $ff
    rrca                                          ; $7510: $0f
    rst $38                                       ; $7511: $ff
    rst $38                                       ; $7512: $ff
    ldh a, [rIF]                                  ; $7513: $f0 $0f
    rst $38                                       ; $7515: $ff
    rst $38                                       ; $7516: $ff
    ldh a, [rIF]                                  ; $7517: $f0 $0f
    rst $38                                       ; $7519: $ff
    rst $38                                       ; $751a: $ff
    ldh a, [rIF]                                  ; $751b: $f0 $0f
    di                                            ; $751d: $f3
    rst $38                                       ; $751e: $ff
    ldh a, [rIE]                                  ; $751f: $f0 $ff
    rst $38                                       ; $7521: $ff
    rst $38                                       ; $7522: $ff
    ldh a, [rIE]                                  ; $7523: $f0 $ff
    rst $38                                       ; $7525: $ff
    rst $38                                       ; $7526: $ff
    nop                                           ; $7527: $00
    rst $38                                       ; $7528: $ff
    rst $38                                       ; $7529: $ff
    rst $38                                       ; $752a: $ff
    ldh a, [rIE]                                  ; $752b: $f0 $ff
    rst $38                                       ; $752d: $ff
    rst $38                                       ; $752e: $ff
    rrca                                          ; $752f: $0f
    rst $38                                       ; $7530: $ff
    rst $38                                       ; $7531: $ff
    rst $38                                       ; $7532: $ff
    ldh a, [rIE]                                  ; $7533: $f0 $ff
    rst $38                                       ; $7535: $ff
    rst $38                                       ; $7536: $ff
    rrca                                          ; $7537: $0f
    rst $38                                       ; $7538: $ff
    rst $38                                       ; $7539: $ff
    rst $38                                       ; $753a: $ff
    ldh a, [rIE]                                  ; $753b: $f0 $ff
    rst $38                                       ; $753d: $ff
    rst $38                                       ; $753e: $ff
    rrca                                          ; $753f: $0f
    rst $38                                       ; $7540: $ff
    rst $38                                       ; $7541: $ff
    rst $38                                       ; $7542: $ff
    ldh a, [rIE]                                  ; $7543: $f0 $ff
    ccf                                           ; $7545: $3f
    rst $38                                       ; $7546: $ff
    nop                                           ; $7547: $00
    rrca                                          ; $7548: $0f
    rst $38                                       ; $7549: $ff
    rst $38                                       ; $754a: $ff
    ldh a, [rIE]                                  ; $754b: $f0 $ff
    inc sp                                        ; $754d: $33
    pop af                                        ; $754e: $f1
    ldh a, [rIE]                                  ; $754f: $f0 $ff
    rst $38                                       ; $7551: $ff
    rst $38                                       ; $7552: $ff
    ldh a, [rIE]                                  ; $7553: $f0 $ff
    di                                            ; $7555: $f3
    pop af                                        ; $7556: $f1
    ldh a, [rP1]                                  ; $7557: $f0 $00
    rst $38                                       ; $7559: $ff
    rst $38                                       ; $755a: $ff
    ldh a, [rSB]                                  ; $755b: $f0 $01
    rst $38                                       ; $755d: $ff
    ccf                                           ; $755e: $3f
    rst $38                                       ; $755f: $ff
    rrca                                          ; $7560: $0f
    rst $38                                       ; $7561: $ff
    rst $38                                       ; $7562: $ff
    ldh a, [rIF]                                  ; $7563: $f0 $0f
    pop af                                        ; $7565: $f1
    rst $38                                       ; $7566: $ff
    rst $38                                       ; $7567: $ff
    nop                                           ; $7568: $00
    rst $38                                       ; $7569: $ff
    rst $38                                       ; $756a: $ff
    ldh a, [rP1]                                  ; $756b: $f0 $00
    rst $38                                       ; $756d: $ff
    di                                            ; $756e: $f3
    rst $38                                       ; $756f: $ff
    rrca                                          ; $7570: $0f
    rst $38                                       ; $7571: $ff
    rst $38                                       ; $7572: $ff
    rst $38                                       ; $7573: $ff
    rst $38                                       ; $7574: $ff
    nop                                           ; $7575: $00
    rst $38                                       ; $7576: $ff
    ldh a, [rIF]                                  ; $7577: $f0 $0f
    rst $38                                       ; $7579: $ff
    ret nz                                        ; $757a: $c0

    jr jr_045_7596                                ; $757b: $18 $19

    ld a, [hl+]                                   ; $757d: $2a
    add hl, sp                                    ; $757e: $39
    ld b, l                                       ; $757f: $45
    ld h, l                                       ; $7580: $65
    ld h, [hl]                                    ; $7581: $66
    ld h, a                                       ; $7582: $67
    ld l, b                                       ; $7583: $68
    add l                                         ; $7584: $85
    add a                                         ; $7585: $87
    adc b                                         ; $7586: $88
    rst $38                                       ; $7587: $ff
    inc c                                         ; $7588: $0c
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

jr_045_7596:
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
    nop                                           ; $75a3: $00
    rrca                                          ; $75a4: $0f
    ldh a, [rIF]                                  ; $75a5: $f0 $0f
    rst $38                                       ; $75a7: $ff
    rst $38                                       ; $75a8: $ff
    rst $38                                       ; $75a9: $ff
    ldh a, [rIF]                                  ; $75aa: $f0 $0f
    rst $38                                       ; $75ac: $ff
    rst $38                                       ; $75ad: $ff
    nop                                           ; $75ae: $00
    rst $38                                       ; $75af: $ff
    rst $38                                       ; $75b0: $ff
    rst $38                                       ; $75b1: $ff
    rst $38                                       ; $75b2: $ff
    rrca                                          ; $75b3: $0f
    rst $38                                       ; $75b4: $ff
    rst $38                                       ; $75b5: $ff
    rrca                                          ; $75b6: $0f
    rst $38                                       ; $75b7: $ff
    rst $38                                       ; $75b8: $ff
    rst $38                                       ; $75b9: $ff
    rst $38                                       ; $75ba: $ff
    rrca                                          ; $75bb: $0f
    rst $38                                       ; $75bc: $ff
    rst $38                                       ; $75bd: $ff
    rrca                                          ; $75be: $0f
    rst $38                                       ; $75bf: $ff
    rst $38                                       ; $75c0: $ff
    rst $38                                       ; $75c1: $ff
    ldh a, [rP1]                                  ; $75c2: $f0 $00
    rst $38                                       ; $75c4: $ff
    pop af                                        ; $75c5: $f1
    ldh a, [rIE]                                  ; $75c6: $f0 $ff
    rst $38                                       ; $75c8: $ff
    rst $38                                       ; $75c9: $ff
    rst $38                                       ; $75ca: $ff
    ldh a, [rIE]                                  ; $75cb: $f0 $ff
    rst $38                                       ; $75cd: $ff
    rrca                                          ; $75ce: $0f
    rst $38                                       ; $75cf: $ff
    rst $38                                       ; $75d0: $ff
    rst $38                                       ; $75d1: $ff
    rst $38                                       ; $75d2: $ff
    nop                                           ; $75d3: $00
    rst $38                                       ; $75d4: $ff
    rst $38                                       ; $75d5: $ff
    rrca                                          ; $75d6: $0f
    rst $38                                       ; $75d7: $ff
    rst $38                                       ; $75d8: $ff
    rst $38                                       ; $75d9: $ff
    rst $38                                       ; $75da: $ff
    ldh a, [rIE]                                  ; $75db: $f0 $ff
    rst $38                                       ; $75dd: $ff
    nop                                           ; $75de: $00
    rst $38                                       ; $75df: $ff
    rst $38                                       ; $75e0: $ff
    rst $38                                       ; $75e1: $ff
    rst $38                                       ; $75e2: $ff
    ldh a, [rIE]                                  ; $75e3: $f0 $ff
    ldh a, [rIF]                                  ; $75e5: $f0 $0f
    rst $38                                       ; $75e7: $ff
    rst $38                                       ; $75e8: $ff
    rst $38                                       ; $75e9: $ff
    rst $38                                       ; $75ea: $ff
    rst $38                                       ; $75eb: $ff
    nop                                           ; $75ec: $00
    nop                                           ; $75ed: $00
    rrca                                          ; $75ee: $0f
    rst $38                                       ; $75ef: $ff
    rst $38                                       ; $75f0: $ff
    rst $38                                       ; $75f1: $ff
    rst $38                                       ; $75f2: $ff
    ldh a, [rP1]                                  ; $75f3: $f0 $00
    nop                                           ; $75f5: $00
    rrca                                          ; $75f6: $0f
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
    ret c                                         ; $7609: $d8

    ld d, a                                       ; $760a: $57
    ld e, b                                       ; $760b: $58
    rst $38                                       ; $760c: $ff
    ld [bc], a                                    ; $760d: $02
    rst $38                                       ; $760e: $ff
    rst $38                                       ; $760f: $ff
    rst $38                                       ; $7610: $ff
    rrca                                          ; $7611: $0f
    rst $38                                       ; $7612: $ff
    nop                                           ; $7613: $00
    rrca                                          ; $7614: $0f
    rst $38                                       ; $7615: $ff
    rst $38                                       ; $7616: $ff
    rst $38                                       ; $7617: $ff
    ldh a, [rIF]                                  ; $7618: $f0 $0f
    rra                                           ; $761a: $1f
    ldh a, [rIE]                                  ; $761b: $f0 $ff
    rst $38                                       ; $761d: $ff
    rst $38                                       ; $761e: $ff
    rst $38                                       ; $761f: $ff
    rst $38                                       ; $7620: $ff
    pop af                                        ; $7621: $f1
    rst $38                                       ; $7622: $ff
    ldh a, [rIF]                                  ; $7623: $f0 $0f
    rst $38                                       ; $7625: $ff
    rst $38                                       ; $7626: $ff
    rst $38                                       ; $7627: $ff
    rrca                                          ; $7628: $0f
    pop af                                        ; $7629: $f1
    rst $38                                       ; $762a: $ff
    ldh a, [rIF]                                  ; $762b: $f0 $0f
    rst $38                                       ; $762d: $ff
    rst $38                                       ; $762e: $ff
    rst $38                                       ; $762f: $ff
    ldh a, [rIE]                                  ; $7630: $f0 $ff
    pop af                                        ; $7632: $f1
    ldh a, [rIE]                                  ; $7633: $f0 $ff
    rst $38                                       ; $7635: $ff
    rst $38                                       ; $7636: $ff
    rst $38                                       ; $7637: $ff
    ldh a, [rIE]                                  ; $7638: $f0 $ff
    ccf                                           ; $763a: $3f
    ldh a, [rIF]                                  ; $763b: $f0 $0f
    rst $38                                       ; $763d: $ff
    rst $38                                       ; $763e: $ff
    rst $38                                       ; $763f: $ff
    ldh a, [rIE]                                  ; $7640: $f0 $ff
    rst $38                                       ; $7642: $ff
    rst $38                                       ; $7643: $ff
    rrca                                          ; $7644: $0f
    rst $38                                       ; $7645: $ff
    rst $38                                       ; $7646: $ff
    rst $38                                       ; $7647: $ff
    ldh a, [rIF]                                  ; $7648: $f0 $0f
    di                                            ; $764a: $f3
    rst $38                                       ; $764b: $ff
    nop                                           ; $764c: $00
    rst $38                                       ; $764d: $ff
    rst $38                                       ; $764e: $ff
    rst $38                                       ; $764f: $ff
    rrca                                          ; $7650: $0f
    rst $38                                       ; $7651: $ff
    inc sp                                        ; $7652: $33
    ldh a, [rIF]                                  ; $7653: $f0 $0f
    rst $38                                       ; $7655: $ff
    rst $38                                       ; $7656: $ff
    rst $38                                       ; $7657: $ff
    rrca                                          ; $7658: $0f
    rra                                           ; $7659: $1f
    rst $38                                       ; $765a: $ff
    ldh a, [rIF]                                  ; $765b: $f0 $0f
    rst $38                                       ; $765d: $ff
    rst $38                                       ; $765e: $ff
    ldh a, [rP1]                                  ; $765f: $f0 $00
    rst $38                                       ; $7661: $ff
    rst $38                                       ; $7662: $ff
    nop                                           ; $7663: $00
    rst $38                                       ; $7664: $ff
    rst $38                                       ; $7665: $ff
    rst $38                                       ; $7666: $ff
    ldh a, [rIF]                                  ; $7667: $f0 $0f
    rst $38                                       ; $7669: $ff
    rst $38                                       ; $766a: $ff
    nop                                           ; $766b: $00
    rst $38                                       ; $766c: $ff
    rst $38                                       ; $766d: $ff
    rst $38                                       ; $766e: $ff
    ldh a, [rIE]                                  ; $766f: $f0 $ff
    pop af                                        ; $7671: $f1
    ldh a, [rIF]                                  ; $7672: $f0 $0f
    rst $38                                       ; $7674: $ff
    rst $38                                       ; $7675: $ff
    rst $38                                       ; $7676: $ff
    ldh a, [rIE]                                  ; $7677: $f0 $ff
    ccf                                           ; $7679: $3f
    nop                                           ; $767a: $00
    rrca                                          ; $767b: $0f
    rst $38                                       ; $767c: $ff
    rst $38                                       ; $767d: $ff
    rst $38                                       ; $767e: $ff
    ldh a, [rIF]                                  ; $767f: $f0 $0f
    rst $38                                       ; $7681: $ff
    nop                                           ; $7682: $00
    rst $38                                       ; $7683: $ff
    rst $38                                       ; $7684: $ff
    rst $38                                       ; $7685: $ff
    rst $38                                       ; $7686: $ff
    ldh a, [rIF]                                  ; $7687: $f0 $0f
    rst $38                                       ; $7689: $ff
    nop                                           ; $768a: $00
    rst $38                                       ; $768b: $ff
    rst $38                                       ; $768c: $ff
    rst $38                                       ; $768d: $ff
    ret nz                                        ; $768e: $c0

    jr z, jr_045_76ba                             ; $768f: $28 $29

    ld l, b                                       ; $7691: $68
    ld [hl], a                                    ; $7692: $77
    rst $38                                       ; $7693: $ff
    inc b                                         ; $7694: $04
    nop                                           ; $7695: $00
    nop                                           ; $7696: $00
    rst $38                                       ; $7697: $ff
    nop                                           ; $7698: $00
    nop                                           ; $7699: $00
    rrca                                          ; $769a: $0f
    rrca                                          ; $769b: $0f
    ldh a, [rP1]                                  ; $769c: $f0 $00
    nop                                           ; $769e: $00
    rst $38                                       ; $769f: $ff
    ldh a, [rP1]                                  ; $76a0: $f0 $00
    rst $38                                       ; $76a2: $ff
    rst $38                                       ; $76a3: $ff
    rst $38                                       ; $76a4: $ff
    nop                                           ; $76a5: $00
    rrca                                          ; $76a6: $0f
    rst $38                                       ; $76a7: $ff
    ldh a, [rIF]                                  ; $76a8: $f0 $0f
    ld a, [c]                                     ; $76aa: $f2
    rst $38                                       ; $76ab: $ff
    rst $38                                       ; $76ac: $ff
    nop                                           ; $76ad: $00
    rst $38                                       ; $76ae: $ff
    rst $38                                       ; $76af: $ff
    ldh a, [rIF]                                  ; $76b0: $f0 $0f
    ld [hl+], a                                   ; $76b2: $22
    rst $38                                       ; $76b3: $ff
    ldh a, [rP1]                                  ; $76b4: $f0 $00
    rst $38                                       ; $76b6: $ff
    rst $38                                       ; $76b7: $ff
    rst $38                                       ; $76b8: $ff
    rst $38                                       ; $76b9: $ff

jr_045_76ba:
    cpl                                           ; $76ba: $2f
    rst $38                                       ; $76bb: $ff
    rst $38                                       ; $76bc: $ff
    nop                                           ; $76bd: $00
    rst $38                                       ; $76be: $ff
    rst $38                                       ; $76bf: $ff
    rst $38                                       ; $76c0: $ff
    rst $38                                       ; $76c1: $ff
    ld a, [c]                                     ; $76c2: $f2
    rst $38                                       ; $76c3: $ff
    rst $38                                       ; $76c4: $ff
    nop                                           ; $76c5: $00
    rrca                                          ; $76c6: $0f
    rst $38                                       ; $76c7: $ff
    rra                                           ; $76c8: $1f
    rra                                           ; $76c9: $1f
    rst $38                                       ; $76ca: $ff
    rst $38                                       ; $76cb: $ff
    ldh a, [rP1]                                  ; $76cc: $f0 $00
    rst $38                                       ; $76ce: $ff
    rst $38                                       ; $76cf: $ff
    rst $38                                       ; $76d0: $ff
    rst $38                                       ; $76d1: $ff
    ccf                                           ; $76d2: $3f
    rst $38                                       ; $76d3: $ff
    nop                                           ; $76d4: $00
    nop                                           ; $76d5: $00
    rst $38                                       ; $76d6: $ff
    di                                            ; $76d7: $f3
    rst $38                                       ; $76d8: $ff
    rst $38                                       ; $76d9: $ff
    pop af                                        ; $76da: $f1
    ldh a, [rP1]                                  ; $76db: $f0 $00
    nop                                           ; $76dd: $00
    rst $38                                       ; $76de: $ff
    rst $38                                       ; $76df: $ff
    rst $38                                       ; $76e0: $ff
    rst $38                                       ; $76e1: $ff
    rst $38                                       ; $76e2: $ff
    rst $38                                       ; $76e3: $ff
    nop                                           ; $76e4: $00
    rrca                                          ; $76e5: $0f
    rst $38                                       ; $76e6: $ff
    rst $38                                       ; $76e7: $ff
    rst $38                                       ; $76e8: $ff
    rst $38                                       ; $76e9: $ff
    rst $38                                       ; $76ea: $ff
    pop af                                        ; $76eb: $f1
    rst $38                                       ; $76ec: $ff
    rrca                                          ; $76ed: $0f
    rst $38                                       ; $76ee: $ff
    rra                                           ; $76ef: $1f
    rst $38                                       ; $76f0: $ff
    rst $38                                       ; $76f1: $ff
    rst $38                                       ; $76f2: $ff
    rst $38                                       ; $76f3: $ff
    rst $38                                       ; $76f4: $ff
    pop af                                        ; $76f5: $f1
    ld de, $ff1f                                  ; $76f6: $11 $1f $ff
    rst $38                                       ; $76f9: $ff
    rst $38                                       ; $76fa: $ff
    rst $38                                       ; $76fb: $ff
    rst $38                                       ; $76fc: $ff
    rst $38                                       ; $76fd: $ff
    pop af                                        ; $76fe: $f1
    rst $38                                       ; $76ff: $ff
    ldh a, [rIE]                                  ; $7700: $f0 $ff
    rst $38                                       ; $7702: $ff
    di                                            ; $7703: $f3
    rst $38                                       ; $7704: $ff
    rst $38                                       ; $7705: $ff
    pop af                                        ; $7706: $f1
    rst $38                                       ; $7707: $ff
    ldh a, [rIE]                                  ; $7708: $f0 $ff
    rst $38                                       ; $770a: $ff
    rst $38                                       ; $770b: $ff
    ldh a, [rIF]                                  ; $770c: $f0 $0f
    rst $38                                       ; $770e: $ff
    rst $38                                       ; $770f: $ff
    nop                                           ; $7710: $00
    rrca                                          ; $7711: $0f
    ldh a, [rIF]                                  ; $7712: $f0 $0f
    nop                                           ; $7714: $00
    xor a                                         ; $7715: $af
    inc sp                                        ; $7716: $33
    inc [hl]                                      ; $7717: $34
    ld c, h                                       ; $7718: $4c
    ld d, a                                       ; $7719: $57
    ld l, h                                       ; $771a: $6c
    ld l, l                                       ; $771b: $6d
    add e                                         ; $771c: $83
    sbc e                                         ; $771d: $9b
    sbc h                                         ; $771e: $9c
    or l                                          ; $771f: $b5
    or [hl]                                       ; $7720: $b6
    cp c                                          ; $7721: $b9
    cp d                                          ; $7722: $ba
    cp e                                          ; $7723: $bb
    cp h                                          ; $7724: $bc
    rst $38                                       ; $7725: $ff
    rrca                                          ; $7726: $0f
    rst $38                                       ; $7727: $ff
    rst $38                                       ; $7728: $ff
    rst $38                                       ; $7729: $ff
    nop                                           ; $772a: $00
    rrca                                          ; $772b: $0f
    ld [hl+], a                                   ; $772c: $22
    ld [hl+], a                                   ; $772d: $22
    ld [hl+], a                                   ; $772e: $22
    rst $38                                       ; $772f: $ff
    rst $38                                       ; $7730: $ff
    ldh a, [rIF]                                  ; $7731: $f0 $0f
    rst $38                                       ; $7733: $ff
    ld a, [c]                                     ; $7734: $f2
    ld [hl+], a                                   ; $7735: $22
    ld [hl+], a                                   ; $7736: $22
    rst $38                                       ; $7737: $ff
    rst $38                                       ; $7738: $ff
    rrca                                          ; $7739: $0f
    pop af                                        ; $773a: $f1
    rra                                           ; $773b: $1f
    ld [hl+], a                                   ; $773c: $22
    ld [hl+], a                                   ; $773d: $22
    ld [hl+], a                                   ; $773e: $22
    rst $38                                       ; $773f: $ff
    ldh a, [rIF]                                  ; $7740: $f0 $0f
    rra                                           ; $7742: $1f
    rst $38                                       ; $7743: $ff
    ld [hl+], a                                   ; $7744: $22
    ld [hl+], a                                   ; $7745: $22
    ld [hl+], a                                   ; $7746: $22
    rst $38                                       ; $7747: $ff
    ldh a, [rIF]                                  ; $7748: $f0 $0f
    rst $38                                       ; $774a: $ff
    rst $38                                       ; $774b: $ff
    ld [hl+], a                                   ; $774c: $22
    ld [hl+], a                                   ; $774d: $22
    ld [hl+], a                                   ; $774e: $22
    rst $38                                       ; $774f: $ff
    ldh a, [rIE]                                  ; $7750: $f0 $ff
    rst $38                                       ; $7752: $ff
    ld a, [c]                                     ; $7753: $f2
    ld [hl+], a                                   ; $7754: $22
    ld [hl+], a                                   ; $7755: $22
    ld [hl+], a                                   ; $7756: $22
    rst $38                                       ; $7757: $ff
    ldh a, [rIE]                                  ; $7758: $f0 $ff
    rst $38                                       ; $775a: $ff
    rst $38                                       ; $775b: $ff
    ld [hl+], a                                   ; $775c: $22
    ld [hl+], a                                   ; $775d: $22
    ld [hl+], a                                   ; $775e: $22
    rst $38                                       ; $775f: $ff
    ldh a, [rIF]                                  ; $7760: $f0 $0f
    rst $38                                       ; $7762: $ff
    ccf                                           ; $7763: $3f
    ld a, [c]                                     ; $7764: $f2
    ld [hl+], a                                   ; $7765: $22
    ld [hl+], a                                   ; $7766: $22
    rst $38                                       ; $7767: $ff
    ldh a, [rP1]                                  ; $7768: $f0 $00
    rst $38                                       ; $776a: $ff
    rst $38                                       ; $776b: $ff
    ld a, [c]                                     ; $776c: $f2
    ld [hl+], a                                   ; $776d: $22
    ld [hl+], a                                   ; $776e: $22
    rst $38                                       ; $776f: $ff
    rst $38                                       ; $7770: $ff
    nop                                           ; $7771: $00
    rst $38                                       ; $7772: $ff
    di                                            ; $7773: $f3
    ld a, [c]                                     ; $7774: $f2
    ld [hl+], a                                   ; $7775: $22
    ld [hl+], a                                   ; $7776: $22
    rst $38                                       ; $7777: $ff
    rst $38                                       ; $7778: $ff
    ldh a, [rIE]                                  ; $7779: $f0 $ff
    ccf                                           ; $777b: $3f
    rst $38                                       ; $777c: $ff
    ld [hl+], a                                   ; $777d: $22
    ld [hl+], a                                   ; $777e: $22
    rst $38                                       ; $777f: $ff
    rst $38                                       ; $7780: $ff
    ldh a, [rIF]                                  ; $7781: $f0 $0f
    ccf                                           ; $7783: $3f
    rst $38                                       ; $7784: $ff
    ld a, [c]                                     ; $7785: $f2
    ld [hl+], a                                   ; $7786: $22
    rst $38                                       ; $7787: $ff
    rst $38                                       ; $7788: $ff
    nop                                           ; $7789: $00
    rst $38                                       ; $778a: $ff
    pop af                                        ; $778b: $f1
    ldh a, [rIE]                                  ; $778c: $f0 $ff
    ld a, [c]                                     ; $778e: $f2
    rst $38                                       ; $778f: $ff
    rst $38                                       ; $7790: $ff
    ldh a, [rIE]                                  ; $7791: $f0 $ff
    rst $38                                       ; $7793: $ff
    ldh a, [rP1]                                  ; $7794: $f0 $00
    rst $38                                       ; $7796: $ff
    rst $38                                       ; $7797: $ff
    rst $38                                       ; $7798: $ff
    ldh a, [rIE]                                  ; $7799: $f0 $ff
    rst $38                                       ; $779b: $ff
    nop                                           ; $779c: $00
    nop                                           ; $779d: $00
    nop                                           ; $779e: $00
    rst $38                                       ; $779f: $ff
    rst $38                                       ; $77a0: $ff
    nop                                           ; $77a1: $00
    rrca                                          ; $77a2: $0f
    ldh a, [rIF]                                  ; $77a3: $f0 $0f
    rst $38                                       ; $77a5: $ff
    ldh a, [$8d]                                  ; $77a6: $f0 $8d
    ld b, [hl]                                    ; $77a8: $46
    ld c, b                                       ; $77a9: $48
    ld d, l                                       ; $77aa: $55
    ld h, [hl]                                    ; $77ab: $66
    ld [hl], a                                    ; $77ac: $77
    rst $38                                       ; $77ad: $ff
    dec b                                         ; $77ae: $05
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
    nop                                           ; $77ba: $00
    rrca                                          ; $77bb: $0f
    rst $38                                       ; $77bc: $ff
    rst $38                                       ; $77bd: $ff
    rst $38                                       ; $77be: $ff
    rst $38                                       ; $77bf: $ff
    rst $38                                       ; $77c0: $ff
    rst $38                                       ; $77c1: $ff
    nop                                           ; $77c2: $00
    nop                                           ; $77c3: $00
    rrca                                          ; $77c4: $0f
    rst $38                                       ; $77c5: $ff
    rst $38                                       ; $77c6: $ff
    rst $38                                       ; $77c7: $ff
    rst $38                                       ; $77c8: $ff
    nop                                           ; $77c9: $00
    rst $38                                       ; $77ca: $ff
    rst $38                                       ; $77cb: $ff
    nop                                           ; $77cc: $00
    rrca                                          ; $77cd: $0f
    rst $38                                       ; $77ce: $ff
    rst $38                                       ; $77cf: $ff
    ldh a, [rIF]                                  ; $77d0: $f0 $0f
    pop af                                        ; $77d2: $f1
    rra                                           ; $77d3: $1f
    ldh a, [rIE]                                  ; $77d4: $f0 $ff
    rst $38                                       ; $77d6: $ff
    rst $38                                       ; $77d7: $ff
    ldh a, [rIE]                                  ; $77d8: $f0 $ff
    rra                                           ; $77da: $1f
    pop af                                        ; $77db: $f1
    ldh a, [rIF]                                  ; $77dc: $f0 $0f
    rst $38                                       ; $77de: $ff
    rst $38                                       ; $77df: $ff
    ldh a, [rIF]                                  ; $77e0: $f0 $0f
    rst $38                                       ; $77e2: $ff
    pop af                                        ; $77e3: $f1
    rra                                           ; $77e4: $1f
    nop                                           ; $77e5: $00
    rst $38                                       ; $77e6: $ff
    rst $38                                       ; $77e7: $ff
    ldh a, [rP1]                                  ; $77e8: $f0 $00
    rst $38                                       ; $77ea: $ff
    pop af                                        ; $77eb: $f1
    rst $38                                       ; $77ec: $ff
    nop                                           ; $77ed: $00
    rst $38                                       ; $77ee: $ff
    rst $38                                       ; $77ef: $ff
    rst $38                                       ; $77f0: $ff
    rrca                                          ; $77f1: $0f
    rst $38                                       ; $77f2: $ff
    rst $38                                       ; $77f3: $ff
    ldh a, [rIE]                                  ; $77f4: $f0 $ff
    rst $38                                       ; $77f6: $ff
    rst $38                                       ; $77f7: $ff
    rst $38                                       ; $77f8: $ff
    rrca                                          ; $77f9: $0f
    rra                                           ; $77fa: $1f
    pop af                                        ; $77fb: $f1
    ldh a, [rIF]                                  ; $77fc: $f0 $0f
    rst $38                                       ; $77fe: $ff
    rst $38                                       ; $77ff: $ff
    ldh a, [rP1]                                  ; $7800: $f0 $00
    rst $38                                       ; $7802: $ff
    rst $38                                       ; $7803: $ff
    ldh a, [rIE]                                  ; $7804: $f0 $ff
    rst $38                                       ; $7806: $ff
    rst $38                                       ; $7807: $ff
    rst $38                                       ; $7808: $ff
    ldh a, [rIE]                                  ; $7809: $f0 $ff
    rst $38                                       ; $780b: $ff
    ldh a, [rIE]                                  ; $780c: $f0 $ff
    rst $38                                       ; $780e: $ff
    rst $38                                       ; $780f: $ff
    rst $38                                       ; $7810: $ff
    nop                                           ; $7811: $00
    rst $38                                       ; $7812: $ff
    rra                                           ; $7813: $1f
    rrca                                          ; $7814: $0f
    rst $38                                       ; $7815: $ff
    rst $38                                       ; $7816: $ff
    rst $38                                       ; $7817: $ff
    rst $38                                       ; $7818: $ff
    ldh a, [rIF]                                  ; $7819: $f0 $0f
    ldh a, [rIF]                                  ; $781b: $f0 $0f
    rst $38                                       ; $781d: $ff
    rst $38                                       ; $781e: $ff
    rst $38                                       ; $781f: $ff
    rst $38                                       ; $7820: $ff
    rst $38                                       ; $7821: $ff
    nop                                           ; $7822: $00
    nop                                           ; $7823: $00
    rrca                                          ; $7824: $0f
    rst $38                                       ; $7825: $ff
    rst $38                                       ; $7826: $ff
    rst $38                                       ; $7827: $ff
    rst $38                                       ; $7828: $ff
    rst $38                                       ; $7829: $ff
    ldh a, [rIE]                                  ; $782a: $f0 $ff
    rst $38                                       ; $782c: $ff
    rst $38                                       ; $782d: $ff
    rst $38                                       ; $782e: $ff
    jp nz, Jump_045_5857                          ; $782f: $c2 $57 $58

    rst $38                                       ; $7832: $ff
    ld [bc], a                                    ; $7833: $02
    nop                                           ; $7834: $00
    rst $38                                       ; $7835: $ff
    rrca                                          ; $7836: $0f
    rst $38                                       ; $7837: $ff
    rst $38                                       ; $7838: $ff
    rst $38                                       ; $7839: $ff
    rst $38                                       ; $783a: $ff
    rst $38                                       ; $783b: $ff
    rrca                                          ; $783c: $0f
    rst $38                                       ; $783d: $ff
    ldh a, [rIE]                                  ; $783e: $f0 $ff
    rst $38                                       ; $7840: $ff
    rst $38                                       ; $7841: $ff
    rst $38                                       ; $7842: $ff
    rst $38                                       ; $7843: $ff
    rrca                                          ; $7844: $0f
    rst $38                                       ; $7845: $ff
    ldh a, [rIF]                                  ; $7846: $f0 $0f
    rst $38                                       ; $7848: $ff
    rst $38                                       ; $7849: $ff
    rst $38                                       ; $784a: $ff
    rst $38                                       ; $784b: $ff
    rrca                                          ; $784c: $0f
    di                                            ; $784d: $f3
    rst $38                                       ; $784e: $ff
    nop                                           ; $784f: $00
    rst $38                                       ; $7850: $ff
    rst $38                                       ; $7851: $ff
    rst $38                                       ; $7852: $ff
    rst $38                                       ; $7853: $ff
    nop                                           ; $7854: $00
    rst $38                                       ; $7855: $ff
    rst $38                                       ; $7856: $ff
    rst $38                                       ; $7857: $ff
    nop                                           ; $7858: $00
    rrca                                          ; $7859: $0f
    rst $38                                       ; $785a: $ff
    rst $38                                       ; $785b: $ff
    ldh a, [rIE]                                  ; $785c: $f0 $ff
    di                                            ; $785e: $f3
    rst $38                                       ; $785f: $ff
    rst $38                                       ; $7860: $ff
    rrca                                          ; $7861: $0f
    rst $38                                       ; $7862: $ff
    rst $38                                       ; $7863: $ff
    ldh a, [rIF]                                  ; $7864: $f0 $0f
    rst $38                                       ; $7866: $ff
    di                                            ; $7867: $f3
    rst $38                                       ; $7868: $ff
    ldh a, [rIF]                                  ; $7869: $f0 $0f
    rst $38                                       ; $786b: $ff
    rst $38                                       ; $786c: $ff
    nop                                           ; $786d: $00
    rst $38                                       ; $786e: $ff
    rst $38                                       ; $786f: $ff
    inc sp                                        ; $7870: $33
    rst $38                                       ; $7871: $ff
    nop                                           ; $7872: $00
    rst $38                                       ; $7873: $ff
    rst $38                                       ; $7874: $ff
    rst $38                                       ; $7875: $ff
    ldh a, [rIE]                                  ; $7876: $f0 $ff
    rst $38                                       ; $7878: $ff
    rst $38                                       ; $7879: $ff
    rrca                                          ; $787a: $0f
    rst $38                                       ; $787b: $ff
    rst $38                                       ; $787c: $ff
    rst $38                                       ; $787d: $ff
    rst $38                                       ; $787e: $ff
    rrca                                          ; $787f: $0f
    rst $38                                       ; $7880: $ff
    rst $38                                       ; $7881: $ff
    nop                                           ; $7882: $00
    rst $38                                       ; $7883: $ff
    rst $38                                       ; $7884: $ff
    rst $38                                       ; $7885: $ff
    rst $38                                       ; $7886: $ff
    nop                                           ; $7887: $00
    rst $38                                       ; $7888: $ff
    ccf                                           ; $7889: $3f
    ldh a, [rIF]                                  ; $788a: $f0 $0f
    rst $38                                       ; $788c: $ff
    rst $38                                       ; $788d: $ff
    rst $38                                       ; $788e: $ff
    ldh a, [rIE]                                  ; $788f: $f0 $ff
    ccf                                           ; $7891: $3f
    rst $38                                       ; $7892: $ff
    rst $38                                       ; $7893: $ff
    rst $38                                       ; $7894: $ff
    rst $38                                       ; $7895: $ff
    rst $38                                       ; $7896: $ff
    ldh a, [rIF]                                  ; $7897: $f0 $0f
    rst $38                                       ; $7899: $ff
    rra                                           ; $789a: $1f
    ldh a, [rIE]                                  ; $789b: $f0 $ff
    rst $38                                       ; $789d: $ff
    rst $38                                       ; $789e: $ff
    rst $38                                       ; $789f: $ff
    nop                                           ; $78a0: $00
    rst $38                                       ; $78a1: $ff
    rst $38                                       ; $78a2: $ff
    ldh a, [rIE]                                  ; $78a3: $f0 $ff
    rst $38                                       ; $78a5: $ff
    rst $38                                       ; $78a6: $ff
    rst $38                                       ; $78a7: $ff
    ldh a, [rIE]                                  ; $78a8: $f0 $ff
    rst $38                                       ; $78aa: $ff
    ldh a, [rIE]                                  ; $78ab: $f0 $ff
    rst $38                                       ; $78ad: $ff
    rst $38                                       ; $78ae: $ff
    rst $38                                       ; $78af: $ff
    ldh a, [rIF]                                  ; $78b0: $f0 $0f
    rst $38                                       ; $78b2: $ff
    nop                                           ; $78b3: $00
    ret z                                         ; $78b4: $c8

    ld [de], a                                    ; $78b5: $12
    inc de                                        ; $78b6: $13
    inc h                                         ; $78b7: $24
    ld [hl], a                                    ; $78b8: $77
    adc b                                         ; $78b9: $88
    rst $38                                       ; $78ba: $ff
    dec b                                         ; $78bb: $05
    rst $38                                       ; $78bc: $ff
    rst $38                                       ; $78bd: $ff
    rst $38                                       ; $78be: $ff
    nop                                           ; $78bf: $00
    nop                                           ; $78c0: $00
    rrca                                          ; $78c1: $0f
    rst $38                                       ; $78c2: $ff
    rst $38                                       ; $78c3: $ff
    rst $38                                       ; $78c4: $ff
    rst $38                                       ; $78c5: $ff
    ldh a, [rIE]                                  ; $78c6: $f0 $ff
    rst $38                                       ; $78c8: $ff
    nop                                           ; $78c9: $00
    rst $38                                       ; $78ca: $ff
    rst $38                                       ; $78cb: $ff
    rst $38                                       ; $78cc: $ff
    rst $38                                       ; $78cd: $ff
    rrca                                          ; $78ce: $0f
    pop af                                        ; $78cf: $f1
    rra                                           ; $78d0: $1f
    ldh a, [rIE]                                  ; $78d1: $f0 $ff
    rst $38                                       ; $78d3: $ff
    rst $38                                       ; $78d4: $ff
    ldh a, [rIF]                                  ; $78d5: $f0 $0f
    rst $38                                       ; $78d7: $ff
    pop af                                        ; $78d8: $f1
    ldh a, [rIF]                                  ; $78d9: $f0 $0f
    rst $38                                       ; $78db: $ff
    rst $38                                       ; $78dc: $ff
    ldh a, [rIF]                                  ; $78dd: $f0 $0f
    rst $38                                       ; $78df: $ff
    rst $38                                       ; $78e0: $ff
    nop                                           ; $78e1: $00
    rst $38                                       ; $78e2: $ff
    rst $38                                       ; $78e3: $ff
    rst $38                                       ; $78e4: $ff
    ldh a, [rIF]                                  ; $78e5: $f0 $0f
    rst $38                                       ; $78e7: $ff
    rst $38                                       ; $78e8: $ff
    nop                                           ; $78e9: $00
    rst $38                                       ; $78ea: $ff
    rst $38                                       ; $78eb: $ff
    rst $38                                       ; $78ec: $ff
    ldh a, [rIF]                                  ; $78ed: $f0 $0f
    rst $38                                       ; $78ef: $ff
    rst $38                                       ; $78f0: $ff
    rrca                                          ; $78f1: $0f
    rst $38                                       ; $78f2: $ff
    rst $38                                       ; $78f3: $ff
    rst $38                                       ; $78f4: $ff
    ldh a, [$f1]                                  ; $78f5: $f0 $f1
    ccf                                           ; $78f7: $3f
    rra                                           ; $78f8: $1f
    nop                                           ; $78f9: $00
    rst $38                                       ; $78fa: $ff
    rst $38                                       ; $78fb: $ff
    rst $38                                       ; $78fc: $ff
    ldh a, [rIE]                                  ; $78fd: $f0 $ff
    rst $38                                       ; $78ff: $ff
    rst $38                                       ; $7900: $ff
    nop                                           ; $7901: $00
    rst $38                                       ; $7902: $ff
    rst $38                                       ; $7903: $ff
    rst $38                                       ; $7904: $ff
    ldh a, [rIF]                                  ; $7905: $f0 $0f
    rst $38                                       ; $7907: $ff
    ccf                                           ; $7908: $3f
    ldh a, [rIF]                                  ; $7909: $f0 $0f
    rst $38                                       ; $790b: $ff
    rst $38                                       ; $790c: $ff
    ldh a, [rIF]                                  ; $790d: $f0 $0f
    rra                                           ; $790f: $1f
    rst $38                                       ; $7910: $ff
    ldh a, [rIE]                                  ; $7911: $f0 $ff
    rst $38                                       ; $7913: $ff
    rst $38                                       ; $7914: $ff
    ldh a, [rIF]                                  ; $7915: $f0 $0f
    rra                                           ; $7917: $1f
    pop af                                        ; $7918: $f1
    ldh a, [rIE]                                  ; $7919: $f0 $ff
    rst $38                                       ; $791b: $ff
    rst $38                                       ; $791c: $ff
    rst $38                                       ; $791d: $ff
    rrca                                          ; $791e: $0f
    rra                                           ; $791f: $1f
    pop af                                        ; $7920: $f1
    ldh a, [rIF]                                  ; $7921: $f0 $0f
    rst $38                                       ; $7923: $ff
    rst $38                                       ; $7924: $ff
    rst $38                                       ; $7925: $ff
    ldh a, [rIE]                                  ; $7926: $f0 $ff
    rst $38                                       ; $7928: $ff
    ldh a, [rIE]                                  ; $7929: $f0 $ff
    rst $38                                       ; $792b: $ff
    rst $38                                       ; $792c: $ff
    rst $38                                       ; $792d: $ff
    ldh a, [rIE]                                  ; $792e: $f0 $ff
    rst $38                                       ; $7930: $ff
    nop                                           ; $7931: $00
    rst $38                                       ; $7932: $ff
    rst $38                                       ; $7933: $ff
    rst $38                                       ; $7934: $ff
    rst $38                                       ; $7935: $ff
    nop                                           ; $7936: $00
    rst $38                                       ; $7937: $ff
    rst $38                                       ; $7938: $ff
    rrca                                          ; $7939: $0f
    rst $38                                       ; $793a: $ff
    rst $38                                       ; $793b: $ff
    ret nz                                        ; $793c: $c0

    ld b, a                                       ; $793d: $47
    ld c, b                                       ; $793e: $48
    rst $38                                       ; $793f: $ff
    ld [bc], a                                    ; $7940: $02
    rst $38                                       ; $7941: $ff
    rst $38                                       ; $7942: $ff
    rst $38                                       ; $7943: $ff
    rst $38                                       ; $7944: $ff
    rst $38                                       ; $7945: $ff
    rst $38                                       ; $7946: $ff
    rst $38                                       ; $7947: $ff
    rst $38                                       ; $7948: $ff
    rst $38                                       ; $7949: $ff
    ldh a, [rP1]                                  ; $794a: $f0 $00
    nop                                           ; $794c: $00
    nop                                           ; $794d: $00
    rrca                                          ; $794e: $0f
    rst $38                                       ; $794f: $ff
    rst $38                                       ; $7950: $ff
    rst $38                                       ; $7951: $ff
    ldh a, [rIE]                                  ; $7952: $f0 $ff
    rst $38                                       ; $7954: $ff
    ldh a, [rIF]                                  ; $7955: $f0 $0f
    rst $38                                       ; $7957: $ff
    rst $38                                       ; $7958: $ff
    rst $38                                       ; $7959: $ff
    ldh a, [rIE]                                  ; $795a: $f0 $ff
    rst $38                                       ; $795c: $ff
    rra                                           ; $795d: $1f
    ldh a, [rIF]                                  ; $795e: $f0 $0f
    rst $38                                       ; $7960: $ff
    rst $38                                       ; $7961: $ff
    ldh a, [rIE]                                  ; $7962: $f0 $ff
    rst $38                                       ; $7964: $ff
    rst $38                                       ; $7965: $ff
    ldh a, [rIE]                                  ; $7966: $f0 $ff
    rst $38                                       ; $7968: $ff
    rst $38                                       ; $7969: $ff
    ldh a, [rIE]                                  ; $796a: $f0 $ff
    rst $38                                       ; $796c: $ff
    rst $38                                       ; $796d: $ff
    ldh a, [rIF]                                  ; $796e: $f0 $0f
    rst $38                                       ; $7970: $ff
    rst $38                                       ; $7971: $ff
    ldh a, [rIE]                                  ; $7972: $f0 $ff
    rst $38                                       ; $7974: $ff
    rst $38                                       ; $7975: $ff
    rst $38                                       ; $7976: $ff
    rrca                                          ; $7977: $0f
    rst $38                                       ; $7978: $ff
    rst $38                                       ; $7979: $ff
    ldh a, [rIE]                                  ; $797a: $f0 $ff
    cpl                                           ; $797c: $2f
    ccf                                           ; $797d: $3f
    rra                                           ; $797e: $1f
    nop                                           ; $797f: $00
    rst $38                                       ; $7980: $ff
    rst $38                                       ; $7981: $ff
    ldh a, [rIE]                                  ; $7982: $f0 $ff
    rst $38                                       ; $7984: $ff
    ccf                                           ; $7985: $3f
    rra                                           ; $7986: $1f
    rrca                                          ; $7987: $0f
    rst $38                                       ; $7988: $ff
    rst $38                                       ; $7989: $ff
    ldh a, [rIF]                                  ; $798a: $f0 $0f
    rst $38                                       ; $798c: $ff
    ccf                                           ; $798d: $3f
    rra                                           ; $798e: $1f
    rrca                                          ; $798f: $0f
    rst $38                                       ; $7990: $ff
    rst $38                                       ; $7991: $ff
    ldh a, [rIF]                                  ; $7992: $f0 $0f
    rra                                           ; $7994: $1f
    ccf                                           ; $7995: $3f
    ldh a, [rP1]                                  ; $7996: $f0 $00
    rst $38                                       ; $7998: $ff
    rst $38                                       ; $7999: $ff
    ldh a, [rIF]                                  ; $799a: $f0 $0f
    rra                                           ; $799c: $1f
    pop af                                        ; $799d: $f1
    ldh a, [rIE]                                  ; $799e: $f0 $ff
    rst $38                                       ; $79a0: $ff
    rst $38                                       ; $79a1: $ff
    rst $38                                       ; $79a2: $ff
    rrca                                          ; $79a3: $0f
    di                                            ; $79a4: $f3
    ccf                                           ; $79a5: $3f
    ldh a, [rIF]                                  ; $79a6: $f0 $0f
    rst $38                                       ; $79a8: $ff
    rst $38                                       ; $79a9: $ff
    ldh a, [rIF]                                  ; $79aa: $f0 $0f
    rst $38                                       ; $79ac: $ff
    rst $38                                       ; $79ad: $ff
    ldh a, [rIE]                                  ; $79ae: $f0 $ff
    rst $38                                       ; $79b0: $ff
    rst $38                                       ; $79b1: $ff
    rst $38                                       ; $79b2: $ff
    nop                                           ; $79b3: $00
    rst $38                                       ; $79b4: $ff
    rst $38                                       ; $79b5: $ff
    nop                                           ; $79b6: $00
    rst $38                                       ; $79b7: $ff
    rst $38                                       ; $79b8: $ff
    rst $38                                       ; $79b9: $ff
    rst $38                                       ; $79ba: $ff
    nop                                           ; $79bb: $00
    nop                                           ; $79bc: $00
    nop                                           ; $79bd: $00
    rrca                                          ; $79be: $0f
    rst $38                                       ; $79bf: $ff
    rst $38                                       ; $79c0: $ff
    cp h                                          ; $79c1: $bc
    inc [hl]                                      ; $79c2: $34
    dec [hl]                                      ; $79c3: $35
    ld [hl], $37                                  ; $79c4: $36 $37
    rst $38                                       ; $79c6: $ff
    inc b                                         ; $79c7: $04
    rst $38                                       ; $79c8: $ff
    rst $38                                       ; $79c9: $ff
    rst $38                                       ; $79ca: $ff
    nop                                           ; $79cb: $00
    rst $38                                       ; $79cc: $ff
    ldh a, [rIF]                                  ; $79cd: $f0 $0f
    rst $38                                       ; $79cf: $ff
    rst $38                                       ; $79d0: $ff
    ldh a, [rP1]                                  ; $79d1: $f0 $00
    rst $38                                       ; $79d3: $ff
    rst $38                                       ; $79d4: $ff
    ldh a, [rP1]                                  ; $79d5: $f0 $00
    rst $38                                       ; $79d7: $ff
    rst $38                                       ; $79d8: $ff
    rst $38                                       ; $79d9: $ff
    rrca                                          ; $79da: $0f
    rst $38                                       ; $79db: $ff
    rst $38                                       ; $79dc: $ff
    rst $38                                       ; $79dd: $ff
    rrca                                          ; $79de: $0f
    rst $38                                       ; $79df: $ff
    rst $38                                       ; $79e0: $ff
    ldh a, [rIF]                                  ; $79e1: $f0 $0f
    rst $38                                       ; $79e3: $ff
    rst $38                                       ; $79e4: $ff
    ldh a, [rIF]                                  ; $79e5: $f0 $0f
    rst $38                                       ; $79e7: $ff
    rst $38                                       ; $79e8: $ff
    ldh a, [rIF]                                  ; $79e9: $f0 $0f
    di                                            ; $79eb: $f3
    rst $38                                       ; $79ec: $ff
    ldh a, [rIE]                                  ; $79ed: $f0 $ff
    rst $38                                       ; $79ef: $ff
    rst $38                                       ; $79f0: $ff
    ldh a, [rIE]                                  ; $79f1: $f0 $ff
    rst $38                                       ; $79f3: $ff
    rst $38                                       ; $79f4: $ff
    nop                                           ; $79f5: $00
    rst $38                                       ; $79f6: $ff
    rst $38                                       ; $79f7: $ff
    rst $38                                       ; $79f8: $ff
    ldh a, [rIE]                                  ; $79f9: $f0 $ff
    rst $38                                       ; $79fb: $ff
    rst $38                                       ; $79fc: $ff
    rrca                                          ; $79fd: $0f
    rst $38                                       ; $79fe: $ff
    rst $38                                       ; $79ff: $ff
    rst $38                                       ; $7a00: $ff
    ldh a, [rIE]                                  ; $7a01: $f0 $ff
    rst $38                                       ; $7a03: $ff
    rst $38                                       ; $7a04: $ff
    rrca                                          ; $7a05: $0f
    rst $38                                       ; $7a06: $ff
    rst $38                                       ; $7a07: $ff
    rst $38                                       ; $7a08: $ff
    ldh a, [rIE]                                  ; $7a09: $f0 $ff
    rst $38                                       ; $7a0b: $ff
    rst $38                                       ; $7a0c: $ff
    rrca                                          ; $7a0d: $0f
    rst $38                                       ; $7a0e: $ff
    rst $38                                       ; $7a0f: $ff
    rst $38                                       ; $7a10: $ff
    ldh a, [rIE]                                  ; $7a11: $f0 $ff
    ccf                                           ; $7a13: $3f
    rst $38                                       ; $7a14: $ff
    nop                                           ; $7a15: $00
    rrca                                          ; $7a16: $0f
    rst $38                                       ; $7a17: $ff
    rst $38                                       ; $7a18: $ff
    ldh a, [rIE]                                  ; $7a19: $f0 $ff
    inc sp                                        ; $7a1b: $33
    pop af                                        ; $7a1c: $f1
    ldh a, [rIE]                                  ; $7a1d: $f0 $ff
    rst $38                                       ; $7a1f: $ff
    rst $38                                       ; $7a20: $ff
    ldh a, [rIE]                                  ; $7a21: $f0 $ff
    di                                            ; $7a23: $f3
    pop af                                        ; $7a24: $f1
    ldh a, [rP1]                                  ; $7a25: $f0 $00
    rst $38                                       ; $7a27: $ff
    rst $38                                       ; $7a28: $ff
    ldh a, [rSB]                                  ; $7a29: $f0 $01
    rst $38                                       ; $7a2b: $ff
    ccf                                           ; $7a2c: $3f
    rst $38                                       ; $7a2d: $ff
    rrca                                          ; $7a2e: $0f
    rst $38                                       ; $7a2f: $ff
    rst $38                                       ; $7a30: $ff
    ldh a, [rIF]                                  ; $7a31: $f0 $0f
    pop af                                        ; $7a33: $f1
    rst $38                                       ; $7a34: $ff
    rst $38                                       ; $7a35: $ff
    nop                                           ; $7a36: $00
    rst $38                                       ; $7a37: $ff
    rst $38                                       ; $7a38: $ff
    ldh a, [rP1]                                  ; $7a39: $f0 $00
    rst $38                                       ; $7a3b: $ff
    di                                            ; $7a3c: $f3
    rst $38                                       ; $7a3d: $ff
    rrca                                          ; $7a3e: $0f
    rst $38                                       ; $7a3f: $ff
    rst $38                                       ; $7a40: $ff
    rst $38                                       ; $7a41: $ff
    rst $38                                       ; $7a42: $ff
    nop                                           ; $7a43: $00
    rst $38                                       ; $7a44: $ff
    ldh a, [rIF]                                  ; $7a45: $f0 $0f
    rst $38                                       ; $7a47: $ff
    ret nz                                        ; $7a48: $c0

    jr jr_045_7a64                                ; $7a49: $18 $19

    ld a, [hl+]                                   ; $7a4b: $2a
    add hl, sp                                    ; $7a4c: $39
    ld b, l                                       ; $7a4d: $45
    ld h, l                                       ; $7a4e: $65
    ld h, [hl]                                    ; $7a4f: $66
    ld h, a                                       ; $7a50: $67
    ld l, b                                       ; $7a51: $68
    add l                                         ; $7a52: $85
    add a                                         ; $7a53: $87
    adc b                                         ; $7a54: $88
    rst $38                                       ; $7a55: $ff
    inc c                                         ; $7a56: $0c
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

jr_045_7a64:
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
    nop                                           ; $7a71: $00
    rrca                                          ; $7a72: $0f
    ldh a, [rIF]                                  ; $7a73: $f0 $0f
    rst $38                                       ; $7a75: $ff
    rst $38                                       ; $7a76: $ff
    rst $38                                       ; $7a77: $ff
    ldh a, [rIF]                                  ; $7a78: $f0 $0f
    rst $38                                       ; $7a7a: $ff
    rst $38                                       ; $7a7b: $ff
    nop                                           ; $7a7c: $00
    rst $38                                       ; $7a7d: $ff
    rst $38                                       ; $7a7e: $ff
    rst $38                                       ; $7a7f: $ff
    rst $38                                       ; $7a80: $ff
    rrca                                          ; $7a81: $0f
    rst $38                                       ; $7a82: $ff
    rst $38                                       ; $7a83: $ff
    rrca                                          ; $7a84: $0f
    rst $38                                       ; $7a85: $ff
    rst $38                                       ; $7a86: $ff
    rst $38                                       ; $7a87: $ff
    rst $38                                       ; $7a88: $ff
    rrca                                          ; $7a89: $0f
    rst $38                                       ; $7a8a: $ff
    rst $38                                       ; $7a8b: $ff
    rrca                                          ; $7a8c: $0f
    rst $38                                       ; $7a8d: $ff
    rst $38                                       ; $7a8e: $ff
    rst $38                                       ; $7a8f: $ff
    ldh a, [rP1]                                  ; $7a90: $f0 $00
    rst $38                                       ; $7a92: $ff
    pop af                                        ; $7a93: $f1
    ldh a, [rIE]                                  ; $7a94: $f0 $ff
    rst $38                                       ; $7a96: $ff
    rst $38                                       ; $7a97: $ff
    rst $38                                       ; $7a98: $ff
    ldh a, [rIE]                                  ; $7a99: $f0 $ff
    rst $38                                       ; $7a9b: $ff
    rrca                                          ; $7a9c: $0f
    rst $38                                       ; $7a9d: $ff
    rst $38                                       ; $7a9e: $ff
    rst $38                                       ; $7a9f: $ff
    rst $38                                       ; $7aa0: $ff
    nop                                           ; $7aa1: $00
    rst $38                                       ; $7aa2: $ff
    rst $38                                       ; $7aa3: $ff
    rrca                                          ; $7aa4: $0f
    rst $38                                       ; $7aa5: $ff
    rst $38                                       ; $7aa6: $ff
    rst $38                                       ; $7aa7: $ff
    rst $38                                       ; $7aa8: $ff
    ldh a, [rIE]                                  ; $7aa9: $f0 $ff
    rst $38                                       ; $7aab: $ff
    nop                                           ; $7aac: $00
    rst $38                                       ; $7aad: $ff
    rst $38                                       ; $7aae: $ff
    rst $38                                       ; $7aaf: $ff
    rst $38                                       ; $7ab0: $ff
    ldh a, [rIE]                                  ; $7ab1: $f0 $ff
    ldh a, [rIF]                                  ; $7ab3: $f0 $0f
    rst $38                                       ; $7ab5: $ff
    rst $38                                       ; $7ab6: $ff
    rst $38                                       ; $7ab7: $ff
    rst $38                                       ; $7ab8: $ff
    rst $38                                       ; $7ab9: $ff
    nop                                           ; $7aba: $00
    nop                                           ; $7abb: $00
    rrca                                          ; $7abc: $0f
    rst $38                                       ; $7abd: $ff
    rst $38                                       ; $7abe: $ff
    rst $38                                       ; $7abf: $ff
    rst $38                                       ; $7ac0: $ff
    ldh a, [rP1]                                  ; $7ac1: $f0 $00
    nop                                           ; $7ac3: $00
    rrca                                          ; $7ac4: $0f
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
    ret c                                         ; $7ad7: $d8

    ld d, a                                       ; $7ad8: $57
    ld e, b                                       ; $7ad9: $58
    rst $38                                       ; $7ada: $ff
    ld [bc], a                                    ; $7adb: $02
    rst $38                                       ; $7adc: $ff
    rst $38                                       ; $7add: $ff
    rst $38                                       ; $7ade: $ff
    rrca                                          ; $7adf: $0f
    rst $38                                       ; $7ae0: $ff
    nop                                           ; $7ae1: $00
    rrca                                          ; $7ae2: $0f
    rst $38                                       ; $7ae3: $ff
    rst $38                                       ; $7ae4: $ff
    rst $38                                       ; $7ae5: $ff
    ldh a, [rIF]                                  ; $7ae6: $f0 $0f
    rra                                           ; $7ae8: $1f
    ldh a, [rIE]                                  ; $7ae9: $f0 $ff
    rst $38                                       ; $7aeb: $ff
    rst $38                                       ; $7aec: $ff
    rst $38                                       ; $7aed: $ff
    rst $38                                       ; $7aee: $ff
    pop af                                        ; $7aef: $f1
    rst $38                                       ; $7af0: $ff
    ldh a, [rIF]                                  ; $7af1: $f0 $0f
    rst $38                                       ; $7af3: $ff
    rst $38                                       ; $7af4: $ff
    rst $38                                       ; $7af5: $ff
    rrca                                          ; $7af6: $0f
    pop af                                        ; $7af7: $f1
    rst $38                                       ; $7af8: $ff
    ldh a, [rIF]                                  ; $7af9: $f0 $0f
    rst $38                                       ; $7afb: $ff
    rst $38                                       ; $7afc: $ff
    rst $38                                       ; $7afd: $ff
    ldh a, [rIE]                                  ; $7afe: $f0 $ff
    pop af                                        ; $7b00: $f1
    ldh a, [rIE]                                  ; $7b01: $f0 $ff
    rst $38                                       ; $7b03: $ff
    rst $38                                       ; $7b04: $ff
    rst $38                                       ; $7b05: $ff
    ldh a, [rIE]                                  ; $7b06: $f0 $ff
    ccf                                           ; $7b08: $3f
    ldh a, [rIF]                                  ; $7b09: $f0 $0f
    rst $38                                       ; $7b0b: $ff
    rst $38                                       ; $7b0c: $ff
    rst $38                                       ; $7b0d: $ff
    ldh a, [rIE]                                  ; $7b0e: $f0 $ff
    rst $38                                       ; $7b10: $ff
    rst $38                                       ; $7b11: $ff
    rrca                                          ; $7b12: $0f
    rst $38                                       ; $7b13: $ff
    rst $38                                       ; $7b14: $ff
    rst $38                                       ; $7b15: $ff
    ldh a, [rIF]                                  ; $7b16: $f0 $0f
    di                                            ; $7b18: $f3
    rst $38                                       ; $7b19: $ff
    nop                                           ; $7b1a: $00
    rst $38                                       ; $7b1b: $ff
    rst $38                                       ; $7b1c: $ff
    rst $38                                       ; $7b1d: $ff
    rrca                                          ; $7b1e: $0f
    rst $38                                       ; $7b1f: $ff
    inc sp                                        ; $7b20: $33
    ldh a, [rIF]                                  ; $7b21: $f0 $0f
    rst $38                                       ; $7b23: $ff
    rst $38                                       ; $7b24: $ff
    rst $38                                       ; $7b25: $ff
    rrca                                          ; $7b26: $0f
    rra                                           ; $7b27: $1f
    rst $38                                       ; $7b28: $ff
    ldh a, [rIF]                                  ; $7b29: $f0 $0f
    rst $38                                       ; $7b2b: $ff
    rst $38                                       ; $7b2c: $ff
    ldh a, [rP1]                                  ; $7b2d: $f0 $00
    rst $38                                       ; $7b2f: $ff
    rst $38                                       ; $7b30: $ff
    nop                                           ; $7b31: $00
    rst $38                                       ; $7b32: $ff
    rst $38                                       ; $7b33: $ff
    rst $38                                       ; $7b34: $ff
    ldh a, [rIF]                                  ; $7b35: $f0 $0f
    rst $38                                       ; $7b37: $ff
    rst $38                                       ; $7b38: $ff
    nop                                           ; $7b39: $00
    rst $38                                       ; $7b3a: $ff
    rst $38                                       ; $7b3b: $ff
    rst $38                                       ; $7b3c: $ff
    ldh a, [rIE]                                  ; $7b3d: $f0 $ff
    pop af                                        ; $7b3f: $f1
    ldh a, [rIF]                                  ; $7b40: $f0 $0f
    rst $38                                       ; $7b42: $ff
    rst $38                                       ; $7b43: $ff
    rst $38                                       ; $7b44: $ff
    ldh a, [rIE]                                  ; $7b45: $f0 $ff
    ccf                                           ; $7b47: $3f
    nop                                           ; $7b48: $00
    rrca                                          ; $7b49: $0f
    rst $38                                       ; $7b4a: $ff
    rst $38                                       ; $7b4b: $ff
    rst $38                                       ; $7b4c: $ff
    ldh a, [rIF]                                  ; $7b4d: $f0 $0f
    rst $38                                       ; $7b4f: $ff
    nop                                           ; $7b50: $00
    rst $38                                       ; $7b51: $ff
    rst $38                                       ; $7b52: $ff
    rst $38                                       ; $7b53: $ff
    rst $38                                       ; $7b54: $ff
    ldh a, [rIF]                                  ; $7b55: $f0 $0f
    rst $38                                       ; $7b57: $ff
    nop                                           ; $7b58: $00
    rst $38                                       ; $7b59: $ff
    rst $38                                       ; $7b5a: $ff
    rst $38                                       ; $7b5b: $ff
    ret nz                                        ; $7b5c: $c0

    jr z, jr_045_7b88                             ; $7b5d: $28 $29

    ld l, b                                       ; $7b5f: $68
    ld [hl], a                                    ; $7b60: $77
    rst $38                                       ; $7b61: $ff
    inc b                                         ; $7b62: $04
    push af                                       ; $7b63: $f5
    push de                                       ; $7b64: $d5
    push hl                                       ; $7b65: $e5
    ld hl, $4000                                  ; $7b66: $21 $00 $40
    ld a, [$c836]                                 ; $7b69: $fa $36 $c8
    add a                                         ; $7b6c: $87
    add l                                         ; $7b6d: $85
    ld l, a                                       ; $7b6e: $6f
    jr nc, jr_045_7b72                            ; $7b6f: $30 $01

    inc h                                         ; $7b71: $24

jr_045_7b72:
    ld a, [hl+]                                   ; $7b72: $2a
    ld h, [hl]                                    ; $7b73: $66
    ld l, a                                       ; $7b74: $6f
    ld a, [$c837]                                 ; $7b75: $fa $37 $c8
    add a                                         ; $7b78: $87
    add l                                         ; $7b79: $85
    ld l, a                                       ; $7b7a: $6f
    jr nc, jr_045_7b7e                            ; $7b7b: $30 $01

    inc h                                         ; $7b7d: $24

jr_045_7b7e:
    ld a, [hl+]                                   ; $7b7e: $2a
    ld h, [hl]                                    ; $7b7f: $66
    ld l, a                                       ; $7b80: $6f
    ld c, $0c                                     ; $7b81: $0e $0c
    call Call_000_03eb                            ; $7b83: $cd $eb $03
    pop hl                                        ; $7b86: $e1
    pop de                                        ; $7b87: $d1

jr_045_7b88:
    pop af                                        ; $7b88: $f1
    ret                                           ; $7b89: $c9


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
