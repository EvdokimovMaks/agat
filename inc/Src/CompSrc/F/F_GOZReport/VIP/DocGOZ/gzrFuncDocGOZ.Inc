//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Электронная отчетность ГОЗ"
// Библиотека функций : "Документы ГОЗ"
//------------------------------------------------------------------------------

#ifndef __gzrFuncDocGOZ_Inc__
#define __gzrFuncDocGOZ_Inc__

const
  // виды Договоров
  lc_GKDog_VidDogGOZ     : word = vd_20;  // вид Договора "исполнение госзаказа"

  // биты режимов фильтрации Договоров
  lc_GKDog_FltBit_Kontr1 : word = 16;  // фильтр по контрагенту 1
  /*
  if ( (optView AND     1) <> 0 ) FTitle += if(FTitle <> '', ', ','') + 'дате заключения';
  if ( (optView AND     2) <> 0 ) FTitle += if(FTitle <> '', ', ','') + 'дескриптору';
  if ( (optView AND     4) <> 0 ) FTitle += if(FTitle <> '', ', ','') + 'группе пользователей';
  if ( (optView AND     8) <> 0 ) FTitle += if(FTitle <> '', ', ','') + 'виду договора';
  if ( (optView AND    16) <> 0 ) FTitle += if(FTitle <> '', ', ','') + 'контрагенту 1';
  if ( (optView AND    32) <> 0 ) FTitle += if(FTitle <> '', ', ','') + 'контрагенту 2';
  if ( (optView AND    64) <> 0 ) FTitle += if(FTitle <> '', ', ','') + 'статусу договоров';
  if ( (optView AND   128) <> 0 ) FTitle += if(FTitle <> '', ', ','') + 'статусу соглашений';
  if ( (optView AND   256) <> 0 ) FTitle += if(FTitle <> '', ', ','') + 'назначению';
  if ( (optView AND   512) <> 0 ) FTitle += if(FTitle <> '', ', ','') + 'ЦО договора/соглашения';
  if ( (optView AND  1024) <> 0 ) FTitle += if(FTitle <> '', ', ','') + 'спецификации с ЦО';
  if ( (optView AND  2048) <> 0 ) FTitle += if(FTitle <> '', ', ','') + 'группе договоров';
  if ( (optView AND  4096) <> 0 ) FTitle += if(FTitle <> '', ', ','') + 'типу договора';
  if ( (optView AND  8192) <> 0 ) FTitle += if(FTitle <> '', ', ','') + 'направлению договора';
  if ( (optView AND 16384) <> 0 ) FTitle += if(FTitle <> '', ', ','') + 'заказу НИОКР';
  if ( (optView AND 32768) <> 0 ) FTitle += if(FTitle <> '', ', ','') + 'курирующему подразделению';
  */

end; // const

#endif//__gzrFuncDocGOZ_Inc__
