//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Логистика
// Описание временной таблицы для создания ДО по накладным
//******************************************************************************


#ifNdef _SDO4SOPR_INC
#define _SDO4SOPR_INC

Table STRUCT Sdo4sopr "Для создания ДО по накладным"

(
  NRec          : comp
, VidSopr       : word
, PrMC          : word
, cMCUsl        : comp
, cParty        : comp
, SrPrice       : double      // для участия в индексе со сверткой цены и без
, ManualTax     : word
, cGrNal        : comp
, ProcUb        : double
, nVagon        : string[20]  // перенос номеров вагонов
, OtpEd         : comp
, Kol           : double
, KolOpl        : double
, Netto         : double
, MTara         : double
, Price         : double
, RSumma        : double
, cPriceList    : comp
, dPrice        : Date
, cStepDoc      : comp
, cSpSopr       : comp        // нужно для расчетных услуг
, cCellVal      : comp        // ед.подвижного состава MoveCell
, cNMoveCell    : comp        // ссылка на номер ед.подв. состава
, KolGrM        : double      // количество грузовых мест
, cOtpEdGrM     : comp        // отпускная ед для кол-ва грузовых мест
, SumAvt        : double      // сумма ж/д тарифа
, cValAvt       : comp        // валюта тарифа
, cMasEd        : comp        // единица веса KatED
, cMasVid       : comp        // способ определения веса
, cTransp       : comp        // ссылка на ед.подв. состава
, cUks          : comp        // ссылка на объект строительства
, cZatr         : comp        // ссылка на статью затрат
, NKvit         : string[20]  // Номер ж/д квитанции
, cResOtgr      : comp        // ресурс отгрузки
, wMcProp       : word        // С-собственный, Н-несобственный товар/услуга
, cRemKompl     : comp        // комплектующее ремонта
, cOwner        : comp
, wTipMoney     : word
)

With Index
(
  Sdo4sopr01 = NRec (Surrogate, Unique),
  Sdo4sopr02 = PrMC + cMCUsl + OtpEd + cParty + SrPrice + ManualTax + cGrNal + ProcUb + nVagon + cUKS + cZatr,
  Sdo4sopr03 = PrMC + cMCUsl + cParty + SrPrice + ManualTax + cGrNal + ProcUb + nVagon + cUKS + cZatr
)
;

//******************************************************************************
Table STRUCT TmpDocNal "Временные налоги док."
(
  NRec      : tNRec          "Номер записи"
, cSpDoc    : tNRec          "Позиция документа"
, cDoc      : tNRec          "Ссылка на документ"
, TipDoc    : Word           "Тип документа"
, cGrNal    : tNRec          "Ссылка на GrNal"
, cNalog    : tNRec          "Ссылка на налог ( Katnalog )"
, Nalog     : tSumma         "Ставка налога"
, SumNal    : tSumma         "Сумма налога в вал. налога"
, cVal      : tNRec          "Валюта налога"
, SumVal    : tSumma         "Сумма налога в валюте документа"
, Summa     : tSumma         "Сумма налога в НДЕ"
, IsAgreg   : boolean        "Агрегировать по ставкам - да/нет"
, cOrg      : tNRec          "Ссылка на получателя налога"
, ValCurse  : tSumma         "Курс уплаты налога к НДЕ"
, CrosCurse : tSumma         "Курс уплаты налога к SumVal"
, Npp       : tNpp           "Порядок для сортировки"
, IsCustom  : Word           "Копия из SpGrNal"                  //  +1 - таможня
, rSumma    : tSumma         "Сумма налога в НДЕ (неокруг.)"
, rSumVal   : tSumma         "Сумма налога в валюте док-та (неокруг.)"
, rSumNal   : tSumma         "Сумма налога в вал. налога (неокруг.)"
, dCurseVal : Date           "Дата курса валют"

)
With Index
(
  TmDocNal01  =  NRec(Unique, Surrogate)
, TmDocNal02  =  cSpDoc + TipDoc + cNalog + cGrNal + cVal + cOrg + Nalog
, TmDocNal03  =  cNalog + cGrNal
);

#end // _SDO4SOPR_INC
