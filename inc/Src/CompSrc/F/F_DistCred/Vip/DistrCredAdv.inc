//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 8.10 - Бухгалтерский контур
// Зачет авансовых платежей
//******************************************************************************

#ifndef __DISTRCREDADV_INC
#define __DISTRCREDADV_INC

const
  // Режимы открытия окна настроек (какая закладка в момент открытия активна)
  CW_OPEN_COMMON_SETTINGS = 1;
  CW_OPEN_FILTER_SETTINGS = 2;

  // константы режима распределения документов
  CW_DO_NOT_DISTR = 0;
  CW_DO_DISTR_STEPBYSTEP        = 1;
  CW_DO_DISTR_PRORATE           = 2;
  CW_DO_DISTR_PRIORITY          = 3;

  CW_DO_LINK_TO_DOGOVOR    = 1;
  CW_DO_LINK_TO_BASEDOC    = 2;
  CW_DO_DISTR_SUMM         = 4;

  CW_AUTO_REGISTER_SCHETFACT = 8;


  CW_MODE_1 = 1;
  CW_MODE_2 = 2;
  CW_MODE_3 = 3;
  CW_MODE_4 = 4;



  cnPickType      = 580;
  cnPickOrg       = 581;
  cnPickSpSopr    = 582;
  cnSpSoprIRazn   = 583;
  cnSpSoprIARazn  = 584;
  cnPickBaseFin   = 585;
  cnPickBaseDoc   = 586;
  cnPickKatSopr   = 587;
  cnPickDogovor   = 588;

  // константы типа распределения
  CW_DISTR_BY_DOGOVOR = 0;
  CW_DISTR_BY_DO      = 1;
  CW_DISTR_BY_NAKL    = 2;

  // константы видимости ДО
  cnViewDOMain        = 0; // ДО загруженные по фильтру
  cnViewDOSub         = 1; // ДО подгружанные для накладных

  // константы ошибок при выполнении зачета авансов
  CW_CREDADV_NORMAL   = 0; // зачет прошел успешно
  CW_CREDADV_MANYFPKP = 1; // несколько авансовых финансовых ПКП
  CW_CREDADV_NODO     = 2; // по накладной нет ДО

end;

#end //__DISTRCREDADV_INC
