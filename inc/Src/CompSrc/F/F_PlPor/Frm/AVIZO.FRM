//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.0 - ��壠���᪨� ������
// �室�騥 � ��室�騥 ����饭�� (�����)
//------------------------------------------------------------------------------

#doc
�室�騥 � ��室�騥 ����饭�� (�����)
#end
.form 'Avizo'
.group '��室�饥 �����'
.nameinlist '������� �ଠ'
.hide
.fields
! ��ࠬ���� ����
ParamSum ParamText ParamGroupPrint
! ����� � ����
NoDOK PlPorNRec DatVip1 DatVip2 DatOB1 DatOB2 YEARDOC YEARDOCS MonthDoc DayDoc
AvizoType
! ��� � ����� ���������⮢, �����, ���
MainSch MainSub MainMon MainYear MainYearS
! �᭮�����
BaseName
! �����祭�� ����饭��
NamePl1 NamePl2 NamePl3 NamePl4 NamePl5
! ����� ���㬥��
NdeSim ValNRec ValSim
! ���⥫�騪
PlatName
  PlatTip PlatAddr PlatOKPO PlatTEL PlatUNN
  PlatKodState PlatNameState
  PlatKodCity PlatNameCity PlatTELCity
! �����⥫�
PolName
  PolTip PolAddr PolOKPO PolTEL PolUNN
  PolKodState PolNameState
  PolKodCity PolNameCity PolTELCity
NppOper:integer
OborotNRec
NameOper
  SodPr KorrSchet KorrSub SumDeb: double SumKred: double ValDeb: double ValKred: double
SchDeb SchKred AvizoDir
! �⮣�
AllSumDeb: double AllSumKred: double AllValDeb: double AllValKred: double
! ������⢮ ���㬥�⮢
koldoc
! ���� ����
page_symb
.endfields
#include ExcelFormat.var
.var
  sFormat: string;
  CurSim: string;
  CurText: string;
  CurSchet: string;
  CurDeb, CurKred, CurAllDeb, CurAllKred: double;
  Numero: word;             // ����� ���⠥���� ���������
.endvar

.Begin
  sFormat := '\2p[|-]3666`666`666`666`666`667.88';
  Numero := 0;
end.

