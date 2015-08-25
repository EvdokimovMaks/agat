//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.8x - УКС - Управление капитальным строительством
// Декларация типов, описывающих атрибуты значений показателей плана
//------------------------------------------------------------------------------

#ifndef _TVALUE_INC_
#define _TVALUE_INC_

#doc
Атрибуты значения одного показателя плана
#end
Type
  TValue = record
    iMode:      integer;  // Тип позиции плана
    cRec :      comp;     // Ссылка на позицию плана ref(SpPlan) или ref(PlanJob)
    iRegister:  integer;  // (cgPlan, cgFact, ...) + (cgUse, cgPay, ...)           (см. uksValue.inc)
    iPrice:     integer;  // (cgBasic, cgCurrent)  + (cgiTotal, cgiNalog, ...)     (см. uksValue.inc)
    iArticle:   integer;  // cgiPwr, cgiNAZb, cgiKV, ...; cgJobKol, cgJobPrc, ...  (см. uksValue.inc)
    fValue:     double;   // Значение показателя плана
    cPeriod:    comp;     // Период планирования показателя
    dBeg:       date;     // Дата начала задачи
    dEnd:       date;     // Дата окончания задачи
    wConstr:    word;     // Ограничения на доступ к показателю
    iCmpMode:   integer;  // Режим показателя при сравнении планов
    wDataLevel: word;     // Уровень хранения данных
  End;


#doc
Атрибуты фактического показателя плана
#end
Type
  TDetail = record
    TiDk:   word;   // Тип документа
    cDoc:   comp;   // Ссылка на документ
    dDate:  date;   // Дата операции
    cSpec:  comp;   // Ссылка на спецификацию документа
    cDog:   comp;   // Ссылка на договор
    cApp:   comp;   // Ссылка на доп. соглащение
    cCal:   comp;   // Ссылка на ПКП
  End;


#doc
Параметры группы показателей плана, распределяемых по подпериодам
#end
Type
  TDistr = record
    iPer:    integer; // Режим переноса и распределения показателей
    iCor:    integer; // Режим коррекции показателей
    iFltReg: integer; // Фильтр по регистрам учета   (cgReg_Plan, cgReg_Fact)
    iFltTip: integer; // Фильтр по типам показателей (cgTip_Use, cgTip_Pay, cgTip_All)
    iFltPrc: integer; // Фильтр по режимам цен       (cgPrc_Basic, cgPrc_Current, cgPrc_All)
    iFltNal: integer; // Фильтр по режимам налогов   (cgNal_Total, cgNal_Nalog, cgNal_Nds, cgNal_All)
    iRec:    integer; // Тип позиции плана
    cRec:    comp;    // Ссылка на позицию плана ref(SpPlan) или ref(PlanJob)
    cPer:    comp;    // Период планирования
    dBeg:    date;    // Дата начала задачи
    dEnd:    date;    // Дата окончания задачи
    cObj:    comp;    // Объект строительства
    iArt:    integer; // Статья затрат
    fKol: Array [1..2] of tSumma;  // Количество (для освоения cgTipU, для финансирования cgTipP)
    fSum: Array [1..4] of tSumma;  // Сумма без налогов (cgUseB, cgUseC, cgPayB, cgPayC)
    fNal: Array [1..4] of tSumma;  // Сумма налогов     (cgUseB, cgUseC, cgPayB, cgPayC)
    fNDS: Array [1..4] of tSumma;  // Сумма НДС         (cgUseB, cgUseC, cgPayB, cgPayC)
    cValB:    comp;   // Валюта сумм в базисных ценах
    cValC:    comp;   // Валюта сумм в текущих ценах
    dDoc:     date;   // Дата, которой соответствует распределяемая сумма
  End;

#end
