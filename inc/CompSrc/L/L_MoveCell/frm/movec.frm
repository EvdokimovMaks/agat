#doc
��⠫�� ������ ���������� ��⠢�
#end
.AutoForm 'PrintMoveCellOne'
.NameInList '��⠫�� ������ ���������� ��⠢�'
.list '��⠫�� �� ���⮢'
.Create view PrintMoveCellOne_main
as select
  MoveCell.*
from
   MoveCell
 , GrMovCel
where ((MoveCell.cGrMovCel == GrMovCel.NRec))
order by MoveCell.Name
;

.fields
  MoveCell.Name
  MoveCell.Code
  GrMovCel.Name
.endfields
             ��⠫�� ������ ���������� ��⠢�
��������������������������������������������������������������������������������������
 ������������                             � ���                 � ��㯯�
��������������������������������������������������������������������������������������
.{table 'PrintMoveCellOne_main.MoveCell' by MoveCell.Name
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@
.}
.endform