//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Электронная отчетность РБ"
// Интерфейс редактирования : "Декларация по НДС"
//------------------------------------------------------------------------------

#ifndef __v001_TRBNDSEditor_Inc__
#define __v001_TRBNDSEditor_Inc__

const
  // типы вершины в таблице навигации
  lc_NavNodeType_Title     : word = 01;  // Заголовок
  lc_NavNodeType_P1_F      : word = 02;  // Часть 1
  lc_NavNodeType_P1_R1_3   : word = 03;  // Часть 1 Разделы 1-3
  lc_NavNodeType_P1_R__4   : word = 04;  // Часть 1 Раздел 4
  lc_NavNodeType_P1_R__5   : word = 05;  // Часть 1 Раздел 5
  lc_NavNodeType_P2_F      : word = 06;  // Часть 2 Folder
  lc_NavNodeType_P2_0      : word = 07;  // Часть 2
  lc_NavNodeType_Pril_01_F : word = 08;  // Приложение 1 (папка)
  lc_NavNodeType_Pril_01_0 : word = 09;  // Приложение 1
  lc_NavNodeType_Pril_02_F : word = 10;  // Приложение 2 (папка)
  lc_NavNodeType_Pril_02_0 : word = 11;  // Приложение 2
  lc_NavNodeType_Pril_03_F : word = 12;  // Приложение 3 (папка)
  lc_NavNodeType_Pril_03_0 : word = 13;  // Приложение 3
  lc_NavNodeType_Pril_04_F : word = 14;  // Приложение 4 (папка)
  lc_NavNodeType_Pril_04_0 : word = 15;  // Приложение 4
  lc_NavNodeType_Pril_05_F : word = 16;  // Приложение 5 (папка)
  lc_NavNodeType_Pril_05_0 : word = 17;  // Приложение 5
  lc_NavNodeType_Pril_06_F : word = 18;  // Приложение 6 (папка)
  lc_NavNodeType_Pril_06_0 : word = 19;  // Приложение 6
  lc_NavNodeType_Pril_07_F : word = 20;  // Приложение 7 (папка)
  lc_NavNodeType_Pril_07_0 : word = 21;  // Приложение 7
  lc_NavNodeType_Pril_08_F : word = 22;  // Приложение 8 (папка)
  lc_NavNodeType_Pril_08_0 : word = 23;  // Приложение 8
  lc_NavNodeType_Pril_09_F : word = 24;  // Приложение 9 (папка)
  lc_NavNodeType_Pril_09_0 : word = 25;  // Приложение 9
  lc_NavNodeType_Pril_10_F : word = 26;  // Приложение 10 (папка)
  lc_NavNodeType_Pril_10_0 : word = 27;  // Приложение 10
  lc_NavNodeType_Pril_11_F : word = 28;  // Приложение 11 (папка)
  lc_NavNodeType_Pril_11_0 : word = 29;  // Приложение 11
  lc_NavNodeType_Pril_12_F : word = 30;  // Приложение 12 (папка)
  lc_NavNodeType_Pril_12_0 : word = 31;  // Приложение 12

  // тип декларации (ежемесячный, квартальный, годовой, уточненный годовой)
  lc_TermType_NotDef  : word = 0;  // не определен
  lc_TermType_Month   : word = 1;  // ежемесячный
  lc_TermType_Quartal : word = 2;  // квартальный
  lc_TermType_Year    : word = 3;  // годовой
  lc_TermType_RevYear : word = 4;  // уточненный годовой

  // коды денежных единиц Республики Беларусь
  lc_CurrencyCode_BYR = '974';
  lc_CurrencyCode_BYN = '933';
  // форматы денежных единиц Республики Беларусь
  lc_CurrencyValuesDisplayFormat_RUBLE    = 'RUBLE';
  lc_CurrencyValuesDisplayFormat_THOUSAND = 'THOUSAND';
  lc_CurrencyValuesDisplayFormat_MILLION  = 'MILLION';

  // признак ликвидации
  lc_liquidationTypeP1 = 'SELF_START';  // в соответствии с частью 1 пункта 2-1 ст.63 НК РБ
  lc_liquidationTypeP2 = 'SELF_END'  ;  // в соответствии с частью 2 пункта 2-1 ст.63 НК РБ
  lc_liquidationTypeP4 = 'BRANCH'    ;  // в соответствии с частью 4 пункта 2-1 ст.63 НК РБ
  lc_liquidationTypeP5 = 'FOREIGN'   ;  // в соответствии с частью 5 пункта 2-1 ст.63 НК РБ

  //----------------------------------------------------------------------------
  // пути на данные в структуре
  lc_NodePath_P1_R1_31 = 'NDS/NDS_v3_part1/NDS_v3_part1_t001';  // Часть 1 Раздел 1-3
  lc_NodePath_P1_R1_32 = 'NDS/NDS_v3_part1/NDS_v3_part1_f002';  // Часть 1 Раздел 1-3 (дата-по сроку уплаты)
  lc_NodePath_P1_R__4  = 'NDS/NDS_v3_part1/NDS_v3_part1_t003';  // Часть 1 Раздел 4
  lc_NodePath_P1_R__5  = 'NDS/NDS_v3_part1/NDS_v3_part1_l4i' ;  // Часть 1 Раздел 5
  lc_NodePath_P2       = 'NDS/NDS_v3_part2'                  ;  // Часть 2
  lc_NodePath_Pril_01  = 'NDS/NDS_v3_spravka_t001'           ;  // Приложение 1
  lc_NodePath_Pril_02  = 'NDS/NDS_v3_reestr'                 ;  // Приложение 2
  lc_NodePath_Pril_03  = 'NDS/NDS_v3_reestr0'                ;  // Приложение 3
  lc_NodePath_Pril_04  = 'NDS/NDS_v3_reestr1'                ;  // Приложение 4
  lc_NodePath_Pril_05  = 'NDS/NDS_v3_reestr2'                ;  // Приложение 5
  lc_NodePath_Pril_06  = 'NDS/NDS_v3_reestr3'                ;  // Приложение 6
  lc_NodePath_Pril_07  = 'NDS/NDS_v3_reestr4'                ;  // Приложение 7
  lc_NodePath_Pril_08  = 'NDS/NDS_v3_reestr5'                ;  // Приложение 8
  lc_NodePath_Pril_09  = 'NDS/NDS_v3_reestr6'                ;  // Приложение 9
  lc_NodePath_Pril_10  = 'NDS/NDS_v3_reestr7'                ;  // Приложение 10
  lc_NodePath_Pril_11  = 'NDS/NDS_v3_reestr8'                ;  // Приложение 11
  lc_NodePath_Pril_12  = 'NDS/NDS_v3_reestr12'               ;  // Приложение 12
  // пути на данные в структуре
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  // пути на данные таблиц в структуре
  lc_NodeTblPath_P2       = lc_NodePath_P2                             ;  // Часть 2
  lc_NodeTblPath_Pril_01  = lc_NodePath_Pril_01                        ;  // Приложение 1
  lc_NodeTblPath_Pril_02  = lc_NodePath_Pril_02+'/NDS_v3_reestr_t001'  ;  // Приложение 2
  lc_NodeTblPath_Pril_03  = lc_NodePath_Pril_03+'/NDS_v3_reestr0_t001' ;  // Приложение 3
  lc_NodeTblPath_Pril_04  = lc_NodePath_Pril_04+'/NDS_v3_reestr1_t001' ;  // Приложение 4
  lc_NodeTblPath_Pril_05  = lc_NodePath_Pril_05+'/NDS_v3_reestr2_t001' ;  // Приложение 5
  lc_NodeTblPath_Pril_06  = lc_NodePath_Pril_06+'/NDS_v3_reestr3_t001' ;  // Приложение 6
  lc_NodeTblPath_Pril_07  = lc_NodePath_Pril_07+'/NDS_v3_reestr4_t001' ;  // Приложение 7
  lc_NodeTblPath_Pril_08  = lc_NodePath_Pril_08+'/NDS_v3_reestr5_t001' ;  // Приложение 8
  lc_NodeTblPath_Pril_09  = lc_NodePath_Pril_09+'/NDS_v3_reestr6_t001' ;  // Приложение 9
  lc_NodeTblPath_Pril_10  = lc_NodePath_Pril_10+'/NDS_v3_reestr7_t001' ;  // Приложение 10
  lc_NodeTblPath_Pril_11  = lc_NodePath_Pril_11+'/NDS_v3_reestr8_t001' ;  // Приложение 11
  lc_NodeTblPath_Pril_12  = lc_NodePath_Pril_12+'/NDS_v3_reestr12_t001';  // Приложение 12
  // пути на данные таблиц в структуре
  //----------------------------------------------------------------------------
end; // const

#endif//__v001_TRBNDSEditor_Inc__
