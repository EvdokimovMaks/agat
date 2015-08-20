//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Финансовый контур
// Расчет штрафных санкций
//------------------------------------------------------------------------------

#doc
Базовая форма для отчетов по штрафным санкциям.<br>
#end
.set name = 'SHTRAFF'
.set filler = ' '
.hide
.nameinlist 'Штрафы'
.fields
dat ValOtch SimvValOtch NDE SimvNDE
cStr1 cStr2 cStr3 cStr4 cStr5
norg
ndo VidDo DatKursValDo KursValDo SumDo SimvValDo NameValDo SumValOtchDo
bdDo edDo
nstep SumStep
bdStep edStep opldStep
NameShtraf Peny1 KolDn Peny2
PenyFix : Double KoefRefin : Double
Neust MaxShtraf
ndok datdok datdo sumdok sumdokBV
bdRef edRef rRef1 rRef2 rRef3 rRef4 sShtraf
SumPoNakl
DatDocSopr SumValDoSopr SumNDESopr SumValRepSopr SumValOperSopr NaznPlatSopr
SumTotValDoSopr SumTotValNDESopr
OplSvDog OplSvDogV OplPrDog OplPrDogV NeustDog NeustDogV PenyDog PenyDogV
RefinDog RefinDogV VsegoDog VsegoDogV
VystShtrfDog VystShtrfDogV
VzyskShtrfDog VzyskShtrfDogV
VsegoDolgDog VsegoDolgDogV
OplSvOrg OplSvOrgV OplPrOrg OplPrOrgV NeustOrg NeustOrgV PenyOrg PenyOrgV
RefinOrg RefinOrgV VsegoOrg VsegoOrgV
VystShtrfOrg VystShtrfOrgV
VzyskShtrfOrg VzyskShtrfOrgV
VsegoDolgOrg VsegoDolgOrgV TotOrg TotOrgBV

.endfields

dat          Отчет на дату г.       ^
ValOtch      Валюта отчетов         ^
SimvValOtch  Символ валюты отчетов  ^
NDE          НДЕ                    ^
SimvNDE      Символ НДЕ             ^
cStr1 cStr2 cStr3 cStr4 cStr5  - строки названий частей формы ^ ^ ^ ^ ^
.{ byOrgan  checkenter
norg         Организация            ^
.{ byDO  checkenter
ndo          Договор (имя)          ^
VidDo                               ^
.if IsValDo
DatKursValDo   Дата курса валюты  для вал.-руб. ДО    ^
KursValDo      Курс валюты для вал.-руб. ДО           ^
.end
SumDo                       ^
SimvValDo      Символ валюты                          ^
NameValDo                ^
SumValOtchDo   Сумма в валюте отчетов                 ^
bdDo         С какой даты^
edDo         По какую дату^
.{ byStep checkenter
nstep        Этап (имя)     ^
SumStep      Сумма по этапу  ^
bdStep       С какой даты^
edStep       По какую дату^
opldStep     Оплатить до^
.if StandShtraf
NameShtraf   Штраф               ^
Peny1        % пени 1            ^
KolDn        количество дней     ^
Peny2        % пени 2            ^
.else
             По ставке рефинансирования
PenyFix      Фиксированный процент ^
KoefRefin    Коэффициент к ставке рефинансирования ^
.end
Neust        Неустойка  ^
MaxShtraf    Макс. проц. штрафа ^
.{ byNakl  checkenter
.if IsDoc
ndok         № ттн или платежа ^
datdok       Дата документа ^
datdo        Оплатить (отгрузить) до ^
sumdok       Сумма по документу ^
sumdokBV     Сумма по документу в БВ ^
.end
.{ byRef checkenter
        Расчет штрафа по данной ставке
bdRef        Начало периода ставки рефинансирования ^
edRef        Конец периода ставки рефинансирования ^
rRef1        Количество дней ^
rRef2        Базовая сумма для расчета пени ^
rRef3        Значение пени ^
rRef4        Значение ставки рефинансирования ^
sShtraf      Сумма штрафа по данной ставке^
.}
.if NeedTotal
SumPoNakl     Всего штрафа по накладной ^
.end
.}
.}
.if OkSoprDoc
.{ bySoprDoc checkenter
DatDocSopr  ^
SumValDoSopr    ^
SumNDESopr      ^
SumValRepSopr   ^
SumValOperSopr  ^
NaznPlatSopr    ^
.}
SumTotValDoSopr ^
SumTotValNDESopr^
.else
 Нет сопроводительнхы документов
.end
OplSvDog       ^
OplSvDogV      ^
OplPrDog       ^
OplPrDogV      ^
NeustDog       ^
NeustDogV      ^
PenyDog        ^
PenyDogV       ^
RefinDog       ^
RefinDogV      ^
VsegoDog       ^
VsegoDogV      ^
VystShtrfDog   ^
VystShtrfDogV  ^
VzyskShtrfDog  ^
VzyskShtrfDogV ^
VsegoDolgDog   ^
VsegoDolgDogV  ^
.}
OplSvOrg       ^
OplSvOrgV      ^
OplPrOrg       ^
OplPrOrgV      ^
NeustOrg       ^
NeustOrgV      ^
PenyOrg        ^
PenyOrgV       ^
RefinOrg       ^
RefinOrgV      ^
VsegoOrg       ^
VsegoOrgV      ^
VystShtrfOrg   ^
VystShtrfOrgV  ^
VzyskShtrfOrg  ^
VzyskShtrfOrgV ^
VsegoDolgOrg   ^
VsegoDolgOrgV  ^
TotOrg         ^
TotOrgBV       ^
.}
.endform