.{
.begin
  Numero := Numero + 1;
end.
ParamSum         ��ࠬ��� ����� �㬬 ^
ParamText        ��ࠬ��� ����ঠ��� ����ᥩ ^
ParamGroupPrint  ��ࠬ��� ��㯯���� ����� ^
!
NoDOK            ����� ���㬥�� ^
PlPorNRec        nRec  ���㬥�� ^
DatVip1          ��� �믨᪨ ����. DD/MM/YY ^
DatVip2          ��� �믨᪨ ����. DD mon YYYY �. ^
DatOB1           ��� ����� 䠪��᪠� DD/MM/YY ^
DatOB2           ��� ����� 䠪��᪠� DD mon YYYY �. ^
YEARDOC          ��� ���� �믨᪨ ^
YEARDOCS         ��� ���� �믨᪨ (᮪�.) ^
MonthDoc         ����� ���� �믨᪨ ^
DayDoc           ���� ���� �믨᪨ ^
AvizoType        ��� ����� ^
!
MainSch          ��� ���������⮢ ^
MainSub                      ����� ^
MainMon          ����� ����          ^
MainYear         ���                 ^
MainYearS        ��� ᮪�饭��     ^
!
BaseName         ���㬥��-�᭮�����   ^
NamePl1          ᮤ�ঠ��� ����饭�� ^
NamePl2                               ^
NamePl3                               ^
NamePl4                               ^
NamePl5                               ^
!
NdeSim           ᨬ��� ���:         ^
ValNRec          NRec ������:        ^
ValSim           ᨬ��� ������:      ^
.begin
  CurSim := if((ParamSum = 0) or (ValNRec = 0), NdeSim, ValSim);
end.
!  ���⥫�騪
PlatName         ������������ ^
PlatTip          ���, ���, ��, � �.�. ^
PlatAddr         ���� �࣠����樨 ^
PlatOKPO         ��� �� ���� ^
PlatTEL          ⥫�䮭� + 䠪�� �࣠����樨 ^
PlatUNN          ^
PlatKodState     ��� ��࠭� ^
PlatNameState    ������������ ��࠭� ^
PlatKodCity      ��� ��த� ^
PlatNameCity     ������������ ��த� ^
PlatTELCity      ��� ⥫�䮭� ��த� ^
!  �����⥫�
PolName          ������������ ^
PolTip           ���, ���, ��, � �.�. ^
PolAddr          ���� �࣠����樨 ^
PolOKPO          ��� �� ���� ^
PolTEL           ⥫�䮭� + 䠪�� �࣠����樨 ^
PolUNN           ^
PolKodState      ��� ��࠭� ^
PolNameState     ������������ ��࠭� ^
PolKodCity       ��� ��த� ^
PolNameCity      ������������ ��த� ^
PolTELCity       ��� ⥫�䮭� ��த� ^
.{
NppOper          ����� �/�           ^
OborotNRec       ����� �����        ^
NameOper         ������            ^
SodPr            ᮤ�ঠ��� �஢���� ^
KorrSchet        ����. ���          ^
KorrSub             �����          ^
SumDeb           �㬬� �� ������     ^
SumKred                �� �।���    ^
ValDeb           � ����� �� ������: ^
ValKred                  �� �।���: ^
SchDeb                               ^
SchKred                              ^
AvizoDir                             ^
.begin
  case ParamText of
    0: CurText := string(NppOper) + '. ' + NamePl1 + ' ' + NamePl2 + ' ' + NamePl3 + ' ' +  NamePl4 + ' ' +  NamePl5;
    1: CurText := string(NppOper) + '. ' + Trim(NameOper) + if((NameOper = ''), '', if((SodPr = ''), '', ', ')) + Trim(SodPr);
  else CurText := string(NppOper) + '. ' + SodPr;
  end;
  CurSchet := KorrSchet + ' ' + KorrSub;
  CurDeb   := if((ParamSum = 0) or (ValNRec = 0), SumDeb,  ValDeb);
  CurKred  := if((ParamSum = 0) or (ValNRec = 0), SumKred, ValKred);
end.
.}
! �⮣�
AllSumDeb                            ^
AllSumKred                           ^
AllValDeb                            ^
AllValKred                           ^
.begin
  CurAllDeb  := if((ParamSum = 0) or (ValNRec = 0), AllSumDeb,  AllValDeb);
  CurAllKred := if((ParamSum = 0) or (ValNRec = 0), AllSumKred, AllValKred);
end.

koldoc           ���. ���㬥�⮢     ^
.if DelimiterAvizo
---------------------------------------------------------------------
.end
page_symb ^
.}

.endform

.linkform 'AvizoIsh_01' prototype is 'Avizo'
.group '��室�饥 �����'
.nameinlist '����� (�㬬� � ��� ��� �����)'
.fields
PlatName
PolName PolNameCity
NoDOK DatVip2
MainSch + if(MainSub <> '','/' + MainSub,'') MainMon MainYear
BaseName
CurSim CurSim
CurText CurSchet
iExcelFormat.DoubleToStrFormatNotNul(CurDeb, sFormat)
iExcelFormat.DoubleToStrFormatNotNul(CurKred, sFormat)
iExcelFormat.DoubleToStrFormatNotNul(CurAllDeb, sFormat)
iExcelFormat.DoubleToStrFormatNotNul(CurAllKred, sFormat)
PlatNameCity + ' ' + PlatAddr
koldoc
page_symb
.endfields

