glabel func_8006390C
/* ADAAAC 8006390C 3C0B8016 */  lui   $t3, %hi(gGameInfo) # $t3, 0x8016
/* ADAAB0 80063910 256BFA90 */  addiu $t3, %lo(gGameInfo) # addiu $t3, $t3, -0x570
/* ADAAB4 80063914 8D680000 */  lw    $t0, ($t3)
/* ADAAB8 80063918 27BDFFE8 */  addiu $sp, $sp, -0x18
/* ADAABC 8006391C AFBF0014 */  sw    $ra, 0x14($sp)
/* ADAAC0 80063920 8D0A0004 */  lw    $t2, 4($t0)
/* ADAAC4 80063924 8D090000 */  lw    $t1, ($t0)
/* ADAAC8 80063928 94850000 */  lhu   $a1, ($a0)
/* ADAACC 8006392C 000A7080 */  sll   $t6, $t2, 2
/* ADAAD0 80063930 01CA7023 */  subu  $t6, $t6, $t2
/* ADAAD4 80063934 000E7040 */  sll   $t6, $t6, 1
/* ADAAD8 80063938 2401FFDF */  li    $at, -33
/* ADAADC 8006393C 01C96021 */  addu  $t4, $t6, $t1
/* ADAAE0 80063940 000C6100 */  sll   $t4, $t4, 4
/* ADAAE4 80063944 00A17827 */  nor   $t7, $a1, $at
/* ADAAE8 80063948 00803025 */  move  $a2, $a0
/* ADAAEC 8006394C 258CFFF0 */  addiu $t4, $t4, -0x10
/* ADAAF0 80063950 11E00008 */  beqz  $t7, .L80063974
/* ADAAF4 80063954 30A70F00 */   andi  $a3, $a1, 0xf00
/* ADAAF8 80063958 2401FFEF */  li    $at, -17
/* ADAAFC 8006395C 00A1C027 */  nor   $t8, $a1, $at
/* ADAB00 80063960 13000004 */  beqz  $t8, .L80063974
/* ADAB04 80063964 2401EFFF */   li    $at, -4097
/* ADAB08 80063968 00A1C827 */  nor   $t9, $a1, $at
/* ADAB0C 8006396C 17200022 */  bnez  $t9, .L800639F8
/* ADAB10 80063970 252DFFFF */   addiu $t5, $t1, -1
.L80063974:
/* ADAB14 80063974 3C028012 */  lui   $v0, %hi(D_8011E0D4) # $v0, 0x8012
/* ADAB18 80063978 2442E0D4 */  addiu $v0, %lo(D_8011E0D4) # addiu $v0, $v0, -0x1f2c
/* ADAB1C 8006397C 00001825 */  move  $v1, $zero
/* ADAB20 80063980 2404001D */  li    $a0, 29
.L80063984:
/* ADAB24 80063984 944D0000 */  lhu   $t5, ($v0)
/* ADAB28 80063988 01A07027 */  not   $t6, $t5
/* ADAB2C 8006398C 01C57827 */  nor   $t7, $t6, $a1
/* ADAB30 80063990 55E00008 */  bnezl $t7, .L800639B4
/* ADAB34 80063994 24630001 */   addiu $v1, $v1, 1
/* ADAB38 80063998 94580002 */  lhu   $t8, 2($v0)
/* ADAB3C 8006399C 94CD000C */  lhu   $t5, 0xc($a2)
/* ADAB40 800639A0 0300C827 */  not   $t9, $t8
/* ADAB44 800639A4 032D7027 */  nor   $t6, $t9, $t5
/* ADAB48 800639A8 51C00005 */  beql  $t6, $zero, .L800639C0
/* ADAB4C 800639AC 2861001D */   slti  $at, $v1, 0x1d
/* ADAB50 800639B0 24630001 */  addiu $v1, $v1, 1
.L800639B4:
/* ADAB54 800639B4 1464FFF3 */  bne   $v1, $a0, .L80063984
/* ADAB58 800639B8 24420004 */   addiu $v0, $v0, 4
/* ADAB5C 800639BC 2861001D */  slti  $at, $v1, 0x1d
.L800639C0:
/* ADAB60 800639C0 5020008D */  beql  $at, $zero, .L80063BF8
/* ADAB64 800639C4 8FBF0014 */   lw    $ra, 0x14($sp)
/* ADAB68 800639C8 146A0007 */  bne   $v1, $t2, .L800639E8
/* ADAB6C 800639CC 252F0001 */   addiu $t7, $t1, 1
/* ADAB70 800639D0 24010007 */  li    $at, 7
/* ADAB74 800639D4 01E1001A */  div   $zero, $t7, $at
/* ADAB78 800639D8 0000C010 */  mfhi  $t8
/* ADAB7C 800639DC AD180000 */  sw    $t8, ($t0)
/* ADAB80 800639E0 10000085 */  b     .L80063BF8
/* ADAB84 800639E4 8FBF0014 */   lw    $ra, 0x14($sp)
.L800639E8:
/* ADAB88 800639E8 AD030004 */  sw    $v1, 4($t0)
/* ADAB8C 800639EC 8D790000 */  lw    $t9, ($t3)
/* ADAB90 800639F0 10000080 */  b     .L80063BF4
/* ADAB94 800639F4 AF200000 */   sw    $zero, ($t9)
.L800639F8:
/* ADAB98 800639F8 2DA10006 */  sltiu $at, $t5, 6
/* ADAB9C 800639FC 1020007D */  beqz  $at, .L80063BF4
/* ADABA0 80063A00 000D6880 */   sll   $t5, $t5, 2
/* ADABA4 80063A04 3C018014 */  lui   $at, %hi(jtbl_8013AD80)
/* ADABA8 80063A08 002D0821 */  addu  $at, $at, $t5
/* ADABAC 80063A0C 8C2DAD80 */  lw    $t5, %lo(jtbl_8013AD80)($at)
/* ADABB0 80063A10 01A00008 */  jr    $t5
/* ADABB4 80063A14 00000000 */   nop   
/* ADABB8 80063A18 8D0E000C */  lw    $t6, 0xc($t0)
/* ADABBC 80063A1C 240F0010 */  li    $t7, 16
/* ADABC0 80063A20 54EE0010 */  bnel  $a3, $t6, .L80063A64
/* ADABC4 80063A24 AD0F0010 */   sw    $t7, 0x10($t0)
/* ADABC8 80063A28 8D0F0010 */  lw    $t7, 0x10($t0)
/* ADABCC 80063A2C 240D0001 */  li    $t5, 1
/* ADABD0 80063A30 25F8FFFF */  addiu $t8, $t7, -1
/* ADABD4 80063A34 AD180010 */  sw    $t8, 0x10($t0)
/* ADABD8 80063A38 8D680000 */  lw    $t0, ($t3)
/* ADABDC 80063A3C 8D190010 */  lw    $t9, 0x10($t0)
/* ADABE0 80063A40 07230005 */  bgezl $t9, .L80063A58
/* ADABE4 80063A44 8D0E000C */   lw    $t6, 0xc($t0)
/* ADABE8 80063A48 AD0D0010 */  sw    $t5, 0x10($t0)
/* ADABEC 80063A4C 10000008 */  b     .L80063A70
/* ADABF0 80063A50 8D680000 */   lw    $t0, ($t3)
/* ADABF4 80063A54 8D0E000C */  lw    $t6, 0xc($t0)
.L80063A58:
/* ADABF8 80063A58 10000005 */  b     .L80063A70
/* ADABFC 80063A5C 00EE3826 */   xor   $a3, $a3, $t6
/* ADAC00 80063A60 AD0F0010 */  sw    $t7, 0x10($t0)
.L80063A64:
/* ADAC04 80063A64 8D780000 */  lw    $t8, ($t3)
/* ADAC08 80063A68 AF07000C */  sw    $a3, 0xc($t8)
/* ADAC0C 80063A6C 8D680000 */  lw    $t0, ($t3)
.L80063A70:
/* ADAC10 80063A70 30F90100 */  andi  $t9, $a3, 0x100
/* ADAC14 80063A74 13200018 */  beqz  $t9, .L80063AD8
/* ADAC18 80063A78 30F80200 */   andi  $t8, $a3, 0x200
/* ADAC1C 80063A7C 94C50000 */  lhu   $a1, ($a2)
/* ADAC20 80063A80 3C01FFFF */  lui   $at, (0xFFFF3FFF >> 16) # lui $at, 0xffff
/* ADAC24 80063A84 34213FFF */  ori   $at, (0xFFFF3FFF & 0xFFFF) # ori $at, $at, 0x3fff
/* ADAC28 80063A88 00A16827 */  nor   $t5, $a1, $at
/* ADAC2C 80063A8C 15A00003 */  bnez  $t5, .L80063A9C
/* ADAC30 80063A90 3C01FFFF */   lui   $at, (0xFFFF7FFF >> 16) # lui $at, 0xffff
/* ADAC34 80063A94 1000002A */  b     .L80063B40
/* ADAC38 80063A98 240303E8 */   li    $v1, 1000
.L80063A9C:
/* ADAC3C 80063A9C 34217FFF */  ori   $at, (0xFFFF7FFF & 0xFFFF) # ori $at, $at, 0x7fff
/* ADAC40 80063AA0 00A17027 */  nor   $t6, $a1, $at
/* ADAC44 80063AA4 15C00003 */  bnez  $t6, .L80063AB4
/* ADAC48 80063AA8 2401BFFF */   li    $at, -16385
/* ADAC4C 80063AAC 10000007 */  b     .L80063ACC
/* ADAC50 80063AB0 24030064 */   li    $v1, 100
.L80063AB4:
/* ADAC54 80063AB4 00A17827 */  nor   $t7, $a1, $at
/* ADAC58 80063AB8 15E00003 */  bnez  $t7, .L80063AC8
/* ADAC5C 80063ABC 24020001 */   li    $v0, 1
/* ADAC60 80063AC0 10000001 */  b     .L80063AC8
/* ADAC64 80063AC4 2402000A */   li    $v0, 10
.L80063AC8:
/* ADAC68 80063AC8 00401825 */  move  $v1, $v0
.L80063ACC:
/* ADAC6C 80063ACC 00601025 */  move  $v0, $v1
/* ADAC70 80063AD0 1000001B */  b     .L80063B40
/* ADAC74 80063AD4 00401825 */   move  $v1, $v0
.L80063AD8:
/* ADAC78 80063AD8 13000018 */  beqz  $t8, .L80063B3C
/* ADAC7C 80063ADC 00002025 */   move  $a0, $zero
/* ADAC80 80063AE0 94C50000 */  lhu   $a1, ($a2)
/* ADAC84 80063AE4 3C01FFFF */  lui   $at, (0xFFFF3FFF >> 16) # lui $at, 0xffff
/* ADAC88 80063AE8 34213FFF */  ori   $at, (0xFFFF3FFF & 0xFFFF) # ori $at, $at, 0x3fff
/* ADAC8C 80063AEC 00A1C827 */  nor   $t9, $a1, $at
/* ADAC90 80063AF0 17200003 */  bnez  $t9, .L80063B00
/* ADAC94 80063AF4 3C01FFFF */   li    $at, 0xFFFF0000 # 0.000000
/* ADAC98 80063AF8 10000010 */  b     .L80063B3C
/* ADAC9C 80063AFC 2404FC18 */   li    $a0, -1000
.L80063B00:
/* ADACA0 80063B00 34217FFF */  ori   $at, (0xFFFF7FFF & 0xFFFF) # ori $at, $at, 0x7fff
/* ADACA4 80063B04 00A16827 */  nor   $t5, $a1, $at
/* ADACA8 80063B08 15A00003 */  bnez  $t5, .L80063B18
/* ADACAC 80063B0C 2401BFFF */   li    $at, -16385
/* ADACB0 80063B10 10000007 */  b     .L80063B30
/* ADACB4 80063B14 2403FF9C */   li    $v1, -100
.L80063B18:
/* ADACB8 80063B18 00A17027 */  nor   $t6, $a1, $at
/* ADACBC 80063B1C 15C00003 */  bnez  $t6, .L80063B2C
/* ADACC0 80063B20 2402FFFF */   li    $v0, -1
/* ADACC4 80063B24 10000001 */  b     .L80063B2C
/* ADACC8 80063B28 2402FFF6 */   li    $v0, -10
.L80063B2C:
/* ADACCC 80063B2C 00401825 */  move  $v1, $v0
.L80063B30:
/* ADACD0 80063B30 00601025 */  move  $v0, $v1
/* ADACD4 80063B34 10000001 */  b     .L80063B3C
/* ADACD8 80063B38 00402025 */   move  $a0, $v0
.L80063B3C:
/* ADACDC 80063B3C 00801825 */  move  $v1, $a0
.L80063B40:
/* ADACE0 80063B40 8D0F0008 */  lw    $t7, 8($t0)
/* ADACE4 80063B44 000C6840 */  sll   $t5, $t4, 1
/* ADACE8 80063B48 000FC040 */  sll   $t8, $t7, 1
/* ADACEC 80063B4C 0118C821 */  addu  $t9, $t0, $t8
/* ADACF0 80063B50 032D1021 */  addu  $v0, $t9, $t5
/* ADACF4 80063B54 844E0014 */  lh    $t6, 0x14($v0)
/* ADACF8 80063B58 30F80800 */  andi  $t8, $a3, 0x800
/* ADACFC 80063B5C 01C37821 */  addu  $t7, $t6, $v1
/* ADAD00 80063B60 1300000C */  beqz  $t8, .L80063B94
/* ADAD04 80063B64 A44F0014 */   sh    $t7, 0x14($v0)
/* ADAD08 80063B68 8D680000 */  lw    $t0, ($t3)
/* ADAD0C 80063B6C 240F000F */  li    $t7, 15
/* ADAD10 80063B70 8D190008 */  lw    $t9, 8($t0)
/* ADAD14 80063B74 272DFFFF */  addiu $t5, $t9, -1
/* ADAD18 80063B78 AD0D0008 */  sw    $t5, 8($t0)
/* ADAD1C 80063B7C 8D680000 */  lw    $t0, ($t3)
/* ADAD20 80063B80 8D0E0008 */  lw    $t6, 8($t0)
/* ADAD24 80063B84 05C30011 */  bgezl $t6, .L80063BCC
/* ADAD28 80063B88 8D680000 */   lw    $t0, ($t3)
/* ADAD2C 80063B8C 1000000E */  b     .L80063BC8
/* ADAD30 80063B90 AD0F0008 */   sw    $t7, 8($t0)
.L80063B94:
/* ADAD34 80063B94 30F80400 */  andi  $t8, $a3, 0x400
/* ADAD38 80063B98 5300000C */  beql  $t8, $zero, .L80063BCC
/* ADAD3C 80063B9C 8D680000 */   lw    $t0, ($t3)
/* ADAD40 80063BA0 8D680000 */  lw    $t0, ($t3)
/* ADAD44 80063BA4 8D190008 */  lw    $t9, 8($t0)
/* ADAD48 80063BA8 272D0001 */  addiu $t5, $t9, 1
/* ADAD4C 80063BAC AD0D0008 */  sw    $t5, 8($t0)
/* ADAD50 80063BB0 8D680000 */  lw    $t0, ($t3)
/* ADAD54 80063BB4 8D0E0008 */  lw    $t6, 8($t0)
/* ADAD58 80063BB8 29C10010 */  slti  $at, $t6, 0x10
/* ADAD5C 80063BBC 54200003 */  bnezl $at, .L80063BCC
/* ADAD60 80063BC0 8D680000 */   lw    $t0, ($t3)
/* ADAD64 80063BC4 AD000008 */  sw    $zero, 8($t0)
.L80063BC8:
/* ADAD68 80063BC8 8D680000 */  lw    $t0, ($t3)
.L80063BCC:
/* ADAD6C 80063BCC 850F0CD4 */  lh    $t7, 0xcd4($t0)
/* ADAD70 80063BD0 51E00009 */  beql  $t7, $zero, .L80063BF8
/* ADAD74 80063BD4 8FBF0014 */   lw    $ra, 0x14($sp)
/* ADAD78 80063BD8 A5000CD4 */  sh    $zero, 0xcd4($t0)
/* ADAD7C 80063BDC 8D680000 */  lw    $t0, ($t3)
/* ADAD80 80063BE0 44806000 */  mtc1  $zero, $f12
/* ADAD84 80063BE4 91050CD7 */  lbu   $a1, 0xcd7($t0)
/* ADAD88 80063BE8 91060CD9 */  lbu   $a2, 0xcd9($t0)
/* ADAD8C 80063BEC 0C02A800 */  jal   func_800AA000
/* ADAD90 80063BF0 91070CDB */   lbu   $a3, 0xcdb($t0)
.L80063BF4:
/* ADAD94 80063BF4 8FBF0014 */  lw    $ra, 0x14($sp)
.L80063BF8:
/* ADAD98 80063BF8 27BD0018 */  addiu $sp, $sp, 0x18
/* ADAD9C 80063BFC 03E00008 */  jr    $ra
/* ADADA0 80063C00 00000000 */   nop   
