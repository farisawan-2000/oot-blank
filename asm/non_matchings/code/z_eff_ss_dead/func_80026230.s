glabel func_80026230
/* A9D3D0 80026230 27BDFFA8 */  addiu $sp, $sp, -0x58
/* A9D3D4 80026234 AFB00018 */  sw    $s0, 0x18($sp)
/* A9D3D8 80026238 00A08025 */  move  $s0, $a1
/* A9D3DC 8002623C AFBF001C */  sw    $ra, 0x1c($sp)
/* A9D3E0 80026240 AFA40058 */  sw    $a0, 0x58($sp)
/* A9D3E4 80026244 AFA60060 */  sw    $a2, 0x60($sp)
/* A9D3E8 80026248 AFA70064 */  sw    $a3, 0x64($sp)
/* A9D3EC 8002624C 8C850000 */  lw    $a1, ($a0)
/* A9D3F0 80026250 3C068013 */  lui   $a2, %hi(D_801355C0) # $a2, 0x8013
/* A9D3F4 80026254 24C655C0 */  addiu $a2, %lo(D_801355C0) # addiu $a2, $a2, 0x55c0
/* A9D3F8 80026258 27A40038 */  addiu $a0, $sp, 0x38
/* A9D3FC 8002625C 24070071 */  li    $a3, 113
/* A9D400 80026260 0C031AB1 */  jal   func_800C6AC4
/* A9D404 80026264 AFA50048 */   sw    $a1, 0x48($sp)
/* A9D408 80026268 87B80066 */  lh    $t8, 0x66($sp)
/* A9D40C 8002626C 34198000 */  li    $t9, 32768
/* A9D410 80026270 87A90062 */  lh    $t1, 0x62($sp)
/* A9D414 80026274 0338001A */  div   $zero, $t9, $t8
/* A9D418 80026278 00004012 */  mflo  $t0
/* A9D41C 8002627C 8FAF0048 */  lw    $t7, 0x48($sp)
/* A9D420 80026280 00000000 */  nop   
/* A9D424 80026284 01090019 */  multu $t0, $t1
/* A9D428 80026288 8DE502C0 */  lw    $a1, 0x2c0($t7)
/* A9D42C 8002628C 17000002 */  bnez  $t8, .L80026298
/* A9D430 80026290 00000000 */   nop   
/* A9D434 80026294 0007000D */  break 7
.L80026298:
/* A9D438 80026298 2401FFFF */  li    $at, -1
/* A9D43C 8002629C 17010004 */  bne   $t8, $at, .L800262B0
/* A9D440 800262A0 3C018000 */   li    $at, 0x80000000 # 0.000000
/* A9D444 800262A4 17210002 */  bne   $t9, $at, .L800262B0
/* A9D448 800262A8 00000000 */   nop   
/* A9D44C 800262AC 0006000D */  break 6
.L800262B0:
/* A9D450 800262B0 00002012 */  mflo  $a0
/* A9D454 800262B4 00042400 */  sll   $a0, $a0, 0x10
/* A9D458 800262B8 00042403 */  sra   $a0, $a0, 0x10
/* A9D45C 800262BC 0C01DE0D */  jal   Math_Coss
/* A9D460 800262C0 AFA50050 */   sw    $a1, 0x50($sp)
/* A9D464 800262C4 44802000 */  mtc1  $zero, $f4
/* A9D468 800262C8 8FA50050 */  lw    $a1, 0x50($sp)
/* A9D46C 800262CC 3C0AE700 */  lui   $t2, 0xe700
/* A9D470 800262D0 4600203E */  c.le.s $f4, $f0
/* A9D474 800262D4 00A01025 */  move  $v0, $a1
/* A9D478 800262D8 3C0DF800 */  lui   $t5, 0xf800
/* A9D47C 800262DC 3C018013 */  lui   $at, %hi(D_801356B0)
/* A9D480 800262E0 45000003 */  bc1f  .L800262F0
/* A9D484 800262E4 24A50008 */   addiu $a1, $a1, 8
/* A9D488 800262E8 10000002 */  b     .L800262F4
/* A9D48C 800262EC 46000086 */   mov.s $f2, $f0
.L800262F0:
/* A9D490 800262F0 46000087 */  neg.s $f2, $f0
.L800262F4:
/* A9D494 800262F4 AC4A0000 */  sw    $t2, ($v0)
/* A9D498 800262F8 16000008 */  bnez  $s0, .L8002631C
/* A9D49C 800262FC AC400004 */   sw    $zero, 4($v0)
/* A9D4A0 80026300 00A01025 */  move  $v0, $a1
/* A9D4A4 80026304 3C0BF800 */  lui   $t3, 0xf800
/* A9D4A8 80026308 3C0CFF00 */  lui   $t4, 0xff00
/* A9D4AC 8002630C AC4C0004 */  sw    $t4, 4($v0)
/* A9D4B0 80026310 AC4B0000 */  sw    $t3, ($v0)
/* A9D4B4 80026314 1000000F */  b     .L80026354
/* A9D4B8 80026318 24A50008 */   addiu $a1, $a1, 8
.L8002631C:
/* A9D4BC 8002631C 00A01025 */  move  $v0, $a1
/* A9D4C0 80026320 AC4D0000 */  sw    $t5, ($v0)
/* A9D4C4 80026324 92080001 */  lbu   $t0, 1($s0)
/* A9D4C8 80026328 920F0000 */  lbu   $t7, ($s0)
/* A9D4CC 8002632C 920C0002 */  lbu   $t4, 2($s0)
/* A9D4D0 80026330 92180003 */  lbu   $t8, 3($s0)
/* A9D4D4 80026334 00084C00 */  sll   $t1, $t0, 0x10
/* A9D4D8 80026338 000FCE00 */  sll   $t9, $t7, 0x18
/* A9D4DC 8002633C 03295025 */  or    $t2, $t9, $t1
/* A9D4E0 80026340 000C6A00 */  sll   $t5, $t4, 8
/* A9D4E4 80026344 014D7025 */  or    $t6, $t2, $t5
/* A9D4E8 80026348 01D84025 */  or    $t0, $t6, $t8
/* A9D4EC 8002634C AC480004 */  sw    $t0, 4($v0)
/* A9D4F0 80026350 24A50008 */  addiu $a1, $a1, 8
.L80026354:
/* A9D4F4 80026354 00A01025 */  move  $v0, $a1
/* A9D4F8 80026358 3C19DB08 */  lui   $t9, 0xdb08
/* A9D4FC 8002635C AC590000 */  sw    $t9, ($v0)
/* A9D500 80026360 C42656B0 */  lwc1  $f6, %lo(D_801356B0)($at)
/* A9D504 80026364 3C0F0001 */  lui   $t7, (0x0001F400 >> 16) # lui $t7, 1
/* A9D508 80026368 35EFF400 */  ori   $t7, (0x0001F400 & 0xFFFF) # ori $t7, $t7, 0xf400
/* A9D50C 8002636C 46061202 */  mul.s $f8, $f2, $f6
/* A9D510 80026370 24A50008 */  addiu $a1, $a1, 8
/* A9D514 80026374 3C068013 */  lui   $a2, %hi(D_801355D4) # $a2, 0x8013
/* A9D518 80026378 24C655D4 */  addiu $a2, %lo(D_801355D4) # addiu $a2, $a2, 0x55d4
/* A9D51C 8002637C 27A40038 */  addiu $a0, $sp, 0x38
/* A9D520 80026380 24070081 */  li    $a3, 129
/* A9D524 80026384 4600428D */  trunc.w.s $f10, $f8
/* A9D528 80026388 440B5000 */  mfc1  $t3, $f10
/* A9D52C 8002638C 00000000 */  nop   
/* A9D530 80026390 000B6400 */  sll   $t4, $t3, 0x10
/* A9D534 80026394 000C5403 */  sra   $t2, $t4, 0x10
/* A9D538 80026398 254D05DC */  addiu $t5, $t2, 0x5dc
/* A9D53C 8002639C 01ED001A */  div   $zero, $t7, $t5
/* A9D540 800263A0 00001812 */  mflo  $v1
/* A9D544 800263A4 3063FFFF */  andi  $v1, $v1, 0xffff
/* A9D548 800263A8 00037400 */  sll   $t6, $v1, 0x10
/* A9D54C 800263AC 01C3C025 */  or    $t8, $t6, $v1
/* A9D550 800263B0 AC580004 */  sw    $t8, 4($v0)
/* A9D554 800263B4 8FA80048 */  lw    $t0, 0x48($sp)
/* A9D558 800263B8 15A00002 */  bnez  $t5, .L800263C4
/* A9D55C 800263BC 00000000 */   nop   
/* A9D560 800263C0 0007000D */  break 7
.L800263C4:
/* A9D564 800263C4 2401FFFF */  li    $at, -1
/* A9D568 800263C8 15A10004 */  bne   $t5, $at, .L800263DC
/* A9D56C 800263CC 3C018000 */   lui   $at, 0x8000
/* A9D570 800263D0 15E10002 */  bne   $t7, $at, .L800263DC
/* A9D574 800263D4 00000000 */   nop   
/* A9D578 800263D8 0006000D */  break 6
.L800263DC:
/* A9D57C 800263DC AD0502C0 */  sw    $a1, 0x2c0($t0)
/* A9D580 800263E0 8FB90058 */  lw    $t9, 0x58($sp)
/* A9D584 800263E4 0C031AD5 */  jal   func_800C6B54
/* A9D588 800263E8 8F250000 */   lw    $a1, ($t9)
/* A9D58C 800263EC 8FBF001C */  lw    $ra, 0x1c($sp)
/* A9D590 800263F0 8FB00018 */  lw    $s0, 0x18($sp)
/* A9D594 800263F4 27BD0058 */  addiu $sp, $sp, 0x58
/* A9D598 800263F8 03E00008 */  jr    $ra
/* A9D59C 800263FC 00000000 */   nop   

