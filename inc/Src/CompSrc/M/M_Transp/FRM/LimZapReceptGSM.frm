/*
 �����������������������������������������������������������������������������ͻ
 �                                                  (c) ��௮��� ���������   �
 � �����⨪� 8.10, ��ࠢ����� �࠭ᯮ�⮬                                      �
 � ������� �ଠ ��� ���� ����⭮� ����窨 �� ����祭�� ��� (������⥯஢��)�
 �����������������������������������������������������������������������������ͼ
*/
.set name='LimZapReceptGSM'
.hide
.fields
! LimZapH.nRec
  LimZapH_nRec
! ������������ �࣠����樨
  NameOrg
! ������������ ��⮪�����
	CarColon
! ��� �ନ஢���� ����
	dCreateRep
! ������������ ᪫���
	WareHouse
!	������ ����७��
	Unit
! �⢥�ᢥ��� ���
	PersonInChange
! LimZapL.nRec
  LimZapL_nRec
! ��ઠ ⮯����
	MarkFuel
! ������⢮ ���஢
	AmountLiter
! ����� ��
 	MarkaTC RegNum
! ��� ����⥫�
	FIODriver
! ����� �� �����ᨨ, ��� �뤠�
  ComissPost ComissFIO dOfIssue
! ����� �� �����ᨨ, �뤠�� ࠧ�訫, ��� �뤠�
  ComissPost1 ComissFIO1 dOfIssue1
! ����� ��������
	NumReport
! ��� �뤠� ���
	dOfIssueLZV
.endfields
.{

.{ CheckEnter LimZapH
^
^ 
^ ^
^ ^
.{ CheckEnter LimZapLFIOPers
^
.}

.{ CheckEnter LimZapL
^ ^ ^ ^ ^ ^
.{ CheckEnter LimZapLCommiss
^ ^ ^
.}
^ ^ ^
.}
^ ^
.if LimZapReceptBrkPage

.end
.}

.}
.endform
