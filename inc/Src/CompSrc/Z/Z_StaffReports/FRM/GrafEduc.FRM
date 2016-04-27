/*
  ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
  บ       ’   "T O P   S O F T",  €    "       € ’  €  ’"     บ
  บ      เฎฅชโ    : €€’€  (แ) 2000                                บ
  บ      ‘จแโฅฌ    : “ฏเ ขซฅญจฅ ฏฅเแฎญ ซฎฌ                              บ
  บ      ฅเแจ๏    : 5.8                                                บ
  บ       งเ กฎโ ซ: €ญโฎญฎขจ็ €..     31/05/2001                      บ
  บ       งญ ็ฅญจฅ: ‘ฎแโ ข ฏฎ ฎกเ งฎข ญจ๏ฌ - ฃเ ไจชจ                   บ
  บ      งฌฅญฅญจ๏ :                                                    บ
  ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/

#doc
‘ฎแโ ข ฏฎ ฎกเ งฎข ญจ๏ฌ - ฃเ ไจชจ
#end
.form FirmGrafEduc
.Hide
.Fields
KatOrgName
num
LevelEduc_Name
countPerson
.endFields

^
.{GrafEduc_Cycle1  CheckEnter
num                       ^
LevelEduc_Name            ^
countPerson               ^
.}

.endform

!.linkform "เ ไจช" prototype is FirmGrafEduc
!.Fields
!LevelEduc_Name
!countPerson
!.endFields

!.{GrafEduc_Cycle1  CheckEnter

!      ^        ^
!.}

!.endform