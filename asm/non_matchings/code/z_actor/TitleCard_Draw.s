.rdata
glabel D_80136160
    .asciz "../z_actor.c"
    .balign 4

glabel D_80136170
    .asciz "../z_actor.c"
    .balign 4

.text
glabel TitleCard_Draw
/* AA414C 8002CFAC 27BDFF30 */  addiu $sp, $sp, -0xd0
/* AA4150 8002CFB0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA4154 8002CFB4 AFA400D0 */  sw    $a0, 0xd0($sp)
/* AA4158 8002CFB8 AFA500D4 */  sw    $a1, 0xd4($sp)
/* AA415C 8002CFBC 84AF000C */  lh    $t7, 0xc($a1)
/* AA4160 8002CFC0 3C068013 */  lui   $a2, %hi(D_80136160) # $a2, 0x8013
/* AA4164 8002CFC4 24C66160 */  addiu $a2, %lo(D_80136160) # addiu $a2, $a2, 0x6160
/* AA4168 8002CFC8 51E00159 */  beql  $t7, $zero, .L8002D530
/* AA416C 8002CFCC 8FBF0014 */   lw    $ra, 0x14($sp)
/* AA4170 8002CFD0 90AA0008 */  lbu   $t2, 8($a1)
/* AA4174 8002CFD4 84B80004 */  lh    $t8, 4($a1)
/* AA4178 8002CFD8 90A90009 */  lbu   $t1, 9($a1)
/* AA417C 8002CFDC 000A1040 */  sll   $v0, $t2, 1
/* AA4180 8002CFE0 0018C880 */  sll   $t9, $t8, 2
/* AA4184 8002CFE4 03227823 */  subu  $t7, $t9, $v0
/* AA4188 8002CFE8 AFAF00C0 */  sw    $t7, 0xc0($sp)
/* AA418C 8002CFEC 84B80006 */  lh    $t8, 6($a1)
/* AA4190 8002CFF0 00097840 */  sll   $t7, $t1, 1
/* AA4194 8002CFF4 24070B08 */  li    $a3, 2824
/* AA4198 8002CFF8 0018C880 */  sll   $t9, $t8, 2
/* AA419C 8002CFFC 032F7023 */  subu  $t6, $t9, $t7
/* AA41A0 8002D000 AFAE00B8 */  sw    $t6, 0xb8($sp)
/* AA41A4 8002D004 8C850000 */  lw    $a1, ($a0)
/* AA41A8 8002D008 AFA20038 */  sw    $v0, 0x38($sp)
/* AA41AC 8002D00C 27A4009C */  addiu $a0, $sp, 0x9c
/* AA41B0 8002D010 AFAA00CC */  sw    $t2, 0xcc($sp)
/* AA41B4 8002D014 AFA900C8 */  sw    $t1, 0xc8($sp)
/* AA41B8 8002D018 0C031AB1 */  jal   func_800C6AC4
/* AA41BC 8002D01C AFA500AC */   sw    $a1, 0xac($sp)
/* AA41C0 8002D020 8FA900C8 */  lw    $t1, 0xc8($sp)
/* AA41C4 8002D024 8FAA00CC */  lw    $t2, 0xcc($sp)
/* AA41C8 8002D028 3C198016 */  lui   $t9, %hi(gSaveContext+0x1409) # $t9, 0x8016
/* AA41CC 8002D02C 9339FA69 */  lbu   $t9, %lo(gSaveContext+0x1409)($t9)
/* AA41D0 8002D030 01490019 */  multu $t2, $t1
/* AA41D4 8002D034 8FA800AC */  lw    $t0, 0xac($sp)
/* AA41D8 8002D038 8FAB00D4 */  lw    $t3, 0xd4($sp)
/* AA41DC 8002D03C 240E1000 */  li    $t6, 4096
/* AA41E0 8002D040 00002812 */  mflo  $a1
/* AA41E4 8002D044 28A11001 */  slti  $at, $a1, 0x1001
/* AA41E8 8002D048 00000000 */  nop   
/* AA41EC 8002D04C 00B90019 */  multu $a1, $t9
/* AA41F0 8002D050 8FB900B8 */  lw    $t9, 0xb8($sp)
/* AA41F4 8002D054 00007812 */  mflo  $t7
/* AA41F8 8002D058 AFAF00B0 */  sw    $t7, 0xb0($sp)
/* AA41FC 8002D05C 54200011 */  bnezl $at, .L8002D0A4
/* AA4200 8002D060 0009C080 */   sll   $t8, $t1, 2
/* AA4204 8002D064 01CA001A */  div   $zero, $t6, $t2
/* AA4208 8002D068 00004812 */  mflo  $t1
/* AA420C 8002D06C 15400002 */  bnez  $t2, .L8002D078
/* AA4210 8002D070 00000000 */   nop   
/* AA4214 8002D074 0007000D */  break 7
.L8002D078:
/* AA4218 8002D078 2401FFFF */  li    $at, -1
/* AA421C 8002D07C 15410004 */  bne   $t2, $at, .L8002D090
/* AA4220 8002D080 3C018000 */   lui   $at, 0x8000
/* AA4224 8002D084 15C10002 */  bne   $t6, $at, .L8002D090
/* AA4228 8002D088 00000000 */   nop   
/* AA422C 8002D08C 0006000D */  break 6
.L8002D090:
/* AA4230 8002D090 01490019 */  multu $t2, $t1
/* AA4234 8002D094 00002812 */  mflo  $a1
/* AA4238 8002D098 00000000 */  nop   
/* AA423C 8002D09C 00000000 */  nop   
/* AA4240 8002D0A0 0009C080 */  sll   $t8, $t1, 2
.L8002D0A4:
/* AA4244 8002D0A4 03196021 */  addu  $t4, $t8, $t9
/* AA4248 8002D0A8 AFAC00B4 */  sw    $t4, 0xb4($sp)
/* AA424C 8002D0AC 8D0402B0 */  lw    $a0, 0x2b0($t0)
/* AA4250 8002D0B0 AFAC0030 */  sw    $t4, 0x30($sp)
/* AA4254 8002D0B4 AFAA00CC */  sw    $t2, 0xcc($sp)
/* AA4258 8002D0B8 AFA900C8 */  sw    $t1, 0xc8($sp)
/* AA425C 8002D0BC AFA800AC */  sw    $t0, 0xac($sp)
/* AA4260 8002D0C0 0C024E02 */  jal   func_80093808
/* AA4264 8002D0C4 AFA50034 */   sw    $a1, 0x34($sp)
/* AA4268 8002D0C8 8FA800AC */  lw    $t0, 0xac($sp)
/* AA426C 8002D0CC 8FA50034 */  lw    $a1, 0x34($sp)
/* AA4270 8002D0D0 8FAA00CC */  lw    $t2, 0xcc($sp)
/* AA4274 8002D0D4 8FAB00D4 */  lw    $t3, 0xd4($sp)
/* AA4278 8002D0D8 8FA900C8 */  lw    $t1, 0xc8($sp)
/* AA427C 8002D0DC 8FAC0030 */  lw    $t4, 0x30($sp)
/* AA4280 8002D0E0 244F0008 */  addiu $t7, $v0, 8
/* AA4284 8002D0E4 AD0202B0 */  sw    $v0, 0x2b0($t0)
/* AA4288 8002D0E8 3C0EFA00 */  lui   $t6, 0xfa00
/* AA428C 8002D0EC AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AA4290 8002D0F0 AC4E0000 */  sw    $t6, ($v0)
/* AA4294 8002D0F4 9163000F */  lbu   $v1, 0xf($t3)
/* AA4298 8002D0F8 01403825 */  move  $a3, $t2
/* AA429C 8002D0FC 24ED0007 */  addiu $t5, $a3, 7
/* AA42A0 8002D100 0003C600 */  sll   $t8, $v1, 0x18
/* AA42A4 8002D104 0003CC00 */  sll   $t9, $v1, 0x10
/* AA42A8 8002D108 03197825 */  or    $t7, $t8, $t9
/* AA42AC 8002D10C 00037200 */  sll   $t6, $v1, 8
/* AA42B0 8002D110 01EEC025 */  or    $t8, $t7, $t6
/* AA42B4 8002D114 916F000D */  lbu   $t7, 0xd($t3)
/* AA42B8 8002D118 24A30001 */  addiu $v1, $a1, 1
/* AA42BC 8002D11C 00031843 */  sra   $v1, $v1, 1
/* AA42C0 8002D120 030F7025 */  or    $t6, $t8, $t7
/* AA42C4 8002D124 AC4E0004 */  sw    $t6, 4($v0)
/* AA42C8 8002D128 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AA42CC 8002D12C 3C18FD70 */  lui   $t8, 0xfd70
/* AA42D0 8002D130 2463FFFF */  addiu $v1, $v1, -1
/* AA42D4 8002D134 24590008 */  addiu $t9, $v0, 8
/* AA42D8 8002D138 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AA42DC 8002D13C AC580000 */  sw    $t8, ($v0)
/* AA42E0 8002D140 8FAE00B0 */  lw    $t6, 0xb0($sp)
/* AA42E4 8002D144 8D6F0000 */  lw    $t7, ($t3)
/* AA42E8 8002D148 000D68C3 */  sra   $t5, $t5, 3
/* AA42EC 8002D14C 31AD01FF */  andi  $t5, $t5, 0x1ff
/* AA42F0 8002D150 01EEC821 */  addu  $t9, $t7, $t6
/* AA42F4 8002D154 AC590004 */  sw    $t9, 4($v0)
/* AA42F8 8002D158 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AA42FC 8002D15C 3C0E0700 */  lui   $t6, 0x700
/* AA4300 8002D160 3C0FF570 */  lui   $t7, 0xf570
/* AA4304 8002D164 24580008 */  addiu $t8, $v0, 8
/* AA4308 8002D168 AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AA430C 8002D16C AC4E0004 */  sw    $t6, 4($v0)
/* AA4310 8002D170 AC4F0000 */  sw    $t7, ($v0)
/* AA4314 8002D174 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AA4318 8002D178 3C18E600 */  lui   $t8, 0xe600
/* AA431C 8002D17C 3C0EF300 */  lui   $t6, 0xf300
/* AA4320 8002D180 24590008 */  addiu $t9, $v0, 8
/* AA4324 8002D184 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AA4328 8002D188 AC400004 */  sw    $zero, 4($v0)
/* AA432C 8002D18C AC580000 */  sw    $t8, ($v0)
/* AA4330 8002D190 8D0602B0 */  lw    $a2, 0x2b0($t0)
/* AA4334 8002D194 286107FF */  slti  $at, $v1, 0x7ff
/* AA4338 8002D198 000D6A40 */  sll   $t5, $t5, 9
/* AA433C 8002D19C 24CF0008 */  addiu $t7, $a2, 8
/* AA4340 8002D1A0 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AA4344 8002D1A4 10200003 */  beqz  $at, .L8002D1B4
/* AA4348 8002D1A8 ACCE0000 */   sw    $t6, ($a2)
/* AA434C 8002D1AC 10000002 */  b     .L8002D1B8
/* AA4350 8002D1B0 00602025 */   move  $a0, $v1
.L8002D1B4:
/* AA4354 8002D1B4 240407FF */  li    $a0, 2047
.L8002D1B8:
/* AA4358 8002D1B8 04E10003 */  bgez  $a3, .L8002D1C8
/* AA435C 8002D1BC 000728C3 */   sra   $a1, $a3, 3
/* AA4360 8002D1C0 24E10007 */  addiu $at, $a3, 7
/* AA4364 8002D1C4 000128C3 */  sra   $a1, $at, 3
.L8002D1C8:
/* AA4368 8002D1C8 1CA00003 */  bgtz  $a1, .L8002D1D8
/* AA436C 8002D1CC 2547FFFF */   addiu $a3, $t2, -1
/* AA4370 8002D1D0 10000002 */  b     .L8002D1DC
/* AA4374 8002D1D4 24030001 */   li    $v1, 1
.L8002D1D8:
/* AA4378 8002D1D8 00A01825 */  move  $v1, $a1
.L8002D1DC:
/* AA437C 8002D1DC 1CA00003 */  bgtz  $a1, .L8002D1EC
/* AA4380 8002D1E0 247907FF */   addiu $t9, $v1, 0x7ff
/* AA4384 8002D1E4 10000002 */  b     .L8002D1F0
/* AA4388 8002D1E8 24020001 */   li    $v0, 1
.L8002D1EC:
/* AA438C 8002D1EC 00A01025 */  move  $v0, $a1
.L8002D1F0:
/* AA4390 8002D1F0 0322001A */  div   $zero, $t9, $v0
/* AA4394 8002D1F4 14400002 */  bnez  $v0, .L8002D200
/* AA4398 8002D1F8 00000000 */   nop   
/* AA439C 8002D1FC 0007000D */  break 7
.L8002D200:
/* AA43A0 8002D200 2401FFFF */  li    $at, -1
/* AA43A4 8002D204 14410004 */  bne   $v0, $at, .L8002D218
/* AA43A8 8002D208 3C018000 */   lui   $at, 0x8000
/* AA43AC 8002D20C 17210002 */  bne   $t9, $at, .L8002D218
/* AA43B0 8002D210 00000000 */   nop   
/* AA43B4 8002D214 0006000D */  break 6
.L8002D218:
/* AA43B8 8002D218 0000C012 */  mflo  $t8
/* AA43BC 8002D21C 330F0FFF */  andi  $t7, $t8, 0xfff
/* AA43C0 8002D220 3C010700 */  lui   $at, 0x700
/* AA43C4 8002D224 30990FFF */  andi  $t9, $a0, 0xfff
/* AA43C8 8002D228 0019C300 */  sll   $t8, $t9, 0xc
/* AA43CC 8002D22C 01E17025 */  or    $t6, $t7, $at
/* AA43D0 8002D230 01D87825 */  or    $t7, $t6, $t8
/* AA43D4 8002D234 ACCF0004 */  sw    $t7, 4($a2)
/* AA43D8 8002D238 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AA43DC 8002D23C 3C0EE700 */  lui   $t6, 0xe700
/* AA43E0 8002D240 3C01F568 */  lui   $at, 0xf568
/* AA43E4 8002D244 24590008 */  addiu $t9, $v0, 8
/* AA43E8 8002D248 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AA43EC 8002D24C AC400004 */  sw    $zero, 4($v0)
/* AA43F0 8002D250 AC4E0000 */  sw    $t6, ($v0)
/* AA43F4 8002D254 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AA43F8 8002D258 01A16825 */  or    $t5, $t5, $at
/* AA43FC 8002D25C 252EFFFF */  addiu $t6, $t1, -1
/* AA4400 8002D260 24580008 */  addiu $t8, $v0, 8
/* AA4404 8002D264 AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AA4408 8002D268 AC400004 */  sw    $zero, 4($v0)
/* AA440C 8002D26C AC4D0000 */  sw    $t5, ($v0)
/* AA4410 8002D270 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AA4414 8002D274 00073880 */  sll   $a3, $a3, 2
/* AA4418 8002D278 30E70FFF */  andi  $a3, $a3, 0xfff
/* AA441C 8002D27C 244F0008 */  addiu $t7, $v0, 8
/* AA4420 8002D280 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AA4424 8002D284 000EC080 */  sll   $t8, $t6, 2
/* AA4428 8002D288 3C19F200 */  lui   $t9, 0xf200
/* AA442C 8002D28C 330F0FFF */  andi  $t7, $t8, 0xfff
/* AA4430 8002D290 00073B00 */  sll   $a3, $a3, 0xc
/* AA4434 8002D294 AC590000 */  sw    $t9, ($v0)
/* AA4438 8002D298 00EFC825 */  or    $t9, $a3, $t7
/* AA443C 8002D29C AC590004 */  sw    $t9, 4($v0)
/* AA4440 8002D2A0 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AA4444 8002D2A4 8FA600C0 */  lw    $a2, 0xc0($sp)
/* AA4448 8002D2A8 2599FFFF */  addiu $t9, $t4, -1
/* AA444C 8002D2AC 244E0008 */  addiu $t6, $v0, 8
/* AA4450 8002D2B0 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AA4454 8002D2B4 8FB80038 */  lw    $t8, 0x38($sp)
/* AA4458 8002D2B8 3C01E400 */  lui   $at, 0xe400
/* AA445C 8002D2BC 332E0FFF */  andi  $t6, $t9, 0xfff
/* AA4460 8002D2C0 00187840 */  sll   $t7, $t8, 1
/* AA4464 8002D2C4 01E62021 */  addu  $a0, $t7, $a2
/* AA4468 8002D2C8 2484FFFC */  addiu $a0, $a0, -4
/* AA446C 8002D2CC 30840FFF */  andi  $a0, $a0, 0xfff
/* AA4470 8002D2D0 00042300 */  sll   $a0, $a0, 0xc
/* AA4474 8002D2D4 00812025 */  or    $a0, $a0, $at
/* AA4478 8002D2D8 008EC025 */  or    $t8, $a0, $t6
/* AA447C 8002D2DC AC580000 */  sw    $t8, ($v0)
/* AA4480 8002D2E0 8FAF00B8 */  lw    $t7, 0xb8($sp)
/* AA4484 8002D2E4 30DF0FFF */  andi  $ra, $a2, 0xfff
/* AA4488 8002D2E8 001FFB00 */  sll   $ra, $ra, 0xc
/* AA448C 8002D2EC 31F90FFF */  andi  $t9, $t7, 0xfff
/* AA4490 8002D2F0 03F97025 */  or    $t6, $ra, $t9
/* AA4494 8002D2F4 AC4E0004 */  sw    $t6, 4($v0)
/* AA4498 8002D2F8 AFA4001C */  sw    $a0, 0x1c($sp)
/* AA449C 8002D2FC 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AA44A0 8002D300 3C0CE100 */  lui   $t4, 0xe100
/* AA44A4 8002D304 3C0E0400 */  lui   $t6, (0x04000400 >> 16) # lui $t6, 0x400
/* AA44A8 8002D308 24580008 */  addiu $t8, $v0, 8
/* AA44AC 8002D30C AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AA44B0 8002D310 AC400004 */  sw    $zero, 4($v0)
/* AA44B4 8002D314 AC4C0000 */  sw    $t4, ($v0)
/* AA44B8 8002D318 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AA44BC 8002D31C 35CE0400 */  ori   $t6, (0x04000400 & 0xFFFF) # ori $t6, $t6, 0x400
/* AA44C0 8002D320 3C19F100 */  lui   $t9, 0xf100
/* AA44C4 8002D324 244F0008 */  addiu $t7, $v0, 8
/* AA44C8 8002D328 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AA44CC 8002D32C AC4E0004 */  sw    $t6, 4($v0)
/* AA44D0 8002D330 AC590000 */  sw    $t9, ($v0)
/* AA44D4 8002D334 91780009 */  lbu   $t8, 9($t3)
/* AA44D8 8002D338 00401825 */  move  $v1, $v0
/* AA44DC 8002D33C 03094823 */  subu  $t1, $t8, $t1
/* AA44E0 8002D340 59200074 */  blezl $t1, .L8002D514
/* AA44E4 8002D344 8FB800D0 */   lw    $t8, 0xd0($sp)
/* AA44E8 8002D348 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AA44EC 8002D34C 3C19FD70 */  lui   $t9, 0xfd70
/* AA44F0 8002D350 01490019 */  multu $t2, $t1
/* AA44F4 8002D354 244F0008 */  addiu $t7, $v0, 8
/* AA44F8 8002D358 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AA44FC 8002D35C AC590000 */  sw    $t9, ($v0)
/* AA4500 8002D360 8FB800B0 */  lw    $t8, 0xb0($sp)
/* AA4504 8002D364 8D6E0000 */  lw    $t6, ($t3)
/* AA4508 8002D368 240407FF */  li    $a0, 2047
/* AA450C 8002D36C 01D87821 */  addu  $t7, $t6, $t8
/* AA4510 8002D370 25F91000 */  addiu $t9, $t7, 0x1000
/* AA4514 8002D374 AC590004 */  sw    $t9, 4($v0)
/* AA4518 8002D378 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AA451C 8002D37C 3C0F0700 */  lui   $t7, 0x700
/* AA4520 8002D380 3C18F570 */  lui   $t8, 0xf570
/* AA4524 8002D384 244E0008 */  addiu $t6, $v0, 8
/* AA4528 8002D388 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AA452C 8002D38C AC4F0004 */  sw    $t7, 4($v0)
/* AA4530 8002D390 AC580000 */  sw    $t8, ($v0)
/* AA4534 8002D394 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AA4538 8002D398 3C0EE600 */  lui   $t6, 0xe600
/* AA453C 8002D39C 00001812 */  mflo  $v1
/* AA4540 8002D3A0 24590008 */  addiu $t9, $v0, 8
/* AA4544 8002D3A4 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AA4548 8002D3A8 AC400004 */  sw    $zero, 4($v0)
/* AA454C 8002D3AC AC4E0000 */  sw    $t6, ($v0)
/* AA4550 8002D3B0 8D0602B0 */  lw    $a2, 0x2b0($t0)
/* AA4554 8002D3B4 24630001 */  addiu $v1, $v1, 1
/* AA4558 8002D3B8 00031843 */  sra   $v1, $v1, 1
/* AA455C 8002D3BC 2463FFFF */  addiu $v1, $v1, -1
/* AA4560 8002D3C0 24D80008 */  addiu $t8, $a2, 8
/* AA4564 8002D3C4 AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AA4568 8002D3C8 286107FF */  slti  $at, $v1, 0x7ff
/* AA456C 8002D3CC 3C0FF300 */  lui   $t7, 0xf300
/* AA4570 8002D3D0 10200003 */  beqz  $at, .L8002D3E0
/* AA4574 8002D3D4 ACCF0000 */   sw    $t7, ($a2)
/* AA4578 8002D3D8 10000001 */  b     .L8002D3E0
/* AA457C 8002D3DC 00602025 */   move  $a0, $v1
.L8002D3E0:
/* AA4580 8002D3E0 1CA00003 */  bgtz  $a1, .L8002D3F0
/* AA4584 8002D3E4 00A01825 */   move  $v1, $a1
/* AA4588 8002D3E8 10000001 */  b     .L8002D3F0
/* AA458C 8002D3EC 24030001 */   li    $v1, 1
.L8002D3F0:
/* AA4590 8002D3F0 1CA00003 */  bgtz  $a1, .L8002D400
/* AA4594 8002D3F4 247907FF */   addiu $t9, $v1, 0x7ff
/* AA4598 8002D3F8 10000002 */  b     .L8002D404
/* AA459C 8002D3FC 24020001 */   li    $v0, 1
.L8002D400:
/* AA45A0 8002D400 00A01025 */  move  $v0, $a1
.L8002D404:
/* AA45A4 8002D404 0322001A */  div   $zero, $t9, $v0
/* AA45A8 8002D408 14400002 */  bnez  $v0, .L8002D414
/* AA45AC 8002D40C 00000000 */   nop   
/* AA45B0 8002D410 0007000D */  break 7
.L8002D414:
/* AA45B4 8002D414 2401FFFF */  li    $at, -1
/* AA45B8 8002D418 14410004 */  bne   $v0, $at, .L8002D42C
/* AA45BC 8002D41C 3C018000 */   lui   $at, 0x8000
/* AA45C0 8002D420 17210002 */  bne   $t9, $at, .L8002D42C
/* AA45C4 8002D424 00000000 */   nop   
/* AA45C8 8002D428 0006000D */  break 6
.L8002D42C:
/* AA45CC 8002D42C 00007012 */  mflo  $t6
/* AA45D0 8002D430 31D80FFF */  andi  $t8, $t6, 0xfff
/* AA45D4 8002D434 3C010700 */  lui   $at, 0x700
/* AA45D8 8002D438 30990FFF */  andi  $t9, $a0, 0xfff
/* AA45DC 8002D43C 00197300 */  sll   $t6, $t9, 0xc
/* AA45E0 8002D440 03017825 */  or    $t7, $t8, $at
/* AA45E4 8002D444 01EEC025 */  or    $t8, $t7, $t6
/* AA45E8 8002D448 ACD80004 */  sw    $t8, 4($a2)
/* AA45EC 8002D44C 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AA45F0 8002D450 3C0FE700 */  lui   $t7, 0xe700
/* AA45F4 8002D454 24590008 */  addiu $t9, $v0, 8
/* AA45F8 8002D458 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AA45FC 8002D45C AC400004 */  sw    $zero, 4($v0)
/* AA4600 8002D460 AC4F0000 */  sw    $t7, ($v0)
/* AA4604 8002D464 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AA4608 8002D468 252FFFFF */  addiu $t7, $t1, -1
/* AA460C 8002D46C 3C19F200 */  lui   $t9, 0xf200
/* AA4610 8002D470 244E0008 */  addiu $t6, $v0, 8
/* AA4614 8002D474 AD0E02B0 */  sw    $t6, 0x2b0($t0)
/* AA4618 8002D478 AC400004 */  sw    $zero, 4($v0)
/* AA461C 8002D47C AC4D0000 */  sw    $t5, ($v0)
/* AA4620 8002D480 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AA4624 8002D484 000F7080 */  sll   $t6, $t7, 2
/* AA4628 8002D488 24580008 */  addiu $t8, $v0, 8
/* AA462C 8002D48C AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AA4630 8002D490 31D80FFF */  andi  $t8, $t6, 0xfff
/* AA4634 8002D494 AC590000 */  sw    $t9, ($v0)
/* AA4638 8002D498 00F8C825 */  or    $t9, $a3, $t8
/* AA463C 8002D49C AC590004 */  sw    $t9, 4($v0)
/* AA4640 8002D4A0 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AA4644 8002D4A4 8FA400B4 */  lw    $a0, 0xb4($sp)
/* AA4648 8002D4A8 0009C080 */  sll   $t8, $t1, 2
/* AA464C 8002D4AC 244F0008 */  addiu $t7, $v0, 8
/* AA4650 8002D4B0 AD0F02B0 */  sw    $t7, 0x2b0($t0)
/* AA4654 8002D4B4 0098C821 */  addu  $t9, $a0, $t8
/* AA4658 8002D4B8 8FAE001C */  lw    $t6, 0x1c($sp)
/* AA465C 8002D4BC 272FFFFF */  addiu $t7, $t9, -1
/* AA4660 8002D4C0 31F80FFF */  andi  $t8, $t7, 0xfff
/* AA4664 8002D4C4 308F0FFF */  andi  $t7, $a0, 0xfff
/* AA4668 8002D4C8 01D8C825 */  or    $t9, $t6, $t8
/* AA466C 8002D4CC 03EF7025 */  or    $t6, $ra, $t7
/* AA4670 8002D4D0 AC4E0004 */  sw    $t6, 4($v0)
/* AA4674 8002D4D4 AC590000 */  sw    $t9, ($v0)
/* AA4678 8002D4D8 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AA467C 8002D4DC 3C0E0400 */  lui   $t6, (0x04000400 >> 16) # lui $t6, 0x400
/* AA4680 8002D4E0 35CE0400 */  ori   $t6, (0x04000400 & 0xFFFF) # ori $t6, $t6, 0x400
/* AA4684 8002D4E4 24580008 */  addiu $t8, $v0, 8
/* AA4688 8002D4E8 AD1802B0 */  sw    $t8, 0x2b0($t0)
/* AA468C 8002D4EC AC400004 */  sw    $zero, 4($v0)
/* AA4690 8002D4F0 AC4C0000 */  sw    $t4, ($v0)
/* AA4694 8002D4F4 8D0202B0 */  lw    $v0, 0x2b0($t0)
/* AA4698 8002D4F8 3C0FF100 */  lui   $t7, 0xf100
/* AA469C 8002D4FC 24590008 */  addiu $t9, $v0, 8
/* AA46A0 8002D500 AD1902B0 */  sw    $t9, 0x2b0($t0)
/* AA46A4 8002D504 AC4E0004 */  sw    $t6, 4($v0)
/* AA46A8 8002D508 AC4F0000 */  sw    $t7, ($v0)
/* AA46AC 8002D50C 00401825 */  move  $v1, $v0
/* AA46B0 8002D510 8FB800D0 */  lw    $t8, 0xd0($sp)
.L8002D514:
/* AA46B4 8002D514 3C068013 */  lui   $a2, %hi(D_80136170) # $a2, 0x8013
/* AA46B8 8002D518 24C66170 */  addiu $a2, %lo(D_80136170) # addiu $a2, $a2, 0x6170
/* AA46BC 8002D51C 27A4009C */  addiu $a0, $sp, 0x9c
/* AA46C0 8002D520 24070B40 */  li    $a3, 2880
/* AA46C4 8002D524 0C031AD5 */  jal   func_800C6B54
/* AA46C8 8002D528 8F050000 */   lw    $a1, ($t8)
/* AA46CC 8002D52C 8FBF0014 */  lw    $ra, 0x14($sp)
.L8002D530:
/* AA46D0 8002D530 27BD00D0 */  addiu $sp, $sp, 0xd0
/* AA46D4 8002D534 03E00008 */  jr    $ra
/* AA46D8 8002D538 00000000 */   nop   
