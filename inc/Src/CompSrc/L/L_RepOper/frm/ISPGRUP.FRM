//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.00 - ����� ������ �����⨪�
// �ᯮ��塞� ������� � ࠧ१� ��㯯 ���㬥�⮢-�᭮�����
//------------------------------------------------------------------------------

#doc
�ᯮ��塞� ������� � ࠧ१� ��㯯 ���㬥�⮢-�᭮�����
#end
.set name='ispgrup'
.hide
.fields  // IspGrup. ����: ���������
 valtar valbas header header2 header3
.endfields
��樮���쭠� ����� ^
����� ��� ���⮢  ^
���������1 ^
���������2 ^
���������3 ^
------------------------------------------------------------------------------
.{//1
.fields  // IspGrup. ����: ��ࠢ�筠� ���ଠ�� � ����ࠣ���
 namekongrp adrkongrp telkongrp
.endfields
��㯯�, �ਢ易��� � ����ࠣ���� ^
                ����   ^
                ⥫�䮭 ^
.{//2
=========================================================
.fields // IspGrup. ����: ��ࠢ�筠� ���ଠ�� � ��㯯�
 namgrp dfinish gstar gsbas gsval gssimval
.endfields
.{//3
��㯯� ^
.}//3
��� ^
�㬬� ^ ^ ^ ^
.{//4
---------------------------------------------------------
.fields  // IspGrup. ����: ���ଠ�� �� ��
 namkontr adrkontr telkontr
 cBaseDoc: comp //BaseDoc.nRec
 namdog numbdog datdog dogprim datepost
 sumdog
 sumdogv
 dogsumo           // �㬬� �� ��������
 dogsimval         // ����� �������
 v1                // �㬬� ������� ��� ���㡫���� �� (� ᪮����)
 v2                // ��業� ��業��
 dogNDS
 dogNDSv
 dogNDSo
.endfields
����ࠣ��� ^ ^ ^
BaseDoc.nRec ^
������� ^ � ^ �� ^
�ਬ�砭��^
��� ���⠢�� ^
�㬬� ^
� ����� ��� ���⮢ ^
�㬬� �� �������� ^ � ^
� ᪮����: ^ ^
��� ^
� ����� ��� ���⮢ ^
��� �� �������� ^
.{//5
.fields // IspGrup. ����: �㬬� �� ������ � �।���
 debdate debdoc debsum debsumv debsumval debsimval debsumo debNDS debNDSv debNDSval debNDSo
 krddate krddoc krdsum krdsumv krdsumval krdsimval krdsumo krdNDS krdNDSv krdNDSval krdNDSo
.endfields
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}//5
------------------------------------
.fields // IspGrup. ����: ��騥 �㬬� � ������������ �� ������ � �।���
 debtot debtotv debtoto krdtot krdtotv krdtoto
 debNDStot debNDStotv debNDStoto krdNDStot krdNDStotv krdNDStoto
 debdol debdolv debdolo krddol krddolv krddolo
 debNDSdol debNDSdolv debNDSdolo krdNDSdol krdNDSdolv krdNDSdolo
 debpros debprosv debproso krdpros krdprosv krdproso
 debNDSpros debNDSprosv debNDSproso krdNDSpros krdNDSprosv krdNDSproso
.endfields
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
.fields  // IspGrup. ����: �ਬ�砭��
  remark
.endfields
�ਬ�砭�� ^
.}//4
=====================================
.fields  // IspGrup. ����: ��騥 �㬬� �� ��㯯� ��
 kondol ourdol
 kondolv ourdolv
 konpros ourpros
 konprosv ourprosv
 GrpOsnSum GrpOsnSumV
 konNDSdol ourNDSdol
 konNDSdolv ourNDSdolv
 konNDSpros ourNDSpros
 konNDSprosv ourNDSprosv
 GrpOsnNDS GrpOsnNDSV
 remgrp
.endfields
�⮣� �� ����ࠣ����:
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}//2
.fields   // IspGrup. ����: ��騥 �㬬� �� ������������
 kon1dol our1dol kon1dolv our1dolv
 kon1pros our1pros kon1prosv our1prosv
 kon1NDSdol our1NDSdol kon1NDSdolv our1NDSdolv
 kon1NDSpros our1NDSpros kon1NDSprosv our1NDSprosv
.endfields
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}//1
.fields   // IspGrup. ����: ��騥 �㬬� �� �����
 nadat
 tkondol tourdol tkondolv tourdolv
 tkonpros tourpros tkonprosv tourprosv
 tkonNDSdol tourNDSdol tkonNDSdolv tourNDSdolv
 tkonNDSpros tourNDSpros tkonNDSprosv tourNDSprosv
