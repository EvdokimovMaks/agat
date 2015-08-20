/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,99 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : €ขโฎโเ ญแฏฎเโ                                             บ
 บ ฅเแจ๏        : 6.00                                                      บ
 บ  งญ ็ฅญจฅ    :  เโฎ็ช  ขฎคจโฅซ๏ ฏฎ ‘                                  บ
 บ โขฅโแโขฅญญ๋ฉ : จแจๆ   โ ซ์๏ จๅ ฉซฎขญ                                  บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name='Drv_Rep'
!.hide
.fields
  Filter
  NaimPred BegDate  EndDate
  AnalGroup

  Marka GosNom GarNom

  DatePL NPL
  FIODrive TabN
  Norma Fakt ProbegAll Price  Ikonom  Rashod

  AnalItg
  ItgNorma ItgFakt ItgProbegAll ItgPrice ItgIkonom ItgRashod


.endfields


.{
^
.}
^ ^ ^
.{ CheckEnter GroupAnalDrv
^

.{ CheckEnter ShapkaDrv
^ ^ ^
.}
.{ CheckEnter DocAnalDrv
^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter TotalAnalDrv
โฎฃฎ ^
^ ^ ^ ^ ^ ^
.}
.}
.endform