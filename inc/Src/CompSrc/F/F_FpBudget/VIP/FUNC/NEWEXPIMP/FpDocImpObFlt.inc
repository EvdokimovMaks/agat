//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "��ࠢ����� ��⮬"
// ���㠫�� ����䥩� : "����ன�� 䨫��� ��� ��⮪����"
//------------------------------------------------------------------------------


#ifndef _FPDOCIMPOBFLT_INC
#define _FPDOCIMPOBFLT_INC

type TDocImpFiltVal = record
      cTempl     : comp;       // 蠡���
      sNote      : string;     // �ਬ�砭��
      wStatus    : word;       // �����
      DatObLEq   : date;       // ��砫쭠� ���
      DatObGEq   : date;       // ����筠� ���
end;

Const
  BndTempl   = 1;
  BndNote    = 2;
  BndStatus  = 4;
  BndDOpLEq  = 8;
  BndDOpGeq  = 16;
end;


#endif//_FPDOCIMPOBFLT_INC
