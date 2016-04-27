/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,2006 ชฎเฏฎเ ๆจ๏ €€’€                    บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        :  เ กฎโญ ๏ ฏซ โ                                           บ
 บ ฅเแจ๏        : 8.10                                                      บ
 บ  งญ ็ฅญจฅ    : ฎแใค เแโขฅญญ๋ฅ แโ โจแโจ็ฅแชจฅ ญ กซ๎คฅญจ๏ ง  ง เฏซ โฎฉ    บ
 บ โขฅโแโขฅญญ๋ฉ : ใค เฅข €ซฅชแฅฉ ซ คจฌจเฎขจ็                              บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
#doc
ฎแใค เแโขฅญญ๋ฅ แโ โจแโจ็ฅแชจฅ ญ กซ๎คฅญจ๏ ง  ง เฏซ โฎฉ
#end
.set name='T54form'
.hide
.fields
NameOrganization
Period
Tabn FIO Department
Month KodOpl Hour NachislSum KodUder UderSum
AllHours AllNachisl AllUder
TotalSum
.endfields
.{ ManCycle checkenter
^ ^ ^ ^ ^
.{ SumCycle checkenter
^ ^ ^ ^ ^ ^
.}
^ ^ ^ ^
.}
.endform