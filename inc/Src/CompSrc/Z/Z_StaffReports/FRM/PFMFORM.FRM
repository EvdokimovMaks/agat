/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,99 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        :  เ กฎโญ ๏ ฏซ โ                                           บ
 บ ฅเแจ๏        : 5.8                                                       บ
 บ  งญ ็ฅญจฅ    : ”ฎเฌ  คซ๏ ข๋ขฎค   แฏเ ขชจ ฏฎ ใ็ฅโใ                        บ
 บ                 ฌฎซฎค๋ๅ แฏฅๆจ ซจแโฎข                                      บ
 บ                                                                           บ
 บ โขฅโแโขฅญญ๋ฉ : ฅซฅๅ  แจซจฉ …ขฃฅญ์ฅขจ็                                  บ
 บ                                                                           บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
#doc
”ฎเฌ  คซ๏ ข๋ขฎค   แฏเ ขชจ ฏฎ ใ็ฅโใ ฌฎซฎค๋ๅ แฏฅๆจ ซจแโฎข
#end
.set name 'PFMForm'
.hide
.DEFP PA4
.p 60
.fields
 FormDate
 Stag1_Name
 Stag2_Name
 Stag3_Name
 TaabN
 FIO
 BornnDate
 DisDate
 PFCertificateNum
 StagInSystem_str
 StagInPred
 StagInCorpo
 nStruct
.endfields
 ^
 ^ ^ ^
.{ pfm_persloop CheckEnter
^^^^^^^^^
.}
.endform