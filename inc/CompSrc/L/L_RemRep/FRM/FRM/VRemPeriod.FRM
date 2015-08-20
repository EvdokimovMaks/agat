/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) ชฎเฏฎเ ๆจ๏ €€’€                              บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : ฎคใซ์ ’                                               บ
 บ ฅเแจ๏        : 8.1                                                       บ
 บ  งญ ็ฅญจฅ    : ๋ฏฎซญฅญจฅ เฅฌฎญโฎข ง  ฏฅเจฎค                             บ
 บ โขฅโแโขฅญญ๋ฉ :                                                           บ
 บ งฌฅญฅญจ๏     :                                                           บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
#doc
”ฎเฌ๋ " โเ โ๋ ญ  เฅฌฎญโ"
#end
.set name = 'FVRemPeriod'
!.group '€ญ ซจโจ็ฅแชจฉ ฎโ็ฅโ ฏฎ ง โเ โ ฌ'
.nameinlist ' งฎข ๏ ไฎเฌ '
.hide
.fields

UserDeskRepNRec ResDate1 ResDate2

KatSoprNRec vwVidSopr  dSopr  Number   

vcObjRem    vsObjRem

vsKatPodrIR

vcKatPlace  vsKatPlace

vcVidRem    vsVidRem

vcSposRem   vsSposRem

vcIspRem    vsIspRem

vcPodr      vsPodr

vcSpSoprNRec vdKol PrMC NameMcYsl vdStoimt 

vcSpSoprNRecSp vdKolSp PrMCSp NameMcYslSp vdStoimtSp

.endfields

UserDeskRepNRec ^ ResDate1 ^ ResDate2 ^

.{

KatSoprNRec ^ vwVidSopr  ^ dSopr ^ Number ^
            
vsKatPodrIR ^

vcObjRem    ^ vsObjRem   ^
            
vcKatPlace  ^ vsKatPlace ^
            
vcVidRem    ^ vsVidRem   ^ 
            
vcSposRem   ^ vsSposRem  ^ 
            
vcIspRem    ^ vsIspRem   ^
            
vcPodr      ^ vsPodr     ^ 

vcSpSoprNRec ^ vdKol ^ PrMC ^ NameMcYsl ^ vdStoimt ^

.{ CheckEnter PrintSp
   vcSpSoprNRecSp ^ vdKolSp ^ PrMCSp ^ NameMcYslSp ^ vdStoimtSp ^
.}

.}

.endform