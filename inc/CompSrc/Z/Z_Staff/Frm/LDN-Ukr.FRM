/*
  ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
  บ       ’   "T O P   S O F T",  €    "       € ’  €  ’"     บ
  บ      เฎฅชโ    : €€’€  (แ) 2000                                บ
  บ      ‘จแโฅฌ    : “ฏเ ขซฅญจฅ ฏฅเแฎญ ซฎฌ                              บ
  บ      ฅเแจ๏    : 5.8                                                บ
  บ       งเ กฎโ ซ: €ญโฎญฎขจ็ €..     31/07/2002                      บ
  บ       งญ ็ฅญจฅ: “็ฅโญ ๏ ช เโฎ็ช  คฎชโฎเ  จ ช ญคจค โ  ญ ใช (“ชเ จญ )บ
  บ      งฌฅญฅญจ๏ :                                                    บ
  ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/

#doc
“็ฅโญ ๏ ช เโฎ็ช  คฎชโฎเ  จ ช ญคจค โ  ญ ใช (“ชเ จญ )
#end
.form LDN_Ukrain
.Hide
.Fields

OKPO
Komy_podaetsja
Ministerstvo
Koncern
KatOrg_Name
Adres_KatOrg

T1
T2
T3
T4
T5
T6
T7

date_Na

NumPP
NumCard
NumDipl
FIO
Prizin
Kod1
NewOrg
AdrNewOrg
Kod2

NumPP2
NumCard2
NumDipl2
FIO2
Izm2
NumStr2

Date_Sostavl    : Date

BossName
IspName

.endFields

OKPO                   ^
Komy_podaetsja         ^
Ministerstvo           ^
Koncern                ^
KatOrg_Name            ^
Adres_KatOrg           ^

T1                     ^
T2                     ^
T3                     ^
T4                     ^
T5                     ^
T6                     ^
T7                     ^

date_Na                ^
.{ LdnUkrCycle CheckEnter
NumPP                  ^
NumCard                ^
NumDipl                ^
FIO                    ^
Prizin                 ^
Kod1                   ^
NewOrg                 ^
AdrNewOrg              ^
Kod2                   ^
.}

.{ LdnUkrCycle2 CheckEnter
NumPP2                 ^
NumCard2               ^
NumDipl2               ^
FIO2                   ^
Izm2                   ^
NumStr2                ^
.}

Date_Sostavl           ^

BossName               ^
IspName                ^

.endform