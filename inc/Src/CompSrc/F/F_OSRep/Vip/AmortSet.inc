
// в первой строчке на старом Атлантисе ifndef не сработает
#ifndef __AMORTSET_INC__
#define __AMORTSET_INC__

const
  // фильтр
  cgFilter_Podr   = cgBit00; // подразделение
  cgFilter_Mol    = cgBit01; // МОЛ
  cgFilter_Direct = cgBit02; // сумма разницы

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

  // группировка
  cgLevel_KatOs      = 1; //'Инвентарная карточка'
  cgLevel_KatPodr    = 2; //'Подразделение'
  cgLevel_VidNorma   = 3; //'Вид'
  cgLevel_OtchPeriod = 4; //'Отчетный период'
  cgLevel_cOKOF      = 5; // Код группировки по ОКОФ
  cgLevel_cGrup      = 6; // Группа основных средств
  cgLevel_cNorma     = 7; // Код нормы амортизации
  cgLevel_cIsp       = 8; // Использование ОС
  cgLevel_Mol        = 9; // МОЛ
  cgLevel_cGrAm      = 10;// амортизационная группа
  cgLevel_cKauReff   = 11; //Внешние КАУ
  cgLevel_cHozOper   = 12;// Типовая хозяйственная операция по начислению амортизации
  cgLevel_cPrSb      = 13;// Признак собственности
  cgLevel_cCO        = 14;// Центр ответственности
  cgLevel_cGroupMC   = 15;// Группа МЦ
  cgLevel_cKatNalGr   = 29;// Налоговая группа

!  cgLevel_Year       = 41; // Год
!  cgLevel_HalfYear   = 42; // Полугодие
!  cgLevel_Quartal    = 43; // Квартал
!  cgLevel_Month      = 44; // Месяц
  // дополнительные параметры
  cgDopParam_AddPrefix   = cgBit00;
  cgDopParam_TotalAmount = cgBit01;// стоимостные характеристики за общее количество

  // вид группировки по Отчетному периоду
  cgGrp_Year     = cgBit00;
  cgGrp_HalfYear = cgBit01;
  cgGrp_Quartal  = cgBit02;
  cgGrp_Month    = cgBit03;

  // формат сумм по умолчанию
  cgSumDefFormat = '\2p[|-]3666''666''666''666''666.88';

  // суммы
  // исходный метод учета
  cgSum1_SIznM    =  1; // в валюте документа
  cgSum1_Stoim    =  2; //
  cgSum1_SumIzn   =  3; //
  cgSum1_SIznMTr  = 11; // в валюте дерева
  cgSum1_StoimTr  = 12; //
  cgSum1_SumIznTr = 13; //
  // метод учета для сравнения
  cgSum2_SIznM    =  4; // в валюте документа
  cgSum2_Stoim    =  5; //
  cgSum2_SumIzn   =  6; //
  cgSum2_SIznMTr  = 14; // в валюте дерева
  cgSum2_StoimTr  = 15; //
  cgSum2_SumIznTr = 16; //
  // разница
  cgSum_RaznTr    = 17; // общая в валюте дерева
  cgSum_PRaznTr   = 18; // постоянная составляющая
  cgSum_PPogRaznTr= 19; // постоянная составляющая погашение...
  cgSum_VVRNachTr = 20; // начисление вычитаемой временной составляющей
  cgSum_VVRPogTr  = 21; // погашение...
  cgSum_NVRNachTr = 22; // начисление налогооблагаемой временной составляющей
  cgSum_NVRPogTr  = 23; // погашение...

  cgSum_TotalPRTr    = 24; // накопленная постоянная составляющая
  cgSum_TotalPRPogTr = 25; // погашенная постоянная составляющая
  cgSum_TotalVVRTr   = 26; // накопленная величина вычитаемой временной составляющей
  cgSum_TotalNVRTr   = 27; // накопленная величина налогооблагаемой временной составляющей

  cgAmortBld_MaxSum = 27;

  // метод округления (TTuneAmort.Sum_RoundMetod)
  cgRound_No       = 0; // нет округления
  cgRound_MoreHalf = 1; // округлять по правилам: >= 0.5
  cgRound_Lagest   = 2; // округлять в большую сторону
end;

#end //__AMORTSET_INC__
