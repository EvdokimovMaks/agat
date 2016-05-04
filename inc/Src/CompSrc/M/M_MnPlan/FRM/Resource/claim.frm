/*
 ��������������������������������������������������������������������������ͻ
 �                     (c) ��௮��� ���������, 1996,2001                  �
 � �஥��        : ���������                                                �
 � ���⥬�       : ��ࠢ����� ����ᠬ�                                     �
 � �����        : 7.00                                                     �
 � �����祭��    : ����� ���-������                                     �
 � �⢥��⢥��� : ����਩ �������஢�� ����室 (SDV)                      �
 ��������������������������������������������������������������������������ͼ
*/
.set name='Claim'
.hide
.fields
	_IndNRec
  _UserDescr  _InternalNumber   _BookingDate
  _DocState   _DocType   _ExecutionDate
  _DateIncludeInPortfolio   _Notes
  _Customer _Performer  _DocPriority     _Sum
  _Currency _R1 _R2 _R3 _R4 _R5 _A1  _A2 _A3 _A4 _A5
	_DogovorNumber     _Receiver     _Payer
  _NoOrd _dOrd _NoPer _dPer
  _PaymentForm     _ShipmentCondition
  _ExecutionDepartment     _ShipmentVault    _ResponsiblePerson
  _Discount
	_ClNRec
  _High _Tree _Code _Name _OtpEd _Kol _Price _Summa:double _Beg _End _Skidka
  _RS1 _RS2 _RS3 _RS4 _RS5 _Primechan _AS1 _AS2 _AS3 _AS4 _AS5
.endfields

		 Indent NRec:  ^
     ���ਯ�� ���짮��⥫�: ^
     ����� ����७���:  ^
     ��� ��� ���: ^
     ����ﭨ� ���㬥��: ^
     ��� ���㬥��: ^
     ��� �믮������: ^
     ��� ����祭�� ��� � ����䥫� �������: ^
     �ਬ�砭��: ^
     �����稪:  ^
     �ᯮ���⥫�:  ^
     �ਮ��� ���㬥��: ^
     �㬬� �� ���㬥���:  ^
     �����:   ^
     ���祭�� �����⨪ �� ���:
   @@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@
   @@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@
		 ����� �������:  ^

     �����⥫�:   ^
     ���⥫�騪:   ^
     ����� �����稪�:  ^
     ��� �����稪�:   ^
     ����� �ᯮ���⥫�:  ^
     ��� �ᯮ���⥫�:   ^
     ��ଠ ������:   ^
     �᫮��� ���㧪�:   ^
     ���ࠧ������� �ᯮ������:  ^
     ����� ���㧪�:  ^
     �⢥��⢥���� ���:  ^
     ������ �� ���:   &&&.&&

.{ CheckEnter Claim_Loop1
^^^^^^^^^^^^^^^^^^^^^^^
.}

.endform

.linkform 'Claim_01' prototype is 'Claim'
.NameInList '������� ���� �����'
.Group '�������'
.var  Total :double
.endvar
.fields
  CommonFormHeader
  _UserDescr  _InternalNumber   _BookingDate
  _DocState   _DocType   _ExecutionDate
  _DateIncludeInPortfolio   _Notes
  _Customer _Performer
  _DocPriority     _Sum
  _Currency    _R1  _R2  _R3  _A1  _A2  _A3
	_DogovorNumber
  _Receiver  _Payer
  _NoOrd _dOrd _NoPer _dPer
  _PaymentForm _ShipmentCondition
  _ExecutionDepartment  _ShipmentVault  _ResponsiblePerson
  _Discount
  _Code _Name _OtpEd _Kol _Price _Summa _Beg _End _Skidka _Primechan
   Total
.endfields
.BEGIN Total:=0; END.
^
     ���ਯ�� ���짮��⥫�: ^
     ����� ����७���:  ^
     ��� ��� ���: ^
     ����ﭨ� ���㬥��: ^
     ��� ���㬥��: ^
     ��� �믮������: ^
     ��� ����祭�� ��� � ����䥫� �������: ^
     �ਬ�砭��: ^
     �����稪:  ^
     �ᯮ���⥫�:  ^
     �ਮ��� ���㬥��: ^
     �㬬� �� ���㬥���:  &&&&&&&&&&&.&&  ^
     ���祭�� �����⨪ �� ���:
   @@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@
   @@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@
     ����� �������:  ^

     �����⥫�:   ^
     ���⥫�騪:   ^
     ����� �����稪�:  ^
     ��� �����稪�:   ^
     ����� �ᯮ���⥫�:  ^
     ��� �ᯮ���⥫�:   ^
     ��ଠ ������:   ^
     �᫮��� ���㧪�:   ^
     ���ࠧ������� �ᯮ������:  ^
     ����� ���㧪�:  ^
     �⢥��⢥���� ���:  ^
     ������ �� ���:   &&&.&&

