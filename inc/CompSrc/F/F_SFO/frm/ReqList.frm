//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.10 - ���殤����
// ����� ॥��� �ॡ������ �� �뤠�� ���
//------------------------------------------------------------------------------

#doc
����� ॥��� �ॡ������ �� �뤠�� ���.<br>
#end
.Set Name = 'ReqListProt'
.Hide
.Fields
// ������
  OrgName
  OrgOKPO
  rNum
  rDate : Date
  PodrTo
  MolTo
  MolToSh
  PodrFr
  MolFr
  MolFrSh

// �뤠��� �।����
  Npp : Longint
  CardN
  TabN
  PersName
  SFOName
  SFOKod
  EdName
  EdKod
  dExpl : Date
  Kol : Double
  Srok
.endFields
.{
  ^ ^
  ^ ^
  ^ ^ ^
  ^ ^ ^

.{ ListBySFO CheckEnter
  ^
  ^ ^ ^
  ^ ^
  ^ ^
  ^ ^ ^
.}
.}
.endForm
