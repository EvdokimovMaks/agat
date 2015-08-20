//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.80 - ����� "���⥦�� ���������"
// ����� �� ���⥦�� �।�⢠�
//------------------------------------------------------------------------------

#doc
����� �� ���⥦�� �।�⢠� (���⨯).<br>
#end
.set name = 'ofpsaldo'
.hide
.Fields
  Saldo_NameType:string:'t:r' // ⨯ �� (�� 㤠��� �஡��� ᫥��)

  Saldo_Name     // ��
  Saldo_Val      // �����
  Saldo_Summa    // �� �㬬�

  Sald_Date      // ��� 䠪��᪨�/�������� ���⪮�

  SaldR_Oborot   // 䨭.��⮪ ��
  SaldR_Rest     // �㬬� ���⪠
  SaldR_Deficit  // �����

//  LimitDate              // ��� �����
//  LimitSumma             // �㬬�

  NameClearing:string:'t:r' // 䨭����樨

.endFields
.{

.{ OfpSaldo_Begin CheckEnter
 ^
.{ OfpSaldo_Plan CheckEnter
 ^ ^ ^  ^  ^ ^ ^
.{ OfpSaldo_Fop CheckEnter
 ^
.}
.}
.}

.}
.endform

//------------------------------------------------------------------------------
#doc
�����⠭�� ���⪨.<br>
#end
.linkform 'ofpsaldo01' prototype is 'ofpsaldo'
.group '�����⠭�� ���⪨'
.p 55
.defo landscape
.Fields
  CommonFormHeader       // �������� ����

  Saldo_NameType:'t:r'

  Saldo_Name
  Saldo_Val
  Saldo_Summa

  Sald_Date             // ��� 䠪��᪨�/�������� ���⪮�

  SaldR_Oborot
  SaldR_Rest
  SaldR_Deficit

//  LimitDate
//  LimitSumma

  NameClearing:'t:r'

.endFields
��^

                                                   �����⠭�� ���⪨ ���⥦��� �।��
.{
.[H
                                                                                                                            ���� @np@
������������������������������������������������������������������������������������������������������������������������������������������
     ���⥦��� �।�⢮       �  �����  � ��砫�� ���⮪  �   ���   � �����ᮢ� ��⮪    �       ���⮪       �      �����
������������������������������������������������������������������������������������������������������������������������������������������
.]H
.{ OfpSaldo_Begin CheckEnter
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{ OfpSaldo_Plan CheckEnter
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@~@@@@@@ &'&&&&&&&&&&&&&&&&&& @@@@@@@@@@ &'&&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&
.{ OfpSaldo_Fop CheckEnter
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.}
������������������������������������������������������������������������������������������������������������������������������������������
.}��
.}

.endform

//------------------------------------------------------------------------------
#doc
��砫�� ���⪨.<br>
#end
.linkform 'ofpsaldo02' prototype is 'ofpsaldo'
.group '��砫�� ���⪨'
.p 80
.defo portrait
.Fields
  CommonFormHeader       // �������� ����

  Saldo_NameType:'t:r' // ⨯ ��

  Saldo_Name     // ��
  Saldo_Val      // �����
//  Sald_Date      // ��� ���㠫��� ���⪮�
  Saldo_Summa    // �� �㬬�

.endFields
^

              ����砫�� ���⪨ ���⥦��� �।����
.{
.[H
                                                  ���� @np@
��������������������������������������������������������������
     ���⥦��� �।�⢮       �  �����  � ��砫�� ���⮪
��������������������������������������������������������������
.]H
.{ OfpSaldo_Begin CheckEnter
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{ OfpSaldo_Plan CheckEnter
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@~@@@@@@ &'&&&&&&&&&&&&&&&&&&
.{ OfpSaldo_Fop CheckEnter
.}
.}
��������������������������������������������������������������
.}
.}

.endform

//------------------------------------------------------------------------------