.endfields
�ᥣ� �� ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
.endform
!
!
!
!
!
#doc
������ �ᯮ��塞�� ������஢ �� ��㯯�� ������஢
#end
.linkform 'ispgrup01' prototype is 'ispgrup'
.nameinlist '������ �ᯮ��塞�� ������஢ �� ��㯯�� ������஢'
.group '���஡�� ॥���� �ᯮ������ ������஢ �� ��㯯 ��'
.group '� ��樮���쭮� ����� � ����� ��� ���⮢'
.group '� ����� ��� ���⮢'
.fields
 CommonFormHeader
 header
.endfields
^
      �������� �ᯮ��塞�� ������஢, �ਭ�������� � ��।������ ��㯯��
  @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
��
.{
.fields
 namekongrp
.endfields
������������������������������������������������������������������������������������������������������������������
 ��㯯� �� ����ࠣ����: ^
.{
������������������������������������������������������������������������������������������������������������������
 ������������ ��㯯�:
.{
.fields
 namgrp
.endfields
 ^
.}
������������������������������������������������������������������������������������������������������������������
.{
.fields
 namkontr
 namdog numbdog datdog sumdog valtar sumdogv valbas v1 v2
 dogprim
 valtar valbas valtar valbas
.endfields
 ����ࠣ���: ^
 ^ � ^ �� ^ �� �㬬� ^' � ^, ^' � ^ ^ ^
 ^
���������������������������������������������������������������������������������Ŀ����������������������������������������������������������������������������������Ŀ
�                       ����� (����㯫���� ⮢�஢/�����)                         ��                     ������ (��� ���⥦�/���⠢�� ⮢�஢)                       �
���������������������������������������������������������������������������������Ĵ����������������������������������������������������������������������������������Ĵ
�   ���   �             ���㬥��            �  �㬬� � @@@@@@ �  �㬬� � @@@@@@  ��   ���   �             ���㬥��            �  �㬬� � @@@@@@  �  �㬬� � @@@@@@  �
���������������������������������������������������������������������������������Ĵ����������������������������������������������������������������������������������Ĵ
.{
.fields
 debdate debdoc debsum debsumv krddate krddoc krdsum krdsumv
.endfields
�@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&��@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&�
.}
.fields
 debtot debtotv krdtot krdtotv
 debdol debdolv krddol krddolv
 remark
.endfields
���������������������������������������������������������������������������������Ĵ����������������������������������������������������������������������������������Ĵ
                         � �⮣� ����祭�:    &'&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&�                        � �⮣� ��ࠢ����:   &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&�
                         � ���� ����ࠣ���:  &'&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&�                        � ��� ����:           &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&�
                         ����������������������������������������������������������                        ������������������������������������������������������������
 ^
�����������������������������������������������������������������������������������������������������������������������������������������������������������������������
.}
.fields
 kondol valtar ourdol valtar
 kondolv valbas ourdolv valbas
 remgrp
 kon1dol valtar our1dol valtar
 kon1dolv valbas our1dolv valbas
 nadat
 tkondol valtar tourdol valtar
 tkondolv valbas tourdolv valbas
.endfields

�� ����� �� ��㯯� ������஢
  ���� ����ࠣ��⮢:&'&&&&&&&&&&&&&&&&& � @@@@@@   ��� ����:&'&&&&&&&&&&&&&&&&& � @@@@@@
                    &'&&&&&&&&&&&&&&&&& � @@@@@@            &'&&&&&&&&&&&&&&&&& � @@@@@@��
���������������������������������������������������������������������������������������������������������������������
  ^
.}
�������������������������������������������������������������������������������������������������������������������

�� ����� �� ����ࠣ���� ��㯯� ������஢
  ���� ����ࠣ��⮢:&'&&&&&&&&&&&&&&&&& � @@@@@@   ��� ����:&'&&&&&&&&&&&&&&&&& � @@@@@@
                    &'&&&&&&&&&&&&&&&&& � @@@@@@            &'&&&&&&&&&&&&&&&&& � @@@@@@��
���������������������������������������������������������������������������������������������������������������������

.}
�������������������������������������������������������������������������������������������������������������������

