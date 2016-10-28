//------------------------------------------------------------------------------
//                                                      (c) Корпорация ГАЛАКТИКА
//------------------------------------------------------------------------------
// Система       : ГАЛАКТИКА
// Проект        : Бухгалтерский контур
// Версия        : 5.8х
// Назначение    : Обороты в разрезе субсчетов
// Ответсвенный  : Герман Юрий Эдуардович (Gera)
//------------------------------------------------------------------------------

#doc
Базовая форма отчета "Обороты в разрезе субсчетов"
#end
.set name = 'ObSubSch'
.group 'ObSubSch_f1'
.nameinlist 'Базовая форма ObSubSch'
.hide
.var
   FrmUserName,
   MainBuhName : string;
.endvar
.fields
Schet SchetName BegDate EndDate NameNDE SimvNDE NameRepVal SimvRepVal
PlanNrec  PlanName
NameFilterGroup
KodFilter NameFilter
KodSchetO NameSchetO KodSubSchO NameSubSchO
KodSchetK NameSchetK KodSubSchK NameSubSchK
SchetO SubSchO SchetK SubSchK SaldoVhodDeb SaldoVhodDebVal SaldoVhodKred SaldoVhodKredVal
OborDeb OborDebVal OborKred OborKredVal SaldoIshDeb SaldoIshDebVal SaldoIshKred SaldoIshKredVal
SumSubSaldoVhodDeb SumSubSaldoVhodDebVal SumSubSaldoVhodKred SumSubSaldoVhodKredVal
SumSubOborDeb SumSubOborDebVal SumSubOborKred SumSubOborKredVal
SumSubSaldoIshDeb SumSubSaldoIshDebVal SumSubSaldoIshKred SumSubSaldoIshKredVal
SubSaldoIshFactDebBV SubSaldoIshFactKredBV SubDeltaSaldoDeb SubDeltaSaldokred
SumSubSaldoInRollDeb SumSubSaldoInRollDebVal SumSubSaldoInRollKred SumSubSaldoInRollKredVal
SumSubSaldoOutRollDeb SumSubSaldoOutRollDebVal SumSubSaldoOutRollKred SumSubSaldoOutRollKredVal
SubSaldoRealDebBV SubSaldoRealKredBV DeltaSubSaldoRealDeb DeltaSubSaldoRealKred
SumSchSaldoVhodDeb SumSchSaldoVhodDebVal SumSchSaldoVhodKred SumSchSaldoVhodKredVal
SumSchOborDeb SumSchOborDebVal SumSchOborKred SumSchOborKredVal
SumSchSaldoIshDeb SumSchSaldoIshDebVal SumSchSaldoIshKred SumSchSaldoIshKredVal
SchSaldoIshFactDebBV SchSaldoIshFactkredBV SchDeltaSaldoDeb SchDeltaSaldoKred
SumSchSaldoInRollDeb SumSchSaldoInRollDebVal SumSchSaldoInRollKred SumSchSaldoInRollKredVal
SumSchSaldoOutRollDeb SumSchSaldoOutRollDebVal SumSchSaldoOutRollKred SumSchSaldoOutRollKredVal
SchSaldoRealDebBV SchSaldoRealKredBV DeltaSchSaldoRealDeb DeltaSchSaldoRealKred
SumVedSaldoVhodDeb SumVedSaldoVhodDebVal SumVedSaldoVhodKred SumVedSaldoVhodKredVal
SumVedOborDeb SumVedOborDebVal SumVedOborKred SumVedOborKredVal
SumVedSaldoIshDeb SumVedSaldoIshDebVal SumVedSaldoIshKred SumVedSaldoIshKredVal
VedSaldoIshFactDebBV VedSaldoIshFactKredBV VedDeltaSaldoDeb VedDeltaSaldoKred

// Подписанты
  IsValidFeeSigners        : boolean   // True, если Группа выбрана.
  cFeeSignersNRec          : comp      // Ссылка на выбранную группу подписантов
  NameFeeSigners           : string    // имя выбранной группы подписантов

  KolSigners               : word

  Signer_nRec              : comp
  Signer_FIO               : string
  Signer_TabN              : longint
  Signer_Position          : string
  Signer_Role              : string
.endfields
.begin
  MainBuhName := sGetTune('MainBuh');
  FrmUserName    := sGetTune('User.Fio');
