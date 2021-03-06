//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "��ࠢ����� ��⮬"
// ���㠫�� ����䥩�: "��������� ⥪�饣� ⨯� ��ਮ��"
//------------------------------------------------------------------------------

#ifndef __FpChgTPer_Inc__
#define __FpChgTPer_Inc__

Const
  lc_Key_FpTP           = 'UPRFIN.FP.BASETPP';                    // ��� ��ਮ�� �����஢���� ���                     
  lc_Key_FpPP           = 'UPRFIN.FP.TEKPP';                      // ����騩 ��ਮ� �����஢����                          
  lc_Key_FpClosePP      = 'UPRFIN.FP.FPOBOROT.CLOSEPERIOD';       // ������� ��ਮ� �� 㬮�砭�� ��                      
  lc_Key_FpClosePPPlan  = 'UPRFIN.FP.FPOBOROT.CLOSEPLANPERIOD';   // ������� ��ਮ� �� ॣ����� "����" ��                
  lc_Key_FpClosePPFact  = 'UPRFIN.FP.FPOBOROT.CLOSEFACTPERIOD';   // ������� ��ਮ� �� ॣ����� "䠪�" ��                
  lc_Key_FpClosePPRezv  = 'UPRFIN.FP.FPOBOROT.CLOSEREZERVPERIOD'; // ������� ��ਮ� �� ॣ����� "१��" ��              
  lc_Key_FpClosePPBuhU  = 'UPRFIN.FP.FPOBOROT.CLOSEBUHPERIOD';    // ������� ��ਮ� �� ॣ����� "�� ����� ���.���" �� 
  lc_Key_PKTP           = 'UPRFIN.OFP.BUDGET.TPP';                // ��� ��ਮ�� ��� ��                               
end; // Const

Const
  lc_ChangeMode_IntUser =  0; // �������� ����ன�� ⮫쪮 ��������� ���짮��⥫�
  lc_ChangeMode_AllUser =  1; // �������� ����ன�� ���� ���짮��⥫� � ��� �뫠 ��⠭������
  lc_ChangeMode_SysTune =  2; // �������� ��⥬��� ����ன��
end; // Const

// �ਧ��� �����४⭮�� ����ன�� ���짮��⥫�
Const
  lc_UserTune_Correct   =  0; // ����ன�� ��⠭������ ���४⭮
  lc_UserTune_Warning   =  1; // ����ன�� ��⠭������ �� ���४⭮
end; // Const

// ���� �����塞�� ����஥�
Const
  lc_TuneBit_FpTP            =    1;  // ��� ��ਮ�� �����஢���� ���                    
  lc_TuneBit_FpPP            =    2;  // ����騩 ��ਮ� �����஢����                         
  lc_TuneBit_FpClosePP       =    4;  // ������� ��ਮ� �� 㬮�砭�� ��                     
  lc_TuneBit_FpClosePPPlan   =    8;  // ������� ��ਮ� �� ॣ����� "����" ��               
  lc_TuneBit_FpClosePPFact   =   16;  // ������� ��ਮ� �� ॣ����� "䠪�" ��               
  lc_TuneBit_FpClosePPRezv   =   32;  // ������� ��ਮ� �� ॣ����� "१��" ��             
  lc_TuneBit_FpClosePPBuhU   =   64;  // ������� ��ਮ� �� ॣ����� "�� ����� ���.���" ��
  lc_TuneBit_PKTP            =  128;  // ��� ��ਮ�� ��� ��                              
end; // Const

#endif//__FpChgTPer_Inc__
