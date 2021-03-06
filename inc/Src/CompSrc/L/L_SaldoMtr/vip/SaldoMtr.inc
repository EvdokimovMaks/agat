//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.10 - ������� ��� ����ᮢ
// ����⠭�� ��� 楫����� ��� ����ᮢ
//------------------------------------------------------------------------------

#ifndef   __SaldoMtr_inc__
#define   __SaldoMtr_inc__


Const
  // ����⠭� ��� ���᫥��� ���祭�� ���� SaldoRaz.wMode (SaldoObj.wMode)
  // �� ��㫥 SaldoRaz.wMode = ((wVidUch + 1) * cgMode_VidUch), ��� wVidUch - ��� ���� ��� (SpOrder.SP)
  cgMode_VidUch     = 100;

  cgSelReport       = 000100000b; // ���� �����᪨� ���⪨ �� �����⨪��
  cgDSQLSelReport   = 001000000b; // �ନ஢���� ���� � ������� DSQL
  cgRazrezCU        = 010000000b; // ���㧪� ᢮������ ���⪮�, �࠭����� � SaldoObj
  cgCUOneKatStroy   = 100000000b; // ���㧪� ���⪮� ��ꥪ� �� � ��ࢮ� �����⨪�� ��ꥪ� ��ந⥫��⢠

  // ����⠭� �।�����祭��� ��� ࠧ������� 蠡����� ��⮢ ��� �� ����஥� ���祭�� �����⨪ �� �� 㬮�砭�� (���� MaskICN.wList)
  cgDeffSaldTune    = 2;

  // ����⠭�� ��� ���� SaldTune.wAttr
  cgSpis_Tune       = 0; // �� ����ன��
  cgSpis_Enable     = 1; // ࠧ���� ��� ������
  cgSpis_Disable    = 2; // ������� ��� ������
  cgSpis_NoNalOst   = 3; // ��� ������ -> �� ᢮������ ���⪮�
  cgSpis_NoNalCU    = 4; // ��� ������ -> �� �� ��� ᯨᠭ��
  cgSpis_NoNalCUOst = 5; // ��� ������ -> �� �� ��� ᯨᠭ�� / ᢮������ ���⪮�
  cgNotToCU         = 6; // �� ���� ��� � ᠫ줮��� ���⪠�
  cgSpis_DisableTek = 7; // ������� ��� ������ � ⥪��� ���⪮�

  // ����⠭�� ��� ����ன�� "���ᠭ�� �� �� ࠧ१�� ��ꥪ⮢ ��"
  cgSpisTune_Enable     = cgSpis_Enable     - 1; // ࠧ���� ��� ������
  cgSpisTune_Disable    = cgSpis_Disable    - 1; // ������� ��� ������
  cgSpisTune_NoNalOst   = cgSpis_NoNalOst   - 1; // ��� ������ -> �� ᢮������ ���⪮�
  cgSpisTune_NoNalCU    = cgSpis_NoNalCU    - 1; // ��� ������ -> �� �� ��� ᯨᠭ��
  cgSpisTune_NoNalCUOst = cgSpis_NoNalCUOst - 1; // ��� ������ -> �� �� ��� ᯨᠭ�� / ᢮������ ���⪮�
  cgSpisTune_DisableTek = cgSpis_DisableTek - 2; // ������� ��� ������ � ⥪��� ���⪮�

End;

// ���㫠 ��� ���᫥��� ���祭�� ���� SaldoRaz.wMode �� ���祭�� ���� ���� ���
#declare ModeByVidUch(VidUch)
  word((#VidUch + 1) * cgMode_VidUch)
#end

#endif
