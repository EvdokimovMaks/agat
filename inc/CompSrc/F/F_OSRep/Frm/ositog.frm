//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 6.00 - �᭮��� �।�⢠
// �⮣��� �������� ������ �� ��ਮ� �� (UIN 4711) � ��� (UIN 4712)
// ��������! ������� slk-���� � �ଠ� Excel
//------------------------------------------------------------------------------

#include Responsible.frn


!=============================================================================
.LinkForm 'OsItog_01' Prototype is 'ositog'
!=============================================================================
.NameInList '��������� ����⨧�樨 � ࠧ������ �� ����栬'
.Group '�������� ����⨧�樨 � ࠧ������ �� ����栬'
.p 60
.defo landscape
#ResponsibleLinkVar
.[h Skip
                                                              ���� @Np@
.]h
��                                                             ���� 1
.{
#ResponsibleLinkInit(OSITOG)
.Fields
CommonFormHeader
Year(���_�)
��⮤
�_����⥫�
����⥫�_�ய����
�����_��⮤�
��㯯�஢��
����஢��
!---------------- FilterOS
���_�
���_��
������
!---------------- GruppaOS
��⪠
if(�⮣�_����_ﭢ���=0,   '', DoubleToStr(�⮣�_����_ﭢ���,   ��ଠ�))
if(�⮣�_����_䥢ࠫ�=0,  '', DoubleToStr(�⮣�_����_䥢ࠫ�,  ��ଠ�))
if(�⮣�_����_����=0,     '', DoubleToStr(�⮣�_����_����,     ��ଠ�))
if(�⮣�_����_��५�=0,   '', DoubleToStr(�⮣�_����_��५�,   ��ଠ�))
if(�⮣�_����_���=0,      '', DoubleToStr(�⮣�_����_���,      ��ଠ�))
if(�⮣�_����_���=0,     '', DoubleToStr(�⮣�_����_���,     ��ଠ�))
if(�⮣�_����_���=0,     '', DoubleToStr(�⮣�_����_���,     ��ଠ�))
if(�⮣�_����_������=0,   '', DoubleToStr(�⮣�_����_������,   ��ଠ�))
if(�⮣�_����_ᥭ����=0, '', DoubleToStr(�⮣�_����_ᥭ����, ��ଠ�))
if(�⮣�_����_������=0,  '', DoubleToStr(�⮣�_����_������,  ��ଠ�))
if(�⮣�_����_�����=0,   '', DoubleToStr(�⮣�_����_�����,   ��ଠ�))
if(�⮣�_����_�������=0,  '', DoubleToStr(�⮣�_����_�������,  ��ଠ�))
if(�⮣�_����_�����=0,    '', DoubleToStr(�⮣�_����_�����,    ��ଠ�))

if(�⮣�_����_ﭢ���_�_���訥=0,   '', DoubleToStr(�⮣�_����_ﭢ���_�_���訥,   ��ଠ�))
if(�⮣�_����_䥢ࠫ�_�_���訥=0,  '', DoubleToStr(�⮣�_����_䥢ࠫ�_�_���訥,  ��ଠ�))
if(�⮣�_����_����_�_���訥=0,     '', DoubleToStr(�⮣�_����_����_�_���訥,     ��ଠ�))
if(�⮣�_����_��५�_�_���訥=0,   '', DoubleToStr(�⮣�_����_��५�_�_���訥,   ��ଠ�))
if(�⮣�_����_���_�_���訥=0,      '', DoubleToStr(�⮣�_����_���_�_���訥,      ��ଠ�))
if(�⮣�_����_���_�_���訥=0,     '', DoubleToStr(�⮣�_����_���_�_���訥,     ��ଠ�))
if(�⮣�_����_���_�_���訥=0,     '', DoubleToStr(�⮣�_����_���_�_���訥,     ��ଠ�))
if(�⮣�_����_������_�_���訥=0,   '', DoubleToStr(�⮣�_����_������_�_���訥,   ��ଠ�))
if(�⮣�_����_ᥭ����_�_���訥=0, '', DoubleToStr(�⮣�_����_ᥭ����_�_���訥, ��ଠ�))
if(�⮣�_����_������_�_���訥=0,  '', DoubleToStr(�⮣�_����_������_�_���訥,  ��ଠ�))
if(�⮣�_����_�����_�_���訥=0,   '', DoubleToStr(�⮣�_����_�����_�_���訥,   ��ଠ�))
if(�⮣�_����_�������_�_���訥=0,  '', DoubleToStr(�⮣�_����_�������_�_���訥,  ��ଠ�))
if(�⮣�_����_�����_�_���訥=0,    '', DoubleToStr(�⮣�_����_�����_�_���訥,    ��ଠ�))

!---------------- NameOS
if (���_�_⥪�饬_��ਮ��, '*'+KatOS_InNum, KatOS_InNum)
����
if(������=0,   '', DoubleToStr(������,   ��ଠ�))
if(���ࠫ�=0,  '', DoubleToStr(���ࠫ�,  ��ଠ�))
if(����=0,     '', DoubleToStr(����,     ��ଠ�))
if(��५�=0,   '', DoubleToStr(��५�,   ��ଠ�))
if(���=0,      '', DoubleToStr(���,      ��ଠ�))
if(���=0,     '', DoubleToStr(���,     ��ଠ�))
if(���=0,     '', DoubleToStr(���,     ��ଠ�))
if(������=0,   '', DoubleToStr(������,   ��ଠ�))
if(�������=0, '', DoubleToStr(�������, ��ଠ�))
if(������=0,  '', DoubleToStr(������,  ��ଠ�))
if(�����=0,   '', DoubleToStr(�����,   ��ଠ�))
if(�������=0,  '', DoubleToStr(�������,  ��ଠ�))
if(�����=0,    '', DoubleToStr(�����,    ��ଠ�))
!---------------- ItogOS
�⮣�
if(�⮣�_ﭢ���=0,   '', DoubleToStr(�⮣�_ﭢ���,   ��ଠ�))
if(�⮣�_䥢ࠫ�=0,  '', DoubleToStr(�⮣�_䥢ࠫ�,  ��ଠ�))
if(�⮣�_����=0,     '', DoubleToStr(�⮣�_����,     ��ଠ�))
if(�⮣�_��५�=0,   '', DoubleToStr(�⮣�_��५�,   ��ଠ�))
if(�⮣�_���=0,      '', DoubleToStr(�⮣�_���,      ��ଠ�))
if(�⮣�_���=0,     '', DoubleToStr(�⮣�_���,     ��ଠ�))
if(�⮣�_���=0,     '', DoubleToStr(�⮣�_���,     ��ଠ�))
if(�⮣�_������=0,   '', DoubleToStr(�⮣�_������,   ��ଠ�))
if(�⮣�_ᥭ����=0, '', DoubleToStr(�⮣�_ᥭ����, ��ଠ�))
if(�⮣�_������=0,  '', DoubleToStr(�⮣�_������,  ��ଠ�))
if(�⮣�_�����=0,   '', DoubleToStr(�⮣�_�����,   ��ଠ�))
if(�⮣�_�������=0,  '', DoubleToStr(�⮣�_�������,  ��ଠ�))
if(�⮣�_�����=0,    '', DoubleToStr(�⮣�_�����,    ��ଠ�))

if(�⮣�_ﭢ���_�_���訥=0,   '', DoubleToStr(�⮣�_ﭢ���_�_���訥,   ��ଠ�))
if(�⮣�_䥢ࠫ�_�_���訥=0,  '', DoubleToStr(�⮣�_䥢ࠫ�_�_���訥,  ��ଠ�))
if(�⮣�_����_�_���訥=0,     '', DoubleToStr(�⮣�_����_�_���訥,     ��ଠ�))
if(�⮣�_��५�_�_���訥=0,   '', DoubleToStr(�⮣�_��५�_�_���訥,   ��ଠ�))
if(�⮣�_���_�_���訥=0,      '', DoubleToStr(�⮣�_���_�_���訥,      ��ଠ�))
if(�⮣�_���_�_���訥=0,     '', DoubleToStr(�⮣�_���_�_���訥,     ��ଠ�))
if(�⮣�_���_�_���訥=0,     '', DoubleToStr(�⮣�_���_�_���訥,     ��ଠ�))
if(�⮣�_������_�_���訥=0,   '', DoubleToStr(�⮣�_������_�_���訥,   ��ଠ�))
if(�⮣�_ᥭ����_�_���訥=0, '', DoubleToStr(�⮣�_ᥭ����_�_���訥, ��ଠ�))
if(�⮣�_������_�_���訥=0,  '', DoubleToStr(�⮣�_������_�_���訥,  ��ଠ�))
if(�⮣�_�����_�_���訥=0,   '', DoubleToStr(�⮣�_�����_�_���訥,   ��ଠ�))
if(�⮣�_�������_�_���訥=0,  '', DoubleToStr(�⮣�_�������_�_���訥,  ��ଠ�))
if(�⮣�_�����_�_���訥=0,    '', DoubleToStr(�⮣�_�����_�_���訥,    ��ଠ�))

�_��⮬_�����_�_��ਮ��
.EndFields
^

                                  ����� � ����稭� ����⨧�樮����� 䮭��
                                     � @@@@ ���� � ࠧ������ �� ����栬

��⮤:                ^
�������� ������:     ^ (^) ^
��㯯�஢��:          ^
����஢��:           ^
�������:
.{?Internal;( (���_� <> Date(1,1,Year(���_�))) or (���_�� <> Date(31,12,Year(���_�))) );
 �� ��ਮ�:           � ^ �� ^
.}
.{ CheckEnter FilterOS3
 ^
.}
.{
.[h
���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
 �������� �        ������������       �    ������    �    ���ࠫ�   �     ����     �    ��५�    �     ���      �     ���     �     ���     �    ������    �   �������   �    ������   �    �����    �    �������   �    �����
    �����    �                           �              �              �              �              �              �              �              �              �              �              �              �              �
���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]h
.{ CheckEnter GruppaOS3
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&&&
.{?Internal;(NeedSum1 and (���_����� <> 4 ));
                                       (* &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&&& )
.}
.}
.{ CheckEnter NameOS3
 @@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&&&
.}
.{ CheckEnter ItogOS3
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&&&
.{?Internal;(���_����� <> 4 );
                                       (* &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&&& )
.}
.}
.}
.{?Internal;(���_����� <> 4 );
          * - � ��⮬ ����� � ���⭮� ^
.}


��壠���

�⢥��⢥��� �� ����
.}��
.EndForm
!(* *)

