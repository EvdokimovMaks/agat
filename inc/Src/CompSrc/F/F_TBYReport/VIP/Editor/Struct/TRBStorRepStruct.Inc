//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Электронная отчетность РБ"
// Хранилище данных : "Структура отчета"
//------------------------------------------------------------------------------

#ifndef __TRBStorRepStruct_Inc__
#define __TRBStorRepStruct_Inc__

const
  // идентификаторы полей
  lc_DataFormat01_EndFld01ID : string = '01';  // Номер записи                   
  lc_DataFormat01_EndFld02ID : string = '02';  // Ссылка на вышестоящий          
  lc_DataFormat01_EndFld03ID : string = '03';  // Порядковый номер на уровне     
  lc_DataFormat01_EndFld04ID : string = '04';  // Наименование                   
  lc_DataFormat01_EndFld05ID : string = '05';  // Описание показателя            
  lc_DataFormat01_EndFld06ID : string = '06';  // Путь на вершину                
  lc_DataFormat01_EndFld07ID : string = '07';  // Обязательный элемент в XML     
  lc_DataFormat01_EndFld08ID : string = '08';  // Множественный элемент в XML    
  lc_DataFormat01_EndFld09ID : string = '09';  // Тип узла "текст" в XML         
  lc_DataFormat01_EndFld10ID : string = '10';  // Скрытая запись                 
  lc_DataFormat01_EndFld11ID : string = '11';  // Владелец изменений             
  lc_DataFormat01_EndFld12ID : string = '12';  // Обязательность заполнения поля 
  lc_DataFormat01_EndFld13ID : string = '13';  // Ключ формулы                   
  lc_DataFormat01_EndFld14ID : string = '14';  // Формула расчета                
  lc_DataFormat01_EndFld15ID : string = '15';  // Значение показателя            
  lc_DataFormat01_EndFld16ID : string = '16';  // Тип значения                   
  lc_DataFormat01_EndFld17ID : string = '17';  // Количество знаков после запятой
  lc_DataFormat01_EndFld18ID : string = '18';  // Формат значения                
  
  lc_DataFormat01_EndFldID : string = chr(1);  // идентификатор конца поля
  lc_DataFormat01_EndRecID : string = chr(2);  // идентификатор конца записи

  lc_DataFormat01_FMaxRecCount : LongInt = 100000;  // максимальное количество записей для хранения в одном файле
end; // const

#endif//__TRBStorRepStruct_Inc__
