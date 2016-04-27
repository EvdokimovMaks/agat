//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Управление бюджетом"
// Базовый объект : "Вычисление статистических алгоритмов"
//------------------------------------------------------------------------------
                                            
#ifndef __FpCulStatAlg_Inc__
#define __FpCulStatAlg_Inc__

#define __FpExtended_lcFpAlgMaxColCount__

#ifdef  mlc_FpAlgMaxSMACount
#undef  mlc_FpAlgMaxSMACount
#endif//mlc_FpAlgMaxSMACount
#define mlc_FpAlgMaxSMACount 10

#ifdef  mlc_FpAlgMaxColCount
#undef  mlc_FpAlgMaxColCount
#endif//mlc_FpAlgMaxColCount
#ifndef __FpExtended_lcFpAlgMaxColCount__
#define mlc_FpAlgMaxColCount 10
#else //__FpExtended_lcFpAlgMaxColCount__
#define mlc_FpAlgMaxColCount 25
#endif//__FpExtended_lcFpAlgMaxColCount__

Const
  lcFpAlgMaxSMACount  =  #mlc_FpAlgMaxSMACount;
  lcFpAlgMaxColCount  =  #mlc_FpAlgMaxColCount;
end;

Const
  lcFpCulAlg_IsIncBit =  1;
  lcFpCulAlg_IsAddBit =  2;
  lcFpCulAlg_IsDimBit =  4;
  lcFpCulAlg_IsDebBit =  8;
  lcFpCulAlg_IsNFNBit = 16;
end;

#endif//__FpCulStatAlg_Inc__
