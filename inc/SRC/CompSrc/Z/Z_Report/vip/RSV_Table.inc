//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� ERP 9.1 - ��ࠡ�⭠� ����
// ������ ��� ��ࠦ���� �㬬 ���祭��, ��।����� � ��௫���
//------------------------------------------------------------------------------

Table struct mt_Training
(
  tPerson  : tnRec
 ,cLsch    : tnRec
 ,sInsNumb : s20
 ,Summa    : array [1..12] of decimal[31, 15]
 ,wDopPr   : array [1..12] of word
)
With index
(
  mt_Training01 = tPerson
 ,mt_Training02 = sInsNumb + tPerson
 ,mt_Training03 = cLsch
)
;
