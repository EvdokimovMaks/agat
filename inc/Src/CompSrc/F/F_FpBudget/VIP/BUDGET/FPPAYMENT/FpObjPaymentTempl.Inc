//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "��ࠢ����� ��⮬"
// ������ ��ꥪ� : "������ �ନ஢���� ���⥦��� ���㬥�⮢"
//------------------------------------------------------------------------------

#ifndef __FpObjPaymentTempl_Inc__
#define __FpObjPaymentTempl_Inc__

#include FpObjEMailPayTempl.Inc  // // ����⠭�� ��ꥪ� ObjFpEMailPayTempl

Const
  lcFpPayMaxSMACount  =  10;
end;

Const  
  lcFp_TitleTemplSpNpp  = 1;
end;   

Const
  AlgVarApostraph  = '%';
  UserKeyStBudVar  = 'KSt';

  OrgNRecVar       = 'cOrg';
  DogNRecVar       = 'cDog';
  OrgNameVar       = 'sOrg';
  DogNameVar       = 'sDog';

  KauNameVar       = 'sKau';

  DateDebtsVar     = 'Dt';
  SummDebtsVar     = 'Sum';

  NewStrVar        = 'chr(13)';
  TFInfoVar        = '_TFInfo_';

  TFStBudNameVar   = 'StName';
  TFStBudSummVar   = 'StSum';
end;

#endif//__FpObjPaymentTempl_Inc__