�� ����� �� ��㯯�� ������஢ �� ^:
  ���� ����ࠣ��⮢:&'&&&&&&&&&&&&&&&&& � @@@@@@   ��� ����:&'&&&&&&&&&&&&&&&&& � @@@@@@
                    &'&&&&&&&&&&&&&&&&& � @@@@@@            &'&&&&&&&&&&&&&&&&& � @@@@@@��
��.endform
!
!
!
#doc
������ �ᯮ��塞�� ������஢ �� ��㯯�� ������஢ (⮫쪮 � �㡫��)
#end
.linkform 'ispgrup02' prototype is 'ispgrup'
.nameinlist '������ �ᯮ��塞�� ������஢ �� ��㯯�� ������஢ (⮫쪮 � �㡫��)'
.group '���஡�� ॥���� �ᯮ������ ������஢ �� ��㯯 ��'
.group '� ��樮���쭮� �����'
.fields
 CommonFormHeader
 header2
 namekongrp
 namgrp
 namkontr namdog numbdog datdog sumdog valtar
 dogprim
 valtar valtar
 debdate debdoc debsum krddate krddoc krdsum
 debtot krdtot
 debdol krddol
 remark
 kondol ourdol
 GrpOsnSum
 gstar
 remgrp
 kon1dol our1dol
 nadat
 tkondol tourdol
.endfields
^
    �������� �ᯮ��塞�� ������஢, �ਭ�������� � ��।������ ��㯯��
 @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.{
��������������������������������������������������������������������������
 ��㯯� �� ����ࠣ����: ��^��
.{
��������������������������������������������������������������������������
 ������������ ��㯯�:
.{
 ��^��
.}
��������������������������������������������������������������������������
.{
 ����ࠣ���: ��^��
 ��^ � ^ �� ^ �� �㬬� ^' � ^
 ^��
��
��������������������������������������������������������������Ŀ���������������������������������������������������������������Ŀ
�             ����� (����㯫���� ⮢�஢/�����)                ��           ������ (��� ���⥦�/���⠢�� ⮢�஢)              �
��������������������������������������������������������������Ĵ���������������������������������������������������������������Ĵ
�   ���   �             ���㬥��            �  �㬬� � @@@@@@ ��   ���   �             ���㬥��            �  �㬬� � @@@@@@  �
��������������������������������������������������������������Ĵ���������������������������������������������������������������Ĵ
.{
�@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&��@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&�
.}
��������������������������������������������������������������Ĵ���������������������������������������������������������������Ĵ
                         � �⮣� ����祭�:    &'&&&&&&&&&&&&&&&�                        � �⮣� ��ࠢ����:   &'&&&&&&&&&&&&&&&&�
                         � ���� ����ࠣ���:  &'&&&&&&&&&&&&&&&�                        � ��� ����:           &'&&&&&&&&&&&&&&&&�
                         ���������������������������������������                        �����������������������������������������
 ^
�����������������������������������������������������������������������������������������������������������������������������������
.}

������� �� ��㯯� ������஢��
  ���� ����ࠣ��⮢: &'&&&&&&&&&&&&&&&&&     ��� ����: &'&&&&&&&&&&&&&&&&&
������������������������������������������������������������������������������������������������������������
  �㬬� �� �ᥬ �᭮����� ��㯯�: &'&&&&&&&&&&&&&&&&&
  ��������⭠� �㬬�:              &'&&&&&&&&&&&&&&&&&
  ^��
.}
��������������������������������������������������������������������������������������������������������������
������� �� ����ࠣ���� ��㯯� ������஢��
  ���� ����ࠣ��⮢: &'&&&&&&&&&&&&&&&&&     ��� ����: &'&&&&&&&&&&&&&&&&&��
.}
���������������������������������������������������������������������������������������������������������������������������������
������� �� ��㯯�� ������஢ �� ^:��
  ���� ����ࠣ��⮢: &'&&&&&&&&&&&&&&&&&     ��� ����: &'&&&&&&&&&&&&&&&&&��
