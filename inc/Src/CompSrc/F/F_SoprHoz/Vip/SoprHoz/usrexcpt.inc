/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,97 ��牆���罔� ���������                      �
 � 蹍オ�        : ���������                                                 �
 � ��Л�腑�┘    : Used defined exceptions.                                  �
 � �癶モ痰▲��覃 : ���ォ�� ��オ瓮� �ム�ゥ※�                                 �
 � �����モ琺     : �モ                                                       �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
#ifNdef _usrexcpt_inc_
#define _usrexcpt_inc_

 exception ExUserDef;
  exception ExTableNotFound(ExUserDef);
  exception ExUserTableNotFound(ExUserDef);
  exception ExSysTableNotFound(ExUserDef);
  exception ExUserEscape(ExUserDef);
  exception ExInterfaceNotFound(ExUserDef);

#endif //_usrexcpt_inc_