!=============================================================================
.LinkForm 'OsItog_02' Prototype is 'ositog'
!=============================================================================
.NameInList '��������� ����⨧�樨 � ࠧ������ �� ����⠫��'
.Group '�������� ����⨧�樨 � ࠧ������ �� ����⠫��'
.p 80
.defo portrait
.Var
SumKv1_Up,   SumKv2_Up,   SumKv3_Up,   SumKv4_Up,
SumKv1,      SumKv2,      SumKv3,      SumKv4,
SumKv1_Down, SumKv2_Down, SumKv3_Down, SumKv4_Down : Double
SumKv1_Up_With_Left,   SumKv2_Up_With_Left,   SumKv3_Up_With_Left,   SumKv4_Up_With_Left,
SumKv1_With_Left,      SumKv2_With_Left,      SumKv3_With_Left,      SumKv4_With_Left,
SumKv1_Down_With_Left, SumKv2_Down_With_Left, SumKv3_Down_With_Left, SumKv4_Down_With_Left : Double
.EndVar
#ResponsibleLinkVar
.[h Skip
                                                              ���� @Np@
.]h
��                                                             ���� 1
.{
#ResponsibleLinkInit(OSITOG)
.Fields
CommonFormHeader
Year(���_�)
��⮤
�_����⥫�
����⥫�_�ய����
�����_��⮤�
��㯯�஢��
����஢��
!---------------- FilterOS
���_�
���_��
������
!---------------- GruppaOS
��⪠
if(SumKv1_Up=0, '', DoubleToStr(SumKv1_Up, ��ଠ�))
if(SumKv2_Up=0, '', DoubleToStr(SumKv2_Up, ��ଠ�))
if(SumKv3_Up=0, '', DoubleToStr(SumKv3_Up, ��ଠ�))
if(SumKv4_Up=0, '', DoubleToStr(SumKv4_Up, ��ଠ�))
if(�⮣�_����_�����=0, '', DoubleToStr(�⮣�_����_�����, ��ଠ�))

if(SumKv1_Up_With_Left=0, '', DoubleToStr(SumKv1_Up_With_Left, ��ଠ�))
if(SumKv2_Up_With_Left=0, '', DoubleToStr(SumKv2_Up_With_Left, ��ଠ�))
if(SumKv3_Up_With_Left=0, '', DoubleToStr(SumKv3_Up_With_Left, ��ଠ�))
if(SumKv4_Up_With_Left=0, '', DoubleToStr(SumKv4_Up_With_Left, ��ଠ�))
if(�⮣�_����_�����_�_���訥=0, '', DoubleToStr(�⮣�_����_�����_�_���訥, ��ଠ�))

!---------------- NameOS
if (���_�_⥪�饬_��ਮ��, '*'+KatOS_InNum, KatOS_InNum)
����
if(SumKv1=0, '', DoubleToStr(SumKv1, ��ଠ�))
if(SumKv2=0, '', DoubleToStr(SumKv2, ��ଠ�))
if(SumKv3=0, '', DoubleToStr(SumKv3, ��ଠ�))
if(SumKv4=0, '', DoubleToStr(SumKv4, ��ଠ�))
if(�����=0, '', DoubleToStr(�����, ��ଠ�))
!---------------- ItogOS
�⮣�
if(SumKv1_Down=0, '', DoubleToStr(SumKv1_Down, ��ଠ�))
if(SumKv2_Down=0, '', DoubleToStr(SumKv2_Down, ��ଠ�))
if(SumKv3_Down=0, '', DoubleToStr(SumKv3_Down, ��ଠ�))
if(SumKv4_Down=0, '', DoubleToStr(SumKv4_Down, ��ଠ�))
if(�⮣�_�����=0, '', DoubleToStr(�⮣�_�����, ��ଠ�))

if(SumKv1_Down_With_Left=0, '', DoubleToStr(SumKv1_Down_With_Left, ��ଠ�))
if(SumKv2_Down_With_Left=0, '', DoubleToStr(SumKv2_Down_With_Left, ��ଠ�))
if(SumKv3_Down_With_Left=0, '', DoubleToStr(SumKv3_Down_With_Left, ��ଠ�))
if(SumKv4_Down_With_Left=0, '', DoubleToStr(SumKv4_Down_With_Left, ��ଠ�))
if(�⮣�_�����_�_���訥=0, '', DoubleToStr(�⮣�_�����_�_���訥, ��ଠ�))

�_��⮬_�����_�_��ਮ��
.EndFields
^

                                  ����� � ����稭� ����⨧�樮����� 䮭��
                                    � @@@@ ���� � ࠧ������ �� ����⠫��

��⮤:                ^
�������� ������:     ^ (^) ^
��㯯�஢��:          ^
����஢��:           ^
�������:
.{?Internal;( (���_� <> Date(1,1,Year(���_�))) or (���_�� <> Date(31,12,Year(���_�))) );
 �� ��ਮ�:           � ^ �� ^
.}
.{ CheckEnter FilterOS3
 ^
.}
.{
.[h
�����������������������������������������������������������������������������������������������������������������������������������������������������������
 �������� �             ������������           �     I ����⠫      �      II ����⠫    �     III ����⠫    �     IV ����⠫     �       �����
    �����    �                                    �                    �                    �                    �                    �
�����������������������������������������������������������������������������������������������������������������������������������������������������������
.]h
.{ CheckEnter GruppaOS3
.Begin
SumKv1_Up   := �⮣�_����_ﭢ���  + �⮣�_����_䥢ࠫ� + �⮣�_����_����;
SumKv2_Up   := �⮣�_����_��५�  + �⮣�_����_���     + �⮣�_����_���;
SumKv3_Up   := �⮣�_����_���    + �⮣�_����_������  + �⮣�_����_ᥭ����;
SumKv4_Up   := �⮣�_����_������ + �⮣�_����_�����  + �⮣�_����_�������;

SumKv1_Up_With_Left   := �⮣�_����_ﭢ���_�_���訥  + �⮣�_����_䥢ࠫ�_�_���訥 + �⮣�_����_����_�_���訥;
SumKv2_Up_With_Left   := �⮣�_����_��५�_�_���訥  + �⮣�_����_���_�_���訥     + �⮣�_����_���_�_���訥;
SumKv3_Up_With_Left   := �⮣�_����_���_�_���訥    + �⮣�_����_������_�_���訥  + �⮣�_����_ᥭ����_�_���訥;
SumKv4_Up_With_Left   := �⮣�_����_������_�_���訥 + �⮣�_����_�����_�_���訥  + �⮣�_����_�������_�_���訥;
End.
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&
.{?Internal;(NeedSum1 and (���_����� <> 4 ));
                                                (* &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& )
.}
.}
.{ CheckEnter NameOS3
.Begin
SumKv1      := ������  + ���ࠫ� + ����;
SumKv2      := ��५�  + ���     + ���;
SumKv3      := ���    + ������  + �������;
SumKv4      := ������ + �����  + �������;
End.
 @@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&
.}
.{ CheckEnter ItogOS3
.Begin
SumKv1_Down := �⮣�_ﭢ���  + �⮣�_䥢ࠫ� + �⮣�_����;
SumKv2_Down := �⮣�_��५�  + �⮣�_���     + �⮣�_���;
SumKv3_Down := �⮣�_���    + �⮣�_������  + �⮣�_ᥭ����;
SumKv4_Down := �⮣�_������ + �⮣�_�����  + �⮣�_�������;

SumKv1_Down_With_Left := �⮣�_ﭢ���_�_���訥  + �⮣�_䥢ࠫ�_�_���訥 + �⮣�_����_�_���訥;
SumKv2_Down_With_Left := �⮣�_��५�_�_���訥  + �⮣�_���_�_���訥     + �⮣�_���_�_���訥;
SumKv3_Down_With_Left := �⮣�_���_�_���訥    + �⮣�_������_�_���訥  + �⮣�_ᥭ����_�_���訥;
SumKv4_Down_With_Left := �⮣�_������_�_���訥 + �⮣�_�����_�_���訥  + �⮣�_�������_�_���訥;
End.
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&
.{?Internal;(���_����� <> 4 );
                                                (* &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& )
.}
.}
.}
.{?Internal;(���_����� <> 4 );
          * - � ��⮬ ����� � ���⭮� ^
.}


��壠���

�⢥��⢥��� �� ����
.}��
.EndForm
!(* *)

