//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 6.00 - �᭮��� �।�⢠
// �������� �������� �� (UIN 4704) � ��� (UIN 4706)
// ��������! ������� slk-���� � �ଠ� Excel
//------------------------------------------------------------------------------

#include Responsible.frn

#doc
�������� �������� �᭮���� �।�� � �����ਠ���� ��⨢��
#end


!=============================================================================
.LinkForm 'RepMovOS_01' Prototype is 'repmovos'
!=============================================================================
.NameInList '��������� ��������'
.Group '�������� �������� �� � ���'
.p 80
.defo portrait
#ResponsibleLinkVar
.[h
                                                              ���� @Np@
.]h
#ResponsibleLinkInit(repmovos)
.Fields
CommonFormHeader
��ꥪ�_����_த��
��⠑
��⠏�
.EndFields
��^

��                                  ��������� ������� � �������� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
��                                            c @@@@@@@@@@@ �� @@@@@@@@@@@��

.fields
��⮤
�_����⥫�
����⥫�_�ய����
�����_��⮤�
��㯯�஢��
����஢��
!---------------- FilterOS
������
!---------------- GruppaOS
����稭�
��⪠
�_�⮣�_����_��砫�_⥪
�_�⮣�_����_��室_⥪
�_�⮣�_����_��室_⥪
�_�⮣�_����_�����_⥪
!---------------- NameOS
����
�_��砫�_⥪
�_��室_⥪
�_��室_⥪
�_�����_⥪
!---------------- ItogOS
�⮣�
�_�⮣�_��砫�_⥪
�_�⮣�_��室_⥪
�_�⮣�_��室_⥪
�_�⮣�_�����_⥪
.EndFields
��⮤:                ^
�������� ������:     ^ (^) ^
��㯯�஢��:          ^
����஢��:           ^
�������:
.{ CheckEnter FilterOS2
�� ^��
.}
.{
.[h
����������������������������������������������������������������������������������������������������������������������������������������
                                                  �                         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                   ������������                   ������������������������������������������������������������������������������������
                                                  � ���⮪ �� ��砫�  �       ��室       �      ���室        �  ���⮪ �� �����
����������������������������������������������������������������������������������������������������������������������������������������
.]h
.{ CheckEnter GruppaOS2
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&��
.}
.{ CheckEnter NameOS2
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&��
.}
.{ CheckEnter ItogOS2
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&��
.}
.}


����壠���

�⢥��⢥��� �� ������
.EndForm

!=============================================================================
.LinkForm 'RepMovOS_02' Prototype is 'repmovos'
!=============================================================================
.NameInList '������� ��������� ��������'
.Group '�������� �������� �� � ���'
.p 80
.defo portrait
#ResponsibleLinkVar
.[h
                                                              ���� @Np@
.]h
.Var
  ��������� : double;
.endvar
.begin
  if ((����ன��_���� and 4) = 4)
    ��������� := 1;
  else
    ��������� := -1;
end.
#ResponsibleLinkInit(repmovos)
.Fields
CommonFormHeader
��ꥪ�_����_த��
��⠑
��⠏�
��⮤
�_����⥫�
����⥫�_�ய����
�����_��⮤�
��㯯�஢��
����஢��
!---------------- FilterOS
������
!� 蠯��
sNameField_IZNOS
sNameField_IZNOS
'�� ��ਮ� ����樨'
!---------------- GruppaOS
��⪠

if (isNeedSum, DoubleToStr(if(�⮣�_����_��室_��� - �⮣�_����_��室_��� < 0,
               (�⮣�_����_��室_��� - �⮣�_����_��室_���) * ���������, �⮣�_����_��室_��� - �⮣�_����_��室_���), ��ଠ�), '')

if (isNeedSum, DoubleToStr(if(�⮣�_����_��室_�����_��ਮ� - �⮣�_����_��室_�����_��ਮ� < 0,
               (�⮣�_����_��室_�����_��ਮ� - �⮣�_����_��室_�����_��ਮ�) * ���������,  �⮣�_����_��室_�����_��ਮ� - �⮣�_����_��室_�����_��ਮ�), ��ଠ�), '')

