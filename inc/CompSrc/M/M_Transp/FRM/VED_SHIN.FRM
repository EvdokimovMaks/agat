/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,97 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : €ขโฎโเ ญแฏฎเโ                                             บ
 บ ฅเแจ๏        : 5.00                                                      บ
 บ  งญ ็ฅญจฅ    : เฎกฅฃจ ่จญ                                               บ
 บ โขฅโแโขฅญญ๋ฉ : จแจๆ   โ ซ์๏ จๅ ฉซฎขญ                                  บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name='Ved_Shin'
.hide
!.p 42
.fields
 BegDate  EndDate
 NaimPred  dat
 Marka
 NomShin   ProbegAll ProbegIks
 nRecPutLst : Comp
 nRecShin    : Comp
 NomPutLst DataPl
 Probeg : double

.endfields

^ ^ ^ ^
.{
^
.{
^ ^ ^
.{
^ ^
^ ^ ^
.}
.}
.}
.endform
.linkform 'Ved_Shin_01' prototype is 'Ved_Shin'
.NameInList 'เฎกฅฃ  ขโฎ่จญ ฏฎ ฏใโฅข๋ฌ'
!.p 42
.var
ItgProbeg  :double
ItgTime    :double
.endvar
.fields
 CommonFormHeader
 BegDate  EndDate
 NaimPred  dat
 Marka
 NomShin
 NomPutLst DataPl
 Probeg
.endfields

^
         ญญ๋ฅ ฎ ฏเฎกฅฃฅ  ขโฎ่จญ
c @@@@@@@@@@@@@@@@@@@@@ ฏฎ @@@@@@@@@@@@@@@@@@@@@
      @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                  @@@@@@@@@@@@@@@@@@
 ฺฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฟ
 ณ  ฎฌฅเ   ณ    โ      ณ เฎกฅฃ    ณ
 ณฏใโฅขฎฃฎ  ณ  ข๋ฏจแชจ   ณ           ณ
 ณ  ซจแโ    ณ            ณ           ณ
 รฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤณ
 ณ    1     ณ     2      ณ      3    ณ
 ภฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤู
.{
 ณ  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  ณ
.{
.begin
ItgProbeg := 0
ItgTime   := 0
end.
 ณ  ฎฌฅเ ่จญ๋: @@@@@@@@@@@@@@@@@@@  ณ
.{
.begin
ItgProbeg := ItgProbeg +  Probeg
end.
 ณ @@@@@@@@@ณ @@@@@@@@@@@ณ&'&&&&&&.& ณ
.}
.Fields
ItgProbeg
.endfields
 ณ โฎฃฎ ฏฎ ่จญฅ         ณ&'&&&&&&.& ณ
.}
.}
 ภฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤู

.endform