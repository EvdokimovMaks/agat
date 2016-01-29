//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - модуль "Платежный календарь"
// Константы ОФП ( ПК )                                       умолч
//------------------------------------------------------------------------------

Const
  // позиции в фильтре RESWORD[1]
  cgFlViewPos_Date      =  0; // дата
  cgFlViewPos_KatDoc    =  1; // тип
  cgFlViewPos_Direct    =  2; // направление
  cgFlViewPos_Prior     =  3; // приоритет
  cgFlViewPos_FObStatus =  4; // статус ФОП
  cgFlViewPos_FOpStatus =  5; // статус ФОП
  cgFlViewPos_KatOrg    =  6; // по контрагенту
  cgFlViewPos_FpStBud   =  7; // по статье бюджета
  cgFlViewPos_FpCO      =  8; // по центру учета
  cgFlViewPos_Persons   =  9; // куратор
  cgFlViewPos_GroupOfp  = 10; // по группе финансовых обязательств
  cgFlViewPos_TypePlat  = 11; // по виду платежа
  cgFlViewPos_FpBudAn   = 12; // аналитика
  cgFlViewPos_PlatMain  = 13; // платежное средство
  cgFlViewPos_Ispoln    = 14; // Исполнение

  // Отображение
  cgFlPos_Date      =  0; // дата
  cgFlPos_Prior     =  1; // приоритет
  cgFlPos_FObStatus =  2; // статус ФОБ
  cgFlPos_FOpStatus =  3; // статус ФОП
  cgFlPos_KatDoc    =  4; // тип
  cgFlPos_Direct    =  5; // направление
  cgFlPos_Ispoln    =  6; // наличие исполнения
  cgFlPos_TypePlat  =  7; // вид платежа
  cgFlPos_GroupOfp  =  8; // группа  ФОБ

  cgFlPos_PlatMain  =  0; // платежное средство
  cgFlPos_KatOrg    =  1; // контрагент
  cgFlPos_Persons   =  2; // куратор
  cgFlPos_FpCO      =  3; // ЦО
  cgFlPos_FpStBud   =  4; // статья бюджета
  cgFlPos_FpBudAn   =  5; // аналитика
End;
