//------------------------------------------------------------------------------
//                                                      (c) ��௮��� ���������
//------------------------------------------------------------------------------
// �����⨪� 7.12 - ���⠬�
// ����� ��� 130 - ����
//------------------------------------------------------------------------------

!-------------------------------------------------------------------------------
#doc
��ଠ 130.
#end
.set name = 'Diary130'
.nameinlist '������� �ଠ 130'
.hide
.fields
! ����� ���
�������                 : string
��⠍�砫�                : date
��⠎���砭��             : date
���ࠧ�������             : string
��뫪����㬥��            : comp
��뫪��������           : comp
��뫪����ࠧ�������       : comp
! ���� ���
���⮪��砫����          : double
���⮪��砫�������       : double
! ������
��뫪�������              : comp
����������                : string
�������������������       : string
�஢��쐠�����            : longint
�㬬����������            : double
�㬬�������������         : double
�㬬���������室          : double
�㬬����������            : double
! ������
��뫪�������            : comp
�������樨               : string
����������������樨      : string
�஢��쎯��樨           : longint
�㬬����                  : double
�㬬�������               : double
�㬬���室                : double
�㬬����                  : double
! ���ࠧ������� �� ����樨
��뫪�����_������       : comp
�������_������          : string
����������������_������ : string
�㬬��������              : double
�㬬�����������           : double
�㬬�������室            : double
�㬬��������              : double
! ���� �� ���ࠧ�������
��⠎���樨              : date
�㬬���⠍��              : double
�㬬���⠁�����           : double
�㬬���⠄�室            : double
�㬬���⠍��              : double
!
���⮪����捠�           : double
���⮪����恥����        : double
.endfields
!-------------------------------------------------------------------------------
! ������� ������� ���
!-------------------------------------------------------------------------------
--------------------------------------------------------------------------------
                     ��ଠ 130
�������            ^
                   � @@@@@@@@@@ �� @@@@@@@@@@
���ࠧ�������        ^
���㬥��      (NRec) ^
�������     (NRec) ^
���ࠧ������� (NRec) ^
                                 ���          ������          ��室           ���
.{
.{
.case
.when DiarySp_Line
.when DiarySaldoIn
���⮪ �� ��砫�           &'&&&&&&&&&.&& &'&&&&&&&&&.&&
.when DiaryPart
������ NRec    ^
       ���     ^
       ���     ^
       �஢��� @@@          &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&.&&
.when DiarySp
������ NRec ^
         ���  ^
         ���  ^
         �஢��� @@@        &'#&&&&&&&&.&& &'#&&&&&&&&.&& &'#&&&&&&&&.&& &'#&&&&&&&&.&&
.when DiarySp_Podr
���ࠧ������� NRec ^
              ���  ^
              ���  ^
                            &'#&&&&&&&&.&& &'#&&&&&&&&.&& &'#&&&&&&&&.&& &'#&&&&&&&&.&&
.when DiarySp_Date
           ��� @@@@@@@@@@  &'#&&&&&&&&.&& &'#&&&&&&&&.&& &'#&&&&&&&&.&& &'#&&&&&&&&.&&
.when DiarySaldoOut
���⮪ �� �����            &'&&&&&&&&&.&& &'&&&&&&&&&.&&
.end
.}
.}
-------------------------------------------------------------------------------=
!-------------------------------------------------------------------------------
.endform
!-------------------------------------------------------------------------------

!-------------------------------------------------------------------------------
! �᭮���� �ଠ
!-------------------------------------------------------------------------------
.linkform 'Diary130_01' prototype is 'Diary130'
.nameinlist '��ଠ 130'
.lm 20
.fields
CommonFormHeader
��⠍�砫�
��⠎���砭��
�������
���ࠧ�������
!
���⮪��砫����
���⮪��砫�������
!
PadCh('',' ',3*�஢��쐠�����)+�������������������:'t:-'
����������
�㬬����������
�㬬�������������
�㬬���������室
�㬬����������
!
PadCh('',' ',3*�஢��쎯��樨)+����������������樨:'t:r'
�������樨
�㬬����
�㬬�������
�㬬���室
�㬬����
!
���⮪����捠�
���⮪����恥����
.endfields
!-------------------------------------------------------------------------------
��^

