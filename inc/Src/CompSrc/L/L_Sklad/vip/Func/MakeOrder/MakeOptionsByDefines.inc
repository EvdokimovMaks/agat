#ifndef __MAKEOPTIONSBYDEFINES_INC__
#define __MAKEOPTIONSBYDEFINES_INC__

// Возможные значения параметра wParam

// Используется совместно с MakeOptionsByDefines.vpp либо для анализа сформированных процедурой
// MakeOptionsByDefines параметров.
const
  // Маски для wParam
  // Имена константам дал в точности соответствующие дефайнам, только с суффиксом _DEFINED
  // Циферные значения уже описанных здесь констант настоятельно не рекомендую менять, т.к. их значения
  // уже изрядно успели зашить в различные исходники.
  SMETAKOLADD_DEFINED   = 1;
  _USE_SERIAL__DEFINED  = 2;
  G_L_PR_VPP_DEFINED    = 4;
  _BOXNEEDAUTO_DEFINED  = 8;
  _PRIHOD__DEFINED      = 16;
  __PAKET_VIP___DEFINED = 32;
  _RETTARA__DEFINED     = 64;
  _s2o__DEFINED         = 128; // последний бит !
end;
#end
