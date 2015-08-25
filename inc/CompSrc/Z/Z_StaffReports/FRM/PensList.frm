/*
  ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
  บ       ’   "T O P   S O F T",  €    "       € ’  €  ’"     บ
  บ           เฎฅชโ "€" (แ) 2003                                   บ
  บ      ฅเแจ๏ : 7.11                                                  บ
  บ       งเ กฎโ ซ:  €เโ ฌฎญฎข .‘.                                    บ
  บ       งญ ็ฅญจฅ:  ‘ฏจแฎช ญฅเ กฎโ ๎้จๅ ฏฅญแจฎญฅเฎข                   บ
  ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

*/
#doc
‘ฏจแฎช ญฅเ กฎโ ๎้จๅ ฏฅญแจฎญฅเฎข
#end
.form PensList
.hide
.fields
ReportDate
nameServ1
nameServ2
nameServ3
npp
FIO
BornDate
Serv1
Serv2
Serv3
sCity
sStreet
sPhNumber
sPasp
INN
NPFmember
sInshNumber
.endfields
 ^  ^ ^ ^
.{ PensList_persCycle checkEnter
        npp ^
        FIO ^
        BornDate ^
        Serv1 ^
        Serv2 ^
        Serv3 ^
        sCity ^
        sStreet  ^
        sPhNumber ^
        sPasp     ^
  INN ^
        NPFmember ^
        sInshNumber ^
.}
.endform
