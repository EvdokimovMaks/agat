//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 8.1 - Логистика
// Основные константы для работы с документами для учета НДС (Беларусь)
//******************************************************************************

const
  FLT_DATE           = 0001h;
  FLT_STATUS         = 0002h;
  FLT_AGENT          = 0004h;
  FLT_DOC            = 0008h;
  FLT_DOC_TYPE       = 0010h;
  FLT_OTV_PODR       = 0020h;
  FLT_STATUS_INVOICE = 0040h;
  FLT_DESCR          = 0080h;
  FLT_DESGR          = 0100h;
  FLT_INVDOC         = 0200h;

  FLT_ALL            = 03ffh;

  ID_FILT_BKPR : word = 65501;
  ID_FILT_BKZK : word = 65502;
  ID_FILT_JBUY : word = 65503;
  ID_FILT_JSELL: word = 65504;
  ID_FILT_AVREG: word = 65505;
  ID_FILT_UKS  : word = 65506;
  ID_FILT_EXPSF: word = 65507;
  ID_REESTR_UKS: word = 65508;
  ID_DELAYEDUKS_REG: word = 65509;
  ID_DELAYEDUKS_STORNO: word = 65510;
  ID_FILT_EXPSF_BEL : Word = 65511;

  csMask_NumESF : string = '999999999\-9999\-9999999999';
end;
