/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,2001 ��௮��� ���������                    �
 � �஥��        : ���������                                                 �
 � ���⥬�       : ����⨢�� ������                                        �
 � �����        : 5.74                                                      �
 � �����祭��    : ��������� �� �� ����� ���᪠ �� (���) (⠡���� �����)�
 � �⢥��⢥��� : ������� ����ᥩ ������쥢��                               �
 ���������������������������������������������������������������������������ͼ
*/
#ifndef __DELAYEDUKSREG_GD
#define __DELAYEDUKSREG_GD

// �६����� ⠡��� "���⢥�ᢨ� ��室�� � ��室��"
table struct stSpCompliance
(
  nRec    : comp
, cUKS    : comp
, VidDoc  : word
, cDoc    : comp
, cSpPos  : comp
, cOwner  : comp
, cMC     : comp
, cParty  : comp
, kol     : double
, cOtpEdSp: comp
, kolReg  : double
, kolStorn: double
, cOtpEd  : comp
, price   : double
, cParent : comp
, isSelected: boolean
)
with index
(
  stSpCompliance0 = nRec (Unique, Surrogate)
, stSpCompliance1 = cUKS + cDoc + cOwner
, stSpCompliance2 = cOwner
, stSpCompliance3 = cUKS + cParent + cSpPos
, stSpCompliance4 = cUKS + VidDoc + cDoc + cParent + cSpPos
);
// �६����� ⠡��� - �� ��� ॣ����樨 � �����
table struct stSchFact
(
  nRec: comp
, Name: string
, isSelected: boolean
)
with index
(
  stSchFact0 = nRec
, stSchFact1 = isSelected
);

#end