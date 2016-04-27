//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 6.00 - Основные средства
// Ведомости переоценки
// Внимание! Существует slk-отчет в формате Excel
//------------------------------------------------------------------------------

#include Commission.frn // комиссии

#doc
Ведомости переоценки
#end

.FORM OSPereoc
.HIDE
.var
#include Fld_Amort.var
.endvar
.begin
#include Fld_Amort.vpp
end.

.fields
  Формат_Сумм : string // Формат содержащийся в рфыекщйках пользователя UserDeskRep.ResName[1]

  nRec_MoveOs : comp
  Date_Pereoc : date

  nRec_NastrOs : comp
  NastrOsName
  Divider
  sDivider
  nRec_KlVal : comp
  CurrName
  Валюта_прописью_сокр
  nRec_UserDeskRep : comp
  sGrpName
  sSrtName

#CommissionFields

!---------------- FilterLoop
  sFltName
  CodeName

!---------------- GroupLoop
  Group_nRec : comp
  Head_TempDescr_TableCode : word // код таблицы по которой постоена данная группировка
  Head_TempDescr_CRecKat   : comp // номер записи в таблице по которой построена группировка
  GroupName
  GroupLevel : word // Уровень группировки
  NeedSum1 : boolean
  Head_StoimGrp     : double
  Head_IznosGrp     : double
  Head_OstStoimGrp  : double
  Head_StoimGrpNew  : double
  Head_IznosGrpNew  : double
  Head_OstStoimGrpNew   : double
  Head_BaseStoimGrp     : double  // амортизируемая стоимость (до переоценки)
  Head_BaseStoimGrpNew  : double  //           -//-           (после переоценки)

!---------------- DataLoop
  KatOs_nRec
  KatOs_cMc
  SpKatOs_nRec
  cHigherOS
  isLeaf
  NameIzg
  TipMark
  BarKod
  Kod_Part
  DatGar
  StoimPs    : double
  RegNum
  IznosPs    : double
  Poprkoef   : double
  SumOtkl    : double
  SumFld     : double
  StoimL     : double
  PerStoim   : double // Накопленная переоценка стоимости
  PerSumIzn  : double // Накопленная переоценка суммы износа

  fInnum
  OSName

  Kod_nRec : comp
  Kod
  Date_sost : date
  Date_post : date
  nRec_TempDescr : comp
  Stoim         : double
  SumIzn        : double
  NewStoim      : double
  NewSumIzn     : double
  NewIznMes     : double
  OstStoim      : double
  NewOstStoim   : double
  IznPerc       : double
  Coeff         : double
  PoprCoeff     : double
  BaseStoim     : double
  NewBaseStoim  : double

!---------------- ItogLoop
    ItgGroup_nRec : comp
    Tail_TempDescr_TableCode : word // код таблицы по которой постоена данная группировка
    Tail_TempDescr_CRecKat   : comp // номер записи в таблице по которой построена группировка
    ItgGroupName
    StoimGrp        : double
    IznosGrp        : double
    OstStoimGrp     : double
    StoimGrpNew     : double
    IznosGrpNew     : double
    OstStoimGrpNew  : double
    BaseStoimGrp    : double   // амортизируемая стоимость (до переоценки)
    BaseStoimGrpNew : double  //           -//-           (после переоценки)
.endfields

^ ^
Дата переоценки ^

Метод учета:          ^ ^
Денежная единица:     ^ (^) ^ ^
^^
Группировка:          ^
Сортировка:           ^

#CommissionBody(OSPereoc)

Фильтры:
.{ CheckEnter FilterLoop
 ^
.}
^
.{ MainLoop
.{ CheckEnter GroupLoop
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter DataLoop
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^
.}
.{ CheckEnter ItogLoop
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.}
.ENDFORM
