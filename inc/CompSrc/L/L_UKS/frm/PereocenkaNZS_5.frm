//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.1 - ��ࠢ����� ����⠫�묨 �������ﬨ � ��ந⥫��⢮�
// ���⨯ �������� ��८業�� ����⠭��������� ����㤮�����
//------------------------------------------------------------------------------

#include Commission.frn

.Set Name = 'PereocenkaNZS_5'
.NameInList '���⨯ �������� ��८業�� ����⠭��������� ����㤮�����'
.Hide
.Fields
year
npp
InvNum
NameObj
NameOborud
DateIn
ShifrGrp
PriceIn : double
Koeff : double
PriceOut : double
Primechanie
.EndFields
year = ^
.{
npp = ^
InvNum = ^
NameObj = ^
NameOborud = ^
DateIn = ^
ShifrGrp = ^
PriceIn = ^
Koeff = ^
PriceOut = ^
Primechanie = ^
.}
.Fields
#CommissionFields
.EndFields
#CommissionBody(PereocenkaNZS_5)
.EndForm
