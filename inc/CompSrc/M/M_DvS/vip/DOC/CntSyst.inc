

#ifndef __CNTSYST_INC__
#define __CNTSYST_INC__

type TMy_36_16_Decimal = decimal[36,16];


const
	cnt_MaxPrecision = 10;
	cnt_Precision_KolMin      = 0.0000000001;
	cnt_MaxPrecision_Nst      = 8;
	cnt_Precision_KolMin_Nst  = 0.00000001;
	cnt_Precision_Dec15       = 0.000000000000001;
end;

const
 cntMinDate = Date(01,01,1900);
 cntMaxDate = Date(01,01,2500);
end;

const
 cnt_MaxNumber_SP      = 10;
end;

const
	cntList_TmpGrN_First    = 1;
!	cntList_TmpGrN_S        = 1;
!	cntList_TmpGrN_M        = 2;
!	cntList_TmpGrN_F        = 3;
!	cntList_TmpGrN_G        = 4;
	cntList_VD_TmpGrN       = 5;
	cntList_VDGrRes_TmpGrN  = 6;
	cntList_VDNorm_TmpGrN   = 7;
	cntList_TmpGrN_Kol      = 8;
	cntList_TmpGrN_Anl      = 9;
	cntList_TmpGrN_Last     = 100;
end;

const
 cntFlagSortTmpGrN_Number    = 0;
 cntFlagSortTmpGrN_NameRes   = 1;
 cntFlagSortTmpGrN_BarKod    = 2;
 cntFlagSortTmpGrN_Obozn     = 3;
 cntFlagSortTmpGrN_TypeRes   = 4;
 cntFlagSortTmpGrN_Kol       = 5;
 cntFlagSortTmpGrN_Price     = 6;
 cntFlagSortTmpGrN_Summa     = 7;
 cntFlagSortTmpGrN_Party     = 8;
 cntFlagSortTmpGrN_Reserv    = 9;
end

#endif