�����������������������������������������������������������������������������������������������������������������������������������������������
      ���       �   ������������   �  ��.��. � ������⢮ �    ����   �    �㬬�     �  ��砫�   � ����砭�� � ������ �      �ਬ�砭��
�����������������������������������������������������������������������������������������������������������������������������������������������
.{ CheckEnter Claim_Loop1
@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&&&&.&&& &&&&&&&&.&& &&&&&&&&&&&.&& &&&&&&&&&&& &&&&&&&&&&&  &&.&& %  @@@@@@@@@@@@@@@@@@@@@@
.BEGIN
Total:=Total+_Summa;
END.
.}
�����������������������������������������������������������������������������������������������������������������������������������������������
     �⮣�                                                             &&&&&&&&&&&&.&&
.endform

.linkform 'Claim_02' prototype is 'Claim'
.NameInList '������� ���� �।��� � �����⨪� �� ᯥ�䨪�樨'
.Group '�������'
.var  Total :double
.endvar
.fields
  CommonFormHeader

  _UserDescr  _InternalNumber   _BookingDate
  _DocState   _DocType   _ExecutionDate
  _DateIncludeInPortfolio   _Notes
  _Customer _Performer
  _DocPriority     _Sum
  _Currency   _R1 _R2 _R3 _A1 _A2 _A3
	_DogovorNumber
	_RS1 _RS2 _RS3 _RS4
  _Code _Name _OtpEd _Kol _Price _Summa _Beg _End _Primechan
  _AS1 _AS2 _AS3 _AS4
  Total
.endfields
.BEGIN Total:=0; END.
^

     ���ਯ�� ���짮��⥫�: ^
     ����� ����७���:  ^
     ��� ��� ���: ^
     ����ﭨ� ���㬥��: ^
     ��� ���㬥��: ^
     ��� �믮������: ^
     ��� ����祭�� ��� � ����䥫� �������: ^
     �ਬ�砭��: ^
     �����稪:  ^
     �ᯮ���⥫�:  ^
     �ਮ��� ���㬥��: ^
     �㬬� �� ���㬥���:  &&&&&&&&&&&.&&  ^
     ���祭�� �����⨪ �� ���:
   @@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@
   @@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@
     ����� �������:  ^

�������������������������������������������������������������������������������������������������������������Ŀ����������������������Ŀ�����������������Ŀ�����������������Ŀ�����������������Ŀ������������������
      ���       �   ������������   �  ��.��. � ������⢮ �    ����   �    �㬬�     �  ��砫�   � ����砭�� �      �ਬ�砭��       � @@@@@@@@@@@@@@@@ � @@@@@@@@@@@@@@@@ � @@@@@@@@@@@@@@@@ � @@@@@@@@@@@@@@@@
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{ CheckEnter Claim_Loop1
@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&&&&.&&& &&&&&&&&.&& &&&&&&&&&&&.&& &&&&&&&&&&& &&&&&&&&&&&  @@@@@@@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@
.BEGIN
Total:=Total+_Summa;
END.
.}
�������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
     �⮣�                                                             &&&&&&&&&&&&.&&
.endform

.linkform 'Claim_03' prototype is 'Claim'
.NameInList '������� ���� ��⪨�'
.Group '�������'
.var  Total :double
.endvar
.fields
  CommonFormHeader

  _InternalNumber   _BookingDate
  _ExecutionDate
  _Customer _Performer   _Sum
  _Currency
  _R1 _R2 _R3 _A1 _A2 _A3
  _Code _Name _OtpEd _Kol _Price _Summa _Primechan
   Total
.endfields
.BEGIN Total:=0; END.
^

     ����� ����७���:  ^  ��� ��� ���: ^  ��� �믮������: ^
     �����稪:  ^     �ᯮ���⥫�: ^
     �㬬� �� ���㬥���:  &&&&&&&&&&&.&&  ^
     ���祭�� �����⨪ �� ���:
   @@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@
   @@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@

��������������������������������������������������������������������������������Ŀ�����������������������
      ���       �   ������������   �  ��.��. � ������⢮ �  ����   �   �㬬�   �      �ਬ�砭��
���������������������������������������������������������������������������������������������������������
.{ CheckEnter Claim_Loop1
@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&&&&.&&& &&&&&&.&& &&&&&&&&.&&  @@@@@@@@@@@@@@@@@@@@@@
.BEGIN
Total:=Total+_Summa;
END.
.}
���������������������������������������������������������������������������������������������������������
     �⮣�                                                           &&&&&&&&&.&&
.endform

