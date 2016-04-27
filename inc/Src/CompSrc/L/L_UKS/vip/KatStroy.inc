//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.10 - Управление капитальными вложениями и строительством
// Константы для наборов сумм [ AddSumObj.coTable ]
//------------------------------------------------------------------------------

Const
  // Регистры учета
  cgRegUch_BU = 0;    // Бухгалтерский учет
  cgRegUch_NU = 8000; // Налоговый учет

  // Наборы сумм [ AddSumObj.coTable ]
  cgSum_Begin = coIerStroy; // Начальные
  cgSum_NoNal = coKatPlace; // Без налогов
  cgSum_Total = coKatStroy; // С учетом налогов и начальных значений

  cgSum_Begin_BU = word(cgSum_Begin + cgRegUch_BU);
  cgSum_NoNal_BU = word(cgSum_NoNal + cgRegUch_BU);
  cgSum_Total_BU = word(cgSum_Total + cgRegUch_BU);

  cgSum_Begin_NU = word(cgSum_Begin + cgRegUch_NU);
  cgSum_NoNal_NU = word(cgSum_NoNal + cgRegUch_NU);
  cgSum_Total_NU = word(cgSum_Total + cgRegUch_NU);

  // cgSum_Total := cgSum_Begin + cgSum_NoNal + налоги

  // Значения признака стройки [ KatStroy.LevelObj ]
  cgObj_Stroyka = 0; // Стройка
  cgObj_Object  = 1; // Объект строительства
  cgObj_Zatrat  = 2; // Объект сбора затрат

  // Номера вкладок в панели "ХХХ"
  cgFormat_Atrib  : byte = 1; // Атрибуты
  cgFormat_Name   : byte = 2; // Проектное наименование
  cgFormat_Summ   : byte = 3; // Суммы
  cgFormat_Descr  : byte = 4; // Описание
  cgFormat_Raspr  : byte = 5; // Схема распределения
  
  // Номера вкладок в панели "Суммы"
  cgFormat_Itogo  : byte = 1; // Итого
  cgFormat_Zatrat : byte = 2; // По статьям
  
  // Номера вкладок в панели "Суммы - Итого" и "Суммы - По статьям"
  cgFormat_Total  : byte = 1; // Всего
  cgFormat_NoNal  : byte = 2; // Без налогов
  cgFormat_Nalog  : byte = 3; // Налоги
  cgFormat_Begin  : byte = 4; // Начальные

End;
