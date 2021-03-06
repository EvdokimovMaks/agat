/*
 �============================================================================�
 �                     (c) ��௮��� ���������,                      �
 � �஥��        : ���������                                                  �
 � ���⥬�       : ��壠���᪨� ������                                       �
 � �����        : 8.1                                                        �
 � �����祭��    : ��⮪�� ���⮢ �� �����ᮢ� ࠧ��栬                     �
 L============================================================================-
*/
.set name = 'difflog'
.nameinlist '��⮪�� ���� �� ���ᮢ� ࠧ��栬 (������� �ଠ)'
.group 'diffrate'
.hide
.fields
 ProvDate PlanSch Formula mode mode1
 NastrName VidOb
 IshProvDate IshProvNo IshProvDeb IshProvKred IshProvCurs IshProvKodV IshProvSum IshProvSumV
 ProvDeb ProvKred  ProvCurs ProvSum
 ErrMessage
 BuhDate BuhNo BuhSum BuhName
.endfields
ProvDate ^
PlanSch  ^
Formula  ^
mode     ^
mode1  ^ 
.{
 NastrName �������� ����ன�� ^
 VidOb ��� ���� ���ᮢ�� ࠧ���^
.if isOb
.{
.if Line
.end
.if RollBeg
.end
.if DotLine
.end
.if Roll
.else
.if LastRoll
.else
.end
.end
  IshProvDate ^
  IshProvNo   ^
  IshProvDeb  ^
  IshProvKred ^
  IshProvCurs ^
  IshProvKodV ^
  IshProvSum  ^
  IshProvSumV ^
  ProvDeb  ^
  ProvKred ^
  ProvCurs ^
  ProvSum  ^
.if RollEnd
.end
.}
.end
.if isErr
ErrMessage  ^
.end
.if isBuh
BuhDate ^
BuhNo   ^
BuhSum  ^
BuhName ^
.end
.}
.endform

.linkform 'difflog_01' prototype is 'difflog'
.group 'diffrate'
.nameinlist '�������஢���� ��⮪�� ���� �� ���ᮢ� ࠧ��栬'
.defo landscape
.fields
 ProvDate
 PlanSch
 Formula
 mode  mode1
 NastrName VidOb
 IshProvDate IshProvNo IshProvDeb IshProvKred IshProvCurs IshProvKodV IshProvSum IshProvSumV
 ProvCurs ProvSum

 IshProvKred
 ProvDeb ProvKred  ProvCurs ProvSum

 IshProvDate IshProvNo IshProvDeb IshProvKred IshProvCurs IshProvKodV IshProvSum IshProvSumV
 ProvDeb ProvKred  ProvCurs ProvSum

 ErrMessage
 BuhDate BuhNo BuhSum BuhName
.endfields

��  ��                             ��  �� ��⮪�� ���⮢ �� ���ᮢ� ࠧ��栬��
                                     ^
 ^
�� �����㫠 ���� �㬬� ���ᮢ�� ࠧ����: ^
 ^^
.{
  ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
  �  ������ன��: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��@�
  � ����� ���ᮢ�� ࠧ���� ��:  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�
  ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
.if isOb
  ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ�
  ��                                             ���業������� �஢����                                                                �                             ��ନ஢����� �஢����                                  ��
  ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ�
  �����      � �����     �        �����              �            �।��          �    ����    ������ �  �㬬� � ���  ��㬬� � ����⥳           �����           �           �।��          �    ����    �  �㬬�  � ���   ��
  ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ�
.{
.if Line
  ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ�
.end
.if RollBeg
  ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ�
  ��                                                                  ��ࠡ�⪠ �஢���� � ���������� �����⨪��                                                                                                              ��
  ��� � � � � � � � � � � � � � � � � � � � � � � � � �� � � � � � � � � � � � � � � � � � � � ��� � � ��� � � � � � � ��� � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � ��� � � � � � � � Ĵ�
.end
.if DotLine
  ��� � � � � � � � � � � � � � � � � � � � � � � � � �� � � � � � � � � � � � � � � � �  � �� ��� � � ��� � � � � � � ��� � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � �� ��� � � � �  �� � Ĵ�
.end
.if Roll
  ��@@@@@@@@@@�@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@�&&&&&&&&&&&&�@@@@@@@�&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&�                                                       �&&&&&&&&&&&&�&&&&&&&&&&&&&&&&&��
.else
.if LastRoll
  ��� � � � � � � � � � � � � � � � � � � � � � � � � �� � � � � � � � � � � � � � � � �  � �� ��� � � ��� � � � � � � ��� � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � �� ��� � � � � � � � Ĵ�
  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                    �@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@�&&&&&&&&&&&&�&&&&&&&&&&&&&&&&&��
.else
  ��@@@@@@@@@@�@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@�&&&&&&&&&&&&�@@@@@@@�&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&�@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@�&&&&&&&&&&&&�&&&&&&&&&&&&&&&&&��
.end
.end
.if RollEnd
  ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ�
.end
.}
  ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ٳ
.end
.if isErr
  � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�
.end
.if isBuh
  ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ                               �
  ����                   ��ନ஢��� ����ࠢ����                                                                                                                                                 �                               �
  ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ                               �
  ��  ���     ������      �      �㬬�      �     ����ঠ���                                                                                                                                  �                               �
  ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ                               �
  ��@@@@@@@@@@@�@@@@@@@@@@@�&&&&&&&&&&&&&&&&&� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�                               �
  ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������                               �
.end
  ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.}
.endform��
