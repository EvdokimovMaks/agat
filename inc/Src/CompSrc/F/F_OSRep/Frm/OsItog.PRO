//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 6.00 - �᭮��� �।�⢠
// �⮣��� �������� ������ �� ��ਮ� �� (UIN 4711) � ��� (UIN 4712)
// ��������! ������� slk-���� � �ଠ� Excel
//------------------------------------------------------------------------------

#include Responsible.frn

#doc
�⮣��� �������� ������ �� ��ਮ� �᭮���� �।�� � �����ਠ���� ��⨢��
#end

.Form 'OsItog'
.Hide
.var
#include Fld_Amort.var
.endvar
.begin
#include Fld_Amort.vpp
end.
.Fields
#ResponsibleFields
��ꥪ�_����_��⪮
��ꥪ�_����_����
��ꥪ�_����_த��
��ꥪ�_����_���
UserDeskRep_NRec : Comp
�࣠������_nRec : comp
������������_�࣠����樨
����
���_� : Date
���_�� : Date
���_�㬬� : Word
nRec_Nastr : Comp
���뢠��_�����_��_����� : Word
nRec_NastrOs : Comp
��⮤
����⥫� : Double
�_����⥫�
����⥫�_�ய����
��ଠ�
�����_��⮤�_nRec : comp
�����_��⮤�
��㯯�஢��
����஢��
���_�����      : comp // UserDeskRep.ResComp[26]
�_��⮬_�����_�_��ਮ��
!---------------- FilterOS
������
!---------------- GruppaOS
Head_TempDescr_NRec : Comp
Head_TempDescr_TableCode : word // ��� ⠡���� �� ���ன ���⮥�� ������ ��㯯�஢��
Head_TempDescr_CRecKat   : comp // ����� ����� � ⠡��� �� ���ன ����஥�� ��㯯�஢��
��⪠
NeedSum1 : Boolean
�⮣�_����_�⮨����� : Double
�⮣�_����_ﭢ��� : Double
�⮣�_����_䥢ࠫ� : Double
�⮣�_����_���� : Double
�⮣�_����_��५� : Double
�⮣�_����_��� : Double
�⮣�_����_��� : Double
�⮣�_����_��� : Double
�⮣�_����_������ : Double
�⮣�_����_ᥭ���� : Double
�⮣�_����_������ : Double
�⮣�_����_����� : Double
�⮣�_����_������� : Double
�⮣�_����_��砫� : Double
�⮣�_����_����� : Double

�⮣�_����_ﭢ���_���_�⮨���� : Double
�⮣�_����_䥢ࠫ�_���_�⮨���� : Double
�⮣�_����_����_���_�⮨���� : Double
�⮣�_����_��५�_���_�⮨���� : Double
�⮣�_����_���_���_�⮨���� : Double
�⮣�_����_���_���_�⮨���� : Double
�⮣�_����_���_���_�⮨���� : Double
�⮣�_����_������_���_�⮨���� : Double
�⮣�_����_ᥭ����_���_�⮨���� : Double
�⮣�_����_������_���_�⮨���� : Double
�⮣�_����_�����_���_�⮨���� : Double
�⮣�_����_�������_���_�⮨���� : Double
�⮣�_����_��砫�_�⮨����� : Double
�⮣�_����_��砫�_�����_����� : Double
�⮣�_����_�����_�⮨����� : Double

�⮣�_����_�⮨�����_�_���訥 : Double
�⮣�_����_ﭢ���_�_���訥 : Double
�⮣�_����_䥢ࠫ�_�_���訥 : Double
�⮣�_����_����_�_���訥 : Double
�⮣�_����_��५�_�_���訥 : Double
�⮣�_����_���_�_���訥 : Double
�⮣�_����_���_�_���訥 : Double
�⮣�_����_���_�_���訥 : Double
�⮣�_����_������_�_���訥 : Double
�⮣�_����_ᥭ����_�_���訥 : Double
�⮣�_����_������_�_���訥 : Double
�⮣�_����_�����_�_���訥 : Double
�⮣�_����_�������_�_���訥 : Double
�⮣�_����_��砫�_�_���訥 : Double
�⮣�_����_�����_�_���訥 : Double

