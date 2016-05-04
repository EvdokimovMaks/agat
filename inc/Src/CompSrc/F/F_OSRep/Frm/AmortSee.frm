//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.85 - �᭮��� �।�⢠
// �������� ������ �� ����⨧�樨 �� ��⮤�� ���
// ��������! ������� slk-���� � �ଠ� Excel
//------------------------------------------------------------------------------

#include FeeSigners.frn

#doc
�������� ������ �� ����⨧�樨 �� ��⮤�� ���
#end


//*******************************************************************
.linkform 'AmortSee01' prototype is 'AmortSee'
.nameinlist '�������� ������ �� ����⨧�樨 �� ��⮤�� ���'
.group '�������� ������ �� ����⨧�樨'
.p 60
.defo landscape
#FeeSigners_Os_LinkVar
.fields
  CommonFormHeader
  if (boGetTune('Rep.IsHeader'), sGetTune('MyOrg'), '')

  DateToStr(BegDate,'Mon YYYY')
  DateToStr(EndDate,'Month YYYY')

  ������

  fMetodName1
  fMetodName2

  //---------------------------------------------
  // 㧥�
  Node_Name

  DoubleToStr(double(Node_SIznM1), ��ଠ�_�㬬)
  DoubleToStr(double(Node_SIznM2), ��ଠ�_�㬬)

  DoubleToStr(double(Node_Raznost), ��ଠ�_�㬬)

  Node_ValName
  //---------------------------------------------
  // ����
  Leaf_Name

  Leaf_InvNumber // +
  Leaf_Period    // +

  DoubleToStr(double(Leaf_SIznM1), ��ଠ�_�㬬)
  Leaf_Algoritm1
  DoubleToStr(double(Leaf_SIznM2), ��ଠ�_�㬬)
  Leaf_Algoritm2

  DoubleToStr(double(Leaf_Raznost), ��ଠ�_�㬬)

  Leaf_ValName
  //---------------------------------------------

.endfields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                                      &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&��
��
��                                                                  �������� ������ �� ����⨧�樨 �� ��⮤�� �������
.{
                                                                     ���� ��ਮ� � ^ �� ^��
�������:
.{ AmortSee_Filter CheckEnter
 ^
.}
.{
.[H
                                                                                                                                                                                    ���� @np@

���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
                 ������������                ��������멳  ��ਮ�  �@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�      ��������     � �����
                                             �   �����   �          �������������������������������������������������������������������������������������������Ĵ                   �
                                             �           �          �       �����       �   ������ ���᫥���   �       �����       �   ������ ���᫥���   �                   �
                                             �           �          �                   �       ����⨧�樨       �                   �       ����⨧�樨       �                   �
���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]H
.{ AmortSee_Header CheckEnter
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                        &'&&&&&&&&&&&&&&&&&                           &'&&&&&&&&&&&&&&&&&                           &'&&&&&&&&&&&&&&&&& @@@@@@@��
.}
.{ AmortSee_Body CheckEnter
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@ @~@@@@@@@@ &'&&&&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&& @@@@@@@
.}
.{ AmortSee_Footer CheckEnter

.}
.{ AmortSee_Line CheckEnter
���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.}
.}
.[F
���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]F
.}

#FeeSIgners_Os_LinkInit(AmortSee)
.fields
  �।ᥤ�⥫�_���������
  �।ᥤ�⥫�_���
.endfields
 �।ᥤ�⥫� �����ᨨ: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ __________________________ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                           ���������                          �������                   ����஢�� ������

.{While (�����_�����ᠭ� < ������⢮_������_�����ᨨ) OR (�����_�����ᠭ� < 1)
.begin
  �����_�����ᠭ�++;
end.
.fields
  if (�����_�����ᠭ� = 1, '����� �����ᨨ:', '')
  if (�����_�����ᠭ� <= ������⢮_������_�����ᨨ, ���ᨢ_����_�����ᨨ_��������� [�����_�����ᠭ�], '')
  if (�����_�����ᠭ� <= ������⢮_������_�����ᨨ, ���ᨢ_����_�����ᨨ_���   [�����_�����ᠭ�], '')
.endfields
 @@@@@@@@@@@@@@@        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ __________________________ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                           ���������                          �������                   ����஢�� ������
.}

