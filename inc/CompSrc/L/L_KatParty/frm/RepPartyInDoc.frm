!様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
!                     (c) ��牆���罔� ���������, 1996,97                      �
! 蹍オ�        : ���������                                                  �
! ��痰ガ�       :                                                            �
! �ム瓱�        :                                                            �
! ��Л�腑�┘    :                                                            �
! �癶モ痰▲��覃 :                                                            �
!様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
#Doc
��珥�腦� 祚��┃��┤ ��珥┤ �� � ぎ�祠キ���
#End
.Form 'RepPartyInDoc'
.NameInList '��珥�腦� 祚��┃��┤ ��珥┤ �� � ぎ�祠キ���'
.Hide
.var
   nPP, nPP1 : longint;
   Kol1 : double;
   PartyNameKod : string;
.endvar
.begin
 nPP1:=0
end.
.fields
  dDate1 : string
  dDate2 : string
.endfields
� ^ �� ^
.{CheckEnter Cicle1 // 罔�� �� ��珥�鍖 ��
.begin
 nPP1:=nPP1+1;
end.
.fields
  PartyNRec : comp
  PartyName : string
  PartyKod : string
.endfields
  ^^^
.begin
 nPP:=0;
 Kol1:=0;
 PartyNameKod:=PartyName+', ��� '+PartyKod
end.

.{CheckEnter Cicle2   // 罔�� �� ぎ�祠キ���
.begin
 nPP:=nPP+1;
end.
.fields
  dDoc    : string
  NDoc    : string
  VidDoc  : string
  OrgNRec : comp
  OrgName : string
  NameMC  : string
  OtpEDNRec : comp
  OtpEDName : string
  Kol     : double
  UchEdKol: double
  Sum     : double
.endfields

  ^^^^^^^^^^^
.begin
 Kol1:=Kol1+UchEdKol;
end.

.} // �� ぎ�祠キ���
.}
.EndForm
!
!==============================================================================
!
#Doc
��珥�腦� 祚��┃��┤ ��珥┤ �� � ぎ�祠キ���
#End
.LinkForm 'RepPartyInDoc_1' prototype is 'RepPartyInDoc'
.NameInList '��珥�腦� 祚��┃��┤ ��珥┤ �� � ぎ�祠キ���'
.Defo landscape
!.P 40
.Fields
  CommonFormHeader
  dDate1
  dDate2
.EndFields
��^��

��                         ��珥�腦� 祚��┃��┤ ��珥┤ �� �� �ム┏�
                               c @@@@@@@@@@ �� @@@@@@@@@@��
.{CheckEnter Cicle1 // 罔�� �� ���
.Fields
  PartyNameKod
.EndFields

�� @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
��陳陳賃陳陳陳陳陳堕陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳堕陳陳陳堕陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳
  �  �   ����   �  ���ム  �               �┐              �          ���矗��キ�,         �       ��        �  ��.  �  ����腑痰〓  �      � � � � �
 �/� � ぎ�祠キ��海��祠キ���            ぎ�祠キ��           �         ��む�Гカキ┘        �                 �  ├�. �              �
陳陳珍陳陳陳陳陳祖陳陳陳陳祖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳祖陳陳陳祖陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳陳��
.{CheckEnter Cicle2 //罔�� �� ぎ�祠キ���
.Fields
  Npp
  dDoc
  NDoc
  VidDoc
  OrgName
  NameMC
  OtpEDName
  Kol
  Sum
.EndFields
�� &&&& @@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@ @~@@@@@ &&&&&&&&&&.&&&  &#'&&&&&&&&&&&&&&&&&.&&��
.[F
��陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳��
.]F
.}
.}
.EndForm
