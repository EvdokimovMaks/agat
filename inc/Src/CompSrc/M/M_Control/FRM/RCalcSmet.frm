/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 2001 ชฎเฏฎเ ๆจ๏ €€’€                         บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : ฎญโเฎซซจญฃ                                               บ
 บ ฅเแจ๏        : 7.1                                                       บ
 บ  งญ ็ฅญจฅ    :  ซ์ชใซ๏ๆจฎญญ ๏ แฌฅโ   จ ก ซ ญแ                           บ
 บ โขฅโแโขฅญญ๋ฉ : ฅคขฅค์ .. (MEDVED)                                     บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name = 'RCalcSmet'
.nameinlist ' งฎข ๏ ไฎเฌ '
.hide
.fields
ParamUser
ParamNkl
NmParamNkl
ParamRep
NmParamRep
NmPeriod
NmPodr
Npp
NmZatr
KodZatr
NmValut
SumZatr
NmRes
NmEiRes
Amount
Price
SumRes
ItgNmEi
ItgSumZatr
ItgNmValNoZatr
ItgSumNoZatr
.endfields

^
.{			
^ .{.?stRCalcSmet_Par; ^.}
.}			

.{
^^
.}
.{
^                //ฅเจฎค
.{
^                //ฎคเ งคฅซฅญจฅ
.{
^^^^^            //‘
.if boPrint_Res
.{
^^^^^            //ฅแใเแ๋
.}
.end
.}
^^               //โฎฃฎข ๏ แใฌฌ 
.if boItg_Razn
^^               // ญ แโเฎฉช ๅ ญฅ ใ็โฅญฎ
.end
.}
.}
.endform
