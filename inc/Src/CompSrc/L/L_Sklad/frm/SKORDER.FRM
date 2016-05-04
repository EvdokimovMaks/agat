!���������������������������������������������������������������������ͻ
!�      �஥�� ��������� (c) 1994,95 TOP SOFT Ltd., �� ����� ������    �
!�  ����� :     1.00                                                  �
!�  ���ࠡ�⠫:  ��ࠢ��� �.�.                                         �
!�  �����祭��: ��������� �����                                        �
!�  ���������:                                                         �
!���������������������������������������������������������������������ͼ

#doc
��������� �����
#end
.set name = 'skorder'
.hide
.{
.fields
  SklOrderRec:comp OrdName nOrder dOrder:date
.endfields
  ^  ^    ^   ^
.if sklorder01
.fields
  Osnov
.endfields
  ^
.if sklorder02
.fields
 Kontr
.endfields
  ^
.end
.end
.fields
  Sklad Mol Mol_Post MyAddr AddrRK
.endfields
  ^ ^ ^ ^ ^
.fields
  RublSimv ValSimv Prim
.endfields
  ^    ^   ^
.{
.fields
 Npp:integer NNomer MC TNVED ������_�࠭���� ED  kGroupMC SizeX SizeY SizeZ McVes : double
.endfields
 ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.{
.fields
  SpOrderRec:comp
  nRecParty :comp
  Party Kol:double Price PriceV
  DoocKol DoocPriceUp DoocSumUp DoocPriceUpV DoocSumUpV
  DoocPriceAfter DoocSumAfter DoocPriceAfterV DoocSumAfterV
  Summ SummV SumK:double SumPR SumPV CountPart:integer
.endfields
 ^   ^   ^   ^   ^   ^
 Dooc ^ ^ ^ ^ ^ ^ ^ ^ ^
 ^   ^   ^   ^   ^   ^
.}
.}
.fields
  Itogo ItogoV Count:integer
.endfields
  ^            ^             ^
.}
.endform
!==========================================================================
#doc
��������� ����� (���-���)
#end
.linkform 'skorder_01' prototype is 'skorder'
.NameInList '��������� ����� (���-���)'
.Group '�����᪮� �थ�'
.create view localSklOrder
from
  SklOrder
;
.var
  Sender, senderpost   : string
  Recipient, RecipientPost : string
.endvar
.{
.fields
  CommonFormHeader
  OrdName nOrder dOrder
.endfields
 ^


                         @@@@@@@@@ ����� �  ^
                              �� ^
.if sklorder01
.fields
  Osnov
.endfields
   �᭮�����  : ^
.if sklorder02
.end
.end
.fields
  Sklad Prim
.endfields
   �����      : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
   ^
.fields
  '� '+RublSimv '� '+ValSimv '� '+RublSimv '� '+ValSimv
.endfields
�����������������������������������������������������������������������������������������������������������������������������������������������������
�����������멳                            � ������ �                    �             ����                �              �⮨�����
    �����     �      ������������ ��       �����७��     ������⢮     �������������������������������������������������������������������������
              �                            �         �                    � @~@@@@@@@@@@@ � @~@@@@@@@@@@@@@ �  @~@@@@@@@@@@@  � @~@@@@@@@@@@@@
���������������������������������������������������������������������������������������������������������������������������������������������������
.{
.{
.fields
  NNomer       MC                           ED        Kol                  Price           PriceV               Summ              SummV
.endfields
&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@ &'&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&
.}
.}
.fields
  Itogo ItogoV
.endfields
���������������������������������������������������������������������������������������������������������������������������������������������������
��   �⮣� :                                                                                                   &&&&&&&&&&&&&&&&&     &&&&&&&&&&&&&&&&��
.begin
  localSklOrder.GetFirst SklOrder where ((SklOrderRec == SklOrder.nRec));
  if (localSklOrder.SklOrder.vidOrder = 0) // ��室��
  {
    sender := Mol;
    Senderpost := mol_post;
  }
  if (localSklOrder.SklOrder.vidOrder = 1) // ��室��
  {
    recipient := Mol;
    RecipientPost := mol_post;
  }
end.
.fields
  Senderpost
  Sender
  RecipientPost
  Recipient
.endfields

   �ਭ�: ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� ��             �� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                    ���������              �������           ����஢�� ������
   ���� :  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� ��             �� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                    ���������              �������           ����஢�� ������

��
.}
.ENDform
!%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#doc
��������� ����� (��������)
#end
.linkform 'skorder_02' prototype is 'skorder'
.NameInList '��������� ����� (��������)'
.Group '�����᪮� �थ�'
.create view localSklOrder
from
  SklOrder
