//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.10 - Целевой учет запасов
// Константы для целевого учета запасов
//------------------------------------------------------------------------------


Const
  // Константа для вычисления значения поля SaldoRaz.wMode (SaldoObj.wMode)
  // по формуле SaldoRaz.wMode = ((wVidUch + 1) * cgMode_VidUch), где wVidUch - код вида учета (SpOrder.SP)
  cgMode_VidUch     = 100;

  cgSelReport       = 00100000b; // отчет Складские остатки по аналитикам
  cgDSQLSelReport   = 01000000b; // формирование отчета с помощью DSQL
  cgRazrezCU        = 10000000b; // выгрузка свободных остатков, хранящихся в SaldoObj

  // Константа предназначенная для разделения шаблонов актов ИЦН от настроек значений аналитик ЦУ по умолчанию (поле MaskICN.wList)
  cgDeffSaldTune    = 2;

  // Константы для поля SaldTune.wAttr
  cgSpis_Tune       = 0; // по настройке
  cgSpis_Enable     = 1; // разрешать без наличия
  cgSpis_Disable    = 2; // запрещать без наличия
  cgSpis_NoNalOst   = 3; // без наличия -> из свободных остатков
  cgSpis_NoNalCU    = 4; // без наличия -> из ЦУ для списания
  cgSpis_NoNalCUOst = 5; // без наличия -> из ЦУ для списания / свободных остатков
  cgNotToCU         = 6; // не вести учет в сальдовых остатках
  cgSpis_DisableTek = 7; // запрещать без наличия и текущих остатков

  // Константы для настройки "Списание МЦ по разрезам объектов ЦУ"
  cgSpisTune_Enable     = cgSpis_Enable     - 1; // разрешать без наличия
  cgSpisTune_Disable    = cgSpis_Disable    - 1; // запрещать без наличия
  cgSpisTune_NoNalOst   = cgSpis_NoNalOst   - 1; // без наличия -> из свободных остатков
  cgSpisTune_NoNalCU    = cgSpis_NoNalCU    - 1; // без наличия -> из ЦУ для списания
  cgSpisTune_NoNalCUOst = cgSpis_NoNalCUOst - 1; // без наличия -> из ЦУ для списания / свободных остатков
  cgSpisTune_DisableTek = cgSpis_DisableTek - 2; // запрещать без наличия и текущих остатков

End;

// Формула для вычисления значения поля SaldoRaz.wMode по значению кода вида учета
#declare ModeByVidUch(VidUch)
  word((#VidUch + 1) * cgMode_VidUch)
#end
