/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,2000 ชฎเฏฎเ ๆจ๏ €€’€                    บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        :  เ กฎโญ ๏ ฏซ โ                                           บ
 บ ฅเแจ๏        : 5.70                                                      บ
 บ  งญ ็ฅญจฅ    : โ็ฅโญฎแโ์ ข ”                                          บ
 บ โขฅโแโขฅญญ๋ฉ : ฅซฅๅ  แจซจฉ …ขฃฅญ์ฅขจ็                                  บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
#doc
โ็ฅโญฎแโ์ ข ”
#end
.set name = 'PFD5'
.hide
.fields
PredInn
RegNumPred
Pred
ฎซจ็ฅแโขฎ ็ฅช
ฎฌฅเ  ็ฅช
ชข เโ ซ
God:word
Month1:word Month2 : word
KolDocInPach
CounterPach
CounterDoc
Dolgok
Category
CountPu1 CountPu2 CountPu3
TypeOfLine:word
PFD_1_1:double  PFD_2_1:double   PFD_3_1:double
 Dolg_ruk
 ”_เใชฎขฎคจโฅซ๏
 ”_แฏฎซญจโฅซ๏
 —จแซฎ ฅแ๏ๆ ฎค
.endfields
.{ CheckEnter PFD5
^
^^^
^^
^^^^^^^^^
^
^^^^^^^
^^
^^
.if PFD5DeadLine
.end
.}
.endform