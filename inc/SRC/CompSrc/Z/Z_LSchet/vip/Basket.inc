//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.50 - ��ࠡ�⭠� ����
// ����⠭�� ��� ᨣ����� � ࠡ�祩 ��২��
//------------------------------------------------------------------------------

Const

// �ਧ���� ᨣ����� [b]a[s][k]e[t]
// ��������� �����᪨� � � ��⮢�� ��᪮�
bsktProcessed = 1; // ��ࠡ�⠭\�� ��ࠡ�⠭
bsktNeedToWipeTransfers = 2; // �ਧ��� ����室����� ����⪨ ���室��
bsktDataSource = 4; // �ਧ��� ���筨�� ������, ����� ��� ⮫쪮 �� ��ࠡ�⪥  ᨣ����� � ᮧ����� � 㤠����� ������
bsktCorrCoefChanged = 8; // ������� �� ���४����騩 �����樥��
bsktTariffCode = 32; // ��� ��� (��䭠� �⠢��), �� �� �� �祭� �筮
bsktExtraParams = 64; //  �ਧ��� ������ ���. ��ࠬ��஢ (���㠫쭮 �� ��ࠡ�⪥ ������)
bsktPrevEndDate = 128; // �ਧ��� ������������ �।��饩 ���� ����砭��
bsktClearRefund = 256; // ���� �� ᮧ����� ������
bsktKPSChanged = 512; // �������� �� �᫮��� ��㤠 �� ࠡ�祬 ����
bsktRateOfWageChanged = 1024; // ������� �� ������⢮ �⠢��
bsktRegionalCoefChanged = 2048; // ������� �� ࠩ���� �����樥��
bsktNothernChanged = 4096; // ������� �� ᥢ�୮� ��-�, ᥢ�ୠ� ��⥣��� �����
bsktNorthernCategoryFixed = 8192; // ������ ᥢ�୮� ��⥣�ਨ

// ⨯� ᨣ����� [b]a[s][k]e[t]
bsktPass = 0; // ��祣� �� ������
bsktDeletePA = 1; // 㤠���� ��楢�� ���
bsktModifyPA = 2; // ।���஢��� ��楢�� ���
bsktNewSickList = 3; // ���� ���쭨�� ����
bsktDeleteSickList = 4; // 㤠���� ���쭨�� ����
bsktModifySickList = 5; // ।���஢��� ���쭨�� ����
bsktNewVacation = 6; // ���� ����
bsktDeleteVacation = 7; // 㤠���� ����
bsktModifyVacation = 8; // ��ࠢ��� ����
bsktNewSucharge = 9; // ᮧ���� ����ﭭ�� �������
bsktDeleteSucharge = 10; // 㤠���� ����ﭭ�� �������
bsktModifySucharge = 11; // ।���஢��� ����ﭭ�� �������
bsktNewRetention = 12; // ��������� 㤥ঠ���
bsktDeleteRetention = 13; // ������� 㤥ঠ���
bsktNewInterSucharge = 14; // ����� ������ (�����ਮ�)
bsktDeleteInterSucharge = 15; // ������� ������ (�����ਮ�)
bsktSyncSalaryData = 17; // ����஭����� �/� ������
bsktUndoModifyPA = 18; // �⬥���� ।���஢���� ��
bsktRecallFromVacation = 66; // ��� �� ���᪠

// ०�� ��ࠡ�⪨ [s]ignal [h]andling
shManualHandling = 0;// ��ࠡ��뢠�� ������
shAutoWithSignal = 1;// ��ࠡ��뢠�� ��⮬���᪨
shAutoWithoutSignal = 2;// ��ࠡ��뢠�� ��⮬���᪨ � 㤠���� ᨣ��� � ��

// �ਧ��� 䨪�樨 ᥢ�୮� ��⥣�ਨ � ���
rpdNorthernCategoryFixed = 1; 

End;