!���������������������������������������������������������������������������ͻ
!                     (c) ��௮��� ���������, 1996,97                      �
! �஥��        : ���������                                                  �
! ���⥬�       :                                                            �
! �����        :                                                            �
! �����祭��    :                                                            �
! �⢥��⢥��� :                                                            �
!���������������������������������������������������������������������������ͼ
#Doc
����窠 㯮������� ���⨩ �� � ���㬥���
#End
.Form 'RepPartyInDoc'
.NameInList '����窠 㯮������� ���⨩ �� � ���㬥���'
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
.{CheckEnter Cicle1 // 横� �� ����� ��
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

.{CheckEnter Cicle2   // 横� �� ���㬥�⠬
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

.} // �� ���㬥�⠬
.}
.EndForm
!
!==============================================================================
!
#Doc
����窠 㯮������� ���⨩ �� � ���㬥���
#End
.LinkForm 'RepPartyInDoc_1' prototype is 'RepPartyInDoc'
.NameInList '����窠 㯮������� ���⨩ �� � ���㬥���'
.Defo landscape
!.P 40
.Fields
  CommonFormHeader
  dDate1
  dDate2
.EndFields
��^��

��                         ����窠 㯮������� ���⨩ �� �� ��ਮ�
                               c @@@@@@@@@@ �� @@@@@@@@@@��
.{CheckEnter Cicle1 // 横� �� ���
.Fields
  PartyNameKod
.EndFields

�� @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
��������������������������������������������������������������������������������������������������������������������������������������������������������������
  �  �   ���   �  �����  �               ���              �          ����ࠣ���,         �       ��        �  ��.  �  ������⢮  �      � � � � �
 �/� � ���㬥�⠳���㬥�⠳            ���㬥��           �         ���ࠧ�������        �                 �  ���. �              �
��������������������������������������������������������������������������������������������������������������������������������������������������������������
.{CheckEnter Cicle2 //横� �� ���㬥�⠬
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
����������������������������������������������������������������������������������������������������������������������������������������������������������������
.]F
.}
.}
.EndForm
