/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,97 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : €ขโฎโเ ญแฏฎเโ                                             บ
 บ ฅเแจ๏        : 5.00                                                      บ
 บ  งญ ็ฅญจฅ    :  กฎโ   ชชใฌใซ๏โฎเฎข                                      บ
 บ โขฅโแโขฅญญ๋ฉ : จแจๆ   โ ซ์๏ จๅ ฉซฎขญ                                  บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name='Ved_Akk'
.hide
.fields
 BegDate  EndDate
 NaimPred  dat
 Marka
 NomShin
 nRecPutLst : Comp
 nRecAkk    : Comp
 NomPutLst DataPl
 Probeg :double  Time :double
.endfields

^ ^ ^ ^
.{
^
.{
^
.{
^ ^
^ ^ ^ ^
.}
.}
.}
.endform
.linkform 'Ved_Akk_01' prototype is 'Ved_Akk'
.NameInList 'ก้จฅ ฏฎช ง โฅซจ'
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
 Probeg Time
.endfields
 ^
             ญญ๋ฅ ฎ เ กฎโฅ  ชชใฌใซ๏โฎเฎข
 c @@@@@@@@@@@@@@@@@@@@  ฏฎ   @@@@@@@@@@@@@@@@@@@@
           @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                            @@@@@@@@@@@@@@@@@@@@
 ฺฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฟ
 ณ  ฎฌฅเ   ณ    โ      ณ เฎกฅฃ    ณ  เฅฌ๏    ณ
 ณฏใโฅขฎฃฎ  ณ  ข๋ฏจแชจ   ณ           ณ           ณ
 ณ  ซจแโ    ณ            ณ           ณ           ณ
 รฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤณ
 ณ    1     ณ     2      ณ      3    ณ     4     ณ
 ภฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤู
.{
 ณ  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  ณ
.{
.begin
ItgProbeg := 0
ItgTime   := 0
end.
 ณ  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  ณ
.{
.begin
ItgProbeg := ItgProbeg +  Probeg
ItgTime   := ItgTime   +  Time
end.
 ณ @@@@@@@@@ณ @@@@@@@@@@@ณ&'&&&&&&.& ณ&'&&&&&&.& ณ
.}
.Fields
ItgProbeg  ItgTime
.endfields
 ณโฎฃฎ ฏฎ  ชชใฌใซ๏โฎเใ  ณ&'&&&&&&.& ณ&'&&&&&&.& ณ
.}
.}
 ภฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤู

.endform