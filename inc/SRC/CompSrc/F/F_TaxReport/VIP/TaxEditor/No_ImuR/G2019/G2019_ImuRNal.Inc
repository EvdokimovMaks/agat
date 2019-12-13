//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.1 - модуль "Электронная отчетность"
// Интерфейс редактирования : "Расчет по авансовому платежу по налогу на имущество организаций"
//------------------------------------------------------------------------------

#ifndef __ImuRNal_Inc__
#define __ImuRNal_Inc__

#include TRNImuKatOSVer.Inc

const
  // типы записей в таблице навигации (NavStruct.wType)
  lc_Tit_NavNodeType : word = 01;  // Титульный лист
  lc_R01_NavNodeType : word = 02;  // Раздел 1
  lc_R02_NavNodeType : word = 03;  // Раздел 2
  lc_R03_NavNodeType : word = 04;  // Раздел 3

  // наименование вершины "ссылка на KatOS"
  lc_KatOSNRecNodePath : string = 'cKatOS';
  // наименование вершины "Уменьшение суммы налога: процент"
  lc_LowSLgProcNodePath : string = 'LowSLgProc';

  // режим удаления прежних данных при импорте
  lc_Imp_DelMode : word = 0;  // режим удаление
  lc_Imp_AddMode : word = 1;  // режим добавления

  // пути на данные разделов
  lc_R01ParentNodePath : string = 'Файл/Документ/ИмущАв';
  lc_R01SlavedNodePath : string = lc_R01ParentNodePath + '/СумНалПУ';

  lc_R02p1ZdanParentNodePath : string = 'Файл/Документ/ИмущАв/СумНалПУ/ОбъектОблНал/ИнфОбъект/АдрОбъектРФ/Здание[4]';
  lc_R02p1ZdanSlavedNodePath : string = '/АдрОбъектРФ/Здание';
end; // const

#endif//__ImuRNal_Inc__