.endform
!
!
!
#doc
��������� �ᯮ������ ��㯯 ������஢
#end
.linkform 'ispgrup03' prototype is 'ispgrup'
.nameinlist '��������� �ᯮ������ ��㯯 ������஢'
.group '� ��樮���쭮� ����� � ����� ��� ���⮢'
.fields
  CommonFormHeader
  header
  valbas valbas
  namekongrp
  trim(NamGrp) kondol ourdol kondolv ourdolv
  kon1dol our1dol kon1dolv our1dolv
  tkondol tourdol tkondolv tourdolv
.endfields
^
              ����������� �ᯮ������ ��㯯 ������஢
��          ��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
�����������������������������������������������������������������������������������������������������������������������
    ������������ ��㯯� ������஢  � ���� ����ࠣ��⮢  �      ��� ����      � ���� ����.� @~@@@@ �  ��� ���� � @@@@@@
�����������������������������������������������������������������������������������������������������������������������
.{
^
.{
.{
.}
.{
.{
.}
.}
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&
.}
 ����������������������������������������������������������������������������������������������������������������������
           ������� �� ��㯯�஢�� :��   &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&
�����������������������������������������������������������������������������������������������������������������������
.}

             ������� �� �������� :��   &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&��
.endform
!
!
!
#doc
��������� �ᯮ������ ��㯯 ������஢ �� ����ࠣ��⠬
#end
.linkform 'ispgrup03_1' prototype is 'ispgrup'
.nameinlist '��������� �ᯮ������ ��㯯 ������஢ �� ����ࠣ��⠬'
.group '� ��樮���쭮� ����� � ����� ��� ���⮢'
.create view loKont
from
 TmpGrn
where
((
   Longint(23021971) == tmpGrn.wList
))
;
.fields
  CommonFormHeader
  header
.endfields
^
              ����������� �ᯮ������ ��㯯 ������஢ �� ����ࠣ��⠬
