// =============================================================================
//                                                     (c)  ��௮��� �����⨪�
// �����⨪� 7.11 - �ந�����⢥��� ������
// ���ᠭ�� ⠡����, �࠭�饩 ��६���� ���㦥��� � �� ���祭��
// =============================================================================

#ifndef __Def_EnvironmentStorage__
#define __Def_EnvironmentStorage__

#component "M_MnPlan"

Table STRUCT EnvironmentStorage "��६���� ���㦥���"
(
  Name : tName "������������ ��६�����",
  Value: tName "���祭�� ��६�����"
)
With Index
(
  EnvironmentStorage01 = Name (Unique)
);
#endif
