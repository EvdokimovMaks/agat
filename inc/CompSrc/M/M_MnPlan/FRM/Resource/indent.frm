/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
 �                     (c) ��牆���罔� ���������, 1996,2002                  �
 � 蹍オ�        : ���������                                                �
 � ��痰ガ�       : ����←キ┘ 爛痺珀���                                     �
 � �ム瓱�        : 7.10                                                     �
 � ��Л�腑�┘    : �ョ�碎 �������� �爬�爬皀皰� ��錢��-������                �
 � �癶モ痰▲��覃 : ���矗┤ ���え��牀※� ���牀絎� (SDV)                      �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
*/
.set name='Indent'
.hide
.fields
  FilterName
  _IndNrec
	_ClNrec
  _Code
  _Customer _Performer  _UserDescr   _Sum:double
  _Currency _IndentDate _ExecutionDate _BookingDate
  _Type _Priority _Status _Primechaniya _Rl1  _Rl2  _Rl3 _Rl4  _Rl5 _An1  _An2  _An3 _An4  _An5  // -25
  _IndNRec1    // claim
  _UserDescr1  _InternalNumber   _BookingDate1
  _DocState   _DocType   _ExecutionDate1
  _DateIncludeInPortfolio   _Notes
  _Customer1 _Performer1  _DocPriority     _Sum1
  _Currency1 _R1 _R2 _R3 _R4 _R5 _A1  _A2 _A3 _A4 _A5
	_DogovorNumber     _Receiver     _Payer
  _NoOrd _dOrd _NoPer _dPer
  _PaymentForm     _ShipmentCondition
  _ExecutionDepartment     _ShipmentVault    _ResponsiblePerson
  _Discount
  _ClNRec1
  _High _Tree _Code1 _Name _OtpEd _Kol _Price _Summa:double _Beg _End _Skidka
  _RS1 _RS2 _RS3 _RS4 _RS5 _Primechan _AS1 _AS2 _AS3 _AS4 _AS5
.endfields



^   // FilterName
.{ CheckEnter Indent_Loop1
^^^^^^^^^^^^^^^^^^^^^^^^^


     Indent1 NRec:  ^           // claim
     �メ�爬�皰� ���讌���皀��: ^
     ���ム ↓竄爛��┤:  ^
     ���� �爬飫� ��錢��: ^
     ��痰�鎰┘ ぎ�祠キ��: ^
     �┓ ぎ�祠キ��: ^
     ���� �覩���キ��: ^
     ���� →�鈑キ�� ��錢�� � ��珥筌�� ����М�: ^
     踸�ョ����: ^
     ����х┴:  ^
     �甎����皀��:  ^
     踸�爬皀� ぎ�祠キ��: ^
     �祠�� �� ぎ�祠キ矣:  ^
     ���鈞�:   ^
     ���腑��� �����皋� �� ��錢��:
   @@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@
   @@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@
		 ���ム ぎ��〓��:  ^

     ���竍�皀��:   ^
     ���皀�跚┴:   ^
     ���ム ����х┴�:  ^
     ���� ����х┴�:   ^
     ���ム �甎����皀��:  ^
     ���� �甎����皀��:   ^
     ��爼� ����硅:   ^
     �甄�※� �癸珮И�:   ^
     ��む�Гカキ┘ �甎���キ��:  ^
     ����� �癸珮И�:  ^
     �癶モ痰▲���� ��罧:  ^
     ��┐�� �� ��錢��:   &&&.&&

.{ CheckEnter Claim1_Loop1
^^^^^^^^^^^^^^^^^^^^^^^
.}
.}

.endform


.linkform 'Indent_01' prototype is 'Indent'
.NameInList '����覃 �砒モ'
.fields
  CommonFormHeader
  FilterName
  _Code _Customer _Performer
  _UserDescr _Sum  _Currency
  _IndentDate _ExecutionDate _BookingDate
  _Type _Priority _Status _Primechaniya
.endfields

^
�┼赳� : ^
                                ��錢�� / �����
陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳堕陳陳賃陳陳陳陳陳陳賃陳陳陳賃陳陳陳陳陳賃陳陳陳陳陳賃陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
  ���ム   �     ����х┴      �    �甎����皀��    ��メ��.�    �祠��    ����鈞� ����� �爬飫��  ����     �    �      �       �┓         �   踸�爬皀�   �    ���矣�     �              踸�ョ����
          �                   �                   �      �             �       �           絵甎���キ�� � ��珥筌��  �                   �               �               �
陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳祖陳陳珍陳陳陳陳陳陳珍陳陳陳珍陳陳陳陳陳珍陳陳陳陳陳珍陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳潰陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.{ CheckEnter Indent_Loop1
@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@ @@@@@@ &&&&&&&&&&.&& &&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& @@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{ CheckEnter Claim1_Loop1
.}
.}
.endform



