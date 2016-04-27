
#ifndef _SPDOCBUF_INC
#define _SPDOCBUF_INC

#ifdef ComponentVersion
#component "L_MAKENAKL"
#endif

! Универсальный буфер для формирования спецификации документа.
! Если для конкретной таблицы имя поля не совпадает с
! его наименованием в буфере, то Таблица.Поле указаны
! справа в комментарии. В противном случае либо у Таблицы
! нет соответствующего поля, либо его название совпадает
! с насванием его в буфере.

Table STRUCT SpDocBuf "Буфер для спецификации документа"
(
  NRec          : comp       ,
  Npp           : word       "номер по порядку", // SpDocs.Code
!  curSelect     : word       "1 - текущая выборка", // для формирования TNalF
  PrMC          : word       "признак товара или услуги",
                             // 1 - МЦ      (SpDocs.PrMC = 3)
                             // 2 - Услуга  (SpDocs.PrMC = 4)
                             // 3 - Соп. услуга (% к товару)
                             // 4 - Соп. услуга (сумма к товару)
                             // 5 - Соп. услуга (для распределения по весу)
                             // 6 - Соп. услуга (для распределения по объему)
  cMCUsl        : comp       "ссылка на МЦ/услугу",
  cGrMCUsl      : comp       "ссылка на группу МЦ/услуг",
  cOtpEd        : comp       "ссылка на отпускную единицу",

  NRecSpStep    : comp       "SpStep.NRec",
  NRecSpSopr    : comp       "SpSopr.NRec",
  cSpDocs       : comp       "сылка на вышестоящию спецификацию", // (SpSopr,SpStep)

  Kol           : double     "количество",              // (SpSopr,SpStep,SpDocs)
  KolOpl        : double     "количество оплаченного",  // (SpSopr,SpStep)
  KolFact       : double     "количество фактическое ", // (SpSopr)
  KolSkl        : double     "количество для склада",   // (SpStep)
  Price         : double     "цена за единицу",
!  VPrice        : double     "цена за единицу в валюте", // (SpSopr)
  cPodr         : comp       "склад отгрузки", // (TNalF)
  cMol          : comp       "МОЛ", // (TNalF)
  cParty        : comp       "код партии",              // (SpSopr,SpStep,TNalF)
  cVal          : comp       "Ссылка на валюту спецификации",
  Summa         : double     "Сумма по позиции",        // (SpStep,SpDocs)
  Reserv        : double     "количество товара в резерве",     // (SpStep)
!  SumVal        : double     "сумма в валюте по товару",        // (SpStep)
!  Garant        : double     "срок гарантии в месяцах",         // (SpStep)
  SrokRes       : date       "последний день действия резерва", // (SpStep)
!  SopUsl        : word       "1 - %, 2 - сумма к товару",       // (SpStep)
!  StoTov        : double     "стоимость или % к товару",        // (SpStep)
  PrSkid        : word       "1 - скидка %,2-сумма",            // (SpStep)
  VlSkid        : double     "стоимость или % к товару",        // (SpStep)
!  SumNDS        : double     "Сумма нал. НДЕ к контр. по позиции",  // (SpStep)
!  SumVNDS       : double     "Сумма нал. вал. к контр. по позиции", // (SpStep)
  NDS           : double     "величина налогов к позиции", // (SpSopr)
  cPriceList    : comp       "Ссылка на прайс-лист",
  nVagon        : string[20] "Номер ед.подв.состава",
  nKvit         : string[20] "Номер ж/д квитанции",
  PrUsNkl       : word       "Вх. усл. в накладную",  // (SpStep)
  ManualTax     : word       "Ручные налоги", // (SpSopr,SpStep)
!  cAltEd        : comp       "Альт.единица измерения", // (SpSopr,SpStep)
  cPersons      : comp       "Сотрудник, выполняющий услугу", // (SpSopr,SpStep)
  cResOtgr      : comp       "Ссылка на ресурс отгрузки",
  cMoveCell     : comp       "Ссылка на ед.подв. состава", // (SpSopr.cCellVal,SpStep.cCellVal)
  cNMoveCell    : comp       "Ссылка на номер ед.подв. состава", // (SpSopr,SpStep)
  cTransp       : comp       "Ссылка на ед.подв. состава", // (SpSopr,SpStep)
  wMcProp       : word       "Доп. св-ва МЦ/услуги", // (SpSopr.wMcProp)
  cDogovor      : comp       "Ссылка на договор",
  cAppDogovor   : comp       "Ссылка на приложение",
  cCalPlan      : comp       "Ссылка на пункт календарного плана", // (SpStep)
  cGrNal        : comp       "Ссылка на группу налогов",
  KolGrm        : double     "Кол-во грузовых мест",
  nSertif       : string     "Сертификат качества",
  cOtpEdGrm     : comp       "Отп. единица для грузовых мест",
  SumAvt        : double     "сумма ж/д тарифа",
  cValAvt       : comp       "валюта 2",
  cMasEd        : comp       "единица веса KatEd",
  cMasVid       : comp       "способ определения веса",
  Netto         : double     "вес нетто",
  mTara         : double     "вес тары",
  ProcUb        : double     "% естественной убыли",
  cSpMC         : comp       "привязанная услуга",
  wTableSource  : word       "coTable формирующей таблицы для ТТН", // use при SDocBuf.ManualTTNInfo=0
  cRecSource    : comp       "NRec формирующей записи для ТТН", // use при SDocBuf.ManualTTNInfo=0
  PrVoz         : word       "возврат/невозврат тары",
  cOwner        : comp       "Ссылка на запись МС"
, cUKS          : comp       "Ссылка на объект УКС"
, cZatr         : comp       "Ссылка на статью затрат УКС"
, cPostMC       : comp       "Поставщик материала"
)

With Index
(
  SpDocBuf01 = NRec (Surrogate, Unique)
, SpDocBuf02 = PrMC + cPodr + cMol + Npp
, SpDocBuf04 = PrUsNkl + PrMC
, SpDocBuf05 = cMCUsl
, SpDocBuf06 = cSpMC + PrMC
, SpDocBuf07 = NRecSpStep
, SpDocBuf08 = KolFact
)
;

//------------------------------------------------------------------------------
Table STRUCT SpDocBuf_ExN "Продолжение таблицы"
(
  cSpDocBuf        : comp
, PriceN           : tSumma         "цена для нал.учета"
, vPriceN          : tPrice         "цена для нал.учета в вал."
)
With Index
(
  SpDocBuf_ExN01 = cSpDocBuf
)
;
//------------------------------------------------------------------------------

#end // _SPDOCBUF_INC
