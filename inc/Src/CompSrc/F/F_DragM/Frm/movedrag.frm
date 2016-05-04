//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 6.00 - �᭮��� �।�⢠
// ����� �������� �������� �ࠣ��⠫��� �� �� (UIN 4716)
//------------------------------------------------------------------------------

#include FeeSigners.frn

#doc
����� �������� �������� �ࠣ��⠫��� �� �᭮��� �।�⢠�
#end

.Form 'MoveDrag'
.Hide
.Fields
��ꥪ�_����_��⪮
��ꥪ�_����_����
��ꥪ�_����_த��
��ꥪ�_����_���
UserDeskRep_NRec : Comp
�࣠������_nRec : comp
������������_�࣠����樨
����
���ࠧ�������_nRec : comp
���ࠧ�������
��⮤_nRec : comp
��⮤
����⥫� : Double
�_����⥫�
����⥫�_�ய����
��ଠ�
�����_��⮤�_nRec : comp
�����_��⮤�
��㯯�஢��
����஢��
��⠑  : Date
��⠏� : Date
!---------------- FilterOS
������
!---------------- GruppaOS
Head_TempDescr_NRec : Comp
Head_TempDescr_TableCode : word // ��� ⠡���� �� ���ன ���⮥�� ������ ��㯯�஢��
Head_TempDescr_CRecKat   : comp // ����� ����� � ⠡��� �� ���ன ����஥�� ��㯯�஢��
��⪠
NeedSum1 : Boolean
�⮣�_����_��砫�       : Double
�⮣�_����_��室_����  : Double
�⮣�_����_��室_����� : Double
�⮣�_����_��室_����� : Double
�⮣�_����_��室_����  : Double
�⮣�_����_�����        : Double
!---------------- NameOS
�����_��_���浪� : LongInt
Body_TempDescr_NRec : Comp
����
Body_Tobot_NRec : Comp
��砫�       : Double
��室_����  : Double
��室_����� : Double
���室_����� : Double
���室_����  : Double
�����        : Double
!---------------- ItogOS
Tail_TempDescr_NRec : Comp
Tail_TempDescr_TableCode : word // ��� ⠡���� �� ���ன ���⮥�� ������ ��㯯�஢��
Tail_TempDescr_CRecKat   : comp // ����� ����� � ⠡��� �� ���ன ����஥�� ��㯯�஢��
�⮣�
�⮣�_��砫�       : Double
�⮣�_��室_����  : Double
�⮣�_��室_����� : Double
�⮣�_��室_����� : Double
�⮣�_��室_����  : Double
�⮣�_�����        : Double

#FeeSigners_Os_Fields

.EndFields

^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.{ CheckEnter FilterOS4
^
.}
.{
.{ CheckEnter GruppaOS4
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter NameOS4
^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter ItogOS4
^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.}
#FeeSigners_Os_Body(MoveDrag)
.EndForm

!=============================================================================
.LinkForm 'MoveDrag_01' Prototype is 'MoveDrag'
!=============================================================================
.NameInList '��������� �������� �ࠣ��⠫��� � ��'
.p 60
.defo landscape
#FeeSigners_Os_LinkVar
.Fields
  CommonFormHeader
  if (boGetTune('Rep.IsHeader'), sGetTune('MyOrg'), '')
if (longint(��⠑)<>0,DateToStr(��⠑,  'DD/MM/YYYY'),'')
if (longint(��⠏�)<>0,DateToStr(��⠏�, 'DD/MM/YYYY'),'')
��⮤
�_����⥫�
����⥫�_�ய����
��㯯�஢��
����஢��
!---------------- FilterOS
������
!---------------- GruppaOS
��⪠
if ( NeedSum1, Trim(DoubleToStr(�⮣�_����_��砫�,       ��ଠ�)), '')
if ( NeedSum1, Trim(DoubleToStr(�⮣�_����_��室_����,  ��ଠ�)), '')
if ( NeedSum1, Trim(DoubleToStr(�⮣�_����_��室_�����, ��ଠ�)), '')
if ( NeedSum1, Trim(DoubleToStr(�⮣�_����_��室_�����, ��ଠ�)), '')
if ( NeedSum1, Trim(DoubleToStr(�⮣�_����_��室_����,  ��ଠ�)), '')
if ( NeedSum1, Trim(DoubleToStr(�⮣�_����_�����,        ��ଠ�)), '')
!---------------- NameOS
����
Trim(DoubleToStr(��砫�,       ��ଠ�))
Trim(DoubleToStr(��室_����,  ��ଠ�))
Trim(DoubleToStr(��室_�����, ��ଠ�))
Trim(DoubleToStr(���室_�����, ��ଠ�))
Trim(DoubleToStr(���室_����,  ��ଠ�))
Trim(DoubleToStr(�����,        ��ଠ�))
!---------------- ItogOS
�⮣�
Trim(DoubleToStr(�⮣�_��砫�,       ��ଠ�))
Trim(DoubleToStr(�⮣�_��室_����,  ��ଠ�))
Trim(DoubleToStr(�⮣�_��室_�����, ��ଠ�))
Trim(DoubleToStr(�⮣�_��室_�����, ��ଠ�))
Trim(DoubleToStr(�⮣�_��室_����,  ��ଠ�))
Trim(DoubleToStr(�⮣�_�����,        ��ଠ�))
.EndFields
��.[��H Skip��
                                                                                                                                                                      ���� @Np@
.]H
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                         &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&��

                                 ��������� �������� ������������ � �������� ���������
                                            c @@@@@@@@@@@ �� @@@@@@@@@@@

��⮤:                ^
��ᮢ�� ������:      ^ (^) �ࠬ�
��㯯�஢��:          ^
����஢��:           ^
�������:
.{ CheckEnter FilterOS4
 ^
.}
.{
��.[h
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
                   ������������                   � ���⮪ �� ��砫�  �   ��室 ���譨�   � ��室 ����७���  � ���室 ����७���  �   ���室 ���譨�   �  ���⮪ �� �����
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]h
.{ CheckEnter GruppaOS4
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&
.}
.{ CheckEnter NameOS4
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&
.}
.{ CheckEnter ItogOS4
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&
.}
.}��



��#FeeSIgners_Os_LinkInit(MoveDrag)
.fields
  �।ᥤ�⥫�_���������
  �।ᥤ�⥫�_���
.endfields
 �।ᥤ�⥫� �����ᨨ: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ __________________________ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                           ���������                          �������                   ����஢�� ������

.{While (�����_�����ᠭ� < ������⢮_������_�����ᨨ) OR (�����_�����ᠭ� < 1)
.begin
  �����_�����ᠭ�++;
end.
.fields
  if (�����_�����ᠭ� = 1, '����� �����ᨨ:', '')
  if (�����_�����ᠭ� <= ������⢮_������_�����ᨨ, ���ᨢ_����_�����ᨨ_��������� [�����_�����ᠭ�], '')
  if (�����_�����ᠭ� <= ������⢮_������_�����ᨨ, ���ᨢ_����_�����ᨨ_���   [�����_�����ᠭ�], '')
.endfields
 @@@@@@@@@@@@@@@        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ __________________________ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                           ���������                          �������                   ����஢�� ������
.}��
��
.EndForm