/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Автотранспорт                                             ║
 ║ Версия        : 5.00                                                      ║
 ║ Назначение    : Расход ГСМ                                                ║
 ║ Ответственный : Лисица Наталья Михайловна                                 ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.set name='Ved_Gsm'
.hide
.p 60
.fields
 FiltName
 TipRas
 BegDate  EndDate
 NaimPred  InToplivo : word
 MarkaGsm  dat
 Month
 Podraz
 Marka Edin
 FIO Tabn
 Data  NomPutLst StatPL :double GarNom NomerGar ZaprDN :date  ZaprCh :time
 Probeg :double State City
 Vidt :double VidtKg :double VidtSt :double Sdant :double SdantKG :double
 TipGsm : word
 Ow :double OwKg :double
 BestToplivoNorm :double BestTopliviFakt :double
 BestToplivoNormKg :double BestTopliviFaktKg :double
 BestStoim : double
 RasToplivoNorm :double RasTopliviFakt :double
 RasToplivoNormKg :double RasTopliviFaktKg :double Stoim : double
 RasVidt :double RasVidtKg :double RasVidtSt :double
 EntRasToplivoNorm :double EntRasTopliviFakt :double
 EntRasToplivoNormKg :double EntRasTopliviFaktKg :double  EntStoim : double
 EntRasVidt :double EntRasVidtKg :double EntRasVidtSt :double
 Plus_Minus :double Plus_MinusKg :double Proc Owv :double OwvKg :double
 VnytriGar
 MotMaslo :double TransMaslo :double SpecMaslo  :double PlastSmazka  :double
 NamePutlst
 NameItg1
 NameItg2
 NameItg3
 NameItg4


.endfields

.{
^
.}

