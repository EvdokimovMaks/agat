//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.10 - модуль "Платежный календарь"
// Константы ОФП ( реестр ФОб )
//------------------------------------------------------------------------------

Const

  // позиции в фильтре RESWORD[1]
  cgFlViewPos_PlanDate   =  0; // планируемая дата погашения
  cgFlViewPos_KatDoc     =  1; // направление движения средств
  cgFlViewPos_FObStatus  =  2; // статус финобязательства
  cgFlViewPos_Prior      =  3; // приоритет (не менее)
  cgFlViewPos_KatOrg     =  4; // контрагент
  cgFlViewPos_FpStBud    =  5; // статья бюджета
  cgFlViewPos_FpCO       =  6; // центр ответственности
  cgFlViewPos_Persons    =  7; // куратор
  cgFlViewPos_TypePlat   =  8; // вид платежа
  cgFlViewPos_Dogovor    =  9; // Договор
  cgFlViewPos_BaseDoc    = 10; // ДО
  cgFlViewPos_GroupOfp   = 11; // по группе финансовых обязательств
  cgFlViewPos_AktSum     = 12; // Сводное ФО
  cgFlViewPos_FactIspoln = 13; // Дата фактического исполнения
  cgFlViewPos_FpBudAn    = 14; // Аналитика
  cgFlViewPos_PlatMain   = 15; // платежное средство

  // позиции в фильтре RESWORD[15]
  cgFlViewPos_KatStroy   =  0; // объект строительства
  cgFlViewPos_DateForm   =  1; // направление движения средств
  cgFlViewPos_Archive    =  2; // учитывать архивный период
  // Отображение
  cgFlPos_DateForm       =  0; // дата формирования
  cgFlPos_PlanDate       =  1; // план. дата погашения
  cgFlPos_FactIsp        =  2; // факт. дата погашения
  cgFlPos_KatDoc         =  3; // тип
  cgFlPos_Status         =  4; // статус
  cgFlPos_Prior          =  5; // приоритет
  cgFlPos_TypePlat       =  6; // вид платежа
  cgFlPos_GroupOfp       =  7; // группа  ФОБ
  cgFlPos_AktSum         =  8; // сводное ФОБ
  cgFlPos_Persons        =  9; // куратор
  cgFlPos_Archive        = 10; // учитывать архив

  cgFlPos_KatOrg         =  0; // контрагент
  cgFlPos_BaseDoc        =  1; // ДО
  cgFlPos_Dogovor        =  2; // договор
  cgFlPos_KatStroy       =  3; // объект строительства
  cgFlPos_FpCO           =  4; // ЦО
  cgFlPos_FpStBud        =  5; // статья бюджета
  cgFlPos_FpBudAn        =  6; // аналитика
  cgFlPos_PlatMain       =  7; // платежное средство

  cgArchFl_WorkPeriod    =  0; // Рабочий период
//  cgArchFl_ArchivePeriod =  1; // Архивный период
  cgArchFl_AllPeriod     =  2; // Рабочий и архивный период

End;         
