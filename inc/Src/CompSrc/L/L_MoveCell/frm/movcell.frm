#doc
��⠫�� ������ ���������� ��⠢� ��� ��
#end
.AutoForm PrintCellVal_MC(var pMC:comp)
.NameInList '��⠫�� ������ ���������� ��⠢� ��� ��'
.list '��⠫�� ������ ���������� ��⠢� ��� ��'
.Create view PrintCellVal_main
as select
   CellVal.*
  ,MoveCell.*
  ,KatMC.*
From
   MoveCell
  ,CellVal  (Normal)
  ,KatMC
  ,KatEd
where
  ((
      word(0)           == CellVal.PrMC
  and pMC               == CellVal.cMC
  and CellVal.cMoveCell == MoveCell.nRec
  and pMC               == KatMC.nRec
  and KatMC.cEd         == KatED.NRec
  ))
;
.fields
  KatMC.Name
  KatMC.BarKod
  KatEd.Name
  MoveCell.Name
  MoveCell.Code
  CellVal.koef
.endfields

            ������� ���������� ��⠢� ��� ��
.{table 'PrintCellVal_main.KatMC' by KatMC.Name
������������ ��:      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
������������ �����: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
��⭠� ������ ����७��: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
��������������������������������������������������������������
 ������������                 � ���           � �����樥��
��������������������������������������������������������������
.{table 'PrintCellVal_main.CellVal' by MoveCell.Name
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ &&&&&&&&.&&&&
.}
.endform
!--------------------------------------------------------------------

#doc
��⠫�� ������ ���������� ��⠢� ��� ������� ��
#end
.AutoForm PrintCellVal_MaskMC(var pMaskMC:comp)
.NameInList '��⠫�� ������ ���������� ��⠢� ��� ������� ��'
.list '��⠫�� ������ ���������� ��⠢� ��� ������� ��'
.Create view PrintCellVal_main
as select
   CellVal.*
  ,MoveCell.*
  ,MaskMC.*
From
   MoveCell
  ,CellVal  (Normal)
  ,MaskMC
  ,KatEd
where
  ((
      word(1)           == CellVal.PrMC
  and pMaskMC           == CellVal.cMC
  and CellVal.cMoveCell == MoveCell.nRec
  and pMaskMC           == MaskMC.nRec
  and MaskMC.cEd        == KatED.NRec

  ))
;
.fields
  MaskMC.Name
  MaskMC.BarKod
  KatEd.Name
  MoveCell.Name
  MoveCell.Code
  CellVal.koef
.endfields

         ������� ���������� ��⠢� ��� ������� ��
.{table 'PrintCellVal_main.MaskMC' by MaskMC.Name
������������ ������� ��: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
������������ �����:    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
��⭠� ������ ����७��: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
��������������������������������������������������������������
 ������������                 � ���           � �����樥��
��������������������������������������������������������������
.{table 'PrintCellVal_main.CellVal' by MoveCell.Name
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ &&&&&&&&.&&&&
.}
.endform

#doc
��⠫�� ������ ���������� ��⠢� ��� ���
#end
.AutoForm PrintCellVal_Usl(var pUsl:comp)
.NameInList '��⠫�� ������ ���������� ��⠢� ��� ���'
.list '��⠫�� ������ ���������� ��⠢� ��� ���'
.Create view PrintCellVal_main
as select
   CellVal.*
  ,MoveCell.*
  ,KatUsl.*
From
   MoveCell
  ,CellVal  (Normal)
  ,KatUsl
  ,KatEd
where
  ((
      word(0)           == CellVal.PrMC
  and pUsl              == CellVal.cMC
  and CellVal.cMoveCell == MoveCell.nRec
  and pUsl              == KatUsl.nRec
  and KatUsl.cEd        == KatED.NRec
  ))
;
.fields
  KatUsl.Name
  KatUsl.Kod
  KatEd.Name
  MoveCell.Name
  MoveCell.Code
  CellVal.koef
.endfields

            ������� ���������� ��⠢� ��� ���
.{table 'PrintCellVal_main.KatUsl' by KatUsl.Name
������������ ��㣨:  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
������������ �����: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
��⭠� ������ ����७��: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
��������������������������������������������������������������
 ������������                 � ���           � �����樥��
��������������������������������������������������������������
.{table 'PrintCellVal_main.CellVal' by MoveCell.Name
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ &&&&&&&&.&&&&
.}
.endform
!--------------------------------------------------------------------
