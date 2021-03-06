//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "��ࠢ����� ��⮬"
// ������ ��ꥪ� : "����ன�� �।�⠢����� � �����⬮�"
//------------------------------------------------------------------------------
                                            
#ifndef __FpOCmp_Inc__
#define __FpOCmp_Inc__

const
  lc_FpCmpTune_cTopRec_Analiz_FpBudget =  0;
  lc_FpCmpTune_cTopRec_Analiz_OfpLimit = 10;
  lc_FpCmpTune_cTopRec_Algorithm_STD   =  1;
  lc_FpCmpTune_cTopRec_Algorithm_UPO   =  2;
end;

const
  AlgVarApostraph  = '%';
  UserAlgColVar    = 'C';
  UserAlgArgVar    = 'A';
  UserAlgSumVar    = 'Sum';
  UserAlgKeyAn     = 'cKeyAn';

  UserAlgBudget    = 'cBudget'   ;  // ���
  UserAlgBudCO     = 'cBudCO'    ;  // �� ���                
  UserAlgBudPP     = 'cBudPP'    ;  // ��ਮ� ���            
                                                                 
  UserAlgBudVar    = 'cBudVar'   ;  // ����� ���             
  UserAlgVariant   = 'cVariant'  ;  // ��ਠ�� ���           
  UserAlgBudStage  = 'sBudStage' ;  // �⠤�� ��⭮�� �����
  UserAlgKodReg    = 'wKodReg'   ;  // ��� ॣ���� ���        
                                                                 
  UserAlgStBud     = 'cStBud'    ;  // �����                    
  UserAlgPeriod    = 'cPeriod'   ;  // ��ਮ�                    
  UserAlgAnMean    = 'cAn'       ;  // ���祭�� �����⨪�

  UserAlgAnconstMean   = 'cAnconst'  ;  // ���⠭� ���祭�� �����⨪�
end;

const
  NameAlgNewLine  = '+';
  NameAlgCO       = '%CO%';
  NameAlgPP       = '%PP%';
  NameAlgReg      = '%Reg%';
  NameAlgVar      = '%Var%';
  NameAlgStg      = '%Stg%';
end;

const
  lc_FpCmpColTune_CulcPeriodMode       : word = 0;
  lc_FpCmpColTune_ArgPeriodMode        : word = 1;
  lc_FpCmpColTune_FirstValidPeriodMode : word = 2;
  lc_FpCmpColTune_DefinePeriodMode     : word = 3;
  lc_FpCmpColTune_HistoryPeriodMode    : word = 4;
end;

const
  lc_FpCmpColTune_AlgAddModeBit = 1;
  lc_FpCmpColTune_AlgDimModeBit = 2;
  lc_FpCmpColTune_AlgNFNModeBit = 4;
end;

const
  lcFpCulCmp_IsAlgBit      = 1;
  lcFpCulCmp_IsStatBit     = 2;
  lcFpCulCmp_OkReCountBit  = 4;
  lcFpCulCmp_NotExistBit   = 8;
end;

const
  lcKatExpr_PerSh = 1;
  lcKatExpr_PerS1 = 1;
  lcKatExpr_PerS2 = 2;

  lcKatExpr_Crit  = 2;
  lcKatExpr_RplAn = 3;

  lcKatExpr_MnXLT = 0;
end;

const
  lc_RepBudAnalizXLSID = 'F_FpBudget\REPXLT\FpRepBudAnaliz';
end;

const
  lc_FpCmpColTune_IgnoreCOBit = 1;
  lc_FpCmpColTune_IgnorePPBit = 2;
end;

const
  // ������ ��⮢
  // ���� ��ਡ�⮢ "��ࠬ���� ����᪠"
  lc_FpCmpColTuneAttrBit_IsEditCopiesList    : word = 1;  // ।���஢��� ᯨ᮪ �����
  lc_FpCmpColTuneAttrBit_IsViewZeroValue     : word = 2;  // �뢮���� �㫥�� ���祭��
  lc_FpCmpColTuneAttrBit_IsPossibleEditValue : word = 4;  // ����������� ।���஢����
  lc_FpCmpColTuneAttrBit_IsViewOnlyLeafAn    : word = 8;  // ��뢠�� ��ॣ��� �����⨪
end; // canst

#endif//__FpOCmp_Inc__
