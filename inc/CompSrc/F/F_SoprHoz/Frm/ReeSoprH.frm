//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.71 - Бухгалтерский контур
// Реестр хозяйственных операций
//------------------------------------------------------------------------------

#doc
Реестр хозяйственных операций
#end
.FORM ReeSoprH
.hide
.fields
  // заголовок
  SimvNDE     : string
  NameNDE     : string
  SimvValTar  : string
  NameValTar  : string
  SetOfDoc    : string
  Reg         : string

  // цикл по SoprHoz
  DateSH      : string
  NoDocSH     : string
  SoprHozNRec : comp
  NameDoc     : string
  SodrDoc     : string
  SumNDE      : double
  SumValTar   : double
  SumVal      : double
  SimvVal     : string
  OrgUNN      : string
  OrgName     : string
  DocOsn      : string
  User        : string
  TXO         : string

  // цикл по Oborot
  IsProv           : string
  NumProv          : string
  OborotNrec       : comp
  SchO             : string
  SubSchO          : string
  SchK             : string
  SubSchK          : string
  SumProv          : double
  VhProv           : string
  KolProv          : double
  EdIzm            : string
  DbKau            : string
  KrKau            : string
  DbPodr           : string
  KrPodr           : string
  SumValProv       : double
  SimvValProv      : string
  SumConvValProv   : double
  NameConvValProv  : string
  DateProv         : string
  SodrProv         : string

  // цикл по FpOborot
  IsFin        : string
  NumFin       : string
  FpOborotNrec : comp
  StBudFin     : string
  COFin        : string
  PeriodFin    : string
  KauFin       : string
  SumFin       : double
  SumValFin    : double
  NameValFin   : string
  DateFin      : string
  SodrFin      : string

  // подножие
  ItogSumNDE    : double
  ItogSumValTar : double
.endfields
SimvNDE     символ Н.Д.Е.            ^
NameNDE     наименование нац. валюты ^
SimvValTar  символ Б. валюты         ^
NameValTar  наименование Б. валюты   ^
SetOfDoc    для документов           ^
Reg         регистр учета            ^
.{CheckEnter SoprHoz

DateSH      дата SoprHoz             ^
NoDocSH     номер SoprHoz            ^
SoprHozNRec NRec SoprHoz-а           ^
NameDoc     документ                 ^
SodrDoc     содержание операции      ^
SumNDE      сумма в Н.Д.Е.           ^
SumValTar   сумма в Б. валюте        ^
SumVal      сумма в валюте           ^
SimvVal     валюта                   ^
OrgUNN      контрагент UNN           ^
OrgName     контрагент               ^
DocOsn      документ основание       ^
User        оператор                 ^
TXO         типовая операция         ^
.if OKOborot
IsProv     наличие проводок         ^
.{CheckEnter Oborot
  NumProv         Номер проводки                              ^
  OborotNrec      Nrec проводки                               ^
  SchO            Счет по дебету в проводке                   ^
  SubSchO         Субсчет счета по дебету                     ^
  SchK            Счет по кредиту в проводке                  ^
  SubSchK         Субсчет счета по кредиту                    ^
  SumProv         Сумма оборота                               ^
  VhProv          Входимость сумму платежа                    ^
  KolProv         Количество товара/услуг                     ^
  EdIzm           Единица измерения                           ^
  DbKau           Объект учета счета по дебету в проводке     ^
  KrKau           Объект учета счета по кредиту в проводке    ^
  DbPodr          Подразделение дебетового счета в проводке   ^
  KrPodr          Подразделение кредитового счета в проводке  ^
  SumValProv      Сумма оборота в валюте                      ^
  SimvValProv     Наименование валюты                         ^
  SumConvValProv  Сумма оборота в валюте конвертации          ^
  NameConvValProv Наименование валюты для конвертации         ^
  DateProv        Дата формирования проводки                  ^
  SodrProv        Содержание проводки                         ^
.}
.end
.if OKFPOborot
IsFin      наличие финпроводок     ^
.{CheckEnter FpOborot
  NumFin          Номер финпроводки                           ^
  FpOborotNrec    Nrec финпроводки                            ^
  StBudFin        Статья бюджета                              ^
  COFin           ЦО                                          ^
  PeriodFin       Период                                      ^
  KauFin          КАУ                                         ^
  SumFin          Сумма финоборота                            ^
  SumValFin       Сумма финоборота в валюте                   ^
  NameValFin      Наименование валюты                         ^
  DateFin         Дата формирования финпроводки               ^
  SodrFin         Содержание финпроводки                      ^
.}
.end
.}