!=============================================================================
.LinkForm 'OsItog_03' Prototype is 'ositog'
!=============================================================================
.NameInList '��������� ��������� � ࠧ������ �� ����栬'
.Group '�������� ��������� � ࠧ������ �� ����栬'
.p 60
.defo landscape
.Var
���_�㬬�_��ப� : String
.EndVar
#ResponsibleLinkVar
.[h Skip
                                                              ���� @Np@
.]h
��                                                             ���� 1
.{
#ResponsibleLinkInit(OSITOG)
.Fields
CommonFormHeader
���_�㬬�_��ப�
Year(���_�)
��⮤
�_����⥫�
����⥫�_�ய����
�����_��⮤�
��㯯�஢��
����஢��
!---------------- FilterOS
���_�
���_��
������
!---------------- GruppaOS
��⪠
if(�⮣�_����_��砫�=0,   '', DoubleToStr(�⮣�_����_��砫�,   ��ଠ�))
if(�⮣�_����_ﭢ���=0,   '', DoubleToStr(�⮣�_����_ﭢ���,   ��ଠ�))
if(�⮣�_����_䥢ࠫ�=0,  '', DoubleToStr(�⮣�_����_䥢ࠫ�,  ��ଠ�))
if(�⮣�_����_����=0,     '', DoubleToStr(�⮣�_����_����,     ��ଠ�))
if(�⮣�_����_��५�=0,   '', DoubleToStr(�⮣�_����_��५�,   ��ଠ�))
if(�⮣�_����_���=0,      '', DoubleToStr(�⮣�_����_���,      ��ଠ�))
if(�⮣�_����_���=0,     '', DoubleToStr(�⮣�_����_���,     ��ଠ�))
if(�⮣�_����_���=0,     '', DoubleToStr(�⮣�_����_���,     ��ଠ�))
if(�⮣�_����_������=0,   '', DoubleToStr(�⮣�_����_������,   ��ଠ�))
if(�⮣�_����_ᥭ����=0, '', DoubleToStr(�⮣�_����_ᥭ����, ��ଠ�))
if(�⮣�_����_������=0,  '', DoubleToStr(�⮣�_����_������,  ��ଠ�))
if(�⮣�_����_�����=0,   '', DoubleToStr(�⮣�_����_�����,   ��ଠ�))
if(�⮣�_����_�������=0,  '', DoubleToStr(�⮣�_����_�������,  ��ଠ�))
if(�⮣�_����_�����=0,    '', DoubleToStr(�⮣�_����_�����,    ��ଠ�))

if(�⮣�_����_��砫�_�_���訥=0,   '', DoubleToStr(�⮣�_����_��砫�_�_���訥,   ��ଠ�))
if(�⮣�_����_ﭢ���_�_���訥=0,   '', DoubleToStr(�⮣�_����_ﭢ���_�_���訥,   ��ଠ�))
if(�⮣�_����_䥢ࠫ�_�_���訥=0,  '', DoubleToStr(�⮣�_����_䥢ࠫ�_�_���訥,  ��ଠ�))
if(�⮣�_����_����_�_���訥=0,     '', DoubleToStr(�⮣�_����_����_�_���訥,     ��ଠ�))
if(�⮣�_����_��५�_�_���訥=0,   '', DoubleToStr(�⮣�_����_��५�_�_���訥,   ��ଠ�))
if(�⮣�_����_���_�_���訥=0,      '', DoubleToStr(�⮣�_����_���_�_���訥,      ��ଠ�))
if(�⮣�_����_���_�_���訥=0,     '', DoubleToStr(�⮣�_����_���_�_���訥,     ��ଠ�))
if(�⮣�_����_���_�_���訥=0,     '', DoubleToStr(�⮣�_����_���_�_���訥,     ��ଠ�))
if(�⮣�_����_������_�_���訥=0,   '', DoubleToStr(�⮣�_����_������_�_���訥,   ��ଠ�))
if(�⮣�_����_ᥭ����_�_���訥=0, '', DoubleToStr(�⮣�_����_ᥭ����_�_���訥, ��ଠ�))
if(�⮣�_����_������_�_���訥=0,  '', DoubleToStr(�⮣�_����_������_�_���訥,  ��ଠ�))
if(�⮣�_����_�����_�_���訥=0,   '', DoubleToStr(�⮣�_����_�����_�_���訥,   ��ଠ�))
if(�⮣�_����_�������_�_���訥=0,  '', DoubleToStr(�⮣�_����_�������_�_���訥,  ��ଠ�))
if(�⮣�_����_�����_�_���訥=0,    '', DoubleToStr(�⮣�_����_�����_�_���訥,    ��ଠ�))
!---------------- NameOS
if (���_�_⥪�饬_��ਮ��, '*'+KatOS_InNum, KatOS_InNum)
����
if(��砫�=0,   '', DoubleToStr(��砫�,   ��ଠ�))
if(������=0,   '', DoubleToStr(������,   ��ଠ�))
if(���ࠫ�=0,  '', DoubleToStr(���ࠫ�,  ��ଠ�))
if(����=0,     '', DoubleToStr(����,     ��ଠ�))
if(��५�=0,   '', DoubleToStr(��५�,   ��ଠ�))
if(���=0,      '', DoubleToStr(���,      ��ଠ�))
if(���=0,     '', DoubleToStr(���,     ��ଠ�))
if(���=0,     '', DoubleToStr(���,     ��ଠ�))
if(������=0,   '', DoubleToStr(������,   ��ଠ�))
if(�������=0, '', DoubleToStr(�������, ��ଠ�))
if(������=0,  '', DoubleToStr(������,  ��ଠ�))
if(�����=0,   '', DoubleToStr(�����,   ��ଠ�))
if(�������=0,  '', DoubleToStr(�������,  ��ଠ�))
if(�����=0,    '', DoubleToStr(�����,    ��ଠ�))
!---------------- ItogOS
�⮣�
if(�⮣�_��砫�=0,   '', DoubleToStr(�⮣�_��砫�,   ��ଠ�))
if(�⮣�_ﭢ���=0,   '', DoubleToStr(�⮣�_ﭢ���,   ��ଠ�))
if(�⮣�_䥢ࠫ�=0,  '', DoubleToStr(�⮣�_䥢ࠫ�,  ��ଠ�))
if(�⮣�_����=0,     '', DoubleToStr(�⮣�_����,     ��ଠ�))
if(�⮣�_��५�=0,   '', DoubleToStr(�⮣�_��५�,   ��ଠ�))
if(�⮣�_���=0,      '', DoubleToStr(�⮣�_���,      ��ଠ�))
if(�⮣�_���=0,     '', DoubleToStr(�⮣�_���,     ��ଠ�))
if(�⮣�_���=0,     '', DoubleToStr(�⮣�_���,     ��ଠ�))
if(�⮣�_������=0,   '', DoubleToStr(�⮣�_������,   ��ଠ�))
if(�⮣�_ᥭ����=0, '', DoubleToStr(�⮣�_ᥭ����, ��ଠ�))
if(�⮣�_������=0,  '', DoubleToStr(�⮣�_������,  ��ଠ�))
if(�⮣�_�����=0,   '', DoubleToStr(�⮣�_�����,   ��ଠ�))
if(�⮣�_�������=0,  '', DoubleToStr(�⮣�_�������,  ��ଠ�))
if(�⮣�_�����=0,    '', DoubleToStr(�⮣�_�����,    ��ଠ�))

if(�⮣�_��砫�_�_���訥=0,   '', DoubleToStr(�⮣�_��砫�_�_���訥,   ��ଠ�))
if(�⮣�_ﭢ���_�_���訥=0,   '', DoubleToStr(�⮣�_ﭢ���_�_���訥,   ��ଠ�))
if(�⮣�_䥢ࠫ�_�_���訥=0,  '', DoubleToStr(�⮣�_䥢ࠫ�_�_���訥,  ��ଠ�))
if(�⮣�_����_�_���訥=0,     '', DoubleToStr(�⮣�_����_�_���訥,     ��ଠ�))
if(�⮣�_��५�_�_���訥=0,   '', DoubleToStr(�⮣�_��५�_�_���訥,   ��ଠ�))
if(�⮣�_���_�_���訥=0,      '', DoubleToStr(�⮣�_���_�_���訥,      ��ଠ�))
if(�⮣�_���_�_���訥=0,     '', DoubleToStr(�⮣�_���_�_���訥,     ��ଠ�))
if(�⮣�_���_�_���訥=0,     '', DoubleToStr(�⮣�_���_�_���訥,     ��ଠ�))
if(�⮣�_������_�_���訥=0,   '', DoubleToStr(�⮣�_������_�_���訥,   ��ଠ�))
if(�⮣�_ᥭ����_�_���訥=0, '', DoubleToStr(�⮣�_ᥭ����_�_���訥, ��ଠ�))
if(�⮣�_������_�_���訥=0,  '', DoubleToStr(�⮣�_������_�_���訥,  ��ଠ�))
if(�⮣�_�����_�_���訥=0,   '', DoubleToStr(�⮣�_�����_�_���訥,   ��ଠ�))
if(�⮣�_�������_�_���訥=0,  '', DoubleToStr(�⮣�_�������_�_���訥,  ��ଠ�))
if(�⮣�_�����_�_���訥=0,    '', DoubleToStr(�⮣�_�����_�_���訥,    ��ଠ�))

�_��⮬_�����_�_��ਮ��
.EndFields
^
.Begin
Case ���_�㬬� of
 0: ���_�㬬�_��ப� := '�����ᮢ�� �⮨����';
 1: ���_�㬬�_��ப� := '����筮� �⮨���� � '
                      + if (wGetTune('Country') = ccRus, '����� �� �����', '����⨧�樨 �� ����� ��ਮ�');
 2: ���_�㬬�_��ப� := if (wGetTune('Country') = ccRus, '����� �� �����', '����⨧�樨 �� ����� ��ਮ�');
 3: ���_�㬬�_��ப� := if (wGetTune('Country') = ccRus, '������������ �����', '����������� ����⨧�樨');
 4: ���_�㬬�_��ப� := '����筮� �⮨����';
 else
    ���_�㬬�_��ப� := '???';
End;
End.

                             ����� �� ��������� ����稭� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                       � @@@@ ���� � ࠧ������ �� ����栬

��⮤:                ^
�������� ������:     ^ (^) ^
��㯯�஢��:          ^
����஢��:           ^
�������:
.{?Internal;( (���_� <> Date(1,1,Year(���_�))) or (���_�� <> Date(31,12,Year(���_�))) );
 �� ��ਮ�:           � ^ �� ^
.}
.{ CheckEnter FilterOS3
 ^
.}
.{
.[h
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
 �������� �       ������������        �  ���줮 ��   �   ������    �   ���ࠫ�   �    ����     �    ��५�   �    ���      �    ���     �    ���     �   ������    �  �������   �   ������   �   �����    �   �������   �   ���줮 ��
    �����    �                           ���砫� ��ਮ���             �             �             �             �             �             �             �             �             �             �             �             � ����� ��ਮ��
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]h
.{ CheckEnter GruppaOS3
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� &&&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&&&&
.{?Internal;(NeedSum1 and (���_����� <> 4 ));
                                       (* &&&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&&&& )
.}
.}
.{ CheckEnter NameOS3
 @@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&&&&
.}
.{ CheckEnter ItogOS3
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� &&&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&&&&
.{?Internal;(���_����� <> 4 );
                                      (*  &&&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&& &&&&&&&&&&&&&&& )
.}
.}
.}
.{?Internal;(���_����� <> 4 );
          * - � ��⮬ ����� � ���⭮� ^
.}


��壠���

�⢥��⢥��� �� ����
.}��
.EndForm
!(* *)

!=============================================================================
.LinkForm 'OsItog_04' Prototype is 'ositog'
!=============================================================================
.NameInList '��������� ��������� � ࠧ������ �� ����⠫��'
.Group '�������� ��������� � ࠧ������ �� ����⠫��'
.p 60
.defo landscape
.Var
���_�㬬�_��ப� : String
SumKv1_Up,   SumKv2_Up,   SumKv3_Up,   SumKv4_Up,
SumKv1,      SumKv2,      SumKv3,      SumKv4,
SumKv1_Down, SumKv2_Down, SumKv3_Down, SumKv4_Down : Double
SumKv1_Up_With_Left,   SumKv2_Up_With_Left,   SumKv3_Up_With_Left,   SumKv4_Up_With_Left,
SumKv1_With_Left,      SumKv2_With_Left,      SumKv3_With_Left,      SumKv4_With_Left,
SumKv1_Down_With_Left, SumKv2_Down_With_Left, SumKv3_Down_With_Left, SumKv4_Down_With_Left : Double
.EndVar
#ResponsibleLinkVar
.[h Skip
                                                              ���� @Np@
.]h
��                                                             ���� 1
.{
#ResponsibleLinkInit(OSITOG)
.Fields
CommonFormHeader
���_�㬬�_��ப�
Year(���_�)
��⮤
�_����⥫�
����⥫�_�ய����
�����_��⮤�
��㯯�஢��
����஢��
!---------------- FilterOS
���_�
���_��
������
!---------------- GruppaOS
��⪠
if(�⮣�_����_��砫�=0, '', DoubleToStr(�⮣�_����_��砫�, ��ଠ�))
if(SumKv1_Up=0, '', DoubleToStr(SumKv1_Up, ��ଠ�))
if(SumKv2_Up=0, '', DoubleToStr(SumKv2_Up, ��ଠ�))
if(SumKv3_Up=0, '', DoubleToStr(SumKv3_Up, ��ଠ�))
if(SumKv4_Up=0, '', DoubleToStr(SumKv4_Up, ��ଠ�))
if(�⮣�_����_�����=0, '', DoubleToStr(�⮣�_����_�����, ��ଠ�))

if(�⮣�_����_��砫�_�_���訥=0, '', DoubleToStr(�⮣�_����_��砫�_�_���訥, ��ଠ�))
if(SumKv1_Up_With_Left=0, '', DoubleToStr(SumKv1_Up_With_Left, ��ଠ�))
if(SumKv2_Up_With_Left=0, '', DoubleToStr(SumKv2_Up_With_Left, ��ଠ�))
if(SumKv3_Up_With_Left=0, '', DoubleToStr(SumKv3_Up_With_Left, ��ଠ�))
if(SumKv4_Up_With_Left=0, '', DoubleToStr(SumKv4_Up_With_Left, ��ଠ�))
if(�⮣�_����_�����_�_���訥=0, '', DoubleToStr(�⮣�_����_�����_�_���訥, ��ଠ�))
!---------------- NameOS
if (���_�_⥪�饬_��ਮ��, '*'+KatOS_InNum, KatOS_InNum)
����
if(��砫�=0, '', DoubleToStr(��砫�, ��ଠ�))
if(SumKv1=0, '', DoubleToStr(SumKv1, ��ଠ�))
if(SumKv2=0, '', DoubleToStr(SumKv2, ��ଠ�))
if(SumKv3=0, '', DoubleToStr(SumKv3, ��ଠ�))
if(SumKv4=0, '', DoubleToStr(SumKv4, ��ଠ�))
if(�����=0, '', DoubleToStr(�����, ��ଠ�))
!---------------- ItogOS
�⮣�
if(�⮣�_��砫�=0, '', DoubleToStr(�⮣�_��砫�, ��ଠ�))
if(SumKv1_Down=0, '', DoubleToStr(SumKv1_Down, ��ଠ�))
if(SumKv2_Down=0, '', DoubleToStr(SumKv2_Down, ��ଠ�))
if(SumKv3_Down=0, '', DoubleToStr(SumKv3_Down, ��ଠ�))
if(SumKv4_Down=0, '', DoubleToStr(SumKv4_Down, ��ଠ�))
if(�⮣�_�����=0, '', DoubleToStr(�⮣�_�����, ��ଠ�))

if(�⮣�_��砫�_�_���訥=0, '', DoubleToStr(�⮣�_��砫�_�_���訥, ��ଠ�))
if(SumKv1_Down_With_Left=0, '', DoubleToStr(SumKv1_Down_With_Left, ��ଠ�))
if(SumKv2_Down_With_Left=0, '', DoubleToStr(SumKv2_Down_With_Left, ��ଠ�))
if(SumKv3_Down_With_Left=0, '', DoubleToStr(SumKv3_Down_With_Left, ��ଠ�))
if(SumKv4_Down_With_Left=0, '', DoubleToStr(SumKv4_Down_With_Left, ��ଠ�))
if(�⮣�_�����_�_���訥=0, '', DoubleToStr(�⮣�_�����_�_���訥, ��ଠ�))

�_��⮬_�����_�_��ਮ��
.EndFields
^
.Begin
Case ���_�㬬� of
 0: ���_�㬬�_��ப� := '�����ᮢ�� �⮨����';
 1: ���_�㬬�_��ப� := '����筮� �⮨���� � '
                      + if (wGetTune('Country') = ccRus, '����� �� �����', '����⨧�樨 �� ����� ��ਮ�');
 2: ���_�㬬�_��ப� := if (wGetTune('Country') = ccRus, '����� �� �����', '����⨧�樨 �� ����� ��ਮ�');
 3: ���_�㬬�_��ப� := if (wGetTune('Country') = ccRus, '������������ �����', '����������� ����⨧�樨');
 4: ���_�㬬�_��ப� := '����筮� �⮨����';
 else
    ���_�㬬�_��ப� := '???';
End;
End.

                             ����� �� ��������� ����稭� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                       � @@@@ ���� � ࠧ������ �� ����⠫��

��⮤:                ^
�������� ������:     ^ (^) ^
��㯯�஢��:          ^
����஢��:           ^
�������:
.{?Internal;( (���_� <> Date(1,1,Year(���_�))) or (���_�� <> Date(31,12,Year(���_�))) );
 �� ��ਮ�:           � ^ �� ^
.}
.{ CheckEnter FilterOS3
 ^
.}
.{
.[h
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
 �������� �             ������������           �       ���줮       �     I ����⠫      �      II ����⠫    �     III ����⠫    �     IV ����⠫     �      ���줮
    �����    �                                    �  �� ��砫� ��ਮ�� �                    �                    �                    �                    �  �� ����� ��ਮ��
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]h
.{ CheckEnter GruppaOS3
.Begin
SumKv1_Up := �⮣�_����_ﭢ���  + �⮣�_����_䥢ࠫ� + �⮣�_����_����;
SumKv2_Up := �⮣�_����_��५�  + �⮣�_����_���     + �⮣�_����_���;
SumKv3_Up := �⮣�_����_���    + �⮣�_����_������  + �⮣�_����_ᥭ����;
SumKv4_Up := �⮣�_����_������ + �⮣�_����_�����  + �⮣�_����_�������;

SumKv1_Up_With_Left := �⮣�_����_ﭢ���_�_���訥  + �⮣�_����_䥢ࠫ�_�_���訥 + �⮣�_����_����_�_���訥;
SumKv2_Up_With_Left := �⮣�_����_��५�_�_���訥  + �⮣�_����_���_�_���訥     + �⮣�_����_���_�_���訥;
SumKv3_Up_With_Left := �⮣�_����_���_�_���訥    + �⮣�_����_������_�_���訥  + �⮣�_����_ᥭ����_�_���訥;
SumKv4_Up_With_Left := �⮣�_����_������_�_���訥 + �⮣�_����_�����_�_���訥  + �⮣�_����_�������_�_���訥;
End.
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&
.{?Internal;(NeedSum1 and (���_����� <> 4 ));
                                                (* &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& )
.}
.}
.{ CheckEnter NameOS3
.Begin
SumKv1 := ������  + ���ࠫ� + ����;
SumKv2 := ��५�  + ���     + ���;
SumKv3 := ���    + ������  + �������;
SumKv4 := ������ + �����  + �������;
End.
 @@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&
.}
.{ CheckEnter ItogOS3
.Begin
SumKv1_Down := �⮣�_ﭢ���  + �⮣�_䥢ࠫ� + �⮣�_����;
SumKv2_Down := �⮣�_��५�  + �⮣�_���     + �⮣�_���;
SumKv3_Down := �⮣�_���    + �⮣�_������  + �⮣�_ᥭ����;
SumKv4_Down := �⮣�_������ + �⮣�_�����  + �⮣�_�������;

SumKv1_Down_With_Left := �⮣�_ﭢ���_�_���訥  + �⮣�_䥢ࠫ�_�_���訥 + �⮣�_����_�_���訥;
SumKv2_Down_With_Left := �⮣�_��५�_�_���訥  + �⮣�_���_�_���訥     + �⮣�_���_�_���訥;
SumKv3_Down_With_Left := �⮣�_���_�_���訥    + �⮣�_������_�_���訥  + �⮣�_ᥭ����_�_���訥;
SumKv4_Down_With_Left := �⮣�_������_�_���訥 + �⮣�_�����_�_���訥  + �⮣�_�������_�_���訥;
End.
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&
.{?Internal;(���_����� <> 4 );
                                                (* &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& )
.}
.}
.}
.{?Internal;(���_����� <> 4 );
          * - � ��⮬ ����� � ���⭮� ^
.}


��壠���

�⢥��⢥��� �� ����
.}��
.EndForm
!(* *)

