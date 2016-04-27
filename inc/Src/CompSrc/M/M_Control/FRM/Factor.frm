/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 2001 ชฎเฏฎเ ๆจ๏ €€’€                         บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : ฎญโเฎซซจญฃ                                               บ
 บ ฅเแจ๏        : 7.1                                                       บ
 บ  งญ ็ฅญจฅ    : โชซฎญฅญจ๏ ฏฎ แโ โ์๏ฌ ง โเ โ                              บ
 บ โขฅโแโขฅญญ๋ฉ : ฅคขฅค์ .. (MEDVED)                                     บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name = 'FactorAgr'
.nameinlist ' งฎข ๏ ไฎเฌ '
.hide
.fields
   ParamUser
   TitleRep
   ParamRep
   NmParamRep
   MinOtkl
   NamePodr
   ObjCalc
   NameObj
   TitleKod
   ObjKod
   TitleEdi
   NameEdi
   strShap1
   NameStat
   strShap2
   strShap3
   strShap4		
   NameZatr		
   SummaZatr		
   NameMove		
   KodMove		
   SummaMove		
.EndFields		
^		
		
โชซฎญฅญจฅ ฏฎ แโ โ์๏ฌ ^ 		
		
.{		
^ .{.?stParam_Factor; ^.}
.}		
^  //จญจฌ ซ์ญฎฅ ฏฎเฎฃฎขฎฅ ฎโชซฎญฅญจฅ

.{			
^  //ฎคเ งคฅซฅญจฅ	
.{			

^^		
^^		
^^
    .{.?stShap1_Factor;   ^.}
^   .{.?stShap2_Factor;   ^.}
    .{.?stShap3_Factor;   ^.}

.if boShap4_Factor
    .{.?stShap4_Factor;   ^.}
.end

.{			
^   .{.?stZatr_Factor;    ^.}
.{			
^ ^ .{.?stResZatr_Factor; ^.}
.}			
.}			

.}			
.}			
.endform			
