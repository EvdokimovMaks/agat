//-----------------------------------------------------------------------------------
//                                                           (c) ��௮��� ���������
// �����⨪� 5.00 - ����
// �������� ������஢����
//-----------------------------------------------------------------------------------

#doc
�������� ������஢����.
#end
.set name = 'VedDeponir'
.nameinlist '������� �ଠ'
.hide
.fields
CurDate : date
GlavBuh
OwnOrgName OwnOrgOKPO
c0p20 c0p21
c0p1 c0p2 c0p3 : date c0p3n c0p4 : date c0p5 : date c0p6 c0p8
c0p9n c0p9 c0p10 c0p11 : date c0p12 : date c0p13 : date PVDay PVMonth PVYear c0p14
debet kredit
c1p1 c1p2 c1p3 c1p4 SpPodr
.endfields
! ⥪��� ���
CurDate ^
! �� ��⥬��� ����ன��
GlavBuh ������ ��壠��� ^
! �� ᮡ�⢥���� �࣠����樨
OwnOrgName ������������ ^
OwnOrgOKPO ����  ^
! �� ����
c0p20   Kassa    ^
c0p21   Kassir   ^
.{CheckEnter
! �� �������� ������஢����
c0p1    NoDoc    ^
c0p2    Name     ^
c0p3    DForm    ^
c0p3n   DForm � ��ப� ^
c0p4    DataN    ^
c0p5    DatOk    ^
c0p6    ���ࠧ�������  ^
c0p8    Summa    ^
! �� ���⥦��� ��������
c0p9n   ᮡ࠭��� ���  ^
c0p9    NoDoc    ^
c0p10   Name     ^
c0p11   DForm    ^
c0p12   DataN    ^
c0p13   DatOk    ^
PVDay   ������ ����  ^
PVMonth ������ ����� ^
PVYear  ������ ���   ^
c0p14   Summa    ^
! ����� � �।��
debet   ��� �� ������     ^
kredit  ��� �� �।���    ^
! �� ����� �������� ������஢����
.{
c1p1    N��    ^
c1p2    TabN   ^
c1p3    Fio    ^
c1p4    SumUd  ^
SpPodr  ���ࠧ�������      ^
.if FinalPass��
����������������������������������������������������������������������������������������������������������������������������������
                                                                                                        �⮣�   �
                                                                                                                ������������������
��.else��
����������������������������������������������������������������������������������������������������������������������������������
��.end
.}
.}
.endform

!==============================================================================

.linkform 'VedDeponir_01' prototype is 'VedDeponir'
.group '��������� ������஢����'
.nameinlist '��������� ������஢����'
.fields
CommonFormHeader
c0p1 c0p3n c0p2 c0p10 c0p9n
c1p1 c1p2 c1p3 c1p4
c0p8 
c0p21 GlavBuh
.endfields
.{CheckEnter
��^
                �������� ���뤠���� ��ࠡ�⭮� ����� � ^��
                @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ���� ���⥦��� ���������� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 �������������������������������������������������������������������������������
   �  �������� �           �������, ���, ����⢮            �     �㬬�
  �/� �  �����   �                                             �
 �������������������������������������������������������������������������������
.{
 &&&& � &&&&&&&& � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ � &'&&&&&&&&&&&&
��.if FinalPass��
�� �������������������������������������������������������������������������������
��                                       ����� �� ���������      &'&&&&&&&&&&&&&&��
��.else��
��.end
��.}

��������� @@@@@@@@@@@@@@@@@@@@@@@@ �������� ��壠����� @@@@@@@@@@@@@@@@@@@@@@@@��


.}
.endform

!==============================================================================

.linkform 'VedDeponir_02' prototype is 'VedDeponir'
.group '��������� ������஢����'
.nameinlist '������ ������஢����� �㬬'
.defo portrait
.p 80
.fields
c0p3n
CurDate
OwnOrgName
OwnOrgOKPO
c0p6
debet kredit
SpPodr
c0p9
c1p3
c1p2
c1p4
c0p8
GlavBuh c0p21
.endfields
.{CheckEnter
��                            ������ �������������� ������
��                                                                                                                 ���������������Ŀ��
��                          @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                       �      ����     ���
��                                                                                                                 ���������������Ĵ
                                                                                                   ��ଠ �� ���� �    0504047    �
                                                                                                                 ���������������Ĵ
                                                                                                            ��� �@~@@@@@@@@@@@@@�
                                                                                                                 ���������������Ĵ
��०����� ��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��  �� ���� �@~@@@@@@@@@@@@@�
                                                                                                                 ���������������Ĵ
������୮� ���ࠧ������� ��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��          �               �
                                                                                                                 ���������������Ĵ
������ ����७��: ��                                                                                   �� ���� �      383      �
                                                                                                                 �����������������
                                ������������������������������Ŀ                                  ������������������������������Ŀ
                    ����� ��� �@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@�                     �।�� ��� �@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@�
                                ��������������������������������                                  ��������������������������������
����������������������������������������������������������������������������������������������������������������������������������
            ������୮�             �       �����        �                                          � ������� �
           ���ࠧ�������            �     ���⥦���      �          �������, ���, ����⢮          �   �����   �     �㬬�
                                    �     ��������      �                                          �           �
����������������������������������������������������������������������������������������������������������������������������������
                 1                  �         2          �                    3                     �     4     �        5
����������������������������������������������������������������������������������������������������������������������������������
.{
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@~@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@~@@@@@@@@@�&&&&&&&&&&&&&&&&&
.if FinalPass
����������������������������������������������������������������������������������������������������������������������������������
                                                                                                        �⮣�   �&&&&&&&&&&&&&&&&&
                                                                                                                ������������������
.else
����������������������������������������������������������������������������������������������������������������������������������
.end
.}
������ ��壠���  _________________  ��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                       (�������)          (����஢�� ������)                    "______"  _________________________  20 ___ �.

�����             _________________  ��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@������
                       (�������)          (����஢�� ������)

.}
.endform
