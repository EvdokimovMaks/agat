//**********************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Логистика
//  Интерфейс пакетной регистрации авансовых платежей (константы, макроопределения)
//**********************************************************************************

const
  // ограничения на платежные документы (настройка)
  cwfTipDoc   : Word = 1;
  cwfDatePlat : Word = 2;
  cwfDateTXO  : Word = 4;
  cwfDO       : Word = 8;
  cwfPlat     : Word = 16;
  cwfPol      : Word = 32;
  cwfStatus   : Word = 64;
  cwfDogovor  : Word = 128;
  cwfPlatCond : Word = 256;
  cwfGrDescr  : Word = 512;
  cwfVidPlat  : Word = 1024;

  cwfNoSfOnly          : Word = 1;
  cwfPlatCondDistr     : Word = 0;
  cwfPlatCondNoDistrDo : Word = 1;
  cwfPlatCondNoDistrSp : Word = 2;

  // Дополнительные параметры пакетного формирования (настройка)
  cwpRegSf         : Word = 1;
  cwpConfirmSf     : Word = 2;
  cwpProtocol      : Word = 4;
  cwpAvansNum      : Word = 8;
  cwpSvAvans       : Word = 16;
  cwpControlSvDate : Word = 32;
  cwpSvAvansDO     : Word = 64;

  // параметры пакетного формирования (настройка)
  cwValDoc   : Word = 0;
  cwValNDE   : Word = 1;
  cwValConf  : Word = 2;

  cwNalEnter : Word = 0;
  cwNalZero  : Word = 1;

  // Pick.wList
  cwPickLstPlatID   : Word = 881;
  cwPickLstPolID    : Word = 882;
  cwPickLstTipDocID : Word = 883;
  cwPickLstDogID    : Word = 884;
  cwPickLst_DO      : Word = 885;
  cwPickLst_VidPlat : Word = 886;

  // для протокола пакетного формирования
  TAB : Word = 5;

  PM_PL        : Word = 0;
  PM_SH        : Word = 1;
  PM_SFCRE     : Word = 2;
  PM_SFNCRE    : Word = 3;
  PM_SFEXS     : Word = 4;
  PM_BKREG     : Word = 5;
  PM_BKNREG    : Word = 6;
  PM_DELIM     : Word = 7;
  PM_ABORT     : Word = 8;
  PM_SFNoAddSH : Word = 9;
  PM_SFAddSH   : Word = 10;
  PM_RegSvSF   : Word = 11;
  PM_InfoSvSF  : Word = 12;

  // прочие константы
  cwUnusedDocType : Word = 999;
end;

// макроопределения

#define tuneName        UserDeskRep.RepName

#define stringAvansNum  UserDeskRep.ResName[1]

#define compBaseDoc     UserDeskRep.ResComp[1]
#define compKatOrgPlat  UserDeskRep.ResComp[2]
#define compKatOrgPol   UserDeskRep.ResComp[3]
#define compPlatStatus  UserDeskRep.ResComp[4]
#define compDogovor     UserDeskRep.ResComp[5]
#define compGrDescr     UserDeskRep.ResComp[6]

#define wordValParam    UserDeskRep.ResWord[1]
#define wordDopParams   UserDeskRep.ResWord[2]
#define wordNalParam    UserDeskRep.ResWord[3]
#define wordFilterParam UserDeskRep.ResWord[6]
#define wordViewParam   UserDeskRep.ResWord[7]
#define multiKatOrgPlat UserDeskRep.ResWord[8]
#define multiKatOrgPol  UserDeskRep.ResWord[9]
#define wordTipDoc      UserDeskRep.ResWord[10]
#define multiTipDoc     UserDeskRep.ResWord[11]
#define wordOpenHier    UserDeskRep.ResWord[12]
#define multiDogovor    UserDeskRep.ResWord[13]
#define wordPlatCond    UserDeskRep.ResWord[14]
#define modeDateFactSF  UserDeskRep.ResWord[15]
#define multiBaseDoc    UserDeskRep.ResWord[16]

#define cVidPlat_One    UserDeskRep.ResComp[7]
#define wVidPlat_Multi  UserDeskRep.ResWord[17]

#define wTypeSF         UserDeskRep.ResWord[18]
#define wTidkSchet      UserDeskRep.ResWord[19]
#define cSchet          UserDeskRep.ResComp[8]

#define DatePlatBeg     UserDeskRep.ResDate[1]
#define DatePlatEnd     UserDeskRep.ResDate[2]
#define DateTXOBeg      UserDeskRep.ResDate[3]
#define DateTXOEnd      UserDeskRep.ResDate[4]
#define DateFactSF      UserDeskRep.ResDate[5]

#define PlatDoc_Count 23
#declare initArrayTipDoc(arr_)
  #arr_[1]  := 1;    // собственные платежные поручения
  #arr_[2]  := 2;    // сторонние платежные поручения
  #arr_[3]  := 31;   // собственные валютные платежные поручения
  #arr_[4]  := 33;   // сторонние валютные платежные поручения
  #arr_[5]  := 5;    // собственные заявления на отказ от акцепта
  #arr_[6]  := 1005; // сторонние заявления на отказ от акцепта
  #arr_[7]  := 32;   // собственные платежные требования
  #arr_[8]  := 1032; // сторонние платежные требования
  #arr_[9]  := 11;   // собственные платежные требования-поручения
  #arr_[10] := 1011; // сторонние платежные требования-поручения
  #arr_[11] := 3;    // инкассовые поручения
  #arr_[12] := 6;    // реестры чеков
  #arr_[13] := 4;    // собственные заявления на аккредитив
  #arr_[14] := 1004; // сторонние заявления на аккредитив
  #arr_[15] := 30;   // собственные реестры счетов
  #arr_[16] := 1030; // сторонние реестры счетов
  #arr_[17] := 10;   // бухгалтерские справки
  #arr_[18] := 21;   // исходящие извещения (авизо)
  #arr_[19] := 22;   // входящие извещения (авизо)
  #arr_[20] := 7;    // приходный кассовый ордер
  #arr_[21] := 8;    // расходный кассовый ордер
  #arr_[22] := 17;   // валютный приходный кассовый ордер
  #arr_[23] := 18;   // валютный расходный кассовый ордер
#end