^ ^ ^ ^ ^ ^ ^
.{
^                  //МЕСЯЦ
.{
^                  //ПОДРАЗДЕЛЕНИЕ
.{
^ ^               //ТОПЛИВО
.{
^ ^
.{
.{
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^  ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
^
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

.linkform 'Ved_Gsm_01' prototype is 'Ved_Gsm'
.NameInList  'Расход ГСМ по территориям'
.group 'ГСМ по типу территории'
.var
PutItgProbeg  :double
PutItgFakt    :double
PutItgFaktKg  :double
PutItgStoim   :double

ItgProbeg  :double
ItgFakt    :double
ItgFaktKg  :double
ItgStoim   :double
OneItgProbeg  :double
OneItgFakt    :double
OneItgFaktKg  :double
OneItgStoim   :double
TwoItgProbeg  :double
TwoItgFakt    :double
TwoItgFaktKg  :double
TwoItgStoim   :double
AllItgProbeg  :double
AllItgFakt    :double
AllItgFaktKg    :double
AllItgStoim   :double
WolItgProbeg  :double
WolItgFakt    :double
WolItgFaktKg    :double
WolItgStoim   :double
.endvar
.fields
! CommonFormHeader
 FiltName
 TipRas
 BegDate  EndDate
 NaimPred MarkaGsm dat
 Month
 podraz
 Marka  Edin
 FIO Tabn
 Data  NomPutLst GarNom Probeg
 BestTopliviFakt BestTopliviFaktKg BestStoim
.endfields
.begin
WolItgProbeg := 0
WolItgFakt   := 0
WolItgFaktKg  := 0
WolItgStoim  := 0
end.

 И
.{
^
.}

                     Сведения о расходе горючего по типу территории
                     @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
      по путевым листам за период с  @@@@@@@@@@@@@@@@@@@@@ по   @@@@@@@@@@@@@@@@@@@@@
            @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                        @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                               @~@@@@@@@@@@@@@@@@@@
┌──────────┬─────────┬───────────────┬─────────────┬───────────────────────────────────────────┐
│  Дата    │  Номер  │  Государств.  │             │          Расход топлива                   │
│ выписки  │ путевого│     номер/    │  Пробег     │──────────────┬─────────────┬──────────────│
│  листа   │  листа  │   ФИО водит.  │             │  фактич.     │ фактич в кг │  стоимость   │
└──────────┴─────────┴───────────────┴─────────────┴──────────────┴─────────────┴──────────────┘
.{
.begin
AllItgProbeg := 0
AllItgFakt   := 0
AllItgFaktKg  := 0
AllItgStoim  := 0
end.
 Б^ Й
 И.{
.begin
ItgProbeg := 0
ItgFakt   := 0
ItgFaktKg    := 0
ItgStoim     := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Й
 И.{
.begin
TwoItgProbeg := 0
TwoItgFakt   := 0
TwoItgFaktKg    := 0
TwoItgStoim     := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Й
 И.{
.begin
OneItgProbeg := 0
OneItgFakt   := 0
OneItgFaktKg    := 0
OneItgStoim     := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@ Й
 И.{
.begin
PutItgProbeg := 0
PutItgFakt   := 0
PutItgFaktKg  := 0
PutItgStoim  := 0
end.
.{
.[h OverWrite Skip
.]h
.begin
PutItgProbeg := PutItgProbeg +  Probeg
PutItgFakt   := PutItgFakt   +  BestTopliviFakt
PutItgFaktKg := PutItgFaktKg +  BestTopliviFaktKg
PutItgStoim  := PutItgStoim  +  BestStoim
end.
 @@@@@@@@@@  @@@@@@@@ @@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&&
.[f OverWrite
.]f
.}
.begin
OneItgProbeg := PutItgProbeg +  OneItgProbeg
OneItgFakt   := PutItgFakt   +  OneItgFakt
OneItgFaktKg := PutItgFaktKg +  OneItgFaktKg
OneItgStoim  := PutItgStoim  +  OneItgStoim
end.
.Fields
 NamePutLst
PutItgProbeg PutItgFakt PutItgFaktKg PutItgStoim
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& Й
 И.}
.begin
TwoItgProbeg := TwoItgProbeg +  OneItgProbeg
TwoItgFakt   := TwoItgFakt   +  OneItgFakt
TwoItgFaktKg := TwoItgFaktKg +  OneItgFaktKg
TwoItgStoim  := TwoItgStoim  +  OneItgStoim
end.
.Fields
 NameItg1
OneItgProbeg OneItgFakt OneItgFaktKg OneItgStoim
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& Й
 И.}
.begin
ItgProbeg := TwoItgProbeg +  ItgProbeg
ItgFakt   := TwoItgFakt   +  ItgFakt
ItgFaktKg := TwoItgFaktKg +  ItgFaktKg
ItgStoim  := TwoItgStoim  +  ItgStoim
end.
.Fields
 NameItg2
TwoItgProbeg TwoItgFakt TwoItgFaktKg TwoItgStoim
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& Й
 И.}
.begin
AllItgProbeg    := AllItgProbeg +   ItgProbeg
AllItgFakt      := AllItgFakt   +   ItgFakt
AllItgFaktKg    := AllItgFaktKg +   ItgFaktKg
AllItgStoim     := AllItgStoim  +   ItgStoim
end.
.Fields
NameItg3
ItgProbeg  if(InToplivo=0,0,ItgFakt) ItgFaktKg ItgStoim
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@   &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& Й
 И.}
.begin
WolItgProbeg := WolItgProbeg +  AllItgProbeg
WolItgFakt   := WolItgFakt   +  AllItgFakt
WolItgFaktKg := WolItgFaktKg +  AllItgFaktKg
WolItgStoim  := WolItgStoim  +  AllItgStoim
end.
.Fields
NameItg4
AllItgProbeg  if(InToplivo=0,0,AllItgFakt) AllItgFaktKg AllItgStoim
.endfields
 Б Итого по предприятию за @@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& Й
 И.}
.Fields
WolItgProbeg  if(InToplivo=0,0,WolItgFakt) WolItgFaktKg WolItgStoim
.endfields
 Б Итого по предприятию                 &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& Й
.endform

.linkform 'Ved_Gsm_011' prototype is 'Ved_Gsm'
.NameInList  'Итоговая ГСМ по территории'
.group 'Расход ГСМ по типу территории'
.var
PutItgProbeg  :double
PutItgFakt    :double
PutItgFaktKg  :double
PutItgStoim   :double

ItgProbeg  :double
ItgFakt    :double
ItgFaktKg  :double
ItgStoim   :double
OneItgProbeg  :double
OneItgFakt    :double
OneItgFaktKg  :double
OneItgStoim   :double
TwoItgProbeg  :double
TwoItgFakt    :double
TwoItgFaktKg  :double
TwoItgStoim   :double
AllItgProbeg  :double
AllItgFakt    :double
AllItgFaktKg    :double
AllItgStoim   :double
WolItgProbeg  :double
WolItgFakt    :double
WolItgFaktKg    :double
WolItgStoim   :double
.endvar
.fields
! CommonFormHeader
 FiltName
 TipRas
 BegDate  EndDate
 NaimPred MarkaGsm dat
 Month
 podraz
 Marka  Edin
 FIO Tabn
.endfields
.begin
WolItgProbeg := 0
WolItgFakt   := 0
WolItgFaktKg  := 0
WolItgStoim  := 0
end.

 И
.{
^
.}

                     Сведения о расходе горючего по типу территории
                     @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    по путевым листам за период с  @@@@@@@@@@@@@@@@@@@@@ по   @@@@@@@@@@@@@@@@@@@@@
            @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                        @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                               @~@@@@@@@@@@@@@@@@@@
┌────────────────────────────────────┬─────────────┬───────────────────────────────────────────┐
│                                    │             │          Расход топлива                   │
│    Наименование                    │  Пробег     │──────────────┬─────────────┬──────────────│
│                                    │             │  фактич.     │ фактич в кг │  стоимость   │
└────────────────────────────────────┴─────────────┴──────────────┴─────────────┴──────────────┘
.{
.begin
AllItgProbeg := 0
AllItgFakt   := 0
AllItgFaktKg  := 0
AllItgStoim  := 0
end.
 Б^ Й
 И.{
.begin
ItgProbeg := 0
ItgFakt   := 0
ItgFaktKg    := 0
ItgStoim     := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Й
 И.{
.begin
TwoItgProbeg := 0
TwoItgFakt   := 0
TwoItgFaktKg    := 0
TwoItgStoim     := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Й
 И.{
.begin
OneItgProbeg := 0
OneItgFakt   := 0
OneItgFaktKg    := 0
OneItgStoim     := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@ Й
 И.{
.begin
PutItgProbeg := 0
PutItgFakt   := 0
PutItgFaktKg  := 0
PutItgStoim  := 0
end.
.{
.[h OverWrite Skip
.]h
.begin
PutItgProbeg := PutItgProbeg +  Probeg
PutItgFakt   := PutItgFakt   +  BestTopliviFakt
PutItgFaktKg := PutItgFaktKg +  BestTopliviFaktKg
PutItgStoim  := PutItgStoim  +  BestStoim
end.
.[f OverWrite
.]f
.}
.begin
OneItgProbeg := PutItgProbeg +  OneItgProbeg
OneItgFakt   := PutItgFakt   +  OneItgFakt
OneItgFaktKg := PutItgFaktKg +  OneItgFaktKg
OneItgStoim  := PutItgStoim  +  OneItgStoim
end.
.Fields
 NamePutLst
PutItgProbeg PutItgFakt PutItgFaktKg PutItgStoim
.endfields
 Путевой лист @@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& И
 И.}
.begin
TwoItgProbeg := TwoItgProbeg +  OneItgProbeg
TwoItgFakt   := TwoItgFakt   +  OneItgFakt
TwoItgFaktKg := TwoItgFaktKg +  OneItgFaktKg
TwoItgStoim  := TwoItgStoim  +  OneItgStoim
end.
.Fields
 NameItg1
OneItgProbeg OneItgFakt OneItgFaktKg OneItgStoim
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& Й
 И.}
.begin
ItgProbeg := TwoItgProbeg +  ItgProbeg
ItgFakt   := TwoItgFakt   +  ItgFakt
ItgFaktKg := TwoItgFaktKg +  ItgFaktKg
ItgStoim  := TwoItgStoim  +  ItgStoim
end.
.Fields
 NameItg2
TwoItgProbeg TwoItgFakt TwoItgFaktKg TwoItgStoim
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& Й
 И.}
.begin
AllItgProbeg    := AllItgProbeg +   ItgProbeg
AllItgFakt      := AllItgFakt   +   ItgFakt
AllItgFaktKg    := AllItgFaktKg +   ItgFaktKg
AllItgStoim     := AllItgStoim  +   ItgStoim
end.
.Fields
NameItg3
ItgProbeg  if(InToplivo=0,0,ItgFakt) ItgFaktKg ItgStoim
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@   &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& Й
 И.}
.begin
WolItgProbeg := WolItgProbeg +  AllItgProbeg
WolItgFakt   := WolItgFakt   +  AllItgFakt
WolItgFaktKg := WolItgFaktKg +  AllItgFaktKg
WolItgStoim  := WolItgStoim  +  AllItgStoim
end.
.Fields
NameItg4
AllItgProbeg  if(InToplivo=0,0,AllItgFakt) AllItgFaktKg AllItgStoim
.endfields
 Б Итого по предприятию за @@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& Й
 И.}
.Fields
WolItgProbeg  if(InToplivo=0,0,WolItgFakt) WolItgFaktKg WolItgStoim
.endfields
 Б Итого по предприятию                 &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& Й
.endform

.linkform 'Ved_Gsm_02' prototype is 'Ved_Gsm'
.NameInList  'Приход ГСМ '
.group 'Общие сведения по ГСМ'
.defo Landscape
.var
PutItgVidt      :double
PutItgVidtKg    :double
PutItgVidtSt    :double
PutEntItgVidt      :double
PutEntItgVidtKg    :double
PutEntItgVidtSt    :double

OneItgVidt      :double
OneItgVidtKg    :double
OneItgVidtSt    :double
OneEntItgVidt      :double
OneEntItgVidtKg    :double
OneEntItgVidtSt    :double

TwoItgVidt      :double
TwoItgVidtKg    :double
TwoItgVidtSt    :double
TwoEntItgVidt      :double
TwoEntItgVidtKg    :double
TwoEntItgVidtSt    :double

ItgVidt      :double
ItgVidtKg    :double
ItgVidtSt    :double
EntItgVidt      :double
EntItgVidtKg    :double
EntItgVidtSt    :double

AllItgVidt      :double
AllItgVidtKg    :double
AllItgVidtSt    :double
AllEntItgVidt      :double
AllEntItgVidtKg    :double
AllEntItgVidtSt    :double


WolItgVidt      :double
WolItgVidtKg    :double
WolItgVidtSt    :double
WolEntItgVidt      :double
WolEntItgVidtKg    :double
WolEntItgVidtSt    :double
.endvar
.fields
! CommonFormHeader
 FiltName
 TipRas
 BegDate  EndDate
 NaimPred MarkaGsm dat
 Month
 podraz
 Marka  Edin
 FIO Tabn
 Data  NomPutLst GarNom
 RasVidt RasVidtKg  RasVidtsT
 EntRasVidt EntRasVidtKg EntRasVidtsT
.endfields
.begin
WolItgVidt      := 0
WolItgVidtKg    := 0
WolItgVidtSt    := 0
WolEntItgVidt   := 0
WolEntItgVidtKg := 0
WolEntItgVidtSt := 0
end.

 Р
.{
^
.}

                         Сведения о приходе горючего
                  @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    по путевым листам за период с  @@@@@@@@@@@@@@@@@@@@@ по   @@@@@@@@@@@@@@@@@@@@@
                     @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                        @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                               @~@@@@@@@@@@@@@@@@@@
┌──────────┬─────────┬───────────────┬───────────────────────────────────────────┬───────────────────────────────────────────┐
│  Дата    │  Номер  │  Государств.  │         Приход топлива со склада          │        Приход топлива со стороны          │
│ выписки  │ путевого│     номер/    │─────────────┬──────────────┬──────────────│─────────────┬──────────────┬──────────────│
│  листа   │  листа  │   ФИО водит.  │ в учетных   │     в кг     │  стоимость   │  в учетных  │     в кг     │  стоимость   │
└──────────┴─────────┴───────────────┴─────────────┴──────────────┴──────────────┴─────────────┴──────────────┴──────────────┘
.{
.begin
AllItgVidt      := 0
AllItgVidtKg    := 0
AllItgVidtSt    := 0
AllEntItgVidt   := 0
AllEntItgVidtKg := 0
AllEntItgVidtSt := 0
end.
 Б  ^ С
 Р.{
.begin
ItgVidt      := 0
ItgVidtKg    := 0
ItgVidtSt    := 0
EntItgVidt   := 0
EntItgVidtKg := 0
EntItgVidtSt := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ С
 Р.{
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ С
 Р.begin
TwoItgVidt      := 0
TwoItgVidtKg    := 0
TwoItgVidtSt    := 0
TwoEntItgVidt   := 0
TwoEntItgVidtKg := 0
TwoEntItgVidtSt := 0
end.
.{
.begin
OneItgVidt      := 0
OneItgVidtKg    := 0
OneItgVidtSt    := 0
OneEntItgVidt   := 0
OneEntItgVidtKg := 0
OneEntItgVidtSt := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@ С
 Р.{
.begin
PutItgVidt      := 0
PutItgVidtKg    := 0
PutItgVidtSt    := 0
PutEntItgVidt   := 0
PutEntItgVidtKg := 0
PutEntItgVidtSt := 0
end.
.{
.[h OverWrite Skip
.]h
.begin
PutItgVidt      := PutItgVidt      +  RasVidt
PutItgVidtKg    := PutItgVidtKg    +  RasVidtKg
PutItgVidtSt    := PutItgVidtSt    +  RasVidtSt
PutEntItgVidt   := PutEntItgVidt   +  EntRasVidt
PutEntItgVidtKg := PutEntItgVidtKg +  EntRasVidtKg
PutEntItgVidtSt := PutEntItgVidtSt +  EntRasVidtSt
end.
 @@@@@@@@@@  @@@@@@@@ @@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&&
.[f OverWrite
.]f
.}
.begin
OneItgVidt      := PutItgVidt      +  OneItgVidt
OneItgVidtKg    := PutItgVidtKg    +  OneItgVidtKg
OneItgVidtSt    := PutItgVidtSt    +  OneItgVidtSt
OneEntItgVidt   := PutEntItgVidt   +  OneEntItgVidt
OneEntItgVidtKg := PutEntItgVidtKg +  OneEntItgVidtKg
OneEntItgVidtSt := PutEntItgVidtSt +  OneEntItgVidtSt
end.
.Fields
NamePutLst
PutItgVidt PutItgVidtKg PutItgVidtSt
PutEntItgVidt PutEntItgVidtKg PutEntItgVidtSt
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& С
 Р.}
.begin
TwoItgVidt      := TwoItgVidt      +  OneItgVidt
TwoItgVidtKg    := TwoItgVidtKg    +  OneItgVidtKg
TwoItgVidtSt    := TwoItgVidtSt    +  OneItgVidtSt
TwoEntItgVidt   := TwoEntItgVidt   +  OneEntItgVidt
TwoEntItgVidtKg := TwoEntItgVidtKg +  OneEntItgVidtKg
TwoEntItgVidtSt := TwoEntItgVidtSt +  OneEntItgVidtSt
end.
.Fields
NameItg1
OneItgVidt OneItgVidtKg OneItgVidtSt
OneEntItgVidt OneEntItgVidtKg OneEntItgVidtSt
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& С
 Р.}
.begin
ItgVidt      := TwoItgVidt      +  ItgVidt
ItgVidtKg    := TwoItgVidtKg    +  ItgVidtKg
ItgVidtSt    := TwoItgVidtSt    +  ItgVidtSt
EntItgVidt   := TwoEntItgVidt   +  EntItgVidt
EntItgVidtKg := TwoEntItgVidtKg +  EntItgVidtKg
EntItgVidtSt := TwoEntItgVidtSt +  EntItgVidtSt
end.
.Fields
NameItg2
TwoItgVidt TwoItgVidtKg TwoItgVidtSt
TwoEntItgVidt TwoEntItgVidtKg TwoEntItgVidtSt
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& С
 Р.}
.begin

AllItgVidt      := AllItgVidt      +  ItgVidt
AllItgVidtKg    := AllItgVidtKg    +  ItgVidtKg
AllItgVidtSt    := AllItgVidtSt    +  ItgVidtSt
AllEntItgVidt   := AllEntItgVidt   +  EntItgVidt
AllEntItgVidtKg := AllEntItgVidtKg +  EntItgVidtKg
AllEntItgVidtSt := AllEntItgVidtSt +  EntItgVidtSt
end.
.Fields
NameItg3
ItgVidt ItgVidtKg ItgVidtSt
EntItgVidt EntItgVidtKg EntItgVidtSt
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& С
 Р.}
.begin
WolItgVidt      := AllItgVidt      +  WolItgVidt
WolItgVidtKg    := AllItgVidtKg    +  WolItgVidtKg
WolItgVidtSt    := AllItgVidtSt    +  WolItgVidtSt
WolEntItgVidt   := AllEntItgVidt   +  WolEntItgVidt
WolEntItgVidtKg := AllEntItgVidtKg +  WolEntItgVidtKg
WolEntItgVidtSt := AllEntItgVidtSt +  WolEntItgVidtSt
end.
.Fields
NameItg4
AllItgVidt AllItgVidtKg AllItgVidtSt
AllEntItgVidt AllEntItgVidtKg AllEntItgVidtSt
.endfields
 Б Итого по предприятию за @@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& С
 Р.}
.Fields
WolItgVidt WolItgVidtKg WolItgVidtSt
WolEntItgVidt WolEntItgVidtKg WolEntItgVidtSt
.endfields
 Б Итого по предприятию                 &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& С
.endform

.linkform 'Ved_Gsm_021' prototype is 'Ved_Gsm'
.NameInList  'Итоговый приход ГСМ по путевым '
.group 'Общие сведения по ГСМ'
.defo Landscape
.var
PutItgVidt      :double
PutItgVidtKg    :double
PutItgVidtSt    :double
PutEntItgVidt      :double
PutEntItgVidtKg    :double
PutEntItgVidtSt    :double

OneItgVidt      :double
OneItgVidtKg    :double
OneItgVidtSt    :double
OneEntItgVidt      :double
OneEntItgVidtKg    :double
OneEntItgVidtSt    :double

TwoItgVidt      :double
TwoItgVidtKg    :double
TwoItgVidtSt    :double
TwoEntItgVidt      :double
TwoEntItgVidtKg    :double
TwoEntItgVidtSt    :double

ItgVidt      :double
ItgVidtKg    :double
ItgVidtSt    :double
EntItgVidt      :double
EntItgVidtKg    :double
EntItgVidtSt    :double

AllItgVidt      :double
AllItgVidtKg    :double
AllItgVidtSt    :double
AllEntItgVidt      :double
AllEntItgVidtKg    :double
AllEntItgVidtSt    :double


WolItgVidt      :double
WolItgVidtKg    :double
WolItgVidtSt    :double
WolEntItgVidt      :double
WolEntItgVidtKg    :double
WolEntItgVidtSt    :double
.endvar
.fields
! CommonFormHeader
 FiltName
 TipRas
 BegDate  EndDate
 NaimPred MarkaGsm dat
 Month
 podraz
 Marka  Edin
 FIO Tabn
.endfields
.begin
WolItgVidt      := 0
WolItgVidtKg    := 0
WolItgVidtSt    := 0
WolEntItgVidt   := 0
WolEntItgVidtKg := 0
WolEntItgVidtSt := 0
end.

 Р
.{
^
.}

                         Сведения о приходе горючего
                  @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    по путевым листам за период с  @@@@@@@@@@@@@@@@@@@@@ по   @@@@@@@@@@@@@@@@@@@@@
                     @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                        @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                               @~@@@@@@@@@@@@@@@@@@
┌────────────────────────────────────┬───────────────────────────────────────────┬───────────────────────────────────────────┐
│                                    │         Приход топлива со склада          │        Приход топлива со стороны          │
│       Наименование                 │─────────────┬──────────────┬──────────────│─────────────┬──────────────┬──────────────│
│                                    │ в учетных   │     в кг     │  стоимость   │  в учетных  │     в кг     │  стоимость   │
└────────────────────────────────────┴─────────────┴──────────────┴──────────────┴─────────────┴──────────────┴──────────────┘
.{
.begin
AllItgVidt      := 0
AllItgVidtKg    := 0
AllItgVidtSt    := 0
AllEntItgVidt   := 0
AllEntItgVidtKg := 0
AllEntItgVidtSt := 0
end.
 Б  ^ С
 Р.{
.begin
ItgVidt      := 0
ItgVidtKg    := 0
ItgVidtSt    := 0
EntItgVidt   := 0
EntItgVidtKg := 0
EntItgVidtSt := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ С
 Р.{
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ С
 Р.begin
TwoItgVidt      := 0
TwoItgVidtKg    := 0
TwoItgVidtSt    := 0
TwoEntItgVidt   := 0
TwoEntItgVidtKg := 0
TwoEntItgVidtSt := 0
end.
.{
.begin
OneItgVidt      := 0
OneItgVidtKg    := 0
OneItgVidtSt    := 0
OneEntItgVidt   := 0
OneEntItgVidtKg := 0
OneEntItgVidtSt := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@ С
 Р.{
.begin
PutItgVidt      := 0
PutItgVidtKg    := 0
PutItgVidtSt    := 0
PutEntItgVidt   := 0
PutEntItgVidtKg := 0
PutEntItgVidtSt := 0
end.
.{
.[h OverWrite Skip
.]h
.begin
PutItgVidt      := PutItgVidt      +  RasVidt
PutItgVidtKg    := PutItgVidtKg    +  RasVidtKg
PutItgVidtSt    := PutItgVidtSt    +  RasVidtSt
PutEntItgVidt   := PutEntItgVidt   +  EntRasVidt
PutEntItgVidtKg := PutEntItgVidtKg +  EntRasVidtKg
PutEntItgVidtSt := PutEntItgVidtSt +  EntRasVidtSt
end.
.[f OverWrite
.]f
.}
.begin
OneItgVidt      := PutItgVidt      +  OneItgVidt
OneItgVidtKg    := PutItgVidtKg    +  OneItgVidtKg
OneItgVidtSt    := PutItgVidtSt    +  OneItgVidtSt
OneEntItgVidt   := PutEntItgVidt   +  OneEntItgVidt
OneEntItgVidtKg := PutEntItgVidtKg +  OneEntItgVidtKg
OneEntItgVidtSt := PutEntItgVidtSt +  OneEntItgVidtSt
end.
.Fields
NamePutLst
PutItgVidt PutItgVidtKg PutItgVidtSt
PutEntItgVidt PutEntItgVidtKg PutEntItgVidtSt
.endfields
 Путевой лист @@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& Р
 Р.}
.begin
TwoItgVidt      := TwoItgVidt      +  OneItgVidt
TwoItgVidtKg    := TwoItgVidtKg    +  OneItgVidtKg
TwoItgVidtSt    := TwoItgVidtSt    +  OneItgVidtSt
TwoEntItgVidt   := TwoEntItgVidt   +  OneEntItgVidt
TwoEntItgVidtKg := TwoEntItgVidtKg +  OneEntItgVidtKg
TwoEntItgVidtSt := TwoEntItgVidtSt +  OneEntItgVidtSt
end.
.Fields
NameItg1
OneItgVidt OneItgVidtKg OneItgVidtSt
OneEntItgVidt OneEntItgVidtKg OneEntItgVidtSt
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& С
 Р.}
.begin
ItgVidt      := TwoItgVidt      +  ItgVidt
ItgVidtKg    := TwoItgVidtKg    +  ItgVidtKg
ItgVidtSt    := TwoItgVidtSt    +  ItgVidtSt
EntItgVidt   := TwoEntItgVidt   +  EntItgVidt
EntItgVidtKg := TwoEntItgVidtKg +  EntItgVidtKg
EntItgVidtSt := TwoEntItgVidtSt +  EntItgVidtSt
end.
.Fields
NameItg2
TwoItgVidt TwoItgVidtKg TwoItgVidtSt
TwoEntItgVidt TwoEntItgVidtKg TwoEntItgVidtSt
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& С
 Р.}
.begin

AllItgVidt      := AllItgVidt      +  ItgVidt
AllItgVidtKg    := AllItgVidtKg    +  ItgVidtKg
AllItgVidtSt    := AllItgVidtSt    +  ItgVidtSt
AllEntItgVidt   := AllEntItgVidt   +  EntItgVidt
AllEntItgVidtKg := AllEntItgVidtKg +  EntItgVidtKg
AllEntItgVidtSt := AllEntItgVidtSt +  EntItgVidtSt
end.
.Fields
NameItg3
ItgVidt ItgVidtKg ItgVidtSt
EntItgVidt EntItgVidtKg EntItgVidtSt
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& С
 Р.}
.begin
WolItgVidt      := AllItgVidt      +  WolItgVidt
WolItgVidtKg    := AllItgVidtKg    +  WolItgVidtKg
WolItgVidtSt    := AllItgVidtSt    +  WolItgVidtSt
WolEntItgVidt   := AllEntItgVidt   +  WolEntItgVidt
WolEntItgVidtKg := AllEntItgVidtKg +  WolEntItgVidtKg
WolEntItgVidtSt := AllEntItgVidtSt +  WolEntItgVidtSt
end.
.Fields
NameItg4
AllItgVidt AllItgVidtKg AllItgVidtSt
AllEntItgVidt AllEntItgVidtKg AllEntItgVidtSt
.endfields
 Б Итого по предприятию за @@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& С
 Р.}
.Fields
WolItgVidt WolItgVidtKg WolItgVidtSt
WolEntItgVidt WolEntItgVidtKg WolEntItgVidtSt
.endfields
 Б Итого по предприятию                 &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&&#&.&& С
.endform
.linkform 'Ved_Gsm_03' prototype is 'Ved_Gsm'
.NameInList 'Расход смазочных материалов'
.group 'Общие сведения по ГСМ'
.var
DefFakt  :double
PutItgProbeg  :double
PutItgFakt    :double
PutItgMotMaslo    :double
PutItgTransMaslo  :double
PutItgSpecMaslo   :double
PutItgPlastSmazka  :double

ItgProbeg  :double
ItgFakt    :double
ItgMotMaslo    :double
ItgTransMaslo  :double
ItgSpecMaslo   :double
ItgPlastSmazka  :double
OneItgProbeg  :double
OneItgFakt    :double
OneItgMotMaslo    :double
OneItgTransMaslo  :double
OneItgSpecMaslo   :double
OneItgPlastSmazka  :double
TwoItgProbeg  :double
TwoItgFakt    :double
TwoItgMotMaslo    :double
TwoItgTransMaslo  :double
TwoItgSpecMaslo   :double
TwoItgPlastSmazka  :double
AllItgProbeg  :double
AllItgFakt    :double
AllItgMotMaslo    :double
AllItgTransMaslo  :double
AllItgSpecMaslo   :double
AllItgPlastSmazka :double

WolItgProbeg  :double
WolItgFakt    :double
WolItgMotMaslo    :double
WolItgTransMaslo  :double
WolItgSpecMaslo   :double
WolItgPlastSmazka :double
.endvar
.fields
! CommonFormHeader
 FiltName
 TipRas
 BegDate  EndDate
 NaimPred MarkaGsm dat
 Month
 podraz
 Marka Edin
 FIO Tabn
 Data  NomPutLst GarNom Probeg
 DefFakt
 MotMaslo TransMaslo SpecMaslo PlastSmazka
.endfields
.begin
WolItgProbeg := 0
WolItgFakt   := 0
WolItgMotMaslo    := 0
WolItgTransMaslo  := 0
WolItgSpecMaslo   := 0
WolItgPlastSmazka := 0
end.

 Р
.{
^
.}

                       Сведения о расходе смазочных материалов
                     @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     по путевым листам за период с  @@@@@@@@@@@@@@@@@@@@@ по   @@@@@@@@@@@@@@@@@@@@@
                     @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                        @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                               @~@@@@@@@@@@@@@@@@@@
┌──────────┬─────────┬───────────────┬─────────────┬─────────────┬─────────────┬─────────────┬─────────────┬─────────────┐
│  Дата    │  Номер  │  Государств.  │             │  Расход     │  Расход     │  Расход     │  Расход     │  Расход     │
│ выписки  │ путевого│     номер/    │  Пробег     │топлива факт.│ моторных    │ трансмис.   │ специальных │ пластичной  │
│  листа   │  листа  │   ФИО водит.  │             │             │  масел      │  масел      │  масел      │  смазки     │
└──────────┴─────────┴───────────────┴─────────────┴─────────────┴─────────────┴─────────────┴─────────────┴─────────────┘
.{
 Б^ С
 Р.begin
AllItgProbeg := 0
AllItgFakt   := 0
AllItgMotMaslo    := 0
AllItgTransMaslo  := 0
AllItgSpecMaslo   := 0
AllItgPlastSmazka := 0
end.
.{
.begin
ItgProbeg := 0
ItgFakt   := 0
ItgMotMaslo    := 0
ItgTransMaslo  := 0
ItgSpecMaslo   := 0
ItgPlastSmazka := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ С
 Р.{
.begin
TwoItgProbeg := 0
TwoItgFakt   := 0
TwoItgMotMaslo    := 0
TwoItgTransMaslo  := 0
TwoItgSpecMaslo   := 0
TwoItgPlastSmazka := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ С
 Р.{
.begin
OneItgProbeg := 0
OneItgFakt   := 0
OneItgMotMaslo    := 0
OneItgTransMaslo  := 0
OneItgSpecMaslo   := 0
OneItgPlastSmazka := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@ С
 Р.{
.begin
PutItgProbeg := 0
PutItgFakt   := 0
PutItgMotMaslo    := 0
PutItgTransMaslo  := 0
PutItgSpecMaslo   := 0
PutItgPlastSmazka := 0
end.
.{
.[h OverWrite Skip
.]h
.begin
PutItgProbeg      := PutItgProbeg +  Probeg
PutItgFakt        := PutItgFakt   +  BestTopliviFakt
PutItgMotMaslo    := PutItgMotMaslo    + MotMaslo
PutItgTransMaslo  := PutItgTransMaslo  + TransMaslo
PutItgSpecMaslo   := PutItgSpecMaslo   + SpecMaslo
PutItgPlastSmazka := PutItgPlastSmazka + PlastSmazka
end.
 @@@@@@@@@@  @@@@@@@@ @@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&&
.[f OverWrite
.]f
.}
.begin
OneItgProbeg      := OneItgProbeg      +  PutItgProbeg
OneItgFakt        := OneItgFakt        +  PutItgFakt
OneItgMotMaslo    := OneItgMotMaslo    +  PutItgMotMaslo
OneItgTransMaslo  := OneItgTransMaslo  +  PutItgTransMaslo
OneItgSpecMaslo   := OneItgSpecMaslo   +  PutItgSpecMaslo
OneItgPlastSmazka := OneItgPlastSmazka +  PutItgPlastSmazka
end.
.Fields
 NamePutLst
PutItgProbeg PutItgFakt
PutItgMotMaslo PutItgTransMaslo PutItgSpecMaslo PutItgPlastSmazka
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& С
 Р.}
.begin
TwoItgProbeg      := OneItgProbeg      +  TwoItgProbeg
TwoItgFakt        := OneItgFakt        +  TwoItgFakt
TwoItgMotMaslo    := OneItgMotMaslo    +  TwoItgMotMaslo
TwoItgTransMaslo  := OneItgTransMaslo  +  TwoItgTransMaslo
TwoItgSpecMaslo   := OneItgSpecMaslo   +  TwoItgSpecMaslo
TwoItgPlastSmazka := OneItgPlastSmazka +  TwoItgPlastSmazka
end.
.Fields
 NameItg1
OneItgProbeg OneItgFakt
OneItgMotMaslo OneItgTransMaslo OneItgSpecMaslo OneItgPlastSmazka
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& С
 Р.}
.begin
ItgProbeg      := ItgProbeg      +  TwoItgProbeg
ItgFakt        := ItgFakt        +  TwoItgFakt
ItgMotMaslo    := ItgMotMaslo    +  TwoItgMotMaslo
ItgTransMaslo  := ItgTransMaslo  +  TwoItgTransMaslo
ItgSpecMaslo   := ItgSpecMaslo   +  TwoItgSpecMaslo
ItgPlastSmazka := ItgPlastSmazka +  TwoItgPlastSmazka
end.
.Fields
 NameItg2
TwoItgProbeg TwoItgFakt
TwoItgMotMaslo TwoItgTransMaslo TwoItgSpecMaslo TwoItgPlastSmazka
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& С
 Р.}
.begin
AllItgProbeg    := AllItgProbeg +   ItgProbeg
AllItgFakt      := AllItgFakt   +   ItgFakt
AllItgMotMaslo    := AllItgMotMaslo    + ItgMotMaslo
AllItgTransMaslo  := AllItgTransMaslo  + ItgTransMaslo
AllItgSpecMaslo   := AllItgSpecMaslo   + ItgSpecMaslo
AllItgPlastSmazka := AllItgPlastSmazka + ItgPlastSmazka
end.
.Fields
NameItg3
ItgProbeg if(InToplivo=0,0,ItgFakt)
ItgMotMaslo
ItgTransMaslo
ItgSpecMaslo
ItgPlastSmazka
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@   &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& С
 Р.}
.begin
WolItgProbeg      := WolItgProbeg      +  AllItgProbeg
WolItgFakt        := WolItgFakt        +  AllItgFakt
WolItgMotMaslo    := WolItgMotMaslo    +  AllItgMotMaslo
WolItgTransMaslo  := WolItgTransMaslo  +  AllItgTransMaslo
WolItgSpecMaslo   := WolItgSpecMaslo   +  AllItgSpecMaslo
WolItgPlastSmazka := WolItgPlastSmazka +  AllItgPlastSmazka
end.
.Fields
NameItg4
AllItgProbeg if(InToplivo=0,0,AllItgFakt)
AllItgMotMaslo AllItgTransMaslo AllItgSpecMaslo AllItgPlastSmazka
.endfields
 Б Итого по предприятию за @@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& С
 Р.}
.Fields
WolItgProbeg if(InToplivo=0,0,WolItgFakt)
WolItgMotMaslo WolItgTransMaslo WolItgSpecMaslo WolItgPlastSmazka
.endfields
 Б Итого по предприятию :               &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& С
.endform

.linkform 'Ved_Gsm_031' prototype is 'Ved_Gsm'
.NameInList 'Итоговый расход смазочных материалов'
.group 'Общие сведения по ГСМ'
.var
DefFakt  :double
PutItgProbeg  :double
PutItgFakt    :double
PutItgMotMaslo    :double
PutItgTransMaslo  :double
PutItgSpecMaslo   :double
PutItgPlastSmazka  :double

ItgProbeg  :double
ItgFakt    :double
ItgMotMaslo    :double
ItgTransMaslo  :double
ItgSpecMaslo   :double
ItgPlastSmazka  :double
OneItgProbeg  :double
OneItgFakt    :double
OneItgMotMaslo    :double
OneItgTransMaslo  :double
OneItgSpecMaslo   :double
OneItgPlastSmazka  :double
TwoItgProbeg  :double
TwoItgFakt    :double
TwoItgMotMaslo    :double
TwoItgTransMaslo  :double
TwoItgSpecMaslo   :double
TwoItgPlastSmazka  :double
AllItgProbeg  :double
AllItgFakt    :double
AllItgMotMaslo    :double
AllItgTransMaslo  :double
AllItgSpecMaslo   :double
AllItgPlastSmazka :double

WolItgProbeg  :double
WolItgFakt    :double
WolItgMotMaslo    :double
WolItgTransMaslo  :double
WolItgSpecMaslo   :double
WolItgPlastSmazka :double
.endvar
.fields
! CommonFormHeader
 FiltName
 TipRas
 BegDate  EndDate
 NaimPred MarkaGsm dat
 Month
 podraz
 Marka Edin
 FIO Tabn
.endfields
.begin
WolItgProbeg := 0
WolItgFakt   := 0
WolItgMotMaslo    := 0
WolItgTransMaslo  := 0
WolItgSpecMaslo   := 0
WolItgPlastSmazka := 0
end.

 Р
.{
^
.}

                       Сведения о расходе смазочных материалов
                     @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
       по путевым листам за период с  @@@@@@@@@@@@@@@@@@@@@ по   @@@@@@@@@@@@@@@@@@@@@
                     @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                        @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                               @~@@@@@@@@@@@@@@@@@@
┌────────────────────────────────────┬─────────────┬─────────────┬─────────────┬─────────────┬─────────────┬─────────────┐
│                                    │             │  Расход     │  Расход     │  Расход     │  Расход     │  Расход     │
│     Наименование                   │  Пробег     │топлива факт.│ моторных    │ трансмис.   │ специальных │ пластичной  │
│                                    │             │             │  масел      │  масел      │  масел      │  смазки     │
└────────────────────────────────────┴─────────────┴─────────────┴─────────────┴─────────────┴─────────────┴─────────────┘
.{
 Б^ С
 Р.begin
AllItgProbeg := 0
AllItgFakt   := 0
AllItgMotMaslo    := 0
AllItgTransMaslo  := 0
AllItgSpecMaslo   := 0
AllItgPlastSmazka := 0
end.
.{
.begin
ItgProbeg := 0
ItgFakt   := 0
ItgMotMaslo    := 0
ItgTransMaslo  := 0
ItgSpecMaslo   := 0
ItgPlastSmazka := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ С
 Р.{
.begin
TwoItgProbeg := 0
TwoItgFakt   := 0
TwoItgMotMaslo    := 0
TwoItgTransMaslo  := 0
TwoItgSpecMaslo   := 0
TwoItgPlastSmazka := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ С
 Р.{
.begin
OneItgProbeg := 0
OneItgFakt   := 0
OneItgMotMaslo    := 0
OneItgTransMaslo  := 0
OneItgSpecMaslo   := 0
OneItgPlastSmazka := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@ С
 Р.{
.begin
PutItgProbeg := 0
PutItgFakt   := 0
PutItgMotMaslo    := 0
PutItgTransMaslo  := 0
PutItgSpecMaslo   := 0
PutItgPlastSmazka := 0
end.
.{
.[h OverWrite Skip
.]h
.begin
PutItgProbeg      := PutItgProbeg +  Probeg
PutItgFakt        := PutItgFakt   +  BestTopliviFakt
PutItgMotMaslo    := PutItgMotMaslo    + MotMaslo
PutItgTransMaslo  := PutItgTransMaslo  + TransMaslo
PutItgSpecMaslo   := PutItgSpecMaslo   + SpecMaslo
PutItgPlastSmazka := PutItgPlastSmazka + PlastSmazka
end.
.[f OverWrite
.]f
.}
.begin
OneItgProbeg      := OneItgProbeg      +  PutItgProbeg
OneItgFakt        := OneItgFakt        +  PutItgFakt
OneItgMotMaslo    := OneItgMotMaslo    +  PutItgMotMaslo
OneItgTransMaslo  := OneItgTransMaslo  +  PutItgTransMaslo
OneItgSpecMaslo   := OneItgSpecMaslo   +  PutItgSpecMaslo
OneItgPlastSmazka := OneItgPlastSmazka +  PutItgPlastSmazka
end.
.Fields
 NamePutLst
PutItgProbeg PutItgFakt
PutItgMotMaslo PutItgTransMaslo PutItgSpecMaslo PutItgPlastSmazka
.endfields
 Путевой лист @@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& Р
 Р.}
.begin
TwoItgProbeg      := OneItgProbeg      +  TwoItgProbeg
TwoItgFakt        := OneItgFakt        +  TwoItgFakt
TwoItgMotMaslo    := OneItgMotMaslo    +  TwoItgMotMaslo
TwoItgTransMaslo  := OneItgTransMaslo  +  TwoItgTransMaslo
TwoItgSpecMaslo   := OneItgSpecMaslo   +  TwoItgSpecMaslo
TwoItgPlastSmazka := OneItgPlastSmazka +  TwoItgPlastSmazka
end.
.Fields
 NameItg1
OneItgProbeg OneItgFakt
OneItgMotMaslo OneItgTransMaslo OneItgSpecMaslo OneItgPlastSmazka
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& С
 Р.}
.begin
ItgProbeg      := ItgProbeg      +  TwoItgProbeg
ItgFakt        := ItgFakt        +  TwoItgFakt
ItgMotMaslo    := ItgMotMaslo    +  TwoItgMotMaslo
ItgTransMaslo  := ItgTransMaslo  +  TwoItgTransMaslo
ItgSpecMaslo   := ItgSpecMaslo   +  TwoItgSpecMaslo
ItgPlastSmazka := ItgPlastSmazka +  TwoItgPlastSmazka
end.
.Fields
 NameItg2
TwoItgProbeg TwoItgFakt
TwoItgMotMaslo TwoItgTransMaslo TwoItgSpecMaslo TwoItgPlastSmazka
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& С
 Р.}
.begin
AllItgProbeg    := AllItgProbeg +   ItgProbeg
AllItgFakt      := AllItgFakt   +   ItgFakt
AllItgMotMaslo    := AllItgMotMaslo    + ItgMotMaslo
AllItgTransMaslo  := AllItgTransMaslo  + ItgTransMaslo
AllItgSpecMaslo   := AllItgSpecMaslo   + ItgSpecMaslo
AllItgPlastSmazka := AllItgPlastSmazka + ItgPlastSmazka
end.
.Fields
NameItg3
ItgProbeg if(InToplivo=0,0,ItgFakt)
ItgMotMaslo
ItgTransMaslo
ItgSpecMaslo
ItgPlastSmazka
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@   &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& С
 Р.}
.begin
WolItgProbeg      := WolItgProbeg      +  AllItgProbeg
WolItgFakt        := WolItgFakt        +  AllItgFakt
WolItgMotMaslo    := WolItgMotMaslo    +  AllItgMotMaslo
WolItgTransMaslo  := WolItgTransMaslo  +  AllItgTransMaslo
WolItgSpecMaslo   := WolItgSpecMaslo   +  AllItgSpecMaslo
WolItgPlastSmazka := WolItgPlastSmazka +  AllItgPlastSmazka
end.
.Fields
NameItg4
AllItgProbeg if(InToplivo=0,0,AllItgFakt)
AllItgMotMaslo AllItgTransMaslo AllItgSpecMaslo AllItgPlastSmazka
.endfields
 Б Итого по предприятию за @@@@@@@@@@@@ &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& С
 Р.}
.Fields
WolItgProbeg if(InToplivo=0,0,WolItgFakt)
WolItgMotMaslo WolItgTransMaslo WolItgSpecMaslo WolItgPlastSmazka
.endfields
 Б Итого по предприятию :               &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& С
.endform
.linkform 'Ved_Gsm_04' prototype is 'Ved_Gsm'
.NameInList  'Детальная по путевым'
.group 'Общие сведения по ГСМ'
.defo Landscape
.var
FirstTime     :time
LastTime      :time
FirstDate     :date
LastDate      :date
FirstOw       :double
LastOw       :double
PutItgProbeg  :double
PutItgNorm    :double
PutItgFakt    :double
PutItgNormKg  :double
PutItgFaktKg  :double
PutItgStoim   :double
PutItgRaz     :double
PutItgProcRaz :double
PutItgVidtFakt    :double
PutItgVidtKg      :double
PutItgVidtSt      :double
PutItgSdant       :double

OneItgProbeg  :double
OneItgNorm    :double
OneItgFakt    :double
OneItgNormKg  :double
OneItgFaktKg  :double
OneItgStoim   :double
OneItgRaz     :double
OneItgProcRaz :double
OneItgVidtFakt    :double
OneItgVidtKg      :double
OneItgVidtSt      :double
OneItgSdant       :double

TwoItgProbeg  :double
TwoItgNorm    :double
TwoItgFakt    :double
TwoItgNormKg  :double
TwoItgFaktKg  :double
TwoItgStoim   :double
TwoItgRaz     :double
TwoItgProcRaz :double
TwoItGVidtFakt    :double
TwoItGVidtKg      :double
TwoItGVidtSt   :double
TwoItgSdant    :double

ItgProbeg  :double
ItgNorm    :double
ItgFakt    :double
ItgNormKg  :double
ItgFaktKg  :double
ItgStoim   :double
ItgRaz        :double
ItgProcRaz    :double
ItGVidtFakt    :double
ItGVidtKg      :double
ItGVidtSt   :double
ItgSdant    :double

AllItgProbeg  :double
AllItgNorm    :double
AllItgFakt    :double
AllItgNormKg    :double
AllItgFaktKg    :double
AllItgStoim   :double
AllItgRaz     :double
AllItgProcRaz :double
AllItGVidtFakt    :double
AllItGVidtKg      :double
AllItGVidtSt   :double
AllItgSdant    :double

WolItgProbeg  :double
WolItgNorm    :double
WolItgFakt    :double
WolItgNormKg    :double
WolItgFaktKg    :double
WolItgStoim   :double
WolItgRaz     :double
WolItgProcRaz :double
WolItGVidtFakt    :double
WolItGVidtKg      :double
WolItGVidtSt   :double
WolItgSdant    :double
.endvar
.fields
! CommonFormHeader
 FiltName
 TipRas
 BegDate  EndDate
 NaimPred MarkaGsm dat
 Month
 podraz
 Marka  Edin
 FIO Tabn
 Data  NomPutLst GarNom Probeg Ow Vidt VidtKg VidtSt
 BestToplivoNorm  BestTopliviFakt BestToplivoNormKg  BestTopliviFaktKg  BestStoim
 Plus_Minus Proc OwV Sdant
.endfields
.begin
WolItgProbeg := 0
WolItgNorm   := 0
WolItgFakt   := 0
WolItgNormKg := 0
WolItgFaktKg  := 0
WolItgStoim  := 0
WolItgRaz       := 0
WolItgProcRaz   := 0
WolItGVidtFakt    := 0
WolItGVidtKg      := 0
WolItGVidtSt   := 0
WolItgSdant    := 0
end.

 Ш
.{
^
.}

                              Сведения по горючему
                     @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
       по путевым листам за период с  @@@@@@@@@@@@@@@@@@@@@ по   @@@@@@@@@@@@@@@@@@@@@
            @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                        @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                               @~@@@@@@@@@@@@@@@@@@
┌──────────┬─────────┬───────────────┬─────────────┬─────────┬──────────────────────────────────────────┬────────────────────────────────────────────────────────────────────────┬─────────┬───────┬─────────┬─────────┐
│  Дата    │  Номер  │  Государств.  │             │ Остаток │         Выдача топлива                   │                       Расход топлива                                   │         │       │ Остаток │  Сдано  │
│ выписки  │ путевого│     номер/    │  Пробег     │   при   │─────────────┬──────────────┬─────────────│─────────────┬──────────────┬─────────────┬──────────────┬──────────────│ Разница │Разница│   при   │   при   │
│  листа   │  листа  │   ФИО водит.  │             │ выезде  │ в учетных   │    в  кг     │ стоимость   │     норма   │  фактич.     │ норма в кг  │ фактич. в кг │  стоимость   │         │  в %  │ возвращ.│ возвращ.│
└──────────┴─────────┴───────────────┴─────────────┴─────────┴─────────────┴──────────────┴─────────────┴─────────────┴──────────────┴─────────────┴──────────────┴──────────────┴─────────┴───────┴─────────┴─────────┘
.{
.begin
AllItgProbeg := 0
AllItgNorm   := 0
AllItgFakt   := 0
AllItgNormKg := 0
AllItgFaktKg  := 0
AllItgStoim  := 0
AllItgRaz       := 0
AllItgProcRaz   := 0
AllItGVidtFakt    := 0
AllItGVidtKg      := 0
AllItGVidtSt   := 0
AllItgSdant    := 0
end.
 Б^ Щ
 Ш.{
.begin
ItgProbeg    := 0
ItgNorm      := 0
ItgFakt      := 0
ItgNormKg    := 0
ItgFaktKg    := 0
ItgStoim     := 0
ItgRaz       := 0
ItgProcRaz   := 0
ItGVidtFakt    := 0
ItGVidtKg      := 0
ItGVidtSt   := 0
ItgSdant    := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Щ
 Ш.{
.begin
TwoItgProbeg    := 0
TwoItgNorm      := 0
TwoItgFakt      := 0
TwoItgNormKg    := 0
TwoItgFaktKg    := 0
TwoItgStoim     := 0
TwoItGVidtFakt    := 0
TwoItGVidtKg      := 0
TwoItGVidtSt   := 0
TwoItgSdant    := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Щ
 Ш.{
.begin
OneItgProbeg    := 0
OneItgNorm      := 0
OneItgFakt      := 0
OneItgNormKg    := 0
OneItgFaktKg    := 0
OneItgStoim     := 0
OneItGVidtFakt   := 0
OneItGVidtKg     := 0
OneItGVidtSt  := 0
OneItgSdant    := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@ Щ
 Ш.{
.begin
FirstOw       := ow
LastOw        := owV
FirstTime := ZaprCh
LastTime  := ZaprCh
FirstDate := ZaprDn
LastDate  := ZaprDn
PutItgProbeg    := 0
PutItgNorm      := 0
PutItgFakt      := 0
PutItgNormKg    := 0
PutItgFaktKg    := 0
PutItgStoim     := 0
PutItGVidtFakt   := 0
PutItGVidtKg     := 0
PutItGVidtSt  := 0
PutItgSdant    := 0
end.
.{
.[h OverWrite Skip
.]h
.begin
if _datetime1(LastDate,LastTime)  <  _datetime1(ZaprDn,ZaprCh) then
{
   LastTime      := ZaprCh
   LastDate      := ZaprDn
   LastOw        := owV
}
if _datetime1(FirstDate,FirstTime)  >  _datetime1(ZaprDn,ZaprCh) then
{
   FirstTime      := ZaprCh
   FirstDate      := ZaprDn
   FirstOw        := ow
}
PutItgProbeg   := PutItgProbeg +  Probeg
PutItgNorm     := PutItgNorm   +  BestToplivoNorm
PutItgFakt     := PutItgFakt   +  BestTopliviFakt
PutItgNormKg   := PutItgNormKg +  BestToplivoNormKg
PutItgFaktKg   := PutItgFaktKg +  BestTopliviFaktKg
PutItgStoim    := PutItgStoim  +  BestStoim
PutItGVidtFakt := PutItGVidtFakt  + Vidt
PutItGVidtKg   := PutItGVidtKg    + VidtKg
PutItGVidtSt   := PutItGVidtSt    + VidtSt
PutItgSdant    := PutItgSdant   + Sdant
end.
 @@@@@@@@@@  @@@@@@@@ @@@@@@@@@@@@@@@ &'&&&&&&#&.&& &'&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&&   &'&&&&&#&.&& &'&&#&.&& &'#&.&& &'&&#&.&& &'&&#&.&&
.[f OverWrite
.]f
.}
.begin
OneItgProbeg   := PutItgProbeg  +   OneItgProbeg
OneItgNorm     := PutItgNorm    +   OneItgNorm
OneItgFakt     := PutItgFakt    +   OneItgFakt
OneItgNormKg   := PutItgNormKg  +   OneItgNormKg
OneItgFaktKg   := PutItgFaktKg  +   OneItgFaktKg
OneItgStoim    := PutItgStoim   +   OneItgStoim
OneItGVidtFakt := PutItGVidtFakt +  OneItGVidtFakt
OneItGVidtKg   := PutItGVidtKg   +  OneItGVidtKg
OneItGVidtSt   := PutItGVidtSt   +  OneItGVidtSt
OneItGSdant    := PutItGSdant    +  OneItGSdant
PutItgRaz      := PutItgNorm- PutItgFakt
PutItgProcRaz  := 100*(PutItgFakt)/(PutItgNorm)
end.
.Fields
NamePutLst
PutItgProbeg Firstow PutItgVidTFakt PutItgVidtKg PutItgVidtSt
PutItgNorm PutItgFakt PutItgNormKg PutItgFaktKg PutItgStoim
PutItgRaz PutItgProcRaz LastOw PutItGSdant
.endfields
 Б Итого по путевому @@@@@@@@@@@@@@@@@  &'&&&&&&#&.&& &&'&&#.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&&   &'&&&&&#&.&& &'#&&&.&& &'#&.&& &'&&#&.&& &'&&#&.&& Щ
 Ш.}
.begin
TwoItgProbeg    := TwoItgProbeg  +   OneItgProbeg
TwoItgNorm      := TwoItgNorm    +   OneItgNorm
TwoItgFakt      := TwoItgFakt    +   OneItgFakt
TwoItgNormKg    := TwoItgNormKg  +   OneItgNormKg
TwoItgFaktKg    := TwoItgFaktKg  +   OneItgFaktKg
TwoItgStoim     := TwoItgStoim   +   OneItgStoim
TwoItGVidtFakt  := TwoItGVidtFakt  + OneItgVidtFakt
TwoItGVidtKg    := TwoItGVidtKg    + OneItgVidtKg
TwoItGVidtSt    := twoItGVidtSt    + OneItgVidtSt
TwoItGSdant     := TwoItGSdant    +  OneItGSdant
OneItgRaz       := OneItgNorm- OneItgFakt
OneItgProcRaz    := 100*(OneItgFakt)/(OneItgNorm)
end.
.Fields
 NameItg1
OneItgProbeg  if(InToplivo=0,0,OneItgVidTFakt) OneItgVidtKg OneItgVidtSt
if(InToplivo=0,0,OneItgNorm) if(InToplivo=0,0,OneItgFakt) OneItgNormKg OneItgFaktKg OneItgStoim
if(InToplivo=0,0,OneItgRaz) if(InToplivo=0,0,OneItgProcRaz) if(InToplivo=0,0,OneItGSdant)
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&&           &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&&   &'&&&&&#&.&& &&&'#&.&& &'#&.&&           &'&&#&.&& Щ
 Ш.}
.begin
ItgProbeg    := TwoItgProbeg  +   ItgProbeg
ItgNorm      := TwoItgNorm    +   ItgNorm
ItgFakt      := TwoItgFakt    +   ItgFakt
ItgNormKg    := TwoItgNormKg  +   ItgNormKg
ItgFaktKg    := TwoItgFaktKg  +   ItgFaktKg
ItgStoim     := TwoItgStoim   +   ItgStoim
ItGVidtFakt  := TwoItGVidtFakt  + ItgVidtFakt
ItGVidtKg    := TwoItGVidtKg    + ItgVidtKg
ItGVidtSt    := twoItGVidtSt    + ItgVidtSt
ItGSdant     := TwoItGSdant    +  ItGSdant
TwoItgRaz       := TwoItgNorm- TwoItgFakt
TwoItgProcRaz   := 100*(TwoItgFakt)/(TwoItgNorm)
end.
.Fields
 NameItg2
 TwoItgProbeg  if(InToplivo=0,0,TwoItgVidTFakt) TwoItgVidtKg TwoItgVidtSt
 if(InToplivo=0,0,TwoItgNorm)  if(InToplivo=0,0,TwoItgFakt) TwoItgNormKg TwoItgFaktKg TwoItgStoim
 if(InToplivo=0,0,TwoItgRaz)  if(InToplivo=0,0,TwoItgProcRaz)  if(InToplivo=0,0,TwoItGSdant)
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&&           &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&&   &'&&&&&#&.&& &&&'#&.&& &'#&.&&           &'&&#&.&& Щ
 Щ.}
.begin
AllItgProbeg    := AllItgProbeg +   ItgProbeg
AllItgNorm      := AllItgNorm   +   ItgNorm
AllItgFakt      := AllItgFakt   +   ItgFakt
AllItgNormKg    := AllItgNormKg  +   ItgNormKg
AllItgFaktKg    := AllItgFaktKg  +   ItgFaktKg
AllItgStoim     := AllItgStoim  +   ItgStoim
AllItGVidtFakt  := AllItGVidtFakt  + ItgVidtFakt
AllItGVidtKg    := AllItGVidtKg    + ItgVidtKg
AllItGVidtSt    := AllItGVidtSt    + ItgVidtSt
AllItGSdant     := AllItGSdant    +  ItGSdant
ItgRaz       := ItgNorm- ItgFakt
ItgProcRaz   := 100*(ItgFakt)/(ItgNorm)
end.
.Fields
 NameItg3
 ItgProbeg  if(InToplivo=0,0,ItgVidTFakt) ItgVidtKg ItgVidtSt
 if(InToplivo=0,0,ItgNorm)  if(InToplivo=0,0,ItgFakt) ItgNormKg ItgFaktKg ItgStoim
 if(InToplivo=0,0,ItgRaz)  if(InToplivo=0,0,ItgProcRaz)  if(InToplivo=0,0,ItGSdant)
.endfields
 Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&&           &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&&   &'&&&&&#&.&& &&&'#&.&& &'#&.&&           &'&&#&.&& Щ
 Ш.}
.begin
WolItgProbeg    := AllItgProbeg    + WolItgProbeg
WolItgNorm      := AllItgNorm      + WolItgNorm
WolItgFakt      := AllItgFakt      + WolItgFakt
WolItgNormKg    := AllItgNormKg    + WolItgNormKg
WolItgFaktKg    := AllItgFaktKg    + WolItgFaktKg
WolItgStoim     := AllItgStoim     + WolItgStoim
WolItGVidtFakt  := AllItGVidtFakt  + WolItgVidtFakt
WolItGVidtKg    := AllItGVidtKg    + WolItgVidtKg
WolItGVidtSt    := AllItGVidtSt    + WolItgVidtSt
WolItGSdant     := AllItGSdant    +  WolItGSdant
AllItgRaz       := AllItgNorm- AllItgFakt
AllItgProcRaz   := 100*(AllItgFakt)/(AllItgNorm)
end.
.Fields
NameItg4
 AllItgProbeg  if(InToplivo=0,0,AllItgVidTFakt) AllItgVidtKg AllItgVidtSt
 if(InToplivo=0,0,AllItgNorm)  if(InToplivo=0,0,AllItgFakt) AllItgNormKg AllItgFaktKg AllItgStoim
 if(InToplivo=0,0,AllItgRaz)  if(InToplivo=0,0,AllItgProcRaz)  if(InToplivo=0,0,AllItGSdant)
.endfields
 Б Итого по предп. за @@@@@@@@@@@@@@@@@ &'&&&&&&#&.&&           &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&&   &'&&&&&#&.&& &&&'#&.&& &'#&.&&           &'&&#&.&& Щ
 Щ.}
.begin
WolItgRaz       := WolItgNorm- WolItgFakt
WolItgProcRaz   := 100*(WolItgFakt)/(WolItgNorm)
end.
.Fields
 WolItgProbeg  if(InToplivo=0,0,WolItgVidTFakt) WolItgVidtKg WolItgVidtSt
 if(InToplivo=0,0,WolItgNorm) if(InToplivo=0,0,WolItgFakt) WolItgNormKg WolItgFaktKg WolItgStoim
 if(InToplivo=0,0,WolItgRaz)  if(InToplivo=0,0,WolItgProcRaz)  if(InToplivo=0,0,WolItGSdant)
.endfields
 Итого по предприятию                 &'&&&&&&#&.&&           &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&&   &'&&&&&#&.&& &&&'#&.&& &'#&.&&           &'&&#&.&& Щ
 Ш
.endform

.linkform 'Ved_Gsm_041' prototype is 'Ved_Gsm'
.NameInList  'Итоговая по путевым'
.group 'Общие сведения по ГСМ'
.defo Landscape
.var
FirstTime     :time
LastTime      :time
FirstDate     :date
LastDate      :date
FirstOw       :double
LastOw       :double
FirstTime1     :time
LastTime1      :time
FirstDate1     :date
LastDate1      :date
FirstOw1       :double
LastOw1       :double
FirstTime2     :time
LastTime2      :time
FirstDate2     :date
LastDate2      :date
FirstOw2       :double
LastOw2       :double
FirstTime3     :time
LastTime3      :time
FirstDate3     :date
LastDate3      :date
FirstOw3       :double
LastOw3       :double

PutItgProbeg  :double
PutItgNorm    :double
PutItgFakt    :double
PutItgNormKg  :double
PutItgFaktKg  :double
PutItgStoim   :double
PutItgRaz     :double
PutItgProcRaz :double
PutItgVidtFakt    :double
PutItgVidtKg      :double
PutItgVidtSt      :double
PutItgSdant       :double

OneItgProbeg  :double
OneItgNorm    :double
OneItgFakt    :double
OneItgNormKg  :double
OneItgFaktKg  :double
OneItgStoim   :double
OneItgRaz     :double
OneItgProcRaz :double
OneItgVidtFakt    :double
OneItgVidtKg      :double
OneItgVidtSt      :double
OneItgSdant       :double

TwoItgProbeg  :double
TwoItgNorm    :double
TwoItgFakt    :double
TwoItgNormKg  :double
TwoItgFaktKg  :double
TwoItgStoim   :double
TwoItgRaz     :double
TwoItgProcRaz :double
TwoItGVidtFakt    :double
TwoItGVidtKg      :double
TwoItGVidtSt   :double
TwoItgSdant    :double

ItgProbeg  :double
ItgNorm    :double
ItgFakt    :double
ItgNormKg  :double
ItgFaktKg  :double
ItgStoim   :double
ItgRaz        :double
ItgProcRaz    :double
ItGVidtFakt    :double
ItGVidtKg      :double
ItGVidtSt   :double
ItgSdant    :double

AllItgProbeg  :double
AllItgNorm    :double
AllItgFakt    :double
AllItgNormKg    :double
AllItgFaktKg    :double
AllItgStoim   :double
AllItgRaz     :double
AllItgProcRaz :double
AllItGVidtFakt    :double
AllItGVidtKg      :double
AllItGVidtSt   :double
AllItgSdant    :double

WolItgProbeg  :double
WolItgNorm    :double
WolItgFakt    :double
WolItgNormKg    :double
WolItgFaktKg    :double
WolItgStoim   :double
WolItgRaz     :double
WolItgProcRaz :double
WolItGVidtFakt    :double
WolItGVidtKg      :double
WolItGVidtSt   :double
WolItgSdant    :double
.endvar
.fields
! CommonFormHeader
 FiltName
 TipRas
 BegDate  EndDate
 NaimPred MarkaGsm dat
 Month
 podraz
 Marka  Edin
 FIO Tabn
.endfields
.begin
WolItgProbeg := 0
WolItgNorm   := 0
WolItgFakt   := 0
WolItgNormKg := 0
WolItgFaktKg  := 0
WolItgStoim  := 0
WolItgRaz       := 0
WolItgProcRaz   := 0
WolItGVidtFakt    := 0
WolItGVidtKg      := 0
WolItGVidtSt   := 0
WolItgSdant    := 0
end.

 Ш
.{
^
.}

                              Сведения по горючему
                     @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
       по путевым листам за период с  @@@@@@@@@@@@@@@@@@@@@ по   @@@@@@@@@@@@@@@@@@@@@
            @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                        @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                               @~@@@@@@@@@@@@@@@@@@
┌──────────┬─────────┬───────────────┬─────────────┬─────────┬──────────────────────────────────────────┬────────────────────────────────────────────────────────────────────────┬─────────┬───────┬─────────┬─────────┐
│  Дата    │  Номер  │  Государств.  │             │ Остаток │         Выдача топлива                   │                       Расход топлива                                   │         │       │ Остаток │  Сдано  │
│ выписки  │ путевого│     номер/    │  Пробег     │   при   │─────────────┬──────────────┬─────────────│─────────────┬──────────────┬─────────────┬──────────────┬──────────────│ Разница │Разница│   при   │   при   │
│  листа   │  листа  │   ФИО водит.  │             │ выезде  │ в учетных   │    в  кг     │ стоимость   │     норма   │  фактич.     │ норма в кг  │ фактич. в кг │  стоимость   │         │  в %  │ возвращ.│ возвращ.│
└──────────┴─────────┴───────────────┴─────────────┴─────────┴─────────────┴──────────────┴─────────────┴─────────────┴──────────────┴─────────────┴──────────────┴──────────────┴─────────┴───────┴─────────┴─────────┘
.{
.begin
AllItgProbeg := 0
AllItgNorm   := 0
AllItgFakt   := 0
AllItgNormKg := 0
AllItgFaktKg  := 0
AllItgStoim  := 0
AllItgRaz       := 0
AllItgProcRaz   := 0
AllItGVidtFakt    := 0
AllItGVidtKg      := 0
AllItGVidtSt   := 0
AllItgSdant    := 0
end.
 Б^ Щ
 Ш.{
.begin
ItgProbeg    := 0
ItgNorm      := 0
ItgFakt      := 0
ItgNormKg    := 0
ItgFaktKg    := 0
ItgStoim     := 0
ItgRaz       := 0
ItgProcRaz   := 0
ItGVidtFakt    := 0
ItGVidtKg      := 0
ItGVidtSt   := 0
ItgSdant    := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Щ
 Ш.{
.begin
TwoItgProbeg    := 0
TwoItgNorm      := 0
TwoItgFakt      := 0
TwoItgNormKg    := 0
TwoItgFaktKg    := 0
TwoItgStoim     := 0
TwoItGVidtFakt    := 0
TwoItGVidtKg      := 0
TwoItGVidtSt   := 0
TwoItgSdant    := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Щ
 Ш.{
.begin
OneItgProbeg    := 0
OneItgNorm      := 0
OneItgFakt      := 0
OneItgNormKg    := 0
OneItgFaktKg    := 0
OneItgStoim     := 0
OneItGVidtFakt   := 0
OneItGVidtKg     := 0
OneItGVidtSt  := 0
OneItgSdant    := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@ Щ
 Ш.{
.begin
FirstOw    := ow
LastOw     := owV
FirstTime  := ZaprCh
LastTime   := ZaprCh
FirstDate  := ZaprDn
LastDate   := ZaprDn

FirstOw1   := 0
LastOw1    := 0
FirstTime1 := 0
LastTime1  := 0
FirstDate1 := date(12,12,2100)
LastDate1  := date(12,12,1900)
FirstOw2   := 0
LastOw2    := 0
FirstTime2 := 0
LastTime2  := 0
FirstDate2 := date(12,12,2100)
LastDate2  := date(12,12,1900)
FirstOw3   := 0
LastOw3    := 0
FirstTime3 := 0
LastTime3  := 0
FirstDate3 := date(12,12,2100)
LastDate3  := date(12,12,1900)

PutItgProbeg    := 0
PutItgNorm      := 0
PutItgFakt      := 0
PutItgNormKg    := 0
PutItgFaktKg    := 0
PutItgStoim     := 0
PutItGVidtFakt   := 0
PutItGVidtKg     := 0
PutItGVidtSt  := 0
PutItgSdant    := 0
end.
.{
.[h OverWrite Skip
.]h
.begin

if TipGsm = 0
{
if _datetime1(LastDate1,LastTime1)  <  _datetime1(ZaprDn,ZaprCh) then
{
   LastTime1      := ZaprCh
   LastDate1      := ZaprDn
   LastOw1        := owV
}
if _datetime1(FirstDate1,FirstTime1)  >  _datetime1(ZaprDn,ZaprCh) then
{
   FirstTime1      := ZaprCh
   FirstDate1      := ZaprDn
   FirstOw1        := ow
}
}
if TipGsm = 1
{
if _datetime1(LastDate2,LastTime2)  <  _datetime1(ZaprDn,ZaprCh) then
{
   LastTime2      := ZaprCh
   LastDate2      := ZaprDn
   LastOw2        := owV
}
if _datetime1(FirstDate2,FirstTime2)  >  _datetime1(ZaprDn,ZaprCh) then
{
   FirstTime2      := ZaprCh
   FirstDate2      := ZaprDn
   FirstOw2        := ow
}
}
if TipGsm = 2
{
if _datetime1(LastDate3,LastTime3)  <  _datetime1(ZaprDn,ZaprCh) then
{
   LastTime3      := ZaprCh
   LastDate3      := ZaprDn
   LastOw3        := owV
}
if _datetime1(FirstDate3,FirstTime3)  >  _datetime1(ZaprDn,ZaprCh) then
{
   FirstTime3      := ZaprCh
   FirstDate3      := ZaprDn
   FirstOw3        := ow
}
}

PutItgProbeg   := PutItgProbeg +  Probeg
PutItgNorm     := PutItgNorm   +  BestToplivoNorm
PutItgFakt     := PutItgFakt   +  BestTopliviFakt
PutItgNormKg   := PutItgNormKg +  BestToplivoNormKg
PutItgFaktKg   := PutItgFaktKg +  BestTopliviFaktKg
PutItgStoim    := PutItgStoim  +  BestStoim
PutItGVidtFakt := PutItGVidtFakt  + Vidt
PutItGVidtKg   := PutItGVidtKg    + VidtKg
PutItGVidtSt   := PutItGVidtSt    + VidtSt
PutItgSdant    := PutItgSdant   + Sdant
end.
.[f OverWrite
.]f
.}
.begin
OneItgProbeg   := PutItgProbeg  +   OneItgProbeg
OneItgNorm     := PutItgNorm    +   OneItgNorm
OneItgFakt     := PutItgFakt    +   OneItgFakt
OneItgNormKg   := PutItgNormKg  +   OneItgNormKg
OneItgFaktKg   := PutItgFaktKg  +   OneItgFaktKg
OneItgStoim    := PutItgStoim   +   OneItgStoim
OneItGVidtFakt := PutItGVidtFakt +  OneItGVidtFakt
OneItGVidtKg   := PutItGVidtKg   +  OneItGVidtKg
OneItGVidtSt   := PutItGVidtSt   +  OneItGVidtSt
OneItGSdant    := PutItGSdant    +  OneItGSdant
PutItgRaz      := PutItgNorm- PutItgFakt
PutItgProcRaz  := 100*(PutItgFakt)/(PutItgNorm)
Firstow := Firstow1 + Firstow2 + Firstow3
LastOw := LastOw1 + LastOw2 + LastOw3
end.
.Fields
NamePutLst
PutItgProbeg Firstow PutItgVidTFakt PutItgVidtKg PutItgVidtSt
PutItgNorm PutItgFakt PutItgNormKg PutItgFaktKg PutItgStoim
PutItgRaz PutItgProcRaz LastOw PutItGSdant
.endfields
 Б Итого по путевому @@@@@@@@@@@@@@@@@  &'&&&&&&#&.&& &&'&&#.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&&   &'&&&&&#&.&& &'#&&&.&& &'#&.&& &'&&#&.&& &'&&#&.&&
 Ш.}
.begin
TwoItgProbeg    := TwoItgProbeg  +   OneItgProbeg
TwoItgNorm      := TwoItgNorm    +   OneItgNorm
TwoItgFakt      := TwoItgFakt    +   OneItgFakt
TwoItgNormKg    := TwoItgNormKg  +   OneItgNormKg
TwoItgFaktKg    := TwoItgFaktKg  +   OneItgFaktKg
TwoItgStoim     := TwoItgStoim   +   OneItgStoim
TwoItGVidtFakt  := TwoItGVidtFakt  + OneItgVidtFakt
TwoItGVidtKg    := TwoItGVidtKg    + OneItgVidtKg
TwoItGVidtSt    := twoItGVidtSt    + OneItgVidtSt
TwoItGSdant     := TwoItGSdant    +  OneItGSdant
OneItgRaz       := OneItgNorm- OneItgFakt
OneItgProcRaz    := 100*(OneItgFakt)/(OneItgNorm)
end.
.Fields
 NameItg1
OneItgProbeg  if(InToplivo=0,0,OneItgVidTFakt) OneItgVidtKg OneItgVidtSt
if(InToplivo=0,0,OneItgNorm) if(InToplivo=0,0,OneItgFakt) OneItgNormKg OneItgFaktKg OneItgStoim
if(InToplivo=0,0,OneItgRaz) if(InToplivo=0,0,OneItgProcRaz) if(InToplivo=0,0,OneItGSdant)
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&&           &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&&   &'&&&&&#&.&& &&&'#&.&& &'#&.&&           &'&&#&.&& Щ
 Ш.}
.begin
ItgProbeg    := TwoItgProbeg  +   ItgProbeg
ItgNorm      := TwoItgNorm    +   ItgNorm
ItgFakt      := TwoItgFakt    +   ItgFakt
ItgNormKg    := TwoItgNormKg  +   ItgNormKg
ItgFaktKg    := TwoItgFaktKg  +   ItgFaktKg
ItgStoim     := TwoItgStoim   +   ItgStoim
ItGVidtFakt  := TwoItGVidtFakt  + ItgVidtFakt
ItGVidtKg    := TwoItGVidtKg    + ItgVidtKg
ItGVidtSt    := twoItGVidtSt    + ItgVidtSt
ItGSdant     := TwoItGSdant    +  ItGSdant
TwoItgRaz       := TwoItgNorm- TwoItgFakt
TwoItgProcRaz   := 100*(TwoItgFakt)/(TwoItgNorm)
end.
.Fields
 NameItg2
 TwoItgProbeg  if(InToplivo=0,0,TwoItgVidTFakt) TwoItgVidtKg TwoItgVidtSt
 if(InToplivo=0,0,TwoItgNorm)  if(InToplivo=0,0,TwoItgFakt) TwoItgNormKg TwoItgFaktKg TwoItgStoim
 if(InToplivo=0,0,TwoItgRaz)  if(InToplivo=0,0,TwoItgProcRaz)  if(InToplivo=0,0,TwoItGSdant)
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&&           &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&&   &'&&&&&#&.&& &&&'#&.&& &'#&.&&           &'&&#&.&& Щ
 Щ.}
.begin
AllItgProbeg    := AllItgProbeg +   ItgProbeg
AllItgNorm      := AllItgNorm   +   ItgNorm
AllItgFakt      := AllItgFakt   +   ItgFakt
AllItgNormKg    := AllItgNormKg  +   ItgNormKg
AllItgFaktKg    := AllItgFaktKg  +   ItgFaktKg
AllItgStoim     := AllItgStoim  +   ItgStoim
AllItGVidtFakt  := AllItGVidtFakt  + ItgVidtFakt
AllItGVidtKg    := AllItGVidtKg    + ItgVidtKg
AllItGVidtSt    := AllItGVidtSt    + ItgVidtSt
AllItGSdant     := AllItGSdant    +  ItGSdant
ItgRaz       := ItgNorm- ItgFakt
ItgProcRaz   := 100*(ItgFakt)/(ItgNorm)
end.
.Fields
 NameItg3
 ItgProbeg  if(InToplivo=0,0,ItgVidTFakt) ItgVidtKg ItgVidtSt
 if(InToplivo=0,0,ItgNorm)  if(InToplivo=0,0,ItgFakt) ItgNormKg ItgFaktKg ItgStoim
 if(InToplivo=0,0,ItgRaz)  if(InToplivo=0,0,ItgProcRaz)  if(InToplivo=0,0,ItGSdant)
.endfields
 Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&#&.&&           &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&&   &'&&&&&#&.&& &&&'#&.&& &'#&.&&           &'&&#&.&& Щ
 Ш.}
.begin
WolItgProbeg    := AllItgProbeg    + WolItgProbeg
WolItgNorm      := AllItgNorm      + WolItgNorm
WolItgFakt      := AllItgFakt      + WolItgFakt
WolItgNormKg    := AllItgNormKg    + WolItgNormKg
WolItgFaktKg    := AllItgFaktKg    + WolItgFaktKg
WolItgStoim     := AllItgStoim     + WolItgStoim
WolItGVidtFakt  := AllItGVidtFakt  + WolItgVidtFakt
WolItGVidtKg    := AllItGVidtKg    + WolItgVidtKg
WolItGVidtSt    := AllItGVidtSt    + WolItgVidtSt
WolItGSdant     := AllItGSdant    +  WolItGSdant
AllItgRaz       := AllItgNorm- AllItgFakt
AllItgProcRaz   := 100*(AllItgFakt)/(AllItgNorm)
end.
.Fields
NameItg4
 AllItgProbeg  if(InToplivo=0,0,AllItgVidTFakt) AllItgVidtKg AllItgVidtSt
 if(InToplivo=0,0,AllItgNorm)  if(InToplivo=0,0,AllItgFakt) AllItgNormKg AllItgFaktKg AllItgStoim
 if(InToplivo=0,0,AllItgRaz)  if(InToplivo=0,0,AllItgProcRaz)  if(InToplivo=0,0,AllItGSdant)
.endfields
 Б Итого по предп. за @@@@@@@@@@@@@@@@@ &'&&&&&&#&.&&           &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&&   &'&&&&&#&.&& &&&'#&.&& &'#&.&&           &'&&#&.&& Щ
 Щ.}
.begin
WolItgRaz       := WolItgNorm- WolItgFakt
WolItgProcRaz   := 100*(WolItgFakt)/(WolItgNorm)
end.
.Fields
 WolItgProbeg  if(InToplivo=0,0,WolItgVidTFakt) WolItgVidtKg WolItgVidtSt
 if(InToplivo=0,0,WolItgNorm) if(InToplivo=0,0,WolItgFakt) WolItgNormKg WolItgFaktKg WolItgStoim
 if(InToplivo=0,0,WolItgRaz)  if(InToplivo=0,0,WolItgProcRaz)  if(InToplivo=0,0,WolItGSdant)
.endfields
 Итого по предприятию                 &'&&&&&&#&.&&           &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&&   &'&&&&&#&.&& &&&'#&.&& &'#&.&&           &'&&#&.&& Щ
 Ш
.endform

.linkform 'Ved_Gsm_05' prototype is 'Ved_Gsm'
.NameInList  'Заправки ГСМ по типу территории'
.group 'ГСМ по типу территории'
.group 'Общие сведения по ГСМ'
.var
PutItgFakt    :double
PutItgFaktKg  :double
PutItgStoim   :double

ItgFakt    :double
ItgFaktKg  :double
ItgStoim   :double
OneItgFakt    :double
OneItgFaktKg  :double
OneItgStoim   :double
TwoItgFakt    :double
TwoItgFaktKg  :double
TwoItgStoim   :double
AllItgFakt    :double
AllItgFaktKg    :double
AllItgStoim   :double
WolItgFakt    :double
WolItgFaktKg    :double
WolItgStoim   :double
.endvar
.fields
! CommonFormHeader
 FiltName
 TipRas
 BegDate  EndDate
 NaimPred MarkaGsm dat
 Month
 podraz
 Marka  Edin
 FIO Tabn
 Data  NomPutLst GarNom ZaprDn
 Vidt VidtKg VidtSt State City
.endfields
.begin
WolItgFakt   := 0
WolItgFaktKg  := 0
WolItgStoim  := 0
end.

 И
.{
^
.}

                          Сведения о заправке  ГСМ
                     @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
      по путевым листам за период с  @@@@@@@@@@@@@@@@@@@@@ по   @@@@@@@@@@@@@@@@@@@@@
            @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                        @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                               @~@@@@@@@@@@@@@@@@@@
┌──────────┬─────────┬───────────────┬──────────┬───────────────────────────────────────────┬─────────────────┬──────────────────┐
│  Дата    │  Номер  │  Государств.  │  Дата    │          Заправка топлива                 │                 │                  │
│ выписки  │ путевого│     номер/    │ заправки │──────────────┬─────────────┬──────────────│      Страна     │       Город      │
│  листа   │  листа  │   ФИО водит.  │          │  фактич.     │ фактич в кг │  стоимость   │                 │                  │
└──────────┴─────────┴───────────────┴──────────┴──────────────┴─────────────┴──────────────┴─────────────────┴──────────────────┘
.{
.begin
AllItgFakt   := 0
AllItgFaktKg  := 0
AllItgStoim  := 0
end.
 Б^ Й
 И.{
.begin
ItgFakt   := 0
ItgFaktKg    := 0
ItgStoim     := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Й
 И.{
.begin
TwoItgFakt   := 0
TwoItgFaktKg    := 0
TwoItgStoim     := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Й
 И.{
.begin
OneItgFakt   := 0
OneItgFaktKg    := 0
OneItgStoim     := 0
end.
 Б       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@ Й
 И.{
.begin
PutItgFakt   := 0
PutItgFaktKg  := 0
PutItgStoim  := 0
end.
.{
.[h OverWrite Skip
.]h
.begin
PutItgFakt   := PutItgFakt   +  Vidt
PutItgFaktKg := PutItgFaktKg +  VidtKg
PutItgStoim  := PutItgStoim  +  VidtSt
end.
 @@@@@@@@@@  @@@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@@@@ &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& @@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@
.[f OverWrite
.]f
.}
.begin
OneItgFakt   := PutItgFakt   +  OneItgFakt
OneItgFaktKg := PutItgFaktKg +  OneItgFaktKg
OneItgStoim  := PutItgStoim  +  OneItgStoim
end.
.Fields
 NamePutLst
 PutItgFakt PutItgFaktKg PutItgStoim
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@            &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& Й
 И.}
.begin
TwoItgFakt   := TwoItgFakt   +  OneItgFakt
TwoItgFaktKg := TwoItgFaktKg +  OneItgFaktKg
TwoItgStoim  := TwoItgStoim  +  OneItgStoim
end.
.Fields
 NameItg1
OneItgFakt OneItgFaktKg OneItgStoim
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@            &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& Й
 И.}
.begin
ItgFakt   := TwoItgFakt   +  ItgFakt
ItgFaktKg := TwoItgFaktKg +  ItgFaktKg
ItgStoim  := TwoItgStoim  +  ItgStoim
end.
.Fields
 NameItg2
 TwoItgFakt TwoItgFaktKg TwoItgStoim
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@            &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& Й
 И.}
.begin
AllItgFakt      := AllItgFakt   +   ItgFakt
AllItgFaktKg    := AllItgFaktKg +   ItgFaktKg
AllItgStoim     := AllItgStoim  +   ItgStoim
end.
.Fields
NameItg3
if(InToplivo=0,0,ItgFakt) ItgFaktKg ItgStoim
.endfields
 Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@              &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& Й
 И.}
.begin
WolItgFakt   := WolItgFakt   +  AllItgFakt
WolItgFaktKg := WolItgFaktKg +  AllItgFaktKg
WolItgStoim  := WolItgStoim  +  AllItgStoim
end.
.Fields
NameItg4
if(InToplivo=0,0,AllItgFakt) AllItgFaktKg AllItgStoim
.endfields
 Б Итого по предприятию за @@@@@@@@@@@@            &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& Й
 И.}
.Fields
if(InToplivo=0,0,WolItgFakt) WolItgFaktKg WolItgStoim
.endfields
 Б Итого по предприятию                            &'&&&&&&&#&.&& &'&&&&&&#&.&& &'&&&&&&&#&.&& Й
.endform