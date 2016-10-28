/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,99 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        :  เ กฎโญ ๏ ฏซ โ                                            บ
 บ ฅเแจ๏        : 5.70                                                      บ
 บ  งญ ็ฅญจฅ    : ”ฎเฌ  คซ๏ ข๋ขฎค   แฏเ ขชจ ข ญ ซฎฃฎขใ๎                     บ
 บ                 จญแฏฅชๆจ๎ ฏฎ แฎขฌฅแโจโฅซ๏ฌ(คซ๏ ฅซ เใแจ)                  บ
 บ                                                                           บ
 บ โขฅโแโขฅญญ๋ฉ : ฅซฅๅ  แจซจฉ …ขฃฅญ์ฅขจ็                                  บ
 บ                                                                           บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
#doc
”ฎเฌ  คซ๏ ข๋ขฎค   แฏเ ขชจ ข ญ ซฎฃฎขใ๎
จญแฏฅชๆจ๎ ฏฎ แฎขฌฅแโจโฅซ๏ฌ(คซ๏ ฅซ เใแจ)
#end
.set name 'OKLAD'
.hide
.DEFP PA4
.p 60
.fields
Date1:date  Date2:date
Department TabN PersFIO
WorkBegDate TarifStavBeg EndMonth TarifStavEnd UvDate
.endfields
^^
.{ oklad_MainPersC CheckEnter
^^^^^^^^
.fields
DataChange PaySystem AllSum DifferenceSum:double
.endfields
.{ oklad_EachChangeC CheckEnter
^^^^
.}
.}
.endform