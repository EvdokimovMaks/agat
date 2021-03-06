// ���⪨ �� ��
Table Struct TmpNalT
(
  cMc  : comp   "���業�����"
, cPodr: comp   "���ࠧ�������"
, NalT : double "���⮪"
)
with index
(
  TmpNalT01 = cMc + cPodr
)
;

// �⮣��� �㬬� �� ��㯯�
Table Struct TmpGroupMove
(
  cGrPodr   : comp   "��㯯� ���ࠧ�������"
, cGroupMC  : comp   "��㯯� ��"
, NameGr    : string
, NameGrPodr: string
, NameEd    : string
, KolBeg    : double "������⢮ �� ��砫�"
, KolIn     : double "������⢮, ��室"
, KolOut    : double "������⢮, ��室"
, KolEnd    : double "������⢮ �� ����� ��ਮ��"
)
with index
(
  TmpGroupMove00 = cGrPodr + cGroupMC
, TmpGroupMove01 = NameGrPodr + NameGr
, TmpGroupMove02 = KolBeg + KolEnd
)
;

// �⮣��� �㬬� �� �����祭��
Table Struct TmpNaznaMove
(
  cNazna   : comp    "�����祭��"
, Name     : string
, KolBeg   : double  "������⢮ �� ��砫�"
, KolIn    : double  "������⢮, ��室"
, KolOut   : double  "������⢮, ��室"
, KolEnd   : double  "������⢮ �� ����� ��ਮ��"
, boPrih   : boolean "TRUE, �᫨ ��室"
, boRash   : boolean "TRUE, �᫨ ��室"
)
with index
(
  TmpNaznaMove00 = cNazna
, TmpNaznaMove01 = boPrih + Name
, TmpNaznaMove02 = boRash + Name
)
;

// �㬬� �� ���業����
Table Struct TmpMCMove
(
  cMc      : comp   "���業�����"
, cGroupMC : comp   "��㯯� ��"
, cNazna   : comp   "�����祭��"
, cGrPodr  : comp   "��㯯� ���ࠧ�������"
, KolBeg   : double "������⢮ �� ��砫�"
, KolIn    : double "������⢮, ��室"
, KolOut   : double "������⢮, ��室"
, KolEnd   : double "������⢮ �� ����� ��ਮ��"
)
with index
(
  TmpMCMove00 = cGrPodr + cGroupMC + cMc + cNazna
, TmpMCMove01 = cMc + cGroupMC + cGrPodr
, TmpMCMove02 = cMc + cNazna + cGrPodr
)
;

// �㬬� �� ࠧ१� �����祭��/��㯯� ��/��� ���⥫쭮��
Table Struct TmpLesMove
(
  cNazna   : comp   "�����祭��"
, cGroupMC : comp   "��㯯� ��"
, cGrPodr  : comp   "��㯯� ���ࠧ�������"
, KolIn    : double "������⢮, ��室"
, KolOut   : double "������⢮, ��室"
)
with index
(
  TmpLesMove00 = cNazna  + cGrPodr + cGroupMC
, TmpLesMove01 = cGrPodr + cGroupMC + cNazna
)
;
