//------------------------------------------------------------------------------
//                                                      (c) ��௮��� ���������
// �����⨪� 8.1 - ��壠���᪨� ������
// ��⠫�� �ਧ����� ᮡ�⢥�����
//------------------------------------------------------------------------------
#doc
  ��ଠ ��� ���� ��⠫��� �ਧ����� ᮡ�⢥�����
#end
.set name = 'PrSb'
.NameInList ' ��⠫�� �ਧ����� ᮡ�⢥����� ��(���) ������� �ଠ '
.hide
.fields
  ���1 ������������1
  ���2 ������������2
.endfields

.{ CheckEnter
.case
.when PrSbMaster
^^
.when PrSbSlave
^^
.end
.}
.endform

!------------------------------------------------------------------------------------------------------------------------------------------------------
.linkform 'PrSb_01' prototype is 'PrSb'
.NameInList ' ��⠫�� �ਧ����� ᮡ�⢥����� ��(���) '
.fields
 CommonFormHeader
  ���1 ������������1
  ���2 ������������2
.endfields
.[H Skip
                                                                           ���� @np@
�������������������������������������������������������������������������������������
    ���   �             ������������
�������������������������������������������������������������������������������������
.]H
^
                   �� ��⠫�� �ਧ����� ᮡ�⢥����� ��(���)��
                                                                           ���� @np@
�������������������������������������������������������������������������������������
    ���   �             ������������
�������������������������������������������������������������������������������������
.{ CheckEnter
.case
.when PrSbMaster
��@@@@@@@@@@��� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.when PrSbSlave
@@@@@@@@@@� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.end
.}
.endform

