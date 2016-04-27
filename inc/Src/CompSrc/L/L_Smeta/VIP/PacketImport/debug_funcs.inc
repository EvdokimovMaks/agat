//------------------------------------------------------------------------------
//                                            (c) 1994,2010 корпорация Галактика
// Галактика 8.10 - Контур логистики. Модуль "L_Smeta".
// Отладочные функции/макроопределения, используемые интерфейсами импорта
//------------------------------------------------------------------------------
#ifndef _DEBUG_FUNCS_INC_
#define _DEBUG_FUNCS_INC_

// Чтобы собрать компонент с отладочным кодом необходимо запускать компиляцию
// с предопределенным макросом DEBUG: 4onecomp.bat l_smeta /Macro.Define:DEBUG

#ifdef DEBUG
exception
  ExDebug, // Группа отладочных исключений
  ExDebugAssert (ExDebug), // исключение, генерируемое при нарушении утверждения
  ExDebugException (ExDebug); // отладочное исключение

// При определенном макросе DEBUG будет выдавать отладочное сообщение
#declare DEBUG_ASSERT(_condition, _file=, _line=)
{
  if(not (#_condition) )
  {
    var dbgMsg: string;
    dbgMsg := 'Debug assertion failed: "#_condition"'#13;

    if( '#_line' != '' )
      dbgMsg += ''#13'Строка #_line';

    if( '#_file' != '' )
      dbgMsg += ''#13'Файл #_file';

    dbgMsg += ''#13#13'Сгенерировать отладочное исключение?';

    if( message( dbgMsg, Confirmation + yesNo  ) = cmYes )
      _raise ExDebugAssert;
  }
}
#end // declare DEBUG_ASSERT

// При определенном макросе DEBUG будет генерировать отладочное исключение
#declare DEBUG_RAISE
{
  _raise ExDebugException;
}
#end // declare DEBUG_RAISE

#else // ifdef DEBUG

// Если макрос DEBUG не определен - вставляем в код "пустышку"
#define DEBUG_ASSERT(_condition, _file=, _line=) {}
#define DEBUG_RAISE {}

#end // ifdef DEBUG


#end // _DEBUG_FUNCS_INC_
