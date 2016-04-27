//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Управление бюджетом"
// Базовый объект : "Копирования бюджетов"
//------------------------------------------------------------------------------

#ifndef  __FpAdvBudCop_Inc__
#define  __FpAdvBudCop_Inc__

const
  //----------------------------------------------------------------------------
  lc_MaxRecDeltaCash : LongInt = 100000;

  //----------------------------------------------------------------------------
  // Type TFpBudCopyInit
  // копировать все значения или только видимые
  lc_TFpBudCopyInit_TFormMode_All      : word = 0;  // копировать все значения
  lc_TFpBudCopyInit_TFormMode_Vis      : word = 1;  // копировать только видимые значения

  // переносить ли фиксацию при копировании
  lc_TFpBudCopyInit_FixMode_Not        : word = 0;  // нет
  lc_TFpBudCopyInit_FixMode_Yes        : word = 1;  // да

  // фиксировать формулы или нет
  lc_TFpBudCopyInit_FormulaFixMode_Not : word = 0;  // да
  lc_TFpBudCopyInit_FormulaFixMode_Yes : word = 0;  // нет

  // режим копирования
  lc_TFpBudCopyInit_CopyMode_Copy      : word = 0;  // копирование
  lc_TFpBudCopyInit_CopyMode_Agr       : word = 1;  // агрегация
  lc_TFpBudCopyInit_CopyMode_Dec       : word = 2;  // декомпозиция
  // Type TFpBudCopyInit
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  // Type TFpBudCopyStruct = record
  // режим удаления в приемнике
  lc_TFpBudCopyStruct_DSTDelMode_Add   : word = 0;  // добавлять
  lc_TFpBudCopyStruct_DSTDelMode_Rpl   : word = 1;  // замещать прежние значения
  lc_TFpBudCopyStruct_DSTDelMode_Clr   : word = 2;  // очищать все данные
  //----------------------------------------------------------------------------

end; // const

#endif//__FpAdvBudCop_Inc__
