#doc
��⠫�� �� ���⮢
#end
.autoForm 'PrintPayment'
.NameInList '��⠫�� �� ���⮢'
.list '��⠫�� �� ���⮢'
.Create view PrintPayment_main
(
  Params
)
as select
  if((KatPayment.wNalog and 1)<>0,'�','-')+
  if((KatPayment.wNalog and 2)<>0,'�','-')+
  if((KatPayment.wNalog and 4)<>0,'�','-')+
  if((KatPayment.wNalog and 8)<>0,'�','-')
  , KatPayment.*
from
  KatPayment(ReadOnly)
order by KatPayment.Name
;
.fields
  KatPayment.Name
  KatPayment.Code
!  if (KatPayment.wNalog=0,'�室��','���')
  Params
.endfields
��������������������������������������������������������������
 ������������                 � ���           ������ � �த��
��������������������������������������������������������������
.{table 'PrintPayment_main.KatPayment' by KatPayment.Name
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ @~@@@@@@@@@@@@
.}
� - ����� � �த�� �室�� � ����� 業�
� - � �����⭮�/�ᯮ�⭮� ����樨
� - � ����୮� ����樨
� - �� ���뢠�� ���
.endform
!--------------------------------------------------------------------