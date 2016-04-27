//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Управление бюджетом"
// Интерфейс взаимодействия с модулем "Управление бюджетом"
//------------------------------------------------------------------------------

#ifndef __FpBudgetToMnPlan_Type_Included__
#define __FpBudgetToMnPlan_Type_Included__

#ifdef  ComponentVersion
#component "F_FpBudget"
#endif//ComponentVersion

// Структура "Код возврата функции/процедуры"
#undef   mMNPFP_AddRetInfo 
#declare mMNPFP_AddRetInfo(_varPrefix,varType) 
  #(_varPrefix)Value1   : #(varType);
  #(_varPrefix)Value2   : #(varType);
  #(_varPrefix)Value3   : #(varType);
  #(_varPrefix)Value4   : #(varType);
  #(_varPrefix)Value5   : #(varType);
  #(_varPrefix)Value6   : #(varType);
  #(_varPrefix)Value7   : #(varType);
  #(_varPrefix)Value8   : #(varType);
  #(_varPrefix)Value9   : #(varType);
  #(_varPrefix)Value10  : #(varType);
#end//   mMNPFP_AddRetInfo 

Type TReturnInfo = Record
  Code         : Word;               // код возврата
  Name         : String;             // наименование кода возврата
  #mMNPFP_AddRetInfo(w,   Word)      // расширение типа Word
  #mMNPFP_AddRetInfo(li,  LongInt)   // расширение типа LongInt
  #mMNPFP_AddRetInfo(dbl, Double)    // расширение типа Double
  #mMNPFP_AddRetInfo(d,   Date)      // расширение типа Date
  #mMNPFP_AddRetInfo(s,   String)    // расширение типа String
  #mMNPFP_AddRetInfo(c,   Comp)      // расширение типа Comp
End;
#undef   mMNPFP_AddRetInfo 

#endif //__FpBudgetToMnPlan_Type_Included__ 

