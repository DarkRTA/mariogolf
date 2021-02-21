; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    db $c3

Call_000_0001:
Jump_000_0001:
    sub b                                         ; $0001: $90

Call_000_0002:
Jump_000_0002:
    ld b, $ff                                     ; $0002: $06 $ff

Call_000_0004:
Jump_000_0004:
    rst $38                                       ; $0004: $ff
    rst $38                                       ; $0005: $ff
    rst $38                                       ; $0006: $ff

Call_000_0007:
    rst $38                                       ; $0007: $ff

RST_08::
    jp Jump_000_2bbb                              ; $0008: $c3 $bb $2b


Jump_000_000b:
    rst $38                                       ; $000b: $ff

Call_000_000c:
    rst $38                                       ; $000c: $ff

Jump_000_000d:
    rst $38                                       ; $000d: $ff

Call_000_000e:
Jump_000_000e:
    rst $38                                       ; $000e: $ff

Jump_000_000f:
    rst $38                                       ; $000f: $ff

RST_10::
    jp Jump_000_01f6                              ; $0010: $c3 $f6 $01


Call_000_0013:
    rst $38                                       ; $0013: $ff

Jump_000_0014:
    rst $38                                       ; $0014: $ff

Jump_000_0015:
    rst $38                                       ; $0015: $ff
    rst $38                                       ; $0016: $ff
    rst $38                                       ; $0017: $ff

RST_18::
    jp Jump_000_01b6                              ; $0018: $c3 $b6 $01


    rst $38                                       ; $001b: $ff

Jump_000_001c:
    rst $38                                       ; $001c: $ff
    rst $38                                       ; $001d: $ff
    rst $38                                       ; $001e: $ff
    rst $38                                       ; $001f: $ff

RST_20::
    jp Jump_000_2d86                              ; $0020: $c3 $86 $2d


Call_000_0023:
Jump_000_0023:
    rst $38                                       ; $0023: $ff

Jump_000_0024:
    rst $38                                       ; $0024: $ff

Jump_000_0025:
    rst $38                                       ; $0025: $ff

Jump_000_0026:
    rst $38                                       ; $0026: $ff

Jump_000_0027:
    rst $38                                       ; $0027: $ff

RST_28::
    jp Jump_000_2d93                              ; $0028: $c3 $93 $2d


Jump_000_002b:
    rst $38                                       ; $002b: $ff

Call_000_002c:
Jump_000_002c:
    rst $38                                       ; $002c: $ff

Jump_000_002d:
    rst $38                                       ; $002d: $ff

Jump_000_002e:
    rst $38                                       ; $002e: $ff
    rst $38                                       ; $002f: $ff

RST_30::
    jp Jump_000_2d79                              ; $0030: $c3 $79 $2d


Call_000_0033:
Jump_000_0033:
    rst $38                                       ; $0033: $ff
    rst $38                                       ; $0034: $ff

Call_000_0035:
    rst $38                                       ; $0035: $ff

Jump_000_0036:
    rst $38                                       ; $0036: $ff
    rst $38                                       ; $0037: $ff

RST_38::
    rst $38                                       ; $0038: $ff
    rst $38                                       ; $0039: $ff

Jump_000_003a:
    rst $38                                       ; $003a: $ff
    rst $38                                       ; $003b: $ff

Call_000_003c:
Jump_000_003c:
    rst $38                                       ; $003c: $ff
    rst $38                                       ; $003d: $ff
    rst $38                                       ; $003e: $ff

Jump_000_003f:
    rst $38                                       ; $003f: $ff

VBlankInterrupt::
    jp Jump_000_2ef9                              ; $0040: $c3 $f9 $2e


Call_000_0043:
Jump_000_0043:
    rst $38                                       ; $0043: $ff

Call_000_0044:
    rst $38                                       ; $0044: $ff

Call_000_0045:
Jump_000_0045:
    rst $38                                       ; $0045: $ff

Call_000_0046:
Jump_000_0046:
    rst $38                                       ; $0046: $ff

Call_000_0047:
    rst $38                                       ; $0047: $ff

LCDCInterrupt::
    jp Jump_000_2f81                              ; $0048: $c3 $81 $2f


Jump_000_004b:
    rst $38                                       ; $004b: $ff

Call_000_004c:
Jump_000_004c:
    rst $38                                       ; $004c: $ff

Call_000_004d:
Jump_000_004d:
    rst $38                                       ; $004d: $ff

Jump_000_004e:
    rst $38                                       ; $004e: $ff

Call_000_004f:
    rst $38                                       ; $004f: $ff

TimerOverflowInterrupt::
    jp Jump_000_2f6f                              ; $0050: $c3 $6f $2f


Jump_000_0053:
    rst $38                                       ; $0053: $ff
    rst $38                                       ; $0054: $ff

Call_000_0055:
    rst $38                                       ; $0055: $ff
    rst $38                                       ; $0056: $ff

Call_000_0057:
    rst $38                                       ; $0057: $ff

SerialTransferCompleteInterrupt::
    jp Jump_000_2f93                              ; $0058: $c3 $93 $2f


Jump_000_005b:
    rst $38                                       ; $005b: $ff

Call_000_005c:
Jump_000_005c:
    rst $38                                       ; $005c: $ff
    rst $38                                       ; $005d: $ff

Jump_000_005e:
    rst $38                                       ; $005e: $ff

Jump_000_005f:
    rst $38                                       ; $005f: $ff

JoypadTransitionInterrupt::
    reti                                          ; $0060: $d9


Call_000_0061:
    rst $38                                       ; $0061: $ff

Call_000_0062:
Jump_000_0062:
    rst $38                                       ; $0062: $ff

Call_000_0063:
    rst $38                                       ; $0063: $ff
    rst $38                                       ; $0064: $ff

Jump_000_0065:
    rst $38                                       ; $0065: $ff

Call_000_0066:
    rst $38                                       ; $0066: $ff
    rst $38                                       ; $0067: $ff

Jump_000_0068:
    rst $38                                       ; $0068: $ff

Call_000_0069:
Jump_000_0069:
    rst $38                                       ; $0069: $ff

Call_000_006a:
Jump_000_006a:
    rst $38                                       ; $006a: $ff

Call_000_006b:
Jump_000_006b:
    rst $38                                       ; $006b: $ff

Jump_000_006c:
    rst $38                                       ; $006c: $ff

Call_000_006d:
Jump_000_006d:
    rst $38                                       ; $006d: $ff
    rst $38                                       ; $006e: $ff

Call_000_006f:
Jump_000_006f:
    rst $38                                       ; $006f: $ff

Call_000_0070:
    rst $38                                       ; $0070: $ff

Call_000_0071:
    rst $38                                       ; $0071: $ff
    rst $38                                       ; $0072: $ff
    rst $38                                       ; $0073: $ff

Call_000_0074:
    rst $38                                       ; $0074: $ff
    rst $38                                       ; $0075: $ff
    rst $38                                       ; $0076: $ff

Call_000_0077:
    rst $38                                       ; $0077: $ff

Call_000_0078:
    rst $38                                       ; $0078: $ff

Jump_000_0079:
    rst $38                                       ; $0079: $ff

Jump_000_007a:
    rst $38                                       ; $007a: $ff

Call_000_007b:
    rst $38                                       ; $007b: $ff
    rst $38                                       ; $007c: $ff
    rst $38                                       ; $007d: $ff

Jump_000_007e:
    rst $38                                       ; $007e: $ff

Jump_000_007f:
    rst $38                                       ; $007f: $ff

Call_000_0080:
    rst $38                                       ; $0080: $ff

Call_000_0081:
Jump_000_0081:
    rst $38                                       ; $0081: $ff

Call_000_0082:
Jump_000_0082:
    rst $38                                       ; $0082: $ff

Jump_000_0083:
    rst $38                                       ; $0083: $ff

Call_000_0084:
Jump_000_0084:
    rst $38                                       ; $0084: $ff

Call_000_0085:
Jump_000_0085:
    rst $38                                       ; $0085: $ff

Call_000_0086:
Jump_000_0086:
    rst $38                                       ; $0086: $ff
    rst $38                                       ; $0087: $ff

Jump_000_0088:
    rst $38                                       ; $0088: $ff

Call_000_0089:
Jump_000_0089:
    rst $38                                       ; $0089: $ff

Call_000_008a:
Jump_000_008a:
    rst $38                                       ; $008a: $ff
    rst $38                                       ; $008b: $ff

Jump_000_008c:
    rst $38                                       ; $008c: $ff

Jump_000_008d:
    rst $38                                       ; $008d: $ff
    rst $38                                       ; $008e: $ff
    rst $38                                       ; $008f: $ff

Jump_000_0090:
    rst $38                                       ; $0090: $ff

Call_000_0091:
Jump_000_0091:
    rst $38                                       ; $0091: $ff

Call_000_0092:
    rst $38                                       ; $0092: $ff
    rst $38                                       ; $0093: $ff
    rst $38                                       ; $0094: $ff
    rst $38                                       ; $0095: $ff
    rst $38                                       ; $0096: $ff

Jump_000_0097:
    rst $38                                       ; $0097: $ff
    rst $38                                       ; $0098: $ff
    rst $38                                       ; $0099: $ff
    rst $38                                       ; $009a: $ff

Call_000_009b:
    rst $38                                       ; $009b: $ff

Jump_000_009c:
    rst $38                                       ; $009c: $ff
    rst $38                                       ; $009d: $ff

Call_000_009e:
Jump_000_009e:
    rst $38                                       ; $009e: $ff

Jump_000_009f:
    rst $38                                       ; $009f: $ff

Call_000_00a0:
Jump_000_00a0:
    rst $38                                       ; $00a0: $ff

Call_000_00a1:
Jump_000_00a1:
    rst $38                                       ; $00a1: $ff

Call_000_00a2:
Jump_000_00a2:
    rst $38                                       ; $00a2: $ff

Call_000_00a3:
Jump_000_00a3:
    rst $38                                       ; $00a3: $ff

Jump_000_00a4:
    rst $38                                       ; $00a4: $ff
    rst $38                                       ; $00a5: $ff

Call_000_00a6:
Jump_000_00a6:
    rst $38                                       ; $00a6: $ff

Jump_000_00a7:
    rst $38                                       ; $00a7: $ff

Jump_000_00a8:
    rst $38                                       ; $00a8: $ff

Jump_000_00a9:
    rst $38                                       ; $00a9: $ff
    rst $38                                       ; $00aa: $ff

Jump_000_00ab:
    rst $38                                       ; $00ab: $ff

Jump_000_00ac:
    rst $38                                       ; $00ac: $ff

Call_000_00ad:
Jump_000_00ad:
    rst $38                                       ; $00ad: $ff

Jump_000_00ae:
    rst $38                                       ; $00ae: $ff

Jump_000_00af:
    rst $38                                       ; $00af: $ff

Jump_000_00b0:
    rst $38                                       ; $00b0: $ff

Jump_000_00b1:
    rst $38                                       ; $00b1: $ff
    rst $38                                       ; $00b2: $ff
    rst $38                                       ; $00b3: $ff

Jump_000_00b4:
    rst $38                                       ; $00b4: $ff
    rst $38                                       ; $00b5: $ff
    rst $38                                       ; $00b6: $ff
    rst $38                                       ; $00b7: $ff

Jump_000_00b8:
    rst $38                                       ; $00b8: $ff

Call_000_00b9:
    rst $38                                       ; $00b9: $ff
    rst $38                                       ; $00ba: $ff

Jump_000_00bb:
    rst $38                                       ; $00bb: $ff

Jump_000_00bc:
    rst $38                                       ; $00bc: $ff
    rst $38                                       ; $00bd: $ff
    rst $38                                       ; $00be: $ff

Jump_000_00bf:
    rst $38                                       ; $00bf: $ff

Call_000_00c0:
Jump_000_00c0:
    rst $38                                       ; $00c0: $ff

Call_000_00c1:
Jump_000_00c1:
    rst $38                                       ; $00c1: $ff

Call_000_00c2:
Jump_000_00c2:
    rst $38                                       ; $00c2: $ff

Jump_000_00c3:
    rst $38                                       ; $00c3: $ff

Jump_000_00c4:
    rst $38                                       ; $00c4: $ff

Call_000_00c5:
Jump_000_00c5:
    rst $38                                       ; $00c5: $ff

Call_000_00c6:
Jump_000_00c6:
    rst $38                                       ; $00c6: $ff
    rst $38                                       ; $00c7: $ff

Jump_000_00c8:
    rst $38                                       ; $00c8: $ff

Jump_000_00c9:
    rst $38                                       ; $00c9: $ff

Call_000_00ca:
    rst $38                                       ; $00ca: $ff
    rst $38                                       ; $00cb: $ff

Call_000_00cc:
Jump_000_00cc:
    rst $38                                       ; $00cc: $ff

Call_000_00cd:
Jump_000_00cd:
    rst $38                                       ; $00cd: $ff

Jump_000_00ce:
    rst $38                                       ; $00ce: $ff

Call_000_00cf:
Jump_000_00cf:
    rst $38                                       ; $00cf: $ff

Call_000_00d0:
    rst $38                                       ; $00d0: $ff

Call_000_00d1:
Jump_000_00d1:
    rst $38                                       ; $00d1: $ff

Call_000_00d2:
Jump_000_00d2:
    rst $38                                       ; $00d2: $ff

Jump_000_00d3:
    rst $38                                       ; $00d3: $ff
    rst $38                                       ; $00d4: $ff

Call_000_00d5:
    rst $38                                       ; $00d5: $ff

Call_000_00d6:
    rst $38                                       ; $00d6: $ff
    rst $38                                       ; $00d7: $ff

Call_000_00d8:
    rst $38                                       ; $00d8: $ff
    rst $38                                       ; $00d9: $ff
    rst $38                                       ; $00da: $ff

Jump_000_00db:
    rst $38                                       ; $00db: $ff

Call_000_00dc:
Jump_000_00dc:
    rst $38                                       ; $00dc: $ff

Call_000_00dd:
    rst $38                                       ; $00dd: $ff
    rst $38                                       ; $00de: $ff

Jump_000_00df:
    rst $38                                       ; $00df: $ff

Call_000_00e0:
Jump_000_00e0:
    rst $38                                       ; $00e0: $ff

Call_000_00e1:
Jump_000_00e1:
    rst $38                                       ; $00e1: $ff

Jump_000_00e2:
    rst $38                                       ; $00e2: $ff

Call_000_00e3:
Jump_000_00e3:
    rst $38                                       ; $00e3: $ff

Call_000_00e4:
Jump_000_00e4:
    rst $38                                       ; $00e4: $ff

Call_000_00e5:
Jump_000_00e5:
    rst $38                                       ; $00e5: $ff

Jump_000_00e6:
    rst $38                                       ; $00e6: $ff

Call_000_00e7:
Jump_000_00e7:
    rst $38                                       ; $00e7: $ff
    rst $38                                       ; $00e8: $ff
    rst $38                                       ; $00e9: $ff
    rst $38                                       ; $00ea: $ff

Call_000_00eb:
Jump_000_00eb:
    rst $38                                       ; $00eb: $ff

Call_000_00ec:
Jump_000_00ec:
    rst $38                                       ; $00ec: $ff

Call_000_00ed:
Jump_000_00ed:
    rst $38                                       ; $00ed: $ff
    rst $38                                       ; $00ee: $ff

Call_000_00ef:
Jump_000_00ef:
    rst $38                                       ; $00ef: $ff

Call_000_00f0:
Jump_000_00f0:
    rst $38                                       ; $00f0: $ff

Call_000_00f1:
Jump_000_00f1:
    rst $38                                       ; $00f1: $ff

Call_000_00f2:
    rst $38                                       ; $00f2: $ff
    rst $38                                       ; $00f3: $ff
    rst $38                                       ; $00f4: $ff
    rst $38                                       ; $00f5: $ff
    rst $38                                       ; $00f6: $ff

Call_000_00f7:
Jump_000_00f7:
    rst $38                                       ; $00f7: $ff

Call_000_00f8:
Jump_000_00f8:
    rst $38                                       ; $00f8: $ff

Call_000_00f9:
    rst $38                                       ; $00f9: $ff
    rst $38                                       ; $00fa: $ff
    rst $38                                       ; $00fb: $ff

Call_000_00fc:
    rst $38                                       ; $00fc: $ff

Call_000_00fd:
Jump_000_00fd:
    rst $38                                       ; $00fd: $ff

Jump_000_00fe:
    rst $38                                       ; $00fe: $ff

Call_000_00ff:
Jump_000_00ff:
    rst $38                                       ; $00ff: $ff

Boot::
    nop                                           ; $0100: $00

Call_000_0101:
Jump_000_0101:
    jp Jump_000_0150                              ; $0101: $c3 $50 $01


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "MARIO GOLF", $00

HeaderManufacturerCode::
    db "AWXE"

HeaderCGBFlag::
    db $c0

HeaderNewLicenseeCode::
    db $30, $31

HeaderSGBFlag::
    db $00

HeaderCartridgeType::
    db $1b

HeaderROMSize::
    db $06

HeaderRAMSize::
    db $02

HeaderDestinationCode::
    db $01

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $7a

HeaderGlobalChecksum::
    db $0f, $c7

Jump_000_0150:
    jp Jump_000_2da0                              ; $0150: $c3 $a0 $2d


    add hl, sp                                    ; $0153: $39
    add hl, sp                                    ; $0154: $39
    jr nc, jr_000_018f                            ; $0155: $30 $38

    ld [hl-], a                                   ; $0157: $32
    jr nc, jr_000_018c                            ; $0158: $30 $32

    ld sp, $3831                                  ; $015a: $31 $31 $38
    nop                                           ; $015d: $00

Call_000_015e:
    push hl                                       ; $015e: $e5
    push hl                                       ; $015f: $e5

Jump_000_0160:
    push hl                                       ; $0160: $e5
    push af                                       ; $0161: $f5
    ld hl, sp+$04                                 ; $0162: $f8 $04

Call_000_0164:
    ld [hl], $75                                  ; $0164: $36 $75

Jump_000_0166:
    inc hl                                        ; $0166: $23

Call_000_0167:
    ld [hl], $01                                  ; $0167: $36 $01

Call_000_0169:
    inc hl                                        ; $0169: $23
    ldh a, [$95]                                  ; $016a: $f0 $95

Call_000_016c:
    ld [hl], a                                    ; $016c: $77
    pop af                                        ; $016d: $f1

Jump_000_016e:
    ldh [$95], a                                  ; $016e: $e0 $95

Call_000_0170:
    ld [$2000], a                                 ; $0170: $ea $00 $20
    pop hl                                        ; $0173: $e1
    jp hl                                         ; $0174: $e9


    push af                                       ; $0175: $f5
    push hl                                       ; $0176: $e5
    ld hl, sp+$04                                 ; $0177: $f8 $04

Call_000_0179:
    ld a, [hl]                                    ; $0179: $7e
    ldh [$95], a                                  ; $017a: $e0 $95
    ld [$2000], a                                 ; $017c: $ea $00 $20

Jump_000_017f:
    pop hl                                        ; $017f: $e1

Jump_000_0180:
    pop af                                        ; $0180: $f1

Call_000_0181:
Jump_000_0181:
    inc sp                                        ; $0181: $33
    inc sp                                        ; $0182: $33

Jump_000_0183:
    ret                                           ; $0183: $c9


Call_000_0184:
    push hl                                       ; $0184: $e5

Jump_000_0185:
    push hl                                       ; $0185: $e5
    push hl                                       ; $0186: $e5
    push af                                       ; $0187: $f5
    ld hl, sp+$04                                 ; $0188: $f8 $04
    ld [hl], $a7                                  ; $018a: $36 $a7

jr_000_018c:
    inc hl                                        ; $018c: $23

Call_000_018d:
    ld [hl], $01                                  ; $018d: $36 $01

jr_000_018f:
    inc hl                                        ; $018f: $23

Call_000_0190:
    ldh a, [$95]                                  ; $0190: $f0 $95
    ld [hl], a                                    ; $0192: $77
    pop af                                        ; $0193: $f1
    ldh [$95], a                                  ; $0194: $e0 $95

Jump_000_0196:
    ld [$2000], a                                 ; $0196: $ea $00 $20
    pop hl                                        ; $0199: $e1
    ld a, b                                       ; $019a: $78
    add a                                         ; $019b: $87
    add l                                         ; $019c: $85
    ld l, a                                       ; $019d: $6f
    jr nc, jr_000_01a1                            ; $019e: $30 $01

Call_000_01a0:
Jump_000_01a0:
    inc h                                         ; $01a0: $24

Call_000_01a1:
jr_000_01a1:
    ld a, [hl+]                                   ; $01a1: $2a

Call_000_01a2:
Jump_000_01a2:
    ld h, [hl]                                    ; $01a2: $66

Jump_000_01a3:
    ld l, a                                       ; $01a3: $6f
    or h                                          ; $01a4: $b4
    ret z                                         ; $01a5: $c8

Jump_000_01a6:
    jp hl                                         ; $01a6: $e9


    push af                                       ; $01a7: $f5

Jump_000_01a8:
    push hl                                       ; $01a8: $e5
    ld hl, sp+$04                                 ; $01a9: $f8 $04
    ld a, [hl]                                    ; $01ab: $7e
    ldh [$95], a                                  ; $01ac: $e0 $95

Jump_000_01ae:
    ld [$2000], a                                 ; $01ae: $ea $00 $20
    pop hl                                        ; $01b1: $e1
    pop af                                        ; $01b2: $f1
    inc sp                                        ; $01b3: $33
    inc sp                                        ; $01b4: $33
    ret                                           ; $01b5: $c9


Jump_000_01b6:
    push hl                                       ; $01b6: $e5
    push af                                       ; $01b7: $f5

Call_000_01b8:
    ld hl, sp+$00                                 ; $01b8: $f8 $00
    ldh a, [$95]                                  ; $01ba: $f0 $95
    ld [hl], a                                    ; $01bc: $77
    ld hl, sp+$04                                 ; $01bd: $f8 $04
    push de                                       ; $01bf: $d5

Jump_000_01c0:
    ld a, [hl+]                                   ; $01c0: $2a

Call_000_01c1:
Jump_000_01c1:
    ld e, a                                       ; $01c1: $5f
    ld d, [hl]                                    ; $01c2: $56

Call_000_01c3:
Jump_000_01c3:
    ld a, [de]                                    ; $01c3: $1a

Jump_000_01c4:
    inc de                                        ; $01c4: $13

Jump_000_01c5:
    ld [hl], a                                    ; $01c5: $77
    ld a, [de]                                    ; $01c6: $1a
    ldh [$95], a                                  ; $01c7: $e0 $95
    ld [$2000], a                                 ; $01c9: $ea $00 $20
    inc de                                        ; $01cc: $13

Jump_000_01cd:
    ld a, [hl]                                    ; $01cd: $7e
    ld [hl], d                                    ; $01ce: $72
    dec hl                                        ; $01cf: $2b

Jump_000_01d0:
    ld [hl], e                                    ; $01d0: $73
    pop de                                        ; $01d1: $d1
    call Call_000_01e6                            ; $01d2: $cd $e6 $01

Call_000_01d5:
    push af                                       ; $01d5: $f5
    push hl                                       ; $01d6: $e5
    ld hl, sp+$04                                 ; $01d7: $f8 $04
    ld a, [hl]                                    ; $01d9: $7e
    ldh [$95], a                                  ; $01da: $e0 $95

Call_000_01dc:
    ld [$2000], a                                 ; $01dc: $ea $00 $20
    pop hl                                        ; $01df: $e1

Call_000_01e0:
Jump_000_01e0:
    pop af                                        ; $01e0: $f1

Call_000_01e1:
Jump_000_01e1:
    inc sp                                        ; $01e1: $33

Jump_000_01e2:
    inc sp                                        ; $01e2: $33

Jump_000_01e3:
    inc sp                                        ; $01e3: $33
    inc sp                                        ; $01e4: $33

Call_000_01e5:
    ret                                           ; $01e5: $c9


Call_000_01e6:
Jump_000_01e6:
    ld h, $40                                     ; $01e6: $26 $40
    ld l, a                                       ; $01e8: $6f
    ld a, [hl+]                                   ; $01e9: $2a

Jump_000_01ea:
    ld h, [hl]                                    ; $01ea: $66
    ld l, a                                       ; $01eb: $6f

Jump_000_01ec:
    push hl                                       ; $01ec: $e5
    ld hl, sp+$05                                 ; $01ed: $f8 $05
    ld a, [hl+]                                   ; $01ef: $2a
    push af                                       ; $01f0: $f5
    ld a, [hl+]                                   ; $01f1: $2a
    ld h, [hl]                                    ; $01f2: $66
    ld l, a                                       ; $01f3: $6f
    pop af                                        ; $01f4: $f1
    ret                                           ; $01f5: $c9


Jump_000_01f6:
    ld hl, sp+$00                                 ; $01f6: $f8 $00

Jump_000_01f8:
    ldh a, [$95]                                  ; $01f8: $f0 $95

Call_000_01fa:
Jump_000_01fa:
    push af                                       ; $01fa: $f5
    ld a, [hl+]                                   ; $01fb: $2a

Jump_000_01fc:
    ld h, [hl]                                    ; $01fc: $66
    ld l, a                                       ; $01fd: $6f

Call_000_01fe:
Jump_000_01fe:
    ld a, [hl+]                                   ; $01fe: $2a

Call_000_01ff:
Jump_000_01ff:
    ld e, a                                       ; $01ff: $5f

Call_000_0200:
Jump_000_0200:
    ld a, [hl]                                    ; $0200: $7e

Jump_000_0201:
    ldh [$95], a                                  ; $0201: $e0 $95

Call_000_0203:
    ld [$2000], a                                 ; $0203: $ea $00 $20
    call Call_000_0213                            ; $0206: $cd $13 $02
    pop af                                        ; $0209: $f1

Jump_000_020a:
    ldh [$95], a                                  ; $020a: $e0 $95
    ld [$2000], a                                 ; $020c: $ea $00 $20

Call_000_020f:
Jump_000_020f:
    pop hl                                        ; $020f: $e1
    inc hl                                        ; $0210: $23
    inc hl                                        ; $0211: $23
    jp hl                                         ; $0212: $e9


Call_000_0213:
    ld h, $40                                     ; $0213: $26 $40
    ld l, e                                       ; $0215: $6b
    ld a, [hl+]                                   ; $0216: $2a
    ld h, [hl]                                    ; $0217: $66
    ld l, a                                       ; $0218: $6f
    jp hl                                         ; $0219: $e9


Call_000_021a:
    push af                                       ; $021a: $f5
    ldh a, [$95]                                  ; $021b: $f0 $95
    push af                                       ; $021d: $f5
    ld a, h                                       ; $021e: $7c
    ldh [$95], a                                  ; $021f: $e0 $95

Call_000_0221:
    ld [$2000], a                                 ; $0221: $ea $00 $20
    ld h, $40                                     ; $0224: $26 $40
    ld a, [hl+]                                   ; $0226: $2a
    ld h, [hl]                                    ; $0227: $66
    ld l, a                                       ; $0228: $6f
    call MemCopy                            ; $0229: $cd $d3 $03
    pop af                                        ; $022c: $f1

Call_000_022d:
    ldh [$95], a                                  ; $022d: $e0 $95

Jump_000_022f:
    ld [$2000], a                                 ; $022f: $ea $00 $20
    pop af                                        ; $0232: $f1

Call_000_0233:
    ret                                           ; $0233: $c9


Call_000_0234:
    push af                                       ; $0234: $f5
    ldh a, [$95]                                  ; $0235: $f0 $95
    push af                                       ; $0237: $f5
    ld a, h                                       ; $0238: $7c
    ldh [$95], a                                  ; $0239: $e0 $95
    ld [$2000], a                                 ; $023b: $ea $00 $20
    ld h, $40                                     ; $023e: $26 $40
    ld a, [hl+]                                   ; $0240: $2a

Jump_000_0241:
    ld h, [hl]                                    ; $0241: $66
    ld l, a                                       ; $0242: $6f
    call Call_000_1f2f                            ; $0243: $cd $2f $1f

Jump_000_0246:
    pop af                                        ; $0246: $f1

Jump_000_0247:
    ldh [$95], a                                  ; $0247: $e0 $95
    ld [$2000], a                                 ; $0249: $ea $00 $20
    pop af                                        ; $024c: $f1
    ret                                           ; $024d: $c9


Jump_000_024e:
    ld a, $01                                     ; $024e: $3e $01

Call_000_0250:
    ldh [rVBK], a                                 ; $0250: $e0 $4f

Call_000_0252:
    ld hl, $8000                                  ; $0252: $21 $00 $80
    ld bc, $0200                                  ; $0255: $01 $00 $02

Call_000_0258:
    call Call_000_03bc                            ; $0258: $cd $bc $03
    xor a                                         ; $025b: $af
    ldh [rVBK], a                                 ; $025c: $e0 $4f
    ld hl, $8000                                  ; $025e: $21 $00 $80

Call_000_0261:
Jump_000_0261:
    ld bc, $0200                                  ; $0261: $01 $00 $02

Jump_000_0264:
    jp Jump_000_03bc                              ; $0264: $c3 $bc $03


Call_000_0267:
Jump_000_0267:
    ld a, $01                                     ; $0267: $3e $01
    ldh [rVBK], a                                 ; $0269: $e0 $4f
    ld hl, $9800                                  ; $026b: $21 $00 $98
    ld c, $80                                     ; $026e: $0e $80
    call Call_000_03a7                            ; $0270: $cd $a7 $03

Jump_000_0273:
    xor a                                         ; $0273: $af
    ldh [rVBK], a                                 ; $0274: $e0 $4f
    ld hl, $9800                                  ; $0276: $21 $00 $98
    ld c, $80                                     ; $0279: $0e $80
    call Call_000_03a7                            ; $027b: $cd $a7 $03
    ret                                           ; $027e: $c9


Call_000_027f:
    ld a, $80                                     ; $027f: $3e $80

Jump_000_0281:
    ldh [rBCPS], a                                ; $0281: $e0 $68
    ld c, $69                                     ; $0283: $0e $69
    jr jr_000_028d                                ; $0285: $18 $06

Call_000_0287:
    ld a, $80                                     ; $0287: $3e $80

Call_000_0289:
    ldh [rOCPS], a                                ; $0289: $e0 $6a
    ld c, $6b                                     ; $028b: $0e $6b

jr_000_028d:
    ld b, $08                                     ; $028d: $06 $08

Jump_000_028f:
jr_000_028f:
    ld a, [hl+]                                   ; $028f: $2a

Jump_000_0290:
    ld [c], a                                     ; $0290: $e2
    ld a, [hl+]                                   ; $0291: $2a

Jump_000_0292:
    ld [c], a                                     ; $0292: $e2
    ld a, [hl+]                                   ; $0293: $2a
    ld [c], a                                     ; $0294: $e2
    ld a, [hl+]                                   ; $0295: $2a
    ld [c], a                                     ; $0296: $e2
    ld a, [hl+]                                   ; $0297: $2a
    ld [c], a                                     ; $0298: $e2
    ld a, [hl+]                                   ; $0299: $2a
    ld [c], a                                     ; $029a: $e2
    ld a, [hl+]                                   ; $029b: $2a
    ld [c], a                                     ; $029c: $e2
    ld a, [hl+]                                   ; $029d: $2a
    ld [c], a                                     ; $029e: $e2
    dec b                                         ; $029f: $05

Call_000_02a0:
Jump_000_02a0:
    jr nz, jr_000_028f                            ; $02a0: $20 $ed

Call_000_02a2:
Jump_000_02a2:
    ret                                           ; $02a2: $c9


Call_000_02a3:
    ldh a, [rKEY1]                                ; $02a3: $f0 $4d
    bit 7, a                                      ; $02a5: $cb $7f
    ret nz                                        ; $02a7: $c0

    ld a, $01                                     ; $02a8: $3e $01
    ldh [rKEY1], a                                ; $02aa: $e0 $4d
    ldh a, [rIE]                                  ; $02ac: $f0 $ff
    push af                                       ; $02ae: $f5
    xor a                                         ; $02af: $af

Jump_000_02b0:
    ldh [rIE], a                                  ; $02b0: $e0 $ff
    ld a, $30                                     ; $02b2: $3e $30
    ldh [rP1], a                                  ; $02b4: $e0 $00
    stop                                          ; $02b6: $10 $00

jr_000_02b8:
    ldh a, [rKEY1]                                ; $02b8: $f0 $4d
    bit 7, a                                      ; $02ba: $cb $7f
    jr z, jr_000_02b8                             ; $02bc: $28 $fa

    xor a                                         ; $02be: $af
    ldh [rP1], a                                  ; $02bf: $e0 $00

Jump_000_02c1:
    ldh [rIF], a                                  ; $02c1: $e0 $0f

Call_000_02c3:
Jump_000_02c3:
    pop af                                        ; $02c3: $f1
    ldh [rIE], a                                  ; $02c4: $e0 $ff

Call_000_02c6:
    ret                                           ; $02c6: $c9


Jump_000_02c7:
    ldh a, [rKEY1]                                ; $02c7: $f0 $4d
    bit 7, a                                      ; $02c9: $cb $7f
    ret z                                         ; $02cb: $c8

    ld a, $01                                     ; $02cc: $3e $01

Call_000_02ce:
    ldh [rKEY1], a                                ; $02ce: $e0 $4d
    ldh a, [rIE]                                  ; $02d0: $f0 $ff
    push af                                       ; $02d2: $f5

Jump_000_02d3:
    xor a                                         ; $02d3: $af
    ldh [rIE], a                                  ; $02d4: $e0 $ff
    ld a, $30                                     ; $02d6: $3e $30
    ldh [rP1], a                                  ; $02d8: $e0 $00
    stop                                          ; $02da: $10 $00

Call_000_02dc:
jr_000_02dc:
    ldh a, [rKEY1]                                ; $02dc: $f0 $4d
    bit 7, a                                      ; $02de: $cb $7f

Call_000_02e0:
Jump_000_02e0:
    jr nz, jr_000_02dc                            ; $02e0: $20 $fa

Jump_000_02e2:
    xor a                                         ; $02e2: $af

Call_000_02e3:
Jump_000_02e3:
    ldh [rP1], a                                  ; $02e3: $e0 $00
    ldh [rIF], a                                  ; $02e5: $e0 $0f
    pop af                                        ; $02e7: $f1

Jump_000_02e8:
    ldh [rIE], a                                  ; $02e8: $e0 $ff

Jump_000_02ea:
    ret                                           ; $02ea: $c9


Call_000_02eb:
    ld a, $20                                     ; $02eb: $3e $20

Call_000_02ed:
    ldh [rP1], a                                  ; $02ed: $e0 $00

Call_000_02ef:
    ldh a, [rP1]                                  ; $02ef: $f0 $00
    ldh a, [rP1]                                  ; $02f1: $f0 $00
    cpl                                           ; $02f3: $2f
    and $0f                                       ; $02f4: $e6 $0f
    swap a                                        ; $02f6: $cb $37

Jump_000_02f8:
    ld b, a                                       ; $02f8: $47

Jump_000_02f9:
    ld a, $10                                     ; $02f9: $3e $10

Call_000_02fb:
    ldh [rP1], a                                  ; $02fb: $e0 $00

Call_000_02fd:
    ldh a, [rP1]                                  ; $02fd: $f0 $00

Jump_000_02ff:
    ldh a, [rP1]                                  ; $02ff: $f0 $00

Jump_000_0301:
    ldh a, [rP1]                                  ; $0301: $f0 $00

Jump_000_0303:
    ldh a, [rP1]                                  ; $0303: $f0 $00
    ldh a, [rP1]                                  ; $0305: $f0 $00
    ldh a, [rP1]                                  ; $0307: $f0 $00
    cpl                                           ; $0309: $2f
    and $0f                                       ; $030a: $e6 $0f

Call_000_030c:
    or b                                          ; $030c: $b0

Jump_000_030d:
    ld c, a                                       ; $030d: $4f

Call_000_030e:
    ldh a, [$90]                                  ; $030e: $f0 $90

Call_000_0310:
Jump_000_0310:
    xor c                                         ; $0310: $a9
    and c                                         ; $0311: $a1
    ldh [$94], a                                  ; $0312: $e0 $94
    ld a, c                                       ; $0314: $79
    ldh [$90], a                                  ; $0315: $e0 $90
    ld a, $30                                     ; $0317: $3e $30
    ldh [rP1], a                                  ; $0319: $e0 $00
    ldh a, [$90]                                  ; $031b: $f0 $90
    ld b, a                                       ; $031d: $47
    or a                                          ; $031e: $b7
    jr z, jr_000_0337                             ; $031f: $28 $16

Jump_000_0321:
    ldh a, [$92]                                  ; $0321: $f0 $92
    cp b                                          ; $0323: $b8
    jr nz, jr_000_0337                            ; $0324: $20 $11

    ldh a, [$93]                                  ; $0326: $f0 $93
    dec a                                         ; $0328: $3d
    jr nz, jr_000_0332                            ; $0329: $20 $07

    ldh a, [$a6]                                  ; $032b: $f0 $a6

Jump_000_032d:
    ldh [$93], a                                  ; $032d: $e0 $93
    ld a, b                                       ; $032f: $78

Call_000_0330:
Jump_000_0330:
    jr jr_000_033e                                ; $0330: $18 $0c

jr_000_0332:
    ldh [$93], a                                  ; $0332: $e0 $93

Call_000_0334:
    xor a                                         ; $0334: $af
    jr jr_000_033e                                ; $0335: $18 $07

jr_000_0337:
    ld a, $12                                     ; $0337: $3e $12
    ldh [$93], a                                  ; $0339: $e0 $93
    ld a, b                                       ; $033b: $78

Jump_000_033c:
    ldh [$92], a                                  ; $033c: $e0 $92

jr_000_033e:
    ldh [$91], a                                  ; $033e: $e0 $91

Call_000_0340:
    ret                                           ; $0340: $c9


Call_000_0341:
Jump_000_0341:
    ldh a, [rLCDC]                                ; $0341: $f0 $40
    bit 7, a                                      ; $0343: $cb $7f
    jr z, jr_000_0362                             ; $0345: $28 $1b

    ldh a, [rIE]                                  ; $0347: $f0 $ff
    ldh [$9f], a                                  ; $0349: $e0 $9f

Jump_000_034b:
    res 0, a                                      ; $034b: $cb $87
    ldh [rIE], a                                  ; $034d: $e0 $ff

jr_000_034f:
    ldh a, [rLY]                                  ; $034f: $f0 $44
    cp $91                                        ; $0351: $fe $91
    jr nz, jr_000_034f                            ; $0353: $20 $fa

    ldh a, [rLCDC]                                ; $0355: $f0 $40
    and $7f                                       ; $0357: $e6 $7f

Call_000_0359:
    ldh [rLCDC], a                                ; $0359: $e0 $40
    xor a                                         ; $035b: $af

Call_000_035c:
    ldh [rIF], a                                  ; $035c: $e0 $0f
    ldh a, [$9f]                                  ; $035e: $f0 $9f

Call_000_0360:
Jump_000_0360:
    ldh [rIE], a                                  ; $0360: $e0 $ff

jr_000_0362:
    push hl                                       ; $0362: $e5

Call_000_0363:
Jump_000_0363:
    push bc                                       ; $0363: $c5
    call Call_000_0458                            ; $0364: $cd $58 $04
    xor a                                         ; $0367: $af
    ld hl, $ffb8                                  ; $0368: $21 $b8 $ff

Jump_000_036b:
    ld [hl+], a                                   ; $036b: $22
    ld [hl+], a                                   ; $036c: $22

Jump_000_036d:
    ld [hl+], a                                   ; $036d: $22
    pop bc                                        ; $036e: $c1
    pop hl                                        ; $036f: $e1
    ret                                           ; $0370: $c9


Call_000_0371:
    ldh a, [rLCDC]                                ; $0371: $f0 $40
    or $80                                        ; $0373: $f6 $80
    ldh [rLCDC], a                                ; $0375: $e0 $40
    rst $10                                       ; $0377: $d7

    db $02, $7e

Call_000_037a:
    ret                                           ; $037a: $c9


Call_000_037b:
    ldh a, [$fe]                                  ; $037b: $f0 $fe
    and a                                         ; $037d: $a7
    jp nz, Jump_000_024e                          ; $037e: $c2 $4e $02

Call_000_0381:
Jump_000_0381:
    ld hl, $8000                                  ; $0381: $21 $00 $80
    ld bc, $0200                                  ; $0384: $01 $00 $02
    call Call_000_03bc                            ; $0387: $cd $bc $03
    ret                                           ; $038a: $c9


    ldh a, [$fe]                                  ; $038b: $f0 $fe
    and a                                         ; $038d: $a7
    jp nz, Jump_000_0267                          ; $038e: $c2 $67 $02

    ld hl, $9800                                  ; $0391: $21 $00 $98
    ld bc, $0400                                  ; $0394: $01 $00 $04

jr_000_0397:
    xor a                                         ; $0397: $af
    ld [hl+], a                                   ; $0398: $22
    dec bc                                        ; $0399: $0b

Jump_000_039a:
    ld a, b                                       ; $039a: $78
    or c                                          ; $039b: $b1

Jump_000_039c:
    jr nz, jr_000_0397                            ; $039c: $20 $f9

    ret                                           ; $039e: $c9


Call_000_039f:
jr_000_039f:
    xor a                                         ; $039f: $af

Call_000_03a0:
Jump_000_03a0:
    ld [hl+], a                                   ; $03a0: $22
    dec bc                                        ; $03a1: $0b
    ld a, c                                       ; $03a2: $79
    or b                                          ; $03a3: $b0
    jr nz, jr_000_039f                            ; $03a4: $20 $f9

    ret                                           ; $03a6: $c9


Call_000_03a7:
Jump_000_03a7:
    xor a                                         ; $03a7: $af

Jump_000_03a8:
jr_000_03a8:
    ld [hl+], a                                   ; $03a8: $22
    ld [hl+], a                                   ; $03a9: $22

Jump_000_03aa:
    ld [hl+], a                                   ; $03aa: $22
    ld [hl+], a                                   ; $03ab: $22
    ld [hl+], a                                   ; $03ac: $22
    ld [hl+], a                                   ; $03ad: $22

Call_000_03ae:
    ld [hl+], a                                   ; $03ae: $22
    ld [hl+], a                                   ; $03af: $22
    ld [hl+], a                                   ; $03b0: $22
    ld [hl+], a                                   ; $03b1: $22
    ld [hl+], a                                   ; $03b2: $22

Call_000_03b3:
    ld [hl+], a                                   ; $03b3: $22
    ld [hl+], a                                   ; $03b4: $22
    ld [hl+], a                                   ; $03b5: $22
    ld [hl+], a                                   ; $03b6: $22
    ld [hl+], a                                   ; $03b7: $22
    dec c                                         ; $03b8: $0d
    jr nz, jr_000_03a8                            ; $03b9: $20 $ed

    ret                                           ; $03bb: $c9


Call_000_03bc:
Jump_000_03bc:
jr_000_03bc:
    xor a                                         ; $03bc: $af

Call_000_03bd:
    ld [hl+], a                                   ; $03bd: $22

Jump_000_03be:
    ld [hl+], a                                   ; $03be: $22

Call_000_03bf:
    ld [hl+], a                                   ; $03bf: $22

Call_000_03c0:
Jump_000_03c0:
    ld [hl+], a                                   ; $03c0: $22

Jump_000_03c1:
    ld [hl+], a                                   ; $03c1: $22
    ld [hl+], a                                   ; $03c2: $22

Jump_000_03c3:
    ld [hl+], a                                   ; $03c3: $22

Jump_000_03c4:
    ld [hl+], a                                   ; $03c4: $22
    ld [hl+], a                                   ; $03c5: $22
    ld [hl+], a                                   ; $03c6: $22
    ld [hl+], a                                   ; $03c7: $22
    ld [hl+], a                                   ; $03c8: $22
    ld [hl+], a                                   ; $03c9: $22
    ld [hl+], a                                   ; $03ca: $22
    ld [hl+], a                                   ; $03cb: $22
    ld [hl+], a                                   ; $03cc: $22
    dec bc                                        ; $03cd: $0b

Call_000_03ce:
    ld a, b                                       ; $03ce: $78

Call_000_03cf:
    or c                                          ; $03cf: $b1
    jr nz, jr_000_03bc                            ; $03d0: $20 $ea

    ret                                           ; $03d2: $c9


MemCopy: ; copy bc bytes from *hl to *de in the forward direction
    inc c                                         ; $03d3: $0c
    dec c                                         ; $03d4: $0d

Call_000_03d5: ; this looks like an accidental xref from data
    jr z, jr_000_03d8                             ; $03d5: $28 $01

    inc b                                         ; $03d7: $04

jr_000_03d8:
    ld a, [hl+]                                   ; $03d8: $2a
    ld [de], a                                    ; $03d9: $12
    inc de                                        ; $03da: $13

Jump_000_03db:
    dec c                                         ; $03db: $0d
    jr nz, jr_000_03d8                            ; $03dc: $20 $fa

    dec b                                         ; $03de: $05

Jump_000_03df:
    jr nz, jr_000_03d8                            ; $03df: $20 $f7

Jump_000_03e1:
    ret                                           ; $03e1: $c9


Call_000_03e2:
Jump_000_03e2:
jr_000_03e2:
    ld a, [hl-]                                   ; $03e2: $3a

Jump_000_03e3:
    ld [de], a                                    ; $03e3: $12

Jump_000_03e4:
    dec de                                        ; $03e4: $1b

Jump_000_03e5:
    dec bc                                        ; $03e5: $0b
    ld a, b                                       ; $03e6: $78

Jump_000_03e7:
    or c                                          ; $03e7: $b1
    jr nz, jr_000_03e2                            ; $03e8: $20 $f8

    ret                                           ; $03ea: $c9


Call_000_03eb:
    ld a, $0f                                     ; $03eb: $3e $0f
    and e                                         ; $03ed: $a3
    jr z, jr_000_0424                             ; $03ee: $28 $34

jr_000_03f0:
    ld a, [hl+]                                   ; $03f0: $2a
    ld [de], a                                    ; $03f1: $12
    inc de                                        ; $03f2: $13
    ld a, [hl+]                                   ; $03f3: $2a
    ld [de], a                                    ; $03f4: $12
    inc de                                        ; $03f5: $13

Jump_000_03f6:
    ld a, [hl+]                                   ; $03f6: $2a

Call_000_03f7:
    ld [de], a                                    ; $03f7: $12
    inc de                                        ; $03f8: $13
    ld a, [hl+]                                   ; $03f9: $2a

Jump_000_03fa:
    ld [de], a                                    ; $03fa: $12
    inc de                                        ; $03fb: $13

Call_000_03fc:
    ld a, [hl+]                                   ; $03fc: $2a

Jump_000_03fd:
    ld [de], a                                    ; $03fd: $12

Jump_000_03fe:
    inc de                                        ; $03fe: $13

Call_000_03ff:
Jump_000_03ff:
    ld a, [hl+]                                   ; $03ff: $2a

Call_000_0400:
Jump_000_0400:
    ld [de], a                                    ; $0400: $12

Call_000_0401:
Jump_000_0401:
    inc de                                        ; $0401: $13

Call_000_0402:
Jump_000_0402:
    ld a, [hl+]                                   ; $0402: $2a

Call_000_0403:
Jump_000_0403:
    ld [de], a                                    ; $0403: $12

Jump_000_0404:
    inc de                                        ; $0404: $13
    ld a, [hl+]                                   ; $0405: $2a
    ld [de], a                                    ; $0406: $12
    inc de                                        ; $0407: $13
    ld a, [hl+]                                   ; $0408: $2a
    ld [de], a                                    ; $0409: $12
    inc de                                        ; $040a: $13
    ld a, [hl+]                                   ; $040b: $2a

Call_000_040c:
    ld [de], a                                    ; $040c: $12

Jump_000_040d:
    inc de                                        ; $040d: $13
    ld a, [hl+]                                   ; $040e: $2a

Jump_000_040f:
    ld [de], a                                    ; $040f: $12
    inc de                                        ; $0410: $13
    ld a, [hl+]                                   ; $0411: $2a
    ld [de], a                                    ; $0412: $12
    inc de                                        ; $0413: $13
    ld a, [hl+]                                   ; $0414: $2a
    ld [de], a                                    ; $0415: $12
    inc de                                        ; $0416: $13
    ld a, [hl+]                                   ; $0417: $2a
    ld [de], a                                    ; $0418: $12
    inc de                                        ; $0419: $13
    ld a, [hl+]                                   ; $041a: $2a
    ld [de], a                                    ; $041b: $12
    inc de                                        ; $041c: $13

Jump_000_041d:
    ld a, [hl+]                                   ; $041d: $2a
    ld [de], a                                    ; $041e: $12
    inc de                                        ; $041f: $13
    dec c                                         ; $0420: $0d

Jump_000_0421:
    jr nz, jr_000_03f0                            ; $0421: $20 $cd

Jump_000_0423:
    ret                                           ; $0423: $c9


Jump_000_0424:
jr_000_0424:
    ld a, [hl+]                                   ; $0424: $2a
    ld [de], a                                    ; $0425: $12

Call_000_0426:
Jump_000_0426:
    inc e                                         ; $0426: $1c
    ld a, [hl+]                                   ; $0427: $2a
    ld [de], a                                    ; $0428: $12
    inc e                                         ; $0429: $1c
    ld a, [hl+]                                   ; $042a: $2a
    ld [de], a                                    ; $042b: $12
    inc e                                         ; $042c: $1c
    ld a, [hl+]                                   ; $042d: $2a
    ld [de], a                                    ; $042e: $12
    inc e                                         ; $042f: $1c
    ld a, [hl+]                                   ; $0430: $2a
    ld [de], a                                    ; $0431: $12
    inc e                                         ; $0432: $1c
    ld a, [hl+]                                   ; $0433: $2a
    ld [de], a                                    ; $0434: $12
    inc e                                         ; $0435: $1c
    ld a, [hl+]                                   ; $0436: $2a
    ld [de], a                                    ; $0437: $12
    inc e                                         ; $0438: $1c
    ld a, [hl+]                                   ; $0439: $2a

Jump_000_043a:
    ld [de], a                                    ; $043a: $12
    inc e                                         ; $043b: $1c

Call_000_043c:
    ld a, [hl+]                                   ; $043c: $2a
    ld [de], a                                    ; $043d: $12
    inc e                                         ; $043e: $1c

Call_000_043f:
    ld a, [hl+]                                   ; $043f: $2a
    ld [de], a                                    ; $0440: $12
    inc e                                         ; $0441: $1c
    ld a, [hl+]                                   ; $0442: $2a
    ld [de], a                                    ; $0443: $12

Jump_000_0444:
    inc e                                         ; $0444: $1c
    ld a, [hl+]                                   ; $0445: $2a

Call_000_0446:
    ld [de], a                                    ; $0446: $12

Jump_000_0447:
    inc e                                         ; $0447: $1c
    ld a, [hl+]                                   ; $0448: $2a
    ld [de], a                                    ; $0449: $12
    inc e                                         ; $044a: $1c

Call_000_044b:
    ld a, [hl+]                                   ; $044b: $2a
    ld [de], a                                    ; $044c: $12
    inc e                                         ; $044d: $1c
    ld a, [hl+]                                   ; $044e: $2a
    ld [de], a                                    ; $044f: $12

Jump_000_0450:
    inc e                                         ; $0450: $1c
    ld a, [hl+]                                   ; $0451: $2a
    ld [de], a                                    ; $0452: $12
    inc de                                        ; $0453: $13
    dec c                                         ; $0454: $0d
    jr nz, jr_000_0424                            ; $0455: $20 $cd

    ret                                           ; $0457: $c9


Call_000_0458:
    ld hl, $c0a0                                  ; $0458: $21 $a0 $c0
    ld c, $05                                     ; $045b: $0e $05
    jp Jump_000_03a7                              ; $045d: $c3 $a7 $03


Call_000_0460:
Jump_000_0460:
    xor a                                         ; $0460: $af

Jump_000_0461:
    dec a                                         ; $0461: $3d

Jump_000_0462:
    ld h, a                                       ; $0462: $67

Jump_000_0463:
    ld l, a                                       ; $0463: $6f
    ld d, a                                       ; $0464: $57

Jump_000_0465:
    ld e, a                                       ; $0465: $5f
    ld c, $01                                     ; $0466: $0e $01

Call_000_0468:
    xor a                                         ; $0468: $af
    ldh [$99], a                                  ; $0469: $e0 $99

Jump_000_046b:
    ld a, c                                       ; $046b: $79
    dec a                                         ; $046c: $3d
    push af                                       ; $046d: $f5
    push hl                                       ; $046e: $e5
    ld hl, $c0a0                                  ; $046f: $21 $a0 $c0
    ld c, $0a                                     ; $0472: $0e $0a

jr_000_0474:
    ld a, [hl]                                    ; $0474: $7e
    or a                                          ; $0475: $b7
    jr z, jr_000_0488                             ; $0476: $28 $10

    ld a, l                                       ; $0478: $7d
    add $08                                       ; $0479: $c6 $08
    ld l, a                                       ; $047b: $6f
    dec c                                         ; $047c: $0d
    jr nz, jr_000_0474                            ; $047d: $20 $f5

Jump_000_047f:
    ld a, $01                                     ; $047f: $3e $01

Jump_000_0481:
    ldh [$99], a                                  ; $0481: $e0 $99
    pop hl                                        ; $0483: $e1
    pop af                                        ; $0484: $f1
    xor a                                         ; $0485: $af
    ret                                           ; $0486: $c9


Call_000_0487:
    nop                                           ; $0487: $00

jr_000_0488:
    ldh a, [$95]                                  ; $0488: $f0 $95
    ld [hl+], a                                   ; $048a: $22
    ldh a, [$96]                                  ; $048b: $f0 $96
    ld [hl+], a                                   ; $048d: $22
    pop bc                                        ; $048e: $c1
    ld [hl], c                                    ; $048f: $71
    inc hl                                        ; $0490: $23
    ld [hl], b                                    ; $0491: $70
    inc hl                                        ; $0492: $23
    bit 5, d                                      ; $0493: $cb $6a
    jr nz, jr_000_049a                            ; $0495: $20 $03

    xor a                                         ; $0497: $af
    jr jr_000_049c                                ; $0498: $18 $02

jr_000_049a:
    ld a, $01                                     ; $049a: $3e $01

jr_000_049c:
    ld [hl+], a                                   ; $049c: $22
    res 5, d                                      ; $049d: $cb $aa
    ld [hl], e                                    ; $049f: $73

Call_000_04a0:
    inc hl                                        ; $04a0: $23

Call_000_04a1:
    ld [hl], d                                    ; $04a1: $72
    inc hl                                        ; $04a2: $23
    pop af                                        ; $04a3: $f1
    bit 7, a                                      ; $04a4: $cb $7f
    jr z, jr_000_04ae                             ; $04a6: $28 $06

    rst $08                                       ; $04a8: $cf
    nop                                           ; $04a9: $00
    rst $08                                       ; $04aa: $cf

Jump_000_04ab:
    rra                                           ; $04ab: $1f
    ld a, $01                                     ; $04ac: $3e $01

Call_000_04ae:
jr_000_04ae:
    ld [hl], a                                    ; $04ae: $77
    ld a, $01                                     ; $04af: $3e $01
    ldh [$99], a                                  ; $04b1: $e0 $99
    ret                                           ; $04b3: $c9


Call_000_04b4:
    xor a                                         ; $04b4: $af

Call_000_04b5:
    ldh [$99], a                                  ; $04b5: $e0 $99
    push hl                                       ; $04b7: $e5
    ld hl, $c180                                  ; $04b8: $21 $80 $c1

Jump_000_04bb:
    ld c, $10                                     ; $04bb: $0e $10

jr_000_04bd:
    ld a, [hl]                                    ; $04bd: $7e
    or a                                          ; $04be: $b7

Call_000_04bf:
    jr z, jr_000_04ce                             ; $04bf: $28 $0d

Call_000_04c1:
    inc hl                                        ; $04c1: $23

Jump_000_04c2:
    inc hl                                        ; $04c2: $23

Jump_000_04c3:
    inc hl                                        ; $04c3: $23
    inc hl                                        ; $04c4: $23

Call_000_04c5:
    dec c                                         ; $04c5: $0d
    jr nz, jr_000_04bd                            ; $04c6: $20 $f5

Jump_000_04c8:
    pop hl                                        ; $04c8: $e1
    ld a, $01                                     ; $04c9: $3e $01
    ldh [$99], a                                  ; $04cb: $e0 $99
    ret                                           ; $04cd: $c9


jr_000_04ce:
    pop bc                                        ; $04ce: $c1
    ld [hl], d                                    ; $04cf: $72
    inc hl                                        ; $04d0: $23
    ld [hl], e                                    ; $04d1: $73
    inc hl                                        ; $04d2: $23
    ld [hl], c                                    ; $04d3: $71
    inc hl                                        ; $04d4: $23
    ld [hl], b                                    ; $04d5: $70
    ld a, $01                                     ; $04d6: $3e $01
    ldh [$99], a                                  ; $04d8: $e0 $99
    ret                                           ; $04da: $c9


Call_000_04db:
    call Call_000_0468                            ; $04db: $cd $68 $04

Call_000_04de:
    ldh a, [$99]                                  ; $04de: $f0 $99

Jump_000_04e0:
    or a                                          ; $04e0: $b7

Jump_000_04e1:
    ret z                                         ; $04e1: $c8

Jump_000_04e2:
    ld hl, $c0a0                                  ; $04e2: $21 $a0 $c0
    ld c, $0a                                     ; $04e5: $0e $0a
    ldh a, [$96]                                  ; $04e7: $f0 $96

Call_000_04e9:
    ld e, a                                       ; $04e9: $5f

Call_000_04ea:
    ldh a, [$95]                                  ; $04ea: $f0 $95
    ld d, a                                       ; $04ec: $57
    push de                                       ; $04ed: $d5

jr_000_04ee:
    ld a, [hl]                                    ; $04ee: $7e
    or a                                          ; $04ef: $b7
    jr z, jr_000_0521                             ; $04f0: $28 $2f

    push bc                                       ; $04f2: $c5
    ldh [$95], a                                  ; $04f3: $e0 $95
    ld [$2000], a                                 ; $04f5: $ea $00 $20

Call_000_04f8:
    xor a                                         ; $04f8: $af
    ld [hl+], a                                   ; $04f9: $22
    ld a, [hl+]                                   ; $04fa: $2a
    ldh [$96], a                                  ; $04fb: $e0 $96
    ldh [rSVBK], a                                ; $04fd: $e0 $70

Call_000_04ff:
Jump_000_04ff:
    ld c, [hl]                                    ; $04ff: $4e
    inc l                                         ; $0500: $2c
    ld b, [hl]                                    ; $0501: $46
    inc l                                         ; $0502: $2c
    bit 0, c                                      ; $0503: $cb $41
    jr nz, jr_000_0550                            ; $0505: $20 $49

    ld a, [hl+]                                   ; $0507: $2a
    ldh [rVBK], a                                 ; $0508: $e0 $4f
    ld e, [hl]                                    ; $050a: $5e
    inc l                                         ; $050b: $2c
    ld d, [hl]                                    ; $050c: $56
    inc l                                         ; $050d: $2c

Jump_000_050e:
    ld a, [hl+]                                   ; $050e: $2a
    push hl                                       ; $050f: $e5
    ld hl, $ff51                                  ; $0510: $21 $51 $ff
    ld [hl], b                                    ; $0513: $70
    inc l                                         ; $0514: $2c
    ld [hl], c                                    ; $0515: $71
    inc l                                         ; $0516: $2c
    ld [hl], d                                    ; $0517: $72
    inc l                                         ; $0518: $2c
    ld [hl], e                                    ; $0519: $73
    inc l                                         ; $051a: $2c
    ld [hl], a                                    ; $051b: $77
    pop hl                                        ; $051c: $e1
    pop bc                                        ; $051d: $c1
    dec c                                         ; $051e: $0d
    jr nz, jr_000_04ee                            ; $051f: $20 $cd

jr_000_0521:
    pop de                                        ; $0521: $d1
    ld a, e                                       ; $0522: $7b
    ldh [$96], a                                  ; $0523: $e0 $96
    ldh [rSVBK], a                                ; $0525: $e0 $70
    ld a, d                                       ; $0527: $7a
    ldh [$95], a                                  ; $0528: $e0 $95

Jump_000_052a:
    ld [$2000], a                                 ; $052a: $ea $00 $20
    ld hl, $c180                                  ; $052d: $21 $80 $c1
    ld c, $10                                     ; $0530: $0e $10

jr_000_0532:
    ld a, [hl]                                    ; $0532: $7e
    or a                                          ; $0533: $b7
    jr z, jr_000_054f                             ; $0534: $28 $19

    push bc                                       ; $0536: $c5
    ld d, a                                       ; $0537: $57
    xor a                                         ; $0538: $af

Jump_000_0539:
    ld [hl+], a                                   ; $0539: $22

Jump_000_053a:
    ld e, [hl]                                    ; $053a: $5e
    inc l                                         ; $053b: $2c
    ld c, [hl]                                    ; $053c: $4e
    inc l                                         ; $053d: $2c
    ld b, [hl]                                    ; $053e: $46
    inc l                                         ; $053f: $2c
    xor a                                         ; $0540: $af
    ldh [rVBK], a                                 ; $0541: $e0 $4f
    ld a, c                                       ; $0543: $79
    ld [de], a                                    ; $0544: $12
    ld a, $01                                     ; $0545: $3e $01
    ldh [rVBK], a                                 ; $0547: $e0 $4f
    ld a, b                                       ; $0549: $78
    ld [de], a                                    ; $054a: $12
    pop bc                                        ; $054b: $c1
    dec c                                         ; $054c: $0d
    jr nz, jr_000_0532                            ; $054d: $20 $e3

Call_000_054f:
jr_000_054f:
    ret                                           ; $054f: $c9


Call_000_0550:
jr_000_0550:
    pop bc                                        ; $0550: $c1
    dec c                                         ; $0551: $0d
    jr z, jr_000_0521                             ; $0552: $28 $cd

    ld a, c                                       ; $0554: $79
    add a                                         ; $0555: $87
    add a                                         ; $0556: $87
    add a                                         ; $0557: $87
    ld c, a                                       ; $0558: $4f
    ld a, l                                       ; $0559: $7d
    add $08                                       ; $055a: $c6 $08
    and $f8                                       ; $055c: $e6 $f8
    ld l, a                                       ; $055e: $6f
    ld de, $c0a0                                  ; $055f: $11 $a0 $c0

jr_000_0562:
    ld a, [hl+]                                   ; $0562: $2a

Jump_000_0563:
    ld [de], a                                    ; $0563: $12

Call_000_0564:
    inc e                                         ; $0564: $1c
    dec c                                         ; $0565: $0d
    jr nz, jr_000_0562                            ; $0566: $20 $fa

    xor a                                         ; $0568: $af
    ld [de], a                                    ; $0569: $12
    jr jr_000_0521                                ; $056a: $18 $b5

Call_000_056c:
    push de                                       ; $056c: $d5
    ld a, e                                       ; $056d: $7b
    add a                                         ; $056e: $87
    add a                                         ; $056f: $87
    add a                                         ; $0570: $87
    ld c, a                                       ; $0571: $4f
    ld a, d                                       ; $0572: $7a
    add a                                         ; $0573: $87
    add a                                         ; $0574: $87
    add a                                         ; $0575: $87
    ld e, a                                       ; $0576: $5f
    ld d, $c1                                     ; $0577: $16 $c1

jr_000_0579:
    ld a, [hl+]                                   ; $0579: $2a
    ld [de], a                                    ; $057a: $12
    inc d                                         ; $057b: $14
    ld [de], a                                    ; $057c: $12
    dec d                                         ; $057d: $15
    inc e                                         ; $057e: $1c

Jump_000_057f:
    dec c                                         ; $057f: $0d

Jump_000_0580:
    jr nz, jr_000_0579                            ; $0580: $20 $f7

Jump_000_0582:
    ld hl, $ff9d                                  ; $0582: $21 $9d $ff
    pop de                                        ; $0585: $d1

Jump_000_0586:
    bit 3, d                                      ; $0586: $cb $5a
    jr nz, jr_000_058c                            ; $0588: $20 $02

    set 0, [hl]                                   ; $058a: $cb $c6

jr_000_058c:
    ld a, e                                       ; $058c: $7b
    add d                                         ; $058d: $82
    cp $09                                        ; $058e: $fe $09
    jr c, jr_000_0594                             ; $0590: $38 $02

    set 1, [hl]                                   ; $0592: $cb $ce

jr_000_0594:
    ret                                           ; $0594: $c9


Call_000_0595:
    ld a, e                                       ; $0595: $7b
    add a                                         ; $0596: $87
    add a                                         ; $0597: $87
    add a                                         ; $0598: $87
    ld c, a                                       ; $0599: $4f
    ld a, d                                       ; $059a: $7a
    add a                                         ; $059b: $87
    add a                                         ; $059c: $87
    add a                                         ; $059d: $87
    ld e, a                                       ; $059e: $5f
    ld d, $c2                                     ; $059f: $16 $c2

jr_000_05a1:
    ld a, [hl+]                                   ; $05a1: $2a

Jump_000_05a2:
    ld [de], a                                    ; $05a2: $12

Jump_000_05a3:
    inc e                                         ; $05a3: $1c
    dec c                                         ; $05a4: $0d
    jr nz, jr_000_05a1                            ; $05a5: $20 $fa

    ret                                           ; $05a7: $c9


Call_000_05a8:
    push de                                       ; $05a8: $d5
    ld a, e                                       ; $05a9: $7b
    add a                                         ; $05aa: $87
    add a                                         ; $05ab: $87
    add a                                         ; $05ac: $87
    ld c, a                                       ; $05ad: $4f
    ld a, d                                       ; $05ae: $7a
    add a                                         ; $05af: $87
    add a                                         ; $05b0: $87
    add a                                         ; $05b1: $87
    ld e, a                                       ; $05b2: $5f
    ld d, $c2                                     ; $05b3: $16 $c2

jr_000_05b5:
    ld a, [hl+]                                   ; $05b5: $2a
    ld [de], a                                    ; $05b6: $12
    ld b, a                                       ; $05b7: $47
    ldh a, [$bc]                                  ; $05b8: $f0 $bc
    and a                                         ; $05ba: $a7
    jr nz, jr_000_05c1                            ; $05bb: $20 $04

    dec d                                         ; $05bd: $15
    ld a, b                                       ; $05be: $78
    ld [de], a                                    ; $05bf: $12
    inc d                                         ; $05c0: $14

Jump_000_05c1:
jr_000_05c1:
    inc e                                         ; $05c1: $1c
    dec c                                         ; $05c2: $0d

Jump_000_05c3:
    jr nz, jr_000_05b5                            ; $05c3: $20 $f0

Call_000_05c5:
    pop de                                        ; $05c5: $d1
    ldh a, [$bc]                                  ; $05c6: $f0 $bc
    and a                                         ; $05c8: $a7
    jr nz, jr_000_05dc                            ; $05c9: $20 $11

    ld hl, $ff9d                                  ; $05cb: $21 $9d $ff
    bit 3, d                                      ; $05ce: $cb $5a
    jr nz, jr_000_05d4                            ; $05d0: $20 $02

    set 0, [hl]                                   ; $05d2: $cb $c6

jr_000_05d4:
    ld a, e                                       ; $05d4: $7b
    add d                                         ; $05d5: $82
    cp $09                                        ; $05d6: $fe $09
    jr c, jr_000_05dc                             ; $05d8: $38 $02

    set 1, [hl]                                   ; $05da: $cb $ce

jr_000_05dc:
    ret                                           ; $05dc: $c9


Call_000_05dd:
    push af                                       ; $05dd: $f5
    push bc                                       ; $05de: $c5

Call_000_05df:
    push de                                       ; $05df: $d5

Jump_000_05e0:
    push hl                                       ; $05e0: $e5
    ld hl, $c200                                  ; $05e1: $21 $00 $c2
    ld de, $c100                                  ; $05e4: $11 $00 $c1
    ld c, $08                                     ; $05e7: $0e $08
    call Call_000_03eb                            ; $05e9: $cd $eb $03
    ld hl, $ff9d                                  ; $05ec: $21 $9d $ff
    ld [hl], $03                                  ; $05ef: $36 $03
    pop hl                                        ; $05f1: $e1
    pop de                                        ; $05f2: $d1
    pop bc                                        ; $05f3: $c1
    pop af                                        ; $05f4: $f1
    ret                                           ; $05f5: $c9


Call_000_05f6:
    ldh a, [$9d]                                  ; $05f6: $f0 $9d
    rrca                                          ; $05f8: $0f
    jr nc, jr_000_0601                            ; $05f9: $30 $06

    ld hl, $c100                                  ; $05fb: $21 $00 $c1
    call Call_000_027f                            ; $05fe: $cd $7f $02

Jump_000_0601:
jr_000_0601:
    ldh a, [$9d]                                  ; $0601: $f0 $9d
    rrca                                          ; $0603: $0f

Jump_000_0604:
    rrca                                          ; $0604: $0f
    jr nc, jr_000_060d                            ; $0605: $30 $06

    ld hl, $c140                                  ; $0607: $21 $40 $c1

Jump_000_060a:
    call Call_000_0287                            ; $060a: $cd $87 $02

Jump_000_060d:
jr_000_060d:
    xor a                                         ; $060d: $af

Jump_000_060e:
    ldh [$9d], a                                  ; $060e: $e0 $9d
    ret                                           ; $0610: $c9


Call_000_0611:
    push bc                                       ; $0611: $c5
    ld b, a                                       ; $0612: $47
    ldh a, [$95]                                  ; $0613: $f0 $95
    push af                                       ; $0615: $f5
    ld a, b                                       ; $0616: $78
    ldh [$95], a                                  ; $0617: $e0 $95
    ld [$2000], a                                 ; $0619: $ea $00 $20
    ld c, [hl]                                    ; $061c: $4e
    pop af                                        ; $061d: $f1
    ldh [$95], a                                  ; $061e: $e0 $95
    ld [$2000], a                                 ; $0620: $ea $00 $20

Call_000_0623:
    ld a, c                                       ; $0623: $79
    pop bc                                        ; $0624: $c1
    ret                                           ; $0625: $c9


Call_000_0626:
    ld b, a                                       ; $0626: $47
    ldh a, [$95]                                  ; $0627: $f0 $95

Jump_000_0629:
    push af                                       ; $0629: $f5
    ld a, b                                       ; $062a: $78
    ldh [$95], a                                  ; $062b: $e0 $95

Jump_000_062d:
    ld [$2000], a                                 ; $062d: $ea $00 $20

Jump_000_0630:
    ld c, [hl]                                    ; $0630: $4e
    inc hl                                        ; $0631: $23
    ld b, [hl]                                    ; $0632: $46
    dec hl                                        ; $0633: $2b
    pop af                                        ; $0634: $f1
    ldh [$95], a                                  ; $0635: $e0 $95
    ld [$2000], a                                 ; $0637: $ea $00 $20
    ret                                           ; $063a: $c9


Call_000_063b:
Jump_000_063b:
    push bc                                       ; $063b: $c5
    ldh a, [$95]                                  ; $063c: $f0 $95
    ld b, a                                       ; $063e: $47

Jump_000_063f:
    ld a, h                                       ; $063f: $7c
    ldh [$95], a                                  ; $0640: $e0 $95

Jump_000_0642:
    ld [$2000], a                                 ; $0642: $ea $00 $20
    ld c, a                                       ; $0645: $4f

Jump_000_0646:
    ld h, $40                                     ; $0646: $26 $40

Jump_000_0648:
    ld a, [hl+]                                   ; $0648: $2a
    ld h, [hl]                                    ; $0649: $66
    ld l, a                                       ; $064a: $6f

Call_000_064b:
    ld a, b                                       ; $064b: $78
    ldh [$95], a                                  ; $064c: $e0 $95
    ld [$2000], a                                 ; $064e: $ea $00 $20
    ld a, c                                       ; $0651: $79
    pop bc                                        ; $0652: $c1
    ret                                           ; $0653: $c9


Call_000_0654:
    push bc                                       ; $0654: $c5

Call_000_0655:
    ld b, a                                       ; $0655: $47
    ldh a, [$95]                                  ; $0656: $f0 $95
    ld c, a                                       ; $0658: $4f
    ld a, b                                       ; $0659: $78
    ldh [$95], a                                  ; $065a: $e0 $95
    ld [$2000], a                                 ; $065c: $ea $00 $20
    ld a, c                                       ; $065f: $79
    pop bc                                        ; $0660: $c1

Jump_000_0661:
    push af                                       ; $0661: $f5
    call MemCopy                            ; $0662: $cd $d3 $03
    pop af                                        ; $0665: $f1
    ldh [$95], a                                  ; $0666: $e0 $95
    ld [$2000], a                                 ; $0668: $ea $00 $20
    ret                                           ; $066b: $c9


Call_000_066c:
    ld c, $80                                     ; $066c: $0e $80
    ld b, $0a                                     ; $066e: $06 $0a
    ld hl, $067a                                  ; $0670: $21 $7a $06

jr_000_0673:
    ld a, [hl+]                                   ; $0673: $2a
    ld [c], a                                     ; $0674: $e2
    inc c                                         ; $0675: $0c
    dec b                                         ; $0676: $05
    jr nz, jr_000_0673                            ; $0677: $20 $fa

    ret                                           ; $0679: $c9


    db $3e, $c0, $e0, $46, $3e, $28, $3d, $20, $fd, $c9

Call_000_0684:
    ld hl, $067a                                  ; $0684: $21 $7a $06
    ld [hl], $c9                                  ; $0687: $36 $c9
    ret                                           ; $0689: $c9


Call_000_068a:
    ld hl, $067a                                  ; $068a: $21 $7a $06
    ld [hl], $3e                                  ; $068d: $36 $3e
    ret                                           ; $068f: $c9


    add a                                         ; $0690: $87
    pop hl                                        ; $0691: $e1
    ld e, a                                       ; $0692: $5f
    ld d, $00                                     ; $0693: $16 $00
    add hl, de                                    ; $0695: $19
    ld a, [hl+]                                   ; $0696: $2a
    ld h, [hl]                                    ; $0697: $66
    ld l, a                                       ; $0698: $6f

Call_000_0699:
    jp hl                                         ; $0699: $e9


Call_000_069a:
    push af                                       ; $069a: $f5
    push bc                                       ; $069b: $c5

Jump_000_069c:
    ld c, a                                       ; $069c: $4f
    ldh a, [$95]                                  ; $069d: $f0 $95
    push af                                       ; $069f: $f5

Call_000_06a0:
    ld a, h                                       ; $06a0: $7c
    ldh [$95], a                                  ; $06a1: $e0 $95

Call_000_06a3:
    ld [$2000], a                                 ; $06a3: $ea $00 $20
    ld h, $40                                     ; $06a6: $26 $40
    ld a, [hl+]                                   ; $06a8: $2a
    ld h, [hl]                                    ; $06a9: $66
    ld l, a                                       ; $06aa: $6f
    ld a, c                                       ; $06ab: $79
    add a                                         ; $06ac: $87
    add l                                         ; $06ad: $85
    ld l, a                                       ; $06ae: $6f
    ld a, h                                       ; $06af: $7c
    adc $00                                       ; $06b0: $ce $00
    ld h, a                                       ; $06b2: $67
    ld a, [hl+]                                   ; $06b3: $2a
    ld h, [hl]                                    ; $06b4: $66
    ld l, a                                       ; $06b5: $6f
    call Call_000_1f2f                            ; $06b6: $cd $2f $1f
    pop af                                        ; $06b9: $f1
    ldh [$95], a                                  ; $06ba: $e0 $95
    ld [$2000], a                                 ; $06bc: $ea $00 $20
    pop bc                                        ; $06bf: $c1

Jump_000_06c0:
    pop af                                        ; $06c0: $f1

Call_000_06c1:
Jump_000_06c1:
    ret                                           ; $06c1: $c9


Call_000_06c2:
    push af                                       ; $06c2: $f5

Call_000_06c3:
Jump_000_06c3:
    push bc                                       ; $06c3: $c5

Jump_000_06c4:
    push de                                       ; $06c4: $d5
    push hl                                       ; $06c5: $e5
    ld b, a                                       ; $06c6: $47
    ldh a, [$95]                                  ; $06c7: $f0 $95

Jump_000_06c9:
    push af                                       ; $06c9: $f5

Call_000_06ca:
    ld a, h                                       ; $06ca: $7c
    ldh [$95], a                                  ; $06cb: $e0 $95

Call_000_06cd:
    ld [$2000], a                                 ; $06cd: $ea $00 $20
    ld h, $40                                     ; $06d0: $26 $40
    ld a, [hl+]                                   ; $06d2: $2a
    ld h, [hl]                                    ; $06d3: $66
    ld l, a                                       ; $06d4: $6f

Call_000_06d5:
    ld a, b                                       ; $06d5: $78
    add a                                         ; $06d6: $87
    add l                                         ; $06d7: $85
    ld l, a                                       ; $06d8: $6f
    ld a, h                                       ; $06d9: $7c
    adc $00                                       ; $06da: $ce $00
    ld h, a                                       ; $06dc: $67
    ld a, [hl+]                                   ; $06dd: $2a
    ld h, [hl]                                    ; $06de: $66
    ld l, a                                       ; $06df: $6f

Call_000_06e0:
jr_000_06e0:
    ld a, [hl+]                                   ; $06e0: $2a
    ld [de], a                                    ; $06e1: $12

Jump_000_06e2:
    inc de                                        ; $06e2: $13

Jump_000_06e3:
    dec c                                         ; $06e3: $0d
    jr nz, jr_000_06e0                            ; $06e4: $20 $fa

    pop af                                        ; $06e6: $f1

Jump_000_06e7:
    ldh [$95], a                                  ; $06e7: $e0 $95

Call_000_06e9:
    ld [$2000], a                                 ; $06e9: $ea $00 $20
    pop hl                                        ; $06ec: $e1
    pop de                                        ; $06ed: $d1
    pop bc                                        ; $06ee: $c1

Call_000_06ef:
    pop af                                        ; $06ef: $f1

Call_000_06f0:
    ret                                           ; $06f0: $c9


Call_000_06f1:
Jump_000_06f1:
    push af                                       ; $06f1: $f5
    push bc                                       ; $06f2: $c5
    push de                                       ; $06f3: $d5
    push hl                                       ; $06f4: $e5

Jump_000_06f5:
    ld b, a                                       ; $06f5: $47
    ldh a, [$95]                                  ; $06f6: $f0 $95
    push af                                       ; $06f8: $f5
    ld a, h                                       ; $06f9: $7c

Jump_000_06fa:
    ldh [$95], a                                  ; $06fa: $e0 $95

Call_000_06fc:
    ld [$2000], a                                 ; $06fc: $ea $00 $20

Call_000_06ff:
Jump_000_06ff:
    ld h, $40                                     ; $06ff: $26 $40
    ld a, [hl+]                                   ; $0701: $2a
    ld h, [hl]                                    ; $0702: $66

Call_000_0703:
    ld l, a                                       ; $0703: $6f

Call_000_0704:
Jump_000_0704:
    ld a, b                                       ; $0704: $78
    add a                                         ; $0705: $87
    add l                                         ; $0706: $85

Jump_000_0707:
    ld l, a                                       ; $0707: $6f

Call_000_0708:
    ld a, h                                       ; $0708: $7c
    adc $00                                       ; $0709: $ce $00
    ld h, a                                       ; $070b: $67
    ld a, [hl+]                                   ; $070c: $2a
    ld h, [hl]                                    ; $070d: $66
    ld l, a                                       ; $070e: $6f

Jump_000_070f:
    call Call_000_0468                            ; $070f: $cd $68 $04
    pop af                                        ; $0712: $f1

Jump_000_0713:
    ldh [$95], a                                  ; $0713: $e0 $95
    ld [$2000], a                                 ; $0715: $ea $00 $20
    pop hl                                        ; $0718: $e1
    pop de                                        ; $0719: $d1
    pop bc                                        ; $071a: $c1
    pop af                                        ; $071b: $f1
    ret                                           ; $071c: $c9


Call_000_071d:
    push af                                       ; $071d: $f5
    push bc                                       ; $071e: $c5
    push de                                       ; $071f: $d5

Call_000_0720:
Jump_000_0720:
    push hl                                       ; $0720: $e5
    ld b, a                                       ; $0721: $47
    ldh a, [$95]                                  ; $0722: $f0 $95
    push af                                       ; $0724: $f5
    ld a, h                                       ; $0725: $7c
    ldh [$95], a                                  ; $0726: $e0 $95
    ld [$2000], a                                 ; $0728: $ea $00 $20
    ld h, $40                                     ; $072b: $26 $40
    ld a, [hl+]                                   ; $072d: $2a
    ld h, [hl]                                    ; $072e: $66
    ld l, a                                       ; $072f: $6f
    ld a, b                                       ; $0730: $78
    add a                                         ; $0731: $87
    add l                                         ; $0732: $85
    ld l, a                                       ; $0733: $6f
    ld a, h                                       ; $0734: $7c
    adc $00                                       ; $0735: $ce $00
    ld h, a                                       ; $0737: $67
    ld a, [hl+]                                   ; $0738: $2a
    ld h, [hl]                                    ; $0739: $66
    ld l, a                                       ; $073a: $6f
    call Call_000_2096                            ; $073b: $cd $96 $20
    pop af                                        ; $073e: $f1
    ldh [$95], a                                  ; $073f: $e0 $95
    ld [$2000], a                                 ; $0741: $ea $00 $20
    pop hl                                        ; $0744: $e1

Jump_000_0745:
    pop de                                        ; $0745: $d1
    pop bc                                        ; $0746: $c1
    pop af                                        ; $0747: $f1
    ret                                           ; $0748: $c9


Call_000_0749:
    push af                                       ; $0749: $f5
    push bc                                       ; $074a: $c5
    push de                                       ; $074b: $d5
    push hl                                       ; $074c: $e5
    ld b, a                                       ; $074d: $47
    ldh a, [$95]                                  ; $074e: $f0 $95
    push af                                       ; $0750: $f5

Call_000_0751:
    ld a, h                                       ; $0751: $7c
    ldh [$95], a                                  ; $0752: $e0 $95
    ld [$2000], a                                 ; $0754: $ea $00 $20
    ld h, $40                                     ; $0757: $26 $40
    ld a, [hl+]                                   ; $0759: $2a
    ld h, [hl]                                    ; $075a: $66
    ld l, a                                       ; $075b: $6f
    ld a, b                                       ; $075c: $78
    add a                                         ; $075d: $87
    add l                                         ; $075e: $85
    ld l, a                                       ; $075f: $6f

Call_000_0760:
Jump_000_0760:
    ld a, h                                       ; $0760: $7c
    adc $00                                       ; $0761: $ce $00

Call_000_0763:
    ld h, a                                       ; $0763: $67
    ld a, [hl+]                                   ; $0764: $2a
    ld h, [hl]                                    ; $0765: $66
    ld l, a                                       ; $0766: $6f
    call Call_000_03eb                            ; $0767: $cd $eb $03
    pop af                                        ; $076a: $f1

Jump_000_076b:
    ldh [$95], a                                  ; $076b: $e0 $95

Call_000_076d:
    ld [$2000], a                                 ; $076d: $ea $00 $20
    pop hl                                        ; $0770: $e1
    pop de                                        ; $0771: $d1

Jump_000_0772:
    pop bc                                        ; $0772: $c1
    pop af                                        ; $0773: $f1
    ret                                           ; $0774: $c9


Call_000_0775:
    ld c, $10                                     ; $0775: $0e $10

Jump_000_0777:
    ld a, [hl+]                                   ; $0777: $2a
    ld [de], a                                    ; $0778: $12
    inc de                                        ; $0779: $13
    ld a, [hl+]                                   ; $077a: $2a
    ld [de], a                                    ; $077b: $12
    inc de                                        ; $077c: $13
    ld a, [hl+]                                   ; $077d: $2a
    ld [de], a                                    ; $077e: $12
    inc de                                        ; $077f: $13

Jump_000_0780:
    ld a, [hl+]                                   ; $0780: $2a
    ld [de], a                                    ; $0781: $12
    inc de                                        ; $0782: $13
    ld a, [hl+]                                   ; $0783: $2a

Jump_000_0784:
    ld [de], a                                    ; $0784: $12
    inc de                                        ; $0785: $13
    ld a, [hl+]                                   ; $0786: $2a

Jump_000_0787:
    ld [de], a                                    ; $0787: $12
    inc de                                        ; $0788: $13
    ld a, [hl+]                                   ; $0789: $2a
    ld [de], a                                    ; $078a: $12
    inc de                                        ; $078b: $13
    ld a, [hl+]                                   ; $078c: $2a
    ld [de], a                                    ; $078d: $12
    inc de                                        ; $078e: $13

Call_000_078f:
    ld a, [hl+]                                   ; $078f: $2a
    ld [de], a                                    ; $0790: $12
    inc de                                        ; $0791: $13
    ld a, [hl+]                                   ; $0792: $2a
    ld [de], a                                    ; $0793: $12
    inc de                                        ; $0794: $13
    ld a, [hl+]                                   ; $0795: $2a
    ld [de], a                                    ; $0796: $12

Jump_000_0797:
    inc de                                        ; $0797: $13
    ld a, [hl+]                                   ; $0798: $2a
    ld [de], a                                    ; $0799: $12
    inc de                                        ; $079a: $13
    ld a, [hl+]                                   ; $079b: $2a
    ld [de], a                                    ; $079c: $12
    inc de                                        ; $079d: $13
    ld a, [hl+]                                   ; $079e: $2a
    ld [de], a                                    ; $079f: $12
    inc de                                        ; $07a0: $13

Jump_000_07a1:
    ld a, [hl+]                                   ; $07a1: $2a
    ld [de], a                                    ; $07a2: $12
    inc de                                        ; $07a3: $13
    ld a, [hl+]                                   ; $07a4: $2a
    ld [de], a                                    ; $07a5: $12
    inc de                                        ; $07a6: $13
    ld a, [hl+]                                   ; $07a7: $2a
    ld [de], a                                    ; $07a8: $12
    inc de                                        ; $07a9: $13

Jump_000_07aa:
    ld a, [hl+]                                   ; $07aa: $2a
    ld [de], a                                    ; $07ab: $12
    inc de                                        ; $07ac: $13
    ld a, [hl+]                                   ; $07ad: $2a
    ld [de], a                                    ; $07ae: $12
    inc de                                        ; $07af: $13
    ld a, [hl+]                                   ; $07b0: $2a
    ld [de], a                                    ; $07b1: $12
    inc de                                        ; $07b2: $13
    ld a, [hl+]                                   ; $07b3: $2a
    ld [de], a                                    ; $07b4: $12

Call_000_07b5:
    inc de                                        ; $07b5: $13
    ld a, [hl+]                                   ; $07b6: $2a
    ld [de], a                                    ; $07b7: $12
    inc de                                        ; $07b8: $13
    ld a, [hl+]                                   ; $07b9: $2a
    ld [de], a                                    ; $07ba: $12
    inc de                                        ; $07bb: $13
    ld a, [hl+]                                   ; $07bc: $2a
    ld [de], a                                    ; $07bd: $12
    inc de                                        ; $07be: $13
    ld a, [hl+]                                   ; $07bf: $2a

Call_000_07c0:
Jump_000_07c0:
    ld [de], a                                    ; $07c0: $12
    inc de                                        ; $07c1: $13
    ld a, [hl+]                                   ; $07c2: $2a

Jump_000_07c3:
    ld [de], a                                    ; $07c3: $12
    inc de                                        ; $07c4: $13
    ld a, [hl+]                                   ; $07c5: $2a
    ld [de], a                                    ; $07c6: $12

Call_000_07c7:
    inc de                                        ; $07c7: $13
    ld a, [hl+]                                   ; $07c8: $2a
    ld [de], a                                    ; $07c9: $12
    inc de                                        ; $07ca: $13
    ld a, [hl+]                                   ; $07cb: $2a
    ld [de], a                                    ; $07cc: $12
    inc de                                        ; $07cd: $13
    ld a, [hl+]                                   ; $07ce: $2a
    ld [de], a                                    ; $07cf: $12
    inc de                                        ; $07d0: $13
    ld a, [hl+]                                   ; $07d1: $2a
    ld [de], a                                    ; $07d2: $12
    inc de                                        ; $07d3: $13
    ld a, [hl+]                                   ; $07d4: $2a
    ld [de], a                                    ; $07d5: $12
    inc de                                        ; $07d6: $13
    push hl                                       ; $07d7: $e5
    ld h, d                                       ; $07d8: $62
    ld l, e                                       ; $07d9: $6b
    xor a                                         ; $07da: $af
    ld [hl+], a                                   ; $07db: $22

Jump_000_07dc:
    ld [hl+], a                                   ; $07dc: $22
    ld [hl+], a                                   ; $07dd: $22
    ld [hl+], a                                   ; $07de: $22
    ld [hl+], a                                   ; $07df: $22

Jump_000_07e0:
    ld [hl+], a                                   ; $07e0: $22

Jump_000_07e1:
    ld [hl+], a                                   ; $07e1: $22
    ld [hl+], a                                   ; $07e2: $22

Jump_000_07e3:
    ld [hl+], a                                   ; $07e3: $22
    ld [hl+], a                                   ; $07e4: $22

Jump_000_07e5:
    ld [hl+], a                                   ; $07e5: $22
    ld [hl+], a                                   ; $07e6: $22
    ld [hl+], a                                   ; $07e7: $22

Jump_000_07e8:
    ld [hl+], a                                   ; $07e8: $22
    ld [hl+], a                                   ; $07e9: $22

Jump_000_07ea:
    ld [hl+], a                                   ; $07ea: $22

Jump_000_07eb:
    xor a                                         ; $07eb: $af
    ld [hl+], a                                   ; $07ec: $22
    ld [hl+], a                                   ; $07ed: $22
    ld [hl+], a                                   ; $07ee: $22
    ld [hl+], a                                   ; $07ef: $22

Jump_000_07f0:
    ld [hl+], a                                   ; $07f0: $22
    ld [hl+], a                                   ; $07f1: $22
    ld [hl+], a                                   ; $07f2: $22
    ld [hl+], a                                   ; $07f3: $22
    ld [hl+], a                                   ; $07f4: $22
    ld [hl+], a                                   ; $07f5: $22
    ld [hl+], a                                   ; $07f6: $22
    ld [hl+], a                                   ; $07f7: $22

Jump_000_07f8:
    ld [hl+], a                                   ; $07f8: $22

Call_000_07f9:
Jump_000_07f9:
    ld [hl+], a                                   ; $07f9: $22
    ld [hl+], a                                   ; $07fa: $22

Call_000_07fb:
Jump_000_07fb:
    ld [hl+], a                                   ; $07fb: $22

Jump_000_07fc:
    ld d, h                                       ; $07fc: $54
    ld e, l                                       ; $07fd: $5d
    pop hl                                        ; $07fe: $e1

Call_000_07ff:
Jump_000_07ff:
    dec c                                         ; $07ff: $0d

Call_000_0800:
Jump_000_0800:
    jp nz, Jump_000_0777                          ; $0800: $c2 $77 $07

Call_000_0803:
    ret                                           ; $0803: $c9


Call_000_0804:
    push af                                       ; $0804: $f5
    push bc                                       ; $0805: $c5

Call_000_0806:
Jump_000_0806:
    push de                                       ; $0806: $d5
    push hl                                       ; $0807: $e5
    ldh a, [$96]                                  ; $0808: $f0 $96
    push af                                       ; $080a: $f5
    ld a, $01                                     ; $080b: $3e $01

Jump_000_080d:
    ldh [$96], a                                  ; $080d: $e0 $96
    ldh [rSVBK], a                                ; $080f: $e0 $70
    ld hl, $d000                                  ; $0811: $21 $00 $d0
    ld de, $c600                                  ; $0814: $11 $00 $c6
    ld c, $20                                     ; $0817: $0e $20
    call Call_000_03eb                            ; $0819: $cd $eb $03
    ld a, $02                                     ; $081c: $3e $02
    ldh [$96], a                                  ; $081e: $e0 $96

Call_000_0820:
Jump_000_0820:
    ldh [rSVBK], a                                ; $0820: $e0 $70
    ld hl, $c600                                  ; $0822: $21 $00 $c6
    ld de, $d000                                  ; $0825: $11 $00 $d0

Jump_000_0828:
    call Call_000_0775                            ; $0828: $cd $75 $07

Jump_000_082b:
    ld a, $01                                     ; $082b: $3e $01
    ldh [$96], a                                  ; $082d: $e0 $96
    ldh [rSVBK], a                                ; $082f: $e0 $70
    ld hl, $d200                                  ; $0831: $21 $00 $d2
    ld de, $c600                                  ; $0834: $11 $00 $c6
    ld c, $20                                     ; $0837: $0e $20
    call Call_000_03eb                            ; $0839: $cd $eb $03

Call_000_083c:
    ld a, $02                                     ; $083c: $3e $02
    ldh [$96], a                                  ; $083e: $e0 $96

Jump_000_0840:
    ldh [rSVBK], a                                ; $0840: $e0 $70
    ld hl, $c600                                  ; $0842: $21 $00 $c6
    ld de, $d800                                  ; $0845: $11 $00 $d8
    call Call_000_0775                            ; $0848: $cd $75 $07
    ld hl, $d800                                  ; $084b: $21 $00 $d8
    ld c, $80                                     ; $084e: $0e $80
    call Call_000_03a7                            ; $0850: $cd $a7 $03
    ld a, $01                                     ; $0853: $3e $01
    ldh [$96], a                                  ; $0855: $e0 $96
    ldh [rSVBK], a                                ; $0857: $e0 $70
    ld hl, $d400                                  ; $0859: $21 $00 $d4

Call_000_085c:
    ld de, $c600                                  ; $085c: $11 $00 $c6
    ld c, $20                                     ; $085f: $0e $20
    call Call_000_03eb                            ; $0861: $cd $eb $03

Call_000_0864:
    ld a, $03                                     ; $0864: $3e $03
    ldh [$96], a                                  ; $0866: $e0 $96
    ldh [rSVBK], a                                ; $0868: $e0 $70
    ld hl, $c600                                  ; $086a: $21 $00 $c6
    ld de, $d000                                  ; $086d: $11 $00 $d0
    call Call_000_0775                            ; $0870: $cd $75 $07
    ld a, $01                                     ; $0873: $3e $01
    ldh [$96], a                                  ; $0875: $e0 $96
    ldh [rSVBK], a                                ; $0877: $e0 $70
    ld hl, $d600                                  ; $0879: $21 $00 $d6
    ld de, $c600                                  ; $087c: $11 $00 $c6
    ld c, $20                                     ; $087f: $0e $20
    call Call_000_03eb                            ; $0881: $cd $eb $03

Call_000_0884:
    ld a, $03                                     ; $0884: $3e $03
    ldh [$96], a                                  ; $0886: $e0 $96
    ldh [rSVBK], a                                ; $0888: $e0 $70
    ld hl, $c600                                  ; $088a: $21 $00 $c6
    ld de, $d800                                  ; $088d: $11 $00 $d8
    call Call_000_0775                            ; $0890: $cd $75 $07
    ld hl, $d800                                  ; $0893: $21 $00 $d8
    ld c, $80                                     ; $0896: $0e $80

Call_000_0898:
    call Call_000_03a7                            ; $0898: $cd $a7 $03

Jump_000_089b:
    pop af                                        ; $089b: $f1
    ldh [$96], a                                  ; $089c: $e0 $96
    ldh [rSVBK], a                                ; $089e: $e0 $70

Call_000_08a0:
    pop hl                                        ; $08a0: $e1

Jump_000_08a1:
    pop de                                        ; $08a1: $d1
    pop bc                                        ; $08a2: $c1

Call_000_08a3:
    pop af                                        ; $08a3: $f1
    ret                                           ; $08a4: $c9


Call_000_08a5:
    ld h, $00                                     ; $08a5: $26 $00
    bit 7, l                                      ; $08a7: $cb $7d
    ret z                                         ; $08a9: $c8

    dec h                                         ; $08aa: $25
    ret                                           ; $08ab: $c9


Call_000_08ac:
Jump_000_08ac:
    push af                                       ; $08ac: $f5
    ld a, l                                       ; $08ad: $7d
    sub e                                         ; $08ae: $93
    ld l, a                                       ; $08af: $6f
    ld a, h                                       ; $08b0: $7c
    sbc d                                         ; $08b1: $9a
    ld h, a                                       ; $08b2: $67

Jump_000_08b3:
    pop af                                        ; $08b3: $f1
    ret                                           ; $08b4: $c9


jr_000_08b5:
    ld hl, $0000                                  ; $08b5: $21 $00 $00
    ret                                           ; $08b8: $c9


Call_000_08b9:
Jump_000_08b9:
    or a                                          ; $08b9: $b7
    jr z, jr_000_08b5                             ; $08ba: $28 $f9

    push af                                       ; $08bc: $f5
    push de                                       ; $08bd: $d5
    ld d, h                                       ; $08be: $54
    ld e, l                                       ; $08bf: $5d

Jump_000_08c0:
    add a                                         ; $08c0: $87

Jump_000_08c1:
    jr c, jr_000_08d7                             ; $08c1: $38 $14

    add a                                         ; $08c3: $87

Call_000_08c4:
Jump_000_08c4:
    jr c, jr_000_08de                             ; $08c4: $38 $18

Jump_000_08c6:
    add a                                         ; $08c6: $87
    jr c, jr_000_08e5                             ; $08c7: $38 $1c

    add a                                         ; $08c9: $87
    jr c, jr_000_08ec                             ; $08ca: $38 $20

    add a                                         ; $08cc: $87
    jr c, jr_000_08f3                             ; $08cd: $38 $24

    add a                                         ; $08cf: $87
    jr c, jr_000_08fa                             ; $08d0: $38 $28

    add a                                         ; $08d2: $87
    jr c, jr_000_0901                             ; $08d3: $38 $2c

    jr jr_000_0917                                ; $08d5: $18 $40

jr_000_08d7:
    jr z, jr_000_0908                             ; $08d7: $28 $2f

    add hl, hl                                    ; $08d9: $29
    add a                                         ; $08da: $87

Jump_000_08db:
    jr nc, jr_000_08e0                            ; $08db: $30 $03

    add hl, de                                    ; $08dd: $19

jr_000_08de:
    jr z, jr_000_0911                             ; $08de: $28 $31

Jump_000_08e0:
jr_000_08e0:
    add hl, hl                                    ; $08e0: $29
    add a                                         ; $08e1: $87
    jr nc, jr_000_08e7                            ; $08e2: $30 $03

Jump_000_08e4:
    add hl, de                                    ; $08e4: $19

Jump_000_08e5:
jr_000_08e5:
    jr z, jr_000_0912                             ; $08e5: $28 $2b

Call_000_08e7:
jr_000_08e7:
    add hl, hl                                    ; $08e7: $29

Jump_000_08e8:
    add a                                         ; $08e8: $87

Jump_000_08e9:
    jr nc, jr_000_08ee                            ; $08e9: $30 $03

    add hl, de                                    ; $08eb: $19

jr_000_08ec:
    jr z, jr_000_0913                             ; $08ec: $28 $25

jr_000_08ee:
    add hl, hl                                    ; $08ee: $29

Call_000_08ef:
    add a                                         ; $08ef: $87
    jr nc, jr_000_08f5                            ; $08f0: $30 $03

Jump_000_08f2:
    add hl, de                                    ; $08f2: $19

jr_000_08f3:
    jr z, jr_000_0914                             ; $08f3: $28 $1f

jr_000_08f5:
    add hl, hl                                    ; $08f5: $29

Jump_000_08f6:
    add a                                         ; $08f6: $87
    jr nc, jr_000_08fc                            ; $08f7: $30 $03

    add hl, de                                    ; $08f9: $19

jr_000_08fa:
    jr z, jr_000_0915                             ; $08fa: $28 $19

Call_000_08fc:
jr_000_08fc:
    add hl, hl                                    ; $08fc: $29
    add a                                         ; $08fd: $87

Call_000_08fe:
Jump_000_08fe:
    jr nc, jr_000_0903                            ; $08fe: $30 $03

Call_000_0900:
Jump_000_0900:
    add hl, de                                    ; $0900: $19

jr_000_0901:
    jr z, jr_000_0916                             ; $0901: $28 $13

jr_000_0903:
    add hl, hl                                    ; $0903: $29
    add hl, de                                    ; $0904: $19
    pop de                                        ; $0905: $d1
    pop af                                        ; $0906: $f1
    ret                                           ; $0907: $c9


Call_000_0908:
jr_000_0908:
    srl h                                         ; $0908: $cb $3c
    rr l                                          ; $090a: $cb $1d
    rra                                           ; $090c: $1f
    ld h, l                                       ; $090d: $65
    ld l, a                                       ; $090e: $6f
    jr jr_000_0917                                ; $090f: $18 $06

jr_000_0911:
    add hl, hl                                    ; $0911: $29

jr_000_0912:
    add hl, hl                                    ; $0912: $29

jr_000_0913:
    add hl, hl                                    ; $0913: $29

Call_000_0914:
jr_000_0914:
    add hl, hl                                    ; $0914: $29

jr_000_0915:
    add hl, hl                                    ; $0915: $29

jr_000_0916:
    add hl, hl                                    ; $0916: $29

jr_000_0917:
    pop de                                        ; $0917: $d1

Call_000_0918:
    pop af                                        ; $0918: $f1
    ret                                           ; $0919: $c9


    push af                                       ; $091a: $f5
    push bc                                       ; $091b: $c5
    push de                                       ; $091c: $d5
    add sp, -$02                                  ; $091d: $e8 $fe
    or a                                          ; $091f: $b7
    jr nz, jr_000_0927                            ; $0920: $20 $05

    ld hl, $ffff                                  ; $0922: $21 $ff $ff
    jr jr_000_095e                                ; $0925: $18 $37

jr_000_0927:
    ld b, $ff                                     ; $0927: $06 $ff
    ld a, e                                       ; $0929: $7b
    cpl                                           ; $092a: $2f
    ld c, a                                       ; $092b: $4f
    inc bc                                        ; $092c: $03
    push hl                                       ; $092d: $e5

Call_000_092e:
    ld hl, sp+$02                                 ; $092e: $f8 $02
    ld [hl], c                                    ; $0930: $71
    inc hl                                        ; $0931: $23
    ld [hl], b                                    ; $0932: $70
    pop hl                                        ; $0933: $e1
    ld de, $0000                                  ; $0934: $11 $00 $00
    ld bc, $0000                                  ; $0937: $01 $00 $00
    ld a, $10                                     ; $093a: $3e $10

jr_000_093c:
    add hl, hl                                    ; $093c: $29
    push hl                                       ; $093d: $e5
    rl c                                          ; $093e: $cb $11

Call_000_0940:
    rl b                                          ; $0940: $cb $10

Jump_000_0942:
    sla e                                         ; $0942: $cb $23
    rl d                                          ; $0944: $cb $12
    push bc                                       ; $0946: $c5
    ld h, b                                       ; $0947: $60
    ld l, c                                       ; $0948: $69

Jump_000_0949:
    push hl                                       ; $0949: $e5
    ld hl, sp+$06                                 ; $094a: $f8 $06
    ld c, [hl]                                    ; $094c: $4e

Call_000_094d:
    inc hl                                        ; $094d: $23
    ld b, [hl]                                    ; $094e: $46
    pop hl                                        ; $094f: $e1
    add hl, bc                                    ; $0950: $09
    pop bc                                        ; $0951: $c1
    jr nc, jr_000_0958                            ; $0952: $30 $04

    set 0, e                                      ; $0954: $cb $c3
    ld b, h                                       ; $0956: $44
    ld c, l                                       ; $0957: $4d

jr_000_0958:
    pop hl                                        ; $0958: $e1
    dec a                                         ; $0959: $3d
    jr nz, jr_000_093c                            ; $095a: $20 $e0

    ld h, d                                       ; $095c: $62
    ld l, e                                       ; $095d: $6b

jr_000_095e:
    add sp, $02                                   ; $095e: $e8 $02

Call_000_0960:
Jump_000_0960:
    pop de                                        ; $0960: $d1
    pop bc                                        ; $0961: $c1

Jump_000_0962:
    pop af                                        ; $0962: $f1

Call_000_0963:
    ret                                           ; $0963: $c9


    push af                                       ; $0964: $f5
    push bc                                       ; $0965: $c5
    push de                                       ; $0966: $d5
    add sp, -$02                                  ; $0967: $e8 $fe
    ld a, e                                       ; $0969: $7b
    or a                                          ; $096a: $b7
    jr nz, jr_000_0976                            ; $096b: $20 $09

    ld a, d                                       ; $096d: $7a
    or a                                          ; $096e: $b7
    jr nz, jr_000_0976                            ; $096f: $20 $05

    ld hl, $ffff                                  ; $0971: $21 $ff $ff
    jr jr_000_09a8                                ; $0974: $18 $32

jr_000_0976:
    xor a                                         ; $0976: $af
    sub e                                         ; $0977: $93

Call_000_0978:
    ld c, a                                       ; $0978: $4f
    sbc a                                         ; $0979: $9f
    sub d                                         ; $097a: $92
    ld b, a                                       ; $097b: $47

Jump_000_097c:
    push hl                                       ; $097c: $e5

Call_000_097d:
    ld hl, sp+$02                                 ; $097d: $f8 $02
    ld [hl], c                                    ; $097f: $71

Jump_000_0980:
    inc hl                                        ; $0980: $23
    ld [hl], b                                    ; $0981: $70
    pop hl                                        ; $0982: $e1

Call_000_0983:
    ld de, $0000                                  ; $0983: $11 $00 $00
    ld bc, $0000                                  ; $0986: $01 $00 $00
    ld a, $10                                     ; $0989: $3e $10

jr_000_098b:
    add hl, hl                                    ; $098b: $29
    push hl                                       ; $098c: $e5
    rl c                                          ; $098d: $cb $11
    rl b                                          ; $098f: $cb $10
    sla e                                         ; $0991: $cb $23
    rl d                                          ; $0993: $cb $12
    push af                                       ; $0995: $f5
    ld hl, sp+$04                                 ; $0996: $f8 $04
    ld a, [hl+]                                   ; $0998: $2a
    ld h, [hl]                                    ; $0999: $66
    ld l, a                                       ; $099a: $6f
    pop af                                        ; $099b: $f1
    add hl, bc                                    ; $099c: $09
    jr nc, jr_000_09a2                            ; $099d: $30 $03

    inc e                                         ; $099f: $1c
    ld b, h                                       ; $09a0: $44

Jump_000_09a1:
    ld c, l                                       ; $09a1: $4d

jr_000_09a2:
    pop hl                                        ; $09a2: $e1
    dec a                                         ; $09a3: $3d
    jr nz, jr_000_098b                            ; $09a4: $20 $e5

Jump_000_09a6:
    ld h, d                                       ; $09a6: $62
    ld l, e                                       ; $09a7: $6b

jr_000_09a8:
    add sp, $02                                   ; $09a8: $e8 $02
    pop de                                        ; $09aa: $d1
    pop bc                                        ; $09ab: $c1
    pop af                                        ; $09ac: $f1
    ret                                           ; $09ad: $c9


Call_000_09ae:
    push af                                       ; $09ae: $f5
    push bc                                       ; $09af: $c5
    xor a                                         ; $09b0: $af
    sub e                                         ; $09b1: $93
    ld c, a                                       ; $09b2: $4f
    sbc a                                         ; $09b3: $9f
    sub d                                         ; $09b4: $92
    ld b, a                                       ; $09b5: $47
    or c                                          ; $09b6: $b1
    jr nz, jr_000_09bf                            ; $09b7: $20 $06

    ld hl, $ffff                                  ; $09b9: $21 $ff $ff
    pop bc                                        ; $09bc: $c1
    pop af                                        ; $09bd: $f1
    ret                                           ; $09be: $c9


jr_000_09bf:
    ld a, h                                       ; $09bf: $7c
    ld h, l                                       ; $09c0: $65
    push hl                                       ; $09c1: $e5

Jump_000_09c2:
    ld hl, $0000                                  ; $09c2: $21 $00 $00
    scf                                           ; $09c5: $37
    adc a                                         ; $09c6: $8f

Jump_000_09c7:
    rl l                                          ; $09c7: $cb $15
    add hl, bc                                    ; $09c9: $09
    jr c, jr_000_09ce                             ; $09ca: $38 $02

    dec a                                         ; $09cc: $3d
    add hl, de                                    ; $09cd: $19

jr_000_09ce:
    adc a                                         ; $09ce: $8f
    rl l                                          ; $09cf: $cb $15
    add hl, bc                                    ; $09d1: $09
    jr c, jr_000_09d6                             ; $09d2: $38 $02

    dec a                                         ; $09d4: $3d
    add hl, de                                    ; $09d5: $19

jr_000_09d6:
    adc a                                         ; $09d6: $8f
    rl l                                          ; $09d7: $cb $15
    add hl, bc                                    ; $09d9: $09
    jr c, jr_000_09de                             ; $09da: $38 $02

    dec a                                         ; $09dc: $3d
    add hl, de                                    ; $09dd: $19

jr_000_09de:
    adc a                                         ; $09de: $8f
    rl l                                          ; $09df: $cb $15

Jump_000_09e1:
    add hl, bc                                    ; $09e1: $09

Jump_000_09e2:
    jr c, jr_000_09e6                             ; $09e2: $38 $02

Jump_000_09e4:
    dec a                                         ; $09e4: $3d
    add hl, de                                    ; $09e5: $19

jr_000_09e6:
    adc a                                         ; $09e6: $8f
    rl l                                          ; $09e7: $cb $15
    add hl, bc                                    ; $09e9: $09
    jr c, jr_000_09ee                             ; $09ea: $38 $02

Jump_000_09ec:
    dec a                                         ; $09ec: $3d
    add hl, de                                    ; $09ed: $19

jr_000_09ee:
    adc a                                         ; $09ee: $8f
    rl l                                          ; $09ef: $cb $15
    add hl, bc                                    ; $09f1: $09
    jr c, jr_000_09f6                             ; $09f2: $38 $02

    dec a                                         ; $09f4: $3d
    add hl, de                                    ; $09f5: $19

Call_000_09f6:
jr_000_09f6:
    adc a                                         ; $09f6: $8f
    rl l                                          ; $09f7: $cb $15
    add hl, bc                                    ; $09f9: $09
    jr c, jr_000_09fe                             ; $09fa: $38 $02

    dec a                                         ; $09fc: $3d
    add hl, de                                    ; $09fd: $19

jr_000_09fe:
    adc a                                         ; $09fe: $8f

Call_000_09ff:
    rl l                                          ; $09ff: $cb $15

Call_000_0a01:
Jump_000_0a01:
    add hl, bc                                    ; $0a01: $09
    jr c, jr_000_0a06                             ; $0a02: $38 $02

    dec a                                         ; $0a04: $3d
    add hl, de                                    ; $0a05: $19

jr_000_0a06:
    ld h, a                                       ; $0a06: $67
    pop af                                        ; $0a07: $f1
    push hl                                       ; $0a08: $e5
    ld h, $00                                     ; $0a09: $26 $00
    scf                                           ; $0a0b: $37
    adc a                                         ; $0a0c: $8f

Jump_000_0a0d:
    rl l                                          ; $0a0d: $cb $15
    rl h                                          ; $0a0f: $cb $14
    add hl, bc                                    ; $0a11: $09
    jr c, jr_000_0a16                             ; $0a12: $38 $02

    dec a                                         ; $0a14: $3d
    add hl, de                                    ; $0a15: $19

jr_000_0a16:
    adc a                                         ; $0a16: $8f
    rl l                                          ; $0a17: $cb $15
    rl h                                          ; $0a19: $cb $14
    add hl, bc                                    ; $0a1b: $09
    jr c, jr_000_0a20                             ; $0a1c: $38 $02

    dec a                                         ; $0a1e: $3d
    add hl, de                                    ; $0a1f: $19

jr_000_0a20:
    adc a                                         ; $0a20: $8f
    rl l                                          ; $0a21: $cb $15

Call_000_0a23:
    rl h                                          ; $0a23: $cb $14
    add hl, bc                                    ; $0a25: $09
    jr c, jr_000_0a2a                             ; $0a26: $38 $02

Call_000_0a28:
    dec a                                         ; $0a28: $3d
    add hl, de                                    ; $0a29: $19

Jump_000_0a2a:
jr_000_0a2a:
    adc a                                         ; $0a2a: $8f

Jump_000_0a2b:
    rl l                                          ; $0a2b: $cb $15
    rl h                                          ; $0a2d: $cb $14
    add hl, bc                                    ; $0a2f: $09
    jr c, jr_000_0a34                             ; $0a30: $38 $02

Call_000_0a32:
    dec a                                         ; $0a32: $3d
    add hl, de                                    ; $0a33: $19

jr_000_0a34:
    adc a                                         ; $0a34: $8f
    rl l                                          ; $0a35: $cb $15
    rl h                                          ; $0a37: $cb $14

Jump_000_0a39:
    add hl, bc                                    ; $0a39: $09
    jr c, jr_000_0a3e                             ; $0a3a: $38 $02

    dec a                                         ; $0a3c: $3d
    add hl, de                                    ; $0a3d: $19

Jump_000_0a3e:
jr_000_0a3e:
    adc a                                         ; $0a3e: $8f

Jump_000_0a3f:
    rl l                                          ; $0a3f: $cb $15

Call_000_0a41:
    rl h                                          ; $0a41: $cb $14
    add hl, bc                                    ; $0a43: $09
    jr c, jr_000_0a48                             ; $0a44: $38 $02

Jump_000_0a46:
    dec a                                         ; $0a46: $3d
    add hl, de                                    ; $0a47: $19

Jump_000_0a48:
jr_000_0a48:
    adc a                                         ; $0a48: $8f
    rl l                                          ; $0a49: $cb $15

Call_000_0a4b:
Jump_000_0a4b:
    rl h                                          ; $0a4b: $cb $14
    add hl, bc                                    ; $0a4d: $09

Jump_000_0a4e:
    jr c, jr_000_0a52                             ; $0a4e: $38 $02

Call_000_0a50:
    dec a                                         ; $0a50: $3d
    add hl, de                                    ; $0a51: $19

jr_000_0a52:
    adc a                                         ; $0a52: $8f
    rl l                                          ; $0a53: $cb $15
    rl h                                          ; $0a55: $cb $14
    add hl, bc                                    ; $0a57: $09
    jr c, jr_000_0a5c                             ; $0a58: $38 $02

    dec a                                         ; $0a5a: $3d
    add hl, de                                    ; $0a5b: $19

jr_000_0a5c:
    pop hl                                        ; $0a5c: $e1
    ld l, a                                       ; $0a5d: $6f
    pop bc                                        ; $0a5e: $c1
    pop af                                        ; $0a5f: $f1

Jump_000_0a60:
    ret                                           ; $0a60: $c9


Call_000_0a61:
    push af                                       ; $0a61: $f5
    push de                                       ; $0a62: $d5
    ldh a, [$fc]                                  ; $0a63: $f0 $fc
    ld l, a                                       ; $0a65: $6f
    ldh a, [$fd]                                  ; $0a66: $f0 $fd

Call_000_0a68:
    ld h, a                                       ; $0a68: $67

Call_000_0a69:
    ld d, h                                       ; $0a69: $54
    ld e, l                                       ; $0a6a: $5d

Jump_000_0a6b:
    add hl, hl                                    ; $0a6b: $29
    add hl, hl                                    ; $0a6c: $29
    add hl, de                                    ; $0a6d: $19
    ld de, $3573                                  ; $0a6e: $11 $73 $35
    add hl, de                                    ; $0a71: $19
    ld a, l                                       ; $0a72: $7d
    ldh [$fc], a                                  ; $0a73: $e0 $fc
    ld a, h                                       ; $0a75: $7c
    ldh [$fd], a                                  ; $0a76: $e0 $fd
    pop de                                        ; $0a78: $d1
    pop af                                        ; $0a79: $f1
    ret                                           ; $0a7a: $c9


Call_000_0a7b:
    push bc                                       ; $0a7b: $c5
    ld c, $00                                     ; $0a7c: $0e $00
    ld a, h                                       ; $0a7e: $7c
    or l                                          ; $0a7f: $b5

Jump_000_0a80:
    jr z, jr_000_0acd                             ; $0a80: $28 $4b

    ld c, $10                                     ; $0a82: $0e $10
    ld a, d                                       ; $0a84: $7a
    or e                                          ; $0a85: $b3
    jr z, jr_000_0acd                             ; $0a86: $28 $45

    push hl                                       ; $0a88: $e5
    push de                                       ; $0a89: $d5
    bit 7, d                                      ; $0a8a: $cb $7a
    jr z, jr_000_0a94                             ; $0a8c: $28 $06

    xor a                                         ; $0a8e: $af
    sub e                                         ; $0a8f: $93
    ld e, a                                       ; $0a90: $5f
    sbc a                                         ; $0a91: $9f

Call_000_0a92:
    sub d                                         ; $0a92: $92
    ld d, a                                       ; $0a93: $57

jr_000_0a94:
    bit 7, h                                      ; $0a94: $cb $7c
    jr z, jr_000_0a9e                             ; $0a96: $28 $06

    xor a                                         ; $0a98: $af
    sub l                                         ; $0a99: $95
    ld l, a                                       ; $0a9a: $6f
    sbc a                                         ; $0a9b: $9f
    sub h                                         ; $0a9c: $94
    ld h, a                                       ; $0a9d: $67

jr_000_0a9e:
    ld a, h                                       ; $0a9e: $7c
    cp $10                                        ; $0a9f: $fe $10
    jr c, jr_000_0aaf                             ; $0aa1: $38 $0c

    sra d                                         ; $0aa3: $cb $2a

Jump_000_0aa5:
    rr e                                          ; $0aa5: $cb $1b
    sra d                                         ; $0aa7: $cb $2a
    rr e                                          ; $0aa9: $cb $1b
    add hl, hl                                    ; $0aab: $29
    add hl, hl                                    ; $0aac: $29
    jr jr_000_0ab3                                ; $0aad: $18 $04

jr_000_0aaf:
    add hl, hl                                    ; $0aaf: $29
    add hl, hl                                    ; $0ab0: $29
    add hl, hl                                    ; $0ab1: $29
    add hl, hl                                    ; $0ab2: $29

jr_000_0ab3:
    call Call_000_09ae                            ; $0ab3: $cd $ae $09
    ld c, $0f                                     ; $0ab6: $0e $0f
    ld a, h                                       ; $0ab8: $7c
    or a                                          ; $0ab9: $b7
    jr nz, jr_000_0acb                            ; $0aba: $20 $0f

    ld b, l                                       ; $0abc: $45
    ld hl, $0ae1                                  ; $0abd: $21 $e1 $0a

Jump_000_0ac0:
    ld c, $ff                                     ; $0ac0: $0e $ff

Jump_000_0ac2:
jr_000_0ac2:
    inc c                                         ; $0ac2: $0c
    ld a, [hl+]                                   ; $0ac3: $2a
    cp $ff                                        ; $0ac4: $fe $ff
    jr z, jr_000_0acb                             ; $0ac6: $28 $03

Call_000_0ac8:
    cp b                                          ; $0ac8: $b8
    jr c, jr_000_0ac2                             ; $0ac9: $38 $f7

jr_000_0acb:
    pop de                                        ; $0acb: $d1
    pop hl                                        ; $0acc: $e1

jr_000_0acd:
    ld a, c                                       ; $0acd: $79
    add a                                         ; $0ace: $87
    add a                                         ; $0acf: $87
    bit 7, d                                      ; $0ad0: $cb $7a
    jr z, jr_000_0ad8                             ; $0ad2: $28 $04

    ld c, a                                       ; $0ad4: $4f
    ld a, $80                                     ; $0ad5: $3e $80
    sub c                                         ; $0ad7: $91

jr_000_0ad8:
    bit 7, h                                      ; $0ad8: $cb $7c
    jr z, jr_000_0adf                             ; $0ada: $28 $03

    ld c, a                                       ; $0adc: $4f
    xor a                                         ; $0add: $af
    sub c                                         ; $0ade: $91

jr_000_0adf:
    pop bc                                        ; $0adf: $c1

Jump_000_0ae0:
    ret                                           ; $0ae0: $c9


    db $00, $01, $03, $04, $06, $08, $0a, $0d, $10, $13, $18, $1e, $26, $35, $51, $a5
    db $ff

Call_000_0af2:
    sra h                                         ; $0af2: $cb $2c
    rr l                                          ; $0af4: $cb $1d
    sra h                                         ; $0af6: $cb $2c
    rr l                                          ; $0af8: $cb $1d

Call_000_0afa:
    sra h                                         ; $0afa: $cb $2c
    rr l                                          ; $0afc: $cb $1d
    sra h                                         ; $0afe: $cb $2c
    rr l                                          ; $0b00: $cb $1d
    push hl                                       ; $0b02: $e5
    push af                                       ; $0b03: $f5
    call Call_000_0b3c                            ; $0b04: $cd $3c $0b

Jump_000_0b07:
    pop af                                        ; $0b07: $f1
    ld d, h                                       ; $0b08: $54
    ld e, l                                       ; $0b09: $5d

Jump_000_0b0a:
    pop hl                                        ; $0b0a: $e1

Call_000_0b0b:
Jump_000_0b0b:
    call Call_000_0b3a                            ; $0b0b: $cd $3a $0b
    add hl, hl                                    ; $0b0e: $29
    add hl, hl                                    ; $0b0f: $29
    add hl, hl                                    ; $0b10: $29

Jump_000_0b11:
    add hl, hl                                    ; $0b11: $29
    sla e                                         ; $0b12: $cb $23
    rl d                                          ; $0b14: $cb $12
    sla e                                         ; $0b16: $cb $23
    rl d                                          ; $0b18: $cb $12
    sla e                                         ; $0b1a: $cb $23
    rl d                                          ; $0b1c: $cb $12
    sla e                                         ; $0b1e: $cb $23
    rl d                                          ; $0b20: $cb $12
    ret                                           ; $0b22: $c9


    bit 7, h                                      ; $0b23: $cb $7c
    jr z, jr_000_0b31                             ; $0b25: $28 $0a

    push af                                       ; $0b27: $f5
    xor a                                         ; $0b28: $af
    sub l                                         ; $0b29: $95
    ld l, a                                       ; $0b2a: $6f

Call_000_0b2b:
Jump_000_0b2b:
    sbc a                                         ; $0b2b: $9f
    sub h                                         ; $0b2c: $94
    ld h, a                                       ; $0b2d: $67
    pop af                                        ; $0b2e: $f1
    add $80                                       ; $0b2f: $c6 $80

Call_000_0b31:
jr_000_0b31:
    push hl                                       ; $0b31: $e5
    push af                                       ; $0b32: $f5
    call Call_000_0b3c                            ; $0b33: $cd $3c $0b
    pop af                                        ; $0b36: $f1
    ld d, h                                       ; $0b37: $54
    ld e, l                                       ; $0b38: $5d
    pop hl                                        ; $0b39: $e1

Call_000_0b3a:
    add $40                                       ; $0b3a: $c6 $40

Call_000_0b3c:
    bit 7, a                                      ; $0b3c: $cb $7f
    jr z, jr_000_0b4c                             ; $0b3e: $28 $0c

    and $7f                                       ; $0b40: $e6 $7f
    call Call_000_0b4c                            ; $0b42: $cd $4c $0b
    xor a                                         ; $0b45: $af
    sub l                                         ; $0b46: $95
    ld l, a                                       ; $0b47: $6f
    sbc a                                         ; $0b48: $9f
    sub h                                         ; $0b49: $94
    ld h, a                                       ; $0b4a: $67

Jump_000_0b4b:
    ret                                           ; $0b4b: $c9


Call_000_0b4c:
jr_000_0b4c:
    bit 6, a                                      ; $0b4c: $cb $77
    jr z, jr_000_0b53                             ; $0b4e: $28 $03

    cpl                                           ; $0b50: $2f
    add $81                                       ; $0b51: $c6 $81

jr_000_0b53:
    push bc                                       ; $0b53: $c5
    add $69                                       ; $0b54: $c6 $69
    ld c, a                                       ; $0b56: $4f
    adc $0b                                       ; $0b57: $ce $0b
    sub c                                         ; $0b59: $91
    ld b, a                                       ; $0b5a: $47
    ld a, [bc]                                    ; $0b5b: $0a

Jump_000_0b5c:
    call Call_000_08b9                            ; $0b5c: $cd $b9 $08
    ld bc, $0040                                  ; $0b5f: $01 $40 $00
    add hl, bc                                    ; $0b62: $09
    add hl, hl                                    ; $0b63: $29
    sbc a                                         ; $0b64: $9f
    ld l, h                                       ; $0b65: $6c
    ld h, a                                       ; $0b66: $67
    pop bc                                        ; $0b67: $c1
    ret                                           ; $0b68: $c9


    db $00, $03, $06, $09, $0d, $10, $13, $16, $19, $1c, $1f, $22, $25, $28, $2b, $2e
    db $31, $34, $37, $3a, $3c, $3f, $42, $45, $47, $4a, $4c, $4f, $51, $54, $56, $58
    db $5b, $5d, $5f, $61, $63, $65, $67, $69, $6b, $6c, $6e, $6f, $71, $72, $74, $75
    db $76, $77, $79, $7a, $7b, $7b, $7c, $7d, $7e, $7e, $7f, $7f, $7f, $80, $80, $80
    db $80

    ld a, [hl]                                    ; $0baa: $7e
    add e                                         ; $0bab: $83
    ld [hl+], a                                   ; $0bac: $22
    ld a, [hl]                                    ; $0bad: $7e
    adc d                                         ; $0bae: $8a
    ld [hl+], a                                   ; $0baf: $22
    ld a, [hl]                                    ; $0bb0: $7e
    jr nc, jr_000_0bb4                            ; $0bb1: $30 $01

    inc [hl]                                      ; $0bb3: $34

jr_000_0bb4:
    ret                                           ; $0bb4: $c9


Call_000_0bb5:
    bit 7, h                                      ; $0bb5: $cb $7c
    jp z, Jump_000_08b9                           ; $0bb7: $ca $b9 $08

    push af                                       ; $0bba: $f5
    xor a                                         ; $0bbb: $af
    sub l                                         ; $0bbc: $95
    ld l, a                                       ; $0bbd: $6f
    sbc a                                         ; $0bbe: $9f
    sub h                                         ; $0bbf: $94

Jump_000_0bc0:
    ld h, a                                       ; $0bc0: $67
    pop af                                        ; $0bc1: $f1
    call Call_000_08b9                            ; $0bc2: $cd $b9 $08
    push af                                       ; $0bc5: $f5

Call_000_0bc6:
    xor a                                         ; $0bc6: $af
    sub l                                         ; $0bc7: $95
    ld l, a                                       ; $0bc8: $6f

Call_000_0bc9:
    sbc a                                         ; $0bc9: $9f
    sub h                                         ; $0bca: $94

Jump_000_0bcb:
    ld h, a                                       ; $0bcb: $67
    pop af                                        ; $0bcc: $f1

Jump_000_0bcd:
    ret                                           ; $0bcd: $c9


Call_000_0bce:
    bit 7, h                                      ; $0bce: $cb $7c
    jr z, jr_000_0bec                             ; $0bd0: $28 $1a

    push de                                       ; $0bd2: $d5
    ld d, a                                       ; $0bd3: $57
    xor a                                         ; $0bd4: $af
    sub l                                         ; $0bd5: $95
    ld l, a                                       ; $0bd6: $6f
    sbc a                                         ; $0bd7: $9f
    sub h                                         ; $0bd8: $94
    ld h, a                                       ; $0bd9: $67
    ld a, d                                       ; $0bda: $7a
    call Call_000_0bec                            ; $0bdb: $cd $ec $0b
    ld d, a                                       ; $0bde: $57
    xor a                                         ; $0bdf: $af

Call_000_0be0:
Jump_000_0be0:
    sub l                                         ; $0be0: $95

Jump_000_0be1:
    ld l, a                                       ; $0be1: $6f

Jump_000_0be2:
    sbc a                                         ; $0be2: $9f

Jump_000_0be3:
    sub h                                         ; $0be3: $94
    ld h, a                                       ; $0be4: $67

Jump_000_0be5:
    ld a, d                                       ; $0be5: $7a
    pop de                                        ; $0be6: $d1
    ret                                           ; $0be7: $c9


jr_000_0be8:
    ld hl, $0000                                  ; $0be8: $21 $00 $00
    ret                                           ; $0beb: $c9


Call_000_0bec:
Jump_000_0bec:
jr_000_0bec:
    or a                                          ; $0bec: $b7
    jr z, jr_000_0be8                             ; $0bed: $28 $f9

    push de                                       ; $0bef: $d5

Jump_000_0bf0:
    ld e, l                                       ; $0bf0: $5d
    ld d, h                                       ; $0bf1: $54
    rra                                           ; $0bf2: $1f
    jr c, jr_000_0c21                             ; $0bf3: $38 $2c

    rra                                           ; $0bf5: $1f
    jr c, jr_000_0c09                             ; $0bf6: $38 $11

    rra                                           ; $0bf8: $1f
    jr c, jr_000_0c0d                             ; $0bf9: $38 $12

    rra                                           ; $0bfb: $1f
    jr c, jr_000_0c11                             ; $0bfc: $38 $13

Jump_000_0bfe:
    rra                                           ; $0bfe: $1f
    jr c, jr_000_0c15                             ; $0bff: $38 $14

    rra                                           ; $0c01: $1f
    jr c, jr_000_0c19                             ; $0c02: $38 $15

    rra                                           ; $0c04: $1f

Call_000_0c05:
    jr c, jr_000_0c1d                             ; $0c05: $38 $16

Jump_000_0c07:
    jr jr_000_0c59                                ; $0c07: $18 $50

jr_000_0c09:
    srl h                                         ; $0c09: $cb $3c

Jump_000_0c0b:
    jr jr_000_0c2b                                ; $0c0b: $18 $1e

jr_000_0c0d:
    srl h                                         ; $0c0d: $cb $3c
    jr jr_000_0c33                                ; $0c0f: $18 $22

jr_000_0c11:
    srl h                                         ; $0c11: $cb $3c
    jr jr_000_0c3b                                ; $0c13: $18 $26

jr_000_0c15:
    srl h                                         ; $0c15: $cb $3c
    jr jr_000_0c43                                ; $0c17: $18 $2a

jr_000_0c19:
    srl h                                         ; $0c19: $cb $3c
    jr jr_000_0c4b                                ; $0c1b: $18 $2e

jr_000_0c1d:
    srl h                                         ; $0c1d: $cb $3c
    jr jr_000_0c53                                ; $0c1f: $18 $32

jr_000_0c21:
    srl h                                         ; $0c21: $cb $3c
    rr l                                          ; $0c23: $cb $1d
    rra                                           ; $0c25: $1f
    jr nc, jr_000_0c29                            ; $0c26: $30 $01

    add hl, de                                    ; $0c28: $19

Call_000_0c29:
jr_000_0c29:
    rr h                                          ; $0c29: $cb $1c

jr_000_0c2b:
    rr l                                          ; $0c2b: $cb $1d
    rra                                           ; $0c2d: $1f
    jr nc, jr_000_0c31                            ; $0c2e: $30 $01

Jump_000_0c30:
    add hl, de                                    ; $0c30: $19

jr_000_0c31:
    rr h                                          ; $0c31: $cb $1c

jr_000_0c33:
    rr l                                          ; $0c33: $cb $1d
    rra                                           ; $0c35: $1f
    jr nc, jr_000_0c39                            ; $0c36: $30 $01

    add hl, de                                    ; $0c38: $19

jr_000_0c39:
    rr h                                          ; $0c39: $cb $1c

jr_000_0c3b:
    rr l                                          ; $0c3b: $cb $1d
    rra                                           ; $0c3d: $1f
    jr nc, jr_000_0c41                            ; $0c3e: $30 $01

Jump_000_0c40:
    add hl, de                                    ; $0c40: $19

jr_000_0c41:
    rr h                                          ; $0c41: $cb $1c

jr_000_0c43:
    rr l                                          ; $0c43: $cb $1d
    rra                                           ; $0c45: $1f
    jr nc, jr_000_0c49                            ; $0c46: $30 $01

    add hl, de                                    ; $0c48: $19

jr_000_0c49:
    rr h                                          ; $0c49: $cb $1c

jr_000_0c4b:
    rr l                                          ; $0c4b: $cb $1d
    rra                                           ; $0c4d: $1f
    jr nc, jr_000_0c51                            ; $0c4e: $30 $01

    add hl, de                                    ; $0c50: $19

jr_000_0c51:
    rr h                                          ; $0c51: $cb $1c

jr_000_0c53:
    rr l                                          ; $0c53: $cb $1d
    rra                                           ; $0c55: $1f
    jr nc, jr_000_0c59                            ; $0c56: $30 $01

    add hl, de                                    ; $0c58: $19

jr_000_0c59:
    rr h                                          ; $0c59: $cb $1c
    rr l                                          ; $0c5b: $cb $1d
    rra                                           ; $0c5d: $1f
    pop de                                        ; $0c5e: $d1
    ret                                           ; $0c5f: $c9


Call_000_0c60:
    xor a                                         ; $0c60: $af
    sub l                                         ; $0c61: $95

Jump_000_0c62:
    ld l, a                                       ; $0c62: $6f
    sbc a                                         ; $0c63: $9f
    sub h                                         ; $0c64: $94
    ld h, a                                       ; $0c65: $67
    ret                                           ; $0c66: $c9


Call_000_0c67:
    xor a                                         ; $0c67: $af
    sub e                                         ; $0c68: $93

Call_000_0c69:
Jump_000_0c69:
    ld e, a                                       ; $0c69: $5f
    sbc a                                         ; $0c6a: $9f
    sub d                                         ; $0c6b: $92

Jump_000_0c6c:
    ld d, a                                       ; $0c6c: $57
    ret                                           ; $0c6d: $c9


    bit 7, h                                      ; $0c6e: $cb $7c
    jr z, jr_000_0cb5                             ; $0c70: $28 $43

    push af                                       ; $0c72: $f5
    ld a, l                                       ; $0c73: $7d
    cpl                                           ; $0c74: $2f
    add $01                                       ; $0c75: $c6 $01
    ld l, a                                       ; $0c77: $6f
    ld a, h                                       ; $0c78: $7c
    sbc $00                                       ; $0c79: $de $00
    cpl                                           ; $0c7b: $2f

Jump_000_0c7c:
    ld h, a                                       ; $0c7c: $67
    pop af                                        ; $0c7d: $f1
    call Call_000_0cb5                            ; $0c7e: $cd $b5 $0c
    push af                                       ; $0c81: $f5
    ld a, l                                       ; $0c82: $7d
    cpl                                           ; $0c83: $2f
    add $01                                       ; $0c84: $c6 $01
    ld l, a                                       ; $0c86: $6f
    ld a, h                                       ; $0c87: $7c
    sbc $00                                       ; $0c88: $de $00
    cpl                                           ; $0c8a: $2f
    ld h, a                                       ; $0c8b: $67

Call_000_0c8c:
Jump_000_0c8c:
    pop af                                        ; $0c8c: $f1
    ret                                           ; $0c8d: $c9


Call_000_0c8e:
    ld a, h                                       ; $0c8e: $7c
    xor d                                         ; $0c8f: $aa
    ldh [$a7], a                                  ; $0c90: $e0 $a7
    bit 7, h                                      ; $0c92: $cb $7c
    jr z, jr_000_0c9c                             ; $0c94: $28 $06

    xor a                                         ; $0c96: $af
    sub l                                         ; $0c97: $95
    ld l, a                                       ; $0c98: $6f
    sbc a                                         ; $0c99: $9f
    sub h                                         ; $0c9a: $94
    ld h, a                                       ; $0c9b: $67

jr_000_0c9c:
    bit 7, d                                      ; $0c9c: $cb $7a
    jr z, jr_000_0ca6                             ; $0c9e: $28 $06

    xor a                                         ; $0ca0: $af

Call_000_0ca1:
    sub e                                         ; $0ca1: $93
    ld e, a                                       ; $0ca2: $5f
    sbc a                                         ; $0ca3: $9f

Jump_000_0ca4:
    sub d                                         ; $0ca4: $92
    ld d, a                                       ; $0ca5: $57

jr_000_0ca6:
    call Call_000_0cb5                            ; $0ca6: $cd $b5 $0c
    ldh a, [$a7]                                  ; $0ca9: $f0 $a7
    bit 7, a                                      ; $0cab: $cb $7f

Jump_000_0cad:
    ret z                                         ; $0cad: $c8

    xor a                                         ; $0cae: $af
    sub l                                         ; $0caf: $95
    ld l, a                                       ; $0cb0: $6f
    sbc a                                         ; $0cb1: $9f
    sub h                                         ; $0cb2: $94
    ld h, a                                       ; $0cb3: $67
    ret                                           ; $0cb4: $c9


Call_000_0cb5:
jr_000_0cb5:
    push de                                       ; $0cb5: $d5
    push bc                                       ; $0cb6: $c5
    ld c, d                                       ; $0cb7: $4a
    ld a, e                                       ; $0cb8: $7b
    ld b, $00                                     ; $0cb9: $06 $00
    push hl                                       ; $0cbb: $e5
    add a                                         ; $0cbc: $87
    jr c, jr_000_0cdd                             ; $0cbd: $38 $1e

    jr z, jr_000_0cd8                             ; $0cbf: $28 $17

Call_000_0cc1:
Jump_000_0cc1:
    ld e, l                                       ; $0cc1: $5d
    ld d, h                                       ; $0cc2: $54
    add a                                         ; $0cc3: $87
    jr c, jr_000_0ce5                             ; $0cc4: $38 $1f

    add a                                         ; $0cc6: $87

Call_000_0cc7:
    jr c, jr_000_0ceb                             ; $0cc7: $38 $22

    add a                                         ; $0cc9: $87
    jr c, jr_000_0cf1                             ; $0cca: $38 $25

    add a                                         ; $0ccc: $87
    jr c, jr_000_0cf7                             ; $0ccd: $38 $28

    add a                                         ; $0ccf: $87
    jr c, jr_000_0cfd                             ; $0cd0: $38 $2b

    add a                                         ; $0cd2: $87
    jr c, jr_000_0d03                             ; $0cd3: $38 $2e

    xor a                                         ; $0cd5: $af
    jr jr_000_0d09                                ; $0cd6: $18 $31

jr_000_0cd8:
    ld hl, $0000                                  ; $0cd8: $21 $00 $00

Jump_000_0cdb:
    jr jr_000_0d09                                ; $0cdb: $18 $2c

jr_000_0cdd:
    ld e, l                                       ; $0cdd: $5d
    ld d, h                                       ; $0cde: $54
    add hl, hl                                    ; $0cdf: $29

Jump_000_0ce0:
    adc a                                         ; $0ce0: $8f

Jump_000_0ce1:
    jr nc, jr_000_0ce5                            ; $0ce1: $30 $02

    add hl, de                                    ; $0ce3: $19

Jump_000_0ce4:
    adc b                                         ; $0ce4: $88

jr_000_0ce5:
    add hl, hl                                    ; $0ce5: $29
    adc a                                         ; $0ce6: $8f
    jr nc, jr_000_0ceb                            ; $0ce7: $30 $02

Jump_000_0ce9:
    add hl, de                                    ; $0ce9: $19
    adc b                                         ; $0cea: $88

jr_000_0ceb:
    add hl, hl                                    ; $0ceb: $29
    adc a                                         ; $0cec: $8f
    jr nc, jr_000_0cf1                            ; $0ced: $30 $02

    add hl, de                                    ; $0cef: $19

Jump_000_0cf0:
    adc b                                         ; $0cf0: $88

jr_000_0cf1:
    add hl, hl                                    ; $0cf1: $29
    adc a                                         ; $0cf2: $8f
    jr nc, jr_000_0cf7                            ; $0cf3: $30 $02

    add hl, de                                    ; $0cf5: $19
    adc b                                         ; $0cf6: $88

jr_000_0cf7:
    add hl, hl                                    ; $0cf7: $29
    adc a                                         ; $0cf8: $8f
    jr nc, jr_000_0cfd                            ; $0cf9: $30 $02

    add hl, de                                    ; $0cfb: $19

Call_000_0cfc:
    adc b                                         ; $0cfc: $88

jr_000_0cfd:
    add hl, hl                                    ; $0cfd: $29

Jump_000_0cfe:
    adc a                                         ; $0cfe: $8f

Call_000_0cff:
    jr nc, jr_000_0d03                            ; $0cff: $30 $02

Jump_000_0d01:
    add hl, de                                    ; $0d01: $19
    adc b                                         ; $0d02: $88

jr_000_0d03:
    add hl, hl                                    ; $0d03: $29
    adc a                                         ; $0d04: $8f
    jr nc, jr_000_0d09                            ; $0d05: $30 $02

Call_000_0d07:
    add hl, de                                    ; $0d07: $19
    adc b                                         ; $0d08: $88

jr_000_0d09:
    ld e, h                                       ; $0d09: $5c
    ld d, a                                       ; $0d0a: $57

Jump_000_0d0b:
    ld a, c                                       ; $0d0b: $79

Jump_000_0d0c:
    ld c, l                                       ; $0d0c: $4d

Call_000_0d0d:
Jump_000_0d0d:
    pop hl                                        ; $0d0d: $e1

Jump_000_0d0e:
    push de                                       ; $0d0e: $d5

Jump_000_0d0f:
    add a                                         ; $0d0f: $87
    jr c, jr_000_0d30                             ; $0d10: $38 $1e

    jr z, jr_000_0d2b                             ; $0d12: $28 $17

    ld e, l                                       ; $0d14: $5d
    ld d, h                                       ; $0d15: $54
    add a                                         ; $0d16: $87
    jr c, jr_000_0d38                             ; $0d17: $38 $1f

    add a                                         ; $0d19: $87
    jr c, jr_000_0d3e                             ; $0d1a: $38 $22

    add a                                         ; $0d1c: $87
    jr c, jr_000_0d44                             ; $0d1d: $38 $25

    add a                                         ; $0d1f: $87
    jr c, jr_000_0d4a                             ; $0d20: $38 $28

    add a                                         ; $0d22: $87
    jr c, jr_000_0d50                             ; $0d23: $38 $2b

    add a                                         ; $0d25: $87
    jr c, jr_000_0d56                             ; $0d26: $38 $2e

    xor a                                         ; $0d28: $af
    jr jr_000_0d5c                                ; $0d29: $18 $31

jr_000_0d2b:
    ld hl, $0000                                  ; $0d2b: $21 $00 $00
    jr jr_000_0d5c                                ; $0d2e: $18 $2c

Call_000_0d30:
Jump_000_0d30:
jr_000_0d30:
    ld e, l                                       ; $0d30: $5d
    ld d, h                                       ; $0d31: $54

Call_000_0d32:
    add hl, hl                                    ; $0d32: $29
    adc a                                         ; $0d33: $8f
    jr nc, jr_000_0d38                            ; $0d34: $30 $02

    add hl, de                                    ; $0d36: $19
    adc b                                         ; $0d37: $88

jr_000_0d38:
    add hl, hl                                    ; $0d38: $29
    adc a                                         ; $0d39: $8f
    jr nc, jr_000_0d3e                            ; $0d3a: $30 $02

    add hl, de                                    ; $0d3c: $19
    adc b                                         ; $0d3d: $88

jr_000_0d3e:
    add hl, hl                                    ; $0d3e: $29
    adc a                                         ; $0d3f: $8f
    jr nc, jr_000_0d44                            ; $0d40: $30 $02

    add hl, de                                    ; $0d42: $19
    adc b                                         ; $0d43: $88

jr_000_0d44:
    add hl, hl                                    ; $0d44: $29
    adc a                                         ; $0d45: $8f
    jr nc, jr_000_0d4a                            ; $0d46: $30 $02

    add hl, de                                    ; $0d48: $19
    adc b                                         ; $0d49: $88

jr_000_0d4a:
    add hl, hl                                    ; $0d4a: $29
    adc a                                         ; $0d4b: $8f
    jr nc, jr_000_0d50                            ; $0d4c: $30 $02

    add hl, de                                    ; $0d4e: $19
    adc b                                         ; $0d4f: $88

jr_000_0d50:
    add hl, hl                                    ; $0d50: $29
    adc a                                         ; $0d51: $8f
    jr nc, jr_000_0d56                            ; $0d52: $30 $02

    add hl, de                                    ; $0d54: $19
    adc b                                         ; $0d55: $88

jr_000_0d56:
    add hl, hl                                    ; $0d56: $29
    adc a                                         ; $0d57: $8f
    jr nc, jr_000_0d5c                            ; $0d58: $30 $02

    add hl, de                                    ; $0d5a: $19

Jump_000_0d5b:
    adc b                                         ; $0d5b: $88

jr_000_0d5c:
    pop de                                        ; $0d5c: $d1
    add hl, de                                    ; $0d5d: $19
    adc b                                         ; $0d5e: $88
    ld b, a                                       ; $0d5f: $47
    ld a, c                                       ; $0d60: $79

Call_000_0d61:
    ldh [$a8], a                                  ; $0d61: $e0 $a8
    ld a, l                                       ; $0d63: $7d
    ldh [$a9], a                                  ; $0d64: $e0 $a9
    ld a, h                                       ; $0d66: $7c

Jump_000_0d67:
    ld l, h                                       ; $0d67: $6c
    ldh [$aa], a                                  ; $0d68: $e0 $aa
    ld a, b                                       ; $0d6a: $78

Jump_000_0d6b:
    ld h, b                                       ; $0d6b: $60
    ldh [$ab], a                                  ; $0d6c: $e0 $ab
    pop bc                                        ; $0d6e: $c1
    pop de                                        ; $0d6f: $d1
    ret                                           ; $0d70: $c9


    push bc                                       ; $0d71: $c5
    push de                                       ; $0d72: $d5
    add sp, -$02                                  ; $0d73: $e8 $fe
    ldh [$ae], a                                  ; $0d75: $e0 $ae

Jump_000_0d77:
    ld a, h                                       ; $0d77: $7c
    ldh [$ad], a                                  ; $0d78: $e0 $ad
    ld a, l                                       ; $0d7a: $7d
    ldh [$ac], a                                  ; $0d7b: $e0 $ac
    ldh a, [$ae]                                  ; $0d7d: $f0 $ae
    ld h, a                                       ; $0d7f: $67

Jump_000_0d80:
    ldh a, [$ad]                                  ; $0d80: $f0 $ad
    ld l, a                                       ; $0d82: $6f
    ld a, e                                       ; $0d83: $7b
    or d                                          ; $0d84: $b2
    jr nz, jr_000_0d8d                            ; $0d85: $20 $06

    ld a, $ff                                     ; $0d87: $3e $ff
    ld h, a                                       ; $0d89: $67
    ld l, a                                       ; $0d8a: $6f
    jr jr_000_0dd6                                ; $0d8b: $18 $49

jr_000_0d8d:
    ld a, d                                       ; $0d8d: $7a
    cpl                                           ; $0d8e: $2f
    ld b, a                                       ; $0d8f: $47
    ld a, e                                       ; $0d90: $7b
    cpl                                           ; $0d91: $2f
    ld c, a                                       ; $0d92: $4f
    inc bc                                        ; $0d93: $03
    push hl                                       ; $0d94: $e5
    ld hl, sp+$02                                 ; $0d95: $f8 $02
    ld [hl], c                                    ; $0d97: $71
    inc hl                                        ; $0d98: $23
    ld [hl], b                                    ; $0d99: $70
    pop hl                                        ; $0d9a: $e1
    ld de, $0000                                  ; $0d9b: $11 $00 $00
    ld bc, $0000                                  ; $0d9e: $01 $00 $00
    ld a, $18                                     ; $0da1: $3e $18

jr_000_0da3:
    cp $10                                        ; $0da3: $fe $10
    jr nz, jr_000_0db2                            ; $0da5: $20 $0b

    push af                                       ; $0da7: $f5
    ldh a, [$ac]                                  ; $0da8: $f0 $ac
    ld l, a                                       ; $0daa: $6f
    ld a, e                                       ; $0dab: $7b
    ldh [$ae], a                                  ; $0dac: $e0 $ae
    ld de, $0000                                  ; $0dae: $11 $00 $00
    pop af                                        ; $0db1: $f1

jr_000_0db2:
    add hl, hl                                    ; $0db2: $29
    push hl                                       ; $0db3: $e5
    rl c                                          ; $0db4: $cb $11
    rl b                                          ; $0db6: $cb $10
    sla e                                         ; $0db8: $cb $23
    rl d                                          ; $0dba: $cb $12
    push bc                                       ; $0dbc: $c5
    ld h, b                                       ; $0dbd: $60
    ld l, c                                       ; $0dbe: $69
    push hl                                       ; $0dbf: $e5
    ld hl, sp+$06                                 ; $0dc0: $f8 $06
    ld c, [hl]                                    ; $0dc2: $4e
    inc hl                                        ; $0dc3: $23
    ld b, [hl]                                    ; $0dc4: $46
    pop hl                                        ; $0dc5: $e1
    add hl, bc                                    ; $0dc6: $09
    pop bc                                        ; $0dc7: $c1
    jr nc, jr_000_0dce                            ; $0dc8: $30 $04

    set 0, e                                      ; $0dca: $cb $c3
    ld b, h                                       ; $0dcc: $44
    ld c, l                                       ; $0dcd: $4d

Call_000_0dce:
jr_000_0dce:
    pop hl                                        ; $0dce: $e1
    dec a                                         ; $0dcf: $3d
    jr nz, jr_000_0da3                            ; $0dd0: $20 $d1

    ld h, d                                       ; $0dd2: $62
    ld l, e                                       ; $0dd3: $6b
    ldh a, [$ae]                                  ; $0dd4: $f0 $ae

jr_000_0dd6:
    add sp, $02                                   ; $0dd6: $e8 $02
    pop de                                        ; $0dd8: $d1
    pop bc                                        ; $0dd9: $c1
    ret                                           ; $0dda: $c9


Call_000_0ddb:
Jump_000_0ddb:
    push bc                                       ; $0ddb: $c5
    ldh [$ac], a                                  ; $0ddc: $e0 $ac
    xor a                                         ; $0dde: $af
    sub e                                         ; $0ddf: $93

Call_000_0de0:
Jump_000_0de0:
    ld c, a                                       ; $0de0: $4f

Call_000_0de1:
Jump_000_0de1:
    sbc a                                         ; $0de1: $9f
    sub d                                         ; $0de2: $92

Jump_000_0de3:
    ld b, a                                       ; $0de3: $47

Jump_000_0de4:
    or c                                          ; $0de4: $b1

Jump_000_0de5:
    jr nz, jr_000_0ded                            ; $0de5: $20 $06

Call_000_0de7:
    ld a, $ff                                     ; $0de7: $3e $ff
    ld h, a                                       ; $0de9: $67
    ld l, a                                       ; $0dea: $6f

Jump_000_0deb:
    pop bc                                        ; $0deb: $c1
    ret                                           ; $0dec: $c9


jr_000_0ded:
    ld a, l                                       ; $0ded: $7d
    push af                                       ; $0dee: $f5
    ldh a, [$ac]                                  ; $0def: $f0 $ac
    push hl                                       ; $0df1: $e5

Call_000_0df2:
Jump_000_0df2:
    scf                                           ; $0df2: $37
    ld hl, $0000                                  ; $0df3: $21 $00 $00
    adc a                                         ; $0df6: $8f
    rl l                                          ; $0df7: $cb $15

Jump_000_0df9:
    add hl, bc                                    ; $0df9: $09

Call_000_0dfa:
    jr c, jr_000_0dfe                             ; $0dfa: $38 $02

Jump_000_0dfc:
    dec a                                         ; $0dfc: $3d
    add hl, de                                    ; $0dfd: $19

jr_000_0dfe:
    adc a                                         ; $0dfe: $8f

Jump_000_0dff:
    rl l                                          ; $0dff: $cb $15
    add hl, bc                                    ; $0e01: $09
    jr c, jr_000_0e06                             ; $0e02: $38 $02

    dec a                                         ; $0e04: $3d

Jump_000_0e05:
    add hl, de                                    ; $0e05: $19

jr_000_0e06:
    adc a                                         ; $0e06: $8f
    rl l                                          ; $0e07: $cb $15
    add hl, bc                                    ; $0e09: $09
    jr c, jr_000_0e0e                             ; $0e0a: $38 $02

Jump_000_0e0c:
    dec a                                         ; $0e0c: $3d
    add hl, de                                    ; $0e0d: $19

Call_000_0e0e:
Jump_000_0e0e:
jr_000_0e0e:
    adc a                                         ; $0e0e: $8f

Call_000_0e0f:
    rl l                                          ; $0e0f: $cb $15
    add hl, bc                                    ; $0e11: $09
    jr c, jr_000_0e16                             ; $0e12: $38 $02

    dec a                                         ; $0e14: $3d
    add hl, de                                    ; $0e15: $19

jr_000_0e16:
    adc a                                         ; $0e16: $8f
    rl l                                          ; $0e17: $cb $15
    add hl, bc                                    ; $0e19: $09
    jr c, jr_000_0e1e                             ; $0e1a: $38 $02

    dec a                                         ; $0e1c: $3d
    add hl, de                                    ; $0e1d: $19

jr_000_0e1e:
    adc a                                         ; $0e1e: $8f
    rl l                                          ; $0e1f: $cb $15
    add hl, bc                                    ; $0e21: $09
    jr c, jr_000_0e26                             ; $0e22: $38 $02

    dec a                                         ; $0e24: $3d
    add hl, de                                    ; $0e25: $19

jr_000_0e26:
    adc a                                         ; $0e26: $8f
    rl l                                          ; $0e27: $cb $15
    add hl, bc                                    ; $0e29: $09
    jr c, jr_000_0e2e                             ; $0e2a: $38 $02

    dec a                                         ; $0e2c: $3d

Jump_000_0e2d:
    add hl, de                                    ; $0e2d: $19

jr_000_0e2e:
    adc a                                         ; $0e2e: $8f
    rl l                                          ; $0e2f: $cb $15
    add hl, bc                                    ; $0e31: $09
    jr c, jr_000_0e36                             ; $0e32: $38 $02

    dec a                                         ; $0e34: $3d
    add hl, de                                    ; $0e35: $19

jr_000_0e36:
    ldh [$ae], a                                  ; $0e36: $e0 $ae
    pop af                                        ; $0e38: $f1
    ld h, $00                                     ; $0e39: $26 $00

Jump_000_0e3b:
    scf                                           ; $0e3b: $37
    adc a                                         ; $0e3c: $8f
    rl l                                          ; $0e3d: $cb $15
    rl h                                          ; $0e3f: $cb $14
    add hl, bc                                    ; $0e41: $09
    jr c, jr_000_0e46                             ; $0e42: $38 $02

    dec a                                         ; $0e44: $3d
    add hl, de                                    ; $0e45: $19

jr_000_0e46:
    adc a                                         ; $0e46: $8f
    rl l                                          ; $0e47: $cb $15
    rl h                                          ; $0e49: $cb $14
    add hl, bc                                    ; $0e4b: $09

Jump_000_0e4c:
    jr c, jr_000_0e50                             ; $0e4c: $38 $02

    dec a                                         ; $0e4e: $3d
    add hl, de                                    ; $0e4f: $19

jr_000_0e50:
    adc a                                         ; $0e50: $8f
    rl l                                          ; $0e51: $cb $15
    rl h                                          ; $0e53: $cb $14
    add hl, bc                                    ; $0e55: $09
    jr c, jr_000_0e5a                             ; $0e56: $38 $02

    dec a                                         ; $0e58: $3d
    add hl, de                                    ; $0e59: $19

jr_000_0e5a:
    adc a                                         ; $0e5a: $8f
    rl l                                          ; $0e5b: $cb $15
    rl h                                          ; $0e5d: $cb $14
    add hl, bc                                    ; $0e5f: $09
    jr c, jr_000_0e64                             ; $0e60: $38 $02

    dec a                                         ; $0e62: $3d

Call_000_0e63:
    add hl, de                                    ; $0e63: $19

jr_000_0e64:
    adc a                                         ; $0e64: $8f
    rl l                                          ; $0e65: $cb $15
    rl h                                          ; $0e67: $cb $14
    add hl, bc                                    ; $0e69: $09
    jr c, jr_000_0e6e                             ; $0e6a: $38 $02

    dec a                                         ; $0e6c: $3d
    add hl, de                                    ; $0e6d: $19

jr_000_0e6e:
    adc a                                         ; $0e6e: $8f
    rl l                                          ; $0e6f: $cb $15
    rl h                                          ; $0e71: $cb $14
    add hl, bc                                    ; $0e73: $09
    jr c, jr_000_0e78                             ; $0e74: $38 $02

    dec a                                         ; $0e76: $3d
    add hl, de                                    ; $0e77: $19

jr_000_0e78:
    adc a                                         ; $0e78: $8f
    rl l                                          ; $0e79: $cb $15
    rl h                                          ; $0e7b: $cb $14
    add hl, bc                                    ; $0e7d: $09
    jr c, jr_000_0e82                             ; $0e7e: $38 $02

Call_000_0e80:
    dec a                                         ; $0e80: $3d
    add hl, de                                    ; $0e81: $19

jr_000_0e82:
    adc a                                         ; $0e82: $8f
    rl l                                          ; $0e83: $cb $15
    rl h                                          ; $0e85: $cb $14
    add hl, bc                                    ; $0e87: $09
    jr c, jr_000_0e8c                             ; $0e88: $38 $02

    dec a                                         ; $0e8a: $3d
    add hl, de                                    ; $0e8b: $19

jr_000_0e8c:
    ldh [$ad], a                                  ; $0e8c: $e0 $ad
    pop af                                        ; $0e8e: $f1
    scf                                           ; $0e8f: $37
    adc a                                         ; $0e90: $8f
    rl l                                          ; $0e91: $cb $15
    rl h                                          ; $0e93: $cb $14
    add hl, bc                                    ; $0e95: $09
    jr c, jr_000_0e9a                             ; $0e96: $38 $02

    dec a                                         ; $0e98: $3d
    add hl, de                                    ; $0e99: $19

jr_000_0e9a:
    adc a                                         ; $0e9a: $8f
    rl l                                          ; $0e9b: $cb $15
    rl h                                          ; $0e9d: $cb $14
    add hl, bc                                    ; $0e9f: $09

Call_000_0ea0:
    jr c, jr_000_0ea4                             ; $0ea0: $38 $02

Call_000_0ea2:
    dec a                                         ; $0ea2: $3d

Jump_000_0ea3:
    add hl, de                                    ; $0ea3: $19

jr_000_0ea4:
    adc a                                         ; $0ea4: $8f
    rl l                                          ; $0ea5: $cb $15
    rl h                                          ; $0ea7: $cb $14
    add hl, bc                                    ; $0ea9: $09
    jr c, jr_000_0eae                             ; $0eaa: $38 $02

    dec a                                         ; $0eac: $3d
    add hl, de                                    ; $0ead: $19

jr_000_0eae:
    adc a                                         ; $0eae: $8f
    rl l                                          ; $0eaf: $cb $15
    rl h                                          ; $0eb1: $cb $14
    add hl, bc                                    ; $0eb3: $09
    jr c, jr_000_0eb8                             ; $0eb4: $38 $02

    dec a                                         ; $0eb6: $3d
    add hl, de                                    ; $0eb7: $19

jr_000_0eb8:
    adc a                                         ; $0eb8: $8f
    rl l                                          ; $0eb9: $cb $15
    rl h                                          ; $0ebb: $cb $14
    add hl, bc                                    ; $0ebd: $09
    jr c, jr_000_0ec2                             ; $0ebe: $38 $02

Jump_000_0ec0:
    dec a                                         ; $0ec0: $3d
    add hl, de                                    ; $0ec1: $19

jr_000_0ec2:
    adc a                                         ; $0ec2: $8f
    rl l                                          ; $0ec3: $cb $15
    rl h                                          ; $0ec5: $cb $14
    add hl, bc                                    ; $0ec7: $09
    jr c, jr_000_0ecc                             ; $0ec8: $38 $02

    dec a                                         ; $0eca: $3d
    add hl, de                                    ; $0ecb: $19

jr_000_0ecc:
    adc a                                         ; $0ecc: $8f
    rl l                                          ; $0ecd: $cb $15
    rl h                                          ; $0ecf: $cb $14
    add hl, bc                                    ; $0ed1: $09
    jr c, jr_000_0ed6                             ; $0ed2: $38 $02

    dec a                                         ; $0ed4: $3d
    add hl, de                                    ; $0ed5: $19

jr_000_0ed6:
    adc a                                         ; $0ed6: $8f
    rl l                                          ; $0ed7: $cb $15
    rl h                                          ; $0ed9: $cb $14
    add hl, bc                                    ; $0edb: $09
    jr c, jr_000_0ee0                             ; $0edc: $38 $02

    dec a                                         ; $0ede: $3d
    add hl, de                                    ; $0edf: $19

Call_000_0ee0:
Jump_000_0ee0:
jr_000_0ee0:
    ld l, a                                       ; $0ee0: $6f

Call_000_0ee1:
    ldh a, [$ad]                                  ; $0ee1: $f0 $ad

Call_000_0ee3:
Jump_000_0ee3:
    ld h, a                                       ; $0ee3: $67
    ldh a, [$ae]                                  ; $0ee4: $f0 $ae
    pop bc                                        ; $0ee6: $c1

Jump_000_0ee7:
    ret                                           ; $0ee7: $c9


Call_000_0ee8:
    push af                                       ; $0ee8: $f5
    add a                                         ; $0ee9: $87
    jr c, jr_000_0ef8                             ; $0eea: $38 $0c

    add $aa                                       ; $0eec: $c6 $aa
    ld l, a                                       ; $0eee: $6f
    adc $0f                                       ; $0eef: $ce $0f

Call_000_0ef1:
    sub l                                         ; $0ef1: $95
    ld h, a                                       ; $0ef2: $67

Call_000_0ef3:
    ld a, [hl+]                                   ; $0ef3: $2a
    ld h, [hl]                                    ; $0ef4: $66
    ld l, a                                       ; $0ef5: $6f
    pop af                                        ; $0ef6: $f1
    ret                                           ; $0ef7: $c9


jr_000_0ef8:
    add $aa                                       ; $0ef8: $c6 $aa
    ld l, a                                       ; $0efa: $6f

Jump_000_0efb:
    adc $10                                       ; $0efb: $ce $10
    sub l                                         ; $0efd: $95

Call_000_0efe:
    ld h, a                                       ; $0efe: $67

Call_000_0eff:
Jump_000_0eff:
    ld a, [hl+]                                   ; $0eff: $2a
    ld h, [hl]                                    ; $0f00: $66

Call_000_0f01:
    ld l, a                                       ; $0f01: $6f

Jump_000_0f02:
    pop af                                        ; $0f02: $f1
    ret                                           ; $0f03: $c9


Call_000_0f04:
    push bc                                       ; $0f04: $c5

Jump_000_0f05:
    push de                                       ; $0f05: $d5
    push hl                                       ; $0f06: $e5
    ld a, l                                       ; $0f07: $7d

Jump_000_0f08:
    cpl                                           ; $0f08: $2f
    ld c, a                                       ; $0f09: $4f
    ld a, h                                       ; $0f0a: $7c
    cpl                                           ; $0f0b: $2f

Jump_000_0f0c:
    ld b, a                                       ; $0f0c: $47
    and c                                         ; $0f0d: $a1
    inc a                                         ; $0f0e: $3c

Jump_000_0f0f:
    jp z, Jump_000_0fa5                           ; $0f0f: $ca $a5 $0f

    ld de, $4000                                  ; $0f12: $11 $00 $40
    ld h, e                                       ; $0f15: $63

Jump_000_0f16:
    ld a, d                                       ; $0f16: $7a
    add b                                         ; $0f17: $80
    jr c, jr_000_0f21                             ; $0f18: $38 $07

    ld b, a                                       ; $0f1a: $47
    set 7, h                                      ; $0f1b: $cb $fc
    ld a, $60                                     ; $0f1d: $3e $60
    jr jr_000_0f23                                ; $0f1f: $18 $02

Jump_000_0f21:
jr_000_0f21:
    ld a, $e0                                     ; $0f21: $3e $e0

jr_000_0f23:
    add d                                         ; $0f23: $82
    srl a                                         ; $0f24: $cb $3f
    ld d, a                                       ; $0f26: $57
    add b                                         ; $0f27: $80
    jr c, jr_000_0f31                             ; $0f28: $38 $07

    ld b, a                                       ; $0f2a: $47
    set 6, h                                      ; $0f2b: $cb $f4
    ld a, $18                                     ; $0f2d: $3e $18
    jr jr_000_0f33                                ; $0f2f: $18 $02

jr_000_0f31:
    ld a, $f8                                     ; $0f31: $3e $f8

Call_000_0f33:
jr_000_0f33:
    add d                                         ; $0f33: $82
    srl a                                         ; $0f34: $cb $3f
    ld d, a                                       ; $0f36: $57
    add b                                         ; $0f37: $80
    jr c, jr_000_0f41                             ; $0f38: $38 $07

    ld b, a                                       ; $0f3a: $47
    set 5, h                                      ; $0f3b: $cb $ec
    ld a, $06                                     ; $0f3d: $3e $06

Jump_000_0f3f:
    jr jr_000_0f43                                ; $0f3f: $18 $02

jr_000_0f41:
    ld a, $fe                                     ; $0f41: $3e $fe

jr_000_0f43:
    add d                                         ; $0f43: $82
    srl a                                         ; $0f44: $cb $3f

Call_000_0f46:
    ld d, a                                       ; $0f46: $57
    ld a, h                                       ; $0f47: $7c
    ld l, e                                       ; $0f48: $6b
    ld h, d                                       ; $0f49: $62
    add hl, bc                                    ; $0f4a: $09
    jr c, jr_000_0f56                             ; $0f4b: $38 $09

    ld c, l                                       ; $0f4d: $4d
    ld b, h                                       ; $0f4e: $44
    set 4, a                                      ; $0f4f: $cb $e7
    ld hl, $0180                                  ; $0f51: $21 $80 $01
    jr jr_000_0f59                                ; $0f54: $18 $03

jr_000_0f56:
    ld hl, $ff80                                  ; $0f56: $21 $80 $ff

jr_000_0f59:
    add hl, de                                    ; $0f59: $19
    srl h                                         ; $0f5a: $cb $3c
    rr l                                          ; $0f5c: $cb $1d
    ld e, l                                       ; $0f5e: $5d
    ld d, h                                       ; $0f5f: $54

Call_000_0f60:
Jump_000_0f60:
    add hl, bc                                    ; $0f60: $09
    jr c, jr_000_0f6c                             ; $0f61: $38 $09

    ld c, l                                       ; $0f63: $4d
    ld b, h                                       ; $0f64: $44
    set 3, a                                      ; $0f65: $cb $df
    ld hl, $0060                                  ; $0f67: $21 $60 $00
    jr jr_000_0f6f                                ; $0f6a: $18 $03

jr_000_0f6c:
    ld hl, $ffe0                                  ; $0f6c: $21 $e0 $ff

jr_000_0f6f:
    add hl, de                                    ; $0f6f: $19
    srl h                                         ; $0f70: $cb $3c
    rr l                                          ; $0f72: $cb $1d
    ld e, l                                       ; $0f74: $5d
    ld d, h                                       ; $0f75: $54
    add hl, bc                                    ; $0f76: $09
    jr c, jr_000_0f82                             ; $0f77: $38 $09

    ld c, l                                       ; $0f79: $4d
    ld b, h                                       ; $0f7a: $44
    set 2, a                                      ; $0f7b: $cb $d7
    ld hl, $0018                                  ; $0f7d: $21 $18 $00

Jump_000_0f80:
    jr jr_000_0f85                                ; $0f80: $18 $03

jr_000_0f82:
    ld hl, $fff8                                  ; $0f82: $21 $f8 $ff

jr_000_0f85:
    add hl, de                                    ; $0f85: $19
    srl h                                         ; $0f86: $cb $3c
    rr l                                          ; $0f88: $cb $1d
    ld e, l                                       ; $0f8a: $5d
    ld d, h                                       ; $0f8b: $54
    add hl, bc                                    ; $0f8c: $09
    jr c, jr_000_0f98                             ; $0f8d: $38 $09

    ld c, l                                       ; $0f8f: $4d
    ld b, h                                       ; $0f90: $44
    set 1, a                                      ; $0f91: $cb $cf
    ld hl, $0006                                  ; $0f93: $21 $06 $00
    jr jr_000_0f9b                                ; $0f96: $18 $03

jr_000_0f98:
    ld hl, $fffe                                  ; $0f98: $21 $fe $ff

jr_000_0f9b:
    add hl, de                                    ; $0f9b: $19
    srl h                                         ; $0f9c: $cb $3c
    rr l                                          ; $0f9e: $cb $1d

Jump_000_0fa0:
    ld e, l                                       ; $0fa0: $5d
    ld d, h                                       ; $0fa1: $54
    add hl, bc                                    ; $0fa2: $09
    sbc $ff                                       ; $0fa3: $de $ff

Jump_000_0fa5:
    pop hl                                        ; $0fa5: $e1
    pop de                                        ; $0fa6: $d1
    pop bc                                        ; $0fa7: $c1
    ret                                           ; $0fa8: $c9


    nop                                           ; $0fa9: $00

    db $00, $00, $01, $00, $04, $00, $09, $00, $10, $00, $19, $00, $24, $00, $31, $00
    db $40, $00, $51, $00, $64, $00, $79, $00, $90, $00, $a9, $00, $c4, $00, $e1, $00
    db $00, $01, $21, $01, $44, $01, $69, $01, $90, $01, $b9, $01, $e4, $01, $11, $02
    db $40, $02, $71, $02, $a4, $02, $d9, $02, $10, $03, $49, $03, $84, $03, $c1, $03
    db $00, $04, $41, $04, $84, $04, $c9, $04, $10, $05, $59, $05, $a4, $05, $f1, $05
    db $40, $06, $91, $06, $e4, $06, $39, $07, $90, $07, $e9, $07, $44, $08, $a1, $08
    db $00, $09, $61, $09, $c4, $09, $29, $0a, $90, $0a, $f9, $0a, $64, $0b, $d1, $0b
    db $40, $0c, $b1, $0c, $24, $0d, $99, $0d, $10, $0e, $89, $0e, $04, $0f, $81, $0f
    db $00, $10, $81, $10, $04, $11, $89, $11, $10, $12, $99, $12, $24, $13, $b1, $13
    db $40, $14, $d1, $14

    ld h, h                                       ; $103e: $64
    dec d                                         ; $103f: $15

    db $f9, $15, $90, $16, $29, $17, $c4, $17, $61, $18, $00, $19, $a1, $19

    ld b, h                                       ; $104e: $44
    ld a, [de]                                    ; $104f: $1a

    db $e9, $1a, $90, $1b, $39, $1c, $e4, $1c, $91, $1d, $40, $1e, $f1, $1e, $a4, $1f
    db $59, $20, $10, $21, $c9, $21

    add h                                         ; $1066: $84
    ld [hl+], a                                   ; $1067: $22

    db $41, $23, $00, $24, $c1, $24

    add h                                         ; $106e: $84
    dec h                                         ; $106f: $25

    db $49, $26, $10, $27, $d9, $27

    and h                                         ; $1076: $a4

Call_000_1077:
Jump_000_1077:
    db $28                                        ; $1077: $28

    db $71, $29, $40, $2a, $11, $2b

    db $e4                                        ; $107e: $e4

Jump_000_107f:
    dec hl                                        ; $107f: $2b

    db $b9, $2c, $90, $2d, $69, $2e

Jump_000_1086:
    ld b, h                                       ; $1086: $44
    cpl                                           ; $1087: $2f

    db $21, $30, $00, $31, $e1, $31

    db $c4                                        ; $108e: $c4
    ld [hl-], a                                   ; $108f: $32

    db $a9, $33, $90, $34, $79, $35

Jump_000_1096:
    ld h, h                                       ; $1096: $64
    db $36                                        ; $1097: $36

    db $51, $37, $40, $38, $31, $39

    inc h                                         ; $109e: $24
    ld a, [hl-]                                   ; $109f: $3a

    db $19, $3b, $10, $3c, $09, $3d

    inc b                                         ; $10a6: $04
    db $3e                                        ; $10a7: $3e

    db $01, $3f

    nop                                           ; $10aa: $00
    ld b, b                                       ; $10ab: $40
    ld bc, $0441                                  ; $10ac: $01 $41 $04
    ld b, d                                       ; $10af: $42
    add hl, bc                                    ; $10b0: $09
    ld b, e                                       ; $10b1: $43
    db $10                                        ; $10b2: $10
    ld b, h                                       ; $10b3: $44
    add hl, de                                    ; $10b4: $19
    ld b, l                                       ; $10b5: $45
    inc h                                         ; $10b6: $24
    ld b, [hl]                                    ; $10b7: $46
    ld sp, $4047                                  ; $10b8: $31 $47 $40
    ld c, b                                       ; $10bb: $48
    ld d, c                                       ; $10bc: $51
    ld c, c                                       ; $10bd: $49
    ld h, h                                       ; $10be: $64
    ld c, d                                       ; $10bf: $4a

Jump_000_10c0:
    ld a, c                                       ; $10c0: $79

Call_000_10c1:
    ld c, e                                       ; $10c1: $4b
    sub b                                         ; $10c2: $90
    ld c, h                                       ; $10c3: $4c

Jump_000_10c4:
    xor c                                         ; $10c4: $a9
    ld c, l                                       ; $10c5: $4d
    call nz, $e14e                                ; $10c6: $c4 $4e $e1
    ld c, a                                       ; $10c9: $4f
    nop                                           ; $10ca: $00
    ld d, c                                       ; $10cb: $51

Call_000_10cc:
    ld hl, $4452                                  ; $10cc: $21 $52 $44

Jump_000_10cf:
    ld d, e                                       ; $10cf: $53
    ld l, c                                       ; $10d0: $69
    ld d, h                                       ; $10d1: $54
    sub b                                         ; $10d2: $90
    ld d, l                                       ; $10d3: $55
    cp c                                          ; $10d4: $b9
    ld d, [hl]                                    ; $10d5: $56
    db $e4                                        ; $10d6: $e4
    ld d, a                                       ; $10d7: $57
    ld de, $4059                                  ; $10d8: $11 $59 $40

Jump_000_10db:
    ld e, d                                       ; $10db: $5a
    ld [hl], c                                    ; $10dc: $71
    ld e, e                                       ; $10dd: $5b
    and h                                         ; $10de: $a4
    ld e, h                                       ; $10df: $5c

Call_000_10e0:
    reti                                          ; $10e0: $d9


Call_000_10e1:
Jump_000_10e1:
    ld e, l                                       ; $10e1: $5d

Jump_000_10e2:
    db $10                                        ; $10e2: $10

Jump_000_10e3:
    ld e, a                                       ; $10e3: $5f

Jump_000_10e4:
    ld c, c                                       ; $10e4: $49
    ld h, b                                       ; $10e5: $60
    add h                                         ; $10e6: $84
    ld h, c                                       ; $10e7: $61

Call_000_10e8:
    pop bc                                        ; $10e8: $c1
    ld h, d                                       ; $10e9: $62

jr_000_10ea:
    nop                                           ; $10ea: $00
    ld h, h                                       ; $10eb: $64
    ld b, c                                       ; $10ec: $41
    ld h, l                                       ; $10ed: $65
    add h                                         ; $10ee: $84
    ld h, [hl]                                    ; $10ef: $66
    ret                                           ; $10f0: $c9


Call_000_10f1:
    ld h, a                                       ; $10f1: $67

Jump_000_10f2:
    db $10                                        ; $10f2: $10
    ld l, c                                       ; $10f3: $69
    ld e, c                                       ; $10f4: $59
    ld l, d                                       ; $10f5: $6a
    and h                                         ; $10f6: $a4
    ld l, e                                       ; $10f7: $6b
    pop af                                        ; $10f8: $f1
    ld l, h                                       ; $10f9: $6c
    ld b, b                                       ; $10fa: $40
    ld l, [hl]                                    ; $10fb: $6e

Call_000_10fc:
Jump_000_10fc:
    sub c                                         ; $10fc: $91
    ld l, a                                       ; $10fd: $6f
    db $e4                                        ; $10fe: $e4

Call_000_10ff:
Jump_000_10ff:
    ld [hl], b                                    ; $10ff: $70

Call_000_1100:
Jump_000_1100:
    add hl, sp                                    ; $1100: $39
    ld [hl], d                                    ; $1101: $72
    sub b                                         ; $1102: $90
    ld [hl], e                                    ; $1103: $73

Call_000_1104:
    jp hl                                         ; $1104: $e9


    ld [hl], h                                    ; $1105: $74
    ld b, h                                       ; $1106: $44
    halt                                          ; $1107: $76
    and c                                         ; $1108: $a1
    ld [hl], a                                    ; $1109: $77
    nop                                           ; $110a: $00
    ld a, c                                       ; $110b: $79

Jump_000_110c:
    ld h, c                                       ; $110c: $61
    ld a, d                                       ; $110d: $7a
    call nz, Call_000_297b                        ; $110e: $c4 $7b $29
    ld a, l                                       ; $1111: $7d
    sub b                                         ; $1112: $90
    ld a, [hl]                                    ; $1113: $7e
    ld sp, hl                                     ; $1114: $f9

Jump_000_1115:
    ld a, a                                       ; $1115: $7f
    ld h, h                                       ; $1116: $64
    add c                                         ; $1117: $81
    pop de                                        ; $1118: $d1
    add d                                         ; $1119: $82
    ld b, b                                       ; $111a: $40
    add h                                         ; $111b: $84
    or c                                          ; $111c: $b1
    add l                                         ; $111d: $85
    inc h                                         ; $111e: $24
    add a                                         ; $111f: $87
    sbc c                                         ; $1120: $99
    adc b                                         ; $1121: $88
    db $10                                        ; $1122: $10
    adc d                                         ; $1123: $8a
    adc c                                         ; $1124: $89
    adc e                                         ; $1125: $8b
    inc b                                         ; $1126: $04
    adc l                                         ; $1127: $8d
    add c                                         ; $1128: $81
    adc [hl]                                      ; $1129: $8e
    nop                                           ; $112a: $00
    sub b                                         ; $112b: $90
    add c                                         ; $112c: $81
    sub c                                         ; $112d: $91
    inc b                                         ; $112e: $04
    sub e                                         ; $112f: $93
    adc c                                         ; $1130: $89
    sub h                                         ; $1131: $94
    db $10                                        ; $1132: $10
    sub [hl]                                      ; $1133: $96
    sbc c                                         ; $1134: $99
    sub a                                         ; $1135: $97
    inc h                                         ; $1136: $24
    sbc c                                         ; $1137: $99
    or c                                          ; $1138: $b1
    sbc d                                         ; $1139: $9a
    ld b, b                                       ; $113a: $40
    sbc h                                         ; $113b: $9c
    pop de                                        ; $113c: $d1
    sbc l                                         ; $113d: $9d
    ld h, h                                       ; $113e: $64
    sbc a                                         ; $113f: $9f
    ld sp, hl                                     ; $1140: $f9

Jump_000_1141:
    and b                                         ; $1141: $a0
    sub b                                         ; $1142: $90
    and d                                         ; $1143: $a2
    add hl, hl                                    ; $1144: $29
    and h                                         ; $1145: $a4
    call nz, $61a5                                ; $1146: $c4 $a5 $61
    and a                                         ; $1149: $a7
    nop                                           ; $114a: $00
    xor c                                         ; $114b: $a9
    and c                                         ; $114c: $a1

Jump_000_114d:
    xor d                                         ; $114d: $aa
    ld b, h                                       ; $114e: $44
    xor h                                         ; $114f: $ac
    jp hl                                         ; $1150: $e9


    xor l                                         ; $1151: $ad
    sub b                                         ; $1152: $90
    xor a                                         ; $1153: $af
    add hl, sp                                    ; $1154: $39
    or c                                          ; $1155: $b1
    db $e4                                        ; $1156: $e4
    or d                                          ; $1157: $b2
    sub c                                         ; $1158: $91
    or h                                          ; $1159: $b4
    ld b, b                                       ; $115a: $40
    or [hl]                                       ; $115b: $b6
    pop af                                        ; $115c: $f1
    or a                                          ; $115d: $b7
    and h                                         ; $115e: $a4
    cp c                                          ; $115f: $b9
    ld e, c                                       ; $1160: $59

Call_000_1161:
    cp e                                          ; $1161: $bb
    db $10                                        ; $1162: $10
    cp l                                          ; $1163: $bd
    ret                                           ; $1164: $c9


    cp [hl]                                       ; $1165: $be
    add h                                         ; $1166: $84
    ret nz                                        ; $1167: $c0

    ld b, c                                       ; $1168: $41
    jp nz, $c400                                  ; $1169: $c2 $00 $c4

    pop bc                                        ; $116c: $c1
    push bc                                       ; $116d: $c5
    add h                                         ; $116e: $84
    rst $00                                       ; $116f: $c7
    ld c, c                                       ; $1170: $49
    ret                                           ; $1171: $c9


    db $10                                        ; $1172: $10
    set 3, c                                      ; $1173: $cb $d9
    call z, $cea4                                 ; $1175: $cc $a4 $ce
    ld [hl], c                                    ; $1178: $71
    ret nc                                        ; $1179: $d0

    ld b, b                                       ; $117a: $40
    jp nc, $d411                                  ; $117b: $d2 $11 $d4

    db $e4                                        ; $117e: $e4
    push de                                       ; $117f: $d5
    cp c                                          ; $1180: $b9
    rst $10                                       ; $1181: $d7
    sub b                                         ; $1182: $90
    reti                                          ; $1183: $d9


    ld l, c                                       ; $1184: $69
    db $db                                        ; $1185: $db
    ld b, h                                       ; $1186: $44
    db $dd                                        ; $1187: $dd
    ld hl, $00df                                  ; $1188: $21 $df $00
    pop hl                                        ; $118b: $e1
    pop hl                                        ; $118c: $e1
    ld [c], a                                     ; $118d: $e2
    call nz, $a9e4                                ; $118e: $c4 $e4 $a9
    and $90                                       ; $1191: $e6 $90
    add sp, $79                                   ; $1193: $e8 $79

Jump_000_1195:
    ld [$ec64], a                                 ; $1195: $ea $64 $ec
    ld d, c                                       ; $1198: $51
    xor $40                                       ; $1199: $ee $40
    ldh a, [$31]                                  ; $119b: $f0 $31
    ld a, [c]                                     ; $119d: $f2
    inc h                                         ; $119e: $24
    db $f4                                        ; $119f: $f4

Call_000_11a0:
    add hl, de                                    ; $11a0: $19
    or $10                                        ; $11a1: $f6 $10
    ld hl, sp+$09                                 ; $11a3: $f8 $09
    ld a, [$fc04]                                 ; $11a5: $fa $04 $fc
    ld bc, $fffe                                  ; $11a8: $01 $fe $ff
    rst $38                                       ; $11ab: $ff

Call_000_11ac:
    bit 7, h                                      ; $11ac: $cb $7c
    jr z, jr_000_11ba                             ; $11ae: $28 $0a

    xor a                                         ; $11b0: $af
    sub l                                         ; $11b1: $95
    ld l, a                                       ; $11b2: $6f
    sbc a                                         ; $11b3: $9f
    sub h                                         ; $11b4: $94
    ld h, a                                       ; $11b5: $67
    ld a, $80                                     ; $11b6: $3e $80
    add b                                         ; $11b8: $80
    ld b, a                                       ; $11b9: $47

Call_000_11ba:
jr_000_11ba:
    ld a, c                                       ; $11ba: $79
    and $f0                                       ; $11bb: $e6 $f0
    ld c, a                                       ; $11bd: $4f
    push hl                                       ; $11be: $e5

Jump_000_11bf:
    push bc                                       ; $11bf: $c5
    call Call_000_11cb                            ; $11c0: $cd $cb $11
    pop bc                                        ; $11c3: $c1
    ld d, h                                       ; $11c4: $54
    ld e, l                                       ; $11c5: $5d
    pop hl                                        ; $11c6: $e1

Call_000_11c7:
    ld a, b                                       ; $11c7: $78
    add $40                                       ; $11c8: $c6 $40
    ld b, a                                       ; $11ca: $47

Call_000_11cb:
    bit 7, b                                      ; $11cb: $cb $78
    jr z, jr_000_11db                             ; $11cd: $28 $0c

    res 7, b                                      ; $11cf: $cb $b8
    call Call_000_11db                            ; $11d1: $cd $db $11
    xor a                                         ; $11d4: $af
    sub l                                         ; $11d5: $95
    ld l, a                                       ; $11d6: $6f
    sbc a                                         ; $11d7: $9f
    sub h                                         ; $11d8: $94
    ld h, a                                       ; $11d9: $67
    ret                                           ; $11da: $c9


Call_000_11db:
Jump_000_11db:
jr_000_11db:
    bit 6, b                                      ; $11db: $cb $70
    jr z, jr_000_11e6                             ; $11dd: $28 $07

    xor a                                         ; $11df: $af
    sub c                                         ; $11e0: $91

Call_000_11e1:
Jump_000_11e1:
    ld c, a                                       ; $11e1: $4f
    ld a, $80                                     ; $11e2: $3e $80
    sbc b                                         ; $11e4: $98
    ld b, a                                       ; $11e5: $47

jr_000_11e6:
    push de                                       ; $11e6: $d5
    add hl, hl                                    ; $11e7: $29
    ld e, l                                       ; $11e8: $5d
    ld d, h                                       ; $11e9: $54
    ld a, c                                       ; $11ea: $79

Jump_000_11eb:
    sra b                                         ; $11eb: $cb $28
    rra                                           ; $11ed: $1f

Call_000_11ee:
    sra b                                         ; $11ee: $cb $28
    rra                                           ; $11f0: $1f
    sra b                                         ; $11f1: $cb $28
    rra                                           ; $11f3: $1f
    ld c, a                                       ; $11f4: $4f
    ld hl, $1201                                  ; $11f5: $21 $01 $12
    add hl, bc                                    ; $11f8: $09
    ld a, [hl+]                                   ; $11f9: $2a
    ld h, [hl]                                    ; $11fa: $66
    ld l, a                                       ; $11fb: $6f
    call Call_000_0cb5                            ; $11fc: $cd $b5 $0c
    pop de                                        ; $11ff: $d1

Jump_000_1200:
    ret                                           ; $1200: $c9


    db $00, $00

    ld [hl-], a                                   ; $1203: $32
    nop                                           ; $1204: $00
    ld h, l                                       ; $1205: $65
    nop                                           ; $1206: $00

    db $97, $00

    ret                                           ; $1209: $c9


    nop                                           ; $120a: $00

    db $fc, $00, $2e, $01

    ld h, b                                       ; $120f: $60
    ld bc, $0193                                  ; $1210: $01 $93 $01

    db $c5, $01, $f7, $01, $2a, $02, $5c, $02, $8e, $02, $c1, $02, $f3, $02, $25, $03
    db $58, $03, $8a, $03, $bc, $03, $ef, $03, $21, $04, $53, $04, $85, $04, $b8, $04
    db $ea, $04, $1c, $05, $4f, $05, $81, $05, $b3, $05, $e6, $05, $18, $06, $4a, $06

Call_000_1243:
    ld a, h                                       ; $1243: $7c

Call_000_1244:
    db $06                                        ; $1244: $06

    db $af, $06, $e1, $06, $13, $07, $45, $07, $78, $07, $aa, $07, $dc, $07, $0e, $08
    db $41, $08, $73, $08, $a5, $08, $d7, $08, $09, $09, $3c, $09, $6e, $09, $a0, $09
    db $d2, $09

Call_000_1267:
    inc b                                         ; $1267: $04

Call_000_1268:
    ld a, [bc]                                    ; $1268: $0a

    db $37, $0a, $69, $0a, $9b, $0a, $cd, $0a, $ff, $0a, $31, $0b, $64, $0b, $96, $0b

    ret z                                         ; $1279: $c8

    dec bc                                        ; $127a: $0b

    db $fa, $0b, $2c, $0c

Call_000_127f:
    ld e, [hl]                                    ; $127f: $5e
    inc c                                         ; $1280: $0c

    db $90, $0c

    db $c2                                        ; $1283: $c2
    inc c                                         ; $1284: $0c

    db $f4, $0c

    ld h, $0d                                     ; $1287: $26 $0d

    db $59, $0d, $8b, $0d

    cp l                                          ; $128d: $bd
    dec c                                         ; $128e: $0d

    db $ef, $0d

    db $21                                        ; $1291: $21
    db $0e                                        ; $1292: $0e

    db $53, $0e, $85, $0e

    or a                                          ; $1297: $b7
    db $0e                                        ; $1298: $0e

    db $e9, $0e, $1b, $0f, $4d, $0f, $7f, $0f, $b1, $0f

    db $e3                                        ; $12a3: $e3
    rrca                                          ; $12a4: $0f

    db $15, $10, $46, $10, $78, $10

    xor d                                         ; $12ab: $aa
    db $10                                        ; $12ac: $10
    db $dc                                        ; $12ad: $dc
    db $10                                        ; $12ae: $10

    db $0e, $11, $40, $11

    ld [hl], d                                    ; $12b3: $72
    db $11                                        ; $12b4: $11

    db $a4, $11, $d6, $11, $07, $12, $39, $12, $6b, $12, $9d, $12, $cf, $12, $00, $13
    db $32, $13, $64, $13

    sub [hl]                                      ; $12c9: $96
    inc de                                        ; $12ca: $13

    db $c7, $13, $f9, $13, $2b, $14, $5d, $14

    adc [hl]                                      ; $12d3: $8e
    inc d                                         ; $12d4: $14

    db $c0, $14, $f2, $14, $23, $15, $55, $15, $87, $15, $b8, $15, $ea, $15

    dec de                                        ; $12e3: $1b
    ld d, $4d                                     ; $12e4: $16 $4d
    db $16                                        ; $12e6: $16

    db $7e, $16, $b0, $16

    ld [c], a                                     ; $12eb: $e2
    ld d, $13                                     ; $12ec: $16 $13
    rla                                           ; $12ee: $17
    ld b, l                                       ; $12ef: $45
    rla                                           ; $12f0: $17
    halt                                          ; $12f1: $76
    rla                                           ; $12f2: $17

    db $a8, $17

    reti                                          ; $12f5: $d9


    rla                                           ; $12f6: $17
    ld a, [bc]                                    ; $12f7: $0a
    jr @+$3e                                      ; $12f8: $18 $3c

    jr @+$6f                                      ; $12fa: $18 $6d

    db $18                                        ; $12fc: $18

    db $9f, $18, $d0, $18, $01, $19

Call_000_1303:
    inc sp                                        ; $1303: $33
    add hl, de                                    ; $1304: $19

    db $64, $19, $95, $19

    rst $00                                       ; $1309: $c7
    add hl, de                                    ; $130a: $19

    db $f8, $19, $29, $1a

    ld e, e                                       ; $130f: $5b
    ld a, [de]                                    ; $1310: $1a
    adc h                                         ; $1311: $8c
    ld a, [de]                                    ; $1312: $1a

    db $bd, $1a

    xor $1a                                       ; $1315: $ee $1a

    db $1f, $1b, $51, $1b

    add d                                         ; $131b: $82
    dec de                                        ; $131c: $1b

    db $b3, $1b

    db $e4                                        ; $131f: $e4
    dec de                                        ; $1320: $1b

    db $15, $1c

    ld b, [hl]                                    ; $1323: $46
    inc e                                         ; $1324: $1c

    db $77, $1c, $a9, $1c, $da, $1c

    dec bc                                        ; $132b: $0b
    dec e                                         ; $132c: $1d

    db $3c, $1d

jr_000_132f:
    ld l, l                                       ; $132f: $6d
    dec e                                         ; $1330: $1d
    sbc [hl]                                      ; $1331: $9e
    dec e                                         ; $1332: $1d

    db $cf, $1d, $ff, $1d, $30, $1e, $61, $1e

    sub d                                         ; $133b: $92
    ld e, $c3                                     ; $133c: $1e $c3
    db $1e                                        ; $133e: $1e

    db $f4, $1e, $25, $1f

    ld d, [hl]                                    ; $1343: $56
    rra                                           ; $1344: $1f
    add [hl]                                      ; $1345: $86
    rra                                           ; $1346: $1f
    or a                                          ; $1347: $b7
    rra                                           ; $1348: $1f
    add sp, $1f                                   ; $1349: $e8 $1f

    db $19, $20

    ld c, c                                       ; $134d: $49
    jr nz, @+$7c                                  ; $134e: $20 $7a

    jr nz, @-$53                                  ; $1350: $20 $ab

    jr nz, jr_000_132f                            ; $1352: $20 $db

    db $20                                        ; $1354: $20

    db $0c, $21

    dec a                                         ; $1357: $3d
    db $21                                        ; $1358: $21

    db $6d, $21

    sbc [hl]                                      ; $135b: $9e
    db $21                                        ; $135c: $21

    db $ce, $21, $ff, $21, $2f, $22

    ld h, b                                       ; $1363: $60
    ld [hl+], a                                   ; $1364: $22

    db $90, $22

    pop bc                                        ; $1367: $c1
    ld [hl+], a                                   ; $1368: $22

    db $f1, $22

    ld [hl+], a                                   ; $136b: $22

jr_000_136c:
    inc hl                                        ; $136c: $23
    ld d, d                                       ; $136d: $52
    inc hl                                        ; $136e: $23
    add d                                         ; $136f: $82
    inc hl                                        ; $1370: $23

    db $b3, $23

    db $e3                                        ; $1373: $e3
    inc hl                                        ; $1374: $23
    inc de                                        ; $1375: $13
    inc h                                         ; $1376: $24

    db $44, $24, $74, $24

    and h                                         ; $137b: $a4
    inc h                                         ; $137c: $24

jr_000_137d:
    db $d4                                        ; $137d: $d4
    inc h                                         ; $137e: $24

    db $05, $25, $35, $25

    ld h, l                                       ; $1383: $65
    dec h                                         ; $1384: $25
    sub l                                         ; $1385: $95

Call_000_1386:
    dec h                                         ; $1386: $25
    push bc                                       ; $1387: $c5
    dec h                                         ; $1388: $25
    push af                                       ; $1389: $f5
    dec h                                         ; $138a: $25
    dec h                                         ; $138b: $25
    db $26                                        ; $138c: $26

    db $55, $26

    add l                                         ; $138f: $85
    ld h, $b5                                     ; $1390: $26 $b5
    ld h, $e5                                     ; $1392: $26 $e5
    ld h, $15                                     ; $1394: $26 $15
    daa                                           ; $1396: $27

    db $45, $27, $75, $27, $a5, $27, $d5, $27

    dec b                                         ; $139f: $05
    db $28                                        ; $13a0: $28

    db $34, $28

    ld h, h                                       ; $13a3: $64
    jr z, @-$6a                                   ; $13a4: $28 $94

    db $28                                        ; $13a6: $28

    db $c4, $28, $f3, $28

    inc hl                                        ; $13ab: $23
    add hl, hl                                    ; $13ac: $29

jr_000_13ad:
    ld d, e                                       ; $13ad: $53
    add hl, hl                                    ; $13ae: $29
    add d                                         ; $13af: $82
    add hl, hl                                    ; $13b0: $29

    db $b2, $29

    ld [c], a                                     ; $13b3: $e2
    add hl, hl                                    ; $13b4: $29
    db $11                                        ; $13b5: $11
    ld a, [hl+]                                   ; $13b6: $2a

    db $41, $2a

    ld [hl], b                                    ; $13b9: $70
    ld a, [hl+]                                   ; $13ba: $2a
    and b                                         ; $13bb: $a0
    ld a, [hl+]                                   ; $13bc: $2a
    rst $08                                       ; $13bd: $cf
    ld a, [hl+]                                   ; $13be: $2a
    cp $2a                                        ; $13bf: $fe $2a

    db $2e, $2b

    ld e, l                                       ; $13c3: $5d
    dec hl                                        ; $13c4: $2b
    adc l                                         ; $13c5: $8d
    dec hl                                        ; $13c6: $2b
    cp h                                          ; $13c7: $bc
    dec hl                                        ; $13c8: $2b

    db $eb, $2b

Jump_000_13cb:
    ld a, [de]                                    ; $13cb: $1a
    inc l                                         ; $13cc: $2c
    ld c, d                                       ; $13cd: $4a
    inc l                                         ; $13ce: $2c
    ld a, c                                       ; $13cf: $79
    inc l                                         ; $13d0: $2c
    xor b                                         ; $13d1: $a8
    inc l                                         ; $13d2: $2c

    db $d7, $2c

    ld b, $2d                                     ; $13d5: $06 $2d
    dec [hl]                                      ; $13d7: $35
    dec l                                         ; $13d8: $2d
    ld h, l                                       ; $13d9: $65
    dec l                                         ; $13da: $2d
    sub h                                         ; $13db: $94
    dec l                                         ; $13dc: $2d

    db $c3, $2d

    ld a, [c]                                     ; $13df: $f2

Call_000_13e0:
Jump_000_13e0:
    dec l                                         ; $13e0: $2d

    db $21, $2e

    ld d, b                                       ; $13e3: $50
    ld l, $7e                                     ; $13e4: $2e $7e
    db $2e                                        ; $13e6: $2e

    db $ad, $2e, $dc, $2e

    dec bc                                        ; $13eb: $0b
    cpl                                           ; $13ec: $2f
    ld a, [hl-]                                   ; $13ed: $3a
    cpl                                           ; $13ee: $2f
    ld l, c                                       ; $13ef: $69
    cpl                                           ; $13f0: $2f
    sub a                                         ; $13f1: $97
    cpl                                           ; $13f2: $2f

    db $c6, $2f, $f5, $2f

    inc hl                                        ; $13f7: $23
    jr nc, jr_000_144c                            ; $13f8: $30 $52

    jr nc, jr_000_137d                            ; $13fa: $30 $81

    db $30                                        ; $13fc: $30

    db $af, $30

    sbc $30                                       ; $13ff: $de $30

    db $0c, $31

    dec sp                                        ; $1403: $3b
    ld sp, $3169                                  ; $1404: $31 $69 $31

Jump_000_1407:
    sbc b                                         ; $1407: $98
    db $31                                        ; $1408: $31

    db $c6, $31, $f4, $31

Jump_000_140d:
    inc hl                                        ; $140d: $23
    ld [hl-], a                                   ; $140e: $32

    db $51, $32

    ld a, a                                       ; $1411: $7f
    ld [hl-], a                                   ; $1412: $32

    db $ad, $32

    call c, Call_000_0a32                         ; $1415: $dc $32 $0a
    inc sp                                        ; $1418: $33

    db $38, $33

    ld h, [hl]                                    ; $141b: $66
    inc sp                                        ; $141c: $33
    sub h                                         ; $141d: $94
    inc sp                                        ; $141e: $33

    db $c2, $33, $f0, $33, $1e, $34

    ld c, h                                       ; $1425: $4c
    inc [hl]                                      ; $1426: $34
    ld a, d                                       ; $1427: $7a
    inc [hl]                                      ; $1428: $34

Call_000_1429:
    xor b                                         ; $1429: $a8
    inc [hl]                                      ; $142a: $34

    db $d6, $34

Call_000_142d:
    inc b                                         ; $142d: $04
    dec [hl]                                      ; $142e: $35

    db $31, $35

    ld e, a                                       ; $1431: $5f
    dec [hl]                                      ; $1432: $35
    adc l                                         ; $1433: $8d
    dec [hl]                                      ; $1434: $35
    cp e                                          ; $1435: $bb
    dec [hl]                                      ; $1436: $35
    add sp, $35                                   ; $1437: $e8 $35

    db $16, $36

    ld b, h                                       ; $143b: $44
    ld [hl], $71                                  ; $143c: $36 $71
    ld [hl], $9f                                  ; $143e: $36 $9f
    db $36                                        ; $1440: $36

    db $cc, $36

    db $fa                                        ; $1443: $fa
    db $36                                        ; $1444: $36

    db $27, $37

    ld d, h                                       ; $1447: $54
    scf                                           ; $1448: $37
    add d                                         ; $1449: $82
    scf                                           ; $144a: $37
    xor a                                         ; $144b: $af

jr_000_144c:
    scf                                           ; $144c: $37
    db $dd                                        ; $144d: $dd
    scf                                           ; $144e: $37
    ld a, [bc]                                    ; $144f: $0a
    jr c, jr_000_1489                             ; $1450: $38 $37

    db $38                                        ; $1452: $38

    db $64, $38

    sub c                                         ; $1455: $91
    jr c, @-$3f                                   ; $1456: $38 $bf

    jr c, @-$12                                   ; $1458: $38 $ec

    db $38                                        ; $145a: $38

    db $19, $39

    ld b, [hl]                                    ; $145d: $46
    add hl, sp                                    ; $145e: $39
    ld [hl], e                                    ; $145f: $73
    add hl, sp                                    ; $1460: $39

    db $a0, $39

    call $fa39                                    ; $1463: $cd $39 $fa
    add hl, sp                                    ; $1466: $39
    ld h, $3a                                     ; $1467: $26 $3a

Call_000_1469:
    ld d, e                                       ; $1469: $53
    ld a, [hl-]                                   ; $146a: $3a

Call_000_146b:
    add b                                         ; $146b: $80
    ld a, [hl-]                                   ; $146c: $3a
    xor l                                         ; $146d: $ad
    ld a, [hl-]                                   ; $146e: $3a
    reti                                          ; $146f: $d9


    ld a, [hl-]                                   ; $1470: $3a

    db $06, $3b

    inc sp                                        ; $1473: $33
    dec sp                                        ; $1474: $3b

jr_000_1475:
    ld e, a                                       ; $1475: $5f
    dec sp                                        ; $1476: $3b
    adc h                                         ; $1477: $8c
    dec sp                                        ; $1478: $3b
    cp c                                          ; $1479: $b9
    dec sp                                        ; $147a: $3b
    push hl                                       ; $147b: $e5
    dec sp                                        ; $147c: $3b
    ld de, $3e3c                                  ; $147d: $11 $3c $3e
    inc a                                         ; $1480: $3c

    db $6a, $3c

    sub a                                         ; $1483: $97

Call_000_1484:
    inc a                                         ; $1484: $3c
    db $c3                                        ; $1485: $c3
    inc a                                         ; $1486: $3c

    db $ef, $3c

jr_000_1489:
    inc e                                         ; $1489: $1c
    dec a                                         ; $148a: $3d

    db $48, $3d

    ld [hl], h                                    ; $148d: $74
    dec a                                         ; $148e: $3d
    and b                                         ; $148f: $a0
    dec a                                         ; $1490: $3d
    db $cc                                        ; $1491: $cc
    dec a                                         ; $1492: $3d

    db $f8, $3d

    inc h                                         ; $1495: $24
    ld a, $50                                     ; $1496: $3e $50
    ld a, $7c                                     ; $1498: $3e $7c
    ld a, $a8                                     ; $149a: $3e $a8
    ld a, $d4                                     ; $149c: $3e $d4
    db $3e                                        ; $149e: $3e

    db $00, $3f, $2c, $3f

    ld d, a                                       ; $14a3: $57

Call_000_14a4:
    ccf                                           ; $14a4: $3f
    add e                                         ; $14a5: $83

Call_000_14a6:
    ccf                                           ; $14a6: $3f
    xor a                                         ; $14a7: $af
    ccf                                           ; $14a8: $3f
    jp c, Jump_000_063f                           ; $14a9: $da $3f $06

    ld b, b                                       ; $14ac: $40
    ld [hl-], a                                   ; $14ad: $32
    ld b, b                                       ; $14ae: $40

    db $5d, $40, $89, $40

    or h                                          ; $14b3: $b4
    ld b, b                                       ; $14b4: $40

    db $df, $40, $0b, $41

    ld [hl], $41                                  ; $14b9: $36 $41

    db $61, $41, $8d, $41

    cp b                                          ; $14bf: $b8
    ld b, c                                       ; $14c0: $41

    db $e3, $41

    ld c, $42                                     ; $14c3: $0e $42
    add hl, sp                                    ; $14c5: $39
    ld b, d                                       ; $14c6: $42

    db $64, $42, $8f, $42

    cp d                                          ; $14cb: $ba
    ld b, d                                       ; $14cc: $42

    db $e5, $42

    db $10                                        ; $14cf: $10
    ld b, e                                       ; $14d0: $43

    db $3b, $43, $66, $43

    sub c                                         ; $14d5: $91
    ld b, e                                       ; $14d6: $43
    cp e                                          ; $14d7: $bb
    ld b, e                                       ; $14d8: $43

    db $e6, $43

    db $11                                        ; $14db: $11
    ld b, h                                       ; $14dc: $44

    db $3b, $44

    ld h, [hl]                                    ; $14df: $66
    ld b, h                                       ; $14e0: $44

    db $90, $44, $bb, $44

    push hl                                       ; $14e5: $e5
    ld b, h                                       ; $14e6: $44

    db $10, $45, $3a, $45, $64, $45, $8f, $45

    cp c                                          ; $14ef: $b9
    ld b, l                                       ; $14f0: $45

    db $e3, $45, $0d, $46

    scf                                           ; $14f5: $37
    ld b, [hl]                                    ; $14f6: $46

    db $61, $46, $8b, $46

    or l                                          ; $14fb: $b5
    ld b, [hl]                                    ; $14fc: $46

    db $df, $46, $09, $47, $33, $47

    ld e, l                                       ; $1503: $5d
    ld b, a                                       ; $1504: $47

    db $87, $47, $b0, $47, $da, $47, $04, $48, $2d, $48

Jump_000_150f:
    ld d, a                                       ; $150f: $57
    ld c, b                                       ; $1510: $48

Jump_000_1511:
    add b                                         ; $1511: $80
    ld c, b                                       ; $1512: $48

    db $aa, $48

Jump_000_1515:
    db $d3                                        ; $1515: $d3
    ld c, b                                       ; $1516: $48
    db $fd                                        ; $1517: $fd
    ld c, b                                       ; $1518: $48

    db $26, $49

    ld c, a                                       ; $151b: $4f
    ld c, c                                       ; $151c: $49
    ld a, b                                       ; $151d: $78
    ld c, c                                       ; $151e: $49

    db $a2, $49, $cb, $49

    db $f4                                        ; $1523: $f4
    ld c, c                                       ; $1524: $49

    db $1d, $4a

    ld b, [hl]                                    ; $1527: $46

Jump_000_1528:
    ld c, d                                       ; $1528: $4a
    ld l, a                                       ; $1529: $6f
    ld c, d                                       ; $152a: $4a

    db $98, $4a

    pop bc                                        ; $152d: $c1
    ld c, d                                       ; $152e: $4a
    db $ea                                        ; $152f: $ea
    ld c, d                                       ; $1530: $4a

    db $12, $4b

    dec sp                                        ; $1533: $3b
    ld c, e                                       ; $1534: $4b

    db $64, $4b

    adc h                                         ; $1537: $8c
    ld c, e                                       ; $1538: $4b

    db $b5, $4b, $de, $4b

    ld b, $4c                                     ; $153d: $06 $4c

    db $2f, $4c, $57, $4c

    ld a, a                                       ; $1543: $7f
    ld c, h                                       ; $1544: $4c

    db $a8, $4c

    ret nc                                        ; $1547: $d0

    ld c, h                                       ; $1548: $4c
    ld hl, sp+$4c                                 ; $1549: $f8 $4c

    db $20, $4d

    ld c, c                                       ; $154d: $49
    ld c, l                                       ; $154e: $4d

    db $71, $4d, $99, $4d, $c1, $4d

Call_000_1555:
    jp hl                                         ; $1555: $e9


    ld c, l                                       ; $1556: $4d

    db $11, $4e, $39, $4e

    ld h, b                                       ; $155b: $60
    ld c, [hl]                                    ; $155c: $4e
    adc b                                         ; $155d: $88
    ld c, [hl]                                    ; $155e: $4e
    or b                                          ; $155f: $b0
    ld c, [hl]                                    ; $1560: $4e

    db $d8, $4e, $ff, $4e

    daa                                           ; $1565: $27
    ld c, a                                       ; $1566: $4f
    ld c, [hl]                                    ; $1567: $4e
    ld c, a                                       ; $1568: $4f
    halt                                          ; $1569: $76
    ld c, a                                       ; $156a: $4f
    sbc l                                         ; $156b: $9d
    ld c, a                                       ; $156c: $4f
    push bc                                       ; $156d: $c5
    ld c, a                                       ; $156e: $4f

    db $ec, $4f, $13, $50

    ld a, [hl-]                                   ; $1573: $3a
    ld d, b                                       ; $1574: $50

    db $62, $50, $89, $50, $b0, $50

    rst $10                                       ; $157b: $d7
    ld d, b                                       ; $157c: $50
    cp $50                                        ; $157d: $fe $50
    dec h                                         ; $157f: $25
    ld d, c                                       ; $1580: $51

    db $4c, $51

    ld [hl], e                                    ; $1583: $73

Jump_000_1584:
    ld d, c                                       ; $1584: $51

    db $99, $51

    ret nz                                        ; $1587: $c0

    ld d, c                                       ; $1588: $51
    rst $20                                       ; $1589: $e7
    ld d, c                                       ; $158a: $51

    db $0e, $52

Jump_000_158d:
    inc [hl]                                      ; $158d: $34
    ld d, d                                       ; $158e: $52

    db $5b, $52

    add c                                         ; $1591: $81
    ld d, d                                       ; $1592: $52

    db $a8, $52

    adc $52                                       ; $1595: $ce $52
    db $f4                                        ; $1597: $f4
    ld d, d                                       ; $1598: $52
    dec de                                        ; $1599: $1b
    ld d, e                                       ; $159a: $53
    ld b, c                                       ; $159b: $41
    ld d, e                                       ; $159c: $53
    ld h, a                                       ; $159d: $67
    ld d, e                                       ; $159e: $53
    adc l                                         ; $159f: $8d
    ld d, e                                       ; $15a0: $53

    db $b4, $53

    jp c, Jump_000_0053                           ; $15a3: $da $53 $00

    ld d, h                                       ; $15a6: $54
    ld h, $54                                     ; $15a7: $26 $54

    db $4b, $54

    ld [hl], c                                    ; $15ab: $71
    ld d, h                                       ; $15ac: $54
    sub a                                         ; $15ad: $97

Jump_000_15ae:
    ld d, h                                       ; $15ae: $54

    db $bd, $54, $e3, $54

    ld [$2e55], sp                                ; $15b3: $08 $55 $2e
    ld d, l                                       ; $15b6: $55
    ld d, e                                       ; $15b7: $53
    ld d, l                                       ; $15b8: $55

    db $79, $55, $9e, $55

    db $c4                                        ; $15bd: $c4
    ld d, l                                       ; $15be: $55

    db $e9, $55, $0e, $56

Call_000_15c3:
    inc [hl]                                      ; $15c3: $34
    ld d, [hl]                                    ; $15c4: $56

Call_000_15c5:
    ld e, c                                       ; $15c5: $59
    ld d, [hl]                                    ; $15c6: $56
    ld a, [hl]                                    ; $15c7: $7e
    ld d, [hl]                                    ; $15c8: $56

    db $a3, $56

    ret z                                         ; $15cb: $c8

    ld d, [hl]                                    ; $15cc: $56

Jump_000_15cd:
    db $ed                                        ; $15cd: $ed
    ld d, [hl]                                    ; $15ce: $56

    db $12, $57, $37, $57, $5c, $57, $80, $57, $a5, $57, $ca, $57, $ee, $57, $13, $58
    db $37, $58, $5c, $58, $80, $58, $a4, $58, $c9, $58

    db $ed                                        ; $15e9: $ed

Jump_000_15ea:
    ld e, b                                       ; $15ea: $58

    db $11, $59

    dec [hl]                                      ; $15ed: $35
    ld e, c                                       ; $15ee: $59

    db $59, $59, $7d, $59, $a1, $59, $c5, $59, $e9, $59, $0d, $5a, $31, $5a, $54, $5a
    db $78, $5a, $9c, $5a, $bf, $5a, $e3, $5a, $06, $5b, $29, $5b, $4d, $5b, $70, $5b
    db $93, $5b, $b6, $5b, $d9, $5b

    db $fc                                        ; $1615: $fc
    ld e, e                                       ; $1616: $5b

    db $1f, $5c

    ld b, d                                       ; $1619: $42
    ld e, h                                       ; $161a: $5c

    db $65, $5c, $88, $5c, $ab, $5c, $cd, $5c, $f0, $5c, $13, $5d, $35, $5d, $58, $5d
    db $7a, $5d, $9c, $5d, $bf, $5d, $e1, $5d, $03, $5e

    dec h                                         ; $1635: $25
    ld e, [hl]                                    ; $1636: $5e
    ld b, a                                       ; $1637: $47
    ld e, [hl]                                    ; $1638: $5e

    db $69, $5e

    adc e                                         ; $163b: $8b
    ld e, [hl]                                    ; $163c: $5e
    xor l                                         ; $163d: $ad
    ld e, [hl]                                    ; $163e: $5e
    rst $08                                       ; $163f: $cf

Call_000_1640:
    ld e, [hl]                                    ; $1640: $5e

    db $f1, $5e, $13, $5f

    inc [hl]                                      ; $1645: $34
    ld e, a                                       ; $1646: $5f

    db $56, $5f, $77, $5f

    sbc c                                         ; $164b: $99
    ld e, a                                       ; $164c: $5f
    cp d                                          ; $164d: $ba
    ld e, a                                       ; $164e: $5f
    db $dc                                        ; $164f: $dc
    ld e, a                                       ; $1650: $5f

    db $fd, $5f, $1e, $60

    ld b, b                                       ; $1655: $40
    ld h, b                                       ; $1656: $60
    ld h, c                                       ; $1657: $61

Call_000_1658:
    ld h, b                                       ; $1658: $60

    db $82, $60

Call_000_165b:
    and e                                         ; $165b: $a3
    ld h, b                                       ; $165c: $60
    call nz, $e560                                ; $165d: $c4 $60 $e5
    ld h, b                                       ; $1660: $60

    db $06, $61

    ld h, $61                                     ; $1663: $26 $61
    ld b, a                                       ; $1665: $47
    ld h, c                                       ; $1666: $61
    ld l, b                                       ; $1667: $68
    ld h, c                                       ; $1668: $61
    adc b                                         ; $1669: $88
    ld h, c                                       ; $166a: $61
    xor c                                         ; $166b: $a9
    ld h, c                                       ; $166c: $61
    db $ca                                        ; $166d: $ca

Call_000_166e:
    ld h, c                                       ; $166e: $61

    db $ea, $61

    ld a, [bc]                                    ; $1671: $0a
    ld h, d                                       ; $1672: $62

    db $2b, $62

    ld c, e                                       ; $1675: $4b
    ld h, d                                       ; $1676: $62

    db $6b, $62

    adc e                                         ; $1679: $8b
    ld h, d                                       ; $167a: $62
    xor e                                         ; $167b: $ab
    ld h, d                                       ; $167c: $62

    db $cb, $62

Jump_000_167f:
    db $eb                                        ; $167f: $eb
    ld h, d                                       ; $1680: $62

    db $0b, $63

    dec hl                                        ; $1683: $2b
    ld h, e                                       ; $1684: $63
    ld c, e                                       ; $1685: $4b
    ld h, e                                       ; $1686: $63
    ld l, e                                       ; $1687: $6b
    ld h, e                                       ; $1688: $63

    db $8a, $63, $aa, $63, $ca, $63

    jp hl                                         ; $168f: $e9


Jump_000_1690:
    ld h, e                                       ; $1690: $63

    db $08, $64, $28, $64

    ld b, a                                       ; $1695: $47
    ld h, h                                       ; $1696: $64
    ld h, [hl]                                    ; $1697: $66
    ld h, h                                       ; $1698: $64
    add [hl]                                      ; $1699: $86
    ld h, h                                       ; $169a: $64
    and l                                         ; $169b: $a5
    ld h, h                                       ; $169c: $64
    db $c4                                        ; $169d: $c4
    ld h, h                                       ; $169e: $64

    db $e3, $64, $02, $65

    ld hl, $3f65                                  ; $16a3: $21 $65 $3f
    ld h, l                                       ; $16a6: $65
    ld e, [hl]                                    ; $16a7: $5e
    ld h, l                                       ; $16a8: $65

    db $7d, $65, $9c, $65

    cp d                                          ; $16ad: $ba
    ld h, l                                       ; $16ae: $65

    db $d9, $65, $f7, $65, $16, $66

    inc [hl]                                      ; $16b5: $34
    ld h, [hl]                                    ; $16b6: $66

    db $52, $66

    ld [hl], b                                    ; $16b9: $70
    ld h, [hl]                                    ; $16ba: $66
    adc a                                         ; $16bb: $8f
    ld h, [hl]                                    ; $16bc: $66

    db $ad, $66

    bit 4, [hl]                                   ; $16bf: $cb $66

    db $e9, $66, $06, $67

    inc h                                         ; $16c5: $24

Call_000_16c6:
    ld h, a                                       ; $16c6: $67

    db $42, $67, $60, $67

    ld a, l                                       ; $16cb: $7d
    ld h, a                                       ; $16cc: $67

    db $9b, $67

    cp c                                          ; $16cf: $b9
    ld h, a                                       ; $16d0: $67

    db $d6, $67

    di                                            ; $16d3: $f3
    ld h, a                                       ; $16d4: $67
    db $11                                        ; $16d5: $11
    ld l, b                                       ; $16d6: $68

    db $2e, $68

    ld c, e                                       ; $16d9: $4b
    ld l, b                                       ; $16da: $68
    ld l, b                                       ; $16db: $68
    ld l, b                                       ; $16dc: $68

    db $86, $68

    and e                                         ; $16df: $a3
    ld l, b                                       ; $16e0: $68

    db $c0, $68, $dc, $68

    ld sp, hl                                     ; $16e5: $f9
    ld l, b                                       ; $16e6: $68
    ld d, $69                                     ; $16e7: $16 $69

    db $33, $69

    ld c, a                                       ; $16eb: $4f
    ld l, c                                       ; $16ec: $69
    ld l, h                                       ; $16ed: $6c
    ld l, c                                       ; $16ee: $69

    db $88, $69

    and l                                         ; $16f1: $a5
    ld l, c                                       ; $16f2: $69
    pop bc                                        ; $16f3: $c1
    ld l, c                                       ; $16f4: $69

    db $de, $69, $fa, $69, $16, $6a, $32, $6a, $4e, $6a

    ld l, d                                       ; $16ff: $6a

Jump_000_1700:
    ld l, d                                       ; $1700: $6a

    db $86, $6a, $a2, $6a, $be, $6a

    db $da                                        ; $1707: $da
    ld l, d                                       ; $1708: $6a

    db $f5, $6a, $11, $6b

    dec l                                         ; $170d: $2d
    ld l, e                                       ; $170e: $6b

    db $48, $6b, $63, $6b

    ld a, a                                       ; $1713: $7f
    ld l, e                                       ; $1714: $6b

    db $9a, $6b, $b5, $6b, $d0, $6b, $ec, $6b

    rlca                                          ; $171d: $07
    ld l, h                                       ; $171e: $6c

    db $22, $6c, $3c, $6c

    ld d, a                                       ; $1723: $57
    ld l, h                                       ; $1724: $6c

    db $72, $6c

    adc l                                         ; $1727: $8d
    ld l, h                                       ; $1728: $6c

    db $a7, $6c

    jp nz, $dd6c                                  ; $172b: $c2 $6c $dd

    ld l, h                                       ; $172e: $6c

    db $f7, $6c, $11, $6d

    inc l                                         ; $1733: $2c
    ld l, l                                       ; $1734: $6d

    db $46, $6d

    ld h, b                                       ; $1737: $60
    ld l, l                                       ; $1738: $6d

    db $7a, $6d, $94, $6d

    xor [hl]                                      ; $173d: $ae
    ld l, l                                       ; $173e: $6d
    ret z                                         ; $173f: $c8

    ld l, l                                       ; $1740: $6d

    db $e2, $6d

    db $fc                                        ; $1743: $fc
    ld l, l                                       ; $1744: $6d

    db $15, $6e, $2f, $6e

    ld c, c                                       ; $1749: $49
    ld l, [hl]                                    ; $174a: $6e

    db $62, $6e, $7c, $6e

    sub l                                         ; $174f: $95
    ld l, [hl]                                    ; $1750: $6e

    db $ae, $6e, $c8, $6e

    pop hl                                        ; $1755: $e1
    ld l, [hl]                                    ; $1756: $6e
    ld a, [$136e]                                 ; $1757: $fa $6e $13
    ld l, a                                       ; $175a: $6f
    inc l                                         ; $175b: $2c
    ld l, a                                       ; $175c: $6f
    ld b, l                                       ; $175d: $45
    ld l, a                                       ; $175e: $6f
    ld e, [hl]                                    ; $175f: $5e

Jump_000_1760:
    ld l, a                                       ; $1760: $6f

    db $76, $6f, $8f, $6f

    xor b                                         ; $1765: $a8
    ld l, a                                       ; $1766: $6f
    ret nz                                        ; $1767: $c0

    ld l, a                                       ; $1768: $6f
    reti                                          ; $1769: $d9


    ld l, a                                       ; $176a: $6f
    pop af                                        ; $176b: $f1
    ld l, a                                       ; $176c: $6f
    ld a, [bc]                                    ; $176d: $0a
    ld [hl], b                                    ; $176e: $70

    db $22, $70

    ld a, [hl-]                                   ; $1771: $3a
    ld [hl], b                                    ; $1772: $70
    ld d, d                                       ; $1773: $52
    ld [hl], b                                    ; $1774: $70
    ld l, e                                       ; $1775: $6b
    ld [hl], b                                    ; $1776: $70

    db $83, $70

    sbc e                                         ; $1779: $9b
    ld [hl], b                                    ; $177a: $70

    db $b2, $70

    jp z, $e270                                   ; $177d: $ca $70 $e2

    ld [hl], b                                    ; $1780: $70

    db $fa, $70

    ld de, $2971                                  ; $1783: $11 $71 $29
    ld [hl], c                                    ; $1786: $71
    ld b, b                                       ; $1787: $40
    ld [hl], c                                    ; $1788: $71
    ld e, b                                       ; $1789: $58
    ld [hl], c                                    ; $178a: $71
    ld l, a                                       ; $178b: $6f
    ld [hl], c                                    ; $178c: $71
    add a                                         ; $178d: $87
    ld [hl], c                                    ; $178e: $71
    sbc [hl]                                      ; $178f: $9e
    ld [hl], c                                    ; $1790: $71

    db $b5, $71

    call z, $e371                                 ; $1793: $cc $71 $e3
    ld [hl], c                                    ; $1796: $71
    ld a, [$1171]                                 ; $1797: $fa $71 $11
    ld [hl], d                                    ; $179a: $72
    jr z, @+$74                                   ; $179b: $28 $72

    ld a, $72                                     ; $179d: $3e $72
    ld d, l                                       ; $179f: $55

Jump_000_17a0:
    ld [hl], d                                    ; $17a0: $72

    db $6c, $72

    add d                                         ; $17a3: $82
    ld [hl], d                                    ; $17a4: $72
    sbc c                                         ; $17a5: $99
    ld [hl], d                                    ; $17a6: $72

    db $af, $72

    push bc                                       ; $17a9: $c5
    ld [hl], d                                    ; $17aa: $72
    call c, $f272                                 ; $17ab: $dc $72 $f2
    ld [hl], d                                    ; $17ae: $72

    db $08, $73

    ld e, $73                                     ; $17b1: $1e $73
    inc [hl]                                      ; $17b3: $34
    ld [hl], e                                    ; $17b4: $73
    ld c, d                                       ; $17b5: $4a
    ld [hl], e                                    ; $17b6: $73
    ld h, b                                       ; $17b7: $60
    ld [hl], e                                    ; $17b8: $73
    ld [hl], l                                    ; $17b9: $75
    ld [hl], e                                    ; $17ba: $73
    adc e                                         ; $17bb: $8b
    ld [hl], e                                    ; $17bc: $73

    db $a1, $73

    or [hl]                                       ; $17bf: $b6
    ld [hl], e                                    ; $17c0: $73

    db $cc, $73

    pop hl                                        ; $17c3: $e1
    ld [hl], e                                    ; $17c4: $73
    or $73                                        ; $17c5: $f6 $73
    inc c                                         ; $17c7: $0c
    ld [hl], h                                    ; $17c8: $74

    db $21, $74

    ld [hl], $74                                  ; $17cb: $36 $74
    ld c, e                                       ; $17cd: $4b
    ld [hl], h                                    ; $17ce: $74
    ld h, b                                       ; $17cf: $60
    ld [hl], h                                    ; $17d0: $74
    ld [hl], l                                    ; $17d1: $75
    ld [hl], h                                    ; $17d2: $74

    db $8a, $74

    sbc a                                         ; $17d5: $9f
    ld [hl], h                                    ; $17d6: $74

    db $b3, $74

    ret z                                         ; $17d9: $c8

    ld [hl], h                                    ; $17da: $74
    db $dd                                        ; $17db: $dd
    ld [hl], h                                    ; $17dc: $74
    pop af                                        ; $17dd: $f1
    ld [hl], h                                    ; $17de: $74

    db $06, $75, $1a, $75, $2e, $75

    ld b, d                                       ; $17e5: $42
    ld [hl], l                                    ; $17e6: $75
    ld d, a                                       ; $17e7: $57
    ld [hl], l                                    ; $17e8: $75

    db $6b, $75

    ld a, a                                       ; $17eb: $7f
    ld [hl], l                                    ; $17ec: $75
    sub e                                         ; $17ed: $93

Jump_000_17ee:
    ld [hl], l                                    ; $17ee: $75

    db $a6, $75

    cp d                                          ; $17f1: $ba
    ld [hl], l                                    ; $17f2: $75

    db $ce, $75

    ld [c], a                                     ; $17f5: $e2
    ld [hl], l                                    ; $17f6: $75

    db $f5, $75, $09, $76

    inc e                                         ; $17fb: $1c
    halt                                          ; $17fc: $76
    jr nc, @+$78                                  ; $17fd: $30 $76

Call_000_17ff:
    ld b, e                                       ; $17ff: $43

Jump_000_1800:
    halt                                          ; $1800: $76

    db $56, $76

    ld l, c                                       ; $1803: $69
    halt                                          ; $1804: $76

    db $7c, $76

    adc a                                         ; $1807: $8f
    halt                                          ; $1808: $76

Call_000_1809:
    and d                                         ; $1809: $a2
    halt                                          ; $180a: $76
    or l                                          ; $180b: $b5
    halt                                          ; $180c: $76

    db $c8, $76, $db, $76

    db $ed                                        ; $1811: $ed
    halt                                          ; $1812: $76
    nop                                           ; $1813: $00
    ld [hl], a                                    ; $1814: $77
    ld [de], a                                    ; $1815: $12
    ld [hl], a                                    ; $1816: $77
    dec h                                         ; $1817: $25

Jump_000_1818:
    ld [hl], a                                    ; $1818: $77

    db $37, $77, $49, $77

    ld e, h                                       ; $181d: $5c
    ld [hl], a                                    ; $181e: $77
    ld l, [hl]                                    ; $181f: $6e
    ld [hl], a                                    ; $1820: $77

    db $80, $77

    sub d                                         ; $1823: $92
    ld [hl], a                                    ; $1824: $77

    db $a4, $77

    or [hl]                                       ; $1827: $b6
    ld [hl], a                                    ; $1828: $77
    rst $00                                       ; $1829: $c7
    ld [hl], a                                    ; $182a: $77
    reti                                          ; $182b: $d9


    ld [hl], a                                    ; $182c: $77
    db $eb                                        ; $182d: $eb
    ld [hl], a                                    ; $182e: $77

    db $fc, $77

    ld c, $78                                     ; $1831: $0e $78
    rra                                           ; $1833: $1f
    ld a, b                                       ; $1834: $78
    ld sp, $4278                                  ; $1835: $31 $78 $42
    ld a, b                                       ; $1838: $78

    db $53, $78

Call_000_183b:
    ld h, h                                       ; $183b: $64
    ld a, b                                       ; $183c: $78
    ld [hl], l                                    ; $183d: $75
    ld a, b                                       ; $183e: $78
    add [hl]                                      ; $183f: $86

Call_000_1840:
    ld a, b                                       ; $1840: $78

    db $97, $78

    xor b                                         ; $1843: $a8
    ld a, b                                       ; $1844: $78
    cp c                                          ; $1845: $b9
    ld a, b                                       ; $1846: $78
    ret                                           ; $1847: $c9


    ld a, b                                       ; $1848: $78
    db $da                                        ; $1849: $da
    ld a, b                                       ; $184a: $78

    db $eb, $78

    ei                                            ; $184d: $fb
    ld a, b                                       ; $184e: $78
    inc c                                         ; $184f: $0c
    ld a, c                                       ; $1850: $79

    db $1c, $79

    inc l                                         ; $1853: $2c
    ld a, c                                       ; $1854: $79
    inc a                                         ; $1855: $3c
    ld a, c                                       ; $1856: $79
    ld c, h                                       ; $1857: $4c
    ld a, c                                       ; $1858: $79

    db $5c, $79, $6c, $79

    ld a, h                                       ; $185d: $7c
    ld a, c                                       ; $185e: $79
    adc h                                         ; $185f: $8c
    ld a, c                                       ; $1860: $79

    db $9c, $79

Call_000_1863:
    xor h                                         ; $1863: $ac
    ld a, c                                       ; $1864: $79

    db $bb, $79, $cb, $79, $da, $79, $e9, $79

    ld sp, hl                                     ; $186d: $f9
    ld a, c                                       ; $186e: $79
    ld [$177a], sp                                ; $186f: $08 $7a $17
    ld a, d                                       ; $1872: $7a
    ld h, $7a                                     ; $1873: $26 $7a

    db $35, $7a

    ld b, h                                       ; $1877: $44
    ld a, d                                       ; $1878: $7a

Call_000_1879:
    ld d, e                                       ; $1879: $53
    ld a, d                                       ; $187a: $7a
    ld h, d                                       ; $187b: $62
    ld a, d                                       ; $187c: $7a
    ld [hl], c                                    ; $187d: $71
    ld a, d                                       ; $187e: $7a
    ld a, a                                       ; $187f: $7f

Jump_000_1880:
    ld a, d                                       ; $1880: $7a

    db $8e, $7a, $9c, $7a

    xor e                                         ; $1885: $ab
    ld a, d                                       ; $1886: $7a
    cp c                                          ; $1887: $b9
    ld a, d                                       ; $1888: $7a

    db $c7, $7a, $d5, $7a

    db $e4                                        ; $188d: $e4
    ld a, d                                       ; $188e: $7a
    ld a, [c]                                     ; $188f: $f2
    ld a, d                                       ; $1890: $7a

    db $00, $7b

    dec c                                         ; $1893: $0d
    ld a, e                                       ; $1894: $7b
    dec de                                        ; $1895: $1b
    ld a, e                                       ; $1896: $7b
    add hl, hl                                    ; $1897: $29
    ld a, e                                       ; $1898: $7b

    db $37, $7b

    ld b, h                                       ; $189b: $44
    ld a, e                                       ; $189c: $7b

    db $52, $7b

    ld e, a                                       ; $189f: $5f

Jump_000_18a0:
    ld a, e                                       ; $18a0: $7b

    db $6d, $7b, $7a, $7b, $87, $7b

    sub h                                         ; $18a7: $94
    ld a, e                                       ; $18a8: $7b

    db $a1, $7b

    xor [hl]                                      ; $18ab: $ae
    ld a, e                                       ; $18ac: $7b

    db $bb, $7b

    ret z                                         ; $18af: $c8

    ld a, e                                       ; $18b0: $7b
    push de                                       ; $18b1: $d5
    ld a, e                                       ; $18b2: $7b
    ld [c], a                                     ; $18b3: $e2
    ld a, e                                       ; $18b4: $7b
    xor $7b                                       ; $18b5: $ee $7b

    db $fb, $7b

    rlca                                          ; $18b9: $07
    ld a, h                                       ; $18ba: $7c
    inc d                                         ; $18bb: $14

Jump_000_18bc:
    ld a, h                                       ; $18bc: $7c
    jr nz, @+$7e                                  ; $18bd: $20 $7c

    inc l                                         ; $18bf: $2c

Call_000_18c0:
    ld a, h                                       ; $18c0: $7c

    db $38, $7c, $45, $7c

    ld d, c                                       ; $18c5: $51

Call_000_18c6:
Jump_000_18c6:
    ld a, h                                       ; $18c6: $7c
    ld e, l                                       ; $18c7: $5d
    ld a, h                                       ; $18c8: $7c

    db $68, $7c, $74, $7c, $80, $7c, $8c, $7c

    sub a                                         ; $18d1: $97
    ld a, h                                       ; $18d2: $7c

Jump_000_18d3:
    and e                                         ; $18d3: $a3
    ld a, h                                       ; $18d4: $7c

    db $ae, $7c

    cp c                                          ; $18d7: $b9
    ld a, h                                       ; $18d8: $7c

    db $c5, $7c, $d0, $7c, $db, $7c

    and $7c                                       ; $18df: $e6 $7c

    db $f1, $7c

    db $fc                                        ; $18e3: $fc
    ld a, h                                       ; $18e4: $7c

    db $07, $7d

Jump_000_18e7:
    ld [de], a                                    ; $18e7: $12

Call_000_18e8:
    ld a, l                                       ; $18e8: $7d

    db $1c, $7d, $27, $7d

    db $31                                        ; $18ed: $31
    ld a, l                                       ; $18ee: $7d

    db $3c, $7d

    ld b, [hl]                                    ; $18f1: $46
    ld a, l                                       ; $18f2: $7d
    ld d, b                                       ; $18f3: $50
    ld a, l                                       ; $18f4: $7d

    db $5b, $7d, $65, $7d

    ld l, a                                       ; $18f9: $6f
    ld a, l                                       ; $18fa: $7d

    db $79, $7d, $83, $7d

Call_000_18ff:
Jump_000_18ff:
    adc l                                         ; $18ff: $8d
    ld a, l                                       ; $1900: $7d

    db $96, $7d, $a0, $7d, $aa, $7d

    or e                                          ; $1907: $b3
    ld a, l                                       ; $1908: $7d
    cp l                                          ; $1909: $bd
    ld a, l                                       ; $190a: $7d
    add $7d                                       ; $190b: $c6 $7d
    rst $08                                       ; $190d: $cf
    ld a, l                                       ; $190e: $7d

    db $d9, $7d

    ld [c], a                                     ; $1911: $e2
    ld a, l                                       ; $1912: $7d
    db $eb                                        ; $1913: $eb
    ld a, l                                       ; $1914: $7d
    db $f4                                        ; $1915: $f4
    ld a, l                                       ; $1916: $7d
    db $fd                                        ; $1917: $fd
    ld a, l                                       ; $1918: $7d

    db $06, $7e, $0e, $7e

    rla                                           ; $191d: $17
    ld a, [hl]                                    ; $191e: $7e
    jr nz, @+$80                                  ; $191f: $20 $7e

    db $28, $7e, $31, $7e, $39, $7e, $42, $7e, $4a, $7e, $52, $7e, $5a, $7e

    ld h, d                                       ; $192f: $62
    ld a, [hl]                                    ; $1930: $7e

    db $6a, $7e, $72, $7e, $7a, $7e, $81, $7e

Jump_000_1939:
    adc c                                         ; $1939: $89
    ld a, [hl]                                    ; $193a: $7e

    db $91, $7e, $98, $7e, $9f, $7e, $a7, $7e, $ae, $7e, $b5, $7e, $bc, $7e, $c3, $7e
    db $ca, $7e, $d1, $7e

    ret c                                         ; $194f: $d8

    ld a, [hl]                                    ; $1950: $7e

    db $df, $7e, $e5, $7e

    db $ec                                        ; $1955: $ec
    ld a, [hl]                                    ; $1956: $7e
    ld a, [c]                                     ; $1957: $f2
    ld a, [hl]                                    ; $1958: $7e

    db $f9, $7e, $ff, $7e, $05, $7f

    dec bc                                        ; $195f: $0b
    ld a, a                                       ; $1960: $7f

    db $12, $7f, $18, $7f, $1d, $7f, $23, $7f, $29, $7f

    cpl                                           ; $196b: $2f
    ld a, a                                       ; $196c: $7f

    db $35, $7f, $3a, $7f

    ld b, b                                       ; $1971: $40
    ld a, a                                       ; $1972: $7f

    db $45, $7f

    ld c, d                                       ; $1975: $4a
    ld a, a                                       ; $1976: $7f

    db $50, $7f, $55, $7f

    ld e, d                                       ; $197b: $5a
    ld a, a                                       ; $197c: $7f

    db $5f, $7f

    ld h, h                                       ; $197f: $64
    ld a, a                                       ; $1980: $7f

    db $69, $7f

    ld l, l                                       ; $1983: $6d
    ld a, a                                       ; $1984: $7f

    db $72, $7f, $77, $7f

    ld a, e                                       ; $1989: $7b

Jump_000_198a:
    ld a, a                                       ; $198a: $7f

    db $80, $7f, $84, $7f, $89, $7f, $8d, $7f, $91, $7f, $95, $7f, $99, $7f, $9d, $7f

    and c                                         ; $199b: $a1
    ld a, a                                       ; $199c: $7f

    db $a5, $7f, $a8, $7f, $ac, $7f, $b0, $7f, $b3, $7f, $b7, $7f, $ba, $7f, $bd, $7f
    db $c0, $7f, $c3, $7f, $c6, $7f, $c9, $7f, $cc, $7f, $cf, $7f, $d2, $7f, $d4, $7f
    db $d7, $7f

    reti                                          ; $19bf: $d9


    ld a, a                                       ; $19c0: $7f

    db $dc, $7f, $de, $7f, $e0, $7f, $e3, $7f, $e5, $7f, $e7, $7f, $e9, $7f, $ea, $7f
    db $ec, $7f, $ee, $7f, $f0, $7f, $f1, $7f, $f3, $7f, $f4, $7f, $f5, $7f, $f7, $7f
    db $f8, $7f, $f9, $7f, $fa, $7f, $fb, $7f, $fc, $7f, $fc, $7f, $fd, $7f, $fe, $7f

    cp $7f                                        ; $19f1: $fe $7f
    rst $38                                       ; $19f3: $ff
    ld a, a                                       ; $19f4: $7f

    db $ff, $7f, $00, $80

    nop                                           ; $19f9: $00
    add b                                         ; $19fa: $80

    db $00, $80

    nop                                           ; $19fd: $00
    add b                                         ; $19fe: $80

Jump_000_19ff:
    nop                                           ; $19ff: $00

Call_000_1a00:
    add b                                         ; $1a00: $80

    db $00, $80

Call_000_1a03:
    ld bc, $0000                                  ; $1a03: $01 $00 $00
    ld a, h                                       ; $1a06: $7c
    or l                                          ; $1a07: $b5
    jp z, Jump_000_1b3c                           ; $1a08: $ca $3c $1b

    ld b, $40                                     ; $1a0b: $06 $40
    ld a, d                                       ; $1a0d: $7a
    or e                                          ; $1a0e: $b3
    jp z, Jump_000_1b3c                           ; $1a0f: $ca $3c $1b

    push hl                                       ; $1a12: $e5
    push de                                       ; $1a13: $d5
    bit 7, d                                      ; $1a14: $cb $7a
    jr z, jr_000_1a1e                             ; $1a16: $28 $06

    xor a                                         ; $1a18: $af

Call_000_1a19:
Jump_000_1a19:
    sub e                                         ; $1a19: $93
    ld e, a                                       ; $1a1a: $5f
    sbc a                                         ; $1a1b: $9f
    sub d                                         ; $1a1c: $92
    ld d, a                                       ; $1a1d: $57

jr_000_1a1e:
    bit 7, h                                      ; $1a1e: $cb $7c
    jr z, jr_000_1a28                             ; $1a20: $28 $06

    xor a                                         ; $1a22: $af
    sub l                                         ; $1a23: $95
    ld l, a                                       ; $1a24: $6f
    sbc a                                         ; $1a25: $9f
    sub h                                         ; $1a26: $94
    ld h, a                                       ; $1a27: $67

jr_000_1a28:
    ld a, h                                       ; $1a28: $7c
    ld h, l                                       ; $1a29: $65
    ld l, $00                                     ; $1a2a: $2e $00
    call Call_000_0ddb                            ; $1a2c: $cd $db $0d
    ld bc, $3fc0                                  ; $1a2f: $01 $c0 $3f
    or a                                          ; $1a32: $b7
    jp nz, Jump_000_1b3a                          ; $1a33: $c2 $3a $1b

    ld e, l                                       ; $1a36: $5d
    ld d, h                                       ; $1a37: $54
    ld hl, $1c66                                  ; $1a38: $21 $66 $1c
    ld b, $00                                     ; $1a3b: $06 $00
    ld a, [hl+]                                   ; $1a3d: $2a
    ld c, a                                       ; $1a3e: $4f
    ld a, [hl-]                                   ; $1a3f: $3a
    cp d                                          ; $1a40: $ba
    jr c, jr_000_1a52                             ; $1a41: $38 $0f

    jr nz, jr_000_1a49                            ; $1a43: $20 $04

    ld a, c                                       ; $1a45: $79
    cp e                                          ; $1a46: $bb
    jr c, jr_000_1a52                             ; $1a47: $38 $09

jr_000_1a49:
    ld a, l                                       ; $1a49: $7d
    sub $80                                       ; $1a4a: $d6 $80
    ld l, a                                       ; $1a4c: $6f
    jr nc, jr_000_1a50                            ; $1a4d: $30 $01

    dec h                                         ; $1a4f: $25

jr_000_1a50:
    jr jr_000_1a5b                                ; $1a50: $18 $09

jr_000_1a52:
    ld a, $80                                     ; $1a52: $3e $80
    add l                                         ; $1a54: $85
    ld l, a                                       ; $1a55: $6f
    jr nc, jr_000_1a59                            ; $1a56: $30 $01

    inc h                                         ; $1a58: $24

Call_000_1a59:
jr_000_1a59:
    set 7, b                                      ; $1a59: $cb $f8

jr_000_1a5b:
    ld a, [hl+]                                   ; $1a5b: $2a
    ld c, a                                       ; $1a5c: $4f
    ld a, [hl-]                                   ; $1a5d: $3a
    cp d                                          ; $1a5e: $ba
    jr c, jr_000_1a70                             ; $1a5f: $38 $0f

    jr nz, jr_000_1a67                            ; $1a61: $20 $04

    ld a, c                                       ; $1a63: $79
    cp e                                          ; $1a64: $bb

Jump_000_1a65:
    jr c, jr_000_1a70                             ; $1a65: $38 $09

Call_000_1a67:
jr_000_1a67:
    ld a, l                                       ; $1a67: $7d
    sub $40                                       ; $1a68: $d6 $40
    ld l, a                                       ; $1a6a: $6f
    jr nc, jr_000_1a6e                            ; $1a6b: $30 $01

    dec h                                         ; $1a6d: $25

jr_000_1a6e:
    jr jr_000_1a79                                ; $1a6e: $18 $09

jr_000_1a70:
    ld a, $40                                     ; $1a70: $3e $40
    add l                                         ; $1a72: $85
    ld l, a                                       ; $1a73: $6f
    jr nc, jr_000_1a77                            ; $1a74: $30 $01

    inc h                                         ; $1a76: $24

jr_000_1a77:
    set 6, b                                      ; $1a77: $cb $f0

jr_000_1a79:
    ld a, [hl+]                                   ; $1a79: $2a
    ld c, a                                       ; $1a7a: $4f
    ld a, [hl-]                                   ; $1a7b: $3a
    cp d                                          ; $1a7c: $ba
    jr c, jr_000_1a8e                             ; $1a7d: $38 $0f

    jr nz, jr_000_1a85                            ; $1a7f: $20 $04

    ld a, c                                       ; $1a81: $79
    cp e                                          ; $1a82: $bb
    jr c, jr_000_1a8e                             ; $1a83: $38 $09

jr_000_1a85:
    ld a, l                                       ; $1a85: $7d
    sub $20                                       ; $1a86: $d6 $20
    ld l, a                                       ; $1a88: $6f
    jr nc, jr_000_1a8c                            ; $1a89: $30 $01

    dec h                                         ; $1a8b: $25

jr_000_1a8c:
    jr jr_000_1a97                                ; $1a8c: $18 $09

jr_000_1a8e:
    ld a, $20                                     ; $1a8e: $3e $20
    add l                                         ; $1a90: $85
    ld l, a                                       ; $1a91: $6f
    jr nc, jr_000_1a95                            ; $1a92: $30 $01

    inc h                                         ; $1a94: $24

jr_000_1a95:
    set 5, b                                      ; $1a95: $cb $e8

jr_000_1a97:
    ld a, [hl+]                                   ; $1a97: $2a
    ld c, a                                       ; $1a98: $4f
    ld a, [hl-]                                   ; $1a99: $3a
    cp d                                          ; $1a9a: $ba
    jr c, jr_000_1aac                             ; $1a9b: $38 $0f

    jr nz, jr_000_1aa3                            ; $1a9d: $20 $04

    ld a, c                                       ; $1a9f: $79
    cp e                                          ; $1aa0: $bb
    jr c, jr_000_1aac                             ; $1aa1: $38 $09

jr_000_1aa3:
    ld a, l                                       ; $1aa3: $7d
    sub $10                                       ; $1aa4: $d6 $10
    ld l, a                                       ; $1aa6: $6f
    jr nc, jr_000_1aaa                            ; $1aa7: $30 $01

    dec h                                         ; $1aa9: $25

jr_000_1aaa:
    jr jr_000_1ab5                                ; $1aaa: $18 $09

jr_000_1aac:
    ld a, $10                                     ; $1aac: $3e $10
    add l                                         ; $1aae: $85
    ld l, a                                       ; $1aaf: $6f
    jr nc, jr_000_1ab3                            ; $1ab0: $30 $01

    inc h                                         ; $1ab2: $24

jr_000_1ab3:
    set 4, b                                      ; $1ab3: $cb $e0

jr_000_1ab5:
    ld a, [hl+]                                   ; $1ab5: $2a
    ld c, a                                       ; $1ab6: $4f
    ld a, [hl-]                                   ; $1ab7: $3a
    cp d                                          ; $1ab8: $ba
    jr c, jr_000_1aca                             ; $1ab9: $38 $0f

    jr nz, jr_000_1ac1                            ; $1abb: $20 $04

    ld a, c                                       ; $1abd: $79
    cp e                                          ; $1abe: $bb
    jr c, jr_000_1aca                             ; $1abf: $38 $09

jr_000_1ac1:
    ld a, l                                       ; $1ac1: $7d
    sub $08                                       ; $1ac2: $d6 $08
    ld l, a                                       ; $1ac4: $6f
    jr nc, jr_000_1ac8                            ; $1ac5: $30 $01

    dec h                                         ; $1ac7: $25

jr_000_1ac8:
    jr jr_000_1ad3                                ; $1ac8: $18 $09

jr_000_1aca:
    ld a, $08                                     ; $1aca: $3e $08
    add l                                         ; $1acc: $85
    ld l, a                                       ; $1acd: $6f
    jr nc, jr_000_1ad1                            ; $1ace: $30 $01

    inc h                                         ; $1ad0: $24

jr_000_1ad1:
    set 3, b                                      ; $1ad1: $cb $d8

jr_000_1ad3:
    ld a, [hl+]                                   ; $1ad3: $2a
    ld c, a                                       ; $1ad4: $4f
    ld a, [hl-]                                   ; $1ad5: $3a

Call_000_1ad6:
    cp d                                          ; $1ad6: $ba
    jr c, jr_000_1ae8                             ; $1ad7: $38 $0f

    jr nz, jr_000_1adf                            ; $1ad9: $20 $04

    ld a, c                                       ; $1adb: $79
    cp e                                          ; $1adc: $bb
    jr c, jr_000_1ae8                             ; $1add: $38 $09

Jump_000_1adf:
jr_000_1adf:
    ld a, l                                       ; $1adf: $7d
    sub $04                                       ; $1ae0: $d6 $04
    ld l, a                                       ; $1ae2: $6f
    jr nc, jr_000_1ae6                            ; $1ae3: $30 $01

    dec h                                         ; $1ae5: $25

Jump_000_1ae6:
jr_000_1ae6:
    jr jr_000_1af1                                ; $1ae6: $18 $09

jr_000_1ae8:
    ld a, $04                                     ; $1ae8: $3e $04
    add l                                         ; $1aea: $85
    ld l, a                                       ; $1aeb: $6f
    jr nc, jr_000_1aef                            ; $1aec: $30 $01

    inc h                                         ; $1aee: $24

jr_000_1aef:
    set 2, b                                      ; $1aef: $cb $d0

jr_000_1af1:
    ld a, [hl+]                                   ; $1af1: $2a
    ld c, a                                       ; $1af2: $4f
    ld a, [hl-]                                   ; $1af3: $3a
    cp d                                          ; $1af4: $ba
    jr c, jr_000_1b06                             ; $1af5: $38 $0f

    jr nz, jr_000_1afd                            ; $1af7: $20 $04

    ld a, c                                       ; $1af9: $79
    cp e                                          ; $1afa: $bb
    jr c, jr_000_1b06                             ; $1afb: $38 $09

jr_000_1afd:
    ld a, l                                       ; $1afd: $7d
    sub $02                                       ; $1afe: $d6 $02
    ld l, a                                       ; $1b00: $6f
    jr nc, jr_000_1b04                            ; $1b01: $30 $01

    dec h                                         ; $1b03: $25

jr_000_1b04:
    jr jr_000_1b0f                                ; $1b04: $18 $09

jr_000_1b06:
    ld a, $02                                     ; $1b06: $3e $02

Jump_000_1b08:
    add l                                         ; $1b08: $85
    ld l, a                                       ; $1b09: $6f
    jr nc, jr_000_1b0d                            ; $1b0a: $30 $01

    inc h                                         ; $1b0c: $24

jr_000_1b0d:
    set 1, b                                      ; $1b0d: $cb $c8

jr_000_1b0f:
    ld a, [hl+]                                   ; $1b0f: $2a
    ld c, a                                       ; $1b10: $4f
    ld a, [hl+]                                   ; $1b11: $2a
    cp d                                          ; $1b12: $ba
    jr c, jr_000_1b1b                             ; $1b13: $38 $06

    jr nz, jr_000_1b1c                            ; $1b15: $20 $05

    ld a, c                                       ; $1b17: $79
    cp e                                          ; $1b18: $bb
    jr nc, jr_000_1b1c                            ; $1b19: $30 $01

Jump_000_1b1b:
jr_000_1b1b:
    inc b                                         ; $1b1b: $04

jr_000_1b1c:
    ld a, b                                       ; $1b1c: $78
    inc a                                         ; $1b1d: $3c
    jr nz, jr_000_1b31                            ; $1b1e: $20 $11

    ld a, [hl+]                                   ; $1b20: $2a
    ld c, a                                       ; $1b21: $4f
    ld a, [hl+]                                   ; $1b22: $2a
    cp d                                          ; $1b23: $ba
    jr c, jr_000_1b2c                             ; $1b24: $38 $06

    jr nz, jr_000_1b31                            ; $1b26: $20 $09

    ld a, c                                       ; $1b28: $79
    cp e                                          ; $1b29: $bb
    jr nc, jr_000_1b31                            ; $1b2a: $30 $05

jr_000_1b2c:
    ld bc, $4000                                  ; $1b2c: $01 $00 $40
    jr jr_000_1b3a                                ; $1b2f: $18 $09

jr_000_1b31:
    ld a, b                                       ; $1b31: $78
    rrca                                          ; $1b32: $0f
    rrca                                          ; $1b33: $0f
    ld b, a                                       ; $1b34: $47
    and $c0                                       ; $1b35: $e6 $c0
    ld c, a                                       ; $1b37: $4f
    xor b                                         ; $1b38: $a8
    ld b, a                                       ; $1b39: $47

Jump_000_1b3a:
jr_000_1b3a:
    pop de                                        ; $1b3a: $d1
    pop hl                                        ; $1b3b: $e1

Jump_000_1b3c:
    bit 7, d                                      ; $1b3c: $cb $7a
    jr z, jr_000_1b47                             ; $1b3e: $28 $07

    xor a                                         ; $1b40: $af
    sub c                                         ; $1b41: $91
    ld c, a                                       ; $1b42: $4f
    ld a, $80                                     ; $1b43: $3e $80
    sbc b                                         ; $1b45: $98

Jump_000_1b46:
    ld b, a                                       ; $1b46: $47

jr_000_1b47:
    bit 7, h                                      ; $1b47: $cb $7c
    jr z, jr_000_1b51                             ; $1b49: $28 $06

Jump_000_1b4b:
    xor a                                         ; $1b4b: $af
    sub c                                         ; $1b4c: $91
    ld c, a                                       ; $1b4d: $4f
    sbc a                                         ; $1b4e: $9f
    sub b                                         ; $1b4f: $90
    ld b, a                                       ; $1b50: $47

jr_000_1b51:
    ret                                           ; $1b51: $c9


Call_000_1b52:
    ld a, b                                       ; $1b52: $78
    or c                                          ; $1b53: $b1
    ret z                                         ; $1b54: $c8

    xor a                                         ; $1b55: $af
    sub c                                         ; $1b56: $91

Jump_000_1b57:
    ld c, a                                       ; $1b57: $4f
    sbc a                                         ; $1b58: $9f

Call_000_1b59:
    sub b                                         ; $1b59: $90
    ld b, a                                       ; $1b5a: $47
    add hl, bc                                    ; $1b5b: $09
    ret                                           ; $1b5c: $c9


    ld a, d                                       ; $1b5d: $7a
    or e                                          ; $1b5e: $b3
    ret z                                         ; $1b5f: $c8

    xor a                                         ; $1b60: $af
    sub e                                         ; $1b61: $93
    ld e, a                                       ; $1b62: $5f
    sbc a                                         ; $1b63: $9f
    sub d                                         ; $1b64: $92
    ld d, a                                       ; $1b65: $57
    add hl, de                                    ; $1b66: $19
    ret                                           ; $1b67: $c9


    nop                                           ; $1b68: $00
    nop                                           ; $1b69: $00

    db $01, $00, $03, $00, $04, $00, $06, $00, $07, $00, $09, $00, $0b, $00, $0c, $00
    db $0e, $00, $0f, $00, $11, $00, $12, $00, $14, $00, $16, $00, $17, $00, $19, $00
    db $1a, $00

    inc e                                         ; $1b8c: $1c
    nop                                           ; $1b8d: $00

    db $1e, $00, $1f, $00, $21, $00

    ld [hl+], a                                   ; $1b94: $22
    nop                                           ; $1b95: $00

    db $24, $00, $26, $00, $27, $00, $29, $00, $2a, $00, $2c, $00, $2e, $00, $2f, $00
    db $31, $00, $32, $00, $34, $00, $36, $00, $37, $00, $39, $00, $3b, $00, $3c, $00
    db $3e, $00, $40, $00, $41, $00, $43, $00, $45, $00

    ld b, [hl]                                    ; $1bc0: $46
    nop                                           ; $1bc1: $00

    db $48, $00, $4a, $00, $4c, $00

    ld c, l                                       ; $1bc8: $4d
    nop                                           ; $1bc9: $00

    db $4f, $00, $51, $00, $52, $00, $54, $00, $56, $00

    ld e, b                                       ; $1bd4: $58
    nop                                           ; $1bd5: $00

    db $59, $00, $5b, $00, $5d, $00, $5f, $00, $61, $00, $62, $00, $64, $00, $66, $00
    db $68, $00, $6a, $00, $6c, $00, $6d, $00, $6f, $00, $71, $00, $73, $00, $75, $00
    db $77, $00, $79, $00, $7b, $00, $7d, $00, $7f, $00, $81, $00, $83, $00, $85, $00
    db $87, $00, $89, $00, $8b, $00, $8d, $00, $8f, $00, $91, $00, $93, $00, $95, $00
    db $97, $00, $99, $00, $9b, $00, $9e, $00, $a0, $00, $a2, $00, $a4, $00, $a6, $00
    db $a9, $00, $ab, $00, $ad, $00, $af, $00, $b2, $00, $b4, $00, $b6, $00, $b9, $00
    db $bb, $00, $be, $00, $c0, $00, $c3, $00, $c5, $00, $c8, $00, $ca, $00, $cd, $00
    db $cf, $00, $d2, $00, $d5, $00, $d7, $00, $da, $00, $dd, $00, $e0, $00, $e2, $00
    db $e5, $00, $e8, $00, $eb, $00, $ee, $00, $f1, $00, $f4, $00, $f7, $00, $fa, $00
    db $fd, $00, $00, $01, $03, $01, $06, $01, $0a, $01, $0d, $01, $10, $01, $14, $01
    db $17, $01, $1b, $01, $1e, $01, $22, $01, $25, $01, $29, $01, $2d, $01, $30, $01
    db $34, $01, $38, $01, $3c, $01, $40, $01, $44, $01, $48, $01, $4d, $01, $51, $01
    db $55, $01, $5a, $01, $5e, $01, $63, $01, $67, $01, $6c, $01, $71, $01, $76, $01
    db $7b, $01, $80, $01, $85, $01, $8a, $01, $90, $01, $95, $01, $9b, $01, $a0, $01
    db $a6, $01, $ac, $01, $b2, $01, $b8, $01, $bf, $01, $c5, $01, $cc, $01, $d2, $01
    db $d9, $01, $e0, $01, $e7, $01, $ef, $01, $f6, $01, $fe, $01, $06, $02, $0e, $02
    db $16, $02, $1f, $02, $28, $02, $31, $02, $3a, $02, $44, $02, $4d, $02, $57, $02
    db $62, $02, $6c, $02, $77, $02, $83, $02, $8e, $02, $9a, $02, $a7, $02, $b4, $02
    db $c1, $02, $cf, $02, $dd, $02, $ec, $02, $fb, $02, $0b, $03, $1b, $03, $2d, $03
    db $3e, $03, $51, $03, $64, $03, $78, $03, $8d, $03, $a3, $03, $ba, $03, $d2, $03
    db $eb, $03, $05, $04, $21, $04, $3e, $04, $5d, $04, $7e, $04, $a0, $04, $c4, $04
    db $eb, $04, $13, $05, $3f, $05, $6d, $05, $9f, $05, $d4, $05, $0d, $06, $4b, $06
    db $8d, $06, $d5, $06, $23, $07, $79, $07, $d7, $07, $3e, $08, $b0, $08, $2f, $09
    db $be, $09, $5e, $0a, $14, $0b, $e5, $0b, $d7, $0c, $f3, $0d, $43, $0f, $d9, $10
    db $cd, $12, $44, $15, $78, $18, $ce, $1c, $02, $23, $9d, $2c, $78, $3d, $ca, $62
    db $6a, $fb

    rst $38                                       ; $1d68: $ff
    rst $38                                       ; $1d69: $ff

Call_000_1d6a:
    push bc                                       ; $1d6a: $c5
    push de                                       ; $1d6b: $d5
    cpl                                           ; $1d6c: $2f
    ld d, a                                       ; $1d6d: $57
    ld a, l                                       ; $1d6e: $7d
    cpl                                           ; $1d6f: $2f
    ld c, a                                       ; $1d70: $4f
    ld a, h                                       ; $1d71: $7c
    cpl                                           ; $1d72: $2f
    ld b, a                                       ; $1d73: $47
    and c                                         ; $1d74: $a1
    and d                                         ; $1d75: $a2
    inc a                                         ; $1d76: $3c
    jp z, Jump_000_1f2a                           ; $1d77: $ca $2a $1f

    add sp, -$10                                  ; $1d7a: $e8 $f0

Call_000_1d7c:
    ld hl, sp+$04                                 ; $1d7c: $f8 $04
    ld [hl], d                                    ; $1d7e: $72
    ld de, $4000                                  ; $1d7f: $11 $00 $40
    ld l, e                                       ; $1d82: $6b
    ld h, d                                       ; $1d83: $62
    xor a                                         ; $1d84: $af
    add hl, bc                                    ; $1d85: $09
    jr c, jr_000_1d91                             ; $1d86: $38 $09

    ld c, l                                       ; $1d88: $4d
    ld b, h                                       ; $1d89: $44
    set 3, a                                      ; $1d8a: $cb $df
    ld hl, $6000                                  ; $1d8c: $21 $00 $60
    jr jr_000_1d94                                ; $1d8f: $18 $03

jr_000_1d91:
    ld hl, $e000                                  ; $1d91: $21 $00 $e0

jr_000_1d94:
    add hl, de                                    ; $1d94: $19
    srl h                                         ; $1d95: $cb $3c
    rr l                                          ; $1d97: $cb $1d
    ld e, l                                       ; $1d99: $5d
    ld d, h                                       ; $1d9a: $54
    add hl, bc                                    ; $1d9b: $09
    jr c, jr_000_1da7                             ; $1d9c: $38 $09

    ld c, l                                       ; $1d9e: $4d
    ld b, h                                       ; $1d9f: $44
    set 2, a                                      ; $1da0: $cb $d7
    ld hl, $1800                                  ; $1da2: $21 $00 $18
    jr jr_000_1daa                                ; $1da5: $18 $03

jr_000_1da7:
    ld hl, $f800                                  ; $1da7: $21 $00 $f8

jr_000_1daa:
    add hl, de                                    ; $1daa: $19
    srl h                                         ; $1dab: $cb $3c
    rr l                                          ; $1dad: $cb $1d
    ld e, l                                       ; $1daf: $5d
    ld d, h                                       ; $1db0: $54
    add hl, bc                                    ; $1db1: $09
    jr c, jr_000_1dbd                             ; $1db2: $38 $09

    ld c, l                                       ; $1db4: $4d
    ld b, h                                       ; $1db5: $44
    set 1, a                                      ; $1db6: $cb $cf
    ld hl, $0600                                  ; $1db8: $21 $00 $06
    jr jr_000_1dc0                                ; $1dbb: $18 $03

jr_000_1dbd:
    ld hl, $fe00                                  ; $1dbd: $21 $00 $fe

jr_000_1dc0:
    add hl, de                                    ; $1dc0: $19
    srl h                                         ; $1dc1: $cb $3c
    rr l                                          ; $1dc3: $cb $1d
    ld e, l                                       ; $1dc5: $5d
    ld d, h                                       ; $1dc6: $54
    add hl, bc                                    ; $1dc7: $09
    jr c, jr_000_1dd3                             ; $1dc8: $38 $09

    ld c, l                                       ; $1dca: $4d
    ld b, h                                       ; $1dcb: $44
    set 0, a                                      ; $1dcc: $cb $c7
    ld hl, $0180                                  ; $1dce: $21 $80 $01
    jr jr_000_1dd6                                ; $1dd1: $18 $03

jr_000_1dd3:
    ld hl, $ff80                                  ; $1dd3: $21 $80 $ff

jr_000_1dd6:
    add hl, de                                    ; $1dd6: $19
    srl h                                         ; $1dd7: $cb $3c
    rr l                                          ; $1dd9: $cb $1d
    ld e, l                                       ; $1ddb: $5d
    ld d, h                                       ; $1ddc: $54
    add hl, bc                                    ; $1ddd: $09
    jr c, jr_000_1de9                             ; $1dde: $38 $09

Jump_000_1de0:
    ld c, l                                       ; $1de0: $4d
    ld b, h                                       ; $1de1: $44
    set 7, a                                      ; $1de2: $cb $ff
    ld hl, $0060                                  ; $1de4: $21 $60 $00
    jr jr_000_1dec                                ; $1de7: $18 $03

jr_000_1de9:
    ld hl, $ffe0                                  ; $1de9: $21 $e0 $ff

jr_000_1dec:
    add hl, de                                    ; $1dec: $19
    srl h                                         ; $1ded: $cb $3c

Jump_000_1def:
    rr l                                          ; $1def: $cb $1d
    ld e, l                                       ; $1df1: $5d
    ld d, h                                       ; $1df2: $54
    add hl, bc                                    ; $1df3: $09
    jr c, jr_000_1dff                             ; $1df4: $38 $09

    ld c, l                                       ; $1df6: $4d
    ld b, h                                       ; $1df7: $44
    set 6, a                                      ; $1df8: $cb $f7
    ld hl, $0018                                  ; $1dfa: $21 $18 $00

Jump_000_1dfd:
    jr jr_000_1e02                                ; $1dfd: $18 $03

Call_000_1dff:
jr_000_1dff:
    ld hl, $fff8                                  ; $1dff: $21 $f8 $ff

jr_000_1e02:
    add hl, de                                    ; $1e02: $19
    srl h                                         ; $1e03: $cb $3c
    rr l                                          ; $1e05: $cb $1d
    ld e, l                                       ; $1e07: $5d
    ld d, h                                       ; $1e08: $54
    add hl, bc                                    ; $1e09: $09
    jr c, jr_000_1e15                             ; $1e0a: $38 $09

    ld c, l                                       ; $1e0c: $4d
    ld b, h                                       ; $1e0d: $44
    set 5, a                                      ; $1e0e: $cb $ef
    ld hl, $0006                                  ; $1e10: $21 $06 $00
    jr jr_000_1e18                                ; $1e13: $18 $03

jr_000_1e15:
    ld hl, $fffe                                  ; $1e15: $21 $fe $ff

jr_000_1e18:
    add hl, de                                    ; $1e18: $19
    srl h                                         ; $1e19: $cb $3c
    rr l                                          ; $1e1b: $cb $1d
    ld e, l                                       ; $1e1d: $5d
    ld d, h                                       ; $1e1e: $54
    add hl, bc                                    ; $1e1f: $09
    jr c, jr_000_1e2c                             ; $1e20: $38 $0a

    ld c, l                                       ; $1e22: $4d
    ld b, h                                       ; $1e23: $44
    set 4, a                                      ; $1e24: $cb $e7
    ld hl, $0002                                  ; $1e26: $21 $02 $00
    add hl, de                                    ; $1e29: $19
    ld e, l                                       ; $1e2a: $5d
    ld d, h                                       ; $1e2b: $54

jr_000_1e2c:
    ld hl, sp+$03                                 ; $1e2c: $f8 $03
    ld [hl], a                                    ; $1e2e: $77
    srl d                                         ; $1e2f: $cb $3a
    rr e                                          ; $1e31: $cb $1b
    ld hl, sp+$00                                 ; $1e33: $f8 $00
    ld [hl], d                                    ; $1e35: $72
    ld d, e                                       ; $1e36: $53
    ld e, $80                                     ; $1e37: $1e $80
    rr e                                          ; $1e39: $cb $1b

Call_000_1e3b:
    ld hl, sp+$02                                 ; $1e3b: $f8 $02
    ld [hl], $00                                  ; $1e3d: $36 $00
    ld hl, sp+$01                                 ; $1e3f: $f8 $01
    ld [hl], b                                    ; $1e41: $70
    ld b, c                                       ; $1e42: $41
    ld hl, sp+$04                                 ; $1e43: $f8 $04
    ld c, [hl]                                    ; $1e45: $4e
    ld hl, sp+$01                                 ; $1e46: $f8 $01
    ld hl, sp+$00                                 ; $1e48: $f8 $00
    ld hl, sp+$00                                 ; $1e4a: $f8 $00
    ld a, [hl]                                    ; $1e4c: $7e
    ld l, e                                       ; $1e4d: $6b
    ld h, d                                       ; $1e4e: $62
    add hl, bc                                    ; $1e4f: $09
    push hl                                       ; $1e50: $e5
    push af                                       ; $1e51: $f5
    ld hl, sp+$05                                 ; $1e52: $f8 $05
    pop af                                        ; $1e54: $f1
    adc [hl]                                      ; $1e55: $8e
    jr c, jr_000_1e69                             ; $1e56: $38 $11

    ld [hl+], a                                   ; $1e58: $22
    set 3, [hl]                                   ; $1e59: $cb $de
    pop bc                                        ; $1e5b: $c1
    ld hl, $0060                                  ; $1e5c: $21 $60 $00
    add hl, de                                    ; $1e5f: $19
    ld e, l                                       ; $1e60: $5d
    ld d, h                                       ; $1e61: $54
    jr nc, jr_000_1e75                            ; $1e62: $30 $11

    ld hl, sp+$00                                 ; $1e64: $f8 $00
    inc [hl]                                      ; $1e66: $34
    jr jr_000_1e75                                ; $1e67: $18 $0c

jr_000_1e69:
    pop hl                                        ; $1e69: $e1
    ld hl, $ffe0                                  ; $1e6a: $21 $e0 $ff
    add hl, de                                    ; $1e6d: $19
    ld e, l                                       ; $1e6e: $5d
    ld d, h                                       ; $1e6f: $54
    jr c, jr_000_1e75                             ; $1e70: $38 $03

    ld hl, sp+$00                                 ; $1e72: $f8 $00
    dec [hl]                                      ; $1e74: $35

jr_000_1e75:
    ld hl, sp+$00                                 ; $1e75: $f8 $00
    srl [hl]                                      ; $1e77: $cb $3e
    rr d                                          ; $1e79: $cb $1a
    rr e                                          ; $1e7b: $cb $1b
    ld hl, sp+$00                                 ; $1e7d: $f8 $00
    ld a, [hl]                                    ; $1e7f: $7e
    ld l, e                                       ; $1e80: $6b
    ld h, d                                       ; $1e81: $62
    add hl, bc                                    ; $1e82: $09
    push hl                                       ; $1e83: $e5
    push af                                       ; $1e84: $f5
    ld hl, sp+$05                                 ; $1e85: $f8 $05
    pop af                                        ; $1e87: $f1
    adc [hl]                                      ; $1e88: $8e
    jr c, jr_000_1e9c                             ; $1e89: $38 $11

    ld [hl+], a                                   ; $1e8b: $22
    set 2, [hl]                                   ; $1e8c: $cb $d6
    pop bc                                        ; $1e8e: $c1
    ld hl, $0018                                  ; $1e8f: $21 $18 $00
    add hl, de                                    ; $1e92: $19
    ld e, l                                       ; $1e93: $5d
    ld d, h                                       ; $1e94: $54
    jr nc, jr_000_1ea8                            ; $1e95: $30 $11

    ld hl, sp+$00                                 ; $1e97: $f8 $00
    inc [hl]                                      ; $1e99: $34
    jr jr_000_1ea8                                ; $1e9a: $18 $0c

jr_000_1e9c:
    pop hl                                        ; $1e9c: $e1
    ld hl, $fff8                                  ; $1e9d: $21 $f8 $ff
    add hl, de                                    ; $1ea0: $19
    ld e, l                                       ; $1ea1: $5d
    ld d, h                                       ; $1ea2: $54
    jr c, jr_000_1ea8                             ; $1ea3: $38 $03

    ld hl, sp+$00                                 ; $1ea5: $f8 $00
    dec [hl]                                      ; $1ea7: $35

jr_000_1ea8:
    ld hl, sp+$00                                 ; $1ea8: $f8 $00
    srl [hl]                                      ; $1eaa: $cb $3e
    rr d                                          ; $1eac: $cb $1a
    rr e                                          ; $1eae: $cb $1b
    ld hl, sp+$00                                 ; $1eb0: $f8 $00
    ld a, [hl]                                    ; $1eb2: $7e
    ld l, e                                       ; $1eb3: $6b
    ld h, d                                       ; $1eb4: $62
    add hl, bc                                    ; $1eb5: $09
    push hl                                       ; $1eb6: $e5
    push af                                       ; $1eb7: $f5
    ld hl, sp+$05                                 ; $1eb8: $f8 $05
    pop af                                        ; $1eba: $f1
    adc [hl]                                      ; $1ebb: $8e
    jr c, jr_000_1ecf                             ; $1ebc: $38 $11

    ld [hl+], a                                   ; $1ebe: $22
    set 1, [hl]                                   ; $1ebf: $cb $ce

Jump_000_1ec1:
    pop bc                                        ; $1ec1: $c1
    ld hl, $0006                                  ; $1ec2: $21 $06 $00
    add hl, de                                    ; $1ec5: $19
    ld e, l                                       ; $1ec6: $5d
    ld d, h                                       ; $1ec7: $54
    jr nc, jr_000_1edb                            ; $1ec8: $30 $11

Jump_000_1eca:
    ld hl, sp+$00                                 ; $1eca: $f8 $00
    inc [hl]                                      ; $1ecc: $34
    jr jr_000_1edb                                ; $1ecd: $18 $0c

jr_000_1ecf:
    pop hl                                        ; $1ecf: $e1
    ld hl, $fffe                                  ; $1ed0: $21 $fe $ff

Jump_000_1ed3:
    add hl, de                                    ; $1ed3: $19
    ld e, l                                       ; $1ed4: $5d
    ld d, h                                       ; $1ed5: $54
    jr c, jr_000_1edb                             ; $1ed6: $38 $03

    ld hl, sp+$00                                 ; $1ed8: $f8 $00
    dec [hl]                                      ; $1eda: $35

jr_000_1edb:
    ld hl, sp+$00                                 ; $1edb: $f8 $00
    srl [hl]                                      ; $1edd: $cb $3e
    rr d                                          ; $1edf: $cb $1a

Call_000_1ee1:
    rr e                                          ; $1ee1: $cb $1b
    ld hl, sp+$00                                 ; $1ee3: $f8 $00
    ld a, [hl]                                    ; $1ee5: $7e
    ld l, e                                       ; $1ee6: $6b

Call_000_1ee7:
Jump_000_1ee7:
    ld h, d                                       ; $1ee7: $62
    add hl, bc                                    ; $1ee8: $09
    push hl                                       ; $1ee9: $e5
    push af                                       ; $1eea: $f5
    ld hl, sp+$05                                 ; $1eeb: $f8 $05

Jump_000_1eed:
    pop af                                        ; $1eed: $f1
    adc [hl]                                      ; $1eee: $8e
    jr c, jr_000_1f02                             ; $1eef: $38 $11

    ld [hl+], a                                   ; $1ef1: $22
    set 0, [hl]                                   ; $1ef2: $cb $c6
    pop bc                                        ; $1ef4: $c1
    ld hl, $0002                                  ; $1ef5: $21 $02 $00
    add hl, de                                    ; $1ef8: $19
    ld e, l                                       ; $1ef9: $5d
    ld d, h                                       ; $1efa: $54
    jr nc, jr_000_1f0e                            ; $1efb: $30 $11

    ld hl, sp+$00                                 ; $1efd: $f8 $00

Call_000_1eff:
Jump_000_1eff:
    inc [hl]                                      ; $1eff: $34
    jr jr_000_1f0e                                ; $1f00: $18 $0c

jr_000_1f02:
    pop hl                                        ; $1f02: $e1
    ld hl, $0000                                  ; $1f03: $21 $00 $00
    add hl, de                                    ; $1f06: $19
    ld e, l                                       ; $1f07: $5d
    ld d, h                                       ; $1f08: $54
    jr c, jr_000_1f0e                             ; $1f09: $38 $03

Jump_000_1f0b:
    ld hl, sp+$00                                 ; $1f0b: $f8 $00

Call_000_1f0d:
    dec [hl]                                      ; $1f0d: $35

Call_000_1f0e:
jr_000_1f0e:
    ld hl, sp+$00                                 ; $1f0e: $f8 $00

Jump_000_1f10:
    srl [hl]                                      ; $1f10: $cb $3e
    rr d                                          ; $1f12: $cb $1a
    rr e                                          ; $1f14: $cb $1b
    ld hl, sp+$03                                 ; $1f16: $f8 $03
    ld a, [hl]                                    ; $1f18: $7e
    ld hl, sp+$02                                 ; $1f19: $f8 $02
    ld b, [hl]                                    ; $1f1b: $46
    ld h, a                                       ; $1f1c: $67
    and $f0                                       ; $1f1d: $e6 $f0

Jump_000_1f1f:
    ld l, a                                       ; $1f1f: $6f
    xor h                                         ; $1f20: $ac
    ld h, a                                       ; $1f21: $67
    ld a, b                                       ; $1f22: $78
    or l                                          ; $1f23: $b5
    ld l, a                                       ; $1f24: $6f
    add sp, $10                                   ; $1f25: $e8 $10

jr_000_1f27:
    pop de                                        ; $1f27: $d1
    pop bc                                        ; $1f28: $c1
    ret                                           ; $1f29: $c9


Jump_000_1f2a:
    ld hl, $0000                                  ; $1f2a: $21 $00 $00
    jr jr_000_1f27                                ; $1f2d: $18 $f8

Call_000_1f2f:
    push af                                       ; $1f2f: $f5
    push bc                                       ; $1f30: $c5
    push de                                       ; $1f31: $d5
    jr jr_000_1f4c                                ; $1f32: $18 $18

jr_000_1f34:
    ld a, [hl+]                                   ; $1f34: $2a
    ld [de], a                                    ; $1f35: $12
    inc de                                        ; $1f36: $13
    ld a, [hl+]                                   ; $1f37: $2a
    ld [de], a                                    ; $1f38: $12
    inc de                                        ; $1f39: $13
    ld a, [hl+]                                   ; $1f3a: $2a
    ld [de], a                                    ; $1f3b: $12

Jump_000_1f3c:
    inc de                                        ; $1f3c: $13
    ld a, [hl+]                                   ; $1f3d: $2a
    ld [de], a                                    ; $1f3e: $12
    inc de                                        ; $1f3f: $13
    ld a, [hl+]                                   ; $1f40: $2a
    ld [de], a                                    ; $1f41: $12
    inc de                                        ; $1f42: $13
    ld a, [hl+]                                   ; $1f43: $2a
    ld [de], a                                    ; $1f44: $12
    inc de                                        ; $1f45: $13
    ld a, [hl+]                                   ; $1f46: $2a
    ld [de], a                                    ; $1f47: $12

Call_000_1f48:
    inc de                                        ; $1f48: $13
    ld a, [hl+]                                   ; $1f49: $2a
    ld [de], a                                    ; $1f4a: $12
    inc de                                        ; $1f4b: $13

jr_000_1f4c:
    ld a, [hl+]                                   ; $1f4c: $2a
    rrca                                          ; $1f4d: $0f
    jr nc, jr_000_1f9a                            ; $1f4e: $30 $4a

    inc a                                         ; $1f50: $3c
    jr z, jr_000_1f34                             ; $1f51: $28 $e1

    cpl                                           ; $1f53: $2f
    add $81                                       ; $1f54: $c6 $81
    ld c, a                                       ; $1f56: $4f
    ld a, [hl+]                                   ; $1f57: $2a
    ld [de], a                                    ; $1f58: $12
    inc de                                        ; $1f59: $13

Jump_000_1f5a:
    srl c                                         ; $1f5a: $cb $39
    jr c, jr_000_1f9c                             ; $1f5c: $38 $3e

    ld a, [hl+]                                   ; $1f5e: $2a
    ld [de], a                                    ; $1f5f: $12

Jump_000_1f60:
    inc de                                        ; $1f60: $13
    srl c                                         ; $1f61: $cb $39
    jr c, jr_000_1f9c                             ; $1f63: $38 $37

    ld a, [hl+]                                   ; $1f65: $2a
    ld [de], a                                    ; $1f66: $12
    inc de                                        ; $1f67: $13
    srl c                                         ; $1f68: $cb $39
    jr c, jr_000_1f9c                             ; $1f6a: $38 $30

    ld a, [hl+]                                   ; $1f6c: $2a
    ld [de], a                                    ; $1f6d: $12
    inc de                                        ; $1f6e: $13
    srl c                                         ; $1f6f: $cb $39
    jr c, jr_000_1f9c                             ; $1f71: $38 $29

    ld a, [hl+]                                   ; $1f73: $2a
    ld [de], a                                    ; $1f74: $12
    inc de                                        ; $1f75: $13
    srl c                                         ; $1f76: $cb $39
    jr c, jr_000_1f9c                             ; $1f78: $38 $22

    ld a, [hl+]                                   ; $1f7a: $2a
    ld [de], a                                    ; $1f7b: $12
    inc de                                        ; $1f7c: $13
    srl c                                         ; $1f7d: $cb $39
    jr c, jr_000_1f9c                             ; $1f7f: $38 $1b

Jump_000_1f81:
    ld a, [hl+]                                   ; $1f81: $2a
    ld [de], a                                    ; $1f82: $12
    inc de                                        ; $1f83: $13
    srl c                                         ; $1f84: $cb $39
    jr c, jr_000_1f9c                             ; $1f86: $38 $14

    ld a, [hl+]                                   ; $1f88: $2a
    ld [de], a                                    ; $1f89: $12
    inc de                                        ; $1f8a: $13
    jr jr_000_1f4c                                ; $1f8b: $18 $bf

jr_000_1f8d:
    pop hl                                        ; $1f8d: $e1
    ld l, e                                       ; $1f8e: $6b
    ld h, d                                       ; $1f8f: $62
    pop de                                        ; $1f90: $d1
    ld a, l                                       ; $1f91: $7d
    sub e                                         ; $1f92: $93
    ld l, a                                       ; $1f93: $6f
    ld a, h                                       ; $1f94: $7c
    sbc d                                         ; $1f95: $9a
    ld h, a                                       ; $1f96: $67
    pop bc                                        ; $1f97: $c1
    pop af                                        ; $1f98: $f1
    ret                                           ; $1f99: $c9


jr_000_1f9a:
    cpl                                           ; $1f9a: $2f
    ld c, a                                       ; $1f9b: $4f

jr_000_1f9c:
    jr z, jr_000_1f4c                             ; $1f9c: $28 $ae

    ld a, [hl+]                                   ; $1f9e: $2a
    ld b, [hl]                                    ; $1f9f: $46
    inc hl                                        ; $1fa0: $23
    push hl                                       ; $1fa1: $e5
    ld l, a                                       ; $1fa2: $6f

Jump_000_1fa3:
    or b                                          ; $1fa3: $b0
    jr z, jr_000_1f8d                             ; $1fa4: $28 $e7

    ld a, b                                       ; $1fa6: $78
    rlca                                          ; $1fa7: $07
    rlca                                          ; $1fa8: $07
    rlca                                          ; $1fa9: $07
    or $f8                                        ; $1faa: $f6 $f8
    ld h, a                                       ; $1fac: $67
    add hl, de                                    ; $1fad: $19
    ld a, b                                       ; $1fae: $78
    and $1f                                       ; $1faf: $e6 $1f
    jr z, jr_000_2029                             ; $1fb1: $28 $76

    ld b, a                                       ; $1fb3: $47
    srl b                                         ; $1fb4: $cb $38
    jr nc, jr_000_1fbd                            ; $1fb6: $30 $05

    ld a, [hl+]                                   ; $1fb8: $2a
    ld [de], a                                    ; $1fb9: $12
    inc de                                        ; $1fba: $13
    jr z, jr_000_2029                             ; $1fbb: $28 $6c

jr_000_1fbd:
    srl b                                         ; $1fbd: $cb $38
    jr nc, jr_000_1fc9                            ; $1fbf: $30 $08

    ld a, [hl+]                                   ; $1fc1: $2a
    ld [de], a                                    ; $1fc2: $12

Jump_000_1fc3:
    inc de                                        ; $1fc3: $13
    ld a, [hl+]                                   ; $1fc4: $2a
    ld [de], a                                    ; $1fc5: $12
    inc de                                        ; $1fc6: $13
    jr z, jr_000_2029                             ; $1fc7: $28 $60

jr_000_1fc9:
    srl b                                         ; $1fc9: $cb $38
    jr nc, jr_000_1fdb                            ; $1fcb: $30 $0e

    ld a, [hl+]                                   ; $1fcd: $2a
    ld [de], a                                    ; $1fce: $12
    inc de                                        ; $1fcf: $13
    ld a, [hl+]                                   ; $1fd0: $2a
    ld [de], a                                    ; $1fd1: $12
    inc de                                        ; $1fd2: $13
    ld a, [hl+]                                   ; $1fd3: $2a
    ld [de], a                                    ; $1fd4: $12
    inc de                                        ; $1fd5: $13
    ld a, [hl+]                                   ; $1fd6: $2a
    ld [de], a                                    ; $1fd7: $12
    inc de                                        ; $1fd8: $13
    jr z, jr_000_2029                             ; $1fd9: $28 $4e

jr_000_1fdb:
    srl b                                         ; $1fdb: $cb $38
    jr nc, jr_000_1ff9                            ; $1fdd: $30 $1a

Call_000_1fdf:
    ld a, [hl+]                                   ; $1fdf: $2a

Call_000_1fe0:
Jump_000_1fe0:
    ld [de], a                                    ; $1fe0: $12

Jump_000_1fe1:
    inc de                                        ; $1fe1: $13

Call_000_1fe2:
    ld a, [hl+]                                   ; $1fe2: $2a

Jump_000_1fe3:
    ld [de], a                                    ; $1fe3: $12
    inc de                                        ; $1fe4: $13

Jump_000_1fe5:
    ld a, [hl+]                                   ; $1fe5: $2a
    ld [de], a                                    ; $1fe6: $12

Jump_000_1fe7:
    inc de                                        ; $1fe7: $13
    ld a, [hl+]                                   ; $1fe8: $2a
    ld [de], a                                    ; $1fe9: $12
    inc de                                        ; $1fea: $13
    ld a, [hl+]                                   ; $1feb: $2a
    ld [de], a                                    ; $1fec: $12
    inc de                                        ; $1fed: $13
    ld a, [hl+]                                   ; $1fee: $2a

Jump_000_1fef:
    ld [de], a                                    ; $1fef: $12
    inc de                                        ; $1ff0: $13
    ld a, [hl+]                                   ; $1ff1: $2a
    ld [de], a                                    ; $1ff2: $12
    inc de                                        ; $1ff3: $13
    ld a, [hl+]                                   ; $1ff4: $2a
    ld [de], a                                    ; $1ff5: $12
    inc de                                        ; $1ff6: $13
    jr z, jr_000_2029                             ; $1ff7: $28 $30

jr_000_1ff9:
    ld a, [hl+]                                   ; $1ff9: $2a
    ld [de], a                                    ; $1ffa: $12
    inc de                                        ; $1ffb: $13
    ld a, [hl+]                                   ; $1ffc: $2a
    ld [de], a                                    ; $1ffd: $12
    inc de                                        ; $1ffe: $13

Call_000_1fff:
Jump_000_1fff:
    ld a, [hl+]                                   ; $1fff: $2a

Call_000_2000:
Jump_000_2000:
    ld [de], a                                    ; $2000: $12
    inc de                                        ; $2001: $13

Jump_000_2002:
    ld a, [hl+]                                   ; $2002: $2a
    ld [de], a                                    ; $2003: $12

Call_000_2004:
    inc de                                        ; $2004: $13
    ld a, [hl+]                                   ; $2005: $2a

Call_000_2006:
    ld [de], a                                    ; $2006: $12
    inc de                                        ; $2007: $13
    ld a, [hl+]                                   ; $2008: $2a
    ld [de], a                                    ; $2009: $12
    inc de                                        ; $200a: $13
    ld a, [hl+]                                   ; $200b: $2a
    ld [de], a                                    ; $200c: $12
    inc de                                        ; $200d: $13

Call_000_200e:
    ld a, [hl+]                                   ; $200e: $2a
    ld [de], a                                    ; $200f: $12
    inc de                                        ; $2010: $13
    ld a, [hl+]                                   ; $2011: $2a
    ld [de], a                                    ; $2012: $12
    inc de                                        ; $2013: $13
    ld a, [hl+]                                   ; $2014: $2a
    ld [de], a                                    ; $2015: $12
    inc de                                        ; $2016: $13
    ld a, [hl+]                                   ; $2017: $2a
    ld [de], a                                    ; $2018: $12
    inc de                                        ; $2019: $13
    ld a, [hl+]                                   ; $201a: $2a
    ld [de], a                                    ; $201b: $12
    inc de                                        ; $201c: $13
    ld a, [hl+]                                   ; $201d: $2a
    ld [de], a                                    ; $201e: $12

Call_000_201f:
    inc de                                        ; $201f: $13
    ld a, [hl+]                                   ; $2020: $2a

Jump_000_2021:
    ld [de], a                                    ; $2021: $12

Jump_000_2022:
    inc de                                        ; $2022: $13
    ld a, [hl+]                                   ; $2023: $2a
    ld [de], a                                    ; $2024: $12
    inc de                                        ; $2025: $13
    ld a, [hl+]                                   ; $2026: $2a
    ld [de], a                                    ; $2027: $12
    inc de                                        ; $2028: $13

jr_000_2029:
    ld a, [hl+]                                   ; $2029: $2a
    ld [de], a                                    ; $202a: $12
    inc de                                        ; $202b: $13
    ld a, [hl+]                                   ; $202c: $2a

Call_000_202d:
    ld [de], a                                    ; $202d: $12
    inc de                                        ; $202e: $13
    ld a, [hl+]                                   ; $202f: $2a
    ld [de], a                                    ; $2030: $12

Call_000_2031:
    inc de                                        ; $2031: $13
    pop hl                                        ; $2032: $e1
    jp Jump_000_1f5a                              ; $2033: $c3 $5a $1f


Call_000_2036:
    ld hl, $cc00                                  ; $2036: $21 $00 $cc
    ld c, $24                                     ; $2039: $0e $24

Jump_000_203b:
    jp Jump_000_03a7                              ; $203b: $c3 $a7 $03


Call_000_203e:
    xor a                                         ; $203e: $af
    ldh [rVBK], a                                 ; $203f: $e0 $4f
    ld hl, $c0fa                                  ; $2041: $21 $fa $c0

Jump_000_2044:
    ld de, $9d08                                  ; $2044: $11 $08 $9d
    ld a, [hl+]                                   ; $2047: $2a

Call_000_2048:
Jump_000_2048:
    ld [de], a                                    ; $2048: $12

Call_000_2049:
    inc de                                        ; $2049: $13
    ld a, [hl+]                                   ; $204a: $2a
    ld [de], a                                    ; $204b: $12
    inc de                                        ; $204c: $13
    ld a, [hl+]                                   ; $204d: $2a
    ld [de], a                                    ; $204e: $12
    inc de                                        ; $204f: $13
    ld a, [hl+]                                   ; $2050: $2a
    ld [de], a                                    ; $2051: $12
    inc de                                        ; $2052: $13
    ldh a, [$9e]                                  ; $2053: $f0 $9e
    cp $03                                        ; $2055: $fe $03
    jr z, jr_000_206c                             ; $2057: $28 $13

    cp $01                                        ; $2059: $fe $01
    jr z, jr_000_2065                             ; $205b: $28 $08

    ldh a, [$8c]                                  ; $205d: $f0 $8c
    and $01                                       ; $205f: $e6 $01
    jr z, jr_000_206c                             ; $2061: $28 $09

    jr jr_000_2069                                ; $2063: $18 $04

jr_000_2065:
    ldh a, [$90]                                  ; $2065: $f0 $90
    bit 2, a                                      ; $2067: $cb $57

jr_000_2069:
    xor a                                         ; $2069: $af
    jr jr_000_206e                                ; $206a: $18 $02

jr_000_206c:
    ld a, $01                                     ; $206c: $3e $01

jr_000_206e:
    ldh [$98], a                                  ; $206e: $e0 $98
    ldh a, [$8e]                                  ; $2070: $f0 $8e
    or a                                          ; $2072: $b7
    ret z                                         ; $2073: $c8

    xor a                                         ; $2074: $af
    ldh [$8e], a                                  ; $2075: $e0 $8e
    xor a                                         ; $2077: $af
    ldh [rVBK], a                                 ; $2078: $e0 $4f
    ld bc, $cc00                                  ; $207a: $01 $00 $cc

Jump_000_207d:
    ld de, $1d00                                  ; $207d: $11 $00 $1d

Call_000_2080:
    ld a, $23                                     ; $2080: $3e $23

Jump_000_2082:
jr_000_2082:
    ld hl, $ff51                                  ; $2082: $21 $51 $ff
    ld [hl], b                                    ; $2085: $70
    inc l                                         ; $2086: $2c
    ld [hl], c                                    ; $2087: $71

Jump_000_2088:
    inc l                                         ; $2088: $2c
    ld [hl], d                                    ; $2089: $72

Jump_000_208a:
    inc l                                         ; $208a: $2c
    ld [hl], e                                    ; $208b: $73
    inc l                                         ; $208c: $2c

Call_000_208d:
    ld [hl], a                                    ; $208d: $77
    ret                                           ; $208e: $c9


    push af                                       ; $208f: $f5
    ldh a, [$8d]                                  ; $2090: $f0 $8d
    or a                                          ; $2092: $b7

jr_000_2093:
    jr nz, jr_000_2093                            ; $2093: $20 $fe

    pop af                                        ; $2095: $f1

Call_000_2096:
    ld a, c                                       ; $2096: $79
    dec a                                         ; $2097: $3d
    ld b, h                                       ; $2098: $44
    ld c, l                                       ; $2099: $4d
    jr jr_000_2082                                ; $209a: $18 $e6

Call_000_209c:
    push af                                       ; $209c: $f5
    push hl                                       ; $209d: $e5
    ld l, d                                       ; $209e: $6a
    ld h, $cc                                     ; $209f: $26 $cc
    ld a, e                                       ; $20a1: $7b

Jump_000_20a2:
    rrca                                          ; $20a2: $0f
    rrca                                          ; $20a3: $0f
    rrca                                          ; $20a4: $0f
    ld e, a                                       ; $20a5: $5f
    and $1f                                       ; $20a6: $e6 $1f
    ld d, a                                       ; $20a8: $57
    xor e                                         ; $20a9: $ab
    ld e, a                                       ; $20aa: $5f
    add hl, de                                    ; $20ab: $19

Call_000_20ac:
    ld e, l                                       ; $20ac: $5d

Call_000_20ad:
    ld d, h                                       ; $20ad: $54
    pop hl                                        ; $20ae: $e1
    pop af                                        ; $20af: $f1
    ret                                           ; $20b0: $c9


Call_000_20b1:
    push af                                       ; $20b1: $f5
    call Call_000_209c                            ; $20b2: $cd $9c $20

jr_000_20b5:
    ld a, [hl+]                                   ; $20b5: $2a

Jump_000_20b6:
    or a                                          ; $20b6: $b7
    jr z, jr_000_20c9                             ; $20b7: $28 $10

    ld [de], a                                    ; $20b9: $12
    inc de                                        ; $20ba: $13
    ld a, e                                       ; $20bb: $7b
    and $1f                                       ; $20bc: $e6 $1f
    jr nz, jr_000_20b5                            ; $20be: $20 $f5

Call_000_20c0:
    ld a, e                                       ; $20c0: $7b
    sub $20                                       ; $20c1: $d6 $20

Jump_000_20c3:
    ld e, a                                       ; $20c3: $5f
    jr nc, jr_000_20c7                            ; $20c4: $30 $01

    dec d                                         ; $20c6: $15

Call_000_20c7:
Jump_000_20c7:
jr_000_20c7:
    jr jr_000_20b5                                ; $20c7: $18 $ec

Jump_000_20c9:
jr_000_20c9:
    dec hl                                        ; $20c9: $2b
    ld a, $01                                     ; $20ca: $3e $01
    ldh [$8e], a                                  ; $20cc: $e0 $8e
    pop af                                        ; $20ce: $f1
    ret                                           ; $20cf: $c9


Jump_000_20d0:
    jr nc, @+$33                                  ; $20d0: $30 $31

Jump_000_20d2:
    ld [hl-], a                                   ; $20d2: $32
    inc sp                                        ; $20d3: $33
    inc [hl]                                      ; $20d4: $34
    dec [hl]                                      ; $20d5: $35
    ld [hl], $37                                  ; $20d6: $36 $37
    jr c, jr_000_2113                             ; $20d8: $38 $39

    ld b, c                                       ; $20da: $41
    ld b, d                                       ; $20db: $42
    ld b, e                                       ; $20dc: $43
    ld b, h                                       ; $20dd: $44
    ld b, l                                       ; $20de: $45
    ld b, [hl]                                    ; $20df: $46

Call_000_20e0:
Jump_000_20e0:
    push af                                       ; $20e0: $f5

Call_000_20e1:
Jump_000_20e1:
    ld a, h                                       ; $20e1: $7c

Jump_000_20e2:
    swap a                                        ; $20e2: $cb $37
    and $0f                                       ; $20e4: $e6 $0f
    cp $0a                                        ; $20e6: $fe $0a

Call_000_20e8:
    jr c, jr_000_20ec                             ; $20e8: $38 $02

    add $07                                       ; $20ea: $c6 $07

Jump_000_20ec:
jr_000_20ec:
    add $30                                       ; $20ec: $c6 $30

Jump_000_20ee:
    ld [de], a                                    ; $20ee: $12
    inc de                                        ; $20ef: $13
    ld a, h                                       ; $20f0: $7c
    and $0f                                       ; $20f1: $e6 $0f

Jump_000_20f3:
    cp $0a                                        ; $20f3: $fe $0a
    jr c, jr_000_20f9                             ; $20f5: $38 $02

    add $07                                       ; $20f7: $c6 $07

jr_000_20f9:
    add $30                                       ; $20f9: $c6 $30
    ld [de], a                                    ; $20fb: $12

Call_000_20fc:
    inc de                                        ; $20fc: $13
    ld a, l                                       ; $20fd: $7d

Jump_000_20fe:
    swap a                                        ; $20fe: $cb $37

Jump_000_2100:
    and $0f                                       ; $2100: $e6 $0f

Call_000_2102:
    cp $0a                                        ; $2102: $fe $0a
    jr c, jr_000_2108                             ; $2104: $38 $02

    add $07                                       ; $2106: $c6 $07

jr_000_2108:
    add $30                                       ; $2108: $c6 $30

Call_000_210a:
    ld [de], a                                    ; $210a: $12
    inc de                                        ; $210b: $13
    ld a, l                                       ; $210c: $7d
    and $0f                                       ; $210d: $e6 $0f
    cp $0a                                        ; $210f: $fe $0a
    jr c, jr_000_2115                             ; $2111: $38 $02

jr_000_2113:
    add $07                                       ; $2113: $c6 $07

jr_000_2115:
    add $30                                       ; $2115: $c6 $30
    ld [de], a                                    ; $2117: $12

Jump_000_2118:
    inc de                                        ; $2118: $13
    xor a                                         ; $2119: $af

Jump_000_211a:
    ld [de], a                                    ; $211a: $12
    pop af                                        ; $211b: $f1
    ret                                           ; $211c: $c9


    add sp, -$06                                  ; $211d: $e8 $fa
    push bc                                       ; $211f: $c5
    ld b, $00                                     ; $2120: $06 $00
    ld c, a                                       ; $2122: $4f
    push bc                                       ; $2123: $c5
    push hl                                       ; $2124: $e5
    xor a                                         ; $2125: $af

Call_000_2126:
    ld hl, sp+$06                                 ; $2126: $f8 $06
    ld [hl+], a                                   ; $2128: $22
    ld [hl+], a                                   ; $2129: $22
    ld [hl+], a                                   ; $212a: $22
    ld [hl+], a                                   ; $212b: $22
    ld [hl+], a                                   ; $212c: $22
    ld [hl], a                                    ; $212d: $77
    set 7, [hl]                                   ; $212e: $cb $fe
    pop hl                                        ; $2130: $e1

Call_000_2131:
    bit 7, h                                      ; $2131: $cb $7c
    jr z, jr_000_213e                             ; $2133: $28 $09

    call Call_000_21e0                            ; $2135: $cd $e0 $21
    push hl                                       ; $2138: $e5
    ld hl, sp+$0b                                 ; $2139: $f8 $0b
    set 0, [hl]                                   ; $213b: $cb $c6
    pop hl                                        ; $213d: $e1

Jump_000_213e:
jr_000_213e:
    push de                                       ; $213e: $d5
    ld bc, $2710                                  ; $213f: $01 $10 $27
    call Call_000_21cf                            ; $2142: $cd $cf $21
    push hl                                       ; $2145: $e5

Jump_000_2146:
    ld hl, sp+$08                                 ; $2146: $f8 $08
    ld [hl], d                                    ; $2148: $72
    pop hl                                        ; $2149: $e1
    ld bc, $03e8                                  ; $214a: $01 $e8 $03
    call Call_000_21cf                            ; $214d: $cd $cf $21
    push hl                                       ; $2150: $e5
    ld hl, sp+$09                                 ; $2151: $f8 $09
    ld [hl], d                                    ; $2153: $72
    pop hl                                        ; $2154: $e1
    ld bc, $0064                                  ; $2155: $01 $64 $00
    call Call_000_21cf                            ; $2158: $cd $cf $21
    push hl                                       ; $215b: $e5
    ld hl, sp+$0a                                 ; $215c: $f8 $0a
    ld [hl], d                                    ; $215e: $72
    pop hl                                        ; $215f: $e1

Jump_000_2160:
    ld bc, $000a                                  ; $2160: $01 $0a $00

Call_000_2163:
    call Call_000_21cf                            ; $2163: $cd $cf $21
    push hl                                       ; $2166: $e5
    ld hl, sp+$0b                                 ; $2167: $f8 $0b
    ld [hl], d                                    ; $2169: $72

Jump_000_216a:
    pop hl                                        ; $216a: $e1
    ld bc, $0001                                  ; $216b: $01 $01 $00
    call Call_000_21cf                            ; $216e: $cd $cf $21
    push hl                                       ; $2171: $e5
    ld hl, sp+$0c                                 ; $2172: $f8 $0c

Jump_000_2174:
    set 6, d                                      ; $2174: $cb $f2
    ld [hl], d                                    ; $2176: $72
    pop hl                                        ; $2177: $e1
    pop de                                        ; $2178: $d1
    pop bc                                        ; $2179: $c1

Jump_000_217a:
    or c                                          ; $217a: $b1
    jr z, jr_000_21a2                             ; $217b: $28 $25

    ld b, $05                                     ; $217d: $06 $05

Jump_000_217f:
    ld hl, sp+$02                                 ; $217f: $f8 $02

Jump_000_2181:
jr_000_2181:
    ld a, [hl]                                    ; $2181: $7e
    or a                                          ; $2182: $b7
    jr nz, jr_000_218b                            ; $2183: $20 $06

    dec b                                         ; $2185: $05
    inc hl                                        ; $2186: $23
    bit 7, [hl]                                   ; $2187: $cb $7e
    jr z, jr_000_2181                             ; $2189: $28 $f6

jr_000_218b:
    ld a, c                                       ; $218b: $79
    sub b                                         ; $218c: $90
    jr c, jr_000_21a2                             ; $218d: $38 $13

    jr z, jr_000_21a2                             ; $218f: $28 $11

    ld b, a                                       ; $2191: $47
    ld a, $20                                     ; $2192: $3e $20
    ld hl, sp+$07                                 ; $2194: $f8 $07
    bit 0, [hl]                                   ; $2196: $cb $46
    jr z, jr_000_219d                             ; $2198: $28 $03

    dec b                                         ; $219a: $05
    jr z, jr_000_21a2                             ; $219b: $28 $05

jr_000_219d:
    ld [de], a                                    ; $219d: $12
    inc de                                        ; $219e: $13
    dec b                                         ; $219f: $05

Call_000_21a0:
    jr nz, jr_000_219d                            ; $21a0: $20 $fb

jr_000_21a2:
    ld hl, sp+$07                                 ; $21a2: $f8 $07
    bit 0, [hl]                                   ; $21a4: $cb $46
    jr z, jr_000_21ac                             ; $21a6: $28 $04

Jump_000_21a8:
    ld a, $2d                                     ; $21a8: $3e $2d
    ld [de], a                                    ; $21aa: $12
    inc de                                        ; $21ab: $13

jr_000_21ac:
    ld b, $00                                     ; $21ac: $06 $00
    ld hl, sp+$02                                 ; $21ae: $f8 $02

jr_000_21b0:
    ld a, [hl]                                    ; $21b0: $7e

Jump_000_21b1:
    bit 7, a                                      ; $21b1: $cb $7f
    jr nz, jr_000_21c9                            ; $21b3: $20 $14

Jump_000_21b5:
    inc hl                                        ; $21b5: $23
    bit 0, b                                      ; $21b6: $cb $40
    jr nz, jr_000_21bf                            ; $21b8: $20 $05

Call_000_21ba:
Jump_000_21ba:
    or a                                          ; $21ba: $b7
    jr z, jr_000_21b0                             ; $21bb: $28 $f3

    jr jr_000_21bf                                ; $21bd: $18 $00

jr_000_21bf:
    res 6, a                                      ; $21bf: $cb $b7

Jump_000_21c1:
    add $30                                       ; $21c1: $c6 $30

Jump_000_21c3:
    ld [de], a                                    ; $21c3: $12
    inc de                                        ; $21c4: $13
    set 0, b                                      ; $21c5: $cb $c0
    jr jr_000_21b0                                ; $21c7: $18 $e7

Call_000_21c9:
Jump_000_21c9:
jr_000_21c9:
    xor a                                         ; $21c9: $af
    ld [de], a                                    ; $21ca: $12
    pop bc                                        ; $21cb: $c1
    add sp, $06                                   ; $21cc: $e8 $06
    ret                                           ; $21ce: $c9


Call_000_21cf:
    ld d, $00                                     ; $21cf: $16 $00
    call Call_000_21e8                            ; $21d1: $cd $e8 $21

jr_000_21d4:
    inc d                                         ; $21d4: $14
    add hl, bc                                    ; $21d5: $09
    bit 7, h                                      ; $21d6: $cb $7c

Call_000_21d8:
    jr z, jr_000_21d4                             ; $21d8: $28 $fa

    call Call_000_21e8                            ; $21da: $cd $e8 $21
    add hl, bc                                    ; $21dd: $09

Call_000_21de:
    dec d                                         ; $21de: $15
    ret                                           ; $21df: $c9


Call_000_21e0:
Jump_000_21e0:
    ld a, h                                       ; $21e0: $7c
    cpl                                           ; $21e1: $2f
    ld h, a                                       ; $21e2: $67

Jump_000_21e3:
    ld a, l                                       ; $21e3: $7d

Jump_000_21e4:
    cpl                                           ; $21e4: $2f

Call_000_21e5:
    ld l, a                                       ; $21e5: $6f
    inc hl                                        ; $21e6: $23
    ret                                           ; $21e7: $c9


Call_000_21e8:
    ld a, b                                       ; $21e8: $78
    cpl                                           ; $21e9: $2f
    ld b, a                                       ; $21ea: $47

Jump_000_21eb:
    ld a, c                                       ; $21eb: $79

Jump_000_21ec:
    cpl                                           ; $21ec: $2f

Jump_000_21ed:
    ld c, a                                       ; $21ed: $4f
    inc bc                                        ; $21ee: $03
    ret                                           ; $21ef: $c9


Call_000_21f0:
    add sp, -$06                                  ; $21f0: $e8 $fa
    push bc                                       ; $21f2: $c5
    ld b, $00                                     ; $21f3: $06 $00

Call_000_21f5:
    ld c, a                                       ; $21f5: $4f
    push bc                                       ; $21f6: $c5
    push de                                       ; $21f7: $d5
    ld e, l                                       ; $21f8: $5d
    ld d, h                                       ; $21f9: $54

Jump_000_21fa:
    ld hl, sp+$0b                                 ; $21fa: $f8 $0b
    ld a, $80                                     ; $21fc: $3e $80
    ld [hl], a                                    ; $21fe: $77

Call_000_21ff:
Jump_000_21ff:
    ld l, e                                       ; $21ff: $6b
    ld h, d                                       ; $2200: $62

Call_000_2201:
    bit 7, h                                      ; $2201: $cb $7c
    jr z, jr_000_2213                             ; $2203: $28 $0e

    xor a                                         ; $2205: $af

Jump_000_2206:
    sub l                                         ; $2206: $95
    ld l, a                                       ; $2207: $6f
    sbc a                                         ; $2208: $9f
    sub h                                         ; $2209: $94
    ld h, a                                       ; $220a: $67
    ld e, l                                       ; $220b: $5d
    ld d, h                                       ; $220c: $54
    ld hl, sp+$0b                                 ; $220d: $f8 $0b

Call_000_220f:
    set 0, [hl]                                   ; $220f: $cb $c6
    ld l, e                                       ; $2211: $6b
    ld h, d                                       ; $2212: $62

jr_000_2213:
    ld c, l                                       ; $2213: $4d

Call_000_2214:
    ld b, h                                       ; $2214: $44
    ld hl, sp+$06                                 ; $2215: $f8 $06
    ld e, l                                       ; $2217: $5d
    ld d, h                                       ; $2218: $54
    ld l, c                                       ; $2219: $69

Call_000_221a:
    ld h, b                                       ; $221a: $60
    ld bc, $d8f0                                  ; $221b: $01 $f0 $d8
    call Call_000_229e                            ; $221e: $cd $9e $22
    ld bc, $2710                                  ; $2221: $01 $10 $27
    add hl, bc                                    ; $2224: $09
    ld [de], a                                    ; $2225: $12
    inc de                                        ; $2226: $13

Call_000_2227:
    ld bc, $fc18                                  ; $2227: $01 $18 $fc
    call Call_000_229e                            ; $222a: $cd $9e $22
    ld bc, $03e8                                  ; $222d: $01 $e8 $03
    add hl, bc                                    ; $2230: $09
    ld [de], a                                    ; $2231: $12
    inc de                                        ; $2232: $13
    ld bc, $ff9c                                  ; $2233: $01 $9c $ff
    call Call_000_229e                            ; $2236: $cd $9e $22

Jump_000_2239:
    ld bc, $0064                                  ; $2239: $01 $64 $00
    add hl, bc                                    ; $223c: $09
    ld [de], a                                    ; $223d: $12

Call_000_223e:
    inc de                                        ; $223e: $13
    ld bc, $fff6                                  ; $223f: $01 $f6 $ff
    call Call_000_229e                            ; $2242: $cd $9e $22
    ld bc, $000a                                  ; $2245: $01 $0a $00
    add hl, bc                                    ; $2248: $09

Call_000_2249:
    ld [de], a                                    ; $2249: $12
    inc de                                        ; $224a: $13
    ld a, l                                       ; $224b: $7d
    ld [de], a                                    ; $224c: $12
    pop de                                        ; $224d: $d1
    pop bc                                        ; $224e: $c1
    inc c                                         ; $224f: $0c
    dec c                                         ; $2250: $0d
    jr z, jr_000_2279                             ; $2251: $28 $26

Jump_000_2253:
    ld b, $05                                     ; $2253: $06 $05
    ld hl, sp+$02                                 ; $2255: $f8 $02

jr_000_2257:
    ld a, [hl]                                    ; $2257: $7e
    or a                                          ; $2258: $b7

Call_000_2259:
    jr nz, jr_000_2262                            ; $2259: $20 $07

    dec b                                         ; $225b: $05
    inc hl                                        ; $225c: $23
    bit 7, [hl]                                   ; $225d: $cb $7e
    jr z, jr_000_2257                             ; $225f: $28 $f6

    inc b                                         ; $2261: $04

jr_000_2262:
    ld a, c                                       ; $2262: $79
    sub b                                         ; $2263: $90

Call_000_2264:
    jr c, jr_000_2279                             ; $2264: $38 $13

    jr z, jr_000_2279                             ; $2266: $28 $11

    ld b, a                                       ; $2268: $47
    ld a, $20                                     ; $2269: $3e $20
    ld hl, sp+$07                                 ; $226b: $f8 $07

Jump_000_226d:
    bit 0, [hl]                                   ; $226d: $cb $46
    jr z, jr_000_2274                             ; $226f: $28 $03

    dec b                                         ; $2271: $05
    jr z, jr_000_2279                             ; $2272: $28 $05

jr_000_2274:
    ld [de], a                                    ; $2274: $12
    inc de                                        ; $2275: $13
    dec b                                         ; $2276: $05
    jr nz, jr_000_2274                            ; $2277: $20 $fb

Call_000_2279:
jr_000_2279:
    ld hl, sp+$07                                 ; $2279: $f8 $07
    bit 0, [hl]                                   ; $227b: $cb $46
    jr z, jr_000_2283                             ; $227d: $28 $04

Call_000_227f:
    ld a, $2d                                     ; $227f: $3e $2d
    ld [de], a                                    ; $2281: $12
    inc de                                        ; $2282: $13

jr_000_2283:
    ld b, $05                                     ; $2283: $06 $05
    ld c, $30                                     ; $2285: $0e $30
    ld hl, sp+$02                                 ; $2287: $f8 $02

jr_000_2289:
    ld a, [hl+]                                   ; $2289: $2a
    or a                                          ; $228a: $b7
    jr nz, jr_000_2290                            ; $228b: $20 $03

    dec b                                         ; $228d: $05
    jr nz, jr_000_2289                            ; $228e: $20 $f9

jr_000_2290:
    add c                                         ; $2290: $81
    ld [de], a                                    ; $2291: $12
    inc de                                        ; $2292: $13
    ld a, [hl+]                                   ; $2293: $2a
    bit 7, a                                      ; $2294: $cb $7f
    jr z, jr_000_2290                             ; $2296: $28 $f8

    xor a                                         ; $2298: $af
    ld [de], a                                    ; $2299: $12
    pop bc                                        ; $229a: $c1
    add sp, $06                                   ; $229b: $e8 $06
    ret                                           ; $229d: $c9


Call_000_229e:
    xor a                                         ; $229e: $af

jr_000_229f:
    inc a                                         ; $229f: $3c

Call_000_22a0:
Jump_000_22a0:
    add hl, bc                                    ; $22a0: $09
    jr c, jr_000_229f                             ; $22a1: $38 $fc

    dec a                                         ; $22a3: $3d

Call_000_22a4:
    ret                                           ; $22a4: $c9


Call_000_22a5:
    push af                                       ; $22a5: $f5
    push bc                                       ; $22a6: $c5
    push de                                       ; $22a7: $d5
    push hl                                       ; $22a8: $e5
    add sp, -$0a                                  ; $22a9: $e8 $f6
    ld hl, sp+$00                                 ; $22ab: $f8 $00
    push de                                       ; $22ad: $d5

Call_000_22ae:
    ld d, h                                       ; $22ae: $54
    ld e, l                                       ; $22af: $5d

Jump_000_22b0:
    ld b, h                                       ; $22b0: $44
    ld c, l                                       ; $22b1: $4d
    ld h, $00                                     ; $22b2: $26 $00
    ld l, a                                       ; $22b4: $6f
    call Call_000_20e0                            ; $22b5: $cd $e0 $20
    inc hl                                        ; $22b8: $23
    inc hl                                        ; $22b9: $23

Jump_000_22ba:
    jr jr_000_2319                                ; $22ba: $18 $5d

Call_000_22bc:
Jump_000_22bc:
    push af                                       ; $22bc: $f5
    push bc                                       ; $22bd: $c5
    push de                                       ; $22be: $d5

Jump_000_22bf:
    push hl                                       ; $22bf: $e5

Jump_000_22c0:
    ld b, h                                       ; $22c0: $44
    ld c, l                                       ; $22c1: $4d
    add sp, -$0a                                  ; $22c2: $e8 $f6
    ld hl, sp+$00                                 ; $22c4: $f8 $00
    push de                                       ; $22c6: $d5

Call_000_22c7:
    ld d, h                                       ; $22c7: $54

Jump_000_22c8:
    ld e, l                                       ; $22c8: $5d
    ld h, b                                       ; $22c9: $60
    ld l, c                                       ; $22ca: $69

Jump_000_22cb:
    ld b, d                                       ; $22cb: $42

Call_000_22cc:
    ld c, e                                       ; $22cc: $4b
    call Call_000_20e0                            ; $22cd: $cd $e0 $20

Jump_000_22d0:
    jr jr_000_2319                                ; $22d0: $18 $47

Call_000_22d2:
    push af                                       ; $22d2: $f5
    push bc                                       ; $22d3: $c5
    push de                                       ; $22d4: $d5
    push hl                                       ; $22d5: $e5
    add sp, -$0a                                  ; $22d6: $e8 $f6
    ld hl, sp+$00                                 ; $22d8: $f8 $00
    push de                                       ; $22da: $d5
    ld d, h                                       ; $22db: $54

Call_000_22dc:
    ld e, l                                       ; $22dc: $5d
    ld b, h                                       ; $22dd: $44
    ld c, l                                       ; $22de: $4d
    ld h, $00                                     ; $22df: $26 $00

Call_000_22e1:
    ld l, a                                       ; $22e1: $6f

Jump_000_22e2:
    ld a, $04                                     ; $22e2: $3e $04

Call_000_22e4:
    call Call_000_21f0                            ; $22e4: $cd $f0 $21
    jr jr_000_2319                                ; $22e7: $18 $30

Call_000_22e9:
    push af                                       ; $22e9: $f5
    push bc                                       ; $22ea: $c5
    push de                                       ; $22eb: $d5
    push hl                                       ; $22ec: $e5
    add sp, -$0a                                  ; $22ed: $e8 $f6

Jump_000_22ef:
    ld hl, sp+$00                                 ; $22ef: $f8 $00
    push de                                       ; $22f1: $d5

Call_000_22f2:
    ld d, h                                       ; $22f2: $54
    ld e, l                                       ; $22f3: $5d
    ld b, h                                       ; $22f4: $44
    ld c, l                                       ; $22f5: $4d
    ld h, $00                                     ; $22f6: $26 $00
    ld l, a                                       ; $22f8: $6f
    call Call_000_08a5                            ; $22f9: $cd $a5 $08

Call_000_22fc:
    ld a, $04                                     ; $22fc: $3e $04

Jump_000_22fe:
    call Call_000_21f0                            ; $22fe: $cd $f0 $21
    jr jr_000_2319                                ; $2301: $18 $16

Call_000_2303:
    push af                                       ; $2303: $f5
    push bc                                       ; $2304: $c5
    push de                                       ; $2305: $d5
    push hl                                       ; $2306: $e5
    ld b, h                                       ; $2307: $44
    ld c, l                                       ; $2308: $4d
    add sp, -$0a                                  ; $2309: $e8 $f6
    ld hl, sp+$00                                 ; $230b: $f8 $00
    push de                                       ; $230d: $d5
    ld d, h                                       ; $230e: $54
    ld e, l                                       ; $230f: $5d
    ld h, b                                       ; $2310: $60
    ld l, c                                       ; $2311: $69
    ld b, d                                       ; $2312: $42
    ld c, e                                       ; $2313: $4b
    ld a, $06                                     ; $2314: $3e $06
    call Call_000_21f0                            ; $2316: $cd $f0 $21

jr_000_2319:
    ld h, b                                       ; $2319: $60
    ld l, c                                       ; $231a: $69
    pop de                                        ; $231b: $d1
    call Call_000_20b1                            ; $231c: $cd $b1 $20
    add sp, $0a                                   ; $231f: $e8 $0a
    pop hl                                        ; $2321: $e1
    pop de                                        ; $2322: $d1

Jump_000_2323:
    pop bc                                        ; $2323: $c1
    pop af                                        ; $2324: $f1
    ret                                           ; $2325: $c9


Call_000_2326:
    add sp, -$06                                  ; $2326: $e8 $fa
    push bc                                       ; $2328: $c5
    ld b, $00                                     ; $2329: $06 $00

Jump_000_232b:
    ld c, a                                       ; $232b: $4f
    push bc                                       ; $232c: $c5
    push de                                       ; $232d: $d5
    ld e, l                                       ; $232e: $5d
    ld d, h                                       ; $232f: $54
    ld hl, sp+$0b                                 ; $2330: $f8 $0b
    ld a, $80                                     ; $2332: $3e $80
    ld [hl], a                                    ; $2334: $77
    ld l, e                                       ; $2335: $6b
    ld h, d                                       ; $2336: $62
    ld c, l                                       ; $2337: $4d

Jump_000_2338:
    ld b, h                                       ; $2338: $44
    ld hl, sp+$06                                 ; $2339: $f8 $06
    ld e, l                                       ; $233b: $5d
    ld d, h                                       ; $233c: $54
    ld l, c                                       ; $233d: $69
    ld h, b                                       ; $233e: $60
    ld bc, $d8f0                                  ; $233f: $01 $f0 $d8
    call Call_000_23af                            ; $2342: $cd $af $23
    ld bc, $2710                                  ; $2345: $01 $10 $27
    add hl, bc                                    ; $2348: $09
    ld [de], a                                    ; $2349: $12
    inc de                                        ; $234a: $13
    ld bc, $fc18                                  ; $234b: $01 $18 $fc

Jump_000_234e:
    call Call_000_23af                            ; $234e: $cd $af $23
    ld bc, $03e8                                  ; $2351: $01 $e8 $03
    add hl, bc                                    ; $2354: $09
    ld [de], a                                    ; $2355: $12
    inc de                                        ; $2356: $13
    ld bc, $ff9c                                  ; $2357: $01 $9c $ff
    call Call_000_23af                            ; $235a: $cd $af $23
    ld bc, $0064                                  ; $235d: $01 $64 $00
    add hl, bc                                    ; $2360: $09
    ld [de], a                                    ; $2361: $12
    inc de                                        ; $2362: $13
    ld bc, $fff6                                  ; $2363: $01 $f6 $ff

Jump_000_2366:
    call Call_000_23af                            ; $2366: $cd $af $23
    ld bc, $000a                                  ; $2369: $01 $0a $00
    add hl, bc                                    ; $236c: $09
    ld [de], a                                    ; $236d: $12
    inc de                                        ; $236e: $13
    ld a, l                                       ; $236f: $7d
    ld [de], a                                    ; $2370: $12
    pop de                                        ; $2371: $d1
    pop bc                                        ; $2372: $c1
    inc c                                         ; $2373: $0c
    dec c                                         ; $2374: $0d
    jr z, jr_000_2394                             ; $2375: $28 $1d

    ld b, $05                                     ; $2377: $06 $05
    ld hl, sp+$02                                 ; $2379: $f8 $02

jr_000_237b:
    ld a, [hl]                                    ; $237b: $7e
    or a                                          ; $237c: $b7

Jump_000_237d:
    jr nz, jr_000_2386                            ; $237d: $20 $07

    dec b                                         ; $237f: $05
    inc hl                                        ; $2380: $23
    bit 7, [hl]                                   ; $2381: $cb $7e

Call_000_2383:
Jump_000_2383:
    jr z, jr_000_237b                             ; $2383: $28 $f6

    inc b                                         ; $2385: $04

jr_000_2386:
    ld a, c                                       ; $2386: $79
    sub b                                         ; $2387: $90
    jr c, jr_000_2394                             ; $2388: $38 $0a

    jr z, jr_000_2394                             ; $238a: $28 $08

    ld b, a                                       ; $238c: $47
    ld a, $20                                     ; $238d: $3e $20

jr_000_238f:
    ld [de], a                                    ; $238f: $12
    inc de                                        ; $2390: $13
    dec b                                         ; $2391: $05

Call_000_2392:
    jr nz, jr_000_238f                            ; $2392: $20 $fb

jr_000_2394:
    ld b, $05                                     ; $2394: $06 $05
    ld c, $30                                     ; $2396: $0e $30
    ld hl, sp+$02                                 ; $2398: $f8 $02

jr_000_239a:
    ld a, [hl+]                                   ; $239a: $2a
    or a                                          ; $239b: $b7
    jr nz, jr_000_23a1                            ; $239c: $20 $03

    dec b                                         ; $239e: $05
    jr nz, jr_000_239a                            ; $239f: $20 $f9

Jump_000_23a1:
jr_000_23a1:
    add c                                         ; $23a1: $81
    ld [de], a                                    ; $23a2: $12
    inc de                                        ; $23a3: $13
    ld a, [hl+]                                   ; $23a4: $2a

Jump_000_23a5:
    bit 7, a                                      ; $23a5: $cb $7f
    jr z, jr_000_23a1                             ; $23a7: $28 $f8

    xor a                                         ; $23a9: $af
    ld [de], a                                    ; $23aa: $12
    pop bc                                        ; $23ab: $c1
    add sp, $06                                   ; $23ac: $e8 $06

Jump_000_23ae:
    ret                                           ; $23ae: $c9


Call_000_23af:
    xor a                                         ; $23af: $af

jr_000_23b0:
    inc a                                         ; $23b0: $3c
    add hl, bc                                    ; $23b1: $09
    jr c, jr_000_23b0                             ; $23b2: $38 $fc

    dec a                                         ; $23b4: $3d
    ret                                           ; $23b5: $c9


Call_000_23b6:
    xor a                                         ; $23b6: $af
    ldh [$8f], a                                  ; $23b7: $e0 $8f
    ld hl, $c1c0                                  ; $23b9: $21 $c0 $c1
    ld c, $04                                     ; $23bc: $0e $04
    call Call_000_03a7                            ; $23be: $cd $a7 $03

Jump_000_23c1:
    ld a, $01                                     ; $23c1: $3e $01

Jump_000_23c3:
    ldh [$8f], a                                  ; $23c3: $e0 $8f
    ret                                           ; $23c5: $c9


Call_000_23c6:
    push hl                                       ; $23c6: $e5
    push de                                       ; $23c7: $d5
    ld a, [de]                                    ; $23c8: $1a
    cp [hl]                                       ; $23c9: $be
    jr nz, jr_000_23db                            ; $23ca: $20 $0f

    inc hl                                        ; $23cc: $23
    inc de                                        ; $23cd: $13
    ld a, [de]                                    ; $23ce: $1a
    cp [hl]                                       ; $23cf: $be

Jump_000_23d0:
    jr nz, jr_000_23db                            ; $23d0: $20 $09

    inc hl                                        ; $23d2: $23
    inc de                                        ; $23d3: $13
    ld a, [de]                                    ; $23d4: $1a
    cp [hl]                                       ; $23d5: $be
    jr nz, jr_000_23db                            ; $23d6: $20 $03

    xor a                                         ; $23d8: $af
    jr jr_000_23de                                ; $23d9: $18 $03

jr_000_23db:
    ld a, $01                                     ; $23db: $3e $01
    or a                                          ; $23dd: $b7

jr_000_23de:
    pop de                                        ; $23de: $d1
    pop hl                                        ; $23df: $e1
    ret                                           ; $23e0: $c9


Call_000_23e1:
    push hl                                       ; $23e1: $e5
    ld a, [hl+]                                   ; $23e2: $2a
    or [hl]                                       ; $23e3: $b6
    inc hl                                        ; $23e4: $23
    or [hl]                                       ; $23e5: $b6
    pop hl                                        ; $23e6: $e1
    ret                                           ; $23e7: $c9


Call_000_23e8:
    add sp, -$04                                  ; $23e8: $e8 $fc
    push af                                       ; $23ea: $f5
    xor a                                         ; $23eb: $af
    ldh [$8f], a                                  ; $23ec: $e0 $8f
    pop af                                        ; $23ee: $f1
    ld d, h                                       ; $23ef: $54
    ld e, l                                       ; $23f0: $5d
    ld hl, sp+$00                                 ; $23f1: $f8 $00
    push hl                                       ; $23f3: $e5
    ld [hl+], a                                   ; $23f4: $22

Jump_000_23f5:
    ld [hl], e                                    ; $23f5: $73
    inc hl                                        ; $23f6: $23
    ld [hl], d                                    ; $23f7: $72

Jump_000_23f8:
    inc hl                                        ; $23f8: $23
    ldh a, [$95]                                  ; $23f9: $f0 $95
    ld [hl], a                                    ; $23fb: $77

Jump_000_23fc:
    pop de                                        ; $23fc: $d1
    inc de                                        ; $23fd: $13

Jump_000_23fe:
    ld bc, $0010                                  ; $23fe: $01 $10 $00
    ld hl, $c1c0                                  ; $2401: $21 $c0 $c1

jr_000_2404:
    inc hl                                        ; $2404: $23
    call Call_000_23c6                            ; $2405: $cd $c6 $23
    jr nz, jr_000_240e                            ; $2408: $20 $04

    ld b, $01                                     ; $240a: $06 $01
    jr jr_000_2414                                ; $240c: $18 $06

jr_000_240e:
    inc hl                                        ; $240e: $23

Call_000_240f:
    inc hl                                        ; $240f: $23

Call_000_2410:
    inc hl                                        ; $2410: $23
    dec c                                         ; $2411: $0d
    jr nz, jr_000_2404                            ; $2412: $20 $f0

jr_000_2414:
    ld a, b                                       ; $2414: $78
    or a                                          ; $2415: $b7
    jr nz, jr_000_243f                            ; $2416: $20 $27

    ld c, $16                                     ; $2418: $0e $16
    ld hl, $c1c0                                  ; $241a: $21 $c0 $c1

jr_000_241d:
    inc hl                                        ; $241d: $23
    call Call_000_23e1                            ; $241e: $cd $e1 $23
    jr nz, jr_000_2435                            ; $2421: $20 $12

    dec hl                                        ; $2423: $2b
    dec de                                        ; $2424: $1b
    ld a, [de]                                    ; $2425: $1a
    ld [hl], a                                    ; $2426: $77
    inc hl                                        ; $2427: $23
    inc de                                        ; $2428: $13
    ld a, [de]                                    ; $2429: $1a
    ld [hl], a                                    ; $242a: $77
    inc de                                        ; $242b: $13
    inc hl                                        ; $242c: $23

Call_000_242d:
Jump_000_242d:
    ld a, [de]                                    ; $242d: $1a
    ld [hl], a                                    ; $242e: $77
    inc de                                        ; $242f: $13
    inc hl                                        ; $2430: $23

Call_000_2431:
    ld a, [de]                                    ; $2431: $1a
    ld [hl], a                                    ; $2432: $77
    jr jr_000_243f                                ; $2433: $18 $0a

jr_000_2435:
    inc hl                                        ; $2435: $23
    inc hl                                        ; $2436: $23
    inc hl                                        ; $2437: $23
    dec c                                         ; $2438: $0d
    jr nz, jr_000_241d                            ; $2439: $20 $e2

    ld a, b                                       ; $243b: $78

Call_000_243c:
    or a                                          ; $243c: $b7
    jr nz, jr_000_243f                            ; $243d: $20 $00

Jump_000_243f:
jr_000_243f:
    call Call_000_24bd                            ; $243f: $cd $bd $24
    ld a, $01                                     ; $2442: $3e $01
    ldh [$8f], a                                  ; $2444: $e0 $8f
    add sp, $04                                   ; $2446: $e8 $04
    ret                                           ; $2448: $c9


Call_000_2449:
    add sp, -$03                                  ; $2449: $e8 $fd
    push af                                       ; $244b: $f5
    xor a                                         ; $244c: $af
    ldh [$8f], a                                  ; $244d: $e0 $8f
    pop af                                        ; $244f: $f1
    ld d, h                                       ; $2450: $54
    ld e, l                                       ; $2451: $5d
    ld hl, sp+$00                                 ; $2452: $f8 $00
    push hl                                       ; $2454: $e5
    ld [hl], e                                    ; $2455: $73
    inc hl                                        ; $2456: $23
    ld [hl], d                                    ; $2457: $72
    inc hl                                        ; $2458: $23
    ldh a, [$95]                                  ; $2459: $f0 $95
    ld [hl], a                                    ; $245b: $77
    pop de                                        ; $245c: $d1
    ld c, $10                                     ; $245d: $0e $10
    ld hl, $c1c0                                  ; $245f: $21 $c0 $c1

jr_000_2462:
    inc hl                                        ; $2462: $23
    call Call_000_23c6                            ; $2463: $cd $c6 $23
    jr nz, jr_000_2470                            ; $2466: $20 $08

    dec hl                                        ; $2468: $2b
    xor a                                         ; $2469: $af
    ld [hl+], a                                   ; $246a: $22
    ld [hl+], a                                   ; $246b: $22
    ld [hl+], a                                   ; $246c: $22
    ld [hl+], a                                   ; $246d: $22
    jr jr_000_2476                                ; $246e: $18 $06

jr_000_2470:
    inc hl                                        ; $2470: $23
    inc hl                                        ; $2471: $23
    inc hl                                        ; $2472: $23
    dec c                                         ; $2473: $0d
    jr nz, jr_000_2462                            ; $2474: $20 $ec

jr_000_2476:
    ld a, $01                                     ; $2476: $3e $01
    ldh [$8f], a                                  ; $2478: $e0 $8f
    add sp, $03                                   ; $247a: $e8 $03
    ret                                           ; $247c: $c9


Call_000_247d:
    and $80                                       ; $247d: $e6 $80
    ld b, a                                       ; $247f: $47
    ldh a, [$8f]                                  ; $2480: $f0 $8f
    or a                                          ; $2482: $b7
    ret z                                         ; $2483: $c8

    ldh a, [$95]                                  ; $2484: $f0 $95
    ld d, a                                       ; $2486: $57
    ldh a, [$96]                                  ; $2487: $f0 $96
    ld e, a                                       ; $2489: $5f
    push de                                       ; $248a: $d5
    ld c, $10                                     ; $248b: $0e $10
    ld hl, $c1c0                                  ; $248d: $21 $c0 $c1

jr_000_2490:
    ld a, [hl+]                                   ; $2490: $2a
    xor b                                         ; $2491: $a8
    add a                                         ; $2492: $87
    jr z, jr_000_24aa                             ; $2493: $28 $15

    jr c, jr_000_24aa                             ; $2495: $38 $13

    push bc                                       ; $2497: $c5
    push hl                                       ; $2498: $e5
    ld a, [hl+]                                   ; $2499: $2a
    ld e, a                                       ; $249a: $5f
    ld a, [hl+]                                   ; $249b: $2a
    ld d, a                                       ; $249c: $57
    ld a, [hl]                                    ; $249d: $7e
    ldh [$95], a                                  ; $249e: $e0 $95
    ld [$2000], a                                 ; $24a0: $ea $00 $20
    ld l, e                                       ; $24a3: $6b
    ld h, d                                       ; $24a4: $62
    call Call_000_0699                            ; $24a5: $cd $99 $06
    pop hl                                        ; $24a8: $e1
    pop bc                                        ; $24a9: $c1

jr_000_24aa:
    inc hl                                        ; $24aa: $23
    inc hl                                        ; $24ab: $23
    inc hl                                        ; $24ac: $23
    dec c                                         ; $24ad: $0d

Call_000_24ae:
    jr nz, jr_000_2490                            ; $24ae: $20 $e0

    pop de                                        ; $24b0: $d1
    ld a, d                                       ; $24b1: $7a
    ldh [$95], a                                  ; $24b2: $e0 $95
    ld [$2000], a                                 ; $24b4: $ea $00 $20
    ld a, e                                       ; $24b7: $7b
    ldh [$96], a                                  ; $24b8: $e0 $96
    ldh [rSVBK], a                                ; $24ba: $e0 $70
    ret                                           ; $24bc: $c9


Call_000_24bd:
    ld c, $0f                                     ; $24bd: $0e $0f

jr_000_24bf:
    ld hl, $c1c0                                  ; $24bf: $21 $c0 $c1
    ld b, c                                       ; $24c2: $41

Jump_000_24c3:
    ld d, h                                       ; $24c3: $54

Jump_000_24c4:
    ld e, l                                       ; $24c4: $5d
    inc de                                        ; $24c5: $13
    inc de                                        ; $24c6: $13
    inc de                                        ; $24c7: $13
    inc de                                        ; $24c8: $13

jr_000_24c9:
    ld a, [de]                                    ; $24c9: $1a
    cp [hl]                                       ; $24ca: $be
    jr c, jr_000_24dc                             ; $24cb: $38 $0f

    push bc                                       ; $24cd: $c5
    ld c, $04                                     ; $24ce: $0e $04

jr_000_24d0:
    ld b, [hl]                                    ; $24d0: $46
    ld a, [de]                                    ; $24d1: $1a
    ld [hl+], a                                   ; $24d2: $22
    ld a, b                                       ; $24d3: $78

Jump_000_24d4:
    ld [de], a                                    ; $24d4: $12
    inc de                                        ; $24d5: $13
    dec c                                         ; $24d6: $0d
    jr nz, jr_000_24d0                            ; $24d7: $20 $f7

    pop bc                                        ; $24d9: $c1
    jr jr_000_24e4                                ; $24da: $18 $08

Call_000_24dc:
jr_000_24dc:
    inc hl                                        ; $24dc: $23
    inc de                                        ; $24dd: $13
    inc hl                                        ; $24de: $23
    inc de                                        ; $24df: $13
    inc hl                                        ; $24e0: $23

Call_000_24e1:
    inc de                                        ; $24e1: $13
    inc hl                                        ; $24e2: $23

Jump_000_24e3:
    inc de                                        ; $24e3: $13

Call_000_24e4:
jr_000_24e4:
    dec b                                         ; $24e4: $05
    jr nz, jr_000_24c9                            ; $24e5: $20 $e2

    dec c                                         ; $24e7: $0d
    jr nz, jr_000_24bf                            ; $24e8: $20 $d5

    ret                                           ; $24ea: $c9


Call_000_24eb:
Jump_000_24eb:
    push de                                       ; $24eb: $d5

Jump_000_24ec:
    ld a, b                                       ; $24ec: $78
    and $7c                                       ; $24ed: $e6 $7c
    rrca                                          ; $24ef: $0f
    rrca                                          ; $24f0: $0f

Jump_000_24f1:
    ld e, a                                       ; $24f1: $5f
    ld a, b                                       ; $24f2: $78
    and $03                                       ; $24f3: $e6 $03
    ld b, a                                       ; $24f5: $47
    ld a, c                                       ; $24f6: $79
    and $e0                                       ; $24f7: $e6 $e0
    or b                                          ; $24f9: $b0
    rlca                                          ; $24fa: $07
    rlca                                          ; $24fb: $07

Call_000_24fc:
    rlca                                          ; $24fc: $07
    ld b, a                                       ; $24fd: $47
    ld a, c                                       ; $24fe: $79

Call_000_24ff:
    and $1f                                       ; $24ff: $e6 $1f
    ld c, e                                       ; $2501: $4b
    pop de                                        ; $2502: $d1
    ret                                           ; $2503: $c9


Call_000_2504:
    push af                                       ; $2504: $f5

Jump_000_2505:
    push de                                       ; $2505: $d5
    and $1f                                       ; $2506: $e6 $1f

Jump_000_2508:
    ld e, a                                       ; $2508: $5f
    ld a, b                                       ; $2509: $78
    rrca                                          ; $250a: $0f

Call_000_250b:
Jump_000_250b:
    rrca                                          ; $250b: $0f
    rrca                                          ; $250c: $0f
    ld b, a                                       ; $250d: $47
    and $e0                                       ; $250e: $e6 $e0
    or e                                          ; $2510: $b3
    ld e, a                                       ; $2511: $5f
    ld a, b                                       ; $2512: $78
    and $03                                       ; $2513: $e6 $03
    ld b, a                                       ; $2515: $47
    ld a, c                                       ; $2516: $79
    rlca                                          ; $2517: $07
    rlca                                          ; $2518: $07
    and $7c                                       ; $2519: $e6 $7c
    or b                                          ; $251b: $b0
    ld b, a                                       ; $251c: $47
    ld c, e                                       ; $251d: $4b

Call_000_251e:
    pop de                                        ; $251e: $d1
    pop af                                        ; $251f: $f1
    ret                                           ; $2520: $c9


Call_000_2521:
    add d                                         ; $2521: $82
    bit 7, a                                      ; $2522: $cb $7f
    jr z, jr_000_2528                             ; $2524: $28 $02

    xor a                                         ; $2526: $af
    ret                                           ; $2527: $c9


jr_000_2528:
    cp $1f                                        ; $2528: $fe $1f
    ret c                                         ; $252a: $d8

    ld a, $1f                                     ; $252b: $3e $1f
    ret                                           ; $252d: $c9


Call_000_252e:
    push af                                       ; $252e: $f5
    call Call_000_24eb                            ; $252f: $cd $eb $24
    call Call_000_2521                            ; $2532: $cd $21 $25
    call Call_000_2504                            ; $2535: $cd $04 $25
    pop af                                        ; $2538: $f1
    ret                                           ; $2539: $c9


Call_000_253a:
    push af                                       ; $253a: $f5
    call Call_000_24eb                            ; $253b: $cd $eb $24
    push af                                       ; $253e: $f5
    ld a, b                                       ; $253f: $78
    call Call_000_2521                            ; $2540: $cd $21 $25
    ld b, a                                       ; $2543: $47

Jump_000_2544:
    pop af                                        ; $2544: $f1
    call Call_000_2504                            ; $2545: $cd $04 $25
    pop af                                        ; $2548: $f1
    ret                                           ; $2549: $c9


Call_000_254a:
    push af                                       ; $254a: $f5
    call Call_000_24eb                            ; $254b: $cd $eb $24
    push af                                       ; $254e: $f5
    ld a, c                                       ; $254f: $79
    call Call_000_2521                            ; $2550: $cd $21 $25
    ld c, a                                       ; $2553: $4f
    pop af                                        ; $2554: $f1
    call Call_000_2504                            ; $2555: $cd $04 $25
    pop af                                        ; $2558: $f1
    ret                                           ; $2559: $c9


Call_000_255a:
    push af                                       ; $255a: $f5
    push bc                                       ; $255b: $c5
    push de                                       ; $255c: $d5
    push hl                                       ; $255d: $e5

jr_000_255e:
    push bc                                       ; $255e: $c5
    push de                                       ; $255f: $d5
    ld d, c                                       ; $2560: $51
    ld a, [hl+]                                   ; $2561: $2a
    ld c, a                                       ; $2562: $4f
    ld a, [hl+]                                   ; $2563: $2a
    ld b, a                                       ; $2564: $47
    call Call_000_24eb                            ; $2565: $cd $eb $24
    call Call_000_2521                            ; $2568: $cd $21 $25
    ld e, a                                       ; $256b: $5f
    ld a, b                                       ; $256c: $78
    call Call_000_2521                            ; $256d: $cd $21 $25
    ld b, a                                       ; $2570: $47
    ld a, c                                       ; $2571: $79
    call Call_000_2521                            ; $2572: $cd $21 $25

Jump_000_2575:
    ld c, a                                       ; $2575: $4f
    ld a, e                                       ; $2576: $7b
    call Call_000_2504                            ; $2577: $cd $04 $25
    pop de                                        ; $257a: $d1
    ld a, c                                       ; $257b: $79
    ld [de], a                                    ; $257c: $12
    inc de                                        ; $257d: $13
    ld a, b                                       ; $257e: $78
    ld [de], a                                    ; $257f: $12
    inc de                                        ; $2580: $13
    pop bc                                        ; $2581: $c1
    dec b                                         ; $2582: $05
    jr nz, jr_000_255e                            ; $2583: $20 $d9

    pop hl                                        ; $2585: $e1
    pop de                                        ; $2586: $d1
    pop bc                                        ; $2587: $c1
    pop af                                        ; $2588: $f1
    ret                                           ; $2589: $c9


Call_000_258a:
    push af                                       ; $258a: $f5
    jr jr_000_25a7                                ; $258b: $18 $1a

Call_000_258d:
    push af                                       ; $258d: $f5
    jr jr_000_25b5                                ; $258e: $18 $25

Call_000_2590:
    di                                            ; $2590: $f3
    call Call_000_25a1                            ; $2591: $cd $a1 $25
    push af                                       ; $2594: $f5
    ldh a, [$a2]                                  ; $2595: $f0 $a2
    or a                                          ; $2597: $b7
    jr z, jr_000_259e                             ; $2598: $28 $04

    or $80                                        ; $259a: $f6 $80
    ldh [$a2], a                                  ; $259c: $e0 $a2

jr_000_259e:
    pop af                                        ; $259e: $f1

Call_000_259f:
    ei                                            ; $259f: $fb
    ret                                           ; $25a0: $c9


Call_000_25a1:
    push af                                       ; $25a1: $f5
    ldh a, [$bc]                                  ; $25a2: $f0 $bc
    or a                                          ; $25a4: $b7
    jr nz, jr_000_25c7                            ; $25a5: $20 $20

jr_000_25a7:
    ld a, $01                                     ; $25a7: $3e $01
    ldh [$a2], a                                  ; $25a9: $e0 $a2
    ldh [$bc], a                                  ; $25ab: $e0 $bc
    jr jr_000_25bc                                ; $25ad: $18 $0d

Call_000_25af:
    push af                                       ; $25af: $f5
    ldh a, [$bc]                                  ; $25b0: $f0 $bc
    or a                                          ; $25b2: $b7
    jr z, jr_000_25c7                             ; $25b3: $28 $12

jr_000_25b5:
    ld a, $02                                     ; $25b5: $3e $02
    ldh [$a2], a                                  ; $25b7: $e0 $a2
    xor a                                         ; $25b9: $af
    ldh [$bc], a                                  ; $25ba: $e0 $bc

jr_000_25bc:
    ld a, c                                       ; $25bc: $79
    and a                                         ; $25bd: $a7
    jr nz, jr_000_25c1                            ; $25be: $20 $01

Call_000_25c0:
    inc a                                         ; $25c0: $3c

jr_000_25c1:
    ldh [$a3], a                                  ; $25c1: $e0 $a3
    ld a, $7c                                     ; $25c3: $3e $7c
    ldh [$a4], a                                  ; $25c5: $e0 $a4

jr_000_25c7:
    pop af                                        ; $25c7: $f1
    ret                                           ; $25c8: $c9


Call_000_25c9:
    push af                                       ; $25c9: $f5
    ldh a, [$a2]                                  ; $25ca: $f0 $a2
    and $02                                       ; $25cc: $e6 $02
    jr z, jr_000_2623                             ; $25ce: $28 $53

    push bc                                       ; $25d0: $c5
    push de                                       ; $25d1: $d5
    push hl                                       ; $25d2: $e5
    ldh a, [$a3]                                  ; $25d3: $f0 $a3
    ld c, a                                       ; $25d5: $4f
    ldh a, [$a4]                                  ; $25d6: $f0 $a4
    sub c                                         ; $25d8: $91
    jr nc, jr_000_25dc                            ; $25d9: $30 $01

    xor a                                         ; $25db: $af

jr_000_25dc:
    ld c, a                                       ; $25dc: $4f
    jr jr_000_25f7                                ; $25dd: $18 $18

Call_000_25df:
    push af                                       ; $25df: $f5
    ldh a, [$a2]                                  ; $25e0: $f0 $a2
    rrca                                          ; $25e2: $0f
    jr nc, jr_000_2623                            ; $25e3: $30 $3e

    push bc                                       ; $25e5: $c5

Jump_000_25e6:
    push de                                       ; $25e6: $d5
    push hl                                       ; $25e7: $e5
    ldh a, [$a3]                                  ; $25e8: $f0 $a3
    ld c, a                                       ; $25ea: $4f
    ldh a, [$a4]                                  ; $25eb: $f0 $a4
    sub c                                         ; $25ed: $91
    jr nc, jr_000_25f1                            ; $25ee: $30 $01

    xor a                                         ; $25f0: $af

jr_000_25f1:
    ld b, a                                       ; $25f1: $47
    ld a, $7c                                     ; $25f2: $3e $7c

Jump_000_25f4:
    sub b                                         ; $25f4: $90
    ld c, a                                       ; $25f5: $4f
    ld a, b                                       ; $25f6: $78

jr_000_25f7:
    push af                                       ; $25f7: $f5
    ldh a, [$a2]                                  ; $25f8: $f0 $a2
    add a                                         ; $25fa: $87
    jr nc, jr_000_2605                            ; $25fb: $30 $08

Jump_000_25fd:
    ld a, c                                       ; $25fd: $79
    and $04                                       ; $25fe: $e6 $04

Call_000_2600:
    call z, Call_000_2632                         ; $2600: $cc $32 $26
    jr jr_000_2614                                ; $2603: $18 $0f

jr_000_2605:
    ld hl, $c200                                  ; $2605: $21 $00 $c2
    ld de, $c100                                  ; $2608: $11 $00 $c1
    ld b, $40                                     ; $260b: $06 $40
    srl c                                         ; $260d: $cb $39
    srl c                                         ; $260f: $cb $39
    call Call_000_255a                            ; $2611: $cd $5a $25

jr_000_2614:
    pop af                                        ; $2614: $f1
    and a                                         ; $2615: $a7
    jr nz, jr_000_261a                            ; $2616: $20 $02

    ldh [$a2], a                                  ; $2618: $e0 $a2

jr_000_261a:
    ldh [$a4], a                                  ; $261a: $e0 $a4
    ld a, $03                                     ; $261c: $3e $03
    ldh [$9d], a                                  ; $261e: $e0 $9d
    pop hl                                        ; $2620: $e1
    pop de                                        ; $2621: $d1
    pop bc                                        ; $2622: $c1

jr_000_2623:
    pop af                                        ; $2623: $f1
    ret                                           ; $2624: $c9


Call_000_2625:
    push af                                       ; $2625: $f5

jr_000_2626:
    ldh a, [$a2]                                  ; $2626: $f0 $a2
    and a                                         ; $2628: $a7
    jr z, jr_000_2630                             ; $2629: $28 $05

    call Call_000_2e3b                            ; $262b: $cd $3b $2e
    jr jr_000_2626                                ; $262e: $18 $f6

jr_000_2630:
    pop af                                        ; $2630: $f1
    ret                                           ; $2631: $c9


Call_000_2632:
    push af                                       ; $2632: $f5
    ld a, c                                       ; $2633: $79
    and $78                                       ; $2634: $e6 $78
    ld d, a                                       ; $2636: $57
    rrca                                          ; $2637: $0f
    rrca                                          ; $2638: $0f
    ld e, a                                       ; $2639: $5f
    swap a                                        ; $263a: $cb $37
    rrca                                          ; $263c: $0f
    ld l, a                                       ; $263d: $6f
    ld h, $00                                     ; $263e: $26 $00
    add hl, hl                                    ; $2640: $29
    add hl, hl                                    ; $2641: $29
    add hl, de                                    ; $2642: $19
    ld d, h                                       ; $2643: $54

Jump_000_2644:
    ld e, l                                       ; $2644: $5d
    ld hl, $c200                                  ; $2645: $21 $00 $c2
    ld bc, $c100                                  ; $2648: $01 $00 $c1
    ld a, $40                                     ; $264b: $3e $40

jr_000_264d:
    push af                                       ; $264d: $f5
    push de                                       ; $264e: $d5
    push bc                                       ; $264f: $c5
    ld a, [hl+]                                   ; $2650: $2a
    and $df                                       ; $2651: $e6 $df
    add e                                         ; $2653: $83
    ld c, a                                       ; $2654: $4f
    ld a, [hl+]                                   ; $2655: $2a
    res 2, a                                      ; $2656: $cb $97
    adc d                                         ; $2658: $8a
    ld b, a                                       ; $2659: $47
    bit 7, a                                      ; $265a: $cb $7f
    jr z, jr_000_2660                             ; $265c: $28 $02

    or $78                                        ; $265e: $f6 $78

jr_000_2660:
    bit 2, a                                      ; $2660: $cb $57

Call_000_2662:
    jr z, jr_000_266b                             ; $2662: $28 $07

    and $fc                                       ; $2664: $e6 $fc
    dec a                                         ; $2666: $3d
    set 7, c                                      ; $2667: $cb $f9
    set 6, c                                      ; $2669: $cb $f1

jr_000_266b:
    ld b, a                                       ; $266b: $47
    ld a, c                                       ; $266c: $79
    bit 5, a                                      ; $266d: $cb $6f
    jr z, jr_000_2674                             ; $266f: $28 $03

    and $e0                                       ; $2671: $e6 $e0
    dec a                                         ; $2673: $3d

jr_000_2674:
    pop de                                        ; $2674: $d1
    ld [de], a                                    ; $2675: $12
    inc de                                        ; $2676: $13

Call_000_2677:
Jump_000_2677:
    ld a, b                                       ; $2677: $78

Call_000_2678:
    ld [de], a                                    ; $2678: $12
    inc de                                        ; $2679: $13
    ld b, d                                       ; $267a: $42
    ld c, e                                       ; $267b: $4b
    pop de                                        ; $267c: $d1
    pop af                                        ; $267d: $f1
    dec a                                         ; $267e: $3d
    jr nz, jr_000_264d                            ; $267f: $20 $cc

    pop af                                        ; $2681: $f1

Call_000_2682:
Jump_000_2682:
    ret                                           ; $2682: $c9


Call_000_2683:
    xor a                                         ; $2683: $af
    ldh [$9b], a                                  ; $2684: $e0 $9b
    ldh [$9c], a                                  ; $2686: $e0 $9c

Call_000_2688:
    ldh a, [$9c]                                  ; $2688: $f0 $9c
    ldh [$9b], a                                  ; $268a: $e0 $9b
    ld h, $c0                                     ; $268c: $26 $c0
    ld l, a                                       ; $268e: $6f
    ld a, $a0                                     ; $268f: $3e $a0
    sub l                                         ; $2691: $95

Jump_000_2692:
    ret z                                         ; $2692: $c8

Call_000_2693:
    rra                                           ; $2693: $1f
    rra                                           ; $2694: $1f
    ld c, a                                       ; $2695: $4f
    xor a                                         ; $2696: $af

jr_000_2697:
    ld [hl+], a                                   ; $2697: $22
    ld [hl+], a                                   ; $2698: $22
    ld [hl+], a                                   ; $2699: $22
    ld [hl+], a                                   ; $269a: $22
    dec c                                         ; $269b: $0d
    jr nz, jr_000_2697                            ; $269c: $20 $f9

Jump_000_269e:
    ret                                           ; $269e: $c9


Call_000_269f:
    ldh a, [$9b]                                  ; $269f: $f0 $9b
    ldh [$9c], a                                  ; $26a1: $e0 $9c
    ret                                           ; $26a3: $c9


Call_000_26a4:
    ldh a, [$9b]                                  ; $26a4: $f0 $9b
    cp $a0                                        ; $26a6: $fe $a0
    ret z                                         ; $26a8: $c8

    ld h, $c0                                     ; $26a9: $26 $c0
    ld l, a                                       ; $26ab: $6f
    bit 5, b                                      ; $26ac: $cb $68
    jr nz, jr_000_26cd                            ; $26ae: $20 $1d

    ld [hl], e                                    ; $26b0: $73
    inc l                                         ; $26b1: $2c
    ld [hl], d                                    ; $26b2: $72
    inc l                                         ; $26b3: $2c
    ld [hl], c                                    ; $26b4: $71
    inc l                                         ; $26b5: $2c
    ld [hl], b                                    ; $26b6: $70
    inc l                                         ; $26b7: $2c
    inc c                                         ; $26b8: $0c
    inc c                                         ; $26b9: $0c
    ld a, l                                       ; $26ba: $7d
    cp $a0                                        ; $26bb: $fe $a0
    jr z, jr_000_26ca                             ; $26bd: $28 $0b

Jump_000_26bf:
    ld [hl], e                                    ; $26bf: $73
    inc l                                         ; $26c0: $2c
    ld a, d                                       ; $26c1: $7a
    add $08                                       ; $26c2: $c6 $08
    ld [hl+], a                                   ; $26c4: $22
    ld [hl], c                                    ; $26c5: $71
    inc l                                         ; $26c6: $2c
    ld [hl], b                                    ; $26c7: $70
    inc l                                         ; $26c8: $2c
    ld a, l                                       ; $26c9: $7d

jr_000_26ca:
    ldh [$9b], a                                  ; $26ca: $e0 $9b
    ret                                           ; $26cc: $c9


jr_000_26cd:
    ld [hl], e                                    ; $26cd: $73
    inc l                                         ; $26ce: $2c
    ld a, d                                       ; $26cf: $7a
    add $08                                       ; $26d0: $c6 $08
    ld [hl+], a                                   ; $26d2: $22

Jump_000_26d3:
    ld [hl], c                                    ; $26d3: $71
    inc l                                         ; $26d4: $2c
    ld [hl], b                                    ; $26d5: $70
    inc l                                         ; $26d6: $2c
    inc c                                         ; $26d7: $0c
    inc c                                         ; $26d8: $0c
    ld a, l                                       ; $26d9: $7d
    cp $a0                                        ; $26da: $fe $a0
    jr z, jr_000_26ca                             ; $26dc: $28 $ec

    ld [hl], e                                    ; $26de: $73
    inc l                                         ; $26df: $2c

Call_000_26e0:
    ld [hl], d                                    ; $26e0: $72
    inc l                                         ; $26e1: $2c
    ld [hl], c                                    ; $26e2: $71
    inc l                                         ; $26e3: $2c
    ld [hl], b                                    ; $26e4: $70
    inc l                                         ; $26e5: $2c
    ld a, l                                       ; $26e6: $7d
    ldh [$9b], a                                  ; $26e7: $e0 $9b
    ret                                           ; $26e9: $c9


Call_000_26ea:
    add sp, -$04                                  ; $26ea: $e8 $fc
    push hl                                       ; $26ec: $e5
    ld hl, sp+$02                                 ; $26ed: $f8 $02
    ld a, e                                       ; $26ef: $7b
    ld [hl+], a                                   ; $26f0: $22
    ld a, d                                       ; $26f1: $7a
    ld [hl+], a                                   ; $26f2: $22
    ld a, c                                       ; $26f3: $79
    ld [hl+], a                                   ; $26f4: $22
    ld [hl], b                                    ; $26f5: $70
    pop de                                        ; $26f6: $d1
    bit 5, b                                      ; $26f7: $cb $68
    jr nz, jr_000_2724                            ; $26f9: $20 $29

Call_000_26fb:
    ldh a, [$9b]                                  ; $26fb: $f0 $9b
    ld b, $c0                                     ; $26fd: $06 $c0

Call_000_26ff:
Jump_000_26ff:
    ld c, a                                       ; $26ff: $4f

Jump_000_2700:
jr_000_2700:
    ld a, c                                       ; $2700: $79
    cp $a0                                        ; $2701: $fe $a0
    jr z, jr_000_2750                             ; $2703: $28 $4b

    ld a, [de]                                    ; $2705: $1a
    cp $80                                        ; $2706: $fe $80

Call_000_2708:
    jr z, jr_000_2750                             ; $2708: $28 $46

    ld hl, sp+$00                                 ; $270a: $f8 $00

Call_000_270c:
    add [hl]                                      ; $270c: $86
    ld [bc], a                                    ; $270d: $02
    inc c                                         ; $270e: $0c
    inc de                                        ; $270f: $13
    inc hl                                        ; $2710: $23
    ld a, [de]                                    ; $2711: $1a

Jump_000_2712:
    add [hl]                                      ; $2712: $86
    ld [bc], a                                    ; $2713: $02

Jump_000_2714:
    inc c                                         ; $2714: $0c
    inc de                                        ; $2715: $13
    inc hl                                        ; $2716: $23
    ld a, [de]                                    ; $2717: $1a
    add [hl]                                      ; $2718: $86
    ld [bc], a                                    ; $2719: $02

Call_000_271a:
    inc c                                         ; $271a: $0c
    inc de                                        ; $271b: $13
    inc hl                                        ; $271c: $23
    ld a, [de]                                    ; $271d: $1a
    or [hl]                                       ; $271e: $b6
    ld [bc], a                                    ; $271f: $02
    inc c                                         ; $2720: $0c
    inc de                                        ; $2721: $13
    jr jr_000_2700                                ; $2722: $18 $dc

jr_000_2724:
    ldh a, [$9b]                                  ; $2724: $f0 $9b
    ld b, $c0                                     ; $2726: $06 $c0
    ld c, a                                       ; $2728: $4f

jr_000_2729:
    ld a, c                                       ; $2729: $79
    cp $a0                                        ; $272a: $fe $a0
    jr z, jr_000_2750                             ; $272c: $28 $22

    ld a, [de]                                    ; $272e: $1a
    cp $80                                        ; $272f: $fe $80
    jr z, jr_000_2750                             ; $2731: $28 $1d

    ld hl, sp+$00                                 ; $2733: $f8 $00
    add [hl]                                      ; $2735: $86
    ld [bc], a                                    ; $2736: $02
    inc c                                         ; $2737: $0c
    inc de                                        ; $2738: $13
    inc hl                                        ; $2739: $23
    ld a, [de]                                    ; $273a: $1a
    cpl                                           ; $273b: $2f

Call_000_273c:
    add $09                                       ; $273c: $c6 $09
    add [hl]                                      ; $273e: $86
    ld [bc], a                                    ; $273f: $02
    inc c                                         ; $2740: $0c
    inc de                                        ; $2741: $13
    inc hl                                        ; $2742: $23
    ld a, [de]                                    ; $2743: $1a
    add [hl]                                      ; $2744: $86
    ld [bc], a                                    ; $2745: $02
    inc c                                         ; $2746: $0c
    inc de                                        ; $2747: $13
    inc hl                                        ; $2748: $23
    ld a, [de]                                    ; $2749: $1a

Jump_000_274a:
    or [hl]                                       ; $274a: $b6
    ld [bc], a                                    ; $274b: $02
    inc c                                         ; $274c: $0c
    inc de                                        ; $274d: $13
    jr jr_000_2729                                ; $274e: $18 $d9

jr_000_2750:
    ld a, c                                       ; $2750: $79
    ldh [$9b], a                                  ; $2751: $e0 $9b
    add sp, $04                                   ; $2753: $e8 $04
    ret                                           ; $2755: $c9


Call_000_2756:
    push af                                       ; $2756: $f5
    push bc                                       ; $2757: $c5
    push de                                       ; $2758: $d5
    push hl                                       ; $2759: $e5
    push hl                                       ; $275a: $e5
    ld hl, $0810                                  ; $275b: $21 $10 $08
    add hl, de                                    ; $275e: $19
    ld d, h                                       ; $275f: $54
    ld e, l                                       ; $2760: $5d
    pop hl                                        ; $2761: $e1

jr_000_2762:
    push de                                       ; $2762: $d5
    push hl                                       ; $2763: $e5

jr_000_2764:
    ldh a, [$9b]                                  ; $2764: $f0 $9b
    cp $a0                                        ; $2766: $fe $a0
    jr nz, jr_000_2771                            ; $2768: $20 $07

    add sp, $04                                   ; $276a: $e8 $04
    pop hl                                        ; $276c: $e1
    pop de                                        ; $276d: $d1

Jump_000_276e:
    pop bc                                        ; $276e: $c1
    pop af                                        ; $276f: $f1
    ret                                           ; $2770: $c9


jr_000_2771:
    push hl                                       ; $2771: $e5
    ld h, $c0                                     ; $2772: $26 $c0
    ld l, a                                       ; $2774: $6f
    ld [hl], e                                    ; $2775: $73
    inc l                                         ; $2776: $2c

Jump_000_2777:
    ld [hl], d                                    ; $2777: $72
    inc l                                         ; $2778: $2c
    ld [hl], c                                    ; $2779: $71
    inc l                                         ; $277a: $2c
    ld [hl], b                                    ; $277b: $70
    inc l                                         ; $277c: $2c
    ld a, l                                       ; $277d: $7d
    ldh [$9b], a                                  ; $277e: $e0 $9b
    pop hl                                        ; $2780: $e1
    inc c                                         ; $2781: $0c
    inc c                                         ; $2782: $0c
    ld a, d                                       ; $2783: $7a
    add $08                                       ; $2784: $c6 $08

Call_000_2786:
    ld d, a                                       ; $2786: $57
    dec h                                         ; $2787: $25
    jr nz, jr_000_2764                            ; $2788: $20 $da

    pop hl                                        ; $278a: $e1
    pop de                                        ; $278b: $d1
    ld a, e                                       ; $278c: $7b
    add $10                                       ; $278d: $c6 $10
    ld e, a                                       ; $278f: $5f
    dec l                                         ; $2790: $2d
    jr nz, jr_000_2762                            ; $2791: $20 $cf

    pop hl                                        ; $2793: $e1
    pop de                                        ; $2794: $d1
    pop bc                                        ; $2795: $c1
    pop af                                        ; $2796: $f1
    ret                                           ; $2797: $c9


Call_000_2798:
    ldh a, [$9b]                                  ; $2798: $f0 $9b
    cp $a0                                        ; $279a: $fe $a0
    ret z                                         ; $279c: $c8

    ld h, $c0                                     ; $279d: $26 $c0
    ld l, a                                       ; $279f: $6f
    ld a, e                                       ; $27a0: $7b
    add $0c                                       ; $27a1: $c6 $0c
    ld e, a                                       ; $27a3: $5f
    ld a, d                                       ; $27a4: $7a
    add $04                                       ; $27a5: $c6 $04
    ld d, a                                       ; $27a7: $57
    ld [hl], e                                    ; $27a8: $73
    inc l                                         ; $27a9: $2c
    ld [hl], d                                    ; $27aa: $72
    inc l                                         ; $27ab: $2c
    ld [hl], c                                    ; $27ac: $71
    inc l                                         ; $27ad: $2c
    ld [hl], b                                    ; $27ae: $70
    inc l                                         ; $27af: $2c
    ld a, l                                       ; $27b0: $7d
    ldh [$9b], a                                  ; $27b1: $e0 $9b
    ret                                           ; $27b3: $c9


Call_000_27b4:
    push af                                       ; $27b4: $f5
    push bc                                       ; $27b5: $c5
    push de                                       ; $27b6: $d5
    push hl                                       ; $27b7: $e5
    push bc                                       ; $27b8: $c5
    ld a, [$c320]                                 ; $27b9: $fa $20 $c3
    ld c, a                                       ; $27bc: $4f
    ld a, [$c321]                                 ; $27bd: $fa $21 $c3
    ld b, a                                       ; $27c0: $47
    ld a, l                                       ; $27c1: $7d
    sub c                                         ; $27c2: $91
    ld l, a                                       ; $27c3: $6f
    ld a, h                                       ; $27c4: $7c
    sbc b                                         ; $27c5: $98
    ld h, a                                       ; $27c6: $67
    ld a, h                                       ; $27c7: $7c
    inc a                                         ; $27c8: $3c
    cp $16                                        ; $27c9: $fe $16
    jp nc, Jump_000_27f4                          ; $27cb: $d2 $f4 $27

    add hl, hl                                    ; $27ce: $29
    add hl, hl                                    ; $27cf: $29

Call_000_27d0:
    add hl, hl                                    ; $27d0: $29
    push hl                                       ; $27d1: $e5
    ld hl, $c322                                  ; $27d2: $21 $22 $c3
    ld a, [hl+]                                   ; $27d5: $2a
    ld b, [hl]                                    ; $27d6: $46
    ld c, a                                       ; $27d7: $4f
    ld l, e                                       ; $27d8: $6b
    ld h, d                                       ; $27d9: $62
    ld a, l                                       ; $27da: $7d
    sub c                                         ; $27db: $91
    ld l, a                                       ; $27dc: $6f
    ld a, h                                       ; $27dd: $7c
    sbc b                                         ; $27de: $98
    ld h, a                                       ; $27df: $67
    pop de                                        ; $27e0: $d1
    ld a, h                                       ; $27e1: $7c
    cp $14                                        ; $27e2: $fe $14
    jp nc, Jump_000_27f4                          ; $27e4: $d2 $f4 $27

    add hl, hl                                    ; $27e7: $29
    add hl, hl                                    ; $27e8: $29
    add hl, hl                                    ; $27e9: $29
    ld e, h                                       ; $27ea: $5c
    pop bc                                        ; $27eb: $c1
    call Call_000_26a4                            ; $27ec: $cd $a4 $26
    pop hl                                        ; $27ef: $e1
    pop de                                        ; $27f0: $d1
    pop bc                                        ; $27f1: $c1
    pop af                                        ; $27f2: $f1
    ret                                           ; $27f3: $c9


Jump_000_27f4:
    pop bc                                        ; $27f4: $c1
    pop hl                                        ; $27f5: $e1
    pop de                                        ; $27f6: $d1

Jump_000_27f7:
    pop bc                                        ; $27f7: $c1
    pop af                                        ; $27f8: $f1
    ret                                           ; $27f9: $c9


Call_000_27fa:
    push af                                       ; $27fa: $f5
    push bc                                       ; $27fb: $c5
    push de                                       ; $27fc: $d5
    push hl                                       ; $27fd: $e5
    push bc                                       ; $27fe: $c5
    ld a, [$c320]                                 ; $27ff: $fa $20 $c3
    ld c, a                                       ; $2802: $4f
    ld a, [$c321]                                 ; $2803: $fa $21 $c3
    ld b, a                                       ; $2806: $47
    ld a, l                                       ; $2807: $7d

Jump_000_2808:
    sub c                                         ; $2808: $91
    ld l, a                                       ; $2809: $6f
    ld a, h                                       ; $280a: $7c
    sbc b                                         ; $280b: $98
    ld h, a                                       ; $280c: $67
    ld a, h                                       ; $280d: $7c
    inc a                                         ; $280e: $3c
    cp $16                                        ; $280f: $fe $16
    jp nc, Jump_000_283a                          ; $2811: $d2 $3a $28

    add hl, hl                                    ; $2814: $29

Jump_000_2815:
    add hl, hl                                    ; $2815: $29
    add hl, hl                                    ; $2816: $29
    push hl                                       ; $2817: $e5
    ld hl, $c322                                  ; $2818: $21 $22 $c3
    ld a, [hl+]                                   ; $281b: $2a
    ld b, [hl]                                    ; $281c: $46
    ld c, a                                       ; $281d: $4f
    ld l, e                                       ; $281e: $6b
    ld h, d                                       ; $281f: $62

Call_000_2820:
    ld a, l                                       ; $2820: $7d
    sub c                                         ; $2821: $91
    ld l, a                                       ; $2822: $6f
    ld a, h                                       ; $2823: $7c
    sbc b                                         ; $2824: $98
    ld h, a                                       ; $2825: $67
    pop de                                        ; $2826: $d1
    ld a, h                                       ; $2827: $7c
    cp $13                                        ; $2828: $fe $13

Call_000_282a:
    jp nc, Jump_000_283a                          ; $282a: $d2 $3a $28

    add hl, hl                                    ; $282d: $29
    add hl, hl                                    ; $282e: $29
    add hl, hl                                    ; $282f: $29
    ld e, h                                       ; $2830: $5c
    pop bc                                        ; $2831: $c1
    call Call_000_2798                            ; $2832: $cd $98 $27
    pop hl                                        ; $2835: $e1
    pop de                                        ; $2836: $d1
    pop bc                                        ; $2837: $c1
    pop af                                        ; $2838: $f1
    ret                                           ; $2839: $c9


Jump_000_283a:
    pop bc                                        ; $283a: $c1
    pop hl                                        ; $283b: $e1
    pop de                                        ; $283c: $d1
    pop bc                                        ; $283d: $c1
    pop af                                        ; $283e: $f1
    ret                                           ; $283f: $c9


    db $06, $08, $3f, $cd, $a7, $ef, $be, $fb, $ef, $be, $fb, $da, $73, $fc, $06, $08
    db $0f, $c3, $6c, $3a, $c3, $ec, $0e, $c3, $ef, $3a, $b3, $ff, $06, $08, $3f, $cd
    db $a7, $ef, $bf, $db, $da, $7e, $7f, $ea, $bf, $ff, $06, $08, $ff, $ce, $a7, $ff
    db $b3, $a7, $3f, $bf, $fb, $ea, $7f, $fc, $06, $08, $0f, $c3, $6c, $da, $ce, $ec
    db $ee, $fe, $ab, $fe, $f0, $fc, $06, $08, $ff, $fe, $ab, $ef, $fe, $a7, $ff, $be
    db $fb, $da, $73, $fc, $06, $08, $3f, $cd, $a7, $ef, $fe, $a7, $ef, $be, $fb, $da
    db $73, $fc, $06, $08, $ff, $fe, $ab, $fd, $b3, $67, $39, $c3, $b0, $3b, $03, $f0
    db $06, $08, $3f, $cd, $a7, $ef, $bd, $a7, $ef, $be, $fb, $da, $73, $fc, $06, $08
    db $3f, $cd, $a7, $ef, $be, $fb, $da, $bf, $fb, $da, $73, $fc, $06, $08, $3f, $cd
    db $a7, $ef, $bf, $fb, $0e, $70, $fc, $0e, $c0, $fc, $40, $28, $4e, $28, $5c, $28
    db $6a, $28, $78, $28, $86, $28, $94, $28, $a2, $28, $b0, $28, $be, $28

    call z, $cc28                                 ; $28ee: $cc $28 $cc
    jr z, @-$32                                   ; $28f1: $28 $cc

    jr z, @-$32                                   ; $28f3: $28 $cc

    db $28                                        ; $28f5: $28

    db $cc, $28, $cc, $28

Call_000_28fa:
Jump_000_28fa:
    push af                                       ; $28fa: $f5
    push bc                                       ; $28fb: $c5

Call_000_28fc:
    push de                                       ; $28fc: $d5

Jump_000_28fd:
    push hl                                       ; $28fd: $e5
    add sp, -$10                                  ; $28fe: $e8 $f0

Call_000_2900:
Jump_000_2900:
    push de                                       ; $2900: $d5
    push hl                                       ; $2901: $e5

Jump_000_2902:
    ld hl, sp+$06                                 ; $2902: $f8 $06

Jump_000_2904:
    ld d, h                                       ; $2904: $54
    ld e, l                                       ; $2905: $5d
    pop hl                                        ; $2906: $e1
    call Call_000_21f0                            ; $2907: $cd $f0 $21
    ld hl, sp+$04                                 ; $290a: $f8 $04
    pop de                                        ; $290c: $d1
    call Call_000_2933                            ; $290d: $cd $33 $29
    add sp, $10                                   ; $2910: $e8 $10
    pop hl                                        ; $2912: $e1
    pop de                                        ; $2913: $d1
    pop bc                                        ; $2914: $c1
    pop af                                        ; $2915: $f1
    ret                                           ; $2916: $c9


Call_000_2917:
    push af                                       ; $2917: $f5
    push bc                                       ; $2918: $c5
    push de                                       ; $2919: $d5
    push hl                                       ; $291a: $e5
    sub $30                                       ; $291b: $d6 $30
    and $1f                                       ; $291d: $e6 $1f
    add a                                         ; $291f: $87
    ld hl, $28da                                  ; $2920: $21 $da $28
    add l                                         ; $2923: $85
    ld l, a                                       ; $2924: $6f
    jr nc, jr_000_2928                            ; $2925: $30 $01

    inc h                                         ; $2927: $24

jr_000_2928:
    ld a, [hl+]                                   ; $2928: $2a
    ld h, [hl]                                    ; $2929: $66
    ld l, a                                       ; $292a: $6f
    call Call_000_2962                            ; $292b: $cd $62 $29

Jump_000_292e:
    pop hl                                        ; $292e: $e1
    pop de                                        ; $292f: $d1
    pop bc                                        ; $2930: $c1
    pop af                                        ; $2931: $f1
    ret                                           ; $2932: $c9


Call_000_2933:
    push af                                       ; $2933: $f5
    push bc                                       ; $2934: $c5
    push de                                       ; $2935: $d5
    push hl                                       ; $2936: $e5

jr_000_2937:
    ld a, [hl+]                                   ; $2937: $2a

Call_000_2938:
    and a                                         ; $2938: $a7
    jr z, jr_000_295d                             ; $2939: $28 $22

    sub $30                                       ; $293b: $d6 $30
    jr nc, jr_000_2945                            ; $293d: $30 $06

    ld a, $06                                     ; $293f: $3e $06
    add b                                         ; $2941: $80
    ld b, a                                       ; $2942: $47
    jr jr_000_2937                                ; $2943: $18 $f2

jr_000_2945:
    and $1f                                       ; $2945: $e6 $1f
    add a                                         ; $2947: $87
    push hl                                       ; $2948: $e5

Call_000_2949:
    ld hl, $28da                                  ; $2949: $21 $da $28
    add l                                         ; $294c: $85
    ld l, a                                       ; $294d: $6f
    jr nc, jr_000_2951                            ; $294e: $30 $01

    inc h                                         ; $2950: $24

jr_000_2951:
    ld a, [hl+]                                   ; $2951: $2a
    ld h, [hl]                                    ; $2952: $66
    ld l, a                                       ; $2953: $6f
    call Call_000_2962                            ; $2954: $cd $62 $29
    ld a, [hl]                                    ; $2957: $7e
    add b                                         ; $2958: $80
    ld b, a                                       ; $2959: $47
    pop hl                                        ; $295a: $e1
    jr jr_000_2937                                ; $295b: $18 $da

jr_000_295d:
    pop hl                                        ; $295d: $e1
    pop de                                        ; $295e: $d1
    pop bc                                        ; $295f: $c1
    pop af                                        ; $2960: $f1
    ret                                           ; $2961: $c9


Call_000_2962:
    push af                                       ; $2962: $f5
    push bc                                       ; $2963: $c5
    push de                                       ; $2964: $d5
    push hl                                       ; $2965: $e5
    push hl                                       ; $2966: $e5

Call_000_2967:
    ld hl, $29e3                                  ; $2967: $21 $e3 $29
    ld a, b                                       ; $296a: $78
    and $07                                       ; $296b: $e6 $07
    add l                                         ; $296d: $85

Call_000_296e:
    ld l, a                                       ; $296e: $6f
    jr nc, jr_000_2972                            ; $296f: $30 $01

    inc h                                         ; $2971: $24

jr_000_2972:
    ld a, [hl]                                    ; $2972: $7e
    ld [$c283], a                                 ; $2973: $ea $83 $c2
    pop hl                                        ; $2976: $e1
    push hl                                       ; $2977: $e5
    ld a, b                                       ; $2978: $78
    and $f8                                       ; $2979: $e6 $f8

Call_000_297b:
    ld l, a                                       ; $297b: $6f
    ld h, $00                                     ; $297c: $26 $00
    add hl, hl                                    ; $297e: $29
    add hl, hl                                    ; $297f: $29

Call_000_2980:
    ld b, $00                                     ; $2980: $06 $00
    sla c                                         ; $2982: $cb $21
    add hl, bc                                    ; $2984: $09

Call_000_2985:
    add hl, de                                    ; $2985: $19
    pop de                                        ; $2986: $d1
    ld a, [de]                                    ; $2987: $1a
    inc de                                        ; $2988: $13
    ld [$c282], a                                 ; $2989: $ea $82 $c2
    ld a, [de]                                    ; $298c: $1a
    inc de                                        ; $298d: $13
    ld [$c281], a                                 ; $298e: $ea $81 $c2
    ld c, $80                                     ; $2991: $0e $80

jr_000_2993:
    push hl                                       ; $2993: $e5
    ld a, [$c283]                                 ; $2994: $fa $83 $c2
    ld b, a                                       ; $2997: $47
    ld a, [$c282]                                 ; $2998: $fa $82 $c2
    ld [$c280], a                                 ; $299b: $ea $80 $c2

Jump_000_299e:
    ld a, [de]                                    ; $299e: $1a
    and c                                         ; $299f: $a1
    jr z, jr_000_29a6                             ; $29a0: $28 $04

    ld a, b                                       ; $29a2: $78
    or [hl]                                       ; $29a3: $b6
    jr jr_000_29a9                                ; $29a4: $18 $03

jr_000_29a6:
    ld a, b                                       ; $29a6: $78
    cpl                                           ; $29a7: $2f
    and [hl]                                      ; $29a8: $a6

jr_000_29a9:
    ld [hl+], a                                   ; $29a9: $22
    rrc c                                         ; $29aa: $cb $09
    ld a, [de]                                    ; $29ac: $1a
    and c                                         ; $29ad: $a1

Call_000_29ae:
    jr z, jr_000_29b4                             ; $29ae: $28 $04

    ld a, b                                       ; $29b0: $78
    or [hl]                                       ; $29b1: $b6
    jr jr_000_29b7                                ; $29b2: $18 $03

jr_000_29b4:
    ld a, b                                       ; $29b4: $78
    cpl                                           ; $29b5: $2f
    and [hl]                                      ; $29b6: $a6

jr_000_29b7:
    ld [hl-], a                                   ; $29b7: $32
    rrc c                                         ; $29b8: $cb $09
    jr nc, jr_000_29bd                            ; $29ba: $30 $01

    inc de                                        ; $29bc: $13

jr_000_29bd:
    rrc b                                         ; $29bd: $cb $08
    jr nc, jr_000_29c8                            ; $29bf: $30 $07

    ld a, $20                                     ; $29c1: $3e $20
    add l                                         ; $29c3: $85
    ld l, a                                       ; $29c4: $6f
    jr nc, jr_000_29c8                            ; $29c5: $30 $01

    inc h                                         ; $29c7: $24

jr_000_29c8:
    ld a, [$c280]                                 ; $29c8: $fa $80 $c2
    dec a                                         ; $29cb: $3d
    ld [$c280], a                                 ; $29cc: $ea $80 $c2
    jp nz, Jump_000_299e                          ; $29cf: $c2 $9e $29

    pop hl                                        ; $29d2: $e1
    inc hl                                        ; $29d3: $23
    inc hl                                        ; $29d4: $23
    ld a, [$c281]                                 ; $29d5: $fa $81 $c2
    dec a                                         ; $29d8: $3d
    ld [$c281], a                                 ; $29d9: $ea $81 $c2
    jr nz, jr_000_2993                            ; $29dc: $20 $b5

Call_000_29de:
    pop hl                                        ; $29de: $e1
    pop de                                        ; $29df: $d1

Jump_000_29e0:
    pop bc                                        ; $29e0: $c1
    pop af                                        ; $29e1: $f1
    ret                                           ; $29e2: $c9


    db $80, $40, $20, $10, $08, $04, $02, $01

Call_000_29eb:
    xor a                                         ; $29eb: $af
    ldh [$ba], a                                  ; $29ec: $e0 $ba
    ldh a, [$b8]                                  ; $29ee: $f0 $b8
    or a                                          ; $29f0: $b7
    jr z, jr_000_2a28                             ; $29f1: $28 $35

    ld a, $01                                     ; $29f3: $3e $01
    ldh [rVBK], a                                 ; $29f5: $e0 $4f
    ld bc, $c300                                  ; $29f7: $01 $00 $c3
    ld hl, $c326                                  ; $29fa: $21 $26 $c3
    ld a, [hl+]                                   ; $29fd: $2a
    ld d, [hl]                                    ; $29fe: $56
    ld e, a                                       ; $29ff: $5f

Call_000_2a00:
Jump_000_2a00:
    ld a, $01                                     ; $2a00: $3e $01

Jump_000_2a02:
    ld hl, $ff51                                  ; $2a02: $21 $51 $ff
    ld [hl], b                                    ; $2a05: $70

Call_000_2a06:
    inc hl                                        ; $2a06: $23
    ld [hl], c                                    ; $2a07: $71
    inc hl                                        ; $2a08: $23
    ld [hl], d                                    ; $2a09: $72

Call_000_2a0a:
Jump_000_2a0a:
    inc hl                                        ; $2a0a: $23
    ld [hl], e                                    ; $2a0b: $73
    inc hl                                        ; $2a0c: $23
    ld [hl], a                                    ; $2a0d: $77
    xor a                                         ; $2a0e: $af
    ldh [rVBK], a                                 ; $2a0f: $e0 $4f
    ld bc, $c340                                  ; $2a11: $01 $40 $c3
    ld hl, $c326                                  ; $2a14: $21 $26 $c3
    ld a, [hl+]                                   ; $2a17: $2a
    ld d, [hl]                                    ; $2a18: $56
    ld e, a                                       ; $2a19: $5f
    ld a, $01                                     ; $2a1a: $3e $01
    ld hl, $ff51                                  ; $2a1c: $21 $51 $ff

Call_000_2a1f:
    ld [hl], b                                    ; $2a1f: $70
    inc hl                                        ; $2a20: $23
    ld [hl], c                                    ; $2a21: $71
    inc hl                                        ; $2a22: $23
    ld [hl], d                                    ; $2a23: $72
    inc hl                                        ; $2a24: $23
    ld [hl], e                                    ; $2a25: $73
    inc hl                                        ; $2a26: $23
    ld [hl], a                                    ; $2a27: $77

jr_000_2a28:
    ldh a, [$b9]                                  ; $2a28: $f0 $b9

Call_000_2a2a:
    or a                                          ; $2a2a: $b7

Jump_000_2a2b:
    jr z, jr_000_2a64                             ; $2a2b: $28 $37

    ld a, $01                                     ; $2a2d: $3e $01
    ldh [$ba], a                                  ; $2a2f: $e0 $ba
    ldh [rVBK], a                                 ; $2a31: $e0 $4f
    ld de, $c380                                  ; $2a33: $11 $80 $c3
    ld a, [$c328]                                 ; $2a36: $fa $28 $c3
    ld l, a                                       ; $2a39: $6f
    ld h, $98                                     ; $2a3a: $26 $98
    ld b, $20                                     ; $2a3c: $06 $20

jr_000_2a3e:
    ld a, [de]                                    ; $2a3e: $1a
    inc de                                        ; $2a3f: $13
    ld [hl], a                                    ; $2a40: $77
    ld a, b                                       ; $2a41: $78

Jump_000_2a42:
    ld bc, $0020                                  ; $2a42: $01 $20 $00

Jump_000_2a45:
    add hl, bc                                    ; $2a45: $09
    ld b, a                                       ; $2a46: $47
    dec b                                         ; $2a47: $05
    jr nz, jr_000_2a3e                            ; $2a48: $20 $f4

    xor a                                         ; $2a4a: $af
    ldh [rVBK], a                                 ; $2a4b: $e0 $4f
    ld de, $c3c0                                  ; $2a4d: $11 $c0 $c3
    ld a, [$c328]                                 ; $2a50: $fa $28 $c3
    ld l, a                                       ; $2a53: $6f
    ld h, $98                                     ; $2a54: $26 $98
    ld b, $20                                     ; $2a56: $06 $20

jr_000_2a58:
    ld a, [de]                                    ; $2a58: $1a
    inc de                                        ; $2a59: $13
    ld [hl], a                                    ; $2a5a: $77
    ld a, b                                       ; $2a5b: $78
    ld bc, $0020                                  ; $2a5c: $01 $20 $00
    add hl, bc                                    ; $2a5f: $09
    ld b, a                                       ; $2a60: $47
    dec b                                         ; $2a61: $05
    jr nz, jr_000_2a58                            ; $2a62: $20 $f4

jr_000_2a64:
    xor a                                         ; $2a64: $af
    ldh [$b8], a                                  ; $2a65: $e0 $b8

Call_000_2a67:
    ldh [$b9], a                                  ; $2a67: $e0 $b9
    ldh a, [$ba]                                  ; $2a69: $f0 $ba

Jump_000_2a6b:
    ret                                           ; $2a6b: $c9


Call_000_2a6c:
    ld a, [$c323]                                 ; $2a6c: $fa $23 $c3
    add c                                         ; $2a6f: $81
    and $3f                                       ; $2a70: $e6 $3f
    ld h, $00                                     ; $2a72: $26 $00
    ld l, a                                       ; $2a74: $6f
    add hl, hl                                    ; $2a75: $29
    add hl, hl                                    ; $2a76: $29
    add hl, hl                                    ; $2a77: $29
    add hl, hl                                    ; $2a78: $29
    add hl, hl                                    ; $2a79: $29
    add hl, hl                                    ; $2a7a: $29
    ld a, [$c321]                                 ; $2a7b: $fa $21 $c3
    add b                                         ; $2a7e: $80
    and $3f                                       ; $2a7f: $e6 $3f
    ld d, $00                                     ; $2a81: $16 $00

Call_000_2a83:
    ld e, a                                       ; $2a83: $5f
    add hl, de                                    ; $2a84: $19
    ld de, $d000                                  ; $2a85: $11 $00 $d0
    add hl, de                                    ; $2a88: $19
    ret                                           ; $2a89: $c9


Call_000_2a8a:
    ld a, [$c323]                                 ; $2a8a: $fa $23 $c3
    add c                                         ; $2a8d: $81
    and $1f                                       ; $2a8e: $e6 $1f
    ld h, $00                                     ; $2a90: $26 $00
    ld l, a                                       ; $2a92: $6f
    add hl, hl                                    ; $2a93: $29

Call_000_2a94:
    add hl, hl                                    ; $2a94: $29
    add hl, hl                                    ; $2a95: $29
    add hl, hl                                    ; $2a96: $29
    add hl, hl                                    ; $2a97: $29
    ld de, $9800                                  ; $2a98: $11 $00 $98
    add hl, de                                    ; $2a9b: $19
    ld a, l                                       ; $2a9c: $7d
    ld [$c326], a                                 ; $2a9d: $ea $26 $c3
    ld a, h                                       ; $2aa0: $7c
    ld [$c327], a                                 ; $2aa1: $ea $27 $c3
    ld a, [$c321]                                 ; $2aa4: $fa $21 $c3
    add b                                         ; $2aa7: $80
    and $1f                                       ; $2aa8: $e6 $1f
    ld h, $00                                     ; $2aaa: $26 $00
    ld l, a                                       ; $2aac: $6f
    ld de, $c300                                  ; $2aad: $11 $00 $c3
    add hl, de                                    ; $2ab0: $19
    push hl                                       ; $2ab1: $e5
    call Call_000_2a6c                            ; $2ab2: $cd $6c $2a
    pop de                                        ; $2ab5: $d1
    push hl                                       ; $2ab6: $e5
    ld a, $02                                     ; $2ab7: $3e $02
    ldh [$96], a                                  ; $2ab9: $e0 $96
    ldh [rSVBK], a                                ; $2abb: $e0 $70
    ld c, $20                                     ; $2abd: $0e $20

jr_000_2abf:
    ld a, [hl+]                                   ; $2abf: $2a
    ld [de], a                                    ; $2ac0: $12

Jump_000_2ac1:
    ld a, l                                       ; $2ac1: $7d
    and $3f                                       ; $2ac2: $e6 $3f
    jr nz, jr_000_2acc                            ; $2ac4: $20 $06

    ld a, c                                       ; $2ac6: $79

Call_000_2ac7:
Jump_000_2ac7:
    ld bc, $ffc0                                  ; $2ac7: $01 $c0 $ff
    add hl, bc                                    ; $2aca: $09
    ld c, a                                       ; $2acb: $4f

jr_000_2acc:
    inc e                                         ; $2acc: $1c
    res 5, e                                      ; $2acd: $cb $ab
    dec c                                         ; $2acf: $0d
    jr nz, jr_000_2abf                            ; $2ad0: $20 $ed

    pop hl                                        ; $2ad2: $e1
    ld a, $03                                     ; $2ad3: $3e $03
    ldh [$96], a                                  ; $2ad5: $e0 $96
    ldh [rSVBK], a                                ; $2ad7: $e0 $70
    ld bc, $4020                                  ; $2ad9: $01 $20 $40
    ld a, e                                       ; $2adc: $7b
    add b                                         ; $2add: $80
    ld e, a                                       ; $2ade: $5f

jr_000_2adf:
    ld a, [hl+]                                   ; $2adf: $2a

Jump_000_2ae0:
    ld [de], a                                    ; $2ae0: $12
    ld a, l                                       ; $2ae1: $7d

Jump_000_2ae2:
    and $3f                                       ; $2ae2: $e6 $3f
    jr nz, jr_000_2aec                            ; $2ae4: $20 $06

    ld a, c                                       ; $2ae6: $79
    ld bc, $ffc0                                  ; $2ae7: $01 $c0 $ff
    add hl, bc                                    ; $2aea: $09
    ld c, a                                       ; $2aeb: $4f

jr_000_2aec:
    inc e                                         ; $2aec: $1c
    res 5, e                                      ; $2aed: $cb $ab

Call_000_2aef:
    dec c                                         ; $2aef: $0d
    jr nz, jr_000_2adf                            ; $2af0: $20 $ed

    ld a, $01                                     ; $2af2: $3e $01
    ldh [$b8], a                                  ; $2af4: $e0 $b8
    ret                                           ; $2af6: $c9


Call_000_2af7:
    ld a, [$c321]                                 ; $2af7: $fa $21 $c3
    add b                                         ; $2afa: $80
    and $1f                                       ; $2afb: $e6 $1f
    ld [$c328], a                                 ; $2afd: $ea $28 $c3
    ld d, $00                                     ; $2b00: $16 $00
    ld e, a                                       ; $2b02: $5f
    ld a, [$c323]                                 ; $2b03: $fa $23 $c3
    add c                                         ; $2b06: $81
    and $1f                                       ; $2b07: $e6 $1f
    ld h, $00                                     ; $2b09: $26 $00

Jump_000_2b0b:
    ld l, a                                       ; $2b0b: $6f
    ld de, $c380                                  ; $2b0c: $11 $80 $c3
    add hl, de                                    ; $2b0f: $19
    push hl                                       ; $2b10: $e5

Jump_000_2b11:
    call Call_000_2a6c                            ; $2b11: $cd $6c $2a
    pop de                                        ; $2b14: $d1
    push hl                                       ; $2b15: $e5
    ld a, $02                                     ; $2b16: $3e $02
    ldh [$96], a                                  ; $2b18: $e0 $96
    ldh [rSVBK], a                                ; $2b1a: $e0 $70
    ld c, $20                                     ; $2b1c: $0e $20

jr_000_2b1e:
    ld a, [hl]                                    ; $2b1e: $7e
    ld [de], a                                    ; $2b1f: $12
    ld a, c                                       ; $2b20: $79
    ld bc, $0040                                  ; $2b21: $01 $40 $00
    add hl, bc                                    ; $2b24: $09
    ld c, a                                       ; $2b25: $4f
    res 5, h                                      ; $2b26: $cb $ac
    set 4, h                                      ; $2b28: $cb $e4

Jump_000_2b2a:
    inc e                                         ; $2b2a: $1c

Jump_000_2b2b:
    res 5, e                                      ; $2b2b: $cb $ab
    dec c                                         ; $2b2d: $0d
    jr nz, jr_000_2b1e                            ; $2b2e: $20 $ee

    pop hl                                        ; $2b30: $e1
    ld a, $03                                     ; $2b31: $3e $03
    ldh [$96], a                                  ; $2b33: $e0 $96
    ldh [rSVBK], a                                ; $2b35: $e0 $70
    ld bc, $4020                                  ; $2b37: $01 $20 $40
    ld a, e                                       ; $2b3a: $7b
    add b                                         ; $2b3b: $80
    ld e, a                                       ; $2b3c: $5f

jr_000_2b3d:
    ld a, [hl]                                    ; $2b3d: $7e
    ld [de], a                                    ; $2b3e: $12
    ld a, c                                       ; $2b3f: $79
    ld bc, $0040                                  ; $2b40: $01 $40 $00
    add hl, bc                                    ; $2b43: $09
    ld c, a                                       ; $2b44: $4f
    res 5, h                                      ; $2b45: $cb $ac

Jump_000_2b47:
    set 4, h                                      ; $2b47: $cb $e4
    inc e                                         ; $2b49: $1c
    res 5, e                                      ; $2b4a: $cb $ab
    dec c                                         ; $2b4c: $0d
    jr nz, jr_000_2b3d                            ; $2b4d: $20 $ee

    ld a, $01                                     ; $2b4f: $3e $01
    ldh [$b9], a                                  ; $2b51: $e0 $b9
    ret                                           ; $2b53: $c9


Call_000_2b54:
    push af                                       ; $2b54: $f5
    push bc                                       ; $2b55: $c5
    push de                                       ; $2b56: $d5
    push hl                                       ; $2b57: $e5
    ld hl, $ffce                                  ; $2b58: $21 $ce $ff
    bit 0, [hl]                                   ; $2b5b: $cb $46
    jr z, jr_000_2b67                             ; $2b5d: $28 $08

    res 0, [hl]                                   ; $2b5f: $cb $86

Call_000_2b61:
    ld a, [$c33e]                                 ; $2b61: $fa $3e $c3
    rst $18                                       ; $2b64: $df
    inc b                                         ; $2b65: $04
    ld a, [hl]                                    ; $2b66: $7e

jr_000_2b67:
    pop hl                                        ; $2b67: $e1
    pop de                                        ; $2b68: $d1
    pop bc                                        ; $2b69: $c1
    pop af                                        ; $2b6a: $f1

Call_000_2b6b:
Jump_000_2b6b:
    ret                                           ; $2b6b: $c9


Call_000_2b6c:
    push hl                                       ; $2b6c: $e5

Call_000_2b6d:
    ld hl, $ffce                                  ; $2b6d: $21 $ce $ff
    bit 0, [hl]                                   ; $2b70: $cb $46
    jr z, jr_000_2b78                             ; $2b72: $28 $04

    res 0, [hl]                                   ; $2b74: $cb $86
    rst $08                                       ; $2b76: $cf
    nop                                           ; $2b77: $00

jr_000_2b78:
    pop hl                                        ; $2b78: $e1
    ret                                           ; $2b79: $c9


Call_000_2b7a:
    push af                                       ; $2b7a: $f5
    push bc                                       ; $2b7b: $c5
    push de                                       ; $2b7c: $d5
    push hl                                       ; $2b7d: $e5
    ld a, [$c818]                                 ; $2b7e: $fa $18 $c8

Call_000_2b81:
    and $01                                       ; $2b81: $e6 $01

Call_000_2b83:
Jump_000_2b83:
    ld c, a                                       ; $2b83: $4f
    ldh a, [$ce]                                  ; $2b84: $f0 $ce
    and $fe                                       ; $2b86: $e6 $fe
    or c                                          ; $2b88: $b1
    ldh [$ce], a                                  ; $2b89: $e0 $ce
    bit 0, a                                      ; $2b8b: $cb $47
    jr z, jr_000_2b93                             ; $2b8d: $28 $04

    xor a                                         ; $2b8f: $af
    rst $18                                       ; $2b90: $df

Jump_000_2b91:
    inc b                                         ; $2b91: $04
    ld a, [hl]                                    ; $2b92: $7e

jr_000_2b93:
    pop hl                                        ; $2b93: $e1
    pop de                                        ; $2b94: $d1
    pop bc                                        ; $2b95: $c1
    pop af                                        ; $2b96: $f1
    ret                                           ; $2b97: $c9


Call_000_2b98:
    push af                                       ; $2b98: $f5
    push bc                                       ; $2b99: $c5
    push de                                       ; $2b9a: $d5
    push hl                                       ; $2b9b: $e5
    ld a, [$c818]                                 ; $2b9c: $fa $18 $c8
    and $01                                       ; $2b9f: $e6 $01
    ld c, a                                       ; $2ba1: $4f
    ldh a, [$ce]                                  ; $2ba2: $f0 $ce
    and $fe                                       ; $2ba4: $e6 $fe
    or c                                          ; $2ba6: $b1
    ldh [$ce], a                                  ; $2ba7: $e0 $ce
    bit 0, a                                      ; $2ba9: $cb $47
    jr nz, jr_000_2bb2                            ; $2bab: $20 $05

    ld a, [$c33e]                                 ; $2bad: $fa $3e $c3
    jr jr_000_2bb3                                ; $2bb0: $18 $01

jr_000_2bb2:
    xor a                                         ; $2bb2: $af

Jump_000_2bb3:
jr_000_2bb3:
    rst $18                                       ; $2bb3: $df
    inc b                                         ; $2bb4: $04
    ld a, [hl]                                    ; $2bb5: $7e
    pop hl                                        ; $2bb6: $e1
    pop de                                        ; $2bb7: $d1
    pop bc                                        ; $2bb8: $c1
    pop af                                        ; $2bb9: $f1
    ret                                           ; $2bba: $c9


Jump_000_2bbb:
    push af                                       ; $2bbb: $f5
    push bc                                       ; $2bbc: $c5
    push de                                       ; $2bbd: $d5
    push hl                                       ; $2bbe: $e5
    ld hl, sp+$08                                 ; $2bbf: $f8 $08

Call_000_2bc1:
Jump_000_2bc1:
    ld e, [hl]                                    ; $2bc1: $5e

Jump_000_2bc2:
    inc hl                                        ; $2bc2: $23

Jump_000_2bc3:
    ld d, [hl]                                    ; $2bc3: $56

Call_000_2bc4:
    dec hl                                        ; $2bc4: $2b

Jump_000_2bc5:
    ld a, [de]                                    ; $2bc5: $1a
    inc de                                        ; $2bc6: $13

Call_000_2bc7:
    ld [hl], e                                    ; $2bc7: $73
    inc hl                                        ; $2bc8: $23
    ld [hl], d                                    ; $2bc9: $72

jr_000_2bca:
    cp $40                                        ; $2bca: $fe $40
    jr nc, jr_000_2c0d                            ; $2bcc: $30 $3f

    cp $36                                        ; $2bce: $fe $36
    jr c, jr_000_2bed                             ; $2bd0: $38 $1b

    ld hl, $ffce                                  ; $2bd2: $21 $ce $ff
    bit 0, [hl]                                   ; $2bd5: $cb $46
    jr nz, jr_000_2c14                            ; $2bd7: $20 $3b

    ldh [$cd], a                                  ; $2bd9: $e0 $cd
    sub $36                                       ; $2bdb: $d6 $36
    ld hl, $2be8                                  ; $2bdd: $21 $e8 $2b

Call_000_2be0:
Jump_000_2be0:
    add l                                         ; $2be0: $85

Jump_000_2be1:
    ld l, a                                       ; $2be1: $6f

Jump_000_2be2:
    jr nc, jr_000_2be5                            ; $2be2: $30 $01

Call_000_2be4:
    inc h                                         ; $2be4: $24

jr_000_2be5:
    ld a, [hl]                                    ; $2be5: $7e
    jr jr_000_2c01                                ; $2be6: $18 $19

    nop                                           ; $2be8: $00
    rla                                           ; $2be9: $17

    db $18

    add hl, de                                    ; $2beb: $19
    ld a, [de]                                    ; $2bec: $1a

jr_000_2bed:
    ld d, a                                       ; $2bed: $57
    ldh a, [$cd]                                  ; $2bee: $f0 $cd
    or a                                          ; $2bf0: $b7
    ld a, d                                       ; $2bf1: $7a
    jr z, jr_000_2bfa                             ; $2bf2: $28 $06

    ld hl, $c33e                                  ; $2bf4: $21 $3e $c3
    ld [hl], a                                    ; $2bf7: $77
    jr jr_000_2c14                                ; $2bf8: $18 $1a

Jump_000_2bfa:
jr_000_2bfa:
    ld hl, $c33e                                  ; $2bfa: $21 $3e $c3
    cp [hl]                                       ; $2bfd: $be
    jr z, jr_000_2c14                             ; $2bfe: $28 $14

    ld [hl], a                                    ; $2c00: $77

jr_000_2c01:
    ld hl, $ffce                                  ; $2c01: $21 $ce $ff
    bit 0, [hl]                                   ; $2c04: $cb $46
    jr nz, jr_000_2c14                            ; $2c06: $20 $0c

    rst $18                                       ; $2c08: $df

    db $04, $7e

    jr jr_000_2c14                                ; $2c0b: $18 $07

jr_000_2c0d:
    sub $40                                       ; $2c0d: $d6 $40
    rst $18                                       ; $2c0f: $df

    db $06, $7e

    jr jr_000_2c14                                ; $2c12: $18 $00

Call_000_2c14:
jr_000_2c14:
    pop hl                                        ; $2c14: $e1
    pop de                                        ; $2c15: $d1
    pop bc                                        ; $2c16: $c1
    pop af                                        ; $2c17: $f1
    ret                                           ; $2c18: $c9


Call_000_2c19:
    push af                                       ; $2c19: $f5
    push bc                                       ; $2c1a: $c5
    push de                                       ; $2c1b: $d5
    push hl                                       ; $2c1c: $e5
    jr jr_000_2bca                                ; $2c1d: $18 $ab

Call_000_2c1f:
    push af                                       ; $2c1f: $f5
    push bc                                       ; $2c20: $c5

Jump_000_2c21:
    push de                                       ; $2c21: $d5
    push hl                                       ; $2c22: $e5
    ldh a, [$cd]                                  ; $2c23: $f0 $cd
    or a                                          ; $2c25: $b7
    jr z, jr_000_2c45                             ; $2c26: $28 $1d

jr_000_2c28:
    call Call_000_2e3b                            ; $2c28: $cd $3b $2e
    ldh a, [$90]                                  ; $2c2b: $f0 $90

Jump_000_2c2d:
    or a                                          ; $2c2d: $b7
    jr nz, jr_000_2c35                            ; $2c2e: $20 $05

    ldh a, [$cd]                                  ; $2c30: $f0 $cd
    or a                                          ; $2c32: $b7
    jr nz, jr_000_2c28                            ; $2c33: $20 $f3

jr_000_2c35:
    xor a                                         ; $2c35: $af
    ldh [$cd], a                                  ; $2c36: $e0 $cd
    ld hl, $ffce                                  ; $2c38: $21 $ce $ff
    bit 0, [hl]                                   ; $2c3b: $cb $46
    jr nz, jr_000_2c45                            ; $2c3d: $20 $06

    ld a, [$c33e]                                 ; $2c3f: $fa $3e $c3
    rst $18                                       ; $2c42: $df
    inc b                                         ; $2c43: $04
    ld a, [hl]                                    ; $2c44: $7e

jr_000_2c45:
    pop hl                                        ; $2c45: $e1
    pop de                                        ; $2c46: $d1
    pop bc                                        ; $2c47: $c1
    pop af                                        ; $2c48: $f1
    ret                                           ; $2c49: $c9


Call_000_2c4a:
    ldh a, [$cd]                                  ; $2c4a: $f0 $cd
    or a                                          ; $2c4c: $b7
    ret z                                         ; $2c4d: $c8

    ld hl, $c4cd                                  ; $2c4e: $21 $cd $c4
    xor a                                         ; $2c51: $af
    or [hl]                                       ; $2c52: $b6
    inc hl                                        ; $2c53: $23
    or [hl]                                       ; $2c54: $b6
    inc hl                                        ; $2c55: $23
    or [hl]                                       ; $2c56: $b6
    inc hl                                        ; $2c57: $23
    or [hl]                                       ; $2c58: $b6
    ret nz                                        ; $2c59: $c0

    xor a                                         ; $2c5a: $af
    ldh [$cd], a                                  ; $2c5b: $e0 $cd

Jump_000_2c5d:
    ld hl, $ffce                                  ; $2c5d: $21 $ce $ff
    bit 0, [hl]                                   ; $2c60: $cb $46

Jump_000_2c62:
    jr nz, jr_000_2c6a                            ; $2c62: $20 $06

    ld a, [$c33e]                                 ; $2c64: $fa $3e $c3
    rst $18                                       ; $2c67: $df

    db $04, $7e

jr_000_2c6a:
    ret                                           ; $2c6a: $c9


Call_000_2c6b:
    ld a, [$c0f4]                                 ; $2c6b: $fa $f4 $c0
    cp $01                                        ; $2c6e: $fe $01

Call_000_2c70:
    call z, Call_000_2c98                         ; $2c70: $cc $98 $2c
    ld hl, $c0f0                                  ; $2c73: $21 $f0 $c0
    inc [hl]                                      ; $2c76: $34
    ld a, [hl]                                    ; $2c77: $7e

Call_000_2c78:
    cp $3c                                        ; $2c78: $fe $3c
    ret c                                         ; $2c7a: $d8

    ld [hl], $00                                  ; $2c7b: $36 $00
    inc hl                                        ; $2c7d: $23

Jump_000_2c7e:
    inc [hl]                                      ; $2c7e: $34
    ld a, [hl]                                    ; $2c7f: $7e

Call_000_2c80:
    cp $3c                                        ; $2c80: $fe $3c

Jump_000_2c82:
    ret c                                         ; $2c82: $d8

    ld [hl], $00                                  ; $2c83: $36 $00
    inc hl                                        ; $2c85: $23
    inc [hl]                                      ; $2c86: $34
    ld a, [hl]                                    ; $2c87: $7e
    cp $3c                                        ; $2c88: $fe $3c
    ret c                                         ; $2c8a: $d8

    ld [hl], $00                                  ; $2c8b: $36 $00
    inc hl                                        ; $2c8d: $23
    inc [hl]                                      ; $2c8e: $34
    ld a, [hl]                                    ; $2c8f: $7e
    cp $64                                        ; $2c90: $fe $64
    ret c                                         ; $2c92: $d8

    dec [hl]                                      ; $2c93: $35
    dec hl                                        ; $2c94: $2b
    ld [hl], $3b                                  ; $2c95: $36 $3b
    ret                                           ; $2c97: $c9


Call_000_2c98:
    ld hl, $c0f5                                  ; $2c98: $21 $f5 $c0
    inc [hl]                                      ; $2c9b: $34
    ld a, [hl]                                    ; $2c9c: $7e
    cp $3c                                        ; $2c9d: $fe $3c
    jr nz, jr_000_2cb0                            ; $2c9f: $20 $0f

Call_000_2ca1:
    ld [hl], $00                                  ; $2ca1: $36 $00
    inc hl                                        ; $2ca3: $23
    rst $08                                       ; $2ca4: $cf
    sbc a                                         ; $2ca5: $9f

Call_000_2ca6:
    dec [hl]                                      ; $2ca6: $35

Jump_000_2ca7:
    ld a, [hl]                                    ; $2ca7: $7e
    cp $ff                                        ; $2ca8: $fe $ff

Call_000_2caa:
    jr nz, jr_000_2cb0                            ; $2caa: $20 $04

    ld [hl], $3b                                  ; $2cac: $36 $3b
    inc hl                                        ; $2cae: $23
    dec [hl]                                      ; $2caf: $35

jr_000_2cb0:
    ld hl, $c0f6                                  ; $2cb0: $21 $f6 $c0
    ld a, [hl+]                                   ; $2cb3: $2a
    or [hl]                                       ; $2cb4: $b6
    ret nz                                        ; $2cb5: $c0

    xor a                                         ; $2cb6: $af
    ld hl, $c0f4                                  ; $2cb7: $21 $f4 $c0
    ld [hl], $ff                                  ; $2cba: $36 $ff
    inc hl                                        ; $2cbc: $23
    ld [hl+], a                                   ; $2cbd: $22
    ld [hl+], a                                   ; $2cbe: $22
    ld [hl+], a                                   ; $2cbf: $22
    rst $08                                       ; $2cc0: $cf

Jump_000_2cc1:
    and b                                         ; $2cc1: $a0

Jump_000_2cc2:
    ret                                           ; $2cc2: $c9


Call_000_2cc3:
    push af                                       ; $2cc3: $f5
    push de                                       ; $2cc4: $d5
    push hl                                       ; $2cc5: $e5
    ld hl, $c0f0                                  ; $2cc6: $21 $f0 $c0
    ld de, $c82e                                  ; $2cc9: $11 $2e $c8
    di                                            ; $2ccc: $f3
    ld a, [hl+]                                   ; $2ccd: $2a
    ld [de], a                                    ; $2cce: $12
    inc de                                        ; $2ccf: $13
    ld a, [hl+]                                   ; $2cd0: $2a
    ld [de], a                                    ; $2cd1: $12
    inc de                                        ; $2cd2: $13
    ld a, [hl+]                                   ; $2cd3: $2a
    ld [de], a                                    ; $2cd4: $12
    inc de                                        ; $2cd5: $13
    ld a, [hl+]                                   ; $2cd6: $2a

Call_000_2cd7:
    ld [de], a                                    ; $2cd7: $12
    inc de                                        ; $2cd8: $13
    ei                                            ; $2cd9: $fb
    pop hl                                        ; $2cda: $e1
    pop de                                        ; $2cdb: $d1
    pop af                                        ; $2cdc: $f1

Jump_000_2cdd:
    ret                                           ; $2cdd: $c9


Call_000_2cde:
    push af                                       ; $2cde: $f5
    push de                                       ; $2cdf: $d5

Jump_000_2ce0:
    push hl                                       ; $2ce0: $e5

Call_000_2ce1:
Jump_000_2ce1:
    ld de, $c0f0                                  ; $2ce1: $11 $f0 $c0

Jump_000_2ce4:
    ld hl, $c82e                                  ; $2ce4: $21 $2e $c8
    di                                            ; $2ce7: $f3
    ld a, [hl+]                                   ; $2ce8: $2a
    ld [de], a                                    ; $2ce9: $12
    inc de                                        ; $2cea: $13
    ld a, [hl+]                                   ; $2ceb: $2a
    ld [de], a                                    ; $2cec: $12
    inc de                                        ; $2ced: $13
    ld a, [hl+]                                   ; $2cee: $2a
    ld [de], a                                    ; $2cef: $12

Jump_000_2cf0:
    inc de                                        ; $2cf0: $13
    ld a, [hl+]                                   ; $2cf1: $2a

Jump_000_2cf2:
    ld [de], a                                    ; $2cf2: $12
    inc de                                        ; $2cf3: $13

Call_000_2cf4:
Jump_000_2cf4:
    ei                                            ; $2cf4: $fb
    pop hl                                        ; $2cf5: $e1
    pop de                                        ; $2cf6: $d1
    pop af                                        ; $2cf7: $f1
    ret                                           ; $2cf8: $c9


Call_000_2cf9:
Jump_000_2cf9:
    push af                                       ; $2cf9: $f5
    push hl                                       ; $2cfa: $e5
    ld hl, $c0f0                                  ; $2cfb: $21 $f0 $c0
    xor a                                         ; $2cfe: $af
    di                                            ; $2cff: $f3

Jump_000_2d00:
    ld [hl+], a                                   ; $2d00: $22

Call_000_2d01:
Jump_000_2d01:
    ld [hl+], a                                   ; $2d01: $22
    ld [hl+], a                                   ; $2d02: $22

Jump_000_2d03:
    ld [hl], a                                    ; $2d03: $77
    ei                                            ; $2d04: $fb
    pop hl                                        ; $2d05: $e1
    pop af                                        ; $2d06: $f1
    ret                                           ; $2d07: $c9


    db $80, $40, $20, $10, $08, $04, $02, $01

Call_000_2d10:
    push hl                                       ; $2d10: $e5
    push de                                       ; $2d11: $d5
    push bc                                       ; $2d12: $c5
    ld b, a                                       ; $2d13: $47
    ld hl, $2d08                                  ; $2d14: $21 $08 $2d
    ld a, e                                       ; $2d17: $7b
    rlca                                          ; $2d18: $07
    rlca                                          ; $2d19: $07
    rlca                                          ; $2d1a: $07
    add l                                         ; $2d1b: $85
    ld l, a                                       ; $2d1c: $6f
    jr nc, jr_000_2d20                            ; $2d1d: $30 $01

    inc h                                         ; $2d1f: $24

jr_000_2d20:
    ld a, [hl]                                    ; $2d20: $7e

Call_000_2d21:
    ld hl, $c840                                  ; $2d21: $21 $40 $c8
    ld e, d                                       ; $2d24: $5a
    ld d, $00                                     ; $2d25: $16 $00
    add hl, de                                    ; $2d27: $19
    and [hl]                                      ; $2d28: $a6
    ld a, b                                       ; $2d29: $78
    pop bc                                        ; $2d2a: $c1
    pop de                                        ; $2d2b: $d1
    pop hl                                        ; $2d2c: $e1

Call_000_2d2d:
Jump_000_2d2d:
    ret                                           ; $2d2d: $c9


Call_000_2d2e:
    push hl                                       ; $2d2e: $e5
    push af                                       ; $2d2f: $f5
    ld hl, $2d08                                  ; $2d30: $21 $08 $2d
    ld a, e                                       ; $2d33: $7b
    rlca                                          ; $2d34: $07
    rlca                                          ; $2d35: $07
    rlca                                          ; $2d36: $07
    add l                                         ; $2d37: $85
    ld l, a                                       ; $2d38: $6f
    jr nc, jr_000_2d3c                            ; $2d39: $30 $01

    inc h                                         ; $2d3b: $24

jr_000_2d3c:
    ld a, [hl]                                    ; $2d3c: $7e
    ld hl, $c840                                  ; $2d3d: $21 $40 $c8

Jump_000_2d40:
    ld e, d                                       ; $2d40: $5a
    ld d, $00                                     ; $2d41: $16 $00
    add hl, de                                    ; $2d43: $19
    or [hl]                                       ; $2d44: $b6
    ld [hl], a                                    ; $2d45: $77

Jump_000_2d46:
    pop af                                        ; $2d46: $f1
    pop hl                                        ; $2d47: $e1
    ret                                           ; $2d48: $c9


Call_000_2d49:
    push hl                                       ; $2d49: $e5
    push af                                       ; $2d4a: $f5
    ld hl, $2d08                                  ; $2d4b: $21 $08 $2d

Jump_000_2d4e:
    ld a, e                                       ; $2d4e: $7b
    rlca                                          ; $2d4f: $07

Jump_000_2d50:
    rlca                                          ; $2d50: $07
    rlca                                          ; $2d51: $07
    add l                                         ; $2d52: $85
    ld l, a                                       ; $2d53: $6f
    jr nc, jr_000_2d57                            ; $2d54: $30 $01

    inc h                                         ; $2d56: $24

jr_000_2d57:
    ld a, [hl]                                    ; $2d57: $7e
    ld hl, $c840                                  ; $2d58: $21 $40 $c8
    ld e, d                                       ; $2d5b: $5a
    ld d, $00                                     ; $2d5c: $16 $00
    add hl, de                                    ; $2d5e: $19
    cpl                                           ; $2d5f: $2f

Call_000_2d60:
    and [hl]                                      ; $2d60: $a6
    ld [hl], a                                    ; $2d61: $77

Jump_000_2d62:
    pop af                                        ; $2d62: $f1
    pop hl                                        ; $2d63: $e1
    ret                                           ; $2d64: $c9


Call_000_2d65:
    push bc                                       ; $2d65: $c5

Call_000_2d66:
    ld c, [hl]                                    ; $2d66: $4e
    inc hl                                        ; $2d67: $23
    ld b, [hl]                                    ; $2d68: $46
    dec hl                                        ; $2d69: $2b
    push hl                                       ; $2d6a: $e5
    ld h, b                                       ; $2d6b: $60
    ld l, c                                       ; $2d6c: $69
    ld e, [hl]                                    ; $2d6d: $5e
    inc hl                                        ; $2d6e: $23
    ld d, [hl]                                    ; $2d6f: $56
    inc hl                                        ; $2d70: $23

Call_000_2d71:
    ld b, h                                       ; $2d71: $44
    ld c, l                                       ; $2d72: $4d
    pop hl                                        ; $2d73: $e1
    ld [hl], c                                    ; $2d74: $71
    inc hl                                        ; $2d75: $23
    ld [hl], b                                    ; $2d76: $70
    pop bc                                        ; $2d77: $c1
    ret                                           ; $2d78: $c9


Jump_000_2d79:
    push de                                       ; $2d79: $d5
    push hl                                       ; $2d7a: $e5
    ld hl, sp+$04                                 ; $2d7b: $f8 $04
    call Call_000_2d65                            ; $2d7d: $cd $65 $2d
    call Call_000_2d10                            ; $2d80: $cd $10 $2d

Jump_000_2d83:
    pop hl                                        ; $2d83: $e1
    pop de                                        ; $2d84: $d1
    ret                                           ; $2d85: $c9


Jump_000_2d86:
    push de                                       ; $2d86: $d5
    push hl                                       ; $2d87: $e5
    ld hl, sp+$04                                 ; $2d88: $f8 $04
    call Call_000_2d65                            ; $2d8a: $cd $65 $2d
    call Call_000_2d2e                            ; $2d8d: $cd $2e $2d
    pop hl                                        ; $2d90: $e1
    pop de                                        ; $2d91: $d1
    ret                                           ; $2d92: $c9


Jump_000_2d93:
    push de                                       ; $2d93: $d5
    push hl                                       ; $2d94: $e5

Jump_000_2d95:
    ld hl, sp+$04                                 ; $2d95: $f8 $04
    call Call_000_2d65                            ; $2d97: $cd $65 $2d
    call Call_000_2d49                            ; $2d9a: $cd $49 $2d
    pop hl                                        ; $2d9d: $e1
    pop de                                        ; $2d9e: $d1
    ret                                           ; $2d9f: $c9


Jump_000_2da0:
    and a                                         ; $2da0: $a7

Jump_000_2da1:
    cp $11                                        ; $2da1: $fe $11
    ld a, $00                                     ; $2da3: $3e $00
    jr nz, jr_000_2da8                            ; $2da5: $20 $01

    inc a                                         ; $2da7: $3c

jr_000_2da8:
    ldh [$fe], a                                  ; $2da8: $e0 $fe

Jump_000_2daa:
    ld sp, $d000                                  ; $2daa: $31 $00 $d0
    call Call_000_0341                            ; $2dad: $cd $41 $03
    di                                            ; $2db0: $f3
    ld hl, $c000                                  ; $2db1: $21 $00 $c0
    ld c, $ff                                     ; $2db4: $0e $ff
    call Call_000_03a7                            ; $2db6: $cd $a7 $03
    xor a                                         ; $2db9: $af
    ld c, $80                                     ; $2dba: $0e $80
    ld b, $70                                     ; $2dbc: $06 $70

jr_000_2dbe:
    ld [c], a                                     ; $2dbe: $e2
    inc c                                         ; $2dbf: $0c
    dec b                                         ; $2dc0: $05
    jr nz, jr_000_2dbe                            ; $2dc1: $20 $fb

Jump_000_2dc3:
    ldh [rIF], a                                  ; $2dc3: $e0 $0f

Jump_000_2dc5:
    ldh [rIE], a                                  ; $2dc5: $e0 $ff
    ldh [rSCY], a                                 ; $2dc7: $e0 $42
    ldh [rSCX], a                                 ; $2dc9: $e0 $43

Call_000_2dcb:
    ldh [rSTAT], a                                ; $2dcb: $e0 $41
    ldh a, [$fe]                                  ; $2dcd: $f0 $fe

Call_000_2dcf:
    or a                                          ; $2dcf: $b7

Jump_000_2dd0:
    jr nz, jr_000_2dd5                            ; $2dd0: $20 $03

    rst $10                                       ; $2dd2: $d7
    ld [bc], a                                    ; $2dd3: $02
    db $01                                        ; $2dd4: $01

jr_000_2dd5:
    xor a                                         ; $2dd5: $af
    ldh [rVBK], a                                 ; $2dd6: $e0 $4f
    ldh [rSVBK], a                                ; $2dd8: $e0 $70
    ldh [rRP], a                                  ; $2dda: $e0 $56
    xor a                                         ; $2ddc: $af

Call_000_2ddd:
Jump_000_2ddd:
    ld [$0000], a                                 ; $2ddd: $ea $00 $00

Call_000_2de0:
Jump_000_2de0:
    call Call_000_066c                            ; $2de0: $cd $6c $06
    call Call_000_037b                            ; $2de3: $cd $7b $03
    xor a                                         ; $2de6: $af
    ldh [$9e], a                                  ; $2de7: $e0 $9e
    call Call_000_02a3                            ; $2de9: $cd $a3 $02
    ld a, $06                                     ; $2dec: $3e $06
    ldh [$a6], a                                  ; $2dee: $e0 $a6
    call Call_000_2683                            ; $2df0: $cd $83 $26
    call Call_000_23b6                            ; $2df3: $cd $b6 $23
    call Call_000_0458                            ; $2df6: $cd $58 $04
    rst $10                                       ; $2df9: $d7

    db $00, $7e

    ld a, $07                                     ; $2dfc: $3e $07
    ldh [rWX], a                                  ; $2dfe: $e0 $4b

Jump_000_2e00:
    ld a, $90                                     ; $2e00: $3e $90
    ldh [rWY], a                                  ; $2e02: $e0 $4a
    ld hl, $ff06                                  ; $2e04: $21 $06 $ff
    ld a, $77                                     ; $2e07: $3e $77
    ld [hl+], a                                   ; $2e09: $22
    xor a                                         ; $2e0a: $af
    ld [hl], a                                    ; $2e0b: $77
    set 2, [hl]                                   ; $2e0c: $cb $d6
    ld a, $08                                     ; $2e0e: $3e $08
    ldh [rSTAT], a                                ; $2e10: $e0 $41
    ld a, $50                                     ; $2e12: $3e $50
    ldh [rLYC], a                                 ; $2e14: $e0 $45
    xor a                                         ; $2e16: $af
    ldh [rSB], a                                  ; $2e17: $e0 $01

Jump_000_2e19:
    ld a, $02                                     ; $2e19: $3e $02
    ldh [rSC], a                                  ; $2e1b: $e0 $02
    ld a, $82                                     ; $2e1d: $3e $82
    ldh [rSC], a                                  ; $2e1f: $e0 $02
    xor a                                         ; $2e21: $af
    ldh [rIF], a                                  ; $2e22: $e0 $0f
    ld a, $0d                                     ; $2e24: $3e $0d
    ldh [rIE], a                                  ; $2e26: $e0 $ff
    ld a, $e7                                     ; $2e28: $3e $e7
    ldh [rLCDC], a                                ; $2e2a: $e0 $40
    ei                                            ; $2e2c: $fb

Jump_000_2e2d:
    xor a                                         ; $2e2d: $af
    ldh [$9d], a                                  ; $2e2e: $e0 $9d
    ldh [$a2], a                                  ; $2e30: $e0 $a2
    ldh [$a3], a                                  ; $2e32: $e0 $a3
    ldh [$a4], a                                  ; $2e34: $e0 $a4
    rst $10                                       ; $2e36: $d7

    db $00, $01

    stop                                          ; $2e39: $10 $00

Call_000_2e3b:
    push af                                       ; $2e3b: $f5
    push bc                                       ; $2e3c: $c5
    push de                                       ; $2e3d: $d5
    push hl                                       ; $2e3e: $e5
    ldh a, [$c8]                                  ; $2e3f: $f0 $c8
    or a                                          ; $2e41: $b7
    jr z, jr_000_2e4b                             ; $2e42: $28 $07

Call_000_2e44:
    ldh a, [$c3]                                  ; $2e44: $f0 $c3
    and $e0                                       ; $2e46: $e6 $e0

Jump_000_2e48:
    jp nz, Jump_000_2f8d                          ; $2e48: $c2 $8d $2f

Jump_000_2e4b:
jr_000_2e4b:
    ldh a, [rVBK]                                 ; $2e4b: $f0 $4f
    push af                                       ; $2e4d: $f5

Call_000_2e4e:
Jump_000_2e4e:
    ldh a, [$9e]                                  ; $2e4e: $f0 $9e
    or a                                          ; $2e50: $b7
    jr z, jr_000_2eb8                             ; $2e51: $28 $65

    ldh a, [rLY]                                  ; $2e53: $f0 $44
    ld l, a                                       ; $2e55: $6f
    ldh a, [$a0]                                  ; $2e56: $f0 $a0
    ld h, a                                       ; $2e58: $67
    cp l                                          ; $2e59: $bd
    jr c, jr_000_2e63                             ; $2e5a: $38 $07

    ldh a, [$a1]                                  ; $2e5c: $f0 $a1
    dec a                                         ; $2e5e: $3d
    ldh [$a1], a                                  ; $2e5f: $e0 $a1
    jr nz, jr_000_2e6b                            ; $2e61: $20 $08

jr_000_2e63:
    ld a, l                                       ; $2e63: $7d
    ld h, l                                       ; $2e64: $65
    ldh [$a0], a                                  ; $2e65: $e0 $a0
    ld a, $0f                                     ; $2e67: $3e $0f
    ldh [$a1], a                                  ; $2e69: $e0 $a1

jr_000_2e6b:
    ld de, $c0fa                                  ; $2e6b: $11 $fa $c0
    call Call_000_20e0                            ; $2e6e: $cd $e0 $20
    ldh a, [$90]                                  ; $2e71: $f0 $90
    and $0c                                       ; $2e73: $e6 $0c
    cp $0c                                        ; $2e75: $fe $0c
    jr nz, jr_000_2e7f                            ; $2e77: $20 $06

    ld a, $01                                     ; $2e79: $3e $01

Call_000_2e7b:
    ldh [$9a], a                                  ; $2e7b: $e0 $9a
    jr jr_000_2e84                                ; $2e7d: $18 $05

jr_000_2e7f:
    ldh a, [$9a]                                  ; $2e7f: $f0 $9a
    or a                                          ; $2e81: $b7
    jr z, jr_000_2eb8                             ; $2e82: $28 $34

jr_000_2e84:
    ldh a, [$94]                                  ; $2e84: $f0 $94
    bit 2, a                                      ; $2e86: $cb $57
    jr z, jr_000_2e97                             ; $2e88: $28 $0d

    ldh a, [$9e]                                  ; $2e8a: $f0 $9e
    inc a                                         ; $2e8c: $3c
    cp $04                                        ; $2e8d: $fe $04
    jr c, jr_000_2e93                             ; $2e8f: $38 $02

    ld a, $01                                     ; $2e91: $3e $01

jr_000_2e93:
    ldh [$9e], a                                  ; $2e93: $e0 $9e
    jr jr_000_2ea6                                ; $2e95: $18 $0f

jr_000_2e97:
    ldh a, [$90]                                  ; $2e97: $f0 $90
    bit 3, a                                      ; $2e99: $cb $5f
    jr z, jr_000_2ea6                             ; $2e9b: $28 $09

    bit 2, a                                      ; $2e9d: $cb $57
    jr nz, jr_000_2ea6                            ; $2e9f: $20 $05

    xor a                                         ; $2ea1: $af
    ldh [$9a], a                                  ; $2ea2: $e0 $9a
    jr jr_000_2eb8                                ; $2ea4: $18 $12

jr_000_2ea6:
    ldh a, [$91]                                  ; $2ea6: $f0 $91
    and $f3                                       ; $2ea8: $e6 $f3
    jr nz, jr_000_2eb8                            ; $2eaa: $20 $0c

jr_000_2eac:
    halt                                          ; $2eac: $76
    nop                                           ; $2ead: $00

Jump_000_2eae:
    ldh a, [$8d]                                  ; $2eae: $f0 $8d
    and a                                         ; $2eb0: $a7
    jr z, jr_000_2eac                             ; $2eb1: $28 $f9

    xor a                                         ; $2eb3: $af
    ldh [$8d], a                                  ; $2eb4: $e0 $8d
    jr jr_000_2e84                                ; $2eb6: $18 $cc

jr_000_2eb8:
    halt                                          ; $2eb8: $76
    nop                                           ; $2eb9: $00
    ldh a, [$8d]                                  ; $2eba: $f0 $8d
    and a                                         ; $2ebc: $a7
    jr z, jr_000_2eb8                             ; $2ebd: $28 $f9

    call Call_000_2688                            ; $2ebf: $cd $88 $26
    xor a                                         ; $2ec2: $af
    call Call_000_247d                            ; $2ec3: $cd $7d $24
    pop af                                        ; $2ec6: $f1
    ldh [rVBK], a                                 ; $2ec7: $e0 $4f
    xor a                                         ; $2ec9: $af
    ldh [$8d], a                                  ; $2eca: $e0 $8d
    ld hl, $c4b2                                  ; $2ecc: $21 $b2 $c4
    inc [hl]                                      ; $2ecf: $34
    pop hl                                        ; $2ed0: $e1
    pop de                                        ; $2ed1: $d1
    pop bc                                        ; $2ed2: $c1

Jump_000_2ed3:
    pop af                                        ; $2ed3: $f1
    ret                                           ; $2ed4: $c9


Call_000_2ed5:
    push bc                                       ; $2ed5: $c5
    push de                                       ; $2ed6: $d5
    push hl                                       ; $2ed7: $e5
    ld hl, sp+$06                                 ; $2ed8: $f8 $06
    ld e, [hl]                                    ; $2eda: $5e
    inc hl                                        ; $2edb: $23
    ld d, [hl]                                    ; $2edc: $56
    dec hl                                        ; $2edd: $2b
    push hl                                       ; $2ede: $e5
    ld h, d                                       ; $2edf: $62

Jump_000_2ee0:
    ld l, e                                       ; $2ee0: $6b

Jump_000_2ee1:
    ld c, [hl]                                    ; $2ee1: $4e

Call_000_2ee2:
    inc hl                                        ; $2ee2: $23

Call_000_2ee3:
    ld d, h                                       ; $2ee3: $54
    ld e, l                                       ; $2ee4: $5d
    pop hl                                        ; $2ee5: $e1
    ld [hl], e                                    ; $2ee6: $73
    inc hl                                        ; $2ee7: $23
    ld [hl], d                                    ; $2ee8: $72
    pop hl                                        ; $2ee9: $e1
    pop de                                        ; $2eea: $d1
    call Call_000_2ef0                            ; $2eeb: $cd $f0 $2e
    pop bc                                        ; $2eee: $c1
    ret                                           ; $2eef: $c9


Call_000_2ef0:
    push af                                       ; $2ef0: $f5

jr_000_2ef1:
    call Call_000_2e3b                            ; $2ef1: $cd $3b $2e

Call_000_2ef4:
    dec c                                         ; $2ef4: $0d
    jr nz, jr_000_2ef1                            ; $2ef5: $20 $fa

    pop af                                        ; $2ef7: $f1
    ret                                           ; $2ef8: $c9


Jump_000_2ef9:
    push af                                       ; $2ef9: $f5
    push bc                                       ; $2efa: $c5

Call_000_2efb:
    push de                                       ; $2efb: $d5
    push hl                                       ; $2efc: $e5
    ldh a, [rVBK]                                 ; $2efd: $f0 $4f

Jump_000_2eff:
    push af                                       ; $2eff: $f5
    call Call_000_05f6                            ; $2f00: $cd $f6 $05
    ldh a, [$8d]                                  ; $2f03: $f0 $8d

Jump_000_2f05:
    or a                                          ; $2f05: $b7

Call_000_2f06:
    jr nz, jr_000_2f46                            ; $2f06: $20 $3e

    ldh a, [$98]                                  ; $2f08: $f0 $98
    or a                                          ; $2f0a: $b7
    jr nz, jr_000_2f1d                            ; $2f0b: $20 $10

    ldh a, [$8b]                                  ; $2f0d: $f0 $8b
    ldh [rSCX], a                                 ; $2f0f: $e0 $43
    ldh a, [$8a]                                  ; $2f11: $f0 $8a
    ldh [rSCY], a                                 ; $2f13: $e0 $42
    ldh a, [rLCDC]                                ; $2f15: $f0 $40
    and $f7                                       ; $2f17: $e6 $f7
    ldh [rLCDC], a                                ; $2f19: $e0 $40
    jr jr_000_2f2a                                ; $2f1b: $18 $0d

jr_000_2f1d:
    xor a                                         ; $2f1d: $af
    ldh [rSCX], a                                 ; $2f1e: $e0 $43
    ld a, $40                                     ; $2f20: $3e $40
    ldh [rSCY], a                                 ; $2f22: $e0 $42
    ldh a, [rLCDC]                                ; $2f24: $f0 $40
    or $08                                        ; $2f26: $f6 $08
    ldh [rLCDC], a                                ; $2f28: $e0 $40

jr_000_2f2a:
    call $ff80                                    ; $2f2a: $cd $80 $ff
    call Call_000_29eb                            ; $2f2d: $cd $eb $29
    or a                                          ; $2f30: $b7
    jr nz, jr_000_2f36                            ; $2f31: $20 $03

    call Call_000_04de                            ; $2f33: $cd $de $04

jr_000_2f36:
    ldh a, [$9e]                                  ; $2f36: $f0 $9e
    or a                                          ; $2f38: $b7
    jr z, jr_000_2f3e                             ; $2f39: $28 $03

    call Call_000_203e                            ; $2f3b: $cd $3e $20

jr_000_2f3e:
    ld a, $01                                     ; $2f3e: $3e $01
    ldh [$8d], a                                  ; $2f40: $e0 $8d

Jump_000_2f42:
    ld hl, $ff8c                                  ; $2f42: $21 $8c $ff
    inc [hl]                                      ; $2f45: $34

jr_000_2f46:
    call Call_000_02eb                            ; $2f46: $cd $eb $02
    ldh a, [$90]                                  ; $2f49: $f0 $90
    cp $0f                                        ; $2f4b: $fe $0f
    jp z, Jump_000_2daa                           ; $2f4d: $ca $aa $2d

    call Call_000_3038                            ; $2f50: $cd $38 $30
    rst $10                                       ; $2f53: $d7

    db $02, $7e

    call Call_000_2c4a                            ; $2f56: $cd $4a $2c
    call Call_000_2c6b                            ; $2f59: $cd $6b $2c
    call Call_000_25df                            ; $2f5c: $cd $df $25
    call Call_000_25c9                            ; $2f5f: $cd $c9 $25
    ld a, $80                                     ; $2f62: $3e $80
    call Call_000_247d                            ; $2f64: $cd $7d $24
    pop af                                        ; $2f67: $f1
    ldh [rVBK], a                                 ; $2f68: $e0 $4f
    pop hl                                        ; $2f6a: $e1
    pop de                                        ; $2f6b: $d1
    pop bc                                        ; $2f6c: $c1
    pop af                                        ; $2f6d: $f1
    reti                                          ; $2f6e: $d9


Jump_000_2f6f:
    push af                                       ; $2f6f: $f5
    ldh a, [rLCDC]                                ; $2f70: $f0 $40
    bit 7, a                                      ; $2f72: $cb $7f
    jr nz, jr_000_2f7f                            ; $2f74: $20 $09

    push bc                                       ; $2f76: $c5
    push de                                       ; $2f77: $d5

Call_000_2f78:
    push hl                                       ; $2f78: $e5
    rst $10                                       ; $2f79: $d7

    db $02, $7e

    pop hl                                        ; $2f7c: $e1
    pop de                                        ; $2f7d: $d1
    pop bc                                        ; $2f7e: $c1

jr_000_2f7f:
    pop af                                        ; $2f7f: $f1

Jump_000_2f80:
    reti                                          ; $2f80: $d9


Jump_000_2f81:
    reti                                          ; $2f81: $d9


Call_000_2f82:
Jump_000_2f82:
jr_000_2f82:
    halt                                          ; $2f82: $76
    nop                                           ; $2f83: $00
    ldh a, [$8d]                                  ; $2f84: $f0 $8d
    and a                                         ; $2f86: $a7
    jr z, jr_000_2f82                             ; $2f87: $28 $f9

    xor a                                         ; $2f89: $af
    ldh [$8d], a                                  ; $2f8a: $e0 $8d
    ret                                           ; $2f8c: $c9


Jump_000_2f8d:
    rst $10                                       ; $2f8d: $d7
    jr jr_000_2f98                                ; $2f8e: $18 $08

    jp Jump_000_2daa                              ; $2f90: $c3 $aa $2d


Jump_000_2f93:
    push af                                       ; $2f93: $f5
    ldh a, [rSB]                                  ; $2f94: $f0 $01
    ldh [$c0], a                                  ; $2f96: $e0 $c0

jr_000_2f98:
    push bc                                       ; $2f98: $c5
    push de                                       ; $2f99: $d5
    push hl                                       ; $2f9a: $e5
    ldh a, [$c2]                                  ; $2f9b: $f0 $c2
    or a                                          ; $2f9d: $b7
    jr nz, jr_000_2fc9                            ; $2f9e: $20 $29

Call_000_2fa0:
    ldh a, [$c0]                                  ; $2fa0: $f0 $c0
    cp $70                                        ; $2fa2: $fe $70
    jr z, jr_000_2fbf                             ; $2fa4: $28 $19

    cp $71                                        ; $2fa6: $fe $71
    jr z, jr_000_2fac                             ; $2fa8: $28 $02

    jr jr_000_2ff3                                ; $2faa: $18 $47

jr_000_2fac:
    ld a, $02                                     ; $2fac: $3e $02
    ldh [$c2], a                                  ; $2fae: $e0 $c2
    ld a, [$0070]                                 ; $2fb0: $fa $70 $00
    ldh [rSB], a                                  ; $2fb3: $e0 $01
    ld a, $00                                     ; $2fb5: $3e $00
    ldh [rSC], a                                  ; $2fb7: $e0 $02
    ld a, $80                                     ; $2fb9: $3e $80
    ldh [rSC], a                                  ; $2fbb: $e0 $02
    jr jr_000_2ff3                                ; $2fbd: $18 $34

jr_000_2fbf:
    ld a, $01                                     ; $2fbf: $3e $01

Jump_000_2fc1:
    ldh [$c2], a                                  ; $2fc1: $e0 $c2

Jump_000_2fc3:
    ld a, $03                                     ; $2fc3: $3e $03
    ldh [rSC], a                                  ; $2fc5: $e0 $02
    jr jr_000_2ff3                                ; $2fc7: $18 $2a

jr_000_2fc9:
    cp $01                                        ; $2fc9: $fe $01
    jr nz, jr_000_2fe6                            ; $2fcb: $20 $19

    call Call_000_2ff8                            ; $2fcd: $cd $f8 $2f
    ld hl, $ffc3                                  ; $2fd0: $21 $c3 $ff
    ldh a, [$c0]                                  ; $2fd3: $f0 $c0
    cp $ff                                        ; $2fd5: $fe $ff
    jr z, jr_000_2fe0                             ; $2fd7: $28 $07

    or a                                          ; $2fd9: $b7
    jr z, jr_000_2fe0                             ; $2fda: $28 $04

    ld [hl], $00                                  ; $2fdc: $36 $00
    jr jr_000_2fe1                                ; $2fde: $18 $01

Call_000_2fe0:
Jump_000_2fe0:
jr_000_2fe0:
    inc [hl]                                      ; $2fe0: $34

Call_000_2fe1:
jr_000_2fe1:
    call Call_000_3021                            ; $2fe1: $cd $21 $30
    jr jr_000_2ff3                                ; $2fe4: $18 $0d

jr_000_2fe6:
    call Call_000_2ff8                            ; $2fe6: $cd $f8 $2f
    ld a, $80                                     ; $2fe9: $3e $80
    ldh [rSC], a                                  ; $2feb: $e0 $02

Jump_000_2fed:
    xor a                                         ; $2fed: $af
    ldh [$c3], a                                  ; $2fee: $e0 $c3
    call Call_000_3021                            ; $2ff0: $cd $21 $30

Call_000_2ff3:
jr_000_2ff3:
    pop hl                                        ; $2ff3: $e1
    pop de                                        ; $2ff4: $d1
    pop bc                                        ; $2ff5: $c1
    pop af                                        ; $2ff6: $f1
    reti                                          ; $2ff7: $d9


Call_000_2ff8:
    ldh a, [$c4]                                  ; $2ff8: $f0 $c4
    or a                                          ; $2ffa: $b7
    jr nz, jr_000_3002                            ; $2ffb: $20 $05

Jump_000_2ffd:
    ldh a, [$c1]                                  ; $2ffd: $f0 $c1

Call_000_2fff:
    ldh [rSB], a                                  ; $2fff: $e0 $01
    ret                                           ; $3001: $c9


jr_000_3002:
    cp $01                                        ; $3002: $fe $01
    jr nz, jr_000_3018                            ; $3004: $20 $12

    call Call_000_30ad                            ; $3006: $cd $ad $30
    ldh [rSB], a                                  ; $3009: $e0 $01
    ld hl, $ffc5                                  ; $300b: $21 $c5 $ff

Call_000_300e:
    dec [hl]                                      ; $300e: $35
    ld a, [hl]                                    ; $300f: $7e

Call_000_3010:
    ret nz                                        ; $3010: $c0

    dec hl                                        ; $3011: $2b
    dec [hl]                                      ; $3012: $35
    ldh a, [$c9]                                  ; $3013: $f0 $c9
    ldh [$c1], a                                  ; $3015: $e0 $c1
    ret                                           ; $3017: $c9


jr_000_3018:
    ld a, $40                                     ; $3018: $3e $40
    ldh [rSB], a                                  ; $301a: $e0 $01
    ld hl, $ffc4                                  ; $301c: $21 $c4 $ff
    dec [hl]                                      ; $301f: $35
    ret                                           ; $3020: $c9


Call_000_3021:
    ldh a, [$c0]                                  ; $3021: $f0 $c0
    ld b, a                                       ; $3023: $47
    and $f0                                       ; $3024: $e6 $f0
    cp $40                                        ; $3026: $fe $40
    ret c                                         ; $3028: $d8

    jr nz, jr_000_302f                            ; $3029: $20 $04

    xor a                                         ; $302b: $af
    ldh [$c6], a                                  ; $302c: $e0 $c6
    ret                                           ; $302e: $c9


jr_000_302f:
    cp $50                                        ; $302f: $fe $50
    jr nz, jr_000_3037                            ; $3031: $20 $04

    ld a, b                                       ; $3033: $78

Jump_000_3034:
    call Call_000_30c9                            ; $3034: $cd $c9 $30

Jump_000_3037:
jr_000_3037:
    ret                                           ; $3037: $c9


Call_000_3038:
    ldh a, [$c2]                                  ; $3038: $f0 $c2
    or a                                          ; $303a: $b7

Call_000_303b:
    ret z                                         ; $303b: $c8

    cp $01                                        ; $303c: $fe $01
    jr nz, jr_000_3046                            ; $303e: $20 $06

    ld hl, $ff02                                  ; $3040: $21 $02 $ff
    ld [hl], $83                                  ; $3043: $36 $83
    ret                                           ; $3045: $c9


jr_000_3046:
    ldh a, [$c3]                                  ; $3046: $f0 $c3
    inc a                                         ; $3048: $3c
    ret z                                         ; $3049: $c8

    ldh [$c3], a                                  ; $304a: $e0 $c3
    ret                                           ; $304c: $c9


Call_000_304d:
    ld a, $70                                     ; $304d: $3e $70
    ldh [rSB], a                                  ; $304f: $e0 $01

Call_000_3051:
    xor a                                         ; $3051: $af
    ldh [$c0], a                                  ; $3052: $e0 $c0
    ld a, $10                                     ; $3054: $3e $10
    ldh [$c1], a                                  ; $3056: $e0 $c1
    ld a, $00                                     ; $3058: $3e $00
    ldh [rSC], a                                  ; $305a: $e0 $02
    ld a, $80                                     ; $305c: $3e $80
    ldh [rSC], a                                  ; $305e: $e0 $02
    xor a                                         ; $3060: $af
    ldh [$c2], a                                  ; $3061: $e0 $c2

Call_000_3063:
    ldh [$c3], a                                  ; $3063: $e0 $c3
    ldh [$c4], a                                  ; $3065: $e0 $c4

Jump_000_3067:
    ldh [$c8], a                                  ; $3067: $e0 $c8

Call_000_3069:
    ld a, $10                                     ; $3069: $3e $10
    ldh [$c9], a                                  ; $306b: $e0 $c9

Jump_000_306d:
    ret                                           ; $306d: $c9


Call_000_306e:
    ld a, $71                                     ; $306e: $3e $71
    ldh [rSB], a                                  ; $3070: $e0 $01

Call_000_3072:
    ld a, $03                                     ; $3072: $3e $03
    ldh [rSC], a                                  ; $3074: $e0 $02
    ld a, $83                                     ; $3076: $3e $83
    ldh [rSC], a                                  ; $3078: $e0 $02
    call Call_000_2f82                            ; $307a: $cd $82 $2f
    call Call_000_2f82                            ; $307d: $cd $82 $2f
    ret                                           ; $3080: $c9


Call_000_3081:
    push af                                       ; $3081: $f5

jr_000_3082:
    ldh a, [$c4]                                  ; $3082: $f0 $c4
    or a                                          ; $3084: $b7
    jr z, jr_000_308c                             ; $3085: $28 $05

    call Call_000_2e3b                            ; $3087: $cd $3b $2e
    jr jr_000_3082                                ; $308a: $18 $f6

jr_000_308c:
    pop af                                        ; $308c: $f1
    push bc                                       ; $308d: $c5
    push hl                                       ; $308e: $e5
    push de                                       ; $308f: $d5
    add a                                         ; $3090: $87
    ld c, a                                       ; $3091: $4f

Call_000_3092:
    xor a                                         ; $3092: $af
    ldh [$c7], a                                  ; $3093: $e0 $c7

Call_000_3095:
    ldh a, [$c2]                                  ; $3095: $f0 $c2
    or a                                          ; $3097: $b7
    jp z, Jump_000_30a7                           ; $3098: $ca $a7 $30

    ld a, c                                       ; $309b: $79
    ldh [$c5], a                                  ; $309c: $e0 $c5
    ld a, $02                                     ; $309e: $3e $02

Jump_000_30a0:
    ldh [$c4], a                                  ; $30a0: $e0 $c4
    pop de                                        ; $30a2: $d1
    pop hl                                        ; $30a3: $e1

Call_000_30a4:
    pop bc                                        ; $30a4: $c1
    xor a                                         ; $30a5: $af

Call_000_30a6:
    ret                                           ; $30a6: $c9


Jump_000_30a7:
    pop de                                        ; $30a7: $d1

Jump_000_30a8:
    pop hl                                        ; $30a8: $e1
    pop bc                                        ; $30a9: $c1
    xor a                                         ; $30aa: $af

Call_000_30ab:
    dec a                                         ; $30ab: $3d
    ret                                           ; $30ac: $c9


Call_000_30ad:
    ld hl, $ffc7                                  ; $30ad: $21 $c7 $ff
    ld a, [hl]                                    ; $30b0: $7e
    ld b, a                                       ; $30b1: $47
    srl a                                         ; $30b2: $cb $3f
    push hl                                       ; $30b4: $e5
    ld hl, $cb00                                  ; $30b5: $21 $00 $cb
    add l                                         ; $30b8: $85
    ld l, a                                       ; $30b9: $6f
    ld a, [hl]                                    ; $30ba: $7e
    pop hl                                        ; $30bb: $e1
    inc [hl]                                      ; $30bc: $34
    bit 0, b                                      ; $30bd: $cb $40
    jr nz, jr_000_30c3                            ; $30bf: $20 $02

Jump_000_30c1:
    swap a                                        ; $30c1: $cb $37

jr_000_30c3:
    and $0f                                       ; $30c3: $e6 $0f
    or $50                                        ; $30c5: $f6 $50
    ld b, a                                       ; $30c7: $47
    ret                                           ; $30c8: $c9


Call_000_30c9:
    push af                                       ; $30c9: $f5
    ldh a, [$c6]                                  ; $30ca: $f0 $c6
    ld b, a                                       ; $30cc: $47
    srl a                                         ; $30cd: $cb $3f
    and $3f                                       ; $30cf: $e6 $3f
    ld hl, $cb40                                  ; $30d1: $21 $40 $cb
    add l                                         ; $30d4: $85

Call_000_30d5:
    ld l, a                                       ; $30d5: $6f
    pop af                                        ; $30d6: $f1
    bit 0, b                                      ; $30d7: $cb $40
    jr nz, jr_000_30e2                            ; $30d9: $20 $07

    swap a                                        ; $30db: $cb $37
    and $f0                                       ; $30dd: $e6 $f0
    ld [hl], a                                    ; $30df: $77

Call_000_30e0:
Jump_000_30e0:
    jr jr_000_30e6                                ; $30e0: $18 $04

Jump_000_30e2:
jr_000_30e2:
    and $0f                                       ; $30e2: $e6 $0f
    or [hl]                                       ; $30e4: $b6

Call_000_30e5:
    ld [hl], a                                    ; $30e5: $77

Call_000_30e6:
Jump_000_30e6:
jr_000_30e6:
    ld hl, $ffc6                                  ; $30e6: $21 $c6 $ff
    inc [hl]                                      ; $30e9: $34
    ret                                           ; $30ea: $c9


Call_000_30eb:
    push af                                       ; $30eb: $f5

jr_000_30ec:
    ldh a, [$c4]                                  ; $30ec: $f0 $c4
    or a                                          ; $30ee: $b7
    jr z, jr_000_30f6                             ; $30ef: $28 $05

    call Call_000_2e3b                            ; $30f1: $cd $3b $2e
    jr jr_000_30ec                                ; $30f4: $18 $f6

jr_000_30f6:
    pop af                                        ; $30f6: $f1
    ret                                           ; $30f7: $c9


Call_000_30f8:
    ld a, $01                                     ; $30f8: $3e $01
    ldh [$c8], a                                  ; $30fa: $e0 $c8
    ret                                           ; $30fc: $c9


Call_000_30fd:
    xor a                                         ; $30fd: $af

Jump_000_30fe:
    ldh [$c8], a                                  ; $30fe: $e0 $c8
    ret                                           ; $3100: $c9


    rst $38                                       ; $3101: $ff

Call_000_3102:
    rst $38                                       ; $3102: $ff

Call_000_3103:
    rst $38                                       ; $3103: $ff
    rst $38                                       ; $3104: $ff
    rst $38                                       ; $3105: $ff
    rst $38                                       ; $3106: $ff
    rst $38                                       ; $3107: $ff
    rst $38                                       ; $3108: $ff
    rst $38                                       ; $3109: $ff
    rst $38                                       ; $310a: $ff
    rst $38                                       ; $310b: $ff
    rst $38                                       ; $310c: $ff
    rst $38                                       ; $310d: $ff
    rst $38                                       ; $310e: $ff
    rst $38                                       ; $310f: $ff
    rst $38                                       ; $3110: $ff
    rst $38                                       ; $3111: $ff
    rst $38                                       ; $3112: $ff
    rst $38                                       ; $3113: $ff
    rst $38                                       ; $3114: $ff
    rst $38                                       ; $3115: $ff
    rst $38                                       ; $3116: $ff

Jump_000_3117:
    rst $38                                       ; $3117: $ff
    rst $38                                       ; $3118: $ff
    rst $38                                       ; $3119: $ff
    rst $38                                       ; $311a: $ff
    rst $38                                       ; $311b: $ff
    rst $38                                       ; $311c: $ff
    rst $38                                       ; $311d: $ff
    rst $38                                       ; $311e: $ff
    rst $38                                       ; $311f: $ff
    rst $38                                       ; $3120: $ff
    rst $38                                       ; $3121: $ff
    rst $38                                       ; $3122: $ff
    rst $38                                       ; $3123: $ff
    rst $38                                       ; $3124: $ff
    rst $38                                       ; $3125: $ff
    rst $38                                       ; $3126: $ff
    rst $38                                       ; $3127: $ff
    rst $38                                       ; $3128: $ff
    rst $38                                       ; $3129: $ff
    rst $38                                       ; $312a: $ff
    rst $38                                       ; $312b: $ff
    rst $38                                       ; $312c: $ff
    rst $38                                       ; $312d: $ff
    rst $38                                       ; $312e: $ff
    rst $38                                       ; $312f: $ff
    rst $38                                       ; $3130: $ff
    rst $38                                       ; $3131: $ff
    rst $38                                       ; $3132: $ff
    rst $38                                       ; $3133: $ff
    rst $38                                       ; $3134: $ff
    rst $38                                       ; $3135: $ff
    rst $38                                       ; $3136: $ff
    rst $38                                       ; $3137: $ff
    rst $38                                       ; $3138: $ff
    rst $38                                       ; $3139: $ff
    rst $38                                       ; $313a: $ff
    rst $38                                       ; $313b: $ff
    rst $38                                       ; $313c: $ff
    rst $38                                       ; $313d: $ff
    rst $38                                       ; $313e: $ff
    rst $38                                       ; $313f: $ff
    rst $38                                       ; $3140: $ff
    rst $38                                       ; $3141: $ff
    rst $38                                       ; $3142: $ff
    rst $38                                       ; $3143: $ff
    rst $38                                       ; $3144: $ff
    rst $38                                       ; $3145: $ff
    rst $38                                       ; $3146: $ff
    rst $38                                       ; $3147: $ff
    rst $38                                       ; $3148: $ff
    rst $38                                       ; $3149: $ff
    rst $38                                       ; $314a: $ff
    rst $38                                       ; $314b: $ff
    rst $38                                       ; $314c: $ff
    rst $38                                       ; $314d: $ff
    rst $38                                       ; $314e: $ff
    rst $38                                       ; $314f: $ff
    rst $38                                       ; $3150: $ff
    rst $38                                       ; $3151: $ff

Jump_000_3152:
    rst $38                                       ; $3152: $ff
    rst $38                                       ; $3153: $ff
    rst $38                                       ; $3154: $ff
    rst $38                                       ; $3155: $ff
    rst $38                                       ; $3156: $ff
    rst $38                                       ; $3157: $ff
    rst $38                                       ; $3158: $ff
    rst $38                                       ; $3159: $ff
    rst $38                                       ; $315a: $ff
    rst $38                                       ; $315b: $ff
    rst $38                                       ; $315c: $ff

Call_000_315d:
    rst $38                                       ; $315d: $ff

Call_000_315e:
    rst $38                                       ; $315e: $ff
    rst $38                                       ; $315f: $ff
    rst $38                                       ; $3160: $ff
    rst $38                                       ; $3161: $ff
    rst $38                                       ; $3162: $ff
    rst $38                                       ; $3163: $ff
    rst $38                                       ; $3164: $ff
    rst $38                                       ; $3165: $ff
    rst $38                                       ; $3166: $ff
    rst $38                                       ; $3167: $ff
    rst $38                                       ; $3168: $ff
    rst $38                                       ; $3169: $ff
    rst $38                                       ; $316a: $ff

Jump_000_316b:
    rst $38                                       ; $316b: $ff
    rst $38                                       ; $316c: $ff
    rst $38                                       ; $316d: $ff
    rst $38                                       ; $316e: $ff
    rst $38                                       ; $316f: $ff
    rst $38                                       ; $3170: $ff

Jump_000_3171:
    rst $38                                       ; $3171: $ff
    rst $38                                       ; $3172: $ff
    rst $38                                       ; $3173: $ff
    rst $38                                       ; $3174: $ff
    rst $38                                       ; $3175: $ff
    rst $38                                       ; $3176: $ff
    rst $38                                       ; $3177: $ff
    rst $38                                       ; $3178: $ff
    rst $38                                       ; $3179: $ff
    rst $38                                       ; $317a: $ff
    rst $38                                       ; $317b: $ff
    rst $38                                       ; $317c: $ff
    rst $38                                       ; $317d: $ff
    rst $38                                       ; $317e: $ff
    rst $38                                       ; $317f: $ff
    rst $38                                       ; $3180: $ff
    rst $38                                       ; $3181: $ff

Jump_000_3182:
    rst $38                                       ; $3182: $ff
    rst $38                                       ; $3183: $ff
    rst $38                                       ; $3184: $ff

Call_000_3185:
    rst $38                                       ; $3185: $ff
    rst $38                                       ; $3186: $ff
    rst $38                                       ; $3187: $ff
    rst $38                                       ; $3188: $ff
    rst $38                                       ; $3189: $ff
    rst $38                                       ; $318a: $ff
    rst $38                                       ; $318b: $ff

Call_000_318c:
    rst $38                                       ; $318c: $ff
    rst $38                                       ; $318d: $ff
    rst $38                                       ; $318e: $ff
    rst $38                                       ; $318f: $ff
    rst $38                                       ; $3190: $ff
    rst $38                                       ; $3191: $ff
    rst $38                                       ; $3192: $ff
    rst $38                                       ; $3193: $ff
    rst $38                                       ; $3194: $ff
    rst $38                                       ; $3195: $ff
    rst $38                                       ; $3196: $ff
    rst $38                                       ; $3197: $ff
    rst $38                                       ; $3198: $ff
    rst $38                                       ; $3199: $ff
    rst $38                                       ; $319a: $ff
    rst $38                                       ; $319b: $ff

Jump_000_319c:
    rst $38                                       ; $319c: $ff
    rst $38                                       ; $319d: $ff
    rst $38                                       ; $319e: $ff
    rst $38                                       ; $319f: $ff
    rst $38                                       ; $31a0: $ff
    rst $38                                       ; $31a1: $ff
    rst $38                                       ; $31a2: $ff
    rst $38                                       ; $31a3: $ff
    rst $38                                       ; $31a4: $ff
    rst $38                                       ; $31a5: $ff
    rst $38                                       ; $31a6: $ff
    rst $38                                       ; $31a7: $ff
    rst $38                                       ; $31a8: $ff
    rst $38                                       ; $31a9: $ff
    rst $38                                       ; $31aa: $ff
    rst $38                                       ; $31ab: $ff
    rst $38                                       ; $31ac: $ff
    rst $38                                       ; $31ad: $ff
    rst $38                                       ; $31ae: $ff
    rst $38                                       ; $31af: $ff
    rst $38                                       ; $31b0: $ff
    rst $38                                       ; $31b1: $ff
    rst $38                                       ; $31b2: $ff
    rst $38                                       ; $31b3: $ff
    rst $38                                       ; $31b4: $ff
    rst $38                                       ; $31b5: $ff
    rst $38                                       ; $31b6: $ff
    rst $38                                       ; $31b7: $ff
    rst $38                                       ; $31b8: $ff
    rst $38                                       ; $31b9: $ff
    rst $38                                       ; $31ba: $ff
    rst $38                                       ; $31bb: $ff
    rst $38                                       ; $31bc: $ff
    rst $38                                       ; $31bd: $ff
    rst $38                                       ; $31be: $ff
    rst $38                                       ; $31bf: $ff
    rst $38                                       ; $31c0: $ff
    rst $38                                       ; $31c1: $ff
    rst $38                                       ; $31c2: $ff
    rst $38                                       ; $31c3: $ff
    rst $38                                       ; $31c4: $ff
    rst $38                                       ; $31c5: $ff

Call_000_31c6:
    rst $38                                       ; $31c6: $ff
    rst $38                                       ; $31c7: $ff
    rst $38                                       ; $31c8: $ff
    rst $38                                       ; $31c9: $ff
    rst $38                                       ; $31ca: $ff
    rst $38                                       ; $31cb: $ff
    rst $38                                       ; $31cc: $ff
    rst $38                                       ; $31cd: $ff
    rst $38                                       ; $31ce: $ff
    rst $38                                       ; $31cf: $ff
    rst $38                                       ; $31d0: $ff
    rst $38                                       ; $31d1: $ff
    rst $38                                       ; $31d2: $ff
    rst $38                                       ; $31d3: $ff
    rst $38                                       ; $31d4: $ff
    rst $38                                       ; $31d5: $ff
    rst $38                                       ; $31d6: $ff
    rst $38                                       ; $31d7: $ff
    rst $38                                       ; $31d8: $ff
    rst $38                                       ; $31d9: $ff
    rst $38                                       ; $31da: $ff
    rst $38                                       ; $31db: $ff
    rst $38                                       ; $31dc: $ff
    rst $38                                       ; $31dd: $ff

Jump_000_31de:
    rst $38                                       ; $31de: $ff
    rst $38                                       ; $31df: $ff

Jump_000_31e0:
    rst $38                                       ; $31e0: $ff

Jump_000_31e1:
    rst $38                                       ; $31e1: $ff
    rst $38                                       ; $31e2: $ff
    rst $38                                       ; $31e3: $ff

Jump_000_31e4:
    rst $38                                       ; $31e4: $ff
    rst $38                                       ; $31e5: $ff
    rst $38                                       ; $31e6: $ff
    rst $38                                       ; $31e7: $ff
    rst $38                                       ; $31e8: $ff
    rst $38                                       ; $31e9: $ff
    rst $38                                       ; $31ea: $ff
    rst $38                                       ; $31eb: $ff
    rst $38                                       ; $31ec: $ff
    rst $38                                       ; $31ed: $ff
    rst $38                                       ; $31ee: $ff
    rst $38                                       ; $31ef: $ff
    rst $38                                       ; $31f0: $ff
    rst $38                                       ; $31f1: $ff
    rst $38                                       ; $31f2: $ff
    rst $38                                       ; $31f3: $ff
    rst $38                                       ; $31f4: $ff
    rst $38                                       ; $31f5: $ff
    rst $38                                       ; $31f6: $ff
    rst $38                                       ; $31f7: $ff
    rst $38                                       ; $31f8: $ff
    rst $38                                       ; $31f9: $ff
    rst $38                                       ; $31fa: $ff
    rst $38                                       ; $31fb: $ff
    rst $38                                       ; $31fc: $ff
    rst $38                                       ; $31fd: $ff
    rst $38                                       ; $31fe: $ff

Jump_000_31ff:
    rst $38                                       ; $31ff: $ff

Jump_000_3200:
    rst $38                                       ; $3200: $ff
    rst $38                                       ; $3201: $ff
    rst $38                                       ; $3202: $ff
    rst $38                                       ; $3203: $ff
    rst $38                                       ; $3204: $ff
    rst $38                                       ; $3205: $ff
    rst $38                                       ; $3206: $ff
    rst $38                                       ; $3207: $ff
    rst $38                                       ; $3208: $ff
    rst $38                                       ; $3209: $ff
    rst $38                                       ; $320a: $ff
    rst $38                                       ; $320b: $ff
    rst $38                                       ; $320c: $ff
    rst $38                                       ; $320d: $ff
    rst $38                                       ; $320e: $ff
    rst $38                                       ; $320f: $ff
    rst $38                                       ; $3210: $ff
    rst $38                                       ; $3211: $ff
    rst $38                                       ; $3212: $ff
    rst $38                                       ; $3213: $ff
    rst $38                                       ; $3214: $ff
    rst $38                                       ; $3215: $ff
    rst $38                                       ; $3216: $ff
    rst $38                                       ; $3217: $ff
    rst $38                                       ; $3218: $ff
    rst $38                                       ; $3219: $ff
    rst $38                                       ; $321a: $ff
    rst $38                                       ; $321b: $ff

Call_000_321c:
    rst $38                                       ; $321c: $ff
    rst $38                                       ; $321d: $ff
    rst $38                                       ; $321e: $ff
    rst $38                                       ; $321f: $ff
    rst $38                                       ; $3220: $ff
    rst $38                                       ; $3221: $ff
    rst $38                                       ; $3222: $ff
    rst $38                                       ; $3223: $ff
    rst $38                                       ; $3224: $ff
    rst $38                                       ; $3225: $ff
    rst $38                                       ; $3226: $ff
    rst $38                                       ; $3227: $ff
    rst $38                                       ; $3228: $ff
    rst $38                                       ; $3229: $ff
    rst $38                                       ; $322a: $ff
    rst $38                                       ; $322b: $ff
    rst $38                                       ; $322c: $ff
    rst $38                                       ; $322d: $ff
    rst $38                                       ; $322e: $ff
    rst $38                                       ; $322f: $ff

Jump_000_3230:
    rst $38                                       ; $3230: $ff
    rst $38                                       ; $3231: $ff

Call_000_3232:
    rst $38                                       ; $3232: $ff

Call_000_3233:
    rst $38                                       ; $3233: $ff
    rst $38                                       ; $3234: $ff
    rst $38                                       ; $3235: $ff
    rst $38                                       ; $3236: $ff
    rst $38                                       ; $3237: $ff
    rst $38                                       ; $3238: $ff
    rst $38                                       ; $3239: $ff
    rst $38                                       ; $323a: $ff
    rst $38                                       ; $323b: $ff

Jump_000_323c:
    rst $38                                       ; $323c: $ff
    rst $38                                       ; $323d: $ff

Jump_000_323e:
    rst $38                                       ; $323e: $ff
    rst $38                                       ; $323f: $ff

Jump_000_3240:
    rst $38                                       ; $3240: $ff
    rst $38                                       ; $3241: $ff
    rst $38                                       ; $3242: $ff
    rst $38                                       ; $3243: $ff
    rst $38                                       ; $3244: $ff
    rst $38                                       ; $3245: $ff
    rst $38                                       ; $3246: $ff
    rst $38                                       ; $3247: $ff
    rst $38                                       ; $3248: $ff
    rst $38                                       ; $3249: $ff
    rst $38                                       ; $324a: $ff
    rst $38                                       ; $324b: $ff
    rst $38                                       ; $324c: $ff
    rst $38                                       ; $324d: $ff
    rst $38                                       ; $324e: $ff
    rst $38                                       ; $324f: $ff
    rst $38                                       ; $3250: $ff
    rst $38                                       ; $3251: $ff
    rst $38                                       ; $3252: $ff
    rst $38                                       ; $3253: $ff
    rst $38                                       ; $3254: $ff
    rst $38                                       ; $3255: $ff
    rst $38                                       ; $3256: $ff
    rst $38                                       ; $3257: $ff
    rst $38                                       ; $3258: $ff
    rst $38                                       ; $3259: $ff
    rst $38                                       ; $325a: $ff
    rst $38                                       ; $325b: $ff
    rst $38                                       ; $325c: $ff
    rst $38                                       ; $325d: $ff
    rst $38                                       ; $325e: $ff
    rst $38                                       ; $325f: $ff
    rst $38                                       ; $3260: $ff
    rst $38                                       ; $3261: $ff
    rst $38                                       ; $3262: $ff
    rst $38                                       ; $3263: $ff
    rst $38                                       ; $3264: $ff
    rst $38                                       ; $3265: $ff
    rst $38                                       ; $3266: $ff
    rst $38                                       ; $3267: $ff
    rst $38                                       ; $3268: $ff
    rst $38                                       ; $3269: $ff
    rst $38                                       ; $326a: $ff
    rst $38                                       ; $326b: $ff
    rst $38                                       ; $326c: $ff
    rst $38                                       ; $326d: $ff
    rst $38                                       ; $326e: $ff
    rst $38                                       ; $326f: $ff
    rst $38                                       ; $3270: $ff
    rst $38                                       ; $3271: $ff
    rst $38                                       ; $3272: $ff
    rst $38                                       ; $3273: $ff
    rst $38                                       ; $3274: $ff
    rst $38                                       ; $3275: $ff
    rst $38                                       ; $3276: $ff
    rst $38                                       ; $3277: $ff
    rst $38                                       ; $3278: $ff
    rst $38                                       ; $3279: $ff
    rst $38                                       ; $327a: $ff
    rst $38                                       ; $327b: $ff
    rst $38                                       ; $327c: $ff
    rst $38                                       ; $327d: $ff
    rst $38                                       ; $327e: $ff
    rst $38                                       ; $327f: $ff

Call_000_3280:
    rst $38                                       ; $3280: $ff
    rst $38                                       ; $3281: $ff
    rst $38                                       ; $3282: $ff
    rst $38                                       ; $3283: $ff
    rst $38                                       ; $3284: $ff
    rst $38                                       ; $3285: $ff
    rst $38                                       ; $3286: $ff
    rst $38                                       ; $3287: $ff
    rst $38                                       ; $3288: $ff
    rst $38                                       ; $3289: $ff
    rst $38                                       ; $328a: $ff
    rst $38                                       ; $328b: $ff
    rst $38                                       ; $328c: $ff
    rst $38                                       ; $328d: $ff
    rst $38                                       ; $328e: $ff
    rst $38                                       ; $328f: $ff
    rst $38                                       ; $3290: $ff
    rst $38                                       ; $3291: $ff
    rst $38                                       ; $3292: $ff
    rst $38                                       ; $3293: $ff
    rst $38                                       ; $3294: $ff
    rst $38                                       ; $3295: $ff
    rst $38                                       ; $3296: $ff
    rst $38                                       ; $3297: $ff
    rst $38                                       ; $3298: $ff
    rst $38                                       ; $3299: $ff
    rst $38                                       ; $329a: $ff
    rst $38                                       ; $329b: $ff
    rst $38                                       ; $329c: $ff
    rst $38                                       ; $329d: $ff
    rst $38                                       ; $329e: $ff
    rst $38                                       ; $329f: $ff
    rst $38                                       ; $32a0: $ff
    rst $38                                       ; $32a1: $ff
    rst $38                                       ; $32a2: $ff
    rst $38                                       ; $32a3: $ff
    rst $38                                       ; $32a4: $ff
    rst $38                                       ; $32a5: $ff
    rst $38                                       ; $32a6: $ff
    rst $38                                       ; $32a7: $ff
    rst $38                                       ; $32a8: $ff
    rst $38                                       ; $32a9: $ff
    rst $38                                       ; $32aa: $ff
    rst $38                                       ; $32ab: $ff
    rst $38                                       ; $32ac: $ff
    rst $38                                       ; $32ad: $ff
    rst $38                                       ; $32ae: $ff

Jump_000_32af:
    rst $38                                       ; $32af: $ff
    rst $38                                       ; $32b0: $ff
    rst $38                                       ; $32b1: $ff
    rst $38                                       ; $32b2: $ff

Jump_000_32b3:
    rst $38                                       ; $32b3: $ff
    rst $38                                       ; $32b4: $ff
    rst $38                                       ; $32b5: $ff
    rst $38                                       ; $32b6: $ff
    rst $38                                       ; $32b7: $ff

Call_000_32b8:
    rst $38                                       ; $32b8: $ff
    rst $38                                       ; $32b9: $ff
    rst $38                                       ; $32ba: $ff

Call_000_32bb:
    rst $38                                       ; $32bb: $ff
    rst $38                                       ; $32bc: $ff
    rst $38                                       ; $32bd: $ff
    rst $38                                       ; $32be: $ff
    rst $38                                       ; $32bf: $ff
    rst $38                                       ; $32c0: $ff

Call_000_32c1:
Jump_000_32c1:
    rst $38                                       ; $32c1: $ff
    rst $38                                       ; $32c2: $ff

Jump_000_32c3:
    rst $38                                       ; $32c3: $ff
    rst $38                                       ; $32c4: $ff
    rst $38                                       ; $32c5: $ff
    rst $38                                       ; $32c6: $ff
    rst $38                                       ; $32c7: $ff
    rst $38                                       ; $32c8: $ff
    rst $38                                       ; $32c9: $ff
    rst $38                                       ; $32ca: $ff
    rst $38                                       ; $32cb: $ff
    rst $38                                       ; $32cc: $ff
    rst $38                                       ; $32cd: $ff
    rst $38                                       ; $32ce: $ff
    rst $38                                       ; $32cf: $ff
    rst $38                                       ; $32d0: $ff
    rst $38                                       ; $32d1: $ff
    rst $38                                       ; $32d2: $ff
    rst $38                                       ; $32d3: $ff
    rst $38                                       ; $32d4: $ff
    rst $38                                       ; $32d5: $ff
    rst $38                                       ; $32d6: $ff
    rst $38                                       ; $32d7: $ff
    rst $38                                       ; $32d8: $ff
    rst $38                                       ; $32d9: $ff
    rst $38                                       ; $32da: $ff

Jump_000_32db:
    rst $38                                       ; $32db: $ff
    rst $38                                       ; $32dc: $ff
    rst $38                                       ; $32dd: $ff
    rst $38                                       ; $32de: $ff
    rst $38                                       ; $32df: $ff
    rst $38                                       ; $32e0: $ff
    rst $38                                       ; $32e1: $ff
    rst $38                                       ; $32e2: $ff
    rst $38                                       ; $32e3: $ff
    rst $38                                       ; $32e4: $ff

Jump_000_32e5:
    rst $38                                       ; $32e5: $ff

Jump_000_32e6:
    rst $38                                       ; $32e6: $ff
    rst $38                                       ; $32e7: $ff
    rst $38                                       ; $32e8: $ff
    rst $38                                       ; $32e9: $ff
    rst $38                                       ; $32ea: $ff
    rst $38                                       ; $32eb: $ff
    rst $38                                       ; $32ec: $ff
    rst $38                                       ; $32ed: $ff
    rst $38                                       ; $32ee: $ff
    rst $38                                       ; $32ef: $ff
    rst $38                                       ; $32f0: $ff
    rst $38                                       ; $32f1: $ff
    rst $38                                       ; $32f2: $ff
    rst $38                                       ; $32f3: $ff
    rst $38                                       ; $32f4: $ff
    rst $38                                       ; $32f5: $ff
    rst $38                                       ; $32f6: $ff
    rst $38                                       ; $32f7: $ff
    rst $38                                       ; $32f8: $ff
    rst $38                                       ; $32f9: $ff
    rst $38                                       ; $32fa: $ff
    rst $38                                       ; $32fb: $ff

Call_000_32fc:
    rst $38                                       ; $32fc: $ff
    rst $38                                       ; $32fd: $ff

Call_000_32fe:
    rst $38                                       ; $32fe: $ff
    rst $38                                       ; $32ff: $ff

Call_000_3300:
Jump_000_3300:
    rst $38                                       ; $3300: $ff

Call_000_3301:
    rst $38                                       ; $3301: $ff

Call_000_3302:
    rst $38                                       ; $3302: $ff
    rst $38                                       ; $3303: $ff
    rst $38                                       ; $3304: $ff
    rst $38                                       ; $3305: $ff
    rst $38                                       ; $3306: $ff
    rst $38                                       ; $3307: $ff
    rst $38                                       ; $3308: $ff
    rst $38                                       ; $3309: $ff
    rst $38                                       ; $330a: $ff
    rst $38                                       ; $330b: $ff
    rst $38                                       ; $330c: $ff
    rst $38                                       ; $330d: $ff
    rst $38                                       ; $330e: $ff
    rst $38                                       ; $330f: $ff
    rst $38                                       ; $3310: $ff
    rst $38                                       ; $3311: $ff
    rst $38                                       ; $3312: $ff
    rst $38                                       ; $3313: $ff
    rst $38                                       ; $3314: $ff
    rst $38                                       ; $3315: $ff
    rst $38                                       ; $3316: $ff
    rst $38                                       ; $3317: $ff
    rst $38                                       ; $3318: $ff
    rst $38                                       ; $3319: $ff
    rst $38                                       ; $331a: $ff

Call_000_331b:
    rst $38                                       ; $331b: $ff
    rst $38                                       ; $331c: $ff
    rst $38                                       ; $331d: $ff
    rst $38                                       ; $331e: $ff
    rst $38                                       ; $331f: $ff

Call_000_3320:
    rst $38                                       ; $3320: $ff
    rst $38                                       ; $3321: $ff
    rst $38                                       ; $3322: $ff

Call_000_3323:
    rst $38                                       ; $3323: $ff
    rst $38                                       ; $3324: $ff
    rst $38                                       ; $3325: $ff
    rst $38                                       ; $3326: $ff
    rst $38                                       ; $3327: $ff
    rst $38                                       ; $3328: $ff
    rst $38                                       ; $3329: $ff
    rst $38                                       ; $332a: $ff
    rst $38                                       ; $332b: $ff
    rst $38                                       ; $332c: $ff
    rst $38                                       ; $332d: $ff
    rst $38                                       ; $332e: $ff
    rst $38                                       ; $332f: $ff
    rst $38                                       ; $3330: $ff
    rst $38                                       ; $3331: $ff
    rst $38                                       ; $3332: $ff

Jump_000_3333:
    rst $38                                       ; $3333: $ff
    rst $38                                       ; $3334: $ff
    rst $38                                       ; $3335: $ff
    rst $38                                       ; $3336: $ff

Call_000_3337:
    rst $38                                       ; $3337: $ff
    rst $38                                       ; $3338: $ff
    rst $38                                       ; $3339: $ff
    rst $38                                       ; $333a: $ff
    rst $38                                       ; $333b: $ff
    rst $38                                       ; $333c: $ff
    rst $38                                       ; $333d: $ff
    rst $38                                       ; $333e: $ff
    rst $38                                       ; $333f: $ff
    rst $38                                       ; $3340: $ff
    rst $38                                       ; $3341: $ff
    rst $38                                       ; $3342: $ff
    rst $38                                       ; $3343: $ff
    rst $38                                       ; $3344: $ff
    rst $38                                       ; $3345: $ff
    rst $38                                       ; $3346: $ff
    rst $38                                       ; $3347: $ff
    rst $38                                       ; $3348: $ff
    rst $38                                       ; $3349: $ff
    rst $38                                       ; $334a: $ff
    rst $38                                       ; $334b: $ff
    rst $38                                       ; $334c: $ff
    rst $38                                       ; $334d: $ff
    rst $38                                       ; $334e: $ff
    rst $38                                       ; $334f: $ff
    rst $38                                       ; $3350: $ff
    rst $38                                       ; $3351: $ff
    rst $38                                       ; $3352: $ff
    rst $38                                       ; $3353: $ff
    rst $38                                       ; $3354: $ff
    rst $38                                       ; $3355: $ff
    rst $38                                       ; $3356: $ff
    rst $38                                       ; $3357: $ff
    rst $38                                       ; $3358: $ff
    rst $38                                       ; $3359: $ff
    rst $38                                       ; $335a: $ff
    rst $38                                       ; $335b: $ff
    rst $38                                       ; $335c: $ff
    rst $38                                       ; $335d: $ff
    rst $38                                       ; $335e: $ff
    rst $38                                       ; $335f: $ff
    rst $38                                       ; $3360: $ff
    rst $38                                       ; $3361: $ff
    rst $38                                       ; $3362: $ff
    rst $38                                       ; $3363: $ff
    rst $38                                       ; $3364: $ff
    rst $38                                       ; $3365: $ff
    rst $38                                       ; $3366: $ff

Call_000_3367:
    rst $38                                       ; $3367: $ff
    rst $38                                       ; $3368: $ff
    rst $38                                       ; $3369: $ff
    rst $38                                       ; $336a: $ff
    rst $38                                       ; $336b: $ff
    rst $38                                       ; $336c: $ff
    rst $38                                       ; $336d: $ff
    rst $38                                       ; $336e: $ff
    rst $38                                       ; $336f: $ff
    rst $38                                       ; $3370: $ff
    rst $38                                       ; $3371: $ff
    rst $38                                       ; $3372: $ff
    rst $38                                       ; $3373: $ff

Jump_000_3374:
    rst $38                                       ; $3374: $ff
    rst $38                                       ; $3375: $ff
    rst $38                                       ; $3376: $ff
    rst $38                                       ; $3377: $ff
    rst $38                                       ; $3378: $ff
    rst $38                                       ; $3379: $ff
    rst $38                                       ; $337a: $ff
    rst $38                                       ; $337b: $ff
    rst $38                                       ; $337c: $ff
    rst $38                                       ; $337d: $ff
    rst $38                                       ; $337e: $ff
    rst $38                                       ; $337f: $ff
    rst $38                                       ; $3380: $ff
    rst $38                                       ; $3381: $ff
    rst $38                                       ; $3382: $ff
    rst $38                                       ; $3383: $ff
    rst $38                                       ; $3384: $ff
    rst $38                                       ; $3385: $ff
    rst $38                                       ; $3386: $ff
    rst $38                                       ; $3387: $ff
    rst $38                                       ; $3388: $ff
    rst $38                                       ; $3389: $ff
    rst $38                                       ; $338a: $ff
    rst $38                                       ; $338b: $ff
    rst $38                                       ; $338c: $ff
    rst $38                                       ; $338d: $ff
    rst $38                                       ; $338e: $ff
    rst $38                                       ; $338f: $ff
    rst $38                                       ; $3390: $ff
    rst $38                                       ; $3391: $ff
    rst $38                                       ; $3392: $ff
    rst $38                                       ; $3393: $ff
    rst $38                                       ; $3394: $ff
    rst $38                                       ; $3395: $ff
    rst $38                                       ; $3396: $ff
    rst $38                                       ; $3397: $ff
    rst $38                                       ; $3398: $ff
    rst $38                                       ; $3399: $ff
    rst $38                                       ; $339a: $ff
    rst $38                                       ; $339b: $ff
    rst $38                                       ; $339c: $ff
    rst $38                                       ; $339d: $ff
    rst $38                                       ; $339e: $ff
    rst $38                                       ; $339f: $ff
    rst $38                                       ; $33a0: $ff
    rst $38                                       ; $33a1: $ff
    rst $38                                       ; $33a2: $ff
    rst $38                                       ; $33a3: $ff
    rst $38                                       ; $33a4: $ff
    rst $38                                       ; $33a5: $ff
    rst $38                                       ; $33a6: $ff
    rst $38                                       ; $33a7: $ff
    rst $38                                       ; $33a8: $ff
    rst $38                                       ; $33a9: $ff
    rst $38                                       ; $33aa: $ff
    rst $38                                       ; $33ab: $ff
    rst $38                                       ; $33ac: $ff
    rst $38                                       ; $33ad: $ff
    rst $38                                       ; $33ae: $ff
    rst $38                                       ; $33af: $ff
    rst $38                                       ; $33b0: $ff
    rst $38                                       ; $33b1: $ff
    rst $38                                       ; $33b2: $ff
    rst $38                                       ; $33b3: $ff
    rst $38                                       ; $33b4: $ff
    rst $38                                       ; $33b5: $ff
    rst $38                                       ; $33b6: $ff
    rst $38                                       ; $33b7: $ff
    rst $38                                       ; $33b8: $ff
    rst $38                                       ; $33b9: $ff
    rst $38                                       ; $33ba: $ff
    rst $38                                       ; $33bb: $ff
    rst $38                                       ; $33bc: $ff
    rst $38                                       ; $33bd: $ff
    rst $38                                       ; $33be: $ff
    rst $38                                       ; $33bf: $ff
    rst $38                                       ; $33c0: $ff
    rst $38                                       ; $33c1: $ff
    rst $38                                       ; $33c2: $ff
    rst $38                                       ; $33c3: $ff
    rst $38                                       ; $33c4: $ff
    rst $38                                       ; $33c5: $ff
    rst $38                                       ; $33c6: $ff
    rst $38                                       ; $33c7: $ff

Jump_000_33c8:
    rst $38                                       ; $33c8: $ff
    rst $38                                       ; $33c9: $ff
    rst $38                                       ; $33ca: $ff
    rst $38                                       ; $33cb: $ff

Call_000_33cc:
    rst $38                                       ; $33cc: $ff
    rst $38                                       ; $33cd: $ff
    rst $38                                       ; $33ce: $ff
    rst $38                                       ; $33cf: $ff
    rst $38                                       ; $33d0: $ff
    rst $38                                       ; $33d1: $ff
    rst $38                                       ; $33d2: $ff
    rst $38                                       ; $33d3: $ff
    rst $38                                       ; $33d4: $ff

Call_000_33d5:
Jump_000_33d5:
    rst $38                                       ; $33d5: $ff
    rst $38                                       ; $33d6: $ff
    rst $38                                       ; $33d7: $ff
    rst $38                                       ; $33d8: $ff
    rst $38                                       ; $33d9: $ff
    rst $38                                       ; $33da: $ff

Jump_000_33db:
    rst $38                                       ; $33db: $ff
    rst $38                                       ; $33dc: $ff

Call_000_33dd:
    rst $38                                       ; $33dd: $ff
    rst $38                                       ; $33de: $ff
    rst $38                                       ; $33df: $ff
    rst $38                                       ; $33e0: $ff
    rst $38                                       ; $33e1: $ff

Jump_000_33e2:
    rst $38                                       ; $33e2: $ff

Jump_000_33e3:
    rst $38                                       ; $33e3: $ff
    rst $38                                       ; $33e4: $ff

Call_000_33e5:
    rst $38                                       ; $33e5: $ff

Jump_000_33e6:
    rst $38                                       ; $33e6: $ff
    rst $38                                       ; $33e7: $ff
    rst $38                                       ; $33e8: $ff
    rst $38                                       ; $33e9: $ff
    rst $38                                       ; $33ea: $ff
    rst $38                                       ; $33eb: $ff

Jump_000_33ec:
    rst $38                                       ; $33ec: $ff
    rst $38                                       ; $33ed: $ff
    rst $38                                       ; $33ee: $ff
    rst $38                                       ; $33ef: $ff
    rst $38                                       ; $33f0: $ff
    rst $38                                       ; $33f1: $ff
    rst $38                                       ; $33f2: $ff
    rst $38                                       ; $33f3: $ff
    rst $38                                       ; $33f4: $ff
    rst $38                                       ; $33f5: $ff
    rst $38                                       ; $33f6: $ff
    rst $38                                       ; $33f7: $ff
    rst $38                                       ; $33f8: $ff
    rst $38                                       ; $33f9: $ff
    rst $38                                       ; $33fa: $ff
    rst $38                                       ; $33fb: $ff
    rst $38                                       ; $33fc: $ff
    rst $38                                       ; $33fd: $ff
    rst $38                                       ; $33fe: $ff

Call_000_33ff:
Jump_000_33ff:
    rst $38                                       ; $33ff: $ff
    rst $38                                       ; $3400: $ff
    rst $38                                       ; $3401: $ff
    rst $38                                       ; $3402: $ff
    rst $38                                       ; $3403: $ff
    rst $38                                       ; $3404: $ff

Jump_000_3405:
    rst $38                                       ; $3405: $ff
    rst $38                                       ; $3406: $ff
    rst $38                                       ; $3407: $ff
    rst $38                                       ; $3408: $ff
    rst $38                                       ; $3409: $ff
    rst $38                                       ; $340a: $ff
    rst $38                                       ; $340b: $ff

Call_000_340c:
    rst $38                                       ; $340c: $ff
    rst $38                                       ; $340d: $ff
    rst $38                                       ; $340e: $ff
    rst $38                                       ; $340f: $ff
    rst $38                                       ; $3410: $ff
    rst $38                                       ; $3411: $ff
    rst $38                                       ; $3412: $ff
    rst $38                                       ; $3413: $ff
    rst $38                                       ; $3414: $ff
    rst $38                                       ; $3415: $ff
    rst $38                                       ; $3416: $ff
    rst $38                                       ; $3417: $ff
    rst $38                                       ; $3418: $ff
    rst $38                                       ; $3419: $ff
    rst $38                                       ; $341a: $ff
    rst $38                                       ; $341b: $ff
    rst $38                                       ; $341c: $ff
    rst $38                                       ; $341d: $ff
    rst $38                                       ; $341e: $ff
    rst $38                                       ; $341f: $ff
    rst $38                                       ; $3420: $ff
    rst $38                                       ; $3421: $ff
    rst $38                                       ; $3422: $ff
    rst $38                                       ; $3423: $ff

Call_000_3424:
    rst $38                                       ; $3424: $ff
    rst $38                                       ; $3425: $ff
    rst $38                                       ; $3426: $ff
    rst $38                                       ; $3427: $ff
    rst $38                                       ; $3428: $ff
    rst $38                                       ; $3429: $ff
    rst $38                                       ; $342a: $ff
    rst $38                                       ; $342b: $ff
    rst $38                                       ; $342c: $ff
    rst $38                                       ; $342d: $ff
    rst $38                                       ; $342e: $ff
    rst $38                                       ; $342f: $ff
    rst $38                                       ; $3430: $ff
    rst $38                                       ; $3431: $ff
    rst $38                                       ; $3432: $ff
    rst $38                                       ; $3433: $ff
    rst $38                                       ; $3434: $ff
    rst $38                                       ; $3435: $ff
    rst $38                                       ; $3436: $ff
    rst $38                                       ; $3437: $ff
    rst $38                                       ; $3438: $ff
    rst $38                                       ; $3439: $ff
    rst $38                                       ; $343a: $ff
    rst $38                                       ; $343b: $ff
    rst $38                                       ; $343c: $ff
    rst $38                                       ; $343d: $ff
    rst $38                                       ; $343e: $ff

Jump_000_343f:
    rst $38                                       ; $343f: $ff

Call_000_3440:
Jump_000_3440:
    rst $38                                       ; $3440: $ff
    rst $38                                       ; $3441: $ff
    rst $38                                       ; $3442: $ff
    rst $38                                       ; $3443: $ff
    rst $38                                       ; $3444: $ff
    rst $38                                       ; $3445: $ff

Call_000_3446:
Jump_000_3446:
    rst $38                                       ; $3446: $ff
    rst $38                                       ; $3447: $ff
    rst $38                                       ; $3448: $ff
    rst $38                                       ; $3449: $ff
    rst $38                                       ; $344a: $ff
    rst $38                                       ; $344b: $ff
    rst $38                                       ; $344c: $ff
    rst $38                                       ; $344d: $ff
    rst $38                                       ; $344e: $ff
    rst $38                                       ; $344f: $ff
    rst $38                                       ; $3450: $ff
    rst $38                                       ; $3451: $ff
    rst $38                                       ; $3452: $ff
    rst $38                                       ; $3453: $ff
    rst $38                                       ; $3454: $ff
    rst $38                                       ; $3455: $ff
    rst $38                                       ; $3456: $ff
    rst $38                                       ; $3457: $ff
    rst $38                                       ; $3458: $ff
    rst $38                                       ; $3459: $ff
    rst $38                                       ; $345a: $ff
    rst $38                                       ; $345b: $ff
    rst $38                                       ; $345c: $ff
    rst $38                                       ; $345d: $ff

Jump_000_345e:
    rst $38                                       ; $345e: $ff
    rst $38                                       ; $345f: $ff
    rst $38                                       ; $3460: $ff
    rst $38                                       ; $3461: $ff
    rst $38                                       ; $3462: $ff
    rst $38                                       ; $3463: $ff
    rst $38                                       ; $3464: $ff
    rst $38                                       ; $3465: $ff
    rst $38                                       ; $3466: $ff
    rst $38                                       ; $3467: $ff
    rst $38                                       ; $3468: $ff
    rst $38                                       ; $3469: $ff
    rst $38                                       ; $346a: $ff
    rst $38                                       ; $346b: $ff
    rst $38                                       ; $346c: $ff
    rst $38                                       ; $346d: $ff
    rst $38                                       ; $346e: $ff
    rst $38                                       ; $346f: $ff
    rst $38                                       ; $3470: $ff
    rst $38                                       ; $3471: $ff

Jump_000_3472:
    rst $38                                       ; $3472: $ff
    rst $38                                       ; $3473: $ff
    rst $38                                       ; $3474: $ff
    rst $38                                       ; $3475: $ff
    rst $38                                       ; $3476: $ff

Jump_000_3477:
    rst $38                                       ; $3477: $ff
    rst $38                                       ; $3478: $ff
    rst $38                                       ; $3479: $ff
    rst $38                                       ; $347a: $ff
    rst $38                                       ; $347b: $ff
    rst $38                                       ; $347c: $ff
    rst $38                                       ; $347d: $ff
    rst $38                                       ; $347e: $ff
    rst $38                                       ; $347f: $ff

Jump_000_3480:
    rst $38                                       ; $3480: $ff
    rst $38                                       ; $3481: $ff

Jump_000_3482:
    rst $38                                       ; $3482: $ff
    rst $38                                       ; $3483: $ff
    rst $38                                       ; $3484: $ff
    rst $38                                       ; $3485: $ff
    rst $38                                       ; $3486: $ff
    rst $38                                       ; $3487: $ff
    rst $38                                       ; $3488: $ff
    rst $38                                       ; $3489: $ff
    rst $38                                       ; $348a: $ff
    rst $38                                       ; $348b: $ff
    rst $38                                       ; $348c: $ff
    rst $38                                       ; $348d: $ff
    rst $38                                       ; $348e: $ff
    rst $38                                       ; $348f: $ff
    rst $38                                       ; $3490: $ff
    rst $38                                       ; $3491: $ff
    rst $38                                       ; $3492: $ff
    rst $38                                       ; $3493: $ff
    rst $38                                       ; $3494: $ff
    rst $38                                       ; $3495: $ff
    rst $38                                       ; $3496: $ff
    rst $38                                       ; $3497: $ff
    rst $38                                       ; $3498: $ff
    rst $38                                       ; $3499: $ff
    rst $38                                       ; $349a: $ff
    rst $38                                       ; $349b: $ff
    rst $38                                       ; $349c: $ff
    rst $38                                       ; $349d: $ff
    rst $38                                       ; $349e: $ff
    rst $38                                       ; $349f: $ff

Call_000_34a0:
    rst $38                                       ; $34a0: $ff
    rst $38                                       ; $34a1: $ff
    rst $38                                       ; $34a2: $ff
    rst $38                                       ; $34a3: $ff
    rst $38                                       ; $34a4: $ff
    rst $38                                       ; $34a5: $ff
    rst $38                                       ; $34a6: $ff
    rst $38                                       ; $34a7: $ff
    rst $38                                       ; $34a8: $ff
    rst $38                                       ; $34a9: $ff
    rst $38                                       ; $34aa: $ff
    rst $38                                       ; $34ab: $ff
    rst $38                                       ; $34ac: $ff
    rst $38                                       ; $34ad: $ff
    rst $38                                       ; $34ae: $ff
    rst $38                                       ; $34af: $ff
    rst $38                                       ; $34b0: $ff
    rst $38                                       ; $34b1: $ff
    rst $38                                       ; $34b2: $ff
    rst $38                                       ; $34b3: $ff
    rst $38                                       ; $34b4: $ff
    rst $38                                       ; $34b5: $ff
    rst $38                                       ; $34b6: $ff
    rst $38                                       ; $34b7: $ff
    rst $38                                       ; $34b8: $ff
    rst $38                                       ; $34b9: $ff
    rst $38                                       ; $34ba: $ff
    rst $38                                       ; $34bb: $ff
    rst $38                                       ; $34bc: $ff
    rst $38                                       ; $34bd: $ff
    rst $38                                       ; $34be: $ff
    rst $38                                       ; $34bf: $ff

Call_000_34c0:
Jump_000_34c0:
    rst $38                                       ; $34c0: $ff
    rst $38                                       ; $34c1: $ff
    rst $38                                       ; $34c2: $ff
    rst $38                                       ; $34c3: $ff
    rst $38                                       ; $34c4: $ff
    rst $38                                       ; $34c5: $ff
    rst $38                                       ; $34c6: $ff

Call_000_34c7:
    rst $38                                       ; $34c7: $ff
    rst $38                                       ; $34c8: $ff
    rst $38                                       ; $34c9: $ff
    rst $38                                       ; $34ca: $ff
    rst $38                                       ; $34cb: $ff

Call_000_34cc:
    rst $38                                       ; $34cc: $ff
    rst $38                                       ; $34cd: $ff
    rst $38                                       ; $34ce: $ff
    rst $38                                       ; $34cf: $ff
    rst $38                                       ; $34d0: $ff
    rst $38                                       ; $34d1: $ff
    rst $38                                       ; $34d2: $ff
    rst $38                                       ; $34d3: $ff
    rst $38                                       ; $34d4: $ff
    rst $38                                       ; $34d5: $ff
    rst $38                                       ; $34d6: $ff
    rst $38                                       ; $34d7: $ff
    rst $38                                       ; $34d8: $ff
    rst $38                                       ; $34d9: $ff
    rst $38                                       ; $34da: $ff
    rst $38                                       ; $34db: $ff
    rst $38                                       ; $34dc: $ff
    rst $38                                       ; $34dd: $ff
    rst $38                                       ; $34de: $ff
    rst $38                                       ; $34df: $ff
    rst $38                                       ; $34e0: $ff
    rst $38                                       ; $34e1: $ff
    rst $38                                       ; $34e2: $ff
    rst $38                                       ; $34e3: $ff
    rst $38                                       ; $34e4: $ff
    rst $38                                       ; $34e5: $ff
    rst $38                                       ; $34e6: $ff
    rst $38                                       ; $34e7: $ff
    rst $38                                       ; $34e8: $ff
    rst $38                                       ; $34e9: $ff

Call_000_34ea:
    rst $38                                       ; $34ea: $ff
    rst $38                                       ; $34eb: $ff
    rst $38                                       ; $34ec: $ff
    rst $38                                       ; $34ed: $ff
    rst $38                                       ; $34ee: $ff
    rst $38                                       ; $34ef: $ff
    rst $38                                       ; $34f0: $ff
    rst $38                                       ; $34f1: $ff
    rst $38                                       ; $34f2: $ff
    rst $38                                       ; $34f3: $ff
    rst $38                                       ; $34f4: $ff
    rst $38                                       ; $34f5: $ff

Jump_000_34f6:
    rst $38                                       ; $34f6: $ff
    rst $38                                       ; $34f7: $ff
    rst $38                                       ; $34f8: $ff
    rst $38                                       ; $34f9: $ff
    rst $38                                       ; $34fa: $ff
    rst $38                                       ; $34fb: $ff

Jump_000_34fc:
    rst $38                                       ; $34fc: $ff
    rst $38                                       ; $34fd: $ff
    rst $38                                       ; $34fe: $ff

Jump_000_34ff:
    rst $38                                       ; $34ff: $ff

Call_000_3500:
Jump_000_3500:
    rst $38                                       ; $3500: $ff
    rst $38                                       ; $3501: $ff
    rst $38                                       ; $3502: $ff

Jump_000_3503:
    rst $38                                       ; $3503: $ff
    rst $38                                       ; $3504: $ff
    rst $38                                       ; $3505: $ff
    rst $38                                       ; $3506: $ff

Jump_000_3507:
    rst $38                                       ; $3507: $ff
    rst $38                                       ; $3508: $ff
    rst $38                                       ; $3509: $ff
    rst $38                                       ; $350a: $ff
    rst $38                                       ; $350b: $ff
    rst $38                                       ; $350c: $ff

Jump_000_350d:
    rst $38                                       ; $350d: $ff
    rst $38                                       ; $350e: $ff
    rst $38                                       ; $350f: $ff
    rst $38                                       ; $3510: $ff
    rst $38                                       ; $3511: $ff
    rst $38                                       ; $3512: $ff
    rst $38                                       ; $3513: $ff
    rst $38                                       ; $3514: $ff
    rst $38                                       ; $3515: $ff
    rst $38                                       ; $3516: $ff
    rst $38                                       ; $3517: $ff
    rst $38                                       ; $3518: $ff
    rst $38                                       ; $3519: $ff
    rst $38                                       ; $351a: $ff
    rst $38                                       ; $351b: $ff
    rst $38                                       ; $351c: $ff
    rst $38                                       ; $351d: $ff
    rst $38                                       ; $351e: $ff
    rst $38                                       ; $351f: $ff

Jump_000_3520:
    rst $38                                       ; $3520: $ff
    rst $38                                       ; $3521: $ff
    rst $38                                       ; $3522: $ff
    rst $38                                       ; $3523: $ff
    rst $38                                       ; $3524: $ff
    rst $38                                       ; $3525: $ff
    rst $38                                       ; $3526: $ff
    rst $38                                       ; $3527: $ff
    rst $38                                       ; $3528: $ff
    rst $38                                       ; $3529: $ff
    rst $38                                       ; $352a: $ff

Jump_000_352b:
    rst $38                                       ; $352b: $ff
    rst $38                                       ; $352c: $ff
    rst $38                                       ; $352d: $ff
    rst $38                                       ; $352e: $ff

Call_000_352f:
    rst $38                                       ; $352f: $ff
    rst $38                                       ; $3530: $ff
    rst $38                                       ; $3531: $ff
    rst $38                                       ; $3532: $ff

Call_000_3533:
    rst $38                                       ; $3533: $ff

Jump_000_3534:
    rst $38                                       ; $3534: $ff

Jump_000_3535:
    rst $38                                       ; $3535: $ff
    rst $38                                       ; $3536: $ff
    rst $38                                       ; $3537: $ff
    rst $38                                       ; $3538: $ff

Call_000_3539:
Jump_000_3539:
    rst $38                                       ; $3539: $ff

Jump_000_353a:
    rst $38                                       ; $353a: $ff
    rst $38                                       ; $353b: $ff
    rst $38                                       ; $353c: $ff

Call_000_353d:
    rst $38                                       ; $353d: $ff
    rst $38                                       ; $353e: $ff
    rst $38                                       ; $353f: $ff
    rst $38                                       ; $3540: $ff
    rst $38                                       ; $3541: $ff
    rst $38                                       ; $3542: $ff
    rst $38                                       ; $3543: $ff
    rst $38                                       ; $3544: $ff
    rst $38                                       ; $3545: $ff
    rst $38                                       ; $3546: $ff
    rst $38                                       ; $3547: $ff
    rst $38                                       ; $3548: $ff
    rst $38                                       ; $3549: $ff
    rst $38                                       ; $354a: $ff
    rst $38                                       ; $354b: $ff
    rst $38                                       ; $354c: $ff
    rst $38                                       ; $354d: $ff
    rst $38                                       ; $354e: $ff
    rst $38                                       ; $354f: $ff
    rst $38                                       ; $3550: $ff
    rst $38                                       ; $3551: $ff
    rst $38                                       ; $3552: $ff
    rst $38                                       ; $3553: $ff
    rst $38                                       ; $3554: $ff
    rst $38                                       ; $3555: $ff
    rst $38                                       ; $3556: $ff
    rst $38                                       ; $3557: $ff
    rst $38                                       ; $3558: $ff
    rst $38                                       ; $3559: $ff
    rst $38                                       ; $355a: $ff
    rst $38                                       ; $355b: $ff
    rst $38                                       ; $355c: $ff
    rst $38                                       ; $355d: $ff
    rst $38                                       ; $355e: $ff
    rst $38                                       ; $355f: $ff
    rst $38                                       ; $3560: $ff

Jump_000_3561:
    rst $38                                       ; $3561: $ff
    rst $38                                       ; $3562: $ff
    rst $38                                       ; $3563: $ff
    rst $38                                       ; $3564: $ff
    rst $38                                       ; $3565: $ff
    rst $38                                       ; $3566: $ff
    rst $38                                       ; $3567: $ff
    rst $38                                       ; $3568: $ff

Jump_000_3569:
    rst $38                                       ; $3569: $ff
    rst $38                                       ; $356a: $ff
    rst $38                                       ; $356b: $ff
    rst $38                                       ; $356c: $ff
    rst $38                                       ; $356d: $ff
    rst $38                                       ; $356e: $ff
    rst $38                                       ; $356f: $ff
    rst $38                                       ; $3570: $ff
    rst $38                                       ; $3571: $ff
    rst $38                                       ; $3572: $ff
    rst $38                                       ; $3573: $ff
    rst $38                                       ; $3574: $ff
    rst $38                                       ; $3575: $ff
    rst $38                                       ; $3576: $ff
    rst $38                                       ; $3577: $ff
    rst $38                                       ; $3578: $ff
    rst $38                                       ; $3579: $ff
    rst $38                                       ; $357a: $ff
    rst $38                                       ; $357b: $ff
    rst $38                                       ; $357c: $ff
    rst $38                                       ; $357d: $ff
    rst $38                                       ; $357e: $ff
    rst $38                                       ; $357f: $ff

Jump_000_3580:
    rst $38                                       ; $3580: $ff
    rst $38                                       ; $3581: $ff
    rst $38                                       ; $3582: $ff
    rst $38                                       ; $3583: $ff
    rst $38                                       ; $3584: $ff
    rst $38                                       ; $3585: $ff
    rst $38                                       ; $3586: $ff
    rst $38                                       ; $3587: $ff
    rst $38                                       ; $3588: $ff
    rst $38                                       ; $3589: $ff
    rst $38                                       ; $358a: $ff
    rst $38                                       ; $358b: $ff
    rst $38                                       ; $358c: $ff
    rst $38                                       ; $358d: $ff
    rst $38                                       ; $358e: $ff
    rst $38                                       ; $358f: $ff
    rst $38                                       ; $3590: $ff
    rst $38                                       ; $3591: $ff
    rst $38                                       ; $3592: $ff
    rst $38                                       ; $3593: $ff
    rst $38                                       ; $3594: $ff
    rst $38                                       ; $3595: $ff
    rst $38                                       ; $3596: $ff
    rst $38                                       ; $3597: $ff
    rst $38                                       ; $3598: $ff
    rst $38                                       ; $3599: $ff
    rst $38                                       ; $359a: $ff
    rst $38                                       ; $359b: $ff
    rst $38                                       ; $359c: $ff
    rst $38                                       ; $359d: $ff
    rst $38                                       ; $359e: $ff
    rst $38                                       ; $359f: $ff

Call_000_35a0:
Jump_000_35a0:
    rst $38                                       ; $35a0: $ff
    rst $38                                       ; $35a1: $ff
    rst $38                                       ; $35a2: $ff
    rst $38                                       ; $35a3: $ff
    rst $38                                       ; $35a4: $ff
    rst $38                                       ; $35a5: $ff
    rst $38                                       ; $35a6: $ff
    rst $38                                       ; $35a7: $ff
    rst $38                                       ; $35a8: $ff
    rst $38                                       ; $35a9: $ff
    rst $38                                       ; $35aa: $ff
    rst $38                                       ; $35ab: $ff
    rst $38                                       ; $35ac: $ff

Jump_000_35ad:
    rst $38                                       ; $35ad: $ff
    rst $38                                       ; $35ae: $ff
    rst $38                                       ; $35af: $ff
    rst $38                                       ; $35b0: $ff
    rst $38                                       ; $35b1: $ff
    rst $38                                       ; $35b2: $ff
    rst $38                                       ; $35b3: $ff
    rst $38                                       ; $35b4: $ff
    rst $38                                       ; $35b5: $ff
    rst $38                                       ; $35b6: $ff
    rst $38                                       ; $35b7: $ff
    rst $38                                       ; $35b8: $ff
    rst $38                                       ; $35b9: $ff
    rst $38                                       ; $35ba: $ff
    rst $38                                       ; $35bb: $ff
    rst $38                                       ; $35bc: $ff
    rst $38                                       ; $35bd: $ff
    rst $38                                       ; $35be: $ff
    rst $38                                       ; $35bf: $ff
    rst $38                                       ; $35c0: $ff
    rst $38                                       ; $35c1: $ff

Call_000_35c2:
    rst $38                                       ; $35c2: $ff
    rst $38                                       ; $35c3: $ff
    rst $38                                       ; $35c4: $ff
    rst $38                                       ; $35c5: $ff
    rst $38                                       ; $35c6: $ff
    rst $38                                       ; $35c7: $ff
    rst $38                                       ; $35c8: $ff
    rst $38                                       ; $35c9: $ff
    rst $38                                       ; $35ca: $ff

Jump_000_35cb:
    rst $38                                       ; $35cb: $ff
    rst $38                                       ; $35cc: $ff

Jump_000_35cd:
    rst $38                                       ; $35cd: $ff

Call_000_35ce:
    rst $38                                       ; $35ce: $ff

Call_000_35cf:
    rst $38                                       ; $35cf: $ff
    rst $38                                       ; $35d0: $ff
    rst $38                                       ; $35d1: $ff
    rst $38                                       ; $35d2: $ff

Jump_000_35d3:
    rst $38                                       ; $35d3: $ff
    rst $38                                       ; $35d4: $ff
    rst $38                                       ; $35d5: $ff
    rst $38                                       ; $35d6: $ff

Call_000_35d7:
Jump_000_35d7:
    rst $38                                       ; $35d7: $ff
    rst $38                                       ; $35d8: $ff
    rst $38                                       ; $35d9: $ff
    rst $38                                       ; $35da: $ff
    rst $38                                       ; $35db: $ff
    rst $38                                       ; $35dc: $ff
    rst $38                                       ; $35dd: $ff
    rst $38                                       ; $35de: $ff
    rst $38                                       ; $35df: $ff

Jump_000_35e0:
    rst $38                                       ; $35e0: $ff
    rst $38                                       ; $35e1: $ff

Jump_000_35e2:
    rst $38                                       ; $35e2: $ff
    rst $38                                       ; $35e3: $ff
    rst $38                                       ; $35e4: $ff
    rst $38                                       ; $35e5: $ff
    rst $38                                       ; $35e6: $ff

Call_000_35e7:
    rst $38                                       ; $35e7: $ff

Jump_000_35e8:
    rst $38                                       ; $35e8: $ff
    rst $38                                       ; $35e9: $ff
    rst $38                                       ; $35ea: $ff
    rst $38                                       ; $35eb: $ff
    rst $38                                       ; $35ec: $ff
    rst $38                                       ; $35ed: $ff
    rst $38                                       ; $35ee: $ff
    rst $38                                       ; $35ef: $ff
    rst $38                                       ; $35f0: $ff
    rst $38                                       ; $35f1: $ff
    rst $38                                       ; $35f2: $ff
    rst $38                                       ; $35f3: $ff
    rst $38                                       ; $35f4: $ff
    rst $38                                       ; $35f5: $ff
    rst $38                                       ; $35f6: $ff
    rst $38                                       ; $35f7: $ff
    rst $38                                       ; $35f8: $ff
    rst $38                                       ; $35f9: $ff
    rst $38                                       ; $35fa: $ff
    rst $38                                       ; $35fb: $ff
    rst $38                                       ; $35fc: $ff
    rst $38                                       ; $35fd: $ff

Jump_000_35fe:
    rst $38                                       ; $35fe: $ff
    rst $38                                       ; $35ff: $ff

Call_000_3600:
    rst $38                                       ; $3600: $ff
    rst $38                                       ; $3601: $ff
    rst $38                                       ; $3602: $ff
    rst $38                                       ; $3603: $ff
    rst $38                                       ; $3604: $ff
    rst $38                                       ; $3605: $ff
    rst $38                                       ; $3606: $ff
    rst $38                                       ; $3607: $ff
    rst $38                                       ; $3608: $ff
    rst $38                                       ; $3609: $ff
    rst $38                                       ; $360a: $ff
    rst $38                                       ; $360b: $ff
    rst $38                                       ; $360c: $ff
    rst $38                                       ; $360d: $ff
    rst $38                                       ; $360e: $ff
    rst $38                                       ; $360f: $ff
    rst $38                                       ; $3610: $ff
    rst $38                                       ; $3611: $ff
    rst $38                                       ; $3612: $ff
    rst $38                                       ; $3613: $ff
    rst $38                                       ; $3614: $ff
    rst $38                                       ; $3615: $ff
    rst $38                                       ; $3616: $ff
    rst $38                                       ; $3617: $ff
    rst $38                                       ; $3618: $ff
    rst $38                                       ; $3619: $ff
    rst $38                                       ; $361a: $ff
    rst $38                                       ; $361b: $ff
    rst $38                                       ; $361c: $ff
    rst $38                                       ; $361d: $ff
    rst $38                                       ; $361e: $ff

Call_000_361f:
    rst $38                                       ; $361f: $ff

Jump_000_3620:
    rst $38                                       ; $3620: $ff
    rst $38                                       ; $3621: $ff
    rst $38                                       ; $3622: $ff
    rst $38                                       ; $3623: $ff
    rst $38                                       ; $3624: $ff
    rst $38                                       ; $3625: $ff
    rst $38                                       ; $3626: $ff
    rst $38                                       ; $3627: $ff
    rst $38                                       ; $3628: $ff
    rst $38                                       ; $3629: $ff
    rst $38                                       ; $362a: $ff

Jump_000_362b:
    rst $38                                       ; $362b: $ff
    rst $38                                       ; $362c: $ff
    rst $38                                       ; $362d: $ff
    rst $38                                       ; $362e: $ff
    rst $38                                       ; $362f: $ff
    rst $38                                       ; $3630: $ff

Jump_000_3631:
    rst $38                                       ; $3631: $ff
    rst $38                                       ; $3632: $ff

Call_000_3633:
    rst $38                                       ; $3633: $ff
    rst $38                                       ; $3634: $ff

Jump_000_3635:
    rst $38                                       ; $3635: $ff
    rst $38                                       ; $3636: $ff
    rst $38                                       ; $3637: $ff
    rst $38                                       ; $3638: $ff
    rst $38                                       ; $3639: $ff
    rst $38                                       ; $363a: $ff

Call_000_363b:
    rst $38                                       ; $363b: $ff

Jump_000_363c:
    rst $38                                       ; $363c: $ff

Call_000_363d:
    rst $38                                       ; $363d: $ff

Jump_000_363e:
    rst $38                                       ; $363e: $ff

Call_000_363f:
Jump_000_363f:
    rst $38                                       ; $363f: $ff
    rst $38                                       ; $3640: $ff
    rst $38                                       ; $3641: $ff

Call_000_3642:
    rst $38                                       ; $3642: $ff
    rst $38                                       ; $3643: $ff
    rst $38                                       ; $3644: $ff

Call_000_3645:
Jump_000_3645:
    rst $38                                       ; $3645: $ff
    rst $38                                       ; $3646: $ff
    rst $38                                       ; $3647: $ff
    rst $38                                       ; $3648: $ff
    rst $38                                       ; $3649: $ff
    rst $38                                       ; $364a: $ff
    rst $38                                       ; $364b: $ff
    rst $38                                       ; $364c: $ff
    rst $38                                       ; $364d: $ff
    rst $38                                       ; $364e: $ff
    rst $38                                       ; $364f: $ff
    rst $38                                       ; $3650: $ff

Jump_000_3651:
    rst $38                                       ; $3651: $ff
    rst $38                                       ; $3652: $ff
    rst $38                                       ; $3653: $ff
    rst $38                                       ; $3654: $ff
    rst $38                                       ; $3655: $ff
    rst $38                                       ; $3656: $ff
    rst $38                                       ; $3657: $ff
    rst $38                                       ; $3658: $ff
    rst $38                                       ; $3659: $ff
    rst $38                                       ; $365a: $ff
    rst $38                                       ; $365b: $ff

Jump_000_365c:
    rst $38                                       ; $365c: $ff
    rst $38                                       ; $365d: $ff
    rst $38                                       ; $365e: $ff
    rst $38                                       ; $365f: $ff

Call_000_3660:
    rst $38                                       ; $3660: $ff
    rst $38                                       ; $3661: $ff
    rst $38                                       ; $3662: $ff
    rst $38                                       ; $3663: $ff
    rst $38                                       ; $3664: $ff
    rst $38                                       ; $3665: $ff

Jump_000_3666:
    rst $38                                       ; $3666: $ff
    rst $38                                       ; $3667: $ff
    rst $38                                       ; $3668: $ff

Jump_000_3669:
    rst $38                                       ; $3669: $ff
    rst $38                                       ; $366a: $ff
    rst $38                                       ; $366b: $ff
    rst $38                                       ; $366c: $ff

Jump_000_366d:
    rst $38                                       ; $366d: $ff
    rst $38                                       ; $366e: $ff
    rst $38                                       ; $366f: $ff
    rst $38                                       ; $3670: $ff
    rst $38                                       ; $3671: $ff
    rst $38                                       ; $3672: $ff
    rst $38                                       ; $3673: $ff
    rst $38                                       ; $3674: $ff
    rst $38                                       ; $3675: $ff
    rst $38                                       ; $3676: $ff
    rst $38                                       ; $3677: $ff
    rst $38                                       ; $3678: $ff
    rst $38                                       ; $3679: $ff
    rst $38                                       ; $367a: $ff
    rst $38                                       ; $367b: $ff
    rst $38                                       ; $367c: $ff
    rst $38                                       ; $367d: $ff
    rst $38                                       ; $367e: $ff
    rst $38                                       ; $367f: $ff
    rst $38                                       ; $3680: $ff

Jump_000_3681:
    rst $38                                       ; $3681: $ff
    rst $38                                       ; $3682: $ff
    rst $38                                       ; $3683: $ff
    rst $38                                       ; $3684: $ff
    rst $38                                       ; $3685: $ff
    rst $38                                       ; $3686: $ff
    rst $38                                       ; $3687: $ff
    rst $38                                       ; $3688: $ff
    rst $38                                       ; $3689: $ff
    rst $38                                       ; $368a: $ff
    rst $38                                       ; $368b: $ff
    rst $38                                       ; $368c: $ff
    rst $38                                       ; $368d: $ff
    rst $38                                       ; $368e: $ff
    rst $38                                       ; $368f: $ff
    rst $38                                       ; $3690: $ff
    rst $38                                       ; $3691: $ff
    rst $38                                       ; $3692: $ff
    rst $38                                       ; $3693: $ff
    rst $38                                       ; $3694: $ff
    rst $38                                       ; $3695: $ff
    rst $38                                       ; $3696: $ff
    rst $38                                       ; $3697: $ff
    rst $38                                       ; $3698: $ff
    rst $38                                       ; $3699: $ff
    rst $38                                       ; $369a: $ff
    rst $38                                       ; $369b: $ff
    rst $38                                       ; $369c: $ff
    rst $38                                       ; $369d: $ff

Jump_000_369e:
    rst $38                                       ; $369e: $ff
    rst $38                                       ; $369f: $ff
    rst $38                                       ; $36a0: $ff
    rst $38                                       ; $36a1: $ff
    rst $38                                       ; $36a2: $ff
    rst $38                                       ; $36a3: $ff
    rst $38                                       ; $36a4: $ff
    rst $38                                       ; $36a5: $ff

Jump_000_36a6:
    rst $38                                       ; $36a6: $ff
    rst $38                                       ; $36a7: $ff
    rst $38                                       ; $36a8: $ff
    rst $38                                       ; $36a9: $ff
    rst $38                                       ; $36aa: $ff
    rst $38                                       ; $36ab: $ff
    rst $38                                       ; $36ac: $ff
    rst $38                                       ; $36ad: $ff

Jump_000_36ae:
    rst $38                                       ; $36ae: $ff

Call_000_36af:
    rst $38                                       ; $36af: $ff
    rst $38                                       ; $36b0: $ff
    rst $38                                       ; $36b1: $ff
    rst $38                                       ; $36b2: $ff
    rst $38                                       ; $36b3: $ff
    rst $38                                       ; $36b4: $ff
    rst $38                                       ; $36b5: $ff
    rst $38                                       ; $36b6: $ff

Jump_000_36b7:
    rst $38                                       ; $36b7: $ff
    rst $38                                       ; $36b8: $ff
    rst $38                                       ; $36b9: $ff
    rst $38                                       ; $36ba: $ff
    rst $38                                       ; $36bb: $ff
    rst $38                                       ; $36bc: $ff
    rst $38                                       ; $36bd: $ff
    rst $38                                       ; $36be: $ff
    rst $38                                       ; $36bf: $ff

Jump_000_36c0:
    rst $38                                       ; $36c0: $ff

Call_000_36c1:
Jump_000_36c1:
    rst $38                                       ; $36c1: $ff
    rst $38                                       ; $36c2: $ff
    rst $38                                       ; $36c3: $ff
    rst $38                                       ; $36c4: $ff
    rst $38                                       ; $36c5: $ff
    rst $38                                       ; $36c6: $ff
    rst $38                                       ; $36c7: $ff
    rst $38                                       ; $36c8: $ff
    rst $38                                       ; $36c9: $ff
    rst $38                                       ; $36ca: $ff
    rst $38                                       ; $36cb: $ff

Call_000_36cc:
    rst $38                                       ; $36cc: $ff
    rst $38                                       ; $36cd: $ff
    rst $38                                       ; $36ce: $ff

Call_000_36cf:
    rst $38                                       ; $36cf: $ff
    rst $38                                       ; $36d0: $ff
    rst $38                                       ; $36d1: $ff
    rst $38                                       ; $36d2: $ff
    rst $38                                       ; $36d3: $ff
    rst $38                                       ; $36d4: $ff
    rst $38                                       ; $36d5: $ff
    rst $38                                       ; $36d6: $ff
    rst $38                                       ; $36d7: $ff
    rst $38                                       ; $36d8: $ff
    rst $38                                       ; $36d9: $ff
    rst $38                                       ; $36da: $ff
    rst $38                                       ; $36db: $ff
    rst $38                                       ; $36dc: $ff
    rst $38                                       ; $36dd: $ff
    rst $38                                       ; $36de: $ff
    rst $38                                       ; $36df: $ff

Jump_000_36e0:
    rst $38                                       ; $36e0: $ff

Jump_000_36e1:
    rst $38                                       ; $36e1: $ff

Jump_000_36e2:
    rst $38                                       ; $36e2: $ff
    rst $38                                       ; $36e3: $ff
    rst $38                                       ; $36e4: $ff
    rst $38                                       ; $36e5: $ff
    rst $38                                       ; $36e6: $ff

Jump_000_36e7:
    rst $38                                       ; $36e7: $ff
    rst $38                                       ; $36e8: $ff
    rst $38                                       ; $36e9: $ff
    rst $38                                       ; $36ea: $ff
    rst $38                                       ; $36eb: $ff
    rst $38                                       ; $36ec: $ff
    rst $38                                       ; $36ed: $ff
    rst $38                                       ; $36ee: $ff
    rst $38                                       ; $36ef: $ff
    rst $38                                       ; $36f0: $ff
    rst $38                                       ; $36f1: $ff
    rst $38                                       ; $36f2: $ff
    rst $38                                       ; $36f3: $ff
    rst $38                                       ; $36f4: $ff
    rst $38                                       ; $36f5: $ff
    rst $38                                       ; $36f6: $ff
    rst $38                                       ; $36f7: $ff
    rst $38                                       ; $36f8: $ff
    rst $38                                       ; $36f9: $ff
    rst $38                                       ; $36fa: $ff
    rst $38                                       ; $36fb: $ff
    rst $38                                       ; $36fc: $ff
    rst $38                                       ; $36fd: $ff
    rst $38                                       ; $36fe: $ff

Jump_000_36ff:
    rst $38                                       ; $36ff: $ff

Jump_000_3700:
    rst $38                                       ; $3700: $ff
    rst $38                                       ; $3701: $ff
    rst $38                                       ; $3702: $ff
    rst $38                                       ; $3703: $ff
    rst $38                                       ; $3704: $ff
    rst $38                                       ; $3705: $ff

Jump_000_3706:
    rst $38                                       ; $3706: $ff
    rst $38                                       ; $3707: $ff
    rst $38                                       ; $3708: $ff
    rst $38                                       ; $3709: $ff
    rst $38                                       ; $370a: $ff

Call_000_370b:
    rst $38                                       ; $370b: $ff
    rst $38                                       ; $370c: $ff
    rst $38                                       ; $370d: $ff
    rst $38                                       ; $370e: $ff
    rst $38                                       ; $370f: $ff
    rst $38                                       ; $3710: $ff
    rst $38                                       ; $3711: $ff
    rst $38                                       ; $3712: $ff
    rst $38                                       ; $3713: $ff
    rst $38                                       ; $3714: $ff
    rst $38                                       ; $3715: $ff
    rst $38                                       ; $3716: $ff
    rst $38                                       ; $3717: $ff
    rst $38                                       ; $3718: $ff

Jump_000_3719:
    rst $38                                       ; $3719: $ff
    rst $38                                       ; $371a: $ff
    rst $38                                       ; $371b: $ff
    rst $38                                       ; $371c: $ff
    rst $38                                       ; $371d: $ff
    rst $38                                       ; $371e: $ff
    rst $38                                       ; $371f: $ff
    rst $38                                       ; $3720: $ff
    rst $38                                       ; $3721: $ff
    rst $38                                       ; $3722: $ff
    rst $38                                       ; $3723: $ff
    rst $38                                       ; $3724: $ff
    rst $38                                       ; $3725: $ff

Call_000_3726:
    rst $38                                       ; $3726: $ff
    rst $38                                       ; $3727: $ff
    rst $38                                       ; $3728: $ff
    rst $38                                       ; $3729: $ff
    rst $38                                       ; $372a: $ff
    rst $38                                       ; $372b: $ff
    rst $38                                       ; $372c: $ff
    rst $38                                       ; $372d: $ff
    rst $38                                       ; $372e: $ff
    rst $38                                       ; $372f: $ff
    rst $38                                       ; $3730: $ff
    rst $38                                       ; $3731: $ff
    rst $38                                       ; $3732: $ff

Call_000_3733:
    rst $38                                       ; $3733: $ff
    rst $38                                       ; $3734: $ff
    rst $38                                       ; $3735: $ff

Jump_000_3736:
    rst $38                                       ; $3736: $ff
    rst $38                                       ; $3737: $ff

Call_000_3738:
    rst $38                                       ; $3738: $ff
    rst $38                                       ; $3739: $ff
    rst $38                                       ; $373a: $ff
    rst $38                                       ; $373b: $ff
    rst $38                                       ; $373c: $ff
    rst $38                                       ; $373d: $ff
    rst $38                                       ; $373e: $ff

Call_000_373f:
    rst $38                                       ; $373f: $ff
    rst $38                                       ; $3740: $ff
    rst $38                                       ; $3741: $ff
    rst $38                                       ; $3742: $ff
    rst $38                                       ; $3743: $ff
    rst $38                                       ; $3744: $ff

Jump_000_3745:
    rst $38                                       ; $3745: $ff

Call_000_3746:
    rst $38                                       ; $3746: $ff
    rst $38                                       ; $3747: $ff

Jump_000_3748:
    rst $38                                       ; $3748: $ff
    rst $38                                       ; $3749: $ff

Call_000_374a:
    rst $38                                       ; $374a: $ff
    rst $38                                       ; $374b: $ff
    rst $38                                       ; $374c: $ff
    rst $38                                       ; $374d: $ff
    rst $38                                       ; $374e: $ff
    rst $38                                       ; $374f: $ff
    rst $38                                       ; $3750: $ff
    rst $38                                       ; $3751: $ff
    rst $38                                       ; $3752: $ff
    rst $38                                       ; $3753: $ff
    rst $38                                       ; $3754: $ff
    rst $38                                       ; $3755: $ff

Call_000_3756:
    rst $38                                       ; $3756: $ff
    rst $38                                       ; $3757: $ff
    rst $38                                       ; $3758: $ff
    rst $38                                       ; $3759: $ff
    rst $38                                       ; $375a: $ff

Jump_000_375b:
    rst $38                                       ; $375b: $ff
    rst $38                                       ; $375c: $ff
    rst $38                                       ; $375d: $ff
    rst $38                                       ; $375e: $ff
    rst $38                                       ; $375f: $ff
    rst $38                                       ; $3760: $ff
    rst $38                                       ; $3761: $ff
    rst $38                                       ; $3762: $ff
    rst $38                                       ; $3763: $ff
    rst $38                                       ; $3764: $ff
    rst $38                                       ; $3765: $ff
    rst $38                                       ; $3766: $ff
    rst $38                                       ; $3767: $ff
    rst $38                                       ; $3768: $ff

Jump_000_3769:
    rst $38                                       ; $3769: $ff
    rst $38                                       ; $376a: $ff

Jump_000_376b:
    rst $38                                       ; $376b: $ff
    rst $38                                       ; $376c: $ff
    rst $38                                       ; $376d: $ff
    rst $38                                       ; $376e: $ff
    rst $38                                       ; $376f: $ff
    rst $38                                       ; $3770: $ff
    rst $38                                       ; $3771: $ff
    rst $38                                       ; $3772: $ff
    rst $38                                       ; $3773: $ff
    rst $38                                       ; $3774: $ff
    rst $38                                       ; $3775: $ff
    rst $38                                       ; $3776: $ff
    rst $38                                       ; $3777: $ff
    rst $38                                       ; $3778: $ff
    rst $38                                       ; $3779: $ff
    rst $38                                       ; $377a: $ff
    rst $38                                       ; $377b: $ff
    rst $38                                       ; $377c: $ff
    rst $38                                       ; $377d: $ff
    rst $38                                       ; $377e: $ff
    rst $38                                       ; $377f: $ff
    rst $38                                       ; $3780: $ff
    rst $38                                       ; $3781: $ff
    rst $38                                       ; $3782: $ff

Jump_000_3783:
    rst $38                                       ; $3783: $ff
    rst $38                                       ; $3784: $ff
    rst $38                                       ; $3785: $ff
    rst $38                                       ; $3786: $ff
    rst $38                                       ; $3787: $ff
    rst $38                                       ; $3788: $ff
    rst $38                                       ; $3789: $ff
    rst $38                                       ; $378a: $ff
    rst $38                                       ; $378b: $ff
    rst $38                                       ; $378c: $ff
    rst $38                                       ; $378d: $ff
    rst $38                                       ; $378e: $ff
    rst $38                                       ; $378f: $ff
    rst $38                                       ; $3790: $ff
    rst $38                                       ; $3791: $ff
    rst $38                                       ; $3792: $ff
    rst $38                                       ; $3793: $ff
    rst $38                                       ; $3794: $ff
    rst $38                                       ; $3795: $ff
    rst $38                                       ; $3796: $ff
    rst $38                                       ; $3797: $ff
    rst $38                                       ; $3798: $ff
    rst $38                                       ; $3799: $ff
    rst $38                                       ; $379a: $ff
    rst $38                                       ; $379b: $ff
    rst $38                                       ; $379c: $ff
    rst $38                                       ; $379d: $ff
    rst $38                                       ; $379e: $ff
    rst $38                                       ; $379f: $ff

Call_000_37a0:
    rst $38                                       ; $37a0: $ff
    rst $38                                       ; $37a1: $ff
    rst $38                                       ; $37a2: $ff
    rst $38                                       ; $37a3: $ff
    rst $38                                       ; $37a4: $ff
    rst $38                                       ; $37a5: $ff
    rst $38                                       ; $37a6: $ff
    rst $38                                       ; $37a7: $ff
    rst $38                                       ; $37a8: $ff
    rst $38                                       ; $37a9: $ff
    rst $38                                       ; $37aa: $ff
    rst $38                                       ; $37ab: $ff
    rst $38                                       ; $37ac: $ff
    rst $38                                       ; $37ad: $ff
    rst $38                                       ; $37ae: $ff
    rst $38                                       ; $37af: $ff
    rst $38                                       ; $37b0: $ff
    rst $38                                       ; $37b1: $ff
    rst $38                                       ; $37b2: $ff
    rst $38                                       ; $37b3: $ff
    rst $38                                       ; $37b4: $ff
    rst $38                                       ; $37b5: $ff
    rst $38                                       ; $37b6: $ff
    rst $38                                       ; $37b7: $ff
    rst $38                                       ; $37b8: $ff
    rst $38                                       ; $37b9: $ff
    rst $38                                       ; $37ba: $ff
    rst $38                                       ; $37bb: $ff
    rst $38                                       ; $37bc: $ff
    rst $38                                       ; $37bd: $ff
    rst $38                                       ; $37be: $ff
    rst $38                                       ; $37bf: $ff

Jump_000_37c0:
    rst $38                                       ; $37c0: $ff

Jump_000_37c1:
    rst $38                                       ; $37c1: $ff
    rst $38                                       ; $37c2: $ff
    rst $38                                       ; $37c3: $ff
    rst $38                                       ; $37c4: $ff
    rst $38                                       ; $37c5: $ff
    rst $38                                       ; $37c6: $ff
    rst $38                                       ; $37c7: $ff
    rst $38                                       ; $37c8: $ff
    rst $38                                       ; $37c9: $ff
    rst $38                                       ; $37ca: $ff
    rst $38                                       ; $37cb: $ff
    rst $38                                       ; $37cc: $ff
    rst $38                                       ; $37cd: $ff
    rst $38                                       ; $37ce: $ff
    rst $38                                       ; $37cf: $ff
    rst $38                                       ; $37d0: $ff
    rst $38                                       ; $37d1: $ff
    rst $38                                       ; $37d2: $ff
    rst $38                                       ; $37d3: $ff
    rst $38                                       ; $37d4: $ff
    rst $38                                       ; $37d5: $ff
    rst $38                                       ; $37d6: $ff
    rst $38                                       ; $37d7: $ff
    rst $38                                       ; $37d8: $ff
    rst $38                                       ; $37d9: $ff
    rst $38                                       ; $37da: $ff
    rst $38                                       ; $37db: $ff
    rst $38                                       ; $37dc: $ff

Jump_000_37dd:
    rst $38                                       ; $37dd: $ff
    rst $38                                       ; $37de: $ff
    rst $38                                       ; $37df: $ff

Call_000_37e0:
Jump_000_37e0:
    rst $38                                       ; $37e0: $ff
    rst $38                                       ; $37e1: $ff
    rst $38                                       ; $37e2: $ff
    rst $38                                       ; $37e3: $ff

Jump_000_37e4:
    rst $38                                       ; $37e4: $ff
    rst $38                                       ; $37e5: $ff
    rst $38                                       ; $37e6: $ff
    rst $38                                       ; $37e7: $ff
    rst $38                                       ; $37e8: $ff
    rst $38                                       ; $37e9: $ff

Call_000_37ea:
    rst $38                                       ; $37ea: $ff

Jump_000_37eb:
    rst $38                                       ; $37eb: $ff
    rst $38                                       ; $37ec: $ff
    rst $38                                       ; $37ed: $ff
    rst $38                                       ; $37ee: $ff
    rst $38                                       ; $37ef: $ff
    rst $38                                       ; $37f0: $ff
    rst $38                                       ; $37f1: $ff
    rst $38                                       ; $37f2: $ff
    rst $38                                       ; $37f3: $ff
    rst $38                                       ; $37f4: $ff
    rst $38                                       ; $37f5: $ff
    rst $38                                       ; $37f6: $ff
    rst $38                                       ; $37f7: $ff
    rst $38                                       ; $37f8: $ff
    rst $38                                       ; $37f9: $ff
    rst $38                                       ; $37fa: $ff
    rst $38                                       ; $37fb: $ff
    rst $38                                       ; $37fc: $ff
    rst $38                                       ; $37fd: $ff
    rst $38                                       ; $37fe: $ff

Call_000_37ff:
    rst $38                                       ; $37ff: $ff
    rst $38                                       ; $3800: $ff
    rst $38                                       ; $3801: $ff
    rst $38                                       ; $3802: $ff
    rst $38                                       ; $3803: $ff
    rst $38                                       ; $3804: $ff
    rst $38                                       ; $3805: $ff
    rst $38                                       ; $3806: $ff
    rst $38                                       ; $3807: $ff
    rst $38                                       ; $3808: $ff
    rst $38                                       ; $3809: $ff
    rst $38                                       ; $380a: $ff
    rst $38                                       ; $380b: $ff
    rst $38                                       ; $380c: $ff
    rst $38                                       ; $380d: $ff
    rst $38                                       ; $380e: $ff
    rst $38                                       ; $380f: $ff
    rst $38                                       ; $3810: $ff
    rst $38                                       ; $3811: $ff
    rst $38                                       ; $3812: $ff
    rst $38                                       ; $3813: $ff
    rst $38                                       ; $3814: $ff

Jump_000_3815:
    rst $38                                       ; $3815: $ff
    rst $38                                       ; $3816: $ff
    rst $38                                       ; $3817: $ff
    rst $38                                       ; $3818: $ff
    rst $38                                       ; $3819: $ff
    rst $38                                       ; $381a: $ff
    rst $38                                       ; $381b: $ff
    rst $38                                       ; $381c: $ff
    rst $38                                       ; $381d: $ff
    rst $38                                       ; $381e: $ff
    rst $38                                       ; $381f: $ff

Jump_000_3820:
    rst $38                                       ; $3820: $ff
    rst $38                                       ; $3821: $ff
    rst $38                                       ; $3822: $ff
    rst $38                                       ; $3823: $ff

Jump_000_3824:
    rst $38                                       ; $3824: $ff
    rst $38                                       ; $3825: $ff
    rst $38                                       ; $3826: $ff
    rst $38                                       ; $3827: $ff
    rst $38                                       ; $3828: $ff
    rst $38                                       ; $3829: $ff
    rst $38                                       ; $382a: $ff

Jump_000_382b:
    rst $38                                       ; $382b: $ff
    rst $38                                       ; $382c: $ff
    rst $38                                       ; $382d: $ff
    rst $38                                       ; $382e: $ff
    rst $38                                       ; $382f: $ff
    rst $38                                       ; $3830: $ff
    rst $38                                       ; $3831: $ff
    rst $38                                       ; $3832: $ff

Call_000_3833:
    rst $38                                       ; $3833: $ff
    rst $38                                       ; $3834: $ff
    rst $38                                       ; $3835: $ff
    rst $38                                       ; $3836: $ff
    rst $38                                       ; $3837: $ff

Call_000_3838:
    rst $38                                       ; $3838: $ff
    rst $38                                       ; $3839: $ff
    rst $38                                       ; $383a: $ff

Jump_000_383b:
    rst $38                                       ; $383b: $ff

Jump_000_383c:
    rst $38                                       ; $383c: $ff
    rst $38                                       ; $383d: $ff
    rst $38                                       ; $383e: $ff
    rst $38                                       ; $383f: $ff

Jump_000_3840:
    rst $38                                       ; $3840: $ff

Jump_000_3841:
    rst $38                                       ; $3841: $ff
    rst $38                                       ; $3842: $ff
    rst $38                                       ; $3843: $ff
    rst $38                                       ; $3844: $ff
    rst $38                                       ; $3845: $ff
    rst $38                                       ; $3846: $ff
    rst $38                                       ; $3847: $ff
    rst $38                                       ; $3848: $ff
    rst $38                                       ; $3849: $ff
    rst $38                                       ; $384a: $ff
    rst $38                                       ; $384b: $ff
    rst $38                                       ; $384c: $ff
    rst $38                                       ; $384d: $ff
    rst $38                                       ; $384e: $ff
    rst $38                                       ; $384f: $ff
    rst $38                                       ; $3850: $ff
    rst $38                                       ; $3851: $ff
    rst $38                                       ; $3852: $ff
    rst $38                                       ; $3853: $ff
    rst $38                                       ; $3854: $ff

Jump_000_3855:
    rst $38                                       ; $3855: $ff
    rst $38                                       ; $3856: $ff
    rst $38                                       ; $3857: $ff
    rst $38                                       ; $3858: $ff
    rst $38                                       ; $3859: $ff
    rst $38                                       ; $385a: $ff
    rst $38                                       ; $385b: $ff
    rst $38                                       ; $385c: $ff
    rst $38                                       ; $385d: $ff
    rst $38                                       ; $385e: $ff

Jump_000_385f:
    rst $38                                       ; $385f: $ff

Call_000_3860:
    rst $38                                       ; $3860: $ff
    rst $38                                       ; $3861: $ff
    rst $38                                       ; $3862: $ff
    rst $38                                       ; $3863: $ff

Call_000_3864:
    rst $38                                       ; $3864: $ff
    rst $38                                       ; $3865: $ff
    rst $38                                       ; $3866: $ff
    rst $38                                       ; $3867: $ff
    rst $38                                       ; $3868: $ff

Jump_000_3869:
    rst $38                                       ; $3869: $ff
    rst $38                                       ; $386a: $ff
    rst $38                                       ; $386b: $ff
    rst $38                                       ; $386c: $ff
    rst $38                                       ; $386d: $ff
    rst $38                                       ; $386e: $ff
    rst $38                                       ; $386f: $ff
    rst $38                                       ; $3870: $ff

Call_000_3871:
    rst $38                                       ; $3871: $ff
    rst $38                                       ; $3872: $ff
    rst $38                                       ; $3873: $ff
    rst $38                                       ; $3874: $ff
    rst $38                                       ; $3875: $ff
    rst $38                                       ; $3876: $ff
    rst $38                                       ; $3877: $ff
    rst $38                                       ; $3878: $ff
    rst $38                                       ; $3879: $ff
    rst $38                                       ; $387a: $ff
    rst $38                                       ; $387b: $ff
    rst $38                                       ; $387c: $ff
    rst $38                                       ; $387d: $ff
    rst $38                                       ; $387e: $ff
    rst $38                                       ; $387f: $ff
    rst $38                                       ; $3880: $ff

Jump_000_3881:
    rst $38                                       ; $3881: $ff
    rst $38                                       ; $3882: $ff
    rst $38                                       ; $3883: $ff
    rst $38                                       ; $3884: $ff
    rst $38                                       ; $3885: $ff
    rst $38                                       ; $3886: $ff
    rst $38                                       ; $3887: $ff
    rst $38                                       ; $3888: $ff
    rst $38                                       ; $3889: $ff
    rst $38                                       ; $388a: $ff
    rst $38                                       ; $388b: $ff
    rst $38                                       ; $388c: $ff
    rst $38                                       ; $388d: $ff
    rst $38                                       ; $388e: $ff
    rst $38                                       ; $388f: $ff
    rst $38                                       ; $3890: $ff
    rst $38                                       ; $3891: $ff
    rst $38                                       ; $3892: $ff
    rst $38                                       ; $3893: $ff
    rst $38                                       ; $3894: $ff
    rst $38                                       ; $3895: $ff
    rst $38                                       ; $3896: $ff
    rst $38                                       ; $3897: $ff
    rst $38                                       ; $3898: $ff
    rst $38                                       ; $3899: $ff
    rst $38                                       ; $389a: $ff
    rst $38                                       ; $389b: $ff
    rst $38                                       ; $389c: $ff
    rst $38                                       ; $389d: $ff
    rst $38                                       ; $389e: $ff
    rst $38                                       ; $389f: $ff
    rst $38                                       ; $38a0: $ff
    rst $38                                       ; $38a1: $ff

Call_000_38a2:
    rst $38                                       ; $38a2: $ff
    rst $38                                       ; $38a3: $ff
    rst $38                                       ; $38a4: $ff
    rst $38                                       ; $38a5: $ff
    rst $38                                       ; $38a6: $ff
    rst $38                                       ; $38a7: $ff
    rst $38                                       ; $38a8: $ff
    rst $38                                       ; $38a9: $ff
    rst $38                                       ; $38aa: $ff
    rst $38                                       ; $38ab: $ff
    rst $38                                       ; $38ac: $ff
    rst $38                                       ; $38ad: $ff
    rst $38                                       ; $38ae: $ff
    rst $38                                       ; $38af: $ff
    rst $38                                       ; $38b0: $ff
    rst $38                                       ; $38b1: $ff
    rst $38                                       ; $38b2: $ff
    rst $38                                       ; $38b3: $ff
    rst $38                                       ; $38b4: $ff
    rst $38                                       ; $38b5: $ff
    rst $38                                       ; $38b6: $ff
    rst $38                                       ; $38b7: $ff
    rst $38                                       ; $38b8: $ff
    rst $38                                       ; $38b9: $ff
    rst $38                                       ; $38ba: $ff
    rst $38                                       ; $38bb: $ff
    rst $38                                       ; $38bc: $ff
    rst $38                                       ; $38bd: $ff
    rst $38                                       ; $38be: $ff
    rst $38                                       ; $38bf: $ff

Call_000_38c0:
    rst $38                                       ; $38c0: $ff

Jump_000_38c1:
    rst $38                                       ; $38c1: $ff
    rst $38                                       ; $38c2: $ff
    rst $38                                       ; $38c3: $ff
    rst $38                                       ; $38c4: $ff

Call_000_38c5:
    rst $38                                       ; $38c5: $ff
    rst $38                                       ; $38c6: $ff

Call_000_38c7:
Jump_000_38c7:
    rst $38                                       ; $38c7: $ff
    rst $38                                       ; $38c8: $ff
    rst $38                                       ; $38c9: $ff
    rst $38                                       ; $38ca: $ff
    rst $38                                       ; $38cb: $ff
    rst $38                                       ; $38cc: $ff

Call_000_38cd:
    rst $38                                       ; $38cd: $ff
    rst $38                                       ; $38ce: $ff
    rst $38                                       ; $38cf: $ff
    rst $38                                       ; $38d0: $ff
    rst $38                                       ; $38d1: $ff
    rst $38                                       ; $38d2: $ff
    rst $38                                       ; $38d3: $ff
    rst $38                                       ; $38d4: $ff
    rst $38                                       ; $38d5: $ff
    rst $38                                       ; $38d6: $ff
    rst $38                                       ; $38d7: $ff
    rst $38                                       ; $38d8: $ff
    rst $38                                       ; $38d9: $ff
    rst $38                                       ; $38da: $ff
    rst $38                                       ; $38db: $ff
    rst $38                                       ; $38dc: $ff
    rst $38                                       ; $38dd: $ff
    rst $38                                       ; $38de: $ff
    rst $38                                       ; $38df: $ff

Jump_000_38e0:
    rst $38                                       ; $38e0: $ff
    rst $38                                       ; $38e1: $ff

Jump_000_38e2:
    rst $38                                       ; $38e2: $ff
    rst $38                                       ; $38e3: $ff

Jump_000_38e4:
    rst $38                                       ; $38e4: $ff
    rst $38                                       ; $38e5: $ff
    rst $38                                       ; $38e6: $ff
    rst $38                                       ; $38e7: $ff
    rst $38                                       ; $38e8: $ff
    rst $38                                       ; $38e9: $ff
    rst $38                                       ; $38ea: $ff
    rst $38                                       ; $38eb: $ff

Call_000_38ec:
    rst $38                                       ; $38ec: $ff
    rst $38                                       ; $38ed: $ff
    rst $38                                       ; $38ee: $ff
    rst $38                                       ; $38ef: $ff
    rst $38                                       ; $38f0: $ff
    rst $38                                       ; $38f1: $ff
    rst $38                                       ; $38f2: $ff
    rst $38                                       ; $38f3: $ff
    rst $38                                       ; $38f4: $ff
    rst $38                                       ; $38f5: $ff
    rst $38                                       ; $38f6: $ff
    rst $38                                       ; $38f7: $ff

Call_000_38f8:
    rst $38                                       ; $38f8: $ff
    rst $38                                       ; $38f9: $ff
    rst $38                                       ; $38fa: $ff
    rst $38                                       ; $38fb: $ff

Call_000_38fc:
    rst $38                                       ; $38fc: $ff
    rst $38                                       ; $38fd: $ff
    rst $38                                       ; $38fe: $ff

Call_000_38ff:
Jump_000_38ff:
    rst $38                                       ; $38ff: $ff
    rst $38                                       ; $3900: $ff

Jump_000_3901:
    rst $38                                       ; $3901: $ff
    rst $38                                       ; $3902: $ff
    rst $38                                       ; $3903: $ff
    rst $38                                       ; $3904: $ff

Jump_000_3905:
    rst $38                                       ; $3905: $ff
    rst $38                                       ; $3906: $ff

Jump_000_3907:
    rst $38                                       ; $3907: $ff
    rst $38                                       ; $3908: $ff
    rst $38                                       ; $3909: $ff
    rst $38                                       ; $390a: $ff

Jump_000_390b:
    rst $38                                       ; $390b: $ff
    rst $38                                       ; $390c: $ff
    rst $38                                       ; $390d: $ff
    rst $38                                       ; $390e: $ff
    rst $38                                       ; $390f: $ff
    rst $38                                       ; $3910: $ff
    rst $38                                       ; $3911: $ff
    rst $38                                       ; $3912: $ff
    rst $38                                       ; $3913: $ff
    rst $38                                       ; $3914: $ff
    rst $38                                       ; $3915: $ff
    rst $38                                       ; $3916: $ff
    rst $38                                       ; $3917: $ff
    rst $38                                       ; $3918: $ff
    rst $38                                       ; $3919: $ff
    rst $38                                       ; $391a: $ff
    rst $38                                       ; $391b: $ff
    rst $38                                       ; $391c: $ff
    rst $38                                       ; $391d: $ff
    rst $38                                       ; $391e: $ff
    rst $38                                       ; $391f: $ff
    rst $38                                       ; $3920: $ff
    rst $38                                       ; $3921: $ff
    rst $38                                       ; $3922: $ff
    rst $38                                       ; $3923: $ff
    rst $38                                       ; $3924: $ff
    rst $38                                       ; $3925: $ff
    rst $38                                       ; $3926: $ff
    rst $38                                       ; $3927: $ff
    rst $38                                       ; $3928: $ff
    rst $38                                       ; $3929: $ff
    rst $38                                       ; $392a: $ff
    rst $38                                       ; $392b: $ff
    rst $38                                       ; $392c: $ff
    rst $38                                       ; $392d: $ff
    rst $38                                       ; $392e: $ff
    rst $38                                       ; $392f: $ff
    rst $38                                       ; $3930: $ff
    rst $38                                       ; $3931: $ff
    rst $38                                       ; $3932: $ff
    rst $38                                       ; $3933: $ff
    rst $38                                       ; $3934: $ff

Jump_000_3935:
    rst $38                                       ; $3935: $ff
    rst $38                                       ; $3936: $ff

Jump_000_3937:
    rst $38                                       ; $3937: $ff
    rst $38                                       ; $3938: $ff

Jump_000_3939:
    rst $38                                       ; $3939: $ff
    rst $38                                       ; $393a: $ff
    rst $38                                       ; $393b: $ff
    rst $38                                       ; $393c: $ff
    rst $38                                       ; $393d: $ff
    rst $38                                       ; $393e: $ff
    rst $38                                       ; $393f: $ff
    rst $38                                       ; $3940: $ff
    rst $38                                       ; $3941: $ff
    rst $38                                       ; $3942: $ff
    rst $38                                       ; $3943: $ff
    rst $38                                       ; $3944: $ff

Jump_000_3945:
    rst $38                                       ; $3945: $ff

Jump_000_3946:
    rst $38                                       ; $3946: $ff
    rst $38                                       ; $3947: $ff
    rst $38                                       ; $3948: $ff
    rst $38                                       ; $3949: $ff
    rst $38                                       ; $394a: $ff
    rst $38                                       ; $394b: $ff
    rst $38                                       ; $394c: $ff
    rst $38                                       ; $394d: $ff
    rst $38                                       ; $394e: $ff
    rst $38                                       ; $394f: $ff
    rst $38                                       ; $3950: $ff
    rst $38                                       ; $3951: $ff
    rst $38                                       ; $3952: $ff
    rst $38                                       ; $3953: $ff
    rst $38                                       ; $3954: $ff

Call_000_3955:
    rst $38                                       ; $3955: $ff
    rst $38                                       ; $3956: $ff
    rst $38                                       ; $3957: $ff
    rst $38                                       ; $3958: $ff
    rst $38                                       ; $3959: $ff
    rst $38                                       ; $395a: $ff
    rst $38                                       ; $395b: $ff
    rst $38                                       ; $395c: $ff
    rst $38                                       ; $395d: $ff
    rst $38                                       ; $395e: $ff
    rst $38                                       ; $395f: $ff

Jump_000_3960:
    rst $38                                       ; $3960: $ff
    rst $38                                       ; $3961: $ff

Jump_000_3962:
    rst $38                                       ; $3962: $ff
    rst $38                                       ; $3963: $ff
    rst $38                                       ; $3964: $ff
    rst $38                                       ; $3965: $ff
    rst $38                                       ; $3966: $ff
    rst $38                                       ; $3967: $ff
    rst $38                                       ; $3968: $ff
    rst $38                                       ; $3969: $ff
    rst $38                                       ; $396a: $ff

Jump_000_396b:
    rst $38                                       ; $396b: $ff
    rst $38                                       ; $396c: $ff
    rst $38                                       ; $396d: $ff
    rst $38                                       ; $396e: $ff
    rst $38                                       ; $396f: $ff
    rst $38                                       ; $3970: $ff
    rst $38                                       ; $3971: $ff
    rst $38                                       ; $3972: $ff
    rst $38                                       ; $3973: $ff
    rst $38                                       ; $3974: $ff
    rst $38                                       ; $3975: $ff
    rst $38                                       ; $3976: $ff
    rst $38                                       ; $3977: $ff
    rst $38                                       ; $3978: $ff
    rst $38                                       ; $3979: $ff
    rst $38                                       ; $397a: $ff
    rst $38                                       ; $397b: $ff
    rst $38                                       ; $397c: $ff
    rst $38                                       ; $397d: $ff
    rst $38                                       ; $397e: $ff
    rst $38                                       ; $397f: $ff

Call_000_3980:
    rst $38                                       ; $3980: $ff
    rst $38                                       ; $3981: $ff
    rst $38                                       ; $3982: $ff
    rst $38                                       ; $3983: $ff

Jump_000_3984:
    rst $38                                       ; $3984: $ff
    rst $38                                       ; $3985: $ff

Jump_000_3986:
    rst $38                                       ; $3986: $ff
    rst $38                                       ; $3987: $ff
    rst $38                                       ; $3988: $ff
    rst $38                                       ; $3989: $ff
    rst $38                                       ; $398a: $ff
    rst $38                                       ; $398b: $ff
    rst $38                                       ; $398c: $ff
    rst $38                                       ; $398d: $ff
    rst $38                                       ; $398e: $ff
    rst $38                                       ; $398f: $ff
    rst $38                                       ; $3990: $ff

Call_000_3991:
    rst $38                                       ; $3991: $ff
    rst $38                                       ; $3992: $ff
    rst $38                                       ; $3993: $ff
    rst $38                                       ; $3994: $ff
    rst $38                                       ; $3995: $ff
    rst $38                                       ; $3996: $ff
    rst $38                                       ; $3997: $ff
    rst $38                                       ; $3998: $ff
    rst $38                                       ; $3999: $ff
    rst $38                                       ; $399a: $ff
    rst $38                                       ; $399b: $ff
    rst $38                                       ; $399c: $ff
    rst $38                                       ; $399d: $ff
    rst $38                                       ; $399e: $ff
    rst $38                                       ; $399f: $ff

Jump_000_39a0:
    rst $38                                       ; $39a0: $ff
    rst $38                                       ; $39a1: $ff
    rst $38                                       ; $39a2: $ff
    rst $38                                       ; $39a3: $ff

Call_000_39a4:
Jump_000_39a4:
    rst $38                                       ; $39a4: $ff
    rst $38                                       ; $39a5: $ff
    rst $38                                       ; $39a6: $ff
    rst $38                                       ; $39a7: $ff
    rst $38                                       ; $39a8: $ff
    rst $38                                       ; $39a9: $ff
    rst $38                                       ; $39aa: $ff
    rst $38                                       ; $39ab: $ff
    rst $38                                       ; $39ac: $ff
    rst $38                                       ; $39ad: $ff

Call_000_39ae:
    rst $38                                       ; $39ae: $ff
    rst $38                                       ; $39af: $ff
    rst $38                                       ; $39b0: $ff
    rst $38                                       ; $39b1: $ff
    rst $38                                       ; $39b2: $ff
    rst $38                                       ; $39b3: $ff
    rst $38                                       ; $39b4: $ff
    rst $38                                       ; $39b5: $ff
    rst $38                                       ; $39b6: $ff
    rst $38                                       ; $39b7: $ff
    rst $38                                       ; $39b8: $ff
    rst $38                                       ; $39b9: $ff
    rst $38                                       ; $39ba: $ff
    rst $38                                       ; $39bb: $ff
    rst $38                                       ; $39bc: $ff
    rst $38                                       ; $39bd: $ff
    rst $38                                       ; $39be: $ff
    rst $38                                       ; $39bf: $ff
    rst $38                                       ; $39c0: $ff
    rst $38                                       ; $39c1: $ff

Call_000_39c2:
    rst $38                                       ; $39c2: $ff

Jump_000_39c3:
    rst $38                                       ; $39c3: $ff
    rst $38                                       ; $39c4: $ff
    rst $38                                       ; $39c5: $ff

Call_000_39c6:
    rst $38                                       ; $39c6: $ff

Jump_000_39c7:
    rst $38                                       ; $39c7: $ff
    rst $38                                       ; $39c8: $ff
    rst $38                                       ; $39c9: $ff
    rst $38                                       ; $39ca: $ff
    rst $38                                       ; $39cb: $ff
    rst $38                                       ; $39cc: $ff
    rst $38                                       ; $39cd: $ff
    rst $38                                       ; $39ce: $ff
    rst $38                                       ; $39cf: $ff
    rst $38                                       ; $39d0: $ff
    rst $38                                       ; $39d1: $ff
    rst $38                                       ; $39d2: $ff
    rst $38                                       ; $39d3: $ff
    rst $38                                       ; $39d4: $ff

Call_000_39d5:
    rst $38                                       ; $39d5: $ff
    rst $38                                       ; $39d6: $ff

Jump_000_39d7:
    rst $38                                       ; $39d7: $ff
    rst $38                                       ; $39d8: $ff
    rst $38                                       ; $39d9: $ff
    rst $38                                       ; $39da: $ff
    rst $38                                       ; $39db: $ff
    rst $38                                       ; $39dc: $ff
    rst $38                                       ; $39dd: $ff

Jump_000_39de:
    rst $38                                       ; $39de: $ff
    rst $38                                       ; $39df: $ff
    rst $38                                       ; $39e0: $ff

Call_000_39e1:
    rst $38                                       ; $39e1: $ff

Call_000_39e2:
    rst $38                                       ; $39e2: $ff
    rst $38                                       ; $39e3: $ff
    rst $38                                       ; $39e4: $ff
    rst $38                                       ; $39e5: $ff
    rst $38                                       ; $39e6: $ff
    rst $38                                       ; $39e7: $ff
    rst $38                                       ; $39e8: $ff
    rst $38                                       ; $39e9: $ff
    rst $38                                       ; $39ea: $ff
    rst $38                                       ; $39eb: $ff
    rst $38                                       ; $39ec: $ff
    rst $38                                       ; $39ed: $ff
    rst $38                                       ; $39ee: $ff
    rst $38                                       ; $39ef: $ff
    rst $38                                       ; $39f0: $ff
    rst $38                                       ; $39f1: $ff
    rst $38                                       ; $39f2: $ff
    rst $38                                       ; $39f3: $ff
    rst $38                                       ; $39f4: $ff
    rst $38                                       ; $39f5: $ff
    rst $38                                       ; $39f6: $ff
    rst $38                                       ; $39f7: $ff
    rst $38                                       ; $39f8: $ff
    rst $38                                       ; $39f9: $ff
    rst $38                                       ; $39fa: $ff
    rst $38                                       ; $39fb: $ff
    rst $38                                       ; $39fc: $ff
    rst $38                                       ; $39fd: $ff
    rst $38                                       ; $39fe: $ff

Call_000_39ff:
Jump_000_39ff:
    rst $38                                       ; $39ff: $ff

Jump_000_3a00:
    rst $38                                       ; $3a00: $ff
    rst $38                                       ; $3a01: $ff

Jump_000_3a02:
    rst $38                                       ; $3a02: $ff
    rst $38                                       ; $3a03: $ff
    rst $38                                       ; $3a04: $ff

Call_000_3a05:
    rst $38                                       ; $3a05: $ff
    rst $38                                       ; $3a06: $ff
    rst $38                                       ; $3a07: $ff
    rst $38                                       ; $3a08: $ff
    rst $38                                       ; $3a09: $ff
    rst $38                                       ; $3a0a: $ff
    rst $38                                       ; $3a0b: $ff
    rst $38                                       ; $3a0c: $ff
    rst $38                                       ; $3a0d: $ff
    rst $38                                       ; $3a0e: $ff

Jump_000_3a0f:
    rst $38                                       ; $3a0f: $ff
    rst $38                                       ; $3a10: $ff
    rst $38                                       ; $3a11: $ff
    rst $38                                       ; $3a12: $ff
    rst $38                                       ; $3a13: $ff

Jump_000_3a14:
    rst $38                                       ; $3a14: $ff
    rst $38                                       ; $3a15: $ff
    rst $38                                       ; $3a16: $ff
    rst $38                                       ; $3a17: $ff
    rst $38                                       ; $3a18: $ff
    rst $38                                       ; $3a19: $ff
    rst $38                                       ; $3a1a: $ff
    rst $38                                       ; $3a1b: $ff
    rst $38                                       ; $3a1c: $ff
    rst $38                                       ; $3a1d: $ff
    rst $38                                       ; $3a1e: $ff
    rst $38                                       ; $3a1f: $ff
    rst $38                                       ; $3a20: $ff
    rst $38                                       ; $3a21: $ff

Jump_000_3a22:
    rst $38                                       ; $3a22: $ff
    rst $38                                       ; $3a23: $ff
    rst $38                                       ; $3a24: $ff
    rst $38                                       ; $3a25: $ff
    rst $38                                       ; $3a26: $ff
    rst $38                                       ; $3a27: $ff
    rst $38                                       ; $3a28: $ff
    rst $38                                       ; $3a29: $ff
    rst $38                                       ; $3a2a: $ff
    rst $38                                       ; $3a2b: $ff
    rst $38                                       ; $3a2c: $ff
    rst $38                                       ; $3a2d: $ff
    rst $38                                       ; $3a2e: $ff
    rst $38                                       ; $3a2f: $ff
    rst $38                                       ; $3a30: $ff
    rst $38                                       ; $3a31: $ff
    rst $38                                       ; $3a32: $ff

Call_000_3a33:
    rst $38                                       ; $3a33: $ff
    rst $38                                       ; $3a34: $ff

Jump_000_3a35:
    rst $38                                       ; $3a35: $ff
    rst $38                                       ; $3a36: $ff
    rst $38                                       ; $3a37: $ff
    rst $38                                       ; $3a38: $ff
    rst $38                                       ; $3a39: $ff
    rst $38                                       ; $3a3a: $ff
    rst $38                                       ; $3a3b: $ff
    rst $38                                       ; $3a3c: $ff
    rst $38                                       ; $3a3d: $ff
    rst $38                                       ; $3a3e: $ff
    rst $38                                       ; $3a3f: $ff
    rst $38                                       ; $3a40: $ff
    rst $38                                       ; $3a41: $ff

Jump_000_3a42:
    rst $38                                       ; $3a42: $ff
    rst $38                                       ; $3a43: $ff

Jump_000_3a44:
    rst $38                                       ; $3a44: $ff

Jump_000_3a45:
    rst $38                                       ; $3a45: $ff

Jump_000_3a46:
    rst $38                                       ; $3a46: $ff
    rst $38                                       ; $3a47: $ff
    rst $38                                       ; $3a48: $ff
    rst $38                                       ; $3a49: $ff
    rst $38                                       ; $3a4a: $ff
    rst $38                                       ; $3a4b: $ff

Call_000_3a4c:
    rst $38                                       ; $3a4c: $ff
    rst $38                                       ; $3a4d: $ff

Call_000_3a4e:
    rst $38                                       ; $3a4e: $ff
    rst $38                                       ; $3a4f: $ff
    rst $38                                       ; $3a50: $ff
    rst $38                                       ; $3a51: $ff
    rst $38                                       ; $3a52: $ff
    rst $38                                       ; $3a53: $ff
    rst $38                                       ; $3a54: $ff
    rst $38                                       ; $3a55: $ff
    rst $38                                       ; $3a56: $ff

Call_000_3a57:
    rst $38                                       ; $3a57: $ff
    rst $38                                       ; $3a58: $ff
    rst $38                                       ; $3a59: $ff
    rst $38                                       ; $3a5a: $ff
    rst $38                                       ; $3a5b: $ff
    rst $38                                       ; $3a5c: $ff
    rst $38                                       ; $3a5d: $ff
    rst $38                                       ; $3a5e: $ff
    rst $38                                       ; $3a5f: $ff

Jump_000_3a60:
    rst $38                                       ; $3a60: $ff

Call_000_3a61:
    rst $38                                       ; $3a61: $ff
    rst $38                                       ; $3a62: $ff
    rst $38                                       ; $3a63: $ff
    rst $38                                       ; $3a64: $ff
    rst $38                                       ; $3a65: $ff
    rst $38                                       ; $3a66: $ff
    rst $38                                       ; $3a67: $ff
    rst $38                                       ; $3a68: $ff
    rst $38                                       ; $3a69: $ff
    rst $38                                       ; $3a6a: $ff
    rst $38                                       ; $3a6b: $ff
    rst $38                                       ; $3a6c: $ff
    rst $38                                       ; $3a6d: $ff
    rst $38                                       ; $3a6e: $ff
    rst $38                                       ; $3a6f: $ff
    rst $38                                       ; $3a70: $ff
    rst $38                                       ; $3a71: $ff
    rst $38                                       ; $3a72: $ff
    rst $38                                       ; $3a73: $ff
    rst $38                                       ; $3a74: $ff
    rst $38                                       ; $3a75: $ff
    rst $38                                       ; $3a76: $ff
    rst $38                                       ; $3a77: $ff
    rst $38                                       ; $3a78: $ff
    rst $38                                       ; $3a79: $ff
    rst $38                                       ; $3a7a: $ff
    rst $38                                       ; $3a7b: $ff
    rst $38                                       ; $3a7c: $ff
    rst $38                                       ; $3a7d: $ff
    rst $38                                       ; $3a7e: $ff
    rst $38                                       ; $3a7f: $ff

Jump_000_3a80:
    rst $38                                       ; $3a80: $ff

Jump_000_3a81:
    rst $38                                       ; $3a81: $ff
    rst $38                                       ; $3a82: $ff

Call_000_3a83:
    rst $38                                       ; $3a83: $ff
    rst $38                                       ; $3a84: $ff
    rst $38                                       ; $3a85: $ff
    rst $38                                       ; $3a86: $ff
    rst $38                                       ; $3a87: $ff
    rst $38                                       ; $3a88: $ff
    rst $38                                       ; $3a89: $ff
    rst $38                                       ; $3a8a: $ff
    rst $38                                       ; $3a8b: $ff
    rst $38                                       ; $3a8c: $ff
    rst $38                                       ; $3a8d: $ff
    rst $38                                       ; $3a8e: $ff
    rst $38                                       ; $3a8f: $ff
    rst $38                                       ; $3a90: $ff

Call_000_3a91:
    rst $38                                       ; $3a91: $ff
    rst $38                                       ; $3a92: $ff
    rst $38                                       ; $3a93: $ff
    rst $38                                       ; $3a94: $ff
    rst $38                                       ; $3a95: $ff
    rst $38                                       ; $3a96: $ff
    rst $38                                       ; $3a97: $ff
    rst $38                                       ; $3a98: $ff
    rst $38                                       ; $3a99: $ff
    rst $38                                       ; $3a9a: $ff
    rst $38                                       ; $3a9b: $ff
    rst $38                                       ; $3a9c: $ff
    rst $38                                       ; $3a9d: $ff
    rst $38                                       ; $3a9e: $ff
    rst $38                                       ; $3a9f: $ff

Call_000_3aa0:
Jump_000_3aa0:
    rst $38                                       ; $3aa0: $ff
    rst $38                                       ; $3aa1: $ff
    rst $38                                       ; $3aa2: $ff
    rst $38                                       ; $3aa3: $ff

Call_000_3aa4:
    rst $38                                       ; $3aa4: $ff
    rst $38                                       ; $3aa5: $ff
    rst $38                                       ; $3aa6: $ff
    rst $38                                       ; $3aa7: $ff
    rst $38                                       ; $3aa8: $ff
    rst $38                                       ; $3aa9: $ff
    rst $38                                       ; $3aaa: $ff
    rst $38                                       ; $3aab: $ff
    rst $38                                       ; $3aac: $ff

Jump_000_3aad:
    rst $38                                       ; $3aad: $ff
    rst $38                                       ; $3aae: $ff
    rst $38                                       ; $3aaf: $ff
    rst $38                                       ; $3ab0: $ff
    rst $38                                       ; $3ab1: $ff
    rst $38                                       ; $3ab2: $ff
    rst $38                                       ; $3ab3: $ff
    rst $38                                       ; $3ab4: $ff
    rst $38                                       ; $3ab5: $ff
    rst $38                                       ; $3ab6: $ff
    rst $38                                       ; $3ab7: $ff
    rst $38                                       ; $3ab8: $ff
    rst $38                                       ; $3ab9: $ff
    rst $38                                       ; $3aba: $ff
    rst $38                                       ; $3abb: $ff
    rst $38                                       ; $3abc: $ff
    rst $38                                       ; $3abd: $ff
    rst $38                                       ; $3abe: $ff
    rst $38                                       ; $3abf: $ff

Call_000_3ac0:
    rst $38                                       ; $3ac0: $ff

Call_000_3ac1:
    rst $38                                       ; $3ac1: $ff
    rst $38                                       ; $3ac2: $ff

Jump_000_3ac3:
    rst $38                                       ; $3ac3: $ff
    rst $38                                       ; $3ac4: $ff
    rst $38                                       ; $3ac5: $ff
    rst $38                                       ; $3ac6: $ff
    rst $38                                       ; $3ac7: $ff
    rst $38                                       ; $3ac8: $ff
    rst $38                                       ; $3ac9: $ff
    rst $38                                       ; $3aca: $ff

Call_000_3acb:
Jump_000_3acb:
    rst $38                                       ; $3acb: $ff
    rst $38                                       ; $3acc: $ff
    rst $38                                       ; $3acd: $ff
    rst $38                                       ; $3ace: $ff
    rst $38                                       ; $3acf: $ff
    rst $38                                       ; $3ad0: $ff
    rst $38                                       ; $3ad1: $ff
    rst $38                                       ; $3ad2: $ff
    rst $38                                       ; $3ad3: $ff
    rst $38                                       ; $3ad4: $ff
    rst $38                                       ; $3ad5: $ff
    rst $38                                       ; $3ad6: $ff
    rst $38                                       ; $3ad7: $ff
    rst $38                                       ; $3ad8: $ff
    rst $38                                       ; $3ad9: $ff
    rst $38                                       ; $3ada: $ff
    rst $38                                       ; $3adb: $ff
    rst $38                                       ; $3adc: $ff
    rst $38                                       ; $3add: $ff
    rst $38                                       ; $3ade: $ff
    rst $38                                       ; $3adf: $ff

Jump_000_3ae0:
    rst $38                                       ; $3ae0: $ff

Call_000_3ae1:
    rst $38                                       ; $3ae1: $ff

Call_000_3ae2:
    rst $38                                       ; $3ae2: $ff
    rst $38                                       ; $3ae3: $ff
    rst $38                                       ; $3ae4: $ff

Jump_000_3ae5:
    rst $38                                       ; $3ae5: $ff
    rst $38                                       ; $3ae6: $ff
    rst $38                                       ; $3ae7: $ff
    rst $38                                       ; $3ae8: $ff
    rst $38                                       ; $3ae9: $ff
    rst $38                                       ; $3aea: $ff
    rst $38                                       ; $3aeb: $ff
    rst $38                                       ; $3aec: $ff
    rst $38                                       ; $3aed: $ff
    rst $38                                       ; $3aee: $ff

Call_000_3aef:
    rst $38                                       ; $3aef: $ff
    rst $38                                       ; $3af0: $ff
    rst $38                                       ; $3af1: $ff
    rst $38                                       ; $3af2: $ff
    rst $38                                       ; $3af3: $ff
    rst $38                                       ; $3af4: $ff
    rst $38                                       ; $3af5: $ff
    rst $38                                       ; $3af6: $ff
    rst $38                                       ; $3af7: $ff
    rst $38                                       ; $3af8: $ff
    rst $38                                       ; $3af9: $ff
    rst $38                                       ; $3afa: $ff
    rst $38                                       ; $3afb: $ff
    rst $38                                       ; $3afc: $ff
    rst $38                                       ; $3afd: $ff
    rst $38                                       ; $3afe: $ff

Jump_000_3aff:
    rst $38                                       ; $3aff: $ff

Call_000_3b00:
Jump_000_3b00:
    rst $38                                       ; $3b00: $ff
    rst $38                                       ; $3b01: $ff
    rst $38                                       ; $3b02: $ff
    rst $38                                       ; $3b03: $ff
    rst $38                                       ; $3b04: $ff
    rst $38                                       ; $3b05: $ff
    rst $38                                       ; $3b06: $ff
    rst $38                                       ; $3b07: $ff
    rst $38                                       ; $3b08: $ff
    rst $38                                       ; $3b09: $ff
    rst $38                                       ; $3b0a: $ff
    rst $38                                       ; $3b0b: $ff
    rst $38                                       ; $3b0c: $ff
    rst $38                                       ; $3b0d: $ff
    rst $38                                       ; $3b0e: $ff
    rst $38                                       ; $3b0f: $ff
    rst $38                                       ; $3b10: $ff
    rst $38                                       ; $3b11: $ff
    rst $38                                       ; $3b12: $ff
    rst $38                                       ; $3b13: $ff
    rst $38                                       ; $3b14: $ff
    rst $38                                       ; $3b15: $ff
    rst $38                                       ; $3b16: $ff
    rst $38                                       ; $3b17: $ff
    rst $38                                       ; $3b18: $ff
    rst $38                                       ; $3b19: $ff
    rst $38                                       ; $3b1a: $ff
    rst $38                                       ; $3b1b: $ff
    rst $38                                       ; $3b1c: $ff
    rst $38                                       ; $3b1d: $ff
    rst $38                                       ; $3b1e: $ff
    rst $38                                       ; $3b1f: $ff

Jump_000_3b20:
    rst $38                                       ; $3b20: $ff
    rst $38                                       ; $3b21: $ff
    rst $38                                       ; $3b22: $ff
    rst $38                                       ; $3b23: $ff
    rst $38                                       ; $3b24: $ff
    rst $38                                       ; $3b25: $ff
    rst $38                                       ; $3b26: $ff
    rst $38                                       ; $3b27: $ff
    rst $38                                       ; $3b28: $ff
    rst $38                                       ; $3b29: $ff
    rst $38                                       ; $3b2a: $ff
    rst $38                                       ; $3b2b: $ff
    rst $38                                       ; $3b2c: $ff
    rst $38                                       ; $3b2d: $ff
    rst $38                                       ; $3b2e: $ff
    rst $38                                       ; $3b2f: $ff
    rst $38                                       ; $3b30: $ff

Jump_000_3b31:
    rst $38                                       ; $3b31: $ff

Call_000_3b32:
    rst $38                                       ; $3b32: $ff

Call_000_3b33:
    rst $38                                       ; $3b33: $ff
    rst $38                                       ; $3b34: $ff

Jump_000_3b35:
    rst $38                                       ; $3b35: $ff
    rst $38                                       ; $3b36: $ff
    rst $38                                       ; $3b37: $ff
    rst $38                                       ; $3b38: $ff
    rst $38                                       ; $3b39: $ff
    rst $38                                       ; $3b3a: $ff

Jump_000_3b3b:
    rst $38                                       ; $3b3b: $ff
    rst $38                                       ; $3b3c: $ff
    rst $38                                       ; $3b3d: $ff
    rst $38                                       ; $3b3e: $ff
    rst $38                                       ; $3b3f: $ff

Jump_000_3b40:
    rst $38                                       ; $3b40: $ff
    rst $38                                       ; $3b41: $ff
    rst $38                                       ; $3b42: $ff
    rst $38                                       ; $3b43: $ff
    rst $38                                       ; $3b44: $ff

Jump_000_3b45:
    rst $38                                       ; $3b45: $ff
    rst $38                                       ; $3b46: $ff
    rst $38                                       ; $3b47: $ff

Jump_000_3b48:
    rst $38                                       ; $3b48: $ff
    rst $38                                       ; $3b49: $ff

Jump_000_3b4a:
    rst $38                                       ; $3b4a: $ff
    rst $38                                       ; $3b4b: $ff

Jump_000_3b4c:
    rst $38                                       ; $3b4c: $ff
    rst $38                                       ; $3b4d: $ff
    rst $38                                       ; $3b4e: $ff

Call_000_3b4f:
    rst $38                                       ; $3b4f: $ff
    rst $38                                       ; $3b50: $ff
    rst $38                                       ; $3b51: $ff
    rst $38                                       ; $3b52: $ff
    rst $38                                       ; $3b53: $ff

Call_000_3b54:
    rst $38                                       ; $3b54: $ff
    rst $38                                       ; $3b55: $ff
    rst $38                                       ; $3b56: $ff
    rst $38                                       ; $3b57: $ff
    rst $38                                       ; $3b58: $ff
    rst $38                                       ; $3b59: $ff
    rst $38                                       ; $3b5a: $ff
    rst $38                                       ; $3b5b: $ff
    rst $38                                       ; $3b5c: $ff
    rst $38                                       ; $3b5d: $ff
    rst $38                                       ; $3b5e: $ff
    rst $38                                       ; $3b5f: $ff

Call_000_3b60:
    rst $38                                       ; $3b60: $ff

Call_000_3b61:
    rst $38                                       ; $3b61: $ff

Call_000_3b62:
    rst $38                                       ; $3b62: $ff
    rst $38                                       ; $3b63: $ff
    rst $38                                       ; $3b64: $ff
    rst $38                                       ; $3b65: $ff
    rst $38                                       ; $3b66: $ff
    rst $38                                       ; $3b67: $ff
    rst $38                                       ; $3b68: $ff
    rst $38                                       ; $3b69: $ff
    rst $38                                       ; $3b6a: $ff
    rst $38                                       ; $3b6b: $ff
    rst $38                                       ; $3b6c: $ff
    rst $38                                       ; $3b6d: $ff
    rst $38                                       ; $3b6e: $ff
    rst $38                                       ; $3b6f: $ff
    rst $38                                       ; $3b70: $ff
    rst $38                                       ; $3b71: $ff
    rst $38                                       ; $3b72: $ff
    rst $38                                       ; $3b73: $ff
    rst $38                                       ; $3b74: $ff
    rst $38                                       ; $3b75: $ff
    rst $38                                       ; $3b76: $ff
    rst $38                                       ; $3b77: $ff
    rst $38                                       ; $3b78: $ff
    rst $38                                       ; $3b79: $ff
    rst $38                                       ; $3b7a: $ff
    rst $38                                       ; $3b7b: $ff
    rst $38                                       ; $3b7c: $ff
    rst $38                                       ; $3b7d: $ff
    rst $38                                       ; $3b7e: $ff

Jump_000_3b7f:
    rst $38                                       ; $3b7f: $ff
    rst $38                                       ; $3b80: $ff
    rst $38                                       ; $3b81: $ff
    rst $38                                       ; $3b82: $ff
    rst $38                                       ; $3b83: $ff
    rst $38                                       ; $3b84: $ff
    rst $38                                       ; $3b85: $ff
    rst $38                                       ; $3b86: $ff
    rst $38                                       ; $3b87: $ff
    rst $38                                       ; $3b88: $ff
    rst $38                                       ; $3b89: $ff
    rst $38                                       ; $3b8a: $ff
    rst $38                                       ; $3b8b: $ff
    rst $38                                       ; $3b8c: $ff
    rst $38                                       ; $3b8d: $ff
    rst $38                                       ; $3b8e: $ff
    rst $38                                       ; $3b8f: $ff
    rst $38                                       ; $3b90: $ff
    rst $38                                       ; $3b91: $ff
    rst $38                                       ; $3b92: $ff
    rst $38                                       ; $3b93: $ff
    rst $38                                       ; $3b94: $ff
    rst $38                                       ; $3b95: $ff
    rst $38                                       ; $3b96: $ff
    rst $38                                       ; $3b97: $ff
    rst $38                                       ; $3b98: $ff
    rst $38                                       ; $3b99: $ff
    rst $38                                       ; $3b9a: $ff
    rst $38                                       ; $3b9b: $ff
    rst $38                                       ; $3b9c: $ff
    rst $38                                       ; $3b9d: $ff
    rst $38                                       ; $3b9e: $ff
    rst $38                                       ; $3b9f: $ff
    rst $38                                       ; $3ba0: $ff
    rst $38                                       ; $3ba1: $ff
    rst $38                                       ; $3ba2: $ff
    rst $38                                       ; $3ba3: $ff
    rst $38                                       ; $3ba4: $ff
    rst $38                                       ; $3ba5: $ff
    rst $38                                       ; $3ba6: $ff
    rst $38                                       ; $3ba7: $ff
    rst $38                                       ; $3ba8: $ff
    rst $38                                       ; $3ba9: $ff
    rst $38                                       ; $3baa: $ff
    rst $38                                       ; $3bab: $ff
    rst $38                                       ; $3bac: $ff
    rst $38                                       ; $3bad: $ff
    rst $38                                       ; $3bae: $ff
    rst $38                                       ; $3baf: $ff
    rst $38                                       ; $3bb0: $ff
    rst $38                                       ; $3bb1: $ff

Call_000_3bb2:
    rst $38                                       ; $3bb2: $ff
    rst $38                                       ; $3bb3: $ff
    rst $38                                       ; $3bb4: $ff
    rst $38                                       ; $3bb5: $ff
    rst $38                                       ; $3bb6: $ff
    rst $38                                       ; $3bb7: $ff
    rst $38                                       ; $3bb8: $ff
    rst $38                                       ; $3bb9: $ff
    rst $38                                       ; $3bba: $ff
    rst $38                                       ; $3bbb: $ff
    rst $38                                       ; $3bbc: $ff
    rst $38                                       ; $3bbd: $ff
    rst $38                                       ; $3bbe: $ff

Call_000_3bbf:
    rst $38                                       ; $3bbf: $ff

Call_000_3bc0:
    rst $38                                       ; $3bc0: $ff
    rst $38                                       ; $3bc1: $ff
    rst $38                                       ; $3bc2: $ff
    rst $38                                       ; $3bc3: $ff
    rst $38                                       ; $3bc4: $ff
    rst $38                                       ; $3bc5: $ff
    rst $38                                       ; $3bc6: $ff
    rst $38                                       ; $3bc7: $ff
    rst $38                                       ; $3bc8: $ff
    rst $38                                       ; $3bc9: $ff
    rst $38                                       ; $3bca: $ff
    rst $38                                       ; $3bcb: $ff
    rst $38                                       ; $3bcc: $ff
    rst $38                                       ; $3bcd: $ff
    rst $38                                       ; $3bce: $ff
    rst $38                                       ; $3bcf: $ff
    rst $38                                       ; $3bd0: $ff
    rst $38                                       ; $3bd1: $ff
    rst $38                                       ; $3bd2: $ff
    rst $38                                       ; $3bd3: $ff
    rst $38                                       ; $3bd4: $ff
    rst $38                                       ; $3bd5: $ff
    rst $38                                       ; $3bd6: $ff
    rst $38                                       ; $3bd7: $ff
    rst $38                                       ; $3bd8: $ff
    rst $38                                       ; $3bd9: $ff
    rst $38                                       ; $3bda: $ff
    rst $38                                       ; $3bdb: $ff

Call_000_3bdc:
    rst $38                                       ; $3bdc: $ff
    rst $38                                       ; $3bdd: $ff
    rst $38                                       ; $3bde: $ff
    rst $38                                       ; $3bdf: $ff
    rst $38                                       ; $3be0: $ff

Jump_000_3be1:
    rst $38                                       ; $3be1: $ff
    rst $38                                       ; $3be2: $ff

Jump_000_3be3:
    rst $38                                       ; $3be3: $ff

Call_000_3be4:
    rst $38                                       ; $3be4: $ff
    rst $38                                       ; $3be5: $ff
    rst $38                                       ; $3be6: $ff
    rst $38                                       ; $3be7: $ff
    rst $38                                       ; $3be8: $ff
    rst $38                                       ; $3be9: $ff
    rst $38                                       ; $3bea: $ff
    rst $38                                       ; $3beb: $ff
    rst $38                                       ; $3bec: $ff
    rst $38                                       ; $3bed: $ff
    rst $38                                       ; $3bee: $ff
    rst $38                                       ; $3bef: $ff
    rst $38                                       ; $3bf0: $ff
    rst $38                                       ; $3bf1: $ff
    rst $38                                       ; $3bf2: $ff
    rst $38                                       ; $3bf3: $ff
    rst $38                                       ; $3bf4: $ff
    rst $38                                       ; $3bf5: $ff
    rst $38                                       ; $3bf6: $ff
    rst $38                                       ; $3bf7: $ff
    rst $38                                       ; $3bf8: $ff
    rst $38                                       ; $3bf9: $ff
    rst $38                                       ; $3bfa: $ff

Call_000_3bfb:
Jump_000_3bfb:
    rst $38                                       ; $3bfb: $ff
    rst $38                                       ; $3bfc: $ff
    rst $38                                       ; $3bfd: $ff
    rst $38                                       ; $3bfe: $ff

Call_000_3bff:
    rst $38                                       ; $3bff: $ff
    rst $38                                       ; $3c00: $ff
    rst $38                                       ; $3c01: $ff
    rst $38                                       ; $3c02: $ff
    rst $38                                       ; $3c03: $ff
    rst $38                                       ; $3c04: $ff

Jump_000_3c05:
    rst $38                                       ; $3c05: $ff
    rst $38                                       ; $3c06: $ff

Jump_000_3c07:
    rst $38                                       ; $3c07: $ff
    rst $38                                       ; $3c08: $ff
    rst $38                                       ; $3c09: $ff
    rst $38                                       ; $3c0a: $ff
    rst $38                                       ; $3c0b: $ff
    rst $38                                       ; $3c0c: $ff
    rst $38                                       ; $3c0d: $ff
    rst $38                                       ; $3c0e: $ff
    rst $38                                       ; $3c0f: $ff
    rst $38                                       ; $3c10: $ff
    rst $38                                       ; $3c11: $ff
    rst $38                                       ; $3c12: $ff

Call_000_3c13:
    rst $38                                       ; $3c13: $ff
    rst $38                                       ; $3c14: $ff
    rst $38                                       ; $3c15: $ff
    rst $38                                       ; $3c16: $ff
    rst $38                                       ; $3c17: $ff
    rst $38                                       ; $3c18: $ff
    rst $38                                       ; $3c19: $ff
    rst $38                                       ; $3c1a: $ff
    rst $38                                       ; $3c1b: $ff
    rst $38                                       ; $3c1c: $ff
    rst $38                                       ; $3c1d: $ff
    rst $38                                       ; $3c1e: $ff
    rst $38                                       ; $3c1f: $ff

Jump_000_3c20:
    rst $38                                       ; $3c20: $ff
    rst $38                                       ; $3c21: $ff
    rst $38                                       ; $3c22: $ff
    rst $38                                       ; $3c23: $ff
    rst $38                                       ; $3c24: $ff
    rst $38                                       ; $3c25: $ff
    rst $38                                       ; $3c26: $ff
    rst $38                                       ; $3c27: $ff
    rst $38                                       ; $3c28: $ff
    rst $38                                       ; $3c29: $ff
    rst $38                                       ; $3c2a: $ff
    rst $38                                       ; $3c2b: $ff
    rst $38                                       ; $3c2c: $ff
    rst $38                                       ; $3c2d: $ff
    rst $38                                       ; $3c2e: $ff
    rst $38                                       ; $3c2f: $ff
    rst $38                                       ; $3c30: $ff
    rst $38                                       ; $3c31: $ff
    rst $38                                       ; $3c32: $ff
    rst $38                                       ; $3c33: $ff
    rst $38                                       ; $3c34: $ff

Jump_000_3c35:
    rst $38                                       ; $3c35: $ff
    rst $38                                       ; $3c36: $ff
    rst $38                                       ; $3c37: $ff
    rst $38                                       ; $3c38: $ff
    rst $38                                       ; $3c39: $ff
    rst $38                                       ; $3c3a: $ff

Call_000_3c3b:
    rst $38                                       ; $3c3b: $ff

Call_000_3c3c:
Jump_000_3c3c:
    rst $38                                       ; $3c3c: $ff
    rst $38                                       ; $3c3d: $ff
    rst $38                                       ; $3c3e: $ff

Jump_000_3c3f:
    rst $38                                       ; $3c3f: $ff

Jump_000_3c40:
    rst $38                                       ; $3c40: $ff
    rst $38                                       ; $3c41: $ff
    rst $38                                       ; $3c42: $ff
    rst $38                                       ; $3c43: $ff

Call_000_3c44:
Jump_000_3c44:
    rst $38                                       ; $3c44: $ff
    rst $38                                       ; $3c45: $ff
    rst $38                                       ; $3c46: $ff
    rst $38                                       ; $3c47: $ff
    rst $38                                       ; $3c48: $ff
    rst $38                                       ; $3c49: $ff
    rst $38                                       ; $3c4a: $ff
    rst $38                                       ; $3c4b: $ff
    rst $38                                       ; $3c4c: $ff

Jump_000_3c4d:
    rst $38                                       ; $3c4d: $ff
    rst $38                                       ; $3c4e: $ff
    rst $38                                       ; $3c4f: $ff
    rst $38                                       ; $3c50: $ff
    rst $38                                       ; $3c51: $ff
    rst $38                                       ; $3c52: $ff
    rst $38                                       ; $3c53: $ff
    rst $38                                       ; $3c54: $ff

Jump_000_3c55:
    rst $38                                       ; $3c55: $ff
    rst $38                                       ; $3c56: $ff
    rst $38                                       ; $3c57: $ff
    rst $38                                       ; $3c58: $ff
    rst $38                                       ; $3c59: $ff

Call_000_3c5a:
    rst $38                                       ; $3c5a: $ff
    rst $38                                       ; $3c5b: $ff
    rst $38                                       ; $3c5c: $ff
    rst $38                                       ; $3c5d: $ff
    rst $38                                       ; $3c5e: $ff
    rst $38                                       ; $3c5f: $ff

Call_000_3c60:
Jump_000_3c60:
    rst $38                                       ; $3c60: $ff

Call_000_3c61:
    rst $38                                       ; $3c61: $ff
    rst $38                                       ; $3c62: $ff
    rst $38                                       ; $3c63: $ff

Call_000_3c64:
    rst $38                                       ; $3c64: $ff
    rst $38                                       ; $3c65: $ff
    rst $38                                       ; $3c66: $ff
    rst $38                                       ; $3c67: $ff
    rst $38                                       ; $3c68: $ff
    rst $38                                       ; $3c69: $ff
    rst $38                                       ; $3c6a: $ff
    rst $38                                       ; $3c6b: $ff
    rst $38                                       ; $3c6c: $ff
    rst $38                                       ; $3c6d: $ff
    rst $38                                       ; $3c6e: $ff
    rst $38                                       ; $3c6f: $ff
    rst $38                                       ; $3c70: $ff
    rst $38                                       ; $3c71: $ff
    rst $38                                       ; $3c72: $ff
    rst $38                                       ; $3c73: $ff
    rst $38                                       ; $3c74: $ff
    rst $38                                       ; $3c75: $ff
    rst $38                                       ; $3c76: $ff
    rst $38                                       ; $3c77: $ff

Call_000_3c78:
    rst $38                                       ; $3c78: $ff
    rst $38                                       ; $3c79: $ff
    rst $38                                       ; $3c7a: $ff
    rst $38                                       ; $3c7b: $ff
    rst $38                                       ; $3c7c: $ff
    rst $38                                       ; $3c7d: $ff
    rst $38                                       ; $3c7e: $ff
    rst $38                                       ; $3c7f: $ff

Jump_000_3c80:
    rst $38                                       ; $3c80: $ff
    rst $38                                       ; $3c81: $ff
    rst $38                                       ; $3c82: $ff
    rst $38                                       ; $3c83: $ff

Call_000_3c84:
    rst $38                                       ; $3c84: $ff
    rst $38                                       ; $3c85: $ff
    rst $38                                       ; $3c86: $ff
    rst $38                                       ; $3c87: $ff
    rst $38                                       ; $3c88: $ff
    rst $38                                       ; $3c89: $ff
    rst $38                                       ; $3c8a: $ff
    rst $38                                       ; $3c8b: $ff
    rst $38                                       ; $3c8c: $ff
    rst $38                                       ; $3c8d: $ff
    rst $38                                       ; $3c8e: $ff
    rst $38                                       ; $3c8f: $ff
    rst $38                                       ; $3c90: $ff

Call_000_3c91:
    rst $38                                       ; $3c91: $ff
    rst $38                                       ; $3c92: $ff
    rst $38                                       ; $3c93: $ff
    rst $38                                       ; $3c94: $ff
    rst $38                                       ; $3c95: $ff
    rst $38                                       ; $3c96: $ff
    rst $38                                       ; $3c97: $ff
    rst $38                                       ; $3c98: $ff
    rst $38                                       ; $3c99: $ff
    rst $38                                       ; $3c9a: $ff
    rst $38                                       ; $3c9b: $ff
    rst $38                                       ; $3c9c: $ff
    rst $38                                       ; $3c9d: $ff
    rst $38                                       ; $3c9e: $ff
    rst $38                                       ; $3c9f: $ff

Call_000_3ca0:
Jump_000_3ca0:
    rst $38                                       ; $3ca0: $ff
    rst $38                                       ; $3ca1: $ff
    rst $38                                       ; $3ca2: $ff
    rst $38                                       ; $3ca3: $ff
    rst $38                                       ; $3ca4: $ff

Jump_000_3ca5:
    rst $38                                       ; $3ca5: $ff
    rst $38                                       ; $3ca6: $ff
    rst $38                                       ; $3ca7: $ff
    rst $38                                       ; $3ca8: $ff

Jump_000_3ca9:
    rst $38                                       ; $3ca9: $ff
    rst $38                                       ; $3caa: $ff
    rst $38                                       ; $3cab: $ff
    rst $38                                       ; $3cac: $ff
    rst $38                                       ; $3cad: $ff
    rst $38                                       ; $3cae: $ff
    rst $38                                       ; $3caf: $ff
    rst $38                                       ; $3cb0: $ff
    rst $38                                       ; $3cb1: $ff
    rst $38                                       ; $3cb2: $ff
    rst $38                                       ; $3cb3: $ff
    rst $38                                       ; $3cb4: $ff
    rst $38                                       ; $3cb5: $ff
    rst $38                                       ; $3cb6: $ff
    rst $38                                       ; $3cb7: $ff
    rst $38                                       ; $3cb8: $ff
    rst $38                                       ; $3cb9: $ff
    rst $38                                       ; $3cba: $ff
    rst $38                                       ; $3cbb: $ff
    rst $38                                       ; $3cbc: $ff
    rst $38                                       ; $3cbd: $ff
    rst $38                                       ; $3cbe: $ff
    rst $38                                       ; $3cbf: $ff

Jump_000_3cc0:
    rst $38                                       ; $3cc0: $ff

Jump_000_3cc1:
    rst $38                                       ; $3cc1: $ff

Call_000_3cc2:
    rst $38                                       ; $3cc2: $ff

Jump_000_3cc3:
    rst $38                                       ; $3cc3: $ff

Call_000_3cc4:
    rst $38                                       ; $3cc4: $ff
    rst $38                                       ; $3cc5: $ff
    rst $38                                       ; $3cc6: $ff
    rst $38                                       ; $3cc7: $ff

Call_000_3cc8:
    rst $38                                       ; $3cc8: $ff
    rst $38                                       ; $3cc9: $ff
    rst $38                                       ; $3cca: $ff
    rst $38                                       ; $3ccb: $ff
    rst $38                                       ; $3ccc: $ff
    rst $38                                       ; $3ccd: $ff
    rst $38                                       ; $3cce: $ff
    rst $38                                       ; $3ccf: $ff
    rst $38                                       ; $3cd0: $ff
    rst $38                                       ; $3cd1: $ff

Call_000_3cd2:
    rst $38                                       ; $3cd2: $ff
    rst $38                                       ; $3cd3: $ff
    rst $38                                       ; $3cd4: $ff
    rst $38                                       ; $3cd5: $ff
    rst $38                                       ; $3cd6: $ff

Call_000_3cd7:
    rst $38                                       ; $3cd7: $ff
    rst $38                                       ; $3cd8: $ff
    rst $38                                       ; $3cd9: $ff
    rst $38                                       ; $3cda: $ff

Jump_000_3cdb:
    rst $38                                       ; $3cdb: $ff
    rst $38                                       ; $3cdc: $ff
    rst $38                                       ; $3cdd: $ff
    rst $38                                       ; $3cde: $ff
    rst $38                                       ; $3cdf: $ff
    rst $38                                       ; $3ce0: $ff

Call_000_3ce1:
Jump_000_3ce1:
    rst $38                                       ; $3ce1: $ff

Jump_000_3ce2:
    rst $38                                       ; $3ce2: $ff

Call_000_3ce3:
Jump_000_3ce3:
    rst $38                                       ; $3ce3: $ff

Call_000_3ce4:
    rst $38                                       ; $3ce4: $ff
    rst $38                                       ; $3ce5: $ff
    rst $38                                       ; $3ce6: $ff

Jump_000_3ce7:
    rst $38                                       ; $3ce7: $ff
    rst $38                                       ; $3ce8: $ff
    rst $38                                       ; $3ce9: $ff
    rst $38                                       ; $3cea: $ff

Call_000_3ceb:
    rst $38                                       ; $3ceb: $ff

Jump_000_3cec:
    rst $38                                       ; $3cec: $ff
    rst $38                                       ; $3ced: $ff
    rst $38                                       ; $3cee: $ff
    rst $38                                       ; $3cef: $ff

Jump_000_3cf0:
    rst $38                                       ; $3cf0: $ff

Jump_000_3cf1:
    rst $38                                       ; $3cf1: $ff
    rst $38                                       ; $3cf2: $ff
    rst $38                                       ; $3cf3: $ff

Call_000_3cf4:
    rst $38                                       ; $3cf4: $ff
    rst $38                                       ; $3cf5: $ff
    rst $38                                       ; $3cf6: $ff

Call_000_3cf7:
    rst $38                                       ; $3cf7: $ff
    rst $38                                       ; $3cf8: $ff
    rst $38                                       ; $3cf9: $ff
    rst $38                                       ; $3cfa: $ff

Jump_000_3cfb:
    rst $38                                       ; $3cfb: $ff

Call_000_3cfc:
    rst $38                                       ; $3cfc: $ff
    rst $38                                       ; $3cfd: $ff
    rst $38                                       ; $3cfe: $ff

Jump_000_3cff:
    rst $38                                       ; $3cff: $ff

Jump_000_3d00:
    rst $38                                       ; $3d00: $ff
    rst $38                                       ; $3d01: $ff

Jump_000_3d02:
    rst $38                                       ; $3d02: $ff
    rst $38                                       ; $3d03: $ff
    rst $38                                       ; $3d04: $ff
    rst $38                                       ; $3d05: $ff
    rst $38                                       ; $3d06: $ff
    rst $38                                       ; $3d07: $ff
    rst $38                                       ; $3d08: $ff

Call_000_3d09:
    rst $38                                       ; $3d09: $ff

Jump_000_3d0a:
    rst $38                                       ; $3d0a: $ff
    rst $38                                       ; $3d0b: $ff
    rst $38                                       ; $3d0c: $ff
    rst $38                                       ; $3d0d: $ff
    rst $38                                       ; $3d0e: $ff
    rst $38                                       ; $3d0f: $ff
    rst $38                                       ; $3d10: $ff
    rst $38                                       ; $3d11: $ff
    rst $38                                       ; $3d12: $ff
    rst $38                                       ; $3d13: $ff

Call_000_3d14:
    rst $38                                       ; $3d14: $ff
    rst $38                                       ; $3d15: $ff
    rst $38                                       ; $3d16: $ff
    rst $38                                       ; $3d17: $ff
    rst $38                                       ; $3d18: $ff
    rst $38                                       ; $3d19: $ff
    rst $38                                       ; $3d1a: $ff
    rst $38                                       ; $3d1b: $ff
    rst $38                                       ; $3d1c: $ff
    rst $38                                       ; $3d1d: $ff
    rst $38                                       ; $3d1e: $ff

Jump_000_3d1f:
    rst $38                                       ; $3d1f: $ff

Jump_000_3d20:
    rst $38                                       ; $3d20: $ff
    rst $38                                       ; $3d21: $ff
    rst $38                                       ; $3d22: $ff
    rst $38                                       ; $3d23: $ff
    rst $38                                       ; $3d24: $ff
    rst $38                                       ; $3d25: $ff
    rst $38                                       ; $3d26: $ff
    rst $38                                       ; $3d27: $ff
    rst $38                                       ; $3d28: $ff
    rst $38                                       ; $3d29: $ff
    rst $38                                       ; $3d2a: $ff
    rst $38                                       ; $3d2b: $ff

Call_000_3d2c:
Jump_000_3d2c:
    rst $38                                       ; $3d2c: $ff
    rst $38                                       ; $3d2d: $ff
    rst $38                                       ; $3d2e: $ff
    rst $38                                       ; $3d2f: $ff
    rst $38                                       ; $3d30: $ff
    rst $38                                       ; $3d31: $ff
    rst $38                                       ; $3d32: $ff
    rst $38                                       ; $3d33: $ff
    rst $38                                       ; $3d34: $ff

Jump_000_3d35:
    rst $38                                       ; $3d35: $ff
    rst $38                                       ; $3d36: $ff

Jump_000_3d37:
    rst $38                                       ; $3d37: $ff
    rst $38                                       ; $3d38: $ff
    rst $38                                       ; $3d39: $ff
    rst $38                                       ; $3d3a: $ff
    rst $38                                       ; $3d3b: $ff
    rst $38                                       ; $3d3c: $ff
    rst $38                                       ; $3d3d: $ff
    rst $38                                       ; $3d3e: $ff
    rst $38                                       ; $3d3f: $ff
    rst $38                                       ; $3d40: $ff
    rst $38                                       ; $3d41: $ff

Jump_000_3d42:
    rst $38                                       ; $3d42: $ff
    rst $38                                       ; $3d43: $ff
    rst $38                                       ; $3d44: $ff
    rst $38                                       ; $3d45: $ff
    rst $38                                       ; $3d46: $ff
    rst $38                                       ; $3d47: $ff
    rst $38                                       ; $3d48: $ff
    rst $38                                       ; $3d49: $ff
    rst $38                                       ; $3d4a: $ff
    rst $38                                       ; $3d4b: $ff
    rst $38                                       ; $3d4c: $ff
    rst $38                                       ; $3d4d: $ff
    rst $38                                       ; $3d4e: $ff
    rst $38                                       ; $3d4f: $ff
    rst $38                                       ; $3d50: $ff
    rst $38                                       ; $3d51: $ff
    rst $38                                       ; $3d52: $ff
    rst $38                                       ; $3d53: $ff
    rst $38                                       ; $3d54: $ff
    rst $38                                       ; $3d55: $ff

Jump_000_3d56:
    rst $38                                       ; $3d56: $ff
    rst $38                                       ; $3d57: $ff
    rst $38                                       ; $3d58: $ff
    rst $38                                       ; $3d59: $ff
    rst $38                                       ; $3d5a: $ff
    rst $38                                       ; $3d5b: $ff
    rst $38                                       ; $3d5c: $ff
    rst $38                                       ; $3d5d: $ff
    rst $38                                       ; $3d5e: $ff
    rst $38                                       ; $3d5f: $ff
    rst $38                                       ; $3d60: $ff
    rst $38                                       ; $3d61: $ff
    rst $38                                       ; $3d62: $ff
    rst $38                                       ; $3d63: $ff

Call_000_3d64:
    rst $38                                       ; $3d64: $ff

Call_000_3d65:
    rst $38                                       ; $3d65: $ff
    rst $38                                       ; $3d66: $ff
    rst $38                                       ; $3d67: $ff
    rst $38                                       ; $3d68: $ff
    rst $38                                       ; $3d69: $ff
    rst $38                                       ; $3d6a: $ff
    rst $38                                       ; $3d6b: $ff
    rst $38                                       ; $3d6c: $ff
    rst $38                                       ; $3d6d: $ff
    rst $38                                       ; $3d6e: $ff
    rst $38                                       ; $3d6f: $ff
    rst $38                                       ; $3d70: $ff
    rst $38                                       ; $3d71: $ff
    rst $38                                       ; $3d72: $ff
    rst $38                                       ; $3d73: $ff
    rst $38                                       ; $3d74: $ff
    rst $38                                       ; $3d75: $ff
    rst $38                                       ; $3d76: $ff
    rst $38                                       ; $3d77: $ff
    rst $38                                       ; $3d78: $ff
    rst $38                                       ; $3d79: $ff
    rst $38                                       ; $3d7a: $ff
    rst $38                                       ; $3d7b: $ff
    rst $38                                       ; $3d7c: $ff
    rst $38                                       ; $3d7d: $ff
    rst $38                                       ; $3d7e: $ff

Jump_000_3d7f:
    rst $38                                       ; $3d7f: $ff

Call_000_3d80:
Jump_000_3d80:
    rst $38                                       ; $3d80: $ff
    rst $38                                       ; $3d81: $ff
    rst $38                                       ; $3d82: $ff

Jump_000_3d83:
    rst $38                                       ; $3d83: $ff
    rst $38                                       ; $3d84: $ff
    rst $38                                       ; $3d85: $ff
    rst $38                                       ; $3d86: $ff
    rst $38                                       ; $3d87: $ff
    rst $38                                       ; $3d88: $ff
    rst $38                                       ; $3d89: $ff
    rst $38                                       ; $3d8a: $ff
    rst $38                                       ; $3d8b: $ff
    rst $38                                       ; $3d8c: $ff
    rst $38                                       ; $3d8d: $ff
    rst $38                                       ; $3d8e: $ff
    rst $38                                       ; $3d8f: $ff
    rst $38                                       ; $3d90: $ff
    rst $38                                       ; $3d91: $ff
    rst $38                                       ; $3d92: $ff
    rst $38                                       ; $3d93: $ff
    rst $38                                       ; $3d94: $ff
    rst $38                                       ; $3d95: $ff
    rst $38                                       ; $3d96: $ff
    rst $38                                       ; $3d97: $ff
    rst $38                                       ; $3d98: $ff
    rst $38                                       ; $3d99: $ff
    rst $38                                       ; $3d9a: $ff

Call_000_3d9b:
    rst $38                                       ; $3d9b: $ff
    rst $38                                       ; $3d9c: $ff
    rst $38                                       ; $3d9d: $ff
    rst $38                                       ; $3d9e: $ff
    rst $38                                       ; $3d9f: $ff
    rst $38                                       ; $3da0: $ff
    rst $38                                       ; $3da1: $ff
    rst $38                                       ; $3da2: $ff
    rst $38                                       ; $3da3: $ff
    rst $38                                       ; $3da4: $ff
    rst $38                                       ; $3da5: $ff
    rst $38                                       ; $3da6: $ff
    rst $38                                       ; $3da7: $ff
    rst $38                                       ; $3da8: $ff
    rst $38                                       ; $3da9: $ff
    rst $38                                       ; $3daa: $ff
    rst $38                                       ; $3dab: $ff
    rst $38                                       ; $3dac: $ff
    rst $38                                       ; $3dad: $ff
    rst $38                                       ; $3dae: $ff
    rst $38                                       ; $3daf: $ff

Call_000_3db0:
    rst $38                                       ; $3db0: $ff
    rst $38                                       ; $3db1: $ff
    rst $38                                       ; $3db2: $ff
    rst $38                                       ; $3db3: $ff
    rst $38                                       ; $3db4: $ff
    rst $38                                       ; $3db5: $ff
    rst $38                                       ; $3db6: $ff
    rst $38                                       ; $3db7: $ff
    rst $38                                       ; $3db8: $ff
    rst $38                                       ; $3db9: $ff
    rst $38                                       ; $3dba: $ff
    rst $38                                       ; $3dbb: $ff
    rst $38                                       ; $3dbc: $ff
    rst $38                                       ; $3dbd: $ff
    rst $38                                       ; $3dbe: $ff
    rst $38                                       ; $3dbf: $ff

Jump_000_3dc0:
    rst $38                                       ; $3dc0: $ff
    rst $38                                       ; $3dc1: $ff

Jump_000_3dc2:
    rst $38                                       ; $3dc2: $ff

Call_000_3dc3:
    rst $38                                       ; $3dc3: $ff

Jump_000_3dc4:
    rst $38                                       ; $3dc4: $ff
    rst $38                                       ; $3dc5: $ff
    rst $38                                       ; $3dc6: $ff
    rst $38                                       ; $3dc7: $ff
    rst $38                                       ; $3dc8: $ff
    rst $38                                       ; $3dc9: $ff
    rst $38                                       ; $3dca: $ff
    rst $38                                       ; $3dcb: $ff
    rst $38                                       ; $3dcc: $ff
    rst $38                                       ; $3dcd: $ff
    rst $38                                       ; $3dce: $ff
    rst $38                                       ; $3dcf: $ff
    rst $38                                       ; $3dd0: $ff

Jump_000_3dd1:
    rst $38                                       ; $3dd1: $ff
    rst $38                                       ; $3dd2: $ff
    rst $38                                       ; $3dd3: $ff
    rst $38                                       ; $3dd4: $ff
    rst $38                                       ; $3dd5: $ff
    rst $38                                       ; $3dd6: $ff
    rst $38                                       ; $3dd7: $ff
    rst $38                                       ; $3dd8: $ff
    rst $38                                       ; $3dd9: $ff

Call_000_3dda:
    rst $38                                       ; $3dda: $ff
    rst $38                                       ; $3ddb: $ff
    rst $38                                       ; $3ddc: $ff
    rst $38                                       ; $3ddd: $ff
    rst $38                                       ; $3dde: $ff
    rst $38                                       ; $3ddf: $ff

Jump_000_3de0:
    rst $38                                       ; $3de0: $ff
    rst $38                                       ; $3de1: $ff

Jump_000_3de2:
    rst $38                                       ; $3de2: $ff
    rst $38                                       ; $3de3: $ff
    rst $38                                       ; $3de4: $ff
    rst $38                                       ; $3de5: $ff
    rst $38                                       ; $3de6: $ff
    rst $38                                       ; $3de7: $ff
    rst $38                                       ; $3de8: $ff
    rst $38                                       ; $3de9: $ff
    rst $38                                       ; $3dea: $ff
    rst $38                                       ; $3deb: $ff
    rst $38                                       ; $3dec: $ff
    rst $38                                       ; $3ded: $ff
    rst $38                                       ; $3dee: $ff
    rst $38                                       ; $3def: $ff
    rst $38                                       ; $3df0: $ff
    rst $38                                       ; $3df1: $ff
    rst $38                                       ; $3df2: $ff
    rst $38                                       ; $3df3: $ff
    rst $38                                       ; $3df4: $ff
    rst $38                                       ; $3df5: $ff
    rst $38                                       ; $3df6: $ff
    rst $38                                       ; $3df7: $ff
    rst $38                                       ; $3df8: $ff
    rst $38                                       ; $3df9: $ff
    rst $38                                       ; $3dfa: $ff
    rst $38                                       ; $3dfb: $ff

Call_000_3dfc:
    rst $38                                       ; $3dfc: $ff
    rst $38                                       ; $3dfd: $ff
    rst $38                                       ; $3dfe: $ff

Jump_000_3dff:
    rst $38                                       ; $3dff: $ff

Jump_000_3e00:
    rst $38                                       ; $3e00: $ff
    rst $38                                       ; $3e01: $ff
    rst $38                                       ; $3e02: $ff
    rst $38                                       ; $3e03: $ff
    rst $38                                       ; $3e04: $ff
    rst $38                                       ; $3e05: $ff
    rst $38                                       ; $3e06: $ff
    rst $38                                       ; $3e07: $ff

Jump_000_3e08:
    rst $38                                       ; $3e08: $ff
    rst $38                                       ; $3e09: $ff
    rst $38                                       ; $3e0a: $ff
    rst $38                                       ; $3e0b: $ff

Jump_000_3e0c:
    rst $38                                       ; $3e0c: $ff
    rst $38                                       ; $3e0d: $ff
    rst $38                                       ; $3e0e: $ff
    rst $38                                       ; $3e0f: $ff
    rst $38                                       ; $3e10: $ff
    rst $38                                       ; $3e11: $ff
    rst $38                                       ; $3e12: $ff
    rst $38                                       ; $3e13: $ff
    rst $38                                       ; $3e14: $ff
    rst $38                                       ; $3e15: $ff
    rst $38                                       ; $3e16: $ff
    rst $38                                       ; $3e17: $ff
    rst $38                                       ; $3e18: $ff
    rst $38                                       ; $3e19: $ff
    rst $38                                       ; $3e1a: $ff
    rst $38                                       ; $3e1b: $ff
    rst $38                                       ; $3e1c: $ff
    rst $38                                       ; $3e1d: $ff
    rst $38                                       ; $3e1e: $ff
    rst $38                                       ; $3e1f: $ff

Call_000_3e20:
    rst $38                                       ; $3e20: $ff

Jump_000_3e21:
    rst $38                                       ; $3e21: $ff

Jump_000_3e22:
    rst $38                                       ; $3e22: $ff
    rst $38                                       ; $3e23: $ff
    rst $38                                       ; $3e24: $ff

Jump_000_3e25:
    rst $38                                       ; $3e25: $ff
    rst $38                                       ; $3e26: $ff
    rst $38                                       ; $3e27: $ff
    rst $38                                       ; $3e28: $ff
    rst $38                                       ; $3e29: $ff
    rst $38                                       ; $3e2a: $ff
    rst $38                                       ; $3e2b: $ff
    rst $38                                       ; $3e2c: $ff
    rst $38                                       ; $3e2d: $ff
    rst $38                                       ; $3e2e: $ff
    rst $38                                       ; $3e2f: $ff
    rst $38                                       ; $3e30: $ff
    rst $38                                       ; $3e31: $ff
    rst $38                                       ; $3e32: $ff
    rst $38                                       ; $3e33: $ff
    rst $38                                       ; $3e34: $ff

Jump_000_3e35:
    rst $38                                       ; $3e35: $ff
    rst $38                                       ; $3e36: $ff
    rst $38                                       ; $3e37: $ff
    rst $38                                       ; $3e38: $ff
    rst $38                                       ; $3e39: $ff
    rst $38                                       ; $3e3a: $ff
    rst $38                                       ; $3e3b: $ff

Jump_000_3e3c:
    rst $38                                       ; $3e3c: $ff
    rst $38                                       ; $3e3d: $ff

Call_000_3e3e:
    rst $38                                       ; $3e3e: $ff
    rst $38                                       ; $3e3f: $ff

Call_000_3e40:
    rst $38                                       ; $3e40: $ff
    rst $38                                       ; $3e41: $ff
    rst $38                                       ; $3e42: $ff
    rst $38                                       ; $3e43: $ff
    rst $38                                       ; $3e44: $ff
    rst $38                                       ; $3e45: $ff

Call_000_3e46:
Jump_000_3e46:
    rst $38                                       ; $3e46: $ff
    rst $38                                       ; $3e47: $ff
    rst $38                                       ; $3e48: $ff
    rst $38                                       ; $3e49: $ff
    rst $38                                       ; $3e4a: $ff
    rst $38                                       ; $3e4b: $ff
    rst $38                                       ; $3e4c: $ff
    rst $38                                       ; $3e4d: $ff
    rst $38                                       ; $3e4e: $ff
    rst $38                                       ; $3e4f: $ff
    rst $38                                       ; $3e50: $ff
    rst $38                                       ; $3e51: $ff
    rst $38                                       ; $3e52: $ff

Jump_000_3e53:
    rst $38                                       ; $3e53: $ff
    rst $38                                       ; $3e54: $ff
    rst $38                                       ; $3e55: $ff
    rst $38                                       ; $3e56: $ff
    rst $38                                       ; $3e57: $ff
    rst $38                                       ; $3e58: $ff
    rst $38                                       ; $3e59: $ff
    rst $38                                       ; $3e5a: $ff
    rst $38                                       ; $3e5b: $ff
    rst $38                                       ; $3e5c: $ff
    rst $38                                       ; $3e5d: $ff
    rst $38                                       ; $3e5e: $ff
    rst $38                                       ; $3e5f: $ff

Call_000_3e60:
Jump_000_3e60:
    rst $38                                       ; $3e60: $ff
    rst $38                                       ; $3e61: $ff
    rst $38                                       ; $3e62: $ff
    rst $38                                       ; $3e63: $ff
    rst $38                                       ; $3e64: $ff
    rst $38                                       ; $3e65: $ff
    rst $38                                       ; $3e66: $ff
    rst $38                                       ; $3e67: $ff
    rst $38                                       ; $3e68: $ff
    rst $38                                       ; $3e69: $ff
    rst $38                                       ; $3e6a: $ff
    rst $38                                       ; $3e6b: $ff
    rst $38                                       ; $3e6c: $ff
    rst $38                                       ; $3e6d: $ff
    rst $38                                       ; $3e6e: $ff
    rst $38                                       ; $3e6f: $ff
    rst $38                                       ; $3e70: $ff

Jump_000_3e71:
    rst $38                                       ; $3e71: $ff
    rst $38                                       ; $3e72: $ff
    rst $38                                       ; $3e73: $ff
    rst $38                                       ; $3e74: $ff
    rst $38                                       ; $3e75: $ff
    rst $38                                       ; $3e76: $ff
    rst $38                                       ; $3e77: $ff
    rst $38                                       ; $3e78: $ff
    rst $38                                       ; $3e79: $ff
    rst $38                                       ; $3e7a: $ff
    rst $38                                       ; $3e7b: $ff
    rst $38                                       ; $3e7c: $ff
    rst $38                                       ; $3e7d: $ff
    rst $38                                       ; $3e7e: $ff
    rst $38                                       ; $3e7f: $ff

Jump_000_3e80:
    rst $38                                       ; $3e80: $ff

Jump_000_3e81:
    rst $38                                       ; $3e81: $ff

Jump_000_3e82:
    rst $38                                       ; $3e82: $ff
    rst $38                                       ; $3e83: $ff
    rst $38                                       ; $3e84: $ff
    rst $38                                       ; $3e85: $ff
    rst $38                                       ; $3e86: $ff
    rst $38                                       ; $3e87: $ff

Jump_000_3e88:
    rst $38                                       ; $3e88: $ff
    rst $38                                       ; $3e89: $ff
    rst $38                                       ; $3e8a: $ff
    rst $38                                       ; $3e8b: $ff
    rst $38                                       ; $3e8c: $ff
    rst $38                                       ; $3e8d: $ff
    rst $38                                       ; $3e8e: $ff

Jump_000_3e8f:
    rst $38                                       ; $3e8f: $ff
    rst $38                                       ; $3e90: $ff
    rst $38                                       ; $3e91: $ff
    rst $38                                       ; $3e92: $ff
    rst $38                                       ; $3e93: $ff
    rst $38                                       ; $3e94: $ff
    rst $38                                       ; $3e95: $ff
    rst $38                                       ; $3e96: $ff
    rst $38                                       ; $3e97: $ff
    rst $38                                       ; $3e98: $ff
    rst $38                                       ; $3e99: $ff
    rst $38                                       ; $3e9a: $ff
    rst $38                                       ; $3e9b: $ff
    rst $38                                       ; $3e9c: $ff
    rst $38                                       ; $3e9d: $ff
    rst $38                                       ; $3e9e: $ff
    rst $38                                       ; $3e9f: $ff

Jump_000_3ea0:
    rst $38                                       ; $3ea0: $ff

Call_000_3ea1:
    rst $38                                       ; $3ea1: $ff
    rst $38                                       ; $3ea2: $ff
    rst $38                                       ; $3ea3: $ff
    rst $38                                       ; $3ea4: $ff
    rst $38                                       ; $3ea5: $ff

Jump_000_3ea6:
    rst $38                                       ; $3ea6: $ff
    rst $38                                       ; $3ea7: $ff
    rst $38                                       ; $3ea8: $ff
    rst $38                                       ; $3ea9: $ff
    rst $38                                       ; $3eaa: $ff
    rst $38                                       ; $3eab: $ff
    rst $38                                       ; $3eac: $ff
    rst $38                                       ; $3ead: $ff
    rst $38                                       ; $3eae: $ff
    rst $38                                       ; $3eaf: $ff
    rst $38                                       ; $3eb0: $ff
    rst $38                                       ; $3eb1: $ff
    rst $38                                       ; $3eb2: $ff
    rst $38                                       ; $3eb3: $ff
    rst $38                                       ; $3eb4: $ff
    rst $38                                       ; $3eb5: $ff

Call_000_3eb6:
    rst $38                                       ; $3eb6: $ff
    rst $38                                       ; $3eb7: $ff

Call_000_3eb8:
    rst $38                                       ; $3eb8: $ff
    rst $38                                       ; $3eb9: $ff
    rst $38                                       ; $3eba: $ff
    rst $38                                       ; $3ebb: $ff
    rst $38                                       ; $3ebc: $ff
    rst $38                                       ; $3ebd: $ff
    rst $38                                       ; $3ebe: $ff

Jump_000_3ebf:
    rst $38                                       ; $3ebf: $ff

Jump_000_3ec0:
    rst $38                                       ; $3ec0: $ff
    rst $38                                       ; $3ec1: $ff
    rst $38                                       ; $3ec2: $ff

Call_000_3ec3:
    rst $38                                       ; $3ec3: $ff
    rst $38                                       ; $3ec4: $ff
    rst $38                                       ; $3ec5: $ff
    rst $38                                       ; $3ec6: $ff

Jump_000_3ec7:
    rst $38                                       ; $3ec7: $ff
    rst $38                                       ; $3ec8: $ff

Call_000_3ec9:
    rst $38                                       ; $3ec9: $ff
    rst $38                                       ; $3eca: $ff
    rst $38                                       ; $3ecb: $ff
    rst $38                                       ; $3ecc: $ff

Jump_000_3ecd:
    rst $38                                       ; $3ecd: $ff

Call_000_3ece:
    rst $38                                       ; $3ece: $ff

Call_000_3ecf:
    rst $38                                       ; $3ecf: $ff
    rst $38                                       ; $3ed0: $ff
    rst $38                                       ; $3ed1: $ff
    rst $38                                       ; $3ed2: $ff
    rst $38                                       ; $3ed3: $ff
    rst $38                                       ; $3ed4: $ff

Call_000_3ed5:
    rst $38                                       ; $3ed5: $ff
    rst $38                                       ; $3ed6: $ff
    rst $38                                       ; $3ed7: $ff
    rst $38                                       ; $3ed8: $ff
    rst $38                                       ; $3ed9: $ff
    rst $38                                       ; $3eda: $ff
    rst $38                                       ; $3edb: $ff
    rst $38                                       ; $3edc: $ff
    rst $38                                       ; $3edd: $ff
    rst $38                                       ; $3ede: $ff
    rst $38                                       ; $3edf: $ff

Call_000_3ee0:
Jump_000_3ee0:
    rst $38                                       ; $3ee0: $ff

Jump_000_3ee1:
    rst $38                                       ; $3ee1: $ff

Call_000_3ee2:
    rst $38                                       ; $3ee2: $ff
    rst $38                                       ; $3ee3: $ff
    rst $38                                       ; $3ee4: $ff
    rst $38                                       ; $3ee5: $ff
    rst $38                                       ; $3ee6: $ff
    rst $38                                       ; $3ee7: $ff
    rst $38                                       ; $3ee8: $ff
    rst $38                                       ; $3ee9: $ff

Jump_000_3eea:
    rst $38                                       ; $3eea: $ff
    rst $38                                       ; $3eeb: $ff
    rst $38                                       ; $3eec: $ff
    rst $38                                       ; $3eed: $ff
    rst $38                                       ; $3eee: $ff
    rst $38                                       ; $3eef: $ff
    rst $38                                       ; $3ef0: $ff
    rst $38                                       ; $3ef1: $ff
    rst $38                                       ; $3ef2: $ff
    rst $38                                       ; $3ef3: $ff

Call_000_3ef4:
    rst $38                                       ; $3ef4: $ff
    rst $38                                       ; $3ef5: $ff
    rst $38                                       ; $3ef6: $ff
    rst $38                                       ; $3ef7: $ff
    rst $38                                       ; $3ef8: $ff
    rst $38                                       ; $3ef9: $ff
    rst $38                                       ; $3efa: $ff
    rst $38                                       ; $3efb: $ff
    rst $38                                       ; $3efc: $ff
    rst $38                                       ; $3efd: $ff
    rst $38                                       ; $3efe: $ff

Call_000_3eff:
Jump_000_3eff:
    rst $38                                       ; $3eff: $ff

Call_000_3f00:
Jump_000_3f00:
    rst $38                                       ; $3f00: $ff

Call_000_3f01:
Jump_000_3f01:
    rst $38                                       ; $3f01: $ff

Jump_000_3f02:
    rst $38                                       ; $3f02: $ff
    rst $38                                       ; $3f03: $ff
    rst $38                                       ; $3f04: $ff
    rst $38                                       ; $3f05: $ff

Jump_000_3f06:
    rst $38                                       ; $3f06: $ff
    rst $38                                       ; $3f07: $ff
    rst $38                                       ; $3f08: $ff
    rst $38                                       ; $3f09: $ff

Call_000_3f0a:
    rst $38                                       ; $3f0a: $ff
    rst $38                                       ; $3f0b: $ff
    rst $38                                       ; $3f0c: $ff

Jump_000_3f0d:
    rst $38                                       ; $3f0d: $ff

Call_000_3f0e:
    rst $38                                       ; $3f0e: $ff
    rst $38                                       ; $3f0f: $ff
    rst $38                                       ; $3f10: $ff
    rst $38                                       ; $3f11: $ff
    rst $38                                       ; $3f12: $ff
    rst $38                                       ; $3f13: $ff
    rst $38                                       ; $3f14: $ff
    rst $38                                       ; $3f15: $ff
    rst $38                                       ; $3f16: $ff
    rst $38                                       ; $3f17: $ff
    rst $38                                       ; $3f18: $ff
    rst $38                                       ; $3f19: $ff
    rst $38                                       ; $3f1a: $ff
    rst $38                                       ; $3f1b: $ff
    rst $38                                       ; $3f1c: $ff
    rst $38                                       ; $3f1d: $ff
    rst $38                                       ; $3f1e: $ff

Jump_000_3f1f:
    rst $38                                       ; $3f1f: $ff

Call_000_3f20:
Jump_000_3f20:
    rst $38                                       ; $3f20: $ff
    rst $38                                       ; $3f21: $ff
    rst $38                                       ; $3f22: $ff
    rst $38                                       ; $3f23: $ff
    rst $38                                       ; $3f24: $ff
    rst $38                                       ; $3f25: $ff
    rst $38                                       ; $3f26: $ff
    rst $38                                       ; $3f27: $ff
    rst $38                                       ; $3f28: $ff
    rst $38                                       ; $3f29: $ff
    rst $38                                       ; $3f2a: $ff
    rst $38                                       ; $3f2b: $ff
    rst $38                                       ; $3f2c: $ff
    rst $38                                       ; $3f2d: $ff
    rst $38                                       ; $3f2e: $ff
    rst $38                                       ; $3f2f: $ff
    rst $38                                       ; $3f30: $ff
    rst $38                                       ; $3f31: $ff
    rst $38                                       ; $3f32: $ff
    rst $38                                       ; $3f33: $ff
    rst $38                                       ; $3f34: $ff
    rst $38                                       ; $3f35: $ff

Jump_000_3f36:
    rst $38                                       ; $3f36: $ff
    rst $38                                       ; $3f37: $ff
    rst $38                                       ; $3f38: $ff
    rst $38                                       ; $3f39: $ff
    rst $38                                       ; $3f3a: $ff

Call_000_3f3b:
    rst $38                                       ; $3f3b: $ff
    rst $38                                       ; $3f3c: $ff
    rst $38                                       ; $3f3d: $ff
    rst $38                                       ; $3f3e: $ff

Jump_000_3f3f:
    rst $38                                       ; $3f3f: $ff

Jump_000_3f40:
    rst $38                                       ; $3f40: $ff

Call_000_3f41:
    rst $38                                       ; $3f41: $ff
    rst $38                                       ; $3f42: $ff
    rst $38                                       ; $3f43: $ff
    rst $38                                       ; $3f44: $ff

Jump_000_3f45:
    rst $38                                       ; $3f45: $ff
    rst $38                                       ; $3f46: $ff
    rst $38                                       ; $3f47: $ff
    rst $38                                       ; $3f48: $ff
    rst $38                                       ; $3f49: $ff
    rst $38                                       ; $3f4a: $ff

Jump_000_3f4b:
    rst $38                                       ; $3f4b: $ff
    rst $38                                       ; $3f4c: $ff
    rst $38                                       ; $3f4d: $ff
    rst $38                                       ; $3f4e: $ff
    rst $38                                       ; $3f4f: $ff

Call_000_3f50:
    rst $38                                       ; $3f50: $ff
    rst $38                                       ; $3f51: $ff
    rst $38                                       ; $3f52: $ff

Jump_000_3f53:
    rst $38                                       ; $3f53: $ff

Call_000_3f54:
    rst $38                                       ; $3f54: $ff
    rst $38                                       ; $3f55: $ff
    rst $38                                       ; $3f56: $ff
    rst $38                                       ; $3f57: $ff
    rst $38                                       ; $3f58: $ff
    rst $38                                       ; $3f59: $ff
    rst $38                                       ; $3f5a: $ff
    rst $38                                       ; $3f5b: $ff
    rst $38                                       ; $3f5c: $ff

Jump_000_3f5d:
    rst $38                                       ; $3f5d: $ff
    rst $38                                       ; $3f5e: $ff
    rst $38                                       ; $3f5f: $ff

Call_000_3f60:
    rst $38                                       ; $3f60: $ff

Call_000_3f61:
    rst $38                                       ; $3f61: $ff
    rst $38                                       ; $3f62: $ff
    rst $38                                       ; $3f63: $ff
    rst $38                                       ; $3f64: $ff

Call_000_3f65:
    rst $38                                       ; $3f65: $ff
    rst $38                                       ; $3f66: $ff
    rst $38                                       ; $3f67: $ff
    rst $38                                       ; $3f68: $ff
    rst $38                                       ; $3f69: $ff

Jump_000_3f6a:
    rst $38                                       ; $3f6a: $ff
    rst $38                                       ; $3f6b: $ff
    rst $38                                       ; $3f6c: $ff
    rst $38                                       ; $3f6d: $ff
    rst $38                                       ; $3f6e: $ff
    rst $38                                       ; $3f6f: $ff

Call_000_3f70:
    rst $38                                       ; $3f70: $ff
    rst $38                                       ; $3f71: $ff
    rst $38                                       ; $3f72: $ff
    rst $38                                       ; $3f73: $ff
    rst $38                                       ; $3f74: $ff
    rst $38                                       ; $3f75: $ff
    rst $38                                       ; $3f76: $ff
    rst $38                                       ; $3f77: $ff
    rst $38                                       ; $3f78: $ff

Jump_000_3f79:
    rst $38                                       ; $3f79: $ff
    rst $38                                       ; $3f7a: $ff
    rst $38                                       ; $3f7b: $ff
    rst $38                                       ; $3f7c: $ff

Call_000_3f7d:
    rst $38                                       ; $3f7d: $ff
    rst $38                                       ; $3f7e: $ff

Jump_000_3f7f:
    rst $38                                       ; $3f7f: $ff

Jump_000_3f80:
    rst $38                                       ; $3f80: $ff

Jump_000_3f81:
    rst $38                                       ; $3f81: $ff

Jump_000_3f82:
    rst $38                                       ; $3f82: $ff
    rst $38                                       ; $3f83: $ff

Call_000_3f84:
    rst $38                                       ; $3f84: $ff

Call_000_3f85:
    rst $38                                       ; $3f85: $ff
    rst $38                                       ; $3f86: $ff
    rst $38                                       ; $3f87: $ff
    rst $38                                       ; $3f88: $ff
    rst $38                                       ; $3f89: $ff
    rst $38                                       ; $3f8a: $ff
    rst $38                                       ; $3f8b: $ff
    rst $38                                       ; $3f8c: $ff
    rst $38                                       ; $3f8d: $ff
    rst $38                                       ; $3f8e: $ff
    rst $38                                       ; $3f8f: $ff
    rst $38                                       ; $3f90: $ff
    rst $38                                       ; $3f91: $ff
    rst $38                                       ; $3f92: $ff
    rst $38                                       ; $3f93: $ff
    rst $38                                       ; $3f94: $ff
    rst $38                                       ; $3f95: $ff
    rst $38                                       ; $3f96: $ff
    rst $38                                       ; $3f97: $ff
    rst $38                                       ; $3f98: $ff
    rst $38                                       ; $3f99: $ff
    rst $38                                       ; $3f9a: $ff
    rst $38                                       ; $3f9b: $ff
    rst $38                                       ; $3f9c: $ff
    rst $38                                       ; $3f9d: $ff
    rst $38                                       ; $3f9e: $ff

Jump_000_3f9f:
    rst $38                                       ; $3f9f: $ff

Jump_000_3fa0:
    rst $38                                       ; $3fa0: $ff
    rst $38                                       ; $3fa1: $ff
    rst $38                                       ; $3fa2: $ff
    rst $38                                       ; $3fa3: $ff
    rst $38                                       ; $3fa4: $ff
    rst $38                                       ; $3fa5: $ff
    rst $38                                       ; $3fa6: $ff

Call_000_3fa7:
    rst $38                                       ; $3fa7: $ff
    rst $38                                       ; $3fa8: $ff
    rst $38                                       ; $3fa9: $ff
    rst $38                                       ; $3faa: $ff

Jump_000_3fab:
    rst $38                                       ; $3fab: $ff
    rst $38                                       ; $3fac: $ff

Jump_000_3fad:
    rst $38                                       ; $3fad: $ff
    rst $38                                       ; $3fae: $ff
    rst $38                                       ; $3faf: $ff
    rst $38                                       ; $3fb0: $ff
    rst $38                                       ; $3fb1: $ff
    rst $38                                       ; $3fb2: $ff
    rst $38                                       ; $3fb3: $ff
    rst $38                                       ; $3fb4: $ff
    rst $38                                       ; $3fb5: $ff
    rst $38                                       ; $3fb6: $ff
    rst $38                                       ; $3fb7: $ff
    rst $38                                       ; $3fb8: $ff
    rst $38                                       ; $3fb9: $ff
    rst $38                                       ; $3fba: $ff
    rst $38                                       ; $3fbb: $ff
    rst $38                                       ; $3fbc: $ff
    rst $38                                       ; $3fbd: $ff
    rst $38                                       ; $3fbe: $ff
    rst $38                                       ; $3fbf: $ff

Call_000_3fc0:
Jump_000_3fc0:
    rst $38                                       ; $3fc0: $ff

Call_000_3fc1:
    rst $38                                       ; $3fc1: $ff
    rst $38                                       ; $3fc2: $ff
    rst $38                                       ; $3fc3: $ff
    rst $38                                       ; $3fc4: $ff

Jump_000_3fc5:
    rst $38                                       ; $3fc5: $ff
    rst $38                                       ; $3fc6: $ff
    rst $38                                       ; $3fc7: $ff

Jump_000_3fc8:
    rst $38                                       ; $3fc8: $ff
    rst $38                                       ; $3fc9: $ff
    rst $38                                       ; $3fca: $ff
    rst $38                                       ; $3fcb: $ff
    rst $38                                       ; $3fcc: $ff
    rst $38                                       ; $3fcd: $ff
    rst $38                                       ; $3fce: $ff
    rst $38                                       ; $3fcf: $ff
    rst $38                                       ; $3fd0: $ff
    rst $38                                       ; $3fd1: $ff
    rst $38                                       ; $3fd2: $ff

Jump_000_3fd3:
    rst $38                                       ; $3fd3: $ff
    rst $38                                       ; $3fd4: $ff

Call_000_3fd5:
    rst $38                                       ; $3fd5: $ff
    rst $38                                       ; $3fd6: $ff
    rst $38                                       ; $3fd7: $ff
    rst $38                                       ; $3fd8: $ff
    rst $38                                       ; $3fd9: $ff
    rst $38                                       ; $3fda: $ff

Call_000_3fdb:
Jump_000_3fdb:
    rst $38                                       ; $3fdb: $ff
    rst $38                                       ; $3fdc: $ff
    rst $38                                       ; $3fdd: $ff
    rst $38                                       ; $3fde: $ff
    rst $38                                       ; $3fdf: $ff

Jump_000_3fe0:
    rst $38                                       ; $3fe0: $ff
    rst $38                                       ; $3fe1: $ff

Call_000_3fe2:
    rst $38                                       ; $3fe2: $ff

Call_000_3fe3:
    rst $38                                       ; $3fe3: $ff

Jump_000_3fe4:
    rst $38                                       ; $3fe4: $ff
    rst $38                                       ; $3fe5: $ff
    rst $38                                       ; $3fe6: $ff

Jump_000_3fe7:
    rst $38                                       ; $3fe7: $ff
    rst $38                                       ; $3fe8: $ff
    rst $38                                       ; $3fe9: $ff
    rst $38                                       ; $3fea: $ff
    rst $38                                       ; $3feb: $ff
    rst $38                                       ; $3fec: $ff

Jump_000_3fed:
    rst $38                                       ; $3fed: $ff
    rst $38                                       ; $3fee: $ff
    rst $38                                       ; $3fef: $ff
    rst $38                                       ; $3ff0: $ff
    rst $38                                       ; $3ff1: $ff
    rst $38                                       ; $3ff2: $ff
    rst $38                                       ; $3ff3: $ff
    rst $38                                       ; $3ff4: $ff
    rst $38                                       ; $3ff5: $ff
    rst $38                                       ; $3ff6: $ff
    rst $38                                       ; $3ff7: $ff
    rst $38                                       ; $3ff8: $ff
    rst $38                                       ; $3ff9: $ff
    rst $38                                       ; $3ffa: $ff
    rst $38                                       ; $3ffb: $ff

Call_000_3ffc:
    rst $38                                       ; $3ffc: $ff
    rst $38                                       ; $3ffd: $ff
    rst $38                                       ; $3ffe: $ff

Call_000_3fff:
Jump_000_3fff:
    rst $38                                       ; $3fff: $ff
