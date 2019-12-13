Function LoadNameGroup(lCurrGroupMC:string;i:LongInt):string;
{
  if (a_FlagThisMC[i])
  {
    if ( GetFirst GroupMC where (( lCurrGroupMC == GroupMC.KOD )) = tsOk)
      Result := GroupMC.NAME;
  }
  else
    if ( GetFirst GroupUsl where (( lCurrGroupMC == GroupUsl.KOD )) = tsOk)
      Result := GroupUsl.NAME;
}

Procedure SwapMC(n:LongInt);
Var
   McName            : string;
   OtpEdName         : string;
   OtpEdKoef         : double;
   OtpEdPrice        : double;
   OtpEdPriceNds1    : double;
   OtpEdPriceNds2    : double;
   OtpEdPriceDopNalog: double;
   OtpEdKolDolg      : double;
   OtpEdKolOtgr      : double;
   OtpEdKolOpl       : double;
   EdName            : string;
   Dolg1Kol          : double;
   Dolg1Sum          : double;
   OtgrKol           : double;
   OtgrSumNoNds      : double;
   OtgrSumNds1       : double;
   OtgrSumNds2       : double;
   OtgrSumDopNalog   : double;
   OtgrSum           : double;
   OplKol            : double;
   OplSumNoNds       : double;
   OplSumNds1        : double;
   OplSumNds2        : double;
   OplSumDopNalog    : double;
   OplSum            : double;
   Dolg2Kol          : double;
   Dolg2Sum          : double;

   DolgNds1          : double;
   DolgNds2          : double;
   DolgDopNalog      : double;

   OtpNds1           : double;
   OtpNds2           : double;
   OtpDopNalog       : double;

   lCurrGroupMC      : string;
   lFlagThisMC       : boolean;
{
  McName             := a_McUslName[n];
  OtpEdName          := a_OtpEdName[n];
  OtpEdKoef          := a_OtpEdKoef[n];
  OtpEdPrice         := a_OtpEdPrice[n];
  OtpEdPriceNds1     := a_OtpEdPriceNds1[n];
  OtpEdPriceNds2     := a_OtpEdPriceNds2[n];
  OtpEdPriceDopNalog := a_OtpEdPriceDopNalog[n];
  OtpEdKolDolg       := a_OtpEdKolDolg[n];
  OtpEdKolOtgr       := a_OtpEdKolOtgr[n];
  OtpEdKolOpl        := a_OtpEdKolOpl[n];
  EdName             := a_EdName[n];
  Dolg1Kol           := a_Dolg1Kol[n];
  Dolg1Sum           := a_Dolg1Sum[n];
  OtgrKol            := a_OtgrKol[n];
  OtgrSumNoNds       := a_OtgrSumNoNds[n];
  OtgrSumNds1        := a_OtgrSumNds1[n];
  OtgrSumNds2        := a_OtgrSumNds2[n];
  OtgrSumDopNalog    := a_OtgrSumDopNalog[n];
  OtgrSum            := a_OtgrSum[n];
  OplKol             := a_OplKol[n];
  OplSumNoNds        := a_OplSumNoNds[n];
  OplSumNds1         := a_OplSumNds1[n];
  OplSumNds2         := a_OplSumNds2[n];
  OplSumDopNalog     := a_OplSumDopNalog[n];
  OplSum             := a_OplSum[n];
  Dolg2Kol           := a_Dolg2Kol[n];
  Dolg2Sum           := a_Dolg2Sum[n];

  DolgNds1           := a_DolgNds1[n];
  DolgNds2           := a_DolgNds2[n];
  DolgDopNalog       := a_DolgDopNalog[n];

  OtpNds1            := a_OtpNds1[n];
  OtpNds2            := a_OtpNds2[n];
  OtpDopNalog        := a_OtpDopNalog[n];

  lCurrGroupMC       := a_CurrGroupMC[n];
  lFlagThisMC        := a_FlagThisMC[n];

  a_McUslName[n]            := a_McUslName[n+1];
  a_OtpEdName[n]            := a_OtpEdName[n+1];
  a_OtpEdKoef[n]            := a_OtpEdKoef[n+1];
  a_OtpEdPrice[n]           := a_OtpEdPrice[n+1];
  a_OtpEdPriceNds1[n]       := a_OtpEdPriceNds1[n+1];
  a_OtpEdPriceNds2[n]       := a_OtpEdPriceNds2[n+1];
  a_OtpEdPriceDopNalog[n]   := a_OtgrSumDopNalog[n+1];
  a_OtpEdKolDolg[n]         := a_OtpEdKolDolg[n+1];
  a_OtpEdKolOtgr[n]         := a_OtpEdKolOtgr[n+1];
  a_OtpEdKolOpl[n]          := a_OtpEdKolOpl[n+1];
  a_EdName[n]               := a_EdName[n+1];
  a_Dolg1Kol[n]             := a_Dolg1Kol[n+1];
  a_Dolg1Sum[n]             := a_Dolg1Sum[n+1];
  a_OtgrKol[n]              := a_OtgrKol[n+1];
  a_OtgrSumNoNds[n]         := a_OtgrSumNoNds[n+1];
  a_OtgrSumNds1[n]          := a_OtgrSumNds1[n+1];
  a_OtgrSumNds2[n]          := a_OtgrSumNds2[n+1];
  a_OtgrSumDopNalog[n]      := a_OtgrSumDopNalog[n+1];
  a_OtgrSum[n]              := a_OtgrSum[n+1];
  a_OplKol[n]               := a_OplKol[n+1];
  a_OplSumNoNds[n]          := a_OplSumNoNds[n+1];
  a_OplSumNds1[n]           := a_OplSumNds1[n+1];
  a_OplSumNds2[n]           := a_OplSumNds2[n+1];
  a_OplSumDopNalog[n]       := a_OplSumDopNalog[n+1];
  a_OplSum[n]               := a_OplSum[n+1];
  a_Dolg2Kol[n]             := a_Dolg2Kol[n+1];
  a_Dolg2Sum[n]             := a_Dolg2Sum[n+1];

  a_DolgNds1[n]             := a_DolgNds1[n+1];
  a_DolgNds2[n]             := a_DolgNds2[n+1];
  a_DolgDopNalog[n]         := a_DolgDopNalog[n+1];

  a_OtpNds1[n]              := a_OtpNds1[n+1];
  a_OtpNds2[n]              := a_OtpNds2[n+1];
  a_OtpDopNalog[n]          := a_OtpDopNalog[n+1];

  a_CurrGroupMC[n]          := a_CurrGroupMC[n+1];
  a_FlagThisMC[n]           := a_FlagThisMC[n+1];

  a_McUslName[n+1]          := McName        ;
  a_OtpEdName[n+1]          := OtpEdName     ;
  a_OtpEdKoef[n+1]          := OtpEdKoef     ;
  a_OtpEdPrice[n+1]         := OtpEdPrice    ;
  a_OtpEdPriceNds1[n+1]     := OtpEdPriceNds1;
  a_OtpEdPriceNds2[n+1]     := OtpEdPriceNds2;
  a_OtpEdPriceDopNalog[n+1] := OtpEdPriceDopNalog;
  a_OtpEdKolDolg[n+1]       := OtpEdKolDolg  ;
  a_OtpEdKolOtgr[n+1]       := OtpEdKolOtgr  ;
  a_OtpEdKolOpl[n+1]        := OtpEdKolOpl   ;
  a_EdName[n+1]             := EdName        ;
  a_Dolg1Kol[n+1]           := Dolg1Kol      ;
  a_Dolg1Sum[n+1]           := Dolg1Sum      ;
  a_OtgrKol[n+1]            := OtgrKol       ;
  a_OtgrSumNoNds[n+1]       := OtgrSumNoNds  ;
  a_OtgrSumNds1[n+1]        := OtgrSumNds1   ;
  a_OtgrSumNds2[n+1]        := OtgrSumNds2   ;
  a_OtgrSumDopNalog[n+1]    := OtgrSumDopNalog;
  a_OtgrSum[n+1]            := OtgrSum       ;
  a_OplKol[n+1]             := OplKol        ;
  a_OplSumNoNds[n+1]        := OplSumNoNds   ;
  a_OplSumNds1[n+1]         := OplSumNds1    ;
  a_OplSumNds2[n+1]         := OplSumNds2    ;
  a_OplSumDopNalog[n+1]     := OplSumDopNalog;
  a_OplSum[n+1]             := OplSum        ;
  a_Dolg2Kol[n+1]           := Dolg2Kol      ;
  a_Dolg2Sum[n+1]           := Dolg2Sum      ;

  a_DolgNds1[n+1]           := DolgNds1;
  a_DolgNds2[n+1]           := DolgNds2;
  a_DolgDopNalog[n+1]       := DolgDopNalog;

  a_OtpNds1[n+1]            := OtpNds1;
  a_OtpNds2[n+1]            := OtpNds2;
  a_OtpDopNalog[n+1]        := OtpDopNalog;

  a_CurrGroupMC[n+1]        := lCurrGroupMC  ;
  a_FlagThisMC[n+1]         := lFlagThisMC   ;
}