�⮣�_����_ﭢ���_�_���訥_���_�⮨���� : Double
�⮣�_����_䥢ࠫ�_�_���訥_���_�⮨���� : Double
�⮣�_����_����_�_���訥_���_�⮨���� : Double
�⮣�_����_��५�_�_���訥_���_�⮨���� : Double
�⮣�_����_���_�_���訥_���_�⮨���� : Double
�⮣�_����_���_�_���訥_���_�⮨���� : Double
�⮣�_����_���_�_���訥_���_�⮨���� : Double
�⮣�_����_������_�_���訥_���_�⮨���� : Double
�⮣�_����_ᥭ����_�_���訥_���_�⮨���� : Double
�⮣�_����_������_�_���訥_���_�⮨���� : Double
�⮣�_����_�����_�_���訥_���_�⮨���� : Double
�⮣�_����_�������_�_���訥_���_�⮨���� : Double
�⮣�_����_��砫�_�_���訥_�⮨����� : Double
�⮣�_����_��砫�_�_���訥_�����_����� : Double
�⮣�_����_�����_�_���訥_�⮨����� : Double

!---------------- NameOS
Body_TempDescr_NRec : Comp
����
�����_��_���浪� : LongInt
KatOS_NRec : Comp
KatOS_cMc : Comp
KatOS_InNum
���_�_⥪�饬_��ਮ�� : boolean
�⮨����� : Double
������ : Double
���ࠫ� : Double
���� : Double
��५� : Double
��� : Double
��� : Double
��� : Double
������ : Double
������� : Double
������ : Double
����� : Double
������� : Double
��砫� : Double
����� : Double

������_���_�⮨���� : Double
���ࠫ�_���_�⮨���� : Double
����_���_�⮨���� : Double
��५�_���_�⮨���� : Double
���_���_�⮨���� : Double
���_���_�⮨���� : Double
���_���_�⮨���� : Double
������_���_�⮨���� : Double
�������_���_�⮨���� : Double
������_���_�⮨���� : Double
�����_���_�⮨���� : Double
�������_���_�⮨���� : Double
��砫�_�⮨����� : Double
��砫�_�����_����� : Double
�����_�⮨����� : Double

!---------------- ItogOS
Tail_TempDescr_NRec : Comp
Tail_TempDescr_TableCode : word // ��� ⠡���� �� ���ன ���⮥�� ������ ��㯯�஢��
Tail_TempDescr_CRecKat   : comp // ����� ����� � ⠡��� �� ���ன ����஥�� ��㯯�஢��
�⮣�
�⮣�_�⮨����� : Double
�⮣�_ﭢ��� : Double
�⮣�_䥢ࠫ� : Double
�⮣�_���� : Double
�⮣�_��५� : Double
�⮣�_��� : Double
�⮣�_��� : Double
�⮣�_��� : Double
�⮣�_������ : Double
�⮣�_ᥭ���� : Double
�⮣�_������ : Double
�⮣�_����� : Double
�⮣�_������� : Double
�⮣�_��砫� : Double
�⮣�_����� : Double

�⮣�_ﭢ���_���_�⮨���� : Double
�⮣�_䥢ࠫ�_���_�⮨���� : Double
�⮣�_����_���_�⮨���� : Double
�⮣�_��५�_���_�⮨���� : Double
�⮣�_���_���_�⮨���� : Double
�⮣�_���_���_�⮨���� : Double
�⮣�_���_���_�⮨���� : Double
�⮣�_������_���_�⮨���� : Double
�⮣�_ᥭ����_���_�⮨���� : Double
�⮣�_������_���_�⮨���� : Double
�⮣�_�����_���_�⮨���� : Double
�⮣�_�������_���_�⮨���� : Double
�⮣�_��砫�_�⮨����� : Double
�⮣�_��砫�_�����_����� : Double
�⮣�_�����_�⮨����� : Double

�⮣�_�⮨�����_�_���訥 : Double
�⮣�_ﭢ���_�_���訥 : Double
�⮣�_䥢ࠫ�_�_���訥 : Double
�⮣�_����_�_���訥 : Double
�⮣�_��५�_�_���訥 : Double
�⮣�_���_�_���訥 : Double
�⮣�_���_�_���訥 : Double
�⮣�_���_�_���訥 : Double
�⮣�_������_�_���訥 : Double
�⮣�_ᥭ����_�_���訥 : Double
�⮣�_������_�_���訥 : Double
�⮣�_�����_�_���訥 : Double
�⮣�_�������_�_���訥 : Double
�⮣�_��砫�_�_���訥 : Double
�⮣�_�����_�_���訥 : Double

