/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,2004 корпорация ГАЛАКТИКА                    ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Оперативный контур                                        ║
 ║ Версия        : 7.11                                                      ║
 ║ Назначение    : Отчеты затрат по объектам                                 ║
 ║ Ответственный : Шишов Виктор Васильевич (ShV)                             ║
 ║ Параметры     : Нет                                                       ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/

#doc
Отчеты затрат по объектам
#end
.set name='RepZatrObj1'
.Hide
.Fields

//---------------------------------------------
Filter_Name                : String //наименование фильтра
Filter_ZnNRec              : comp   //NRec значения фильтра
Filter_ZnName              : String //наименование значения фильтра

Obj_NRec                   : comp   //для отчетов по одному Объекту/Стройке
Obj_Name                   : String //для отчетов по одному Объекту/Стройке
Podr_NRec                  : comp   //для отчетов по одному корневому подразделению
Podr_Name                  : String //для отчетов по одному корневому подразделению
ТекГод                     : String
Период_Name                : String
Валюта                     : String
СобствОрг_Name             : String
//---сецификация
Sp_Tip                      : word //100 - корневое подразделение
                                  //0(10-папка)-собственные силы; 1(11-папка)-внутренний субподряд; 2(12-папка)-внешний субподряд
                                  //200 - Документы/Сметы с Объектами
Sp_Num                      : String
Sp_Num2                     : String
Sp_Name                     : String

SumZP                       : Double //зарплата
SumMatMont                  : Double //материалы: монтируемые (списание)
SumMatDemont                : Double //материалы: демонтируемые (возврат)
SumProch                    : Double //прочее(механизмы)
SumStorOrg                  : Double //сторонние организации
//------
SumZP2                      : Double //зарплата
SumMatMont2                 : Double //материалы: монтируемые (списание)
SumMatDemont2               : Double //материалы: демонтируемые (возврат)
SumProch2                   : Double //прочее(механизмы)
SumStorOrg2                 : Double //сторонние организации
//------
SumZP3                      : Double //зарплата
SumMatMont3                 : Double //материалы: монтируемые (списание)
SumMatDemont3               : Double //материалы: демонтируемые (возврат)
SumProch3                   : Double //прочее(механизмы)
SumStorOrg3                 : Double //сторонние организации
//------
SumZP4                      : Double //зарплата
SumMatMont4                 : Double //материалы: монтируемые (списание)
SumMatDemont4               : Double //материалы: демонтируемые (возврат)
SumProch4                   : Double //прочее(механизмы)
SumStorOrg4                 : Double //сторонние организации


SumMatMont_SumMatDemont     : Double
SumMatMont_SumMatDemont_SumZP_SumStorOrg : Double
SumMatMont_SumMatDemont_SumZP_SumStorOrg_SumProch : Double
SumMatMont2_SumMatDemont2   : Double
SumMatMont2_SumMatDemont2_SumZP2_SumStorOrg2 : Double
SumMatMont2_SumMatDemont2_SumZP2_SumStorOrg2_SumProch2 : Double
SumMatMont3_SumMatDemont3   : Double
SumMatMont3_SumMatDemont3_SumZP3_SumStorOrg3 : Double
SumMatMont3_SumMatDemont3_SumZP3_SumStorOrg3_SumProch3 : Double
SumMatMont4_SumMatDemont4   : Double
SumMatMont4_SumMatDemont4_SumZP4_SumStorOrg4 : Double
SumMatMont4_SumMatDemont4_SumZP4_SumStorOrg4_SumProch4 : Double

.EndFields
//---Фильтры---
.{
^
.{
^^
.}
.}
//--End-Фильтры
^^^^^^^^
.{
^^^^
^^^^^
^^^^^
^^^^^
^^^^^
^^^ ^^^ ^^^ ^^^
.}
.EndForm
