; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "hardware.inc"
INCLUDE "banks/bank_000.asm"
INCLUDE "banks/bank_001.asm"
INCLUDE "banks/bank_002.asm"
INCLUDE "banks/bank_003.asm"
INCLUDE "banks/bank_004.asm"
INCLUDE "banks/bank_005.asm"
INCLUDE "banks/bank_006.asm"
INCLUDE "banks/bank_007.asm"
INCLUDE "banks/bank_008.asm"
INCLUDE "banks/bank_009.asm"
INCLUDE "banks/bank_00a.asm"
INCLUDE "banks/bank_00b.asm"
INCLUDE "banks/bank_00c.asm"
INCLUDE "banks/bank_00d.asm"
INCLUDE "banks/bank_00e.asm"
INCLUDE "banks/bank_00f.asm"
INCLUDE "banks/bank_010.asm"
INCLUDE "banks/bank_011.asm"
INCLUDE "banks/bank_012.asm"
INCLUDE "banks/bank_013.asm"
INCLUDE "banks/bank_014.asm"
INCLUDE "banks/bank_015.asm"
INCLUDE "banks/bank_016.asm"
INCLUDE "banks/bank_017.asm"
INCLUDE "banks/bank_018.asm"
INCLUDE "banks/bank_019.asm"
INCLUDE "banks/bank_01a.asm"
INCLUDE "banks/bank_01b.asm"
INCLUDE "banks/bank_01c.asm"
INCLUDE "banks/bank_01d.asm"
INCLUDE "banks/bank_01e.asm"
INCLUDE "banks/bank_01f.asm"
INCLUDE "banks/bank_020.asm"
INCLUDE "banks/bank_021.asm"
INCLUDE "banks/bank_022.asm"
INCLUDE "banks/bank_023.asm"
INCLUDE "banks/bank_024.asm"
INCLUDE "banks/bank_025.asm"
INCLUDE "banks/bank_026.asm"
INCLUDE "banks/bank_027.asm"
INCLUDE "banks/bank_028.asm"
INCLUDE "banks/bank_029.asm"
INCLUDE "banks/bank_02a.asm"
INCLUDE "banks/bank_02b.asm"
INCLUDE "banks/bank_02c.asm"
INCLUDE "banks/bank_02d.asm"
INCLUDE "banks/bank_02e.asm"
INCLUDE "banks/bank_02f.asm"
INCLUDE "banks/bank_030.asm"
INCLUDE "banks/bank_031.asm"
INCLUDE "banks/bank_032.asm"
INCLUDE "banks/bank_033.asm"
INCLUDE "banks/bank_034.asm"
INCLUDE "banks/bank_035.asm"
INCLUDE "banks/bank_036.asm"
INCLUDE "banks/bank_037.asm"
INCLUDE "banks/bank_038.asm"
INCLUDE "banks/bank_039.asm"
INCLUDE "banks/bank_03a.asm"
INCLUDE "banks/bank_03b.asm"
INCLUDE "banks/bank_03c.asm"
INCLUDE "banks/bank_03d.asm"
INCLUDE "banks/bank_03e.asm"
INCLUDE "banks/bank_03f.asm"
INCLUDE "banks/bank_040.asm"
INCLUDE "banks/bank_041.asm"
INCLUDE "banks/bank_042.asm"
INCLUDE "banks/bank_043.asm"
INCLUDE "banks/bank_044.asm"
INCLUDE "banks/bank_045.asm"
INCLUDE "banks/bank_046.asm"
INCLUDE "banks/bank_047.asm"
INCLUDE "banks/bank_048.asm"
INCLUDE "banks/bank_049.asm"
INCLUDE "banks/bank_04a.asm"
INCLUDE "banks/bank_04b.asm"
INCLUDE "banks/bank_04c.asm"
INCLUDE "banks/bank_04d.asm"
INCLUDE "banks/bank_04e.asm"
INCLUDE "banks/bank_04f.asm"
INCLUDE "banks/bank_050.asm"
INCLUDE "banks/bank_051.asm"
INCLUDE "banks/bank_052.asm"
INCLUDE "banks/bank_053.asm"
INCLUDE "banks/bank_054.asm"
INCLUDE "banks/bank_055.asm"
INCLUDE "banks/bank_056.asm"
INCLUDE "banks/bank_057.asm"
INCLUDE "banks/bank_058.asm"
INCLUDE "banks/bank_059.asm"
INCLUDE "banks/bank_05a.asm"
INCLUDE "banks/bank_05b.asm"
INCLUDE "banks/bank_05c.asm"
INCLUDE "banks/bank_05d.asm"
INCLUDE "banks/bank_05e.asm"
INCLUDE "banks/bank_05f.asm"
INCLUDE "banks/bank_060.asm"
INCLUDE "banks/bank_061.asm"
INCLUDE "banks/bank_062.asm"
INCLUDE "banks/bank_063.asm"
INCLUDE "banks/bank_064.asm"
INCLUDE "banks/bank_065.asm"
INCLUDE "banks/bank_066.asm"
INCLUDE "banks/bank_067.asm"
INCLUDE "banks/bank_068.asm"
INCLUDE "banks/bank_069.asm"
INCLUDE "banks/bank_06a.asm"
INCLUDE "banks/bank_06b.asm"
INCLUDE "banks/bank_06c.asm"
INCLUDE "banks/bank_06d.asm"
INCLUDE "banks/bank_06e.asm"
INCLUDE "banks/bank_06f.asm"
INCLUDE "banks/bank_070.asm"
INCLUDE "banks/bank_071.asm"
INCLUDE "banks/bank_072.asm"
INCLUDE "banks/bank_073.asm"
INCLUDE "banks/bank_074.asm"
INCLUDE "banks/bank_075.asm"
INCLUDE "banks/bank_076.asm"
INCLUDE "banks/bank_077.asm"
INCLUDE "banks/bank_078.asm"
INCLUDE "banks/bank_079.asm"
INCLUDE "banks/bank_07a.asm"
INCLUDE "banks/bank_07b.asm"
INCLUDE "banks/bank_07c.asm"
INCLUDE "banks/bank_07d.asm"
INCLUDE "banks/bank_07e.asm"
INCLUDE "banks/bank_07f.asm"
