/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,97 ��௮��� ���������                      �
 � �஥��        : ���������                                                 �
 � �����祭��    : Used defined exceptions.                                  �
 � �⢥��⢥��� : ������� ����ᥩ ��ࣥ����                                 �
 � ��ࠬ����     : ���                                                       �
 ���������������������������������������������������������������������������ͼ
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