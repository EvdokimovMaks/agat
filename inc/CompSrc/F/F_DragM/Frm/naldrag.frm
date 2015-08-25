//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 6.00 - �᭮��� �।�⢠
// ����� �������� ������ �ࠣ��⠫��� �� �� (UIN 4701)
//------------------------------------------------------------------------------

#include FeeSigners.frn

#doc
����� �������� ������ �ࠣ��⠫��� �� �᭮��� �।�⢠�
#end

.Form 'NalDrag'
.Hide
!.Group '<<��騥>>'
!.Group '<<�����>>'
!.Group '<<��������>>'
.Fields
UserDeskRep_NRec : Comp
�࣠������_nRec : comp
������������_�࣠����樨
����
���ࠧ�������_nRec : comp
���ࠧ�������
���_nRec : comp
���
���_���������
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
��� : Date //� ��।����� ��᫥���� ���� �����, ���� �� ����� �� �⨬ �������

����_�������_1
����_�������_2
����_�������_3
����_�������_4

!---------------- FilterOS5
������
!---------------- HeadCreator
����_�������
!---------------- GruppaOS5
Head_TempDescr_NRec : Comp
Head_TempDescr_TableCode : word // ��� ⠡���� �� ���ன ���⮥�� ������ ��㯯�஢��
Head_TempDescr_CRecKat   : comp // ����� ����� � ⠡��� �� ���ன ����஥�� ��㯯�஢��
��⪠
NeedSum1 : Boolean
�⮣�_����_���   : Double
//'------------- ���.���ଠ�� �� ����窥
NeedDopInf : Byte  //0-�� �뢮�����, 1-��, 2-���
NeedPrintAsLeaf : Boolean   //true - �뢮����� ��� ���� (��ப�), false - ��� ���� (��㯯�஢��)
����_Object_NRec : Comp
����_KatOS_cHigherOS : Comp
����_KatOS_IsLeaf : Word
����_ArcIznos_nRec : comp
����_SpKatOs_nRec : comp
����_��������
����_������������
����_������⢮ : Double
����_�⮨����� : Double
����_�����_���� : Double
����_�����_��� : Double
����_����筠� : Double
����_�⮨�����_����㯫���� : Double
����_�����_����㯫���� : Double
����_�����_��ᯮ��
����_�������樮���_�����
����_�����᪮�_�����
����_����⮢�⥫�
����_������
����_������������_�����
����_���_���⨨
����_���_��࠭⨨ : Date
����_���_���᪠ : Date
����_���_����� : Date
����_���_����㯫���� : Date
����_���_����� : Date
����_�ப_�ᯮ�짮����� : Double
����_���_����_nRec : comp
����_���_����
����_������������_����
����_��ଠ : Double
����_������_nRec : comp
����_������
����_����_nRec : comp
����_���_����
����_������������_����
����_��㯯�_nRec : comp
����_���_��㯯�
����_������������_��㯯�
����_���_nRec : comp
����_���_����
����_������������_����
����_���ࠢ���_�����樥�� : Double
����_�ਧ���_��_nRec : comp
����_���_�ਧ����_��
����_������������_�ਧ����_��
����_�ਧ���_�� : Word
����_���ࠧ�������_nRec : comp
����_���_���ࠧ�������
����_������������_���ࠧ�������
����_���_nRec : comp
����_���_���
����_������������_���
����_���_nRec : comp
����_���
����_���_nRec : comp
����_���
����_�।�_�ப_ᯨᠭ�� : Date
����_KatMC_NRec : Comp
����_KatEd_NRec : Comp
����_�����_����
����_�����_�����
����_�����_����_����
����_�����_���
����_KatEdIk_NRec : comp
����_�������_����
����_�������_���
������������_������⢨�_��   // ������������ + �ਧ��� ⮣�, �� ��� ��
//'---------------- ������� ��� ᯥ�.�������⥩ (���-8�)
NeedSum2 : Boolean
�⮣�_����_���_1 : Double
�⮣�_����_���_2 : Double
�⮣�_����_���_3 : Double
�⮣�_����_���_4 : Double
�⮣�_����_���_1_�����ᨮ��� : Double
�⮣�_����_���_2_�����ᨮ��� : Double
�⮣�_����_���_3_�����ᨮ��� : Double
�⮣�_����_���_4_�����ᨮ��� : Double
!---------------- DM_Data
�⮣�_����_���_i : Double
�⮣�_����_���_i_�����ᨮ��� : Double
!---------------- NameOS5
�����_��_���浪� : LongInt
Body_TempDescr_NRec : Comp
����
nRec_Tobot : comp
��� : Double
KatDrag_NRec : Comp
�ࠣ���_���
�ࠣ���_����
���ᮡ��। : Word
KatDrag_cPodr : Comp
KatDrag_IsLeaf : Word
KarDrag_cKatEd : Comp
�����_����
�����_���� : Word
�����_᮪�_����
!---------------- ItogOS
Tail_TempDescr_NRec : Comp
Tail_TempDescr_TableCode : word // ��� ⠡���� �� ���ன ���⮥�� ������ ��㯯�஢��
Tail_TempDescr_CRecKat   : comp // ����� ����� � ⠡��� �� ���ன ����஥�� ��㯯�஢��
�⮣�
�⮣�_���   : Double
�⮣�_���_1 : Double
�⮣�_���_2 : Double
�⮣�_���_3 : Double
�⮣�_���_4 : Double
�⮣�_���_1_�����ᨮ��� : Double
�⮣�_���_2_�����ᨮ��� : Double
�⮣�_���_3_�����ᨮ��� : Double
�⮣�_���_4_�����ᨮ��� : Double
!---------------- DM_Itog
�⮣�_���_i : Double
�⮣�_���_i_�����ᨮ��� : Double

#FeeSigners_Os_Fields

.EndFields

.var iExcelFormat : ExcelFormat;
.endvar

^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^

^ ^ ^ ^

.{ CheckEnter FilterOS5
^
.}
.{ CheckEnter HeadCreator
^
.}
.{
.{ CheckEnter GruppaOS5
^ ^ ^ ^ ^ ^
! ----- ���.���ଠ�� �� ����窥 3x20 + 8
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^
! ----- ������� ��� ᯥ�.�������⥩ (���-8�)
^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.{ CheckEnter DM_Data
 ^ ^
.}
.}
.{ CheckEnter NameOS5
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter ItogOS5
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.{ CheckEnter DM_Itog
^ ^
.}
.}
.}
#FeeSigners_Os_Body(NalDrag)
.EndForm




#include naldrag_com.frn

#include naldrag_rus.frn

#include naldrag_bel.frn