end.
Schet      Счет             ^
SchetName  Наименование счета ^
BegDate    Интервал начало  ^
EndDate             конец   ^
NameNDE    Нац ДЕ (имя)     ^
SimvNDE    Нац ДЕ (симв)    ^
NameRepVal    Валюта отчетов (имя)   ^
SimvRepVal    Валюта отчетов (симв)  ^
PlanNrec   NRec плана счетов          ^
PlanName   наименование плана счетов  ^
.if OkFilOsch
.{
NameFilterGroup ^
.{
KodFilter ^
NameFilter ^
.}
.}
.end
.{
KodSchetO    счет номер  ^
NameKodSchetO      имя    ^
.{
KodSubSchO    субсчет номер  ^
NameSubSchO           имя    ^
.{
KodSchetK    счет корр номер  ^
NameSchetK              имя    ^
.{
KodSubSchK    субсчет корр номер  ^
NameSubSchK                 имя    ^
.{
SchetO    счет осн     ^
SubSchO    субсчет осн  ^
SchetK    кор счет     ^
SubSchK    субсчет кор  ^
SaldoVhodDeb    сальдо вход по дебету  ^
SaldoVhodDebVal                          ^
SaldoVhodKred    сальдо вход по кредиту ^
SaldoVhodKredVal                          ^
OborDeb    обороты по дебету      ^
OborDebVal                          ^
OborKred    обороты по кредиту     ^
OborKredVal                          ^
SaldoIshDeb    сальдо исх по дебету   ^
SaldoIshDebVal                          ^
SaldoIshKred    сальдо исх по кредиту  ^
SaldoIshKredVal                          ^
.}
.}
.}
Сумма по субсчету
SumSubSaldoVhodDeb     сальдо вход по дебету  ^
SumSubSaldoVhodDebVal                           ^
SumSubSaldoVhodKred     сальдо вход по кредиту ^
SumSubSaldoVhodKredVal                           ^
SumSubOborDeb     обороты по дебету      ^
SumSubOborDebVal                           ^
SumSubOborKred     обороты по кредиту     ^
SumSubOborKredVal                           ^
SumSubSaldoIshDeb     сальдо исх по дебету   ^
SumSubSaldoIshDebVal                           ^
SumSubSaldoIshKred     сальдо исх по кредиту  ^
SumSubSaldoIshKredVal                           ^
SubSaldoIshFactDebBV   сальдо исх по дебету фактическое в БВ   ^
SubSaldoIshFactKredBV   сальдо исх по кредиту фактическое в БВ  ^
SubDeltaSaldoDeb   дельта между расчетным и фактическим по дебету   ^
SubDeltaSaldokred   дельта между расчетным и фактическим по кредиту  ^
.if OkSvertkaSubOb
SumSubSaldoInRollDeb      ^
SumSubSaldoInRollDebVal   ^
SumSubSaldoInRollKred     ^
SumSubSaldoInRollKredVal  ^
SumSubSaldoOutRollDeb     ^
SumSubSaldoOutRollDebVal  ^
SumSubSaldoOutRollKred    ^
SumSubSaldoOutRollKredVal ^
SubSaldoRealDebBV         ^
SubSaldoRealKredBV        ^
DeltaSubSaldoRealDeb      ^
DeltaSubSaldoRealKred     ^
.end
.}
Итого по счету
SumSchSaldoVhodDeb     сальдо вход по дебету  ^
SumSchSaldoVhodDebVal                           ^
SumSchSaldoVhodKred     сальдо вход по кредиту ^
SumSchSaldoVhodKredVal                           ^
SumSchOborDeb     обороты по дебету      ^
SumSchOborDebVal                           ^
SumSchOborKred     обороты по кредиту     ^
SumSchOborKredVal                           ^
SumSchSaldoIshDeb     сальдо исх по дебету   ^
SumSchSaldoIshDebVal                           ^
SumSchSaldoIshKred     сальдо исх по кредиту  ^
SumSchSaldoIshKredVal                           ^
SchSaldoIshFactDebBV   сальдо исх по дебету фактическое в БВ   ^
SchSaldoIshFactkredBV   сальдо исх по кредиту фактическое в БВ  ^
SchDeltaSaldoDeb   дельта между расчетным и фактическим по дебету   ^
SchDeltaSaldoKred   дельта между расчетным и фактическим по кредиту  ^
.if OkSvertkaSchetOb
SumSchSaldoInRollDeb        ^
SumSchSaldoInRollDebVal     ^
SumSchSaldoInRollKred       ^
SumSchSaldoInRollKredVal    ^
SumSchSaldoOutRollDeb       ^
SumSchSaldoOutRollDebVal    ^
SumSchSaldoOutRollKred      ^
SumSchSaldoOutRollKredVal   ^
SchSaldoRealDebBV           ^
SchSaldoRealKredBV          ^
DeltaSchSaldoRealDeb        ^
DeltaSchSaldoRealKred       ^
.end
.}
Итого по ведомости
SumVedSaldoVhodDeb     сальдо вход по дебету  ^
SumVedSaldoVhodDebVal                           ^
SumVedSaldoVhodKred     сальдо вход по кредиту ^
SumVedSaldoVhodKredVal                           ^
SumVedOborDeb     обороты по дебету      ^
SumVedOborDebVal                           ^
SumVedOborKred     обороты по кредиту     ^
SumVedOborKredVal                           ^
SumVedSaldoIshDeb     сальдо исх по дебету   ^
SumVedSaldoIshDebVal                           ^
SumVedSaldoIshKred     сальдо исх по кредиту  ^
SumVedSaldoIshKredVal                           ^
VedSaldoIshFactDebBV   сальдо исх по дебету фактическое в БВ   ^
VedSaldoIshFactKredBV   сальдо исх по кредиту фактическое в БВ  ^
VedDeltaSaldoDeb   дельта между расчетным и фактическим по дебету   ^
VedDeltaSaldoKred   дельта между расчетным и фактическим по кредиту  ^

