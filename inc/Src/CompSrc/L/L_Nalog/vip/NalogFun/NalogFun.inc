//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.1 - �����⨪�
// �㭪樨 ���� �������. ������ � ����� - १���� ���⮢
//******************************************************************************
#component "L_Nalog"

//******************************************************************************
Table Struct Tmp_SpDocNal "����� SpDocNal"
(
  cSpDoc    : tNRec          "������ ���㬥��"
, cDoc      : tNRec          "��뫪� �� ���㬥��"
, TipDoc    : Word           "��� ���㬥��"
, cGrNal    : tNRec          "��뫪� �� GrNal"
, cNalog    : tNRec          "��뫪� �� ����� ( Katnalog )"
, Nalog     : tSumma         "�⠢�� ������"
, SumNal    : tSumma         "�㬬� ������ � ���. ������"
, cVal      : tNRec          "����� ������"
, SumVal    : tSumma         "�㬬� ������ � ����� ���㬥��"
, Summa     : tSumma         "�㬬� ������ � ���"
, IsAgreg   : boolean        "��ॣ�஢��� �� �⠢��� - ��/���"
, cOrg      : tNRec          "��뫪� �� �����⥫� ������"
, ValCurse  : tSumma         "���� 㯫��� ������ � ���"
, CrosCurse : tSumma         "���� 㯫��� ������ � SumVal"
, Npp       : tNpp           "���冷� ��� ���஢��"
, IsCustom  : Word           "����� �� SpGrNal"                         //  +1 - ⠬����
, rSumma    : tSumma         "�㬬� ������ � ��� (������.)"
, rSumVal   : tSumma         "�㬬� ������ � ����� ���-� (������.)"
, rSumNal   : tSumma         "�㬬� ������ � ���. ������ (������.)"
, dCurseVal : Date           "��� ���� �����"
, cSpDocNal : comp           "��뫪� �� SpDocNal"
)
with index
(
  TmpNal_SpDocNal01  =  cSpDoc + TipDoc + cGrNal + cNalog + Nalog
, TmpNal_SpDocNal02  =  cDoc   + TipDoc + cGrNal + cNalog
, TmpNal_SpDocNal03  =  cSpDocNal
, TmpNal_SpDocNal04  =  cSpDoc + TipDoc + Npp    + cNalog
)
;
