//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.1 - модуль "Электронная отчетность"
// Интерфейс редактирования : "Декларация по НДС"
//------------------------------------------------------------------------------

#ifndef __G2019_NDSNal_Inc__
#define __G2019_NDSNal_Inc__

const
  // наименование вершины "ссылка на запись в БД"
  lc_NRecNodePath : string = 'NRec';

  // типы записей в таблице навигации (NavStruct.wType)
  lc_Title_NavNodeType : word = 01;  // Титульный лист
  lc_R01_0_NavNodeType : word = 02;  // Раздел 1
  lc_R02_F_NavNodeType : word = 03;  // Раздел 2 (папка)
  lc_R02_0_NavNodeType : word = 04;  // Раздел 2
  lc_R03_0_NavNodeType : word = 05;  // Раздел 3
  lc_R03_1_NavNodeType : word = 06;  // Раздел 3 Приложение 1
  lc_R03_2_NavNodeType : word = 07;  // Раздел 3 Приложение 2
  lc_R04_0_NavNodeType : word = 08;  // Раздел 4
  lc_R04_1_NavNodeType : word = 09;  // Раздел 4 Расчет суммы налога, подлежащей восстановлению, по коду операции
  lc_R04_2_NavNodeType : word = 10;  // Раздел 4 Корректировка налоговой базы при возврате товаров
  lc_R04_3_NavNodeType : word = 11;  // Раздел 4 Корректировка налоговой базы при увеличении (уменьшении) цены
  lc_R05_F_NavNodeType : word = 12;  // Раздел 5 (папка)
  lc_R05_0_NavNodeType : word = 13;  // Раздел 5
  lc_R06_0_NavNodeType : word = 14;  // Раздел 6
  lc_R06_1_NavNodeType : word = 15;  // Раздел 6 Расчет суммы налога по коду операции
  lc_R06_2_NavNodeType : word = 16;  // Раздел 6 Корректировка сумм налога при возврате товаров
  lc_R06_3_NavNodeType : word = 17;  // Раздел 6 Корректировка сумм налога при изменении цены реализованных товаров (работ, услуг)
  lc_R07_0_NavNodeType : word = 18;  // Раздел 7
  lc_R08_F_NavNodeType : word = 19;  // Раздел 8 (папка)
  lc_R08_0_NavNodeType : word = 20;  // Раздел 8
  lc_R8D_F_NavNodeType : word = 21;  // Раздел 8 Приложение 1 (папка)
  lc_R8D_0_NavNodeType : word = 22;  // Раздел 8 Приложение 1
  lc_R09_F_NavNodeType : word = 23;  // Раздел 9 (папка)
  lc_R09_0_NavNodeType : word = 24;  // Раздел 9
  lc_R9D_F_NavNodeType : word = 25;  // Раздел 9 Приложение 1 (папка)
  lc_R9D_0_NavNodeType : word = 26;  // Раздел 9 Приложение 1
  lc_R10_F_NavNodeType : word = 27;  // Раздел 10 (папка)
  lc_R10_0_NavNodeType : word = 28;  // Раздел 10
  lc_R10_1_NavNodeType : word = 29;  // Раздел 10 Продолжение
  lc_R11_F_NavNodeType : word = 30;  // Раздел 11 (папка)
  lc_R11_0_NavNodeType : word = 31;  // Раздел 11
  lc_R11_1_NavNodeType : word = 32;  // Раздел 11 Продолжение
  lc_R12_F_NavNodeType : word = 33;  // Раздел 12 (папка)
  lc_R12_0_NavNodeType : word = 34;  // Раздел 12

  // биты идентификации разделов
  lc_RazdelIDBit_BR : word =   1;  // Основные разделы
  lc_RazdelIDBit_08 : word =   2;  // Раздел  8
  lc_RazdelIDBit_8D : word =   4;  // Раздел  8 Приложение 1
  lc_RazdelIDBit_09 : word =   8;  // Раздел  9
  lc_RazdelIDBit_9D : word =  16;  // Раздел  9 Приложение 1
  lc_RazdelIDBit_10 : word =  32;  // Раздел 10
  lc_RazdelIDBit_11 : word =  64;  // Раздел 11
  lc_RazdelIDBit_12 : word = 128;  // Раздел 12

end; // const

#endif//__G2019_NDSNal_Inc__