.endform

��//*******************************************************************
.linkform 'AmortSee02' prototype is 'AmortSee'
.nameinlist '����ﭭ�� � �६����� ࠧ��� ������ �� ����⨧�樨'
.group '�������� ������ �� ����⨧�樨 <<�����>>'
.p 60
.defo landscape
.var
  Node_VVRNachItog : double;
  Node_VVRPogItog  : double;
  Node_NVRNachItog : double;
  Node_NVRPogItog  : double;
.endvar
#FeeSigners_Os_LinkVar
.fields
  CommonFormHeader
  if (boGetTune('Rep.IsHeader'), sGetTune('MyOrg'), '')

  DateToStr(BegDate,'Mon YYYY')
  DateToStr(EndDate,'Month YYYY')

  ������

  SubStr(fMetodName1,1,19)
  SubStr(fMetodName2,1,19)

  //---------------------------------------------
  // 㧥�
  Node_Name

  DoubleToStr(double(Node_SIznM1), ��ଠ�_�㬬)
  DoubleToStr(double(Node_SIznM2), ��ଠ�_�㬬)

  DoubleToStr(double(Node_Raznost), ��ଠ�_�㬬)
  DoubleToStr(double(Node_PR     ), ��ଠ�_�㬬)
  DoubleToStr(double(Node_VVRNach), ��ଠ�_�㬬)
  DoubleToStr(double(Node_VVRPog ), ��ଠ�_�㬬)
  DoubleToStr(double(Node_NVRNach), ��ଠ�_�㬬)
  DoubleToStr(double(Node_NVRPog ), ��ଠ�_�㬬)
  Node_ValName
  if(Node_VVRNachItog = 0,'',DoubleToStr(Node_VVRNachItog, ��ଠ�_�㬬))
  if(Node_VVRPogItog  = 0,'',DoubleToStr(Node_VVRPogItog,  ��ଠ�_�㬬))
  if(Node_NVRNachItog = 0,'',DoubleToStr(Node_NVRNachItog, ��ଠ�_�㬬))
  if(Node_NVRPogItog  = 0,'',DoubleToStr(Node_NVRPogItog,  ��ଠ�_�㬬))
  //---------------------------------------------
  // ����
  Leaf_Name

  Leaf_InvNumber
  DateToStr(Leaf_Period,'MM.YYYY')

  DoubleToStr(double(Leaf_SIznM1), ��ଠ�_�㬬)
  DoubleToStr(double(Leaf_SIznM2), ��ଠ�_�㬬)

  DoubleToStr(double(Leaf_Raznost), ��ଠ�_�㬬)
  DoubleToStr(double(Leaf_PR     ), ��ଠ�_�㬬)
  DoubleToStr(double(Leaf_VVRNach), ��ଠ�_�㬬)
  DoubleToStr(double(Leaf_VVRPog ), ��ଠ�_�㬬)
  DoubleToStr(double(Leaf_NVRNach), ��ଠ�_�㬬)
  DoubleToStr(double(Leaf_NVRPog ), ��ଠ�_�㬬)

  Leaf_ValName
  //---------------------------------------------

.endfields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                                                                         &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&��

                                 ���������� � ࠧ���� ������ �� ����⨧�樨 �� ��⮤�� �����
