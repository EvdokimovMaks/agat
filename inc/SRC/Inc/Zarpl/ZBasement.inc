//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1
// ����⠭�� ������� ��魮�⥩ ��ࠡ�⭮� �����
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// [p]eriod [f]lags
//------------------------------------------------------------------------------
pfInWhichCalculated   = 0; // � ���஬ ���᫥��
pfForWhichCalculated  = 1; // �� ����� ���᫥��
pfInWhichPaidOut      = 2; // � ���஬ �믫�祭�

//------------------------------------------------------------------------------
// �ਧ��� ���筨�� ᢥ����� ��� �।���⥫쭮� ࠧ��᪨
// [p]redistribution [s]ource
//------------------------------------------------------------------------------
// �᭮���� ��� ������
psBasicPayment                = 1;
// ����ﭭ�� ������
psPermanentAdditionalPayment  = 2;
// ���쭨�� ����
psSickList                    = 3;
// ����
psVacation                    = 4;
// �⪫������
psVariance                    = 5;
// ��� �� ⠡��� (���୨�, ���� � �.�.)
psWorkingTableHours           = 6;
// ��ᮡ�� �� ��⥩ �������筮� (⠡�. CHILD)
psChildAllowance              = 7;
// ��୨஢���� ���᪠
psVacation_S_O                = 8;
// ��ᮡ�� �� ��⥩ ࠧ���� (⠡�. CHILDONE)
psChildOneAllowance           = 9;
// ��
ps_P_S                        = 10;
// ��७�� �㬬 �� ����祭�� ���쭨筮�� � ���᪮�
psVacation_B_O                = 11;
// ���᫥��� � �믫��� ⥪�饣� ��ਮ��
psCharge                      = 12;
psPrNaryad                    = 13; // ����
psSumVidOp                    = 14; // ��娢 ���᫥���
psNachisl                     = 15; // ���᫥���
psNeNach                      = 16; // ������塞� �㬬�


//------------------------------------------------------------------------------
// ����⠭�� ��� ��ᬮ�� ᮮ�饭�� � ����� ���� Table SpAllStaff.wNoCon
//------------------------------------------------------------------------------
cgViewZarMes        = 28; // ����⠭�, ��� �ନ஢���� ᯨ᪠ ᮮ�饭�� � ����� ���� ��
cgViewBolnMes       = 50; // ����⠭�, ��� �ନ஢���� ᯨ᪠ ᮮ�饭�� � ����� ���� ���쭨���
//------------------------------------------------------------------------------
// �����䨪���� ᥬ��஢
// [l]ock [s]emaphore [i]dentificator
//------------------------------------------------------------------------------
lsiCommon = 'ChangeOfPeriodThreat_';
lsiZarpl = lsiCommon + 'ZARP';
lsiTabel = lsiCommon + 'TABEL';
lsiKassa = lsiCommon + 'KASSA';
lsiStaff = lsiCommon + 'STAFF';

//------------------------------------------------------------------------------
// �����䨪���� �����䨪��� ����� 㤥ঠ���
//------------------------------------------------------------------------------
kvuNotInCalc = 91; // ���뢠�� �� ���� �� ��ਮ�

//------------------------------------------------------------------------------
// ����ﭭ� 㤥ঠ���
//------------------------------------------------------------------------------
// [pe]rmanet[u]der[t]ype
peutCommon      = 0;  // 0000 0000 - ���筮� ����ﭭ�� 㤥ঠ���
peutThrough     = 1;  // 0000 0001 - ᪢����� ��� ᬥ���� ��楢�� ��⮢
peutVirtual     = 2;  // 0000 0010 - �����⢥��� ᮧ������
peutSecondCalc  = 4;  // 0000 0100 - �ਧ��� ��᫥���饣� ����
peutReserv2     = 8;  // 0000 1000 - १��
peutReserv3     = 16; // 0001 0000 - १��

//------------------------------------------------------------------------------
// ���筨� ������ ��� �롮ન [d]ata[l]schet[t]able
//------------------------------------------------------------------------------
dltLschet   = 1;  // ��楢�� ���
dltForMarks = 2;  // ����⪨