.if NewDlg
 IsValidFeeSigners        - ^
 cFeeSignersNRec          - ^
 NameFeeSigners           - ^

  KolSigners  - ^
.{ CheckEnter FeeSignersMember_ObSubSch
  Signer_nRec             - ^
  Signer_FIO              - ^
  Signer_TabN             - ^
  Signer_Position         - ^
  Signer_Role             - ^
.}
.end

.endform
!==============================================================================
.linkform 'ObSubSch_01' prototype is 'ObSubSch'
.group 'ObSubSch_f1'
.nameinlist '1. Оборотная ведомость в разрезе субсчетов'
.p 80
.defo portrait
.nonextheader
.var
  MyOrg   :string;
  oHistory : iHistory;
.endvar
.fields
CommonFormHeader
MyOrg
Schet+' '+SchetName BegDate EndDate NameNDE
NameFilterGroup
KodFilter NameFilter
KodSchetO NameSchetO
SubSchO SchetK SubSchK SaldoVhodDeb SaldoVhodKred OborDeb OborKred SaldoIshDeb SaldoIshKred
SumSubSaldoVhodDeb  SumSubSaldoVhodKred  SumSubOborDeb  SumSubOborKred  SumSubSaldoIshDeb  SumSubSaldoIshKred
SumSubSaldoInRollDeb SumSubSaldoInRollKred
SumSubSaldoOutRollDeb SumSubSaldoOutRollKred
SumSchSaldoVhodDeb  SumSchSaldoVhodKred  SumSchOborDeb  SumSchOborKred  SumSchSaldoIshDeb  SumSchSaldoIshKred
SumSchSaldoInRollDeb SumSchSaldoInRollKred
SumSchSaldoOutRollDeb SumSchSaldoOutRollKred
SumVedSaldoVhodDeb  SumVedSaldoVhodKred  SumVedOborDeb  SumVedOborKred  SumVedSaldoIshDeb  SumVedSaldoIshKred
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
 Ш^
^

                         БОборотная ведомость в разрезе субсчетов по счету ^ Б
                         Б                с ^ г. по ^ г. Б
Ведомость сформирована в  Б^ Б
.if OkFilOsch
 БПрименен фильтр... Б
.{
   ^
.{
      ^ ^
.}
.}
.end
.{
.[h
                                                                                                                                      лист @np@
────────┬──────────────┬─────────────────────────────────────────┬─────────────────────────────────────────┬─────────────────────────────────────────
  Суб─  │ Корреспонд.  │                                         │                                         │
  счет  ├──────┬───────┤            Входящее сальдо              │                 Обороты                 │           Исходящее сальдо
  осн.  │Счет  │ Суб-  ├────────────────────┬────────────────────┼────────────────────┬────────────────────┼────────────────────┬────────────────────
  счета │      │ счет  │         дебет      │     кредит         │       дебет        │      кредит        │         дебет      │      кредит
────────┴──────┴───────┴────────────────────┴────────────────────┴────────────────────┴────────────────────┴────────────────────┴────────────────────
.]h
Счет: ^ ^
.{
.{
.{
.{
  Б@@@@@@@  @@@@@ @@@@@@@ Б &#'&&&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&&&
.}
.}
.}
 БИтого   по субсчету     &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& Б
.if OkSvertkaSubOb
                        &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&                                             &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& Б
.end
.}
 БИтого   по счету        &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& Б
.if OkSvertkaSchetOb
                        &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&                                             &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& Б
.end
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.}
 БИтого по ведомости      &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& Б
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.if NewDlg
.{ checkenter FeeSignersMember_ObSubSch
.fields
  if (Signer_Role <>'', Signer_Role, Signer_Position)
  Signer_FIO
.endfields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (должность)                    (подпись)                        (расшифровка подписи)

.}
.else
.fields
MainBuhName
FrmUserName
.endfields
 БГлавный бухгалтер Б       ^
 БОтветственный за выпуск Б ^ Ш
