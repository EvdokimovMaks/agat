/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 2001 ��௮��� ���������                         �
 � �஥��        : ���������                                                 �
 � ���⥬�       : �ࠢ����� ����ᠬ�                                      �
 � �����        : 7.10                                                      �
 � �����祭��    : ������ ���������� ��� 29 �����⬠ ������ �������       �
 � �⢥��⢥��� : ����室 ����਩ �������஢��                             �
 � ��ࠬ����     : ��                                                        �
 ���������������������������������������������������������������������������ͼ
*/

Table STRUCT ClaimList "���᮪ �����塞�� ����権"
(
  picked        : word,
  PrMc          : word,
  cMcUsl        : comp,
  cOtpEd        : comp,
  Kol           : double,
  Kol_From      : double,
  Kol_To        : double,
  cClaimFrom    : comp,
  cClaimTo      : comp
)
With Index
(
  ClaimList01 = PrMc + cMcUsl,
  ClaimList02 = cClaimFrom
)
;