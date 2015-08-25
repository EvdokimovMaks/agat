//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 8.10 - Бухгалтерский контур
// Распределение платежных документов с учетом рекламации и возвратов платежей
//******************************************************************************

#ifndef _DISTRACTREC_INC
#define _DISTRACTREC_INC

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

  CW_OTHER_NOTHING       = 0;  // Ничего не установлено
  CW_OTHER_DO_WHITH_NAKL = 1;  // Учитывать только ДО с накладными/актами
  CW_OTHER_NO_DISTR_PLAT = 2;  // Учитывать неоплаченные платежи при расчете сумм
  CW_OTHER_BALANS_PRE_DO = 4;  // Учитывать в балансе распределение по предоплате
  CW_OTHER_SAVE_LINK_DOG = 8;  // При отмене распределения сохранять ссылку на договор
  CW_OTHER_SHOW_ERR_PROT = 16; // Выводить ошибки в протокол

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
  CW_DISTR_BY_DO      = 0;
  CW_DISTR_BY_NAKL    = 1;
  CW_DISTR_BY_AKTREL  = 2;

  // константы видимости ДО
  cnViewDOMain        = 0; // ДО загруженные по фильтру
  cnViewDOSub         = 1; // ДО подгружанные для накладных

  //константы типов записей
  cwTypeNakl   = 0;        // накладные/акты
  cwTypeRekl   = 1;        // рекламация
  cwTypeReturn = 2;        // возврат

end;


#end //_DISTRACTREC_INC
