//******************************************************************************
//                                                      (c) ��௮��� ���������
// ��������� 7.12 �ந�����⢥��� ������/����䨪�樨 �த�⮢
//                ���ᠭ�� ⠡����, �࠭�饩�� ��६���� ���㦥��� JavaScript
//******************************************************************************

#ifndef EnviromentEx_Inc

#define EnviromentEx_Inc

Table STRUCT EnvironmentExSt "��६���� ���㦥���"
(
  sParName      : tName     "������������ ��ࠬ���",
  wParType      : word      "��� ���㬥��",
  cParValue     : comp      "��뫪� �� ������ ���㬥��",
  chSeparator   : char      "ࠧ���⥫� wParType � cParValue"
)

With Index
(
  EnvironmentExSt01 = sParName (Unique)
)
;

#endif
