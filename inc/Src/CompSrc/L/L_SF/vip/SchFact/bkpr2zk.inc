//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 7.12 - ����⨢�� ������
// ����⠭�� ���� �த��/���㯮�
//******************************************************************************

#ifNdef __BKPR2ZK_INC
#define __BKPR2ZK_INC

const
  sPlatFieldName = '���⥦';   // ������������ ��������� ��� ���� ���⥦� (�� � ����� �த��/���㯮�)
  sOtgrFieldName = '���㧪�'; // ������������ ��������� ��� ���� ���㧪� (����� �த��/���㯮�)

  // ����⠭�� ��� 䫠��� ����� ॣ����樨
  cwCorrAvans   : Word = 1;  // ���४������ ������, �ਧ��� ����ᮢ��� ���㬥��
  cwSetGTD      : Word = 2;  // ���४������ ������, �ਧ���, �� ����� ������ ���
  cwCorr_Dop    : Word = 4;  // ���४������ ������, �ਧ��� ��������� � ���.����
  cwSpecCorr_Pr : Word = 8;  // ���४������ ������ ����� �த��, ������ ��뫠���� �� ���४��㥬�� ������ �� ��㣮� ��

  // �������� �����
  cw_Bound_Date      : Word = 1; // �� ��ਮ��
  cw_Bound_ValDate   : Word = 2; // �� ��ਮ�� � �����
  cw_Bound_Val       : Word = 3; // �� �����
  cw_Bound_Object    : Word = 4; // �� ��ꥪ�� ��ந⥫��⢠
  cw_Bound_Descr     : Word = 5; // �� ���ਯ���
  cw_Bound_DescrDate : Word = 6; // �� ���ਯ��� � ���
  cw_Bound_DesGr     : Word = 7; // �� ��㯯� ���ਯ�஢
  cw_Bound_DesGrDate : Word = 8; // �� ��㯯� ���ਯ�஢ � ���

  cw_Condition_Object      : Word = 1;  // �� ��ꥪ�� ��ந⥫��⢠
  cw_Condition_KatOrg      : Word = 2;  // �� ����ࠣ����
  cw_Condition_OtvPodr     : Word = 4;  // �� 業��� �⢥��⢥�����
  cw_Condition_Descr       : Word = 8;  // �� ���ਯ���
  cw_Condition_DesGr       : Word = 16; // �� ��㯯� ���ਯ�஢
  cw_Condition_Descr_DO_SF : Word = 32; // �� ���ਯ��� �� ��� ��
  cw_Condition_DesGr_DO_SF : Word = 64; // �� ��㯯� ���ਯ�஢ �� ��� ��

  // ��ଠ�� ����
  cw_Text  : Word = 0; // ����� � ⥪�⮢�� �ଠ�
  cw_Excel : Word = 1; // ����� � �ଠ� Excel
  cw_XML   : Word = 2; // ����� � �ଠ� XML

end;

// ��⠭������� ��� 䫠�� � ��।������� ���祭��
procedure SetFlagsBit(var aWord : Word; aBit, aFlag : Word);
{
  aWord := Word(aWord and (not Word(aBit))); // ��⠭������� ��� � 0
  aWord := Word(aWord or Word(aFlag));       // ��⠭������� � ��� �ਧ���
}

#end //__BKPR2ZK_INC