��                                                   � � � � �  130��
��
��                                        �� ��ਮ� � ��@@@@@@@@@@�� �� ��@@@@@@@@@@��
��
���������:��     ��^��
�����ࠧ�������:�� ��^��
.{
.[H
��                                                                                                                ���� @np@
�������������������������������������������������������������������������������������������������������������������������
     ������������ ������⥫�      �   ���    �    �����묨     �   ��������묨   �      ��室       �       ���
���������������������������������������������������������������������������������������������������������������������������
��.]H
.{
.case
.when DiarySp_Line
.when DiarySaldoIn
�����⮪ �� ��砫�                             &'&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&.&&
���������������������������������������������������������������������������������������������������������������������������
��.when DiaryPart
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &'&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&.&&��
��.when DiarySp
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &'#&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&.&&
.when DiarySp_Podr
.when DiarySp_Date
.when DiarySaldoOut
���������������������������������������������������������������������������������������������������������������������������
���⮪ �� �����                              &'&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&.&&
���������������������������������������������������������������������������������������������������������������������������
��.end
.}
.}��
!-------------------------------------------------------------------------------
.endform
!-------------------------------------------------------------------------------

!-------------------------------------------------------------------------------
! �᭮���� �ଠ � ��⠫���樥� �� ���ࠧ������� � ��⠬
!-------------------------------------------------------------------------------
.linkform 'Diary130_02' prototype is 'Diary130'
.nameinlist '��ଠ 130 (� ��⠫���樥� �� ���ࠧ������� � ��⠬)'
.lm 20
.fields
CommonFormHeader
��⠍�砫�
��⠎���砭��
�������
���ࠧ�������
!
LPadCh(PadCh('','�',45-3*(�஢��쎯��樨+1)),' ',45):'t:-'
!
���⮪��砫����
���⮪��砫�������
!
PadCh('',' ',3*�஢��쐠�����)+�������������������:'t:-'
����������
�㬬����������
�㬬�������������
�㬬���������室
�㬬����������
!
PadCh('',' ',3*�஢��쎯��樨)+����������������樨:'t:r'
�������樨
�㬬����
�㬬�������
�㬬���室
�㬬����
!
PadCh('',' ',3*(�஢��쎯��樨+1))+����������������_������:'t:r'
�������_������
�㬬��������
�㬬�����������
�㬬�������室
�㬬��������
!
��⠎���樨
�㬬���⠍��
�㬬���⠁�����
�㬬���⠄�室
�㬬���⠍��
!
���⮪����捠�
���⮪����恥����
.endfields
!-------------------------------------------------------------------------------
��^

��                                                   � � � � �  130��
��
��                                        �� ��ਮ� � ��@@@@@@@@@@�� �� ��@@@@@@@@@@��
��
���������:��     ��^��
�����ࠧ�������:�� ��^��
.{
.[H
��                                                                                                                ���� @np@
�������������������������������������������������������������������������������������������������������������������������
     ������������ ������⥫�      �   ���    �    �����묨     �   ��������묨   �      ��室       �       ���
���������������������������������������������������������������������������������������������������������������������������
��.]H
.{
.case
.when DiarySp_Line
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@����������������������������������������������������������������������������
.when DiarySaldoIn
�����⮪ �� ��砫�                             &'&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&.&&
���������������������������������������������������������������������������������������������������������������������������
��.when DiaryPart
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &'&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&.&&��
��.when DiarySp
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &'#&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&.&&
.when DiarySp_Podr
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &'#&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&.&&
.when DiarySp_Date
                        ��@@@@@@@@@@��            &'#&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&.&&
.when DiarySaldoOut
���������������������������������������������������������������������������������������������������������������������������
���⮪ �� �����                              &'&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&.&&
���������������������������������������������������������������������������������������������������������������������������
��.end
.}
.}��
!-------------------------------------------------------------------------------
.endform
!-------------------------------------------------------------------------------