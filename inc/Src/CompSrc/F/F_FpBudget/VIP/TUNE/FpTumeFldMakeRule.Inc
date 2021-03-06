//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.1 - ����� "��ࠢ����� ��⮬"
// �㭪樮��� ����஥� ��� �ନ஢���� �����
//------------------------------------------------------------------------------

#ifndef __FpTumeFldMakeRule_Inc__
#define __FpTumeFldMakeRule_Inc__

const
  lc_TuneAutoFld_Not : word = 0;  // ���祭�� ����ன�� = ���
  lc_TuneAutoFld_Yes : word = 1;  // ���祭�� ����ன�� = ��

  lc_TuneAutoFld_Dlm : string = '';  // ࠧ����⥫� � ���� "��� � ����娨" �� 㬮�砭��

  // ID ����஥� ��� �ନ஢���� �����
  lc_TuneAutoFldID = 'UprFin.FP.AUTOFIELD';

  // ID ����஥� "���� ���"
  lc_TuneAutoFldID_SB = lc_TuneAutoFldID+'.STBUD';
  lc_TuneAutoFldID_SB_LevelCode = lc_TuneAutoFldID_SB+'.LevelCode';  // ��⮬���᪮� �ନ஢���� ���� "��� �� �஢��"
  lc_TuneAutoFldID_SB_Hier_Code = lc_TuneAutoFldID_SB+'.Hier_Code';  // ��⮬���᪮� �ନ஢���� ���� "��� � ����娨"
  lc_TuneAutoFldID_SB_DelimCode = lc_TuneAutoFldID_SB+'.DelimCode';  // �ᯮ��㥬� ࠧ����⥫� � ���� "��� � ����娨"

  // ID ����஥� "������ �⢥��⢥�����"
  lc_TuneAutoFldID_CO = lc_TuneAutoFldID+'.CO';
  lc_TuneAutoFldID_CO_LevelCode = lc_TuneAutoFldID_CO+'.LevelCode';  // ��⮬���᪮� �ନ஢���� ���� "��� �� �஢��"
end; //const

#endif//__FpTumeFldMakeRule_Inc__
