//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.1 - �����⨪�
// ���ம�।������ ��ࠡ��稪� ᮡ�⨩
//******************************************************************************

!!!  ���� �� �������������
// 䠩� ᮤ�ন� �᪫��⥫쭮 �맮�� �������� ᮡ�⨩ த�⥫�
// �㦥� ��� ⮣�, �⮡� ᮪���� ��� ��᫥�����


#ifndef _BaseSoprDoc_inc_
#define _BaseSoprDoc_inc_

//--------------------------------------------------------------------------------
#declare HEAbort(Command)
if (inherited :: HandleEvent(#Command) = heAbort)
{
  Abort; Exit
}
#end


//--------------------------------------------------------------------------------
#declare HEStop(Command)
if (inherited :: HandleEvent(#Command) = heStop)
{
  Stop; Exit
}
#end


//--------------------------------------------------------------------------------
#declare HEAbortStop(Command)
{
  var tRes: word;

  tRes := inherited :: HandleEvent(#Command);

  case tRes of
    heAbort: { Abort; Stop; Exit }
    heStop : { Stop; Exit }
  end;
}
#end

#end // _BaseSoprDoc_inc_