/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 04/16/2004 ��牆���罔� ���������                   �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : ｯム�皋↓覃 ���矣�                                        �
 � �ム瓱�        : 8.0                                                       �
 � ��Л�腑�┘    : ���牀��爛ぅ�キ�� か� ��｀硅 � ������キ皰� L_SF            �
 � �癶モ痰▲��覃 : ���ウ�� ��オ瓮� �キ��れア��                               �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
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