��          ��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{//1
.fields
  namekongrp
.endfields
��^��
.{//2
.begin
 loKont.delete safe TmpGrn;
end.
 �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.fields
  trim(NamGrp)
  valtar valbas valtar valbas valtar valbas valtar valbas
.endfields
�� ��㯯�: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
  ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������͸
  �                                �               ���� ����ࠣ���          �               � �.�.����祭��        �              � � �  � � � �             �           � �.�.����祭��            �
  �   ������������ ����ࠣ���     �����������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
  �                                �      � @~@@@@      �      � @~@@@@      �       � @~@@@@     �      � @~@@@@      �       � @~@@@@     �      � @~@@@@      �       � @~@@@@     �       � @~@@@@     �
  ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
.{//3
.}//3
.{//4
.{//5
.}//5
.begin
  if (loKont.GetFirst tmpGrn where ((longint(23021971) == wList and
                                     namkontr == tmpGrn.ss[1](NoIndex) )) <> 0)
   {
     loKont.ClearBuffer(tnTmpGrn);
     loKont.tmpGrn.wList:=longint(23021971);
     loKont.tmpGrn.ss[1]:=namkontr;
     loKont.insert current TmpGrn;
   }
  loKont.tmpGrn.Sums[1] := loKont.tmpGrn.Sums[1]+double(debdol);
  loKont.tmpGrn.Sums[2] := loKont.tmpGrn.Sums[2]+double(debdolv);
  loKont.tmpGrn.Sums[3] := loKont.tmpGrn.Sums[3]+double(debpros);
  loKont.tmpGrn.Sums[4] := loKont.tmpGrn.Sums[4]+double(debprosv);
  loKont.tmpGrn.Sums[5] := loKont.tmpGrn.Sums[5]+double(krddol);
  loKont.tmpGrn.Sums[6] := loKont.tmpGrn.Sums[6]+double(krddolv);
  loKont.tmpGrn.Sums[7] := loKont.tmpGrn.Sums[7]+double(krdpros);
  loKont.tmpGrn.Sums[8] := loKont.tmpGrn.Sums[8]+double(krdprosv);
  loKont.Update current TmpGrn;
end.
.}//4
.{table 'loKont'
.fields
 loKont.tmpGrn.ss[1]
 loKont.tmpGrn.Sums[1]
 loKont.tmpGrn.Sums[2]
 loKont.tmpGrn.Sums[3]
 loKont.tmpGrn.Sums[4]
 loKont.tmpGrn.Sums[5]
 loKont.tmpGrn.Sums[6]
 loKont.tmpGrn.Sums[7]
 loKont.tmpGrn.Sums[8]
.endfields
  �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�&'&&&&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&&&&.&&�
.}
  ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������;
.fields
  trim(NamGrp) kondol kondolv konpros konprosv ourdol ourdolv ourpros ourprosv
.endfields
�� ����� �� @@@@@@@@@@@@@@@@@@@@@@@@@�� &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&
.}//2
.fields
  kon1dol kon1dolv kon1pros kon1prosv our1dol our1dolv our1pros our1prosv
.endfields
 ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
           ������� �� ��㯯�஢�� :��   &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&
�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.}//1
.fields
  tkondol tkondolv tkonpros tkonprosv tourdol tourdolv tourpros tourprosv
.endfields

             ������� �� �������� :��   &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&��
.endform

#doc
��������� �ᯮ������ ��㯯 ������஢ �� ����ࠣ��⠬
#end
.linkform 'ispgrup03_2' prototype is 'ispgrup'
.nameinlist '��������� �ᯮ������ ��㯯 ������஢ �� ����ࠣ��⠬'
.group '� ��樮���쭮� �����'
.create view loKont
from
 TmpGrn
where
((
   Longint(23021971) == tmpGrn.wList
))
;
.fields
  CommonFormHeader
  header2
.endfields
^
        ����������� �ᯮ������ ��㯯 ������஢ �� ����ࠣ��⠬
