#doc
��⠫�� ��㯯 ������ ���������� ��⠢�
#end
.AutoForm 'PrintGrMoveCell'
.NameInList '��⠫�� ��㯯 ������ ���������� ��⠢�'
.list '��⠫�� �� ���⮢'
.Create view PrintGrMoveCell_main
as select
  GrMovCel.*
from
   GrMovCel
order by GrMovCel.Name
;
.fields
  GrMovCel.Name
  GrMovCel.Code
.endfields
             ��⠫�� ��㯯 ������ ���������� ��⠢�
����������������������������������������������������������������
 ������������                             � ���
����������������������������������������������������������������
.{table 'PrintGrMoveCell_main.GrMovCel' by GrMovCel.Name
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@
.}
.endform