//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Электронная отчетность РБ"
// Табличный объект : "Структура отчета"
//------------------------------------------------------------------------------

#ifndef __TRBTablRepStruct_Inc__
#define __TRBTablRepStruct_Inc__

const
  // Null значение
  lc_NullValue : string = '';

  // типы значений
  lc_ValueTypeString  : word = 0;  // строка
  lc_ValueTypeNumber  : word = 1;  // число
  lc_ValueTypeDate    : word = 2;  // дата
  lc_ValueTypeBoolean : word = 3;  // логический (да/нет)

  // формат даты по умолчанию
  lc_DefaultDateFormat = 'YYYY-MM-DD+03:00';// 'DD.MM.YYYY'

  // способ модификации поля
  lc_ModifyOwner_Def : word = 0;  // по умолчанию
  lc_ModifyOwner_Usr : word = 1;  // пользователь
  lc_ModifyOwner_Alg : word = 2;  // алгоритм
  lc_ModifyOwner_Frm : word = 3;  // формула

  // обязательность заполнения поля
  lc_NeedMode_NotRequired    : word = 0;  // не обязательное
  lc_NeedMode_StrongRequired : word = 1;  // обязательное

  // наименование поля со значением текстовой вершины
  lc_StructTextValueFieldName = 'Value';

end; // const

#endif//__TRBTablRepStruct_Inc__
