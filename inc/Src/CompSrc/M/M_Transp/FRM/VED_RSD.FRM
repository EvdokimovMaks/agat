/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Автотранспорт                                             ║
 ║ Версия        : 5.70                                                      ║
 ║ Назначение    : Расходы водителей                                         ║
 ║ Ответственный : Лисица Наталья Михайловна                                 ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.set name='Ved_Rsd'
.hide
!.p 42
.fields
 BegDate  EndDate
 NaimPred VarKatOrg dat
 FiltAllOrg : word
 Mes
 KatOrg
 Podraz
 Fio
 NameRas  KolVo Tip_ras :string
 NationSimv ValSimv
 NationCena :double ValSimvCena
 NationStoim :double ValSimvStoim
 DatePay NomKvit NomerPut DatPL
 NameFio
 NamePodr
 NameOrg
 NameData
.endfields

^ ^ ^ ^ ^ ^
.{
^         !месяц
.{
^         !организация
.{
^         !подразделение
.{
^         !Фио
.{
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
^
.}
^
.}
^
.}
^
.}
.endform
.linkform 'Ved_Rsd_01' prototype is 'Ved_Rsd'
.NameInList 'Общие показатели'
.group 'Расходы по организациям'
!.p 42
.Defo Landscape
.var
PredNal,PredBN : double;
OrgNal, OrgBN : double;
PodrNal, PodrBN : double;
FioNal, FioBN : double;
DataNal, DataBN : double;
.endvar

.fields
 CommonFormHeader
 BegDate  EndDate
 NaimPred VarKatOrg dat
 Mes
 Katorg
 Podraz
 Fio
 NameRas Kolvo
 NationSimv NationCena NationStoim
 ValSimv ValSimvCena ValSimvStoim
 Tip_Ras DatePay NomKvit DatPL NomerPut
.endfields
.begin
PredNal   := 0
PredBn    := 0
end.

 Ш^
                                                                Ведомость  расходов
                                                   c   @@@@@@@@@@@@@@@@@@@@@  по  @@@@@@@@@@@@@@@@@@@@@
                                                               @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@

                                                @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                                                                                                                            @@@@@@@@@@@@@@@@@@@@
┌──────────────────────────────┬────────┬─────────────────────────────────────────────────────────────────────────────────┬────────┬───────────┬─────────────────┬───────────┬───────────┐
│                              │        │                              Сведения об оплате                                 │        │           │                 │           │           │
│ Наименование расходов        │ Кол-во │────────┬───────────────┬───────────────┬────────┬───────────────┬───────────────│   Тип  │   Дата    │      Номер      │    Дата   │  Номер    │
│                              │        │   НДЕ  │     Цена      │  Стоимость    │ Валюта │     Цена      │   Стоимость   │ оплаты │  оплаты   │   квитанции     │   оплаты  │ путевого  │
│                              │        │        │    в НДЕ      │    в НДЕ      │ оплаты │    в валюте   │    в валюте   │        │           │                 │           │           │
└──────────────────────────────┴────────┴────────┴───────────────┴───────────────┴────────┴───────────────┴───────────────┴────────┴───────────┴─────────────────┴───────────┴───────────┘
.{
.begin
DataNal   := 0
DataBn    := 0
end.
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Щ
 Ш.{
.begin
OrgNal   := 0
OrgBn    := 0
end.
 Б──────────────────────────────
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Щ
 Ш.{
.begin
PodrNal   := 0
PodrBn    := 0
end.
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Щ
 Ш.{
.begin
FioNal   := 0
FioBn    := 0
end.
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Щ
 Ш.{
.begin
if Tip_Ras = 'нал.'
FioNal   := FioNal + NationStoim
else
FioBn    := FioBn  + NationStoim
end.
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&#&.&& @~@@@@@@ &&&'&&#&&&&&.&& &&&'&&&&#&&&.&& @~@@@@@@ &&&'&#&&&&&&.&& &&&'&#&&&&&&.&& @@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@
.}
.Fields
 NameFio
 FioNal FioBn
.endfields
.begin
PodrNal   := FioNal + PodrNal
PodrBn    := FioBn  + PodrBn
end.
 БИтого по   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ нал. &&'&&&&&&&&&.&&   б/н  &&'&&&&&&&&&.&& Щ
 Ш.}
.Fields
 NamePodr
 PodrNal PodrBn
.endfields
.begin
OrgNal   := OrgNal + PodrNal
OrgBn    := OrgBn  + PodrBn
end.
 БИтого по   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ нал. &&'&&&&&&&&&.&&   б/н  &&'&&&&&&&&&.&& Щ
 Ш.}
.Fields
 NameOrg
 OrgNal
 OrgBn
.endfields
.begin
DataNal   := OrgNal + DataNal
DataBn    := OrgBn  + DataBn
end.
 БИтого по   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ нал. &&'&&&&&&&&&.&&   б/н  &&'&&&&&&&&&.&& Щ
 Ш.}
.Fields
 NameData
 DataNal DataBn
.endfields
.begin
PredNal   := PredNal + DataNal
PredBn    := PredBn  + DataBn
end.
 БИтого за   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ нал. &&'&&&&&&&&&.&&   б/н  &&'&&&&&&&&&.&& Щ
 Ш.}
.Fields
 PredNal PredBn
.endfields
 БИтого по  предприятию                                   нал. &&'&&&&&&&&&.&&   б/н  &&'&&&&&&&&&.&& Щ
.endform

.linkform 'Ved_Rsd_02' prototype is 'Ved_Rsd'
.NameInList 'Общие показатели'
.group 'Расходы в целом'
!.p 42
.Defo Landscape
.var
PredNal,PredBN : double;
OrgNal, OrgBN : double;
PodrNal, PodrBN : double;
FioNal, FioBN : double;
DataNal, DataBN : double;
.endvar

.fields
 CommonFormHeader
 BegDate  EndDate
 NaimPred VarKatOrg dat
 Mes
 Podraz
 Fio
 NameRas Kolvo
 NationSimv NationCena NationStoim
 ValSimv ValSimvCena ValSimvStoim
 Tip_Ras DatePay NomKvit DatPL NomerPut
.endfields
.begin
PredNal   := 0
PredBn    := 0
end.

 Ш^
                                                                Ведомость  расходов
                                                   c   @@@@@@@@@@@@@@@@@@@@@  по  @@@@@@@@@@@@@@@@@@@@@
                                                               @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@

                                                @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                                                                                                                            @@@@@@@@@@@@@@@@@@@@
┌──────────────────────────────┬────────┬─────────────────────────────────────────────────────────────────────────────────┬────────┬───────────┬─────────────────┬───────────┬───────────┐
│                              │        │                              Сведения об оплате                                 │        │           │                 │           │           │
│ Наименование расходов        │ Кол-во │────────┬───────────────┬───────────────┬────────┬───────────────┬───────────────│   Тип  │   Дата    │      Номер      │   Дата    │  Номер    │
│                              │        │   НДЕ  │     Цена      │  Стоимость    │ Валюта │     Цена      │   Стоимость   │ оплаты │  оплаты   │   квитанции     │  выписки  │ путевого  │
│                              │        │        │    в НДЕ      │    в НДЕ      │ оплаты │    в валюте   │    в валюте   │        │           │                 │    ПЛ     │           │
└──────────────────────────────┴────────┴────────┴───────────────┴───────────────┴────────┴───────────────┴───────────────┴────────┴───────────┴─────────────────┴───────────┴───────────┘
.{
.begin
DataNal   := 0
DataBn    := 0
end.
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Щ
 Ш.{
.begin
OrgNal   := 0
OrgBn    := 0
end.
.{
.begin
PodrNal   := 0
PodrBn    := 0
end.
 Б──────────────────────────────
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Щ
 Ш.{
.begin
FioNal   := 0
FioBn    := 0
end.
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Щ
 Ш.{
.begin
if Tip_Ras = 'нал.'
FioNal   := FioNal + NationStoim
else
FioBn    := FioBn  + NationStoim
end.
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&#&.&& @~@@@@@@ &&&'&&#&&&&&.&& &&&'&&&&#&&&.&& @~@@@@@@ &&&'&#&&&&&&.&& &&&'&#&&&&&&.&& @@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@
.}
.Fields
 NameFio
 FioNal FioBn
.endfields
.begin
PodrNal   := FioNal + PodrNal
PodrBn    := FioBn  + PodrBn
end.
 БИтого по   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ нал. &&'&&&&&&&&&.&&   б/н  &&'&&&&&&&&&.&& Щ
 Ш.}
.Fields
 NamePodr
 PodrNal PodrBn
.endfields
.begin
OrgNal   := OrgNal + PodrNal
OrgBn    := OrgBn  + PodrBn
end.
 БИтого по   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ нал. &&'&&&&&&&&&.&&   б/н  &&'&&&&&&&&&.&& Щ
 Ш.}
.begin
DataNal   := OrgNal + DataNal
DataBn    := OrgBn  + DataBn
end.
.}
.Fields
 NameData
 DataNal DataBn
.endfields
.begin
PredNal   := PredNal + DataNal
PredBn    := PredBn  + DataBn
end.
 БИтого за   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ нал. &&'&&&&&&&&&.&&   б/н  &&'&&&&&&&&&.&& Щ
 Ш.}
.Fields
 PredNal PredBn
.endfields
 БИтого по  предприятию                                   нал. &&'&&&&&&&&&.&&   б/н  &&'&&&&&&&&&.&& Щ
.endform