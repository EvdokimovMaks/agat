/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 04/16/2004 ��௮��� ���������                   �
 � �஥��        : ���������                                                 �
 � ���⥬�       : ����⨢�� ������                                        �
 � �����        : 8.0                                                       �
 � �����祭��    : ���ம�।������ ��� ࠡ��� � ��������⮩ L_SF            �
 � �⢥��⢥��� : ������� ����ᥩ ������쥢��                               �
 ���������������������������������������������������������������������������ͼ
*/
#ifndef _SCHMACROS_INC
#define _SCHMACROS_INC

#define _zero 0.0001

// countries
#define _isKazakhstan (wGetTune('Country') = ccKaz)

// table navigation
#declare _getFast(table_)
(GetFirst FASTFIRSTROW #table_ = tsOk)
#end

#declare _getFast_nRec(table_, nRec_)
(GetFirst FASTFIRSTROW #table_ where (( #nRec_ == #table_.nRec )) = tsOk)
#end

#declare _getFastWhere(table_, where_)
(GetFirst FASTFIRSTROW #table_ where (( #where_ )) = tsOk)
#end

#end