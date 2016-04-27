//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - модуль "Управление бюджетом"
// Внешние функции : Массив статистических параметров
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function FpDynArr_Init          (LongInt)                  : LongInt; external 'FpStatisticArr.dll';
Function FpDynArr_Done          (LongInt)                  : Boolean; external 'FpStatisticArr.dll';
                                                      
Function FpDynArr_Clear         (LongInt)                  : Boolean; external 'FpStatisticArr.dll';
                               
Function FpDynArr_GetLength     (LongInt)                  : LongInt; external 'FpStatisticArr.dll';
Function FpDynArr_SetLength     (LongInt, LongInt)         : Boolean; external 'FpStatisticArr.dll';
                               
Function FpDynArr_GetValue      (LongInt, LongInt)         : Double;  external 'FpStatisticArr.dll';
Function FpDynArr_SetValue      (LongInt, LongInt, Double) : Boolean; external 'FpStatisticArr.dll';

Function FpDynArr_SetBoundValue (LongInt, LongInt, Double
                               , Double,  Double )         : Boolean; external 'FpStatisticArr.dll';

//------------------------------------------------------------------------------
Function FpDynArr_ClearSMA      (LongInt)                  : Boolean; external 'FpStatisticArr.dll'; 
                                                          
Function FpDynArr_GetSMALength  (LongInt)                  : LongInt; external 'FpStatisticArr.dll'; 
Function FpDynArr_SetSMALength  (LongInt, LongInt)         : Boolean; external 'FpStatisticArr.dll'; 
                                                          
Function FpDynArr_GetSMACode    (LongInt, LongInt)         : Word;    external 'FpStatisticArr.dll'; 
Function FpDynArr_GetSMAMean    (LongInt, LongInt)         : Comp;    external 'FpStatisticArr.dll'; 
Function FpDynArr_SetSMA        (LongInt, LongInt
                               , Word,    Comp   )         : Boolean; external 'FpStatisticArr.dll'; 

