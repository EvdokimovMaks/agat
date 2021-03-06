#ifndef _debug_macro_inc_
#define _debug_macro_inc_

#include DebugMacro.vih // �⫠���� ������ �� ��⠢� �⫠���.

#ifdef DEBUG

  #ifndef DEBUGRAISE
    // � ����⢥ _file, _line ᫥��� �ᯮ�짮���� ������ __FILE__, __LINE__ (�� ����易⥫�� ��ࠬ����)
    #declare DEBUGRAISE(_msg, _file=, _line=)
    {
      var dbgMsg: string;
      dbgMsg := #_msg + ''#13;

      if( '#_file' != '' )
        dbgMsg += ''#13'���� #_file';

      if( '#_line' != '' )
        dbgMsg += ''#13'��ப� #_line';

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
