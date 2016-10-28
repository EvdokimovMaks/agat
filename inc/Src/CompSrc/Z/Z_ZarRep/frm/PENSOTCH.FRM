/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,97 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        :  เ กฎโญ ๏ ฏซ โ                                           บ
 บ ฅเแจ๏        : 5.50                                                      บ
 บ  งญ ็ฅญจฅ    : ฎโ็ฅโ ฎ ฏฅญแจฎญญ๋ๅ แกฎเ ๅ                                 บ
 บ โขฅโแโขฅญญ๋ฉ : ใง  ชแจฌ ฅญญ ค์ฅขจ็                                    บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
#doc
โ็ฅโ ฎ ฏฅญแจฎญญ๋ๅ แกฎเ ๅ
#end
.set name='pensotch'
.hide
.p 60
.fields
 Npred
 Period
 NamePodr NameCex
 Npp Tabn Fio Dohod Procent SumSbor
 Itg1NameCex  Itg1Dohod  Itg1SumSbor
 Itg2NamePodr Itg2Dohod  Itg2SumSbor
              Itg3Dohod  Itg3SumSbor
.endfields

 ^
 ^
 ^
.{ vedmainpens
.if TekVedpens
 ^
.{ vedtekpens
 ^ ^ ^ ^ ^ ^
.}
 ^ ^ ^
.end
.if ItogVedpens
 ^ ^ ^
.end
.}
 ^ ^
.endform