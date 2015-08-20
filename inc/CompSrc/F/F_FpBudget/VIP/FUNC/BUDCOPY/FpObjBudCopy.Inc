//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - модуль "Управление бюджетом"
// Типы данных и константы объекта "Копирование бюджетов"
//------------------------------------------------------------------------------

#ifndef  __FpAdvBudCop_Inc__
#define  __FpAdvBudCop_Inc__

Type TFpBudCopyInit = record
  cIndToApply       : comp;    // ссылка на индекс
  cTFormToApply     : comp;    // на ТФ
  wTFormMode        : word;    // копировать все значения или только видимые   0 - все, 1 - только видимые
  wFixMode          : word;    // переносить ли фиксацию при копировании       0 - нет, 1 - да
  wFormulaFixMode   : word;    // фиксировать формулы или нет                  0 - нет, 1 - да
  wCopyMode         : word;    // 0 - копирование, 1 - агрегация, 2 - декомпозиция
end;

Type TFpBudCopyItem = record
  cBudget        : comp;       // бюджет
  cBudVar        : comp;       // копия бюджета
  wKodReg        : word;       // регистр
end;

Type TFpBudCopyStruct = record
  SRC               : TFpBudCopyItem; // бюджет источник
  DST               : TFpBudCopyItem; // бюджет приемник

  wDSTDelMode       : word;    // 0 - добавлять, 1 - замещать, 2 - очищать 

  cUniqIdForPeriod  : comp;    // ссылка по которой подвязана MT PeriodRelations
  PeriodRelationsID : LongInt; // дескриптор PeriodRelations
end;

Type TFpBudCopyAll = record
  rcBudCopyInit   : TFpBudCopyInit;
  rcBudCopyStruct : TFpBudCopyStruct
end;

#endif//__FpAdvBudCop_Inc__
