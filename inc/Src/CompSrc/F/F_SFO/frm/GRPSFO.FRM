//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 7.12 - ���殤����
// ����� �ࠢ�筨�� ��㯯 ���
//------------------------------------------------------------------------------

#doc
����� �ࠢ�筨�� ��㯯 ���.<br>
#end
.Form LstGrSFO
.Hide
.Fields
   ShDopSize1 : String ShDopSize2 : String
   ShDopAttr1 : String ShDopAttr2 : String ShDopAttr3 : String
   fKod : String  fName : String  fEd : String
   fRost : String fOd1 : String   fOd2 : String
   fOb : String   fGUb : String   fPerch : String
   fICZ : String  fPog : String   fOb2 : String
   fClimZn : String fCatEmp : String fProtCl : String fGender : String
   fUv : String   fSizes : String
   fClean : Word  fByPers : Word  fGrNRec : Comp
   fSeason : String
.endFields
   ^ ^ ^ ^ ^
.{
   ^ ^ ^
   ^ ^ ^ ^ ^ ^ ^ ^ ^
   ^ ^ ^ ^
   ^ ^ ^ ^ ^
   ^
.}
.endform

.LinkForm LstGrpSFOKodName Prototype IS LstGrSFO
.NameInList '���쪮 ���� � �������� ��㯯 ᯥ樠�쭮� (�ଥ����) ������'
.Fields
   CommonFormHeader
   fKod  fName  fEd
.endFields
  ^

                     ��㯯� ᯥ樠�쭮� (�ଥ����) ������
 ��������������������������������������������������������������������������Ŀ
 �        ���         �              ������������            � ������ ���. �
 ����������������������������������������������������������������������������
.{
  @@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@
.}
.endform

.LinkForm LstGrpSFOAll Prototype IS LstGrSFO
.NameInList '������ ���ଠ�� �� ��㯯�� ᯥ樠�쭮� (�ଥ����) ������'
.Fields
   CommonFormHeader
   if (Lic_ItemExists('Custom'), '������', '')
   if (ShDopSize1 <> '', '������', '')
   if (ShDopSize2 <> '', '������', '')
   if (ShDopAttr1 <> '', '������', '')
   if (ShDopAttr2 <> '', '������', '')
   if (ShDopAttr3 <> '', '������', '')
   if (Lic_ItemExists('Custom'), ' ���.�', '')
   if (ShDopSize1 <> '', Pad(ShDopSize1, 5) + '�', '')
   if (ShDopSize2 <> '', Pad(ShDopSize2, 5) + '�', '')
   if (ShDopAttr1 <> '', Pad(ShDopAttr1, 5) + '�', '')
   if (ShDopAttr2 <> '', Pad(ShDopAttr2, 5) + '�', '')
   if (ShDopAttr3 <> '', Pad(ShDopAttr3, 5) + '�', '')
   if (Lic_ItemExists('Custom'), '������', '')
   if (ShDopSize1 <> '', '������', '')
   if (ShDopSize2 <> '', '������', '')
   if (ShDopAttr1 <> '', '������', '')
   if (ShDopAttr2 <> '', '������', '')
   if (ShDopAttr3 <> '', '������', '')
.endFields
��  ^

                                       ��㯯� ᯥ樠�쭮� (�ଥ����) ������
 ������������������������������������������������������������������������������������������������������^^^^^^�������������������Ŀ
 �      ���      �              ������������              ���.����७�ﳐ��� ��.� ��.��.㡳���糑�����^^^^^^���� �� ��뤠� �/���
 ������������������������������������������������������������������������������������������������������^^^^^^���������������������
.{
.Fields
   fKod  fName  fEd
   fRost fOd1 fOb fGUb fPerch fICZ
   if (Lic_ItemExists('Custom'), Pad('  ' + fPog, 6), '')
   if (ShDopSize1 <> '', Pad('  ' + fOd2, 6), '')
   if (ShDopSize2 <> '', Pad('  ' + fOb2, 6), '')
   if (ShDopAttr1 <> '', Pad('  ' + fClimZn, 6), '')
   if (ShDopAttr2 <> '', Pad('  ' + fCatEmp, 6), '')
   if (ShDopAttr3 <> '', Pad('  ' + fProtCl, 6), '')
   fGender fUv fSeason
.endFields
  @@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@  &&   &&   &&   &&   &&   &&   ^^^^^^&&   @   @~@@@@@@@@@
.}��
.endform