�⮣�_ﭢ���_�_���訥_���_�⮨���� : Double
�⮣�_䥢ࠫ�_�_���訥_���_�⮨���� : Double
�⮣�_����_�_���訥_���_�⮨���� : Double
�⮣�_��५�_�_���訥_���_�⮨���� : Double
�⮣�_���_�_���訥_���_�⮨���� : Double
�⮣�_���_�_���訥_���_�⮨���� : Double
�⮣�_���_�_���訥_���_�⮨���� : Double
�⮣�_������_�_���訥_���_�⮨���� : Double
�⮣�_ᥭ����_�_���訥_���_�⮨���� : Double
�⮣�_������_�_���訥_���_�⮨���� : Double
�⮣�_�����_�_���訥_���_�⮨���� : Double
�⮣�_�������_�_���訥_���_�⮨���� : Double
�⮣�_��砫�_�_���訥_�⮨����� : Double
�⮣�_��砫�_�_���訥_�����_����� : Double
�⮣�_�����_�_���訥_�⮨����� : Double

.EndFields

.var
  iExcelFormat : ExcelFormat;
.endvar
.{
#ResponsibleBody(OSITOG)
! --------------------------------------------------------------------------
��ꥪ�_����_��⪮ ^
��ꥪ�_����_����   ^
��ꥪ�_����_த��  ^
��ꥪ�_����_���    ^
UserDeskRep_NRec      ^
�࣠������_nRec      ^
������������_�࣠����樨  ^
����                      ^
���_�  ^
���_�� ^
���_�㬬� ^
���뢠��_�����_��_����� ^
nRec_Nastr   ^
nRec_NastrOs ^
��⮤        ^
����⥫�     ^
�_����⥫�   ^
����⥫�_�ய����  ^
��ଠ�             ^
�����_��⮤�_nRec ^
�����_��⮤�      ^
��㯯�஢��        ^
����஢��         ^
���_�����      ^
�_��⮬_�����_�_��ਮ�� ^

.{ CheckEnter FilterOS3
^
.}
.{
.{ CheckEnter GruppaOS3
Head_TempDescr_NRec ^
Head_TempDescr_TableCode ^
Head_TempDescr_CRecKat   ^
��⪠  ^
NeedSum1 ^
�⮣�_����_�⮨����� ^
�⮣�_����_ﭢ���    ^
�⮣�_����_䥢ࠫ�   ^
�⮣�_����_����      ^
�⮣�_����_��५�    ^
�⮣�_����_���       ^
�⮣�_����_���      ^
�⮣�_����_���      ^
�⮣�_����_������    ^
�⮣�_����_ᥭ����  ^
�⮣�_����_������   ^
�⮣�_����_�����    ^
�⮣�_����_�������   ^
�⮣�_����_��砫�    ^
�⮣�_����_�����     ^

�⮣�_����_ﭢ���_���_�⮨����   ^
�⮣�_����_䥢ࠫ�_���_�⮨����  ^
�⮣�_����_����_���_�⮨����     ^
�⮣�_����_��५�_���_�⮨����   ^
�⮣�_����_���_���_�⮨����      ^
�⮣�_����_���_���_�⮨����     ^
�⮣�_����_���_���_�⮨����     ^
�⮣�_����_������_���_�⮨����   ^
�⮣�_����_ᥭ����_���_�⮨���� ^
�⮣�_����_������_���_�⮨����  ^
�⮣�_����_�����_���_�⮨����   ^
�⮣�_����_�������_���_�⮨����  ^
�⮣�_����_��砫�_�⮨�����       ^
�⮣�_����_��砫�_�����_�����    ^
�⮣�_����_�����_�⮨�����        ^

�⮣�_����_�⮨�����_�_���訥 ^
�⮣�_����_ﭢ���_�_���訥    ^
�⮣�_����_䥢ࠫ�_�_���訥   ^
�⮣�_����_����_�_���訥      ^
�⮣�_����_��५�_�_���訥    ^
�⮣�_����_���_�_���訥       ^
�⮣�_����_���_�_���訥      ^
�⮣�_����_���_�_���訥      ^
�⮣�_����_������_�_���訥    ^
�⮣�_����_ᥭ����_�_���訥  ^
�⮣�_����_������_�_���訥   ^
�⮣�_����_�����_�_���訥    ^
�⮣�_����_�������_�_���訥   ^
�⮣�_����_��砫�_�_���訥    ^
�⮣�_����_�����_�_���訥     ^

�⮣�_����_ﭢ���_�_���訥_���_�⮨����   ^
�⮣�_����_䥢ࠫ�_�_���訥_���_�⮨����  ^
�⮣�_����_����_�_���訥_���_�⮨����     ^
�⮣�_����_��५�_�_���訥_���_�⮨����   ^
�⮣�_����_���_�_���訥_���_�⮨����      ^
�⮣�_����_���_�_���訥_���_�⮨����     ^
�⮣�_����_���_�_���訥_���_�⮨����     ^
�⮣�_����_������_�_���訥_���_�⮨����   ^
�⮣�_����_ᥭ����_�_���訥_���_�⮨���� ^
�⮣�_����_������_�_���訥_���_�⮨����  ^
�⮣�_����_�����_�_���訥_���_�⮨����   ^
�⮣�_����_�������_�_���訥_���_�⮨����  ^
�⮣�_����_��砫�_�_���訥_�⮨�����       ^
�⮣�_����_��砫�_�_���訥_�����_�����    ^
�⮣�_����_�����_�_���訥_�⮨�����        ^
.}
.{ CheckEnter NameOS3
Body_TempDescr_NRec  ^
����  ^
�����_��_���浪�  ^
KatOS_NRec ^
KatOS_cMc  ^
KatOS_InNum ^
���_�_⥪�饬_��ਮ��  ^
�⮨����� ^
������    ^
���ࠫ�   ^
����      ^
��५�    ^
���       ^
���      ^
���      ^
������    ^
�������  ^
������   ^
�����    ^
�������   ^
��砫�    ^
�����     ^

������_���_�⮨����   ^
���ࠫ�_���_�⮨����  ^
����_���_�⮨����     ^
��५�_���_�⮨����   ^
���_���_�⮨����      ^
���_���_�⮨����     ^
���_���_�⮨����     ^
������_���_�⮨����   ^
�������_���_�⮨���� ^
������_���_�⮨����  ^
�����_���_�⮨����   ^
�������_���_�⮨����  ^
��砫�_�⮨�����       ^
��砫�_�����_�����    ^
�����_�⮨�����        ^
.}
.{ CheckEnter ItogOS3
Tail_TempDescr_NRec : ^
Tail_TempDescr_TableCode  ^
Tail_TempDescr_CRecKat    ^
�⮣� ^
�⮣�_�⮨����� ^
�⮣�_ﭢ���    ^
�⮣�_䥢ࠫ�   ^
�⮣�_����      ^
�⮣�_��५�    ^
�⮣�_���       ^
�⮣�_���      ^
�⮣�_���      ^
�⮣�_������    ^
�⮣�_ᥭ����  ^
�⮣�_������   ^
�⮣�_�����    ^
�⮣�_�������   ^
�⮣�_��砫�    ^
�⮣�_�����     ^

�⮣�_ﭢ���_���_�⮨����   ^
�⮣�_䥢ࠫ�_���_�⮨����  ^
�⮣�_����_���_�⮨����     ^
�⮣�_��५�_���_�⮨����   ^
�⮣�_���_���_�⮨����      ^
�⮣�_���_���_�⮨����     ^
�⮣�_���_���_�⮨����     ^
�⮣�_������_���_�⮨����   ^
�⮣�_ᥭ����_���_�⮨���� ^
�⮣�_������_���_�⮨����  ^
�⮣�_�����_���_�⮨����   ^
�⮣�_�������_���_�⮨����  ^
�⮣�_��砫�_�⮨�����       ^
�⮣�_��砫�_�����_�����    ^
�⮣�_�����_�⮨�����        ^

�⮣�_�⮨�����_�_���訥 ^
�⮣�_ﭢ���_�_���訥    ^
�⮣�_䥢ࠫ�_�_���訥   ^
�⮣�_����_�_���訥      ^
�⮣�_��५�_�_���訥    ^
�⮣�_���_�_���訥       ^
�⮣�_���_�_���訥      ^
�⮣�_���_�_���訥      ^
�⮣�_������_�_���訥    ^
�⮣�_ᥭ����_�_���訥  ^
�⮣�_������_�_���訥   ^
�⮣�_�����_�_���訥    ^
�⮣�_�������_�_���訥   ^
�⮣�_��砫�_�_���訥    ^
�⮣�_�����_�_���訥     ^

�⮣�_ﭢ���_�_���訥_���_�⮨����   ^
�⮣�_䥢ࠫ�_�_���訥_���_�⮨����  ^
�⮣�_����_�_���訥_���_�⮨����     ^
�⮣�_��५�_�_���訥_���_�⮨����   ^
�⮣�_���_�_���訥_���_�⮨����      ^
�⮣�_���_�_���訥_���_�⮨����     ^
�⮣�_���_�_���訥_���_�⮨����     ^
�⮣�_������_�_���訥_���_�⮨����   ^
�⮣�_ᥭ����_�_���訥_���_�⮨���� ^
�⮣�_������_�_���訥_���_�⮨����  ^
�⮣�_�����_�_���訥_���_�⮨����   ^
�⮣�_�������_�_���訥_���_�⮨����  ^
�⮣�_��砫�_�_���訥_�⮨�����       ^
�⮣�_��砫�_�_���訥_�����_�����    ^
�⮣�_�����_�_���訥_�⮨�����        ^
.}
.}
.}
.EndForm
