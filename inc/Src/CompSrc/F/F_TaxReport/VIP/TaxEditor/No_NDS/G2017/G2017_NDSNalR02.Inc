//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.1 - модуль "Электронная отчетность"
// Библиотека функций : "Формирование Раздела 2 Декларации по НДС"
//------------------------------------------------------------------------------

#ifndef __G2017_NDSNalR02_Inc__
#define __G2017_NDSNalR02_Inc__

// явно не используются, т.к. там кроме констант еще и функции и т.п.
//#include sfconst.Inc          // основные константы и функции СФ
const
  // типы записей регистрации (аналог sfconst.Inc)
  cwTypeBK_Sell_Reg_NalAgent       : Word = 7418;  // Регистрация СФ налогового агента

  // типы счет фактур (аналог sfconst.Inc)
  cwTypeSF_Sell_Otgr               : Word = 7200;  // Счет-фактура, отгрузка (Россия / Беларусь)
  cwTypeSF_Sell_Avans              : Word = 7218;  // Счет-фактура, оплата, предоплата
  cwTypeSF_Sell_Avans_Old          : Word = 7216;  // Счет-фактура, аванс
  cwTypeSF_Sell_LentaKKM           : Word = 7220;  // Ленты ККМ (Россия / Беларусь)
  cwTypeSF_Sell_Dohod              : Word = 7219;  // Счет-фактура, прочие доходы / Платеж, прочие доходы (Беларусь)
  cwTypeSF_Sell_VvExpl             : Word = 7201;  // Счет-фактура (ввод в эксплуатацию)
  cwTypeSF_Sell_SelfNeeds          : Word = 7204;  // Счет-фактура, ТМЦ на собственные нужды
  cwTypeSF_Sell_NalAgent_Imp       : Word = 7228;  // Счет-фактура налогового агента (импортная операция)
  cwTypeSF_Sell_NalAgent_GosIm     : Word = 7229;  // Счет-фактура налогового агента (гос.имущество)
  cwTypeSF_Sell_NalAgent_Bankrot   : Word = 7230;  // Счет-фактура налогового агента (операции с банкротами)
  cwTypeSF_Sell_VozvrAvans         : Word = 7209;  // Возврат оплаты, предоплаты от поставщика
  cwTypeSF_Sell_Bel_FreePlat       : Word = 7215;  // Высвобождение платежа, продажи (Беларусь)
  cwTypeSF_Sell_CorrV              : Word = 7241;  // Корректировочный счет-фактура
  cwTypeSF_Sell_IsprOtgr           : Word = 7242;  // Исправление СФ, отгрузка
  cwTypeSF_Sell_IsprAvans          : Word = 7243;  // Исправление СФ, оплата, предоплата
  cwTypeSF_Sell_IsprCorrV          : Word = 7244;  // Исправление корректировочного СФ
  cwTypeSF_Sell_VozvrMC            : Word = 7208;  // Возврат товара от покупателя
  cwTypeSF_Sell_VozvrMCRozn        : Word = 7210;  // Возврат товара поставщику (розница)
  cwTypeSF_Sell_Peny               : Word = 7245;  // Счет-фактура по штрафам
  cwTypeSF_Sell_IsprPeny           : Word = 7246;  // Исправление СФ по штрафам
  cwTypeSF_Sell_Otgr_FullNach      : Word = 7205;  // Счет-фактура, отгрузка, полное начисление
  cwTypeSF_Sell_ReNDS_Plat         : Word = 7206;  // Счет-фактура, восстановление
  cwTypeSF_Sell_Otgr_Commiss       : Word = 7207;  // Счет-фактура, отгрузка, комиссия
  cwTypeSF_Sell_Avans_Commiss      : Word = 7211;  // Счет-фактура, оплата, предоплата, комиссия
  cwTypeSF_Sell_Consumer           : Word = 7212;  // Счет-фактура заказчика
  cwTypeSF_Sell_Consumer_Avans     : Word = 7214;  // Счет-фактура заказчика, аванс
  cwTypeSF_Sell_Return             : Word = 7213;  // Счет-фактура, отгрузка, возврат
  cwTypeSF_Sell_CorrV_Consumer     : Word = 7224;  // Корректировочный счет-фактура заказчика
  cwTypeSF_Sell_Ispr_Consumer      : Word = 7225;  // Исправление СФ заказчика
  cwTypeSF_Sell_IsprCorrV_Consumer : Word = 7226;  // Исправление корректировочного СФ заказчика
  cwTypeSF_Sell_Consumer_Sv        : Word = 7222;  // Сводный счет-фактура заказчика
  cwTypeSF_Sell_CMP                : Word = 7235;  // СМР на собственные нужды
  cwTypeSF_Sell_FreeOtgr           : Word = 7236;  // Безвозмездная отгрузка
  cwTypeSF_Sell_Summa              : Word = 7237;  // Передача, учет по стоимости с налогами
  cwTypeSF_Sell_Summa_Avans        : Word = 7238;  // Предоплата передачи, учет по стоимости с налогами
  cwTypeSF_Sell_Physical           : Word = 7239;  // Счет-фактура по физическим лицам
  cwTypeSF_Sell_Consumer_Build     : Word = 7247;  // Счет-фактура заказчика-застройщика
  cwTypeSF_Sell_Physical_Avans     : Word = 7248;  // Счет-фактура, оплата, предоплата по физическим лицам

  // записи книг продаж/покупок, регистрируемые и не регистрируемые  (аналог sfconst.Inc)
  cwBK_Reg     : Word = 0;
  cwBK_Not_Reg : Word = 1;


  // тип спецификации SpSopr
  lc_SpSchFType_Tov : word = 1;  // товары
  lc_SpSchFType_Usl : word = 2;  // услуги

  // тип предупреждения
  lc_WarningMode_Cor : word = 0;  // данные корректны
  lc_WarningMode_Wrn : word = 1;  // предупреждение
  lc_WarningMode_Err : word = 2;  // ошибка


  // пути на данные "Раздела 2"
  lc_R02_ParentNodePath : string = 'Файл/Документ/НДС';
  lc_R02_SlavedNodePath : string = lc_R02_ParentNodePath+'/СумУплНА';

end; // const

#endif//__G2017_NDSNalR02_Inc__
