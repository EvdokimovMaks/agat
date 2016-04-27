// -----------------------------------------------------------------------------
// Предотвращаем повторное подключение:
#ifndef _GroupingAndSorting_inc_INCLUDED_
#define _GroupingAndSorting_inc_INCLUDED_

//------------------------------------------------------------------------------
//--TYPES-----------------------------------------------------------------------
//------------------------------------------------------------------------------
// GroupingAndSorting
// типы для идентификаторов позиций (группировок/сортировок):
type TGroupingSorting = byte;

//------------------------------------------------------------------------------
//--CONSTANTS-------------------------------------------------------------------
//------------------------------------------------------------------------------
const
// Возможные типы группировок:
ERROR_GROUPING_EXTRACTION = 30101;      // Ошибка извлечения идентификатора группировки
ERROR_SORTING_EXTRACTION  = 30102;      // Ошибка извлечения идентификатора сортировки

tblSGrouping = 111;                     // Задана таблица SGrouping
tblSSorting = 222;                      // Задана таблица SSorting

// -----------------------------------------------------------------------------
// Настройки позиций группировок/сортировок:
PRINT_HEAD = true;                      // Печать заголовка
PRINT_FOOT = true;                      // Печать подножия
POSITION_ENABLED = true;                // Помечена
//------------------------------------------------------------------------------
// [s]ortings [g]roupings - константы группировок 
//------------------------------------------------------------------------------
// MAX = 255
sg_Department     : TGroupingSorting = 1;  // подразделение
sg_Category       : TGroupingSorting = 2;  // категория
sg_OperatingMode  : TGroupingSorting = 3;  // режим работы
sg_Analytics      : TGroupingSorting = 4;  // аналитика
sg_Appointment    : TGroupingSorting = 5;  // должность
sg_Brigade        : TGroupingSorting = 6;  // бригада
sg_PaymentMode    : TGroupingSorting = 7;  // система оплаты
sg_Tariff         : TGroupingSorting = 8;  // тариф
sg_Mpf            : TGroupingSorting = 9;  // КТУ
sg_WageCategory   : TGroupingSorting = 10; // разряд
sg_ClockNumber    : TGroupingSorting = 11; // табельный номер
sg_Name           : TGroupingSorting = 12; // фамилия, инициалы
sg_Relatives      : TGroupingSorting = 13; // родственники
sg_IllnesType     : TGroupingSorting = 14; // вид заболевания
sg_IllnesBenefit  : TGroupingSorting = 15; // вид пособия по болезни
sg_IllnesFeatures : TGroupingSorting = 16; // особенности заболевания
sg_Absence        : TGroupingSorting = 17; // неявки


end;

#end

