//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 7.12 - ���殤����
// ����� �ॡ������ �� �뤠�� ���
//------------------------------------------------------------------------------

#doc
����� ࠧ��ᥭ��� � ��ࠧ��ᥭ��� �� �ॡ������ �� �뤠�� ���.<br>
#end
.Set Name = 'ReqSFOProt'
.Hide
.Var
  IsCustom : boolean;
.endVar
.Begin
  if (Lic_ItemExists('Custom'))
    IsCustom := True;
end.
.Fields
  ShDopSize1 : String ShDopSize2 : String
// ����� �ॡ������
  dNumber : String  dDate : Date  fDesGr : String  fDescr : String
  PersName : String  TabN : String  CardN : String
  r_Rost : String  r_od1 : String  r_od2 : String  r_ob : String
  r_gu : String  r_perch : String  r_isz : String  r_pog : String  r_ob2 : String
  PodrToName : String  MOLToName : String
  PodrFrName : String  MOLFrName : String
  WriteSize : Boolean  ReqNRec : Comp
  NormKod : String NormName : String
  MyOrgName : String NDE_ShName : String
// ��ப� ᯥ�䨪�樨 - ��� �� ��㯯� ��� ��� �।����, �뤠��� �� ��㯯�
  GrKind : Word GrKod  : String  GrName : String  GrEd : String  trbKol : Word  otpKol : Word
  SFOKod : String  SFOName : String  SFOPrice : Double  SFOKol : Double
  SFOIznS : Double  SFOType : Word SFOSize : String PartyKod : String PartyName : String
// �����ᠭ��
  �����ᠭ�_nRec : comp
  �����ᠭ�_��� : String
  �����ᠭ�_�������_����� : String
  �����ᠭ�_��������� : String
  �����ᠭ�_���� : String
.endFields
   ^ ^
.{
   ^ ^ ^ ^
   ^ ^ ^
   ^ ^ ^ ^ ^ ^ ^ ^ ^
   ^ ^
   ^ ^
   ^ ^
   ^ ^
   ^ ^
.{
   ^ ^ ^ ^ ^ ^ | ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter FeeSignersCycle_ReqSFOProt
   ^ ^ ^ ^ ^
.}
.}
.endForm

//-------------------------------------------------------------------------

.LinkFORM ReqSFO01 Prototype Is ReqSFOProt
.NameInList '�ॡ������ �� �뤠�� ᯥ樠�쭮� (�ଥ����) ������'
.Group '��ࠧ��ᥭ��'
.Fields
   CommonFormHeader  MyOrgName
   dNumber   DateToStr(dDate, 'DD/MM/YYYY')
   PersName  TabN  CardN
   r_Rost  r_od1  r_ob
   r_gu  r_perch  r_isz
   if (IsCustom, '  ' + '������' + ' ', '')
   if (IsCustom, r_pog, '')
   if (ShDopSize1 <> '', '  ' + ShDopSize1 + ' ', '')
   if (ShDopSize1 <> '', r_od2, '')
   if (ShDopSize2 <> '', '  ' + ShDopSize2 + ' ', '')
   if (ShDopSize2 <> '', r_ob2, '')
