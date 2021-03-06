//------------------------------------------------------------------------------
//                                            (c) 1994,2010 ��௮��� �����⨪�
// �����⨪� 8.10 - ������ �����⨪�. ����� "L_Smeta".
// �⫠���� �㭪樨/���ம�।������, �ᯮ��㥬� ����䥩ᠬ� ������
//------------------------------------------------------------------------------
#ifndef _DEBUG_FUNCS_INC_
#define _DEBUG_FUNCS_INC_

// �⮡� ᮡ��� ��������� � �⫠���� ����� ����室��� ����᪠�� ���������
// � �।��।������ ����ᮬ DEBUG: 4onecomp.bat l_smeta /Macro.Define:DEBUG

#ifdef DEBUG
exception
  ExDebug, // ��㯯� �⫠����� �᪫�祭��
  ExDebugAssert (ExDebug), // �᪫�祭��, ������㥬�� �� ����襭�� �⢥ত����
  ExDebugException (ExDebug); // �⫠��筮� �᪫�祭��

// �� ��।������� ����� DEBUG �㤥� �뤠���� �⫠��筮� ᮮ�饭��
#declare DEBUG_ASSERT(_condition, _file=, _line=)
{
  if(not (#_condition) )
  {
    var dbgMsg: string;
    dbgMsg := 'Debug assertion failed: "#_condition"'#13;

    if( '#_line' != '' )
      dbgMsg += ''#13'��ப� #_line';

    if( '#_file' != '' )
      dbgMsg += ''#13'���� #_file';

    dbgMsg += ''#13#13'������஢��� �⫠��筮� �᪫�祭��?';

    if( message( dbgMsg, Confirmation + yesNo  ) = cmYes )
      _raise ExDebugAssert;
  }
}
#end // declare DEBUG_ASSERT

// �� ��।������� ����� DEBUG �㤥� �����஢��� �⫠��筮� �᪫�祭��
#declare DEBUG_RAISE
{
  _raise ExDebugException;
}
#end // declare DEBUG_RAISE

#else // ifdef DEBUG

// �᫨ ����� DEBUG �� ��।���� - ��⠢�塞 � ��� "�������"
#define DEBUG_ASSERT(_condition, _file=, _line=) {}
#define DEBUG_RAISE {}

#end // ifdef DEBUG


#end // _DEBUG_FUNCS_INC_
