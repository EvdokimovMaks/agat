//******************************************************************************
//                                                      (с) корпорация Галактика
// Галактика 8.1 - Заработная плата
// Описания зарегистрированных функций
//******************************************************************************

//------------------------------------------------------------------------------
// lowproc.pas
//------------------------------------------------------------------------------
// Инициализация отчетных дат данными из настроек
procedure InitCurrentPeriodDates; external 'G_ZARPL.DLL';

// Месяц расчета
function MonthRas: integer; external 'G_ZARPL.DLL';
// Год расчета
function YearRas: integer; external 'G_ZARPL.DLL';
// Последний день расчетного периода
function DayRas: integer; external 'G_ZARPL.DLL';
// Дата начала расчетного периода
function FirstDayRas: date; external 'G_ZARPL.DLL';
// Дата окончания расчетного периода
function DatRas: date; external 'G_ZARPL.DLL';
#ifdef Gal9_1
function GetUserDate (var YearRas: integer, var MonthRas: integer, var DayRas: integer, var FirstDayRas: date, var DatRas: date): boolean; external 'G_ZARPL.DLL';
//------------------------------------------------------------------------------
// Методы для работы с учетными датами
//------------------------------------------------------------------------------
#doc
  Возвращает месяц учетного периода по дате
#end
function AD_Month(D: date): byte; external 'G_ZARPL.DLL';

#doc
  Возвращает год учетного периода по дате
#end
function AD_Year(D: date): integer; external 'G_ZARPL.DLL';

#doc
  Возвращает порядковый номер дня в учетном периоде по дате
#end
function AD_DayNo(D: date): byte; external 'G_ZARPL.DLL';

#doc
  Возвращает количество календарных дней в учетном периоде по дате
#end
function AD_Days(D: date): byte; external 'G_ZARPL.DLL';

#doc
  Возвращает дату начала учетного периода по дате
#end
function AD_FirstDate(D: date): date; external 'G_ZARPL.DLL';

#doc
  Возвращает дату окончания учетного периода по дате
#end
function AD_LastDate(D: date): date; external 'G_ZARPL.DLL';

#doc
  Возвращает дату по порядковому номеру дня, месяцу и году учетного периода
#end
function AD_Date(DayNo: byte, Month: byte, Year: integer): date; external 'G_ZARPL.DLL';

#doc
  Возвращает дату окончания учетного периода по дате в строковом формате
#end
function AD_ToChar(D: date, FormatString: string): string; external 'G_ZARPL.DLL';

//------------------------------------------------------------------------------
// Методы для работы с учетным месяцем
//------------------------------------------------------------------------------
#doc
  Возвращает количество календарных дней в учетном месяце
#end
function AM_Days(Month: byte, Year: integer): byte; external 'G_ZARPL.DLL';

#doc
  Возвращает дату первого дня в учетном месяце
#end
function AM_FirstDate(Month: byte, Year: integer): date; external 'G_ZARPL.DLL';

#doc
  Возвращает дату последнего дня в учетном месяце
#end
function AM_LastDate(Month: byte, Year: integer): date; external 'G_ZARPL.DLL';

#doc
  Возвращает дату последнего дня в учетном месяце в строковом формате
#end
function AM_ToChar(Month: byte, year: integer, FormatString: string): string; external 'G_ZARPL.DLL';
#end