.endFields
.{
�� ^
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 �ॡ������ � ��^�� �� ��^�� �� �뤠�� ᯥ樠�쭮� (�ଥ����) ������
 ࠡ�⭨��: ��^��  ���. �: ��^��  ����窠 �: ��^��
 ࠧ����:��� ��^��  ������ ��^��  ���� ��^��  ���.㡮� ��^��
         ����⪨ ��^��  ����� ��^��^��^��^��^��^��^��
.Fields
   MOLToName  PodrToName
   MOLFrName  PodrFrName
   NDE_ShName NDE_ShName
   if (GrKind = 1, '- ', '')+GrKod  GrName  GrEd  trbKol
.endFields
 �㤠    ���: ��^��
         ���ࠧ�������: ��^��
 ��㤠  ���: ��^��
         ���ࠧ�������: ��^��
��
���������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
�  ��� ��㯯�  �      �������� ��㯯�      �  ��. ���.  ����-���  �������. �  �        ������������       �  ����, @@@@@@  ����-����⮨�����, @@@@@@�
�����������������������������������������������������������������������������������������������������������������������������������������������������
.{
 @@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ &#&&& �
.}
 ���������������������������������������������������������������������������������������������������������������������������������������������������
����
 �뤠�� ������������ :
.{ CheckEnter FeeSignersCycle_ReqSFOProt
.Fields
  if (�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
  �����ᠭ�_���
.EndFields

 ��@@@@@@@@@@@@@@@@@@@@@@@@@��   _________________   ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
         ���������                �������                 ����஢�� ������
.}��

.}
.endForm

//-------------------------------------------------------------------------

.LinkFORM ReqSFO02 Prototype Is ReqSFOProt
.NameInList '�ॡ������ �� �뤠�� ᯥ樠�쭮� (�ଥ����) ������'
.Group '�����ᥭ��'
.var
  nameCnt, frmSum, spcSum, Stoim : Double
.endVar
.Fields
   CommonFormHeader  MyOrgName
   dNumber   DateToStr(dDate, 'DD/MM/YYYY')
   PersName  TabN  CardN
   r_Rost  r_od1  r_ob
   r_gu  r_perch  r_isz
   if (IsCustom, '  ' + '������' + ' ', '')
   if (IsCustom, r_pog, '')
   if (ShDopSize1 <> '', '  ' + ShDopSize1 + ' ', '')
   if (ShDopSize1 <> '', r_od2, '')
   if (ShDopSize2 <> '', '  ' + ShDopSize2 + ' ', '')
   if (ShDopSize2 <> '', r_ob2, '')
.endFields
.{
.begin
  nameCnt := 0;
  frmSum := 0;
  spcSum := 0;
end.
�� ^
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 �ॡ������ � ��^�� �� ��^�� �� �뤠�� ᯥ樠�쭮� (�ଥ����) ������
 ࠡ�⭨��: ��^��  ���. �: ��^��  ����窠 �: ��^��
 ࠧ����:��� ��^��  ������ ��^��  ���� ��^��  ���.㡮� ��^��
         ����⪨ ��^��  ����� ��^��^��^��^��^��^��^��
.Fields
   MOLToName  PodrToName
   MOLFrName  PodrFrName
   NDE_ShName NDE_ShName

   if (GrKind = 1, '- ', '')+GrKod  GrName  GrEd  trbKol  otpKol

   SFOKod  SFOName + if (WriteSize and (Trim(SFOSize) <> ''), ' (' + SFOSize + ')', '')
   SFOPrice  SFOKol  Stoim
   if (SFOType = 1, '��', if (SFOType = 2, 'ᯥ�', ''))
.endFields
 �㤠    ���: ��^��
         ���ࠧ�������: ��^��
 ��㤠  ���: ��^��
         ���ࠧ�������: ��^��
��
����������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
�  ��� ��㯯�  �     �������� ��㯯�     �  ��. ���.  ����ॡ�����.�  �������. �  �      ������������       � ����, @@@@@@ ����-����⮨�����, @@@@@@���⥣�
������������������������������������������������������������������������������������������������������������������������������������������������������������
.{
.begin
  if (otpKol > 0)
    nameCnt := nameCnt + 1;

  Stoim := SFOPrice * SFOKol - if (wGetTune('Fin.MBP.OstStoim') = 0, 0, SFOIznS);

  case (SFOType) of
    1: frmSum := frmSum + Stoim;
    2: spcSum := spcSum + Stoim;
  end;
end.
 @@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@  &#&&& &#&&& �@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@ &#'&&&&&&&&.&& &#&&&& &#'&&&&&&&&&&&.&& @@@@@
.}
 ����������������������������������������������������������������������������������������������������������������������������������������������������������
����
.Fields
  nameCnt  frmSum  NDE_ShName  spcSum  NDE_ShName
.endFields
�� �뤠�� ������������ : @@@@@@@@@��

�� �㬬�  �� �ଥ���� : &'&&&&&&&&&&&&.&& @@@@@@��
��      �� ᯥ樠�쭮� : &'&&&&&&&&&&&&.&& @@@@@@��
.{ CheckEnter FeeSignersCycle_ReqSFOProt
.Fields
  if (�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
  �����ᠭ�_���
.EndFields

 ��@@@@@@@@@@@@@@@@@@@@@@@@@��   _________________   ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
         ���������                �������                 ����஢�� ������
.}��

.}
.endForm

//-------------------------------------------------------------------------
