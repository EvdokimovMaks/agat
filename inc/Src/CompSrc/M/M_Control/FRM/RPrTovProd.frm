/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 2001 ชฎเฏฎเ ๆจ๏ €€’€                         บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : ฎญโเฎซซจญฃ                                               บ
 บ ฅเแจ๏        : 7.1                                                       บ
 บ  งญ ็ฅญจฅ    : เจฃฎโฎขซฅญจฅ โฎข เญฎฉ ฏเฎคใชๆจจ                          บ
 บ โขฅโแโขฅญญ๋ฉ : ฅคขฅค์ .. (MEDVED)                                     บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name = 'R_PrTovProd'
.nameinlist ' งฎข ๏ ไฎเฌ '
.hide
.fields
  ParamUser
  ParamRep
  NmParamRep
  NmPodr
  NmBold1
  NmBold2
  NmBold3
  NmBold4
  AmountBold
  PriceBold
  SummaBold
  Nm1
  Nm2		
  Nm3		
  Nm4		
  Amount		
  Price		
  Summa		
.EndFields		

^   ParamUser
.{
^   ParamRep
^   NmParamRep
.}

.{
^   NmPodr
.{

.if boBoldRes_RPrTov
.{
    NmBold1  NmBold2  NmBold3  NmBold4  AmountBold  PriceBold  SummaBold
    ^        ^        ^        ^        ^           ^          ^
.}
.end

.if boRes_RPrTov
.{
    Nm1      Nm2      Nm3      Nm4      Amount      Price      Summa
    ^        ^        ^        ^        ^           ^          ^
.}
.end
						
.}

.}

.endform						
