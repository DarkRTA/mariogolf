; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $026", ROMX[$4000], BANK[$26]

    db $12, $40

    inc sp                                        ; $4002: $33
    ld b, b                                       ; $4003: $40
    or c                                          ; $4004: $b1
    ld b, d                                       ; $4005: $42
    ld c, e                                       ; $4006: $4b
    ld b, a                                       ; $4007: $47
    db $db                                        ; $4008: $db
    ld c, e                                       ; $4009: $4b
    ld l, e                                       ; $400a: $6b
    ld d, b                                       ; $400b: $50
    cp $5c                                        ; $400c: $fe $5c
    sbc e                                         ; $400e: $9b
    ld l, c                                       ; $400f: $69
    db $f4                                        ; $4010: $f4
    ld l, l                                       ; $4011: $6d

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
    jr nc, jr_026_4022                            ; $401f: $30 $01

    inc h                                         ; $4021: $24

jr_026_4022:
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
    ld b, d                                       ; $4038: $42
    dec sp                                        ; $4039: $3b
    ld b, b                                       ; $403a: $40
    ld d, b                                       ; $403b: $50
    ld b, b                                       ; $403c: $40
    ld d, b                                       ; $403d: $50
    ld b, c                                       ; $403e: $41
    ld d, b                                       ; $403f: $50
    ld b, c                                       ; $4040: $41
    ld d, b                                       ; $4041: $50
    ld b, c                                       ; $4042: $41
    ld d, b                                       ; $4043: $50
    ld b, c                                       ; $4044: $41
    ld d, b                                       ; $4045: $50
    ld b, c                                       ; $4046: $41
    nop                                           ; $4047: $00
    nop                                           ; $4048: $00
    nop                                           ; $4049: $00
    nop                                           ; $404a: $00
    nop                                           ; $404b: $00
    nop                                           ; $404c: $00
    nop                                           ; $404d: $00
    nop                                           ; $404e: $00
    nop                                           ; $404f: $00
    nop                                           ; $4050: $00
    nop                                           ; $4051: $00
    nop                                           ; $4052: $00
    nop                                           ; $4053: $00
    nop                                           ; $4054: $00
    nop                                           ; $4055: $00
    nop                                           ; $4056: $00
    nop                                           ; $4057: $00
    nop                                           ; $4058: $00
    nop                                           ; $4059: $00
    nop                                           ; $405a: $00
    nop                                           ; $405b: $00
    ld bc, $0301                                  ; $405c: $01 $01 $03
    inc bc                                        ; $405f: $03
    ld bc, $0001                                  ; $4060: $01 $01 $00
    nop                                           ; $4063: $00
    nop                                           ; $4064: $00
    nop                                           ; $4065: $00
    nop                                           ; $4066: $00
    nop                                           ; $4067: $00
    nop                                           ; $4068: $00
    nop                                           ; $4069: $00
    nop                                           ; $406a: $00
    nop                                           ; $406b: $00
    nop                                           ; $406c: $00
    nop                                           ; $406d: $00
    nop                                           ; $406e: $00
    nop                                           ; $406f: $00
    nop                                           ; $4070: $00
    nop                                           ; $4071: $00
    nop                                           ; $4072: $00
    nop                                           ; $4073: $00
    nop                                           ; $4074: $00
    nop                                           ; $4075: $00
    nop                                           ; $4076: $00
    nop                                           ; $4077: $00
    nop                                           ; $4078: $00
    nop                                           ; $4079: $00
    nop                                           ; $407a: $00
    nop                                           ; $407b: $00
    add b                                         ; $407c: $80
    add b                                         ; $407d: $80
    ret nz                                        ; $407e: $c0

    ret nz                                        ; $407f: $c0

    add b                                         ; $4080: $80
    add b                                         ; $4081: $80
    nop                                           ; $4082: $00
    nop                                           ; $4083: $00
    nop                                           ; $4084: $00
    nop                                           ; $4085: $00
    nop                                           ; $4086: $00
    nop                                           ; $4087: $00
    nop                                           ; $4088: $00
    nop                                           ; $4089: $00
    nop                                           ; $408a: $00
    nop                                           ; $408b: $00
    nop                                           ; $408c: $00
    nop                                           ; $408d: $00
    nop                                           ; $408e: $00
    nop                                           ; $408f: $00
    nop                                           ; $4090: $00
    nop                                           ; $4091: $00
    nop                                           ; $4092: $00
    nop                                           ; $4093: $00
    nop                                           ; $4094: $00
    nop                                           ; $4095: $00
    nop                                           ; $4096: $00
    nop                                           ; $4097: $00
    nop                                           ; $4098: $00
    nop                                           ; $4099: $00
    nop                                           ; $409a: $00
    nop                                           ; $409b: $00
    ld bc, $0301                                  ; $409c: $01 $01 $03
    inc bc                                        ; $409f: $03
    ld bc, $0001                                  ; $40a0: $01 $01 $00
    nop                                           ; $40a3: $00
    nop                                           ; $40a4: $00
    nop                                           ; $40a5: $00
    nop                                           ; $40a6: $00
    nop                                           ; $40a7: $00
    nop                                           ; $40a8: $00
    nop                                           ; $40a9: $00
    nop                                           ; $40aa: $00
    nop                                           ; $40ab: $00
    nop                                           ; $40ac: $00
    nop                                           ; $40ad: $00
    nop                                           ; $40ae: $00
    nop                                           ; $40af: $00
    nop                                           ; $40b0: $00
    nop                                           ; $40b1: $00
    nop                                           ; $40b2: $00
    nop                                           ; $40b3: $00
    nop                                           ; $40b4: $00
    nop                                           ; $40b5: $00
    nop                                           ; $40b6: $00
    nop                                           ; $40b7: $00
    nop                                           ; $40b8: $00
    nop                                           ; $40b9: $00
    nop                                           ; $40ba: $00
    nop                                           ; $40bb: $00
    add b                                         ; $40bc: $80
    add b                                         ; $40bd: $80
    ret nz                                        ; $40be: $c0

    ret nz                                        ; $40bf: $c0

    add b                                         ; $40c0: $80
    add b                                         ; $40c1: $80
    nop                                           ; $40c2: $00
    nop                                           ; $40c3: $00
    nop                                           ; $40c4: $00
    nop                                           ; $40c5: $00
    nop                                           ; $40c6: $00
    nop                                           ; $40c7: $00
    nop                                           ; $40c8: $00
    nop                                           ; $40c9: $00
    nop                                           ; $40ca: $00
    nop                                           ; $40cb: $00
    nop                                           ; $40cc: $00
    nop                                           ; $40cd: $00
    nop                                           ; $40ce: $00
    nop                                           ; $40cf: $00
    nop                                           ; $40d0: $00
    nop                                           ; $40d1: $00
    nop                                           ; $40d2: $00
    nop                                           ; $40d3: $00
    nop                                           ; $40d4: $00
    nop                                           ; $40d5: $00
    nop                                           ; $40d6: $00
    nop                                           ; $40d7: $00
    nop                                           ; $40d8: $00
    nop                                           ; $40d9: $00
    nop                                           ; $40da: $00
    nop                                           ; $40db: $00
    ld bc, $0301                                  ; $40dc: $01 $01 $03
    inc bc                                        ; $40df: $03
    ld bc, $0001                                  ; $40e0: $01 $01 $00
    nop                                           ; $40e3: $00
    nop                                           ; $40e4: $00
    nop                                           ; $40e5: $00
    nop                                           ; $40e6: $00
    nop                                           ; $40e7: $00
    nop                                           ; $40e8: $00
    nop                                           ; $40e9: $00
    nop                                           ; $40ea: $00
    nop                                           ; $40eb: $00
    nop                                           ; $40ec: $00
    nop                                           ; $40ed: $00
    nop                                           ; $40ee: $00
    nop                                           ; $40ef: $00
    nop                                           ; $40f0: $00
    nop                                           ; $40f1: $00
    nop                                           ; $40f2: $00
    nop                                           ; $40f3: $00
    nop                                           ; $40f4: $00
    nop                                           ; $40f5: $00
    nop                                           ; $40f6: $00
    nop                                           ; $40f7: $00
    nop                                           ; $40f8: $00
    nop                                           ; $40f9: $00
    nop                                           ; $40fa: $00
    nop                                           ; $40fb: $00
    add b                                         ; $40fc: $80
    add b                                         ; $40fd: $80
    ret nz                                        ; $40fe: $c0

    ret nz                                        ; $40ff: $c0

    add b                                         ; $4100: $80
    add b                                         ; $4101: $80
    nop                                           ; $4102: $00
    nop                                           ; $4103: $00
    nop                                           ; $4104: $00
    nop                                           ; $4105: $00
    nop                                           ; $4106: $00
    nop                                           ; $4107: $00
    nop                                           ; $4108: $00
    nop                                           ; $4109: $00
    nop                                           ; $410a: $00
    nop                                           ; $410b: $00
    nop                                           ; $410c: $00
    nop                                           ; $410d: $00
    nop                                           ; $410e: $00
    nop                                           ; $410f: $00
    nop                                           ; $4110: $00
    nop                                           ; $4111: $00
    nop                                           ; $4112: $00
    nop                                           ; $4113: $00
    nop                                           ; $4114: $00
    nop                                           ; $4115: $00
    nop                                           ; $4116: $00
    nop                                           ; $4117: $00
    nop                                           ; $4118: $00
    nop                                           ; $4119: $00
    nop                                           ; $411a: $00
    nop                                           ; $411b: $00
    ld bc, $0301                                  ; $411c: $01 $01 $03
    inc bc                                        ; $411f: $03
    ld bc, $0001                                  ; $4120: $01 $01 $00
    nop                                           ; $4123: $00
    nop                                           ; $4124: $00
    nop                                           ; $4125: $00
    nop                                           ; $4126: $00
    nop                                           ; $4127: $00
    nop                                           ; $4128: $00
    nop                                           ; $4129: $00
    nop                                           ; $412a: $00
    nop                                           ; $412b: $00
    nop                                           ; $412c: $00
    nop                                           ; $412d: $00
    nop                                           ; $412e: $00
    nop                                           ; $412f: $00
    nop                                           ; $4130: $00
    nop                                           ; $4131: $00
    nop                                           ; $4132: $00
    nop                                           ; $4133: $00
    nop                                           ; $4134: $00
    nop                                           ; $4135: $00
    nop                                           ; $4136: $00
    nop                                           ; $4137: $00
    nop                                           ; $4138: $00
    nop                                           ; $4139: $00
    nop                                           ; $413a: $00
    nop                                           ; $413b: $00
    add b                                         ; $413c: $80
    add b                                         ; $413d: $80
    ret nz                                        ; $413e: $c0

    ret nz                                        ; $413f: $c0

    add b                                         ; $4140: $80
    add b                                         ; $4141: $80
    nop                                           ; $4142: $00
    nop                                           ; $4143: $00
    nop                                           ; $4144: $00
    nop                                           ; $4145: $00
    nop                                           ; $4146: $00
    nop                                           ; $4147: $00
    nop                                           ; $4148: $00
    nop                                           ; $4149: $00
    nop                                           ; $414a: $00
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
    ld bc, $0301                                  ; $415c: $01 $01 $03
    inc bc                                        ; $415f: $03
    ld bc, $0001                                  ; $4160: $01 $01 $00
    nop                                           ; $4163: $00
    nop                                           ; $4164: $00
    nop                                           ; $4165: $00
    nop                                           ; $4166: $00
    nop                                           ; $4167: $00
    nop                                           ; $4168: $00
    nop                                           ; $4169: $00
    nop                                           ; $416a: $00
    nop                                           ; $416b: $00
    nop                                           ; $416c: $00
    nop                                           ; $416d: $00
    nop                                           ; $416e: $00
    nop                                           ; $416f: $00
    nop                                           ; $4170: $00
    nop                                           ; $4171: $00
    nop                                           ; $4172: $00
    nop                                           ; $4173: $00
    nop                                           ; $4174: $00
    nop                                           ; $4175: $00
    nop                                           ; $4176: $00
    nop                                           ; $4177: $00
    nop                                           ; $4178: $00
    nop                                           ; $4179: $00
    nop                                           ; $417a: $00
    nop                                           ; $417b: $00
    add b                                         ; $417c: $80
    add b                                         ; $417d: $80
    ret nz                                        ; $417e: $c0

    ret nz                                        ; $417f: $c0

    add b                                         ; $4180: $80
    add b                                         ; $4181: $80
    nop                                           ; $4182: $00
    nop                                           ; $4183: $00
    nop                                           ; $4184: $00
    nop                                           ; $4185: $00
    nop                                           ; $4186: $00
    nop                                           ; $4187: $00
    nop                                           ; $4188: $00
    nop                                           ; $4189: $00
    nop                                           ; $418a: $00
    nop                                           ; $418b: $00
    nop                                           ; $418c: $00
    nop                                           ; $418d: $00
    nop                                           ; $418e: $00
    nop                                           ; $418f: $00
    nop                                           ; $4190: $00
    nop                                           ; $4191: $00
    nop                                           ; $4192: $00
    nop                                           ; $4193: $00
    nop                                           ; $4194: $00
    nop                                           ; $4195: $00
    nop                                           ; $4196: $00
    nop                                           ; $4197: $00
    nop                                           ; $4198: $00
    nop                                           ; $4199: $00
    nop                                           ; $419a: $00
    nop                                           ; $419b: $00
    ld bc, $0301                                  ; $419c: $01 $01 $03
    inc bc                                        ; $419f: $03
    ld bc, $0001                                  ; $41a0: $01 $01 $00
    nop                                           ; $41a3: $00
    nop                                           ; $41a4: $00
    nop                                           ; $41a5: $00
    nop                                           ; $41a6: $00
    nop                                           ; $41a7: $00
    nop                                           ; $41a8: $00
    nop                                           ; $41a9: $00
    nop                                           ; $41aa: $00
    nop                                           ; $41ab: $00
    nop                                           ; $41ac: $00
    nop                                           ; $41ad: $00
    nop                                           ; $41ae: $00
    nop                                           ; $41af: $00
    nop                                           ; $41b0: $00
    nop                                           ; $41b1: $00
    nop                                           ; $41b2: $00
    nop                                           ; $41b3: $00
    nop                                           ; $41b4: $00
    nop                                           ; $41b5: $00
    nop                                           ; $41b6: $00
    nop                                           ; $41b7: $00
    nop                                           ; $41b8: $00
    nop                                           ; $41b9: $00
    nop                                           ; $41ba: $00
    nop                                           ; $41bb: $00
    add b                                         ; $41bc: $80
    add b                                         ; $41bd: $80
    ret nz                                        ; $41be: $c0

    ret nz                                        ; $41bf: $c0

    add b                                         ; $41c0: $80
    add b                                         ; $41c1: $80
    nop                                           ; $41c2: $00
    nop                                           ; $41c3: $00
    nop                                           ; $41c4: $00
    nop                                           ; $41c5: $00
    nop                                           ; $41c6: $00
    nop                                           ; $41c7: $00
    nop                                           ; $41c8: $00
    nop                                           ; $41c9: $00
    nop                                           ; $41ca: $00
    nop                                           ; $41cb: $00
    nop                                           ; $41cc: $00
    nop                                           ; $41cd: $00
    nop                                           ; $41ce: $00
    nop                                           ; $41cf: $00
    nop                                           ; $41d0: $00
    nop                                           ; $41d1: $00
    nop                                           ; $41d2: $00
    nop                                           ; $41d3: $00
    nop                                           ; $41d4: $00
    nop                                           ; $41d5: $00
    nop                                           ; $41d6: $00
    nop                                           ; $41d7: $00
    nop                                           ; $41d8: $00
    nop                                           ; $41d9: $00
    nop                                           ; $41da: $00
    nop                                           ; $41db: $00
    ld bc, $0301                                  ; $41dc: $01 $01 $03
    inc bc                                        ; $41df: $03
    ld bc, $0001                                  ; $41e0: $01 $01 $00
    nop                                           ; $41e3: $00
    nop                                           ; $41e4: $00
    nop                                           ; $41e5: $00
    nop                                           ; $41e6: $00
    nop                                           ; $41e7: $00
    nop                                           ; $41e8: $00
    nop                                           ; $41e9: $00
    nop                                           ; $41ea: $00
    nop                                           ; $41eb: $00
    nop                                           ; $41ec: $00
    nop                                           ; $41ed: $00
    nop                                           ; $41ee: $00
    nop                                           ; $41ef: $00
    nop                                           ; $41f0: $00
    nop                                           ; $41f1: $00
    nop                                           ; $41f2: $00
    nop                                           ; $41f3: $00
    nop                                           ; $41f4: $00
    nop                                           ; $41f5: $00
    nop                                           ; $41f6: $00
    nop                                           ; $41f7: $00
    nop                                           ; $41f8: $00
    nop                                           ; $41f9: $00
    nop                                           ; $41fa: $00
    nop                                           ; $41fb: $00
    add b                                         ; $41fc: $80
    add b                                         ; $41fd: $80
    ret nz                                        ; $41fe: $c0

    ret nz                                        ; $41ff: $c0

    add b                                         ; $4200: $80
    add b                                         ; $4201: $80
    nop                                           ; $4202: $00
    nop                                           ; $4203: $00
    nop                                           ; $4204: $00
    nop                                           ; $4205: $00
    nop                                           ; $4206: $00
    nop                                           ; $4207: $00
    nop                                           ; $4208: $00
    nop                                           ; $4209: $00
    nop                                           ; $420a: $00
    nop                                           ; $420b: $00
    nop                                           ; $420c: $00
    nop                                           ; $420d: $00
    nop                                           ; $420e: $00
    nop                                           ; $420f: $00
    nop                                           ; $4210: $00
    nop                                           ; $4211: $00
    nop                                           ; $4212: $00
    nop                                           ; $4213: $00
    nop                                           ; $4214: $00
    nop                                           ; $4215: $00
    nop                                           ; $4216: $00
    nop                                           ; $4217: $00
    nop                                           ; $4218: $00
    nop                                           ; $4219: $00
    nop                                           ; $421a: $00
    nop                                           ; $421b: $00
    ld bc, $0301                                  ; $421c: $01 $01 $03
    inc bc                                        ; $421f: $03
    ld bc, $0001                                  ; $4220: $01 $01 $00
    nop                                           ; $4223: $00
    nop                                           ; $4224: $00
    nop                                           ; $4225: $00
    nop                                           ; $4226: $00
    nop                                           ; $4227: $00
    nop                                           ; $4228: $00
    nop                                           ; $4229: $00
    nop                                           ; $422a: $00
    nop                                           ; $422b: $00
    nop                                           ; $422c: $00
    nop                                           ; $422d: $00
    nop                                           ; $422e: $00
    nop                                           ; $422f: $00
    nop                                           ; $4230: $00
    nop                                           ; $4231: $00
    nop                                           ; $4232: $00
    nop                                           ; $4233: $00
    nop                                           ; $4234: $00
    nop                                           ; $4235: $00
    nop                                           ; $4236: $00
    nop                                           ; $4237: $00
    nop                                           ; $4238: $00
    nop                                           ; $4239: $00
    nop                                           ; $423a: $00
    nop                                           ; $423b: $00
    add b                                         ; $423c: $80
    add b                                         ; $423d: $80
    ret nz                                        ; $423e: $c0

    ret nz                                        ; $423f: $c0

    add b                                         ; $4240: $80
    add b                                         ; $4241: $80
    nop                                           ; $4242: $00
    nop                                           ; $4243: $00
    nop                                           ; $4244: $00
    nop                                           ; $4245: $00
    nop                                           ; $4246: $00
    nop                                           ; $4247: $00
    nop                                           ; $4248: $00
    nop                                           ; $4249: $00
    nop                                           ; $424a: $00
    nop                                           ; $424b: $00
    nop                                           ; $424c: $00
    nop                                           ; $424d: $00
    nop                                           ; $424e: $00
    nop                                           ; $424f: $00
    ld h, d                                       ; $4250: $62
    ld b, d                                       ; $4251: $42
    ld h, l                                       ; $4252: $65
    ld b, d                                       ; $4253: $42
    ld l, e                                       ; $4254: $6b
    ld b, d                                       ; $4255: $42
    ld l, [hl]                                    ; $4256: $6e
    ld b, d                                       ; $4257: $42
    ld a, c                                       ; $4258: $79
    ld b, d                                       ; $4259: $42
    add b                                         ; $425a: $80
    ld b, d                                       ; $425b: $42
    adc b                                         ; $425c: $88
    ld b, d                                       ; $425d: $42
    sbc h                                         ; $425e: $9c
    ld b, d                                       ; $425f: $42
    xor b                                         ; $4260: $a8
    ld b, d                                       ; $4261: $42
    nop                                           ; $4262: $00
    rst $38                                       ; $4263: $ff
    db $fd                                        ; $4264: $fd
    nop                                           ; $4265: $00
    ld e, $01                                     ; $4266: $1e $01
    ld e, $ff                                     ; $4268: $1e $ff
    nop                                           ; $426a: $00
    ld [bc], a                                    ; $426b: $02
    rst $38                                       ; $426c: $ff
    db $fd                                        ; $426d: $fd
    ld [bc], a                                    ; $426e: $02
    inc c                                         ; $426f: $0c
    inc bc                                        ; $4270: $03
    inc c                                         ; $4271: $0c
    inc b                                         ; $4272: $04
    jr jr_026_4277                                ; $4273: $18 $02

    inc c                                         ; $4275: $0c
    dec b                                         ; $4276: $05

jr_026_4277:
    inc c                                         ; $4277: $0c
    db $fd                                        ; $4278: $fd
    ld [bc], a                                    ; $4279: $02
    jr @+$05                                      ; $427a: $18 $03

    jr jr_026_4280                                ; $427c: $18 $02

    jr @-$01                                      ; $427e: $18 $fd

jr_026_4280:
    nop                                           ; $4280: $00
    ld a, [bc]                                    ; $4281: $0a
    ld b, $1e                                     ; $4282: $06 $1e
    nop                                           ; $4284: $00
    ld a, [bc]                                    ; $4285: $0a
    cp $01                                        ; $4286: $fe $01
    nop                                           ; $4288: $00
    ld a, [bc]                                    ; $4289: $0a
    rlca                                          ; $428a: $07
    ld a, [bc]                                    ; $428b: $0a
    nop                                           ; $428c: $00
    inc bc                                        ; $428d: $03
    ld [$000a], sp                                ; $428e: $08 $0a $00
    inc bc                                        ; $4291: $03
    rlca                                          ; $4292: $07
    ld a, [bc]                                    ; $4293: $0a
    nop                                           ; $4294: $00
    inc bc                                        ; $4295: $03
    ld [$000a], sp                                ; $4296: $08 $0a $00
    ld a, [bc]                                    ; $4299: $0a
    cp $01                                        ; $429a: $fe $01
    nop                                           ; $429c: $00
    ld a, [bc]                                    ; $429d: $0a
    add hl, bc                                    ; $429e: $09
    ld [$0800], sp                                ; $429f: $08 $00 $08
    add hl, bc                                    ; $42a2: $09
    ld [$0a00], sp                                ; $42a3: $08 $00 $0a
    cp $01                                        ; $42a6: $fe $01
    ld [bc], a                                    ; $42a8: $02
    ld [de], a                                    ; $42a9: $12
    inc bc                                        ; $42aa: $03
    ld [de], a                                    ; $42ab: $12
    ld [bc], a                                    ; $42ac: $02
    ld e, $05                                     ; $42ad: $1e $05
    ld [de], a                                    ; $42af: $12
    db $fd                                        ; $42b0: $fd
    dec b                                         ; $42b1: $05
    inc b                                         ; $42b2: $04
    cp c                                          ; $42b3: $b9
    ld b, d                                       ; $42b4: $42
    ldh [rDMA], a                                 ; $42b5: $e0 $46
    cp c                                          ; $42b7: $b9
    ld b, d                                       ; $42b8: $42
    ldh [rSCY], a                                 ; $42b9: $e0 $42
    ldh [rSCX], a                                 ; $42bb: $e0 $43
    ldh [rSCX], a                                 ; $42bd: $e0 $43
    ldh [rSCX], a                                 ; $42bf: $e0 $43
    ldh [rSCX], a                                 ; $42c1: $e0 $43
    ldh [rSCX], a                                 ; $42c3: $e0 $43
    ldh [rSCX], a                                 ; $42c5: $e0 $43
    ldh [rSCX], a                                 ; $42c7: $e0 $43
    ldh [rSCX], a                                 ; $42c9: $e0 $43
    ldh [rSCX], a                                 ; $42cb: $e0 $43
    ldh [rLY], a                                  ; $42cd: $e0 $44
    ldh [rLYC], a                                 ; $42cf: $e0 $45
    nop                                           ; $42d1: $00
    nop                                           ; $42d2: $00
    nop                                           ; $42d3: $00
    nop                                           ; $42d4: $00
    nop                                           ; $42d5: $00
    nop                                           ; $42d6: $00
    nop                                           ; $42d7: $00
    nop                                           ; $42d8: $00
    nop                                           ; $42d9: $00
    nop                                           ; $42da: $00
    nop                                           ; $42db: $00
    nop                                           ; $42dc: $00
    nop                                           ; $42dd: $00
    nop                                           ; $42de: $00
    nop                                           ; $42df: $00
    ld bc, $0301                                  ; $42e0: $01 $01 $03
    ld [bc], a                                    ; $42e3: $02
    ld b, $07                                     ; $42e4: $06 $07
    ld l, e                                       ; $42e6: $6b
    ld l, a                                       ; $42e7: $6f
    db $dd                                        ; $42e8: $dd
    cp e                                          ; $42e9: $bb
    or h                                          ; $42ea: $b4
    rst $38                                       ; $42eb: $ff
    or e                                          ; $42ec: $b3
    rst $38                                       ; $42ed: $ff
    ld d, h                                       ; $42ee: $54
    ld a, e                                       ; $42ef: $7b
    ld d, h                                       ; $42f0: $54
    ld a, e                                       ; $42f1: $7b
    jr c, @+$41                                   ; $42f2: $38 $3f

    rlca                                          ; $42f4: $07
    rlca                                          ; $42f5: $07
    ld a, [bc]                                    ; $42f6: $0a
    rrca                                          ; $42f7: $0f
    dec c                                         ; $42f8: $0d
    dec bc                                        ; $42f9: $0b
    ld [$040f], sp                                ; $42fa: $08 $0f $04
    rlca                                          ; $42fd: $07
    inc bc                                        ; $42fe: $03
    inc bc                                        ; $42ff: $03
    nop                                           ; $4300: $00
    nop                                           ; $4301: $00
    add b                                         ; $4302: $80
    add b                                         ; $4303: $80
    ret nz                                        ; $4304: $c0

    ret nz                                        ; $4305: $c0

    db $ec                                        ; $4306: $ec
    db $ec                                        ; $4307: $ec
    cp d                                          ; $4308: $ba
    or $7a                                        ; $4309: $f6 $7a
    cp $da                                        ; $430b: $fe $da
    cp $d4                                        ; $430d: $fe $d4
    db $fc                                        ; $430f: $fc
    call nc, $b8fc                                ; $4310: $d4 $fc $b8
    ld hl, sp-$40                                 ; $4313: $f8 $c0
    ret nz                                        ; $4315: $c0

    ldh [$e0], a                                  ; $4316: $e0 $e0
    ldh [$e0], a                                  ; $4318: $e0 $e0
    and b                                         ; $431a: $a0
    ldh [rLCDC], a                                ; $431b: $e0 $40
    ret nz                                        ; $431d: $c0

    add b                                         ; $431e: $80
    add b                                         ; $431f: $80
    ld bc, $0301                                  ; $4320: $01 $01 $03
    ld [bc], a                                    ; $4323: $02
    ld b, $07                                     ; $4324: $06 $07
    ld l, e                                       ; $4326: $6b
    ld l, a                                       ; $4327: $6f
    db $dd                                        ; $4328: $dd
    cp e                                          ; $4329: $bb
    or h                                          ; $432a: $b4
    rst $38                                       ; $432b: $ff
    or e                                          ; $432c: $b3
    rst $38                                       ; $432d: $ff
    ld d, h                                       ; $432e: $54
    ld a, e                                       ; $432f: $7b
    ld d, h                                       ; $4330: $54
    ld a, e                                       ; $4331: $7b
    jr c, @+$41                                   ; $4332: $38 $3f

    rlca                                          ; $4334: $07
    rlca                                          ; $4335: $07
    ld a, [bc]                                    ; $4336: $0a
    rrca                                          ; $4337: $0f
    dec c                                         ; $4338: $0d
    dec bc                                        ; $4339: $0b
    ld [$040f], sp                                ; $433a: $08 $0f $04
    rlca                                          ; $433d: $07
    inc bc                                        ; $433e: $03
    inc bc                                        ; $433f: $03
    nop                                           ; $4340: $00
    nop                                           ; $4341: $00
    add b                                         ; $4342: $80
    add b                                         ; $4343: $80
    ret nz                                        ; $4344: $c0

    ret nz                                        ; $4345: $c0

    db $ec                                        ; $4346: $ec
    db $ec                                        ; $4347: $ec
    cp d                                          ; $4348: $ba
    or $7a                                        ; $4349: $f6 $7a
    cp $da                                        ; $434b: $fe $da
    cp $d4                                        ; $434d: $fe $d4
    db $fc                                        ; $434f: $fc
    call nc, $b8fc                                ; $4350: $d4 $fc $b8
    ld hl, sp-$40                                 ; $4353: $f8 $c0
    ret nz                                        ; $4355: $c0

    ldh [$e0], a                                  ; $4356: $e0 $e0
    ldh [$e0], a                                  ; $4358: $e0 $e0
    and b                                         ; $435a: $a0
    ldh [rLCDC], a                                ; $435b: $e0 $40
    ret nz                                        ; $435d: $c0

    add b                                         ; $435e: $80
    add b                                         ; $435f: $80
    ld bc, $0301                                  ; $4360: $01 $01 $03
    ld [bc], a                                    ; $4363: $02
    ld b, $07                                     ; $4364: $06 $07
    ld l, e                                       ; $4366: $6b
    ld l, a                                       ; $4367: $6f
    db $dd                                        ; $4368: $dd
    cp e                                          ; $4369: $bb
    or h                                          ; $436a: $b4
    rst $38                                       ; $436b: $ff
    or e                                          ; $436c: $b3
    rst $38                                       ; $436d: $ff
    ld d, h                                       ; $436e: $54
    ld a, e                                       ; $436f: $7b
    ld d, h                                       ; $4370: $54
    ld a, e                                       ; $4371: $7b
    jr c, @+$41                                   ; $4372: $38 $3f

    rlca                                          ; $4374: $07
    rlca                                          ; $4375: $07
    ld a, [bc]                                    ; $4376: $0a
    rrca                                          ; $4377: $0f
    dec c                                         ; $4378: $0d
    dec bc                                        ; $4379: $0b
    ld [$040f], sp                                ; $437a: $08 $0f $04
    rlca                                          ; $437d: $07
    inc bc                                        ; $437e: $03
    inc bc                                        ; $437f: $03
    nop                                           ; $4380: $00
    nop                                           ; $4381: $00
    add b                                         ; $4382: $80
    add b                                         ; $4383: $80
    ret nz                                        ; $4384: $c0

    ret nz                                        ; $4385: $c0

    db $ec                                        ; $4386: $ec
    db $ec                                        ; $4387: $ec
    cp d                                          ; $4388: $ba
    or $7a                                        ; $4389: $f6 $7a
    cp $da                                        ; $438b: $fe $da
    cp $d4                                        ; $438d: $fe $d4
    db $fc                                        ; $438f: $fc
    call nc, $b8fc                                ; $4390: $d4 $fc $b8
    ld hl, sp-$40                                 ; $4393: $f8 $c0
    ret nz                                        ; $4395: $c0

    ldh [$e0], a                                  ; $4396: $e0 $e0
    ldh [$e0], a                                  ; $4398: $e0 $e0
    and b                                         ; $439a: $a0
    ldh [rLCDC], a                                ; $439b: $e0 $40
    ret nz                                        ; $439d: $c0

    add b                                         ; $439e: $80
    add b                                         ; $439f: $80
    ld bc, $0301                                  ; $43a0: $01 $01 $03
    ld [bc], a                                    ; $43a3: $02
    ld b, $07                                     ; $43a4: $06 $07
    ld l, e                                       ; $43a6: $6b
    ld l, a                                       ; $43a7: $6f
    db $dd                                        ; $43a8: $dd
    cp e                                          ; $43a9: $bb
    or h                                          ; $43aa: $b4
    rst $38                                       ; $43ab: $ff
    or e                                          ; $43ac: $b3
    rst $38                                       ; $43ad: $ff
    ld d, h                                       ; $43ae: $54
    ld a, e                                       ; $43af: $7b
    ld d, h                                       ; $43b0: $54
    ld a, e                                       ; $43b1: $7b
    jr c, @+$41                                   ; $43b2: $38 $3f

    rlca                                          ; $43b4: $07
    rlca                                          ; $43b5: $07
    ld a, [bc]                                    ; $43b6: $0a
    rrca                                          ; $43b7: $0f
    dec c                                         ; $43b8: $0d
    dec bc                                        ; $43b9: $0b
    ld [$040f], sp                                ; $43ba: $08 $0f $04
    rlca                                          ; $43bd: $07
    inc bc                                        ; $43be: $03
    inc bc                                        ; $43bf: $03
    nop                                           ; $43c0: $00
    nop                                           ; $43c1: $00
    add b                                         ; $43c2: $80
    add b                                         ; $43c3: $80
    ret nz                                        ; $43c4: $c0

    ret nz                                        ; $43c5: $c0

    db $ec                                        ; $43c6: $ec
    db $ec                                        ; $43c7: $ec
    cp d                                          ; $43c8: $ba
    or $7a                                        ; $43c9: $f6 $7a
    cp $da                                        ; $43cb: $fe $da
    cp $d4                                        ; $43cd: $fe $d4
    db $fc                                        ; $43cf: $fc
    call nc, $b8fc                                ; $43d0: $d4 $fc $b8
    ld hl, sp-$40                                 ; $43d3: $f8 $c0
    ret nz                                        ; $43d5: $c0

    ldh [$e0], a                                  ; $43d6: $e0 $e0
    ldh [$e0], a                                  ; $43d8: $e0 $e0
    and b                                         ; $43da: $a0
    ldh [rLCDC], a                                ; $43db: $e0 $40
    ret nz                                        ; $43dd: $c0

    add b                                         ; $43de: $80
    add b                                         ; $43df: $80
    ld bc, $0201                                  ; $43e0: $01 $01 $02
    inc bc                                        ; $43e3: $03
    ld b, $07                                     ; $43e4: $06 $07
    ld l, e                                       ; $43e6: $6b
    ld l, a                                       ; $43e7: $6f
    sbc c                                         ; $43e8: $99
    rst $38                                       ; $43e9: $ff
    or h                                          ; $43ea: $b4
    rst $38                                       ; $43eb: $ff
    or e                                          ; $43ec: $b3
    rst $38                                       ; $43ed: $ff
    ld d, b                                       ; $43ee: $50
    ld a, a                                       ; $43ef: $7f
    ld d, b                                       ; $43f0: $50
    ld a, a                                       ; $43f1: $7f
    jr c, @+$41                                   ; $43f2: $38 $3f

    rlca                                          ; $43f4: $07
    rlca                                          ; $43f5: $07
    ld a, [bc]                                    ; $43f6: $0a
    rrca                                          ; $43f7: $0f
    add hl, bc                                    ; $43f8: $09
    rrca                                          ; $43f9: $0f
    ld [$040f], sp                                ; $43fa: $08 $0f $04
    rlca                                          ; $43fd: $07
    inc bc                                        ; $43fe: $03
    inc bc                                        ; $43ff: $03
    nop                                           ; $4400: $00
    nop                                           ; $4401: $00
    add b                                         ; $4402: $80
    add b                                         ; $4403: $80
    ret nz                                        ; $4404: $c0

    ret nz                                        ; $4405: $c0

    db $ec                                        ; $4406: $ec
    db $ec                                        ; $4407: $ec
    or d                                          ; $4408: $b2
    cp $7a                                        ; $4409: $fe $7a
    cp $da                                        ; $440b: $fe $da
    cp $d4                                        ; $440d: $fe $d4
    db $fc                                        ; $440f: $fc
    call nc, $b8fc                                ; $4410: $d4 $fc $b8
    ld hl, sp-$40                                 ; $4413: $f8 $c0
    ret nz                                        ; $4415: $c0

    ldh [$e0], a                                  ; $4416: $e0 $e0
    ldh [$e0], a                                  ; $4418: $e0 $e0
    and b                                         ; $441a: $a0
    ldh [rLCDC], a                                ; $441b: $e0 $40
    ret nz                                        ; $441d: $c0

    add b                                         ; $441e: $80
    add b                                         ; $441f: $80
    ld bc, $0201                                  ; $4420: $01 $01 $02
    inc bc                                        ; $4423: $03
    ld b, $07                                     ; $4424: $06 $07
    ld l, e                                       ; $4426: $6b
    ld l, a                                       ; $4427: $6f
    sbc c                                         ; $4428: $99
    rst $38                                       ; $4429: $ff
    or h                                          ; $442a: $b4
    rst $38                                       ; $442b: $ff
    or e                                          ; $442c: $b3
    rst $38                                       ; $442d: $ff
    ld d, b                                       ; $442e: $50
    ld a, a                                       ; $442f: $7f
    ld d, b                                       ; $4430: $50
    ld a, a                                       ; $4431: $7f
    jr c, @+$41                                   ; $4432: $38 $3f

    rlca                                          ; $4434: $07
    rlca                                          ; $4435: $07
    ld a, [bc]                                    ; $4436: $0a
    rrca                                          ; $4437: $0f
    add hl, bc                                    ; $4438: $09
    rrca                                          ; $4439: $0f
    ld [$040f], sp                                ; $443a: $08 $0f $04
    rlca                                          ; $443d: $07
    inc bc                                        ; $443e: $03
    inc bc                                        ; $443f: $03
    nop                                           ; $4440: $00
    nop                                           ; $4441: $00
    add b                                         ; $4442: $80
    add b                                         ; $4443: $80
    ret nz                                        ; $4444: $c0

    ret nz                                        ; $4445: $c0

    db $ec                                        ; $4446: $ec
    db $ec                                        ; $4447: $ec
    or d                                          ; $4448: $b2
    cp $7a                                        ; $4449: $fe $7a
    cp $da                                        ; $444b: $fe $da
    cp $d4                                        ; $444d: $fe $d4
    db $fc                                        ; $444f: $fc
    call nc, $b8fc                                ; $4450: $d4 $fc $b8
    ld hl, sp-$40                                 ; $4453: $f8 $c0
    ret nz                                        ; $4455: $c0

    ldh [$e0], a                                  ; $4456: $e0 $e0
    ldh [$e0], a                                  ; $4458: $e0 $e0
    and b                                         ; $445a: $a0
    ldh [rLCDC], a                                ; $445b: $e0 $40
    ret nz                                        ; $445d: $c0

    add b                                         ; $445e: $80
    add b                                         ; $445f: $80
    ld bc, $0201                                  ; $4460: $01 $01 $02
    inc bc                                        ; $4463: $03
    ld b, $07                                     ; $4464: $06 $07
    ld l, e                                       ; $4466: $6b
    ld l, a                                       ; $4467: $6f
    sbc c                                         ; $4468: $99
    rst $38                                       ; $4469: $ff
    or h                                          ; $446a: $b4
    rst $38                                       ; $446b: $ff
    or e                                          ; $446c: $b3
    rst $38                                       ; $446d: $ff
    ld d, b                                       ; $446e: $50
    ld a, a                                       ; $446f: $7f
    ld d, b                                       ; $4470: $50
    ld a, a                                       ; $4471: $7f
    jr c, @+$41                                   ; $4472: $38 $3f

    rlca                                          ; $4474: $07
    rlca                                          ; $4475: $07
    ld a, [bc]                                    ; $4476: $0a
    rrca                                          ; $4477: $0f
    add hl, bc                                    ; $4478: $09
    rrca                                          ; $4479: $0f
    ld [$040f], sp                                ; $447a: $08 $0f $04
    rlca                                          ; $447d: $07
    inc bc                                        ; $447e: $03
    inc bc                                        ; $447f: $03
    nop                                           ; $4480: $00
    nop                                           ; $4481: $00
    add b                                         ; $4482: $80
    add b                                         ; $4483: $80
    ret nz                                        ; $4484: $c0

    ret nz                                        ; $4485: $c0

    db $ec                                        ; $4486: $ec
    db $ec                                        ; $4487: $ec
    or d                                          ; $4488: $b2
    cp $7a                                        ; $4489: $fe $7a
    cp $da                                        ; $448b: $fe $da
    cp $d4                                        ; $448d: $fe $d4
    db $fc                                        ; $448f: $fc
    call nc, $b8fc                                ; $4490: $d4 $fc $b8
    ld hl, sp-$40                                 ; $4493: $f8 $c0
    ret nz                                        ; $4495: $c0

    ldh [$e0], a                                  ; $4496: $e0 $e0
    ldh [$e0], a                                  ; $4498: $e0 $e0
    and b                                         ; $449a: $a0
    ldh [rLCDC], a                                ; $449b: $e0 $40
    ret nz                                        ; $449d: $c0

    add b                                         ; $449e: $80
    add b                                         ; $449f: $80
    ld bc, $0201                                  ; $44a0: $01 $01 $02
    inc bc                                        ; $44a3: $03
    ld b, $07                                     ; $44a4: $06 $07
    ld l, e                                       ; $44a6: $6b
    ld l, a                                       ; $44a7: $6f
    sbc c                                         ; $44a8: $99
    rst $38                                       ; $44a9: $ff
    or h                                          ; $44aa: $b4
    rst $38                                       ; $44ab: $ff
    or e                                          ; $44ac: $b3
    rst $38                                       ; $44ad: $ff
    ld d, b                                       ; $44ae: $50
    ld a, a                                       ; $44af: $7f
    ld d, b                                       ; $44b0: $50
    ld a, a                                       ; $44b1: $7f
    jr c, jr_026_44f3                             ; $44b2: $38 $3f

    rlca                                          ; $44b4: $07
    rlca                                          ; $44b5: $07
    ld a, [bc]                                    ; $44b6: $0a
    rrca                                          ; $44b7: $0f
    add hl, bc                                    ; $44b8: $09
    rrca                                          ; $44b9: $0f
    ld [$040f], sp                                ; $44ba: $08 $0f $04
    rlca                                          ; $44bd: $07
    inc bc                                        ; $44be: $03
    inc bc                                        ; $44bf: $03
    nop                                           ; $44c0: $00
    nop                                           ; $44c1: $00
    add b                                         ; $44c2: $80
    add b                                         ; $44c3: $80
    ret nz                                        ; $44c4: $c0

    ret nz                                        ; $44c5: $c0

    db $ec                                        ; $44c6: $ec
    db $ec                                        ; $44c7: $ec
    or d                                          ; $44c8: $b2
    cp $7a                                        ; $44c9: $fe $7a
    cp $da                                        ; $44cb: $fe $da
    cp $d4                                        ; $44cd: $fe $d4
    db $fc                                        ; $44cf: $fc
    call nc, $b8fc                                ; $44d0: $d4 $fc $b8
    ld hl, sp-$40                                 ; $44d3: $f8 $c0
    ret nz                                        ; $44d5: $c0

    ldh [$e0], a                                  ; $44d6: $e0 $e0
    ldh [$e0], a                                  ; $44d8: $e0 $e0
    and b                                         ; $44da: $a0
    ldh [rLCDC], a                                ; $44db: $e0 $40
    ret nz                                        ; $44dd: $c0

    add b                                         ; $44de: $80
    add b                                         ; $44df: $80
    nop                                           ; $44e0: $00
    nop                                           ; $44e1: $00
    ld bc, $0201                                  ; $44e2: $01 $01 $02
    inc bc                                        ; $44e5: $03
    dec [hl]                                      ; $44e6: $35
    scf                                           ; $44e7: $37
    ld l, [hl]                                    ; $44e8: $6e
    ld e, l                                       ; $44e9: $5d
    ld e, d                                       ; $44ea: $5a
    ld a, a                                       ; $44eb: $7f
    ld e, c                                       ; $44ec: $59
    ld a, a                                       ; $44ed: $7f
    ld a, [hl+]                                   ; $44ee: $2a
    dec a                                         ; $44ef: $3d
    inc e                                         ; $44f0: $1c
    rra                                           ; $44f1: $1f
    inc bc                                        ; $44f2: $03

jr_026_44f3:
    inc bc                                        ; $44f3: $03
    dec b                                         ; $44f4: $05
    rlca                                          ; $44f5: $07
    ld b, $05                                     ; $44f6: $06 $05
    inc b                                         ; $44f8: $04
    rlca                                          ; $44f9: $07
    inc bc                                        ; $44fa: $03
    inc bc                                        ; $44fb: $03
    nop                                           ; $44fc: $00
    nop                                           ; $44fd: $00
    nop                                           ; $44fe: $00
    nop                                           ; $44ff: $00
    nop                                           ; $4500: $00
    nop                                           ; $4501: $00
    add b                                         ; $4502: $80
    add b                                         ; $4503: $80
    ret nz                                        ; $4504: $c0

    ret nz                                        ; $4505: $c0

    db $ec                                        ; $4506: $ec
    db $ec                                        ; $4507: $ec
    or d                                          ; $4508: $b2
    cp $5a                                        ; $4509: $fe $5a
    cp $da                                        ; $450b: $fe $da
    cp $d4                                        ; $450d: $fe $d4
    db $fc                                        ; $450f: $fc
    cp b                                          ; $4510: $b8
    ld hl, sp-$40                                 ; $4511: $f8 $c0
    ret nz                                        ; $4513: $c0

    ldh [$e0], a                                  ; $4514: $e0 $e0
    and b                                         ; $4516: $a0
    ldh [rNR41], a                                ; $4517: $e0 $20
    ldh [$c0], a                                  ; $4519: $e0 $c0
    ret nz                                        ; $451b: $c0

    nop                                           ; $451c: $00
    nop                                           ; $451d: $00
    nop                                           ; $451e: $00
    nop                                           ; $451f: $00
    nop                                           ; $4520: $00
    nop                                           ; $4521: $00
    ld bc, $0201                                  ; $4522: $01 $01 $02
    inc bc                                        ; $4525: $03
    dec [hl]                                      ; $4526: $35
    scf                                           ; $4527: $37
    ld l, [hl]                                    ; $4528: $6e
    ld e, l                                       ; $4529: $5d
    ld e, d                                       ; $452a: $5a
    ld a, a                                       ; $452b: $7f
    ld e, c                                       ; $452c: $59
    ld a, a                                       ; $452d: $7f
    ld a, [hl+]                                   ; $452e: $2a
    dec a                                         ; $452f: $3d
    inc e                                         ; $4530: $1c
    rra                                           ; $4531: $1f
    inc bc                                        ; $4532: $03
    inc bc                                        ; $4533: $03
    dec b                                         ; $4534: $05
    rlca                                          ; $4535: $07
    ld b, $05                                     ; $4536: $06 $05
    inc b                                         ; $4538: $04
    rlca                                          ; $4539: $07
    inc bc                                        ; $453a: $03
    inc bc                                        ; $453b: $03
    nop                                           ; $453c: $00
    nop                                           ; $453d: $00
    nop                                           ; $453e: $00
    nop                                           ; $453f: $00
    nop                                           ; $4540: $00
    nop                                           ; $4541: $00
    add b                                         ; $4542: $80
    add b                                         ; $4543: $80
    ret nz                                        ; $4544: $c0

    ret nz                                        ; $4545: $c0

    db $ec                                        ; $4546: $ec
    db $ec                                        ; $4547: $ec
    or d                                          ; $4548: $b2
    cp $5a                                        ; $4549: $fe $5a
    cp $da                                        ; $454b: $fe $da
    cp $d4                                        ; $454d: $fe $d4
    db $fc                                        ; $454f: $fc
    cp b                                          ; $4550: $b8
    ld hl, sp-$40                                 ; $4551: $f8 $c0
    ret nz                                        ; $4553: $c0

    ldh [$e0], a                                  ; $4554: $e0 $e0
    and b                                         ; $4556: $a0
    ldh [rNR41], a                                ; $4557: $e0 $20
    ldh [$c0], a                                  ; $4559: $e0 $c0
    ret nz                                        ; $455b: $c0

    nop                                           ; $455c: $00
    nop                                           ; $455d: $00
    nop                                           ; $455e: $00
    nop                                           ; $455f: $00
    nop                                           ; $4560: $00
    nop                                           ; $4561: $00
    ld bc, $0201                                  ; $4562: $01 $01 $02
    inc bc                                        ; $4565: $03
    dec [hl]                                      ; $4566: $35
    scf                                           ; $4567: $37
    ld l, [hl]                                    ; $4568: $6e
    ld e, l                                       ; $4569: $5d
    ld e, d                                       ; $456a: $5a
    ld a, a                                       ; $456b: $7f
    ld e, c                                       ; $456c: $59
    ld a, a                                       ; $456d: $7f
    ld a, [hl+]                                   ; $456e: $2a
    dec a                                         ; $456f: $3d
    inc e                                         ; $4570: $1c
    rra                                           ; $4571: $1f
    inc bc                                        ; $4572: $03
    inc bc                                        ; $4573: $03
    dec b                                         ; $4574: $05
    rlca                                          ; $4575: $07
    ld b, $05                                     ; $4576: $06 $05
    inc b                                         ; $4578: $04
    rlca                                          ; $4579: $07
    inc bc                                        ; $457a: $03
    inc bc                                        ; $457b: $03
    nop                                           ; $457c: $00
    nop                                           ; $457d: $00
    nop                                           ; $457e: $00
    nop                                           ; $457f: $00
    nop                                           ; $4580: $00
    nop                                           ; $4581: $00
    add b                                         ; $4582: $80
    add b                                         ; $4583: $80
    ret nz                                        ; $4584: $c0

    ret nz                                        ; $4585: $c0

    db $ec                                        ; $4586: $ec
    db $ec                                        ; $4587: $ec
    or d                                          ; $4588: $b2
    cp $5a                                        ; $4589: $fe $5a
    cp $da                                        ; $458b: $fe $da
    cp $d4                                        ; $458d: $fe $d4
    db $fc                                        ; $458f: $fc
    cp b                                          ; $4590: $b8
    ld hl, sp-$40                                 ; $4591: $f8 $c0
    ret nz                                        ; $4593: $c0

    ldh [$e0], a                                  ; $4594: $e0 $e0
    and b                                         ; $4596: $a0
    ldh [rNR41], a                                ; $4597: $e0 $20
    ldh [$c0], a                                  ; $4599: $e0 $c0
    ret nz                                        ; $459b: $c0

    nop                                           ; $459c: $00
    nop                                           ; $459d: $00
    nop                                           ; $459e: $00
    nop                                           ; $459f: $00
    nop                                           ; $45a0: $00
    nop                                           ; $45a1: $00
    ld bc, $0201                                  ; $45a2: $01 $01 $02
    inc bc                                        ; $45a5: $03
    dec [hl]                                      ; $45a6: $35
    scf                                           ; $45a7: $37
    ld l, [hl]                                    ; $45a8: $6e
    ld e, l                                       ; $45a9: $5d
    ld e, d                                       ; $45aa: $5a
    ld a, a                                       ; $45ab: $7f
    ld e, c                                       ; $45ac: $59
    ld a, a                                       ; $45ad: $7f
    ld a, [hl+]                                   ; $45ae: $2a
    dec a                                         ; $45af: $3d
    inc e                                         ; $45b0: $1c
    rra                                           ; $45b1: $1f
    inc bc                                        ; $45b2: $03
    inc bc                                        ; $45b3: $03
    dec b                                         ; $45b4: $05
    rlca                                          ; $45b5: $07
    ld b, $05                                     ; $45b6: $06 $05
    inc b                                         ; $45b8: $04
    rlca                                          ; $45b9: $07
    inc bc                                        ; $45ba: $03
    inc bc                                        ; $45bb: $03
    nop                                           ; $45bc: $00
    nop                                           ; $45bd: $00
    nop                                           ; $45be: $00
    nop                                           ; $45bf: $00
    nop                                           ; $45c0: $00
    nop                                           ; $45c1: $00
    add b                                         ; $45c2: $80
    add b                                         ; $45c3: $80
    ret nz                                        ; $45c4: $c0

    ret nz                                        ; $45c5: $c0

    db $ec                                        ; $45c6: $ec
    db $ec                                        ; $45c7: $ec
    or d                                          ; $45c8: $b2
    cp $5a                                        ; $45c9: $fe $5a
    cp $da                                        ; $45cb: $fe $da
    cp $d4                                        ; $45cd: $fe $d4
    db $fc                                        ; $45cf: $fc
    cp b                                          ; $45d0: $b8
    ld hl, sp-$40                                 ; $45d1: $f8 $c0
    ret nz                                        ; $45d3: $c0

    ldh [$e0], a                                  ; $45d4: $e0 $e0
    and b                                         ; $45d6: $a0
    ldh [rNR41], a                                ; $45d7: $e0 $20
    ldh [$c0], a                                  ; $45d9: $e0 $c0
    ret nz                                        ; $45db: $c0

    nop                                           ; $45dc: $00
    nop                                           ; $45dd: $00
    nop                                           ; $45de: $00
    nop                                           ; $45df: $00
    nop                                           ; $45e0: $00
    nop                                           ; $45e1: $00
    ld bc, $0201                                  ; $45e2: $01 $01 $02
    inc bc                                        ; $45e5: $03
    dec [hl]                                      ; $45e6: $35
    scf                                           ; $45e7: $37
    ld c, h                                       ; $45e8: $4c
    ld a, a                                       ; $45e9: $7f
    ld e, d                                       ; $45ea: $5a
    ld a, a                                       ; $45eb: $7f
    ld e, c                                       ; $45ec: $59
    ld a, a                                       ; $45ed: $7f
    jr z, @+$41                                   ; $45ee: $28 $3f

    inc e                                         ; $45f0: $1c
    rra                                           ; $45f1: $1f
    inc bc                                        ; $45f2: $03
    inc bc                                        ; $45f3: $03
    dec b                                         ; $45f4: $05
    rlca                                          ; $45f5: $07
    inc b                                         ; $45f6: $04
    rlca                                          ; $45f7: $07
    inc b                                         ; $45f8: $04
    rlca                                          ; $45f9: $07
    inc bc                                        ; $45fa: $03
    inc bc                                        ; $45fb: $03
    nop                                           ; $45fc: $00
    nop                                           ; $45fd: $00
    nop                                           ; $45fe: $00
    nop                                           ; $45ff: $00
    nop                                           ; $4600: $00
    nop                                           ; $4601: $00
    add b                                         ; $4602: $80
    add b                                         ; $4603: $80
    ret nz                                        ; $4604: $c0

    ret nz                                        ; $4605: $c0

    db $ec                                        ; $4606: $ec
    db $ec                                        ; $4607: $ec
    or d                                          ; $4608: $b2
    cp $5a                                        ; $4609: $fe $5a
    cp $da                                        ; $460b: $fe $da
    cp $d4                                        ; $460d: $fe $d4
    db $fc                                        ; $460f: $fc
    cp b                                          ; $4610: $b8
    ld hl, sp-$40                                 ; $4611: $f8 $c0
    ret nz                                        ; $4613: $c0

    ldh [$e0], a                                  ; $4614: $e0 $e0
    and b                                         ; $4616: $a0
    ldh [rNR41], a                                ; $4617: $e0 $20
    ldh [$c0], a                                  ; $4619: $e0 $c0
    ret nz                                        ; $461b: $c0

    nop                                           ; $461c: $00
    nop                                           ; $461d: $00
    nop                                           ; $461e: $00
    nop                                           ; $461f: $00
    nop                                           ; $4620: $00
    nop                                           ; $4621: $00
    ld bc, $0201                                  ; $4622: $01 $01 $02
    inc bc                                        ; $4625: $03
    dec [hl]                                      ; $4626: $35
    scf                                           ; $4627: $37
    ld c, h                                       ; $4628: $4c
    ld a, a                                       ; $4629: $7f
    ld e, d                                       ; $462a: $5a
    ld a, a                                       ; $462b: $7f
    ld e, c                                       ; $462c: $59
    ld a, a                                       ; $462d: $7f
    jr z, @+$41                                   ; $462e: $28 $3f

    inc e                                         ; $4630: $1c
    rra                                           ; $4631: $1f
    inc bc                                        ; $4632: $03
    inc bc                                        ; $4633: $03
    dec b                                         ; $4634: $05
    rlca                                          ; $4635: $07
    inc b                                         ; $4636: $04
    rlca                                          ; $4637: $07
    inc b                                         ; $4638: $04
    rlca                                          ; $4639: $07
    inc bc                                        ; $463a: $03
    inc bc                                        ; $463b: $03
    nop                                           ; $463c: $00
    nop                                           ; $463d: $00
    nop                                           ; $463e: $00
    nop                                           ; $463f: $00
    nop                                           ; $4640: $00
    nop                                           ; $4641: $00
    add b                                         ; $4642: $80
    add b                                         ; $4643: $80
    ret nz                                        ; $4644: $c0

    ret nz                                        ; $4645: $c0

    db $ec                                        ; $4646: $ec
    db $ec                                        ; $4647: $ec
    or d                                          ; $4648: $b2
    cp $5a                                        ; $4649: $fe $5a
    cp $da                                        ; $464b: $fe $da
    cp $d4                                        ; $464d: $fe $d4
    db $fc                                        ; $464f: $fc
    cp b                                          ; $4650: $b8
    ld hl, sp-$40                                 ; $4651: $f8 $c0
    ret nz                                        ; $4653: $c0

    ldh [$e0], a                                  ; $4654: $e0 $e0
    and b                                         ; $4656: $a0
    ldh [rNR41], a                                ; $4657: $e0 $20
    ldh [$c0], a                                  ; $4659: $e0 $c0
    ret nz                                        ; $465b: $c0

    nop                                           ; $465c: $00
    nop                                           ; $465d: $00
    nop                                           ; $465e: $00
    nop                                           ; $465f: $00
    nop                                           ; $4660: $00
    nop                                           ; $4661: $00
    ld bc, $0201                                  ; $4662: $01 $01 $02
    inc bc                                        ; $4665: $03
    dec [hl]                                      ; $4666: $35
    scf                                           ; $4667: $37
    ld c, h                                       ; $4668: $4c
    ld a, a                                       ; $4669: $7f
    ld e, d                                       ; $466a: $5a
    ld a, a                                       ; $466b: $7f
    ld e, c                                       ; $466c: $59
    ld a, a                                       ; $466d: $7f
    jr z, @+$41                                   ; $466e: $28 $3f

    inc e                                         ; $4670: $1c
    rra                                           ; $4671: $1f
    inc bc                                        ; $4672: $03
    inc bc                                        ; $4673: $03
    dec b                                         ; $4674: $05
    rlca                                          ; $4675: $07
    inc b                                         ; $4676: $04
    rlca                                          ; $4677: $07
    inc b                                         ; $4678: $04
    rlca                                          ; $4679: $07
    inc bc                                        ; $467a: $03
    inc bc                                        ; $467b: $03
    nop                                           ; $467c: $00
    nop                                           ; $467d: $00
    nop                                           ; $467e: $00
    nop                                           ; $467f: $00
    nop                                           ; $4680: $00
    nop                                           ; $4681: $00
    add b                                         ; $4682: $80
    add b                                         ; $4683: $80
    ret nz                                        ; $4684: $c0

    ret nz                                        ; $4685: $c0

    db $ec                                        ; $4686: $ec
    db $ec                                        ; $4687: $ec
    or d                                          ; $4688: $b2
    cp $5a                                        ; $4689: $fe $5a
    cp $da                                        ; $468b: $fe $da
    cp $d4                                        ; $468d: $fe $d4
    db $fc                                        ; $468f: $fc
    cp b                                          ; $4690: $b8
    ld hl, sp-$40                                 ; $4691: $f8 $c0
    ret nz                                        ; $4693: $c0

    ldh [$e0], a                                  ; $4694: $e0 $e0
    and b                                         ; $4696: $a0
    ldh [rNR41], a                                ; $4697: $e0 $20
    ldh [$c0], a                                  ; $4699: $e0 $c0
    ret nz                                        ; $469b: $c0

    nop                                           ; $469c: $00
    nop                                           ; $469d: $00
    nop                                           ; $469e: $00
    nop                                           ; $469f: $00
    nop                                           ; $46a0: $00
    nop                                           ; $46a1: $00
    ld bc, $0201                                  ; $46a2: $01 $01 $02
    inc bc                                        ; $46a5: $03
    dec [hl]                                      ; $46a6: $35
    scf                                           ; $46a7: $37
    ld c, h                                       ; $46a8: $4c
    ld a, a                                       ; $46a9: $7f
    ld e, d                                       ; $46aa: $5a
    ld a, a                                       ; $46ab: $7f
    ld e, c                                       ; $46ac: $59
    ld a, a                                       ; $46ad: $7f
    jr z, @+$41                                   ; $46ae: $28 $3f

    inc e                                         ; $46b0: $1c
    rra                                           ; $46b1: $1f
    inc bc                                        ; $46b2: $03
    inc bc                                        ; $46b3: $03
    dec b                                         ; $46b4: $05
    rlca                                          ; $46b5: $07
    inc b                                         ; $46b6: $04
    rlca                                          ; $46b7: $07
    inc b                                         ; $46b8: $04
    rlca                                          ; $46b9: $07
    inc bc                                        ; $46ba: $03
    inc bc                                        ; $46bb: $03
    nop                                           ; $46bc: $00
    nop                                           ; $46bd: $00
    nop                                           ; $46be: $00
    nop                                           ; $46bf: $00
    nop                                           ; $46c0: $00
    nop                                           ; $46c1: $00
    add b                                         ; $46c2: $80
    add b                                         ; $46c3: $80
    ret nz                                        ; $46c4: $c0

    ret nz                                        ; $46c5: $c0

    db $ec                                        ; $46c6: $ec
    db $ec                                        ; $46c7: $ec
    or d                                          ; $46c8: $b2
    cp $5a                                        ; $46c9: $fe $5a
    cp $da                                        ; $46cb: $fe $da
    cp $d4                                        ; $46cd: $fe $d4
    db $fc                                        ; $46cf: $fc
    cp b                                          ; $46d0: $b8
    ld hl, sp-$40                                 ; $46d1: $f8 $c0
    ret nz                                        ; $46d3: $c0

    ldh [$e0], a                                  ; $46d4: $e0 $e0
    and b                                         ; $46d6: $a0
    ldh [rNR41], a                                ; $46d7: $e0 $20
    ldh [$c0], a                                  ; $46d9: $e0 $c0
    ret nz                                        ; $46db: $c0

    nop                                           ; $46dc: $00
    nop                                           ; $46dd: $00
    nop                                           ; $46de: $00
    nop                                           ; $46df: $00
    or $46                                        ; $46e0: $f6 $46
    ld sp, hl                                     ; $46e2: $f9
    ld b, [hl]                                    ; $46e3: $46
    rst $38                                       ; $46e4: $ff
    ld b, [hl]                                    ; $46e5: $46
    ld [bc], a                                    ; $46e6: $02
    ld b, a                                       ; $46e7: $47
    dec c                                         ; $46e8: $0d
    ld b, a                                       ; $46e9: $47
    inc d                                         ; $46ea: $14
    ld b, a                                       ; $46eb: $47
    inc e                                         ; $46ec: $1c
    ld b, a                                       ; $46ed: $47
    jr nc, jr_026_4737                            ; $46ee: $30 $47

    inc a                                         ; $46f0: $3c
    ld b, a                                       ; $46f1: $47
    or $46                                        ; $46f2: $f6 $46
    ld b, l                                       ; $46f4: $45
    ld b, a                                       ; $46f5: $47
    nop                                           ; $46f6: $00
    rst $38                                       ; $46f7: $ff
    db $fd                                        ; $46f8: $fd
    nop                                           ; $46f9: $00
    ld [bc], a                                    ; $46fa: $02
    ld bc, $ff02                                  ; $46fb: $01 $02 $ff
    nop                                           ; $46fe: $00
    ld [bc], a                                    ; $46ff: $02
    rst $38                                       ; $4700: $ff
    db $fd                                        ; $4701: $fd
    ld [bc], a                                    ; $4702: $02
    inc c                                         ; $4703: $0c
    inc bc                                        ; $4704: $03
    inc c                                         ; $4705: $0c
    inc b                                         ; $4706: $04
    jr jr_026_470b                                ; $4707: $18 $02

    inc c                                         ; $4709: $0c
    dec b                                         ; $470a: $05

jr_026_470b:
    inc c                                         ; $470b: $0c
    db $fd                                        ; $470c: $fd
    ld [bc], a                                    ; $470d: $02
    jr @+$05                                      ; $470e: $18 $03

    jr jr_026_4714                                ; $4710: $18 $02

    jr @-$01                                      ; $4712: $18 $fd

jr_026_4714:
    nop                                           ; $4714: $00
    ld a, [bc]                                    ; $4715: $0a
    ld b, $1e                                     ; $4716: $06 $1e
    nop                                           ; $4718: $00
    ld a, [bc]                                    ; $4719: $0a
    cp $01                                        ; $471a: $fe $01
    nop                                           ; $471c: $00
    ld a, [bc]                                    ; $471d: $0a
    rlca                                          ; $471e: $07
    ld a, [bc]                                    ; $471f: $0a
    nop                                           ; $4720: $00
    inc bc                                        ; $4721: $03
    ld [$000a], sp                                ; $4722: $08 $0a $00
    inc bc                                        ; $4725: $03
    rlca                                          ; $4726: $07
    ld a, [bc]                                    ; $4727: $0a
    nop                                           ; $4728: $00
    inc bc                                        ; $4729: $03
    ld [$000a], sp                                ; $472a: $08 $0a $00
    ld a, [bc]                                    ; $472d: $0a
    cp $01                                        ; $472e: $fe $01
    nop                                           ; $4730: $00
    ld a, [bc]                                    ; $4731: $0a
    add hl, bc                                    ; $4732: $09
    ld [$0800], sp                                ; $4733: $08 $00 $08
    add hl, bc                                    ; $4736: $09

jr_026_4737:
    ld [$0a00], sp                                ; $4737: $08 $00 $0a
    cp $01                                        ; $473a: $fe $01
    ld [bc], a                                    ; $473c: $02
    ld [de], a                                    ; $473d: $12
    inc bc                                        ; $473e: $03
    ld [de], a                                    ; $473f: $12
    ld [bc], a                                    ; $4740: $02
    ld e, $05                                     ; $4741: $1e $05
    ld [de], a                                    ; $4743: $12
    db $fd                                        ; $4744: $fd
    ld a, [bc]                                    ; $4745: $0a
    ld [bc], a                                    ; $4746: $02
    dec bc                                        ; $4747: $0b
    ld [bc], a                                    ; $4748: $02
    rst $38                                       ; $4749: $ff
    nop                                           ; $474a: $00
    rlca                                          ; $474b: $07
    inc b                                         ; $474c: $04
    ld d, e                                       ; $474d: $53
    ld b, a                                       ; $474e: $47
    ld [hl], b                                    ; $474f: $70
    ld c, e                                       ; $4750: $4b
    ld d, e                                       ; $4751: $53
    ld b, a                                       ; $4752: $47
    ld [hl], b                                    ; $4753: $70
    ld b, a                                       ; $4754: $47
    ld [hl], b                                    ; $4755: $70
    ld c, b                                       ; $4756: $48
    ld [hl], b                                    ; $4757: $70
    ld c, b                                       ; $4758: $48
    ld [hl], b                                    ; $4759: $70
    ld c, b                                       ; $475a: $48
    ld [hl], b                                    ; $475b: $70
    ld c, b                                       ; $475c: $48
    ld [hl], b                                    ; $475d: $70
    ld c, b                                       ; $475e: $48
    ld [hl], b                                    ; $475f: $70
    ld c, b                                       ; $4760: $48
    ld [hl], b                                    ; $4761: $70
    ld c, b                                       ; $4762: $48
    ld [hl], b                                    ; $4763: $70
    ld c, b                                       ; $4764: $48
    ld [hl], b                                    ; $4765: $70
    ld c, b                                       ; $4766: $48
    ld [hl], b                                    ; $4767: $70
    ld c, c                                       ; $4768: $49
    ld [hl], b                                    ; $4769: $70
    ld c, d                                       ; $476a: $4a
    nop                                           ; $476b: $00
    nop                                           ; $476c: $00
    nop                                           ; $476d: $00
    nop                                           ; $476e: $00
    nop                                           ; $476f: $00
    ld bc, $0301                                  ; $4770: $01 $01 $03
    ld [bc], a                                    ; $4773: $02
    ld b, $07                                     ; $4774: $06 $07
    ld l, e                                       ; $4776: $6b
    ld l, a                                       ; $4777: $6f
    db $dd                                        ; $4778: $dd
    cp e                                          ; $4779: $bb
    or h                                          ; $477a: $b4
    rst $38                                       ; $477b: $ff
    or e                                          ; $477c: $b3
    rst $38                                       ; $477d: $ff
    ld d, h                                       ; $477e: $54
    ld a, e                                       ; $477f: $7b
    ld d, h                                       ; $4780: $54
    ld a, e                                       ; $4781: $7b
    jr c, @+$41                                   ; $4782: $38 $3f

    rlca                                          ; $4784: $07
    rlca                                          ; $4785: $07
    ld a, [bc]                                    ; $4786: $0a
    rrca                                          ; $4787: $0f
    dec c                                         ; $4788: $0d
    dec bc                                        ; $4789: $0b
    ld [$040f], sp                                ; $478a: $08 $0f $04
    rlca                                          ; $478d: $07
    inc bc                                        ; $478e: $03
    inc bc                                        ; $478f: $03
    nop                                           ; $4790: $00
    nop                                           ; $4791: $00
    add b                                         ; $4792: $80
    add b                                         ; $4793: $80
    ret nz                                        ; $4794: $c0

    ret nz                                        ; $4795: $c0

    db $ec                                        ; $4796: $ec
    db $ec                                        ; $4797: $ec
    cp d                                          ; $4798: $ba
    or $7a                                        ; $4799: $f6 $7a
    cp $da                                        ; $479b: $fe $da
    cp $d4                                        ; $479d: $fe $d4
    db $fc                                        ; $479f: $fc
    call nc, $b8fc                                ; $47a0: $d4 $fc $b8
    ld hl, sp-$40                                 ; $47a3: $f8 $c0
    ret nz                                        ; $47a5: $c0

    ldh [$e0], a                                  ; $47a6: $e0 $e0
    ldh [$e0], a                                  ; $47a8: $e0 $e0
    and b                                         ; $47aa: $a0
    ldh [rLCDC], a                                ; $47ab: $e0 $40
    ret nz                                        ; $47ad: $c0

    add b                                         ; $47ae: $80
    add b                                         ; $47af: $80
    ld bc, $0301                                  ; $47b0: $01 $01 $03
    ld [bc], a                                    ; $47b3: $02
    ld b, $07                                     ; $47b4: $06 $07
    ld l, e                                       ; $47b6: $6b
    ld l, a                                       ; $47b7: $6f
    db $dd                                        ; $47b8: $dd
    cp e                                          ; $47b9: $bb
    or h                                          ; $47ba: $b4
    rst $38                                       ; $47bb: $ff
    or e                                          ; $47bc: $b3
    rst $38                                       ; $47bd: $ff
    ld d, h                                       ; $47be: $54
    ld a, e                                       ; $47bf: $7b
    ld d, h                                       ; $47c0: $54
    ld a, e                                       ; $47c1: $7b
    jr c, @+$41                                   ; $47c2: $38 $3f

    rlca                                          ; $47c4: $07
    rlca                                          ; $47c5: $07
    ld a, [bc]                                    ; $47c6: $0a
    rrca                                          ; $47c7: $0f
    dec c                                         ; $47c8: $0d
    dec bc                                        ; $47c9: $0b
    ld [$040f], sp                                ; $47ca: $08 $0f $04
    rlca                                          ; $47cd: $07
    inc bc                                        ; $47ce: $03
    inc bc                                        ; $47cf: $03
    nop                                           ; $47d0: $00
    nop                                           ; $47d1: $00
    add b                                         ; $47d2: $80
    add b                                         ; $47d3: $80
    ret nz                                        ; $47d4: $c0

    ret nz                                        ; $47d5: $c0

    db $ec                                        ; $47d6: $ec
    db $ec                                        ; $47d7: $ec
    cp d                                          ; $47d8: $ba
    or $7a                                        ; $47d9: $f6 $7a
    cp $da                                        ; $47db: $fe $da
    cp $d4                                        ; $47dd: $fe $d4
    db $fc                                        ; $47df: $fc
    call nc, $b8fc                                ; $47e0: $d4 $fc $b8
    ld hl, sp-$40                                 ; $47e3: $f8 $c0
    ret nz                                        ; $47e5: $c0

    ldh [$e0], a                                  ; $47e6: $e0 $e0
    ldh [$e0], a                                  ; $47e8: $e0 $e0
    and b                                         ; $47ea: $a0
    ldh [rLCDC], a                                ; $47eb: $e0 $40
    ret nz                                        ; $47ed: $c0

    add b                                         ; $47ee: $80
    add b                                         ; $47ef: $80
    ld bc, $0301                                  ; $47f0: $01 $01 $03
    ld [bc], a                                    ; $47f3: $02
    ld b, $07                                     ; $47f4: $06 $07
    ld l, e                                       ; $47f6: $6b
    ld l, a                                       ; $47f7: $6f
    db $dd                                        ; $47f8: $dd
    cp e                                          ; $47f9: $bb
    or h                                          ; $47fa: $b4
    rst $38                                       ; $47fb: $ff
    or e                                          ; $47fc: $b3
    rst $38                                       ; $47fd: $ff
    ld d, h                                       ; $47fe: $54
    ld a, e                                       ; $47ff: $7b
    ld d, h                                       ; $4800: $54
    ld a, e                                       ; $4801: $7b
    jr c, @+$41                                   ; $4802: $38 $3f

    rlca                                          ; $4804: $07
    rlca                                          ; $4805: $07
    ld a, [bc]                                    ; $4806: $0a
    rrca                                          ; $4807: $0f
    dec c                                         ; $4808: $0d
    dec bc                                        ; $4809: $0b
    ld [$040f], sp                                ; $480a: $08 $0f $04
    rlca                                          ; $480d: $07
    inc bc                                        ; $480e: $03
    inc bc                                        ; $480f: $03
    nop                                           ; $4810: $00
    nop                                           ; $4811: $00
    add b                                         ; $4812: $80
    add b                                         ; $4813: $80
    ret nz                                        ; $4814: $c0

    ret nz                                        ; $4815: $c0

    db $ec                                        ; $4816: $ec
    db $ec                                        ; $4817: $ec
    cp d                                          ; $4818: $ba
    or $7a                                        ; $4819: $f6 $7a
    cp $da                                        ; $481b: $fe $da
    cp $d4                                        ; $481d: $fe $d4
    db $fc                                        ; $481f: $fc
    call nc, $b8fc                                ; $4820: $d4 $fc $b8
    ld hl, sp-$40                                 ; $4823: $f8 $c0
    ret nz                                        ; $4825: $c0

    ldh [$e0], a                                  ; $4826: $e0 $e0
    ldh [$e0], a                                  ; $4828: $e0 $e0
    and b                                         ; $482a: $a0
    ldh [rLCDC], a                                ; $482b: $e0 $40
    ret nz                                        ; $482d: $c0

    add b                                         ; $482e: $80
    add b                                         ; $482f: $80
    ld bc, $0301                                  ; $4830: $01 $01 $03
    ld [bc], a                                    ; $4833: $02
    ld b, $07                                     ; $4834: $06 $07
    ld l, e                                       ; $4836: $6b
    ld l, a                                       ; $4837: $6f
    db $dd                                        ; $4838: $dd
    cp e                                          ; $4839: $bb
    or h                                          ; $483a: $b4
    rst $38                                       ; $483b: $ff
    or e                                          ; $483c: $b3
    rst $38                                       ; $483d: $ff
    ld d, h                                       ; $483e: $54
    ld a, e                                       ; $483f: $7b
    ld d, h                                       ; $4840: $54
    ld a, e                                       ; $4841: $7b
    jr c, @+$41                                   ; $4842: $38 $3f

    rlca                                          ; $4844: $07
    rlca                                          ; $4845: $07
    ld a, [bc]                                    ; $4846: $0a
    rrca                                          ; $4847: $0f
    dec c                                         ; $4848: $0d
    dec bc                                        ; $4849: $0b
    ld [$040f], sp                                ; $484a: $08 $0f $04
    rlca                                          ; $484d: $07
    inc bc                                        ; $484e: $03
    inc bc                                        ; $484f: $03
    nop                                           ; $4850: $00
    nop                                           ; $4851: $00
    add b                                         ; $4852: $80
    add b                                         ; $4853: $80
    ret nz                                        ; $4854: $c0

    ret nz                                        ; $4855: $c0

    db $ec                                        ; $4856: $ec
    db $ec                                        ; $4857: $ec
    cp d                                          ; $4858: $ba
    or $7a                                        ; $4859: $f6 $7a
    cp $da                                        ; $485b: $fe $da
    cp $d4                                        ; $485d: $fe $d4
    db $fc                                        ; $485f: $fc
    call nc, $b8fc                                ; $4860: $d4 $fc $b8
    ld hl, sp-$40                                 ; $4863: $f8 $c0
    ret nz                                        ; $4865: $c0

    ldh [$e0], a                                  ; $4866: $e0 $e0
    ldh [$e0], a                                  ; $4868: $e0 $e0
    and b                                         ; $486a: $a0
    ldh [rLCDC], a                                ; $486b: $e0 $40
    ret nz                                        ; $486d: $c0

    add b                                         ; $486e: $80
    add b                                         ; $486f: $80
    ld bc, $0201                                  ; $4870: $01 $01 $02
    inc bc                                        ; $4873: $03
    ld b, $07                                     ; $4874: $06 $07
    ld l, e                                       ; $4876: $6b
    ld l, a                                       ; $4877: $6f
    sbc c                                         ; $4878: $99
    rst $38                                       ; $4879: $ff
    or h                                          ; $487a: $b4
    rst $38                                       ; $487b: $ff
    or e                                          ; $487c: $b3
    rst $38                                       ; $487d: $ff
    ld d, b                                       ; $487e: $50
    ld a, a                                       ; $487f: $7f
    ld d, b                                       ; $4880: $50
    ld a, a                                       ; $4881: $7f
    jr c, @+$41                                   ; $4882: $38 $3f

    rlca                                          ; $4884: $07
    rlca                                          ; $4885: $07
    ld a, [bc]                                    ; $4886: $0a
    rrca                                          ; $4887: $0f
    add hl, bc                                    ; $4888: $09
    rrca                                          ; $4889: $0f
    ld [$040f], sp                                ; $488a: $08 $0f $04
    rlca                                          ; $488d: $07
    inc bc                                        ; $488e: $03
    inc bc                                        ; $488f: $03
    nop                                           ; $4890: $00
    nop                                           ; $4891: $00
    add b                                         ; $4892: $80
    add b                                         ; $4893: $80
    ret nz                                        ; $4894: $c0

    ret nz                                        ; $4895: $c0

    db $ec                                        ; $4896: $ec
    db $ec                                        ; $4897: $ec
    or d                                          ; $4898: $b2
    cp $7a                                        ; $4899: $fe $7a
    cp $da                                        ; $489b: $fe $da
    cp $d4                                        ; $489d: $fe $d4
    db $fc                                        ; $489f: $fc
    call nc, $b8fc                                ; $48a0: $d4 $fc $b8
    ld hl, sp-$40                                 ; $48a3: $f8 $c0
    ret nz                                        ; $48a5: $c0

    ldh [$e0], a                                  ; $48a6: $e0 $e0
    ldh [$e0], a                                  ; $48a8: $e0 $e0
    and b                                         ; $48aa: $a0
    ldh [rLCDC], a                                ; $48ab: $e0 $40
    ret nz                                        ; $48ad: $c0

    add b                                         ; $48ae: $80
    add b                                         ; $48af: $80
    ld bc, $0201                                  ; $48b0: $01 $01 $02
    inc bc                                        ; $48b3: $03
    ld b, $07                                     ; $48b4: $06 $07
    ld l, e                                       ; $48b6: $6b
    ld l, a                                       ; $48b7: $6f
    sbc c                                         ; $48b8: $99
    rst $38                                       ; $48b9: $ff
    or h                                          ; $48ba: $b4
    rst $38                                       ; $48bb: $ff
    or e                                          ; $48bc: $b3
    rst $38                                       ; $48bd: $ff
    ld d, b                                       ; $48be: $50
    ld a, a                                       ; $48bf: $7f
    ld d, b                                       ; $48c0: $50
    ld a, a                                       ; $48c1: $7f
    jr c, @+$41                                   ; $48c2: $38 $3f

    rlca                                          ; $48c4: $07
    rlca                                          ; $48c5: $07
    ld a, [bc]                                    ; $48c6: $0a
    rrca                                          ; $48c7: $0f
    add hl, bc                                    ; $48c8: $09
    rrca                                          ; $48c9: $0f
    ld [$040f], sp                                ; $48ca: $08 $0f $04
    rlca                                          ; $48cd: $07
    inc bc                                        ; $48ce: $03
    inc bc                                        ; $48cf: $03
    nop                                           ; $48d0: $00
    nop                                           ; $48d1: $00
    add b                                         ; $48d2: $80
    add b                                         ; $48d3: $80
    ret nz                                        ; $48d4: $c0

    ret nz                                        ; $48d5: $c0

    db $ec                                        ; $48d6: $ec
    db $ec                                        ; $48d7: $ec
    or d                                          ; $48d8: $b2
    cp $7a                                        ; $48d9: $fe $7a
    cp $da                                        ; $48db: $fe $da
    cp $d4                                        ; $48dd: $fe $d4
    db $fc                                        ; $48df: $fc
    call nc, $b8fc                                ; $48e0: $d4 $fc $b8
    ld hl, sp-$40                                 ; $48e3: $f8 $c0
    ret nz                                        ; $48e5: $c0

    ldh [$e0], a                                  ; $48e6: $e0 $e0
    ldh [$e0], a                                  ; $48e8: $e0 $e0
    and b                                         ; $48ea: $a0
    ldh [rLCDC], a                                ; $48eb: $e0 $40
    ret nz                                        ; $48ed: $c0

    add b                                         ; $48ee: $80
    add b                                         ; $48ef: $80
    ld bc, $0201                                  ; $48f0: $01 $01 $02
    inc bc                                        ; $48f3: $03
    ld b, $07                                     ; $48f4: $06 $07
    ld l, e                                       ; $48f6: $6b
    ld l, a                                       ; $48f7: $6f
    sbc c                                         ; $48f8: $99
    rst $38                                       ; $48f9: $ff
    or h                                          ; $48fa: $b4
    rst $38                                       ; $48fb: $ff
    or e                                          ; $48fc: $b3
    rst $38                                       ; $48fd: $ff
    ld d, b                                       ; $48fe: $50
    ld a, a                                       ; $48ff: $7f
    ld d, b                                       ; $4900: $50
    ld a, a                                       ; $4901: $7f
    jr c, @+$41                                   ; $4902: $38 $3f

    rlca                                          ; $4904: $07
    rlca                                          ; $4905: $07
    ld a, [bc]                                    ; $4906: $0a
    rrca                                          ; $4907: $0f
    add hl, bc                                    ; $4908: $09
    rrca                                          ; $4909: $0f
    ld [$040f], sp                                ; $490a: $08 $0f $04
    rlca                                          ; $490d: $07
    inc bc                                        ; $490e: $03
    inc bc                                        ; $490f: $03
    nop                                           ; $4910: $00
    nop                                           ; $4911: $00
    add b                                         ; $4912: $80
    add b                                         ; $4913: $80
    ret nz                                        ; $4914: $c0

    ret nz                                        ; $4915: $c0

    db $ec                                        ; $4916: $ec
    db $ec                                        ; $4917: $ec
    or d                                          ; $4918: $b2
    cp $7a                                        ; $4919: $fe $7a
    cp $da                                        ; $491b: $fe $da
    cp $d4                                        ; $491d: $fe $d4
    db $fc                                        ; $491f: $fc
    call nc, $b8fc                                ; $4920: $d4 $fc $b8
    ld hl, sp-$40                                 ; $4923: $f8 $c0
    ret nz                                        ; $4925: $c0

    ldh [$e0], a                                  ; $4926: $e0 $e0
    ldh [$e0], a                                  ; $4928: $e0 $e0
    and b                                         ; $492a: $a0
    ldh [rLCDC], a                                ; $492b: $e0 $40
    ret nz                                        ; $492d: $c0

    add b                                         ; $492e: $80
    add b                                         ; $492f: $80
    ld bc, $0201                                  ; $4930: $01 $01 $02
    inc bc                                        ; $4933: $03
    ld b, $07                                     ; $4934: $06 $07
    ld l, e                                       ; $4936: $6b
    ld l, a                                       ; $4937: $6f
    sbc c                                         ; $4938: $99
    rst $38                                       ; $4939: $ff
    or h                                          ; $493a: $b4
    rst $38                                       ; $493b: $ff
    or e                                          ; $493c: $b3
    rst $38                                       ; $493d: $ff
    ld d, b                                       ; $493e: $50
    ld a, a                                       ; $493f: $7f
    ld d, b                                       ; $4940: $50
    ld a, a                                       ; $4941: $7f
    jr c, jr_026_4983                             ; $4942: $38 $3f

    rlca                                          ; $4944: $07
    rlca                                          ; $4945: $07
    ld a, [bc]                                    ; $4946: $0a
    rrca                                          ; $4947: $0f
    add hl, bc                                    ; $4948: $09
    rrca                                          ; $4949: $0f
    ld [$040f], sp                                ; $494a: $08 $0f $04
    rlca                                          ; $494d: $07
    inc bc                                        ; $494e: $03
    inc bc                                        ; $494f: $03
    nop                                           ; $4950: $00
    nop                                           ; $4951: $00
    add b                                         ; $4952: $80
    add b                                         ; $4953: $80
    ret nz                                        ; $4954: $c0

    ret nz                                        ; $4955: $c0

    db $ec                                        ; $4956: $ec
    db $ec                                        ; $4957: $ec
    or d                                          ; $4958: $b2
    cp $7a                                        ; $4959: $fe $7a
    cp $da                                        ; $495b: $fe $da
    cp $d4                                        ; $495d: $fe $d4
    db $fc                                        ; $495f: $fc
    call nc, $b8fc                                ; $4960: $d4 $fc $b8
    ld hl, sp-$40                                 ; $4963: $f8 $c0
    ret nz                                        ; $4965: $c0

    ldh [$e0], a                                  ; $4966: $e0 $e0
    ldh [$e0], a                                  ; $4968: $e0 $e0
    and b                                         ; $496a: $a0
    ldh [rLCDC], a                                ; $496b: $e0 $40
    ret nz                                        ; $496d: $c0

    add b                                         ; $496e: $80
    add b                                         ; $496f: $80
    nop                                           ; $4970: $00
    nop                                           ; $4971: $00
    ld bc, $0201                                  ; $4972: $01 $01 $02
    inc bc                                        ; $4975: $03
    dec [hl]                                      ; $4976: $35
    scf                                           ; $4977: $37
    ld l, [hl]                                    ; $4978: $6e
    ld e, l                                       ; $4979: $5d
    ld e, d                                       ; $497a: $5a
    ld a, a                                       ; $497b: $7f
    ld e, c                                       ; $497c: $59
    ld a, a                                       ; $497d: $7f
    ld a, [hl+]                                   ; $497e: $2a
    dec a                                         ; $497f: $3d
    inc e                                         ; $4980: $1c
    rra                                           ; $4981: $1f
    inc bc                                        ; $4982: $03

jr_026_4983:
    inc bc                                        ; $4983: $03
    dec b                                         ; $4984: $05
    rlca                                          ; $4985: $07
    ld b, $05                                     ; $4986: $06 $05
    inc b                                         ; $4988: $04
    rlca                                          ; $4989: $07
    inc bc                                        ; $498a: $03
    inc bc                                        ; $498b: $03
    nop                                           ; $498c: $00
    nop                                           ; $498d: $00
    nop                                           ; $498e: $00
    nop                                           ; $498f: $00
    nop                                           ; $4990: $00
    nop                                           ; $4991: $00
    add b                                         ; $4992: $80
    add b                                         ; $4993: $80
    ret nz                                        ; $4994: $c0

    ret nz                                        ; $4995: $c0

    db $ec                                        ; $4996: $ec
    db $ec                                        ; $4997: $ec
    or d                                          ; $4998: $b2
    cp $5a                                        ; $4999: $fe $5a
    cp $da                                        ; $499b: $fe $da
    cp $d4                                        ; $499d: $fe $d4
    db $fc                                        ; $499f: $fc
    cp b                                          ; $49a0: $b8
    ld hl, sp-$40                                 ; $49a1: $f8 $c0
    ret nz                                        ; $49a3: $c0

    ldh [$e0], a                                  ; $49a4: $e0 $e0
    and b                                         ; $49a6: $a0
    ldh [rNR41], a                                ; $49a7: $e0 $20
    ldh [$c0], a                                  ; $49a9: $e0 $c0
    ret nz                                        ; $49ab: $c0

    nop                                           ; $49ac: $00
    nop                                           ; $49ad: $00
    nop                                           ; $49ae: $00
    nop                                           ; $49af: $00
    nop                                           ; $49b0: $00
    nop                                           ; $49b1: $00
    ld bc, $0201                                  ; $49b2: $01 $01 $02
    inc bc                                        ; $49b5: $03
    dec [hl]                                      ; $49b6: $35
    scf                                           ; $49b7: $37
    ld l, [hl]                                    ; $49b8: $6e
    ld e, l                                       ; $49b9: $5d
    ld e, d                                       ; $49ba: $5a
    ld a, a                                       ; $49bb: $7f
    ld e, c                                       ; $49bc: $59
    ld a, a                                       ; $49bd: $7f
    ld a, [hl+]                                   ; $49be: $2a
    dec a                                         ; $49bf: $3d
    inc e                                         ; $49c0: $1c
    rra                                           ; $49c1: $1f
    inc bc                                        ; $49c2: $03
    inc bc                                        ; $49c3: $03
    dec b                                         ; $49c4: $05
    rlca                                          ; $49c5: $07
    ld b, $05                                     ; $49c6: $06 $05
    inc b                                         ; $49c8: $04
    rlca                                          ; $49c9: $07
    inc bc                                        ; $49ca: $03
    inc bc                                        ; $49cb: $03
    nop                                           ; $49cc: $00
    nop                                           ; $49cd: $00
    nop                                           ; $49ce: $00
    nop                                           ; $49cf: $00
    nop                                           ; $49d0: $00
    nop                                           ; $49d1: $00
    add b                                         ; $49d2: $80
    add b                                         ; $49d3: $80
    ret nz                                        ; $49d4: $c0

    ret nz                                        ; $49d5: $c0

    db $ec                                        ; $49d6: $ec
    db $ec                                        ; $49d7: $ec
    or d                                          ; $49d8: $b2
    cp $5a                                        ; $49d9: $fe $5a
    cp $da                                        ; $49db: $fe $da
    cp $d4                                        ; $49dd: $fe $d4
    db $fc                                        ; $49df: $fc
    cp b                                          ; $49e0: $b8
    ld hl, sp-$40                                 ; $49e1: $f8 $c0
    ret nz                                        ; $49e3: $c0

    ldh [$e0], a                                  ; $49e4: $e0 $e0
    and b                                         ; $49e6: $a0
    ldh [rNR41], a                                ; $49e7: $e0 $20
    ldh [$c0], a                                  ; $49e9: $e0 $c0
    ret nz                                        ; $49eb: $c0

    nop                                           ; $49ec: $00
    nop                                           ; $49ed: $00
    nop                                           ; $49ee: $00
    nop                                           ; $49ef: $00
    nop                                           ; $49f0: $00
    nop                                           ; $49f1: $00
    ld bc, $0201                                  ; $49f2: $01 $01 $02
    inc bc                                        ; $49f5: $03
    dec [hl]                                      ; $49f6: $35
    scf                                           ; $49f7: $37
    ld l, [hl]                                    ; $49f8: $6e
    ld e, l                                       ; $49f9: $5d
    ld e, d                                       ; $49fa: $5a
    ld a, a                                       ; $49fb: $7f
    ld e, c                                       ; $49fc: $59
    ld a, a                                       ; $49fd: $7f
    ld a, [hl+]                                   ; $49fe: $2a
    dec a                                         ; $49ff: $3d
    inc e                                         ; $4a00: $1c
    rra                                           ; $4a01: $1f
    inc bc                                        ; $4a02: $03
    inc bc                                        ; $4a03: $03
    dec b                                         ; $4a04: $05
    rlca                                          ; $4a05: $07
    ld b, $05                                     ; $4a06: $06 $05
    inc b                                         ; $4a08: $04
    rlca                                          ; $4a09: $07
    inc bc                                        ; $4a0a: $03
    inc bc                                        ; $4a0b: $03
    nop                                           ; $4a0c: $00
    nop                                           ; $4a0d: $00
    nop                                           ; $4a0e: $00
    nop                                           ; $4a0f: $00
    nop                                           ; $4a10: $00
    nop                                           ; $4a11: $00
    add b                                         ; $4a12: $80
    add b                                         ; $4a13: $80
    ret nz                                        ; $4a14: $c0

    ret nz                                        ; $4a15: $c0

    db $ec                                        ; $4a16: $ec
    db $ec                                        ; $4a17: $ec
    or d                                          ; $4a18: $b2
    cp $5a                                        ; $4a19: $fe $5a
    cp $da                                        ; $4a1b: $fe $da
    cp $d4                                        ; $4a1d: $fe $d4
    db $fc                                        ; $4a1f: $fc
    cp b                                          ; $4a20: $b8
    ld hl, sp-$40                                 ; $4a21: $f8 $c0
    ret nz                                        ; $4a23: $c0

    ldh [$e0], a                                  ; $4a24: $e0 $e0
    and b                                         ; $4a26: $a0
    ldh [rNR41], a                                ; $4a27: $e0 $20
    ldh [$c0], a                                  ; $4a29: $e0 $c0
    ret nz                                        ; $4a2b: $c0

    nop                                           ; $4a2c: $00
    nop                                           ; $4a2d: $00
    nop                                           ; $4a2e: $00
    nop                                           ; $4a2f: $00
    nop                                           ; $4a30: $00
    nop                                           ; $4a31: $00
    ld bc, $0201                                  ; $4a32: $01 $01 $02
    inc bc                                        ; $4a35: $03
    dec [hl]                                      ; $4a36: $35
    scf                                           ; $4a37: $37
    ld l, [hl]                                    ; $4a38: $6e
    ld e, l                                       ; $4a39: $5d
    ld e, d                                       ; $4a3a: $5a
    ld a, a                                       ; $4a3b: $7f
    ld e, c                                       ; $4a3c: $59
    ld a, a                                       ; $4a3d: $7f
    ld a, [hl+]                                   ; $4a3e: $2a
    dec a                                         ; $4a3f: $3d
    inc e                                         ; $4a40: $1c
    rra                                           ; $4a41: $1f
    inc bc                                        ; $4a42: $03
    inc bc                                        ; $4a43: $03
    dec b                                         ; $4a44: $05
    rlca                                          ; $4a45: $07
    ld b, $05                                     ; $4a46: $06 $05
    inc b                                         ; $4a48: $04
    rlca                                          ; $4a49: $07
    inc bc                                        ; $4a4a: $03
    inc bc                                        ; $4a4b: $03
    nop                                           ; $4a4c: $00
    nop                                           ; $4a4d: $00
    nop                                           ; $4a4e: $00
    nop                                           ; $4a4f: $00
    nop                                           ; $4a50: $00
    nop                                           ; $4a51: $00
    add b                                         ; $4a52: $80
    add b                                         ; $4a53: $80
    ret nz                                        ; $4a54: $c0

    ret nz                                        ; $4a55: $c0

    db $ec                                        ; $4a56: $ec
    db $ec                                        ; $4a57: $ec
    or d                                          ; $4a58: $b2
    cp $5a                                        ; $4a59: $fe $5a
    cp $da                                        ; $4a5b: $fe $da
    cp $d4                                        ; $4a5d: $fe $d4
    db $fc                                        ; $4a5f: $fc
    cp b                                          ; $4a60: $b8
    ld hl, sp-$40                                 ; $4a61: $f8 $c0
    ret nz                                        ; $4a63: $c0

    ldh [$e0], a                                  ; $4a64: $e0 $e0
    and b                                         ; $4a66: $a0
    ldh [rNR41], a                                ; $4a67: $e0 $20
    ldh [$c0], a                                  ; $4a69: $e0 $c0
    ret nz                                        ; $4a6b: $c0

    nop                                           ; $4a6c: $00
    nop                                           ; $4a6d: $00
    nop                                           ; $4a6e: $00
    nop                                           ; $4a6f: $00
    nop                                           ; $4a70: $00
    nop                                           ; $4a71: $00
    ld bc, $0201                                  ; $4a72: $01 $01 $02
    inc bc                                        ; $4a75: $03
    dec [hl]                                      ; $4a76: $35
    scf                                           ; $4a77: $37
    ld c, h                                       ; $4a78: $4c
    ld a, a                                       ; $4a79: $7f
    ld e, d                                       ; $4a7a: $5a
    ld a, a                                       ; $4a7b: $7f
    ld e, c                                       ; $4a7c: $59
    ld a, a                                       ; $4a7d: $7f
    jr z, @+$41                                   ; $4a7e: $28 $3f

    inc e                                         ; $4a80: $1c
    rra                                           ; $4a81: $1f
    inc bc                                        ; $4a82: $03
    inc bc                                        ; $4a83: $03
    dec b                                         ; $4a84: $05
    rlca                                          ; $4a85: $07
    inc b                                         ; $4a86: $04
    rlca                                          ; $4a87: $07
    inc b                                         ; $4a88: $04
    rlca                                          ; $4a89: $07
    inc bc                                        ; $4a8a: $03
    inc bc                                        ; $4a8b: $03
    nop                                           ; $4a8c: $00
    nop                                           ; $4a8d: $00
    nop                                           ; $4a8e: $00
    nop                                           ; $4a8f: $00
    nop                                           ; $4a90: $00
    nop                                           ; $4a91: $00
    add b                                         ; $4a92: $80
    add b                                         ; $4a93: $80
    ret nz                                        ; $4a94: $c0

    ret nz                                        ; $4a95: $c0

    db $ec                                        ; $4a96: $ec
    db $ec                                        ; $4a97: $ec
    or d                                          ; $4a98: $b2
    cp $5a                                        ; $4a99: $fe $5a
    cp $da                                        ; $4a9b: $fe $da
    cp $d4                                        ; $4a9d: $fe $d4
    db $fc                                        ; $4a9f: $fc
    cp b                                          ; $4aa0: $b8
    ld hl, sp-$40                                 ; $4aa1: $f8 $c0
    ret nz                                        ; $4aa3: $c0

    ldh [$e0], a                                  ; $4aa4: $e0 $e0
    and b                                         ; $4aa6: $a0
    ldh [rNR41], a                                ; $4aa7: $e0 $20
    ldh [$c0], a                                  ; $4aa9: $e0 $c0
    ret nz                                        ; $4aab: $c0

    nop                                           ; $4aac: $00
    nop                                           ; $4aad: $00
    nop                                           ; $4aae: $00
    nop                                           ; $4aaf: $00
    nop                                           ; $4ab0: $00
    nop                                           ; $4ab1: $00
    ld bc, $0201                                  ; $4ab2: $01 $01 $02
    inc bc                                        ; $4ab5: $03
    dec [hl]                                      ; $4ab6: $35
    scf                                           ; $4ab7: $37
    ld c, h                                       ; $4ab8: $4c
    ld a, a                                       ; $4ab9: $7f
    ld e, d                                       ; $4aba: $5a
    ld a, a                                       ; $4abb: $7f
    ld e, c                                       ; $4abc: $59
    ld a, a                                       ; $4abd: $7f
    jr z, @+$41                                   ; $4abe: $28 $3f

    inc e                                         ; $4ac0: $1c
    rra                                           ; $4ac1: $1f
    inc bc                                        ; $4ac2: $03
    inc bc                                        ; $4ac3: $03
    dec b                                         ; $4ac4: $05
    rlca                                          ; $4ac5: $07
    inc b                                         ; $4ac6: $04
    rlca                                          ; $4ac7: $07
    inc b                                         ; $4ac8: $04
    rlca                                          ; $4ac9: $07
    inc bc                                        ; $4aca: $03
    inc bc                                        ; $4acb: $03
    nop                                           ; $4acc: $00
    nop                                           ; $4acd: $00
    nop                                           ; $4ace: $00
    nop                                           ; $4acf: $00
    nop                                           ; $4ad0: $00
    nop                                           ; $4ad1: $00
    add b                                         ; $4ad2: $80
    add b                                         ; $4ad3: $80
    ret nz                                        ; $4ad4: $c0

    ret nz                                        ; $4ad5: $c0

    db $ec                                        ; $4ad6: $ec
    db $ec                                        ; $4ad7: $ec
    or d                                          ; $4ad8: $b2
    cp $5a                                        ; $4ad9: $fe $5a
    cp $da                                        ; $4adb: $fe $da
    cp $d4                                        ; $4add: $fe $d4
    db $fc                                        ; $4adf: $fc
    cp b                                          ; $4ae0: $b8
    ld hl, sp-$40                                 ; $4ae1: $f8 $c0
    ret nz                                        ; $4ae3: $c0

    ldh [$e0], a                                  ; $4ae4: $e0 $e0
    and b                                         ; $4ae6: $a0
    ldh [rNR41], a                                ; $4ae7: $e0 $20
    ldh [$c0], a                                  ; $4ae9: $e0 $c0
    ret nz                                        ; $4aeb: $c0

    nop                                           ; $4aec: $00
    nop                                           ; $4aed: $00
    nop                                           ; $4aee: $00
    nop                                           ; $4aef: $00
    nop                                           ; $4af0: $00
    nop                                           ; $4af1: $00
    ld bc, $0201                                  ; $4af2: $01 $01 $02
    inc bc                                        ; $4af5: $03
    dec [hl]                                      ; $4af6: $35
    scf                                           ; $4af7: $37
    ld c, h                                       ; $4af8: $4c
    ld a, a                                       ; $4af9: $7f
    ld e, d                                       ; $4afa: $5a
    ld a, a                                       ; $4afb: $7f
    ld e, c                                       ; $4afc: $59
    ld a, a                                       ; $4afd: $7f
    jr z, @+$41                                   ; $4afe: $28 $3f

    inc e                                         ; $4b00: $1c
    rra                                           ; $4b01: $1f
    inc bc                                        ; $4b02: $03
    inc bc                                        ; $4b03: $03
    dec b                                         ; $4b04: $05
    rlca                                          ; $4b05: $07
    inc b                                         ; $4b06: $04
    rlca                                          ; $4b07: $07
    inc b                                         ; $4b08: $04
    rlca                                          ; $4b09: $07
    inc bc                                        ; $4b0a: $03
    inc bc                                        ; $4b0b: $03
    nop                                           ; $4b0c: $00
    nop                                           ; $4b0d: $00
    nop                                           ; $4b0e: $00
    nop                                           ; $4b0f: $00
    nop                                           ; $4b10: $00
    nop                                           ; $4b11: $00
    add b                                         ; $4b12: $80
    add b                                         ; $4b13: $80
    ret nz                                        ; $4b14: $c0

    ret nz                                        ; $4b15: $c0

    db $ec                                        ; $4b16: $ec
    db $ec                                        ; $4b17: $ec
    or d                                          ; $4b18: $b2
    cp $5a                                        ; $4b19: $fe $5a
    cp $da                                        ; $4b1b: $fe $da
    cp $d4                                        ; $4b1d: $fe $d4
    db $fc                                        ; $4b1f: $fc
    cp b                                          ; $4b20: $b8
    ld hl, sp-$40                                 ; $4b21: $f8 $c0
    ret nz                                        ; $4b23: $c0

    ldh [$e0], a                                  ; $4b24: $e0 $e0
    and b                                         ; $4b26: $a0
    ldh [rNR41], a                                ; $4b27: $e0 $20
    ldh [$c0], a                                  ; $4b29: $e0 $c0
    ret nz                                        ; $4b2b: $c0

    nop                                           ; $4b2c: $00
    nop                                           ; $4b2d: $00
    nop                                           ; $4b2e: $00
    nop                                           ; $4b2f: $00
    nop                                           ; $4b30: $00
    nop                                           ; $4b31: $00
    ld bc, $0201                                  ; $4b32: $01 $01 $02
    inc bc                                        ; $4b35: $03
    dec [hl]                                      ; $4b36: $35
    scf                                           ; $4b37: $37
    ld c, h                                       ; $4b38: $4c
    ld a, a                                       ; $4b39: $7f
    ld e, d                                       ; $4b3a: $5a
    ld a, a                                       ; $4b3b: $7f
    ld e, c                                       ; $4b3c: $59
    ld a, a                                       ; $4b3d: $7f
    jr z, jr_026_4b7f                             ; $4b3e: $28 $3f

    inc e                                         ; $4b40: $1c
    rra                                           ; $4b41: $1f
    inc bc                                        ; $4b42: $03
    inc bc                                        ; $4b43: $03
    dec b                                         ; $4b44: $05
    rlca                                          ; $4b45: $07
    inc b                                         ; $4b46: $04
    rlca                                          ; $4b47: $07
    inc b                                         ; $4b48: $04
    rlca                                          ; $4b49: $07
    inc bc                                        ; $4b4a: $03
    inc bc                                        ; $4b4b: $03
    nop                                           ; $4b4c: $00
    nop                                           ; $4b4d: $00
    nop                                           ; $4b4e: $00
    nop                                           ; $4b4f: $00
    nop                                           ; $4b50: $00
    nop                                           ; $4b51: $00
    add b                                         ; $4b52: $80
    add b                                         ; $4b53: $80
    ret nz                                        ; $4b54: $c0

    ret nz                                        ; $4b55: $c0

    db $ec                                        ; $4b56: $ec
    db $ec                                        ; $4b57: $ec
    or d                                          ; $4b58: $b2
    cp $5a                                        ; $4b59: $fe $5a
    cp $da                                        ; $4b5b: $fe $da
    cp $d4                                        ; $4b5d: $fe $d4
    db $fc                                        ; $4b5f: $fc
    cp b                                          ; $4b60: $b8
    ld hl, sp-$40                                 ; $4b61: $f8 $c0
    ret nz                                        ; $4b63: $c0

    ldh [$e0], a                                  ; $4b64: $e0 $e0
    and b                                         ; $4b66: $a0
    ldh [rNR41], a                                ; $4b67: $e0 $20
    ldh [$c0], a                                  ; $4b69: $e0 $c0
    ret nz                                        ; $4b6b: $c0

    nop                                           ; $4b6c: $00
    nop                                           ; $4b6d: $00
    nop                                           ; $4b6e: $00
    nop                                           ; $4b6f: $00
    add [hl]                                      ; $4b70: $86
    ld c, e                                       ; $4b71: $4b
    adc c                                         ; $4b72: $89
    ld c, e                                       ; $4b73: $4b
    adc a                                         ; $4b74: $8f
    ld c, e                                       ; $4b75: $4b
    sub d                                         ; $4b76: $92
    ld c, e                                       ; $4b77: $4b
    sbc l                                         ; $4b78: $9d
    ld c, e                                       ; $4b79: $4b
    and h                                         ; $4b7a: $a4
    ld c, e                                       ; $4b7b: $4b
    xor h                                         ; $4b7c: $ac
    ld c, e                                       ; $4b7d: $4b
    ret nz                                        ; $4b7e: $c0

jr_026_4b7f:
    ld c, e                                       ; $4b7f: $4b
    call z, $864b                                 ; $4b80: $cc $4b $86
    ld c, e                                       ; $4b83: $4b
    push de                                       ; $4b84: $d5
    ld c, e                                       ; $4b85: $4b
    nop                                           ; $4b86: $00
    rst $38                                       ; $4b87: $ff
    db $fd                                        ; $4b88: $fd
    nop                                           ; $4b89: $00
    ld [bc], a                                    ; $4b8a: $02
    ld bc, $ff02                                  ; $4b8b: $01 $02 $ff
    nop                                           ; $4b8e: $00
    ld [bc], a                                    ; $4b8f: $02
    rst $38                                       ; $4b90: $ff
    db $fd                                        ; $4b91: $fd
    ld [bc], a                                    ; $4b92: $02
    inc c                                         ; $4b93: $0c
    inc bc                                        ; $4b94: $03
    inc c                                         ; $4b95: $0c
    inc b                                         ; $4b96: $04
    jr jr_026_4b9b                                ; $4b97: $18 $02

    inc c                                         ; $4b99: $0c
    dec b                                         ; $4b9a: $05

jr_026_4b9b:
    inc c                                         ; $4b9b: $0c
    db $fd                                        ; $4b9c: $fd
    ld [bc], a                                    ; $4b9d: $02
    jr @+$05                                      ; $4b9e: $18 $03

    jr jr_026_4ba4                                ; $4ba0: $18 $02

    jr @-$01                                      ; $4ba2: $18 $fd

jr_026_4ba4:
    nop                                           ; $4ba4: $00
    ld a, [bc]                                    ; $4ba5: $0a
    ld b, $1e                                     ; $4ba6: $06 $1e
    nop                                           ; $4ba8: $00
    ld a, [bc]                                    ; $4ba9: $0a
    cp $01                                        ; $4baa: $fe $01
    nop                                           ; $4bac: $00
    ld a, [bc]                                    ; $4bad: $0a
    rlca                                          ; $4bae: $07
    ld a, [bc]                                    ; $4baf: $0a
    nop                                           ; $4bb0: $00
    inc bc                                        ; $4bb1: $03
    ld [$000a], sp                                ; $4bb2: $08 $0a $00
    inc bc                                        ; $4bb5: $03
    rlca                                          ; $4bb6: $07
    ld a, [bc]                                    ; $4bb7: $0a
    nop                                           ; $4bb8: $00
    inc bc                                        ; $4bb9: $03
    ld [$000a], sp                                ; $4bba: $08 $0a $00
    ld a, [bc]                                    ; $4bbd: $0a
    cp $01                                        ; $4bbe: $fe $01
    nop                                           ; $4bc0: $00
    ld a, [bc]                                    ; $4bc1: $0a
    add hl, bc                                    ; $4bc2: $09
    ld [$0800], sp                                ; $4bc3: $08 $00 $08
    add hl, bc                                    ; $4bc6: $09
    ld [$0a00], sp                                ; $4bc7: $08 $00 $0a
    cp $01                                        ; $4bca: $fe $01
    ld [bc], a                                    ; $4bcc: $02
    ld [de], a                                    ; $4bcd: $12
    inc bc                                        ; $4bce: $03
    ld [de], a                                    ; $4bcf: $12
    ld [bc], a                                    ; $4bd0: $02
    ld e, $05                                     ; $4bd1: $1e $05
    ld [de], a                                    ; $4bd3: $12
    db $fd                                        ; $4bd4: $fd
    ld a, [bc]                                    ; $4bd5: $0a
    ld [bc], a                                    ; $4bd6: $02
    dec bc                                        ; $4bd7: $0b
    ld [bc], a                                    ; $4bd8: $02
    rst $38                                       ; $4bd9: $ff
    nop                                           ; $4bda: $00
    inc b                                         ; $4bdb: $04
    inc b                                         ; $4bdc: $04
    db $e3                                        ; $4bdd: $e3
    ld c, e                                       ; $4bde: $4b
    nop                                           ; $4bdf: $00
    ld d, b                                       ; $4be0: $50
    db $e3                                        ; $4be1: $e3
    ld c, e                                       ; $4be2: $4b
    nop                                           ; $4be3: $00
    ld c, h                                       ; $4be4: $4c
    nop                                           ; $4be5: $00
    ld c, l                                       ; $4be6: $4d
    nop                                           ; $4be7: $00
    ld c, l                                       ; $4be8: $4d
    nop                                           ; $4be9: $00
    ld c, l                                       ; $4bea: $4d
    nop                                           ; $4beb: $00
    ld c, l                                       ; $4bec: $4d
    nop                                           ; $4bed: $00
    ld c, l                                       ; $4bee: $4d
    nop                                           ; $4bef: $00
    ld c, l                                       ; $4bf0: $4d
    nop                                           ; $4bf1: $00
    ld c, l                                       ; $4bf2: $4d
    nop                                           ; $4bf3: $00
    ld c, l                                       ; $4bf4: $4d
    nop                                           ; $4bf5: $00
    ld c, l                                       ; $4bf6: $4d
    nop                                           ; $4bf7: $00
    ld c, [hl]                                    ; $4bf8: $4e
    nop                                           ; $4bf9: $00
    ld c, a                                       ; $4bfa: $4f
    nop                                           ; $4bfb: $00
    nop                                           ; $4bfc: $00
    nop                                           ; $4bfd: $00
    nop                                           ; $4bfe: $00
    nop                                           ; $4bff: $00
    ld bc, $0301                                  ; $4c00: $01 $01 $03
    ld [bc], a                                    ; $4c03: $02
    ld b, $07                                     ; $4c04: $06 $07
    ld l, e                                       ; $4c06: $6b
    ld l, a                                       ; $4c07: $6f
    db $dd                                        ; $4c08: $dd
    cp e                                          ; $4c09: $bb
    or h                                          ; $4c0a: $b4
    rst $38                                       ; $4c0b: $ff
    or e                                          ; $4c0c: $b3
    rst $38                                       ; $4c0d: $ff
    ld d, h                                       ; $4c0e: $54
    ld a, e                                       ; $4c0f: $7b
    ld d, h                                       ; $4c10: $54
    ld a, e                                       ; $4c11: $7b
    jr c, @+$41                                   ; $4c12: $38 $3f

    rlca                                          ; $4c14: $07
    rlca                                          ; $4c15: $07
    ld a, [bc]                                    ; $4c16: $0a
    rrca                                          ; $4c17: $0f
    dec c                                         ; $4c18: $0d
    dec bc                                        ; $4c19: $0b
    ld [$040f], sp                                ; $4c1a: $08 $0f $04
    rlca                                          ; $4c1d: $07
    inc bc                                        ; $4c1e: $03
    inc bc                                        ; $4c1f: $03
    nop                                           ; $4c20: $00
    nop                                           ; $4c21: $00
    add b                                         ; $4c22: $80
    add b                                         ; $4c23: $80
    ret nz                                        ; $4c24: $c0

    ret nz                                        ; $4c25: $c0

    db $ec                                        ; $4c26: $ec
    db $ec                                        ; $4c27: $ec
    cp d                                          ; $4c28: $ba
    or $7a                                        ; $4c29: $f6 $7a
    cp $da                                        ; $4c2b: $fe $da
    cp $d4                                        ; $4c2d: $fe $d4
    db $fc                                        ; $4c2f: $fc
    call nc, $b8fc                                ; $4c30: $d4 $fc $b8
    ld hl, sp-$40                                 ; $4c33: $f8 $c0
    ret nz                                        ; $4c35: $c0

    ldh [$e0], a                                  ; $4c36: $e0 $e0
    ldh [$e0], a                                  ; $4c38: $e0 $e0
    and b                                         ; $4c3a: $a0
    ldh [rLCDC], a                                ; $4c3b: $e0 $40
    ret nz                                        ; $4c3d: $c0

    add b                                         ; $4c3e: $80
    add b                                         ; $4c3f: $80
    ld bc, $0301                                  ; $4c40: $01 $01 $03
    ld [bc], a                                    ; $4c43: $02
    ld b, $07                                     ; $4c44: $06 $07
    ld l, e                                       ; $4c46: $6b
    ld l, a                                       ; $4c47: $6f
    db $dd                                        ; $4c48: $dd
    cp e                                          ; $4c49: $bb
    or h                                          ; $4c4a: $b4
    rst $38                                       ; $4c4b: $ff
    or e                                          ; $4c4c: $b3
    rst $38                                       ; $4c4d: $ff
    ld d, h                                       ; $4c4e: $54
    ld a, e                                       ; $4c4f: $7b
    ld d, h                                       ; $4c50: $54
    ld a, e                                       ; $4c51: $7b
    jr c, @+$41                                   ; $4c52: $38 $3f

    rlca                                          ; $4c54: $07
    rlca                                          ; $4c55: $07
    ld a, [bc]                                    ; $4c56: $0a
    rrca                                          ; $4c57: $0f
    dec c                                         ; $4c58: $0d
    dec bc                                        ; $4c59: $0b
    ld [$040f], sp                                ; $4c5a: $08 $0f $04
    rlca                                          ; $4c5d: $07
    inc bc                                        ; $4c5e: $03
    inc bc                                        ; $4c5f: $03
    nop                                           ; $4c60: $00
    nop                                           ; $4c61: $00
    add b                                         ; $4c62: $80
    add b                                         ; $4c63: $80
    ret nz                                        ; $4c64: $c0

    ret nz                                        ; $4c65: $c0

    db $ec                                        ; $4c66: $ec
    db $ec                                        ; $4c67: $ec
    cp d                                          ; $4c68: $ba
    or $7a                                        ; $4c69: $f6 $7a
    cp $da                                        ; $4c6b: $fe $da
    cp $d4                                        ; $4c6d: $fe $d4
    db $fc                                        ; $4c6f: $fc
    call nc, $b8fc                                ; $4c70: $d4 $fc $b8
    ld hl, sp-$40                                 ; $4c73: $f8 $c0
    ret nz                                        ; $4c75: $c0

    ldh [$e0], a                                  ; $4c76: $e0 $e0
    ldh [$e0], a                                  ; $4c78: $e0 $e0
    and b                                         ; $4c7a: $a0
    ldh [rLCDC], a                                ; $4c7b: $e0 $40
    ret nz                                        ; $4c7d: $c0

    add b                                         ; $4c7e: $80
    add b                                         ; $4c7f: $80
    ld bc, $0301                                  ; $4c80: $01 $01 $03
    ld [bc], a                                    ; $4c83: $02
    ld b, $07                                     ; $4c84: $06 $07
    ld l, e                                       ; $4c86: $6b
    ld l, a                                       ; $4c87: $6f
    db $dd                                        ; $4c88: $dd
    cp e                                          ; $4c89: $bb
    or h                                          ; $4c8a: $b4
    rst $38                                       ; $4c8b: $ff
    or e                                          ; $4c8c: $b3
    rst $38                                       ; $4c8d: $ff
    ld d, h                                       ; $4c8e: $54
    ld a, e                                       ; $4c8f: $7b
    ld d, h                                       ; $4c90: $54
    ld a, e                                       ; $4c91: $7b
    jr c, @+$41                                   ; $4c92: $38 $3f

    rlca                                          ; $4c94: $07
    rlca                                          ; $4c95: $07
    ld a, [bc]                                    ; $4c96: $0a
    rrca                                          ; $4c97: $0f
    dec c                                         ; $4c98: $0d
    dec bc                                        ; $4c99: $0b
    ld [$040f], sp                                ; $4c9a: $08 $0f $04
    rlca                                          ; $4c9d: $07
    inc bc                                        ; $4c9e: $03
    inc bc                                        ; $4c9f: $03
    nop                                           ; $4ca0: $00
    nop                                           ; $4ca1: $00
    add b                                         ; $4ca2: $80
    add b                                         ; $4ca3: $80
    ret nz                                        ; $4ca4: $c0

    ret nz                                        ; $4ca5: $c0

    db $ec                                        ; $4ca6: $ec
    db $ec                                        ; $4ca7: $ec
    cp d                                          ; $4ca8: $ba
    or $7a                                        ; $4ca9: $f6 $7a
    cp $da                                        ; $4cab: $fe $da
    cp $d4                                        ; $4cad: $fe $d4
    db $fc                                        ; $4caf: $fc
    call nc, $b8fc                                ; $4cb0: $d4 $fc $b8
    ld hl, sp-$40                                 ; $4cb3: $f8 $c0
    ret nz                                        ; $4cb5: $c0

    ldh [$e0], a                                  ; $4cb6: $e0 $e0
    ldh [$e0], a                                  ; $4cb8: $e0 $e0
    and b                                         ; $4cba: $a0
    ldh [rLCDC], a                                ; $4cbb: $e0 $40
    ret nz                                        ; $4cbd: $c0

    add b                                         ; $4cbe: $80
    add b                                         ; $4cbf: $80
    ld bc, $0301                                  ; $4cc0: $01 $01 $03
    ld [bc], a                                    ; $4cc3: $02
    ld b, $07                                     ; $4cc4: $06 $07
    ld l, e                                       ; $4cc6: $6b
    ld l, a                                       ; $4cc7: $6f
    db $dd                                        ; $4cc8: $dd
    cp e                                          ; $4cc9: $bb
    or h                                          ; $4cca: $b4
    rst $38                                       ; $4ccb: $ff
    or e                                          ; $4ccc: $b3
    rst $38                                       ; $4ccd: $ff
    ld d, h                                       ; $4cce: $54
    ld a, e                                       ; $4ccf: $7b
    ld d, h                                       ; $4cd0: $54
    ld a, e                                       ; $4cd1: $7b
    jr c, @+$41                                   ; $4cd2: $38 $3f

    rlca                                          ; $4cd4: $07
    rlca                                          ; $4cd5: $07
    ld a, [bc]                                    ; $4cd6: $0a
    rrca                                          ; $4cd7: $0f
    dec c                                         ; $4cd8: $0d
    dec bc                                        ; $4cd9: $0b
    ld [$040f], sp                                ; $4cda: $08 $0f $04
    rlca                                          ; $4cdd: $07
    inc bc                                        ; $4cde: $03

Call_026_4cdf:
    inc bc                                        ; $4cdf: $03
    nop                                           ; $4ce0: $00
    nop                                           ; $4ce1: $00
    add b                                         ; $4ce2: $80
    add b                                         ; $4ce3: $80
    ret nz                                        ; $4ce4: $c0

    ret nz                                        ; $4ce5: $c0

    db $ec                                        ; $4ce6: $ec
    db $ec                                        ; $4ce7: $ec
    cp d                                          ; $4ce8: $ba
    or $7a                                        ; $4ce9: $f6 $7a
    cp $da                                        ; $4ceb: $fe $da
    cp $d4                                        ; $4ced: $fe $d4
    db $fc                                        ; $4cef: $fc
    call nc, $b8fc                                ; $4cf0: $d4 $fc $b8
    ld hl, sp-$40                                 ; $4cf3: $f8 $c0
    ret nz                                        ; $4cf5: $c0

    ldh [$e0], a                                  ; $4cf6: $e0 $e0
    ldh [$e0], a                                  ; $4cf8: $e0 $e0
    and b                                         ; $4cfa: $a0
    ldh [rLCDC], a                                ; $4cfb: $e0 $40
    ret nz                                        ; $4cfd: $c0

    add b                                         ; $4cfe: $80
    add b                                         ; $4cff: $80
    ld bc, $0201                                  ; $4d00: $01 $01 $02
    inc bc                                        ; $4d03: $03
    ld b, $07                                     ; $4d04: $06 $07
    ld l, e                                       ; $4d06: $6b
    ld l, a                                       ; $4d07: $6f
    sbc c                                         ; $4d08: $99
    rst $38                                       ; $4d09: $ff
    or h                                          ; $4d0a: $b4
    rst $38                                       ; $4d0b: $ff
    or e                                          ; $4d0c: $b3
    rst $38                                       ; $4d0d: $ff
    ld d, b                                       ; $4d0e: $50
    ld a, a                                       ; $4d0f: $7f
    ld d, b                                       ; $4d10: $50
    ld a, a                                       ; $4d11: $7f
    jr c, @+$41                                   ; $4d12: $38 $3f

    rlca                                          ; $4d14: $07
    rlca                                          ; $4d15: $07
    ld a, [bc]                                    ; $4d16: $0a
    rrca                                          ; $4d17: $0f
    add hl, bc                                    ; $4d18: $09
    rrca                                          ; $4d19: $0f
    ld [$040f], sp                                ; $4d1a: $08 $0f $04
    rlca                                          ; $4d1d: $07
    inc bc                                        ; $4d1e: $03
    inc bc                                        ; $4d1f: $03
    nop                                           ; $4d20: $00
    nop                                           ; $4d21: $00
    add b                                         ; $4d22: $80
    add b                                         ; $4d23: $80
    ret nz                                        ; $4d24: $c0

    ret nz                                        ; $4d25: $c0

    db $ec                                        ; $4d26: $ec
    db $ec                                        ; $4d27: $ec
    or d                                          ; $4d28: $b2
    cp $7a                                        ; $4d29: $fe $7a
    cp $da                                        ; $4d2b: $fe $da
    cp $d4                                        ; $4d2d: $fe $d4
    db $fc                                        ; $4d2f: $fc
    call nc, $b8fc                                ; $4d30: $d4 $fc $b8
    ld hl, sp-$40                                 ; $4d33: $f8 $c0
    ret nz                                        ; $4d35: $c0

    ldh [$e0], a                                  ; $4d36: $e0 $e0
    ldh [$e0], a                                  ; $4d38: $e0 $e0
    and b                                         ; $4d3a: $a0
    ldh [rLCDC], a                                ; $4d3b: $e0 $40
    ret nz                                        ; $4d3d: $c0

    add b                                         ; $4d3e: $80
    add b                                         ; $4d3f: $80
    ld bc, $0201                                  ; $4d40: $01 $01 $02
    inc bc                                        ; $4d43: $03
    ld b, $07                                     ; $4d44: $06 $07
    ld l, e                                       ; $4d46: $6b
    ld l, a                                       ; $4d47: $6f
    sbc c                                         ; $4d48: $99
    rst $38                                       ; $4d49: $ff
    or h                                          ; $4d4a: $b4
    rst $38                                       ; $4d4b: $ff
    or e                                          ; $4d4c: $b3
    rst $38                                       ; $4d4d: $ff
    ld d, b                                       ; $4d4e: $50
    ld a, a                                       ; $4d4f: $7f
    ld d, b                                       ; $4d50: $50
    ld a, a                                       ; $4d51: $7f
    jr c, @+$41                                   ; $4d52: $38 $3f

    rlca                                          ; $4d54: $07
    rlca                                          ; $4d55: $07
    ld a, [bc]                                    ; $4d56: $0a
    rrca                                          ; $4d57: $0f
    add hl, bc                                    ; $4d58: $09
    rrca                                          ; $4d59: $0f
    ld [$040f], sp                                ; $4d5a: $08 $0f $04
    rlca                                          ; $4d5d: $07
    inc bc                                        ; $4d5e: $03
    inc bc                                        ; $4d5f: $03
    nop                                           ; $4d60: $00
    nop                                           ; $4d61: $00
    add b                                         ; $4d62: $80
    add b                                         ; $4d63: $80
    ret nz                                        ; $4d64: $c0

    ret nz                                        ; $4d65: $c0

    db $ec                                        ; $4d66: $ec
    db $ec                                        ; $4d67: $ec
    or d                                          ; $4d68: $b2
    cp $7a                                        ; $4d69: $fe $7a
    cp $da                                        ; $4d6b: $fe $da
    cp $d4                                        ; $4d6d: $fe $d4
    db $fc                                        ; $4d6f: $fc
    call nc, $b8fc                                ; $4d70: $d4 $fc $b8
    ld hl, sp-$40                                 ; $4d73: $f8 $c0
    ret nz                                        ; $4d75: $c0

    ldh [$e0], a                                  ; $4d76: $e0 $e0
    ldh [$e0], a                                  ; $4d78: $e0 $e0
    and b                                         ; $4d7a: $a0
    ldh [rLCDC], a                                ; $4d7b: $e0 $40
    ret nz                                        ; $4d7d: $c0

    add b                                         ; $4d7e: $80
    add b                                         ; $4d7f: $80
    ld bc, $0201                                  ; $4d80: $01 $01 $02
    inc bc                                        ; $4d83: $03
    ld b, $07                                     ; $4d84: $06 $07
    ld l, e                                       ; $4d86: $6b
    ld l, a                                       ; $4d87: $6f
    sbc c                                         ; $4d88: $99
    rst $38                                       ; $4d89: $ff
    or h                                          ; $4d8a: $b4
    rst $38                                       ; $4d8b: $ff
    or e                                          ; $4d8c: $b3
    rst $38                                       ; $4d8d: $ff
    ld d, b                                       ; $4d8e: $50
    ld a, a                                       ; $4d8f: $7f
    ld d, b                                       ; $4d90: $50
    ld a, a                                       ; $4d91: $7f
    jr c, @+$41                                   ; $4d92: $38 $3f

    rlca                                          ; $4d94: $07
    rlca                                          ; $4d95: $07
    ld a, [bc]                                    ; $4d96: $0a
    rrca                                          ; $4d97: $0f
    add hl, bc                                    ; $4d98: $09
    rrca                                          ; $4d99: $0f
    ld [$040f], sp                                ; $4d9a: $08 $0f $04
    rlca                                          ; $4d9d: $07
    inc bc                                        ; $4d9e: $03
    inc bc                                        ; $4d9f: $03
    nop                                           ; $4da0: $00
    nop                                           ; $4da1: $00
    add b                                         ; $4da2: $80
    add b                                         ; $4da3: $80
    ret nz                                        ; $4da4: $c0

    ret nz                                        ; $4da5: $c0

    db $ec                                        ; $4da6: $ec
    db $ec                                        ; $4da7: $ec
    or d                                          ; $4da8: $b2
    cp $7a                                        ; $4da9: $fe $7a
    cp $da                                        ; $4dab: $fe $da
    cp $d4                                        ; $4dad: $fe $d4
    db $fc                                        ; $4daf: $fc
    call nc, $b8fc                                ; $4db0: $d4 $fc $b8
    ld hl, sp-$40                                 ; $4db3: $f8 $c0
    ret nz                                        ; $4db5: $c0

    ldh [$e0], a                                  ; $4db6: $e0 $e0
    ldh [$e0], a                                  ; $4db8: $e0 $e0
    and b                                         ; $4dba: $a0
    ldh [rLCDC], a                                ; $4dbb: $e0 $40
    ret nz                                        ; $4dbd: $c0

    add b                                         ; $4dbe: $80
    add b                                         ; $4dbf: $80
    ld bc, $0201                                  ; $4dc0: $01 $01 $02
    inc bc                                        ; $4dc3: $03
    ld b, $07                                     ; $4dc4: $06 $07
    ld l, e                                       ; $4dc6: $6b
    ld l, a                                       ; $4dc7: $6f
    sbc c                                         ; $4dc8: $99
    rst $38                                       ; $4dc9: $ff
    or h                                          ; $4dca: $b4
    rst $38                                       ; $4dcb: $ff
    or e                                          ; $4dcc: $b3
    rst $38                                       ; $4dcd: $ff
    ld d, b                                       ; $4dce: $50
    ld a, a                                       ; $4dcf: $7f
    ld d, b                                       ; $4dd0: $50
    ld a, a                                       ; $4dd1: $7f
    jr c, jr_026_4e13                             ; $4dd2: $38 $3f

    rlca                                          ; $4dd4: $07
    rlca                                          ; $4dd5: $07
    ld a, [bc]                                    ; $4dd6: $0a
    rrca                                          ; $4dd7: $0f
    add hl, bc                                    ; $4dd8: $09
    rrca                                          ; $4dd9: $0f
    ld [$040f], sp                                ; $4dda: $08 $0f $04
    rlca                                          ; $4ddd: $07
    inc bc                                        ; $4dde: $03
    inc bc                                        ; $4ddf: $03
    nop                                           ; $4de0: $00
    nop                                           ; $4de1: $00
    add b                                         ; $4de2: $80
    add b                                         ; $4de3: $80
    ret nz                                        ; $4de4: $c0

    ret nz                                        ; $4de5: $c0

    db $ec                                        ; $4de6: $ec
    db $ec                                        ; $4de7: $ec
    or d                                          ; $4de8: $b2
    cp $7a                                        ; $4de9: $fe $7a
    cp $da                                        ; $4deb: $fe $da
    cp $d4                                        ; $4ded: $fe $d4
    db $fc                                        ; $4def: $fc
    call nc, $b8fc                                ; $4df0: $d4 $fc $b8
    ld hl, sp-$40                                 ; $4df3: $f8 $c0
    ret nz                                        ; $4df5: $c0

    ldh [$e0], a                                  ; $4df6: $e0 $e0
    ldh [$e0], a                                  ; $4df8: $e0 $e0
    and b                                         ; $4dfa: $a0
    ldh [rLCDC], a                                ; $4dfb: $e0 $40
    ret nz                                        ; $4dfd: $c0

    add b                                         ; $4dfe: $80
    add b                                         ; $4dff: $80
    nop                                           ; $4e00: $00
    nop                                           ; $4e01: $00
    ld bc, $0201                                  ; $4e02: $01 $01 $02
    inc bc                                        ; $4e05: $03
    dec [hl]                                      ; $4e06: $35
    scf                                           ; $4e07: $37
    ld l, [hl]                                    ; $4e08: $6e
    ld e, l                                       ; $4e09: $5d
    ld e, d                                       ; $4e0a: $5a
    ld a, a                                       ; $4e0b: $7f
    ld e, c                                       ; $4e0c: $59
    ld a, a                                       ; $4e0d: $7f
    ld a, [hl+]                                   ; $4e0e: $2a
    dec a                                         ; $4e0f: $3d
    inc e                                         ; $4e10: $1c
    rra                                           ; $4e11: $1f
    inc bc                                        ; $4e12: $03

jr_026_4e13:
    inc bc                                        ; $4e13: $03
    dec b                                         ; $4e14: $05
    rlca                                          ; $4e15: $07
    ld b, $05                                     ; $4e16: $06 $05
    inc b                                         ; $4e18: $04
    rlca                                          ; $4e19: $07
    inc bc                                        ; $4e1a: $03
    inc bc                                        ; $4e1b: $03
    nop                                           ; $4e1c: $00
    nop                                           ; $4e1d: $00
    nop                                           ; $4e1e: $00
    nop                                           ; $4e1f: $00
    nop                                           ; $4e20: $00
    nop                                           ; $4e21: $00
    add b                                         ; $4e22: $80
    add b                                         ; $4e23: $80
    ret nz                                        ; $4e24: $c0

    ret nz                                        ; $4e25: $c0

    db $ec                                        ; $4e26: $ec
    db $ec                                        ; $4e27: $ec
    or d                                          ; $4e28: $b2
    cp $5a                                        ; $4e29: $fe $5a
    cp $da                                        ; $4e2b: $fe $da
    cp $d4                                        ; $4e2d: $fe $d4
    db $fc                                        ; $4e2f: $fc
    cp b                                          ; $4e30: $b8
    ld hl, sp-$40                                 ; $4e31: $f8 $c0
    ret nz                                        ; $4e33: $c0

    ldh [$e0], a                                  ; $4e34: $e0 $e0
    and b                                         ; $4e36: $a0
    ldh [rNR41], a                                ; $4e37: $e0 $20
    ldh [$c0], a                                  ; $4e39: $e0 $c0
    ret nz                                        ; $4e3b: $c0

    nop                                           ; $4e3c: $00
    nop                                           ; $4e3d: $00
    nop                                           ; $4e3e: $00
    nop                                           ; $4e3f: $00
    nop                                           ; $4e40: $00
    nop                                           ; $4e41: $00
    ld bc, $0201                                  ; $4e42: $01 $01 $02
    inc bc                                        ; $4e45: $03
    dec [hl]                                      ; $4e46: $35
    scf                                           ; $4e47: $37
    ld l, [hl]                                    ; $4e48: $6e
    ld e, l                                       ; $4e49: $5d
    ld e, d                                       ; $4e4a: $5a
    ld a, a                                       ; $4e4b: $7f
    ld e, c                                       ; $4e4c: $59
    ld a, a                                       ; $4e4d: $7f
    ld a, [hl+]                                   ; $4e4e: $2a
    dec a                                         ; $4e4f: $3d
    inc e                                         ; $4e50: $1c
    rra                                           ; $4e51: $1f
    inc bc                                        ; $4e52: $03
    inc bc                                        ; $4e53: $03
    dec b                                         ; $4e54: $05
    rlca                                          ; $4e55: $07
    ld b, $05                                     ; $4e56: $06 $05
    inc b                                         ; $4e58: $04
    rlca                                          ; $4e59: $07
    inc bc                                        ; $4e5a: $03
    inc bc                                        ; $4e5b: $03
    nop                                           ; $4e5c: $00
    nop                                           ; $4e5d: $00
    nop                                           ; $4e5e: $00
    nop                                           ; $4e5f: $00
    nop                                           ; $4e60: $00
    nop                                           ; $4e61: $00
    add b                                         ; $4e62: $80
    add b                                         ; $4e63: $80
    ret nz                                        ; $4e64: $c0

    ret nz                                        ; $4e65: $c0

    db $ec                                        ; $4e66: $ec
    db $ec                                        ; $4e67: $ec
    or d                                          ; $4e68: $b2
    cp $5a                                        ; $4e69: $fe $5a
    cp $da                                        ; $4e6b: $fe $da
    cp $d4                                        ; $4e6d: $fe $d4
    db $fc                                        ; $4e6f: $fc
    cp b                                          ; $4e70: $b8
    ld hl, sp-$40                                 ; $4e71: $f8 $c0
    ret nz                                        ; $4e73: $c0

    ldh [$e0], a                                  ; $4e74: $e0 $e0
    and b                                         ; $4e76: $a0
    ldh [rNR41], a                                ; $4e77: $e0 $20
    ldh [$c0], a                                  ; $4e79: $e0 $c0
    ret nz                                        ; $4e7b: $c0

    nop                                           ; $4e7c: $00
    nop                                           ; $4e7d: $00
    nop                                           ; $4e7e: $00
    nop                                           ; $4e7f: $00
    nop                                           ; $4e80: $00
    nop                                           ; $4e81: $00
    ld bc, $0201                                  ; $4e82: $01 $01 $02
    inc bc                                        ; $4e85: $03
    dec [hl]                                      ; $4e86: $35
    scf                                           ; $4e87: $37
    ld l, [hl]                                    ; $4e88: $6e
    ld e, l                                       ; $4e89: $5d
    ld e, d                                       ; $4e8a: $5a
    ld a, a                                       ; $4e8b: $7f
    ld e, c                                       ; $4e8c: $59
    ld a, a                                       ; $4e8d: $7f
    ld a, [hl+]                                   ; $4e8e: $2a
    dec a                                         ; $4e8f: $3d
    inc e                                         ; $4e90: $1c
    rra                                           ; $4e91: $1f
    inc bc                                        ; $4e92: $03
    inc bc                                        ; $4e93: $03
    dec b                                         ; $4e94: $05
    rlca                                          ; $4e95: $07
    ld b, $05                                     ; $4e96: $06 $05
    inc b                                         ; $4e98: $04
    rlca                                          ; $4e99: $07
    inc bc                                        ; $4e9a: $03
    inc bc                                        ; $4e9b: $03
    nop                                           ; $4e9c: $00
    nop                                           ; $4e9d: $00
    nop                                           ; $4e9e: $00
    nop                                           ; $4e9f: $00
    nop                                           ; $4ea0: $00
    nop                                           ; $4ea1: $00
    add b                                         ; $4ea2: $80
    add b                                         ; $4ea3: $80
    ret nz                                        ; $4ea4: $c0

    ret nz                                        ; $4ea5: $c0

    db $ec                                        ; $4ea6: $ec
    db $ec                                        ; $4ea7: $ec
    or d                                          ; $4ea8: $b2
    cp $5a                                        ; $4ea9: $fe $5a
    cp $da                                        ; $4eab: $fe $da
    cp $d4                                        ; $4ead: $fe $d4
    db $fc                                        ; $4eaf: $fc
    cp b                                          ; $4eb0: $b8
    ld hl, sp-$40                                 ; $4eb1: $f8 $c0
    ret nz                                        ; $4eb3: $c0

    ldh [$e0], a                                  ; $4eb4: $e0 $e0
    and b                                         ; $4eb6: $a0
    ldh [rNR41], a                                ; $4eb7: $e0 $20
    ldh [$c0], a                                  ; $4eb9: $e0 $c0
    ret nz                                        ; $4ebb: $c0

    nop                                           ; $4ebc: $00
    nop                                           ; $4ebd: $00
    nop                                           ; $4ebe: $00
    nop                                           ; $4ebf: $00
    nop                                           ; $4ec0: $00
    nop                                           ; $4ec1: $00
    ld bc, $0201                                  ; $4ec2: $01 $01 $02
    inc bc                                        ; $4ec5: $03
    dec [hl]                                      ; $4ec6: $35
    scf                                           ; $4ec7: $37
    ld l, [hl]                                    ; $4ec8: $6e
    ld e, l                                       ; $4ec9: $5d
    ld e, d                                       ; $4eca: $5a
    ld a, a                                       ; $4ecb: $7f
    ld e, c                                       ; $4ecc: $59
    ld a, a                                       ; $4ecd: $7f
    ld a, [hl+]                                   ; $4ece: $2a
    dec a                                         ; $4ecf: $3d
    inc e                                         ; $4ed0: $1c
    rra                                           ; $4ed1: $1f
    inc bc                                        ; $4ed2: $03
    inc bc                                        ; $4ed3: $03
    dec b                                         ; $4ed4: $05
    rlca                                          ; $4ed5: $07
    ld b, $05                                     ; $4ed6: $06 $05
    inc b                                         ; $4ed8: $04
    rlca                                          ; $4ed9: $07
    inc bc                                        ; $4eda: $03
    inc bc                                        ; $4edb: $03
    nop                                           ; $4edc: $00
    nop                                           ; $4edd: $00
    nop                                           ; $4ede: $00
    nop                                           ; $4edf: $00
    nop                                           ; $4ee0: $00
    nop                                           ; $4ee1: $00
    add b                                         ; $4ee2: $80
    add b                                         ; $4ee3: $80
    ret nz                                        ; $4ee4: $c0

    ret nz                                        ; $4ee5: $c0

    db $ec                                        ; $4ee6: $ec
    db $ec                                        ; $4ee7: $ec
    or d                                          ; $4ee8: $b2
    cp $5a                                        ; $4ee9: $fe $5a
    cp $da                                        ; $4eeb: $fe $da
    cp $d4                                        ; $4eed: $fe $d4
    db $fc                                        ; $4eef: $fc
    cp b                                          ; $4ef0: $b8
    ld hl, sp-$40                                 ; $4ef1: $f8 $c0
    ret nz                                        ; $4ef3: $c0

    ldh [$e0], a                                  ; $4ef4: $e0 $e0
    and b                                         ; $4ef6: $a0
    ldh [rNR41], a                                ; $4ef7: $e0 $20
    ldh [$c0], a                                  ; $4ef9: $e0 $c0
    ret nz                                        ; $4efb: $c0

    nop                                           ; $4efc: $00
    nop                                           ; $4efd: $00
    nop                                           ; $4efe: $00
    nop                                           ; $4eff: $00
    nop                                           ; $4f00: $00
    nop                                           ; $4f01: $00
    ld bc, $0201                                  ; $4f02: $01 $01 $02
    inc bc                                        ; $4f05: $03
    dec [hl]                                      ; $4f06: $35
    scf                                           ; $4f07: $37
    ld c, h                                       ; $4f08: $4c
    ld a, a                                       ; $4f09: $7f
    ld e, d                                       ; $4f0a: $5a
    ld a, a                                       ; $4f0b: $7f
    ld e, c                                       ; $4f0c: $59
    ld a, a                                       ; $4f0d: $7f
    jr z, @+$41                                   ; $4f0e: $28 $3f

    inc e                                         ; $4f10: $1c
    rra                                           ; $4f11: $1f
    inc bc                                        ; $4f12: $03
    inc bc                                        ; $4f13: $03
    dec b                                         ; $4f14: $05
    rlca                                          ; $4f15: $07
    inc b                                         ; $4f16: $04
    rlca                                          ; $4f17: $07
    inc b                                         ; $4f18: $04
    rlca                                          ; $4f19: $07
    inc bc                                        ; $4f1a: $03
    inc bc                                        ; $4f1b: $03
    nop                                           ; $4f1c: $00
    nop                                           ; $4f1d: $00
    nop                                           ; $4f1e: $00
    nop                                           ; $4f1f: $00
    nop                                           ; $4f20: $00
    nop                                           ; $4f21: $00
    add b                                         ; $4f22: $80
    add b                                         ; $4f23: $80
    ret nz                                        ; $4f24: $c0

    ret nz                                        ; $4f25: $c0

    db $ec                                        ; $4f26: $ec
    db $ec                                        ; $4f27: $ec
    or d                                          ; $4f28: $b2
    cp $5a                                        ; $4f29: $fe $5a
    cp $da                                        ; $4f2b: $fe $da
    cp $d4                                        ; $4f2d: $fe $d4
    db $fc                                        ; $4f2f: $fc
    cp b                                          ; $4f30: $b8
    ld hl, sp-$40                                 ; $4f31: $f8 $c0
    ret nz                                        ; $4f33: $c0

    ldh [$e0], a                                  ; $4f34: $e0 $e0
    and b                                         ; $4f36: $a0
    ldh [rNR41], a                                ; $4f37: $e0 $20
    ldh [$c0], a                                  ; $4f39: $e0 $c0
    ret nz                                        ; $4f3b: $c0

    nop                                           ; $4f3c: $00
    nop                                           ; $4f3d: $00
    nop                                           ; $4f3e: $00
    nop                                           ; $4f3f: $00
    nop                                           ; $4f40: $00
    nop                                           ; $4f41: $00
    ld bc, $0201                                  ; $4f42: $01 $01 $02
    inc bc                                        ; $4f45: $03
    dec [hl]                                      ; $4f46: $35
    scf                                           ; $4f47: $37
    ld c, h                                       ; $4f48: $4c
    ld a, a                                       ; $4f49: $7f
    ld e, d                                       ; $4f4a: $5a
    ld a, a                                       ; $4f4b: $7f
    ld e, c                                       ; $4f4c: $59
    ld a, a                                       ; $4f4d: $7f
    jr z, @+$41                                   ; $4f4e: $28 $3f

    inc e                                         ; $4f50: $1c
    rra                                           ; $4f51: $1f
    inc bc                                        ; $4f52: $03
    inc bc                                        ; $4f53: $03
    dec b                                         ; $4f54: $05
    rlca                                          ; $4f55: $07
    inc b                                         ; $4f56: $04
    rlca                                          ; $4f57: $07
    inc b                                         ; $4f58: $04
    rlca                                          ; $4f59: $07
    inc bc                                        ; $4f5a: $03
    inc bc                                        ; $4f5b: $03
    nop                                           ; $4f5c: $00
    nop                                           ; $4f5d: $00
    nop                                           ; $4f5e: $00
    nop                                           ; $4f5f: $00
    nop                                           ; $4f60: $00
    nop                                           ; $4f61: $00
    add b                                         ; $4f62: $80
    add b                                         ; $4f63: $80
    ret nz                                        ; $4f64: $c0

    ret nz                                        ; $4f65: $c0

    db $ec                                        ; $4f66: $ec
    db $ec                                        ; $4f67: $ec
    or d                                          ; $4f68: $b2
    cp $5a                                        ; $4f69: $fe $5a
    cp $da                                        ; $4f6b: $fe $da
    cp $d4                                        ; $4f6d: $fe $d4
    db $fc                                        ; $4f6f: $fc
    cp b                                          ; $4f70: $b8
    ld hl, sp-$40                                 ; $4f71: $f8 $c0
    ret nz                                        ; $4f73: $c0

    ldh [$e0], a                                  ; $4f74: $e0 $e0
    and b                                         ; $4f76: $a0
    ldh [rNR41], a                                ; $4f77: $e0 $20
    ldh [$c0], a                                  ; $4f79: $e0 $c0
    ret nz                                        ; $4f7b: $c0

    nop                                           ; $4f7c: $00
    nop                                           ; $4f7d: $00
    nop                                           ; $4f7e: $00
    nop                                           ; $4f7f: $00
    nop                                           ; $4f80: $00
    nop                                           ; $4f81: $00
    ld bc, $0201                                  ; $4f82: $01 $01 $02
    inc bc                                        ; $4f85: $03
    dec [hl]                                      ; $4f86: $35
    scf                                           ; $4f87: $37
    ld c, h                                       ; $4f88: $4c
    ld a, a                                       ; $4f89: $7f
    ld e, d                                       ; $4f8a: $5a
    ld a, a                                       ; $4f8b: $7f
    ld e, c                                       ; $4f8c: $59
    ld a, a                                       ; $4f8d: $7f
    jr z, @+$41                                   ; $4f8e: $28 $3f

    inc e                                         ; $4f90: $1c
    rra                                           ; $4f91: $1f
    inc bc                                        ; $4f92: $03
    inc bc                                        ; $4f93: $03
    dec b                                         ; $4f94: $05
    rlca                                          ; $4f95: $07
    inc b                                         ; $4f96: $04
    rlca                                          ; $4f97: $07
    inc b                                         ; $4f98: $04
    rlca                                          ; $4f99: $07
    inc bc                                        ; $4f9a: $03
    inc bc                                        ; $4f9b: $03
    nop                                           ; $4f9c: $00
    nop                                           ; $4f9d: $00
    nop                                           ; $4f9e: $00
    nop                                           ; $4f9f: $00
    nop                                           ; $4fa0: $00
    nop                                           ; $4fa1: $00
    add b                                         ; $4fa2: $80
    add b                                         ; $4fa3: $80
    ret nz                                        ; $4fa4: $c0

    ret nz                                        ; $4fa5: $c0

    db $ec                                        ; $4fa6: $ec
    db $ec                                        ; $4fa7: $ec
    or d                                          ; $4fa8: $b2
    cp $5a                                        ; $4fa9: $fe $5a
    cp $da                                        ; $4fab: $fe $da
    cp $d4                                        ; $4fad: $fe $d4
    db $fc                                        ; $4faf: $fc
    cp b                                          ; $4fb0: $b8
    ld hl, sp-$40                                 ; $4fb1: $f8 $c0
    ret nz                                        ; $4fb3: $c0

    ldh [$e0], a                                  ; $4fb4: $e0 $e0
    and b                                         ; $4fb6: $a0
    ldh [rNR41], a                                ; $4fb7: $e0 $20
    ldh [$c0], a                                  ; $4fb9: $e0 $c0
    ret nz                                        ; $4fbb: $c0

    nop                                           ; $4fbc: $00
    nop                                           ; $4fbd: $00
    nop                                           ; $4fbe: $00
    nop                                           ; $4fbf: $00
    nop                                           ; $4fc0: $00
    nop                                           ; $4fc1: $00
    ld bc, $0201                                  ; $4fc2: $01 $01 $02
    inc bc                                        ; $4fc5: $03
    dec [hl]                                      ; $4fc6: $35
    scf                                           ; $4fc7: $37
    ld c, h                                       ; $4fc8: $4c
    ld a, a                                       ; $4fc9: $7f
    ld e, d                                       ; $4fca: $5a
    ld a, a                                       ; $4fcb: $7f
    ld e, c                                       ; $4fcc: $59
    ld a, a                                       ; $4fcd: $7f
    jr z, jr_026_500f                             ; $4fce: $28 $3f

    inc e                                         ; $4fd0: $1c
    rra                                           ; $4fd1: $1f
    inc bc                                        ; $4fd2: $03
    inc bc                                        ; $4fd3: $03
    dec b                                         ; $4fd4: $05
    rlca                                          ; $4fd5: $07
    inc b                                         ; $4fd6: $04
    rlca                                          ; $4fd7: $07
    inc b                                         ; $4fd8: $04
    rlca                                          ; $4fd9: $07
    inc bc                                        ; $4fda: $03
    inc bc                                        ; $4fdb: $03
    nop                                           ; $4fdc: $00
    nop                                           ; $4fdd: $00
    nop                                           ; $4fde: $00
    nop                                           ; $4fdf: $00
    nop                                           ; $4fe0: $00
    nop                                           ; $4fe1: $00
    add b                                         ; $4fe2: $80
    add b                                         ; $4fe3: $80
    ret nz                                        ; $4fe4: $c0

    ret nz                                        ; $4fe5: $c0

    db $ec                                        ; $4fe6: $ec
    db $ec                                        ; $4fe7: $ec
    or d                                          ; $4fe8: $b2
    cp $5a                                        ; $4fe9: $fe $5a
    cp $da                                        ; $4feb: $fe $da
    cp $d4                                        ; $4fed: $fe $d4
    db $fc                                        ; $4fef: $fc
    cp b                                          ; $4ff0: $b8
    ld hl, sp-$40                                 ; $4ff1: $f8 $c0
    ret nz                                        ; $4ff3: $c0

    ldh [$e0], a                                  ; $4ff4: $e0 $e0
    and b                                         ; $4ff6: $a0
    ldh [rNR41], a                                ; $4ff7: $e0 $20
    ldh [$c0], a                                  ; $4ff9: $e0 $c0
    ret nz                                        ; $4ffb: $c0

    nop                                           ; $4ffc: $00
    nop                                           ; $4ffd: $00
    nop                                           ; $4ffe: $00
    nop                                           ; $4fff: $00
    ld d, $50                                     ; $5000: $16 $50
    add hl, de                                    ; $5002: $19
    ld d, b                                       ; $5003: $50
    rra                                           ; $5004: $1f
    ld d, b                                       ; $5005: $50
    ld [hl+], a                                   ; $5006: $22
    ld d, b                                       ; $5007: $50
    dec l                                         ; $5008: $2d
    ld d, b                                       ; $5009: $50
    inc [hl]                                      ; $500a: $34
    ld d, b                                       ; $500b: $50
    inc a                                         ; $500c: $3c
    ld d, b                                       ; $500d: $50
    ld d, b                                       ; $500e: $50

jr_026_500f:
    ld d, b                                       ; $500f: $50
    ld e, h                                       ; $5010: $5c
    ld d, b                                       ; $5011: $50
    ld d, $50                                     ; $5012: $16 $50
    ld h, l                                       ; $5014: $65
    ld d, b                                       ; $5015: $50
    nop                                           ; $5016: $00
    rst $38                                       ; $5017: $ff
    db $fd                                        ; $5018: $fd
    nop                                           ; $5019: $00
    ld [bc], a                                    ; $501a: $02
    ld bc, $ff02                                  ; $501b: $01 $02 $ff
    nop                                           ; $501e: $00
    ld [bc], a                                    ; $501f: $02
    rst $38                                       ; $5020: $ff
    db $fd                                        ; $5021: $fd
    ld [bc], a                                    ; $5022: $02
    inc c                                         ; $5023: $0c
    inc bc                                        ; $5024: $03
    inc c                                         ; $5025: $0c
    inc b                                         ; $5026: $04
    jr jr_026_502b                                ; $5027: $18 $02

    inc c                                         ; $5029: $0c
    dec b                                         ; $502a: $05

jr_026_502b:
    inc c                                         ; $502b: $0c
    db $fd                                        ; $502c: $fd
    ld [bc], a                                    ; $502d: $02
    jr @+$05                                      ; $502e: $18 $03

    jr jr_026_5034                                ; $5030: $18 $02

    jr @-$01                                      ; $5032: $18 $fd

jr_026_5034:
    nop                                           ; $5034: $00
    ld a, [bc]                                    ; $5035: $0a
    ld b, $1e                                     ; $5036: $06 $1e
    nop                                           ; $5038: $00
    ld a, [bc]                                    ; $5039: $0a
    cp $01                                        ; $503a: $fe $01
    nop                                           ; $503c: $00
    ld a, [bc]                                    ; $503d: $0a
    rlca                                          ; $503e: $07
    ld a, [bc]                                    ; $503f: $0a
    nop                                           ; $5040: $00
    inc bc                                        ; $5041: $03
    ld [$000a], sp                                ; $5042: $08 $0a $00
    inc bc                                        ; $5045: $03
    rlca                                          ; $5046: $07
    ld a, [bc]                                    ; $5047: $0a
    nop                                           ; $5048: $00
    inc bc                                        ; $5049: $03
    ld [$000a], sp                                ; $504a: $08 $0a $00
    ld a, [bc]                                    ; $504d: $0a
    cp $01                                        ; $504e: $fe $01
    nop                                           ; $5050: $00
    ld a, [bc]                                    ; $5051: $0a
    add hl, bc                                    ; $5052: $09
    ld [$0800], sp                                ; $5053: $08 $00 $08
    add hl, bc                                    ; $5056: $09
    ld [$0a00], sp                                ; $5057: $08 $00 $0a
    cp $01                                        ; $505a: $fe $01
    ld [bc], a                                    ; $505c: $02
    ld [de], a                                    ; $505d: $12
    inc bc                                        ; $505e: $03
    ld [de], a                                    ; $505f: $12
    ld [bc], a                                    ; $5060: $02
    ld e, $05                                     ; $5061: $1e $05
    ld [de], a                                    ; $5063: $12
    db $fd                                        ; $5064: $fd
    ld a, [bc]                                    ; $5065: $0a
    ld [bc], a                                    ; $5066: $02
    dec bc                                        ; $5067: $0b
    ld [bc], a                                    ; $5068: $02
    rst $38                                       ; $5069: $ff
    nop                                           ; $506a: $00
    dec b                                         ; $506b: $05
    inc b                                         ; $506c: $04
    ld [hl], e                                    ; $506d: $73
    ld d, b                                       ; $506e: $50
    sub b                                         ; $506f: $90
    ld e, h                                       ; $5070: $5c
    ld [hl], e                                    ; $5071: $73
    ld d, b                                       ; $5072: $50
    sub b                                         ; $5073: $90
    ld d, b                                       ; $5074: $50
    sub b                                         ; $5075: $90
    ld d, c                                       ; $5076: $51
    sub b                                         ; $5077: $90
    ld d, d                                       ; $5078: $52
    sub b                                         ; $5079: $90
    ld d, e                                       ; $507a: $53
    sub b                                         ; $507b: $90
    ld d, h                                       ; $507c: $54
    sub b                                         ; $507d: $90
    ld d, l                                       ; $507e: $55
    sub b                                         ; $507f: $90
    ld d, [hl]                                    ; $5080: $56
    sub b                                         ; $5081: $90
    ld d, a                                       ; $5082: $57
    sub b                                         ; $5083: $90
    ld e, b                                       ; $5084: $58
    sub b                                         ; $5085: $90
    ld e, c                                       ; $5086: $59
    sub b                                         ; $5087: $90
    ld e, d                                       ; $5088: $5a
    sub b                                         ; $5089: $90
    ld e, e                                       ; $508a: $5b
    nop                                           ; $508b: $00
    nop                                           ; $508c: $00
    nop                                           ; $508d: $00
    nop                                           ; $508e: $00
    nop                                           ; $508f: $00
    ld bc, $0301                                  ; $5090: $01 $01 $03
    inc bc                                        ; $5093: $03
    rlca                                          ; $5094: $07
    rlca                                          ; $5095: $07
    rrca                                          ; $5096: $0f
    rrca                                          ; $5097: $0f
    ld c, $0f                                     ; $5098: $0e $0f
    rlca                                          ; $509a: $07
    rlca                                          ; $509b: $07
    add hl, bc                                    ; $509c: $09
    rrca                                          ; $509d: $0f
    ld [$070f], sp                                ; $509e: $08 $0f $07
    rlca                                          ; $50a1: $07
    rlca                                          ; $50a2: $07
    ld b, $07                                     ; $50a3: $06 $07
    dec b                                         ; $50a5: $05
    dec bc                                        ; $50a6: $0b
    rrca                                          ; $50a7: $0f
    dec bc                                        ; $50a8: $0b
    rrca                                          ; $50a9: $0f
    rrca                                          ; $50aa: $0f
    rrca                                          ; $50ab: $0f
    rrca                                          ; $50ac: $0f
    dec bc                                        ; $50ad: $0b
    rlca                                          ; $50ae: $07
    rlca                                          ; $50af: $07
    ldh [$e0], a                                  ; $50b0: $e0 $e0
    ldh a, [$f0]                                  ; $50b2: $f0 $f0
    sub b                                         ; $50b4: $90
    ldh a, [rNR10]                                ; $50b5: $f0 $10
    ldh a, [$30]                                  ; $50b7: $f0 $30
    ldh a, [rNR10]                                ; $50b9: $f0 $10
    ldh a, [$28]                                  ; $50bb: $f0 $28
    ld hl, sp+$38                                 ; $50bd: $f8 $38
    ld hl, sp+$30                                 ; $50bf: $f8 $30
    ret nc                                        ; $50c1: $d0

    sub b                                         ; $50c2: $90
    ldh a, [$e8]                                  ; $50c3: $f0 $e8
    ld a, b                                       ; $50c5: $78
    ld hl, sp-$08                                 ; $50c6: $f8 $f8
    db $10                                        ; $50c8: $10
    ldh a, [$f8]                                  ; $50c9: $f0 $f8
    add sp, -$08                                  ; $50cb: $e8 $f8
    ret c                                         ; $50cd: $d8

    ld [hl], b                                    ; $50ce: $70
    ld [hl], b                                    ; $50cf: $70
    rlca                                          ; $50d0: $07
    rlca                                          ; $50d1: $07
    rrca                                          ; $50d2: $0f
    rrca                                          ; $50d3: $0f
    inc c                                         ; $50d4: $0c
    rrca                                          ; $50d5: $0f
    ld [$0a0f], sp                                ; $50d6: $08 $0f $0a
    rrca                                          ; $50d9: $0f
    jr jr_026_50fb                                ; $50da: $18 $1f

    ld a, [hl+]                                   ; $50dc: $2a
    ccf                                           ; $50dd: $3f
    inc hl                                        ; $50de: $23
    ccf                                           ; $50df: $3f
    ld e, c                                       ; $50e0: $59
    ld a, [hl]                                    ; $50e1: $7e
    ld a, h                                       ; $50e2: $7c
    ld [hl], a                                    ; $50e3: $77
    ld c, a                                       ; $50e4: $4f
    ld c, e                                       ; $50e5: $4b
    rst $08                                       ; $50e6: $cf
    adc $c9                                       ; $50e7: $ce $c9
    rst $08                                       ; $50e9: $cf
    ld d, $1f                                     ; $50ea: $16 $1f
    rrca                                          ; $50ec: $0f
    add hl, bc                                    ; $50ed: $09
    rlca                                          ; $50ee: $07
    rlca                                          ; $50ef: $07
    add b                                         ; $50f0: $80
    add b                                         ; $50f1: $80
    ret nz                                        ; $50f2: $c0

    ret nz                                        ; $50f3: $c0

    ldh [$e0], a                                  ; $50f4: $e0 $e0
    jr nz, @-$1e                                  ; $50f6: $20 $e0

    and b                                         ; $50f8: $a0
    ldh [$30], a                                  ; $50f9: $e0 $30

jr_026_50fb:
    ldh a, [$a8]                                  ; $50fb: $f0 $a8
    ld hl, sp-$78                                 ; $50fd: $f8 $88
    ld hl, sp+$30                                 ; $50ff: $f8 $30
    ldh a, [$78]                                  ; $5101: $f0 $78
    ret c                                         ; $5103: $d8

    db $f4                                        ; $5104: $f4
    sbc h                                         ; $5105: $9c
    db $fc                                        ; $5106: $fc
    ld a, h                                       ; $5107: $7c
    and b                                         ; $5108: $a0
    ldh [$e0], a                                  ; $5109: $e0 $e0
    ldh [$c0], a                                  ; $510b: $e0 $c0
    ret nz                                        ; $510d: $c0

    nop                                           ; $510e: $00
    nop                                           ; $510f: $00
    rlca                                          ; $5110: $07
    rlca                                          ; $5111: $07
    rrca                                          ; $5112: $0f
    rrca                                          ; $5113: $0f
    dec bc                                        ; $5114: $0b
    rrca                                          ; $5115: $0f
    ld [$0c0f], sp                                ; $5116: $08 $0f $0c
    rrca                                          ; $5119: $0f
    ld [$140f], sp                                ; $511a: $08 $0f $14
    rra                                           ; $511d: $1f
    inc e                                         ; $511e: $1c
    rra                                           ; $511f: $1f
    inc c                                         ; $5120: $0c
    dec bc                                        ; $5121: $0b
    add hl, bc                                    ; $5122: $09
    rrca                                          ; $5123: $0f
    rlca                                          ; $5124: $07
    ld b, $05                                     ; $5125: $06 $05
    rlca                                          ; $5127: $07
    dec bc                                        ; $5128: $0b
    rrca                                          ; $5129: $0f
    rra                                           ; $512a: $1f
    rra                                           ; $512b: $1f
    ld e, $16                                     ; $512c: $1e $16
    ld c, $0e                                     ; $512e: $0e $0e
    add b                                         ; $5130: $80
    add b                                         ; $5131: $80
    ret nz                                        ; $5132: $c0

    ret nz                                        ; $5133: $c0

    ldh [$e0], a                                  ; $5134: $e0 $e0
    ldh a, [$f0]                                  ; $5136: $f0 $f0
    ld [hl], b                                    ; $5138: $70
    ldh a, [$e0]                                  ; $5139: $f0 $e0
    ldh [$90], a                                  ; $513b: $e0 $90
    ldh a, [rNR10]                                ; $513d: $f0 $10
    ldh a, [$e0]                                  ; $513f: $f0 $e0
    ldh [$f0], a                                  ; $5141: $e0 $f0
    jr nc, @-$16                                  ; $5143: $30 $e8

    cp b                                          ; $5145: $b8
    add sp, -$08                                  ; $5146: $e8 $f8
    jr nc, @-$0e                                  ; $5148: $30 $f0

    ld [hl], b                                    ; $514a: $70
    ret nc                                        ; $514b: $d0

    ldh a, [$b0]                                  ; $514c: $f0 $b0
    ldh [$e0], a                                  ; $514e: $e0 $e0
    inc bc                                        ; $5150: $03
    inc bc                                        ; $5151: $03
    rlca                                          ; $5152: $07
    rlca                                          ; $5153: $07
    rrca                                          ; $5154: $0f
    rrca                                          ; $5155: $0f
    rrca                                          ; $5156: $0f
    rrca                                          ; $5157: $0f
    rrca                                          ; $5158: $0f
    rrca                                          ; $5159: $0f
    rra                                           ; $515a: $1f
    rra                                           ; $515b: $1f
    ld a, [hl+]                                   ; $515c: $2a
    ccf                                           ; $515d: $3f
    jr z, @+$41                                   ; $515e: $28 $3f

    ld a, e                                       ; $5160: $7b
    ld a, a                                       ; $5161: $7f
    ld e, a                                       ; $5162: $5f
    ld [hl], h                                    ; $5163: $74
    ccf                                           ; $5164: $3f
    jr c, jr_026_5176                             ; $5165: $38 $0f

    inc c                                         ; $5167: $0c
    dec bc                                        ; $5168: $0b
    rrca                                          ; $5169: $0f
    rla                                           ; $516a: $17
    rra                                           ; $516b: $1f
    rrca                                          ; $516c: $0f
    add hl, bc                                    ; $516d: $09
    rlca                                          ; $516e: $07
    rlca                                          ; $516f: $07
    ret nz                                        ; $5170: $c0

    ret nz                                        ; $5171: $c0

    ldh [$e0], a                                  ; $5172: $e0 $e0
    ldh [$e0], a                                  ; $5174: $e0 $e0

jr_026_5176:
    ldh [$e0], a                                  ; $5176: $e0 $e0
    ldh [$e0], a                                  ; $5178: $e0 $e0
    ldh a, [$f0]                                  ; $517a: $f0 $f0
    xor b                                         ; $517c: $a8
    ld hl, sp+$28                                 ; $517d: $f8 $28
    ld hl, sp-$50                                 ; $517f: $f8 $b0
    ldh a, [$f0]                                  ; $5181: $f0 $f0
    ld d, b                                       ; $5183: $50
    ld hl, sp+$18                                 ; $5184: $f8 $18
    db $f4                                        ; $5186: $f4
    ld a, h                                       ; $5187: $7c
    xor [hl]                                      ; $5188: $ae
    xor $e6                                       ; $5189: $ee $e6
    and $c0                                       ; $518b: $e6 $c0
    ret nz                                        ; $518d: $c0

    nop                                           ; $518e: $00
    nop                                           ; $518f: $00
    ld bc, $0301                                  ; $5190: $01 $01 $03
    inc bc                                        ; $5193: $03
    rlca                                          ; $5194: $07
    rlca                                          ; $5195: $07
    rrca                                          ; $5196: $0f
    rrca                                          ; $5197: $0f
    ld c, $0f                                     ; $5198: $0e $0f
    rlca                                          ; $519a: $07
    rlca                                          ; $519b: $07
    add hl, bc                                    ; $519c: $09
    rrca                                          ; $519d: $0f
    ld [$070f], sp                                ; $519e: $08 $0f $07
    rlca                                          ; $51a1: $07
    rrca                                          ; $51a2: $0f
    inc c                                         ; $51a3: $0c
    rla                                           ; $51a4: $17
    dec e                                         ; $51a5: $1d
    rla                                           ; $51a6: $17
    rra                                           ; $51a7: $1f
    inc c                                         ; $51a8: $0c
    rrca                                          ; $51a9: $0f
    ld c, $0b                                     ; $51aa: $0e $0b
    rrca                                          ; $51ac: $0f
    dec c                                         ; $51ad: $0d
    rlca                                          ; $51ae: $07
    rlca                                          ; $51af: $07
    ldh [$e0], a                                  ; $51b0: $e0 $e0
    ldh a, [$f0]                                  ; $51b2: $f0 $f0
    sub b                                         ; $51b4: $90
    ldh a, [rNR10]                                ; $51b5: $f0 $10
    ldh a, [$30]                                  ; $51b7: $f0 $30
    ldh a, [rNR10]                                ; $51b9: $f0 $10
    ldh a, [$28]                                  ; $51bb: $f0 $28
    ld hl, sp+$3e                                 ; $51bd: $f8 $3e
    cp $36                                        ; $51bf: $fe $36
    sub $94                                       ; $51c1: $d6 $94
    db $f4                                        ; $51c3: $f4
    add sp, $68                                   ; $51c4: $e8 $68
    cp b                                          ; $51c6: $b8
    ld hl, sp-$30                                 ; $51c7: $f8 $d0
    ldh a, [$f8]                                  ; $51c9: $f0 $f8
    ld hl, sp+$78                                 ; $51cb: $f8 $78
    ld l, b                                       ; $51cd: $68
    ld [hl], b                                    ; $51ce: $70

jr_026_51cf:
    ld [hl], b                                    ; $51cf: $70
    rlca                                          ; $51d0: $07
    rlca                                          ; $51d1: $07
    rrca                                          ; $51d2: $0f
    rrca                                          ; $51d3: $0f
    inc c                                         ; $51d4: $0c
    rrca                                          ; $51d5: $0f
    ld [$0a0f], sp                                ; $51d6: $08 $0f $0a
    rrca                                          ; $51d9: $0f
    jr jr_026_51fb                                ; $51da: $18 $1f

    ld a, [hl+]                                   ; $51dc: $2a
    ccf                                           ; $51dd: $3f
    db $e3                                        ; $51de: $e3
    rst $38                                       ; $51df: $ff
    reti                                          ; $51e0: $d9


    sbc $7c                                       ; $51e1: $de $7c
    ld [hl], a                                    ; $51e3: $77
    ld e, a                                       ; $51e4: $5f
    ld [hl], e                                    ; $51e5: $73
    ld a, a                                       ; $51e6: $7f
    ld a, h                                       ; $51e7: $7c
    dec bc                                        ; $51e8: $0b
    rrca                                          ; $51e9: $0f

jr_026_51ea:
    ld c, $0f                                     ; $51ea: $0e $0f
    rlca                                          ; $51ec: $07
    rlca                                          ; $51ed: $07
    ld bc, $8001                                  ; $51ee: $01 $01 $80
    add b                                         ; $51f1: $80
    ret nz                                        ; $51f2: $c0

    ret nz                                        ; $51f3: $c0

    ldh [$e0], a                                  ; $51f4: $e0 $e0
    jr nz, @-$1e                                  ; $51f6: $20 $e0

    and b                                         ; $51f8: $a0
    ldh [$30], a                                  ; $51f9: $e0 $30

jr_026_51fb:
    ldh a, [$a8]                                  ; $51fb: $f0 $a8
    ld hl, sp-$78                                 ; $51fd: $f8 $88
    ld hl, sp+$34                                 ; $51ff: $f8 $34
    db $fc                                        ; $5201: $fc
    ld a, h                                       ; $5202: $7c
    call c, $a0e0                                 ; $5203: $dc $e0 $a0
    ldh [$e0], a                                  ; $5206: $e0 $e0
    jr nz, jr_026_51ea                            ; $5208: $20 $e0

    ret nc                                        ; $520a: $d0

    ldh a, [$e0]                                  ; $520b: $f0 $e0
    jr nz, jr_026_51cf                            ; $520d: $20 $c0

    ret nz                                        ; $520f: $c0

    rlca                                          ; $5210: $07
    rlca                                          ; $5211: $07
    rrca                                          ; $5212: $0f
    rrca                                          ; $5213: $0f
    dec bc                                        ; $5214: $0b
    rrca                                          ; $5215: $0f
    ld [$0c0f], sp                                ; $5216: $08 $0f $0c
    rrca                                          ; $5219: $0f
    ld [$740f], sp                                ; $521a: $08 $0f $74
    ld a, a                                       ; $521d: $7f
    ld a, h                                       ; $521e: $7c
    ld a, a                                       ; $521f: $7f
    inc l                                         ; $5220: $2c
    dec hl                                        ; $5221: $2b
    add hl, sp                                    ; $5222: $39
    ccf                                           ; $5223: $3f
    rla                                           ; $5224: $17
    ld e, $1f                                     ; $5225: $1e $1f
    rra                                           ; $5227: $1f
    ld [$1d0f], sp                                ; $5228: $08 $0f $1d
    rla                                           ; $522b: $17
    ld e, $1a                                     ; $522c: $1e $1a
    ld c, $0e                                     ; $522e: $0e $0e
    add b                                         ; $5230: $80
    add b                                         ; $5231: $80
    ret nz                                        ; $5232: $c0

    ret nz                                        ; $5233: $c0

    ldh [$e0], a                                  ; $5234: $e0 $e0
    ldh a, [$f0]                                  ; $5236: $f0 $f0
    ld [hl], b                                    ; $5238: $70
    ldh a, [$e0]                                  ; $5239: $f0 $e0
    ldh [$90], a                                  ; $523b: $e0 $90
    ldh a, [rNR10]                                ; $523d: $f0 $10
    ldh a, [$e0]                                  ; $523f: $f0 $e0
    ldh [$e0], a                                  ; $5241: $e0 $e0
    ld h, b                                       ; $5243: $60
    ldh [$a0], a                                  ; $5244: $e0 $a0
    ret nc                                        ; $5246: $d0

    ldh a, [$d0]                                  ; $5247: $f0 $d0
    ldh a, [$b0]                                  ; $5249: $f0 $b0
    ldh a, [$f0]                                  ; $524b: $f0 $f0
    ret nc                                        ; $524d: $d0

    ldh [$e0], a                                  ; $524e: $e0 $e0
    inc bc                                        ; $5250: $03
    inc bc                                        ; $5251: $03
    rlca                                          ; $5252: $07
    rlca                                          ; $5253: $07
    rrca                                          ; $5254: $0f
    rrca                                          ; $5255: $0f
    rrca                                          ; $5256: $0f
    rrca                                          ; $5257: $0f
    rrca                                          ; $5258: $0f
    rrca                                          ; $5259: $0f
    rra                                           ; $525a: $1f
    rra                                           ; $525b: $1f
    ld a, [hl+]                                   ; $525c: $2a
    ccf                                           ; $525d: $3f
    jr z, @+$41                                   ; $525e: $28 $3f

    dec de                                        ; $5260: $1b
    rra                                           ; $5261: $1f
    rra                                           ; $5262: $1f
    inc d                                         ; $5263: $14
    ccf                                           ; $5264: $3f
    jr nc, @+$61                                  ; $5265: $30 $5f

    ld a, h                                       ; $5267: $7c
    ld l, e                                       ; $5268: $6b
    ld l, a                                       ; $5269: $6f
    rrca                                          ; $526a: $0f
    rrca                                          ; $526b: $0f
    rlca                                          ; $526c: $07
    rlca                                          ; $526d: $07
    ld bc, $c001                                  ; $526e: $01 $01 $c0
    ret nz                                        ; $5271: $c0

    ldh [$e0], a                                  ; $5272: $e0 $e0
    ldh [$e0], a                                  ; $5274: $e0 $e0
    ldh [$e0], a                                  ; $5276: $e0 $e0
    ldh [$e0], a                                  ; $5278: $e0 $e0
    or $f6                                        ; $527a: $f6 $f6
    xor [hl]                                      ; $527c: $ae
    cp $2c                                        ; $527d: $fe $2c
    db $fc                                        ; $527f: $fc
    cp h                                          ; $5280: $bc
    db $fc                                        ; $5281: $fc
    db $f4                                        ; $5282: $f4
    ld e, h                                       ; $5283: $5c
    ld hl, sp+$38                                 ; $5284: $f8 $38
    ldh [$60], a                                  ; $5286: $e0 $60
    and b                                         ; $5288: $a0
    ldh [$d0], a                                  ; $5289: $e0 $d0
    ldh a, [$e0]                                  ; $528b: $f0 $e0
    jr nz, @-$3e                                  ; $528d: $20 $c0

    ret nz                                        ; $528f: $c0

    ld bc, $0301                                  ; $5290: $01 $01 $03
    inc bc                                        ; $5293: $03
    rlca                                          ; $5294: $07
    rlca                                          ; $5295: $07
    rrca                                          ; $5296: $0f
    rrca                                          ; $5297: $0f
    ld c, $0f                                     ; $5298: $0e $0f
    rlca                                          ; $529a: $07
    rlca                                          ; $529b: $07
    add hl, bc                                    ; $529c: $09
    rrca                                          ; $529d: $0f
    ld [$070f], sp                                ; $529e: $08 $0f $07
    rlca                                          ; $52a1: $07
    rlca                                          ; $52a2: $07
    rlca                                          ; $52a3: $07
    rrca                                          ; $52a4: $0f
    ld a, [bc]                                    ; $52a5: $0a
    dec bc                                        ; $52a6: $0b
    rrca                                          ; $52a7: $0f
    ld [$050f], sp                                ; $52a8: $08 $0f $05
    rlca                                          ; $52ab: $07
    dec bc                                        ; $52ac: $0b
    ld c, $0f                                     ; $52ad: $0e $0f
    rrca                                          ; $52af: $0f
    ldh [$e0], a                                  ; $52b0: $e0 $e0
    ldh a, [$f0]                                  ; $52b2: $f0 $f0
    ret nc                                        ; $52b4: $d0

    ldh a, [rNR10]                                ; $52b5: $f0 $10
    ldh a, [$30]                                  ; $52b7: $f0 $30
    ldh a, [rNR10]                                ; $52b9: $f0 $10
    ldh a, [$28]                                  ; $52bb: $f0 $28
    ld hl, sp+$38                                 ; $52bd: $f8 $38
    ld hl, sp+$30                                 ; $52bf: $f8 $30
    ret nc                                        ; $52c1: $d0

    sub b                                         ; $52c2: $90
    ldh a, [$e0]                                  ; $52c3: $f0 $e0
    ldh [rLCDC], a                                ; $52c5: $e0 $40
    ret nz                                        ; $52c7: $c0

    ldh [$a0], a                                  ; $52c8: $e0 $a0
    ldh a, [$d0]                                  ; $52ca: $f0 $d0
    ei                                            ; $52cc: $fb
    ld a, e                                       ; $52cd: $7b
    rst $08                                       ; $52ce: $cf
    rst $08                                       ; $52cf: $cf
    ld bc, $0301                                  ; $52d0: $01 $01 $03
    inc bc                                        ; $52d3: $03
    rlca                                          ; $52d4: $07
    rlca                                          ; $52d5: $07
    rlca                                          ; $52d6: $07
    rlca                                          ; $52d7: $07
    ld b, $07                                     ; $52d8: $06 $07
    inc c                                         ; $52da: $0c
    rrca                                          ; $52db: $0f
    inc d                                         ; $52dc: $14
    rra                                           ; $52dd: $1f
    db $10                                        ; $52de: $10
    rra                                           ; $52df: $1f
    inc c                                         ; $52e0: $0c
    rrca                                          ; $52e1: $0f
    ld c, $0b                                     ; $52e2: $0e $0b
    rrca                                          ; $52e4: $0f
    dec bc                                        ; $52e5: $0b
    ld b, $07                                     ; $52e6: $06 $07

jr_026_52e8:
    rlca                                          ; $52e8: $07
    rlca                                          ; $52e9: $07
    dec c                                         ; $52ea: $0d
    rrca                                          ; $52eb: $0f
    rra                                           ; $52ec: $1f
    inc de                                        ; $52ed: $13

jr_026_52ee:
    rra                                           ; $52ee: $1f
    rra                                           ; $52ef: $1f
    ret nz                                        ; $52f0: $c0

    ret nz                                        ; $52f1: $c0

    ldh [$e0], a                                  ; $52f2: $e0 $e0
    ldh a, [$f0]                                  ; $52f4: $f0 $f0
    jr nc, jr_026_52e8                            ; $52f6: $30 $f0

    db $10                                        ; $52f8: $10
    ldh a, [$b0]                                  ; $52f9: $f0 $b0
    ldh a, [rNR10]                                ; $52fb: $f0 $10
    ldh a, [$50]                                  ; $52fd: $f0 $50
    ldh a, [$f0]                                  ; $52ff: $f0 $f0
    ldh a, [$58]                                  ; $5301: $f0 $58
    cp b                                          ; $5303: $b8
    jr c, jr_026_52ee                             ; $5304: $38 $e8

    ret nc                                        ; $5306: $d0

    ldh a, [rSVBK]                                ; $5307: $f0 $70
    ldh a, [$f8]                                  ; $5309: $f0 $f8
    ld hl, sp-$44                                 ; $530b: $f8 $bc
    db $e4                                        ; $530d: $e4
    db $fc                                        ; $530e: $fc
    db $fc                                        ; $530f: $fc
    rlca                                          ; $5310: $07
    rlca                                          ; $5311: $07
    rrca                                          ; $5312: $0f
    rrca                                          ; $5313: $0f
    dec bc                                        ; $5314: $0b
    rrca                                          ; $5315: $0f
    ld [$0c0f], sp                                ; $5316: $08 $0f $0c
    rrca                                          ; $5319: $0f
    ld [$140f], sp                                ; $531a: $08 $0f $14
    rra                                           ; $531d: $1f
    inc e                                         ; $531e: $1c
    rra                                           ; $531f: $1f
    inc c                                         ; $5320: $0c
    dec bc                                        ; $5321: $0b
    add hl, bc                                    ; $5322: $09
    rrca                                          ; $5323: $0f
    rlca                                          ; $5324: $07
    rlca                                          ; $5325: $07
    ld [bc], a                                    ; $5326: $02
    inc bc                                        ; $5327: $03
    rlca                                          ; $5328: $07
    dec b                                         ; $5329: $05
    rrca                                          ; $532a: $0f
    dec bc                                        ; $532b: $0b
    rst $18                                       ; $532c: $df
    sbc $f3                                       ; $532d: $de $f3
    di                                            ; $532f: $f3
    add b                                         ; $5330: $80
    add b                                         ; $5331: $80
    ret nz                                        ; $5332: $c0

    ret nz                                        ; $5333: $c0

    ldh [$e0], a                                  ; $5334: $e0 $e0
    ldh a, [$f0]                                  ; $5336: $f0 $f0
    ld [hl], b                                    ; $5338: $70
    ldh a, [$e0]                                  ; $5339: $f0 $e0
    ldh [$90], a                                  ; $533b: $e0 $90
    ldh a, [rNR10]                                ; $533d: $f0 $10
    ldh a, [$e0]                                  ; $533f: $f0 $e0
    ldh [$e0], a                                  ; $5341: $e0 $e0
    ldh [$f0], a                                  ; $5343: $e0 $f0
    ld d, b                                       ; $5345: $50
    ret nc                                        ; $5346: $d0

    ldh a, [rNR10]                                ; $5347: $f0 $10
    ldh a, [$a0]                                  ; $5349: $f0 $a0
    ldh [$d0], a                                  ; $534b: $e0 $d0
    ld [hl], b                                    ; $534d: $70
    ldh a, [$f0]                                  ; $534e: $f0 $f0
    inc bc                                        ; $5350: $03
    inc bc                                        ; $5351: $03
    rlca                                          ; $5352: $07
    rlca                                          ; $5353: $07
    rrca                                          ; $5354: $0f
    rrca                                          ; $5355: $0f
    rrca                                          ; $5356: $0f
    rrca                                          ; $5357: $0f
    inc de                                        ; $5358: $13
    rra                                           ; $5359: $1f
    db $10                                        ; $535a: $10
    rra                                           ; $535b: $1f
    db $10                                        ; $535c: $10
    rra                                           ; $535d: $1f
    inc c                                         ; $535e: $0c
    rrca                                          ; $535f: $0f
    rlca                                          ; $5360: $07
    rlca                                          ; $5361: $07
    dec bc                                        ; $5362: $0b
    ld c, $07                                     ; $5363: $0e $07
    rlca                                          ; $5365: $07
    ld [bc], a                                    ; $5366: $02
    inc bc                                        ; $5367: $03
    inc b                                         ; $5368: $04
    rlca                                          ; $5369: $07
    dec c                                         ; $536a: $0d
    rrca                                          ; $536b: $0f
    ld e, $13                                     ; $536c: $1e $13
    rra                                           ; $536e: $1f
    rra                                           ; $536f: $1f
    ldh [$e0], a                                  ; $5370: $e0 $e0
    ldh a, [$f0]                                  ; $5372: $f0 $f0
    ldh a, [$f0]                                  ; $5374: $f0 $f0
    ldh a, [$f0]                                  ; $5376: $f0 $f0
    add sp, -$08                                  ; $5378: $e8 $f8
    ld [$08f8], sp                                ; $537a: $08 $f8 $08
    ld hl, sp-$10                                 ; $537d: $f8 $f0
    ldh a, [$f0]                                  ; $537f: $f0 $f0
    db $10                                        ; $5381: $10
    ldh a, [rNR10]                                ; $5382: $f0 $10
    ldh a, [$f0]                                  ; $5384: $f0 $f0
    ld d, b                                       ; $5386: $50
    ldh a, [$f0]                                  ; $5387: $f0 $f0
    ldh a, [$90]                                  ; $5389: $f0 $90
    ldh a, [$d8]                                  ; $538b: $f0 $d8
    ld hl, sp-$08                                 ; $538d: $f8 $f8
    ld hl, sp+$01                                 ; $538f: $f8 $01
    ld bc, $0303                                  ; $5391: $01 $03 $03
    rlca                                          ; $5394: $07
    rlca                                          ; $5395: $07
    rrca                                          ; $5396: $0f
    rrca                                          ; $5397: $0f
    ld c, $0f                                     ; $5398: $0e $0f
    rlca                                          ; $539a: $07
    rlca                                          ; $539b: $07
    add hl, bc                                    ; $539c: $09
    rrca                                          ; $539d: $0f
    ld [$070f], sp                                ; $539e: $08 $0f $07
    rlca                                          ; $53a1: $07
    rrca                                          ; $53a2: $0f
    dec c                                         ; $53a3: $0d
    rra                                           ; $53a4: $1f
    inc e                                         ; $53a5: $1c
    rra                                           ; $53a6: $1f
    rra                                           ; $53a7: $1f
    rra                                           ; $53a8: $1f
    rra                                           ; $53a9: $1f
    rrca                                          ; $53aa: $0f
    dec c                                         ; $53ab: $0d
    dec bc                                        ; $53ac: $0b
    ld c, $0f                                     ; $53ad: $0e $0f
    rrca                                          ; $53af: $0f
    ldh [$e0], a                                  ; $53b0: $e0 $e0
    ldh a, [$f0]                                  ; $53b2: $f0 $f0
    ret nc                                        ; $53b4: $d0

    ldh a, [rNR10]                                ; $53b5: $f0 $10
    ldh a, [$30]                                  ; $53b7: $f0 $30
    ldh a, [rNR10]                                ; $53b9: $f0 $10
    ldh a, [$28]                                  ; $53bb: $f0 $28
    ld hl, sp+$38                                 ; $53bd: $f8 $38
    ld hl, sp+$30                                 ; $53bf: $f8 $30
    ret nc                                        ; $53c1: $d0

    sub b                                         ; $53c2: $90
    ldh a, [$e0]                                  ; $53c3: $f0 $e0
    ldh [$c0], a                                  ; $53c5: $e0 $c0
    ld b, b                                       ; $53c7: $40
    ret nz                                        ; $53c8: $c0

    ret nz                                        ; $53c9: $c0

    add b                                         ; $53ca: $80
    add b                                         ; $53cb: $80
    ret nz                                        ; $53cc: $c0

    ld b, b                                       ; $53cd: $40
    ret nz                                        ; $53ce: $c0

    ret nz                                        ; $53cf: $c0

    ld bc, $0301                                  ; $53d0: $01 $01 $03
    inc bc                                        ; $53d3: $03
    rlca                                          ; $53d4: $07
    rlca                                          ; $53d5: $07
    rlca                                          ; $53d6: $07
    rlca                                          ; $53d7: $07
    ld b, $07                                     ; $53d8: $06 $07
    inc c                                         ; $53da: $0c
    rrca                                          ; $53db: $0f
    inc d                                         ; $53dc: $14
    rra                                           ; $53dd: $1f
    db $10                                        ; $53de: $10
    rra                                           ; $53df: $1f
    call z, $eecf                                 ; $53e0: $cc $cf $ee
    db $eb                                        ; $53e3: $eb
    ccf                                           ; $53e4: $3f
    ccf                                           ; $53e5: $3f
    dec c                                         ; $53e6: $0d
    rrca                                          ; $53e7: $0f

jr_026_53e8:
    rlca                                          ; $53e8: $07
    rlca                                          ; $53e9: $07
    dec c                                         ; $53ea: $0d
    rrca                                          ; $53eb: $0f
    rra                                           ; $53ec: $1f
    inc de                                        ; $53ed: $13
    ld e, $1e                                     ; $53ee: $1e $1e
    ret nz                                        ; $53f0: $c0

    ret nz                                        ; $53f1: $c0

    ldh [$e0], a                                  ; $53f2: $e0 $e0
    ldh a, [$f0]                                  ; $53f4: $f0 $f0

jr_026_53f6:
    jr nc, jr_026_53e8                            ; $53f6: $30 $f0

    db $10                                        ; $53f8: $10
    ldh a, [$b0]                                  ; $53f9: $f0 $b0
    ldh a, [rNR10]                                ; $53fb: $f0 $10
    ldh a, [$50]                                  ; $53fd: $f0 $50
    ldh a, [$f0]                                  ; $53ff: $f0 $f0
    ldh a, [$50]                                  ; $5401: $f0 $50
    or b                                          ; $5403: $b0
    jr nc, jr_026_53f6                            ; $5404: $30 $f0

    ldh a, [$d0]                                  ; $5406: $f0 $d0
    ld [hl], b                                    ; $5408: $70
    ldh a, [$f8]                                  ; $5409: $f0 $f8
    ld hl, sp-$44                                 ; $540b: $f8 $bc
    db $e4                                        ; $540d: $e4
    ld a, h                                       ; $540e: $7c
    ld a, h                                       ; $540f: $7c
    rlca                                          ; $5410: $07
    rlca                                          ; $5411: $07
    rrca                                          ; $5412: $0f
    rrca                                          ; $5413: $0f
    dec bc                                        ; $5414: $0b
    rrca                                          ; $5415: $0f
    ld [$0c0f], sp                                ; $5416: $08 $0f $0c
    rrca                                          ; $5419: $0f
    ld [$140f], sp                                ; $541a: $08 $0f $14
    rra                                           ; $541d: $1f
    inc e                                         ; $541e: $1c
    rra                                           ; $541f: $1f
    inc c                                         ; $5420: $0c
    dec bc                                        ; $5421: $0b
    add hl, bc                                    ; $5422: $09
    rrca                                          ; $5423: $0f
    rlca                                          ; $5424: $07
    rlca                                          ; $5425: $07
    inc bc                                        ; $5426: $03
    ld [bc], a                                    ; $5427: $02
    inc bc                                        ; $5428: $03
    inc bc                                        ; $5429: $03
    ld bc, $0301                                  ; $542a: $01 $01 $03
    ld [bc], a                                    ; $542d: $02
    inc bc                                        ; $542e: $03
    inc bc                                        ; $542f: $03
    add b                                         ; $5430: $80
    add b                                         ; $5431: $80
    ret nz                                        ; $5432: $c0

    ret nz                                        ; $5433: $c0

    ldh [$e0], a                                  ; $5434: $e0 $e0
    ldh a, [$f0]                                  ; $5436: $f0 $f0
    ld [hl], b                                    ; $5438: $70
    ldh a, [$e0]                                  ; $5439: $f0 $e0
    ldh [$90], a                                  ; $543b: $e0 $90
    ldh a, [rNR10]                                ; $543d: $f0 $10
    ldh a, [$e0]                                  ; $543f: $f0 $e0
    ldh [$e0], a                                  ; $5441: $e0 $e0
    and b                                         ; $5443: $a0
    ldh a, [$30]                                  ; $5444: $f0 $30
    ret nc                                        ; $5446: $d0

    ldh a, [rNR10]                                ; $5447: $f0 $10
    ldh a, [$a0]                                  ; $5449: $f0 $a0
    ldh [$d0], a                                  ; $544b: $e0 $d0
    ld [hl], b                                    ; $544d: $70
    ldh a, [$f0]                                  ; $544e: $f0 $f0
    inc bc                                        ; $5450: $03
    inc bc                                        ; $5451: $03
    rlca                                          ; $5452: $07
    rlca                                          ; $5453: $07
    rrca                                          ; $5454: $0f
    rrca                                          ; $5455: $0f
    rrca                                          ; $5456: $0f
    rrca                                          ; $5457: $0f
    inc de                                        ; $5458: $13
    rra                                           ; $5459: $1f
    db $10                                        ; $545a: $10
    rra                                           ; $545b: $1f
    db $10                                        ; $545c: $10
    rra                                           ; $545d: $1f
    inc c                                         ; $545e: $0c
    rrca                                          ; $545f: $0f
    rlca                                          ; $5460: $07
    rlca                                          ; $5461: $07
    inc bc                                        ; $5462: $03
    ld [bc], a                                    ; $5463: $02
    inc bc                                        ; $5464: $03
    inc bc                                        ; $5465: $03
    ld [bc], a                                    ; $5466: $02
    inc bc                                        ; $5467: $03
    inc b                                         ; $5468: $04
    rlca                                          ; $5469: $07
    dec c                                         ; $546a: $0d
    rrca                                          ; $546b: $0f
    ld e, $13                                     ; $546c: $1e $13
    rra                                           ; $546e: $1f
    rra                                           ; $546f: $1f
    ldh [$e0], a                                  ; $5470: $e0 $e0
    ldh a, [$f0]                                  ; $5472: $f0 $f0
    ldh a, [$f0]                                  ; $5474: $f0 $f0
    ldh a, [$f0]                                  ; $5476: $f0 $f0
    add sp, -$08                                  ; $5478: $e8 $f8
    ld [$08f8], sp                                ; $547a: $08 $f8 $08
    ld hl, sp-$10                                 ; $547d: $f8 $f0
    ldh a, [$fb]                                  ; $547f: $f0 $fb
    dec hl                                        ; $5481: $2b
    rst $38                                       ; $5482: $ff
    rra                                           ; $5483: $1f
    db $ec                                        ; $5484: $ec
    db $fc                                        ; $5485: $fc
    ld d, b                                       ; $5486: $50
    ldh a, [$f0]                                  ; $5487: $f0 $f0
    ldh a, [$90]                                  ; $5489: $f0 $90
    ldh a, [$d8]                                  ; $548b: $f0 $d8
    ld hl, sp+$78                                 ; $548d: $f8 $78
    ld a, b                                       ; $548f: $78
    ld bc, $0301                                  ; $5490: $01 $01 $03
    inc bc                                        ; $5493: $03
    rlca                                          ; $5494: $07
    rlca                                          ; $5495: $07
    ld l, a                                       ; $5496: $6f
    ld l, a                                       ; $5497: $6f
    ld l, [hl]                                    ; $5498: $6e
    ld l, a                                       ; $5499: $6f
    ld h, a                                       ; $549a: $67
    ld h, a                                       ; $549b: $67
    add hl, sp                                    ; $549c: $39
    ccf                                           ; $549d: $3f
    jr jr_026_54bf                                ; $549e: $18 $1f

    rra                                           ; $54a0: $1f
    rla                                           ; $54a1: $17
    dec l                                         ; $54a2: $2d
    ccf                                           ; $54a3: $3f
    ccf                                           ; $54a4: $3f
    ld a, $0b                                     ; $54a5: $3e $0b
    rrca                                          ; $54a7: $0f
    add hl, bc                                    ; $54a8: $09
    rrca                                          ; $54a9: $0f
    dec b                                         ; $54aa: $05
    rlca                                          ; $54ab: $07
    rrca                                          ; $54ac: $0f
    ld a, [bc]                                    ; $54ad: $0a
    rrca                                          ; $54ae: $0f
    rrca                                          ; $54af: $0f
    ldh [$e0], a                                  ; $54b0: $e0 $e0
    ldh a, [$f0]                                  ; $54b2: $f0 $f0
    ret nc                                        ; $54b4: $d0

    ldh a, [rNR10]                                ; $54b5: $f0 $10
    ldh a, [$30]                                  ; $54b7: $f0 $30
    ldh a, [rNR10]                                ; $54b9: $f0 $10
    ldh a, [$28]                                  ; $54bb: $f0 $28
    ld hl, sp+$38                                 ; $54bd: $f8 $38

jr_026_54bf:
    ld hl, sp+$30                                 ; $54bf: $f8 $30
    ret nc                                        ; $54c1: $d0

    sub b                                         ; $54c2: $90
    ldh a, [$e0]                                  ; $54c3: $f0 $e0
    ldh [$c0], a                                  ; $54c5: $e0 $c0
    ld b, b                                       ; $54c7: $40
    add b                                         ; $54c8: $80
    add b                                         ; $54c9: $80
    ld b, b                                       ; $54ca: $40
    ret nz                                        ; $54cb: $c0

    ret nz                                        ; $54cc: $c0

    ld b, b                                       ; $54cd: $40
    ret nz                                        ; $54ce: $c0

    ret nz                                        ; $54cf: $c0

    ld bc, $0301                                  ; $54d0: $01 $01 $03
    inc bc                                        ; $54d3: $03
    rlca                                          ; $54d4: $07
    rlca                                          ; $54d5: $07
    rst $00                                       ; $54d6: $c7
    rst $00                                       ; $54d7: $c7
    add $c7                                       ; $54d8: $c6 $c7
    call z, Call_026_74cf                         ; $54da: $cc $cf $74
    ld a, a                                       ; $54dd: $7f
    jr nc, jr_026_551f                            ; $54de: $30 $3f

    inc e                                         ; $54e0: $1c
    rra                                           ; $54e1: $1f
    ld d, $1f                                     ; $54e2: $16 $1f
    rrca                                          ; $54e4: $0f
    dec bc                                        ; $54e5: $0b
    ld b, $07                                     ; $54e6: $06 $07

jr_026_54e8:
    rlca                                          ; $54e8: $07
    rlca                                          ; $54e9: $07
    dec c                                         ; $54ea: $0d
    rrca                                          ; $54eb: $0f
    rra                                           ; $54ec: $1f
    inc de                                        ; $54ed: $13
    ld e, $1e                                     ; $54ee: $1e $1e
    ret nz                                        ; $54f0: $c0

    ret nz                                        ; $54f1: $c0

    ldh [$e0], a                                  ; $54f2: $e0 $e0
    ldh a, [$f0]                                  ; $54f4: $f0 $f0

jr_026_54f6:
    jr nc, jr_026_54e8                            ; $54f6: $30 $f0

    db $10                                        ; $54f8: $10
    ldh a, [$b0]                                  ; $54f9: $f0 $b0
    ldh a, [rNR10]                                ; $54fb: $f0 $10
    ldh a, [$50]                                  ; $54fd: $f0 $50
    ldh a, [$f0]                                  ; $54ff: $f0 $f0
    ldh a, [$50]                                  ; $5501: $f0 $50
    or b                                          ; $5503: $b0
    jr nc, jr_026_54f6                            ; $5504: $30 $f0

    ldh a, [$d0]                                  ; $5506: $f0 $d0
    ldh a, [$f0]                                  ; $5508: $f0 $f0
    ret c                                         ; $550a: $d8

    ld hl, sp-$44                                 ; $550b: $f8 $bc
    db $e4                                        ; $550d: $e4
    ld a, h                                       ; $550e: $7c
    ld a, h                                       ; $550f: $7c
    rlca                                          ; $5510: $07
    rlca                                          ; $5511: $07
    rrca                                          ; $5512: $0f
    rrca                                          ; $5513: $0f
    dec bc                                        ; $5514: $0b
    rrca                                          ; $5515: $0f
    ld [$0c0f], sp                                ; $5516: $08 $0f $0c
    rrca                                          ; $5519: $0f
    ld [$140f], sp                                ; $551a: $08 $0f $14
    rra                                           ; $551d: $1f
    inc e                                         ; $551e: $1c

jr_026_551f:
    rra                                           ; $551f: $1f
    inc c                                         ; $5520: $0c
    dec bc                                        ; $5521: $0b
    add hl, bc                                    ; $5522: $09
    rrca                                          ; $5523: $0f
    rlca                                          ; $5524: $07
    rlca                                          ; $5525: $07
    inc bc                                        ; $5526: $03
    inc bc                                        ; $5527: $03
    ld bc, $0101                                  ; $5528: $01 $01 $01
    ld bc, $0203                                  ; $552b: $01 $03 $02
    inc bc                                        ; $552e: $03
    inc bc                                        ; $552f: $03
    add b                                         ; $5530: $80
    add b                                         ; $5531: $80
    ret nz                                        ; $5532: $c0

    ret nz                                        ; $5533: $c0

    ldh [$e0], a                                  ; $5534: $e0 $e0
    or $f6                                        ; $5536: $f6 $f6

jr_026_5538:
    halt                                          ; $5538: $76
    or $e6                                        ; $5539: $f6 $e6
    and $9c                                       ; $553b: $e6 $9c
    db $fc                                        ; $553d: $fc
    jr jr_026_5538                                ; $553e: $18 $f8

    ld hl, sp-$18                                 ; $5540: $f8 $e8
    ldh a, [$b0]                                  ; $5542: $f0 $b0
    ldh [$60], a                                  ; $5544: $e0 $60
    sub b                                         ; $5546: $90
    ldh a, [rNR10]                                ; $5547: $f0 $10
    ldh a, [$a0]                                  ; $5549: $f0 $a0
    ldh [$f0], a                                  ; $554b: $e0 $f0
    ld d, b                                       ; $554d: $50
    ldh a, [$f0]                                  ; $554e: $f0 $f0
    inc bc                                        ; $5550: $03
    inc bc                                        ; $5551: $03
    rlca                                          ; $5552: $07
    rlca                                          ; $5553: $07
    rrca                                          ; $5554: $0f
    rrca                                          ; $5555: $0f
    rrca                                          ; $5556: $0f
    rrca                                          ; $5557: $0f
    inc de                                        ; $5558: $13
    rra                                           ; $5559: $1f
    db $10                                        ; $555a: $10
    rra                                           ; $555b: $1f
    db $10                                        ; $555c: $10
    rra                                           ; $555d: $1f
    inc c                                         ; $555e: $0c
    rrca                                          ; $555f: $0f
    rlca                                          ; $5560: $07
    rlca                                          ; $5561: $07
    inc bc                                        ; $5562: $03
    ld [bc], a                                    ; $5563: $02
    inc bc                                        ; $5564: $03
    inc bc                                        ; $5565: $03
    ld [bc], a                                    ; $5566: $02
    inc bc                                        ; $5567: $03
    inc b                                         ; $5568: $04
    rlca                                          ; $5569: $07
    dec c                                         ; $556a: $0d
    rrca                                          ; $556b: $0f
    ld e, $13                                     ; $556c: $1e $13
    rra                                           ; $556e: $1f
    rra                                           ; $556f: $1f
    ldh [$e0], a                                  ; $5570: $e0 $e0
    ldh a, [$f0]                                  ; $5572: $f0 $f0
    ldh a, [$f0]                                  ; $5574: $f0 $f0
    di                                            ; $5576: $f3
    di                                            ; $5577: $f3
    db $eb                                        ; $5578: $eb
    ei                                            ; $5579: $fb
    ld a, [bc]                                    ; $557a: $0a
    ld a, [$fe0e]                                 ; $557b: $fa $0e $fe
    db $fc                                        ; $557e: $fc
    db $fc                                        ; $557f: $fc
    db $f4                                        ; $5580: $f4
    ld e, h                                       ; $5581: $5c
    add sp, $38                                   ; $5582: $e8 $38
    ldh a, [$f0]                                  ; $5584: $f0 $f0
    ld d, b                                       ; $5586: $50
    ldh a, [$f0]                                  ; $5587: $f0 $f0
    ldh a, [$90]                                  ; $5589: $f0 $90
    ldh a, [$d8]                                  ; $558b: $f0 $d8
    ld hl, sp+$78                                 ; $558d: $f8 $78
    ld a, b                                       ; $558f: $78
    inc bc                                        ; $5590: $03
    inc bc                                        ; $5591: $03
    rlca                                          ; $5592: $07
    rlca                                          ; $5593: $07
    rst $00                                       ; $5594: $c7
    rst $00                                       ; $5595: $c7
    rst $08                                       ; $5596: $cf
    rst $08                                       ; $5597: $cf
    rst $10                                       ; $5598: $d7
    rst $18                                       ; $5599: $df
    ld d, a                                       ; $559a: $57
    ld e, a                                       ; $559b: $5f
    ld l, e                                       ; $559c: $6b
    ld l, a                                       ; $559d: $6f
    jr c, @+$41                                   ; $559e: $38 $3f

    rra                                           ; $55a0: $1f
    rla                                           ; $55a1: $17
    rla                                           ; $55a2: $17
    inc e                                         ; $55a3: $1c
    rrca                                          ; $55a4: $0f
    rrca                                          ; $55a5: $0f
    ld a, [bc]                                    ; $55a6: $0a
    rrca                                          ; $55a7: $0f
    add hl, bc                                    ; $55a8: $09
    rrca                                          ; $55a9: $0f
    dec b                                         ; $55aa: $05
    rlca                                          ; $55ab: $07
    rrca                                          ; $55ac: $0f
    dec bc                                        ; $55ad: $0b
    rrca                                          ; $55ae: $0f
    rrca                                          ; $55af: $0f
    ldh [$e0], a                                  ; $55b0: $e0 $e0
    ldh a, [$f0]                                  ; $55b2: $f0 $f0
    ldh a, [$f0]                                  ; $55b4: $f0 $f0
    ldh a, [$f0]                                  ; $55b6: $f0 $f0
    ldh a, [$f0]                                  ; $55b8: $f0 $f0
    add sp, -$08                                  ; $55ba: $e8 $f8
    add sp, -$08                                  ; $55bc: $e8 $f8
    ret nc                                        ; $55be: $d0

    ldh a, [rNR10]                                ; $55bf: $f0 $10
    ldh a, [$a0]                                  ; $55c1: $f0 $a0
    ldh [$c0], a                                  ; $55c3: $e0 $c0
    ld b, b                                       ; $55c5: $40
    ret nz                                        ; $55c6: $c0

    ret nz                                        ; $55c7: $c0

    ret nz                                        ; $55c8: $c0

    ret nz                                        ; $55c9: $c0

    ld b, b                                       ; $55ca: $40
    ret nz                                        ; $55cb: $c0

    ldh [$a0], a                                  ; $55cc: $e0 $a0
    ldh [$e0], a                                  ; $55ce: $e0 $e0
    ld bc, $0301                                  ; $55d0: $01 $01 $03
    inc bc                                        ; $55d3: $03
    rst $00                                       ; $55d4: $c7
    rst $00                                       ; $55d5: $c7
    rst $08                                       ; $55d6: $cf
    rst $08                                       ; $55d7: $cf
    adc $cf                                       ; $55d8: $ce $cf
    ld h, a                                       ; $55da: $67
    ld h, a                                       ; $55db: $67
    add hl, sp                                    ; $55dc: $39
    ccf                                           ; $55dd: $3f
    jr jr_026_55ff                                ; $55de: $18 $1f

    rra                                           ; $55e0: $1f
    rla                                           ; $55e1: $17
    rrca                                          ; $55e2: $0f
    ld c, $07                                     ; $55e3: $0e $07
    dec b                                         ; $55e5: $05
    rlca                                          ; $55e6: $07
    rlca                                          ; $55e7: $07
    ld [$1d0f], sp                                ; $55e8: $08 $0f $1d
    rla                                           ; $55eb: $17
    rra                                           ; $55ec: $1f
    inc de                                        ; $55ed: $13
    rrca                                          ; $55ee: $0f
    rrca                                          ; $55ef: $0f
    ldh [$e0], a                                  ; $55f0: $e0 $e0
    ldh a, [$f0]                                  ; $55f2: $f0 $f0
    sub b                                         ; $55f4: $90
    ldh a, [rNR10]                                ; $55f5: $f0 $10
    ldh a, [$30]                                  ; $55f7: $f0 $30
    ldh a, [rNR10]                                ; $55f9: $f0 $10
    ldh a, [$28]                                  ; $55fb: $f0 $28
    ld hl, sp+$38                                 ; $55fd: $f8 $38

jr_026_55ff:
    ld hl, sp+$30                                 ; $55ff: $f8 $30
    ret nc                                        ; $5601: $d0

    sub b                                         ; $5602: $90
    ldh a, [$e0]                                  ; $5603: $f0 $e0
    ld h, b                                       ; $5605: $60
    ldh [$e0], a                                  ; $5606: $e0 $e0
    ret nc                                        ; $5608: $d0

    ldh a, [$b0]                                  ; $5609: $f0 $b0
    ldh a, [$f8]                                  ; $560b: $f0 $f8
    ret z                                         ; $560d: $c8

    ld a, b                                       ; $560e: $78
    ld a, b                                       ; $560f: $78
    rlca                                          ; $5610: $07
    rlca                                          ; $5611: $07
    rrca                                          ; $5612: $0f
    rrca                                          ; $5613: $0f
    inc e                                         ; $5614: $1c
    rra                                           ; $5615: $1f
    ld de, $141f                                  ; $5616: $11 $1f $14
    rra                                           ; $5619: $1f
    ld a, [bc]                                    ; $561a: $0a
    rrca                                          ; $561b: $0f
    ld a, [bc]                                    ; $561c: $0a
    rrca                                          ; $561d: $0f
    rlca                                          ; $561e: $07
    rlca                                          ; $561f: $07
    dec b                                         ; $5620: $05
    ld b, $06                                     ; $5621: $06 $06
    rlca                                          ; $5623: $07
    inc bc                                        ; $5624: $03
    inc bc                                        ; $5625: $03
    inc bc                                        ; $5626: $03
    inc bc                                        ; $5627: $03
    dec b                                         ; $5628: $05
    rlca                                          ; $5629: $07
    rlca                                          ; $562a: $07
    rlca                                          ; $562b: $07
    rlca                                          ; $562c: $07
    dec b                                         ; $562d: $05
    inc bc                                        ; $562e: $03
    inc bc                                        ; $562f: $03
    ret nz                                        ; $5630: $c0

    ret nz                                        ; $5631: $c0

    ldh [$e0], a                                  ; $5632: $e0 $e0
    ld h, e                                       ; $5634: $63
    db $e3                                        ; $5635: $e3
    ld [hl], e                                    ; $5636: $73
    di                                            ; $5637: $f3
    dec sp                                        ; $5638: $3b
    ei                                            ; $5639: $fb
    ld a, [hl+]                                   ; $563a: $2a
    ld a, [$fe8e]                                 ; $563b: $fa $8e $fe
    sub h                                         ; $563e: $94

jr_026_563f:
    db $f4                                        ; $563f: $f4
    inc l                                         ; $5640: $2c
    db $ec                                        ; $5641: $ec
    ld a, h                                       ; $5642: $7c
    db $f4                                        ; $5643: $f4
    ld hl, sp-$18                                 ; $5644: $f8 $e8
    ld hl, sp-$48                                 ; $5646: $f8 $b8
    ldh a, [$f0]                                  ; $5648: $f0 $f0
    ret nc                                        ; $564a: $d0

    ldh a, [$f0]                                  ; $564b: $f0 $f0
    jr nc, jr_026_563f                            ; $564d: $30 $f0

    ldh a, [rTAC]                                 ; $564f: $f0 $07
    rlca                                          ; $5651: $07
    rrca                                          ; $5652: $0f
    rrca                                          ; $5653: $0f
    add hl, bc                                    ; $5654: $09
    rrca                                          ; $5655: $0f
    inc c                                         ; $5656: $0c
    rrca                                          ; $5657: $0f
    ld [$140f], sp                                ; $5658: $08 $0f $14
    rra                                           ; $565b: $1f
    inc e                                         ; $565c: $1c
    rra                                           ; $565d: $1f
    inc c                                         ; $565e: $0c
    dec bc                                        ; $565f: $0b
    ld [$090f], sp                                ; $5660: $08 $0f $09
    rrca                                          ; $5663: $0f
    rlca                                          ; $5664: $07
    rlca                                          ; $5665: $07
    rlca                                          ; $5666: $07
    rlca                                          ; $5667: $07
    inc b                                         ; $5668: $04
    rlca                                          ; $5669: $07
    dec c                                         ; $566a: $0d
    rrca                                          ; $566b: $0f
    ld e, $13                                     ; $566c: $1e $13
    rra                                           ; $566e: $1f
    rra                                           ; $566f: $1f
    add b                                         ; $5670: $80
    add b                                         ; $5671: $80
    ret nz                                        ; $5672: $c0

    ret nz                                        ; $5673: $c0

    db $e3                                        ; $5674: $e3
    db $e3                                        ; $5675: $e3
    di                                            ; $5676: $f3
    di                                            ; $5677: $f3
    di                                            ; $5678: $f3
    di                                            ; $5679: $f3
    sub [hl]                                      ; $567a: $96
    or $1c                                        ; $567b: $f6 $1c
    db $fc                                        ; $567d: $fc
    ld [hl], h                                    ; $567e: $74
    db $fc                                        ; $567f: $fc
    ret c                                         ; $5680: $d8

    ld hl, sp-$08                                 ; $5681: $f8 $f8
    cp b                                          ; $5683: $b8
    ldh a, [$50]                                  ; $5684: $f0 $50
    ldh [$e0], a                                  ; $5686: $e0 $e0
    ret nc                                        ; $5688: $d0

    ldh a, [$b8]                                  ; $5689: $f0 $b8
    add sp, -$08                                  ; $568b: $e8 $f8
    ret c                                         ; $568d: $d8

    ld [hl], b                                    ; $568e: $70
    ld [hl], b                                    ; $568f: $70
    nop                                           ; $5690: $00
    nop                                           ; $5691: $00
    ld bc, $0301                                  ; $5692: $01 $01 $03
    inc bc                                        ; $5695: $03
    rlca                                          ; $5696: $07
    rlca                                          ; $5697: $07
    rrca                                          ; $5698: $0f
    rrca                                          ; $5699: $0f
    ld c, $0f                                     ; $569a: $0e $0f
    rlca                                          ; $569c: $07
    rlca                                          ; $569d: $07
    add hl, bc                                    ; $569e: $09
    rrca                                          ; $569f: $0f
    ld [$070f], sp                                ; $56a0: $08 $0f $07
    rlca                                          ; $56a3: $07
    rlca                                          ; $56a4: $07
    dec b                                         ; $56a5: $05
    dec bc                                        ; $56a6: $0b
    rrca                                          ; $56a7: $0f
    dec bc                                        ; $56a8: $0b
    rrca                                          ; $56a9: $0f
    rrca                                          ; $56aa: $0f
    rrca                                          ; $56ab: $0f
    rrca                                          ; $56ac: $0f
    dec bc                                        ; $56ad: $0b
    rlca                                          ; $56ae: $07
    rlca                                          ; $56af: $07
    nop                                           ; $56b0: $00
    nop                                           ; $56b1: $00
    ldh [$e0], a                                  ; $56b2: $e0 $e0
    ldh a, [$f0]                                  ; $56b4: $f0 $f0
    sub b                                         ; $56b6: $90
    ldh a, [rNR10]                                ; $56b7: $f0 $10
    ldh a, [$30]                                  ; $56b9: $f0 $30
    ldh a, [rNR10]                                ; $56bb: $f0 $10
    ldh a, [$28]                                  ; $56bd: $f0 $28
    ld hl, sp+$38                                 ; $56bf: $f8 $38
    ld hl, sp+$30                                 ; $56c1: $f8 $30
    ret nc                                        ; $56c3: $d0

    add sp, $78                                   ; $56c4: $e8 $78
    ld hl, sp-$08                                 ; $56c6: $f8 $f8
    db $10                                        ; $56c8: $10
    ldh a, [$f8]                                  ; $56c9: $f0 $f8
    add sp, -$08                                  ; $56cb: $e8 $f8
    ret c                                         ; $56cd: $d8

    ld [hl], b                                    ; $56ce: $70
    ld [hl], b                                    ; $56cf: $70
    nop                                           ; $56d0: $00
    nop                                           ; $56d1: $00
    rlca                                          ; $56d2: $07
    rlca                                          ; $56d3: $07
    rrca                                          ; $56d4: $0f
    rrca                                          ; $56d5: $0f
    inc c                                         ; $56d6: $0c
    rrca                                          ; $56d7: $0f
    ld [$0a0f], sp                                ; $56d8: $08 $0f $0a
    rrca                                          ; $56db: $0f
    jr jr_026_56fd                                ; $56dc: $18 $1f

    ld a, [hl+]                                   ; $56de: $2a
    ccf                                           ; $56df: $3f
    inc hl                                        ; $56e0: $23
    ccf                                           ; $56e1: $3f
    ld e, c                                       ; $56e2: $59
    ld a, [hl]                                    ; $56e3: $7e
    ld c, a                                       ; $56e4: $4f
    ld c, e                                       ; $56e5: $4b
    rst $08                                       ; $56e6: $cf
    adc $c9                                       ; $56e7: $ce $c9
    rst $08                                       ; $56e9: $cf
    ld d, $1f                                     ; $56ea: $16 $1f
    rrca                                          ; $56ec: $0f
    add hl, bc                                    ; $56ed: $09
    rlca                                          ; $56ee: $07
    rlca                                          ; $56ef: $07
    nop                                           ; $56f0: $00
    nop                                           ; $56f1: $00
    add b                                         ; $56f2: $80
    add b                                         ; $56f3: $80
    ret nz                                        ; $56f4: $c0

    ret nz                                        ; $56f5: $c0

    ldh [$e0], a                                  ; $56f6: $e0 $e0
    jr nz, @-$1e                                  ; $56f8: $20 $e0

    and b                                         ; $56fa: $a0
    ldh [$30], a                                  ; $56fb: $e0 $30

jr_026_56fd:
    ldh a, [$a8]                                  ; $56fd: $f0 $a8
    ld hl, sp-$78                                 ; $56ff: $f8 $88
    ld hl, sp+$30                                 ; $5701: $f8 $30
    ldh a, [$f4]                                  ; $5703: $f0 $f4
    sbc h                                         ; $5705: $9c
    db $fc                                        ; $5706: $fc
    ld a, h                                       ; $5707: $7c
    and b                                         ; $5708: $a0
    ldh [$e0], a                                  ; $5709: $e0 $e0
    ldh [$c0], a                                  ; $570b: $e0 $c0
    ret nz                                        ; $570d: $c0

    nop                                           ; $570e: $00
    nop                                           ; $570f: $00
    nop                                           ; $5710: $00
    nop                                           ; $5711: $00
    rlca                                          ; $5712: $07
    rlca                                          ; $5713: $07
    rrca                                          ; $5714: $0f
    rrca                                          ; $5715: $0f
    dec bc                                        ; $5716: $0b
    rrca                                          ; $5717: $0f
    ld [$0c0f], sp                                ; $5718: $08 $0f $0c
    rrca                                          ; $571b: $0f
    ld [$140f], sp                                ; $571c: $08 $0f $14
    rra                                           ; $571f: $1f
    inc e                                         ; $5720: $1c
    rra                                           ; $5721: $1f
    inc c                                         ; $5722: $0c
    dec bc                                        ; $5723: $0b
    rlca                                          ; $5724: $07
    ld b, $05                                     ; $5725: $06 $05
    rlca                                          ; $5727: $07
    dec bc                                        ; $5728: $0b
    rrca                                          ; $5729: $0f
    rra                                           ; $572a: $1f
    rra                                           ; $572b: $1f
    ld e, $16                                     ; $572c: $1e $16
    ld c, $0e                                     ; $572e: $0e $0e
    nop                                           ; $5730: $00
    nop                                           ; $5731: $00
    add b                                         ; $5732: $80
    add b                                         ; $5733: $80
    ret nz                                        ; $5734: $c0

    ret nz                                        ; $5735: $c0

    ldh [$e0], a                                  ; $5736: $e0 $e0
    ldh a, [$f0]                                  ; $5738: $f0 $f0

jr_026_573a:
    ld [hl], b                                    ; $573a: $70
    ldh a, [$e0]                                  ; $573b: $f0 $e0
    ldh [$90], a                                  ; $573d: $e0 $90
    ldh a, [rNR10]                                ; $573f: $f0 $10
    ldh a, [$e0]                                  ; $5741: $f0 $e0
    ldh [$e8], a                                  ; $5743: $e0 $e8
    cp b                                          ; $5745: $b8
    add sp, -$08                                  ; $5746: $e8 $f8
    jr nc, jr_026_573a                            ; $5748: $30 $f0

    ld [hl], b                                    ; $574a: $70
    ret nc                                        ; $574b: $d0

    ldh a, [$b0]                                  ; $574c: $f0 $b0
    ldh [$e0], a                                  ; $574e: $e0 $e0
    nop                                           ; $5750: $00
    nop                                           ; $5751: $00
    inc bc                                        ; $5752: $03
    inc bc                                        ; $5753: $03
    rlca                                          ; $5754: $07
    rlca                                          ; $5755: $07
    rrca                                          ; $5756: $0f
    rrca                                          ; $5757: $0f
    rrca                                          ; $5758: $0f
    rrca                                          ; $5759: $0f
    rrca                                          ; $575a: $0f
    rrca                                          ; $575b: $0f
    rra                                           ; $575c: $1f
    rra                                           ; $575d: $1f
    ld a, [hl+]                                   ; $575e: $2a
    ccf                                           ; $575f: $3f
    jr z, jr_026_57a1                             ; $5760: $28 $3f

    ld a, e                                       ; $5762: $7b
    ld a, a                                       ; $5763: $7f
    ccf                                           ; $5764: $3f
    jr c, jr_026_5776                             ; $5765: $38 $0f

    inc c                                         ; $5767: $0c
    dec bc                                        ; $5768: $0b
    rrca                                          ; $5769: $0f
    rla                                           ; $576a: $17
    rra                                           ; $576b: $1f
    rrca                                          ; $576c: $0f
    add hl, bc                                    ; $576d: $09
    rlca                                          ; $576e: $07
    rlca                                          ; $576f: $07
    nop                                           ; $5770: $00
    nop                                           ; $5771: $00
    ret nz                                        ; $5772: $c0

    ret nz                                        ; $5773: $c0

    ldh [$e0], a                                  ; $5774: $e0 $e0

jr_026_5776:
    ldh [$e0], a                                  ; $5776: $e0 $e0
    ldh [$e0], a                                  ; $5778: $e0 $e0
    ldh [$e0], a                                  ; $577a: $e0 $e0
    ldh a, [$f0]                                  ; $577c: $f0 $f0
    xor b                                         ; $577e: $a8
    ld hl, sp+$28                                 ; $577f: $f8 $28
    ld hl, sp-$50                                 ; $5781: $f8 $b0
    ldh a, [$f8]                                  ; $5783: $f0 $f8
    jr @-$0a                                      ; $5785: $18 $f4

    ld a, h                                       ; $5787: $7c
    xor [hl]                                      ; $5788: $ae
    xor $e6                                       ; $5789: $ee $e6
    and $c0                                       ; $578b: $e6 $c0
    ret nz                                        ; $578d: $c0

    nop                                           ; $578e: $00
    nop                                           ; $578f: $00
    nop                                           ; $5790: $00
    nop                                           ; $5791: $00
    ld bc, $0301                                  ; $5792: $01 $01 $03
    inc bc                                        ; $5795: $03
    rlca                                          ; $5796: $07
    rlca                                          ; $5797: $07
    rlca                                          ; $5798: $07
    rlca                                          ; $5799: $07
    inc bc                                        ; $579a: $03
    inc bc                                        ; $579b: $03
    inc b                                         ; $579c: $04
    rlca                                          ; $579d: $07
    inc b                                         ; $579e: $04
    rlca                                          ; $579f: $07
    inc bc                                        ; $57a0: $03

jr_026_57a1:
    inc bc                                        ; $57a1: $03
    rlca                                          ; $57a2: $07
    ld b, $07                                     ; $57a3: $06 $07
    dec b                                         ; $57a5: $05
    dec bc                                        ; $57a6: $0b
    rrca                                          ; $57a7: $0f
    dec bc                                        ; $57a8: $0b
    rrca                                          ; $57a9: $0f
    rrca                                          ; $57aa: $0f
    rrca                                          ; $57ab: $0f
    rrca                                          ; $57ac: $0f
    dec bc                                        ; $57ad: $0b
    rlca                                          ; $57ae: $07
    rlca                                          ; $57af: $07
    ldh a, [$f0]                                  ; $57b0: $f0 $f0
    ld hl, sp-$08                                 ; $57b2: $f8 $f8
    ret z                                         ; $57b4: $c8

    ld hl, sp-$78                                 ; $57b5: $f8 $88
    ld hl, sp+$18                                 ; $57b7: $f8 $18
    ld hl, sp-$78                                 ; $57b9: $f8 $88
    ld hl, sp-$6c                                 ; $57bb: $f8 $94
    db $fc                                        ; $57bd: $fc
    inc e                                         ; $57be: $1c
    db $fc                                        ; $57bf: $fc
    sbc b                                         ; $57c0: $98
    add sp, -$70                                  ; $57c1: $e8 $90
    ldh a, [$e8]                                  ; $57c3: $f0 $e8
    ld a, b                                       ; $57c5: $78
    ld hl, sp-$08                                 ; $57c6: $f8 $f8
    db $10                                        ; $57c8: $10
    ldh a, [$f8]                                  ; $57c9: $f0 $f8
    add sp, -$08                                  ; $57cb: $e8 $f8
    ret c                                         ; $57cd: $d8

    ld [hl], b                                    ; $57ce: $70
    ld [hl], b                                    ; $57cf: $70
    inc bc                                        ; $57d0: $03
    inc bc                                        ; $57d1: $03
    rlca                                          ; $57d2: $07
    rlca                                          ; $57d3: $07
    ld b, $07                                     ; $57d4: $06 $07
    inc b                                         ; $57d6: $04
    rlca                                          ; $57d7: $07
    dec b                                         ; $57d8: $05
    rlca                                          ; $57d9: $07
    inc c                                         ; $57da: $0c
    rrca                                          ; $57db: $0f
    dec d                                         ; $57dc: $15
    rra                                           ; $57dd: $1f
    ld de, $2c1f                                  ; $57de: $11 $1f $2c
    ccf                                           ; $57e1: $3f
    ld a, h                                       ; $57e2: $7c
    ld [hl], a                                    ; $57e3: $77
    ld c, a                                       ; $57e4: $4f
    ld c, e                                       ; $57e5: $4b
    rst $08                                       ; $57e6: $cf
    adc $c9                                       ; $57e7: $ce $c9
    rst $08                                       ; $57e9: $cf
    ld d, $1f                                     ; $57ea: $16 $1f
    rrca                                          ; $57ec: $0f
    add hl, bc                                    ; $57ed: $09
    rlca                                          ; $57ee: $07
    rlca                                          ; $57ef: $07
    ret nz                                        ; $57f0: $c0

    ret nz                                        ; $57f1: $c0

    ldh [$e0], a                                  ; $57f2: $e0 $e0
    ld [hl], b                                    ; $57f4: $70
    ldh a, [rNR10]                                ; $57f5: $f0 $10
    ldh a, [$50]                                  ; $57f7: $f0 $50
    ldh a, [rNR23]                                ; $57f9: $f0 $18
    ld hl, sp+$54                                 ; $57fb: $f8 $54
    db $fc                                        ; $57fd: $fc
    call nz, $98fc                                ; $57fe: $c4 $fc $98
    ld a, b                                       ; $5801: $78
    ld a, b                                       ; $5802: $78
    ret c                                         ; $5803: $d8

    db $f4                                        ; $5804: $f4
    sbc h                                         ; $5805: $9c
    db $fc                                        ; $5806: $fc
    ld a, h                                       ; $5807: $7c
    and b                                         ; $5808: $a0
    ldh [$e0], a                                  ; $5809: $e0 $e0
    ldh [$c0], a                                  ; $580b: $e0 $c0
    ret nz                                        ; $580d: $c0

    nop                                           ; $580e: $00
    nop                                           ; $580f: $00
    inc bc                                        ; $5810: $03
    inc bc                                        ; $5811: $03
    rlca                                          ; $5812: $07
    rlca                                          ; $5813: $07
    dec b                                         ; $5814: $05
    rlca                                          ; $5815: $07
    inc b                                         ; $5816: $04
    rlca                                          ; $5817: $07
    ld b, $07                                     ; $5818: $06 $07
    inc b                                         ; $581a: $04
    rlca                                          ; $581b: $07
    ld a, [bc]                                    ; $581c: $0a
    rrca                                          ; $581d: $0f
    ld c, $0f                                     ; $581e: $0e $0f
    ld b, $05                                     ; $5820: $06 $05
    add hl, bc                                    ; $5822: $09
    rrca                                          ; $5823: $0f
    rlca                                          ; $5824: $07
    ld b, $05                                     ; $5825: $06 $05
    rlca                                          ; $5827: $07
    dec bc                                        ; $5828: $0b
    rrca                                          ; $5829: $0f
    rra                                           ; $582a: $1f
    rra                                           ; $582b: $1f
    ld e, $16                                     ; $582c: $1e $16
    ld c, $0e                                     ; $582e: $0e $0e
    ret nz                                        ; $5830: $c0

    ret nz                                        ; $5831: $c0

    ldh [$e0], a                                  ; $5832: $e0 $e0
    ldh a, [$f0]                                  ; $5834: $f0 $f0
    ld a, b                                       ; $5836: $78
    ld hl, sp+$38                                 ; $5837: $f8 $38
    ld hl, sp+$70                                 ; $5839: $f8 $70
    ldh a, [rOBP0]                                ; $583b: $f0 $48
    ld hl, sp+$08                                 ; $583d: $f8 $08
    ld hl, sp+$70                                 ; $583f: $f8 $70
    ldh a, [$f0]                                  ; $5841: $f0 $f0
    jr nc, @-$16                                  ; $5843: $30 $e8

    cp b                                          ; $5845: $b8
    add sp, -$08                                  ; $5846: $e8 $f8
    jr nc, @-$0e                                  ; $5848: $30 $f0

    ld [hl], b                                    ; $584a: $70
    ret nc                                        ; $584b: $d0

    ldh a, [$b0]                                  ; $584c: $f0 $b0
    ldh [$e0], a                                  ; $584e: $e0 $e0
    ld bc, $0301                                  ; $5850: $01 $01 $03
    inc bc                                        ; $5853: $03
    rlca                                          ; $5854: $07
    rlca                                          ; $5855: $07
    rlca                                          ; $5856: $07
    rlca                                          ; $5857: $07
    rlca                                          ; $5858: $07
    rlca                                          ; $5859: $07
    rrca                                          ; $585a: $0f
    rrca                                          ; $585b: $0f
    dec d                                         ; $585c: $15
    rra                                           ; $585d: $1f
    inc d                                         ; $585e: $14
    rra                                           ; $585f: $1f
    dec a                                         ; $5860: $3d
    ccf                                           ; $5861: $3f
    ld e, a                                       ; $5862: $5f
    ld [hl], h                                    ; $5863: $74
    ccf                                           ; $5864: $3f
    jr c, jr_026_5876                             ; $5865: $38 $0f

    inc c                                         ; $5867: $0c
    dec bc                                        ; $5868: $0b
    rrca                                          ; $5869: $0f
    rla                                           ; $586a: $17
    rra                                           ; $586b: $1f
    rrca                                          ; $586c: $0f
    add hl, bc                                    ; $586d: $09
    rlca                                          ; $586e: $07
    rlca                                          ; $586f: $07
    ldh [$e0], a                                  ; $5870: $e0 $e0
    ldh a, [$f0]                                  ; $5872: $f0 $f0
    ldh a, [$f0]                                  ; $5874: $f0 $f0

jr_026_5876:
    ldh a, [$f0]                                  ; $5876: $f0 $f0
    ldh a, [$f0]                                  ; $5878: $f0 $f0
    ld hl, sp-$08                                 ; $587a: $f8 $f8
    ld d, h                                       ; $587c: $54
    db $fc                                        ; $587d: $fc
    inc d                                         ; $587e: $14
    db $fc                                        ; $587f: $fc
    ret c                                         ; $5880: $d8

    ld hl, sp-$10                                 ; $5881: $f8 $f0
    ld d, b                                       ; $5883: $50
    ld hl, sp+$18                                 ; $5884: $f8 $18
    db $f4                                        ; $5886: $f4
    ld a, h                                       ; $5887: $7c
    xor [hl]                                      ; $5888: $ae
    xor $e6                                       ; $5889: $ee $e6
    and $c0                                       ; $588b: $e6 $c0
    ret nz                                        ; $588d: $c0

    nop                                           ; $588e: $00
    nop                                           ; $588f: $00
    inc bc                                        ; $5890: $03
    inc bc                                        ; $5891: $03
    rlca                                          ; $5892: $07
    rlca                                          ; $5893: $07
    rrca                                          ; $5894: $0f
    rrca                                          ; $5895: $0f

jr_026_5896:
    ld e, $1f                                     ; $5896: $1e $1f

jr_026_5898:
    inc e                                         ; $5898: $1c
    rra                                           ; $5899: $1f
    ld c, $0f                                     ; $589a: $0e $0f
    ld [de], a                                    ; $589c: $12
    rra                                           ; $589d: $1f
    db $10                                        ; $589e: $10
    rra                                           ; $589f: $1f
    ld c, $0f                                     ; $58a0: $0e $0f
    rlca                                          ; $58a2: $07
    ld b, $07                                     ; $58a3: $06 $07
    dec b                                         ; $58a5: $05
    dec bc                                        ; $58a6: $0b
    rrca                                          ; $58a7: $0f
    dec bc                                        ; $58a8: $0b
    rrca                                          ; $58a9: $0f
    rrca                                          ; $58aa: $0f
    rrca                                          ; $58ab: $0f
    rrca                                          ; $58ac: $0f
    dec bc                                        ; $58ad: $0b
    rlca                                          ; $58ae: $07
    rlca                                          ; $58af: $07
    ret nz                                        ; $58b0: $c0

    ret nz                                        ; $58b1: $c0

    ldh [$e0], a                                  ; $58b2: $e0 $e0
    jr nz, jr_026_5896                            ; $58b4: $20 $e0

    jr nz, jr_026_5898                            ; $58b6: $20 $e0

    ld h, b                                       ; $58b8: $60
    ldh [rNR41], a                                ; $58b9: $e0 $20
    ldh [$50], a                                  ; $58bb: $e0 $50
    ldh a, [rSVBK]                                ; $58bd: $f0 $70
    ldh a, [$60]                                  ; $58bf: $f0 $60
    and b                                         ; $58c1: $a0
    sub b                                         ; $58c2: $90
    ldh a, [$e8]                                  ; $58c3: $f0 $e8
    ld a, b                                       ; $58c5: $78
    ld hl, sp-$08                                 ; $58c6: $f8 $f8
    db $10                                        ; $58c8: $10
    ldh a, [$f8]                                  ; $58c9: $f0 $f8
    add sp, -$08                                  ; $58cb: $e8 $f8
    ret c                                         ; $58cd: $d8

    ld [hl], b                                    ; $58ce: $70
    ld [hl], b                                    ; $58cf: $70
    rrca                                          ; $58d0: $0f
    rrca                                          ; $58d1: $0f
    rra                                           ; $58d2: $1f
    rra                                           ; $58d3: $1f
    add hl, de                                    ; $58d4: $19
    rra                                           ; $58d5: $1f
    db $10                                        ; $58d6: $10
    rra                                           ; $58d7: $1f
    dec d                                         ; $58d8: $15
    rra                                           ; $58d9: $1f
    jr nc, @+$41                                  ; $58da: $30 $3f

    ld d, l                                       ; $58dc: $55
    ld a, a                                       ; $58dd: $7f
    ld b, a                                       ; $58de: $47
    ld a, a                                       ; $58df: $7f
    or d                                          ; $58e0: $b2
    db $fd                                        ; $58e1: $fd
    ld a, h                                       ; $58e2: $7c
    ld [hl], a                                    ; $58e3: $77
    ld c, a                                       ; $58e4: $4f
    ld c, e                                       ; $58e5: $4b
    rst $08                                       ; $58e6: $cf
    adc $c9                                       ; $58e7: $ce $c9
    rst $08                                       ; $58e9: $cf
    ld d, $1f                                     ; $58ea: $16 $1f
    rrca                                          ; $58ec: $0f
    add hl, bc                                    ; $58ed: $09
    rlca                                          ; $58ee: $07
    rlca                                          ; $58ef: $07
    nop                                           ; $58f0: $00
    nop                                           ; $58f1: $00
    add b                                         ; $58f2: $80
    add b                                         ; $58f3: $80
    ret nz                                        ; $58f4: $c0

    ret nz                                        ; $58f5: $c0

    ld b, b                                       ; $58f6: $40
    ret nz                                        ; $58f7: $c0

    ld b, b                                       ; $58f8: $40
    ret nz                                        ; $58f9: $c0

    ld h, b                                       ; $58fa: $60
    ldh [$50], a                                  ; $58fb: $e0 $50
    ldh a, [rNR10]                                ; $58fd: $f0 $10
    ldh a, [$60]                                  ; $58ff: $f0 $60
    ldh [$78], a                                  ; $5901: $e0 $78
    ret c                                         ; $5903: $d8

    db $f4                                        ; $5904: $f4
    sbc h                                         ; $5905: $9c
    db $fc                                        ; $5906: $fc
    ld a, h                                       ; $5907: $7c
    and b                                         ; $5908: $a0
    ldh [$e0], a                                  ; $5909: $e0 $e0
    ldh [$c0], a                                  ; $590b: $e0 $c0
    ret nz                                        ; $590d: $c0

    nop                                           ; $590e: $00
    nop                                           ; $590f: $00
    rrca                                          ; $5910: $0f
    rrca                                          ; $5911: $0f
    rra                                           ; $5912: $1f
    rra                                           ; $5913: $1f
    rla                                           ; $5914: $17
    rra                                           ; $5915: $1f
    ld de, $181f                                  ; $5916: $11 $1f $18
    rra                                           ; $5919: $1f
    ld de, $291f                                  ; $591a: $11 $1f $29
    ccf                                           ; $591d: $3f

jr_026_591e:
    jr c, jr_026_595f                             ; $591e: $38 $3f

jr_026_5920:
    add hl, de                                    ; $5920: $19
    rla                                           ; $5921: $17
    add hl, bc                                    ; $5922: $09
    rrca                                          ; $5923: $0f
    rlca                                          ; $5924: $07
    ld b, $05                                     ; $5925: $06 $05
    rlca                                          ; $5927: $07
    dec bc                                        ; $5928: $0b
    rrca                                          ; $5929: $0f
    rra                                           ; $592a: $1f
    rra                                           ; $592b: $1f
    ld e, $16                                     ; $592c: $1e $16
    ld c, $0e                                     ; $592e: $0e $0e
    nop                                           ; $5930: $00
    nop                                           ; $5931: $00
    add b                                         ; $5932: $80
    add b                                         ; $5933: $80
    ret nz                                        ; $5934: $c0

    ret nz                                        ; $5935: $c0

    ldh [$e0], a                                  ; $5936: $e0 $e0
    ldh [$e0], a                                  ; $5938: $e0 $e0

jr_026_593a:
    ret nz                                        ; $593a: $c0

    ret nz                                        ; $593b: $c0

    jr nz, jr_026_591e                            ; $593c: $20 $e0

    jr nz, jr_026_5920                            ; $593e: $20 $e0

    ret nz                                        ; $5940: $c0

    ret nz                                        ; $5941: $c0

    ldh a, [$30]                                  ; $5942: $f0 $30
    add sp, -$48                                  ; $5944: $e8 $b8
    add sp, -$08                                  ; $5946: $e8 $f8
    jr nc, jr_026_593a                            ; $5948: $30 $f0

    ld [hl], b                                    ; $594a: $70
    ret nc                                        ; $594b: $d0

    ldh a, [$b0]                                  ; $594c: $f0 $b0
    ldh [$e0], a                                  ; $594e: $e0 $e0
    rlca                                          ; $5950: $07
    rlca                                          ; $5951: $07
    rrca                                          ; $5952: $0f
    rrca                                          ; $5953: $0f
    rra                                           ; $5954: $1f
    rra                                           ; $5955: $1f
    rra                                           ; $5956: $1f
    rra                                           ; $5957: $1f
    rra                                           ; $5958: $1f
    rra                                           ; $5959: $1f
    ccf                                           ; $595a: $3f
    ccf                                           ; $595b: $3f
    ld d, l                                       ; $595c: $55
    ld a, a                                       ; $595d: $7f
    ld d, b                                       ; $595e: $50

jr_026_595f:
    ld a, a                                       ; $595f: $7f
    rst $30                                       ; $5960: $f7
    rst $38                                       ; $5961: $ff
    ld e, a                                       ; $5962: $5f
    ld [hl], h                                    ; $5963: $74
    ccf                                           ; $5964: $3f
    jr c, jr_026_5976                             ; $5965: $38 $0f

    inc c                                         ; $5967: $0c
    dec bc                                        ; $5968: $0b
    rrca                                          ; $5969: $0f
    rla                                           ; $596a: $17
    rra                                           ; $596b: $1f
    rrca                                          ; $596c: $0f
    add hl, bc                                    ; $596d: $09
    rlca                                          ; $596e: $07
    rlca                                          ; $596f: $07
    add b                                         ; $5970: $80
    add b                                         ; $5971: $80
    ret nz                                        ; $5972: $c0

    ret nz                                        ; $5973: $c0

    ret nz                                        ; $5974: $c0

    ret nz                                        ; $5975: $c0

jr_026_5976:
    ret nz                                        ; $5976: $c0

    ret nz                                        ; $5977: $c0

    ret nz                                        ; $5978: $c0

    ret nz                                        ; $5979: $c0

    ldh [$e0], a                                  ; $597a: $e0 $e0
    ld d, b                                       ; $597c: $50
    ldh a, [$50]                                  ; $597d: $f0 $50
    ldh a, [$60]                                  ; $597f: $f0 $60
    ldh [$f0], a                                  ; $5981: $e0 $f0
    ld d, b                                       ; $5983: $50
    ld hl, sp+$18                                 ; $5984: $f8 $18
    db $f4                                        ; $5986: $f4
    ld a, h                                       ; $5987: $7c
    xor [hl]                                      ; $5988: $ae
    xor $e6                                       ; $5989: $ee $e6
    and $c0                                       ; $598b: $e6 $c0
    ret nz                                        ; $598d: $c0

    nop                                           ; $598e: $00
    nop                                           ; $598f: $00
    nop                                           ; $5990: $00
    nop                                           ; $5991: $00
    ld bc, $0301                                  ; $5992: $01 $01 $03
    inc bc                                        ; $5995: $03
    inc bc                                        ; $5996: $03
    inc bc                                        ; $5997: $03
    rlca                                          ; $5998: $07
    rlca                                          ; $5999: $07
    ld b, $07                                     ; $599a: $06 $07
    dec b                                         ; $599c: $05
    rlca                                          ; $599d: $07
    inc b                                         ; $599e: $04
    rlca                                          ; $599f: $07
    inc bc                                        ; $59a0: $03
    inc bc                                        ; $59a1: $03
    inc bc                                        ; $59a2: $03
    ld [bc], a                                    ; $59a3: $02
    rlca                                          ; $59a4: $07
    rlca                                          ; $59a5: $07
    rlca                                          ; $59a6: $07
    rlca                                          ; $59a7: $07
    rlca                                          ; $59a8: $07
    rlca                                          ; $59a9: $07
    rlca                                          ; $59aa: $07
    rlca                                          ; $59ab: $07
    inc bc                                        ; $59ac: $03
    inc bc                                        ; $59ad: $03
    nop                                           ; $59ae: $00
    nop                                           ; $59af: $00
    nop                                           ; $59b0: $00
    nop                                           ; $59b1: $00
    ret nz                                        ; $59b2: $c0

    ret nz                                        ; $59b3: $c0

    ldh [$e0], a                                  ; $59b4: $e0 $e0
    and b                                         ; $59b6: $a0
    ldh [rNR41], a                                ; $59b7: $e0 $20
    ldh [rNR41], a                                ; $59b9: $e0 $20
    ldh [rNR10], a                                ; $59bb: $e0 $10
    ldh a, [$30]                                  ; $59bd: $f0 $30
    ldh a, [rNR41]                                ; $59bf: $f0 $20
    ldh [$a0], a                                  ; $59c1: $e0 $a0
    ldh [$f0], a                                  ; $59c3: $e0 $f0
    ldh a, [rNR41]                                ; $59c5: $f0 $20
    ldh [$f0], a                                  ; $59c7: $e0 $f0
    ret nc                                        ; $59c9: $d0

    ldh a, [$f0]                                  ; $59ca: $f0 $f0
    ld h, b                                       ; $59cc: $60
    ld h, b                                       ; $59cd: $60
    nop                                           ; $59ce: $00
    nop                                           ; $59cf: $00
    nop                                           ; $59d0: $00
    nop                                           ; $59d1: $00
    inc bc                                        ; $59d2: $03
    inc bc                                        ; $59d3: $03
    rlca                                          ; $59d4: $07
    rlca                                          ; $59d5: $07
    inc b                                         ; $59d6: $04
    rlca                                          ; $59d7: $07
    inc b                                         ; $59d8: $04
    rlca                                          ; $59d9: $07
    ld b, $07                                     ; $59da: $06 $07
    ld d, $1f                                     ; $59dc: $16 $1f
    inc de                                        ; $59de: $13
    rra                                           ; $59df: $1f
    dec l                                         ; $59e0: $2d
    ld a, $3c                                     ; $59e1: $3e $3c
    dec sp                                        ; $59e3: $3b
    ld h, a                                       ; $59e4: $67
    ld h, [hl]                                    ; $59e5: $66
    ld h, l                                       ; $59e6: $65
    ld h, a                                       ; $59e7: $67
    ld a, [bc]                                    ; $59e8: $0a
    rrca                                          ; $59e9: $0f
    rlca                                          ; $59ea: $07
    dec b                                         ; $59eb: $05
    inc bc                                        ; $59ec: $03
    inc bc                                        ; $59ed: $03
    nop                                           ; $59ee: $00
    nop                                           ; $59ef: $00
    nop                                           ; $59f0: $00
    nop                                           ; $59f1: $00
    add b                                         ; $59f2: $80
    add b                                         ; $59f3: $80
    ret nz                                        ; $59f4: $c0

    ret nz                                        ; $59f5: $c0

    ret nz                                        ; $59f6: $c0

    ret nz                                        ; $59f7: $c0

    nop                                           ; $59f8: $00
    ret nz                                        ; $59f9: $c0

    add b                                         ; $59fa: $80
    ret nz                                        ; $59fb: $c0

    sub b                                         ; $59fc: $90
    ldh a, [$90]                                  ; $59fd: $f0 $90
    ldh a, [rNR41]                                ; $59ff: $f0 $20
    ldh [rSVBK], a                                ; $5a01: $e0 $70
    ldh a, [$f8]                                  ; $5a03: $f0 $f8
    ld a, b                                       ; $5a05: $78
    add b                                         ; $5a06: $80
    ret nz                                        ; $5a07: $c0

    ret nz                                        ; $5a08: $c0

    ret nz                                        ; $5a09: $c0

    ret nz                                        ; $5a0a: $c0

    ret nz                                        ; $5a0b: $c0

    nop                                           ; $5a0c: $00
    nop                                           ; $5a0d: $00
    nop                                           ; $5a0e: $00
    nop                                           ; $5a0f: $00
    nop                                           ; $5a10: $00
    nop                                           ; $5a11: $00
    inc bc                                        ; $5a12: $03
    inc bc                                        ; $5a13: $03
    rlca                                          ; $5a14: $07
    rlca                                          ; $5a15: $07
    rlca                                          ; $5a16: $07
    rlca                                          ; $5a17: $07
    inc b                                         ; $5a18: $04
    rlca                                          ; $5a19: $07
    inc b                                         ; $5a1a: $04
    rlca                                          ; $5a1b: $07
    ld [$0c0f], sp                                ; $5a1c: $08 $0f $0c
    rrca                                          ; $5a1f: $0f
    inc b                                         ; $5a20: $04
    rlca                                          ; $5a21: $07
    dec b                                         ; $5a22: $05
    rlca                                          ; $5a23: $07
    ld bc, $0703                                  ; $5a24: $01 $03 $07
    rlca                                          ; $5a27: $07
    rrca                                          ; $5a28: $0f
    rrca                                          ; $5a29: $0f
    ld c, $0a                                     ; $5a2a: $0e $0a
    ld b, $06                                     ; $5a2c: $06 $06
    nop                                           ; $5a2e: $00
    nop                                           ; $5a2f: $00
    nop                                           ; $5a30: $00
    nop                                           ; $5a31: $00
    add b                                         ; $5a32: $80
    add b                                         ; $5a33: $80
    ret nz                                        ; $5a34: $c0

    ret nz                                        ; $5a35: $c0

    ret nz                                        ; $5a36: $c0

    ret nz                                        ; $5a37: $c0

    ldh [$e0], a                                  ; $5a38: $e0 $e0
    ld h, b                                       ; $5a3a: $60
    ldh [$a0], a                                  ; $5a3b: $e0 $a0
    ldh [rNR41], a                                ; $5a3d: $e0 $20
    ldh [$c0], a                                  ; $5a3f: $e0 $c0
    ret nz                                        ; $5a41: $c0

    ldh [rNR41], a                                ; $5a42: $e0 $20
    ret nc                                        ; $5a44: $d0

    ldh a, [rNR41]                                ; $5a45: $f0 $20
    ldh [$60], a                                  ; $5a47: $e0 $60
    ldh [$e0], a                                  ; $5a49: $e0 $e0
    and b                                         ; $5a4b: $a0
    ret nz                                        ; $5a4c: $c0

    ret nz                                        ; $5a4d: $c0

    nop                                           ; $5a4e: $00
    nop                                           ; $5a4f: $00
    nop                                           ; $5a50: $00
    nop                                           ; $5a51: $00
    inc bc                                        ; $5a52: $03
    inc bc                                        ; $5a53: $03
    inc bc                                        ; $5a54: $03
    inc bc                                        ; $5a55: $03
    rlca                                          ; $5a56: $07
    rlca                                          ; $5a57: $07
    rlca                                          ; $5a58: $07
    rlca                                          ; $5a59: $07
    rlca                                          ; $5a5a: $07
    rlca                                          ; $5a5b: $07
    ld d, $1f                                     ; $5a5c: $16 $1f
    inc d                                         ; $5a5e: $14
    rra                                           ; $5a5f: $1f
    ccf                                           ; $5a60: $3f
    ccf                                           ; $5a61: $3f
    cpl                                           ; $5a62: $2f
    jr c, jr_026_5a6c                             ; $5a63: $38 $07

    inc b                                         ; $5a65: $04
    rlca                                          ; $5a66: $07
    rlca                                          ; $5a67: $07
    dec bc                                        ; $5a68: $0b
    rrca                                          ; $5a69: $0f
    rlca                                          ; $5a6a: $07
    dec b                                         ; $5a6b: $05

jr_026_5a6c:
    inc bc                                        ; $5a6c: $03
    inc bc                                        ; $5a6d: $03
    nop                                           ; $5a6e: $00
    nop                                           ; $5a6f: $00
    nop                                           ; $5a70: $00
    nop                                           ; $5a71: $00
    ret nz                                        ; $5a72: $c0

    ret nz                                        ; $5a73: $c0

    ret nz                                        ; $5a74: $c0

    ret nz                                        ; $5a75: $c0

    ret nz                                        ; $5a76: $c0

    ret nz                                        ; $5a77: $c0

    ret nz                                        ; $5a78: $c0

    ret nz                                        ; $5a79: $c0

    ret nz                                        ; $5a7a: $c0

    ret nz                                        ; $5a7b: $c0

    sub b                                         ; $5a7c: $90
    ldh a, [rNR10]                                ; $5a7d: $f0 $10
    ldh a, [$a0]                                  ; $5a7f: $f0 $a0
    ldh [$e0], a                                  ; $5a81: $e0 $e0
    ld h, b                                       ; $5a83: $60
    add sp, $78                                   ; $5a84: $e8 $78
    sbc h                                         ; $5a86: $9c
    call c, $cccc                                 ; $5a87: $dc $cc $cc
    ret nz                                        ; $5a8a: $c0

    ret nz                                        ; $5a8b: $c0

    nop                                           ; $5a8c: $00
    nop                                           ; $5a8d: $00
    nop                                           ; $5a8e: $00
    nop                                           ; $5a8f: $00
    ld bc, $0301                                  ; $5a90: $01 $01 $03
    inc bc                                        ; $5a93: $03
    rlca                                          ; $5a94: $07
    rlca                                          ; $5a95: $07
    rrca                                          ; $5a96: $0f
    rrca                                          ; $5a97: $0f
    ld c, $0f                                     ; $5a98: $0e $0f
    rlca                                          ; $5a9a: $07
    rlca                                          ; $5a9b: $07
    add hl, bc                                    ; $5a9c: $09
    rrca                                          ; $5a9d: $0f
    ld [$070f], sp                                ; $5a9e: $08 $0f $07
    rlca                                          ; $5aa1: $07
    rlca                                          ; $5aa2: $07
    ld b, $07                                     ; $5aa3: $06 $07
    dec b                                         ; $5aa5: $05
    dec bc                                        ; $5aa6: $0b
    rrca                                          ; $5aa7: $0f
    dec bc                                        ; $5aa8: $0b
    rrca                                          ; $5aa9: $0f
    dec c                                         ; $5aaa: $0d
    rrca                                          ; $5aab: $0f
    rrca                                          ; $5aac: $0f
    dec bc                                        ; $5aad: $0b
    rlca                                          ; $5aae: $07
    rlca                                          ; $5aaf: $07
    ldh [$e0], a                                  ; $5ab0: $e0 $e0
    ldh a, [$f0]                                  ; $5ab2: $f0 $f0
    sub b                                         ; $5ab4: $90
    ldh a, [rNR10]                                ; $5ab5: $f0 $10
    ldh a, [$30]                                  ; $5ab7: $f0 $30
    ldh a, [rNR10]                                ; $5ab9: $f0 $10
    ldh a, [$28]                                  ; $5abb: $f0 $28
    ld hl, sp+$38                                 ; $5abd: $f8 $38
    ld hl, sp+$10                                 ; $5abf: $f8 $10
    ldh a, [$90]                                  ; $5ac1: $f0 $90
    ldh a, [$e8]                                  ; $5ac3: $f0 $e8
    ld a, b                                       ; $5ac5: $78
    ld hl, sp-$08                                 ; $5ac6: $f8 $f8
    db $10                                        ; $5ac8: $10
    ldh a, [$b8]                                  ; $5ac9: $f0 $b8
    add sp, -$08                                  ; $5acb: $e8 $f8
    ret c                                         ; $5acd: $d8

    ld [hl], b                                    ; $5ace: $70
    ld [hl], b                                    ; $5acf: $70
    rlca                                          ; $5ad0: $07
    rlca                                          ; $5ad1: $07
    rrca                                          ; $5ad2: $0f
    rrca                                          ; $5ad3: $0f
    inc c                                         ; $5ad4: $0c
    rrca                                          ; $5ad5: $0f
    ld [$0a0f], sp                                ; $5ad6: $08 $0f $0a
    rrca                                          ; $5ad9: $0f
    jr jr_026_5afb                                ; $5ada: $18 $1f

    ld a, [hl+]                                   ; $5adc: $2a
    ccf                                           ; $5add: $3f
    inc hl                                        ; $5ade: $23
    ccf                                           ; $5adf: $3f
    ld e, b                                       ; $5ae0: $58
    ld a, a                                       ; $5ae1: $7f
    ld a, h                                       ; $5ae2: $7c
    ld [hl], a                                    ; $5ae3: $77
    rrca                                          ; $5ae4: $0f
    dec bc                                        ; $5ae5: $0b
    rrca                                          ; $5ae6: $0f
    ld c, $09                                     ; $5ae7: $0e $09
    rrca                                          ; $5ae9: $0f
    ld d, $1f                                     ; $5aea: $16 $1f
    rrca                                          ; $5aec: $0f
    add hl, bc                                    ; $5aed: $09
    rlca                                          ; $5aee: $07
    rlca                                          ; $5aef: $07
    add b                                         ; $5af0: $80
    add b                                         ; $5af1: $80
    ret nz                                        ; $5af2: $c0

    ret nz                                        ; $5af3: $c0

    ldh [$e0], a                                  ; $5af4: $e0 $e0
    jr nz, @-$1e                                  ; $5af6: $20 $e0

    and b                                         ; $5af8: $a0
    ldh [$30], a                                  ; $5af9: $e0 $30

jr_026_5afb:
    ldh a, [$a8]                                  ; $5afb: $f0 $a8
    ld hl, sp-$78                                 ; $5afd: $f8 $88
    ld hl, sp+$30                                 ; $5aff: $f8 $30
    ldh a, [$78]                                  ; $5b01: $f0 $78
    ret c                                         ; $5b03: $d8

    db $f4                                        ; $5b04: $f4
    sbc h                                         ; $5b05: $9c
    db $fc                                        ; $5b06: $fc
    ld a, h                                       ; $5b07: $7c
    and b                                         ; $5b08: $a0
    ldh [$e0], a                                  ; $5b09: $e0 $e0
    ldh [$c0], a                                  ; $5b0b: $e0 $c0
    ret nz                                        ; $5b0d: $c0

    nop                                           ; $5b0e: $00
    nop                                           ; $5b0f: $00
    rlca                                          ; $5b10: $07
    rlca                                          ; $5b11: $07
    rrca                                          ; $5b12: $0f
    rrca                                          ; $5b13: $0f
    dec bc                                        ; $5b14: $0b
    rrca                                          ; $5b15: $0f
    ld [$0c0f], sp                                ; $5b16: $08 $0f $0c
    rrca                                          ; $5b19: $0f
    ld [$140f], sp                                ; $5b1a: $08 $0f $14
    rra                                           ; $5b1d: $1f
    inc e                                         ; $5b1e: $1c
    rra                                           ; $5b1f: $1f
    ld [$090f], sp                                ; $5b20: $08 $0f $09
    rrca                                          ; $5b23: $0f
    rlca                                          ; $5b24: $07
    ld b, $05                                     ; $5b25: $06 $05
    rlca                                          ; $5b27: $07
    dec bc                                        ; $5b28: $0b
    rrca                                          ; $5b29: $0f
    rra                                           ; $5b2a: $1f
    rra                                           ; $5b2b: $1f
    ld e, $16                                     ; $5b2c: $1e $16
    ld c, $0e                                     ; $5b2e: $0e $0e
    add b                                         ; $5b30: $80
    add b                                         ; $5b31: $80
    ret nz                                        ; $5b32: $c0

    ret nz                                        ; $5b33: $c0

    ldh [$e0], a                                  ; $5b34: $e0 $e0
    ldh a, [$f0]                                  ; $5b36: $f0 $f0
    ld [hl], b                                    ; $5b38: $70
    ldh a, [$e0]                                  ; $5b39: $f0 $e0
    ldh [$90], a                                  ; $5b3b: $e0 $90
    ldh a, [rNR10]                                ; $5b3d: $f0 $10
    ldh a, [$e0]                                  ; $5b3f: $f0 $e0
    ldh [$f0], a                                  ; $5b41: $e0 $f0
    jr nc, @-$16                                  ; $5b43: $30 $e8

    cp b                                          ; $5b45: $b8
    add sp, -$08                                  ; $5b46: $e8 $f8
    jr nc, @-$0e                                  ; $5b48: $30 $f0

    ld [hl], b                                    ; $5b4a: $70
    ret nc                                        ; $5b4b: $d0

    ldh a, [$b0]                                  ; $5b4c: $f0 $b0
    ldh [$e0], a                                  ; $5b4e: $e0 $e0
    inc bc                                        ; $5b50: $03
    inc bc                                        ; $5b51: $03
    rlca                                          ; $5b52: $07
    rlca                                          ; $5b53: $07
    rrca                                          ; $5b54: $0f
    rrca                                          ; $5b55: $0f
    rrca                                          ; $5b56: $0f
    rrca                                          ; $5b57: $0f
    rrca                                          ; $5b58: $0f
    rrca                                          ; $5b59: $0f
    rra                                           ; $5b5a: $1f
    rra                                           ; $5b5b: $1f
    ld a, [hl+]                                   ; $5b5c: $2a
    ccf                                           ; $5b5d: $3f
    jr z, @+$41                                   ; $5b5e: $28 $3f

    ld a, e                                       ; $5b60: $7b
    ld a, a                                       ; $5b61: $7f
    ld e, a                                       ; $5b62: $5f
    ld [hl], h                                    ; $5b63: $74
    ccf                                           ; $5b64: $3f
    jr c, jr_026_5b76                             ; $5b65: $38 $0f

    inc c                                         ; $5b67: $0c
    dec bc                                        ; $5b68: $0b
    rrca                                          ; $5b69: $0f
    rla                                           ; $5b6a: $17
    rra                                           ; $5b6b: $1f
    rrca                                          ; $5b6c: $0f
    add hl, bc                                    ; $5b6d: $09
    rlca                                          ; $5b6e: $07
    rlca                                          ; $5b6f: $07
    ret nz                                        ; $5b70: $c0

    ret nz                                        ; $5b71: $c0

    ldh [$e0], a                                  ; $5b72: $e0 $e0
    ldh [$e0], a                                  ; $5b74: $e0 $e0

jr_026_5b76:
    ldh [$e0], a                                  ; $5b76: $e0 $e0
    ldh [$e0], a                                  ; $5b78: $e0 $e0
    ldh a, [$f0]                                  ; $5b7a: $f0 $f0
    xor b                                         ; $5b7c: $a8
    ld hl, sp+$28                                 ; $5b7d: $f8 $28
    ld hl, sp-$50                                 ; $5b7f: $f8 $b0
    ldh a, [$f0]                                  ; $5b81: $f0 $f0
    ld d, b                                       ; $5b83: $50
    ld hl, sp+$18                                 ; $5b84: $f8 $18
    db $f4                                        ; $5b86: $f4
    ld a, h                                       ; $5b87: $7c
    xor h                                         ; $5b88: $ac
    db $ec                                        ; $5b89: $ec
    ldh [$e0], a                                  ; $5b8a: $e0 $e0
    ret nz                                        ; $5b8c: $c0

    ret nz                                        ; $5b8d: $c0

    nop                                           ; $5b8e: $00
    nop                                           ; $5b8f: $00
    ld bc, $0301                                  ; $5b90: $01 $01 $03
    inc bc                                        ; $5b93: $03
    rlca                                          ; $5b94: $07
    rlca                                          ; $5b95: $07
    rrca                                          ; $5b96: $0f
    rrca                                          ; $5b97: $0f
    ld c, $0f                                     ; $5b98: $0e $0f
    rlca                                          ; $5b9a: $07
    rlca                                          ; $5b9b: $07
    add hl, bc                                    ; $5b9c: $09
    rrca                                          ; $5b9d: $0f
    ld [$070f], sp                                ; $5b9e: $08 $0f $07
    rlca                                          ; $5ba1: $07
    rrca                                          ; $5ba2: $0f
    inc c                                         ; $5ba3: $0c
    rla                                           ; $5ba4: $17
    dec e                                         ; $5ba5: $1d
    rla                                           ; $5ba6: $17
    rra                                           ; $5ba7: $1f
    inc c                                         ; $5ba8: $0c
    rrca                                          ; $5ba9: $0f
    ld c, $0b                                     ; $5baa: $0e $0b
    rrca                                          ; $5bac: $0f
    dec c                                         ; $5bad: $0d
    rlca                                          ; $5bae: $07
    rlca                                          ; $5baf: $07
    ldh [$e0], a                                  ; $5bb0: $e0 $e0
    ldh a, [$f0]                                  ; $5bb2: $f0 $f0
    sub b                                         ; $5bb4: $90
    ldh a, [rNR10]                                ; $5bb5: $f0 $10
    ldh a, [$30]                                  ; $5bb7: $f0 $30
    ldh a, [rNR10]                                ; $5bb9: $f0 $10
    ldh a, [$28]                                  ; $5bbb: $f0 $28
    ld hl, sp+$38                                 ; $5bbd: $f8 $38
    ld hl, sp+$10                                 ; $5bbf: $f8 $10
    ldh a, [$90]                                  ; $5bc1: $f0 $90
    ldh a, [$e0]                                  ; $5bc3: $f0 $e0
    ld h, b                                       ; $5bc5: $60
    or b                                          ; $5bc6: $b0
    ldh a, [$d0]                                  ; $5bc7: $f0 $d0
    ldh a, [$f8]                                  ; $5bc9: $f0 $f8
    ld hl, sp+$78                                 ; $5bcb: $f8 $78
    ld l, b                                       ; $5bcd: $68
    ld [hl], b                                    ; $5bce: $70

jr_026_5bcf:
    ld [hl], b                                    ; $5bcf: $70
    rlca                                          ; $5bd0: $07
    rlca                                          ; $5bd1: $07
    rrca                                          ; $5bd2: $0f
    rrca                                          ; $5bd3: $0f
    inc c                                         ; $5bd4: $0c
    rrca                                          ; $5bd5: $0f
    ld [$0a0f], sp                                ; $5bd6: $08 $0f $0a
    rrca                                          ; $5bd9: $0f
    jr jr_026_5bfb                                ; $5bda: $18 $1f

    ld a, [hl+]                                   ; $5bdc: $2a
    ccf                                           ; $5bdd: $3f
    inc hl                                        ; $5bde: $23
    ccf                                           ; $5bdf: $3f
    jr jr_026_5c01                                ; $5be0: $18 $1f

    inc a                                         ; $5be2: $3c
    scf                                           ; $5be3: $37
    ld e, a                                       ; $5be4: $5f
    ld [hl], e                                    ; $5be5: $73
    ld a, a                                       ; $5be6: $7f
    ld a, h                                       ; $5be7: $7c
    dec bc                                        ; $5be8: $0b
    rrca                                          ; $5be9: $0f

jr_026_5bea:
    ld c, $0f                                     ; $5bea: $0e $0f
    rlca                                          ; $5bec: $07
    rlca                                          ; $5bed: $07
    ld bc, $8001                                  ; $5bee: $01 $01 $80
    add b                                         ; $5bf1: $80
    ret nz                                        ; $5bf2: $c0

    ret nz                                        ; $5bf3: $c0

    ldh [$e0], a                                  ; $5bf4: $e0 $e0
    jr nz, @-$1e                                  ; $5bf6: $20 $e0

    and b                                         ; $5bf8: $a0
    ldh [$30], a                                  ; $5bf9: $e0 $30

jr_026_5bfb:
    ldh a, [$a8]                                  ; $5bfb: $f0 $a8
    ld hl, sp-$78                                 ; $5bfd: $f8 $88
    ld hl, sp+$34                                 ; $5bff: $f8 $34

jr_026_5c01:
    db $fc                                        ; $5c01: $fc
    ld a, h                                       ; $5c02: $7c
    call c, $a0e0                                 ; $5c03: $dc $e0 $a0
    ldh [$e0], a                                  ; $5c06: $e0 $e0
    jr nz, jr_026_5bea                            ; $5c08: $20 $e0

    ret nc                                        ; $5c0a: $d0

    ldh a, [$e0]                                  ; $5c0b: $f0 $e0
    jr nz, jr_026_5bcf                            ; $5c0d: $20 $c0

    ret nz                                        ; $5c0f: $c0

    rlca                                          ; $5c10: $07
    rlca                                          ; $5c11: $07
    rrca                                          ; $5c12: $0f
    rrca                                          ; $5c13: $0f
    dec bc                                        ; $5c14: $0b
    rrca                                          ; $5c15: $0f
    ld [$0c0f], sp                                ; $5c16: $08 $0f $0c
    rrca                                          ; $5c19: $0f
    ld [$140f], sp                                ; $5c1a: $08 $0f $14
    rra                                           ; $5c1d: $1f
    inc e                                         ; $5c1e: $1c
    rra                                           ; $5c1f: $1f
    ld [$090f], sp                                ; $5c20: $08 $0f $09
    rrca                                          ; $5c23: $0f
    rla                                           ; $5c24: $17
    ld e, $1f                                     ; $5c25: $1e $1f
    rra                                           ; $5c27: $1f
    ld [$1d0f], sp                                ; $5c28: $08 $0f $1d
    rla                                           ; $5c2b: $17
    ld e, $1a                                     ; $5c2c: $1e $1a
    ld c, $0e                                     ; $5c2e: $0e $0e
    add b                                         ; $5c30: $80
    add b                                         ; $5c31: $80
    ret nz                                        ; $5c32: $c0

    ret nz                                        ; $5c33: $c0

    ldh [$e0], a                                  ; $5c34: $e0 $e0
    ldh a, [$f0]                                  ; $5c36: $f0 $f0
    ld [hl], b                                    ; $5c38: $70
    ldh a, [$e0]                                  ; $5c39: $f0 $e0
    ldh [$90], a                                  ; $5c3b: $e0 $90
    ldh a, [rNR10]                                ; $5c3d: $f0 $10
    ldh a, [$e0]                                  ; $5c3f: $f0 $e0
    ldh [$e0], a                                  ; $5c41: $e0 $e0
    ld h, b                                       ; $5c43: $60
    ldh [$a0], a                                  ; $5c44: $e0 $a0
    ret nc                                        ; $5c46: $d0

    ldh a, [$d0]                                  ; $5c47: $f0 $d0
    ldh a, [$b0]                                  ; $5c49: $f0 $b0
    ldh a, [$f0]                                  ; $5c4b: $f0 $f0
    ret nc                                        ; $5c4d: $d0

    ldh [$e0], a                                  ; $5c4e: $e0 $e0
    inc bc                                        ; $5c50: $03
    inc bc                                        ; $5c51: $03
    rlca                                          ; $5c52: $07
    rlca                                          ; $5c53: $07
    rrca                                          ; $5c54: $0f
    rrca                                          ; $5c55: $0f
    rrca                                          ; $5c56: $0f
    rrca                                          ; $5c57: $0f
    rrca                                          ; $5c58: $0f
    rrca                                          ; $5c59: $0f
    rra                                           ; $5c5a: $1f
    rra                                           ; $5c5b: $1f
    ld a, [hl+]                                   ; $5c5c: $2a
    ccf                                           ; $5c5d: $3f
    jr z, @+$41                                   ; $5c5e: $28 $3f

    dec de                                        ; $5c60: $1b
    rra                                           ; $5c61: $1f
    rra                                           ; $5c62: $1f
    inc d                                         ; $5c63: $14
    ccf                                           ; $5c64: $3f
    jr nc, jr_026_5cc6                            ; $5c65: $30 $5f

    ld a, h                                       ; $5c67: $7c
    ld l, e                                       ; $5c68: $6b
    ld l, a                                       ; $5c69: $6f
    rrca                                          ; $5c6a: $0f
    rrca                                          ; $5c6b: $0f
    rlca                                          ; $5c6c: $07
    rlca                                          ; $5c6d: $07
    ld bc, $c001                                  ; $5c6e: $01 $01 $c0
    ret nz                                        ; $5c71: $c0

    ldh [$e0], a                                  ; $5c72: $e0 $e0
    ldh [$e0], a                                  ; $5c74: $e0 $e0
    ldh [$e0], a                                  ; $5c76: $e0 $e0
    ldh [$e0], a                                  ; $5c78: $e0 $e0
    ldh a, [$f0]                                  ; $5c7a: $f0 $f0
    xor b                                         ; $5c7c: $a8
    ld hl, sp+$28                                 ; $5c7d: $f8 $28
    ld hl, sp-$44                                 ; $5c7f: $f8 $bc
    db $fc                                        ; $5c81: $fc
    db $f4                                        ; $5c82: $f4
    ld e, h                                       ; $5c83: $5c
    ld hl, sp+$38                                 ; $5c84: $f8 $38
    ldh [$60], a                                  ; $5c86: $e0 $60
    and b                                         ; $5c88: $a0
    ldh [$d0], a                                  ; $5c89: $e0 $d0
    ldh a, [$e0]                                  ; $5c8b: $f0 $e0
    jr nz, @-$3e                                  ; $5c8d: $20 $c0

    ret nz                                        ; $5c8f: $c0

    and [hl]                                      ; $5c90: $a6
    ld e, h                                       ; $5c91: $5c
    xor c                                         ; $5c92: $a9
    ld e, h                                       ; $5c93: $5c
    xor a                                         ; $5c94: $af
    ld e, h                                       ; $5c95: $5c
    or d                                          ; $5c96: $b2
    ld e, h                                       ; $5c97: $5c
    cp l                                          ; $5c98: $bd
    ld e, h                                       ; $5c99: $5c
    call nz, $cc5c                                ; $5c9a: $c4 $5c $cc
    ld e, h                                       ; $5c9d: $5c
    ldh [$5c], a                                  ; $5c9e: $e0 $5c
    db $ec                                        ; $5ca0: $ec
    ld e, h                                       ; $5ca1: $5c
    push af                                       ; $5ca2: $f5
    ld e, h                                       ; $5ca3: $5c
    ld hl, sp+$5c                                 ; $5ca4: $f8 $5c
    nop                                           ; $5ca6: $00
    rst $38                                       ; $5ca7: $ff
    db $fd                                        ; $5ca8: $fd
    nop                                           ; $5ca9: $00
    ld e, $01                                     ; $5caa: $1e $01
    ld e, $ff                                     ; $5cac: $1e $ff
    nop                                           ; $5cae: $00
    ld [bc], a                                    ; $5caf: $02
    rst $38                                       ; $5cb0: $ff
    db $fd                                        ; $5cb1: $fd
    ld [bc], a                                    ; $5cb2: $02
    inc c                                         ; $5cb3: $0c
    inc bc                                        ; $5cb4: $03
    inc c                                         ; $5cb5: $0c
    inc b                                         ; $5cb6: $04
    jr jr_026_5cbb                                ; $5cb7: $18 $02

    inc c                                         ; $5cb9: $0c
    dec b                                         ; $5cba: $05

jr_026_5cbb:
    inc c                                         ; $5cbb: $0c
    db $fd                                        ; $5cbc: $fd
    ld [bc], a                                    ; $5cbd: $02
    jr @+$05                                      ; $5cbe: $18 $03

    jr jr_026_5cc4                                ; $5cc0: $18 $02

    jr @-$01                                      ; $5cc2: $18 $fd

jr_026_5cc4:
    nop                                           ; $5cc4: $00
    ld a, [bc]                                    ; $5cc5: $0a

jr_026_5cc6:
    ld b, $1e                                     ; $5cc6: $06 $1e
    nop                                           ; $5cc8: $00
    ld a, [bc]                                    ; $5cc9: $0a
    cp $01                                        ; $5cca: $fe $01
    nop                                           ; $5ccc: $00
    ld a, [bc]                                    ; $5ccd: $0a
    rlca                                          ; $5cce: $07
    ld a, [bc]                                    ; $5ccf: $0a
    nop                                           ; $5cd0: $00
    inc bc                                        ; $5cd1: $03
    ld [$000a], sp                                ; $5cd2: $08 $0a $00
    inc bc                                        ; $5cd5: $03
    rlca                                          ; $5cd6: $07
    ld a, [bc]                                    ; $5cd7: $0a
    nop                                           ; $5cd8: $00
    inc bc                                        ; $5cd9: $03
    ld [$000a], sp                                ; $5cda: $08 $0a $00
    ld a, [bc]                                    ; $5cdd: $0a
    cp $01                                        ; $5cde: $fe $01
    nop                                           ; $5ce0: $00
    ld a, [bc]                                    ; $5ce1: $0a
    add hl, bc                                    ; $5ce2: $09
    ld [$0800], sp                                ; $5ce3: $08 $00 $08
    add hl, bc                                    ; $5ce6: $09
    ld [$0a00], sp                                ; $5ce7: $08 $00 $0a
    cp $01                                        ; $5cea: $fe $01
    ld [bc], a                                    ; $5cec: $02
    ld [de], a                                    ; $5ced: $12
    inc bc                                        ; $5cee: $03
    ld [de], a                                    ; $5cef: $12
    ld [bc], a                                    ; $5cf0: $02
    ld e, $05                                     ; $5cf1: $1e $05
    ld [de], a                                    ; $5cf3: $12
    db $fd                                        ; $5cf4: $fd
    ld a, [bc]                                    ; $5cf5: $0a
    ld e, $fd                                     ; $5cf6: $1e $fd
    ld a, [bc]                                    ; $5cf8: $0a
    ld e, $0b                                     ; $5cf9: $1e $0b
    ld e, $ff                                     ; $5cfb: $1e $ff
    nop                                           ; $5cfd: $00
    ld h, e                                       ; $5cfe: $63
    inc b                                         ; $5cff: $04
    ld c, $5d                                     ; $5d00: $0e $5d
    jr nc, jr_026_5d6d                            ; $5d02: $30 $69

    ld b, $5d                                     ; $5d04: $06 $5d
    ld a, b                                       ; $5d06: $78
    ld a, [hl-]                                   ; $5d07: $3a
    rst $38                                       ; $5d08: $ff
    ld l, e                                       ; $5d09: $6b
    add b                                         ; $5d0a: $80
    ld [de], a                                    ; $5d0b: $12
    nop                                           ; $5d0c: $00
    nop                                           ; $5d0d: $00
    jr nc, jr_026_5d6d                            ; $5d0e: $30 $5d

    jr nc, @+$60                                  ; $5d10: $30 $5e

    jr nc, @+$61                                  ; $5d12: $30 $5f

    jr nc, jr_026_5d76                            ; $5d14: $30 $60

    jr nc, jr_026_5d79                            ; $5d16: $30 $61

    jr nc, @+$64                                  ; $5d18: $30 $62

    jr nc, jr_026_5d7f                            ; $5d1a: $30 $63

    jr nc, @+$66                                  ; $5d1c: $30 $64

    jr nc, jr_026_5d85                            ; $5d1e: $30 $65

    jr nc, jr_026_5d88                            ; $5d20: $30 $66

    jr nc, jr_026_5d8b                            ; $5d22: $30 $67

    jr nc, jr_026_5d8e                            ; $5d24: $30 $68

    nop                                           ; $5d26: $00
    nop                                           ; $5d27: $00
    nop                                           ; $5d28: $00
    nop                                           ; $5d29: $00
    nop                                           ; $5d2a: $00
    nop                                           ; $5d2b: $00
    nop                                           ; $5d2c: $00
    nop                                           ; $5d2d: $00
    nop                                           ; $5d2e: $00
    nop                                           ; $5d2f: $00
    jr jr_026_5d4a                                ; $5d30: $18 $18

    dec h                                         ; $5d32: $25
    dec a                                         ; $5d33: $3d
    ld c, [hl]                                    ; $5d34: $4e
    ld a, a                                       ; $5d35: $7f
    ld e, h                                       ; $5d36: $5c
    ld [hl], a                                    ; $5d37: $77
    jr z, jr_026_5d79                             ; $5d38: $28 $3f

    dec hl                                        ; $5d3a: $2b
    ccf                                           ; $5d3b: $3f
    cpl                                           ; $5d3c: $2f
    inc a                                         ; $5d3d: $3c
    scf                                           ; $5d3e: $37
    inc [hl]                                      ; $5d3f: $34
    inc hl                                        ; $5d40: $23
    ld [hl+], a                                   ; $5d41: $22
    inc bc                                        ; $5d42: $03
    inc bc                                        ; $5d43: $03
    rlca                                          ; $5d44: $07
    dec b                                         ; $5d45: $05
    ld c, $0b                                     ; $5d46: $0e $0b
    rlca                                          ; $5d48: $07
    rlca                                          ; $5d49: $07

jr_026_5d4a:
    rrca                                          ; $5d4a: $0f
    rrca                                          ; $5d4b: $0f
    dec bc                                        ; $5d4c: $0b
    rrca                                          ; $5d4d: $0f
    ld b, $06                                     ; $5d4e: $06 $06
    nop                                           ; $5d50: $00
    nop                                           ; $5d51: $00
    ldh a, [$f0]                                  ; $5d52: $f0 $f0
    ld [$24f8], sp                                ; $5d54: $08 $f8 $24
    db $fc                                        ; $5d57: $fc
    ld [hl], h                                    ; $5d58: $74
    call c, $dc74                                 ; $5d59: $dc $74 $dc
    ld hl, sp-$48                                 ; $5d5c: $f8 $b8
    ld hl, sp-$58                                 ; $5d5e: $f8 $a8
    ld hl, sp+$08                                 ; $5d60: $f8 $08
    ldh a, [$90]                                  ; $5d62: $f0 $90
    ld a, b                                       ; $5d64: $78
    add sp, $38                                   ; $5d65: $e8 $38
    ld hl, sp-$10                                 ; $5d67: $f8 $f0
    ret nc                                        ; $5d69: $d0

    add sp, $78                                   ; $5d6a: $e8 $78
    ret c                                         ; $5d6c: $d8

jr_026_5d6d:
    ld hl, sp-$10                                 ; $5d6d: $f8 $f0
    ldh a, [rSB]                                  ; $5d6f: $f0 $01
    ld bc, $0302                                  ; $5d71: $01 $02 $03

jr_026_5d74:
    rlca                                          ; $5d74: $07
    rlca                                          ; $5d75: $07

jr_026_5d76:
    ld [$110f], sp                                ; $5d76: $08 $0f $11

jr_026_5d79:
    rra                                           ; $5d79: $1f
    ld de, $3f1f                                  ; $5d7a: $11 $1f $3f
    ld l, $3f                                     ; $5d7d: $2e $3f

jr_026_5d7f:
    ld a, [hl+]                                   ; $5d7f: $2a
    ccf                                           ; $5d80: $3f
    jr c, jr_026_5e02                             ; $5d81: $38 $7f

    ld e, h                                       ; $5d83: $5c
    ld a, e                                       ; $5d84: $7b

jr_026_5d85:
    ld a, a                                       ; $5d85: $7f
    ld e, h                                       ; $5d86: $5c
    ld d, a                                       ; $5d87: $57

jr_026_5d88:
    rst $08                                       ; $5d88: $cf
    set 0, a                                      ; $5d89: $cb $c7

jr_026_5d8b:
    rst $00                                       ; $5d8b: $c7
    inc b                                         ; $5d8c: $04
    rlca                                          ; $5d8d: $07

jr_026_5d8e:
    inc bc                                        ; $5d8e: $03
    inc bc                                        ; $5d8f: $03
    ret nz                                        ; $5d90: $c0

    ret nz                                        ; $5d91: $c0

    jr nz, jr_026_5d74                            ; $5d92: $20 $e0

    ld h, b                                       ; $5d94: $60
    ldh [$90], a                                  ; $5d95: $e0 $90
    ldh a, [$c8]                                  ; $5d97: $f0 $c8
    ld a, b                                       ; $5d99: $78
    add sp, $38                                   ; $5d9a: $e8 $38
    db $fc                                        ; $5d9c: $fc
    ld [hl], h                                    ; $5d9d: $74
    db $fc                                        ; $5d9e: $fc
    ld d, h                                       ; $5d9f: $54
    ld hl, sp+$18                                 ; $5da0: $f8 $18
    add sp, $38                                   ; $5da2: $e8 $38
    call c, Call_000_3ef4                         ; $5da4: $dc $f4 $3e
    ld a, [$d6f6]                                 ; $5da7: $fa $f6 $d6
    ldh [$e0], a                                  ; $5daa: $e0 $e0
    ret nz                                        ; $5dac: $c0

    ret nz                                        ; $5dad: $c0

    nop                                           ; $5dae: $00
    nop                                           ; $5daf: $00
    nop                                           ; $5db0: $00
    nop                                           ; $5db1: $00
    rrca                                          ; $5db2: $0f
    rrca                                          ; $5db3: $0f
    db $10                                        ; $5db4: $10
    rra                                           ; $5db5: $1f
    inc h                                         ; $5db6: $24
    ccf                                           ; $5db7: $3f
    ld l, $3b                                     ; $5db8: $2e $3b
    ld l, $3b                                     ; $5dba: $2e $3b
    rra                                           ; $5dbc: $1f
    dec e                                         ; $5dbd: $1d
    rra                                           ; $5dbe: $1f
    dec d                                         ; $5dbf: $15
    rra                                           ; $5dc0: $1f
    db $10                                        ; $5dc1: $10
    rrca                                          ; $5dc2: $0f
    add hl, bc                                    ; $5dc3: $09
    ld b, $07                                     ; $5dc4: $06 $07
    rlca                                          ; $5dc6: $07
    dec b                                         ; $5dc7: $05
    rrca                                          ; $5dc8: $0f
    dec bc                                        ; $5dc9: $0b
    rra                                           ; $5dca: $1f
    ld e, $17                                     ; $5dcb: $1e $17
    rra                                           ; $5dcd: $1f
    inc c                                         ; $5dce: $0c
    inc c                                         ; $5dcf: $0c
    jr jr_026_5dea                                ; $5dd0: $18 $18

    and h                                         ; $5dd2: $a4
    cp h                                          ; $5dd3: $bc
    ld [hl], d                                    ; $5dd4: $72
    cp $3a                                        ; $5dd5: $fe $3a
    xor $12                                       ; $5dd7: $ee $12
    cp $d4                                        ; $5dd9: $fe $d4
    db $fc                                        ; $5ddb: $fc
    db $f4                                        ; $5ddc: $f4
    inc a                                         ; $5ddd: $3c
    add sp, $28                                   ; $5dde: $e8 $28
    ret z                                         ; $5de0: $c8

    ld c, b                                       ; $5de1: $48
    ldh [$e0], a                                  ; $5de2: $e0 $e0
    ld [hl], b                                    ; $5de4: $70
    ret nc                                        ; $5de5: $d0

    jr nc, @-$0e                                  ; $5de6: $30 $f0

    ldh [$e0], a                                  ; $5de8: $e0 $e0

jr_026_5dea:
    ret nc                                        ; $5dea: $d0

    ld [hl], b                                    ; $5deb: $70
    sub b                                         ; $5dec: $90
    ldh a, [$60]                                  ; $5ded: $f0 $60
    ld h, b                                       ; $5def: $60
    inc bc                                        ; $5df0: $03
    inc bc                                        ; $5df1: $03
    inc b                                         ; $5df2: $04
    rlca                                          ; $5df3: $07

jr_026_5df4:
    dec bc                                        ; $5df4: $0b
    rrca                                          ; $5df5: $0f
    inc c                                         ; $5df6: $0c
    rrca                                          ; $5df7: $0f
    inc d                                         ; $5df8: $14
    rra                                           ; $5df9: $1f
    inc d                                         ; $5dfa: $14
    rra                                           ; $5dfb: $1f
    inc a                                         ; $5dfc: $3c
    cpl                                           ; $5dfd: $2f
    ld a, $2f                                     ; $5dfe: $3e $2f
    ld a, [hl]                                    ; $5e00: $7e
    ld a, e                                       ; $5e01: $7b

jr_026_5e02:
    ld a, a                                       ; $5e02: $7f
    ld e, a                                       ; $5e03: $5f
    jr c, @+$41                                   ; $5e04: $38 $3f

    inc e                                         ; $5e06: $1c
    rla                                           ; $5e07: $17
    rrca                                          ; $5e08: $0f
    dec bc                                        ; $5e09: $0b
    inc b                                         ; $5e0a: $04
    rlca                                          ; $5e0b: $07
    inc b                                         ; $5e0c: $04
    rlca                                          ; $5e0d: $07
    inc bc                                        ; $5e0e: $03
    inc bc                                        ; $5e0f: $03
    ret nz                                        ; $5e10: $c0

    ret nz                                        ; $5e11: $c0

    jr nz, jr_026_5df4                            ; $5e12: $20 $e0

    sub b                                         ; $5e14: $90
    ldh a, [$50]                                  ; $5e15: $f0 $50
    ldh a, [rOBP0]                                ; $5e17: $f0 $48
    ld hl, sp+$48                                 ; $5e19: $f8 $48
    ld hl, sp-$64                                 ; $5e1b: $f8 $9c
    db $f4                                        ; $5e1d: $f4
    cp a                                          ; $5e1e: $bf
    rst $30                                       ; $5e1f: $f7
    ei                                            ; $5e20: $fb
    db $db                                        ; $5e21: $db
    ld l, [hl]                                    ; $5e22: $6e
    cp $de                                        ; $5e23: $fe $de
    ld a, [c]                                     ; $5e25: $f2
    inc a                                         ; $5e26: $3c
    db $fc                                        ; $5e27: $fc
    ldh a, [$d0]                                  ; $5e28: $f0 $d0
    ldh [$e0], a                                  ; $5e2a: $e0 $e0
    ret nz                                        ; $5e2c: $c0

    ret nz                                        ; $5e2d: $c0

    nop                                           ; $5e2e: $00
    nop                                           ; $5e2f: $00
    jr jr_026_5e4a                                ; $5e30: $18 $18

    dec h                                         ; $5e32: $25
    dec a                                         ; $5e33: $3d
    ld c, [hl]                                    ; $5e34: $4e
    ld a, a                                       ; $5e35: $7f
    ld e, h                                       ; $5e36: $5c
    ld [hl], a                                    ; $5e37: $77
    ld c, b                                       ; $5e38: $48
    ld a, a                                       ; $5e39: $7f
    dec hl                                        ; $5e3a: $2b
    ccf                                           ; $5e3b: $3f
    cpl                                           ; $5e3c: $2f
    inc a                                         ; $5e3d: $3c
    rla                                           ; $5e3e: $17
    inc d                                         ; $5e3f: $14
    inc de                                        ; $5e40: $13
    ld [de], a                                    ; $5e41: $12
    rlca                                          ; $5e42: $07
    rlca                                          ; $5e43: $07
    ld c, $0b                                     ; $5e44: $0e $0b
    inc c                                         ; $5e46: $0c
    rrca                                          ; $5e47: $0f
    rlca                                          ; $5e48: $07
    rlca                                          ; $5e49: $07

jr_026_5e4a:
    dec bc                                        ; $5e4a: $0b
    ld c, $09                                     ; $5e4b: $0e $09
    rrca                                          ; $5e4d: $0f
    ld b, $06                                     ; $5e4e: $06 $06
    nop                                           ; $5e50: $00
    nop                                           ; $5e51: $00
    ldh a, [$f0]                                  ; $5e52: $f0 $f0
    ld [$24f8], sp                                ; $5e54: $08 $f8 $24
    db $fc                                        ; $5e57: $fc
    ld [hl], h                                    ; $5e58: $74
    call c, $dc74                                 ; $5e59: $dc $74 $dc
    ld hl, sp-$48                                 ; $5e5c: $f8 $b8
    ld hl, sp-$58                                 ; $5e5e: $f8 $a8
    cp $0e                                        ; $5e60: $fe $0e
    or $96                                        ; $5e62: $f6 $96
    ld h, h                                       ; $5e64: $64
    db $e4                                        ; $5e65: $e4
    add sp, -$58                                  ; $5e66: $e8 $a8
    ldh a, [$d0]                                  ; $5e68: $f0 $d0
    ld hl, sp+$78                                 ; $5e6a: $f8 $78
    add sp, -$08                                  ; $5e6c: $e8 $f8
    jr nc, jr_026_5ea0                            ; $5e6e: $30 $30

    inc bc                                        ; $5e70: $03
    inc bc                                        ; $5e71: $03
    inc b                                         ; $5e72: $04
    rlca                                          ; $5e73: $07
    rlca                                          ; $5e74: $07
    rlca                                          ; $5e75: $07
    ld [$110f], sp                                ; $5e76: $08 $0f $11
    rra                                           ; $5e79: $1f
    ld de, $3f1f                                  ; $5e7a: $11 $1f $3f
    ld l, $3f                                     ; $5e7d: $2e $3f
    ld a, [hl+]                                   ; $5e7f: $2a
    rst $18                                       ; $5e80: $df
    ret c                                         ; $5e81: $d8

    rst $10                                       ; $5e82: $d7
    call c, Call_026_6f7b                         ; $5e83: $dc $7b $6f
    ld a, h                                       ; $5e86: $7c
    ld e, a                                       ; $5e87: $5f
    ld l, a                                       ; $5e88: $6f
    ld l, e                                       ; $5e89: $6b
    rlca                                          ; $5e8a: $07
    rlca                                          ; $5e8b: $07
    inc bc                                        ; $5e8c: $03
    inc bc                                        ; $5e8d: $03

jr_026_5e8e:
    nop                                           ; $5e8e: $00
    nop                                           ; $5e8f: $00

jr_026_5e90:
    add b                                         ; $5e90: $80
    add b                                         ; $5e91: $80
    ld b, b                                       ; $5e92: $40
    ret nz                                        ; $5e93: $c0

    ld h, b                                       ; $5e94: $60
    ldh [$90], a                                  ; $5e95: $e0 $90
    ldh a, [$c8]                                  ; $5e97: $f0 $c8
    ld a, b                                       ; $5e99: $78
    add sp, $38                                   ; $5e9a: $e8 $38
    db $fc                                        ; $5e9c: $fc
    ld [hl], h                                    ; $5e9d: $74
    db $fc                                        ; $5e9e: $fc
    ld d, h                                       ; $5e9f: $54

jr_026_5ea0:
    db $fc                                        ; $5ea0: $fc
    inc e                                         ; $5ea1: $1c
    cp $3a                                        ; $5ea2: $fe $3a
    sbc $fe                                       ; $5ea4: $de $fe
    jr c, jr_026_5e90                             ; $5ea6: $38 $e8

    ldh a, [$d0]                                  ; $5ea8: $f0 $d0
    ldh [$e0], a                                  ; $5eaa: $e0 $e0
    jr nz, jr_026_5e8e                            ; $5eac: $20 $e0

    ret nz                                        ; $5eae: $c0

    ret nz                                        ; $5eaf: $c0

    nop                                           ; $5eb0: $00
    nop                                           ; $5eb1: $00
    rrca                                          ; $5eb2: $0f
    rrca                                          ; $5eb3: $0f
    db $10                                        ; $5eb4: $10
    rra                                           ; $5eb5: $1f
    inc h                                         ; $5eb6: $24
    ccf                                           ; $5eb7: $3f
    ld l, $3b                                     ; $5eb8: $2e $3b
    ld l, $3b                                     ; $5eba: $2e $3b
    rst $18                                       ; $5ebc: $df
    db $dd                                        ; $5ebd: $dd
    rst $18                                       ; $5ebe: $df
    push de                                       ; $5ebf: $d5
    ld e, a                                       ; $5ec0: $5f
    ld d, b                                       ; $5ec1: $50
    ccf                                           ; $5ec2: $3f
    add hl, sp                                    ; $5ec3: $39
    ld e, $17                                     ; $5ec4: $1e $17
    inc e                                         ; $5ec6: $1c
    rra                                           ; $5ec7: $1f
    rrca                                          ; $5ec8: $0f
    dec bc                                        ; $5ec9: $0b
    rla                                           ; $5eca: $17
    inc e                                         ; $5ecb: $1c
    dec de                                        ; $5ecc: $1b
    rra                                           ; $5ecd: $1f
    inc c                                         ; $5ece: $0c
    inc c                                         ; $5ecf: $0c
    jr jr_026_5eea                                ; $5ed0: $18 $18

    and h                                         ; $5ed2: $a4
    cp h                                          ; $5ed3: $bc
    ld [hl], d                                    ; $5ed4: $72
    cp $3a                                        ; $5ed5: $fe $3a
    xor $14                                       ; $5ed7: $ee $14
    db $fc                                        ; $5ed9: $fc
    call nc, $f4fc                                ; $5eda: $d4 $fc $f4
    inc a                                         ; $5edd: $3c
    db $ec                                        ; $5ede: $ec
    inc l                                         ; $5edf: $2c
    call nz, $c044                                ; $5ee0: $c4 $44 $c0
    ret nz                                        ; $5ee3: $c0

    ldh [$a0], a                                  ; $5ee4: $e0 $a0
    ld [hl], b                                    ; $5ee6: $70
    ret nc                                        ; $5ee7: $d0

    ldh [$e0], a                                  ; $5ee8: $e0 $e0

jr_026_5eea:
    ldh a, [rSVBK]                                ; $5eea: $f0 $70
    ret nc                                        ; $5eec: $d0

    ldh a, [$60]                                  ; $5eed: $f0 $60
    ld h, b                                       ; $5eef: $60
    inc bc                                        ; $5ef0: $03
    inc bc                                        ; $5ef1: $03
    inc b                                         ; $5ef2: $04
    rlca                                          ; $5ef3: $07

jr_026_5ef4:
    add hl, bc                                    ; $5ef4: $09
    rrca                                          ; $5ef5: $0f
    ld a, [bc]                                    ; $5ef6: $0a
    rrca                                          ; $5ef7: $0f
    ld [de], a                                    ; $5ef8: $12
    rra                                           ; $5ef9: $1f
    ld [de], a                                    ; $5efa: $12
    rra                                           ; $5efb: $1f
    add hl, sp                                    ; $5efc: $39
    cpl                                           ; $5efd: $2f
    dec a                                         ; $5efe: $3d
    cpl                                           ; $5eff: $2f
    rra                                           ; $5f00: $1f
    dec de                                        ; $5f01: $1b
    halt                                          ; $5f02: $76
    ld a, a                                       ; $5f03: $7f
    ld a, e                                       ; $5f04: $7b
    ld c, a                                       ; $5f05: $4f
    inc a                                         ; $5f06: $3c
    ccf                                           ; $5f07: $3f
    rrca                                          ; $5f08: $0f
    dec bc                                        ; $5f09: $0b
    rlca                                          ; $5f0a: $07
    rlca                                          ; $5f0b: $07

jr_026_5f0c:
    inc bc                                        ; $5f0c: $03
    inc bc                                        ; $5f0d: $03

jr_026_5f0e:
    nop                                           ; $5f0e: $00
    nop                                           ; $5f0f: $00

jr_026_5f10:
    ret nz                                        ; $5f10: $c0

    ret nz                                        ; $5f11: $c0

    jr nz, jr_026_5ef4                            ; $5f12: $20 $e0

    ret nc                                        ; $5f14: $d0

    ldh a, [$30]                                  ; $5f15: $f0 $30
    ldh a, [$2b]                                  ; $5f17: $f0 $2b
    ei                                            ; $5f19: $fb
    dec hl                                        ; $5f1a: $2b
    ei                                            ; $5f1b: $fb
    ld a, $f6                                     ; $5f1c: $3e $f6
    ld a, [hl]                                    ; $5f1e: $7e
    or $7e                                        ; $5f1f: $f6 $7e
    sbc $fe                                       ; $5f21: $de $fe
    ld a, [$fcdc]                                 ; $5f23: $fa $dc $fc
    jr c, jr_026_5f10                             ; $5f26: $38 $e8

    ldh a, [$d0]                                  ; $5f28: $f0 $d0
    jr nz, jr_026_5f0c                            ; $5f2a: $20 $e0

    jr nz, jr_026_5f0e                            ; $5f2c: $20 $e0

    ret nz                                        ; $5f2e: $c0

    ret nz                                        ; $5f2f: $c0

    inc b                                         ; $5f30: $04
    inc b                                         ; $5f31: $04
    ld a, [de]                                    ; $5f32: $1a
    ld e, $27                                     ; $5f33: $1e $27
    ccf                                           ; $5f35: $3f
    ld l, $3b                                     ; $5f36: $2e $3b
    dec d                                         ; $5f38: $15
    rra                                           ; $5f39: $1f
    rla                                           ; $5f3a: $17
    ld e, $17                                     ; $5f3b: $1e $17
    inc e                                         ; $5f3d: $1c
    dec bc                                        ; $5f3e: $0b
    ld a, [bc]                                    ; $5f3f: $0a
    dec b                                         ; $5f40: $05
    rlca                                          ; $5f41: $07
    ld a, [bc]                                    ; $5f42: $0a
    rrca                                          ; $5f43: $0f
    inc e                                         ; $5f44: $1c
    rla                                           ; $5f45: $17
    ld e, $13                                     ; $5f46: $1e $13
    rrca                                          ; $5f48: $0f
    rrca                                          ; $5f49: $0f
    ld b, $06                                     ; $5f4a: $06 $06
    add hl, bc                                    ; $5f4c: $09
    rrca                                          ; $5f4d: $0f

jr_026_5f4e:
    rrca                                          ; $5f4e: $0f
    rrca                                          ; $5f4f: $0f
    nop                                           ; $5f50: $00
    nop                                           ; $5f51: $00
    ldh [$e0], a                                  ; $5f52: $e0 $e0
    jr jr_026_5f4e                                ; $5f54: $18 $f8

    inc b                                         ; $5f56: $04
    db $fc                                        ; $5f57: $fc
    inc d                                         ; $5f58: $14
    db $fc                                        ; $5f59: $fc
    cp b                                          ; $5f5a: $b8
    add sp, -$10                                  ; $5f5b: $e8 $f0
    ld d, b                                       ; $5f5d: $50
    ldh a, [$90]                                  ; $5f5e: $f0 $90
    ld hl, sp+$08                                 ; $5f60: $f8 $08
    ldh a, [$90]                                  ; $5f62: $f0 $90
    ld h, b                                       ; $5f64: $60
    ldh [rLCDC], a                                ; $5f65: $e0 $40
    ret nz                                        ; $5f67: $c0

    ldh [$a0], a                                  ; $5f68: $e0 $a0
    ld h, b                                       ; $5f6a: $60
    ld h, b                                       ; $5f6b: $60
    ld d, $16                                     ; $5f6c: $16 $16
    ld c, $0e                                     ; $5f6e: $0e $0e
    ld bc, $0601                                  ; $5f70: $01 $01 $06
    rlca                                          ; $5f73: $07
    inc b                                         ; $5f74: $04
    rlca                                          ; $5f75: $07
    dec bc                                        ; $5f76: $0b
    rrca                                          ; $5f77: $0f
    ld [$180f], sp                                ; $5f78: $08 $0f $18
    rra                                           ; $5f7b: $1f
    inc a                                         ; $5f7c: $3c
    cpl                                           ; $5f7d: $2f
    ccf                                           ; $5f7e: $3f
    daa                                           ; $5f7f: $27
    rra                                           ; $5f80: $1f
    add hl, de                                    ; $5f81: $19
    rrca                                          ; $5f82: $0f
    inc c                                         ; $5f83: $0c
    dec bc                                        ; $5f84: $0b
    rrca                                          ; $5f85: $0f
    rlca                                          ; $5f86: $07
    dec b                                         ; $5f87: $05
    rlca                                          ; $5f88: $07
    ld b, $07                                     ; $5f89: $06 $07
    dec b                                         ; $5f8b: $05
    add hl, bc                                    ; $5f8c: $09
    rrca                                          ; $5f8d: $0f
    rrca                                          ; $5f8e: $0f
    rrca                                          ; $5f8f: $0f
    add b                                         ; $5f90: $80
    add b                                         ; $5f91: $80
    ld b, b                                       ; $5f92: $40
    ret nz                                        ; $5f93: $c0

    or b                                          ; $5f94: $b0
    ldh a, [rNR10]                                ; $5f95: $f0 $10
    ldh a, [$88]                                  ; $5f97: $f0 $88
    ld hl, sp+$48                                 ; $5f99: $f8 $48
    ld hl, sp-$04                                 ; $5f9b: $f8 $fc
    or h                                          ; $5f9d: $b4
    db $fc                                        ; $5f9e: $fc
    ld d, h                                       ; $5f9f: $54
    ld hl, sp+$58                                 ; $5fa0: $f8 $58
    ldh a, [$30]                                  ; $5fa2: $f0 $30
    ret nc                                        ; $5fa4: $d0

    ldh a, [$e0]                                  ; $5fa5: $f0 $e0
    and b                                         ; $5fa7: $a0
    ldh [$e0], a                                  ; $5fa8: $e0 $e0
    ldh [$a0], a                                  ; $5faa: $e0 $a0
    sub b                                         ; $5fac: $90
    ldh a, [$f0]                                  ; $5fad: $f0 $f0
    ldh a, [rP1]                                  ; $5faf: $f0 $00
    nop                                           ; $5fb1: $00
    rlca                                          ; $5fb2: $07
    rlca                                          ; $5fb3: $07
    jr jr_026_5fd5                                ; $5fb4: $18 $1f

    jr nz, jr_026_5ff7                            ; $5fb6: $20 $3f

    jr z, jr_026_5ff9                             ; $5fb8: $28 $3f

    dec e                                         ; $5fba: $1d
    rla                                           ; $5fbb: $17
    rrca                                          ; $5fbc: $0f
    ld a, [bc]                                    ; $5fbd: $0a
    rrca                                          ; $5fbe: $0f
    add hl, bc                                    ; $5fbf: $09
    rra                                           ; $5fc0: $1f
    db $10                                        ; $5fc1: $10
    rrca                                          ; $5fc2: $0f
    add hl, bc                                    ; $5fc3: $09
    ld b, $07                                     ; $5fc4: $06 $07
    ld [bc], a                                    ; $5fc6: $02
    inc bc                                        ; $5fc7: $03
    rlca                                          ; $5fc8: $07
    dec b                                         ; $5fc9: $05
    ld b, $06                                     ; $5fca: $06 $06
    ld l, b                                       ; $5fcc: $68
    ld l, b                                       ; $5fcd: $68
    ld [hl], b                                    ; $5fce: $70
    ld [hl], b                                    ; $5fcf: $70
    jr nz, jr_026_5ff2                            ; $5fd0: $20 $20

    ld e, b                                       ; $5fd2: $58
    ld a, b                                       ; $5fd3: $78
    db $e4                                        ; $5fd4: $e4

jr_026_5fd5:
    db $fc                                        ; $5fd5: $fc
    ld [hl], h                                    ; $5fd6: $74
    call c, $f8a8                                 ; $5fd7: $dc $a8 $f8
    add sp, $78                                   ; $5fda: $e8 $78
    add sp, $38                                   ; $5fdc: $e8 $38
    ret nc                                        ; $5fde: $d0

    ld d, b                                       ; $5fdf: $50
    and b                                         ; $5fe0: $a0
    ldh [$50], a                                  ; $5fe1: $e0 $50
    ldh a, [$38]                                  ; $5fe3: $f0 $38
    add sp, $78                                   ; $5fe5: $e8 $78
    ret z                                         ; $5fe7: $c8

    ldh a, [$f0]                                  ; $5fe8: $f0 $f0
    ld h, b                                       ; $5fea: $60
    ld h, b                                       ; $5feb: $60
    sub b                                         ; $5fec: $90
    ldh a, [$f0]                                  ; $5fed: $f0 $f0
    ldh a, [$03]                                  ; $5fef: $f0 $03
    inc bc                                        ; $5ff1: $03

jr_026_5ff2:
    inc b                                         ; $5ff2: $04
    rlca                                          ; $5ff3: $07

jr_026_5ff4:
    add hl, bc                                    ; $5ff4: $09
    rrca                                          ; $5ff5: $0f
    ld a, [bc]                                    ; $5ff6: $0a

jr_026_5ff7:
    rrca                                          ; $5ff7: $0f
    ld [de], a                                    ; $5ff8: $12

jr_026_5ff9:
    rra                                           ; $5ff9: $1f
    ld a, [hl-]                                   ; $5ffa: $3a
    cpl                                           ; $5ffb: $2f
    dec a                                         ; $5ffc: $3d
    daa                                           ; $5ffd: $27
    dec e                                         ; $5ffe: $1d
    rla                                           ; $5fff: $17
    dec bc                                        ; $6000: $0b
    rrca                                          ; $6001: $0f
    inc c                                         ; $6002: $0c
    rrca                                          ; $6003: $0f
    dec bc                                        ; $6004: $0b
    rrca                                          ; $6005: $0f
    rlca                                          ; $6006: $07
    inc b                                         ; $6007: $04
    rlca                                          ; $6008: $07
    rlca                                          ; $6009: $07
    rlca                                          ; $600a: $07
    dec b                                         ; $600b: $05
    add hl, bc                                    ; $600c: $09
    rrca                                          ; $600d: $0f
    rrca                                          ; $600e: $0f
    rrca                                          ; $600f: $0f
    ret nz                                        ; $6010: $c0

    ret nz                                        ; $6011: $c0

    jr nz, jr_026_5ff4                            ; $6012: $20 $e0

    ret nc                                        ; $6014: $d0

    ldh a, [$30]                                  ; $6015: $f0 $30
    ldh a, [$28]                                  ; $6017: $f0 $28
    ld hl, sp+$28                                 ; $6019: $f8 $28
    ld hl, sp+$28                                 ; $601b: $f8 $28
    ld hl, sp+$78                                 ; $601d: $f8 $78
    ld hl, sp+$70                                 ; $601f: $f8 $70
    ret nc                                        ; $6021: $d0

    ldh a, [$f0]                                  ; $6022: $f0 $f0
    ret nc                                        ; $6024: $d0

    ldh a, [$f0]                                  ; $6025: $f0 $f0
    db $10                                        ; $6027: $10
    ldh a, [$f0]                                  ; $6028: $f0 $f0
    ldh a, [$d0]                                  ; $602a: $f0 $d0
    ret z                                         ; $602c: $c8

    ld hl, sp-$08                                 ; $602d: $f8 $f8
    ld hl, sp+$04                                 ; $602f: $f8 $04
    inc b                                         ; $6031: $04
    ld a, [de]                                    ; $6032: $1a
    ld e, $27                                     ; $6033: $1e $27
    ccf                                           ; $6035: $3f
    ld l, $3b                                     ; $6036: $2e $3b
    dec d                                         ; $6038: $15
    rra                                           ; $6039: $1f
    rla                                           ; $603a: $17
    ld e, $17                                     ; $603b: $1e $17
    inc e                                         ; $603d: $1c
    dec bc                                        ; $603e: $0b
    ld a, [bc]                                    ; $603f: $0a
    dec b                                         ; $6040: $05
    rlca                                          ; $6041: $07
    ld a, [bc]                                    ; $6042: $0a
    rrca                                          ; $6043: $0f
    inc e                                         ; $6044: $1c
    rla                                           ; $6045: $17
    ld e, $1f                                     ; $6046: $1e $1f
    rrca                                          ; $6048: $0f
    rrca                                          ; $6049: $0f
    ld b, $06                                     ; $604a: $06 $06
    add hl, bc                                    ; $604c: $09
    rrca                                          ; $604d: $0f

jr_026_604e:
    rrca                                          ; $604e: $0f
    rrca                                          ; $604f: $0f
    nop                                           ; $6050: $00
    nop                                           ; $6051: $00
    ldh [$e0], a                                  ; $6052: $e0 $e0
    jr jr_026_604e                                ; $6054: $18 $f8

    inc b                                         ; $6056: $04
    db $fc                                        ; $6057: $fc
    inc d                                         ; $6058: $14
    db $fc                                        ; $6059: $fc
    cp b                                          ; $605a: $b8
    add sp, -$10                                  ; $605b: $e8 $f0
    ld d, b                                       ; $605d: $50
    ldh a, [$90]                                  ; $605e: $f0 $90
    ld hl, sp+$08                                 ; $6060: $f8 $08
    ldh a, [$90]                                  ; $6062: $f0 $90
    ld h, b                                       ; $6064: $60
    ldh [$c0], a                                  ; $6065: $e0 $c0
    ret nz                                        ; $6067: $c0

    add b                                         ; $6068: $80
    add b                                         ; $6069: $80
    nop                                           ; $606a: $00
    nop                                           ; $606b: $00
    nop                                           ; $606c: $00
    nop                                           ; $606d: $00
    nop                                           ; $606e: $00
    nop                                           ; $606f: $00
    ld bc, $0601                                  ; $6070: $01 $01 $06
    rlca                                          ; $6073: $07
    inc b                                         ; $6074: $04
    rlca                                          ; $6075: $07
    dec bc                                        ; $6076: $0b
    rrca                                          ; $6077: $0f
    ld [$180f], sp                                ; $6078: $08 $0f $18
    rra                                           ; $607b: $1f
    inc a                                         ; $607c: $3c
    cpl                                           ; $607d: $2f
    ccf                                           ; $607e: $3f
    daa                                           ; $607f: $27
    rra                                           ; $6080: $1f
    add hl, de                                    ; $6081: $19
    rrca                                          ; $6082: $0f
    inc c                                         ; $6083: $0c
    dec bc                                        ; $6084: $0b
    rrca                                          ; $6085: $0f
    rlca                                          ; $6086: $07
    dec b                                         ; $6087: $05
    ld a, a                                       ; $6088: $7f

jr_026_6089:
    ld a, a                                       ; $6089: $7f
    ld h, a                                       ; $608a: $67
    ld h, l                                       ; $608b: $65
    add hl, bc                                    ; $608c: $09
    rrca                                          ; $608d: $0f
    ld c, $0e                                     ; $608e: $0e $0e
    add b                                         ; $6090: $80
    add b                                         ; $6091: $80
    ld b, b                                       ; $6092: $40
    ret nz                                        ; $6093: $c0

    or b                                          ; $6094: $b0
    ldh a, [rNR10]                                ; $6095: $f0 $10
    ldh a, [$88]                                  ; $6097: $f0 $88
    ld hl, sp+$48                                 ; $6099: $f8 $48
    ld hl, sp-$04                                 ; $609b: $f8 $fc
    or h                                          ; $609d: $b4
    db $fc                                        ; $609e: $fc
    ld d, h                                       ; $609f: $54
    ld hl, sp+$58                                 ; $60a0: $f8 $58
    ldh a, [$30]                                  ; $60a2: $f0 $30
    ret nc                                        ; $60a4: $d0

    ldh a, [$e0]                                  ; $60a5: $f0 $e0
    jr nz, jr_026_6089                            ; $60a7: $20 $e0

    ldh [$e0], a                                  ; $60a9: $e0 $e0
    and b                                         ; $60ab: $a0
    sub b                                         ; $60ac: $90
    ldh a, [$f0]                                  ; $60ad: $f0 $f0
    ldh a, [rP1]                                  ; $60af: $f0 $00
    nop                                           ; $60b1: $00
    rlca                                          ; $60b2: $07
    rlca                                          ; $60b3: $07
    jr jr_026_60d5                                ; $60b4: $18 $1f

    jr nz, jr_026_60f7                            ; $60b6: $20 $3f

    jr z, jr_026_60f9                             ; $60b8: $28 $3f

    dec e                                         ; $60ba: $1d
    rla                                           ; $60bb: $17
    rrca                                          ; $60bc: $0f
    ld a, [bc]                                    ; $60bd: $0a
    rrca                                          ; $60be: $0f
    add hl, bc                                    ; $60bf: $09
    rra                                           ; $60c0: $1f
    db $10                                        ; $60c1: $10
    rrca                                          ; $60c2: $0f
    add hl, bc                                    ; $60c3: $09
    ld b, $07                                     ; $60c4: $06 $07
    ld [bc], a                                    ; $60c6: $02
    inc bc                                        ; $60c7: $03
    ld bc, $0001                                  ; $60c8: $01 $01 $00
    nop                                           ; $60cb: $00
    nop                                           ; $60cc: $00
    nop                                           ; $60cd: $00
    nop                                           ; $60ce: $00
    nop                                           ; $60cf: $00
    jr nz, jr_026_60f2                            ; $60d0: $20 $20

    ld e, b                                       ; $60d2: $58
    ld a, b                                       ; $60d3: $78
    db $e4                                        ; $60d4: $e4

jr_026_60d5:
    db $fc                                        ; $60d5: $fc
    ld [hl], h                                    ; $60d6: $74
    call c, $f8a8                                 ; $60d7: $dc $a8 $f8
    add sp, $78                                   ; $60da: $e8 $78
    add sp, $38                                   ; $60dc: $e8 $38
    ret nc                                        ; $60de: $d0

    ld d, b                                       ; $60df: $50
    and b                                         ; $60e0: $a0
    ldh [$d0], a                                  ; $60e1: $e0 $d0
    ldh a, [$f8]                                  ; $60e3: $f0 $f8
    add sp, $78                                   ; $60e5: $e8 $78
    ret z                                         ; $60e7: $c8

    ldh a, [$f0]                                  ; $60e8: $f0 $f0
    ld h, b                                       ; $60ea: $60
    ld h, b                                       ; $60eb: $60
    sub b                                         ; $60ec: $90
    ldh a, [$f0]                                  ; $60ed: $f0 $f0
    ldh a, [$03]                                  ; $60ef: $f0 $03
    inc bc                                        ; $60f1: $03

jr_026_60f2:
    inc b                                         ; $60f2: $04
    rlca                                          ; $60f3: $07

jr_026_60f4:
    add hl, bc                                    ; $60f4: $09
    rrca                                          ; $60f5: $0f
    ld a, [bc]                                    ; $60f6: $0a

jr_026_60f7:
    rrca                                          ; $60f7: $0f
    ld [de], a                                    ; $60f8: $12

jr_026_60f9:
    rra                                           ; $60f9: $1f
    ld a, [hl-]                                   ; $60fa: $3a
    cpl                                           ; $60fb: $2f
    dec a                                         ; $60fc: $3d
    daa                                           ; $60fd: $27
    dec e                                         ; $60fe: $1d
    rla                                           ; $60ff: $17
    dec bc                                        ; $6100: $0b
    rrca                                          ; $6101: $0f
    inc b                                         ; $6102: $04
    rlca                                          ; $6103: $07
    rlca                                          ; $6104: $07
    rlca                                          ; $6105: $07
    rlca                                          ; $6106: $07
    inc b                                         ; $6107: $04
    rlca                                          ; $6108: $07
    rlca                                          ; $6109: $07
    rlca                                          ; $610a: $07
    dec b                                         ; $610b: $05
    add hl, bc                                    ; $610c: $09
    rrca                                          ; $610d: $0f
    rrca                                          ; $610e: $0f
    rrca                                          ; $610f: $0f
    ret nz                                        ; $6110: $c0

    ret nz                                        ; $6111: $c0

    jr nz, jr_026_60f4                            ; $6112: $20 $e0

    ret nc                                        ; $6114: $d0

    ldh a, [$30]                                  ; $6115: $f0 $30
    ldh a, [$28]                                  ; $6117: $f0 $28
    ld hl, sp+$28                                 ; $6119: $f8 $28
    ld hl, sp+$28                                 ; $611b: $f8 $28
    ld hl, sp+$78                                 ; $611d: $f8 $78
    ld hl, sp+$70                                 ; $611f: $f8 $70
    ret nc                                        ; $6121: $d0

    ldh a, [$f0]                                  ; $6122: $f0 $f0
    ret nc                                        ; $6124: $d0

    ldh a, [$fe]                                  ; $6125: $f0 $fe
    ld e, $f6                                     ; $6127: $1e $f6
    or $f0                                        ; $6129: $f6 $f0
    ret nc                                        ; $612b: $d0

    ld c, b                                       ; $612c: $48
    ld a, b                                       ; $612d: $78
    ld a, b                                       ; $612e: $78
    ld a, b                                       ; $612f: $78
    inc b                                         ; $6130: $04
    inc b                                         ; $6131: $04
    ld a, [de]                                    ; $6132: $1a
    ld e, $27                                     ; $6133: $1e $27
    ccf                                           ; $6135: $3f
    xor $fb                                       ; $6136: $ee $fb
    push de                                       ; $6138: $d5
    rst $18                                       ; $6139: $df
    rst $10                                       ; $613a: $d7
    sbc $57                                       ; $613b: $de $57
    ld e, h                                       ; $613d: $5c
    dec hl                                        ; $613e: $2b
    ld a, [hl+]                                   ; $613f: $2a
    dec e                                         ; $6140: $1d
    rra                                           ; $6141: $1f
    inc e                                         ; $6142: $1c
    rla                                           ; $6143: $17
    ld e, $1b                                     ; $6144: $1e $1b
    rra                                           ; $6146: $1f
    rra                                           ; $6147: $1f
    rrca                                          ; $6148: $0f
    rrca                                          ; $6149: $0f
    ld b, $06                                     ; $614a: $06 $06
    add hl, bc                                    ; $614c: $09
    rrca                                          ; $614d: $0f

jr_026_614e:
    rrca                                          ; $614e: $0f
    rrca                                          ; $614f: $0f
    nop                                           ; $6150: $00
    nop                                           ; $6151: $00
    ldh [$e0], a                                  ; $6152: $e0 $e0
    jr jr_026_614e                                ; $6154: $18 $f8

    inc b                                         ; $6156: $04
    db $fc                                        ; $6157: $fc
    inc d                                         ; $6158: $14
    db $fc                                        ; $6159: $fc
    cp b                                          ; $615a: $b8
    add sp, -$10                                  ; $615b: $e8 $f0
    ld d, b                                       ; $615d: $50
    ldh a, [$90]                                  ; $615e: $f0 $90
    ld hl, sp+$08                                 ; $6160: $f8 $08
    ldh a, [$90]                                  ; $6162: $f0 $90
    ld h, b                                       ; $6164: $60
    ldh [$c0], a                                  ; $6165: $e0 $c0
    ret nz                                        ; $6167: $c0

    add b                                         ; $6168: $80
    add b                                         ; $6169: $80
    nop                                           ; $616a: $00
    nop                                           ; $616b: $00
    nop                                           ; $616c: $00
    nop                                           ; $616d: $00
    nop                                           ; $616e: $00
    nop                                           ; $616f: $00
    ld bc, $0601                                  ; $6170: $01 $01 $06
    rlca                                          ; $6173: $07
    inc b                                         ; $6174: $04
    rlca                                          ; $6175: $07
    dec bc                                        ; $6176: $0b
    rrca                                          ; $6177: $0f
    ld [$d80f], sp                                ; $6178: $08 $0f $d8
    rst $18                                       ; $617b: $df
    db $fc                                        ; $617c: $fc
    rst $28                                       ; $617d: $ef
    rst $38                                       ; $617e: $ff
    rst $20                                       ; $617f: $e7
    ccf                                           ; $6180: $3f
    add hl, sp                                    ; $6181: $39
    rra                                           ; $6182: $1f
    inc e                                         ; $6183: $1c
    rrca                                          ; $6184: $0f
    dec bc                                        ; $6185: $0b
    rlca                                          ; $6186: $07
    inc b                                         ; $6187: $04
    rlca                                          ; $6188: $07
    rlca                                          ; $6189: $07
    rlca                                          ; $618a: $07
    dec b                                         ; $618b: $05
    add hl, bc                                    ; $618c: $09
    rrca                                          ; $618d: $0f
    ld c, $0e                                     ; $618e: $0e $0e
    add b                                         ; $6190: $80
    add b                                         ; $6191: $80
    ld b, b                                       ; $6192: $40
    ret nz                                        ; $6193: $c0

    or b                                          ; $6194: $b0
    ldh a, [rNR10]                                ; $6195: $f0 $10
    ldh a, [$88]                                  ; $6197: $f0 $88
    ld hl, sp+$48                                 ; $6199: $f8 $48
    ld hl, sp-$04                                 ; $619b: $f8 $fc
    or h                                          ; $619d: $b4
    db $fc                                        ; $619e: $fc
    ld d, h                                       ; $619f: $54
    ld hl, sp+$58                                 ; $61a0: $f8 $58
    ldh a, [$30]                                  ; $61a2: $f0 $30
    ldh [$e0], a                                  ; $61a4: $e0 $e0
    and b                                         ; $61a6: $a0
    ldh [$e0], a                                  ; $61a7: $e0 $e0
    ldh [$e0], a                                  ; $61a9: $e0 $e0
    and b                                         ; $61ab: $a0
    sub b                                         ; $61ac: $90
    ldh a, [$f0]                                  ; $61ad: $f0 $f0
    ldh a, [rP1]                                  ; $61af: $f0 $00
    nop                                           ; $61b1: $00
    rlca                                          ; $61b2: $07
    rlca                                          ; $61b3: $07
    jr jr_026_61d5                                ; $61b4: $18 $1f

    jr nz, jr_026_61f7                            ; $61b6: $20 $3f

    jr z, jr_026_61f9                             ; $61b8: $28 $3f

    dec e                                         ; $61ba: $1d
    rla                                           ; $61bb: $17
    rrca                                          ; $61bc: $0f
    ld a, [bc]                                    ; $61bd: $0a
    rrca                                          ; $61be: $0f
    add hl, bc                                    ; $61bf: $09
    rra                                           ; $61c0: $1f
    db $10                                        ; $61c1: $10
    rrca                                          ; $61c2: $0f
    add hl, bc                                    ; $61c3: $09
    dec b                                         ; $61c4: $05
    rlca                                          ; $61c5: $07
    ld [bc], a                                    ; $61c6: $02
    inc bc                                        ; $61c7: $03
    ld bc, $0001                                  ; $61c8: $01 $01 $00
    nop                                           ; $61cb: $00
    nop                                           ; $61cc: $00
    nop                                           ; $61cd: $00
    nop                                           ; $61ce: $00
    nop                                           ; $61cf: $00
    jr nz, jr_026_61f2                            ; $61d0: $20 $20

    ld e, b                                       ; $61d2: $58
    ld a, b                                       ; $61d3: $78
    db $e4                                        ; $61d4: $e4

jr_026_61d5:
    db $fc                                        ; $61d5: $fc
    ld [hl], h                                    ; $61d6: $74
    call c, $fbab                                 ; $61d7: $dc $ab $fb
    db $eb                                        ; $61da: $eb
    ld a, e                                       ; $61db: $7b
    ld [$d43a], a                                 ; $61dc: $ea $3a $d4
    ld d, h                                       ; $61df: $54
    xor b                                         ; $61e0: $a8
    add sp, -$30                                  ; $61e1: $e8 $d0
    ldh a, [$f8]                                  ; $61e3: $f0 $f8
    add sp, -$08                                  ; $61e5: $e8 $f8
    ret z                                         ; $61e7: $c8

    ldh a, [$f0]                                  ; $61e8: $f0 $f0
    ld h, b                                       ; $61ea: $60
    ld h, b                                       ; $61eb: $60
    sub b                                         ; $61ec: $90
    ldh a, [$f0]                                  ; $61ed: $f0 $f0
    ldh a, [$03]                                  ; $61ef: $f0 $03
    inc bc                                        ; $61f1: $03

jr_026_61f2:
    inc b                                         ; $61f2: $04
    rlca                                          ; $61f3: $07

jr_026_61f4:
    add hl, bc                                    ; $61f4: $09
    rrca                                          ; $61f5: $0f
    ld a, [bc]                                    ; $61f6: $0a

jr_026_61f7:
    rrca                                          ; $61f7: $0f
    ld [de], a                                    ; $61f8: $12

jr_026_61f9:
    rra                                           ; $61f9: $1f
    ld a, [hl-]                                   ; $61fa: $3a
    cpl                                           ; $61fb: $2f
    dec a                                         ; $61fc: $3d
    daa                                           ; $61fd: $27
    dec e                                         ; $61fe: $1d
    rla                                           ; $61ff: $17
    dec bc                                        ; $6200: $0b
    rrca                                          ; $6201: $0f
    inc b                                         ; $6202: $04
    rlca                                          ; $6203: $07
    rlca                                          ; $6204: $07
    rlca                                          ; $6205: $07
    rlca                                          ; $6206: $07
    inc b                                         ; $6207: $04
    rlca                                          ; $6208: $07
    rlca                                          ; $6209: $07
    rlca                                          ; $620a: $07
    dec b                                         ; $620b: $05
    add hl, bc                                    ; $620c: $09
    rrca                                          ; $620d: $0f
    rrca                                          ; $620e: $0f
    rrca                                          ; $620f: $0f
    ret nz                                        ; $6210: $c0

    ret nz                                        ; $6211: $c0

    jr nz, jr_026_61f4                            ; $6212: $20 $e0

    db $d3                                        ; $6214: $d3
    di                                            ; $6215: $f3
    inc sp                                        ; $6216: $33
    di                                            ; $6217: $f3
    add hl, hl                                    ; $6218: $29
    ld sp, hl                                     ; $6219: $f9
    ld a, [hl+]                                   ; $621a: $2a
    ld a, [$fc2c]                                 ; $621b: $fa $2c $fc
    ld a, h                                       ; $621e: $7c
    db $f4                                        ; $621f: $f4
    ld a, b                                       ; $6220: $78
    ret c                                         ; $6221: $d8

    add sp, -$08                                  ; $6222: $e8 $f8
    ret z                                         ; $6224: $c8

    ld hl, sp-$10                                 ; $6225: $f8 $f0
    db $10                                        ; $6227: $10
    ldh a, [$f0]                                  ; $6228: $f0 $f0
    ldh a, [$d0]                                  ; $622a: $f0 $d0
    ld c, b                                       ; $622c: $48
    ld a, b                                       ; $622d: $78
    ld a, b                                       ; $622e: $78
    ld a, b                                       ; $622f: $78
    inc bc                                        ; $6230: $03
    inc bc                                        ; $6231: $03
    inc b                                         ; $6232: $04
    rlca                                          ; $6233: $07

jr_026_6234:
    dec bc                                        ; $6234: $0b
    rrca                                          ; $6235: $0f
    call nc, $d4df                                ; $6236: $d4 $df $d4
    rst $18                                       ; $6239: $df
    call nc, Call_026_4cdf                        ; $623a: $d4 $df $4c
    ld c, a                                       ; $623d: $4f
    inc l                                         ; $623e: $2c
    cpl                                           ; $623f: $2f
    dec d                                         ; $6240: $15
    rla                                           ; $6241: $17
    ld a, [bc]                                    ; $6242: $0a
    rrca                                          ; $6243: $0f
    rrca                                          ; $6244: $0f
    rrca                                          ; $6245: $0f
    rrca                                          ; $6246: $0f
    ld [$0f0f], sp                                ; $6247: $08 $0f $0f
    rlca                                          ; $624a: $07
    rlca                                          ; $624b: $07
    add hl, bc                                    ; $624c: $09
    rrca                                          ; $624d: $0f
    ld c, $0e                                     ; $624e: $0e $0e
    ret nz                                        ; $6250: $c0

    ret nz                                        ; $6251: $c0

    jr nz, jr_026_6234                            ; $6252: $20 $e0

    sub b                                         ; $6254: $90
    ldh a, [$50]                                  ; $6255: $f0 $50
    ldh a, [$50]                                  ; $6257: $f0 $50
    ldh a, [$f0]                                  ; $6259: $f0 $f0
    ldh a, [$f0]                                  ; $625b: $f0 $f0
    ret nc                                        ; $625d: $d0

    ldh a, [$d0]                                  ; $625e: $f0 $d0
    ldh [$a0], a                                  ; $6260: $e0 $a0
    ld b, b                                       ; $6262: $40
    ret nz                                        ; $6263: $c0

    ret nz                                        ; $6264: $c0

    ret nz                                        ; $6265: $c0

    ret nz                                        ; $6266: $c0

    ld b, b                                       ; $6267: $40
    ret nz                                        ; $6268: $c0

    ret nz                                        ; $6269: $c0

    add b                                         ; $626a: $80
    add b                                         ; $626b: $80
    ld b, b                                       ; $626c: $40
    ret nz                                        ; $626d: $c0

    ret nz                                        ; $626e: $c0

    ret nz                                        ; $626f: $c0

    jr jr_026_628a                                ; $6270: $18 $18

    dec h                                         ; $6272: $25
    dec a                                         ; $6273: $3d
    ld c, [hl]                                    ; $6274: $4e
    ld a, a                                       ; $6275: $7f
    ld e, h                                       ; $6276: $5c
    ld [hl], a                                    ; $6277: $77
    ret z                                         ; $6278: $c8

    rst $38                                       ; $6279: $ff
    ld [$efff], a                                 ; $627a: $ea $ff $ef
    db $fd                                        ; $627d: $fd
    scf                                           ; $627e: $37
    inc [hl]                                      ; $627f: $34
    dec de                                        ; $6280: $1b
    dec de                                        ; $6281: $1b
    dec b                                         ; $6282: $05
    rlca                                          ; $6283: $07
    ld [bc], a                                    ; $6284: $02
    inc bc                                        ; $6285: $03
    inc bc                                        ; $6286: $03
    inc bc                                        ; $6287: $03
    rlca                                          ; $6288: $07
    inc b                                         ; $6289: $04

jr_026_628a:
    rlca                                          ; $628a: $07
    rlca                                          ; $628b: $07
    dec b                                         ; $628c: $05
    rlca                                          ; $628d: $07
    rlca                                          ; $628e: $07
    rlca                                          ; $628f: $07
    nop                                           ; $6290: $00
    nop                                           ; $6291: $00
    ldh a, [$f0]                                  ; $6292: $f0 $f0
    ld [$24f8], sp                                ; $6294: $08 $f8 $24
    db $fc                                        ; $6297: $fc
    ld [hl], h                                    ; $6298: $74
    call c, $dc74                                 ; $6299: $dc $74 $dc
    ld hl, sp-$48                                 ; $629c: $f8 $b8
    ld hl, sp-$58                                 ; $629e: $f8 $a8
    ld hl, sp+$08                                 ; $62a0: $f8 $08
    ldh a, [$90]                                  ; $62a2: $f0 $90
    ld h, b                                       ; $62a4: $60
    ldh [rNR41], a                                ; $62a5: $e0 $20
    ldh [$c0], a                                  ; $62a7: $e0 $c0
    ret nz                                        ; $62a9: $c0

    ldh [$e0], a                                  ; $62aa: $e0 $e0
    sub b                                         ; $62ac: $90
    ldh a, [rSVBK]                                ; $62ad: $f0 $70
    ld [hl], b                                    ; $62af: $70
    nop                                           ; $62b0: $00
    nop                                           ; $62b1: $00
    rlca                                          ; $62b2: $07
    rlca                                          ; $62b3: $07
    ld [$110f], sp                                ; $62b4: $08 $0f $11
    rra                                           ; $62b7: $1f
    inc de                                        ; $62b8: $13
    ld e, $1f                                     ; $62b9: $1e $1f
    dec e                                         ; $62bb: $1d
    rra                                           ; $62bc: $1f
    dec d                                         ; $62bd: $15
    rra                                           ; $62be: $1f
    db $10                                        ; $62bf: $10
    rrca                                          ; $62c0: $0f
    ld [$0707], sp                                ; $62c1: $08 $07 $07

jr_026_62c4:
    ld b, $07                                     ; $62c4: $06 $07
    inc bc                                        ; $62c6: $03
    inc bc                                        ; $62c7: $03
    ld bc, $0301                                  ; $62c8: $01 $01 $03
    inc bc                                        ; $62cb: $03
    rlca                                          ; $62cc: $07
    dec b                                         ; $62cd: $05

jr_026_62ce:
    rlca                                          ; $62ce: $07
    rlca                                          ; $62cf: $07
    ret nz                                        ; $62d0: $c0

    ret nz                                        ; $62d1: $c0

    jr nc, jr_026_62c4                            ; $62d2: $30 $f0

    ret z                                         ; $62d4: $c8

    ld hl, sp+$2b                                 ; $62d5: $f8 $2b
    ei                                            ; $62d7: $fb
    sub e                                         ; $62d8: $93
    di                                            ; $62d9: $f3
    or e                                          ; $62da: $b3
    di                                            ; $62db: $f3
    ld a, [c]                                     ; $62dc: $f2
    ld d, d                                       ; $62dd: $52
    db $f4                                        ; $62de: $f4
    inc d                                         ; $62df: $14
    add sp, $68                                   ; $62e0: $e8 $68
    ldh a, [$d0]                                  ; $62e2: $f0 $d0
    ld [hl], b                                    ; $62e4: $70
    ldh a, [$e0]                                  ; $62e5: $f0 $e0
    ldh [$e0], a                                  ; $62e7: $e0 $e0
    jr nz, @-$3e                                  ; $62e9: $20 $c0

    ret nz                                        ; $62eb: $c0

    jr nz, jr_026_62ce                            ; $62ec: $20 $e0

    ldh [$e0], a                                  ; $62ee: $e0 $e0
    inc bc                                        ; $62f0: $03
    inc bc                                        ; $62f1: $03
    inc c                                         ; $62f2: $0c
    rrca                                          ; $62f3: $0f
    db $10                                        ; $62f4: $10
    rra                                           ; $62f5: $1f
    inc h                                         ; $62f6: $24
    ccf                                           ; $62f7: $3f
    ld l, $3b                                     ; $62f8: $2e $3b
    ld e, $13                                     ; $62fa: $1e $13
    rra                                           ; $62fc: $1f
    dec d                                         ; $62fd: $15
    rra                                           ; $62fe: $1f
    dec d                                         ; $62ff: $15
    rra                                           ; $6300: $1f
    db $10                                        ; $6301: $10
    rrca                                          ; $6302: $0f
    dec bc                                        ; $6303: $0b
    inc b                                         ; $6304: $04
    rlca                                          ; $6305: $07
    dec b                                         ; $6306: $05
    rlca                                          ; $6307: $07
    inc bc                                        ; $6308: $03
    inc bc                                        ; $6309: $03
    rlca                                          ; $630a: $07
    rlca                                          ; $630b: $07
    add hl, bc                                    ; $630c: $09
    rrca                                          ; $630d: $0f
    ld c, $0e                                     ; $630e: $0e $0e
    jr jr_026_632a                                ; $6310: $18 $18

    and h                                         ; $6312: $a4
    cp h                                          ; $6313: $bc
    ld [hl], d                                    ; $6314: $72
    cp $3a                                        ; $6315: $fe $3a
    xor $13                                       ; $6317: $ee $13
    rst $38                                       ; $6319: $ff
    rst $10                                       ; $631a: $d7
    rst $38                                       ; $631b: $ff
    rst $30                                       ; $631c: $f7
    ccf                                           ; $631d: $3f
    db $fc                                        ; $631e: $fc
    inc a                                         ; $631f: $3c
    ld hl, sp-$08                                 ; $6320: $f8 $f8
    ld [hl], b                                    ; $6322: $70
    ret nc                                        ; $6323: $d0

    and b                                         ; $6324: $a0
    ldh [$c0], a                                  ; $6325: $e0 $c0
    ret nz                                        ; $6327: $c0

    ldh [rNR41], a                                ; $6328: $e0 $20

jr_026_632a:
    ldh [$e0], a                                  ; $632a: $e0 $e0
    and b                                         ; $632c: $a0
    ldh [$e0], a                                  ; $632d: $e0 $e0
    ldh [rP1], a                                  ; $632f: $e0 $00
    nop                                           ; $6331: $00
    jr jr_026_634c                                ; $6332: $18 $18

    dec h                                         ; $6334: $25
    dec a                                         ; $6335: $3d
    ld c, [hl]                                    ; $6336: $4e
    ld a, a                                       ; $6337: $7f
    ld e, h                                       ; $6338: $5c
    ld [hl], a                                    ; $6339: $77
    jr z, jr_026_637b                             ; $633a: $28 $3f

    dec hl                                        ; $633c: $2b
    ccf                                           ; $633d: $3f
    cpl                                           ; $633e: $2f
    inc a                                         ; $633f: $3c
    scf                                           ; $6340: $37
    inc [hl]                                      ; $6341: $34
    inc hl                                        ; $6342: $23
    ld [hl+], a                                   ; $6343: $22
    rlca                                          ; $6344: $07
    dec b                                         ; $6345: $05
    ld c, $0b                                     ; $6346: $0e $0b
    rlca                                          ; $6348: $07
    rlca                                          ; $6349: $07
    rrca                                          ; $634a: $0f
    rrca                                          ; $634b: $0f

jr_026_634c:
    dec bc                                        ; $634c: $0b
    rrca                                          ; $634d: $0f
    ld b, $06                                     ; $634e: $06 $06
    nop                                           ; $6350: $00
    nop                                           ; $6351: $00
    nop                                           ; $6352: $00
    nop                                           ; $6353: $00
    ldh a, [$f0]                                  ; $6354: $f0 $f0
    ld [$24f8], sp                                ; $6356: $08 $f8 $24
    db $fc                                        ; $6359: $fc
    ld [hl], h                                    ; $635a: $74
    call c, $dc74                                 ; $635b: $dc $74 $dc
    ld hl, sp-$48                                 ; $635e: $f8 $b8
    ld hl, sp-$58                                 ; $6360: $f8 $a8
    ld hl, sp+$08                                 ; $6362: $f8 $08
    ld a, b                                       ; $6364: $78
    add sp, $38                                   ; $6365: $e8 $38
    ld hl, sp-$10                                 ; $6367: $f8 $f0
    ret nc                                        ; $6369: $d0

    add sp, $78                                   ; $636a: $e8 $78
    ret c                                         ; $636c: $d8

    ld hl, sp-$10                                 ; $636d: $f8 $f0
    ldh a, [rP1]                                  ; $636f: $f0 $00
    nop                                           ; $6371: $00
    ld bc, $0201                                  ; $6372: $01 $01 $02
    inc bc                                        ; $6375: $03

jr_026_6376:
    rlca                                          ; $6376: $07
    rlca                                          ; $6377: $07
    ld [$110f], sp                                ; $6378: $08 $0f $11

jr_026_637b:
    rra                                           ; $637b: $1f
    ld de, $3f1f                                  ; $637c: $11 $1f $3f
    ld l, $3f                                     ; $637f: $2e $3f
    ld a, [hl+]                                   ; $6381: $2a
    ccf                                           ; $6382: $3f
    jr c, jr_026_6400                             ; $6383: $38 $7b

    ld a, a                                       ; $6385: $7f
    ld e, h                                       ; $6386: $5c
    ld d, a                                       ; $6387: $57
    rst $08                                       ; $6388: $cf
    set 0, a                                      ; $6389: $cb $c7
    rst $00                                       ; $638b: $c7
    inc b                                         ; $638c: $04
    rlca                                          ; $638d: $07
    inc bc                                        ; $638e: $03
    inc bc                                        ; $638f: $03
    nop                                           ; $6390: $00
    nop                                           ; $6391: $00
    ret nz                                        ; $6392: $c0

    ret nz                                        ; $6393: $c0

    jr nz, jr_026_6376                            ; $6394: $20 $e0

    ld h, b                                       ; $6396: $60
    ldh [$90], a                                  ; $6397: $e0 $90
    ldh a, [$c8]                                  ; $6399: $f0 $c8
    ld a, b                                       ; $639b: $78
    add sp, $38                                   ; $639c: $e8 $38
    db $fc                                        ; $639e: $fc
    ld [hl], h                                    ; $639f: $74
    db $fc                                        ; $63a0: $fc
    ld d, h                                       ; $63a1: $54
    ld hl, sp+$18                                 ; $63a2: $f8 $18
    call c, Call_000_3ef4                         ; $63a4: $dc $f4 $3e
    ld a, [$d6f6]                                 ; $63a7: $fa $f6 $d6
    ldh [$e0], a                                  ; $63aa: $e0 $e0
    ret nz                                        ; $63ac: $c0

    ret nz                                        ; $63ad: $c0

    nop                                           ; $63ae: $00
    nop                                           ; $63af: $00
    nop                                           ; $63b0: $00
    nop                                           ; $63b1: $00
    nop                                           ; $63b2: $00
    nop                                           ; $63b3: $00
    rrca                                          ; $63b4: $0f
    rrca                                          ; $63b5: $0f
    db $10                                        ; $63b6: $10
    rra                                           ; $63b7: $1f
    inc h                                         ; $63b8: $24
    ccf                                           ; $63b9: $3f
    ld l, $3b                                     ; $63ba: $2e $3b
    ld l, $3b                                     ; $63bc: $2e $3b
    rra                                           ; $63be: $1f
    dec e                                         ; $63bf: $1d
    rra                                           ; $63c0: $1f
    dec d                                         ; $63c1: $15
    rra                                           ; $63c2: $1f
    db $10                                        ; $63c3: $10
    ld b, $07                                     ; $63c4: $06 $07
    rlca                                          ; $63c6: $07
    dec b                                         ; $63c7: $05
    rrca                                          ; $63c8: $0f
    dec bc                                        ; $63c9: $0b
    rra                                           ; $63ca: $1f
    ld e, $17                                     ; $63cb: $1e $17
    rra                                           ; $63cd: $1f
    inc c                                         ; $63ce: $0c
    inc c                                         ; $63cf: $0c
    nop                                           ; $63d0: $00
    nop                                           ; $63d1: $00
    jr jr_026_63ec                                ; $63d2: $18 $18

    and h                                         ; $63d4: $a4
    cp h                                          ; $63d5: $bc
    ld [hl], d                                    ; $63d6: $72
    cp $3a                                        ; $63d7: $fe $3a
    xor $12                                       ; $63d9: $ee $12
    cp $d4                                        ; $63db: $fe $d4
    db $fc                                        ; $63dd: $fc
    db $f4                                        ; $63de: $f4
    inc a                                         ; $63df: $3c
    add sp, $28                                   ; $63e0: $e8 $28
    ret z                                         ; $63e2: $c8

    ld c, b                                       ; $63e3: $48
    ld [hl], b                                    ; $63e4: $70
    ret nc                                        ; $63e5: $d0

    jr nc, @-$0e                                  ; $63e6: $30 $f0

    ldh [$e0], a                                  ; $63e8: $e0 $e0
    ret nc                                        ; $63ea: $d0

    ld [hl], b                                    ; $63eb: $70

jr_026_63ec:
    sub b                                         ; $63ec: $90
    ldh a, [$60]                                  ; $63ed: $f0 $60
    ld h, b                                       ; $63ef: $60
    nop                                           ; $63f0: $00
    nop                                           ; $63f1: $00
    inc bc                                        ; $63f2: $03
    inc bc                                        ; $63f3: $03
    inc b                                         ; $63f4: $04
    rlca                                          ; $63f5: $07

jr_026_63f6:
    dec bc                                        ; $63f6: $0b
    rrca                                          ; $63f7: $0f
    inc c                                         ; $63f8: $0c
    rrca                                          ; $63f9: $0f
    inc d                                         ; $63fa: $14
    rra                                           ; $63fb: $1f
    inc d                                         ; $63fc: $14
    rra                                           ; $63fd: $1f
    inc a                                         ; $63fe: $3c
    cpl                                           ; $63ff: $2f

jr_026_6400:
    ld a, $2f                                     ; $6400: $3e $2f
    ld a, [hl]                                    ; $6402: $7e
    ld a, e                                       ; $6403: $7b
    jr c, jr_026_6445                             ; $6404: $38 $3f

    inc e                                         ; $6406: $1c
    rla                                           ; $6407: $17
    rrca                                          ; $6408: $0f
    dec bc                                        ; $6409: $0b
    inc b                                         ; $640a: $04
    rlca                                          ; $640b: $07
    inc b                                         ; $640c: $04
    rlca                                          ; $640d: $07
    inc bc                                        ; $640e: $03
    inc bc                                        ; $640f: $03
    nop                                           ; $6410: $00
    nop                                           ; $6411: $00
    ret nz                                        ; $6412: $c0

    ret nz                                        ; $6413: $c0

    jr nz, jr_026_63f6                            ; $6414: $20 $e0

    sub b                                         ; $6416: $90
    ldh a, [$50]                                  ; $6417: $f0 $50
    ldh a, [rOBP0]                                ; $6419: $f0 $48
    ld hl, sp+$48                                 ; $641b: $f8 $48
    ld hl, sp-$64                                 ; $641d: $f8 $9c
    db $f4                                        ; $641f: $f4
    cp a                                          ; $6420: $bf
    rst $30                                       ; $6421: $f7
    ei                                            ; $6422: $fb
    db $db                                        ; $6423: $db
    sbc $f2                                       ; $6424: $de $f2
    inc a                                         ; $6426: $3c
    db $fc                                        ; $6427: $fc
    ldh a, [$d0]                                  ; $6428: $f0 $d0
    ldh [$e0], a                                  ; $642a: $e0 $e0
    ret nz                                        ; $642c: $c0

    ret nz                                        ; $642d: $c0

    nop                                           ; $642e: $00
    nop                                           ; $642f: $00
    inc c                                         ; $6430: $0c
    inc c                                         ; $6431: $0c
    ld [de], a                                    ; $6432: $12
    ld e, $27                                     ; $6433: $1e $27
    ccf                                           ; $6435: $3f
    ld l, $3b                                     ; $6436: $2e $3b
    inc d                                         ; $6438: $14
    rra                                           ; $6439: $1f
    dec d                                         ; $643a: $15
    rra                                           ; $643b: $1f
    rla                                           ; $643c: $17
    ld e, $1b                                     ; $643d: $1e $1b
    ld a, [de]                                    ; $643f: $1a
    ld de, $0311                                  ; $6440: $11 $11 $03
    inc bc                                        ; $6443: $03
    rlca                                          ; $6444: $07

jr_026_6445:
    dec b                                         ; $6445: $05
    ld c, $0b                                     ; $6446: $0e $0b
    rlca                                          ; $6448: $07
    rlca                                          ; $6449: $07
    rrca                                          ; $644a: $0f
    rrca                                          ; $644b: $0f
    dec bc                                        ; $644c: $0b
    rrca                                          ; $644d: $0f
    ld b, $06                                     ; $644e: $06 $06
    nop                                           ; $6450: $00
    nop                                           ; $6451: $00
    ld hl, sp-$08                                 ; $6452: $f8 $f8
    inc b                                         ; $6454: $04
    db $fc                                        ; $6455: $fc
    ld [de], a                                    ; $6456: $12
    cp $3a                                        ; $6457: $fe $3a
    xor $ba                                       ; $6459: $ee $ba
    xor $fc                                       ; $645b: $ee $fc
    ld e, h                                       ; $645d: $5c
    db $fc                                        ; $645e: $fc
    ld d, h                                       ; $645f: $54
    db $fc                                        ; $6460: $fc
    inc b                                         ; $6461: $04
    ldh a, [$90]                                  ; $6462: $f0 $90
    ld a, b                                       ; $6464: $78
    add sp, $38                                   ; $6465: $e8 $38
    ld hl, sp-$10                                 ; $6467: $f8 $f0
    ret nc                                        ; $6469: $d0

    add sp, $78                                   ; $646a: $e8 $78
    ret c                                         ; $646c: $d8

    ld hl, sp-$10                                 ; $646d: $f8 $f0
    ldh a, [rP1]                                  ; $646f: $f0 $00
    nop                                           ; $6471: $00
    ld bc, $0301                                  ; $6472: $01 $01 $03
    inc bc                                        ; $6475: $03
    inc b                                         ; $6476: $04
    rlca                                          ; $6477: $07
    ld [$080f], sp                                ; $6478: $08 $0f $08
    rrca                                          ; $647b: $0f
    rra                                           ; $647c: $1f
    rla                                           ; $647d: $17
    rra                                           ; $647e: $1f
    dec d                                         ; $647f: $15
    rra                                           ; $6480: $1f
    inc e                                         ; $6481: $1c
    ld a, a                                       ; $6482: $7f
    ld e, h                                       ; $6483: $5c
    ld a, e                                       ; $6484: $7b
    ld a, a                                       ; $6485: $7f
    ld e, h                                       ; $6486: $5c
    ld d, a                                       ; $6487: $57
    rst $08                                       ; $6488: $cf
    set 0, a                                      ; $6489: $cb $c7
    rst $00                                       ; $648b: $c7
    inc b                                         ; $648c: $04
    rlca                                          ; $648d: $07
    inc bc                                        ; $648e: $03
    inc bc                                        ; $648f: $03
    ldh [$e0], a                                  ; $6490: $e0 $e0
    db $10                                        ; $6492: $10
    ldh a, [$b0]                                  ; $6493: $f0 $b0
    ldh a, [rOBP0]                                ; $6495: $f0 $48
    ld hl, sp-$1c                                 ; $6497: $f8 $e4
    cp h                                          ; $6499: $bc
    db $f4                                        ; $649a: $f4
    sbc h                                         ; $649b: $9c
    cp $3a                                        ; $649c: $fe $3a
    cp $2a                                        ; $649e: $fe $2a
    db $fc                                        ; $64a0: $fc
    inc c                                         ; $64a1: $0c
    add sp, $38                                   ; $64a2: $e8 $38
    call c, Call_000_3ef4                         ; $64a4: $dc $f4 $3e
    ld a, [$d6f6]                                 ; $64a7: $fa $f6 $d6
    ldh [$e0], a                                  ; $64aa: $e0 $e0
    ret nz                                        ; $64ac: $c0

    ret nz                                        ; $64ad: $c0

    nop                                           ; $64ae: $00
    nop                                           ; $64af: $00
    nop                                           ; $64b0: $00
    nop                                           ; $64b1: $00
    rlca                                          ; $64b2: $07
    rlca                                          ; $64b3: $07
    ld [$120f], sp                                ; $64b4: $08 $0f $12
    rra                                           ; $64b7: $1f
    rla                                           ; $64b8: $17
    dec e                                         ; $64b9: $1d
    rla                                           ; $64ba: $17
    dec e                                         ; $64bb: $1d
    rrca                                          ; $64bc: $0f
    ld c, $0f                                     ; $64bd: $0e $0f
    ld a, [bc]                                    ; $64bf: $0a
    rrca                                          ; $64c0: $0f
    ld [$090f], sp                                ; $64c1: $08 $0f $09
    ld b, $07                                     ; $64c4: $06 $07
    rlca                                          ; $64c6: $07
    dec b                                         ; $64c7: $05
    rrca                                          ; $64c8: $0f
    dec bc                                        ; $64c9: $0b
    rra                                           ; $64ca: $1f
    ld e, $17                                     ; $64cb: $1e $17
    rra                                           ; $64cd: $1f
    inc c                                         ; $64ce: $0c
    inc c                                         ; $64cf: $0c
    inc c                                         ; $64d0: $0c
    inc c                                         ; $64d1: $0c
    jp nc, Jump_000_39de                          ; $64d2: $d2 $de $39

    rst $38                                       ; $64d5: $ff
    dec e                                         ; $64d6: $1d
    rst $30                                       ; $64d7: $f7

jr_026_64d8:
    add hl, bc                                    ; $64d8: $09
    rst $38                                       ; $64d9: $ff
    ld l, d                                       ; $64da: $6a
    cp $fa                                        ; $64db: $fe $fa
    sbc [hl]                                      ; $64dd: $9e
    db $f4                                        ; $64de: $f4
    sub h                                         ; $64df: $94
    db $e4                                        ; $64e0: $e4
    inc h                                         ; $64e1: $24
    ldh [$e0], a                                  ; $64e2: $e0 $e0
    ld [hl], b                                    ; $64e4: $70
    ret nc                                        ; $64e5: $d0

    jr nc, jr_026_64d8                            ; $64e6: $30 $f0

    ldh [$e0], a                                  ; $64e8: $e0 $e0
    ret nc                                        ; $64ea: $d0

    ld [hl], b                                    ; $64eb: $70
    sub b                                         ; $64ec: $90
    ldh a, [$60]                                  ; $64ed: $f0 $60
    ld h, b                                       ; $64ef: $60
    ld bc, $0201                                  ; $64f0: $01 $01 $02
    inc bc                                        ; $64f3: $03
    dec b                                         ; $64f4: $05
    rlca                                          ; $64f5: $07
    ld b, $07                                     ; $64f6: $06 $07
    ld a, [bc]                                    ; $64f8: $0a
    rrca                                          ; $64f9: $0f
    ld a, [bc]                                    ; $64fa: $0a
    rrca                                          ; $64fb: $0f
    ld e, $17                                     ; $64fc: $1e $17
    rra                                           ; $64fe: $1f
    rla                                           ; $64ff: $17
    ccf                                           ; $6500: $3f
    dec a                                         ; $6501: $3d
    ld a, a                                       ; $6502: $7f
    ld e, a                                       ; $6503: $5f
    jr c, jr_026_6545                             ; $6504: $38 $3f

    inc e                                         ; $6506: $1c
    rla                                           ; $6507: $17
    rrca                                          ; $6508: $0f
    dec bc                                        ; $6509: $0b
    inc b                                         ; $650a: $04
    rlca                                          ; $650b: $07
    inc b                                         ; $650c: $04
    rlca                                          ; $650d: $07
    inc bc                                        ; $650e: $03
    inc bc                                        ; $650f: $03
    ldh [$e0], a                                  ; $6510: $e0 $e0
    db $10                                        ; $6512: $10
    ldh a, [$c8]                                  ; $6513: $f0 $c8
    ld hl, sp+$28                                 ; $6515: $f8 $28
    ld hl, sp+$24                                 ; $6517: $f8 $24
    db $fc                                        ; $6519: $fc
    inc h                                         ; $651a: $24
    db $fc                                        ; $651b: $fc
    ld c, [hl]                                    ; $651c: $4e
    ld a, [$fb5f]                                 ; $651d: $fa $5f $fb
    ld a, l                                       ; $6520: $7d
    db $ed                                        ; $6521: $ed
    ld l, [hl]                                    ; $6522: $6e
    cp $de                                        ; $6523: $fe $de
    ld a, [c]                                     ; $6525: $f2
    inc a                                         ; $6526: $3c
    db $fc                                        ; $6527: $fc
    ldh a, [$d0]                                  ; $6528: $f0 $d0
    ldh [$e0], a                                  ; $652a: $e0 $e0
    ret nz                                        ; $652c: $c0

    ret nz                                        ; $652d: $c0

    nop                                           ; $652e: $00
    nop                                           ; $652f: $00
    jr nc, jr_026_6562                            ; $6530: $30 $30

    ld c, e                                       ; $6532: $4b
    ld a, e                                       ; $6533: $7b
    sbc h                                         ; $6534: $9c
    rst $38                                       ; $6535: $ff
    cp b                                          ; $6536: $b8
    rst $28                                       ; $6537: $ef
    ld d, b                                       ; $6538: $50
    ld a, a                                       ; $6539: $7f
    ld d, [hl]                                    ; $653a: $56
    ld a, a                                       ; $653b: $7f
    ld e, a                                       ; $653c: $5f
    ld a, c                                       ; $653d: $79
    ld l, a                                       ; $653e: $6f
    ld l, c                                       ; $653f: $69
    ld b, a                                       ; $6540: $47
    ld b, h                                       ; $6541: $44
    inc bc                                        ; $6542: $03
    inc bc                                        ; $6543: $03
    rlca                                          ; $6544: $07

jr_026_6545:
    dec b                                         ; $6545: $05
    ld c, $0b                                     ; $6546: $0e $0b
    rlca                                          ; $6548: $07
    rlca                                          ; $6549: $07
    rrca                                          ; $654a: $0f
    rrca                                          ; $654b: $0f
    dec bc                                        ; $654c: $0b
    rrca                                          ; $654d: $0f
    ld b, $06                                     ; $654e: $06 $06
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    ldh [$e0], a                                  ; $6552: $e0 $e0
    db $10                                        ; $6554: $10
    ldh a, [rOBP0]                                ; $6555: $f0 $48
    ld hl, sp-$18                                 ; $6557: $f8 $e8
    cp b                                          ; $6559: $b8
    add sp, -$48                                  ; $655a: $e8 $b8
    ldh a, [rSVBK]                                ; $655c: $f0 $70
    ldh a, [$50]                                  ; $655e: $f0 $50
    ldh a, [rNR10]                                ; $6560: $f0 $10

jr_026_6562:
    ldh a, [$90]                                  ; $6562: $f0 $90
    ld a, b                                       ; $6564: $78
    add sp, $38                                   ; $6565: $e8 $38
    ld hl, sp-$10                                 ; $6567: $f8 $f0
    ret nc                                        ; $6569: $d0

    add sp, $78                                   ; $656a: $e8 $78
    ret c                                         ; $656c: $d8

    ld hl, sp-$10                                 ; $656d: $f8 $f0
    ldh a, [$03]                                  ; $656f: $f0 $03
    inc bc                                        ; $6571: $03
    inc b                                         ; $6572: $04
    rlca                                          ; $6573: $07
    ld c, $0f                                     ; $6574: $0e $0f
    ld de, $231f                                  ; $6576: $11 $1f $23
    ld a, $23                                     ; $6579: $3e $23
    ld a, $7f                                     ; $657b: $3e $7f
    ld e, h                                       ; $657d: $5c
    ld a, a                                       ; $657e: $7f
    ld d, h                                       ; $657f: $54
    ld a, a                                       ; $6580: $7f
    ld [hl], b                                    ; $6581: $70
    ld a, a                                       ; $6582: $7f
    ld e, h                                       ; $6583: $5c
    ld a, e                                       ; $6584: $7b
    ld a, a                                       ; $6585: $7f
    ld e, h                                       ; $6586: $5c
    ld d, a                                       ; $6587: $57
    rst $08                                       ; $6588: $cf
    set 0, a                                      ; $6589: $cb $c7
    rst $00                                       ; $658b: $c7
    inc b                                         ; $658c: $04
    rlca                                          ; $658d: $07
    inc bc                                        ; $658e: $03
    inc bc                                        ; $658f: $03
    add b                                         ; $6590: $80
    add b                                         ; $6591: $80
    ld b, b                                       ; $6592: $40
    ret nz                                        ; $6593: $c0

    ret nz                                        ; $6594: $c0

    ret nz                                        ; $6595: $c0

    jr nz, @-$1e                                  ; $6596: $20 $e0

    sub b                                         ; $6598: $90
    ldh a, [$d0]                                  ; $6599: $f0 $d0
    ld [hl], b                                    ; $659b: $70
    ld hl, sp-$18                                 ; $659c: $f8 $e8
    ld hl, sp-$58                                 ; $659e: $f8 $a8
    ldh a, [$30]                                  ; $65a0: $f0 $30
    add sp, $38                                   ; $65a2: $e8 $38
    call c, Call_000_3ef4                         ; $65a4: $dc $f4 $3e
    ld a, [$d6f6]                                 ; $65a7: $fa $f6 $d6
    ldh [$e0], a                                  ; $65aa: $e0 $e0
    ret nz                                        ; $65ac: $c0

    ret nz                                        ; $65ad: $c0

    nop                                           ; $65ae: $00
    nop                                           ; $65af: $00
    nop                                           ; $65b0: $00
    nop                                           ; $65b1: $00
    rra                                           ; $65b2: $1f
    rra                                           ; $65b3: $1f
    jr nz, jr_026_65f5                            ; $65b4: $20 $3f

    ld c, b                                       ; $65b6: $48
    ld a, a                                       ; $65b7: $7f
    ld e, h                                       ; $65b8: $5c
    ld [hl], a                                    ; $65b9: $77
    ld e, l                                       ; $65ba: $5d
    ld [hl], a                                    ; $65bb: $77
    ccf                                           ; $65bc: $3f
    ld a, [hl-]                                   ; $65bd: $3a
    ccf                                           ; $65be: $3f
    ld a, [hl+]                                   ; $65bf: $2a
    ccf                                           ; $65c0: $3f
    jr nz, jr_026_65d2                            ; $65c1: $20 $0f

    add hl, bc                                    ; $65c3: $09
    ld b, $07                                     ; $65c4: $06 $07
    rlca                                          ; $65c6: $07
    dec b                                         ; $65c7: $05
    rrca                                          ; $65c8: $0f
    dec bc                                        ; $65c9: $0b
    rra                                           ; $65ca: $1f
    ld e, $17                                     ; $65cb: $1e $17
    rra                                           ; $65cd: $1f
    inc c                                         ; $65ce: $0c
    inc c                                         ; $65cf: $0c
    jr nc, jr_026_6602                            ; $65d0: $30 $30

jr_026_65d2:
    ld c, b                                       ; $65d2: $48
    ld a, b                                       ; $65d3: $78
    db $e4                                        ; $65d4: $e4
    db $fc                                        ; $65d5: $fc
    ld [hl], h                                    ; $65d6: $74
    call c, $fc24                                 ; $65d7: $dc $24 $fc
    xor b                                         ; $65da: $a8
    ld hl, sp-$18                                 ; $65db: $f8 $e8
    ld a, b                                       ; $65dd: $78
    ret nc                                        ; $65de: $d0

    ld d, b                                       ; $65df: $50
    sub b                                         ; $65e0: $90
    sub b                                         ; $65e1: $90
    ldh [$e0], a                                  ; $65e2: $e0 $e0
    ld [hl], b                                    ; $65e4: $70
    ret nc                                        ; $65e5: $d0

    jr nc, @-$0e                                  ; $65e6: $30 $f0

    ldh [$e0], a                                  ; $65e8: $e0 $e0
    ret nc                                        ; $65ea: $d0

    ld [hl], b                                    ; $65eb: $70
    sub b                                         ; $65ec: $90
    ldh a, [$60]                                  ; $65ed: $f0 $60
    ld h, b                                       ; $65ef: $60
    rlca                                          ; $65f0: $07
    rlca                                          ; $65f1: $07
    ld [$170f], sp                                ; $65f2: $08 $0f $17

jr_026_65f5:
    rra                                           ; $65f5: $1f

jr_026_65f6:
    jr jr_026_6617                                ; $65f6: $18 $1f

    jr z, jr_026_6639                             ; $65f8: $28 $3f

    jr z, jr_026_663b                             ; $65fa: $28 $3f

    ld a, c                                       ; $65fc: $79
    ld e, a                                       ; $65fd: $5f
    ld a, l                                       ; $65fe: $7d
    ld e, a                                       ; $65ff: $5f
    db $fd                                        ; $6600: $fd
    rst $30                                       ; $6601: $f7

jr_026_6602:
    ld a, a                                       ; $6602: $7f
    ld e, a                                       ; $6603: $5f
    jr c, @+$41                                   ; $6604: $38 $3f

    inc e                                         ; $6606: $1c
    rla                                           ; $6607: $17
    rrca                                          ; $6608: $0f
    dec bc                                        ; $6609: $0b
    inc b                                         ; $660a: $04
    rlca                                          ; $660b: $07
    inc b                                         ; $660c: $04
    rlca                                          ; $660d: $07
    inc bc                                        ; $660e: $03
    inc bc                                        ; $660f: $03
    add b                                         ; $6610: $80
    add b                                         ; $6611: $80
    ld b, b                                       ; $6612: $40
    ret nz                                        ; $6613: $c0

    jr nz, jr_026_65f6                            ; $6614: $20 $e0

    and b                                         ; $6616: $a0

jr_026_6617:
    ldh [$90], a                                  ; $6617: $e0 $90
    ldh a, [$90]                                  ; $6619: $f0 $90
    ldh a, [$38]                                  ; $661b: $f0 $38
    add sp, $7e                                   ; $661d: $e8 $7e
    xor $f6                                       ; $661f: $ee $f6
    or [hl]                                       ; $6621: $b6
    ld l, [hl]                                    ; $6622: $6e
    cp $de                                        ; $6623: $fe $de
    ld a, [c]                                     ; $6625: $f2
    inc a                                         ; $6626: $3c
    db $fc                                        ; $6627: $fc
    ldh a, [$d0]                                  ; $6628: $f0 $d0
    ldh [$e0], a                                  ; $662a: $e0 $e0
    ret nz                                        ; $662c: $c0

    ret nz                                        ; $662d: $c0

    nop                                           ; $662e: $00
    nop                                           ; $662f: $00
    nop                                           ; $6630: $00
    nop                                           ; $6631: $00
    inc c                                         ; $6632: $0c
    inc c                                         ; $6633: $0c
    ld de, $261d                                  ; $6634: $11 $1d $26
    ccf                                           ; $6637: $3f
    inc l                                         ; $6638: $2c

jr_026_6639:
    dec sp                                        ; $6639: $3b
    inc d                                         ; $663a: $14

jr_026_663b:
    rra                                           ; $663b: $1f
    rla                                           ; $663c: $17
    inc e                                         ; $663d: $1c
    dec de                                        ; $663e: $1b
    jr jr_026_6654                                ; $663f: $18 $13

    ld [de], a                                    ; $6641: $12
    inc bc                                        ; $6642: $03
    inc bc                                        ; $6643: $03
    ld b, $07                                     ; $6644: $06 $07
    inc bc                                        ; $6646: $03
    inc bc                                        ; $6647: $03
    rlca                                          ; $6648: $07
    rlca                                          ; $6649: $07
    rlca                                          ; $664a: $07
    rlca                                          ; $664b: $07
    ld [bc], a                                    ; $664c: $02
    ld [bc], a                                    ; $664d: $02
    nop                                           ; $664e: $00
    nop                                           ; $664f: $00
    nop                                           ; $6650: $00
    nop                                           ; $6651: $00
    nop                                           ; $6652: $00
    nop                                           ; $6653: $00

jr_026_6654:
    ldh [$e0], a                                  ; $6654: $e0 $e0

jr_026_6656:
    db $10                                        ; $6656: $10
    ldh a, [$08]                                  ; $6657: $f0 $08
    ld hl, sp+$68                                 ; $6659: $f8 $68
    ld hl, sp-$10                                 ; $665b: $f8 $f0
    or b                                          ; $665d: $b0
    ldh a, [$90]                                  ; $665e: $f0 $90
    ldh a, [rNR10]                                ; $6660: $f0 $10
    ldh [$a0], a                                  ; $6662: $e0 $a0
    jr nc, jr_026_6656                            ; $6664: $30 $f0

    ldh [$e0], a                                  ; $6666: $e0 $e0
    ret nc                                        ; $6668: $d0

    ld [hl], b                                    ; $6669: $70
    ldh a, [$f0]                                  ; $666a: $f0 $f0
    ldh [$e0], a                                  ; $666c: $e0 $e0
    nop                                           ; $666e: $00
    nop                                           ; $666f: $00
    nop                                           ; $6670: $00
    nop                                           ; $6671: $00
    ld bc, $0201                                  ; $6672: $01 $01 $02
    inc bc                                        ; $6675: $03
    inc bc                                        ; $6676: $03
    inc bc                                        ; $6677: $03
    inc b                                         ; $6678: $04
    rlca                                          ; $6679: $07
    add hl, bc                                    ; $667a: $09
    rrca                                          ; $667b: $0f
    rra                                           ; $667c: $1f
    ld d, $1f                                     ; $667d: $16 $1f
    ld d, $1f                                     ; $667f: $16 $1f
    inc e                                         ; $6681: $1c
    ccf                                           ; $6682: $3f
    inc l                                         ; $6683: $2c
    inc l                                         ; $6684: $2c
    dec hl                                        ; $6685: $2b
    ld h, a                                       ; $6686: $67
    ld h, a                                       ; $6687: $67
    ld h, e                                       ; $6688: $63
    ld h, e                                       ; $6689: $63
    nop                                           ; $668a: $00
    inc bc                                        ; $668b: $03
    inc bc                                        ; $668c: $03
    inc bc                                        ; $668d: $03
    nop                                           ; $668e: $00
    nop                                           ; $668f: $00
    nop                                           ; $6690: $00
    nop                                           ; $6691: $00
    ret nz                                        ; $6692: $c0

    ret nz                                        ; $6693: $c0

    nop                                           ; $6694: $00
    ret nz                                        ; $6695: $c0

    ld b, b                                       ; $6696: $40
    ret nz                                        ; $6697: $c0

    and b                                         ; $6698: $a0
    ldh [$d0], a                                  ; $6699: $e0 $d0
    ld [hl], b                                    ; $669b: $70
    ld hl, sp+$68                                 ; $669c: $f8 $68
    ld hl, sp+$68                                 ; $669e: $f8 $68
    ldh a, [$30]                                  ; $66a0: $f0 $30
    ret nc                                        ; $66a2: $d0

    jr nc, jr_026_66e1                            ; $66a3: $30 $3c

    db $f4                                        ; $66a5: $f4
    db $ec                                        ; $66a6: $ec
    db $ec                                        ; $66a7: $ec
    ret nz                                        ; $66a8: $c0

    ret nz                                        ; $66a9: $c0

    ret nz                                        ; $66aa: $c0

    ret nz                                        ; $66ab: $c0

    nop                                           ; $66ac: $00
    nop                                           ; $66ad: $00
    nop                                           ; $66ae: $00
    nop                                           ; $66af: $00
    nop                                           ; $66b0: $00
    nop                                           ; $66b1: $00
    nop                                           ; $66b2: $00
    nop                                           ; $66b3: $00
    rlca                                          ; $66b4: $07
    rlca                                          ; $66b5: $07
    ld [$100f], sp                                ; $66b6: $08 $0f $10
    rra                                           ; $66b9: $1f
    ld d, $1f                                     ; $66ba: $16 $1f
    rrca                                          ; $66bc: $0f
    dec c                                         ; $66bd: $0d
    rrca                                          ; $66be: $0f
    add hl, bc                                    ; $66bf: $09
    rrca                                          ; $66c0: $0f
    ld [$0507], sp                                ; $66c1: $08 $07 $05
    inc bc                                        ; $66c4: $03
    ld bc, $0707                                  ; $66c5: $01 $07 $07
    rrca                                          ; $66c8: $0f
    ld c, $0b                                     ; $66c9: $0e $0b
    rrca                                          ; $66cb: $0f
    inc b                                         ; $66cc: $04
    inc b                                         ; $66cd: $04
    nop                                           ; $66ce: $00
    nop                                           ; $66cf: $00
    nop                                           ; $66d0: $00
    nop                                           ; $66d1: $00
    jr nc, jr_026_6704                            ; $66d2: $30 $30

    adc b                                         ; $66d4: $88
    cp b                                          ; $66d5: $b8
    ld h, h                                       ; $66d6: $64
    db $fc                                        ; $66d7: $fc
    inc [hl]                                      ; $66d8: $34
    call c, $fc24                                 ; $66d9: $dc $24 $fc
    add sp, $38                                   ; $66dc: $e8 $38
    ret nc                                        ; $66de: $d0

    db $10                                        ; $66df: $10
    ret nc                                        ; $66e0: $d0

jr_026_66e1:
    ld d, b                                       ; $66e1: $50
    ret nz                                        ; $66e2: $c0

    ret nz                                        ; $66e3: $c0

    jr nz, @-$1e                                  ; $66e4: $20 $e0

    ret nz                                        ; $66e6: $c0

    ret nz                                        ; $66e7: $c0

    ldh [$60], a                                  ; $66e8: $e0 $60
    and b                                         ; $66ea: $a0
    ldh [rLCDC], a                                ; $66eb: $e0 $40
    ld b, b                                       ; $66ed: $40
    nop                                           ; $66ee: $00
    nop                                           ; $66ef: $00
    nop                                           ; $66f0: $00
    nop                                           ; $66f1: $00
    inc bc                                        ; $66f2: $03
    inc bc                                        ; $66f3: $03
    nop                                           ; $66f4: $00
    inc bc                                        ; $66f5: $03
    rlca                                          ; $66f6: $07
    rlca                                          ; $66f7: $07
    inc b                                         ; $66f8: $04
    rlca                                          ; $66f9: $07
    ld [$1c0f], sp                                ; $66fa: $08 $0f $1c
    rla                                           ; $66fd: $17
    ld e, $17                                     ; $66fe: $1e $17
    ld a, $3f                                     ; $6700: $3e $3f
    ccf                                           ; $6702: $3f
    cpl                                           ; $6703: $2f

jr_026_6704:
    inc c                                         ; $6704: $0c
    dec bc                                        ; $6705: $0b
    rlca                                          ; $6706: $07
    rlca                                          ; $6707: $07
    nop                                           ; $6708: $00
    inc bc                                        ; $6709: $03
    nop                                           ; $670a: $00
    inc bc                                        ; $670b: $03
    inc bc                                        ; $670c: $03
    inc bc                                        ; $670d: $03
    nop                                           ; $670e: $00
    nop                                           ; $670f: $00
    nop                                           ; $6710: $00
    nop                                           ; $6711: $00
    ret nz                                        ; $6712: $c0

    ret nz                                        ; $6713: $c0

    nop                                           ; $6714: $00
    ret nz                                        ; $6715: $c0

    and b                                         ; $6716: $a0
    ldh [$60], a                                  ; $6717: $e0 $60
    ldh [$50], a                                  ; $6719: $e0 $50
    ldh a, [$b8]                                  ; $671b: $f0 $b8
    add sp, -$42                                  ; $671d: $e8 $be
    xor $f6                                       ; $671f: $ee $f6
    or $5c                                        ; $6721: $f6 $5c
    db $fc                                        ; $6723: $fc
    jr c, @-$06                                   ; $6724: $38 $f8

    ldh [$e0], a                                  ; $6726: $e0 $e0
    ret nz                                        ; $6728: $c0

    ret nz                                        ; $6729: $c0

    ret nz                                        ; $672a: $c0

    ret nz                                        ; $672b: $c0

    nop                                           ; $672c: $00
    nop                                           ; $672d: $00
    nop                                           ; $672e: $00
    nop                                           ; $672f: $00
    nop                                           ; $6730: $00
    nop                                           ; $6731: $00
    nop                                           ; $6732: $00
    nop                                           ; $6733: $00
    nop                                           ; $6734: $00
    nop                                           ; $6735: $00
    nop                                           ; $6736: $00
    nop                                           ; $6737: $00
    nop                                           ; $6738: $00
    nop                                           ; $6739: $00
    nop                                           ; $673a: $00
    nop                                           ; $673b: $00
    nop                                           ; $673c: $00
    nop                                           ; $673d: $00
    nop                                           ; $673e: $00
    nop                                           ; $673f: $00
    nop                                           ; $6740: $00
    nop                                           ; $6741: $00
    nop                                           ; $6742: $00
    nop                                           ; $6743: $00
    nop                                           ; $6744: $00
    nop                                           ; $6745: $00
    nop                                           ; $6746: $00
    nop                                           ; $6747: $00
    nop                                           ; $6748: $00
    nop                                           ; $6749: $00
    nop                                           ; $674a: $00
    nop                                           ; $674b: $00
    nop                                           ; $674c: $00
    nop                                           ; $674d: $00
    nop                                           ; $674e: $00
    nop                                           ; $674f: $00
    nop                                           ; $6750: $00
    nop                                           ; $6751: $00
    nop                                           ; $6752: $00
    nop                                           ; $6753: $00
    nop                                           ; $6754: $00
    nop                                           ; $6755: $00
    nop                                           ; $6756: $00
    nop                                           ; $6757: $00
    nop                                           ; $6758: $00
    nop                                           ; $6759: $00
    nop                                           ; $675a: $00
    nop                                           ; $675b: $00
    nop                                           ; $675c: $00
    nop                                           ; $675d: $00
    nop                                           ; $675e: $00
    nop                                           ; $675f: $00
    nop                                           ; $6760: $00
    nop                                           ; $6761: $00
    nop                                           ; $6762: $00
    nop                                           ; $6763: $00
    nop                                           ; $6764: $00
    nop                                           ; $6765: $00
    nop                                           ; $6766: $00
    nop                                           ; $6767: $00
    nop                                           ; $6768: $00
    nop                                           ; $6769: $00
    nop                                           ; $676a: $00
    nop                                           ; $676b: $00
    nop                                           ; $676c: $00
    nop                                           ; $676d: $00
    nop                                           ; $676e: $00
    nop                                           ; $676f: $00
    nop                                           ; $6770: $00
    nop                                           ; $6771: $00
    nop                                           ; $6772: $00
    nop                                           ; $6773: $00
    nop                                           ; $6774: $00
    nop                                           ; $6775: $00
    nop                                           ; $6776: $00
    nop                                           ; $6777: $00
    nop                                           ; $6778: $00
    nop                                           ; $6779: $00
    nop                                           ; $677a: $00
    nop                                           ; $677b: $00
    nop                                           ; $677c: $00
    nop                                           ; $677d: $00
    nop                                           ; $677e: $00
    nop                                           ; $677f: $00
    nop                                           ; $6780: $00
    nop                                           ; $6781: $00
    nop                                           ; $6782: $00
    nop                                           ; $6783: $00
    nop                                           ; $6784: $00
    nop                                           ; $6785: $00
    nop                                           ; $6786: $00
    nop                                           ; $6787: $00
    nop                                           ; $6788: $00
    nop                                           ; $6789: $00
    nop                                           ; $678a: $00
    nop                                           ; $678b: $00
    nop                                           ; $678c: $00
    nop                                           ; $678d: $00
    nop                                           ; $678e: $00
    nop                                           ; $678f: $00
    nop                                           ; $6790: $00
    nop                                           ; $6791: $00
    nop                                           ; $6792: $00
    nop                                           ; $6793: $00
    nop                                           ; $6794: $00
    nop                                           ; $6795: $00
    nop                                           ; $6796: $00
    nop                                           ; $6797: $00
    nop                                           ; $6798: $00
    nop                                           ; $6799: $00
    nop                                           ; $679a: $00
    nop                                           ; $679b: $00
    nop                                           ; $679c: $00
    nop                                           ; $679d: $00
    nop                                           ; $679e: $00
    nop                                           ; $679f: $00
    nop                                           ; $67a0: $00
    nop                                           ; $67a1: $00
    nop                                           ; $67a2: $00
    nop                                           ; $67a3: $00
    nop                                           ; $67a4: $00
    nop                                           ; $67a5: $00
    nop                                           ; $67a6: $00
    nop                                           ; $67a7: $00
    nop                                           ; $67a8: $00
    nop                                           ; $67a9: $00
    nop                                           ; $67aa: $00
    nop                                           ; $67ab: $00
    nop                                           ; $67ac: $00
    nop                                           ; $67ad: $00
    nop                                           ; $67ae: $00
    nop                                           ; $67af: $00
    nop                                           ; $67b0: $00
    nop                                           ; $67b1: $00
    nop                                           ; $67b2: $00
    nop                                           ; $67b3: $00
    nop                                           ; $67b4: $00
    nop                                           ; $67b5: $00
    nop                                           ; $67b6: $00
    nop                                           ; $67b7: $00
    nop                                           ; $67b8: $00
    nop                                           ; $67b9: $00
    nop                                           ; $67ba: $00
    nop                                           ; $67bb: $00
    nop                                           ; $67bc: $00
    nop                                           ; $67bd: $00
    nop                                           ; $67be: $00
    nop                                           ; $67bf: $00
    nop                                           ; $67c0: $00
    nop                                           ; $67c1: $00
    nop                                           ; $67c2: $00
    nop                                           ; $67c3: $00
    nop                                           ; $67c4: $00
    nop                                           ; $67c5: $00
    nop                                           ; $67c6: $00
    nop                                           ; $67c7: $00
    nop                                           ; $67c8: $00
    nop                                           ; $67c9: $00
    nop                                           ; $67ca: $00
    nop                                           ; $67cb: $00
    nop                                           ; $67cc: $00
    nop                                           ; $67cd: $00
    nop                                           ; $67ce: $00
    nop                                           ; $67cf: $00
    nop                                           ; $67d0: $00
    nop                                           ; $67d1: $00
    nop                                           ; $67d2: $00
    nop                                           ; $67d3: $00
    nop                                           ; $67d4: $00
    nop                                           ; $67d5: $00
    nop                                           ; $67d6: $00
    nop                                           ; $67d7: $00
    nop                                           ; $67d8: $00
    nop                                           ; $67d9: $00
    nop                                           ; $67da: $00
    nop                                           ; $67db: $00
    nop                                           ; $67dc: $00
    nop                                           ; $67dd: $00
    nop                                           ; $67de: $00
    nop                                           ; $67df: $00
    nop                                           ; $67e0: $00
    nop                                           ; $67e1: $00
    nop                                           ; $67e2: $00
    nop                                           ; $67e3: $00
    nop                                           ; $67e4: $00
    nop                                           ; $67e5: $00
    nop                                           ; $67e6: $00
    nop                                           ; $67e7: $00
    nop                                           ; $67e8: $00
    nop                                           ; $67e9: $00
    nop                                           ; $67ea: $00
    nop                                           ; $67eb: $00
    nop                                           ; $67ec: $00
    nop                                           ; $67ed: $00
    nop                                           ; $67ee: $00
    nop                                           ; $67ef: $00
    nop                                           ; $67f0: $00
    nop                                           ; $67f1: $00
    nop                                           ; $67f2: $00
    nop                                           ; $67f3: $00
    inc bc                                        ; $67f4: $03
    inc bc                                        ; $67f5: $03
    inc b                                         ; $67f6: $04
    rlca                                          ; $67f7: $07
    dec bc                                        ; $67f8: $0b
    rrca                                          ; $67f9: $0f

jr_026_67fa:
    inc c                                         ; $67fa: $0c
    rrca                                          ; $67fb: $0f
    inc c                                         ; $67fc: $0c
    rrca                                          ; $67fd: $0f
    dec e                                         ; $67fe: $1d
    rla                                           ; $67ff: $17
    ccf                                           ; $6800: $3f
    dec sp                                        ; $6801: $3b
    ld a, $2f                                     ; $6802: $3e $2f
    inc e                                         ; $6804: $1c
    rra                                           ; $6805: $1f
    rrca                                          ; $6806: $0f
    dec bc                                        ; $6807: $0b
    dec b                                         ; $6808: $05
    rlca                                          ; $6809: $07
    dec b                                         ; $680a: $05
    rlca                                          ; $680b: $07
    ld [bc], a                                    ; $680c: $02
    ld [bc], a                                    ; $680d: $02
    nop                                           ; $680e: $00
    nop                                           ; $680f: $00
    nop                                           ; $6810: $00
    nop                                           ; $6811: $00
    nop                                           ; $6812: $00
    nop                                           ; $6813: $00
    add b                                         ; $6814: $80
    add b                                         ; $6815: $80
    ld b, b                                       ; $6816: $40
    ret nz                                        ; $6817: $c0

    jr nz, jr_026_67fa                            ; $6818: $20 $e0

    and b                                         ; $681a: $a0
    ldh [$a0], a                                  ; $681b: $e0 $a0
    ldh [rSVBK], a                                ; $681d: $e0 $70
    ret nc                                        ; $681f: $d0

    ld hl, sp-$48                                 ; $6820: $f8 $b8
    ld hl, sp-$08                                 ; $6822: $f8 $f8
    ld a, b                                       ; $6824: $78
    ret z                                         ; $6825: $c8

    ldh a, [$b0]                                  ; $6826: $f0 $b0
    ret nz                                        ; $6828: $c0

    ret nz                                        ; $6829: $c0

    add b                                         ; $682a: $80
    add b                                         ; $682b: $80
    nop                                           ; $682c: $00
    nop                                           ; $682d: $00
    nop                                           ; $682e: $00
    nop                                           ; $682f: $00
    nop                                           ; $6830: $00
    nop                                           ; $6831: $00
    nop                                           ; $6832: $00
    nop                                           ; $6833: $00
    nop                                           ; $6834: $00
    nop                                           ; $6835: $00
    nop                                           ; $6836: $00
    nop                                           ; $6837: $00
    nop                                           ; $6838: $00
    nop                                           ; $6839: $00
    nop                                           ; $683a: $00
    nop                                           ; $683b: $00
    nop                                           ; $683c: $00
    nop                                           ; $683d: $00
    nop                                           ; $683e: $00
    nop                                           ; $683f: $00
    nop                                           ; $6840: $00
    nop                                           ; $6841: $00
    nop                                           ; $6842: $00
    nop                                           ; $6843: $00
    nop                                           ; $6844: $00
    nop                                           ; $6845: $00
    nop                                           ; $6846: $00
    nop                                           ; $6847: $00
    nop                                           ; $6848: $00
    nop                                           ; $6849: $00
    nop                                           ; $684a: $00
    nop                                           ; $684b: $00
    nop                                           ; $684c: $00
    nop                                           ; $684d: $00
    nop                                           ; $684e: $00
    nop                                           ; $684f: $00
    nop                                           ; $6850: $00
    nop                                           ; $6851: $00
    nop                                           ; $6852: $00
    nop                                           ; $6853: $00
    nop                                           ; $6854: $00
    nop                                           ; $6855: $00
    nop                                           ; $6856: $00
    nop                                           ; $6857: $00
    nop                                           ; $6858: $00
    nop                                           ; $6859: $00
    nop                                           ; $685a: $00
    nop                                           ; $685b: $00
    nop                                           ; $685c: $00
    nop                                           ; $685d: $00
    nop                                           ; $685e: $00
    nop                                           ; $685f: $00
    nop                                           ; $6860: $00
    nop                                           ; $6861: $00
    nop                                           ; $6862: $00
    nop                                           ; $6863: $00
    nop                                           ; $6864: $00
    nop                                           ; $6865: $00
    nop                                           ; $6866: $00
    nop                                           ; $6867: $00
    nop                                           ; $6868: $00
    nop                                           ; $6869: $00
    nop                                           ; $686a: $00
    nop                                           ; $686b: $00
    nop                                           ; $686c: $00
    nop                                           ; $686d: $00
    nop                                           ; $686e: $00
    nop                                           ; $686f: $00
    nop                                           ; $6870: $00
    nop                                           ; $6871: $00
    nop                                           ; $6872: $00
    nop                                           ; $6873: $00
    nop                                           ; $6874: $00
    nop                                           ; $6875: $00
    nop                                           ; $6876: $00
    nop                                           ; $6877: $00
    nop                                           ; $6878: $00
    nop                                           ; $6879: $00
    nop                                           ; $687a: $00
    nop                                           ; $687b: $00
    nop                                           ; $687c: $00
    nop                                           ; $687d: $00
    nop                                           ; $687e: $00
    nop                                           ; $687f: $00
    nop                                           ; $6880: $00
    nop                                           ; $6881: $00
    nop                                           ; $6882: $00
    nop                                           ; $6883: $00
    nop                                           ; $6884: $00
    nop                                           ; $6885: $00
    nop                                           ; $6886: $00
    nop                                           ; $6887: $00
    nop                                           ; $6888: $00
    nop                                           ; $6889: $00
    nop                                           ; $688a: $00
    nop                                           ; $688b: $00
    nop                                           ; $688c: $00
    nop                                           ; $688d: $00
    nop                                           ; $688e: $00
    nop                                           ; $688f: $00
    nop                                           ; $6890: $00
    nop                                           ; $6891: $00
    nop                                           ; $6892: $00
    nop                                           ; $6893: $00
    nop                                           ; $6894: $00
    nop                                           ; $6895: $00
    nop                                           ; $6896: $00
    nop                                           ; $6897: $00
    nop                                           ; $6898: $00
    nop                                           ; $6899: $00
    nop                                           ; $689a: $00
    nop                                           ; $689b: $00
    nop                                           ; $689c: $00
    nop                                           ; $689d: $00
    nop                                           ; $689e: $00
    nop                                           ; $689f: $00
    nop                                           ; $68a0: $00
    nop                                           ; $68a1: $00
    nop                                           ; $68a2: $00
    nop                                           ; $68a3: $00
    nop                                           ; $68a4: $00
    nop                                           ; $68a5: $00
    nop                                           ; $68a6: $00
    nop                                           ; $68a7: $00
    nop                                           ; $68a8: $00
    nop                                           ; $68a9: $00
    nop                                           ; $68aa: $00
    nop                                           ; $68ab: $00
    nop                                           ; $68ac: $00
    nop                                           ; $68ad: $00
    nop                                           ; $68ae: $00
    nop                                           ; $68af: $00
    nop                                           ; $68b0: $00
    nop                                           ; $68b1: $00
    nop                                           ; $68b2: $00
    nop                                           ; $68b3: $00
    nop                                           ; $68b4: $00
    nop                                           ; $68b5: $00
    nop                                           ; $68b6: $00
    nop                                           ; $68b7: $00
    nop                                           ; $68b8: $00
    nop                                           ; $68b9: $00
    nop                                           ; $68ba: $00
    nop                                           ; $68bb: $00
    nop                                           ; $68bc: $00
    nop                                           ; $68bd: $00
    nop                                           ; $68be: $00
    nop                                           ; $68bf: $00
    nop                                           ; $68c0: $00
    nop                                           ; $68c1: $00
    nop                                           ; $68c2: $00
    nop                                           ; $68c3: $00
    nop                                           ; $68c4: $00
    nop                                           ; $68c5: $00
    nop                                           ; $68c6: $00
    nop                                           ; $68c7: $00
    nop                                           ; $68c8: $00
    nop                                           ; $68c9: $00
    nop                                           ; $68ca: $00
    nop                                           ; $68cb: $00
    nop                                           ; $68cc: $00
    nop                                           ; $68cd: $00
    nop                                           ; $68ce: $00
    nop                                           ; $68cf: $00
    nop                                           ; $68d0: $00
    nop                                           ; $68d1: $00
    nop                                           ; $68d2: $00
    nop                                           ; $68d3: $00
    nop                                           ; $68d4: $00
    nop                                           ; $68d5: $00
    nop                                           ; $68d6: $00
    nop                                           ; $68d7: $00
    nop                                           ; $68d8: $00
    nop                                           ; $68d9: $00
    nop                                           ; $68da: $00
    nop                                           ; $68db: $00
    nop                                           ; $68dc: $00
    nop                                           ; $68dd: $00
    nop                                           ; $68de: $00
    nop                                           ; $68df: $00
    nop                                           ; $68e0: $00
    nop                                           ; $68e1: $00
    nop                                           ; $68e2: $00
    nop                                           ; $68e3: $00
    nop                                           ; $68e4: $00
    nop                                           ; $68e5: $00
    nop                                           ; $68e6: $00
    nop                                           ; $68e7: $00
    nop                                           ; $68e8: $00
    nop                                           ; $68e9: $00
    nop                                           ; $68ea: $00
    nop                                           ; $68eb: $00
    nop                                           ; $68ec: $00
    nop                                           ; $68ed: $00
    nop                                           ; $68ee: $00
    nop                                           ; $68ef: $00
    nop                                           ; $68f0: $00
    nop                                           ; $68f1: $00
    nop                                           ; $68f2: $00
    nop                                           ; $68f3: $00
    inc bc                                        ; $68f4: $03
    inc bc                                        ; $68f5: $03
    inc b                                         ; $68f6: $04
    rlca                                          ; $68f7: $07
    add hl, bc                                    ; $68f8: $09
    rrca                                          ; $68f9: $0f
    ld a, [bc]                                    ; $68fa: $0a
    rrca                                          ; $68fb: $0f
    ld a, [bc]                                    ; $68fc: $0a
    rrca                                          ; $68fd: $0f
    dec e                                         ; $68fe: $1d
    rla                                           ; $68ff: $17
    rrca                                          ; $6900: $0f
    dec bc                                        ; $6901: $0b
    ld e, $1f                                     ; $6902: $1e $1f
    inc a                                         ; $6904: $3c
    daa                                           ; $6905: $27
    rra                                           ; $6906: $1f
    dec de                                        ; $6907: $1b
    rlca                                          ; $6908: $07
    rlca                                          ; $6909: $07
    inc bc                                        ; $690a: $03
    inc bc                                        ; $690b: $03
    nop                                           ; $690c: $00
    nop                                           ; $690d: $00
    nop                                           ; $690e: $00
    nop                                           ; $690f: $00
    nop                                           ; $6910: $00
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00
    nop                                           ; $6913: $00
    add b                                         ; $6914: $80
    add b                                         ; $6915: $80
    ld b, b                                       ; $6916: $40
    ret nz                                        ; $6917: $c0

    and b                                         ; $6918: $a0
    ldh [$60], a                                  ; $6919: $e0 $60
    ldh [$60], a                                  ; $691b: $e0 $60
    ldh [$78], a                                  ; $691d: $e0 $78
    ret c                                         ; $691f: $d8

    ld hl, sp-$48                                 ; $6920: $f8 $b8
    ld hl, sp-$18                                 ; $6922: $f8 $e8
    ld [hl], b                                    ; $6924: $70
    ldh a, [$e0]                                  ; $6925: $f0 $e0
    and b                                         ; $6927: $a0
    ld b, b                                       ; $6928: $40
    ret nz                                        ; $6929: $c0

    ld b, b                                       ; $692a: $40
    ret nz                                        ; $692b: $c0

    add b                                         ; $692c: $80
    add b                                         ; $692d: $80
    nop                                           ; $692e: $00
    nop                                           ; $692f: $00
    ld b, [hl]                                    ; $6930: $46
    ld l, c                                       ; $6931: $69
    ld c, c                                       ; $6932: $49
    ld l, c                                       ; $6933: $69
    ld c, a                                       ; $6934: $4f
    ld l, c                                       ; $6935: $69
    ld d, d                                       ; $6936: $52
    ld l, c                                       ; $6937: $69
    ld e, l                                       ; $6938: $5d
    ld l, c                                       ; $6939: $69
    ld h, h                                       ; $693a: $64
    ld l, c                                       ; $693b: $69
    ld l, h                                       ; $693c: $6c
    ld l, c                                       ; $693d: $69
    add b                                         ; $693e: $80
    ld l, c                                       ; $693f: $69
    adc h                                         ; $6940: $8c
    ld l, c                                       ; $6941: $69
    ld b, [hl]                                    ; $6942: $46
    ld l, c                                       ; $6943: $69
    sub l                                         ; $6944: $95
    ld l, c                                       ; $6945: $69
    nop                                           ; $6946: $00
    rst $38                                       ; $6947: $ff
    db $fd                                        ; $6948: $fd
    nop                                           ; $6949: $00
    ld e, $01                                     ; $694a: $1e $01
    ld e, $ff                                     ; $694c: $1e $ff
    nop                                           ; $694e: $00
    ld [bc], a                                    ; $694f: $02
    rst $38                                       ; $6950: $ff
    db $fd                                        ; $6951: $fd
    ld [bc], a                                    ; $6952: $02
    inc c                                         ; $6953: $0c
    inc bc                                        ; $6954: $03
    inc c                                         ; $6955: $0c
    inc b                                         ; $6956: $04
    jr jr_026_695b                                ; $6957: $18 $02

    inc c                                         ; $6959: $0c
    dec b                                         ; $695a: $05

jr_026_695b:
    inc c                                         ; $695b: $0c
    db $fd                                        ; $695c: $fd
    ld [bc], a                                    ; $695d: $02
    jr @+$05                                      ; $695e: $18 $03

    jr jr_026_6964                                ; $6960: $18 $02

    jr @-$01                                      ; $6962: $18 $fd

jr_026_6964:
    nop                                           ; $6964: $00
    ld a, [bc]                                    ; $6965: $0a
    ld b, $1e                                     ; $6966: $06 $1e
    nop                                           ; $6968: $00
    ld a, [bc]                                    ; $6969: $0a
    cp $01                                        ; $696a: $fe $01
    nop                                           ; $696c: $00
    ld a, [bc]                                    ; $696d: $0a
    rlca                                          ; $696e: $07
    ld a, [bc]                                    ; $696f: $0a
    nop                                           ; $6970: $00
    inc bc                                        ; $6971: $03
    ld [$000a], sp                                ; $6972: $08 $0a $00
    inc bc                                        ; $6975: $03
    rlca                                          ; $6976: $07
    ld a, [bc]                                    ; $6977: $0a
    nop                                           ; $6978: $00
    inc bc                                        ; $6979: $03
    ld [$000a], sp                                ; $697a: $08 $0a $00
    ld a, [bc]                                    ; $697d: $0a
    cp $01                                        ; $697e: $fe $01
    nop                                           ; $6980: $00
    ld a, [bc]                                    ; $6981: $0a
    add hl, bc                                    ; $6982: $09
    ld [$0800], sp                                ; $6983: $08 $00 $08
    add hl, bc                                    ; $6986: $09
    ld [$0a00], sp                                ; $6987: $08 $00 $0a
    cp $01                                        ; $698a: $fe $01
    ld [bc], a                                    ; $698c: $02
    ld [de], a                                    ; $698d: $12
    inc bc                                        ; $698e: $03
    ld [de], a                                    ; $698f: $12
    ld [bc], a                                    ; $6990: $02
    ld e, $05                                     ; $6991: $1e $05
    ld [de], a                                    ; $6993: $12
    db $fd                                        ; $6994: $fd
    ld a, [bc]                                    ; $6995: $0a
    ld e, $0b                                     ; $6996: $1e $0b
    ld e, $ff                                     ; $6998: $1e $ff
    nop                                           ; $699a: $00
    rlca                                          ; $699b: $07
    inc b                                         ; $699c: $04
    and e                                         ; $699d: $a3
    ld l, c                                       ; $699e: $69
    or b                                          ; $699f: $b0
    ld l, l                                       ; $69a0: $6d
    and e                                         ; $69a1: $a3
    ld l, c                                       ; $69a2: $69
    or b                                          ; $69a3: $b0
    ld l, c                                       ; $69a4: $69
    or b                                          ; $69a5: $b0
    ld l, d                                       ; $69a6: $6a
    or b                                          ; $69a7: $b0
    ld l, e                                       ; $69a8: $6b
    or b                                          ; $69a9: $b0
    ld l, h                                       ; $69aa: $6c
    or b                                          ; $69ab: $b0
    ld l, h                                       ; $69ac: $6c
    or b                                          ; $69ad: $b0
    ld l, h                                       ; $69ae: $6c
    nop                                           ; $69af: $00
    nop                                           ; $69b0: $00
    nop                                           ; $69b1: $00
    nop                                           ; $69b2: $00
    nop                                           ; $69b3: $00
    nop                                           ; $69b4: $00
    nop                                           ; $69b5: $00
    nop                                           ; $69b6: $00
    nop                                           ; $69b7: $00
    nop                                           ; $69b8: $00
    nop                                           ; $69b9: $00
    nop                                           ; $69ba: $00
    nop                                           ; $69bb: $00
    rlca                                          ; $69bc: $07
    rlca                                          ; $69bd: $07
    rra                                           ; $69be: $1f
    rra                                           ; $69bf: $1f
    rst $38                                       ; $69c0: $ff
    rst $38                                       ; $69c1: $ff
    rst $38                                       ; $69c2: $ff
    rst $38                                       ; $69c3: $ff
    dec b                                         ; $69c4: $05
    dec b                                         ; $69c5: $05
    ld [$3008], sp                                ; $69c6: $08 $08 $30
    jr nc, jr_026_69d3                            ; $69c9: $30 $08

    ld [$0000], sp                                ; $69cb: $08 $00 $00
    nop                                           ; $69ce: $00
    nop                                           ; $69cf: $00
    nop                                           ; $69d0: $00
    nop                                           ; $69d1: $00
    nop                                           ; $69d2: $00

jr_026_69d3:
    nop                                           ; $69d3: $00
    nop                                           ; $69d4: $00
    nop                                           ; $69d5: $00
    inc c                                         ; $69d6: $0c
    inc c                                         ; $69d7: $0c
    ld c, $0a                                     ; $69d8: $0e $0a
    ld a, [de]                                    ; $69da: $1a
    ld e, $ff                                     ; $69db: $1e $ff
    db $fc                                        ; $69dd: $fc
    rst $38                                       ; $69de: $ff
    rst $38                                       ; $69df: $ff
    call c, $d0fc                                 ; $69e0: $dc $fc $d0
    ldh a, [$f8]                                  ; $69e3: $f0 $f8
    ld hl, sp-$08                                 ; $69e5: $f8 $f8
    ld hl, sp-$08                                 ; $69e7: $f8 $f8
    ld hl, sp+$70                                 ; $69e9: $f8 $70
    ld [hl], b                                    ; $69eb: $70
    ld h, b                                       ; $69ec: $60
    ld h, b                                       ; $69ed: $60
    ld h, b                                       ; $69ee: $60
    ld h, b                                       ; $69ef: $60
    nop                                           ; $69f0: $00
    nop                                           ; $69f1: $00
    nop                                           ; $69f2: $00
    nop                                           ; $69f3: $00
    nop                                           ; $69f4: $00
    nop                                           ; $69f5: $00
    inc bc                                        ; $69f6: $03
    inc bc                                        ; $69f7: $03
    rlca                                          ; $69f8: $07
    dec b                                         ; $69f9: $05
    dec b                                         ; $69fa: $05
    rlca                                          ; $69fb: $07
    dec bc                                        ; $69fc: $0b
    ld c, $1b                                     ; $69fd: $0e $1b
    rra                                           ; $69ff: $1f
    inc l                                         ; $6a00: $2c
    ccf                                           ; $6a01: $3f
    ld e, a                                       ; $6a02: $5f
    ld a, a                                       ; $6a03: $7f
    ld h, a                                       ; $6a04: $67
    ld h, a                                       ; $6a05: $67
    ld [c], a                                     ; $6a06: $e2
    db $e3                                        ; $6a07: $e3
    push bc                                       ; $6a08: $c5
    rst $00                                       ; $6a09: $c7
    add $c6                                       ; $6a0a: $c6 $c6
    add b                                         ; $6a0c: $80
    add b                                         ; $6a0d: $80
    add b                                         ; $6a0e: $80
    add b                                         ; $6a0f: $80
    nop                                           ; $6a10: $00
    nop                                           ; $6a11: $00
    nop                                           ; $6a12: $00
    nop                                           ; $6a13: $00
    nop                                           ; $6a14: $00
    nop                                           ; $6a15: $00
    ret nz                                        ; $6a16: $c0

    ret nz                                        ; $6a17: $c0

    ldh [$a0], a                                  ; $6a18: $e0 $a0
    and b                                         ; $6a1a: $a0
    ldh [$d0], a                                  ; $6a1b: $e0 $d0
    ld [hl], b                                    ; $6a1d: $70
    ret c                                         ; $6a1e: $d8

    ld hl, sp+$34                                 ; $6a1f: $f8 $34
    db $fc                                        ; $6a21: $fc
    ld a, [$e6fe]                                 ; $6a22: $fa $fe $e6
    and $c7                                       ; $6a25: $e6 $c7
    rst $00                                       ; $6a27: $c7
    ld h, e                                       ; $6a28: $63
    db $e3                                        ; $6a29: $e3
    db $e3                                        ; $6a2a: $e3
    db $e3                                        ; $6a2b: $e3
    ld bc, $0101                                  ; $6a2c: $01 $01 $01
    ld bc, $0000                                  ; $6a2f: $01 $00 $00
    nop                                           ; $6a32: $00
    nop                                           ; $6a33: $00
    nop                                           ; $6a34: $00
    nop                                           ; $6a35: $00
    jr nc, jr_026_6a68                            ; $6a36: $30 $30

    ld [hl], b                                    ; $6a38: $70
    ld d, b                                       ; $6a39: $50
    ld e, b                                       ; $6a3a: $58
    ld a, b                                       ; $6a3b: $78
    rst $38                                       ; $6a3c: $ff
    ccf                                           ; $6a3d: $3f
    rst $38                                       ; $6a3e: $ff
    rst $38                                       ; $6a3f: $ff
    dec sp                                        ; $6a40: $3b
    ccf                                           ; $6a41: $3f
    dec bc                                        ; $6a42: $0b
    rrca                                          ; $6a43: $0f
    rra                                           ; $6a44: $1f
    rra                                           ; $6a45: $1f
    rra                                           ; $6a46: $1f
    rra                                           ; $6a47: $1f
    rra                                           ; $6a48: $1f
    rra                                           ; $6a49: $1f
    ld c, $0e                                     ; $6a4a: $0e $0e
    ld b, $06                                     ; $6a4c: $06 $06
    ld b, $06                                     ; $6a4e: $06 $06
    nop                                           ; $6a50: $00
    nop                                           ; $6a51: $00
    nop                                           ; $6a52: $00
    nop                                           ; $6a53: $00
    nop                                           ; $6a54: $00
    nop                                           ; $6a55: $00
    nop                                           ; $6a56: $00
    nop                                           ; $6a57: $00
    nop                                           ; $6a58: $00
    nop                                           ; $6a59: $00
    nop                                           ; $6a5a: $00
    nop                                           ; $6a5b: $00
    ldh [$e0], a                                  ; $6a5c: $e0 $e0
    ld hl, sp-$08                                 ; $6a5e: $f8 $f8
    rst $38                                       ; $6a60: $ff
    rst $38                                       ; $6a61: $ff
    rst $38                                       ; $6a62: $ff
    rst $38                                       ; $6a63: $ff
    and b                                         ; $6a64: $a0
    and b                                         ; $6a65: $a0
    db $10                                        ; $6a66: $10
    db $10                                        ; $6a67: $10

jr_026_6a68:
    inc c                                         ; $6a68: $0c
    inc c                                         ; $6a69: $0c
    db $10                                        ; $6a6a: $10
    stop                                          ; $6a6b: $10 $00
    nop                                           ; $6a6d: $00
    nop                                           ; $6a6e: $00
    nop                                           ; $6a6f: $00
    nop                                           ; $6a70: $00
    nop                                           ; $6a71: $00
    nop                                           ; $6a72: $00
    nop                                           ; $6a73: $00
    nop                                           ; $6a74: $00
    nop                                           ; $6a75: $00
    inc bc                                        ; $6a76: $03
    inc bc                                        ; $6a77: $03
    rlca                                          ; $6a78: $07
    rlca                                          ; $6a79: $07
    rlca                                          ; $6a7a: $07
    rlca                                          ; $6a7b: $07
    rrca                                          ; $6a7c: $0f
    rrca                                          ; $6a7d: $0f
    inc de                                        ; $6a7e: $13
    rra                                           ; $6a7f: $1f
    inc l                                         ; $6a80: $2c
    ccf                                           ; $6a81: $3f
    ld a, a                                       ; $6a82: $7f
    ld a, a                                       ; $6a83: $7f
    ld h, a                                       ; $6a84: $67
    ld h, a                                       ; $6a85: $67
    ld [c], a                                     ; $6a86: $e2
    db $e3                                        ; $6a87: $e3
    push bc                                       ; $6a88: $c5
    rst $00                                       ; $6a89: $c7
    add $c6                                       ; $6a8a: $c6 $c6
    add b                                         ; $6a8c: $80
    add b                                         ; $6a8d: $80
    add b                                         ; $6a8e: $80
    add b                                         ; $6a8f: $80
    nop                                           ; $6a90: $00
    nop                                           ; $6a91: $00
    nop                                           ; $6a92: $00
    nop                                           ; $6a93: $00
    nop                                           ; $6a94: $00
    nop                                           ; $6a95: $00
    ret nz                                        ; $6a96: $c0

    ret nz                                        ; $6a97: $c0

    ldh [$e0], a                                  ; $6a98: $e0 $e0
    ldh [$e0], a                                  ; $6a9a: $e0 $e0
    ldh a, [$f0]                                  ; $6a9c: $f0 $f0
    ret z                                         ; $6a9e: $c8

    ld hl, sp+$34                                 ; $6a9f: $f8 $34
    db $fc                                        ; $6aa1: $fc
    cp $fe                                        ; $6aa2: $fe $fe
    and $e6                                       ; $6aa4: $e6 $e6
    rst $00                                       ; $6aa6: $c7
    rst $00                                       ; $6aa7: $c7
    ld h, e                                       ; $6aa8: $63
    db $e3                                        ; $6aa9: $e3
    db $e3                                        ; $6aaa: $e3
    db $e3                                        ; $6aab: $e3
    ld bc, $0101                                  ; $6aac: $01 $01 $01
    ld bc, $0606                                  ; $6aaf: $01 $06 $06
    rlca                                          ; $6ab2: $07
    rlca                                          ; $6ab3: $07
    inc bc                                        ; $6ab4: $03
    inc bc                                        ; $6ab5: $03
    inc bc                                        ; $6ab6: $03
    inc bc                                        ; $6ab7: $03
    ld bc, $0101                                  ; $6ab8: $01 $01 $01
    ld bc, $0000                                  ; $6abb: $01 $00 $00
    rlca                                          ; $6abe: $07
    rlca                                          ; $6abf: $07
    rra                                           ; $6ac0: $1f
    rra                                           ; $6ac1: $1f
    rst $38                                       ; $6ac2: $ff
    rst $38                                       ; $6ac3: $ff
    rst $38                                       ; $6ac4: $ff
    rst $38                                       ; $6ac5: $ff
    inc b                                         ; $6ac6: $04
    inc b                                         ; $6ac7: $04
    ld [$3008], sp                                ; $6ac8: $08 $08 $30
    jr nc, jr_026_6ad5                            ; $6acb: $30 $08

    ld [$0000], sp                                ; $6acd: $08 $00 $00
    nop                                           ; $6ad0: $00
    nop                                           ; $6ad1: $00
    add b                                         ; $6ad2: $80
    add b                                         ; $6ad3: $80
    ret nz                                        ; $6ad4: $c0

jr_026_6ad5:
    ret nz                                        ; $6ad5: $c0

    ldh [$e0], a                                  ; $6ad6: $e0 $e0
    db $ec                                        ; $6ad8: $ec
    db $ec                                        ; $6ad9: $ec
    xor [hl]                                      ; $6ada: $ae
    ld [$feda], a                                 ; $6adb: $ea $da $fe
    rst $38                                       ; $6ade: $ff
    db $fc                                        ; $6adf: $fc
    rst $38                                       ; $6ae0: $ff
    rst $38                                       ; $6ae1: $ff
    db $fc                                        ; $6ae2: $fc
    db $fc                                        ; $6ae3: $fc
    ret nz                                        ; $6ae4: $c0

    ret nz                                        ; $6ae5: $c0

    nop                                           ; $6ae6: $00
    nop                                           ; $6ae7: $00
    nop                                           ; $6ae8: $00
    nop                                           ; $6ae9: $00
    nop                                           ; $6aea: $00
    nop                                           ; $6aeb: $00
    nop                                           ; $6aec: $00
    nop                                           ; $6aed: $00
    nop                                           ; $6aee: $00
    nop                                           ; $6aef: $00
    ret nz                                        ; $6af0: $c0

    ret nz                                        ; $6af1: $c0

    ld h, b                                       ; $6af2: $60
    ld h, b                                       ; $6af3: $60
    ld [hl], b                                    ; $6af4: $70
    ld [hl], b                                    ; $6af5: $70
    jr nc, @+$32                                  ; $6af6: $30 $30

    dec hl                                        ; $6af8: $2b
    dec sp                                        ; $6af9: $3b
    rla                                           ; $6afa: $17
    dec e                                         ; $6afb: $1d
    dec d                                         ; $6afc: $15
    rra                                           ; $6afd: $1f
    dec de                                        ; $6afe: $1b
    ld e, $0b                                     ; $6aff: $1e $0b
    rrca                                          ; $6b01: $0f
    inc c                                         ; $6b02: $0c
    rrca                                          ; $6b03: $0f
    rlca                                          ; $6b04: $07
    rlca                                          ; $6b05: $07
    rlca                                          ; $6b06: $07
    rlca                                          ; $6b07: $07
    ld [bc], a                                    ; $6b08: $02
    inc bc                                        ; $6b09: $03
    dec b                                         ; $6b0a: $05
    rlca                                          ; $6b0b: $07
    ld b, $06                                     ; $6b0c: $06 $06
    nop                                           ; $6b0e: $00
    nop                                           ; $6b0f: $00
    inc bc                                        ; $6b10: $03
    inc bc                                        ; $6b11: $03
    ld b, $06                                     ; $6b12: $06 $06
    ld c, $0e                                     ; $6b14: $0e $0e
    inc c                                         ; $6b16: $0c
    inc c                                         ; $6b17: $0c
    call nc, $e8dc                                ; $6b18: $d4 $dc $e8
    cp b                                          ; $6b1b: $b8
    xor b                                         ; $6b1c: $a8
    ld hl, sp-$28                                 ; $6b1d: $f8 $d8
    ld a, b                                       ; $6b1f: $78
    ret nc                                        ; $6b20: $d0

    ldh a, [$30]                                  ; $6b21: $f0 $30
    ldh a, [$e0]                                  ; $6b23: $f0 $e0
    ldh [$e0], a                                  ; $6b25: $e0 $e0
    ldh [$c0], a                                  ; $6b27: $e0 $c0
    ret nz                                        ; $6b29: $c0

    ld h, b                                       ; $6b2a: $60
    ldh [$e0], a                                  ; $6b2b: $e0 $e0
    ldh [rP1], a                                  ; $6b2d: $e0 $00
    nop                                           ; $6b2f: $00
    nop                                           ; $6b30: $00
    nop                                           ; $6b31: $00
    ld bc, $0301                                  ; $6b32: $01 $01 $03
    inc bc                                        ; $6b35: $03
    rlca                                          ; $6b36: $07
    rlca                                          ; $6b37: $07
    scf                                           ; $6b38: $37
    scf                                           ; $6b39: $37
    ld [hl], l                                    ; $6b3a: $75
    ld d, a                                       ; $6b3b: $57
    ld e, e                                       ; $6b3c: $5b
    ld a, a                                       ; $6b3d: $7f
    rst $38                                       ; $6b3e: $ff
    ccf                                           ; $6b3f: $3f
    rst $38                                       ; $6b40: $ff
    rst $38                                       ; $6b41: $ff
    ccf                                           ; $6b42: $3f
    ccf                                           ; $6b43: $3f
    inc bc                                        ; $6b44: $03
    inc bc                                        ; $6b45: $03
    nop                                           ; $6b46: $00
    nop                                           ; $6b47: $00
    nop                                           ; $6b48: $00
    nop                                           ; $6b49: $00
    nop                                           ; $6b4a: $00
    nop                                           ; $6b4b: $00
    nop                                           ; $6b4c: $00
    nop                                           ; $6b4d: $00
    nop                                           ; $6b4e: $00
    nop                                           ; $6b4f: $00
    ld h, b                                       ; $6b50: $60
    ld h, b                                       ; $6b51: $60
    ldh [$e0], a                                  ; $6b52: $e0 $e0
    ret nz                                        ; $6b54: $c0

    ret nz                                        ; $6b55: $c0

    ret nz                                        ; $6b56: $c0

    ret nz                                        ; $6b57: $c0

    add b                                         ; $6b58: $80
    add b                                         ; $6b59: $80
    add b                                         ; $6b5a: $80
    add b                                         ; $6b5b: $80
    nop                                           ; $6b5c: $00
    nop                                           ; $6b5d: $00
    ldh [$e0], a                                  ; $6b5e: $e0 $e0
    ld hl, sp-$08                                 ; $6b60: $f8 $f8
    rst $38                                       ; $6b62: $ff
    rst $38                                       ; $6b63: $ff
    rst $38                                       ; $6b64: $ff
    rst $38                                       ; $6b65: $ff
    jr nz, jr_026_6b88                            ; $6b66: $20 $20

    db $10                                        ; $6b68: $10
    db $10                                        ; $6b69: $10
    inc c                                         ; $6b6a: $0c
    inc c                                         ; $6b6b: $0c
    db $10                                        ; $6b6c: $10
    stop                                          ; $6b6d: $10 $00
    nop                                           ; $6b6f: $00
    ret nz                                        ; $6b70: $c0

    ret nz                                        ; $6b71: $c0

    ld h, b                                       ; $6b72: $60
    ld h, b                                       ; $6b73: $60
    ld [hl], b                                    ; $6b74: $70
    ld [hl], b                                    ; $6b75: $70
    jr nc, @+$32                                  ; $6b76: $30 $30

    dec sp                                        ; $6b78: $3b
    dec sp                                        ; $6b79: $3b
    rla                                           ; $6b7a: $17
    rra                                           ; $6b7b: $1f
    rla                                           ; $6b7c: $17
    rra                                           ; $6b7d: $1f
    dec de                                        ; $6b7e: $1b
    rra                                           ; $6b7f: $1f
    dec bc                                        ; $6b80: $0b
    rrca                                          ; $6b81: $0f
    inc c                                         ; $6b82: $0c
    rrca                                          ; $6b83: $0f
    rlca                                          ; $6b84: $07
    rlca                                          ; $6b85: $07
    rlca                                          ; $6b86: $07
    rlca                                          ; $6b87: $07

jr_026_6b88:
    ld [bc], a                                    ; $6b88: $02
    inc bc                                        ; $6b89: $03
    dec b                                         ; $6b8a: $05
    rlca                                          ; $6b8b: $07
    ld b, $06                                     ; $6b8c: $06 $06
    nop                                           ; $6b8e: $00
    nop                                           ; $6b8f: $00
    inc bc                                        ; $6b90: $03
    inc bc                                        ; $6b91: $03
    ld b, $06                                     ; $6b92: $06 $06
    ld c, $0e                                     ; $6b94: $0e $0e
    inc c                                         ; $6b96: $0c
    inc c                                         ; $6b97: $0c
    call c, $e8dc                                 ; $6b98: $dc $dc $e8
    ld hl, sp-$18                                 ; $6b9b: $f8 $e8
    ld hl, sp-$28                                 ; $6b9d: $f8 $d8
    ld hl, sp-$30                                 ; $6b9f: $f8 $d0
    ldh a, [$30]                                  ; $6ba1: $f0 $30
    ldh a, [$e0]                                  ; $6ba3: $f0 $e0
    ldh [$e0], a                                  ; $6ba5: $e0 $e0
    ldh [$c0], a                                  ; $6ba7: $e0 $c0
    ret nz                                        ; $6ba9: $c0

    ld h, b                                       ; $6baa: $60
    ldh [$e0], a                                  ; $6bab: $e0 $e0
    ldh [rP1], a                                  ; $6bad: $e0 $00
    nop                                           ; $6baf: $00
    inc bc                                        ; $6bb0: $03
    inc bc                                        ; $6bb1: $03
    rlca                                          ; $6bb2: $07
    dec b                                         ; $6bb3: $05
    dec b                                         ; $6bb4: $05
    rlca                                          ; $6bb5: $07
    rlca                                          ; $6bb6: $07
    ld b, $0b                                     ; $6bb7: $06 $0b
    rrca                                          ; $6bb9: $0f
    inc d                                         ; $6bba: $14
    rra                                           ; $6bbb: $1f
    inc de                                        ; $6bbc: $13
    rra                                           ; $6bbd: $1f
    inc de                                        ; $6bbe: $13
    rra                                           ; $6bbf: $1f
    dec de                                        ; $6bc0: $1b
    rra                                           ; $6bc1: $1f
    dec de                                        ; $6bc2: $1b
    rra                                           ; $6bc3: $1f
    dec de                                        ; $6bc4: $1b
    rra                                           ; $6bc5: $1f
    rla                                           ; $6bc6: $17
    rra                                           ; $6bc7: $1f
    dec c                                         ; $6bc8: $0d
    rrca                                          ; $6bc9: $0f
    ccf                                           ; $6bca: $3f
    inc sp                                        ; $6bcb: $33
    dec sp                                        ; $6bcc: $3b
    cpl                                           ; $6bcd: $2f
    inc a                                         ; $6bce: $3c
    inc a                                         ; $6bcf: $3c
    ret nz                                        ; $6bd0: $c0

    ret nz                                        ; $6bd1: $c0

    ldh [$a0], a                                  ; $6bd2: $e0 $a0
    and b                                         ; $6bd4: $a0
    ldh [$e0], a                                  ; $6bd5: $e0 $e0
    ld h, b                                       ; $6bd7: $60
    ret nc                                        ; $6bd8: $d0

    ldh a, [$28]                                  ; $6bd9: $f0 $28
    ld hl, sp-$38                                 ; $6bdb: $f8 $c8
    ld hl, sp-$38                                 ; $6bdd: $f8 $c8
    ld hl, sp-$28                                 ; $6bdf: $f8 $d8
    ld hl, sp-$28                                 ; $6be1: $f8 $d8
    ld hl, sp-$21                                 ; $6be3: $f8 $df
    rst $38                                       ; $6be5: $ff
    rst $28                                       ; $6be6: $ef
    rst $38                                       ; $6be7: $ff
    or e                                          ; $6be8: $b3
    di                                            ; $6be9: $f3
    db $fd                                        ; $6bea: $fd
    call $f4dc                                    ; $6beb: $cd $dc $f4
    ld a, h                                       ; $6bee: $7c
    ld a, h                                       ; $6bef: $7c
    inc bc                                        ; $6bf0: $03
    inc bc                                        ; $6bf1: $03
    rlca                                          ; $6bf2: $07
    dec b                                         ; $6bf3: $05
    dec b                                         ; $6bf4: $05
    rlca                                          ; $6bf5: $07
    rlca                                          ; $6bf6: $07
    ld b, $0b                                     ; $6bf7: $06 $0b
    rrca                                          ; $6bf9: $0f
    inc d                                         ; $6bfa: $14
    rra                                           ; $6bfb: $1f
    inc de                                        ; $6bfc: $13
    rra                                           ; $6bfd: $1f
    inc de                                        ; $6bfe: $13
    rra                                           ; $6bff: $1f
    dec de                                        ; $6c00: $1b
    rra                                           ; $6c01: $1f
    dec de                                        ; $6c02: $1b
    rra                                           ; $6c03: $1f
    dec de                                        ; $6c04: $1b
    rra                                           ; $6c05: $1f
    rla                                           ; $6c06: $17
    rra                                           ; $6c07: $1f
    dec c                                         ; $6c08: $0d
    rrca                                          ; $6c09: $0f
    ccf                                           ; $6c0a: $3f
    inc sp                                        ; $6c0b: $33
    dec sp                                        ; $6c0c: $3b
    cpl                                           ; $6c0d: $2f
    inc a                                         ; $6c0e: $3c
    inc a                                         ; $6c0f: $3c
    ret nz                                        ; $6c10: $c0

    ret nz                                        ; $6c11: $c0

    ldh [$a0], a                                  ; $6c12: $e0 $a0
    and b                                         ; $6c14: $a0
    ldh [$e0], a                                  ; $6c15: $e0 $e0
    ld h, b                                       ; $6c17: $60
    ret nc                                        ; $6c18: $d0

    ldh a, [$28]                                  ; $6c19: $f0 $28
    ld hl, sp-$38                                 ; $6c1b: $f8 $c8
    ld hl, sp-$38                                 ; $6c1d: $f8 $c8
    ld hl, sp-$28                                 ; $6c1f: $f8 $d8
    ld hl, sp-$28                                 ; $6c21: $f8 $d8
    ld hl, sp-$21                                 ; $6c23: $f8 $df
    rst $38                                       ; $6c25: $ff
    rst $28                                       ; $6c26: $ef
    rst $38                                       ; $6c27: $ff
    or e                                          ; $6c28: $b3
    di                                            ; $6c29: $f3
    db $fd                                        ; $6c2a: $fd
    call $f4dc                                    ; $6c2b: $cd $dc $f4
    ld a, h                                       ; $6c2e: $7c
    ld a, h                                       ; $6c2f: $7c
    inc bc                                        ; $6c30: $03
    inc bc                                        ; $6c31: $03
    rlca                                          ; $6c32: $07
    dec b                                         ; $6c33: $05
    dec b                                         ; $6c34: $05
    rlca                                          ; $6c35: $07
    rlca                                          ; $6c36: $07
    ld b, $0b                                     ; $6c37: $06 $0b
    rrca                                          ; $6c39: $0f
    inc d                                         ; $6c3a: $14
    rra                                           ; $6c3b: $1f
    inc de                                        ; $6c3c: $13
    rra                                           ; $6c3d: $1f
    inc de                                        ; $6c3e: $13
    rra                                           ; $6c3f: $1f
    dec de                                        ; $6c40: $1b
    rra                                           ; $6c41: $1f
    dec de                                        ; $6c42: $1b
    rra                                           ; $6c43: $1f
    dec de                                        ; $6c44: $1b
    rra                                           ; $6c45: $1f
    rla                                           ; $6c46: $17
    rra                                           ; $6c47: $1f
    dec c                                         ; $6c48: $0d
    rrca                                          ; $6c49: $0f
    ccf                                           ; $6c4a: $3f
    inc sp                                        ; $6c4b: $33
    dec sp                                        ; $6c4c: $3b
    cpl                                           ; $6c4d: $2f
    inc a                                         ; $6c4e: $3c
    inc a                                         ; $6c4f: $3c
    ret nz                                        ; $6c50: $c0

    ret nz                                        ; $6c51: $c0

    ldh [$a0], a                                  ; $6c52: $e0 $a0
    and b                                         ; $6c54: $a0
    ldh [$e0], a                                  ; $6c55: $e0 $e0
    ld h, b                                       ; $6c57: $60
    ret nc                                        ; $6c58: $d0

    ldh a, [$28]                                  ; $6c59: $f0 $28
    ld hl, sp-$38                                 ; $6c5b: $f8 $c8
    ld hl, sp-$38                                 ; $6c5d: $f8 $c8
    ld hl, sp-$28                                 ; $6c5f: $f8 $d8
    ld hl, sp-$28                                 ; $6c61: $f8 $d8
    ld hl, sp-$21                                 ; $6c63: $f8 $df
    rst $38                                       ; $6c65: $ff
    rst $28                                       ; $6c66: $ef
    rst $38                                       ; $6c67: $ff
    or e                                          ; $6c68: $b3
    di                                            ; $6c69: $f3
    db $fd                                        ; $6c6a: $fd
    call $f4dc                                    ; $6c6b: $cd $dc $f4
    ld a, h                                       ; $6c6e: $7c
    ld a, h                                       ; $6c6f: $7c
    inc bc                                        ; $6c70: $03
    inc bc                                        ; $6c71: $03
    rlca                                          ; $6c72: $07
    dec b                                         ; $6c73: $05
    dec b                                         ; $6c74: $05
    rlca                                          ; $6c75: $07
    rlca                                          ; $6c76: $07
    ld b, $0b                                     ; $6c77: $06 $0b
    rrca                                          ; $6c79: $0f
    inc d                                         ; $6c7a: $14
    rra                                           ; $6c7b: $1f
    inc de                                        ; $6c7c: $13
    rra                                           ; $6c7d: $1f
    inc de                                        ; $6c7e: $13
    rra                                           ; $6c7f: $1f
    dec de                                        ; $6c80: $1b
    rra                                           ; $6c81: $1f
    dec de                                        ; $6c82: $1b
    rra                                           ; $6c83: $1f
    dec de                                        ; $6c84: $1b
    rra                                           ; $6c85: $1f
    rla                                           ; $6c86: $17
    rra                                           ; $6c87: $1f
    dec c                                         ; $6c88: $0d
    rrca                                          ; $6c89: $0f
    ccf                                           ; $6c8a: $3f
    inc sp                                        ; $6c8b: $33
    dec sp                                        ; $6c8c: $3b
    cpl                                           ; $6c8d: $2f
    inc a                                         ; $6c8e: $3c
    inc a                                         ; $6c8f: $3c
    ret nz                                        ; $6c90: $c0

    ret nz                                        ; $6c91: $c0

    ldh [$a0], a                                  ; $6c92: $e0 $a0
    and b                                         ; $6c94: $a0
    ldh [$e0], a                                  ; $6c95: $e0 $e0
    ld h, b                                       ; $6c97: $60
    ret nc                                        ; $6c98: $d0

    ldh a, [$28]                                  ; $6c99: $f0 $28
    ld hl, sp-$38                                 ; $6c9b: $f8 $c8
    ld hl, sp-$38                                 ; $6c9d: $f8 $c8
    ld hl, sp-$28                                 ; $6c9f: $f8 $d8
    ld hl, sp-$28                                 ; $6ca1: $f8 $d8
    ld hl, sp-$21                                 ; $6ca3: $f8 $df
    rst $38                                       ; $6ca5: $ff
    rst $28                                       ; $6ca6: $ef
    rst $38                                       ; $6ca7: $ff
    or e                                          ; $6ca8: $b3
    di                                            ; $6ca9: $f3
    db $fd                                        ; $6caa: $fd
    call $f4dc                                    ; $6cab: $cd $dc $f4
    ld a, h                                       ; $6cae: $7c
    ld a, h                                       ; $6caf: $7c
    inc bc                                        ; $6cb0: $03
    inc bc                                        ; $6cb1: $03
    rlca                                          ; $6cb2: $07
    dec b                                         ; $6cb3: $05
    dec e                                         ; $6cb4: $1d
    rra                                           ; $6cb5: $1f
    rra                                           ; $6cb6: $1f
    inc de                                        ; $6cb7: $13
    rrca                                          ; $6cb8: $0f
    rrca                                          ; $6cb9: $0f
    inc d                                         ; $6cba: $14
    rra                                           ; $6cbb: $1f
    inc de                                        ; $6cbc: $13
    rra                                           ; $6cbd: $1f
    inc de                                        ; $6cbe: $13
    rra                                           ; $6cbf: $1f
    dec de                                        ; $6cc0: $1b
    rra                                           ; $6cc1: $1f
    dec de                                        ; $6cc2: $1b
    rra                                           ; $6cc3: $1f
    dec de                                        ; $6cc4: $1b
    rra                                           ; $6cc5: $1f
    rla                                           ; $6cc6: $17
    rra                                           ; $6cc7: $1f
    dec c                                         ; $6cc8: $0d
    rrca                                          ; $6cc9: $0f
    rra                                           ; $6cca: $1f
    add hl, de                                    ; $6ccb: $19
    dec e                                         ; $6ccc: $1d
    rla                                           ; $6ccd: $17
    ld e, $1e                                     ; $6cce: $1e $1e
    ret nz                                        ; $6cd0: $c0

    ret nz                                        ; $6cd1: $c0

    ret nz                                        ; $6cd2: $c0

    ret nz                                        ; $6cd3: $c0

    ret nz                                        ; $6cd4: $c0

    ret nz                                        ; $6cd5: $c0

    ldh [$e0], a                                  ; $6cd6: $e0 $e0
    or b                                          ; $6cd8: $b0
    ldh a, [rBCPS]                                ; $6cd9: $f0 $68
    ld hl, sp-$38                                 ; $6cdb: $f8 $c8
    ld hl, sp-$38                                 ; $6cdd: $f8 $c8
    ld hl, sp-$27                                 ; $6cdf: $f8 $d9
    ld sp, hl                                     ; $6ce1: $f9
    db $db                                        ; $6ce2: $db
    ei                                            ; $6ce3: $fb
    rst $18                                       ; $6ce4: $df
    rst $38                                       ; $6ce5: $ff
    rst $28                                       ; $6ce6: $ef
    rst $38                                       ; $6ce7: $ff
    or b                                          ; $6ce8: $b0
    ldh a, [$fc]                                  ; $6ce9: $f0 $fc
    call z, $f4dc                                 ; $6ceb: $cc $dc $f4
    ld a, h                                       ; $6cee: $7c
    ld a, h                                       ; $6cef: $7c
    inc bc                                        ; $6cf0: $03
    inc bc                                        ; $6cf1: $03
    rlca                                          ; $6cf2: $07
    dec b                                         ; $6cf3: $05
    dec e                                         ; $6cf4: $1d
    rra                                           ; $6cf5: $1f
    rra                                           ; $6cf6: $1f
    inc de                                        ; $6cf7: $13
    rrca                                          ; $6cf8: $0f
    rrca                                          ; $6cf9: $0f
    inc d                                         ; $6cfa: $14
    rra                                           ; $6cfb: $1f
    inc de                                        ; $6cfc: $13
    rra                                           ; $6cfd: $1f
    inc de                                        ; $6cfe: $13
    rra                                           ; $6cff: $1f
    dec de                                        ; $6d00: $1b
    rra                                           ; $6d01: $1f
    dec de                                        ; $6d02: $1b
    rra                                           ; $6d03: $1f
    dec de                                        ; $6d04: $1b
    rra                                           ; $6d05: $1f
    rla                                           ; $6d06: $17
    rra                                           ; $6d07: $1f
    dec c                                         ; $6d08: $0d
    rrca                                          ; $6d09: $0f
    rra                                           ; $6d0a: $1f
    add hl, de                                    ; $6d0b: $19
    dec e                                         ; $6d0c: $1d
    rla                                           ; $6d0d: $17
    ld e, $1e                                     ; $6d0e: $1e $1e
    ret nz                                        ; $6d10: $c0

    ret nz                                        ; $6d11: $c0

    ret nz                                        ; $6d12: $c0

    ret nz                                        ; $6d13: $c0

    ret nz                                        ; $6d14: $c0

    ret nz                                        ; $6d15: $c0

    ldh [$e0], a                                  ; $6d16: $e0 $e0
    or b                                          ; $6d18: $b0
    ldh a, [rBCPS]                                ; $6d19: $f0 $68
    ld hl, sp-$38                                 ; $6d1b: $f8 $c8
    ld hl, sp-$38                                 ; $6d1d: $f8 $c8
    ld hl, sp-$27                                 ; $6d1f: $f8 $d9
    ld sp, hl                                     ; $6d21: $f9
    db $db                                        ; $6d22: $db
    ei                                            ; $6d23: $fb
    rst $18                                       ; $6d24: $df
    rst $38                                       ; $6d25: $ff
    rst $28                                       ; $6d26: $ef
    rst $38                                       ; $6d27: $ff
    or b                                          ; $6d28: $b0
    ldh a, [$fc]                                  ; $6d29: $f0 $fc
    call z, $f4dc                                 ; $6d2b: $cc $dc $f4
    ld a, h                                       ; $6d2e: $7c
    ld a, h                                       ; $6d2f: $7c
    inc bc                                        ; $6d30: $03
    inc bc                                        ; $6d31: $03
    rlca                                          ; $6d32: $07
    dec b                                         ; $6d33: $05
    dec e                                         ; $6d34: $1d
    rra                                           ; $6d35: $1f
    rra                                           ; $6d36: $1f
    inc de                                        ; $6d37: $13
    rrca                                          ; $6d38: $0f
    rrca                                          ; $6d39: $0f
    inc d                                         ; $6d3a: $14
    rra                                           ; $6d3b: $1f
    inc de                                        ; $6d3c: $13
    rra                                           ; $6d3d: $1f
    inc de                                        ; $6d3e: $13
    rra                                           ; $6d3f: $1f
    dec de                                        ; $6d40: $1b
    rra                                           ; $6d41: $1f
    dec de                                        ; $6d42: $1b
    rra                                           ; $6d43: $1f
    dec de                                        ; $6d44: $1b
    rra                                           ; $6d45: $1f
    rla                                           ; $6d46: $17
    rra                                           ; $6d47: $1f
    dec c                                         ; $6d48: $0d
    rrca                                          ; $6d49: $0f
    rra                                           ; $6d4a: $1f
    add hl, de                                    ; $6d4b: $19
    dec e                                         ; $6d4c: $1d
    rla                                           ; $6d4d: $17
    ld e, $1e                                     ; $6d4e: $1e $1e
    ret nz                                        ; $6d50: $c0

    ret nz                                        ; $6d51: $c0

    ret nz                                        ; $6d52: $c0

    ret nz                                        ; $6d53: $c0

    ret nz                                        ; $6d54: $c0

    ret nz                                        ; $6d55: $c0

    ldh [$e0], a                                  ; $6d56: $e0 $e0
    or b                                          ; $6d58: $b0
    ldh a, [rBCPS]                                ; $6d59: $f0 $68
    ld hl, sp-$38                                 ; $6d5b: $f8 $c8
    ld hl, sp-$38                                 ; $6d5d: $f8 $c8
    ld hl, sp-$27                                 ; $6d5f: $f8 $d9
    ld sp, hl                                     ; $6d61: $f9
    db $db                                        ; $6d62: $db
    ei                                            ; $6d63: $fb
    rst $18                                       ; $6d64: $df
    rst $38                                       ; $6d65: $ff
    rst $28                                       ; $6d66: $ef
    rst $38                                       ; $6d67: $ff
    or b                                          ; $6d68: $b0
    ldh a, [$fc]                                  ; $6d69: $f0 $fc
    call z, $f4dc                                 ; $6d6b: $cc $dc $f4
    ld a, h                                       ; $6d6e: $7c
    ld a, h                                       ; $6d6f: $7c
    inc bc                                        ; $6d70: $03
    inc bc                                        ; $6d71: $03
    rlca                                          ; $6d72: $07
    dec b                                         ; $6d73: $05
    dec e                                         ; $6d74: $1d
    rra                                           ; $6d75: $1f
    rra                                           ; $6d76: $1f
    inc de                                        ; $6d77: $13
    rrca                                          ; $6d78: $0f
    rrca                                          ; $6d79: $0f
    inc d                                         ; $6d7a: $14
    rra                                           ; $6d7b: $1f
    inc de                                        ; $6d7c: $13
    rra                                           ; $6d7d: $1f
    inc de                                        ; $6d7e: $13
    rra                                           ; $6d7f: $1f
    dec de                                        ; $6d80: $1b
    rra                                           ; $6d81: $1f
    dec de                                        ; $6d82: $1b
    rra                                           ; $6d83: $1f
    dec de                                        ; $6d84: $1b
    rra                                           ; $6d85: $1f
    rla                                           ; $6d86: $17
    rra                                           ; $6d87: $1f
    dec c                                         ; $6d88: $0d
    rrca                                          ; $6d89: $0f
    rra                                           ; $6d8a: $1f
    add hl, de                                    ; $6d8b: $19
    dec e                                         ; $6d8c: $1d
    rla                                           ; $6d8d: $17
    ld e, $1e                                     ; $6d8e: $1e $1e
    ret nz                                        ; $6d90: $c0

    ret nz                                        ; $6d91: $c0

    ret nz                                        ; $6d92: $c0

    ret nz                                        ; $6d93: $c0

    ret nz                                        ; $6d94: $c0

    ret nz                                        ; $6d95: $c0

    ldh [$e0], a                                  ; $6d96: $e0 $e0
    or b                                          ; $6d98: $b0
    ldh a, [rBCPS]                                ; $6d99: $f0 $68
    ld hl, sp-$38                                 ; $6d9b: $f8 $c8
    ld hl, sp-$38                                 ; $6d9d: $f8 $c8
    ld hl, sp-$27                                 ; $6d9f: $f8 $d9
    ld sp, hl                                     ; $6da1: $f9
    db $db                                        ; $6da2: $db
    ei                                            ; $6da3: $fb
    rst $18                                       ; $6da4: $df
    rst $38                                       ; $6da5: $ff
    rst $28                                       ; $6da6: $ef
    rst $38                                       ; $6da7: $ff
    or b                                          ; $6da8: $b0
    ldh a, [$fc]                                  ; $6da9: $f0 $fc
    call z, $f4dc                                 ; $6dab: $cc $dc $f4
    ld a, h                                       ; $6dae: $7c
    ld a, h                                       ; $6daf: $7c
    jp nz, $c56d                                  ; $6db0: $c2 $6d $c5

    ld l, l                                       ; $6db3: $6d
    bit 5, l                                      ; $6db4: $cb $6d
    adc $6d                                       ; $6db6: $ce $6d
    sub $6d                                       ; $6db8: $d6 $6d
    jp nz, $c26d                                  ; $6dba: $c2 $6d $c2

    ld l, l                                       ; $6dbd: $6d
    jp nz, $c26d                                  ; $6dbe: $c2 $6d $c2

    ld l, l                                       ; $6dc1: $6d
    ld [bc], a                                    ; $6dc2: $02
    rst $38                                       ; $6dc3: $ff
    db $fd                                        ; $6dc4: $fd
    ld [bc], a                                    ; $6dc5: $02
    ld a, b                                       ; $6dc6: $78
    inc bc                                        ; $6dc7: $03
    ld a, b                                       ; $6dc8: $78
    rst $38                                       ; $6dc9: $ff
    nop                                           ; $6dca: $00
    nop                                           ; $6dcb: $00
    rst $38                                       ; $6dcc: $ff
    db $fd                                        ; $6dcd: $fd
    nop                                           ; $6dce: $00
    inc d                                         ; $6dcf: $14
    ld bc, $fc14                                  ; $6dd0: $01 $14 $fc
    and d                                         ; $6dd3: $a2
    rst $38                                       ; $6dd4: $ff
    nop                                           ; $6dd5: $00
    nop                                           ; $6dd6: $00
    inc d                                         ; $6dd7: $14
    ld bc, $ff14                                  ; $6dd8: $01 $14 $ff
    nop                                           ; $6ddb: $00
    nop                                           ; $6ddc: $00
    ld a, [bc]                                    ; $6ddd: $0a
    ld b, $1e                                     ; $6dde: $06 $1e
    nop                                           ; $6de0: $00
    ld a, [bc]                                    ; $6de1: $0a
    cp $01                                        ; $6de2: $fe $01
    nop                                           ; $6de4: $00
    ld a, [bc]                                    ; $6de5: $0a
    cp $01                                        ; $6de6: $fe $01
    nop                                           ; $6de8: $00
    ld a, [bc]                                    ; $6de9: $0a
    add hl, bc                                    ; $6dea: $09
    ld [$0800], sp                                ; $6deb: $08 $00 $08
    add hl, bc                                    ; $6dee: $09
    ld [$0a00], sp                                ; $6def: $08 $00 $0a
    cp $01                                        ; $6df2: $fe $01
    rlca                                          ; $6df4: $07
    inc b                                         ; $6df5: $04
    db $fc                                        ; $6df6: $fc
    ld l, l                                       ; $6df7: $6d
    db $10                                        ; $6df8: $10
    ld [hl], b                                    ; $6df9: $70
    db $fc                                        ; $6dfa: $fc
    ld l, l                                       ; $6dfb: $6d
    db $10                                        ; $6dfc: $10
    ld l, [hl]                                    ; $6dfd: $6e
    db $10                                        ; $6dfe: $10
    ld l, a                                       ; $6dff: $6f
    db $10                                        ; $6e00: $10
    ld l, [hl]                                    ; $6e01: $6e
    db $10                                        ; $6e02: $10
    ld l, [hl]                                    ; $6e03: $6e
    db $10                                        ; $6e04: $10
    ld l, [hl]                                    ; $6e05: $6e
    db $10                                        ; $6e06: $10
    ld l, [hl]                                    ; $6e07: $6e
    nop                                           ; $6e08: $00
    nop                                           ; $6e09: $00
    nop                                           ; $6e0a: $00
    nop                                           ; $6e0b: $00
    nop                                           ; $6e0c: $00
    nop                                           ; $6e0d: $00
    nop                                           ; $6e0e: $00
    nop                                           ; $6e0f: $00
    nop                                           ; $6e10: $00

jr_026_6e11:
    nop                                           ; $6e11: $00
    inc bc                                        ; $6e12: $03
    inc bc                                        ; $6e13: $03
    inc b                                         ; $6e14: $04
    rlca                                          ; $6e15: $07
    add hl, bc                                    ; $6e16: $09
    ld c, $0f                                     ; $6e17: $0e $0f
    dec bc                                        ; $6e19: $0b
    dec bc                                        ; $6e1a: $0b
    inc c                                         ; $6e1b: $0c
    dec e                                         ; $6e1c: $1d
    ld a, [de]                                    ; $6e1d: $1a
    dec hl                                        ; $6e1e: $2b
    inc a                                         ; $6e1f: $3c
    ld c, b                                       ; $6e20: $48
    ld [hl], a                                    ; $6e21: $77
    ld d, h                                       ; $6e22: $54
    ld l, e                                       ; $6e23: $6b
    ld l, e                                       ; $6e24: $6b
    ld [hl], h                                    ; $6e25: $74
    daa                                           ; $6e26: $27
    jr c, jr_026_6e42                             ; $6e27: $38 $19

    ld e, $07                                     ; $6e29: $1e $07
    rlca                                          ; $6e2b: $07
    nop                                           ; $6e2c: $00
    nop                                           ; $6e2d: $00
    nop                                           ; $6e2e: $00
    nop                                           ; $6e2f: $00
    nop                                           ; $6e30: $00
    nop                                           ; $6e31: $00
    ldh [$e0], a                                  ; $6e32: $e0 $e0
    db $10                                        ; $6e34: $10
    ldh a, [$e8]                                  ; $6e35: $f0 $e8
    jr @-$66                                      ; $6e37: $18 $98

    add sp, -$08                                  ; $6e39: $e8 $f8
    ld [$0cfc], sp                                ; $6e3b: $08 $fc $0c
    ld [$0d1e], a                                 ; $6e3e: $ea $1e $0d
    di                                            ; $6e41: $f3

jr_026_6e42:
    rra                                           ; $6e42: $1f
    pop hl                                        ; $6e43: $e1
    db $fd                                        ; $6e44: $fd
    inc bc                                        ; $6e45: $03
    ld a, [c]                                     ; $6e46: $f2
    ld c, $cc                                     ; $6e47: $0e $cc
    inc a                                         ; $6e49: $3c
    ldh a, [$f0]                                  ; $6e4a: $f0 $f0
    nop                                           ; $6e4c: $00
    nop                                           ; $6e4d: $00
    nop                                           ; $6e4e: $00
    nop                                           ; $6e4f: $00
    nop                                           ; $6e50: $00

jr_026_6e51:
    nop                                           ; $6e51: $00
    inc bc                                        ; $6e52: $03
    inc bc                                        ; $6e53: $03
    inc b                                         ; $6e54: $04
    rlca                                          ; $6e55: $07
    add hl, bc                                    ; $6e56: $09
    ld c, $0f                                     ; $6e57: $0e $0f
    dec bc                                        ; $6e59: $0b
    dec bc                                        ; $6e5a: $0b
    inc c                                         ; $6e5b: $0c
    dec e                                         ; $6e5c: $1d
    ld a, [de]                                    ; $6e5d: $1a
    dec hl                                        ; $6e5e: $2b
    inc a                                         ; $6e5f: $3c
    ld c, b                                       ; $6e60: $48
    ld [hl], a                                    ; $6e61: $77
    ld d, h                                       ; $6e62: $54
    ld l, e                                       ; $6e63: $6b
    ld l, e                                       ; $6e64: $6b
    ld [hl], h                                    ; $6e65: $74
    daa                                           ; $6e66: $27
    jr c, jr_026_6e82                             ; $6e67: $38 $19

    ld e, $07                                     ; $6e69: $1e $07
    rlca                                          ; $6e6b: $07
    nop                                           ; $6e6c: $00
    nop                                           ; $6e6d: $00
    nop                                           ; $6e6e: $00
    nop                                           ; $6e6f: $00
    nop                                           ; $6e70: $00
    nop                                           ; $6e71: $00
    ldh [$e0], a                                  ; $6e72: $e0 $e0
    db $10                                        ; $6e74: $10
    ldh a, [$e8]                                  ; $6e75: $f0 $e8
    jr jr_026_6e11                                ; $6e77: $18 $98

    add sp, -$08                                  ; $6e79: $e8 $f8
    ld [$0cfc], sp                                ; $6e7b: $08 $fc $0c
    ld [$0d1e], a                                 ; $6e7e: $ea $1e $0d
    di                                            ; $6e81: $f3

jr_026_6e82:
    rra                                           ; $6e82: $1f
    pop hl                                        ; $6e83: $e1
    db $fd                                        ; $6e84: $fd
    inc bc                                        ; $6e85: $03
    ld a, [c]                                     ; $6e86: $f2
    ld c, $cc                                     ; $6e87: $0e $cc
    inc a                                         ; $6e89: $3c
    ldh a, [$f0]                                  ; $6e8a: $f0 $f0
    nop                                           ; $6e8c: $00
    nop                                           ; $6e8d: $00
    nop                                           ; $6e8e: $00
    nop                                           ; $6e8f: $00
    nop                                           ; $6e90: $00

jr_026_6e91:
    nop                                           ; $6e91: $00
    inc bc                                        ; $6e92: $03
    inc bc                                        ; $6e93: $03
    inc b                                         ; $6e94: $04
    rlca                                          ; $6e95: $07
    add hl, bc                                    ; $6e96: $09
    ld c, $0f                                     ; $6e97: $0e $0f
    dec bc                                        ; $6e99: $0b
    dec bc                                        ; $6e9a: $0b
    inc c                                         ; $6e9b: $0c
    dec e                                         ; $6e9c: $1d
    ld a, [de]                                    ; $6e9d: $1a
    dec hl                                        ; $6e9e: $2b
    inc a                                         ; $6e9f: $3c
    ld c, b                                       ; $6ea0: $48
    ld [hl], a                                    ; $6ea1: $77
    ld d, h                                       ; $6ea2: $54
    ld l, e                                       ; $6ea3: $6b
    ld l, e                                       ; $6ea4: $6b
    ld [hl], h                                    ; $6ea5: $74
    daa                                           ; $6ea6: $27
    jr c, jr_026_6ec2                             ; $6ea7: $38 $19

    ld e, $07                                     ; $6ea9: $1e $07
    rlca                                          ; $6eab: $07
    nop                                           ; $6eac: $00
    nop                                           ; $6ead: $00
    nop                                           ; $6eae: $00
    nop                                           ; $6eaf: $00
    nop                                           ; $6eb0: $00
    nop                                           ; $6eb1: $00
    ldh [$e0], a                                  ; $6eb2: $e0 $e0
    db $10                                        ; $6eb4: $10
    ldh a, [$e8]                                  ; $6eb5: $f0 $e8
    jr jr_026_6e51                                ; $6eb7: $18 $98

    add sp, -$08                                  ; $6eb9: $e8 $f8
    ld [$0cfc], sp                                ; $6ebb: $08 $fc $0c
    ld [$0d1e], a                                 ; $6ebe: $ea $1e $0d
    di                                            ; $6ec1: $f3

jr_026_6ec2:
    rra                                           ; $6ec2: $1f
    pop hl                                        ; $6ec3: $e1
    db $fd                                        ; $6ec4: $fd
    inc bc                                        ; $6ec5: $03
    ld a, [c]                                     ; $6ec6: $f2
    ld c, $cc                                     ; $6ec7: $0e $cc
    inc a                                         ; $6ec9: $3c
    ldh a, [$f0]                                  ; $6eca: $f0 $f0
    nop                                           ; $6ecc: $00
    nop                                           ; $6ecd: $00
    nop                                           ; $6ece: $00
    nop                                           ; $6ecf: $00
    nop                                           ; $6ed0: $00
    nop                                           ; $6ed1: $00
    inc bc                                        ; $6ed2: $03
    inc bc                                        ; $6ed3: $03
    inc b                                         ; $6ed4: $04
    rlca                                          ; $6ed5: $07
    add hl, bc                                    ; $6ed6: $09
    ld c, $0f                                     ; $6ed7: $0e $0f
    dec bc                                        ; $6ed9: $0b
    dec bc                                        ; $6eda: $0b
    inc c                                         ; $6edb: $0c
    dec e                                         ; $6edc: $1d
    ld a, [de]                                    ; $6edd: $1a
    dec hl                                        ; $6ede: $2b
    inc a                                         ; $6edf: $3c
    ld c, b                                       ; $6ee0: $48
    ld [hl], a                                    ; $6ee1: $77
    ld d, h                                       ; $6ee2: $54
    ld l, e                                       ; $6ee3: $6b
    ld l, e                                       ; $6ee4: $6b
    ld [hl], h                                    ; $6ee5: $74
    daa                                           ; $6ee6: $27
    jr c, jr_026_6f02                             ; $6ee7: $38 $19

    ld e, $07                                     ; $6ee9: $1e $07
    rlca                                          ; $6eeb: $07
    nop                                           ; $6eec: $00
    nop                                           ; $6eed: $00
    nop                                           ; $6eee: $00
    nop                                           ; $6eef: $00
    nop                                           ; $6ef0: $00
    nop                                           ; $6ef1: $00
    ldh [$e0], a                                  ; $6ef2: $e0 $e0
    db $10                                        ; $6ef4: $10
    ldh a, [$e8]                                  ; $6ef5: $f0 $e8
    jr jr_026_6e91                                ; $6ef7: $18 $98

    add sp, -$08                                  ; $6ef9: $e8 $f8
    ld [$0cfc], sp                                ; $6efb: $08 $fc $0c
    ld [$0d1e], a                                 ; $6efe: $ea $1e $0d
    di                                            ; $6f01: $f3

jr_026_6f02:
    rra                                           ; $6f02: $1f
    pop hl                                        ; $6f03: $e1
    db $fd                                        ; $6f04: $fd
    inc bc                                        ; $6f05: $03
    ld a, [c]                                     ; $6f06: $f2
    ld c, $cc                                     ; $6f07: $0e $cc
    inc a                                         ; $6f09: $3c
    ldh a, [$f0]                                  ; $6f0a: $f0 $f0
    nop                                           ; $6f0c: $00
    nop                                           ; $6f0d: $00
    nop                                           ; $6f0e: $00
    nop                                           ; $6f0f: $00
    inc bc                                        ; $6f10: $03
    ld [bc], a                                    ; $6f11: $02
    inc bc                                        ; $6f12: $03
    ld [bc], a                                    ; $6f13: $02
    inc bc                                        ; $6f14: $03
    ld [bc], a                                    ; $6f15: $02
    inc bc                                        ; $6f16: $03
    ld [bc], a                                    ; $6f17: $02
    ld [bc], a                                    ; $6f18: $02
    inc bc                                        ; $6f19: $03
    ld [bc], a                                    ; $6f1a: $02
    inc bc                                        ; $6f1b: $03
    ld [bc], a                                    ; $6f1c: $02
    inc bc                                        ; $6f1d: $03
    ld [bc], a                                    ; $6f1e: $02
    inc bc                                        ; $6f1f: $03
    inc bc                                        ; $6f20: $03
    ld [bc], a                                    ; $6f21: $02
    inc bc                                        ; $6f22: $03
    ld [bc], a                                    ; $6f23: $02
    inc bc                                        ; $6f24: $03
    ld [bc], a                                    ; $6f25: $02
    inc bc                                        ; $6f26: $03
    ld [bc], a                                    ; $6f27: $02
    ld [bc], a                                    ; $6f28: $02
    inc bc                                        ; $6f29: $03
    ld b, $07                                     ; $6f2a: $06 $07
    rlca                                          ; $6f2c: $07
    rlca                                          ; $6f2d: $07
    inc bc                                        ; $6f2e: $03
    inc bc                                        ; $6f2f: $03
    add b                                         ; $6f30: $80
    add b                                         ; $6f31: $80
    add b                                         ; $6f32: $80
    add b                                         ; $6f33: $80
    add b                                         ; $6f34: $80
    add b                                         ; $6f35: $80
    add b                                         ; $6f36: $80
    add b                                         ; $6f37: $80
    add b                                         ; $6f38: $80
    add b                                         ; $6f39: $80
    add b                                         ; $6f3a: $80
    add b                                         ; $6f3b: $80
    add b                                         ; $6f3c: $80
    add b                                         ; $6f3d: $80
    add b                                         ; $6f3e: $80
    add b                                         ; $6f3f: $80
    add b                                         ; $6f40: $80
    add b                                         ; $6f41: $80
    add b                                         ; $6f42: $80
    add b                                         ; $6f43: $80
    add b                                         ; $6f44: $80
    add b                                         ; $6f45: $80
    add b                                         ; $6f46: $80
    add b                                         ; $6f47: $80
    add b                                         ; $6f48: $80
    add b                                         ; $6f49: $80
    ret nz                                        ; $6f4a: $c0

    ret nz                                        ; $6f4b: $c0

    ret nz                                        ; $6f4c: $c0

    ret nz                                        ; $6f4d: $c0

    add b                                         ; $6f4e: $80
    add b                                         ; $6f4f: $80
    inc bc                                        ; $6f50: $03
    ld [bc], a                                    ; $6f51: $02
    inc bc                                        ; $6f52: $03
    ld [bc], a                                    ; $6f53: $02
    inc bc                                        ; $6f54: $03
    ld [bc], a                                    ; $6f55: $02
    inc bc                                        ; $6f56: $03
    ld [bc], a                                    ; $6f57: $02
    ld [bc], a                                    ; $6f58: $02
    inc bc                                        ; $6f59: $03
    ld [bc], a                                    ; $6f5a: $02
    inc bc                                        ; $6f5b: $03
    ld [bc], a                                    ; $6f5c: $02
    inc bc                                        ; $6f5d: $03
    ld [bc], a                                    ; $6f5e: $02
    inc bc                                        ; $6f5f: $03
    inc bc                                        ; $6f60: $03
    ld [bc], a                                    ; $6f61: $02
    inc bc                                        ; $6f62: $03
    ld [bc], a                                    ; $6f63: $02
    inc bc                                        ; $6f64: $03
    ld [bc], a                                    ; $6f65: $02
    inc bc                                        ; $6f66: $03
    ld [bc], a                                    ; $6f67: $02
    ld [bc], a                                    ; $6f68: $02
    inc bc                                        ; $6f69: $03
    ld b, $07                                     ; $6f6a: $06 $07
    rlca                                          ; $6f6c: $07
    rlca                                          ; $6f6d: $07
    inc bc                                        ; $6f6e: $03
    inc bc                                        ; $6f6f: $03
    add b                                         ; $6f70: $80
    add b                                         ; $6f71: $80
    add b                                         ; $6f72: $80
    add b                                         ; $6f73: $80
    add b                                         ; $6f74: $80
    add b                                         ; $6f75: $80
    add b                                         ; $6f76: $80
    add b                                         ; $6f77: $80
    add b                                         ; $6f78: $80
    add b                                         ; $6f79: $80
    add b                                         ; $6f7a: $80

Call_026_6f7b:
    add b                                         ; $6f7b: $80
    add b                                         ; $6f7c: $80
    add b                                         ; $6f7d: $80
    add b                                         ; $6f7e: $80
    add b                                         ; $6f7f: $80
    add b                                         ; $6f80: $80
    add b                                         ; $6f81: $80
    add b                                         ; $6f82: $80
    add b                                         ; $6f83: $80
    add b                                         ; $6f84: $80
    add b                                         ; $6f85: $80
    add b                                         ; $6f86: $80
    add b                                         ; $6f87: $80
    add b                                         ; $6f88: $80
    add b                                         ; $6f89: $80
    ret nz                                        ; $6f8a: $c0

    ret nz                                        ; $6f8b: $c0

    ret nz                                        ; $6f8c: $c0

    ret nz                                        ; $6f8d: $c0

    add b                                         ; $6f8e: $80
    add b                                         ; $6f8f: $80
    inc bc                                        ; $6f90: $03
    ld [bc], a                                    ; $6f91: $02
    inc bc                                        ; $6f92: $03
    ld [bc], a                                    ; $6f93: $02
    inc bc                                        ; $6f94: $03
    ld [bc], a                                    ; $6f95: $02
    inc bc                                        ; $6f96: $03
    ld [bc], a                                    ; $6f97: $02
    ld [bc], a                                    ; $6f98: $02
    inc bc                                        ; $6f99: $03
    ld [bc], a                                    ; $6f9a: $02
    inc bc                                        ; $6f9b: $03
    ld [bc], a                                    ; $6f9c: $02
    inc bc                                        ; $6f9d: $03
    ld [bc], a                                    ; $6f9e: $02
    inc bc                                        ; $6f9f: $03
    inc bc                                        ; $6fa0: $03
    ld [bc], a                                    ; $6fa1: $02
    inc bc                                        ; $6fa2: $03
    ld [bc], a                                    ; $6fa3: $02
    inc bc                                        ; $6fa4: $03
    ld [bc], a                                    ; $6fa5: $02
    inc bc                                        ; $6fa6: $03
    ld [bc], a                                    ; $6fa7: $02
    ld [bc], a                                    ; $6fa8: $02
    inc bc                                        ; $6fa9: $03
    ld b, $07                                     ; $6faa: $06 $07
    rlca                                          ; $6fac: $07
    rlca                                          ; $6fad: $07
    inc bc                                        ; $6fae: $03
    inc bc                                        ; $6faf: $03
    add b                                         ; $6fb0: $80
    add b                                         ; $6fb1: $80
    add b                                         ; $6fb2: $80
    add b                                         ; $6fb3: $80
    add b                                         ; $6fb4: $80
    add b                                         ; $6fb5: $80
    add b                                         ; $6fb6: $80
    add b                                         ; $6fb7: $80
    add b                                         ; $6fb8: $80
    add b                                         ; $6fb9: $80
    add b                                         ; $6fba: $80
    add b                                         ; $6fbb: $80
    add b                                         ; $6fbc: $80
    add b                                         ; $6fbd: $80
    add b                                         ; $6fbe: $80
    add b                                         ; $6fbf: $80
    add b                                         ; $6fc0: $80
    add b                                         ; $6fc1: $80
    add b                                         ; $6fc2: $80
    add b                                         ; $6fc3: $80
    add b                                         ; $6fc4: $80
    add b                                         ; $6fc5: $80
    add b                                         ; $6fc6: $80
    add b                                         ; $6fc7: $80
    add b                                         ; $6fc8: $80
    add b                                         ; $6fc9: $80
    ret nz                                        ; $6fca: $c0

    ret nz                                        ; $6fcb: $c0

    ret nz                                        ; $6fcc: $c0

    ret nz                                        ; $6fcd: $c0

    add b                                         ; $6fce: $80
    add b                                         ; $6fcf: $80
    inc bc                                        ; $6fd0: $03
    ld [bc], a                                    ; $6fd1: $02
    inc bc                                        ; $6fd2: $03
    ld [bc], a                                    ; $6fd3: $02
    inc bc                                        ; $6fd4: $03
    ld [bc], a                                    ; $6fd5: $02
    inc bc                                        ; $6fd6: $03
    ld [bc], a                                    ; $6fd7: $02
    ld [bc], a                                    ; $6fd8: $02
    inc bc                                        ; $6fd9: $03
    ld [bc], a                                    ; $6fda: $02
    inc bc                                        ; $6fdb: $03
    ld [bc], a                                    ; $6fdc: $02
    inc bc                                        ; $6fdd: $03
    ld [bc], a                                    ; $6fde: $02
    inc bc                                        ; $6fdf: $03
    inc bc                                        ; $6fe0: $03
    ld [bc], a                                    ; $6fe1: $02
    inc bc                                        ; $6fe2: $03
    ld [bc], a                                    ; $6fe3: $02
    inc bc                                        ; $6fe4: $03
    ld [bc], a                                    ; $6fe5: $02
    inc bc                                        ; $6fe6: $03
    ld [bc], a                                    ; $6fe7: $02
    ld [bc], a                                    ; $6fe8: $02
    inc bc                                        ; $6fe9: $03
    ld b, $07                                     ; $6fea: $06 $07
    rlca                                          ; $6fec: $07
    rlca                                          ; $6fed: $07
    inc bc                                        ; $6fee: $03
    inc bc                                        ; $6fef: $03
    add b                                         ; $6ff0: $80
    add b                                         ; $6ff1: $80
    add b                                         ; $6ff2: $80
    add b                                         ; $6ff3: $80
    add b                                         ; $6ff4: $80
    add b                                         ; $6ff5: $80
    add b                                         ; $6ff6: $80
    add b                                         ; $6ff7: $80
    add b                                         ; $6ff8: $80
    add b                                         ; $6ff9: $80
    add b                                         ; $6ffa: $80
    add b                                         ; $6ffb: $80
    add b                                         ; $6ffc: $80
    add b                                         ; $6ffd: $80
    add b                                         ; $6ffe: $80
    add b                                         ; $6fff: $80
    add b                                         ; $7000: $80
    add b                                         ; $7001: $80
    add b                                         ; $7002: $80
    add b                                         ; $7003: $80
    add b                                         ; $7004: $80
    add b                                         ; $7005: $80
    add b                                         ; $7006: $80
    add b                                         ; $7007: $80
    add b                                         ; $7008: $80
    add b                                         ; $7009: $80
    ret nz                                        ; $700a: $c0

    ret nz                                        ; $700b: $c0

    ret nz                                        ; $700c: $c0

    ret nz                                        ; $700d: $c0

    add b                                         ; $700e: $80
    add b                                         ; $700f: $80
    ld [hl+], a                                   ; $7010: $22
    ld [hl], b                                    ; $7011: $70
    dec h                                         ; $7012: $25
    ld [hl], b                                    ; $7013: $70
    dec hl                                        ; $7014: $2b
    ld [hl], b                                    ; $7015: $70
    ld l, $70                                     ; $7016: $2e $70
    ld [hl+], a                                   ; $7018: $22
    ld [hl], b                                    ; $7019: $70
    ld [hl+], a                                   ; $701a: $22
    ld [hl], b                                    ; $701b: $70
    ld [hl+], a                                   ; $701c: $22
    ld [hl], b                                    ; $701d: $70
    ld [hl+], a                                   ; $701e: $22
    ld [hl], b                                    ; $701f: $70
    ld [hl+], a                                   ; $7020: $22
    ld [hl], b                                    ; $7021: $70
    nop                                           ; $7022: $00
    rst $38                                       ; $7023: $ff
    db $fd                                        ; $7024: $fd
    nop                                           ; $7025: $00
    ld e, $00                                     ; $7026: $1e $00
    ld e, $ff                                     ; $7028: $1e $ff
    nop                                           ; $702a: $00
    ld bc, $fdff                                  ; $702b: $01 $ff $fd
    nop                                           ; $702e: $00
    ld e, $01                                     ; $702f: $1e $01
    ld e, $fd                                     ; $7031: $1e $fd
    ld [bc], a                                    ; $7033: $02
    jr @+$05                                      ; $7034: $18 $03

    jr jr_026_703a                                ; $7036: $18 $02

    jr @-$01                                      ; $7038: $18 $fd

jr_026_703a:
    nop                                           ; $703a: $00
    ld a, [bc]                                    ; $703b: $0a
    ld b, $1e                                     ; $703c: $06 $1e
    nop                                           ; $703e: $00
    ld a, [bc]                                    ; $703f: $0a
    cp $01                                        ; $7040: $fe $01
    nop                                           ; $7042: $00
    ld a, [bc]                                    ; $7043: $0a
    cp $01                                        ; $7044: $fe $01
    nop                                           ; $7046: $00
    ld a, [bc]                                    ; $7047: $0a
    add hl, bc                                    ; $7048: $09
    ld [$0800], sp                                ; $7049: $08 $00 $08
    add hl, bc                                    ; $704c: $09
    ld [$0a00], sp                                ; $704d: $08 $00 $0a
    cp $01                                        ; $7050: $fe $01
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

Call_026_74cf:
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