.{
��
   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
   �������� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ���. @@@@@@@@@@@@@@@
   ������������� � ��^�� �� ��^�� �. � �ந��������� �������
   �� ���� ���������⮢ ��^�� � ��^�� ����� ��^�� ����.
   �᭮����� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
��
 ������������������������������������������������������������������������������������������������������Ŀ
 �                          ���ந������� ��������                                      �     �����������      �
 �                                                                                  ����        �      �
 ������������������������������������������������������������������������������������������������������Ĵ
 �                                       �����.   �     �����      �     �।��     �  �����  �  �।�� �
 �                �����                  ����    �����������������������������������������������������Ĵ
 �                                       �        ��㬬� � @@@@@@@@��㬬� � @@@@@@@@�  ���   �  ���   �
 ������������������������������������������������������������������������������������������������������Ĵ
.{
 � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ���@~@@@@@@��� &'#&&&&&&&&&&& � &'#&&&&&&&&&&& �         �         �
.}
 ������������������������������������������������������������������������������������������������������Ĵ
 � ���⮣���                                 �        � ��&'#&&&&&&&&&&&�� � ��&'#&&&&&&&&&&&�� �         �         �
 ��������������������������������������������������������������������������������������������������������
����
   �ਭ�⨥ �� ������ ��ᨬ ���⢥न��.
   ����饭�� � �������� �������� ��壠��� � ������ ��᫠��
   �� ����� : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

   �ਫ������ : ��^�� ���㬥��
                                 ������� _____________    ������� _____________
��

.if DelimiterAvizo
 -----------------------------------------------------------------


.end
^
.}
.endform

.linkform 'AvizoIsh_02' prototype is 'Avizo'
.group '��室�饥 ����� 2'
.nameinlist '����� (�㬬� � ��� � �����)'
.fields
PlatName
PolName PolNameCity
NoDOK DatVip2
MainSch + if(MainSub <> '','/' + MainSub,'') MainMon MainYear
BaseName
ValSim NdeSim ValSim NdeSim
CurText CurSchet
iExcelFormat.DoubleToStrFormatNotNul(ValDeb, sFormat)
iExcelFormat.DoubleToStrFormatNotNul(SumDeb, sFormat)
iExcelFormat.DoubleToStrFormatNotNul(ValKred, sFormat)
iExcelFormat.DoubleToStrFormatNotNul(SumKred, sFormat)
iExcelFormat.DoubleToStrFormatNotNul(AllValDeb, sFormat)
iExcelFormat.DoubleToStrFormatNotNul(AllSumDeb, sFormat)
iExcelFormat.DoubleToStrFormatNotNul(AllValKred, sFormat)
iExcelFormat.DoubleToStrFormatNotNul(AllSumKred, sFormat)
PlatNameCity + ' ' + PlatAddr
koldoc
page_symb
.endfields

.{
��
   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
   �������� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ���. @@@@@@@@@@@@@@@
   ������������� � ��^�� �� ��^�� �. � �ந��������� �������
   �� ���� ���������⮢ ��^�� � ��^�� ����� ��^�� ����.
   �᭮����� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
��
 ����������������������������������������������������������������������������������������������������������������������������������������Ŀ
 �                                            ���ந������� ��������                                                      �     �����������      �
 �                                                                                                                    ����        �      �
 ����������������������������������������������������������������������������������������������������������������������������������������Ĵ
 �                                       �����.   �              �����              �             �।��              �  �����  �  �।�� �
 �                �����                  ����    ���������������������������������������������������������������������������������������Ĵ
 �                                       �        ��㬬� � @@@@@@@@��㬬� � @@@@@@@@��㬬� � @@@@@@@@��㬬� � @@@@@@@@�  ���   �  ���   �
 ����������������������������������������������������������������������������������������������������������������������������������������Ĵ
.{
 � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ���@~@@@@@@��� &'#&&&&&&&&&&& � &'#&&&&&&&&&&& � &'#&&&&&&&&&&& � &'#&&&&&&&&&&& �         �         �
.}
 ����������������������������������������������������������������������������������������������������������������������������������������Ĵ
 � ���⮣���                                 �        � ��&'#&&&&&&&&&&&�� � ��&'#&&&&&&&&&&&�� � ��&'#&&&&&&&&&&&�� � ��&'#&&&&&&&&&&&�� �         �         �
 ������������������������������������������������������������������������������������������������������������������������������������������
����
   �ਭ�⨥ �� ������ ��ᨬ ���⢥न��.
   ����饭�� � �������� �������� ��壠��� � ������ ��᫠��
   �� ����� : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

   �ਫ������ : ��^�� ���㬥��
                                 ������� _____________    ������� _____________
��

.if DelimiterAvizo
 -----------------------------------------------------------------


.end
^
.}
.endform