if (isNeedSum, DoubleToStr(if(�⮣�_����_��室_����� - �⮣�_����_��室_����� < 0,
               (�⮣�_����_��室_����� - �⮣�_����_��室_�����) * ���������,  �⮣�_����_��室_����� - �⮣�_����_��室_�����), ��ଠ�), '')

if (isNeedSum, DoubleToStr(if(�⮣�_����_��室_��� - �⮣�_����_��室_��� < 0,
               (�⮣�_����_��室_��� - �⮣�_����_��室_���) * ���������,  �⮣�_����_��室_��� - �⮣�_����_��室_���), ��ଠ�), '')
!---------------- NameOS
����

DoubleToStr(if((��砫�_��� + ��室_��� - ���室_��� + �����_���) < 0,
               (��砫�_��� + ��室_��� - ���室_��� + �����_���) * ���������, ��砫�_��� + ��室_��� - ���室_��� + �����_���), ��ଠ�)

DoubleToStr(if((��砫�_�����_��ਮ� + ��室_�����_��ਮ� - ���室_�����_��ਮ� + �����_�����_��ਮ�) < 0,
               (��砫�_�����_��ਮ� + ��室_�����_��ਮ� - ���室_�����_��ਮ� + �����_�����_��ਮ�) * ���������,  ��砫�_�����_��ਮ� + ��室_�����_��ਮ� - ���室_�����_��ਮ� + �����_�����_��ਮ�), ��ଠ�)

DoubleToStr(if((��砫�_����� + ��室_����� - ���室_����� + �����_�����) < 0,
               (��砫�_����� + ��室_����� - ���室_����� + �����_�����) * ���������,  ��砫�_����� + ��室_����� - ���室_����� + �����_�����), ��ଠ�)

DoubleToStr(if((��砫�_��� + ��室_��� - ���室_��� + �����_���) < 0,
               (��砫�_��� + ��室_��� - ���室_��� + �����_���) * ���������,  ��砫�_��� + ��室_��� - ���室_��� + �����_���), ��ଠ�)
!---------------- ItogOS
�⮣� + ' (�� ������ ��������)'

DoubleToStr(if((�⮣�_��室_��� - �⮣�_��室_���) < 0,
               (�⮣�_��室_��� - �⮣�_��室_���) * ���������,  �⮣�_��室_��� - �⮣�_��室_���), ��ଠ�)

DoubleToStr(if((�⮣�_��室_�����_��ਮ� - �⮣�_��室_�����_��ਮ�) < 0,
               (�⮣�_��室_�����_��ਮ� - �⮣�_��室_�����_��ਮ�) * ���������, �⮣�_��室_�����_��ਮ� - �⮣�_��室_�����_��ਮ�), ��ଠ�)

DoubleToStr(if((�⮣�_��室_����� - �⮣�_��室_�����) < 0,
               (�⮣�_��室_����� - �⮣�_��室_�����) * ���������, �⮣�_��室_����� - �⮣�_��室_�����), ��ଠ�)

DoubleToStr(if((�⮣�_��室_��� - �⮣�_��室_���) < 0,
               (�⮣�_��室_��� - �⮣�_��室_���) * ���������,  �⮣�_��室_��� - �⮣�_��室_���), ��ଠ�)
.EndFields
��
^

                              ������� ��������� �������� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                       c @@@@@@@@@@@ �� @@@@@@@@@@@

��⮤:                ^
�������� ������:     ^ (^) ^
��㯯�஢��:          ^
����஢��:           ^
�������:
.{ CheckEnter FilterOS2
 ^
.}
.{
.[h
��������������������������������������������������������������������������������������������������������������������������������������
                   ������������                   �     �⮨�����      �@~@@@@@@@@@@@@@@@@@@�@~@@@@@@@@@@@@@@@@@@�     ����筠�
                                                  �                    �@~@@@@@@@@@@@@@@@@@@�                    �     �⮨�����
��������������������������������������������������������������������������������������������������������������������������������������
.]h
.{ CheckEnter GruppaOS2
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&
.}
.{ CheckEnter NameOS2
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&
.}
.{ CheckEnter ItogOS2
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&
.}
.}


��壠���

�⢥��⢥��� �� ������
.EndForm

