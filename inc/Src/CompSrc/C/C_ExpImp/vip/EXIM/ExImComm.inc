/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,99 ��牆���罔� ���������                      �
 � 蹍オ�        : �����皋��                                                 �
 � C�痰ガ�       : ��甎�珥-━��珥                                            �
 � �ム瓱�        : 6.0                                                       �
 � ��Л�腑�┘    : ｡薑� ���痰��硅 筥�赳牀� � 蹣甎�珥� ━��珥� ���������     �
 � �癶モ痰▲��覃 : �カヨ�ア�� �.�.                                           �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
#include exImConst.inc

table  struct ExImDbfMy(
  NRec  : tNRec  "���ム ����瓱"
, DName : s80    "��� ����"
, lFileDbf : TSurrPtr
, DType : Word   "�┓ ����"
, DLen  : Word   "��┃� ����"
, DKolZ : Word   "����腑痰〓 Л����"
)
With Index
(
  ExImDbfMy01  =  NRec(Unique, Surrogate, Journal)
, ExImDbfMy02  =  DName
, ExImDbfMy03  =  DType
);