.linkform 'Indent_02' prototype is 'Indent'
.NameInList '�砒モ � ����х┴�� � �����皋�� �� ��錢��'
.fields
  CommonFormHeader
  FilterName
  _Code _Customer
  _Sum  _Currency
  _IndentDate _ExecutionDate
  _Priority _Status _Primechaniya
  _Rl1  _Rl2  _Rl3  _Rl4  _Rl5
  _An1 _An2 _An3 _An4  _An5
.endfields
^
�┼赳� : ^
                                ��錢�� / �����
陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳賃陳陳陳賃陳陳陳陳陳賃陳陳陳陳陳賃陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕陳陳陳陳陳陳陳陳陳芯陳陳陳陳陳陳陳陳朕陳陳陳陳陳陳陳陳陳芯陳陳陳陳陳陳陳陳朕陳陳陳陳陳陳陳陳陳
  ���ム   �         ����х┴           �    �祠��    � ���鈞������ �爬飫��   ����    �   踸�爬皀�   �   ���矣�      �               踸�ョ����              � ���� 1           � ���� 2           � ���� 3           � ���� 4           � ���� 5
          �                            �             �       �           絵甎���キ�� �               �               �                                       �      �����皋�� 1 �      �����皋�� 2 �      �����皋�� 3 �      �����皋�� 4 �      �����皋�� 5
陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳陳珍陳陳陳珍陳陳陳陳陳珍陳陳陳陳陳珍陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰陳陳陳陳陳陳陳陳陳拂陳陳陳陳陳陳陳陳潰陳陳陳陳陳陳陳陳陳拂陳陳陳陳陳陳陳陳潰陳陳陳陳陳陳陳陳陳
.{ CheckEnter Indent_Loop1
@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&.&& &&&&&&& &&&&&&&&&&& &&&&&&&&&&& @@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@
                                                                                                                                                         @@@@@@@@@@@@@      @@@@@@@@@@@@@      @@@@@@@@@@@@      @@@@@@@@@@@@@      @@@@@@@@@@@@@
.{ CheckEnter Claim1_Loop1
.}
.}
.endform



.linkform 'Indent_03' prototype is 'Indent'
.NameInList '�砒モ � �甎����皀�ガ � �����皋�� �� ��錢��'
.fields
  CommonFormHeader
  FilterName
  _Code _Performer
  _Sum  _Currency
  _IndentDate _ExecutionDate
  _Priority _Status _Primechaniya
  _Rl1  _Rl2  _Rl3 _Rl4  _Rl5
  _An1 _An2 _An3 _An4  _An5
.endfields
^
�┼赳� : ^
                                ��錢�� / �����
陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳賃陳陳陳賃陳陳陳陳陳賃陳陳陳陳陳賃陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳朕陳陳陳陳陳陳陳陳陳芯陳陳陳陳陳陳陳陳朕陳陳陳陳陳陳陳陳陳芯陳陳陳陳陳陳陳陳朕陳陳陳陳陳陳陳陳陳
  ���ム   �        �甎���皀��          �    �祠��    � ���鈞������ �爬飫��   ����    �   踸�爬皀�   �   ���矣�      �               踸�ョ����              � ���� 1           � ���� 2           � ���� 3           � ���� 4           � ���� 5
          �                            �             �       �           絵甎���キ�� �               �               �                                       �      �����皋�� 1 �      �����皋�� 2 �      �����皋�� 3 �      �����皋�� 4 �      �����皋�� 5
陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳陳珍陳陳陳珍陳陳陳陳陳珍陳陳陳陳陳珍陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳潰陳陳陳陳陳陳陳陳陳拂陳陳陳陳陳陳陳陳潰陳陳陳陳陳陳陳陳陳拂陳陳陳陳陳陳陳陳潰陳陳陳陳陳陳陳陳陳
.{ CheckEnter Indent_Loop1
@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&.&& &&&&&&& &&&&&&&&&&& &&&&&&&&&&& @@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@
                                                                                                                                                                   @@@@@@@@@@@@@      @@@@@@@@@@@@@      @@@@@@@@@@@@      @@@@@@@@@@@@@      @@@@@@@@@@@@@
.{ CheckEnter Claim1_Loop1
.}
.}
.endform



.linkform 'Indent_04' prototype is 'Indent'
.NameInList '���皖┤ �砒モ � �����皋�� �� ��錢��'
.fields
  CommonFormHeader
  FilterName
  _Code _Customer _Performer
  _Sum  _Currency _Primechaniya
  _Rl1  _Rl2  _Rl3 _Rl4  _Rl5
  _An1  _An2  _An3 _An4  _An5
.endfields
^
�┼赳� : ^
                                ��錢�� / �����
陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳堕陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳芯陳陳陳陳陳陳陳陳朕陳陳陳陳陳陳陳陳陳芯陳陳陳陳陳陳陳陳芯陳陳陳陳陳陳陳陳朕陳陳陳陳陳陳陳陳陳
  ���ム   �       ����х┴        �      �甎����皀��      �    �祠��    ����鈞� �              踸�ョ����               � ���� 1           � ���� 2           � ���� 3          � ���� 4           � ���� 5
          �                       �                       �             �       �                                       �      �����皋�� 1 �      �����皋�� 2 �      �����皋�� 3�      �����皋�� 4 �      �����皋�� 5
陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳祖陳陳陳祖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳拂陳陳陳陳陳陳陳陳潰陳陳陳陳陳陳陳陳陳拂陳陳陳陳陳陳陳陳拂陳陳陳陳陳陳陳陳潰陳陳陳陳陳陳陳陳陳
.{ CheckEnter Indent_Loop1
@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&.&& &&&&&&&  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@
                                                                                                                              @@@@@@@@@@@@@      @@@@@@@@@@@@@      @@@@@@@@@@@@      @@@@@@@@@@@@@      @@@@@@@@@@@@@
.{ CheckEnter Claim1_Loop1
.}
.}
.endform





// claim


.linkform 'Indent_05' prototype is 'Indent'
.NameInList '�┃ォ�覃 �砒モ ����覃'
.Group '�┃ォ�襯'
.var  Total :double
.endvar
.fields
  CommonFormHeader    // claim
  _UserDescr1  _InternalNumber   _BookingDate1    // 37
  _DocState   _DocType   _ExecutionDate1
  _DateIncludeInPortfolio   _Notes
  _Customer1 _Performer1
  _DocPriority     _Sum1
  _Currency1    _R1  _R2  _R3  _A1  _A2  _A3
	_DogovorNumber
  _Receiver  _Payer
  _NoOrd _dOrd _NoPer _dPer
  _PaymentForm _ShipmentCondition
  _ExecutionDepartment  _ShipmentVault  _ResponsiblePerson
  _Discount
  _Code1 _Name _OtpEd _Kol _Price _Summa _Beg _End _Skidka _Primechan     // 10
   Total
.endfields

.{ CheckEnter Indent_Loop1


.BEGIN Total:=0; END.
^

     �メ�爬�皰� ���讌���皀��: ^
     ���ム ↓竄爛��┤:  ^
     ���� �爬飫� ��錢��: ^
     ��痰�鎰┘ ぎ�祠キ��: ^
     �┓ ぎ�祠キ��: ^
     ���� �覩���キ��: ^
     ���� →�鈑キ�� ��錢�� � ��珥筌�� ����М�: ^
     踸�ョ����: ^
     ����х┴:  ^
     �甎����皀��:  ^
     踸�爬皀� ぎ�祠キ��: ^
     �祠�� �� ぎ�祠キ矣:  &&&&&&&&&&&.&&  ^
     ���腑��� �����皋� �� ��錢��:
   @@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@
   @@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@
     ���ム ぎ��〓��:  ^

     ���竍�皀��:   ^
     ���皀�跚┴:   ^
     ���ム ����х┴�:  ^
     ���� ����х┴�:   ^
     ���ム �甎����皀��:  ^
     ���� �甎����皀��:   ^
     ��爼� ����硅:   ^
     �甄�※� �癸珮И�:   ^
     ��む�Гカキ┘ �甎���キ��:  ^
     ����� �癸珮И�:  ^
     �癶モ痰▲���� ��罧:  ^
     ��┐�� �� ��錢��:   &&&.&&

陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳陳陳賃陳陳陳陳陳陳陳堕陳陳陳陳陳堕陳陳陳陳陳堕陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳�
      ���       �   ��━キ����┘   �  ��.�皴. � ����腑痰〓 �    �キ�   �    �祠��     �  ������   � ｪ�����┘ � ��┐�� �      踸�ョ����
陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳陳陳珍陳陳陳陳陳陳陳祖陳陳陳陳陳祖陳陳陳陳陳祖陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳�
.{ CheckEnter Claim1_Loop1    //10
@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&&&&.&&& &&&&&&&&.&& &&&&&&&&&&&.&& &&&&&&&&&&& &&&&&&&&&&&  &&.&& %  @@@@@@@@@@@@@@@@@@@@@@
.BEGIN
Total:=Total+_Summa;
END.
.}

陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
     �皰��                                                             &&&&&&&&&&&&.&&

---------------------------------------------------------------------------------------------------------------------------------------------------
.}


.endform




