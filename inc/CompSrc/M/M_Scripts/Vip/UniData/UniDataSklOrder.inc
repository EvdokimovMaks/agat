const

  // Строчки
  reSklOrderDescr     = 0001;  // "дескриптор к номеру документа",
  reSklOrderDesGr     = 0002;  // "код группы пользователей",
  reSklOrdernOrder    = 0003;  // : s20           "номер ордера",





  // признаки всякие
  reSklOrderSP        = 1101;  // Word  "склад/производство", 0-склад 1-производство
  reSklOrderVidOrder  = 1102;  // Word  "0 - приходный, 1 - расходный",
  reSklOrderTipOrd    = 1103;  // Word  "тип ордера", // 1 - внешние накладные 2 - производство 3 - внутреннее перемещение

  reSklOrderdOrd      = 1201;  // Date  "дата ордера",

  reSklOrderYearOrd   = 1251;  // Word  "год даты ордера",

  reSklOrdercSopr     = 1301;
  reSklOrdercRzDoc    = 1302;
  reSklOrdercPodr     = 1303;
  reSklOrdercMol      = 1304;
  reSklOrdercGrPodr   = 1305;
  reSklOrdercHozOper  = 1306;

  reSkSklOrderSP       = 1401;
  rePrSklOrderSP       = 1402;
  rePrSklOrderVidOrder = 1403;
  reRaSklOrderVidOrder = 1404;


  reNoBound            = 3000;

  reToKatSopr          = 3001;

  rePl                 = 3002;
  rePlPodr             = 3003;
  rePlMol              = 3004;
  rePlPodrMol          = 3005;

  reKatSoprParam       = 4001;
  rePodrParam          = 4003;
  reMolParam           = 4004;

  rePlaceParam         = 4011;
  reSkPlaceParam       = 4012;

  reTipOrderConst     = 5001;
end

