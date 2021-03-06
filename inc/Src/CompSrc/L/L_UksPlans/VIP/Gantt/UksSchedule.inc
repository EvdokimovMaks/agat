//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.10 - ��� - ��ࠢ����� ����⠫�� ��ந⥫��⢮�
// ����⠭�� � ⨯� ��� �������� �஥�� (����� ࠡ��)
//------------------------------------------------------------------------------

#ifndef __Schedule_inc__
#define __Schedule_inc__

Const

  // ⨯ ࠡ��
  lPrjType  = 1;
  lWorkType = 2;
  // ⨯ �����
  lHumanType    = 0;
  lMaterialType = 1;
  // ⨯ �裡
  lStartToStart = 0;
  lStartToEnd   = 1;
  lEndToStart   = 2; // �� 㬮�砭��
  lEndToEnd     = 3;

  // ����⠭�� ��� ᤥ������ � ���� ࠡ�� ���������
  cgMod_Insert =    0; // ������ ���������
  cgMod_Update =    1; // ������ ������஢���
  cgMod_Delete =    2; // ������ 㤠����
  cgMod_None   = 1000; // ��� ���������

  // ����⠭�� ��� ⨯�� ��࠭�祭�� �����
  cgConstr_FIRST_TYPE = 0; // �.�. ࠢ�� �����䨪���� ⨯� � �������訬 ���祭���
  cgConstr_ASAP   = 0; // ��� ����� ࠭��         | As Soon As Possible
  cgConstr_ALAP   = 1; // ��� ����� �����          | As Late As Possible
  cgConstr_FNLT   = 2; // ����砭�� �� �������     | Finish No Later Than
  cgConstr_FNET   = 3; // ����砭�� �� ࠭��       | Finish No Earlier Than
  cgConstr_SNET   = 4; // ��砫� �� ࠭��          | Start No Earlier Than
  cgConstr_SNLT   = 5; // ��砫� �� �������        | Start No Later Than
  cgConstr_Finish = 6; // ����஢����� ����砭��  | Finish On
  cgConstr_Start  = 7; // ����஢����� ��砫�     | Start On
  cgConstr_LAST_TYPE = 7; // �.�. ࠢ�� �����䨪���� ⨯� � ������訬 ���祭���

  // ��稭� ����� ᮧ����� �痢� ࠡ��
  cgDisable_None =  0; // ��� �����
  cgDisable_Sub  =  2; // ࠡ�� ���� ������饩 ��� ⥪�饩
  cgDisable_Next =  4; // �ਢ���� � 横���᪮� �裡
  cgDisable_Fact =  8; // � ࠡ��� ���� 䠪�
  cgDisable_Self = 16; // ⥪��� ࠡ��

  // ����⠭�� ०���� ����㧪� �����
  cgLoad_None  = 0;
  cgLoad_Task  = 1; // ⮫쪮 � �����, ����� �易�� � ⥪�饩 - ��� ������ ��᫥ ��������� ��ࠬ��஢ �����
  cgLoad_Part  = 2; // ⮫쪮 � ���� �����, ������ �㦭� �⮡ࠧ��� � ���� �롮� �।��⢥�����
  cgLoad_All   = 3; // �� ����� - ��� ������� ������
  cgLoad_Gantt = 4; // ⮫쪮 � ���� �����, ������ �㦭� �⮡ࠧ��� �� ����ࠬ�� ����

  cgTaskInfo = 50000; // ��� ����ᥩ � �裡 �����

End;

//------------------------------------------------------------------------------
#include UksSchedule.tbl // ������� � ����� ��� �������� �஥�� (����� ࠡ��)

//------------------------------------------------------------------------------
Type TTask  = record as Table mtTask;
Type TPTask = record as Table mtTask with x$position;

//------------------------------------------------------------------------------
// �������� - ��� ��뫮� �� ��ਮ��
Type TRange = record
  cBeg: comp;
  cEnd: comp;
end;

//------------------------------------------------------------------------------
// ��� ���������� (��� ����� � 䠪�)
Type TCouple = record
  rPlan: TRange;
  rFact: TRange;
end;

#endif // __Schedule_inc__