//-------------------------------------------------------------------------

.linkform 'shtraf_01' prototype is 'SHTRAFF'
.nameinlist '1. Расчет штрафных санкций'
.fields
CommonFormHeader
dat
norg
ndo VidDo DatKursValDo KursValDo SumDo SimvValDo SumValOtchDo SimvValOtch
bdDo edDo
nstep SumStep SimvValDo
bdStep edStep cStr1 opldStep
NameShtraf Peny1 KolDn Peny2

if ((KoefRefin = 1) and (PenyFix = 0), 'согласно ставке рефинансирования',
  if (PenyFix > 0, 'Пеня '+ String( PenyFix), '')+
  if (KoefRefin = 0, '', if (PenyFix > 0, ' плюс ', '')+
    if (KoefRefin = 1, 'ставка рефинансирования',
      String( KoefRefin)+ ' ставки рефинансирования'))
  )

Neust MaxShtraf cStr2
ndok datdok datdo sumdok
bdRef edRef rRef1 rRef2 rRef3 rRef4 sShtraf
SumPoNakl cStr3
'валюте ДО: ' + SimvValDo 'НДЕ: ' + SimvNDE
DatDocSopr SumValDoSopr SumNDESopr SumValRepSopr SumValOperSopr NaznPlatSopr
SumTotValDoSopr SumTotValNDESopr cStr4
cStr5 '(в валюте ДО: ' + NameValDo + ')' '(в НДЕ: ' + SimvNDE + ')'
OplSvDog OplSvDogV OplPrDog OplPrDogV NeustDog NeustDogV PenyDog PenyDogV
RefinDog RefinDogV VsegoDog VsegoDogV
VystShtrfDog
VystShtrfDogV
VzyskShtrfDog
VzyskShtrfDogV
VsegoDolgDog VsegoDolgDogV
cStr5 '(в НДЕ: ' + SimvNDE + ')' '(в валюте: ' + SimvValOtch + ')'
OplSvOrg OplSvOrgV OplPrOrg OplPrOrgV NeustOrg NeustOrgV PenyOrg PenyOrgV
RefinOrg RefinOrgV VsegoOrg VsegoOrgV
VystShtrfOrg
VystShtrfOrgV
VzyskShtrfOrg
VzyskShtrfOrgV
VsegoDolgOrg VsegoDolgOrgV
.endfields
 Р^

                      Б   Расчет штрафных санкций по документам-основаниям,
                             находящимся в исполнении на @@@@@@@@@@ г. Б