.end
.endform
!==============================================================================
.linkform 'ObSubSch_02' prototype is 'ObSubSch'
.group 'ObSubSch_f2'
.nameinlist '1. Оборотная ведомость в разрезе субсчетов в валюте'
.p 80
.defo portrait
.nonextheader
.var
MyOrg :string;
oHistory : iHistory;
.endvar
.fields
CommonFormHeader
MyOrg
Schet+' '+SchetName BegDate EndDate NameRepVal
NameFilterGroup
KodFilter NameFilter
KodSchetO NameSchetO
SubSchO SchetK SubSchK SaldoVhodDebVal SaldoVhodKredVal OborDebVal OborKredVal SaldoIshDebVal SaldoIshKredVal
SumSubSaldoVhodDebVal  SumSubSaldoVhodKredVal  SumSubOborDebVal  SumSubOborKredVal  SumSubSaldoIshDebVal  SumSubSaldoIshKredVal
SumSubSaldoInRollDebVal SumSubSaldoInRollKredVal
SumSubSaldoOutRollDebVal SumSubSaldoOutRollKredVal
SumSchSaldoVhodDebVal  SumSchSaldoVhodKredVal  SumSchOborDebVal  SumSchOborKredVal  SumSchSaldoIshDebVal  SumSchSaldoIshKredVal
SumSchSaldoInRollDebVal SumSchSaldoInRollKredVal
SumSchSaldoOutRollDebVal SumSchSaldoOutRollKredVal
SumVedSaldoVhodDebVal  SumVedSaldoVhodKredVal  SumVedOborDebVal  SumVedOborKredVal  SumVedSaldoIshDebVal  SumVedSaldoIshKredVal
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
 Ш^
^

                         БОборотная ведомость в разрезе субсчетов по счету ^ Б
                         Б                с ^ г. по ^ г. Б
Ведомость сформирована в  Б^ Б
.if OkFilOsch
 БПрименен фильтр... Б
.{
   ^
.{
      ^ ^
.}
.}
.end
.{
.[h
                                                                                                                                      лист @np@
────────┬──────────────┬─────────────────────────────────────────┬─────────────────────────────────────────┬─────────────────────────────────────────
  Суб─  │ Корреспонд.  │                                         │                                         │
  счет  ├──────┬───────┤            Входящее сальдо              │                 Обороты                 │           Исходящее сальдо
  осн.  │Счет  │ Суб-  ├────────────────────┬────────────────────┼────────────────────┬────────────────────┼────────────────────┬────────────────────
  счета │      │ счет  │        дебет       │     кредит         │       дебет        │      кредит        │         дебет      │      кредит
────────┴──────┴───────┴────────────────────┴────────────────────┴────────────────────┴────────────────────┴────────────────────┴────────────────────
.]h
Счет: ^ ^
.{
.{
.{
.{
  Б@@@@@@@  @@@@@ @@@@@@@ Б &#'&&&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&&&
.}
.}
.}
 БИтого   по субсчету     &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& Б
.if OkSvertkaSubOb
                        &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&                                             &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& Б
.end
.}
 БИтого   по счету        &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& Б
.if OkSvertkaSchetOb
                        &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&                                             &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& Б
.end
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.}
 БИтого по ведомости      &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& Б
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.if NewDlg
.{ checkenter FeeSignersMember_ObSubSch
.fields
  if (Signer_Role <>'', Signer_Role, Signer_Position)
  Signer_FIO
.endfields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (должность)                    (подпись)                        (расшифровка подписи)

.}
.else
.fields
MainBuhName
FrmUserName
.endfields
 БГлавный бухгалтер Б       ^
 БОтветственный за выпуск Б ^ Ш
