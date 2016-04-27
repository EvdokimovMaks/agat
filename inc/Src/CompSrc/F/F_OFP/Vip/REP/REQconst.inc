//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.10 - модуль "Платежный календарь"
// Константы ОФП ( реестр заявок )
//------------------------------------------------------------------------------

Const

  // позиции в фильтре RESWORD[1]
  cgFlViewPos_PlanDate =  0; // планируемый период оплаты
  cgFlViewPos_KatDoc   =  1; // тип заявки
  cgFlViewPos_Status   =  2; // статус
  cgFlViewPos_Prior    =  3; // приоритет
  cgFlViewPos_KatOrg   =  4; // контрагент
  cgFlViewPos_FpStBud  =  5; // статья бюджета
  cgFlViewPos_FpCO     =  6; // ЦО
  cgFlViewPos_Persons  =  7; // куратор
  cgFlViewPos_Modul    =  8; // модуль
  cgFlViewPos_FpBudAn  =  9; // Аналитика
  cgFlViewPos_FobDate  = 10; // Планируемая дата погашения
  cgFlViewPos_DateForm = 11; // Дата формирования
  cgFlViewPos_Dogovor  = 12; // Договор
  cgFlViewPos_BaseDoc  = 13; // ДО
  cgFlViewPos_KatStroy = 14; // Объект строительства
  // позиции в фильтре RESWORD[15]
  cgFlViewPos_Descr    =  0; // дескриптор
  cgFlViewPos_DesGr    =  1; // группа дескрипторов
  cgFlViewPos_PlatMain =  2; // платежное средство
  // Отображение
  cgFlPos_Descr        =  0; // дескриптор
  cgFlPos_DesGr        =  1; // группа дескрипторов
  cgFlPos_DateForm     =  2; // Дата формирования
  cgFlPos_PlanDate     =  3; // планируемый период оплаты
  cgFlPos_FobDate      =  4; // Планируемая дата погашения
  cgFlPos_KatDoc       =  5; // тип заявки
  cgFlPos_Status       =  6; // статус
  cgFlPos_Prior        =  7; // приоритет
  cgFlPos_Modul        =  8; // модуль

  cgFlPos_PlatMain     =  0; // платежное средство
  cgFlPos_KatOrg       =  1; // контрагент
  cgFlPos_BaseDoc      =  2; // ДО
  cgFlPos_Dogovor      =  3; // Договор
  cgFlPos_KatStroy     =  4; // Объект строительства
  cgFlPos_Persons      =  5; // куратор
  cgFlPos_FpCO         =  6; // ЦО
  cgFlPos_FpStBud      =  7; // статья бюджета
  cgFlPos_FpBudAn      =  8; // Аналитика
End;