!=============================================================================
.LinkForm 'OsItog_05' Prototype is 'ositog'
!=============================================================================
.NameInList '������� ��� ����⨧�樨 (� ������騬 �⮣��)'
.Group '������� ��� ����⨧�樨 ��'
.p 60
.defo landscape
.var
  nRecKatOs   : comp;
  currArcDate : date;
  aMonthSum   : array[1..12] of double;
  SumStoim    : double;
  SumOstStoim : double;
  GrItogStoim : double;
  GrItogOstSt : double;
  currMonth   : word;
  currOtchPer : date;
  bUseKatOs   : boolean;
  dPoprKoef   : double;
  dStoim      : double;
  dIznos      : double;
  dFullIznos  : double;
  dOstStoim   : double;
  dBazStoim   : double;
  dSrokPol    : double;
  dSrokOst    : double;
  dSumAmort   : double;
  dStoimSumAll: double;
  dOstStSumAll: double;
  wEdIzmSrok  : word;
  i           : integer;
  sBlank      : string;
  wFormIzn    : word;
.endvar
#ResponsibleLinkVar
.create view NalAmort
as select *
from
  KatOs, ArcIznos, SpKatOs, NastrOs, VidNorma,
  Synonym GrOs  GrOsKat,
  Synonym GrOs  GrOsArc,
  Synonym OsAlg OsAlgKat,
  Synonym OsAlg OsAlgArc
where
((
  nRecKatOs       == KatOs.nRec        and
  KatOs.nRec      == ArcIznos.cKatOs   and
  nRec_NastrOs    == ArcIznos.cNastrOs and
  currArcDate     == ArcIznos.Data     and
  KatOs.cGrup     == GrOsKat.nRec      and
  ArcIznos.cGrup  == GrOsArc.nRec      and
  KatOs.nRec      == SpKatOs.cKatOs    and
  nRec_NastrOs    == SpKatOs.cNastrOs  and
  SpKatos.cMetod  == OsAlgKat.nRec     and
  ArcIznos.cMetod == OsAlgArc.nRec     and
  nRec_NastrOs    == NastrOs.nRec      and
  KatOs.cVid      == VidNorma.nRec

))
;
.[h Skip
                                                              ���� @Np@
.]h
.{
#ResponsibleLinkInit(OsItog)
.Fields
CommonFormHeader
���_�
���_��
������������_�࣠����樨
��⮤
�_����⥫�
����⥫�_�ய����
�����_��⮤�
��㯯�஢��
����஢��
!---------------- FilterOS
������
!---------------- GruppaOS
��⪠
if (�⮣�_����_����� <> 0, DoubleToStr(�⮣�_����_�����, ��ଠ�), '')
if (�⮣�_����_�����_�_���訥 <> 0, DoubleToStr(�⮣�_����_�����_�_���訥, ��ଠ�), '')
!---------------- NameOS
if (Longint(���_�)<>0, DoubleToStr(currMonth,'77') + DateToStr(���_�, '.YYYY'), '')
if (���_�_⥪�饬_��ਮ��, '*'+NalAmort.KatOs.InNum, NalAmort.KatOs.InNum)
NalAmort.KatOs.NameOs
if (bUseKatOs, NalAmort.GrOsKat.NameGr, NalAmort.GrOsArc.NameGr)
if (bUseKatOs, NalAmort.OsAlgKat.Name, NalAmort.OsAlgArc.Name)
if (dPoprKoef <> 0, DoubleToStr(dPoprKoef, ��ଠ�), '')
if (dStoim <> 0, DoubleToStr(dStoim, ��ଠ�), '')
if (dOstStoim <> 0, DoubleToStr(dOstStoim, ��ଠ�), '')
if (dBazStoim <> 0, DoubleToStr(dBazStoim, ��ଠ�), '')
if (dSrokPol <> 0, DoubleToStr(dSrokPol, '66666'), '')
if (dSrokOst <> 0, DoubleToStr(dSrokOst, '66666'), '')
if (dSumAmort <> 0, DoubleToStr(dSumAmort, ��ଠ�), '')
!---------------- ItogOS
�⮣�
if (GrItogStoim <> 0, DoubleToStr(GrItogStoim, ��ଠ�), '')
if (GrItogOstSt <> 0, DoubleToStr(GrItogOstSt, ��ଠ�), '')
if (�⮣�_����� <> 0, DoubleToStr(�⮣�_�����, ��ଠ�), '')
if (�⮣�_�����_�_���訥 <> 0, DoubleToStr(�⮣�_�����_�_���訥, ��ଠ�), '')

�_��⮬_�����_�_��ਮ��
if (dStoimSumAll <> 0, DoubleToStr(dStoimSumAll, ��ଠ�), '')
if (dOstStSumAll <> 0, DoubleToStr(dOstStSumAll, ��ଠ�), '')
if (�⮣�_�����_�_���訥 <> 0, DoubleToStr(�⮣�_�����_�_���訥, ��ଠ�), '')
.EndFields
��                                                            ���� 1
^
                             �������-����
                             ��� ����⨧�樨 �᭮���� �।��
                             �� ��ਮ� � ^ �� ^
.begin
  if Length(������������_�࣠����樨) <= 42
  {
    For (i := 1; i < 42 - (Length(������������_�࣠����樨)); i := i + 1)
       sBlank := sBlank + ' ';

    ������������_�࣠����樨 := ������������_�࣠����樨 + sBlank;
  }

  wEdIzmSrok  := wGetTune('OS.SrokIspEdIzm');

  if (NalAmort.GetFirst NastrOs = tsOk)
    case NalAmort.NastrOs.TiDk of

      15: wFormIzn := wGetTune('OS.FormIzn');

      16: wFormIzn := wGetTune('NMA.FormIzn');

    end;

end.

 �E^�E
  (������������ �࣠����樨, �।�����)

��⮤:                ^
�������� ������:     ^ (^) ^
��㯯�஢��:          ^
����஢��:           ^
�������:
.{ CheckEnter FilterOS3
 ^
.}
.{
.[h
�������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
  ��ਮ�  �   ��������   �        ������������        �    ��㯯� ��    �     ������      �  ���ࠢ���  � ��ࢮ��砫쭠� �  ����筠�   �    �������    ��ப �ᯮ�짮�����, ���.�      �㬬�
          �      �����      �          ��ꥪ�           �                 �    ���᫥���     �  �����樥��  �   �⮨�����    �   �⮨�����   �   �⮨�����   ������������������������Ĵ   ����⨧�樨
          �                 �                            �                 �    ����⨧�樨    �               �                �               �               � �������  � ��⠢訩�� �
�������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]h
.{ CheckEnter GruppaOS3
 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                                                                                                                                       &&&&&&&&&&&&&&&&&
.{?Internal;(NeedSum1 and (���_����� <> 4 ));
                                                                                                                                                                                       (* &&&&&&&&&&&&&&&&& )
!(* *)
.}
.}
.{ CheckEnter NameOS3
.begin
  dSumAmort := 0;
  nRecKatOs := KatOS_NRec;
  if (NalAmort.GetFirst KatOs <> tsOk) {};
  aMonthSum[1]  := ������;
  aMonthSum[2]  := ���ࠫ�;
  aMonthSum[3]  := ����;
  aMonthSum[4]  := ��५�;
  aMonthSum[5]  := ���;
  aMonthSum[6]  := ���;
  aMonthSum[7]  := ���;
  aMonthSum[8]  := ������;
  aMonthSum[9]  := �������;
  aMonthSum[10] := ������;
  aMonthSum[11] := �����;
  aMonthSum[12] := �������;
  currMonth   := 0;
  SumOstStoim := 0;
  SumStoim    := 0;
end.
.{while currMonth < 12
.begin
  currMonth := currMonth + 1;
  currArcDate := date(Last_Day(date(1,currMonth,Year(���_�))), currMonth, Year(���_�));
  if (NalAmort.GetFirst Katos <> tsOk) {};
  if (NalAmort.GetFirst ArcIznos <> tsOk) {};
  if (NalAmort.GetFirst NastrOs <> tsOk) {};
  currOtchPer := NalAmort.KatOs.OtchPer;
  if (currArcDate >= currOtchPer)
  {
    bUseKatOs  := true;
    dPoprKoef  := NalAmort.NastrOs.KIAO * NalAmort.VidNorma.Norma * NalAmort.SpKatOs.Poprkoef;
    dStoim     := if (NalAmort.NastrOs.Field4 = 0, NalAmort.SpKatOs.Stoim * NalAmort.KatOs.Kol, NalAmort.SpKatOs.Stoim);
    dIznos     := if (wFormIzn = 0, NalAmort.SpKatOs.SumIzn, NalAmort.SpKatOs.SumIzn + NalAmort.SpKatOs.SIznM);
    dFullIznos := if (NalAmort.NastrOs.Field4 = 0, dIznos * NalAmort.KatOs.Kol, dIznos);
    dSrokPol   := NalAmort.SpKatOs.SrokIsp;
    dSrokOst   := NalAmort.SpKatOs.SrokIsp - (NalAmort.SpKatOs.IspPs + NalAmort.SpKatOs.IspCur);
  }
  else
  {
    bUseKatOs  := false;
    dPoprKoef  := NalAmort.ArcIznos.KoofIz * NalAmort.ArcIznos.KoofYsk * NalAmort.ArcIznos.KoofSm;
    dStoim     := if (NalAmort.NastrOs.Field4 = 0, NalAmort.ArcIznos.Stoim * NalAmort.ArcIznos.Kol, NalAmort.ArcIznos.Stoim);
    dIznos     := if (wFormIzn = 0, NalAmort.ArcIznos.SumIzn, NalAmort.ArcIznos.SumIzn + NalAmort.ArcIznos.SIznM);
    dFullIznos := if (NalAmort.NastrOs.Field4 = 0, dIznos * NalAmort.ArcIznos.Kol, dIznos);
    dSrokPol   := NalAmort.ArcIznos.SrokIsp;
    dSrokOst   := NalAmort.ArcIznos.SrokIsp - (NalAmort.SpKatOs.IspPs + NalAmort.ArcIznos.IspCur);
  }
  if (wEdIzmSrok = 1)
  {
    dSrokPol := dSrokPol * 12;
    dSrokOst := dSrokOst * 12;
  }
  dOstStoim := dStoim - dFullIznos;

  if (aMonthSum[currMonth] <> 0)
  {
    SumOstStoim := dOstStoim;
    SumStoim := dStoim;
  }

  dBazStoim := dStoim*0.2;
  if (dOstStoim >= dBazStoim)
    dBazStoim := 0;
  dSumAmort := dSumAmort + aMonthSum[currMonth];
end.
.{?Internal;aMonthSum[currMonth]<>0
 @@@@@@@   @@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&&& &&&&&&&&&&&&&&&& &&&&&&&&&&&&&&& &&&&&&&&&&&&&&&    &&&&&        &&&&&    &&&&&&&&&&&&&&&&&
.}
.}
.begin
  GrItogStoim := GrItogStoim + SumStoim;
  GrItogOstSt := GrItogOstSt + SumOstStoim;
  dStoimSumAll := dStoimSumAll + SumStoim;
  dOstStSumAll := dOstStSumAll + SumOstStoim;
end.
.}
.{ CheckEnter ItogOS3
 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                                                              &&&&&&&&&&&&&&& &&&&&&&&&&&&&&&                                          &&&&&&&&&&&&&&&&&
.begin
  GrItogStoim := 0;
  GrItogOstSt := 0;
end.
.{?Internal;(���_����� <> 4 );
                                                                                                                                                                                       (* &&&&&&&&&&&&&&&&& )
.}
!(* *)
.}
.}
�������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{?Internal;(���_����� <> 4 );
          * - � ��⮬ ����� � ���⭮� ^
.}
�� �����                                                                                                           &&&&&&&&&&&&&&& &&&&&&&&&&&&&&&                                          &&&&&&&&&&&&&&&&&��
.{While (�����_�⢥��⢥�����_��� < ������⢮_�⢥��⢥����_���)
.begin
 �����_�⢥��⢥�����_��� := �����_�⢥��⢥�����_��� + 1;
end.
.fields
  ���ᨢ_�⢥��⢥����_���_��������� [�����_�⢥��⢥�����_���]
  ���ᨢ_�⢥��⢥����_���_���       [�����_�⢥��⢥�����_���]
.endfields

��@@@@@@@@@@@@@@@@@@@@@@@@@��  ____________________    ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                                (�������)                            (�.�.�������)
.}
.}
��
.EndForm

