//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Финансовый контур
// Вспомогательные функции для интерфейса отчетов по штрафу
//******************************************************************************

//******************************************************************************

Procedure SincFiltFlags;
{
  // Состояние "БЕЗ" невозможное
  if (fO.GetCtrl = fltZerRef)
    sOrg := fO.TurnOff;

  if (fD.GetCtrl = fltZerRef)
    sDoc := fD.TurnOff;

  if (fDog.GetCtrl = fltZerRef)
    sDog := fDog.TurnOff;

  Filtr := Filtr AND 2; // Стереть флажки кроме фильтра по дипазону дат

  if (fO.GetCtrl <> fltNotSet)
    Filtr := Filtr OR 1;

  if (fD.GetCtrl <> fltNotSet)
    Filtr := Filtr OR 4;

  if (fDog.GetCtrl <> fltNotSet)
    Filtr := Filtr OR 8;

  Set Filtr := Filtr;   // Перерисовка

  if (Fact = 0)
    {
      Set UseDog := 0;
      ClearFieldOption(#UseDog, ofSelectable);
    }
  else
    SetFieldOption(#UseDog, ofSelectable);

  if (UseFixDays = 0)
    ClearFieldState( #KolFixDays, sfVisible);
  else
    SetFieldState( #KolFixDays, sfVisible);

  if ( CtrlDoc = 0 )
    ClusterDisabledField(#DopFl, 0)
  else
    {
      set DopFl := DopFl AND word(not 4);
      ClusterDisabledField(#DopFl, 4);
    }

  ClusterDisabledField(#Filtr, 0);
  SetFieldOption(#sOrg, ofSelectable);
  SetFieldOption(#bDate, ofSelectable);
  SetFieldOption(#eDate, ofSelectable);
  SetFieldOption(#sDog, ofSelectable);

  if ( (Filtr AND 4 ) = 4 )
    {
      var _lDisableCluster: longint;
      _lDisableCluster := 0;

      if ( fO.isSinglePicked = Comp(-1) )
        {
          _lDisableCluster := _lDisableCluster + 1;
          ClearFieldOption(#sOrg, ofSelectable);
        }

      if (fD.isSinglePicked <> Comp(0)) //AND (fD.isSinglePicked <> Comp(-1)) )
        {
          _lDisableCluster := _lDisableCluster + 2;
          ClearFieldOption(#bDate, ofSelectable);
          ClearFieldOption(#eDate, ofSelectable);
        }

      if ( fDog.isSinglePicked = Comp(-1) )
        {
          _lDisableCluster := _lDisableCluster + 8;
          ClearFieldOption(#sDog, ofSelectable);
        }


      ClusterDisabledField(#Filtr, _lDisableCluster);
    }
}

//******************************************************************************

Procedure ReadDskParams;
var
  DateChanged: boolean;
  strMode: string;
{
  strMode := Trim(String(pModeCulc));

  if ((not ReadMyDsk(CalcDate, 'shCalcDate' + strMode, DateChanged)) OR DateChanged)
    CalcDate := Cur_Date;

  if (not ReadMyDsk(CtrlDoc, 'shOplOrOtgr' + strMode, DateChanged))
    CtrlDoc := 0;

  if (not ReadMyDsk(Fact, 'shFact' + strMode, DateChanged))
    Fact := 0;

  if (not ReadMyDsk(UseDog, 'shUseDog' + strMode, DateChanged))
    UseDog := 0;

  if ((not ReadMyDsk(Filtr, 'shFiltr' + strMode, DateChanged)) OR DateChanged)
    Filtr := 0;

  if ((not ReadMyDsk(fltOrg, 'shFltOrg' + strMode, DateChanged)) OR DateChanged)
    fltOrg := fltNotSet;

  if ((not ReadMyDsk(fltDoc, 'shFltDoc' + strMode, DateChanged)) OR DateChanged)
    fltDoc := fltNotSet;

  if ((not ReadMyDsk(fltDog, 'shFltDog' + strMode, DateChanged)) OR DateChanged)
    fltDog := fltNotSet;

  if ((not ReadMyDsk(bDate, 'shBegDate' + strMode, DateChanged)) OR DateChanged)
    bDate := 0;

  if ((not ReadMyDsk(eDate, 'shEndDate' + strMode, DateChanged)) OR DateChanged)
    eDate := 0;

  if (not ReadMyDsk(DopFl, 'shDopFl' + strMode, DateChanged))
    DopFl := 0;

  if (not ReadMyDsk(UseFixDays, 'shUseFixDays' + strMode, DateChanged))
    UseFixDays := 0;

  if (not ReadMyDsk(MaxDays, 'shMaxDays' + strMode, DateChanged))
    MaxDays := 0;

  if (not ReadMyDsk(KolFixDays, 'shKolFixDays' + strMode, DateChanged))
    KolFixDays := 30;

  if (not ReadMyDsk(vwPrPeriod, 'shvwPrPeriod' + strMode, DateChanged))
    vwPrPeriod := 0;
}

//******************************************************************************

Procedure SaveDskParams;
var
  strMode: string;
{
  strMode := Trim(String(pModeCulc));

  SaveMyDsk(CalcDate  , 'shCalcDate'   + strMode);
  SaveMyDsk(CtrlDoc   , 'shOplOrOtgr'  + strMode);
  SaveMyDsk(Fact      , 'shFact'       + strMode);
  SaveMyDsk(UseDog    , 'shUseDog'     + strMode);
  SaveMyDsk(Filtr     , 'shFiltr'      + strMode);
  SaveMyDsk(fltOrg    , 'shFltOrg'     + strMode);
  SaveMyDsk(fltDoc    , 'shFltDoc'     + strMode);
  SaveMyDsk(fltDog    , 'shFltDog'     + strMode);
  SaveMyDsk(bDate     , 'shBegDate'    + strMode);
  SaveMyDsk(eDate     , 'shEndDate'    + strMode);
  SaveMyDsk(DopFl     , 'shDopFl'      + strMode);
  SaveMyDsk(UseFixDays, 'shUseFixDays' + strMode);
  SaveMyDsk(MaxDays   , 'shMaxDays'    + strMode);
  SaveMyDsk(KolFixDays, 'shKolFixDays' + strMode);
  SaveMyDsk(vwPrPeriod, 'shvwPrPeriod' + strMode);
}

//-------------------------------------------------------------------------

//******************************************************************************

Function isOkParams: boolean;
{
  Result := FALSE;

  if (To_Days(CalcDate) = 0)
    {
      Message('Не указана дата для расчета штрафов!', Warning);
      SelectField(#CalcDate);
      Exit;
    }

  if ((Filtr AND 2) > 0)
    if ( bDate > eDate)
      {
        Message('Некорректно определен временной интервал!', Warning);
        SelectField(#bDate);
        Exit;
      }

  if ( coGetTune('Oper.Shtraf.UslDefaultP1') = 0 )
    {
      ShowTune('Необходимо указать услугу в настройках', 'Oper.Shtraf.UslDefaultP1');
      Exit;
    }

  if ( coGetTune('Oper.Shtraf.UslDefaultP2') = 0 )
    {
      ShowTune('Необходимо указать услугу в настройках', 'Oper.Shtraf.UslDefaultP2');
      Exit;
    }

  Result := TRUE;
}
