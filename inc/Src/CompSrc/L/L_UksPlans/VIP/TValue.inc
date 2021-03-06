//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.8x - ��� - ��ࠢ����� ����⠫�� ��ந⥫��⢮�
// �������� ⨯��, ����뢠��� ��ਡ��� ���祭�� ������⥫�� �����
//------------------------------------------------------------------------------

#ifndef _TVALUE_INC_
#define _TVALUE_INC_

#doc
��ਡ��� ���祭�� ������ ������⥫� �����
#end
Type
  TValue = record
    iMode:      integer;  // ��� ����樨 �����
    cRec :      comp;     // ��뫪� �� ������ ����� ref(SpPlan) ��� ref(PlanJob)
    iRegister:  integer;  // (cgPlan, cgFact, ...) + (cgUse, cgPay, ...)           (�. uksValue.inc)
    iPrice:     integer;  // (cgBasic, cgCurrent)  + (cgiTotal, cgiNalog, ...)     (�. uksValue.inc)
    iArticle:   integer;  // cgiPwr, cgiNAZb, cgiKV, ...; cgJobKol, cgJobPrc, ...  (�. uksValue.inc)
    fValue:     double;   // ���祭�� ������⥫� �����
    cPeriod:    comp;     // ��ਮ� �����஢���� ������⥫�
    dBeg:       date;     // ��� ��砫� �����
    dEnd:       date;     // ��� ����砭�� �����
    wConstr:    word;     // ��࠭�祭�� �� ����� � ������⥫�
    iCmpMode:   integer;  // ����� ������⥫� �� �ࠢ����� ������
    wDataLevel: word;     // �஢��� �࠭���� ������
  End;


#doc
��ਡ��� 䠪��᪮�� ������⥫� �����
#end
Type
  TDetail = record
    TiDk:   word;   // ��� ���㬥��
    cDoc:   comp;   // ��뫪� �� ���㬥��
    dDate:  date;   // ��� ����樨
    cSpec:  comp;   // ��뫪� �� ᯥ�䨪��� ���㬥��
    cDog:   comp;   // ��뫪� �� �������
    cApp:   comp;   // ��뫪� �� ���. ᮣ��饭��
    cCal:   comp;   // ��뫪� �� ���
  End;


#doc
��ࠬ���� ��㯯� ������⥫�� �����, ��।��塞�� �� �����ਮ���
#end
Type
  TDistr = record
    iPer:    integer; // ����� ��७�� � ��।������ ������⥫��
    iCor:    integer; // ����� ���४樨 ������⥫��
    iFltReg: integer; // ������ �� ॣ���ࠬ ���   (cgReg_Plan, cgReg_Fact)
    iFltTip: integer; // ������ �� ⨯�� ������⥫�� (cgTip_Use, cgTip_Pay, cgTip_All)
    iFltPrc: integer; // ������ �� ०���� 業       (cgPrc_Basic, cgPrc_Current, cgPrc_All)
    iFltNal: integer; // ������ �� ०���� �������   (cgNal_Total, cgNal_Nalog, cgNal_Nds, cgNal_All)
    iRec:    integer; // ��� ����樨 �����
    cRec:    comp;    // ��뫪� �� ������ ����� ref(SpPlan) ��� ref(PlanJob)
    cPer:    comp;    // ��ਮ� �����஢����
    dBeg:    date;    // ��� ��砫� �����
    dEnd:    date;    // ��� ����砭�� �����
    cObj:    comp;    // ��ꥪ� ��ந⥫��⢠
    iArt:    integer; // ����� �����
    fKol: Array [1..2] of tSumma;  // ������⢮ (��� �᢮���� cgTipU, ��� 䨭���஢���� cgTipP)
    fSum: Array [1..4] of tSumma;  // �㬬� ��� ������� (cgUseB, cgUseC, cgPayB, cgPayC)
    fNal: Array [1..4] of tSumma;  // �㬬� �������     (cgUseB, cgUseC, cgPayB, cgPayC)
    fNDS: Array [1..4] of tSumma;  // �㬬� ���         (cgUseB, cgUseC, cgPayB, cgPayC)
    cValB:    comp;   // ����� �㬬 � ������� 業��
    cValC:    comp;   // ����� �㬬 � ⥪��� 業��
    dDoc:     date;   // ���, ���ன ᮮ⢥����� ��।��塞�� �㬬�
  End;

#end
