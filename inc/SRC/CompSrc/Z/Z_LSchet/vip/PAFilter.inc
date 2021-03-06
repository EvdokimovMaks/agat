//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� ERP 7.12 - ��ࠡ�⭠� ����
// ����⠭�� ��� 䨫��஢ �� ���ࠧ������� � ��楢� ��⠬
//------------------------------------------------------------------------------

Const
// ��㯯� ��� ���᪠ ������ ��� 䨫��� �� ��楢� ��⠬ � ०��� �客 �⭥ᥭ�� ����� [f]ilter[c]lschet[b]y[c]exoz
fcbcForWhichCalc = 0;     // 0000 0000 0000 0000 - �� ����� ���᫥��
fcbcInWhichCalc = 1;      // 0000 0000 0000 0001 - � ���஬ ���᫥��
fcbcInWhichPaid = 2;      // 0000 0000 0000 0010 - � ���஬ �믫�祭�
fcbcLock = 3;             // 0000 0000 0000 0011 - ��᪠ ��� ०��� �⡮� (��� ����� ��� ������ ��� ०�� �⡮� �� ������ � ���஬ ��� �� �����)
fcbcNotNachisl = 4;       // 0000 0000 0000 0100 - ���᫥���
fcbcNotSumVidOp = 8;      // 0000 0000 0000 1000 - ��娢 ���᫥���
fcbcNotUder = 16;         // 0000 0000 0001 0000 - 㤥ঠ���
fcbcNotSumVidUd = 32;     // 0000 0000 0010 0000 - ��娢 㤥ঠ���
fcbcNotNenach = 64;       // 0000 0000 0100 0000 - ������塞� �㬬�
fcbcReserv = 128;         // 0000 0000 1000 0000 - १��
fcbcPeriodExtended = 256; // 0000 0001 0000 0000 - ���७�� ��������� ��� ࠡ��� 䨫��� (������ ����, � �ᯮ�짮���� �㦭� fcsPeriodExtended)

// ����७�� ०��� ࠡ��� ��� ���筮�� ०��� [f]ilter[c]lschet[s]imple
fcsPeriodExtended = fcbcPeriodExtended;  // 0000 0001 0000 0000 - �������⥫쭮� ���७�� ���筮�� ०���, � ⠪�� ���७�� ��������� ��� ࠡ��� 䨫��� �� �堬 �⭥ᥭ�� �����

// ०�� ࠡ��� 䨫��� �� ��楢� ��⠬ ����䥩� [p]rint[s]redn[p]ersonal[f]ilter
pspfCommon = 0; // ���筠� ����㧪�
pspfLschet = 1; // ����㧪� � �।��⠭������묨 ��楢묨 ��⠬�

// ०�� ࠡ��� 䨫��� �� ��ਮ�� ����䥩� [p]rint[s]redn[d]ates[f]ilter
psdfDSK = 0;          // ����� ���� �� DSK
psdfPreSetPeriod = 1;  // ����㧪� � �।��⠭������� ��ਮ���

End;
