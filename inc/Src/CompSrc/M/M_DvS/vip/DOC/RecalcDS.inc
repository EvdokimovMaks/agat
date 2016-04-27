/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,97 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        :  ข ซ์็ฅแชฎฅ แ๋เ์ฅ                                        บ
 บ ฅเแจ๏        : 5.20                                                      บ
 บ  งญ ็ฅญจฅ    : แฅเขจแญ๋ฅ ไใญชๆจจ                                         บ
 บ โขฅโแโขฅญญ๋ฉ : ฅข็ฅญชฎ €ญคเฅฉ €ซฅชแ ญคเฎขจ็(Andrew)                     บ
 บ  เ ฌฅโเ๋     : …’                                                       บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/

#ifndef __RecalcDS_INC__
#define __RecalcDS_INC__

const
	cntRecalcDS_NumVersion = 3;
end;

const
 cntRecalcDS_SpSopr_Prise_1   = 0001;
 cntRecalcDS_SpStep_Price_1   = 0002;
 cntRecalcDS_Dogovor_Price_1  = 0004;
 cntRecalcDS_AppDog_Price_1   = 0008;
 cntRecalcDS_CalPlan_Price_1  = 0016;
 cntRecalcDS_Nacenka_1        = 0032;
 cntRecalcDS_SumSyr_1         = 0064;
 cntRecalcDS_SumUslAct_1      = 0128;
 cntRecalcDS_KlPrice_1        = 0256;
 cntRecalcDS_FrmCalc_1        = 0512;
end;

const
 cntRecalcDS_SpSopr_Prise_2   = 0001H;
 cntRecalcDS_SpOrder_Prise_2  = 0002H;
 cntRecalcDS_SpStep_Price_2   = 0004H;
 cntRecalcDS_Dogovor_Price_2  = 0008H;
 cntRecalcDS_AppDog_Price_2   = 0010H;
 cntRecalcDS_CalPlan_Price_2  = 0020H;
 cntRecalcDS_Nacenka_2        = 0040H;
 cntRecalcDS_KatDSNor_Price_2 = 0080H;
 cntRecalcDS_SumSyr_2         = 0100H;
 cntRecalcDS_SumUslAct_2      = 0200H;
 cntRecalcDS_KlPrice_2        = 0400H;
 cntRecalcDS_FrmCalc_2        = 0800H;
end;

const
 cntRecalcDS_SpSopr_Prise_3   = 0001H;
 cntRecalcDS_SpOrder_Prise_3  = 0002H;
 cntRecalcDS_SpStep_Price_3   = 0004H;
 cntRecalcDS_Dogovor_Price_3  = 0008H;
 cntRecalcDS_AppDog_Price_3   = 0010H;
 cntRecalcDS_CalPlan_Price_3  = 0020H;
 cntRecalcDS_Nacenka_3        = 0040H;
 cntRecalcDS_KatDSNor_Price_3 = 0080H;
 cntRecalcDS_SumSyr_3         = 0100H;
 cntRecalcDS_SumUslAct_3      = 0200H;
 cntRecalcDS_SumUslNkl_3      = 0400H;
 cntRecalcDS_KlPrice_3        = 0800H;
 cntRecalcDS_FrmCalc_3        = 1000H;
end;

const
 cntRecalcDS_SpSopr_Prise   = cntRecalcDS_SpSopr_Prise_3  ;
 cntRecalcDS_SpOrder_Prise  = cntRecalcDS_SpOrder_Prise_3 ;
 cntRecalcDS_SpStep_Price   = cntRecalcDS_SpStep_Price_3  ;
 cntRecalcDS_Dogovor_Price  = cntRecalcDS_Dogovor_Price_3 ;
 cntRecalcDS_AppDog_Price   = cntRecalcDS_AppDog_Price_3  ;
 cntRecalcDS_CalPlan_Price  = cntRecalcDS_CalPlan_Price_3 ;
 cntRecalcDS_Nacenka        = cntRecalcDS_Nacenka_3       ;
 cntRecalcDS_KatDSNor_Price = cntRecalcDS_KatDSNor_Price_3;
 cntRecalcDS_SumSyr         = cntRecalcDS_SumSyr_3        ;
 cntRecalcDS_SumUslAct      = cntRecalcDS_SumUslAct_3     ;
 cntRecalcDS_SumUslNkl      = cntRecalcDS_SumUslNkl_3     ;
 cntRecalcDS_KlPrice        = cntRecalcDS_KlPrice_3       ;
 cntRecalcDS_FrmCalc        = cntRecalcDS_FrmCalc_3       ;
end;

const
 cntRecalcDS_TypeNacenka_Price = 0;
 cntRecalcDS_TypeNacenka_Proc  = 1;
end;

const
 cntRecalcDS_TypeDogovor_Tek   = 0;
 cntRecalcDS_TypeDogovor_Down  = 1;
end;

const
 cntRecalcDS_ActUsl_Summa          = 0;
 cntRecalcDS_ActUsl_Bez_Nalogov    = 1;
 cntRecalcDS_ActUsl_with_Nalogov   = 2;
end;

#end

