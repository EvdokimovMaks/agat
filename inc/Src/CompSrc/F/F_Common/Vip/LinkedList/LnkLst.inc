//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 8.10 - Бухгалтерский контур
// Объект по просмотру списка документов
//******************************************************************************

#ifndef __LnkLst_Inc__
#define __LnkLst_Inc__

const
  //----------------------------------------------------------------------------
  // наименования внешних атрибутов DocInfo:
  lc_DocInfoExtAttrName_cDocInfo      = 'cDocInfo'     ;  // DocInfo.NRec

  // подтверждает передачу объекта в аренду
  lc_DocInfoExtAttrName_dArendStart   = 'dArendStart'  ;  // Дата начала аренды
  lc_DocInfoExtAttrName_dArendEnd     = 'dArendEnd'    ;  // Дата окончания аренды
  lc_DocInfoExtAttrName_cArendator    = 'cArendator'   ;  // Организация арендатор
  lc_DocInfoExtAttrName_inArend       = 'inArend'      ;  // Передано в аренду
  lc_DocInfoExtAttrName_cEd           = 'cEd'          ;  // Единицы измерения
  
  // кадастровая информация
  lc_DocInfoExtAttrName_sCadNum       = 'sCadNum'      ;  // Кадастровый номер
  lc_DocInfoExtAttrName_sCadNumAdd    = 'sCadNumAdd'   ;  // Кадастровый номер помещения
  lc_DocInfoExtAttrName_sTerrType     = 'sTerrType'    ;  // Категория земель
  lc_DocInfoExtAttrName_doCadStoim    = 'doCadStoim'   ;  // Кадастровая стоимость
  lc_DocInfoExtAttrName_TaxRate       = 'TaxRate'      ;  // Налоговая ставка
  lc_DocInfoExtAttrName_TaxpayerShare = 'TaxpayerShare';  // Доля налогоплательщика
  lc_DocInfoExtAttrName_sDoljaNPChsl  = 'sDoljaNPChsl' ;  // Доля налогоплательщика (числитель)
  lc_DocInfoExtAttrName_sDoljaNPZnam  = 'sDoljaNPZnam' ;  // Доля налогоплательщика (знаменатель)
  lc_DocInfoExtAttrName_IsNotObjTax   = 'IsNotObjTax'  ;  // Не является объектом налогообложения для земельного налога

  // учет в налоговом органе
  lc_DocInfoExtAttrName_wFNSOrg       = 'wFNSOrg'      ;   // Режим учета в налоговом органе
  lc_DocInfoExtAttrName_sFNSOKTMO     = 'sFNSOKTMO'    ;   // ОКТМО налогового органа ФНС
  lc_DocInfoExtAttrName_sFNSCode      = 'sFNSCode'     ;   // Код налогового органа ФНС

  // налог на недвижимость
  lc_DocInfoExtAttrName_IsImNotTax    = 'IsImNotTax'   ;   // Не подлежит налогообложению
  lc_DocInfoExtAttrName_wImMovable    = 'wImMovable'   ;   // Тип имущества (движимое/недвижимое)
  lc_DocInfoExtAttrName_wImTaxBase    = 'wImTaxBase'   ;   // Налоговая база недвижимого имущества (среднегодовая/кадастровая стоимость)
  lc_DocInfoExtAttrName_ImNotTaxSum   = 'ImNotTaxSum'  ;   // Не облагаемая кадастровая стоимость
  lc_DocInfoExtAttrName_wImVidCode    = 'wImVidCode'   ;   // Код вида имущества (для н/б среднегодовая стоимость)
  lc_DocInfoExtAttrName_cImKatRate    = 'cImKatRate'   ;   // ссылка на "Каталог ставок и льгот"
  lc_DocInfoExtAttrName_wImFeatures   = 'wImFeatures'  ;   // Особенности налогообложения
  // наименования внешних атрибутов DocInfo:
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  // Режим учета в налоговом органе
  lc_DocInfo_FNSOrgMode_ByOrgPlace   : word  = 0;   // по месту нахождения организации
  lc_DocInfo_FNSOrgMode_OtherOKTMO   : word  = 1;   // с другим кодом ОКТМО
  lc_DocInfo_FNSOrgMode_OtherFNS     : word  = 2;   // в другом налоговом органе

  // Тип имущества
  lc_DocInfo_ImMovable_Yes           : word  = 0;   // имущество движимое
  lc_DocInfo_ImMovable_Not           : word  = 1;   // имущество недвижимое

  // Налоговая база недвижимого имущества
  lc_DocInfo_ImTaxBase_AvgCost       : word  = 0;   // среднегодовая стоимость
  lc_DocInfo_ImTaxBase_CadCost       : word  = 1;   // кадастровая стоимость

  // Особенности налогообложения
  lc_DocInfo_ImFeatures_ESGSBit      : word  = 1;   // входит в состав ЕСГС
  lc_DocInfo_ImFeatures_NoLgBit      : word  = 2;   // нет льготы для 3-10 амортизационной группы (код льготы 2010257)

  // Код вида имущества
  lc_DocInfo_wImVidCode_Deff         : word  = 3;   // "Код вида имущества" по умолчанию
  //----------------------------------------------------------------------------

end; // const

#endif//__LnkLst_Inc__
