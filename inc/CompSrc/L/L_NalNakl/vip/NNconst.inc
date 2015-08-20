//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 8.1 - Логистика
// Констансты для компоненты L_NalNakl
//******************************************************************************

#ifNdef __NNCONST_INC__
#define __NNCONST_INC__

const
  // Снабжение, записи реестра,
  // метод учета покупка МЦ (услуг) с целью использования в рамках хозяйственной деятельности
  cwBK_Buy_Method_HozD : Word = 1;

  // Константы для значений настройки Автоконтроль первого из событий - отгрузка/платеж
  cwAvtoControl_No         : Word = 0;
  cwAvtoControl_Yes        : Word = 1;
  cwAvtoControl_NotPlatNDS : Word = 2;

  // Константы для значений типов налога
  cwNal_StavMain  : Word = 1;
  cwNal_StavDop   : Word = 2;
  cwNal_StavExp   : Word = 3;
  cwNal_NoNDS     : Word = 4;
  cwNal_NoNDSObj  : Word = 5;
  cwNal_Tara      : Word = 6;
  cwNal_StavMedic : Word = 7;

  // Константы для определения, какие НН надо сформировать по первичному документу
  cwNN_WithNDS  : Word = 1;  // НН с НДС, обычный
  cwNN_NoNDS    : Word = 2;  // НН без НДС
  cwNN_MedicNDS : Word = 4;  // НН с НДС 7%
end;

#end // __NNCONST_INC__
