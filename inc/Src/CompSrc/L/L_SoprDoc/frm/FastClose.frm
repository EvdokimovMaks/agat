.set name='fastclose'
.hide
.fields
  RecSrc    : comp
  NumSrc
  DateSrc   : date
  DateOprSrc: date
  SummSrc   : double
  DescrSrc
  NotesSrc
  RecSN     : comp
  NumSN
  DateSN    : date
  DateOprSN : date
  SummSN    : double
  DescrSN
  RecKN     : comp
  NumKN
  DateKN    : date
  DateOprKN : date
  SummKN    : double
  DescrKN
  NotesKN
.endfields
.{
 ^ ^ ^ ^ ^ ^ ^
 ^ ^ ^ ^ ^ ^
 ^ ^ ^ ^ ^ ^ ^
.}
.endform


.linkform 'fastclose_01' prototype is fastclose
.nameinlist '��⮪�� ���४�஢�� ���㬥�⮢ ���᫥���'
#include format.frn
.fields
  CommonFormHeader
  NumSrc
  if (DateSrc = Date(0,0,0), '', DateToStr(DateSrc, 'DD/MM/YY'))
  if (DateoprSrc = Date(0,0,0), '', DateToStr(DateOprSrc, 'DD/MM/YY'))
  DescrSrc NotesSrc
  if (SummSrc = 0, '', DoubleToStr(SummSrc, Cena_Pr))

  NumSN
  if (DateSN  = Date(0,0,0), '', DateToStr(DateSN , 'DD/MM/YY'))
  if (DateOprSN  = Date(0,0,0), '', DateToStr(DateOprSN , 'DD/MM/YY'))
  DescrSN
  if (SummSN = 0, '', DoubleToStr(SummSN , Cena_Pr))

  NumKN
  if (DateKN  = Date(0,0,0), '', DateToStr(DateKN , 'DD/MM/YY'))
  if (DateOprKN  = Date(0,0,0), '', DateToStr(DateOprKN , 'DD/MM/YY'))
  DescrKN NotesKN
  if (SummKN = 0, '', DoubleToStr(SummKN , Cena_Pr))
.endfields
��
 ^
                                           � � � � � � � �   � � � � � � � � � �   � � � � � � � � � �
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
�                         ��室��  ���㬥��                            �                   ��୨���騩  ���㬥��                  �                      ���४����騩  ���㬥��                        �
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
�      �����     �  ���  �  ���  � ����. �  �����   �  �㬬� � ���  �      �����     �  ���  �  ���  � ����. �  �㬬� � ���  �     �����      �  ���  �  ���  � ����. �  �����   �  �㬬� � ��� �
�                �ᮧ����� �ᯮ��.�        �           �               �                �ᮧ����� �ᯮ��.�        �               �                �ᮧ����� �ᯮ��.�        �           �              �
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
.{
�@@@@@@@@@@@@@@@@�@@@@@@@@�@@@@@@@@�@@@@@@@@�@@@@@@@@@@@�&&&&&&&&&&&&&&&�@@@@@@@@@@@@@@@@�@@@@@@@@�@@@@@@@@�@@@@@@@@�&&&&&&&&&&&&&&&�@@@@@@@@@@@@@@@@�@@@@@@@@�@@@@@@@@�@@@@@@@@�@@@@@@@@@@@�&&&&&&&&&&&&&&�
.}
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������

.endform