��          ��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{//1
.fields
  namekongrp
.endfields
��^��
.{//2
.begin
 loKont.delete safe TmpGrn;
end.
 �����������������������������������������������������������������������������������������������������������������������
.fields
  trim(NamGrp)
.endfields
�� ��㯯�: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
  ��������������������������������������������������������������������������������������������������������������������͸
  �   ������������ ����ࠣ���     �  ���� ����ࠣ���  � � �.�.����祭�� �   � � �  � � � �   � � �.�.����祭�� �
  ��������������������������������������������������������������������������������������������������������������������Ĵ
.{//3
.}//3
.{//4
.{//5
.}//5
.begin
  if (loKont.GetFirst tmpGrn where ((longint(23021971) == wList and
                                     namkontr == tmpGrn.ss[1](NoIndex) )) <> 0)
   {
     loKont.ClearBuffer(tnTmpGrn);
     loKont.tmpGrn.wList:=longint(23021971);
     loKont.tmpGrn.ss[1]:=namkontr;
     loKont.insert current TmpGrn;
   }
  loKont.tmpGrn.Sums[1] := loKont.tmpGrn.Sums[1]+double(debdol);
  loKont.tmpGrn.Sums[3] := loKont.tmpGrn.Sums[3]+double(debpros);
  loKont.tmpGrn.Sums[5] := loKont.tmpGrn.Sums[5]+double(krddol);
  loKont.tmpGrn.Sums[7] := loKont.tmpGrn.Sums[7]+double(krdpros);
  loKont.Update current TmpGrn;
end.
.}//4
.{table 'loKont'
.fields
 loKont.tmpGrn.ss[1]
 loKont.tmpGrn.Sums[1]
 loKont.tmpGrn.Sums[3]
 loKont.tmpGrn.Sums[5]
 loKont.tmpGrn.Sums[7]
.endfields
  �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�&'&&&&&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&&&&&&�
.}
  ��������������������������������������������������������������������������������������������������������������������;
.fields
  trim(NamGrp) kondol konpros ourdol ourpros
.endfields
�� ����� �� @@@@@@@@@@@@@@@@@@@@@@@@@�� &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&
.}//2
.fields
  kon1dol kon1pros our1dol our1pros
.endfields
 ����������������������������������������������������������������������������������������������������������������������
           ������� �� ��㯯�஢�� :��   &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&
�����������������������������������������������������������������������������������������������������������������������
.}//1
.fields
  tkondol tkonpros tourdol tourpros
.endfields

             ������� �� �������� :��   &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&��
.endform

#doc
��������� �ᯮ������ ��㯯 ������஢ �� ����ࠣ��⠬
#end
.linkform 'ispgrup03_3' prototype is 'ispgrup'
.nameinlist '��������� �ᯮ������ ��㯯 ������஢ �� ����ࠣ��⠬'
.group '� ����� ��� ���⮢'
.create view loKont
from
 TmpGrn
where
((
   Longint(23021971) == tmpGrn.wList
))
;
.fields
  CommonFormHeader
  header3
.endfields
^
        ����������� �ᯮ������ ��㯯 ������஢ �� ����ࠣ��⠬
��          ��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{//1
.fields
  namekongrp
.endfields
��^��
.{//2
.begin
 loKont.delete safe TmpGrn;
end.
 �����������������������������������������������������������������������������������������������������������������������
.fields
  trim(NamGrp)
.endfields
�� ��㯯�: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
  ��������������������������������������������������������������������������������������������������������������������͸
  �   ������������ ����ࠣ���     �  ���� ����ࠣ���  � � �.�.����祭�� �   � � �  � � � �   � � �.�.����祭�� �
  ��������������������������������������������������������������������������������������������������������������������Ĵ
.{//3
.}//3
.{//4
.{//5
.}//5
.begin
  if (loKont.GetFirst tmpGrn where ((longint(23021971) == wList and
                                     namkontr == tmpGrn.ss[1](NoIndex) )) <> 0)
   {
     loKont.ClearBuffer(tnTmpGrn);
     loKont.tmpGrn.wList:=longint(23021971);
     loKont.tmpGrn.ss[1]:=namkontr;
     loKont.insert current TmpGrn;
   }
  loKont.tmpGrn.Sums[2] := loKont.tmpGrn.Sums[2]+double(debdolv);
  loKont.tmpGrn.Sums[4] := loKont.tmpGrn.Sums[4]+double(debprosv);
  loKont.tmpGrn.Sums[6] := loKont.tmpGrn.Sums[6]+double(krddolv);
  loKont.tmpGrn.Sums[8] := loKont.tmpGrn.Sums[8]+double(krdprosv);
  loKont.Update current TmpGrn;
end.
.}//4
.{table 'loKont'
.fields
 loKont.tmpGrn.ss[1]
 loKont.tmpGrn.Sums[2]
 loKont.tmpGrn.Sums[4]
 loKont.tmpGrn.Sums[6]
 loKont.tmpGrn.Sums[8]
.endfields
  �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�&'&&&&&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&&&&&&�
.}
  ��������������������������������������������������������������������������������������������������������������������;
.fields
  trim(NamGrp) kondolv konprosv ourdolv ourprosv
.endfields
�� ����� �� @@@@@@@@@@@@@@@@@@@@@@@@@�� &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&
.}//2
.fields
  kon1dolv kon1prosv our1dolv our1prosv
.endfields
 ����������������������������������������������������������������������������������������������������������������������
           ������� �� ��㯯�஢�� :��   &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&
�����������������������������������������������������������������������������������������������������������������������
.}//1
.fields
  tkondolv tkonprosv tourdolv tourprosv
