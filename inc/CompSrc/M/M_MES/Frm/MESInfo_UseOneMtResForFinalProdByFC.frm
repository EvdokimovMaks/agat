// =============================================================================
//                                                     (c)  ��௮��� �����⨪�
// �����⨪� 8.1 - �ந�����⢥��� ������
// ����� ������ ��� ����䥩�
//   "�ਬ��塞���� ����� �� ������ ������� �� �� (��� ������� �� Oracle)"
// =============================================================================

.set name='frmMESInfo_UseOneMtResForFinalProdByFC'
.hide
.fields
  pdtCalcDate
  psResType
  psResName
  psResObozn
  psResBarKod
  KatOtpEd_Abbr
  psResRemark
  cResNrec

  KAUUpObjName
  UpObjName : string
  UpObjObozn
  UpObjBarKod
  UpObjRemark
  dCountUpObj
  MsrUnitUpObjAbbr : string
  dCountNeed
  dCountNeedForOne
  KAUUpObj
  cUpObject
  cUpObjLevel
.endfields

 ����⭠� ���         @@@@@@@@@@@@           ��� ����� @@@@@@@@@@@@@@@@@@
 ������                 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ������祭�� �����    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ������������ �����   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ��.���  @@@@@@@@@@@@@
 �ਬ�砭�� ��� ����� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Nrec �����           @@@@@@@@@@@@@@@@@@@@@@
���������������������������������������������������������������������������������������������������������������������������������������������������������������������
  ���  �              �������              �        ������祭�� �������        � ���. ����� � ���-��  �    �ਬ�砭��     � ��. � ���ॡ����� � �   ���ॡ����� �    �  ���        Nrec            �஢���
�������                                   �                                   �   �������  � ������� �                   � ��� � ����� �ᥣ� � ��. �� ��.������� �  �������    �������         ����������
���������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{ CheckEnter frmMESInfo_UseOneMtResForFinalProdByFC_Loop1
@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ &&&.&&&&& @@@@@@@@@@@@@@@@@@@ @@@@@ &&&&&&&&&.&&&&& &&&&&&&&&&&&&&.&&&&&   @@@@@@@@  @@@@@@@@@@@@@@@  @@@@@@@@@
.}

.endform

.linkform 'frmMESInfo_UseOneMtResForFinalProdByFC_01' prototype is 'frmMESInfo_UseOneMtResForFinalProdByFC'
.NameInList '�ਬ��塞���� ����� �� ������ �������'
.fields
  pdtCalcDate
  psResType
  psResName
  psResObozn
  psResBarKod
  KatOtpEd_Abbr
  psResRemark

  KAUUpObjName
  UpObjName : 't:r'
  UpObjObozn
  UpObjBarKod
  UpObjRemark
  dCountUpObj
  MsrUnitUpObjAbbr :'p:c'
  dCountNeed
  dCountNeedForOne
.endfields

����⭠� ���        : @@@@@@@@@@@@           ��� �����: @@@@@@@@@@@@@@@@@
������                : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
������祭�� �����   : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
������������ �����  : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ��.���.: @@@@@@@@@@@@
�ਬ�砭�� ��� �����: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
���������������������������������������������������������������������������������������������������������������������������������������������������������������������
  ���  �              �������              �        ������祭�� �������        � ���. ����� � ���-��  �    �ਬ�砭��     � ��. � ���ॡ����� � �   ���ॡ����� �    �
�������                                   �                                   �   �������  � ������� �                   � ��� � ����� �ᥣ� � ��. �� ��.������� �
���������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{ CheckEnter frmMESInfo_UseOneMtResForFinalProdByFC_Loop1
@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ &&&.&&&&& @@@@@@@@@@@@@@@@@@@ @@@@@ &&&&&&&&&.&&&&& &&&&&&&&&&&&&&.&&&&&
.}

.endform
