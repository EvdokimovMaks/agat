/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,97 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : €ขโฎโเ ญแฏฎเโ                                             บ
 บ ฅเแจ๏        : 6.00                                                      บ
 บ  งญ ็ฅญจฅ    : ’ กฅซ์  ขโฎฏ เช                                           บ
 บ โขฅโแโขฅญญ๋ฉ :  ซ๎โ  €ซฅชแ ญคเ ฅฎเฃจฅขจ็ (Sandro)                      บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name='Tab_Avto'
.hide
.Group 'Tab_01'
.Group 'Tab_01_Period'
.fields
 otMonth otYear
 Orgname Podrname
 Time1 Time2
 KolName0:string
 Empty0
 KolName1:string
 Empty1
 KolName2
 KolName3
 NameMarka
 GruzPod
 GosNom
 GarNom
 ZavNom PodrTc
 KlassFunk  Klass1Cel Klass2Cel KlassVid KlassDriver KlassTrailer KlassPark
 Pd1 d1  Pd2  d2  Pd3  d3  Pd4  d4   Pd5 d5   Pd6 d6  Pd7 d7 Pd8 d8 Pd9 d9 Pd10 d10 Pd11 d11
 Pd12 d12 Pd13 d13 Pd14 d14 Pd15 d15
 Pd16 d16 Pd17 d17 Pd18 d18 Pd19 d19 Pd20 d20
 Pd21 d21 Pd22 d22 Pd23 d23 Pd24 d24 Pd25 d25 Pd26 d26 Pd27 d27 Pd28 d28
 Pd29 d29 Pd30 d30 Pd31 d31
 KolRab
 KolData
 SumFondDn
 SumWorkDn
 KoffIsp
 KolItgData
.endfields
^ ^
^ ^
^ ^
 .{.?stColumnName0;^.} .{.?stEmpty0;^.}
 .{.?stColumnName1;^.} .{.?stEmpty1;^.}
 .{.?stColumnName2;^.}
 .{.?stColumnName3;^.}
.{
^ ^  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^   .{.?stColumnData; ^.}
.}
^ ^ ^
 .{.?stColumnItgData; ^.}
.endform