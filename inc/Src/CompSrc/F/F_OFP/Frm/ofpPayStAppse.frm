//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.10 - ����� "���⥦�� ���������"
// ���⥦�� ���㬥���
//------------------------------------------------------------------------------

#doc
����� - ���⥦�� ���㬥��� (���⨯).<br>
#end
.set name = 'ofpPayStAppse'
.hide
.Fields
  Title                  // ������ ���⥦��� ���㬥�⮢
  dates                  // � ��

  PlPor_nRec            // nRec 
  DocName:string:'t:r'   // �� 㤠��� �஡��� ᫥��
  Valuta                 // �����
  Summa1                 // �㬬� 

.endFields
 ^ ^
.{
.{ PlPor_Body CheckEnter
 ^
 ^ ^  ^
.{ PlPor_Line CheckEnter
.}
.}
.}
.endform

//------------------------------------------------------------------------------
#doc
������ ���⥦��� ���㬥�⮢.<br>
#end
.linkform 'ofpPayStAppse01' prototype is 'ofpPayStAppse'
.nameinlist '���⥦�� ���㬥���'
.p 80
.defo portrait
.Fields
  CommonFormHeader       // �������� ����

  Title
  dates

  DocName:'t:r'
  Valuta
  Summa1

.endFields
^
      @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                  @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
.[H
                                                      ���� @np@
������������������������������������������������������������������
           ������������           �  �����  �       �㬬�
������������������������������������������������������������������
.]H
.{ PlPor_Body CheckEnter
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @~@@@@@  &'&&&&&&&&&&&&&&&&&&
.{ PlPor_Line CheckEnter
������������������������������������������������������������������
.}
.}
.}

.endform
//------------------------------------------------------------------------------