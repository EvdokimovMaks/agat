

#ifndef __OperHistZam_inc__
#define __OperHistZam_inc__

const
 cntNumVersion_Tune_Alg260 = 4;
end;

const
  cntAlg260_SetDoc_Tek     = 0;
!  cntAlg260_SetDoc_New     = 1;
!  cntAlg260_SetDoc_Another = 2;
  cntAlg260_SetDoc_Sel      = 3;      // ??????????????????? zzzzzzzzzzzzzzzzzzzzzzzzz
end;

const
  cntAlg260_Mode_HistZam_View     = 0;
  cntAlg260_Mode_HistZam_Ren      = 1;
  cntAlg260_Mode_HistZam_Copy     = 2;
  cntAlg260_Mode_HistZam_Del      = 3;
  cntAlg260_Mode_HistZam_Otkat_RC = 4;
  cntAlg260_Mode_HistZam_Otkat_Z  = 5;
  cntAlg260_Mode_HistZam_Correct  = 6;
end;

const
	cntHistZam_EF_ViewFd_NBSDoc_TypeDocDst         = 000000000001b;
	cntHistZam_EF_ViewFd_NBSDoc_NameDocDst         = 000000000010b;
	cntHistZam_EF_ViewFd_NBSDoc_DateZam            = 000000000100b;
	cntHistZam_EF_ViewFd_NBSDoc_TimeZam            = 000000001000b;
	cntHistZam_EF_ViewFd_NBSDoc_TypeDocZam         = 000000010000b;
	cntHistZam_EF_ViewFd_NBSDoc_NumberDocZam       = 000000100000b;
	cntHistZam_EF_ViewFd_NBSDoc_NameDocZam         = 000001000000b;
	cntHistZam_EF_ViewFd_NBSDoc_NumberVarZam       = 000010000000b;
	cntHistZam_EF_ViewFd_NBSDoc_NumberDocDst_First = 000100000000b;
end;

const
	cntHistZam_EF_ViewFd_HistZam_Gen_NameGP        = 000000000001b;
	cntHistZam_EF_ViewFd_HistZam_Gen_dBeg          = 000000000010b;
	cntHistZam_EF_ViewFd_HistZam_Gen_dEnd          = 000000000100b;
end;

const
	cntHistZam_EF_ViewFd_HistZam_Del_Number        = 000000000001b;
	cntHistZam_EF_ViewFd_HistZam_Del_TypeRes       = 000000000010b;
	cntHistZam_EF_ViewFd_HistZam_Del_NameRes       = 000000000100b;
	cntHistZam_EF_ViewFd_HistZam_Del_BarKod        = 000000001000b;
	cntHistZam_EF_ViewFd_HistZam_Del_Party         = 000000010000b;
	cntHistZam_EF_ViewFd_HistZam_Del_Kol           = 000000100000b;
	cntHistZam_EF_ViewFd_HistZam_Del_EI            = 000001000000b;
end;

const
	cntHistZam_EF_ViewFd_HistZam_Add_Number        = 000000000001b;
	cntHistZam_EF_ViewFd_HistZam_Add_TypeRes       = 000000000010b;
	cntHistZam_EF_ViewFd_HistZam_Add_NameRes       = 000000000100b;
	cntHistZam_EF_ViewFd_HistZam_Add_BarKod        = 000000001000b;
	cntHistZam_EF_ViewFd_HistZam_Add_Party         = 000000010000b;
	cntHistZam_EF_ViewFd_HistZam_Add_Kol           = 000000100000b;
	cntHistZam_EF_ViewFd_HistZam_Add_EI            = 000001000000b;
end;


/*const
 cntNumPageTmpGrN_Kol  = 1;
 cntNumPageTmpGrN_Sum  = 2;
end;

const
 cntNumPage_InfoTmpGrN = 0;
 cntNumPage_AnlTmpGrN  = 1000;
end;


  Type StructFltNklReadData = record
   VidSopr            : word;
   DateOpr_Start      : date;
   DateOpr_End        : date;
   DateForm_Start     : date;
   DateForm_End       : date;
   Marker_BaseDoc     : string;
   Marker_FromKatOrg  : string;
   Marker_FromKatPodr : string;
   Marker_FromKatMol  : string;
   Marker_ToKatPodr   : string;
   Marker_ToKatMol    : string;
   cKatNazna          : comp;
  end;*/

#endif