.{
                                               ���� ��ਮ� � ^ �� ^��
���������:
.{ AmortSee_Filter CheckEnter
^
.}
.{
.[H
                                                                                                                                                                                                                       ���� @np@
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
              ������������                 ��������멳��ਮ� �@~@@@@@@@@@@@@@@@@@�@~@@@@@@@@@@@@@@@@@�     ��������     �    ����ﭭ��    �        ���⠥��� �६�����         �     ���������������� �६�����      ������
                                           �   �����   �       �                   �                   �                  �     ࠧ���      �               ࠧ���               �               ࠧ���               �
                                           �           �       �       �����       �       �����       �                  �                  ���������������������������������������������������������������������������Ĵ
                                           �           �       �                   �                   �                  �                  �    ���᫥���    �    ����襭��     �    ���᫥���    �    ����襭��     �
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]H
.{ AmortSee_Header CheckEnter
.begin
  if ((AdditionalParam AND 1) = 0)
  {
    var Znak: double;  Znak := 1;

    //  ��� �뫮 �.�. �ᥣ�� ����砫��� Znak:=1
    // Znak := 1.0;
    // if (Abs(Node_VVRNach) > 0.0)
    //  Znak := Round(Double(Node_VVRNach) / Double(Node_VVRNach));
    //  ��� �뫮 ��ࠢ����, �� ���ࠢ��쭮
    // Znak := if(Abs(Node_VVRNach) > 0.0, Sign(Node_VVRNach), 1.0);

    if (Double(Node_VVRNach) - Znak * Double(Node_VVRPog)) >= 0
    {
      Node_VVRNachItog := Double(Node_VVRNach) - Znak * Double(Node_VVRPog);
      Node_VVRPogItog  := 0;
    }
    else
    {
      Node_VVRNachItog := 0;
      Node_VVRPogItog  := Double(Node_VVRPog) - Znak * Double(Node_VVRNach);
    }

    // Znak := if(Abs(Node_NVRNach) > 0.0, Sign(Node_NVRNach), 1.0);

    if (Double(Node_NVRNach) - Znak * Double(Node_NVRPog)) >= 0
    {
      Node_NVRNachItog := Double(Node_NVRNach) - Znak * Double(Node_NVRPog);
      Node_NVRPogItog  := 0;
    }
    else
    {
      Node_NVRNachItog := 0;
      Node_NVRPogItog  := Double(Node_NVRPog) - Znak * Double(Node_NVRNach);
    }
  }
end.
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& @@@@@@
.{?Internal;(AdditionalParam AND 1) = 0);
                                                                                                                                        �㬬� &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&
.}
.}
.{ AmortSee_Body CheckEnter
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@ @~@@@@@ &'&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&& @@@@@@
.}
.{ AmortSee_Footer CheckEnter

.}
.{ AmortSee_Line CheckEnter
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.}
.}
.[F
�������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]F
.}��
��
#FeeSIgners_Os_LinkInit(AmortSee)
.fields
  �।ᥤ�⥫�_���������
  �।ᥤ�⥫�_���
.endfields
 �।ᥤ�⥫� �����ᨨ: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ __________________________ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                           ���������                          �������                   ����஢�� ������

.{While (�����_�����ᠭ� < ������⢮_������_�����ᨨ) OR (�����_�����ᠭ� < 1)
.begin
  �����_�����ᠭ�++;
end.
.fields
  if (�����_�����ᠭ� = 1, '����� �����ᨨ:', '')
  if (�����_�����ᠭ� <= ������⢮_������_�����ᨨ, ���ᨢ_����_�����ᨨ_��������� [�����_�����ᠭ�], '')
  if (�����_�����ᠭ� <= ������⢮_������_�����ᨨ, ���ᨢ_����_�����ᨨ_���   [�����_�����ᠭ�], '')
.endfields
 @@@@@@@@@@@@@@@        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ __________________________ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                           ���������                          �������                   ����஢�� ������
.}
��
.endform

//*******************************************************************

//*******************************************************************
.linkform 'AmortSee03' prototype is 'AmortSee'
.nameinlist '������ ࠧ��� ������ �� ����⨧�樨 �� ��⮤�� ���'
.group '������ ࠧ��� ������ �� ����⨧�樨'
.p 60
.defo landscape
.var
  MrkKatOS : TPtr;
  IndNo    : longint;
