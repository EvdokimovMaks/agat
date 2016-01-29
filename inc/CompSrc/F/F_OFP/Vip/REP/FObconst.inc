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
  cgFlViewPos_Descr      =  3; // дескриптор
  cgFlViewPos_DesGr      =  4; // группа дескрипторов
  // Отображение
  cgFlPos_Descr          =  0; // дескриптор
  cgFlPos_DesGr          =  1; // группа дескрипторов
  cgFlPos_DateForm       =  2; // дата формирования
  cgFlPos_PlanDate       =  3; // план. дата погашения
  cgFlPos_FactIsp        =  4; // факт. дата погашения
  cgFlPos_KatDoc         =  5; // тип
  cgFlPos_Status         =  6; // статус
  cgFlPos_Prior          =  7; // приоритет
  cgFlPos_TypePlat       =  8; // вид платежа
  cgFlPos_GroupOfp       =  9; // группа  ФОБ
  cgFlPos_AktSum         = 10; // сводное ФОБ
  cgFlPos_Archive        = 11; // учитывать архив

  cgFlPos_PlatMain       =  0; // платежное средство
  cgFlPos_KatOrg         =  1; // контрагент
  cgFlPos_BaseDoc        =  2; // ДО
  cgFlPos_Dogovor        =  3; // договор
  cgFlPos_KatStroy       =  4; // объект строительства
  cgFlPos_Persons        =  5; // куратор
  cgFlPos_FpCO           =  6; // ЦО
  cgFlPos_FpStBud        =  7; // статья бюджета
  cgFlPos_FpBudAn        =  8; // аналитика

  cgArchFl_WorkPeriod    =  0; // Рабочий период
//  cgArchFl_ArchivePeriod =  1; // Архивный период
  cgArchFl_AllPeriod     =  2; // Рабочий и архивный период

End;         
