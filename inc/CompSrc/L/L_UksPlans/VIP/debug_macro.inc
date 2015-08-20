#ifndef _debug_macro_inc_
#define _debug_macro_inc_

#include DebugMacro.vih // отладочные макросы из состава атлантис.

#ifdef DEBUG

  #ifndef DEBUGRAISE
    // в качестве _file, _line следует использовать макросы __FILE__, __LINE__ (это необязательные параметры)
    #declare DEBUGRAISE(_msg, _file=, _line=)
    {
      var dbgMsg: string;
      dbgMsg := #_msg + ''#13;

      if( '#_file' != '' )
        dbgMsg += ''#13'Файл #_file';

      if( '#_line' != '' )
        dbgMsg += ''#13'Строка #_line';

      _raise ExDebugAssertion (dbgMsg);
    }
    #end // declare DEBUGRAISE
  #endif // ifndef DEBUGRAISE

#else // ifdef DEBUG

  #ifndef DEBUGRAISE
    #define DEBUGRAISE(_msg, _file=, _line=) {}
  #endif // ifndef DEBUGRAISE

#endif // ifdef DEBUG

#endif // ifndef _debug_macro_inc_