Итого по реестру:
ItogSumNDE    сумма НДЕ ^
ItogSumValTar сумма БВ  ^
.endform
!==============================================================================
.linkform ReeSoprH_01 prototype is ReeSoprH
.NameInList '1. Реестр хозяйственных операций по контрагентам'
.fields
CommonFormHeader
SetOfDoc
Reg
SimvNDE
DateSH NoDocSH NameDoc OrgName SumNDE TXO
ItogSumNDE
.endfields
 Ш^
 Б                                                          Реестр хозяйственных операций
                                                          ^
 БРегистр учета: ^ Ш
 Щ──────────┬──────────────┬─────────────────────────────┬──────────────────────────────────────┬─────────────────┬──────────────────────────────────────────
   Дата   │    N док.    │           Документ          │          Организация-Контрагент      │  Сумма в @@@@@@@│        Хозяйственная операция
──────────┴──────────────┴─────────────────────────────┴──────────────────────────────────────┴─────────────────┴────────────────────────────────────────── Щ
 Ш.{CheckEnter SoprHoz
@@@@@@@@@@ @@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&.&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.if OKOborot
.{CheckEnter Oborot
.}
.end
.if OKFPOborot
.{CheckEnter FpOborot
.}
.end
.}
 Б───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
Итого по ведомости                                                                             &'&&&&&&&&&&&&.&& Щ
.endform
!==============================================================================
.linkform ReeSoprH_02 prototype is ReeSoprH
.NameInList '2. Реестр хозяйственных операций по документам-основаниям'
.fields
CommonFormHeader
SetOfDoc
Reg
SimvNDE
DateSH NoDocSH NameDoc DocOsn SumNDE TXO
ItogSumNDE
.endfields
 Ш^
 Б                                                          Реестр хозяйственных операций
                                                          ^
 БРегистр учета: ^ Ш
 Щ──────────┬──────────────┬─────────────────────────────┬──────────────────────────────────────┬─────────────────┬──────────────────────────────────────────
   Дата   │    N док.    │           Документ          │         Документ-Основание           │  Сумма в @@@@@@@│        Хозяйственная операция
──────────┴──────────────┴─────────────────────────────┴──────────────────────────────────────┴─────────────────┴────────────────────────────────────────── Щ
 Ш.{CheckEnter SoprHoz
@@@@@@@@@@ @@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&.&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.if OKOborot
.{CheckEnter Oborot
.}
.end
.if OKFPOborot
.{CheckEnter FPOborot
.}
.end
.}
 Б───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
Итого по ведомости                                                                             &'&&&&&&&&&&&&.&& Щ
.endform
!==============================================================================
.linkform ReeSoprH_03 prototype is ReeSoprH
.NameInList '3. Реестр хозяйственных операций (с проводками) N1'
.var
  ItogObor: double;
.endvar
.fields
CommonFormHeader
SetOfDoc
Reg
SimvNDE
DateSH NoDocSH NameDoc OrgName SumNDE TXO
IsProv
DateProv
NumProv  SchO SubSchO DbKau  SumProv VhProv SumValProv SimvValProv
         SchK SubSchK KrKau
         SodrProv
