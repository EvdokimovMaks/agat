//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 8.1 - Логистика
// Функции расчета налогов. Таблица в памяти - результат расчетов
//******************************************************************************
#component "L_Nalog"

//******************************************************************************
Table Struct Tmp_SpDocNal "Копия SpDocNal"
(
  cSpDoc    : tNRec          "Позиция документа"
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
, IsCustom  : Word           "Копия из SpGrNal"                         //  +1 - таможня
, rSumma    : tSumma         "Сумма налога в НДЕ (неокруг.)"
, rSumVal   : tSumma         "Сумма налога в валюте док-та (неокруг.)"
, rSumNal   : tSumma         "Сумма налога в вал. налога (неокруг.)"
, dCurseVal : Date           "Дата курса валют"
, cSpDocNal : comp           "Ссылка на SpDocNal"
)
with index
(
  TmpNal_SpDocNal01  =  cSpDoc + TipDoc + cGrNal + cNalog + Nalog
, TmpNal_SpDocNal02  =  cDoc   + TipDoc + cGrNal + cNalog
, TmpNal_SpDocNal03  =  cSpDocNal
, TmpNal_SpDocNal04  =  cSpDoc + TipDoc + Npp    + cNalog
)
;
