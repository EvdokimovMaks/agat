/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,2001 ��牆���罔� ���������                    �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : ｯム�皋↓覃 ���矣�                                        �
 � �ム瓱�        : 5.74                                                      �
 � ��Л�腑�┘    : �ィ�痰��罔� �� �� ����覓 �皴竅�� �� (���) (��゛�肓 ���閧�)�
 � �癶モ痰▲��覃 : ���ウ�� ��オ瓮� �キ��れア��                               �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
#ifndef __DELAYEDUKSREG_GD
#define __DELAYEDUKSREG_GD

// ∇ガキ��� ��゛��� "���癶モ瓣┘ �爬絎ぎ� � ��痳�ぎ�"
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
// ∇ガキ��� ��゛��� - �� か� 爛��痰��罔� � ��┌�
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