.endvar
#FeeSigners_Os_LinkVar
.fields
  CommonFormHeader
  if (boGetTune('Rep.IsHeader'), sGetTune('MyOrg'), '')

  DateToStr(BegDate,'Mon YYYY')
  DateToStr(EndDate,'Month YYYY')

  ������

  fMetodName1
  fMetodName2
.endfields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                                                                                          &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

                                                                       �������� ࠧ��� ������ �� ����⨧�樨 �� ��⮤�� �����
.{
.begin
  MrkKatOS := InitMarker('PrnReestr_ByRazn', 8, 100, 100, True);
  ClearMarker(MrkKatOS);
end.
                                                                                    ���� ��ਮ� � ^ �� ^��
�������:
.{ AmortSee_Filter CheckEnter
 ^
.}
�� - ��壠���᪨� ���, ��⮤ - @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
�� - �������� ���    , ��⮤ - @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
        �      �                         �    ��ࢮ��砫쭠�  �⮨�����    ������� ����� ��ࢮ��砫쭮��  �ப ���������  �   ����⨧��� �� ��ਮ�   �    �� ��砫� ��ਮ��    �               �� ��ਮ�              �    �� ����� ��ਮ��
        �      �                         �                                 �    �⮨������ �� ��ਮ�    ��ᯮ�짮�����(���)�                           �                         �                                      �
  ���  � ���. �      ������������       ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
  ����� �  �   �                         �                �                �              �             �         �        �             �             � ���⠥�� � ���������� � ���⠥�� � ���������� � ����ﭭ� � ���⠥�� � ����������
        �      �                         �       ��       �       ��       �      ���     �     ���     �    ��   �   ��   �      ��     �      ��     �  �६���� � ����� �� �  �६���� � ����� �� �  ࠧ����   �  �६���� � ����� ��
        �      �                         �                �                �              �             �         �        �             �             �  ࠧ����   � ����� ࠧ �  ࠧ����   � ����� ࠧ �            �  ࠧ����   � ����� ࠧ
        �      �                         �                �                �              �             �         �        �             �             �   (���)    � ���� (���) �   (���)    � ���� (���) �            �   (���)    � ���� (���)
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
    1   �   2  �            3            �        4       �        5       �       6      �       7     �    8    �    9   �      10     �      11     �      12    �     13     �      14    �     15     �     16     �     17     �     18
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{
.[H skip
.fields
  DateToStr(BegDate,'Mon YYYY')
  DateToStr(EndDate,'Month YYYY')
.endfields
                                                                  ������ ࠧ��� ������ �� ����⨧�樨 �� ��⮤�� ���
                                                                         �� ��ਮ� � ^ �� ^
                                                                                                                                                                                                           ���� @np@
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
    1   �   2  �            3            �        4       �        5       �       6      �       7     �    8    �    9   �      10     �      11     �      12    �     13     �      14    �     15     �     16     �     17     �     18
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]H
.{ AmortSee_Header CheckEnter
.}
.{ AmortSee_Body CheckEnter
.{?Internal;(Leaf_cKatOS <> comp(0) AND not SearchMarker(MrkKatOS, Leaf_cKatOS, IndNo));
.begin
  InsertMarker(MrkKatOS, Leaf_cKatOS);
end.
.fields
  if ( longint(Leaf_DateK) > 0, DateToStr(Leaf_DateK,'DD/MM/YY'), '' )
  Leaf_InvNumber
  Leaf_Name
  DoubleToStr(if (Param_wStoimInReestr = 1,Leaf_STOIM_CUR_1, Leaf_Stoim_1), ��ଠ�_�㬬)
  DoubleToStr(if (Param_wStoimInReestr = 1,Leaf_STOIM_CUR_2, Leaf_Stoim_2), ��ଠ�_�㬬)
  DoubleToStr(Leaf_VVR_Stoim, ��ଠ�_�㬬)
  DoubleToStr(Leaf_NVR_Stoim, ��ଠ�_�㬬)
  DoubleToStr(Leaf_SrokIsp1 , ��ଠ�_�㬬)
  DoubleToStr(Leaf_SrokIsp2 , ��ଠ�_�㬬)
  DoubleToStr(Leaf_SumIzn_1 , ��ଠ�_�㬬)
  DoubleToStr(Leaf_SumIzn_2 , ��ଠ�_�㬬)
  DoubleToStr(Leaf_VVR_Inp  , ��ଠ�_�㬬)
  DoubleToStr(Leaf_NVR_Inp  , ��ଠ�_�㬬)
  DoubleToStr(Leaf_VVR_Period, ��ଠ�_�㬬)
  DoubleToStr(Leaf_NVR_Period, ��ଠ�_�㬬)
  DoubleToStr(Leaf_PR_Period , ��ଠ�_�㬬)
  DoubleToStr((Leaf_VVR_Inp + Leaf_VVR_Period), ��ଠ�_�㬬)
  DoubleToStr((Leaf_NVR_Inp + Leaf_NVR_Period), ��ଠ�_�㬬)
.endfields
@@@@@@@@�@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@�&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&�&&&&&&&&&&&&&�&&&&&&&&&�&&&&&&&&�&&&&&&&&&&&&&�&&&&&&&&&&&&&�&&&&&&&&&&&&�&&&&&&&&&&&&�&&&&&&&&&&&&�&&&&&&&&&&&&�&&&&&&&&&&&&�&&&&&&&&&&&&�&&&&&&&&&&&&
.}
.}
.{ AmortSee_Footer CheckEnter
.}
.{ AmortSee_Line CheckEnter
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.}
.}
.begin
  DoneMarker(MrkKatOS, '');
end.
.[F
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]F
.}��
#FeeSIgners_Os_LinkInit(AmortSee)
.fields
  �।ᥤ�⥫�_���������
  �।ᥤ�⥫�_���
