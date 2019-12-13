ReadMyDsk("OwnWorkFpCO_CO");
CO = Buf;

ReadMyDsk("OwnWorkFpco_Year");
Year = Buf;

ReadMyDsk("OwnWorkFpco_cStBud");
cStBud = Buf;

ReadMyDsk("OwnWorkFpco_cVarBud");
cVarBud = Buf;

ReadMyDsk("OwnWorkFpco_StadBud");
StadBud = Buf;

ReadMyDsk("OwnWorkFpco_cTForm");
TForm = Buf;

cPeriod = FindPeriodBySpTPerDate(coGetTune('UPRFIN.FP.BASETPP'), "01/01/" + Year)

if ( FindBudget(CO, cPeriod))
  if ( FindBudVar(GetBudget(), cVarBud, StadBud) )
    if ( ReCalcBudget(1, 0, TForm) )
      if ( GetSumFromBudget( 150,
                             cStBud,
                             cPeriod,
                             coGetTune('UPRFIN.FP.BASETPP'),
                             '01/01/' + Year,
                             0 ) )
        SaveMyDsk(String(GetNatCurrency(FpGetVal(), FpGetSumma(), MakeADate(1, 1, Number(Year)))), 'OwnWorkFpCO_Sum');
                                                                                                                                 