//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "��ࠢ����� ��⮬"
// ������⥪� �㭪権 : "�����஢�� ������ ���"
//------------------------------------------------------------------------------

#ifndef __FpLockVal_Inc__
#define __FpLockVal_Inc__

#ifdef  ComponentVersion
#component "F_FpBudget"
#endif//ComponentVersion

Type TFpLockLaluesParam = record
  wSegBit     : word;
  wSemMode    : word;
  cBudVar     : comp;
  wKodReg     : word;
  cStBud      : comp;
  cPeriod     : comp;
end;

#endif//__FpLockVal_Inc__
