//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.84 - �����᪮� ���
// ���⨯ �������⥩ � ��⮢ ���業�� � ��� ���業�� (�।��� 業� �� �।�����)
//------------------------------------------------------------------------------

#doc
���⨯ �������⥩ � ��⮢ ���業�� (�।��� 業� �� �।�����)
#end
.set name = 'doocenka'
.hide
.fields
dateF
header1
header2

!.{
nameMC
kodMC       : string
datep       : string
nomersop    : string
kontrname   : string
GroupNom
edIzm
kol         : double
SimvolV     : string
priceDo     : double
priceDoV    : double
sumDo       : double
sumDoV      : double
pricePosle  : double
pricePosleV : double
sumPosle    : double
sumPosleV   : double
!.}

itogoDo
itogoPosle
raznost
.endfields

dateF       ^
header1     ^
header2     ^

.{
nameMC      ^
kodMC       ^
datep       ^
nomersop    ^
kontrname   ^
GroupNom    ^
edIzm       ^
kol         ^
SimvolV     ^
priceDo     ^
priceDoV    ^
sumDo       ^
sumDoV      ^
pricePosle  ^
pricePosleV ^
sumPosle    ^
sumPosleV   ^
.}

itogoDo     ^
itogoPosle  ^
raznost     ^
.endform



#doc
��� ���業��
#end
.linkform 'doocenka_01' prototype is 'doocenka'
.nameInList '��� ���業��'
.group 'prc'
.p 60
.defo landscape
.fields
CommonFormHeader
dateF
header1
header2

!.{
nameMC
kodMC
edIzm
kol
SimvolV : 'p:c'
priceDo
priceDoV
sumDo
sumDoV
pricePosle
pricePosleV
sumPosle
sumPosleV
!.}

itogoDo
itogoPosle
raznost
.endfields
^

��      ���������                               ��८業�� �� ����: @@@@@@@@@@
 ____________________
 ____________________

��                                       ��� � ________
                           @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                   @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

.{
.[h OverWrite
�������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
     ������������      �   �������.   � ��. �            �      �                       �� ��८業��                       �                      ��᫥ ��८業��
     ���業����       �    �����     � ���.� ������⢮ �������������������������������������������������������������������������������������������������������������������������������
                       �              �     �            �      �     ����     ����� � ����      �㬬�       � �㬬� � ���  �     ����     ����� � ����      �㬬�       � �㬬� � ���
�������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]h
�� @@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@ @@@@@ &'&&&&&&.&&& @@@@@@ &#'&&&&&&&&.&& &#'&&&&.&& &#'&&&&&&&&&&&&.&& &#'&&&&&&&&.&& &#'&&&&&&&&.&& &#'&&&&.&& &#'&&&&&&&&&&&&.&& &#'&&&&&&&&.&&��
.}

��   ���⮣� �� ����                                                                         &#'&&&&&&&&&&&&&&.&&                                        &#'&&&&&&&&&&&&&&.&&��

��   ���������� �� ��८業�� ��⠢���:     &#'&&&&&&&&&&&&&&&&.&&��
.endform
