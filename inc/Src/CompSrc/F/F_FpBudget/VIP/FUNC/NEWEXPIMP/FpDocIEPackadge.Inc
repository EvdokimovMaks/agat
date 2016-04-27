//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Управление бюджетом"
// Базовый обьект: "Протокол Импорта/Экспорта"
//------------------------------------------------------------------------------

#ifndef __FpDocIEPackadge_Inc__
#define __FpDocIEPackadge_Inc__

Const
  cgFpDocImp_TiDk = 480;
  cgFpDocExp_TiDk = 481;
end;

Const
  cgFpDocIEPackadgeState_Er = 0;
  cgFpDocIEPackadgeState_Ok = 1;

  // установка приоритетов EMail
  #include EMail.inc          // "внешние" константы
  lcFpDocEMailPriority_Normal  = 0;
  lcFpDocEMailPriority_High    = 1;
  lcFpDocEMailPriority_Low     = 2;
end;

#endif//__FpDocIEPackadge_Inc__
