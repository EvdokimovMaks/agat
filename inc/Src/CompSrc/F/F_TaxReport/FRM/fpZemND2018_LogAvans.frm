//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1 - ����� "�����஭��� ���⭮���"
// ��ଠ ����: "��� ���� ����ᮢ�� ���⥦�� ��� �����쭮�� ������ (2018)"
//------------------------------------------------------------------------------

//==============================================================================
#doc
������� �ଠ: "��� ���� ����ᮢ�� ���⥦�� ��� �����쭮�� ������ (2018)"
#end
//------------------------------------------------------------------------------
.set name='RepLogAvansZem2018'
.hide
.fields
  Formula    : String // ���㫠 ���� ����ᮢ�� ���⥦��
  NRec
  NaimRazd   : String // ������������ ࠧ����
  RegNum     : String // ������஢� ����� �����쭮�� ���⪠
  R1_021     : String // ������ 1, ���. 021  // ������ 2, १���� �� ࠧ����
  R1_023     : String // ������ 1, ���. 023
  R1_025     : String // ������ 1, ���. 025
  R1_027     : String // ������ 1, ���. 027
  R1_030_040 : String // ������ 1, ���. 030/040
.endfields
 ^
.{CycleLogAvansZem2018 CheckEnter
 ^ ^ ^ ^ ^ ^ ^ ^
.}
.endform
//******************************************************************************


//==============================================================================
#doc
��ᮥ�������� �ଠ: "�� �����"
#end
//------------------------------------------------------------------------------
.linkform 'RepLogAvansZem2018_1' prototype is 'RepLogAvansZem2018'
.Nameinlist '��� ���� ����ᮢ�� ���⥦�� ��� �����쭮�� ������ (2018)'
.defo landscape
.P 55
.fields
  CommonFormHeader

  Formula    // ���㫠 ���� ����ᮢ�� ���⥦��
  NaimRazd   // ������������ ࠧ����
  RegNum     // �������樮��� ���� (�����) ��
  R1_021     // ������ 1, ���. 021  // ������ 2, १���� �� ࠧ����
  R1_023     // ������ 1, ���. 023
  R1_025     // ������ 1, ���. 025
  R1_027     // ������ 1, ���. 027
  R1_030_040 // ������ 1, ���. 030/040

.endfields
.[H Skip
                                                                                                     ���� @np@
������������������������������������������������������������������������������������������������������������Ŀ
�    ����. ࠧ����     �  ������஢� ����� �     021    �     023    �     025    �     027    �   030/040  �
������������������������������������������������������������������������������������������������������������Ĵ
.]H
^

����� ����:
������ 1: ���. 021 = ���. 250 ������� 2
������ 1: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
������ 1: ���. 030/040 = ���. 021 - (���. 023 + ���. 025 + ���. 027)

                                        ��� ���� ����ᮢ�� ���⥦��                               ���� @np@
������������������������������������������������������������������������������������������������������������Ŀ
�                      �      ������ 2      �                            ������ 1                            �
�     ����. ࠧ����    �������������������������������������������������������������������������������������Ĵ
�                      �  ������஢� ����� �     021    �     023    �     025    �     027    �   030/040  �
������������������������������������������������������������������������������������������������������������Ĵ
.{CycleLogAvansZem2018 CheckEnter
�@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@�&&&&&&&&&&&&�&&&&&&&&&&&&�&&&&&&&&&&&&�&&&&&&&&&&&&�&&&&&&&&&&&&�
.[F
��������������������������������������������������������������������������������������������������������������
.]F
.}

.endform
//******************************************************************************