
// � ��ࢮ� ���窥 �� ��஬ �⫠��� ifndef �� �ࠡ�⠥�
#ifndef __AMORTSET_INC__
#define __AMORTSET_INC__

const
  // 䨫���
  cgFilter_Podr   = cgBit00; // ���ࠧ�������
  cgFilter_Mol    = cgBit01; // ���
  cgFilter_Direct = cgBit02; // �㬬� ࠧ����

  cgFilterOs_Okof     = cgBit00;
  cgFilterOs_Grup     = cgBit01;
  cgFilterOs_Vid      = cgBit02;
  cgFilterOs_Norma    = cgBit03;
  cgFilterOs_Isp      = cgBit04;
  cgFilterOs_Metod    = cgBit05;
  cgFilterOs_Oper     = cgBit06;
  cgFilterOs_Tip      = cgBit07;
  cgFilterOs_ExClass  = cgBit08;
  cgFilterOs_KatOs    = cgBit09;
  cgFilterOs_GrAm     = cgBit10;
  cgFilterOs_PrSb     = cgBit11;
  cgFilterOs_FpCO     = cgBit12;
  cgFilterOs_GroupMC  = cgBit13;

  cgFilterNma_Okof     = cgBit00;
  cgFilterNma_Vid      = cgBit01;
  cgFilterNma_Norma    = cgBit02;
  cgFilterNma_Isp      = cgBit03;
  cgFilterNma_Metod    = cgBit04;
  cgFilterNma_Oper     = cgBit05;
  cgFilterNma_ExClass  = cgBit06;
  cgFilterNma_KatOs    = cgBit07;
  cgFilterNma_GrAm     = cgBit08;
  cgFilterNma_PrSb     = cgBit09;
  cgFilterNma_FpCO     = cgBit10;

  cgFilterOs_NameOs   = cgBit00;
  cgFilterOs_InNum    = cgBit01;
  cgFilterOs_ZavNom   = cgBit02;
  cgFilterOs_PsNum    = cgBit03;
  cgFilterOs_NameIzg  = cgBit04;
  cgFilterOs_TipMark  = cgBit05;
  cgFilterOs_BarKod   = cgBit06;
  cgFilterOs_Kod      = cgBit07;
  cgFilterOs_OstStoim = cgBit08;
  cgFilterOs_SrokIsp  = cgBit09;
  cgFilterOs_NalDrag  = cgBit10;
  cgFilterOs_IspPs    = cgBit11;
  cgFilterOs_IspCur   = cgBit12;
  cgFilterOs_OstSrok  = cgBit13;
  cgFilterOs_PoprKoef = cgBit14;

  cgFilterNma_NameOs   = cgBit00;
  cgFilterNma_InNum    = cgBit01;
  cgFilterNma_ZavNom   = cgBit02;
  cgFilterNma_PsNum    = cgBit03;
  cgFilterNma_NameIzg  = cgBit04;
  cgFilterNma_TipMark  = cgBit05;
  cgFilterNma_OstStoim = cgBit06;
  cgFilterNma_SrokIsp  = cgBit07;
  cgFilterNma_IspPs    = cgBit08;
  cgFilterNma_IspCur   = cgBit09;
  cgFilterNma_OstSrok  = cgBit10;
  cgFilterNma_PoprKoef = cgBit11;

  cgFilter_GodV     = cgBit00;
  cgFilter_DatEk    = cgBit01;
  cgFilter_DatOk    = cgBit02;
  cgFilter_DatV     = cgBit03;
  cgFilter_DatGar   = cgBit04;

  cgFilter_Stoim    = cgBit00;
  cgFilter_SumIzn   = cgBit01;
  cgFilter_SIznM    = cgBit02;

  // ��㯯�஢��
  cgLevel_KatOs      = 1; //'������ୠ� ����窠'
  cgLevel_KatPodr    = 2; //'���ࠧ�������'
  cgLevel_VidNorma   = 3; //'���'
  cgLevel_OtchPeriod = 4; //'����� ��ਮ�'
  cgLevel_cOKOF      = 5; // ��� ��㯯�஢�� �� ����
  cgLevel_cGrup      = 6; // ��㯯� �᭮���� �।��
  cgLevel_cNorma     = 7; // ��� ���� ����⨧�樨
  cgLevel_cIsp       = 8; // �ᯮ�짮����� ��
  cgLevel_Mol        = 9; // ���
  cgLevel_cGrAm      = 10;// ����⨧�樮���� ��㯯�
  cgLevel_cKauReff   = 11; //���譨� ���
  cgLevel_cHozOper   = 12;// ������� 宧��⢥���� ������ �� ���᫥��� ����⨧�樨
  cgLevel_cPrSb      = 13;// �ਧ��� ᮡ�⢥�����
  cgLevel_cCO        = 14;// ����� �⢥��⢥�����
  cgLevel_cGroupMC   = 15;// ��㯯� ��
  cgLevel_cKatNalGr   = 29;// ��������� ��㯯�

