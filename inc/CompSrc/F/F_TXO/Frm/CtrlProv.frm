//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Бухгалтерский контур
// Протокол контроля проводок
//******************************************************************************

#doc
Протокол контроля проводок (скрытая базовая форма)
#end
.FORM CtrlProv
.hide
.fields
SimvNDE      : string
NameNDE      : string
SimvValTar   : string
NameValTar   : string

NameTiDk     : string

NameHozOp    : string
NameTiDkHoz  : string

NameGrDescr  : string

CurDescr     : string

DataHozOpBeg : string
DataHozOpEnd : string

DataProvBeg  : string
DataProvEnd  : string

Reg          : string
NrecSH       : comp
DateSH       : date
NoDocSH      : string
NameDoc      : string
SodrDoc      : string
SumNDE       : string
SumValTar    : string
SumVal       : string
SimvVal      : string
OrgUNN       : string
User         : string
cHozOp       : comp
TXO          : string
NameReg      : string
cHozOpReg    : comp
TXOReg       : string

OborNrec     : comp
NumProv      : string
SchO         : string
SubSchO      : string
SchK         : string
SubSchK      : string
SumProv      : string
VhProv       : string
KolProv      : string
EdIzm        : string
DbKau        : string
KrKau        : string
DbPodr       : string
KrPodr       : string
SumValProv   : string
SimvValProv  : string
SumConvValProv  : string
NameConvValProv : string
DateProv        : string
SodrProv        : string

NumProvNew      : string
SchONew         : string
SubSchONew      : string
SchKNew         : string
SubSchKNew      : string
SumProvNew      : string
VhProvNew       : string
KolProvNew      : string
EdIzmNew        : string
DbKauNew        : string
KrKauNew        : string
DbPodrNew       : string
KrPodrNew       : string
SumValProvNew   : string
SimvValProvNew     : string
SumConvValProvNew  : string
NameConvValProvNew : string
DateProvNew        : string
SodrProvNew        : string
IsFin              : string
NumFin             : string
StBudFin           : string
COFin              : string
PeriodFin          : string
KauFin             : string
SumFin             : string
SumValFin          : string
NameValFin         : string
DateFin            : string
SodrFin            : string
.endfields
#include ExcelFormat.var
.var
   sFormat : string;
.endvar
.Begin
   sFormat := '\2p[|-]3666`666`666`666`666`667.88';
end.

SimvNDE    символ Н.Д.Е.            ^
NameNDE    наименование нац. валюты ^
SimvValTar символ Б. валюты         ^
NameValTar наименование Б. валюты   ^

.if IsFiltrHead
.if IsHozDoc
NameTiDk   тип документа            ^
.end

.if IsHozOpHead
.{ CheckEnter IsHozOpN
   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ^
.}
.end

.if IsGrDescrHead
.{ CheckEnter IsGrDescrN
    ^
.}
.end

.if IsCurDescr
CurDescr   дескриптор пользователя  ^
.end

.if IsDataHozOp
DataHozOpBeg   Дата хозоперации с   ^
DataHozOpEnd   Дата хозоперации по  ^
.end

.if IsDataProv
DataProvBeg    Дата проводок с      ^
DataProvEnd    Дата проводок по     ^
.end
.end

.if OKRegUchHead
Reg        регистр учета            ^
.end

