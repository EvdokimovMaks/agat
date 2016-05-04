//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.8 - ��壠���᪨� ������
// ������ 䨭��ᮢ�� ����権 �� ��
//------------------------------------------------------------------------------

#doc
������ 䨭��ᮢ�� ����権 �� ��
#end
.set name='TXOPrnFP'
.nameinlist '������� �ଠ'
.hide
.fields
       RegUch
// ���� ⠡���� ���㬥�⮢ BaseDoc :
       dDoc  NomDes  BaseDok_Name  KatOrg_Name  SummaDoc
// ���� ⠡���� ᯥ�䨪�権 SpStep:
       NameMCUSL  KatPartyName  KatOtpEd_Name  Price  KolSkl
// ���� ⠡���� 宧����権 SoprHoz :
       SoprHoz_DatOb   NoDoc  SummaSopr   NameOper
// ���� ⠡���� 䨭�஢����
       StBud CO Period KAU SummaFinProv
.endfields
^
.{ TxoLoopDocum2 CheckEnter    // ���� �� ���㬥�⠬
  ^  ^  ^  ^  ^
.if ExistSpec2
.{ TxoLoopSpec2 CheckEnter     // ���� �� ᯥ�䨪���
  ^  ^  ^  ^  ^
.}
.else
  --- ����䨪��� ��������� ---
.end
.if ExistHozOper2
.{ TxoLoopHozOper2  CheckEnter // ���� �� 宧������
   ^  ^  ^  ^
.if ExistProvod2
.{ TxoLoopProvod2 CheckEnter // ���� �� 䨭�஢�����
  ^  ^  ^  ^  ^
.}
.else
  --- ����஢���� ���������� ---
.end
.}
.else
  --- �����⢥��� ����樨 ���������� ---
.end
.}
.endform


.linkform 'TXOPRNFP_1' prototype is 'TXOPRNFP'
.nameinlist '���㬥��-����䨪���-�������樨-�஢����'
.fields
 CommonFormHeader
 RegUch
// ���� ⠡���� ���㬥�⮢ BaseDoc :
    dDoc NomDes BaseDok_Name KatOrg_Name SummaDoc
// ���� ⠡���� ᯥ�䨪�権 SpStep:
    NameMCUSL  KatPartyName  KatOtpEd_Name  Price  KolSkl
// ���� ⠡���� 宧����権 SoprHoz :
    SoprHoz_DatOb   NoDoc  NameOper  SummaSopr
// ���� ⠡���� 䨭�஢����
    StBud CO Period KAU SummaFinProv
.endfields

��^
��                                              ����樨 �� ���㬥�⠬-�᭮����� � ࠧ१�
                                           ���㬥�� - ����䨪��� - �������樨 - �஢������
��
������� ���: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
�����������������������������������������������������������������������������������������������������������������������������������
   ���   � ����� ��  �            �ਬ�砭��                  �                   ����ࠣ���                  �            �㬬�
���������������������������������������������������������������������������������������������������������������������������������
                      �            ��/��㣠                   �      �����     �   ��.���. �      ����       �            �㬬�
                      �����������������������������������������������������������������������������������������������������������
                      �   ���   �   �����   �                        �����⢥���� ������                   ��㬬� 宧����樨
                      �����������������������������������������������������������������������������������������������������������
                      �    ����� ���    � ����� �⢥���. �      ��ਮ�     �              ���            �    �㬬� �����
�����������������������������������������������������������������������������������������������������������������������������������
��.{  TxoLoopDocum2 CheckEnter         // ���� �� ���㬥�⠬
@@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&.&&
                      �����������������������������������������������������������������������������������������������������������
.if ExistSpec2
.{ TxoLoopSpec2 CheckEnter           // ���� �� ᯥ�䨪���
                      �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@ @@@@@@@@@@@ &'&&&&&&&&&&&&.&& &'&&&&&&&&&&&&.&&
.}
.else
                      � --- ����䨪��� ��������� ---
.end
                      �����������������������������������������������������������������������������������������������������������
.if ExistHozOper2
.{ TxoLoopHozOper2  CheckEnter       // ���� �� 宧������
                      �����������������������������������������������������������������������������������������������������������
                      �@@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&.&&
                      �����������������������������������������������������������������������������������������������������������
.if ExistProvod2
.{ TxoLoopProvod2 CheckEnter      // ���� �� 䨭�஢�����
                      �@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&.&&
.}
.else
                      � --- ����஢���� ���������� ---
.end
                      �����������������������������������������������������������������������������������������������������������
.}
.else
                      �����������������������������������������������������������������������������������������������������������
                      � --- �����⢥��� ����樨 ���������� ---
                      �����������������������������������������������������������������������������������������������������������
.end
.}��
.endform

.linkform 'TXOPRNFP_2' prototype is 'TXOPRNFP'
.nameinlist '���㬥��-����䨪���'
.fields
 CommonFormHeader
 RegUch
// ���� ⠡���� ���㬥�⮢ BaseDoc :
    dDoc NomDes BaseDok_Name KatOrg_Name SummaDoc
// ���� ⠡���� ᯥ�䨪�権 SpStep:
    NameMCUSL  KatPartyName  KatOtpEd_Name  Price  KolSkl
.endfields

��^
��                                              ����樨 �� ���㬥�⠬-�᭮����� � ࠧ१�
                                                         ���㬥�� - ����䨪�����
��
������� ���: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
�����������������������������������������������������������������������������������������������������������������������������������
   ���   � ����� ��  �            �ਬ�砭��                  �                  ����ࠣ���                   �            �㬬�
���������������������������������������������������������������������������������������������������������������������������������
                      �            ��/��㣠                   �      �����     �   ��.���. �      ����       �            �㬬�
�����������������������������������������������������������������������������������������������������������������������������������
��.{  TxoLoopDocum2 CheckEnter         // ���� �� ���㬥�⠬
@@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&.&&
                      �����������������������������������������������������������������������������������������������������������
.if ExistSpec2
.{ TxoLoopSpec2 CheckEnter           // ���� �� ᯥ�䨪���
                      �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@ @@@@@@@@@@@ &'&&&&&&&&&&&&.&& &'&&&&&&&&&&&&.&&
.}
.else
                      � -- ����䨪��� ��������� ---
.end
                      �����������������������������������������������������������������������������������������������������������
.if ExistHozOper2
.{ TxoLoopHozOper2  CheckEnter       // ���� �� 宧������
.if ExistProvod2
.{ TxoLoopProvod2 CheckEnter      // ���� �� 䨭�஢�����
.}
.else
.end
.}
.else
.end
.}��
.endform

.linkform 'TXOPRNFP_3' prototype is 'TXOPRNFP'
.nameinlist '���㬥��-�������樨-�஢����'
.fields
 CommonFormHeader
 RegUch
// ���� ⠡���� ���㬥�⮢ BaseDoc :
   dDoc NomDes BaseDok_Name KatOrg_Name SummaDoc
// ���� ⠡���� 宧����権 SoprHoz :
   SoprHoz_DatOb   NoDoc  NameOper SummaSopr
// ���� ⠡���� 䨭�஢����
   StBud CO Period KAU SummaFinProv
.endfields

��^
��                                              ����樨 �� ���㬥�⠬-�᭮����� � ࠧ१�
                                                   ���㬥�� - �������樨 - �஢������
��
������� ���: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
�����������������������������������������������������������������������������������������������������������������������������������
   ���   � ����� ��  �            �ਬ�砭��                  �              ����ࠣ���                       �            �㬬�
���������������������������������������������������������������������������������������������������������������������������������
                      �   ���   �   �����   �                        �����⢥���� ������                   ��㬬� 宧����樨
                      �����������������������������������������������������������������������������������������������������������
                      �    ����� ���    � ����� �⢥���. �    ��ਮ�   �              ���                �    �㬬� �����
�����������������������������������������������������������������������������������������������������������������������������������
��.{  TxoLoopDocum2 CheckEnter         // ���� �� ���㬥�⠬
@@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&.&&
.if ExistSpec2
.{ TxoLoopSpec2 CheckEnter           // ���� �� ᯥ�䨪���
.}
.else
.end
.if ExistHozOper2
.{ TxoLoopHozOper2  CheckEnter       // ���� �� 宧������
                      �����������������������������������������������������������������������������������������������������������
                      �@@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&.&&
                      �����������������������������������������������������������������������������������������������������������
.if ExistProvod2
.{ TxoLoopProvod2 CheckEnter      // ���� �� 䨭�஢�����
                      �@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&.&&
.}
.else
                      � --- ����஢���� ���������� ---
.end
                      �����������������������������������������������������������������������������������������������������������
.}
.else
                      �����������������������������������������������������������������������������������������������������������
                      � --- �����⢥��� ����樨 ���������� ---
                      �����������������������������������������������������������������������������������������������������������
.end
.}��
.endform

.linkform 'TXOPRNFP_4' prototype is 'TXOPRNFP'
.nameinlist '���㬥��-�������樨'
.fields
 CommonFormHeader
 RegUch
// ���� ⠡���� ���㬥�⮢ BaseDoc :
    dDoc NomDes BaseDok_Name KatOrg_Name SummaDoc
// ���� ⠡���� 宧����権 SoprHoz :
   SoprHoz_DatOb NoDoc NameOper SummaSopr
.endfields

��^
��                                              ����樨 �� ���㬥�⠬-�᭮����� � ࠧ१�
                                                         ���㬥�� - �������樨��
��
������� ���: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
�����������������������������������������������������������������������������������������������������������������������������������
   ���   � ����� ��  �            �ਬ�砭��                  �              ����ࠣ���                       �            �㬬�
���������������������������������������������������������������������������������������������������������������������������������
                      �   ���   �    �����  �                        �����⢥���� ������                   ��㬬� 宧����樨
�����������������������������������������������������������������������������������������������������������������������������������
��.{  TxoLoopDocum2 CheckEnter         // ���� �� ���㬥�⠬
@@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&.&&
.if ExistSpec2
.{ TxoLoopSpec2 CheckEnter           // ���� �� ᯥ�䨪���
.}
.else
.end
                      �����������������������������������������������������������������������������������������������������������
.if ExistHozOper2
.{ TxoLoopHozOper2  CheckEnter       // ���� �� 宧������
                      �@@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&.&&
.if ExistProvod2
.{ TxoLoopProvod2 CheckEnter      // ���� �� 䨭�஢�����
.}
.else
.end
.}
.else
                      � --- �����⢥��� ����樨 ���������� ---
.end
                      �����������������������������������������������������������������������������������������������������������
.}��
.endform