!=============================================================================
.LinkForm 'OsItog_06' Prototype is 'ositog'
!=============================================================================
.NameInList '������� ��� ����⨧�樨 (� ������騬 �⮣��)'
.Group '������� ��� ����⨧�樨 ���'
.p 60
.defo landscape
.var
  nRecKatOs   : comp;
  currArcDate : date;
  aMonthSum   : array[1..12] of double;
  currMonth   : word;
  currOtchPer : date;
  bUseKatOs   : boolean;
  dPoprKoef   : double;
  dStoim      : double;
  dIznos      : double;
  dFullIznos  : double;
  dOstStoim   : double;
  dBazStoim   : double;
  dSrokPol    : double;
  dSrokOst    : double;
  dSumAmort   : double;
  wEdIzmSrok  : word;
  i           : integer;
  sBlank      : string;
  wFormIzn    : word;
.endvar
#ResponsibleLinkVar
.create view NalAmort
as select *
from
  KatOs, ArcIznos, SpKatOs, NastrOs, VidNorma,
  Synonym OsAlg OsAlgKat,
  Synonym OsAlg OsAlgArc
where
((
  nRecKatOs       == KatOs.nRec        and
  KatOs.nRec      == ArcIznos.cKatOs   and
  nRec_NastrOs    == ArcIznos.cNastrOs and
  currArcDate     == ArcIznos.Data     and
  KatOs.nRec      == SpKatOs.cKatOs    and
  nRec_NastrOs    == SpKatOs.cNastrOs  and
  SpKatos.cMetod  == OsAlgKat.nRec     and
  ArcIznos.cMetod == OsAlgArc.nRec     and
  nRec_NastrOs    == NastrOs.nRec      and
  KatOs.cVid      == VidNorma.nRec
))
;
.[h Skip
                                                              ���� @Np@
.]h
.{
#ResponsibleLinkInit(OsItog)
.Fields
CommonFormHeader
���_�
���_��
������������_�࣠����樨
��⮤
�_����⥫�
����⥫�_�ய����
�����_��⮤�
��㯯�஢��
����஢��
!---------------- FilterOS
������
!---------------- GruppaOS
��⪠
if (�⮣�_����_����� <> 0, DoubleToStr(�⮣�_����_�����, ��ଠ�), '')
if (�⮣�_����_�����_�_���訥 <> 0, DoubleToStr(�⮣�_����_�����_�_���訥, ��ଠ�), '')
!---------------- NameOS
if (Longint(���_�)<>0, DoubleToStr(currMonth,'77') + DateToStr(���_�, '.YYYY'), '')
if (���_�_⥪�饬_��ਮ��, '*'+NalAmort.KatOs.InNum, NalAmort.KatOs.InNum)
NalAmort.KatOs.NameOs
if (bUseKatOs, NalAmort.OsAlgKat.Name, NalAmort.OsAlgArc.Name)
if (dPoprKoef <> 0, DoubleToStr(dPoprKoef, ��ଠ�), '')
if (dStoim <> 0, DoubleToStr(dStoim, ��ଠ�), '')
if (dOstStoim <> 0, DoubleToStr(dOstStoim, ��ଠ�), '')
if (dBazStoim <> 0, DoubleToStr(dBazStoim, ��ଠ�), '')
if (dSrokPol <> 0, DoubleToStr(dSrokPol, '66666'), '')
if (dSrokOst <> 0, DoubleToStr(dSrokOst, '66666'), '')
if (dSumAmort <> 0, DoubleToStr(dSumAmort, ��ଠ�), '')
!---------------- ItogOS
�⮣�
if (�⮣�_����� <> 0, DoubleToStr(�⮣�_�����, ��ଠ�), '')
if (�⮣�_�����_�_���訥 <> 0, DoubleToStr(�⮣�_�����_�_���訥, ��ଠ�), '')

�_��⮬_�����_�_��ਮ��
if (�⮣�_�����_�_���訥 <> 0, DoubleToStr(�⮣�_�����_�_���訥, ��ଠ�), '')
.EndFields
��                                                            ���� 1
^
                             �������-����
                             ��� ����⨧�樨 �����ਠ���� ��⨢��
                             �� ��ਮ� � ^ �� ^
.begin
  if Length(������������_�࣠����樨) <= 42
  {
    For (i := 1; i < 42 - (Length(������������_�࣠����樨)); i := i + 1)
       sBlank := sBlank + ' ';

    ������������_�࣠����樨 := ������������_�࣠����樨 + sBlank;
  }

  wEdIzmSrok  := wGetTune('OS.SrokIspEdIzm');

  if (NalAmort.GetFirst NastrOs = tsOk)
    case NalAmort.NastrOs.TiDk of

      15: wFormIzn := wGetTune('OS.FormIzn');

      16: wFormIzn := wGetTune('NMA.FormIzn');

    end;
end.

 �E^�E
  (������������ �࣠����樨, �।�����)

��⮤:                ^
�������� ������:     ^ (^) ^
��㯯�஢��:          ^
����஢��:           ^
�������:
.{ CheckEnter FilterOS3
 ^
.}
.{
.[h
�������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
  ��ਮ�  �   ��������   �        ������������        �     ������      �  ���ࠢ���  � ��ࢮ��砫쭠� �  ����筠�   �    �������    ��ப �ᯮ�짮�����, ���.�      �㬬�
          �      �����      �          ��ꥪ�           �    ���᫥���     �  �����樥��  �   �⮨�����    �   �⮨�����   �   �⮨�����   ������������������������Ĵ   ����⨧�樨
          �                 �                            �    ����⨧�樨    �               �                �               �               � �������  � ��⠢訩�� �
�������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]h
.{ CheckEnter GruppaOS3
 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                                                                                                                     &&&&&&&&&&&&&&&&&
.{?Internal;(NeedSum1 and (���_����� <> 4 ));
                                                                                                                                                                     (* &&&&&&&&&&&&&&&&& )
!(* *)
.}
.}
.{ CheckEnter NameOS3
.begin
  dSumAmort := 0;
  nRecKatOs := KatOS_NRec;
  if (NalAmort.GetFirst KatOs <> tsOk) {};
  if (NalAmort.GetFirst ArcIznos <> tsOk) {};
  if (NalAmort.GetFirst NastrOs <> tsOk) {};
  aMonthSum[1]  := ������;
  aMonthSum[2]  := ���ࠫ�;
  aMonthSum[3]  := ����;
  aMonthSum[4]  := ��५�;
  aMonthSum[5]  := ���;
  aMonthSum[6]  := ���;
  aMonthSum[7]  := ���;
  aMonthSum[8]  := ������;
  aMonthSum[9]  := �������;
  aMonthSum[10] := ������;
  aMonthSum[11] := �����;
  aMonthSum[12] := �������;
  currMonth := 0;
end.
.{while currMonth < 12
.begin
  currMonth := currMonth + 1;
  currArcDate := date(Last_Day(date(1,currMonth,Year(���_�))), currMonth, Year(���_�));
  if (NalAmort.GetFirst ArcIznos <> tsOk) {};
  currOtchPer := NalAmort.KatOs.OtchPer;
  if (currArcDate >= currOtchPer)
  {
    bUseKatOs  := true;
    dPoprKoef  := NalAmort.NastrOs.KIAO * NalAmort.VidNorma.Norma * NalAmort.SpKatOs.Poprkoef;
    dStoim     := if (NalAmort.NastrOs.Field4 = 0, NalAmort.SpKatOs.Stoim * NalAmort.KatOs.Kol, NalAmort.SpKatOs.Stoim);
    dIznos     := if (wFormIzn = 0, NalAmort.SpKatOs.SumIzn, NalAmort.SpKatOs.SumIzn + NalAmort.SpKatOs.SIznM);
    dFullIznos := if (NalAmort.NastrOs.Field4 = 0, dIznos * NalAmort.KatOs.Kol, dIznos);
    dSrokPol   := NalAmort.SpKatOs.SrokIsp;
    dSrokOst   := NalAmort.SpKatOs.SrokIsp - (NalAmort.SpKatOs.IspPs + NalAmort.SpKatOs.IspCur);
  }
  else
  {
    bUseKatOs  := false;
    dPoprKoef  := NalAmort.ArcIznos.KoofIz * NalAmort.ArcIznos.KoofYsk * NalAmort.ArcIznos.KoofSm;
    dStoim     := if (NalAmort.NastrOs.Field4 = 0, NalAmort.ArcIznos.Stoim * NalAmort.ArcIznos.Kol, NalAmort.ArcIznos.Stoim);
    dIznos     := if (wFormIzn = 0, NalAmort.ArcIznos.SumIzn, NalAmort.ArcIznos.SumIzn + NalAmort.ArcIznos.SIznM);
    dFullIznos := if (NalAmort.NastrOs.Field4 = 0, dIznos * NalAmort.ArcIznos.Kol, dIznos);
    dSrokPol   := NalAmort.ArcIznos.SrokIsp;
    dSrokOst   := NalAmort.ArcIznos.SrokIsp - (NalAmort.SpKatOs.IspPs + NalAmort.ArcIznos.IspCur);
  }
  if (wEdIzmSrok = 1)
  {
    dSrokPol := dSrokPol * 12;
    dSrokOst := dSrokOst * 12;
  }
  dOstStoim := dStoim - dFullIznos;
  dBazStoim := dStoim*0.2;
  if (dOstStoim >= dBazStoim) dBazStoim := 0;
  dSumAmort := dSumAmort + aMonthSum[currMonth];

end.
.{?Internal;aMonthSum[currMonth]<>0
 @@@@@@@   @@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&&& &&&&&&&&&&&&&&&& &&&&&&&&&&&&&&& &&&&&&&&&&&&&&&    &&&&&        &&&&&    &&&&&&&&&&&&&&&&&
.}
.}
.}
.{ CheckEnter ItogOS3
 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                                                                                                                     &&&&&&&&&&&&&&&&&
.{?Internal;(���_����� <> 4 );
                                                                                                                                                                     (* &&&&&&&&&&&&&&&&& )
.}
!(* *)
.}
.}
�������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{?Internal;(���_����� <> 4 );
          * - � ��⮬ ����� � ���⭮� ^
.}
�� �����                                                                                                                                                                  &&&&&&&&&&&&&&&&&��
.{While (�����_�⢥��⢥�����_��� < ������⢮_�⢥��⢥����_���)
.begin
 �����_�⢥��⢥�����_��� := �����_�⢥��⢥�����_��� + 1;
end.
.fields
  ���ᨢ_�⢥��⢥����_���_��������� [�����_�⢥��⢥�����_���]
  ���ᨢ_�⢥��⢥����_���_���       [�����_�⢥��⢥�����_���]
.endfields

��@@@@@@@@@@@@@@@@@@@@@@@@@��  ____________________    ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                                (�������)                            (�.�.�������)
.}
.}
��
.EndForm

