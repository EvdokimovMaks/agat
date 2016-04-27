//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - модуль "Управление бюджетом"
// Внешние функции расчета статистических величин
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function    FpStat_Count  (LongInt)          : LongInt; external 'FpStatisticAlg.dll';
Function    FpStat_Sum    (LongInt)          : double;  external 'FpStatisticAlg.dll';
Function    FpStat_Avg    (LongInt)          : double;  external 'FpStatisticAlg.dll';
                                            
Function    FpStat_Var    (LongInt)          : double;  external 'FpStatisticAlg.dll';
Function    FpStat_VarP   (LongInt)          : double;  external 'FpStatisticAlg.dll';
                                            
Function    FpStat_StDev  (LongInt)          : double;  external 'FpStatisticAlg.dll';
Function    FpStat_StDevP (LongInt)          : double;  external 'FpStatisticAlg.dll';
                                            
Function    FpStat_First  (LongInt)          : double;  external 'FpStatisticAlg.dll';
Function    FpStat_Last   (LongInt)          : double;  external 'FpStatisticAlg.dll';
Function    FpStat_Item   (LongInt, LongInt) : double;  external 'FpStatisticAlg.dll';

Function    FpStat_Min    (LongInt)          : double;  external 'FpStatisticAlg.dll';
Function    FpStat_Max    (LongInt)          : double;  external 'FpStatisticAlg.dll';
                                           