.{CheckEnter SoprHozCtrl

NrecSH     SoprHoz.Nrec             ^
DateSH     дата SoprHoz             ^
NoDocSH    номер SoprHoz            ^
NameDoc    документ                 ^
SodrDoc    содержание операции      ^
SumNDE     сумма в Н.Д.Е.           ^
SumValTar  сумма в Б. валюте        ^
SumVal     сумма в валюте           ^
SimvVal    валюта                   ^
OrgUNN     контрагент UNN           ^
User       оператор                 ^
cHozOp     Nrec хозоперации         ^
TXO        типовая операция         ^
.{CheckEnter RegUch
.if OKRegUch
NameReg    план счетов              ^
cHozOpReg  Nrec хозоперации регистра учета ^
TXOReg     типовая операция регистра учета ^
.end
.if OKOborotCtrl
.{CheckEnter OborotCtrl
  OborNrec        Nrec проводки                               ^
  NumProv         Номер проводки                              ^
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
.else
.end
.if OKOborotNew
.{CheckEnter OborotNew
  NumProvNew      Номер проводки                              ^
  SchONew         Счет по дебету в проводке                   ^
  SubSchONew      Субсчет счета по дебету                     ^
  SchKNew         Счет по кредиту в проводке                  ^
  SubSchKNew      Субсчет счета по кредиту                    ^
  SumProvNew      Сумма оборота                               ^
  VhProvNew       Входимость сумму платежа                    ^
  KolProvNew      Количество товара/услуг                     ^
  EdIzmNew        Единица измерения                           ^
  DbKauNew        Объект учета счета по дебету в проводке     ^
  KrKauNew        Объект учета счета по кредиту в проводке    ^
  DbPodrNew       Подразделение дебетового счета в проводке   ^
  KrPodrNew       Подразделение кредитового счета в проводке  ^
  SumValProvNew   Сумма оборота в валюте                      ^
  SimvValProvNew  Наименование валюты                         ^
  SumConvValProvNew Сумма оборота в валюте конвертации        ^
  NameConvValProvNew Наименование валюты для конвертации      ^
  DateProvNew     Дата формирования проводки                  ^
  SodrProvNew     Содержание проводки                         ^
.}
.else
.end
.if OborotNewErr
  Ошибка формирования контрольных проводок
.end
.if OKFPOborotCtrl
IsFin      наличие финпроводок     ^
.{CheckEnter FpOborotCtrl
  NumFin          Номер финпроводки                           ^
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
.}
.endform

#doc
Протокол контроля проводок
#end
.linkform CtrlProv_01 prototype is CtrlProv
.NameInList '1. Протокол контроля проводок'
.var
  LineFlag: boolean;
  RegFlag: boolean;
.endvar
.fields

CommonFormHeader
NameTiDk
NameHozOp
NameTiDkHoz
NameGrDescr
CurDescr
DataHozOpBeg
DataHozOpEnd
DataProvBeg
DataProvEnd
Reg
SimvNDE

if(LineFlag, string(DateSH), '')
if(LineFlag, NoDocSH, '')
if(LineFlag, NameDoc, '')
if(LineFlag, SumNDE, '')

if(RegFlag, TXOReg + '(' + NameReg + ')', TXO)
.endfields
^
                                                        Протокол контроля проводок

.if IsFiltrHead
 Применялись фильтры:
.if IsHozDoc
 Хозяйственный документ:
    ^
.end
.if IsHozOpHead
 Типовая хозоперация:
.{ CheckEnter IsHozOpN
    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ^
.}
.end
.if IsGrDescrHead
 Рабочая группа:
.{ CheckEnter IsGrDescrN
     ^
.}
.end
.if IsCurDescr
 Дескриптор пользователя:
     ^
.end
.if IsDataHozOp
 Дата хозоперации:
     с @@@@@@@@@@ по @@@@@@@@@@
.end
.if IsDataProv
 Дата проводок из хозоперации:
     с @@@@@@@@@@ по @@@@@@@@@@
.end
.end
.begin
  RegFlag := true;
end.
.if OKRegUchHead
^
.begin
  RegFlag := false;
end.
.end
──────────┬────────┬────────────────────────────────────────┬─────────────────┬──────────────────────────────────────────────────────────────────────
   Дата   │ N док. │           Документ                     │  Сумма в @@@@@@@│                Хозяйственная операция/регистр учета
──────────┼────────┼────────────────────────────────────────┼─────────────────┼──────────────────────────────────────────────────────────────────────
.{CheckEnter SoprHozCtrl
.begin
  LineFlag := true;
end.
.{CheckEnter RegUch
.if OKRegUch
.end
@@@@@@@@@@│@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&'&&&&&&&&&&&&.&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.begin
  LineFlag := false;
end.
.if OKOborotCtrl
.{CheckEnter OborotCtrl
.}
.else
.end
.if OKOborotNew
.{CheckEnter OborotNew
.}
.else
.end
.if OborotNewErr
.end
.if OKFpOborotCtrl
.{CheckEnter FpOborotCtrl
.}
.end
.}
.} Б
──────────┴────────┴────────────────────────────────────────┴─────────────────┴──────────────────────────────────────────────────────────────────────
.endform