!  cgLevel_Year       = 41; // ���
!  cgLevel_HalfYear   = 42; // ���㣮���
!  cgLevel_Quartal    = 43; // ����⠫
!  cgLevel_Month      = 44; // �����
  // �������⥫�� ��ࠬ����
  cgDopParam_AddPrefix   = cgBit00;
  cgDopParam_TotalAmount = cgBit01;// �⮨����� �ࠪ���⨪� �� ��饥 ������⢮

  // ��� ��㯯�஢�� �� ���⭮�� ��ਮ��
  cgGrp_Year     = cgBit00;
  cgGrp_HalfYear = cgBit01;
  cgGrp_Quartal  = cgBit02;
  cgGrp_Month    = cgBit03;

  // �ଠ� �㬬 �� 㬮�砭��
  cgSumDefFormat = '\2p[|-]3666''666''666''666''666.88';

  // �㬬�
  // ��室�� ��⮤ ���
  cgSum1_SIznM    =  1; // � ����� ���㬥��
  cgSum1_Stoim    =  2; //
  cgSum1_SumIzn   =  3; //
  cgSum1_SIznMTr  = 11; // � ����� ��ॢ�
  cgSum1_StoimTr  = 12; //
  cgSum1_SumIznTr = 13; //
  // ��⮤ ��� ��� �ࠢ�����
  cgSum2_SIznM    =  4; // � ����� ���㬥��
  cgSum2_Stoim    =  5; //
  cgSum2_SumIzn   =  6; //
  cgSum2_SIznMTr  = 14; // � ����� ��ॢ�
  cgSum2_StoimTr  = 15; //
  cgSum2_SumIznTr = 16; //
  // ࠧ���
  cgSum_RaznTr    = 17; // ���� � ����� ��ॢ�
  cgSum_PRaznTr   = 18; // ����ﭭ�� ��⠢�����
  cgSum_PPogRaznTr= 19; // ����ﭭ�� ��⠢����� ����襭��...
  cgSum_VVRNachTr = 20; // ���᫥��� ���⠥��� �६����� ��⠢���饩
  cgSum_VVRPogTr  = 21; // ����襭��...
  cgSum_NVRNachTr = 22; // ���᫥��� ���������������� �६����� ��⠢���饩
  cgSum_NVRPogTr  = 23; // ����襭��...

  cgSum_TotalPRTr    = 24; // ����������� ����ﭭ�� ��⠢�����
  cgSum_TotalPRPogTr = 25; // ����襭��� ����ﭭ�� ��⠢�����
  cgSum_TotalVVRTr   = 26; // ����������� ����稭� ���⠥��� �६����� ��⠢���饩
  cgSum_TotalNVRTr   = 27; // ����������� ����稭� ���������������� �६����� ��⠢���饩

  cgAmortBld_MaxSum = 27;

  // ��⮤ ���㣫���� (TTuneAmort.Sum_RoundMetod)
  cgRound_No       = 0; // ��� ���㣫����
  cgRound_MoreHalf = 1; // ���㣫��� �� �ࠢ����: >= 0.5
  cgRound_Lagest   = 2; // ���㣫��� � ������� ��஭�
end;

#end //__AMORTSET_INC__