;
.var
  Sender, senderpost   : string
  Recipient, RecipientPost : string
.endvar
.{
.fields
  CommonFormHeader
  OrdName nOrder dOrder
.endfields
 ^


                            @@@@@@@@@ ����� �  ^
                               �� ^
.if sklorder01
.fields
  Osnov
.endfields
   �᭮�����  : ^
.if sklorder02
.end
.end
.fields
  Sklad Prim
.endfields
   �����      : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
   ^
.fields
  '� '+ValSimv '� '+ValSimv
.endfields
�������������������������������������������������������������������������������������������������������������������
�����������멳    ���ਠ���  業����   � ������ �    ������⢮    �      ����       �     �⮨�����
    �����     �                             �����७��                  � @~@@@@@@@@@@@@@ �  @~@@@@@@@@@@@@@@
�����������������������������������������������������������������������������������������������������������������
.{
.{
.fields
  NNomer       MC                            ED        Kol                PriceV             SummV
.endfields
&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@ &'&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&
.}
.}
.fields
  ItogoV
.endfields
�����������������������������������������������������������������������������������������������������������������
��   �⮣� :                                                                                      &&&&&&&&&&&&&&&&��
.begin
  localSklOrder.GetFirst SklOrder where ((SklOrderRec == SklOrder.nRec));
  if (localSklOrder.SklOrder.vidOrder = 0) // ��室��
  {
    sender := Mol;
    Senderpost := mol_post;
  }
  if (localSklOrder.SklOrder.vidOrder = 1) // ��室��
  {
    recipient := Mol;
    RecipientPost := mol_post;
  }
end.
.fields
  Senderpost
  Sender
  RecipientPost
  Recipient
.endfields

   �ਭ�: ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� ��             �� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                    ���������              �������           ����஢�� ������
   ���� :  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� ��             �� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                    ���������              �������           ����஢�� ������

��
.}
.endform

!%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#doc
����������� ��������� �����
#end
.linkform 'skorder_03' prototype is 'skorder'
.NameInList '����������� ��������� �����'
.Group '�����᪮� �थ�'
.create view localSklOrder
from
  SklOrder
;
.var
  Sender, senderpost   : string
  Recipient, RecipientPost : string
.endvar
.{
.fields
  CommonFormHeader
  OrdName nOrder dOrder
.endfields
 ^


                            @@@@@@@@@ ����� �  ^
                               �� ^
.if sklorder01
.fields
  Osnov
.endfields
   �᭮�����  : ^
.if sklorder02
.end
.end
.fields
  Sklad Prim
.endfields
   �����      : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
   ^
.fields
  '� '+RublSimv '� '+RublSimv
.endfields
�������������������������������������������������������������������������������������������������������������
�����������멳    ���ਠ���  業����   � ������ �    ������⢮    �     ����      �    �⮨�����
    �����     �                             �����७��                  � @~@@@@@@@@@@@ �  @~@@@@@@@@@@@
�����������������������������������������������������������������������������������������������������������
.{
.{
.fields
  NNomer       MC                            ED        Kol                Price          Summ
.endfields
&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@ &'&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&
.}
.}
.fields
  Itogo
.endfields
�����������������������������������������������������������������������������������������������������������
   ���⮣� :                                                                                &&&&&&&&&&&&&&&&&��
.begin
  localSklOrder.GetFirst SklOrder where ((SklOrderRec == SklOrder.nRec));
  if (localSklOrder.SklOrder.vidOrder = 0) // ��室��
  {
    sender := Mol;
    Senderpost := mol_post;
  }
  if (localSklOrder.SklOrder.vidOrder = 1) // ��室��
  {
    recipient := Mol;
    RecipientPost := mol_post;
  }
end.
.fields
  Senderpost
  Sender
  RecipientPost
  Recipient
.endfields

   �ਭ�: ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� ��             �� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                    ���������              �������           ����஢�� ������
   ���� :  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� ��             �� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                    ���������              �������           ����஢�� ������

��
.}
.endform

#doc
��������� ����� � ������������ �� �� ������� (���-���)
#end
.linkform 'skorder_04' prototype skorder
.NameInList '��������� ����� � ������������ �� �� ������� (���-���)'
.ORIENT LANDSCAPE
.Group '�����᪮� �थ�'
.create view localSklOrder
from
  SklOrder
;
.var
  Sender, senderpost   : string
  Recipient, RecipientPost : string
