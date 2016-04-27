/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Бухгалтерский Контур                                      ║
 ║ Версия        : 5.00                                                      ║
 ║ Назначение    : Реестры поручений на покупку валюты                       ║
 ║ Ответственный : Бартош Евгений Анатольевич                                ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
#doc
Реестры поручений на покупку/продажу валюты.
#end
.set name = 'ReeValutDoc'
.hide
.fields
 NameRee
 datebeg dateend ndesimv basevsimv
 NoDoc dDoc
 KatOrg_Name KatOrg_OKPO
 KatBank_Name  KatBank_MFO1  KatBank_MFO2  KatBank_Schet1  KatBank_Schet2
 KatBankV_Name KatBankV_MFO1 KatBankV_MFO2 KatBankV_Schet1 KatBankV_Schet2 ValSch
 FIO FIODate
 KlVal_SimvolV SumVal KursVal Summa
 UseTarget UseTarget1 UseTarget2 AllTarget
 UseBase dUse Komission NKontract dKontract
 SumKontr RubSch Chornal KatState_Name

 SchetK SubSchK KAUKS
 SchetO SubOsSch KAUOS
 SumOb SumObBv SumValut KlValO_SimvolV
 SumDocNDE
.endfields

 NameRee       заголовок      ^
 datebeg       начало периода ^
 dateend       конец периода ^
 ndesimv       символ НДЕ ^
 basevsimv     символ базовой валюты ^
.{
 NoDoc              номер документа ^
 dDoc               дата документа ^

 KatOrg_Name        Организация ^
 KatOrg_OKPO        ^

 KatBank_Name       Банк ^
 KatBank_MFO1       ^
 KatBank_MFO2       ^
 KatBank_Schet1     ^
 KatBank_Schet2     ^

 KatBankV_Name      Банк валютного счета ^
 KatBankV_MFO1      ^
 KatBankV_MFO2      ^
 KatBankV_Schet1    ^
 KatBankV_Schet2    ^
 ValSch             Валютный счет ^

 FIO                Фамилия Имя Отчество ^
 FIODate            его данные ^

 KlVal_SimvolV      валюта ^

 SumVal             сумма в валюте ^
 KursVal            макс. курс покупки валюты ^
 Summa              сумма покупки по курсу в рублях ^

 UseTarget          цель использ. валюты,назн. выдачи ^
 UseTarget1         цель использ. валюты,назн. выдачи ^
 UseTarget2         цель использ. валюты,назн. выдачи ^
 AllTarget          UseTarget + UseTarget1 + UseTarget2 ^

 UseBase            основание выдачи ^
 dUse               срок действия до ^
 Komission          процент комиссии ^
 NKontract          N контракта ^
 dKontract          дата контракта ^
 SumKontr           сумма контракта ^
 RubSch             счет для рублевого остатка ^
 Chornal            1 - наличными, 2 - чеками ... ^
 KatState_Name      страна пребывания ^

.{ CheckEnter
SchetK                ^
SubSchK               ^
KAUKS                 ^
SchetO                ^
SubOsSch              ^
KAUOS                 ^
SumOb                 ^
SumObBv               ^
SumValut              ^
KlValO_SimvolV        ^
.}
.}
SumDocNDE   сумма по документу в НДЕ ^

.endform

.linkform 'ReeValutDoc_01' prototype is 'ReeValutDoc'
.NameInList 'Реестр заявлений на покупку/продажу валюты'
.fields
 CommonFormHeader
 NameRee
 datebeg dateend
 ndesimv
 KatOrg_Name KatBank_Name
 KatBankV_Name
 NoDoc dDoc
 Summa SumVal KlVal_SimvolV KursVal
 FIO FIODate
 AllTarget
 SumDocNDE
.endfields

 ^
                      ^
                         с @@@@@@@@@@ г.  по @@@@@@@@@@ г.

───────┬──────────┬──────────────────┬──────────────────┬───┬────────────┬────────────────────────────┬───────────────────────────┬───────────────────────
 Номер │   Дата   │      Сумма       │      Сумма       │Вал│  По курсу  │     Уполномоченное лицо    │         Его данные        │       Назначение
 док-та│          │                  │      @~@@@@      │   │            │                            │                           │
───────┴──────────┴──────────────────┴──────────────────┴───┴────────────┴────────────────────────────┴───────────────────────────┴───────────────────────
.{
Организация : ^  Банк : ^
Банк валютного счета : ^
 @@@@@@ @@@@@@@@@@ &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& @@@ &'&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@
.{ CheckEnter
.}
.}
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
ИТОГО :            &'&&&&&&&&&&&&&&&&
.endform

.linkform 'ReeValutDoc_02' prototype is 'ReeValutDoc'
.NameInList 'Реестр заявлений на покупку/продажу валюты с проводками'
.fields
 CommonFormHeader
 NameRee
 datebeg dateend
 ndesimv ndesimv
 KatOrg_Name KatBank_Name
 KatBankV_Name
 NoDoc dDoc
 Summa SumVal KlVal_SimvolV KursVal
 FIO
 SchetO SubOsSch KAUOS
 SchetK SubSchK  KAUKS
 SumOb  SumValut KlValO_SimvolV
 SumDocNDE
.endfields

 ^
                      ^
                         с @@@@@@@@@@ г.  по @@@@@@@@@@ г.

───────┬──────────┬──────────────────┬──────────────────┬───┬────────────┬────────────────────────────┬────────────────────────────────────────┬────────────────────────────────────────┬──────────────────┬──────────────────┬───
 Номер │          │                  │      Сумма       │   │            │                            │              Д е б е т                 │              К р е д и т               │                  │      Сумма       │
 док-та│   Дата   │       Сумма      │      @~@@@@      │Вал│  По курсу  │     Уполномоченное лицо    ├────┬────┬──────────────────────────────┼────┬────┬──────────────────────────────┤       Сумма      │      @~@@@@      │Вал
       │          │                  │                  │   │            │                            │Счет│C/сч│              Кау             │Счет│С/сч│            Кау               │                  │                  │
───────┴──────────┴──────────────────┴──────────────────┴───┴────────────┴────────────────────────────┴────┴────┴──────────────────────────────┴────┴────┴──────────────────────────────┴──────────────────┴──────────────────┴───
.{
Организация : ^  Банк : ^
Банк валютного счета : ^
 @@@@@@ @@@@@@@@@@ &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& @@@ &'&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{ CheckEnter
                                                                                                       @@@  @@  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@  @@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& @@@
.}
.}
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
ИТОГО :            &'&&&&&&&&&&&&&&&&
.endform