.end
.endform
!==============================================================================
.linkform 'ObSubSch_03' prototype is 'ObSubSch'
.group 'ObSubSch_f3'
.nameinlist '1. Оборотная ведомость в разрезе субсчетов в НДЕ и валюте'
.p 60
.defo landscape
.nonextheader
.var
MyOrg :string;
oHistory : iHistory;
.endvar
.fields
CommonFormHeader
Myorg
Schet+' '+SchetName BegDate EndDate
NameFilterGroup
KodFilter NameFilter
SimvNDE SimvRepVal SimvNDE SimvRepVal SimvNDE SimvRepVal SimvNDE SimvRepVal
KodSchetO NameSchetO
SubSchO SchetK SubSchK SaldoVhodDeb SaldoVhodDebVal SaldoVhodKred SaldoVhodKredVal OborDeb OborDebVal OborKred OborKredVal
SumSubSaldoVhodDeb SumSubSaldoVhodDebVal SumSubSaldoVhodKred SumSubSaldoVhodKredVal
SumSubOborDeb SumSubOborDebVal SumSubOborKred SumSubOborKredVal
SumSubSaldoIshDeb SumSubSaldoIshDebVal SumSubSaldoIshKred SumSubSaldoIshKredVal
SumSubSaldoOutRollDeb SumSubSaldoOutRollDebVal SumSubSaldoOutRollKred SumSubSaldoOutRollKredVal
SumSchSaldoVhodDeb SumSchSaldoVhodDebVal SumSchSaldoVhodKred SumSchSaldoVhodKredVal
SumSchOborDeb SumSchOborDebVal SumSchOborKred SumSchOborKredVal
SumSchSaldoIshDeb SumSchSaldoIshDebVal SumSchSaldoIshKred SumSchSaldoIshKredVal
SumSchSaldoOutRollDeb SumSchSaldoOutRollDebVal SumSchSaldoOutRollKred SumSchSaldoOutRollKredVal
SumVedSaldoVhodDeb  SumVedSaldoVhodDebVal SumVedSaldoVhodKred  SumVedSaldoVhodKredVal  SumVedOborDeb SumVedOborDebVal  SumVedOborKred SumVedOborKredVal
SumVedSaldoIshDeb   SumVedSaldoIshDebVal  SumVedSaldoIshKred   SumVedSaldoIshKredVal
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
 Р^
^

                         БОборотная ведомость в разрезе субсчетов по счету ^ Б
                         Б                с ^ г. по ^ г. Б
.if OkFilOsch
 БПрименен фильтр... Б
.{
   ^
.{
      ^ ^
.}
.}
.end
─────────┬──────────────┬─────────────────────────────────────────────────────────────────────────────┬─────────────────────────────────────────────────────────────────────────────
  Суб─   │ Кореспонд.   │                                   Сальдо                                    │                                   Обороты
  счет   ├──────┬───────┼──────────────────────────────────────┬──────────────────────────────────────┼──────────────────────────────────────┬──────────────────────────────────────
  осн.   │ Счет │  Суб- │                дебет                 │               кредит                 │                дебет                 │                кредит
  счета  │      │  счет ├──────────────────┬───────────────────┼──────────────────┬───────────────────┼──────────────────┬───────────────────┼──────────────────┬───────────────────
         │      │       │     в @@@@@@     │     в @@@@@@      │     в @@@@@@     │      в @@@@@@     │     в @@@@@@     │     в @@@@@@      │     в @@@@@@     │     в @@@@@@
─────────┴──────┴───────┴──────────────────┴───────────────────┴──────────────────┴───────────────────┴──────────────────┴───────────────────┴──────────────────┴───────────────────
.{
Счет: ^ ^
.{
.{
.{
.{
  Б@@@@@@@@  @@@@@ @@@@@@@ Б &#'&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&&  &'&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&
.}
.}
.}
 БИтого по субсчету        &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&  &'&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&
              Исх.сальдо &#'&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&& Б
.if OkSvertkaSubOb
                         &#'&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&&
.end
.}
 БИтого по счету           &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&  &'&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&
              Исх.сальдо &#'&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&& Б
.if OkSvertkaSchetOb
                         &#'&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&&
.end
───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.}
 БИтого по ведомости       &#'&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&&  &'&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&
              Исх.сальдо &#'&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&& &#'&&&&&&&&&&&&&&&& Б
───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.if NewDlg
.{ checkenter FeeSignersMember_ObSubSch
.fields
  if (Signer_Role <>'', Signer_Role, Signer_Position)
  Signer_FIO
.endfields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (должность)                    (подпись)                        (расшифровка подписи)

.}
.else
.fields
MainBuhName
FrmUserName
.endfields
 БГлавный бухгалтер Б       ^
 БОтветственный за выпуск Б ^ Ш
.end
.endform
!==============================================================================