.endvar
.{
.fields
 CommonFormHeader
 OrdName nOrder dOrder
.endfields
 ^

                      @@@@@@@@@ ��������� ����� �  ^
                            �� ^

.if SklOrder01
.fields
  Osnov
.endfields
  �᭮����� : ^
.if SklOrder02
.end
.end
.fields
 Sklad Prim
.endfields
  ����� : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  ^
.fields
  '� '+RublSimv '� '+ValSimv '� '+RublSimv '� '+ValSimv
.endfields��
�������������������������������������������������������������������������������������������������������������������������������������������������
�����������멳                            � ������ �                  �             ����                �              �⮨�����
    �����     �      ������������ ��       �����७��    ������⢮    �������������������������������������������������������������������������
              �                            �         �                  � @~@@@@@@@@@@@ � @~@@@@@@@@@@@@@ � @~@@@@@@@@@@@@@ � @~@@@@@@@@@@@@@
�������������������������������������������������������������������������������������������������������������������������������������������������
.{
.fields
  NNomer         MC                           ED
.endfields
&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@
.{
.fields
      Party                                           Kol                Price           PriceV            Summ              SummV
.endfields
      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&
.}
.fields
                                                        SumK                                           SumPR             SumPV
.endfields
�� �⮣� �� �� :                                        &'&&&&&&&&&&&&&&&&                                   &&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&��
�������������������������������������������������������������������������������������������������������������������������������������������������
.}
.fields
  Itogo ItogoV
.endfields
��   �⮣� :                                                                                                 &&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&��
.begin
  localSklOrder.GetFirst SklOrder where ((SklOrderRec == SklOrder.nRec));
  if (localSklOrder.SklOrder.vidOrder = 0) // ��室��
  {
    sender := Mol;
    Senderpost := mol_post;
  }
  if (localSklOrder.SklOrder.vidOrder = 1) // ��室��
  {
    recipient := Mol;
    RecipientPost := mol_post;
  }
end.
.fields
  Senderpost
  Sender
  RecipientPost
  Recipient
.endfields

   �ਭ�: ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� ��             �� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                    ���������              �������           ����஢�� ������
   ���� :  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� ��             �� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                    ���������              �������           ����஢�� ������

��
.}
.endform

#doc
��������� ����� � ������������ �� �� ������� (���)
#end
.linkform 'skorder_05' prototype skorder
.NameInList '��������� ����� � ������������ �� �� ������� (���)'
.Group '�����᪮� �थ�'
.ORIENT LANDSCAPE
.create view localSklOrder
from
  SklOrder
;
.var
  Sender, senderpost   : string
  Recipient, RecipientPost : string
.endvar
.{
.fields
 CommonFormHeader
 OrdName nOrder dOrder
.endfields
 ^

                      @@@@@@@@@ ��������� ����� �  ^
                            �� ^

.if SklOrder01
.fields
  Osnov
.endfields
  �᭮�����: ^
.if SklOrder02
.end
.end
.fields
 Sklad MOL Mol_Post  Prim
.endfields
  �����    : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  ���      : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  ���������: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  ^
.fields
  '� '+RublSimv '� '+RublSimv
.endfields
������������������������������������������������������������������������������������������������������������������������
�����������멳      ������������ ��       � ������ �  ����    �    ������⢮    �     ����      �   �⮨�����
    �����     �                            �����७��           �                  � @~@@@@@@@@@@@ �  @~@@@@@@@@@@@
����������������������������������������������������������������������������������������������������������������������
.{
.{
.fields
NNomer         MC                           ED        Party       Kol                Price           Summ
.endfields
&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@@ &'&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&
.}
.fields
NNomer         MC                           ED        countpart  SumK                          SumPR
.endfields
�� �⮣� ��                                             ������⢮
 ���業���� :                                            �਩:
&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@ &&&&&&&&&&  &'&&&&&&&&&&&&&&&&                 &&&&&&&&&&&&&&&&&��
����������������������������������������������������������������������������������������������������������������������
.}
.fields
  Itogo
.endfields
��   �⮣� :                                                                                           &&&&&&&&&&&&&&&&&��
.begin
  localSklOrder.GetFirst SklOrder where ((SklOrderRec == SklOrder.nRec));
  if (localSklOrder.SklOrder.vidOrder = 0) // ��室��
  {
    sender := Mol;
    Senderpost := mol_post;
  }
  if (localSklOrder.SklOrder.vidOrder = 1) // ��室��
  {
    recipient := Mol;
    RecipientPost := mol_post;
  }
end.
.fields
  Senderpost
  Sender
  RecipientPost
  Recipient
.endfields

   �ਭ�: ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� ��             �� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                    ���������              �������           ����஢�� ������
   ���� :  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� ��             �� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                    ���������              �������           ����஢�� ������

��
.}
.endform

#include skl_dooc.FRN   //��८業��
#include SC_CALOR.FRN   // ��� ������. ��室�� �थ