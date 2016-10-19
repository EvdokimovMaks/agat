//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 6.00 - ���ᥫ� � �।���
// ����� ॥��� ���ᥫ��� ᮣ��襭��
//------------------------------------------------------------------------------

#doc
����� ॥��� ���ᥫ��� ᮣ��襭��
#end

.FORM SoglVeksReestr
.HIDE

! ==============================================================================
.fields

  fltStDate : date
  fltEndDate : date
  fltOtv
  fltStat
  fltCurrency

  fltExClassName
!{
  fltExClassSeg
!}
! ------------------------------------------------------------------------------
!{
  SoglVeksNRec  : comp
  SoglVeksCStat : comp      // ��뫪� �� KatKlass (�����)
  SoglVeksCOrg  : comp      // ��뫪� �� ��⠫�� �࣠����権
  SoglVeksCOtv  : comp      // ��뫪� �� ��⠫�� ���
  SoglVeksCVal  : comp      // ��뫪� �� ��⠫�� �����

  �����_���譨�
  �����_����७���
  ���_���⠢����� : date
  �����_�����襭��
  ������������_�࣠����樨
  �⢥��⢥���
  �㬬�_��������_��� : double
  �㬬�_��������_��� : double
  �㬬�_�����᪠�_��� : double
  �㬬�_�����᪠�_��� : double
  �����

  �ਬ�砭��_1
  �ਬ�砭��_2
  �ਬ�砭��_3
!}
.endfields
! ==============================================================================

.if FilterIsSet
.if DateFilterIsSet
^ ^
.end
^ ^ ^
.if KlassFilterIsSet
^
.{
  ^
.}
.end
.end

.{
  ^ ^ ^ ^ ^
  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
  ^ ^ ^
.}
.ENDFORM

.LINKFORM SoglVeksReestr_00 PROTOTYPE IS SoglVeksReestr
.nameinlist '������ ���ᥫ��� ᮣ��襭��'
.p 80
.fields
  CommonFormHeader

  if (Longint(fltStDate) > 0, DateToStr(fltStDate, 'DD/MM/YYYY'), '')
  if (Longint(fltEndDate) > 0, DateToStr(fltEndDate, 'DD/MM/YYYY'), '')
  fltOtv
  fltStat
  fltCurrency
  fltExClassName
  fltExClassSeg
.endfields
^

                         ������ ���ᥫ��� ᮣ��襭��

.if FilterIsSet
.if DateFilterIsSet
                          � @@@@@@@@@@ �� @@@@@@@@@@

.end
�⢥��⢥��� ^
�����        ^
�����        ^

.if KlassFilterIsSet
������������ �����䨪�樨 ^
.{
���祭�� �����䨪��� ^
.}

.end
.end
.fields
  �����_���譨�
  �����_����७���
  if (Longint(���_���⠢�����) > 0, DateToStr(���_���⠢�����, 'DD/MM/YYYY'), '')

  if (SoglVeksCVal = comp(0), �㬬�_��������_���,    �㬬�_��������_���)
  if (SoglVeksCVal = comp(0), �㬬�_�����᪠�_���, �㬬�_�����᪠�_���)
  �����
.endfields
.{
.[h
�������������������������������������������������������������������������������
  �室�騩   �����७��� �   ���   � �������� �㬬�  ������᪠� �㬬�������
   �����     �  �����    �          �                 �                 �
�������������������������������������������������������������������������������
.]h
@@@@@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@ &'&&&&&&&&&&&&.&& &'&&&&&&&&&&&&.&& @@@@@@
.}
.ENDFORM