Procedure PrintMCAll;
 Var
  i:LongInt;
  Flag:Integer;
  n:LongInt;
  lCurrGroupMC:string;
  lGroupNameMC:string;

  IRepDolgNds1       : double;
  IRepDolgNds2       : double;
  IRepDolgDopNalog   : double;
  IRepOtpNds1        : double;
  IRepOtpNds2        : double;
  IRepOtpDopNalog    : double;

  IRepDolg1Kol       : double;
  IRepDolg1Sum       : double;
  IRepOtgrKol        : double;
  IRepOtgrSum        : double;
  IRepOtgrSumNds1    : double;
  IRepOtgrSumNds2    : double;
  IRepOtgrSumNoNds   : double;
  IRepOtgrSumDopNalog: double;
  IRepOplKol         : double;
  IRepOplSum         : double;
  IRepOplSumNds1     : double;
  IRepOplSumNds2     : double;
  IRepOplSumNoNds    : double;
  IRepOplSumDopNalog : double;
  IRepDolg2Kol       : double;
  IRepDolg2Sum       : double;
  RepDolg1Kol        : double;
  RepDolg1Sum        : double;
  RepOtgrKol         : double;
  RepOtgrSum         : double;
  RepOtgrSumNds1     : double;
  RepOtgrSumNds2     : double;
  RepOtgrSumNoNds    : double;
  RepOtgrSumDopNalog : double;
  RepOplKol          : double;
  RepOplSum          : double;
  RepOplSumNds1      : double;
  RepOplSumNds2      : double;
  RepOplSumNoNds     : double;
  RepOplSumDopNalog  : double;
  RepDolg2Kol        : double;
  RepDolg2Sum        : double;
  RepDolgNds1        : double;
  RepDolgNds2        : double;
  RepDolgDopNalog    : double;
  RepOtpNds1         : double;
  RepOtpNds2         : double;
  RepOtpDopNalog     : double;
{
  RepDolg1Kol        := 0.0;           //02 RepDolg1Kol
  RepDolg1Sum        := 0.0;           //03 RepDolg1Sum
  RepOtgrKol         := 0.0;           //04 RepOtgrKol
  RepOtgrSum         := 0.0;           //05 RepOtgrSum
  RepOtgrSumNds1     := 0.0;           //06 RepOtgrSumNds1
  RepOtgrSumNds2     := 0.0;           //07 RepOtgrSumNds2
  RepOtgrSumNoNds    := 0.0;           //08 RepOtgrSumNoNds
  RepOtgrSumDopNalog := 0.0;           //08a RepOtgrSumDopNalog
  RepOplKol          := 0.0;           //09 RepOplKol
  RepOplSum          := 0.0;           //10 RepOplSum
  RepOplSumNds1      := 0.0;           //11 RepOplSumNds1
  RepOplSumNds2      := 0.0;           //12 RepOplSumNds2
  RepOplSumNoNds     := 0.0;           //13 RepOplSumNoNds
  RepOplSumDopNalog  := 0.0;           //13a RepOplSumDopNalog
  RepDolg2Kol        := 0.0;           //14 RepDolg2Kol
  RepDolg2Sum        := 0.0;           //15 RepDolg2Sum

  RepDolgNds1        := 0.0;
  RepDolgNds2        := 0.0;
  RepDolgDopNalog    := 0.0;
  RepOtpNds1         := 0.0;
  RepOtpNds2         := 0.0;
  RepOtpDopNalog     := 0.0;

  if (NextMc = 1)
    DecNextMc := -1;

  NextMC := NextMc - DecNextMc - 1;

  // Сортировка по НДС , сначала без, потом 10, потом 20
  Flag := 0;

  While Flag = 0
  DO
    {
      Flag := 1;
      n    := 1;

      While n < NextMc
      DO
        {
          If ((a_CurrGroupMC[n+1] > a_CurrGroupMC[n]) or (not a_FlagThisMC[n] and a_FlagThisMC[n+1]))
            {
              SwapMC(n);
              Flag:=0;
            }
          n++;
        }
    }

  IRepDolg1Kol        := 0.0;
  IRepDolg1Sum        := 0.0;
  IRepOtgrKol         := 0.0;
  IRepOtgrSum         := 0.0;
  IRepOtgrSumNds1     := 0.0;
  IRepOtgrSumNds2     := 0.0;
  IRepOtgrSumNoNds    := 0.0;
  IRepOtgrSumDopNalog := 0.0;
  IRepOplKol          := 0.0;
  IRepOplSum          := 0.0;
  IRepOplSumNds1      := 0.0;
  IRepOplSumNds2      := 0.0;
  IRepOplSumNoNds     := 0.0;
  IRepOplSumDopNalog  := 0.0;
  IRepDolg2Kol        := 0.0;
  IRepDolg2Sum        := 0.0;

  IRepDolgNds1        := 0.0;
  IRepDolgNds2        := 0.0;
  IRepDolgDopNalog    := 0.0;
  IRepOtpNds1         := 0.0;
  IRepOtpNds2         := 0.0;
  IRepOtpDopNalog     := 0.0;
  
  lCurrGroupMC := a_CurrGroupMC[1];
  Flag := 1;
  lGroupNameMC := LoadNameGroup(lCurrGroupMC,1);

  for (i := 1; i <= NextMc; i++)
  {
    frmdolgoplG.PutEventById(feDoLoop,fcAllMC3);
    if (lCurrGroupMC=a_CurrGroupMC[i])
    {
      IRepDolg1Kol        += a_Dolg1Kol[i];
      IRepDolg1Sum        += a_Dolg1Sum[i];
      IRepOtgrKol         += a_OtgrKol[i];
      IRepOtgrSum         += a_OtgrSum[i];
      IRepOtgrSumNds1     += a_OtgrSumNds1[i];
      IRepOtgrSumNds2     += a_OtgrSumNds2[i];
      IRepOtgrSumNoNds    += a_OtgrSumNoNds[i];
      IRepOtgrSumDopNalog += a_OtgrSumDopNalog[i];
      IRepOplKol          += a_OplKol[i];
      IRepOplSum          += a_OplSum[i];
      IRepOplSumNds1      += a_OplSumNds1[i];
      IRepOplSumNds2      += a_OplSumNds2[i];
      IRepOplSumNoNds     += a_OplSumNoNds[i];
      IRepOplSumDopNalog  += a_OplSumDopNalog[i];
      IRepDolg2Kol        += a_Dolg2Kol[i];
      IRepDolg2Sum        += a_Dolg2Sum[i];

      IRepDolgNds1        += a_DolgNds1[i];
      IRepDolgNds2        += a_DolgNds2[i];
      IRepDolgDopNalog    += a_DolgDopNalog[i];
      IRepOtpNds1         += a_OtpNds1[i];
      IRepOtpNds2         += a_OtpNds2[i];
      IRepOtpDopNalog     += a_OtpDopNalog[i];
    }

    if (lCurrGroupMC<>a_CurrGroupMC[i])
    {
      frmdolgoplG.PutEventById(feDoLoop,fcItogGroupAllMC3);
      if (not(ItogEd or (AllMcUsl=1) or (AllMcUsl=5)))
      {
        IRepDolg1Kol := 0;
        IRepOtgrKol  := 0;
        IRepOplKol   := 0;
        IRepDolg2Kol := 0;
      }

      RepDolg1Kol        += IRepDolg1Kol     ;           //02 RepDolg1Kol
      RepDolg1Sum        += IRepDolg1Sum     ;           //03 RepDolg1Sum
      RepOtgrKol         += IRepOtgrKol      ;           //04 RepOtgrKol
      RepOtgrSum         += IRepOtgrSum      ;           //05 RepOtgrSum
      RepOtgrSumNds1     += IRepOtgrSumNds1  ;           //06 RepOtgrSumNds1
      RepOtgrSumNds2     += IRepOtgrSumNds2  ;           //07 RepOtgrSumNds2
      RepOtgrSumNoNds    += IRepOtgrSumNoNds ;           //08 RepOtgrSumNoNds
      RepOtgrSumDopNalog += IRepOtgrSumDopNalog;         //08a RepOtgrSumDopNalog
      RepOplKol          += IRepOplKol       ;           //09 RepOplKol
      RepOplSum          += IRepOplSum       ;           //10 RepOplSum
      RepOplSumNds1      += IRepOplSumNds1   ;           //11 RepOplSumNds1
      RepOplSumNds2      += IRepOplSumNds2   ;           //12 RepOplSumNds2
      RepOplSumNoNds     += IRepOplSumNoNds  ;           //13 RepOplSumNoNds
      RepOplSumDopNalog  += IRepOplSumDopNalog;          //13a RepOplSumDopNalog
      RepDolg2Kol        += IRepDolg2Kol     ;           //14 RepDolg2Kol
      RepDolg2Sum        += IRepDolg2Sum     ;           //15 RepDolg2Sum

      RepDolgNds1        += IRepDolgNds1      ;
      RepDolgNds2        += IRepDolgNds2      ;
      RepDolgDopNalog    += IRepDolgDopNalog  ;
      RepOtpNds1         += IRepOtpNds1       ;
      RepOtpNds2         += IRepOtpNds2       ;
      RepOtpDopNalog     += IRepOtpDopNalog   ;

      frmdolgoplG.Write(i);                           //01 nOrgRep
      frmdolgoplG.Write(IRepDolg1Kol     );           //02 RepDolg1Kol
      frmdolgoplG.Write(IRepDolg1Sum     );           //03 RepDolg1Sum

      frmdolgoplG.Write(IRepDolgNds1     );
      frmdolgoplG.Write(IRepDolgNds2     );
      frmdolgoplG.Write(IRepDolgDopNalog );

      frmdolgoplG.Write(IRepOtgrKol      );           //04 RepOtgrKol
      frmdolgoplG.Write(IRepOtgrSum      );           //05 RepOtgrSum
      frmdolgoplG.Write(IRepOtgrSumNds1  );           //06 RepOtgrSumNds1
      frmdolgoplG.Write(IRepOtgrSumNds2  );           //07 RepOtgrSumNds2
      frmdolgoplG.Write(IRepOtgrSumNoNds );           //08 RepOtgrSumNoNds
      frmdolgoplG.Write(IRepOtgrSumDopNalog );        //09 RepOtgrSumDopNalog
      frmdolgoplG.Write(IRepOplKol       );           //10 RepOplKol
      frmdolgoplG.Write(IRepOplSum       );           //11 RepOplSum
      frmdolgoplG.Write(IRepOplSumNds1   );           //12 RepOplSumNds1
      frmdolgoplG.Write(IRepOplSumNds2   );           //13 RepOplSumNds2
      frmdolgoplG.Write(IRepOplSumNoNds  );           //14 RepOplSumNoNds
      frmdolgoplG.Write(IRepOplSumDopNalog);          //15 RepOplSumDopNalog
      frmdolgoplG.Write(IRepDolg2Kol     );           //16 RepDolg2Kol
      frmdolgoplG.Write(IRepDolg2Sum     );           //17 RepDolg2Sum

      frmdolgoplG.Write(IRepOtpNds1     );
      frmdolgoplG.Write(IRepOtpNds2     );
      frmdolgoplG.Write(IRepOtpDopNalog );

      IRepDolg1Kol        := a_Dolg1Kol[i];
      IRepDolg1Sum        := a_Dolg1Sum[i];
      IRepOtgrKol         := a_OtgrKol[i];
      IRepOtgrSum         := a_OtgrSum[i];
      IRepOtgrSumNds1     := a_OtgrSumNds1[i];
      IRepOtgrSumNds2     := a_OtgrSumNds2[i];
      IRepOtgrSumNoNds    := a_OtgrSumNoNds[i];
      IRepOtgrSumDopNalog := a_OtgrSumDopNalog[i];
      IRepOplKol          := a_OplKol[i];
      IRepOplSum          := a_OplSum[i];
      IRepOplSumNds1      := a_OplSumNds1[i];
      IRepOplSumNds2      := a_OplSumNds2[i];
      IRepOplSumNoNds     := a_OplSumNoNds[i];
      IRepOplSumDopNalog  := a_OplSumDopNalog[i];
      IRepDolg2Kol        := a_Dolg2Kol[i];
      IRepDolg2Sum        := a_Dolg2Sum[i];

      IRepDolgNds1        := a_DolgNds1[i]    ;
      IRepDolgNds2        := a_DolgNds2[i]    ;
      IRepDolgDopNalog    := a_DolgDopNalog[i];
      IRepOtpNds1         := a_OtpNds1[i]     ;
      IRepOtpNds2         := a_OtpNds2[i]     ;
      IRepOtpDopNalog     := a_OtpDopNalog[i] ;

      lCurrGroupMC := a_CurrGroupMC[i];

      frmdolgoplG.PutEventById(feDoLoop,fcGroupAllMC3);

      lGroupNameMC := LoadNameGroup(lCurrGroupMC,i);

      frmdolgoplG.Write(lGroupNameMC);       // название группы
    }

    if (Flag=1)
    {
      frmdolgoplG.PutEventById(feDoLoop,fcGroupAllMC3);
      frmdolgoplG.Write(lGroupNameMC);       // название группы
      Flag:=0;
    }

    frmdolgoplG.Write(i);                        //01 nSp
    frmdolgoplG.Write(a_McUslName[i]);                  //02 McName
    frmdolgoplG.Write(a_OtpEdName[i]);                  //03 OtpEdName
    frmdolgoplG.Write(a_OtpEdKoef[i]);                  //04 OtpEdKoef
    frmdolgoplG.Write(a_OtpEdPrice[i]);                 //05 OtpEdPrice
    frmdolgoplG.Write(a_OtpEdPriceNds1[i]);             //06 OtpEdPriceNds1
    frmdolgoplG.Write(a_OtpEdPriceNds2[i]);             //07 OtpEdPriceNds2
    frmdolgoplG.Write(a_OtpEdPriceDopNalog[i]);         //08 OtpEdPriceDopNalog
    frmdolgoplG.Write(a_OtpEdKolDolg[i]);               //09 OtpEdKolDolg
    frmdolgoplG.Write(a_OtpEdKolOtgr[i]);               //10 OtpEdKolOtgr
    frmdolgoplG.Write(a_OtpEdKolOpl[i]);                //11 OtpEdKolOpl
    frmdolgoplG.Write(a_EdName[i]);                     //12 EdName
    frmdolgoplG.Write(a_Dolg1Kol[i]);                   //13 Dolg1Kol
    frmdolgoplG.Write(a_Dolg1Sum[i]);                   //14 Dolg1Sum

    frmdolgoplG.Write(a_DolgNds1[i]     );
    frmdolgoplG.Write(a_DolgNds2[i]     );
    frmdolgoplG.Write(a_DolgDopNalog[i] );

    frmdolgoplG.Write(a_OtgrKol[i]);                    //15 OtgrKol
    frmdolgoplG.Write(a_OtgrSumNoNds[i]);               //16 OtgrSumNoNds
    frmdolgoplG.Write(a_OtgrSumNds1[i]);                //17 OtgrSumNds1
    frmdolgoplG.Write(a_OtgrSumNds2[i]);                //18 OtgrSumNds2
    frmdolgoplG.Write(a_OtgrSumDopNalog[i]);            //19 OtgrSumDopNalog
    frmdolgoplG.Write(a_OtgrSum[i]);                    //20 OtgrSum
    frmdolgoplG.Write(a_OplKol[i]);                     //21 OplKol
    frmdolgoplG.Write(a_OplSumNoNds[i]);                //22 OplSumNoNds
    frmdolgoplG.Write(a_OplSumNds1[i]);                 //23 OplSumNds1
    frmdolgoplG.Write(a_OplSumNds2[i]);                 //24 OplSumNds2
    frmdolgoplG.Write(a_OplSumDopNalog[i]);             //25 OplSumDopNalog
    frmdolgoplG.Write(a_OplSum[i]);                     //26 OplSum
    frmdolgoplG.Write(a_Dolg2Kol[i]);                   //27 Dolg2Kol
    frmdolgoplG.Write(a_Dolg2Sum[i]);                   //28 Dolg2Sum

    frmdolgoplG.Write(a_OtpNds1[i]     );
    frmdolgoplG.Write(a_OtpNds2[i]     );
    frmdolgoplG.Write(a_OtpDopNalog[i] );
  }

  frmdolgoplG.PutEventById(feDoLoop,fcItogGroupAllMC3);

  if (not(ItogEd or (AllMcUsl=1) or (AllMcUsl=5)))
  {
    IRepDolg1Kol := 0;
    IRepOtgrKol  := 0;
    IRepOplKol   := 0;
    IRepDolg2Kol := 0;
  }

  RepDolg1Kol        += IRepDolg1Kol     ;           //02 RepDolg1Kol
  RepDolg1Sum        += IRepDolg1Sum     ;           //03 RepDolg1Sum
  RepOtgrKol         += IRepOtgrKol      ;           //04 RepOtgrKol
  RepOtgrSum         += IRepOtgrSum      ;           //05 RepOtgrSum
  RepOtgrSumNds1     += IRepOtgrSumNds1  ;           //06 RepOtgrSumNds1
  RepOtgrSumNds2     += IRepOtgrSumNds2  ;           //07 RepOtgrSumNds2
  RepOtgrSumNoNds    += IRepOtgrSumNoNds ;           //08 RepOtgrSumNoNds
  RepOtgrSumDopNalog += IRepOtgrSumDopNalog;         //08a RepOtgrSumDopNalog
  RepOplKol          += IRepOplKol       ;           //09 RepOplKol
  RepOplSum          += IRepOplSum       ;           //10 RepOplSum
  RepOplSumNds1      += IRepOplSumNds1   ;           //11 RepOplSumNds1
  RepOplSumNds2      += IRepOplSumNds2   ;           //12 RepOplSumNds2
  RepOplSumNoNds     += IRepOplSumNoNds  ;           //13 RepOplSumNoNds
  RepOplSumDopNalog  += IRepOplSumDopNalog;          //13a RepOplSumDopNalog
  RepDolg2Kol        += IRepDolg2Kol     ;           //14 RepDolg2Kol
  RepDolg2Sum        += IRepDolg2Sum     ;           //15 RepDolg2Sum
  RepDolgNds1        += IRepDolgNds1;
  RepDolgNds2        += IRepDolgNds2;
  RepDolgDopNalog    += IRepDolgDopNalog;
  RepOtpNds1         += IRepOtpNds1;
  RepOtpNds2         += IRepOtpNds2;
  RepOtpDopNalog     += IRepOtpDopNalog;

  frmdolgoplG.Write(i);                           //01 nOrgRep
  frmdolgoplG.Write(IRepDolg1Kol     );           //02 RepDolg1Kol
  frmdolgoplG.Write(IRepDolg1Sum     );           //03 RepDolg1Sum

  frmdolgoplG.Write(IRepDolgNds1     );
  frmdolgoplG.Write(IRepDolgNds2     );
  frmdolgoplG.Write(IRepDolgDopNalog );

  frmdolgoplG.Write(IRepOtgrKol      );           //04 RepOtgrKol
  frmdolgoplG.Write(IRepOtgrSum      );           //05 RepOtgrSum
  frmdolgoplG.Write(IRepOtgrSumNds1  );           //06 RepOtgrSumNds1
  frmdolgoplG.Write(IRepOtgrSumNds2  );           //07 RepOtgrSumNds2
  frmdolgoplG.Write(IRepOtgrSumNoNds );           //08 RepOtgrSumNoNds
  frmdolgoplG.Write(IRepOtgrSumDopNalog);         //09 RepOtgrSumDopNalog
  frmdolgoplG.Write(IRepOplKol       );           //10 RepOplKol
  frmdolgoplG.Write(IRepOplSum       );           //11 RepOplSum
  frmdolgoplG.Write(IRepOplSumNds1   );           //12 RepOplSumNds1
  frmdolgoplG.Write(IRepOplSumNds2   );           //13 RepOplSumNds2
  frmdolgoplG.Write(IRepOplSumNoNds  );           //14 RepOplSumNoNds
  frmdolgoplG.Write(IRepOplSumDopNalog);          //15 RepOplSumDopNalog
  frmdolgoplG.Write(IRepDolg2Kol     );           //16 RepDolg2Kol
  frmdolgoplG.Write(IRepDolg2Sum     );           //17 RepDolg2Sum

  frmdolgoplG.Write(IRepOtpNds1     );
  frmdolgoplG.Write(IRepOtpNds2     );
  frmdolgoplG.Write(IRepOtpDopNalog );

  frmdolgoplG.Write(nOrg);                       //01 nOrgRep
  frmdolgoplG.Write(RepDolg1Kol     );           //02 RepDolg1Kol
  frmdolgoplG.Write(RepDolg1Sum     );           //03 RepDolg1Sum

  frmdolgoplG.Write(RepDolgNds1     );
  frmdolgoplG.Write(RepDolgNds2     );
  frmdolgoplG.Write(RepDolgDopNalog );

  frmdolgoplG.Write(RepOtgrKol      );           //04 RepOtgrKol
  frmdolgoplG.Write(RepOtgrSum      );           //05 RepOtgrSum
  frmdolgoplG.Write(RepOtgrSumNds1  );           //06 RepOtgrSumNds1
  frmdolgoplG.Write(RepOtgrSumNds2  );           //07 RepOtgrSumNds2
  frmdolgoplG.Write(RepOtgrSumNoNds );           //08 RepOtgrSumNoNds
  frmdolgoplG.Write(RepOtgrSumDopNalog);         //08a RepOtgrSumDopNalog
  frmdolgoplG.Write(RepOplKol       );           //09 RepOplKol
  frmdolgoplG.Write(RepOplSum       );           //10 RepOplSum
  frmdolgoplG.Write(RepOplSumNds1   );           //11 RepOplSumNds1
  frmdolgoplG.Write(RepOplSumNds2   );           //12 RepOplSumNds2
  frmdolgoplG.Write(RepOplSumNoNds  );           //13 RepOplSumNoNds
  frmdolgoplG.Write(RepOplSumDopNalog);          //13a RepOplSumDopNalog
  frmdolgoplG.Write(RepDolg2Kol     );           //14 RepDolg2Kol
  frmdolgoplG.Write(RepDolg2Sum     );           //15 RepDolg2Sum

  frmdolgoplG.Write(RepOtpNds1     );
  frmdolgoplG.Write(RepOtpNds2     );
  frmdolgoplG.Write(RepOtpDopNalog );

//  TiDkGal = 2
  frmdolgoplG.Write(RepMoneyOplKol            );  //16
  frmdolgoplG.Write(RepMoneyOplSum            );  //17
  frmdolgoplG.Write(RepMoneyOplSumNds1        );  //18
  frmdolgoplG.Write(RepMoneyOplSumNds2        );  //19
  frmdolgoplG.Write(RepMoneyOplSumNoNds       );  //20
  frmdolgoplG.Write(RepMoneyOplSumDopNalog    );  //21
//  TiDkGal = 70
  frmdolgoplG.Write(RepVzachetOplKol          );  //22
  frmdolgoplG.Write(RepVzachetOplSum          );  //23
  frmdolgoplG.Write(RepVzachetOplSumNds1      );  //24
  frmdolgoplG.Write(RepVzachetOplSumNds2      );  //25
  frmdolgoplG.Write(RepVzachetOplSumNoNds     );  //26
  frmdolgoplG.Write(RepVzachetOplSumDopNalog  );  //27
//  TiDkGal = 82
  frmdolgoplG.Write(RepOVexelOplKol           );  //28
  frmdolgoplG.Write(RepOVexelOplSum           );  //29
  frmdolgoplG.Write(RepOVexelOplSumNds1       );  //30
  frmdolgoplG.Write(RepOVexelOplSumNds2       );  //31
  frmdolgoplG.Write(RepOVexelOplSumNoNds      );  //32
  frmdolgoplG.Write(RepOVexelOplSumDopNalog   );  //33
//  TiDkGal = 84
  frmdolgoplG.Write(RepSVexelOplKol           );  //34
  frmdolgoplG.Write(RepSVexelOplSum           );  //35
  frmdolgoplG.Write(RepSVexelOplSumNds1       );  //36
  frmdolgoplG.Write(RepSVexelOplSumNds2       );  //37
  frmdolgoplG.Write(RepSVexelOplSumNoNds      );  //38
  frmdolgoplG.Write(RepSVexelOplSumDopNalog   );  //39
}