.endfields

�� �।ᥤ�⥫� �����ᨨ: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ __________________________ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                           ���������                          �������                   ����஢�� ������

.{While (�����_�����ᠭ� < ������⢮_������_�����ᨨ) OR (�����_�����ᠭ� < 1)
.begin
  �����_�����ᠭ�++;
end.
.fields
  if (�����_�����ᠭ� = 1, '����� �����ᨨ:', '')
  if (�����_�����ᠭ� <= ������⢮_������_�����ᨨ, ���ᨢ_����_�����ᨨ_��������� [�����_�����ᠭ�], '')
  if (�����_�����ᠭ� <= ������⢮_������_�����ᨨ, ���ᨢ_����_�����ᨨ_���   [�����_�����ᠭ�], '')
.endfields
 @@@@@@@@@@@@@@@        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ __________________________ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                           ���������                          �������                   ����஢�� ������
.}
��
.endform

//*******************************************************************
.linkform 'AmortSee04' prototype is 'AmortSee'
.nameinlist '������ ࠧ��� ������ �� ����⨧�樨 (᮪�饭��)'
.group '������ ࠧ��� ������ �� ����⨧�樨'
.p 60
.defo landscape
.var
  MrkKatOS : TPtr;
  IndNo    : longint;
.endvar
#FeeSigners_Os_LinkVar
.fields
  CommonFormHeader
  if (boGetTune('Rep.IsHeader'), sGetTune('MyOrg'), '')

  DateToStr(BegDate,'Mon YYYY')
  DateToStr(EndDate,'Month YYYY')

  ������

  fMetodName1
  fMetodName2
.endfields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                          &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

                                                 �������� ࠧ��� ������ �� ����⨧�樨 �� ��⮤�� �����
.{
.begin
  MrkKatOS := InitMarker('PrnReestr_ByRazn', 8, 100, 100, True);
  ClearMarker(MrkKatOS);
end.
                                                        ���� ��ਮ� � ^ �� ^��
�������:
.{ AmortSee_Filter CheckEnter
 ^
.}
�� - ��壠���᪨� ���, ��⮤ - @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
�� - �������� ���    , ��⮤ - @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
�����������������������������������������������������������������������������������������������������������������������������������������������������������������
        �             �                         �                       �                    �                �                �      ����筠� �⮨�����
  ���  � �������� �      ������������       �    ��ࢮ��砫쭠�     � ����ﭭ� ࠧ���� �   ���⠥��   ��������������������������������������������������
  ����� �    �����    �                         �    �⮨����� (��)     �                    �    �६����   �   �६����    �       ��       �        ��
        �             �                         �                       �                    �     ࠧ����    �    ࠧ����     �                �
        �             �                         �                       �                    �                �                �                �
        �             �                         �                       �                    �                �                �                �
�����������������������������������������������������������������������������������������������������������������������������������������������������������������
    1   �      2      �            3            �           4           �          5         �        6       �        7       �        8       �        9
�����������������������������������������������������������������������������������������������������������������������������������������������������������������
.{
.[H skip
.fields
  DateToStr(BegDate,'Mon YYYY')
  DateToStr(EndDate,'Month YYYY')
.endfields
                                                 ������ ࠧ��� ������ �� ����⨧�樨 �� ��⮤�� ���
                                                        �� ��ਮ� � ^ �� ^
                                                                                                                                                                                                      ���� @np@
�����������������������������������������������������������������������������������������������������������������������������������������������������������������
    1   �      2      �            3            �           4           �          5         �        6       �        7       �        8       �        9
�����������������������������������������������������������������������������������������������������������������������������������������������������������������
.]H
.{ AmortSee_Header CheckEnter
.}
.{ AmortSee_Body CheckEnter
.{?Internal;(Leaf_cKatOS <> comp(0) AND not SearchMarker(MrkKatOS, Leaf_cKatOS, IndNo));
.begin
  InsertMarker(MrkKatOS, Leaf_cKatOS);
end.
.fields
  if ( longint(Leaf_DateK) > 0, DateToStr(Leaf_DateK,'DD/MM/YY'), '' )
  Leaf_InvNumber
  Leaf_Name
  DoubleToStr(if (Param_wStoimInReestr = 1,Leaf_STOIM_CUR_1, Leaf_Stoim_1), ��ଠ�_�㬬)
  DoubleToStr(Leaf_PR_Period , ��ଠ�_�㬬)
  DoubleToStr(Leaf_VVR_Period, ��ଠ�_�㬬)
  DoubleToStr(Leaf_NVR_Period, ��ଠ�_�㬬)

  DoubleToStr(Leaf_OstSTOIM_1, ��ଠ�_�㬬)
  DoubleToStr(Leaf_OstSTOIM_2, ��ଠ�_�㬬)
.endfields
@@@@@@@@�@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@�&&&&&&&&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&
.}
.}
.{ AmortSee_Footer CheckEnter
.}
.{ AmortSee_Line CheckEnter
�����������������������������������������������������������������������������������������������������������������������������������������������������������������
.}
.}
.begin
  DoneMarker(MrkKatOS, '');
end.
.[F
�����������������������������������������������������������������������������������������������������������������������������������������������������������������
.]F
.}
��
��#FeeSIgners_Os_LinkInit(AmortSee)
.fields
  �।ᥤ�⥫�_���������
  �।ᥤ�⥫�_���
.endfields
 �।ᥤ�⥫� �����ᨨ: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ __________________________ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                           ���������                          �������                   ����஢�� ������

.{While (�����_�����ᠭ� < ������⢮_������_�����ᨨ) OR (�����_�����ᠭ� < 1)
.begin
  �����_�����ᠭ�++;
end.
.fields
  if (�����_�����ᠭ� = 1, '����� �����ᨨ:', '')
  if (�����_�����ᠭ� <= ������⢮_������_�����ᨨ, ���ᨢ_����_�����ᨨ_��������� [�����_�����ᠭ�], '')
  if (�����_�����ᠭ� <= ������⢮_������_�����ᨨ, ���ᨢ_����_�����ᨨ_���   [�����_�����ᠭ�], '')
.endfields
 @@@@@@@@@@@@@@@        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ __________________________ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                           ���������                          �������                   ����஢�� ������
.}
��
.endform