.endfields

             ������� �� �������� :��   &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&��
.endform

!
!
!
!
#doc
��������� �ᯮ������ ������஢ �� ��㯯 ������஢
#end
.linkform 'ispgrup04' prototype is 'ispgrup'
.nameinlist '��������� �ᯮ������ ������஢ �� ��㯯 ������஢'
.group '� ��樮���쭮� �����'
.fields
 CommonFormHeader
 header2
 namgrp
 namkontr namdog numbdog datdog sumdog debtot debdol krdtot krddol remark
 kondol ourdol
 tkondol tourdol
.endfields
^
               ����������� �ᯮ������ ������஢ �� ��㯯 ������஢
@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
�� ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
       ������������ ����ࠣ���       �              ��� �������              �    �����    �  ���  � �㬬� �� �������㳎���⨫ ����ࠣ��� ���� ����ࠣ��⠳   ����祭� ����   �    ��� ����     �                  �ਬ�砭��
 �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
��.{
.{
�� ��㯯�:��
.{
 ^
.}
�� �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{
.{
.}
�� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@ @@@@@@@@ &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&& ^��
.}

�� ����� �� ��㯯�: ���� ����ࠣ��⮢:&'&&&&&&&&&&&&&&&&& ��� ����:&'&&&&&&&&&&&&&&&&&
 �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
��.}
.}

��    ����� :       ���� ����ࠣ��⮢:&'&&&&&&&&&&&&&&&&& ��� ����:&'&&&&&&&&&&&&&&&&&��
.endform
!
!
!
!
!
#doc
��������� �ᯮ������ ������஢ �� ��㯯 ������஢ � �����
#end
.linkform 'ispgrup05' prototype is 'ispgrup'
.nameinlist '��������� �ᯮ������ ������஢ �� ��㯯 ������஢ � �����'
.group '� ����� ��� ���⮢'
.fields
  CommonFormHeader
 header3
 namgrp
 namkontr namdog numbdog datdog sumdogv debtotv debdolv krdtotv krddolv remark
 kondolv ourdolv
 tkondolv tourdolv
.endfields
^
               ����������� �ᯮ������ ������஢ �� ��㯯 ������஢
@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
�� �������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
       ������������ ����ࠣ���       �             ��� �������             �    �����    �  ���  � �㬬� �� �������㳎���⨫ ����ࠣ��Ⳅ��� ����ࠣ��� �   ����祭� ����   �    ��� ����     �                  �ਬ�砭��
 �������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{
.{
�� ��㯯�:��
.{
�� ^��
.}
 �������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{
.{
.}
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@ @@@@@@@@ &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&& ^
.}

 ����� �� ��㯯�: ���� ����ࠣ��⮢:&'&&&&&&&&&&&&&&&&& ��� ����:&'&&&&&&&&&&&&&&&&&
 ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.}
.}

��       ����� :    ���� ����ࠣ��⮢:&'&&&&&&&&&&&&&&&&& ��� ����:&'&&&&&&&&&&&&&&&&&��
��.endform
!
#include ispgrup.frn