//------------------------------------------------------------------------------
//                                                      (c) ��௮��� ���������
// �����⨪� 8.1 - ��壠���᪨� ������
// ��⠫�� ����⨧�樮���� ��㯯
//------------------------------------------------------------------------------
#doc
  ��ଠ ��� ���� ��⠫��� ����⨧�樮���� ��㯯
#end
.set name = 'KatAmGr'
.NameInList ' ��⠫�� ����⨧�樮���� ��㯯 ������� �ଠ '
.hide
.fields
  KlassOs_nRec   : comp
  ������������1  : string : 'T:-'
  ���1           : string

  ������������2  : string : 'T:-'
  ���2           : string
.endfields
.{
^
.{ CheckEnter
.case
.when KlassMaster
^^
.when KlassSlave
^^
.END
.}
.}
.endform

!------------------------------------------------------------------------------------------------------------------------------------------------------
.linkform 'KatAmGr_01' prototype is 'KatAmGr'
.NameInList ' ��⠫�� ����⨧�樮���� ��㯯 '
.fields
 CommonFormHeader
  ������������1 : 'T:-'
  ���1
  ������������2 : 'T:-'
  ���2
.endfields
.[H Skip
                        ���� @np@
�����������������������������������������������������������������������������
                      ������������                                �    ���
�����������������������������������������������������������������������������
.]H
 ^
                    �� ��⠫�� ����⨧�樮���� ��㯯��
                                  ���� @np@
�����������������������������������������������������������������������������
                      ������������                                �    ���
�����������������������������������������������������������������������������
.{
.{ CheckEnter
.case
.when KlassMaster
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�����@@@@@@@@@@��
.when KlassSlave
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@
.END
.}
.}
�����������������������������������������������������������������������������
.endform