!=============================================================================
.LinkForm 'OsItog_07' Prototype is 'ositog'
!=============================================================================
.NameInList '������� ��� ����⨧�樨 (�⮣�)'
.Group '������� ��� ����⨧�樨 ��'
.p 60
.defo landscape
.var
  nRecKatOs   : comp;
  currArcDate : date;
  aMonthSum   : array[1..12] of double;
  currMonth   : word;
  currOtchPer : date;
  bUseKatOs   : boolean;
  dPoprKoef   : double;
  dStoim      : double;
  GrItogStoim : double;
  dIznos      : double;
  dFullIznos  : double;
  dOstStoim   : double;
  dBazStoim   : double;
  dSrokPol    : double;
  dSrokOst    : double;
  dSumAmort   : double;
  wEdIzmSrok  : word;
  dStoimSum   : double;
  dStoimSumAll: double;
  wLastMonth  : word;
  i           : integer;
  sBlank      : string;
  wFormIzn    : word;
.endvar
#ResponsibleLinkVar
.create view NalAmort
as select *
from
  KatOs, ArcIznos, SpKatOs, NastrOs, VidNorma,
  Synonym GrOs  GrOsKat,
  Synonym GrOs  GrOsArc,
  Synonym OsAlg OsAlgKat,
  Synonym OsAlg OsAlgArc
where
((
  nRecKatOs       == KatOs.nRec        and
  KatOs.nRec      == ArcIznos.cKatOs   and
  nRec_NastrOs    == ArcIznos.cNastrOs and
  currArcDate     == ArcIznos.Data     and
  KatOs.cGrup     == GrOsKat.nRec      and
  ArcIznos.cGrup  == GrOsArc.nRec      and
  KatOs.nRec      == SpKatOs.cKatOs    and
  nRec_NastrOs    == SpKatOs.cNastrOs  and
  SpKatos.cMetod  == OsAlgKat.nRec     and
  ArcIznos.cMetod == OsAlgArc.nRec     and
  nRec_NastrOs    == NastrOs.nRec      and
  KatOs.cVid      == VidNorma.nRec
))
;
.[h Skip
                                                              ���� @Np@
.]h
��                                                             ���� 1
.{
#ResponsibleLinkInit(OSITOG)
.Fields
CommonFormHeader
���_�
���_��
  ������������_�࣠����樨
��⮤
�_����⥫�
����⥫�_�ய����
�����_��⮤�
��㯯�஢��
����஢��
!---------------- FilterOS
������
!---------------- GruppaOS
��⪠
if (�⮣�_����_����� <> 0, DoubleToStr(�⮣�_����_�����, ��ଠ�), '')
if (�⮣�_����_�����_�_���訥 <> 0, DoubleToStr(�⮣�_����_�����_�_���訥, ��ଠ�), '')
!---------------- NameOS
if (Longint(���_�)<>0, DoubleToStr(currMonth,'77') + DateToStr(���_�, '.YYYY'), '')
if (���_�_⥪�饬_��ਮ��, '*'+NalAmort.KatOs.InNum, NalAmort.KatOs.InNum)
NalAmort.KatOs.NameOs
if (bUseKatOs, NalAmort.GrOsKat.NameGr, NalAmort.GrOsArc.NameGr)
if (bUseKatOs, NalAmort.OsAlgKat.Name, NalAmort.OsAlgArc.Name)
if (dPoprKoef <> 0, DoubleToStr(dPoprKoef, ��ଠ�), '')
if (dStoim <> 0, DoubleToStr(dStoim, ��ଠ�), '')
if (dBazStoim <> 0, DoubleToStr(dBazStoim, ��ଠ�), '')
if (dSrokPol <> 0, DoubleToStr(dSrokPol, '66666'), '')
if (dSrokOst <> 0, DoubleToStr(dSrokOst, '66666'), '')
if (dSumAmort <> 0, DoubleToStr(dSumAmort, ��ଠ�), '')
!---------------- ItogOS
�⮣�
if (GrItogStoim <> 0, DoubleToStr(GrItogStoim, ��ଠ�), '')
if (�⮣�_����� <> 0, DoubleToStr(�⮣�_�����, ��ଠ�), '')
if (�⮣�_�����_�_���訥 <> 0, DoubleToStr(�⮣�_�����_�_���訥, ��ଠ�), '')

�_��⮬_�����_�_��ਮ��
if (dStoimSumAll <> 0, DoubleToStr(dStoimSumAll, ��ଠ�), '')
if (�⮣�_�����_�_���訥 <> 0, DoubleToStr(�⮣�_�����_�_���訥, ��ଠ�), '')
.EndFields
^
                             �������-����
                             ��� ����⨧�樨 �᭮���� �।�� (�⮣�)
                             �� ��ਮ� � ^ �� ^
.begin
  if Length(������������_�࣠����樨) <= 42
  {
    For (i := 1; i < 42 - (Length(������������_�࣠����樨)); i := i + 1)
       sBlank := sBlank + ' ';

    ������������_�࣠����樨 := ������������_�࣠����樨 + sBlank;
  }

  wEdIzmSrok  := wGetTune('OS.SrokIspEdIzm');

  if (NalAmort.GetFirst NastrOs = tsOk)
    case NalAmort.NastrOs.TiDk of

      15: wFormIzn := wGetTune('OS.FormIzn');

      16: wFormIzn := wGetTune('NMA.FormIzn');

    end;
end.

 �E^�E
  (������������ �࣠����樨, �।�����)

��⮤:                ^
�������� ������:     ^ (^) ^
��㯯�஢��:          ^
����஢��:           ^
�������:
.{ CheckEnter FilterOS3
 ^
.}
.{
.[h
���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
  ��ਮ�  �   ��������   �        ������������        �    ��㯯� ��    �     ������      �  ���ࠢ���  � ��ࢮ��砫쭠� �    �������    ��ப �ᯮ�짮�����, ���.�      �㬬�
          �      �����      �          ��ꥪ�           �                 �    ���᫥���     �  �����樥��  �   �⮨�����    �   �⮨�����   ������������������������Ĵ   ����⨧�樨
          �                 �                            �                 �    ����⨧�樨    �               �                �               � �������  � ��⠢訩�� �
���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]h
.{ CheckEnter GruppaOS3
 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                                                                                                                       &&&&&&&&&&&&&&&&&
.{?Internal;(NeedSum1 and (���_����� <> 4 ));
                                                                                                                                                                       (* &&&&&&&&&&&&&&&&& )
!(* *)
.}
.}
.{ CheckEnter NameOS3
.begin
  wLastMonth := 0;
  dSumAmort := 0;
  nRecKatOs := KatOS_NRec;
  if (NalAmort.GetFirst KatOs <> tsOk) {};
  if (NalAmort.GetFirst ArcIznos <> tsOk) {};
  if (NalAmort.GetFirst NastrOs <> tsOk) {};
  aMonthSum[1]  := ������;
  aMonthSum[2]  := ���ࠫ�;
  aMonthSum[3]  := ����;
  aMonthSum[4]  := ��५�;
  aMonthSum[5]  := ���;
  aMonthSum[6]  := ���;
  aMonthSum[7]  := ���;
  aMonthSum[8]  := ������;
  aMonthSum[9]  := �������;
  aMonthSum[10] := ������;
  aMonthSum[11] := �����;
  aMonthSum[12] := �������;
  dStoimSum := 0;
  currMonth := 0;

  while (currMonth < 12)
    do
    {
      currMonth := currMonth + 1;
      if (aMonthSum[currMonth] <> 0) wLastMonth := currMonth;
    }//do

  currMonth := 0;
end.
.{while currMonth < 12
.begin
  currMonth := currMonth + 1;
  currArcDate := date(Last_Day(date(1,currMonth,Year(���_�))), currMonth, Year(���_�));
  if (NalAmort.GetFirst ArcIznos <> tsOk) {};
  currOtchPer := NalAmort.KatOs.OtchPer;
  if (currArcDate >= currOtchPer)
  {
    bUseKatOs  := true;
    dPoprKoef  := NalAmort.NastrOs.KIAO * NalAmort.VidNorma.Norma * NalAmort.SpKatOs.Poprkoef;
    dStoim     := if (NalAmort.NastrOs.Field4 = 0, NalAmort.SpKatOs.Stoim * NalAmort.KatOs.Kol, NalAmort.SpKatOs.Stoim);
    dIznos     := if (wFormIzn = 0, NalAmort.SpKatOs.SumIzn, NalAmort.SpKatOs.SumIzn + NalAmort.SpKatOs.SIznM);
    dFullIznos := if (NalAmort.NastrOs.Field4 = 0, dIznos * NalAmort.KatOs.Kol, dIznos);
    dSrokPol   := NalAmort.SpKatOs.SrokIsp;
    dSrokOst   := NalAmort.SpKatOs.SrokIsp - (NalAmort.SpKatOs.IspPs + NalAmort.SpKatOs.IspCur);
  }
  else
  {
    bUseKatOs  := false;
    dPoprKoef  := NalAmort.ArcIznos.KoofIz * NalAmort.ArcIznos.KoofYsk * NalAmort.ArcIznos.KoofSm;
    dStoim     := if (NalAmort.NastrOs.Field4 = 0, NalAmort.ArcIznos.Stoim * NalAmort.ArcIznos.Kol, NalAmort.ArcIznos.Stoim);
    dIznos     := if (wFormIzn = 0, NalAmort.ArcIznos.SumIzn, NalAmort.ArcIznos.SumIzn + NalAmort.ArcIznos.SIznM);
    dFullIznos := if (NalAmort.NastrOs.Field4 = 0, dIznos * NalAmort.ArcIznos.Kol, dIznos);
    dSrokPol   := NalAmort.ArcIznos.SrokIsp;
    dSrokOst   := NalAmort.ArcIznos.SrokIsp - (NalAmort.SpKatOs.IspPs + NalAmort.ArcIznos.IspCur);
  }
  if (wEdIzmSrok = 1)
  {
    dSrokPol := dSrokPol * 12;
    dSrokOst := dSrokOst * 12;
  }
  dOstStoim := dStoim - dFullIznos;

  if (aMonthSum[currMonth] <> 0)
    dStoimSum:= dStoim;

  dBazStoim := dStoim*0.2;
  if (dOstStoim >= dBazStoim) dBazStoim := 0;
  dSumAmort := dSumAmort + aMonthSum[currMonth];

end.
.{?Internal; (currMonth = wLastMonth)
 @@@@@@@   @@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&&& &&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&    &&&&&        &&&&&    &&&&&&&&&&&&&&&&&
.}
.}
.begin
  GrItogStoim := GrItogStoim + dStoimSum;
  dStoimSumAll := dStoimSumAll + dStoimSum
end.
.}
.{ CheckEnter ItogOS3
 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                                                              &&&&&&&&&&&&&&&                                          &&&&&&&&&&&&&&&&&
.begin
  GrItogStoim := 0;
end.
.{?Internal;(���_����� <> 4 );
                                                                                                                                                                       (* &&&&&&&&&&&&&&&&& )
.}
!(* *)
.}
.}
���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{?Internal;(���_����� <> 4 );
          * - � ��⮬ ����� � ���⭮� ^
.}
�� �����                                                                                                           &&&&&&&&&&&&&&&                                          &&&&&&&&&&&&&&&&&��
.{While (�����_�⢥��⢥�����_��� < ������⢮_�⢥��⢥����_���)
.begin
 �����_�⢥��⢥�����_��� := �����_�⢥��⢥�����_��� + 1;
end.
.fields
  ���ᨢ_�⢥��⢥����_���_��������� [�����_�⢥��⢥�����_���]
  ���ᨢ_�⢥��⢥����_���_���       [�����_�⢥��⢥�����_���]
.endfields

��@@@@@@@@@@@@@@@@@@@@@@@@@��  ____________________    ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                                (�������)                            (�.�.�������)
.}
.}
��
.EndForm

