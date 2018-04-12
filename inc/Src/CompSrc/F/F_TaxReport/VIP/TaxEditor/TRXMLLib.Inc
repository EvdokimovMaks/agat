//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.1 - модуль "Электронная отчетность"
// Сервисная библиотека : "Работа с XML"
//------------------------------------------------------------------------------

#ifndef __TRXMLLib_Inc__
#define __TRXMLLib_Inc__

const
  // типы процессора XSD проверки
  lc_XSDProcType_Not    = 0;  // не определен
  lc_XSDProcType_MSXML  = 1;  // MSXML
  lc_XSDProcType_FNSRU  = 2;  // ФНС РФ
  lc_XSDProcType_TESTER = 3;  // Tester
end;

const
  lc_sGalFNSFileName = 'GalFNS.exe';  // имя файла Галактического процессора проверки
  lc_sTesterFileName = 'tester.exe';  // имя файла Tester
end;

const
  lc_Pref_MSXML = 'XSD';  // префикс сообщений для проверки с использованием Галактического процессора проверки (по XSD)
  lc_Pref_FNSRU = 'ФНС';  // префикс сообщений для проверки с использованием ФНС РФ
end;

#endif//__TRXMLLib_Inc__
