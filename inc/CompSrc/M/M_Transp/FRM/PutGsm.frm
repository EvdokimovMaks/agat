/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,97 ��牆���罔� ���������                      �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : �≒�矗��甎�珥                                             �
 � �ム瓱�        : 6.00                                                      �
 � ��Л�腑�┘    : �▲ぅ��� �� ��� �� �甅����┬ �竄ア諷                      �
 � �癶モ痰▲��覃 : ��瓱�� �����跫 �������↓�                                 �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
.set name='putGsm'
!.p 60
.hide
.fields
!�甅�↓�� ��痰
 cPLRec
 Npl
 NumBak
!皰��│�
 KodToplivo Toplivo cPutGsm OctatExi :double  OctatRet :double  VidanToplivo :double
 SdanToplivo :double  NormaToplivo :double FaktToplivo :double
.endfields
^
���ム �竄ア��� @@@@@@@@@@@@@@@@@@@@@@@@
.{
^
.{
^ ^
.{
^ ^ ^ ^ ^ ^ ^
.}
.}
.}
.endform
.linkform 'putGsm_01' prototype is 'putGsm'
.NameInList  '��� � �竄ア�� ��痰�'
!.p 60
.var
 ItgOctatExi     :double
 ItgOctatRet     :double
 ItgVidanToplivo :double
 ItgSdanToplivo  :double
 ItgNormaToplivo :double
 ItgFaktToplivo  :double
 ItgKodToplivo   :string
 ItgToplivo      :string
 isFirst         :boolean
.endvar
.fields
!�甅�↓�� ��痰
 Npl NumBak
!皰��│�
 ItgKodToplivo ItgToplivo
 ItgOctatExi  ItgOctatRet  ItgVidanToplivo  ItgSdanToplivo
 ItgNormaToplivo  ItgFaktToplivo
.endfields

���ム �竄ア���: @@@@@@@@@@@@@@@@@@@@@@@@
敖陳陳陳堕陳陳陳陳陳陳陳賃陳陳陳陳賃陳陳陳陳賃陳陳陳陳賃陳陳陳陳賃陳陳陳陳賃陳陳陳陳朕
� ���   �   ��━キ����┘ � �痰�皰� � �痰�皰� � �襪���  � �����   �  ��爼�  �   ����. �
�       �      ���       � �襯Г   � 〓Б�.  �         �         �         �         �
団陳陳陳田陳陳陳陳陳陳陳珍陳陳陳陳津陳陳陳陳津陳陳陳陳津陳陳陳陳津陳陳陳陳津陳陳陳陳調
.{
���ム ����: @@@@@@@@
.{
.begin
 ItgOctatExi     := 0;
 ItgOctatRet     := 0;
 ItgVidanToplivo := 0;
 ItgSdanToplivo  := 0;
 ItgNormaToplivo := 0;
 ItgFaktToplivo  := 0;
 isFirst         := true;
 ItgKodToplivo   := KodToplivo
 ItgToplivo      := Toplivo
end.
.{
.begin
  if( isFirst )
{
  ItgOctatExi     := OctatExi;
  isFirst := false;
}
 //ItgOctatExi     := ItgOctatExi     + OctatExi     ;
 if Octatret <> -32000
   ItgOctatRet     := OctatRet     ;  //ItgOctatRet
 ItgVidanToplivo := ItgVidanToplivo + VidanToplivo ;
 ItgSdanToplivo  := ItgSdanToplivo  + SdanToplivo  ;
 ItgNormaToplivo := ItgNormaToplivo + NormaToplivo ;
 ItgFaktToplivo  := ItgFaktToplivo  + FaktToplivo  ;
end.
.}
�@@@@@@@�@@@@@@@@@@@@@@@@�&#&&&&.&&�&#&&&&.&&�&#&&&&.&&�&#&&&&.&&�&&&&&#.&&�&#&&&&.&&�
.}
.}
青陳陳陳祖陳陳陳陳陳陳陳珍陳陳陳陳珍陳陳陳陳珍陳陳陳陳珍陳陳陳陳珍陳陳陳陳珍陳陳陳陳潰
.endform