.{ byOrgan  checkenter

  БКонтрагент Б : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{ byDO  checkenter
 ──────────────────────────────────────────────────────────────────────────────────────
  БОснование Б  : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@
.if IsValDo
  Дата курса валюты @@@@@@@@@@  Курс валюты &'#&&&&&&&&&&&&&&&&.&&
.end
  Сумма по ДО   : &'#&&&&&&&&&&&&&&&&&.&& @@@@@@   ( &'#&&&&&&&&&&&&&&&.&& @@@@@@ )
  Вступил в силу @@@@@@@@@@ г.   Действует по @@@@@@@@@@ г.
.{ byStep  checkenter
    ───────────────────────────────────────────────────────────────────────────────────
   Этап №  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Сумма по этапу &'#&&&&&&&&&&&&&&&&.&& @@@@@@
   Действует с @@@@@@@@@@ г. по @@@@@@@@@@ г.  ^ провести до @@@@@@@@@@ г.
.if StandShtraf
     Штраф @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Пеня &&.&&&& % через @@@@ дней &&.&& %
.else
     Штрафные санкции за просрочку @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.end
     Неустойка &'&&&&&.&& %   Максимальный процент штрафа &'&&&&&.&& %
                               дни       &&&&&&&&&&      %пени / рефин.
.{ byNakl  checkenter
.if IsDoc
.{?Internal; (ndok <>'SUM_OTGR_ZERO')
    @@@@@@@@@@@@@@@@ от @@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@ на сумму &'#&&&&&&&&&&&.&&
.}
.{?Internal; (ndok = 'SUM_OTGR_ZERO')
    БПо документу-основанию нет отгрузок/оказанных услуг Б
   ..........................................................
.}
.end
.{ byRef checkenter
     @@@@@@@@@@ - @@@@@@@@@@  &&&& x &'#&&&&&&&&.&& x &#&.&&&& &#&.&&&& &'#&&&&&&&&&&&.&&
.}
.if NeedTotal
                                                                БИтого: &'#&&&&&&&&&&&.&& Б
.end
.}
.}
.if OkSoprDoc
    ──────────┬──────────────────────────────────────────────────────────┬──────────────────────────────────────
              │     БСуммы @@@@@@@@@ по документу-основанию (ДО) в... Б      │
       БДата Б    ├─────────────────┬─────────────────┬──────────────────────┤           БСодержание операции Б
              │@~@@@@@@@@@@@@@@ │@~@@@@@@@@@@@@@@ │   валюте операции    │
    ──────────┴─────────────────┴─────────────────┴──────────────────────┴──────────────────────────────────────
.{ bySoprDoc checkenter
    @@@@@@@@@@ &'#&&&&&&&&&&&.&& &'#&&&&&&&&&&&.&& &'#&&&&&&&&&&&.&& @@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
               ───────────────────────────────────
     БВсего: Б     &'#&&&&&&&&&&&.&& &'#&&&&&&&&&&&.&&
.else

              БПо документу-основанию нет ^ Б
             ..........................................................
.end
 ──────────────────────────────────────────────────────────────────────────────────────
                                  БИТОГО ПО ДОГОВОРУ Б
     Б@@@@@@@@@             &&&&&&&&&&&&&&&&&&&&&  &&&&&&&&&&&&&&&&&&&&& Б
       своевременно     -  &'#&&&&&&&&&&&&&.&&    &'#&&&&&&&&&&&&&.&&
       просрочено       -  &'#&&&&&&&&&&&&&.&&    &'#&&&&&&&&&&&&&.&&
     БНачислено штрафов Б
       неустойки        -  &'#&&&&&&&&&&&&&.&&    &'#&&&&&&&&&&&&&.&&
       пеней            -  &'#&&&&&&&&&&&&&.&&    &'#&&&&&&&&&&&&&.&&
       рефинансирование -  &'#&&&&&&&&&&&&&.&&    &'#&&&&&&&&&&&&&.&&
       всего            -  &'#&&&&&&&&&&&&&.&&    &'#&&&&&&&&&&&&&.&&
     БВыставлено ранее    -  &'#&&&&&&&&&&&&&.&&    &'#&&&&&&&&&&&&&.&& Б
     БК взысканию штрафов -  &'#&&&&&&&&&&&&&.&&    &'#&&&&&&&&&&&&&.&& Б
     БЗадолженность с учетом начисленных штрафов Б
     Б   всего            -  &'#&&&&&&&&&&&&&.&&    &'#&&&&&&&&&&&&&.&& Б
 ──────────────────────────────────────────────────────────────────────────────────────
.}
                                БИТОГО ПО ОРГАНИЗАЦИИ Б
     Б@@@@@@@@@             &&&&&&&&&&&&&&&&&&&&&  &&&&&&&&&&&&&&&&&&&&& Б
       своевременно     -  &'#&&&&&&&&&&&&&.&&    &'#&&&&&&&&&&&&&.&&
       просрочено       -  &'#&&&&&&&&&&&&&.&&    &'#&&&&&&&&&&&&&.&&
     БНачислено штрафов Б
       неустойки        -  &'#&&&&&&&&&&&&&.&&    &'#&&&&&&&&&&&&&.&&
       пеней            -  &'#&&&&&&&&&&&&&.&&    &'#&&&&&&&&&&&&&.&&
       рефинансирование -  &'#&&&&&&&&&&&&&.&&    &'#&&&&&&&&&&&&&.&&
       всего            -  &'#&&&&&&&&&&&&&.&&    &'#&&&&&&&&&&&&&.&&
     БВыставлено ранее    -  &'#&&&&&&&&&&&&&.&&    &'#&&&&&&&&&&&&&.&& Б
     БК взысканию штрафов -  &'#&&&&&&&&&&&&&.&&    &'#&&&&&&&&&&&&&.&& Б
     БЗадолженность с учетом начисленных штрафов Б
      Б  всего            -  &'#&&&&&&&&&&&&&.&&    &'#&&&&&&&&&&&&&.&& Б
 ──────────────────────────────────────────────────────────────────────────────────────
.}
 Р
.endform

//-------------------------------------------------------------------------

.linkform 'shtraf_02' prototype is 'SHTRAFF'
.nameinlist '2. Реестр договоров со штрафными санкциями'
.fields
CommonFormHeader
dat
norg
ndo bdDo edDo SumDo SimvValDo SumValOtchDo SimvValOtch
ndok datdok datdo sumdok SimvValDo sumdokBV SimvValOtch
TotOrg SimvNDe
TotOrgBV SimvValOtch

.endfields
 Р^

                  БРеестр договоров, находящихся в исполнении на @@@@@@@@@@ г., Б
                  Б      по которым предусмотрены штрафные санкции Б



 ────────────────────────────────────────────────────────────────────────────────────────
                               БРеестр документов-оснований Б
 ────────────────────────────────────────────────────────────────────────────────────────
.{ byOrgan checkenter
   БКонтрагент Б : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{ byDo checkenter

      БОснование Б  : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     Вступил в силу @@@@@@@@@@ г.   Действует по @@@@@@@@@@ г.
.if IsValDo
.end
      БСумма по документу-основанию Б &'&&&&&&&&&&&&&&&&.&& @@@@@@
                                  &'&&&&&&&&&&&&&&&&.&& @@@@@@
.{ byStep checkenter
.if StandShtraf
.end
.{ byNakl checkenter
.if IsDoc
    @@@@@@@@@@@@@@@@@@@@@@@@@ от @@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@ на сумму &'&&&&&&&&&&.&& @@@@@@ (&'&&&&&&&&&&.&& @@@@@@)
.end
.{ byRef checkenter
.}
.if NeedTotal
.end
.}
.}
.if OkSoprDoc
.{ bySoprDoc checkenter
.}
.end
.}

   БИТОГО ПО КОНТРАГЕНТУ Б  -  &'&&&&&&&&&&&&&&&&.&& @@@@@@@@
                           &'&&&&&&&&&&&&&&&&.&& @@@@@@@@
                           ────────────────────
.}
 Р
.endform
