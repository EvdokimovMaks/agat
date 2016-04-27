/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 2001 ชฎเฏฎเ ๆจ๏ €€’€                         บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : ฎญโเฎซซจญฃ                                               บ
 บ ฅเแจ๏        : 7.1                                                       บ
 บ  งญ ็ฅญจฅ    :  ซ์ชใซ๏ๆจฎญญ๋ฉ ก ซ ญแ                                    บ
 บ โขฅโแโขฅญญ๋ฉ : ฅคขฅค์ .. (MEDVED)                                     บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name = 'RCalcBalans'
.nameinlist ' งฎข ๏ ไฎเฌ '
.hide
.fields
   ParamUser
   ParamNkl
   NmParamNkl
   ParamRepBalans
   NmParamRepbalans
   NmPodrBalans
   Nm1_Shap1
   Nm2_Shap1
   Nm3_Shap1
   Nm1_Shap2
   Nm2_Shap2
   Nm3_Shap2
   NppStat
   NmStat
   KodStat
   NmEiStat
   AmountStat
   CenaStat
   SummaStat
   NppRes
   NmRes
   KodRes
   NmEiRes
   AmountRes
   CenaRes
   SummaRes
.endfields

^

.{
^ .{.?stRCalcBal_Par;	^.}
.}

.{
^^
.}

.{
^
 .{.?stRCalcBal_Shap1; ^^^ .}
 .{.?stRCalcBal_Shap2; ^^^ .}

.{
.if boPrintStat_RCalcBal
.{
^^^^ .{.?stRCalcBal_Stat; ^^^ .}
.}
.end

.if boPrintRes_RCalcBal
.{
^^^^ .{.?stRCalcBal_Res; ^^^ .}
.}
.end

.}
 .{.?stRCalcBal_Line; .}

							
.}

.endform
