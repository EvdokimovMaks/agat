//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Управление бюджетом"
// Визуальный интерфейс: "Изменение текущего типа периода"
//------------------------------------------------------------------------------

#ifndef __FpChgTPer_Inc__
#define __FpChgTPer_Inc__

Const
  lc_Key_FpTP           = 'UPRFIN.FP.BASETPP';                    // Тип периода планирования бюджета                     
  lc_Key_FpPP           = 'UPRFIN.FP.TEKPP';                      // Текущий период планирования                          
  lc_Key_FpClosePP      = 'UPRFIN.FP.FPOBOROT.CLOSEPERIOD';       // Закрытый период по умолчанию до                      
  lc_Key_FpClosePPPlan  = 'UPRFIN.FP.FPOBOROT.CLOSEPLANPERIOD';   // Закрытый период по регистру "план" до                
  lc_Key_FpClosePPFact  = 'UPRFIN.FP.FPOBOROT.CLOSEFACTPERIOD';   // Закрытый период по регистру "факт" до                
  lc_Key_FpClosePPRezv  = 'UPRFIN.FP.FPOBOROT.CLOSEREZERVPERIOD'; // Закрытый период по регистру "резерв" до              
  lc_Key_FpClosePPBuhU  = 'UPRFIN.FP.FPOBOROT.CLOSEBUHPERIOD';    // Закрытый период по регистру "по данным бух.учета" до 
  lc_Key_PKTP           = 'UPRFIN.OFP.BUDGET.TPP';                // Тип периода бюджета ПК                               
end; // Const

Const
  lc_ChangeMode_IntUser =  0; // Изменять настройку только заданному пользователю
  lc_ChangeMode_AllUser =  1; // Изменять настройку ВСЕМ пользователям у она была установлена
  lc_ChangeMode_SysTune =  2; // Изменять системную настройку
end; // Const

// признак некорректности настройки пользователя
Const
  lc_UserTune_Correct   =  0; // Настройка установлена корректно
  lc_UserTune_Warning   =  1; // Настройка установлена НЕ корректно
end; // Const

// биты изменяемых настроек
Const
  lc_TuneBit_FpTP            =    1;  // Тип периода планирования бюджета                    
  lc_TuneBit_FpPP            =    2;  // Текущий период планирования                         
  lc_TuneBit_FpClosePP       =    4;  // Закрытый период по умолчанию до                     
  lc_TuneBit_FpClosePPPlan   =    8;  // Закрытый период по регистру "план" до               
  lc_TuneBit_FpClosePPFact   =   16;  // Закрытый период по регистру "факт" до               
  lc_TuneBit_FpClosePPRezv   =   32;  // Закрытый период по регистру "резерв" до             
  lc_TuneBit_FpClosePPBuhU   =   64;  // Закрытый период по регистру "по данным бух.учета" до
  lc_TuneBit_PKTP            =  128;  // Тип периода бюджета ПК                              
end; // Const

#endif//__FpChgTPer_Inc__