!=============================================================================
.LinkForm 'RepMovOS_03' Prototype is 'repmovos'
!=============================================================================
.NameInList '������� ���� 䨭��ᮢ�� १���⮢ �� ॠ����樨 ����⨧��㥬��� �����⢠'
.Group '�������� �������� �� � ��� ��� ��������� ॣ���஢'
.p 60
.defo landscape
.Var
  i: integer;
  sBlank: string;
.EndVar
#ResponsibleLinkVar
.[h
                                                              ���� @Np@
.]h
#ResponsibleLinkInit(repmovos)
.Fields
CommonFormHeader
��⠑
��⠏�
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
if (isNeedSum, DoubleToStr(�⮣�_����_�⮨�����_�த���,��ଠ�), '')
if (isNeedSum, DoubleToStr(�⮣�_����_��室_���,��ଠ�), '')
if (isNeedSum, DoubleToStr(�⮣�_����_��室_�����,��ଠ�), '')
if (isNeedSum, DoubleToStr(�⮣�_����_��室�_ॠ����樨,��ଠ�), '')
if (isNeedSum, DoubleToStr(�⮣�_����_��室_��� - �⮣�_����_��室_����� + �⮣�_����_��室�_ॠ����樨,��ଠ�), '')
if (isNeedSum, DoubleToStr(�⮣�_����_��室_��� - �⮣�_����_��室_����� + �⮣�_����_��室�_ॠ����樨 - �⮣�_����_�⮨�����_�த���,��ଠ�), '')
!---------------- NameOS
���_����樨
���_�����
������������_��
DoubleToStr(�⮨�����_�த���,��ଠ�)
DoubleToStr(���室_���,��ଠ�)
DoubleToStr(���室_�����,��ଠ�)
DoubleToStr(���室�_ॠ����樨,��ଠ�)
DoubleToStr(���室_��� - ���室_����� + ���室�_ॠ����樨,��ଠ�)
DoubleToStr(���室_��� - ���室_����� + ���室�_ॠ����樨 - �⮨�����_�த���,��ଠ�)
!---------------- ItogOS
�⮣�
DoubleToStr(�⮣�_�⮨�����_�த���,��ଠ�)
DoubleToStr(�⮣�_��室_���,��ଠ�)
DoubleToStr(�⮣�_��室_�����,��ଠ�)
DoubleToStr(�⮣�_��室�_ॠ����樨,��ଠ�)
DoubleToStr(�⮣�_��室_��� - �⮣�_��室_����� + �⮣�_��室�_ॠ����樨,��ଠ�)
DoubleToStr(�⮣�_��室_��� - �⮣�_��室_����� + �⮣�_��室�_ॠ����樨 - �⮣�_�⮨�����_�த���,��ଠ�)
.EndFields
��
��^

                        ��������� ������� ���������� ����������� �� ���������� ��������������� ���������
                                            c @@@@@@@@@@@ �� @@@@@@@@@@@��
.begin
  if Length(������������_�࣠����樨) <= 42
  {
    For (i := 1; i < 42 - (Length(������������_�࣠����樨)); i := i + 1)
       sBlank := sBlank + ' ';

    ������������_�࣠����樨 := ������������_�࣠����樨 + sBlank;
  }
end.

�� ^��
  ��(������������ �࣠����樨, �।�����)��

��⮤:                ^
�������� ������:     ^ (^) ^
��㯯�஢��:          ^
����஢��:           ^
�������:
.{ CheckEnter FilterOS2
 ^
.}
.{
.[h
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
   ���   � �������� ����� �          ������������           �    �⮨�����     �  ��ࢮ��砫쭠�   �      �㬬�       �      ���室�,     ����� ����稭� ��-�    ����稭� ��⪠ ��
 ����樨 �                   �                                 �     �த���      �    �⮨�����      �   ���᫥����    �    �易��� �    � 室��, �易���� �  ॠ����樨, �⭮������
          �                   �                                 �                  �                   �   ����⨧�樨    �ॠ����樥� ��ꥪ⠳ॠ����樥� ��ꥪ⠳� ��室�� ����� ��ਮ���
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
��.]h
.{ CheckEnter GruppaOS2
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��               &&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&        &&&&&&&&&&&&&&&&&&&&
.}
.{ CheckEnter NameOS2
@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&        &&&&&&&&&&&&&&&&&&&&
.}
.{ CheckEnter ItogOS2
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��               &&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&        &&&&&&&&&&&&&&&&&&&&
.}
.}
.{While (�����_�⢥��⢥�����_��� < ������⢮_�⢥��⢥����_���)
.begin
  �����_�⢥��⢥�����_��� := �����_�⢥��⢥�����_��� + 1;
end.
.fields
  ���ᨢ_�⢥��⢥����_���_��������� [�����_�⢥��⢥�����_���]
  ���ᨢ_�⢥��⢥����_���_���       [�����_�⢥��⢥�����_���]
.endfields

��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��    ____________________    ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                                          ��(�������)                                    (�.�.�������)��
.}
.EndForm