!=============================================================================
.LinkForm 'OsItog_08' Prototype is 'ositog'
!=============================================================================
.NameInList '������� ��� ����⨧�樨 (�⮣�)'
.Group '������� ��� ����⨧�樨 ���'
.p 60
.defo landscape
.var
  nRecKatOs   : comp;
  currArcDate : date;
  aMonthSum   : array[1..12] of double;
  currMonth   : word;
  currOtchPer : date;
  bUseKatOs   : boolean;
  dPoprKoef   : double;
  dStoim      : double;
  dIznos      : double;
  dFullIznos  : double;
  dOstStoim   : double;
  dBazStoim   : double;
  dSrokPol    : double;
  dSrokOst    : double;
  dSumAmort   : double;
  wEdIzmSrok  : word;
  wLastMonth  : word;
  i           : integer;
  sBlank      : string;
  wFormIzn    : word;
.endvar
#ResponsibleLinkVar
.create view NalAmort
as select *
from
  KatOs, ArcIznos, SpKatOs, NastrOs, VidNorma,
  Synonym OsAlg OsAlgKat,
  Synonym OsAlg OsAlgArc
where
((
  nRecKatOs       == KatOs.nRec        and
  KatOs.nRec      == ArcIznos.cKatOs   and
  nRec_NastrOs    == ArcIznos.cNastrOs and
  currArcDate     == ArcIznos.Data     and
  KatOs.nRec      == SpKatOs.cKatOs    and
  nRec_NastrOs    == SpKatOs.cNastrOs  and
  SpKatos.cMetod  == OsAlgKat.nRec     and
  ArcIznos.cMetod == OsAlgArc.nRec     and
  nRec_NastrOs    == NastrOs.nRec      and
  KatOs.cVid      == VidNorma.nRec
))
;
.[h Skip
                                                              ���� @Np@
.]h
.{
#ResponsibleLinkInit(OsItog)
.Fields
CommonFormHeader
���_�
���_��
������������_�࣠����樨
��⮤
�_����⥫�
����⥫�_�ய����
�����_��⮤�
��㯯�஢��
����஢��
!---------------- FilterOS
������
!---------------- GruppaOS
��⪠
if (�⮣�_����_����� <> 0, DoubleToStr(�⮣�_����_�����, ��ଠ�), '')
if (�⮣�_����_�����_�_���訥 <> 0, DoubleToStr(�⮣�_����_�����_�_���訥, ��ଠ�), '')
!---------------- NameOS
if (Longint(���_�)<>0, DoubleToStr(currMonth,'77') + DateToStr(���_�, '.YYYY'), '')
if (���_�_⥪�饬_��ਮ��, '*'+NalAmort.KatOs.InNum, NalAmort.KatOs.InNum)
NalAmort.KatOs.NameOs
if (bUseKatOs, NalAmort.OsAlgKat.Name, NalAmort.OsAlgArc.Name)
if (dPoprKoef <> 0, DoubleToStr(dPoprKoef, ��ଠ�), '')
if (dStoim <> 0, DoubleToStr(dStoim, ��ଠ�), '')
if (dBazStoim <> 0, DoubleToStr(dBazStoim, ��ଠ�), '')
if (dSrokPol <> 0, DoubleToStr(dSrokPol, '66666'), '')
if (dSrokOst <> 0, DoubleToStr(dSrokOst, '66666'), '')
if (dSumAmort <> 0, DoubleToStr(dSumAmort, ��ଠ�), '')
!---------------- ItogOS
�⮣�
if (�⮣�_����� <> 0, DoubleToStr(�⮣�_�����, ��ଠ�), '')
if (�⮣�_�����_�_���訥 <> 0, DoubleToStr(�⮣�_�����_�_���訥, ��ଠ�), '')

�_��⮬_�����_�_��ਮ��
if (�⮣�_�����_�_���訥 <> 0, DoubleToStr(�⮣�_�����_�_���訥, ��ଠ�), '')
.EndFields
��                                                            ���� 1
^
                             �������-����
                             ��� ����⨧�樨 �����ਠ���� ��⨢�� (�⮣�)
                             �� ��ਮ� � ^ �� ^
.begin
  if Length(������������_�࣠����樨) <= 42
  {
    For (i := 1; i < 42 - (Length(������������_�࣠����樨)); i := i + 1)
       sBlank := sBlank + ' ';

    ������������_�࣠����樨 := ������������_�࣠����樨 + sBlank;
  }

  wEdIzmSrok  := wGetTune('OS.SrokIspEdIzm');

  if (NalAmort.GetFirst NastrOs = tsOk)
    case NalAmort.NastrOs.TiDk of

      15: wFormIzn := wGetTune('OS.FormIzn');

      16: wFormIzn := wGetTune('NMA.FormIzn');

    end;
end.

 �E^�E
  (������������ �࣠����樨, �।�����)

��⮤:                ^
�������� ������:     ^ (^) ^
��㯯�஢��:          ^
����஢��:           ^
�������:
.{ CheckEnter FilterOS3
 ^
.}
.{
.[h
���������������������������������������������������������������������������������������������������������������������������������������������������������������������������
  ��ਮ�  �   ��������   �        ������������        �     ������      �  ���ࠢ���  � ��ࢮ��砫쭠� �    �������    ��ப �ᯮ�짮�����, ���.�      �㬬�
          �      �����      �          ��ꥪ�           �    ���᫥���     �  �����樥��  �   �⮨�����    �   �⮨�����   ������������������������Ĵ   ����⨧�樨
          �                 �                            �    ����⨧�樨    �               �                �               � �������  � ��⠢訩�� �
���������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]h
.{ CheckEnter GruppaOS3
 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                                                                                                     &&&&&&&&&&&&&&&&&
.{?Internal;(NeedSum1 and (���_����� <> 4 ));
                                                                                                                                                     (* &&&&&&&&&&&&&&&&& )
!(* *)
.}
.}
.{ CheckEnter NameOS3
.begin
  wLastMonth := 0;
  dSumAmort := 0;
  nRecKatOs := KatOS_NRec;
  if (NalAmort.GetFirst KatOs <> tsOk) {};
  if (NalAmort.GetFirst ArcIznos <> tsOk) {};
  if (NalAmort.GetFirst NastrOs <> tsOk) {};

  aMonthSum[1]  := ������;
  aMonthSum[2]  := ���ࠫ�;
  aMonthSum[3]  := ����;
  aMonthSum[4]  := ��५�;
  aMonthSum[5]  := ���;
  aMonthSum[6]  := ���;
  aMonthSum[7]  := ���;
  aMonthSum[8]  := ������;
  aMonthSum[9]  := �������;
  aMonthSum[10] := ������;
  aMonthSum[11] := �����;
  aMonthSum[12] := �������;

  currMonth := 0;
  while (currMonth < 12)
    do
    {
      currMonth := currMonth + 1;
      if (aMonthSum[currMonth] <> 0) wLastMonth := currMonth;
    }//do

  currMonth := 0;
end.
.{while currMonth < 12
.begin
  currMonth := currMonth + 1;
  currArcDate := date(Last_Day(date(1,currMonth,Year(���_�))), currMonth, Year(���_�));
  if (NalAmort.GetFirst ArcIznos <> tsOk) {};
  currOtchPer := NalAmort.KatOs.OtchPer;
  if (currArcDate >= currOtchPer)
  {
    bUseKatOs  := true;
    dPoprKoef  := NalAmort.NastrOs.KIAO * NalAmort.VidNorma.Norma * NalAmort.SpKatOs.Poprkoef;
    dStoim     := if (NalAmort.NastrOs.Field4 = 0, NalAmort.SpKatOs.Stoim * NalAmort.KatOs.Kol, NalAmort.SpKatOs.Stoim);
    dIznos     := if (wFormIzn = 0, NalAmort.SpKatOs.SumIzn, NalAmort.SpKatOs.SumIzn + NalAmort.SpKatOs.SIznM);
    dFullIznos := if (NalAmort.NastrOs.Field4 = 0, dIznos * NalAmort.KatOs.Kol, dIznos);
    dSrokPol   := NalAmort.SpKatOs.SrokIsp;
    dSrokOst   := NalAmort.SpKatOs.SrokIsp - (NalAmort.SpKatOs.IspPs + NalAmort.SpKatOs.IspCur);
  }
  else
  {
    bUseKatOs  := false;
    dPoprKoef  := NalAmort.ArcIznos.KoofIz * NalAmort.ArcIznos.KoofYsk * NalAmort.ArcIznos.KoofSm;
    dStoim     := if (NalAmort.NastrOs.Field4 = 0, NalAmort.ArcIznos.Stoim * NalAmort.ArcIznos.Kol, NalAmort.ArcIznos.Stoim);
    dIznos     := if (wFormIzn = 0, NalAmort.ArcIznos.SumIzn, NalAmort.ArcIznos.SumIzn + NalAmort.ArcIznos.SIznM);
    dFullIznos := if (NalAmort.NastrOs.Field4 = 0, dIznos * NalAmort.ArcIznos.Kol, dIznos);
    dSrokPol   := NalAmort.ArcIznos.SrokIsp;
    dSrokOst   := NalAmort.ArcIznos.SrokIsp - (NalAmort.SpKatOs.IspPs + NalAmort.ArcIznos.IspCur);
  }
  if (wEdIzmSrok = 1)
  {
    dSrokPol := dSrokPol * 12;
    dSrokOst := dSrokOst * 12;
  }
  dOstStoim := dStoim - dFullIznos;
  dBazStoim := dStoim*0.2;
  if (dOstStoim >= dBazStoim) dBazStoim := 0;
  dSumAmort := dSumAmort + aMonthSum[currMonth];

end.
.{?Internal; (currMonth = wLastMonth)
 @@@@@@@   @@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&&& &&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&    &&&&&        &&&&&    &&&&&&&&&&&&&&&&&
.}
.}
.}
.{ CheckEnter ItogOS3
 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                                                                                                     &&&&&&&&&&&&&&&&&
.{?Internal;(���_����� <> 4 );
                                                                                                                                                     (* &&&&&&&&&&&&&&&&& )
.}
!(* *)
.}
.}
���������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{?Internal;(���_����� <> 4 );
          * - � ��⮬ ����� � ���⭮� ^
.}
�� �����                                                                                                                                                  &&&&&&&&&&&&&&&&&��
.{While (�����_�⢥��⢥�����_��� < ������⢮_�⢥��⢥����_���)
.begin
 �����_�⢥��⢥�����_��� := �����_�⢥��⢥�����_��� + 1;
end.
.fields
  ���ᨢ_�⢥��⢥����_���_��������� [�����_�⢥��⢥�����_���]
  ���ᨢ_�⢥��⢥����_���_���       [�����_�⢥��⢥�����_���]
.endfields

��@@@@@@@@@@@@@@@@@@@@@@@@@��  ____________________    ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                                (�������)                            (�.�.�������)
.}
.}
��
.EndForm