IsFin
NumFin  StBudFin SumFin SumValFin NameValFin
        COFin
        PeriodFin
        KauFin
        SodrFin
ItogObor
ItogSumNDE
.endfields
.Begin
  ItogObor := 0;;
end.
 Ш^
 Б                                                          Реестр хозяйственных операций
                                                          ^
 БРегистр учета: ^ Ш
 Щ──────────┬────────────────┬────────────────────────────┬─────────────────────────────────────┬─────────────────┬──────────────────────────────────────────
   Дата   │     N док.     │          Документ          │         Организация-Контрагент      │  Сумма в @@@@@@@│        Хозяйственная операция
──────────┴────────────────┴────────────────────────────┴─────────────────────────────────────┴─────────────────┴────────────────────────────────────────── Щ
 Ш.{CheckEnter SoprHoz
@@@@@@@@@@ @@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&.&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.if OKOborot
  ^
.{CheckEnter Oborot
.Begin
  ItogObor := ItogObor + SumProv;
end.
@@@@@@@@@@
  @@@ Д @@@ @@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&.&& ^  &'&&&&&&&&&&&&.&& @@@@
      К @@@ @@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
      Содержание: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.end
.if OKFpOborot
  ^
.{CheckEnter FpOborot
.Begin
  ItogObor := ItogObor + SumFin;
end.
  @@@ Статья: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&.&&    &'&&&&&&&&&&&&.&& @@@@
      ЦО: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
      Период: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
      КАУ: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
      Содержание: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.end
.}
 Б───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
Итого по проводкам                                                                             &'&&&&&&&&&&&&.&&
Итого по хозяйственным операциям                                                               &'&&&&&&&&&&&&.&& Щ
.endform
!==============================================================================
.linkform ReeSoprH_04 prototype is ReeSoprH
.NameInList '4. Реестр хозяйственных операций (с проводками) N2'
.var
  ItogObor: double;
.endvar
.fields
CommonFormHeader
SetOfDoc
Reg
SimvNDE
DateSH NoDocSH NameDoc OrgName SumNDE TXO
IsProv
DateProv
NumProv  SchO SubSchO DbKau  SchK SubSchK KrKau
         VhProv SumProv SumValProv SimvValProv SodrProv
IsFin
NumFin   StBudFin COFin PeriodFin KauFin
         SumFin SumValFin NameValFin SodrFin
ItogObor
ItogSumNDE
.endfields
.Begin
  ItogObor := 0;;
end.
 Ш^
 Б                                                          Реестр хозяйственных операций
                                                          ^
 БРегистр учета: ^ Ш
 Щ──────────┬──────────────┬─────────────────────────────┬─────────────────────────────────────────┬─────────────────┬───────────────────────────────────────
   Дата   │    N док.    │           Документ          │            Организация-Контрагент       │  Сумма в @@@@@@@│        Хозяйственная операция
──────────┴──────────────┴─────────────────────────────┴─────────────────────────────────────────┴─────────────────┴─────────────────────────────────────── Щ
 Ш.{CheckEnter SoprHoz
@@@@@@@@@@ @@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&.&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.if OKOborot
  ^
.{CheckEnter Oborot
.Begin
  ItogObor := ItogObor + SumProv;
end.
@@@@@@@@@@
  @@@ Д: ^ ^ ^/ К: ^ ^ ^
      На сумму:  ^ ^'/ В валюте: ^' ^/ Содержание: ^
.}
.end
.if OKFPOborot
  ^
.{CheckEnter FPOborot
.Begin
  ItogObor := ItogObor + SumFin;
end.
  @@@ Статья: ^ / ЦО: ^ / Период: ^ / КАУ: ^
      На сумму:  ^ / В валюте: ^' ^/ Содержание: ^
.}
.end
.}
 Б───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
Итого по проводкам                                                                                &'&&&&&&&&&&&&.&&
Итого по хозяйственным операциям                                                                  &'&&&&&&&&&&&&.&& Щ
.endform