!=============================================================================
.LinkForm 'RepMovOS_04' Prototype is 'repmovos'
!=============================================================================
.NameInList '��������� �� � ��� ��� ��� 100.02'
.Group '�������� �������� �� � ��� <<������⠭>>'
.p 80
.defo portrait
.var
  Npp : word;
  �⮣�_��室�_���⪨           : double;
  �⮣�_��室�                  : double;
  �⮣�_���⪨                  : double;
.endvar
#ResponsibleLinkVar
#ResponsibleLinkInit(repmovos)
.Fields
CommonFormHeader
��ꥪ�_����_த��
��⠑
��⠏�
��⮤
�_����⥫�
����⥫�_�ய����
�����_��⮤�
��㯯�஢��
����஢��
!---------------- FilterOS
������
!---------------- GruppaOS
//��⪠
!---------------- NameOS
//����
Npp
������������_��
DoubleToStr(���室_���, ��ଠ�)
DoubleToStr(�⮨�����_�த���, ��ଠ�)
DoubleToStr(�⮨�����_�த��� - ���室_��� , ��ଠ�)
!---------------- ItogOS
//�⮣�
!-----------------�⮣�_��室�_���⪨
DoubleToStr(�⮣�_���室_���, ��ଠ�)
DoubleToStr(�⮣�_�⮨�����_�த���, ��ଠ�)
DoubleToStr(�⮣�_��室�_���⪨    , ��ଠ�)
!-----------------�⮣�_��室�
DoubleToStr(�⮣�_��室�           , ��ଠ�)
!-----------------�⮣�_���⪨
DoubleToStr(�⮣�_���⪨           , ��ଠ�)

.EndFields
^

 ��                    �� ���������� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                           ��( ��� ��� 100.02)��
                      ��c @@@@@@@@@@@ �� @@@@@@@@@@@��

����⮤:                ^
�������� ������:     ^ (^) ^
��㯯�஢��:          ^
����஢��:           ^
�������:��
.{ CheckEnter FilterOS2
�� ^��
.}
.{
.[h
�����������������������������������������������������������������������������������������������
����� �             ������������            �����筠� (�����-�  �⮨�����   �   ��室�,
��ப��                                     �ᮢ��) �⮨�����  �  ॠ����樨  �   ��⪨
�����������������������������������������������������������������������������������������������
.]h
.begin
  Npp := 0;
  �⮣�_��室�_���⪨           := 0;
  �⮣�_��室�                  := 0;
  �⮣�_���⪨                  := 0;
end.
.{ CheckEnter GruppaOS2
.}
.{ CheckEnter NameOS2
.{?INTERNAL; (Double(���室_���) <> 0) or (Double(�⮨�����_�த���) <> 0);
.begin
  Npp := Npp + 1;
  if ( Double(�⮨�����_�த���) > Double(���室_���) )
    �⮣�_��室� := �⮣�_��室� + (Double(�⮨�����_�த���) - Double(���室_���));
  else
    �⮣�_���⪨ := �⮣�_���⪨ - (Double(�⮨�����_�த���) - Double(���室_���));
end.
�� @~@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&&��
.}
.}
.{ CheckEnter ItogOS2
.}
.begin
  �⮣�_��室�_���⪨ := �⮣�_��室� - �⮣�_���⪨ ;
end.
�����������������������������������������������������������������������������������������������
       �⮣�                                 &&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&& &&&&&&&&&&&&&&��
��       �⮣� ��室��                                                           &&&&&&&&&&&&&&��
��       �⮣� ��⪮�                                                           &&&&&&&&&&&&&&��
.}

.EndForm