!=============================================================================
.LinkForm 'OsItog_09' Prototype is 'ositog'
!=============================================================================
.NameInList '����஢���� ��⨢�, �������� � ��ᯫ����'
.Group '�������� ��㯯� <<������⠭>>'
.p 60
.defo landscape
.var
  nRecKatOs   : comp;
  dSumAmort   : double;
  wLastMonth  : word;
  aMonthSum   : array[1..12] of double;
  currMonth   : word;
.endvar
#ResponsibleLinkVar
.create view loKaz09
as select *
from
  KatOs, NalGrOs, KatNalGr,
  Synonym KatNalGr KatNalGrHigher
where
((
  nRecKatOs         == KatOs.nRec          and
  KatOs.nRec        == NalGrOs.cKatOs      and
  NalGrOs.cKatNalGr == KatNalGr.nRec       and
  KatNalGr.cGroup   == KatNalGrHigher.nRec
))
;
.[h Skip
                                                              ���� @Np@
.]h
.{
#ResponsibleLinkInit(OsItog)
.Fields
CommonFormHeader
���_�
���_��
��⮤
�_����⥫�
����⥫�_�ய����
�����_��⮤�
��㯯�஢��
����஢��
!---------------- FilterOS
������
!---------------- GruppaOS
��⪠
if (�⮣�_����_�⮨����� <> 0, DoubleToStr(�⮣�_����_�⮨�����, ��ଠ�), '')
if (�⮣�_����_�⮨����� <> 0,
  if (�⮣�_����_����� <> 0, DoubleToStr(�⮣�_����_�����, ��ଠ�), ''),
  '')
if ((�⮣�_����_�⮨����� - �⮣�_����_�����) > 0,
  DoubleToStr((�⮣�_����_�⮨����� - �⮣�_����_�����), ��ଠ�),
  '')
if (�⮣�_����_�⮨�����_�_���訥 <> 0, DoubleToStr(�⮣�_����_�⮨�����_�_���訥, ��ଠ�), '')
if (�⮣�_����_�����_�_���訥 <> 0, DoubleToStr(�⮣�_����_�����_�_���訥, ��ଠ�), '')
if ((�⮣�_����_�⮨�����_�_���訥 - �⮣�_����_�����_�_���訥) > 0,
  DoubleToStr((�⮣�_����_�⮨�����_�_���訥 - �⮣�_����_�����_�_���訥), ��ଠ�),
  '')
!---------------- NameOS
if (���_�_⥪�饬_��ਮ��, '*'+����, ����)
if (longint(loKaz09.KatOs.DatEk)<>0,DateToStr(loKaz09.KatOs.DatEk, 'DD/MM/YYYY'),'')
loKaz09.KatNalGrHigher.Num
loKaz09.KatNalGr.Num
if (loKaz09.KatNalGr.NormAm<>0, Trim(DoubleToStr(loKaz09.KatNalGr.NormAm, '666')), '')
if (loKaz09.KatNalGr.NormAm<>0, Trim(DoubleToStr(loKaz09.KatNalGr.NormAm*2, '666')), '')
if (�⮨����� <> 0, DoubleToStr(�⮨�����, ��ଠ�), '')
if (dSumAmort <> 0, DoubleToStr(dSumAmort, ��ଠ�), '')
if ((�⮨����� - dSumAmort) <> 0, DoubleToStr((�⮨����� - dSumAmort), ��ଠ�), '')
if (longint(loKaz09.KatOs.DatV)<>0,DateToStr(loKaz09.KatOs.DatV, 'DD/MM/YYYY'),'')

����
if (longint(loKaz09.KatOs.DatEk)<>0,DateToStr(loKaz09.KatOs.DatEk, 'DD/MM/YYYY'),'')
loKaz09.KatNalGrHigher.Num
loKaz09.KatNalGr.Num
if (loKaz09.KatNalGr.NormAm<>0, Trim(DoubleToStr(loKaz09.KatNalGr.NormAm, '666')), '')
if (loKaz09.KatNalGr.NormAm<>0, Trim(DoubleToStr(loKaz09.KatNalGr.NormAm*2, '666')), '')
if (�⮨����� <> 0, DoubleToStr(�⮨�����, ��ଠ�), '')
if (dSumAmort <> 0, DoubleToStr(dSumAmort, ��ଠ�), '')
if ((�⮨����� - dSumAmort) <> 0, DoubleToStr((�⮨����� - dSumAmort), ��ଠ�), '')
if (longint(loKaz09.KatOs.DatV)<>0,DateToStr(loKaz09.KatOs.DatV, 'DD/MM/YYYY'),'')
!---------------- ItogOS
�⮣�
if (�⮣�_�⮨����� <> 0, DoubleToStr(�⮣�_�⮨�����, ��ଠ�), '')
if (�⮣�_�⮨����� <> 0,
  if (�⮣�_����� <> 0, DoubleToStr(�⮣�_�����, ��ଠ�), ''),
  '')
if ((�⮣�_�⮨����� - �⮣�_�����) > 0,
  DoubleToStr((�⮣�_�⮨����� - �⮣�_�����), ��ଠ�),
  '')
if (�⮣�_�⮨�����_�_���訥 <> 0, DoubleToStr(�⮣�_�⮨�����_�_���訥, ��ଠ�), '')
if (�⮣�_�����_�_���訥 <> 0, DoubleToStr(�⮣�_�����_�_���訥, ��ଠ�), '')
if ((�⮣�_�⮨�����_�_���訥 - �⮣�_�����_�_���訥) > 0,
  DoubleToStr((�⮣�_�⮨�����_�_���訥 - �⮣�_�����_�_���訥), ��ଠ�),
  '')

�_��⮬_�����_�_��ਮ��

.EndFields
��                                                            ���� 1
^
    ������               ����஢���� ��⨢�, �������� � ��ᯫ����
                             �� ��ਮ� � ^ �� ^

��⮤:                ^
�������� ������:     ^ (^) ^
��㯯�஢��:          ^
����஢��:           ^
�������:
.{ CheckEnter FilterOS3
 ^
.}
.{
.[h
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
 � N � �                          ������������                            � �   ���   � �  N   � �  N   � ��।��쭠� ��ਬ���- � �  �������   � �    �⮨�����     � �      �㬬�       � �    ����筠�    � �    ���
 �   � �                      䨪�஢����� ��⨢��                       � �  �����   � ���㯯� � ���- � �  ��ଠ   � ���� ��ଠ � �   ��ଠ    � �   ����㯨���    � � ����⨧�樮����  � �    �⮨�����     � �  �����
 �   � �                                                                  � �          � �      � ���㯯� �����⨧�- � �����⨧�- � � ����⨧�-  � �  䨪�஢������  � �   ���᫥���,    � �  䨪�஢�����   � �
 �   � �                                                                  � �          � �      � �      � � 樮����  � � 樮����  � �  樮����   � �     ��⨢��      � �    ���������    � �     ��⨢��      � �
 �   � �                                                                  � �          � �      � �      � ����᫥���� ����᫥���� � ���᫥��� � �                  � �      �����      � �      (I-J)       � �
 �   � �                                                                  � �          � �      � �      � �          � �   (%)    � �   (G*2)    � �                  � �      (I*H)       � �                  � �
A�   �B�                                                                  �C�          �D�      �E�      �F�          �G�          �H�            �I�                  �J�                  �K�                  �L�
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]h
.{ CheckEnter GruppaOS3
 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                                                                                                  &&&&&&&&&&&&&&&&&&   &&&&&&&&&&&&&&&&&&   &&&&&&&&&&&&&&&&&&
.{?Internal;(NeedSum1 and (���_����� <> 4 ));
                                                                                                                                                  (* &&&&&&&&&&&&&&&&&&   &&&&&&&&&&&&&&&&&&   &&&&&&&&&&&&&&&&&& )
!(* *)
.}
.}
.{ CheckEnter NameOS3
.begin
  wLastMonth := 0;
  dSumAmort := 0;
  nRecKatOs := KatOS_NRec;
  if (loKaz09.GetFirst KatOs <> tsOk) {};
  if (loKaz09.GetFirst NalGrOs <> tsOk) {};
  if (loKaz09.GetFirst KatNalGr <> tsOk) {};
  if (loKaz09.GetFirst KatNalGrHigher <> tsOk) {};

  aMonthSum[1]  := ������;
  aMonthSum[2]  := ���ࠫ�;
  aMonthSum[3]  := ����;
  aMonthSum[4]  := ��५�;
  aMonthSum[5]  := ���;
  aMonthSum[6]  := ���;
  aMonthSum[7]  := ���;
  aMonthSum[8]  := ������;
  aMonthSum[9]  := �������;
  aMonthSum[10] := ������;
  aMonthSum[11] := �����;
  aMonthSum[12] := �������;

  currMonth := 0;
  while (currMonth < 12)
    do
    {
      currMonth := currMonth + 1;
      if (aMonthSum[currMonth] <> 0) wLastMonth := currMonth;
    }//do

  currMonth := 0;
end.
.{while currMonth < 12
.begin
  currMonth := currMonth + 1;
  dSumAmort := dSumAmort + aMonthSum[currMonth];
end.
.{?Internal; (currMonth = wLastMonth)
        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@     @@@      @@@                    &&&           &&&        &&&&&&&&&&&&&&&&&&   &&&&&&&&&&&&&&&&&&   &&&&&&&&&&&&&&&&&&    @@@@@@@@@@
.}
.}
.{?Internal; (wLastMonth = 0)
        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@     @@@      @@@                    &&&           &&&        &&&&&&&&&&&&&&&&&&   &&&&&&&&&&&&&&&&&&   &&&&&&&&&&&&&&&&&&    @@@@@@@@@@
.}
.}
.{ CheckEnter ItogOS3
 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                                                                                                  &&&&&&&&&&&&&&&&&&   &&&&&&&&&&&&&&&&&&   &&&&&&&&&&&&&&&&&&
.{?Internal;(���_����� <> 4 );
                                                                                                                                                  (* &&&&&&&&&&&&&&&&&&   &&&&&&&&&&&&&&&&&&   &&&&&&&&&&&&&&&&&& )
.}
!(* *)
.}
.}
.{?Internal;(���_����� <> 4 );
          * - � ��⮬ ����� � ���⭮� ^
.}
.}��
.EndForm

#include OsItogExt.frn
