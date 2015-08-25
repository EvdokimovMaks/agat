//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.10 - модуль "Платежный календарь"
// Таблица : "Константы настроек БДДС"
//------------------------------------------------------------------------------

#ifndef __CashFlow_Settings_Constants_Inc__
#define __CashFlow_Settings_Constants_Inc__

const

  // Выводить ПС
  lc_CashFlow_ShowMeans_NotShow     = 0; // Не выводить
  lc_CashFlow_ShowMeans_ShowAll     = 1; // Выводить все
  lc_CashFlow_ShowMeans_Default     = 2; // Значение из общих настроек

  // Настройки для Excel отчета
  lc_CashFlow_Report_RepID   = 'F_OFP\OfpRepCashFlow'; // Идентификатор отчета
  lc_CashFlow_Report_Indent  = 2;                      // Отступ для нового уровня

  // Наименование переменных отчета
  lc_CashFlow_VarNames_ReportName     = 'Заголовок';
  lc_CashFlow_VarNames_ReportDate     = 'Дата_Отчета';
  lc_CashFlow_VarNames_IsFact         = 'Выводить_факт';
  lc_CashFlow_VarNames_IsPrediction   = 'Выводить_прогноз';
  lc_CashFlow_VarNames_IsPlan         = 'Выводить_план';


  // Наименования таблиц отчета
  lc_CashFlow_TblNames_BeginOfName    = 'Заголовок_День_';
  lc_CashFlow_TblNames_BeginRemainder = 'Нач_Остаток';
  lc_CashFlow_TblNames_Earnings       = 'Поступления';
  lc_CashFlow_TblNames_Expenditure    = 'Выбытия';
  lc_CashFlow_TblNames_CashFlow       = 'Поток';
  lc_CashFlow_TblNames_EndRemainder   = 'Кон_Остаток';

  // Наименования колонок таблиц
  lc_CashFlow_TblCols_Name       = '_Название';
  lc_CashFlow_TblCols_Plan       = '_План';
  lc_CashFlow_TblCols_Fact       = '_Факт';
  lc_CashFlow_TblCols_Prediction = '_Прогноз';
  lc_CashFlow_TblCols_Deviation  = '_Отклонение';
  lc_CashFlow_TblCols_DaySum     = '_День_';

  lc_CashFlow_TblCols_MainAgr    = '_Главный_Агрегат';
  lc_CashFlow_TblCols_IsLeaf     = '_Лист';
  lc_CashFlow_TblCols_LevelType  = '_Тип_Записи';

  // Тип записи в отчете
  lc_CashFlow_RecordType_MainAgregate = 0; // Главный агрегат
  lc_CashFlow_RecordType_StBud        = 1; // Статья бюджетов
  lc_CashFlow_RecordType_Analitics    = 2; // Аналитика
  lc_CashFlow_RecordType_CO           = 3; // Центр ответственности

  // Константы для проверки XLT отчета
  lc_CashFlow_XLT_2003Name       = '.XLT'; // Расширение файла для отчета Excel 2003
  lc_CashFlow_XLT_MaxColumnCount = 250   ; // Максимальное количество колонок для шаблона Excel 2003

end;

#endif // __CashFlow_Settings_Constants_Inc__
