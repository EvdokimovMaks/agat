// ���᮪ ��, ��ନ஢����� �������᪨� ���㦨������

#doc
������ ��ନ஢����� ��
#end
.AutoForm 'Abonent_Builded_DO'(var _dbeg,_d1,_d2:date)
.NameInList '������ ��ନ஢����� ��'
!.list ''
.Create view AbonentDO
var
  _Status : word;
  _Marker : longint;
  datechanged : boolean;
  (
  SimvolB
  )
as select
  oValFunc.GetValSymbol(BaseDoc.cVal)
from
   BaseDoc
  ,KatOrg
where
  ((
      word(201)         ==  BaseDoc.VidDoc
  and _Status           ==  BaseDoc.Status
  and _dbeg            <<=  BaseDoc.dDoc
  and Add_Day(_dbeg,1) >>=  BaseDoc.dDoc
  and BaseDoc.cOrg      ==  KatOrg.NRec
  ))

Condition byMade = FoundMarker(_Marker, BaseDoc.nRec)

//order by BaseDoc.VidDoc, BaseDoc.Status, BaseDoc.dDoc
;
.fields
 CommonFormHeader
 _dbeg
 _d1
 _d2
 if (_Status = 1,'�� ��ଫ塞�','�� �ᯮ��塞�')
!.{
  BaseDoc.DesGr
  BaseDoc.Descr
  BaseDoc.NoDoc
  BaseDoc.dDoc
  KatOrg.Name
  BaseDoc.Total
  SimvolB
!.}
.endfields
.begin
  ReadMyDsk(_Status,'Abonent_StatusDO4frm',datechanged);

  _Marker := InitMarker('DoMadeAbonent', 8, 1000, 100);

  PushCondition(tcbyMade);
end.
^
��                    �������� ��ନ஢����� �� �� �த�����
                            �� ���� �� ^ ��
                 (���㬥��� �� ��ਮ� � �� ^ �� �� �� ^ ��)��
                      ���ﭨ� ^

.{table 'AbonentDO.BaseDoc'
.[h                                                                              // ��!
�������������������������������������������������������������������������������������������
 ��㯯�����ਯ�್���� ��� ��� ��  �      ����ࠣ���      �   �㬬� �� ��   � �����
�������������������������������������������������������������������������������������������
.]h
!.{table 'AbonentDO.BaseDoc' by BaseDoc.VidDoc, BaseDoc.Status, BaseDoc.dDoc
�� @@@@@@    @@@@@@@ @@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&&.&&   @@@@@@��
.}
.endform