.linkform 'Indent_06' prototype is 'Indent'
.NameInList '�┃ォ�覃 �砒モ 痼イ�┤ � �����皋�� �� 甎ユ�筥��罔�'
.Group '�┃ォ�襯'
.var  Total :double
.endvar
.fields
  CommonFormHeader

  _UserDescr1  _InternalNumber   _BookingDate1
  _DocState   _DocType   _ExecutionDate1
  _DateIncludeInPortfolio   _Notes
  _Customer1 _Performer1
  _DocPriority     _Sum1
  _Currency1   _R1 _R2 _R3 _A1 _A2 _A3
  _DogovorNumber
  _RS1 _RS2 _RS3 _RS4
  _Code1 _Name _OtpEd _Kol _Price _Summa _Beg _End _Primechan
  _AS1 _AS2 _AS3 _AS4
  Total
.endfields

.{ CheckEnter Indent_Loop1

.BEGIN Total:=0; END.
^

     �メ�爬�皰� ���讌���皀��: ^
     ���ム ↓竄爛��┤:  ^
     ���� �爬飫� ��錢��: ^
     ��痰�鎰┘ ぎ�祠キ��: ^
     �┓ ぎ�祠キ��: ^
     ���� �覩���キ��: ^
     ���� →�鈑キ�� ��錢�� � ��珥筌�� ����М�: ^
     踸�ョ����: ^
     ����х┴:  ^
     �甎����皀��:  ^
     踸�爬皀� ぎ�祠キ��: ^
     �祠�� �� ぎ�祠キ矣:  &&&&&&&&&&&.&&  ^
     ���腑��� �����皋� �� ��錢��:
   @@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@
   @@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@
     ���ム ぎ��〓��:  ^

陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳陳陳賃陳陳陳陳陳陳陳堕陳陳陳陳陳堕陳陳陳陳陳芯陳陳陳陳陳陳陳陳陳陳陳芯陳陳陳陳陳陳陳陳朕陳陳陳陳陳陳陳陳陳芯陳陳陳陳陳陳陳陳朕陳陳陳陳陳陳陳陳陳
      ���       �   ��━キ����┘   �  ��.�皴. � ����腑痰〓 �    �キ�   �    �祠��     �  ������   � ｪ�����┘ �      踸�ョ����       � @@@@@@@@@@@@@@@@ � @@@@@@@@@@@@@@@@ � @@@@@@@@@@@@@@@@ � @@@@@@@@@@@@@@@@
陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳陳陳珍陳陳陳陳陳陳陳祖陳陳陳陳陳祖陳陳陳陳陳拂陳陳陳陳陳陳陳陳陳陳陳拂陳陳陳陳陳陳陳陳潰陳陳陳陳陳陳陳陳陳拂陳陳陳陳陳陳陳陳潰陳陳陳陳陳陳陳陳陳
.{ CheckEnter Claim1_Loop1
@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&&&&.&&& &&&&&&&&.&& &&&&&&&&&&&.&& &&&&&&&&&&& &&&&&&&&&&&  @@@@@@@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@
.BEGIN
Total:=Total+_Summa;
END.
.}
陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
     �皰��                                                             &&&&&&&&&&&&.&&

---------------------------------------------------------------------------------------------------------------------------------------------------

.}
.endform







.linkform 'Indent_07' prototype is 'Indent'
.NameInList '�┃ォ�覃 �砒モ ���皖┤'
.Group '�┃ォ�襯'
.var  Total :double
.endvar
.fields
  CommonFormHeader

  _InternalNumber   _BookingDate1
  _ExecutionDate1
  _Customer1 _Performer1   _Sum1
  _Currency1
  _R1 _R2 _R3 _A1 _A2 _A3
  _Code1 _Name _OtpEd _Kol _Price _Summa _Primechan
   Total
.endfields

.{ CheckEnter Indent_Loop1
.BEGIN Total:=0; END.
^

     ���ム ↓竄爛��┤:  ^  ���� �爬飫� ��錢��: ^  ���� �覩���キ��: ^
     ����х┴:  ^     �甎����皀��: ^
     �祠�� �� ぎ�祠キ矣:  &&&&&&&&&&&.&&  ^
     ���腑��� �����皋� �� ��錢��:
   @@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@
   @@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@

陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳陳賃陳陳陳陳陳朕陳陳陳陳陳陳陳陳陳陳陳�
      ���       �   ��━キ����┘   �  ��.�皴. � ����腑痰〓 �  �キ�   �   �祠��   �      踸�ョ����
陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳陳珍陳陳陳陳陳潰陳陳陳陳陳陳陳陳陳陳陳�
.{ CheckEnter Claim1_Loop1
@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&&&&.&&& &&&&&&.&& &&&&&&&&.&&  @@@@@@@@@@@@@@@@@@@@@@
.BEGIN
Total:=Total+_Summa;
END.
.}
陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
     �皰��                                                           &&&&&&&&&.&&

---------------------------------------------------------------------------------------------------------------------------------------------------

.}
.endform











