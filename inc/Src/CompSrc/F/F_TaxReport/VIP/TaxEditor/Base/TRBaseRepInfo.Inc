//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.1 - модуль "Электронная отчетность"
// Базовая библиотека функций : "Информация об отчете"
//------------------------------------------------------------------------------

#ifndef __TRBaseRepInfo_Inc__
#define __TRBaseRepInfo_Inc__

//------------------------------------------------------------------------------
#include EletronOtch.Inc  // глобальные константы "Электронной отчетности"
//------------------------------------------------------------------------------

const
  //----------------------------------------------------------------------------
  // типы электронных отчетов
  // !!!диапазон типов для F_TaxReport: cg_EOTaxRepID_MinValue..cg_EOTaxRepID_MaxValue (см. EletronOtch.Inc)
  lc_TaxRepID_TranD              : word = cg_EOTaxRepID_MinValue   ;  // Декларация по транспортному налогу (1152004)
  lc_TaxRepID_Prib               : word = cg_EOTaxRepID_MinValue+ 1;  // Декларация по налогу на прибыль организаций (1151006)
  lc_TaxRepID_NDS                : word = cg_EOTaxRepID_MinValue+ 2;  // Декларация по НДС (1151001)
  lc_TaxRepID_BuhOtch            : word = cg_EOTaxRepID_MinValue+ 3;  // Бухгалтерская (финансовая) отчетность (0710099) 2014 г.
  lc_TaxRepID_ImuD               : word = cg_EOTaxRepID_MinValue+ 4;  // Декларация по налогу на имущество организаций (1152026)
  lc_TaxRepID_ImuR               : word = cg_EOTaxRepID_MinValue+ 5;  // Расчет по авансовому платежу по налогу на имущество организаций (1152028)
  lc_TaxRepID_NDPI               : word = cg_EOTaxRepID_MinValue+ 6;  // Декларация по НДПИ (1151054)
  lc_TaxRepID_USN                : word = cg_EOTaxRepID_MinValue+ 8;  // Декларация по УСН (1152017)
  lc_TaxRepID_ENVD               : word = cg_EOTaxRepID_MinValue+ 9;  // Декларация по ЕНВД (1152016)
  lc_TaxRepID_ZemND              : word = cg_EOTaxRepID_MinValue+10;  // Декларация по земельному налогу (1153005)
  lc_TaxRepID_OtgrProd           : word = cg_EOTaxRepID_MinValue+11;  // Сведения о сост. расч. за отгр. прод., выполн. работы (услуги) (1-РП (срочная))
  lc_TaxRepID_FinVlog            : word = cg_EOTaxRepID_MinValue+12;  // Сведения о финансовых вложениях и обязательствах (П-6)
  lc_TaxRepID_InvAndDolSt        : word = cg_EOTaxRepID_MinValue+13;  // Сведения об инвестициях в нефинансовые активы (П-2)
  lc_TaxRepID_PrIOtgrTov         : word = cg_EOTaxRepID_MinValue+14;  // Сведения о производстве и отгрузке товаров и услуг (П-1)
  lc_TaxRepID_ZadolPoZP          : word = cg_EOTaxRepID_MinValue+15;  // Сведения о просроченной задолженности по заработной плате (3-Ф)
  lc_TaxRepID_ZatrNaProizv       : word = cg_EOTaxRepID_MinValue+16;  // Сведения о затратах на производство и продажу продукции (товаров, работ, услуг) (5-З)
  lc_TaxRepID_DeytOrg            : word = cg_EOTaxRepID_MinValue+17;  // Основные сведения о деятельности организации (1-предприятие)
  lc_TaxRepID_FinSost            : word = cg_EOTaxRepID_MinValue+18;  // Сведения о финансовом состоянии организации (П-3)
  lc_TaxRepID_BuhOtchPril        : word = cg_EOTaxRepID_MinValue+19;  // Бухгалтерская (финансовая) отчетность. Приложение (0710005)
  lc_TaxRepID_IspDenSr           : word = cg_EOTaxRepID_MinValue+20;  // Сведения об использовании денежных средств (12-Ф)
  lc_TaxRepID_KNTMSZ             : word = cg_EOTaxRepID_MinValue+21;  // Декларация по косвенным налогам (1151088)
  lc_TaxRepID_NepolZanIDvijRabot : word = cg_EOTaxRepID_MinValue+22;  // Сведения о неполной занятости и движении работников
  lc_TaxRepID_AKCIZ              : word = cg_EOTaxRepID_MinValue+23;  // Декларация по акцизам на подакцизные товары, за исключением табачных изделий (1151084)
  lc_TaxRepID_BUHMP              : word = cg_EOTaxRepID_MinValue+24;  // Бухгалтерская (финансовая) отчетность субъектов малого предпринимательства(0710098)
  lc_TaxRepID_OTTRNDS            : word = cg_EOTaxRepID_MinValue+25;  // Ответ на сообщение (с требованием представления пояснений)
  lc_TaxRepID_BOUPR              : word = cg_EOTaxRepID_MinValue+26;  // Упрощенная бухгалтерская (финансовая) отчетность
  lc_TaxRepID_ESHN               : word = cg_EOTaxRepID_MinValue+27;  // Декларация по ЕСХН (1151059)
  lc_TaxRepID_AKCAVNEF           : word = cg_EOTaxRepID_MinValue+28;  // Декларация по акцизам на автомобильный бензин (1151089)
  lc_TaxRepID_AKCALK             : word = cg_EOTaxRepID_MinValue+29;  // Декларация по акцизам на этиловый спирт, алкогольную и (или) подакцизную спиртосодержащую продукцию (1151090)
  lc_TaxRepID_VodaNal            : word = cg_EOTaxRepID_MinValue+30;  // Декларация по водному налогу (1151072)
  lc_TaxRepID_DohInOrg           : word = cg_EOTaxRepID_MinValue+31;  // Налоговый расчет о суммах выплаченных иностр. орг. (1151056)
  lc_TaxRepID_UvKik              : word = cg_EOTaxRepID_MinValue+32;  // Уведомление о контролируемых иностранных компаниях (1120416)
  lc_TaxRepID_UvUchIno           : word = cg_EOTaxRepID_MinValue+33;  // Уведомление об участии в иностранных организациях (1120411)
  lc_TaxRepID_DocNpNo            : word = cg_EOTaxRepID_MinValue+34;  // Документ обеспечивающий эл. документооборот в отношениях, регулируемых законодательством о налогах и сборах (1184002)
  lc_TaxRepID_ZVIUN              : word = cg_EOTaxRepID_MinValue+35;  // Заявление о возврате суммы излишне уплаченного налога (1150058)
  lc_TaxRepID_ZZIUN              : word = cg_EOTaxRepID_MinValue+36;  // Заявление о зачете суммы излишне уплаченного налога (1150057)
  lc_TaxRepID_SvOGruzTrIDor      : word = cg_EOTaxRepID_MinValue+37;  // Сведения о грузовом автотранспорте и протяженности автодорог общего пользования (1-ТР (автотранспорт))
  lc_TaxRepID_TranDAv            : word = cg_EOTaxRepID_MinValue+38;  // Декларация по транспортному налогу (авансы)
  // !!!диапазон типов для F_TaxReport: cg_EOTaxRepID_MinValue..cg_EOTaxRepID_MaxValue (см. EletronOtch.Inc)
  // типы электронных отчетов
  //----------------------------------------------------------------------------

  // группы электронной отчетности
  lc_TaxGroupName_All  = 'ВСЕ';
  lc_TaxGroupName_0001 = 'Налоговая отчетность';
  lc_TaxGroupName_0002 = 'Статистическая отчетность';
  lc_TaxGroupCode_All  : word = 0;
  lc_TaxGroupCode_0001 : word = 1;
  lc_TaxGroupCode_0002 : word = 2;

  // префиксы
  lc_TRInfo_IfcPrefix  = 'TaxReport_';
  lc_TRInfo_ObjIfcName = 'F_TaxReport::ITRBaseRepInfo';
  lc_TRInfo_ComponentPrefix = '#(__COMPONENT__)::';

end; // const

#endif//__TRBaseRepInfo_Inc__
