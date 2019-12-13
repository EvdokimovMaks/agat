//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Управление бюджетом"
// Визуальный интерфейс : "Редактирование списка бюджетов"
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// процедуры вызываемые из ListBud.Han
//------------------------------------------------------------------------------
function fSynchBuffer(tListBudgetBuf : tListBudget) : boolean;  // синхронизация буфера
{
  fSynchBuffer := False;
#if '#_CurInt'='EditListBudget'
  Event_BufChanges(tListBudget(tListBudgetBuf));
#else
  pEditListBudget.SynchBuffer(tListBudget(tListBudgetBuf));
#end
  fSynchBuffer := True;
}
//------------------------------------------------------------------------------
function fSynchPosition(tcRec : comp) : boolean;                // синхронизация позиции
{
  fSynchPosition := False;
#if '#_CurInt'='EditListBudget'
  Event_PosChanges(tcRec);
#else
  pEditListBudget.SynchPosition(tcRec);
#end
  fSynchPosition := True;
}
//------------------------------------------------------------------------------
// автоматический пересчет порядка
function NeedAutoRecalcOrder : boolean;
{
#if '#_CurInt'='EditListBudget'
  NeedAutoRecalcOrder := True;
#else
  NeedAutoRecalcOrder := pEditListBudget.NeedAutoRecalcOrder
#end
}
//------------------------------------------------------------------------------
// дублирование Слэйва по Мастеру, если пуст, и наоборот
function NeedDuplicateBudget : boolean;
{
#if '#_CurInt'='EditListBudget'
  NeedDuplicateBudget := (GetOwnerInterface = 'FpBudgetCopy');
#else
  NeedDuplicateBudget := pEditListBudget.NeedDuplicateBudget
#end
}
//------------------------------------------------------------------------------
function GetNewOrder(_OldOrder : LongInt) : LongInt;
{
  GetNewOrder := _OldOrder;
  if NeedAutoRecalcOrder
#if '#_CurInt'='EditListBudget'
    GetNewOrder := pObjFpLBudPos.GetNewOrder(_OldOrder);
#else
    GetNewOrder := pEditListBudget.GetNewOrder(_OldOrder);
#end
}



//==============================================================================
// Спец для BUDCOPY & Co
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
// BUDCO
//------------------------------------------------------------------------------
function LBudSet_MainBudCO(_Value : comp) : boolean;
{
  LBudSet_MainBudCO := False;
  Set KatH.cCO := _Value;
  if (KatH.cPeriod = 0)
  {
    Set KatH.cBudget := 0;
    Set KatH.cBudVar := 0;
  }
  else
  { // корректируем остальные параметры
    var cCurBudget : comp;
    cCurBudget := pExtFpBudget.FindBudget(KatH.cCO, KatH.cPeriod, cgiNoMessage);
    if (KatH.cBudget <> cCurBudget)
    {
      Set KatH.cBudget := cCurBudget;
      Set KatH.Name := pExtFpBudget.GetName(word(0 or 4), cCurBudget);
      var cCurBudVar : comp;
      cCurBudVar := pExtFpBudVar.FindBudVar(KatH.cBudget, KatH.cBudVariant, KatH.sBudStage, cgiNoMessage);
      if cCurBudVar <> KatH.cBudVar
        Set KatH.cBudVar := cCurBudVar;
    }
  }
  LBudSet_MainBudCO := True;
}
//------------------------------------------------------------------------------
function LBudSet_SlaveBudCO(_Value : comp) : boolean;
{
  LBudSet_SlaveBudCO := False;
  Set KatH.cSlaveCO := _Value;
  if (KatH.cSlavePeriod = 0)
  {
    Set KatH.cSlaveBudget := 0;
    Set KatH.cSlaveBudVar := 0;
  }
  else
  { // корректируем остальные параметры
    var cCurBudget : comp;
    cCurBudget := pExtFpBudget.FindBudget(KatH.cSlaveCO, KatH.cSlavePeriod, cgiNoMessage);
    if KatH.cslaveBudget <> cCurBudget
    {
      Set KatH.cSlaveBudget := cCurBudget;
      Set KatH.SlaveName := pExtFpBudget.GetName(word(0 or 4), cCurBudget);
      var cCurBudVar : comp;
      cCurBudVar := pExtFpBudVar.FindBudVar(KatH.cSlaveBudget, KatH.cSlaveBudVariant, KatH.sSlaveBudStage, cgiNoMessage);
      if cCurBudVar <> KatH.cSlaveBudVar
        Set KatH.cSlaveBudVar := cCurBudVar;
    }
  }
  LBudSet_SlaveBudCO := True;
}
//------------------------------------------------------------------------------
function LBudPick_MainBudCO : boolean;
{
  LBudPick_MainBudCO := False;
  if (pRunAvFpKat.RunAvCO(word(cgiPick), KatH.cCO) = 0)
  { Exit; }
  LBudSet_MainBudCO(KatH.cCO);
  if (NeedDuplicateBudget)
    if (KatH.cSlaveCO = 0)
      LBudSet_SlaveBudCO(KatH.cCO);
  LBudPick_MainBudCO := True;
}
//------------------------------------------------------------------------------
function LBudPick_SlaveBudCO : boolean;
{
  LBudPick_SlaveBudCO := False;
  if (pRunAvFpKat.RunAvCO(word(cgiPick), KatH.cSlaveCO) = 0)
  { Exit; }
  LBudSet_SlaveBudCO(KatH.cSlaveCO);
  LBudPick_SlaveBudCO := True;
}

//------------------------------------------------------------------------------
// BUDPP
//------------------------------------------------------------------------------
function LBudSet_MainBudPP(_Value : comp) : boolean;
{
  LBudSet_MainBudPP := False;
  Set KatH.cPeriod := _Value;
  if (KatH.cCO = 0)
  {
    Set KatH.cBudget := 0;
    Set KatH.cBudVar := 0;
  }
  else
  { // корректируем остальные параметры
    var cCurBudget : comp;
    cCurBudget := pExtFpBudget.FindBudget(KatH.cCO, KatH.cPeriod, cgiNoMessage);
    if KatH.cBudget <> cCurBudget
    {
      Set KatH.cBudget := cCurBudget;
      Set KatH.Name := pExtFpBudget.GetName(word(0 or 4), cCurBudget);
      var cCurBudVar : comp;
      cCurBudVar := pExtFpBudVar.FindBudVar(KatH.cBudget, KatH.cBudVariant, KatH.sBudStage, cgiNoMessage);
      if cCurBudVar <> KatH.cBudVar
        Set KatH.cBudVar := cCurBudVar;
    }
  }
  LBudSet_MainBudPP := True;
}
//------------------------------------------------------------------------------
function LBudSet_SlaveBudPP(_Value : comp) : boolean;
{
  LBudSet_SlaveBudPP := False;
  Set KatH.cSlavePeriod := _Value;
  if (KatH.cSlaveCO = 0)
  {
    Set KatH.cSlaveBudget := 0;
    Set KatH.cSlaveBudVar := 0;
  }
  else
  { // корректируем остальные параметры
    var cCurBudget : comp;
    cCurBudget := pExtFpBudget.FindBudget(KatH.cSlaveCO, KatH.cSlavePeriod, cgiNoMessage);
    if KatH.cSlaveBudget <> cCurBudget
    {
      Set KatH.cSlaveBudget := cCurBudget;
      Set KatH.SlaveName := pExtFpBudget.GetName(word(0 or 4), cCurBudget);
      var cCurBudVar : comp;
      cCurBudVar := pExtFpBudVar.FindBudVar(KatH.cSlaveBudget, KatH.cSlaveBudVariant, KatH.sSlaveBudStage, cgiNoMessage);
      if cCurBudVar <> KatH.cSlaveBudVar
        Set KatH.cSlaveBudVar := cCurBudVar;
    }
  }
  LBudSet_SlaveBudPP := True;
}
//------------------------------------------------------------------------------
function LBudPick_MainBudPP : boolean;
{
  LBudPick_MainBudPP := False;
  if (pExtFpPeriod.RunViewFpPeriod(word(cgiPick), 0, 0, KatH.cPeriod) = 0)
  { Exit; }
  LBudSet_MainBudPP(KatH.cPeriod);
  if (NeedDuplicateBudget)
    if (KatH.cSlavePeriod = 0)
      LBudSet_SlaveBudPP(KatH.cPeriod);
  LBudPick_MainBudPP := True;
}
//------------------------------------------------------------------------------
function LBudPick_SlaveBudPP : boolean;
{
  LBudPick_SlaveBudPP := False;
  if (pExtFpPeriod.RunViewFpPeriod(word(cgiPick), 0, 0, KatH.cSlavePeriod) = 0)
  { Exit; }
  LBudSet_SlaveBudPP(KatH.cSlavePeriod);
  LBudPick_SlaveBudPP := True;
}

//------------------------------------------------------------------------------
// BUDVARIANT
//------------------------------------------------------------------------------
function LBudSet_MainBudVariant(_Value : comp) : boolean;
{
  LBudSet_MainBudVariant := False;
  Set KatH.cBudVariant := _Value;
  Set KatH.cBudVar := pExtFpBudVar.FindBudVar(KatH.cBudget, KatH.cBudVariant, KatH.sBudStage, cgiNoMessage);
  LBudSet_MainBudVariant := True;
}
//------------------------------------------------------------------------------
function LBudSet_SlaveBudVariant(_Value : comp) : boolean;
{
  LBudSet_SlaveBudVariant := False;
  Set KatH.cSlaveBudVariant := _Value;
  Set KatH.cSlaveBudVar := pExtFpBudVar.FindBudVar(KatH.cSlaveBudget, KatH.cSlaveBudVariant, KatH.sSlaveBudStage, cgiNoMessage);
  LBudSet_SlaveBudVariant := True;
}
//------------------------------------------------------------------------------
function LBudPick_MainBudVariant : boolean;
{
  LBudPick_MainBudVariant := False;
  if (pRunAvFpKat.RunAvVariant(word(cgiPick), GetCurFpArea, KatH.cBudVariant) = 0)
  { Exit; }
  LBudSet_MainBudVariant(KatH.cBudVariant);
  if (NeedDuplicateBudget)
    if (KatH.cSlaveBudVariant = 0)
      LBudSet_SlaveBudVariant(KatH.cBudVariant);
  LBudPick_MainBudVariant := True;
}
//------------------------------------------------------------------------------
function LBudPick_SlaveBudVariant : boolean;
{
  LBudPick_SlaveBudVariant := False;
  if (pRunAvFpKat.RunAvVariant(word(cgiPick), GetCurFpArea, KatH.cSlaveBudVariant) = 0)
  { Exit; }
  LBudSet_SlaveBudVariant(KatH.cSlaveBudVariant);
  LBudPick_SlaveBudVariant := True;
}

//------------------------------------------------------------------------------
// BUDSTAGE
//------------------------------------------------------------------------------
function LBudSet_MainBudStage(_Value : string) : boolean;
{
  LBudSet_MainBudStage := False;
  Set KatH.sBudStage := _Value;
  Set KatH.cBudVar := pExtFpBudVar.FindBudVar(KatH.cBudget, KatH.cBudVariant, KatH.sBudStage, cgiNoMessage);
  LBudSet_MainBudStage := True;
}
//------------------------------------------------------------------------------
function LBudSet_SlaveBudStage(_Value : string) : boolean;
{
  LBudSet_SlaveBudStage := False;
  Set KatH.sSlaveBudStage := _Value;
  Set KatH.cSlaveBudVar := pExtFpBudVar.FindBudVar(KatH.cSlaveBudget, KatH.cSlaveBudVariant, KatH.sSlaveBudStage, cgiNoMessage);
  LBudSet_SlaveBudStage := True;
}

//------------------------------------------------------------------------------
// BUDGET
//------------------------------------------------------------------------------
function LBudSet_SlaveBudget(_cBudget : comp; _cBudVar : comp) : boolean;
{
  LBudSet_SlaveBudget := False;

  var cCurBudget : comp;  cCurBudget := _cBudget;
  var cCurBudVar : comp;  cCurBudVar := _cBudVar;

  Set KatH.cSlaveBudget := cCurBudget;
  Set KatH.cSlaveCO     := pExtFpBudget.GetCO(cCurBudget);
  Set KatH.cSlavePeriod := pExtFpBudget.GetPeriod(cCurBudget);
  Set KatH.SlaveName    := pExtFpBudget.GetName(word(0 or 4), cCurBudget);

  if (KatH.cSlaveBudVariant <> 0)
  {
    cCurBudVar := pExtFpBudVar.FindBudVar(cCurBudget, KatH.cSlaveBudVariant, KatH.sSlaveBudStage, cgiNoMessage);
  }
  else
  {
    cCurBudVar := pExtFpBudget.FindAnyAvBudVar(cCurBudget, cgiNoMessage);
  }

  Set KatH.cSlaveBudVar := cCurBudVar;
  if (cCurBudVar <> 0)
  {
    Set KatH.sSlaveBudStage   := pExtFpBudVar.GetStage     (cCurBudVar);
    Set KatH.cSlaveBudVariant := pExtFpBudVar.GetVariant   (cCurBudVar);
  }
  ReDrawPanel(#KatH);

  LBudSet_SlaveBudget := True;
}
//------------------------------------------------------------------------------
function LBudSet_MainBudget(_cBudget : comp; _cBudVar : comp) : boolean;
{
  LBudSet_MainBudget := False;

  var cCurBudget : comp;  cCurBudget := _cBudget;
  var cCurBudVar : comp;  cCurBudVar := _cBudVar;

  var MID : TPtr;  MID := InitMarker(pExtFpBudget.GetMarkerName, 8, 200, 100, False);
  var MCount : LongInt;  MCount := GetMarkerCount(MID);
  var isNeedIns : boolean;  isNeedIns := False;
  if (MCount = 0)
  {
    InsertMarker(MID, cCurBudget);
    MCount := GetMarkerCount(MID);
  }
  else if (MCount > 0)
  {
    isNeedIns := True; // если в маркере > 1 записи, то добавляем, иначе корректируем текущую
  }

  var i : LongInt;
  for (i := 0; i < MCount; inc(i) )
  {
    if (not GetMarker(MID, i, cCurBudget) )
    { Continue; }

    if (isNeedIns)
    {
      ClearBuffer(#KatH);
    }

    Set KatH.cBudget := cCurBudget;
    Set KatH.cCO     := pExtFpBudget.GetCO(cCurBudget);
    Set KatH.cPeriod := pExtFpBudget.GetPeriod(cCurBudget);
    Set KatH.Name    := pExtFpBudget.GetName(word(0 or 4), cCurBudget);

    if (isNeedIns)
    {
      if (KatH.cBudVariant <> 0)
        cCurBudVar := pExtFpBudVar.FindBudVar(cCurBudget, KatH.cBudVariant, KatH.sBudStage, cgiNoMessage);
      else
        cCurBudVar := pExtFpBudget.FindAnyAvBudVar(cCurBudget, cgiNoMessage);
    }

    Set KatH.cBudVar     := cCurBudVar;
    if (cCurBudVar <> 0)
    {
      Set KatH.sBudStage   := pExtFpBudVar.GetStage     (cCurBudVar);

      Set KatH.cBudVariant := pExtFpBudVar.GetVariant   (cCurBudVar);
      Set KatH.cAlgVariant := pExtFpBudVar.GetAlgVariant(cCurBudVar);
      Set KatH.cValVariant := pExtFpBudVar.GetValVariant(cCurBudVar);
    }

    if (NeedDuplicateBudget)
    {
      if  (KatH.cSlaveCO     = 0)
      and (KatH.cSlavePeriod = 0)
      and (KatH.cSlaveBudget = 0)
      {
        LBudSet_SlaveBudget(cCurBudget, cCurBudVar);
      }
    }

    if (isNeedIns)
    {
      Set KatH.fOrder := GetNewOrder(KatH.fOrder);
      #if '#_CurInt'='EditListBudget'
        if (GetOwnerInterface = 'FpImportXLSOborot'  )
        or (GetOwnerInterface = 'FpImportXLSBudget'  )
        {
          KatH.Note := 'TableReport';
        }
      #end
      insert current KatH;
    }

  } //for
  DoneMarker(MID, '');

  if (isNeedIns)
  {
    if (isNew) and (isModified)
      SetModified(False);
    ReReadRecord(#KatH);
  }
  else
  {
    ReDrawPanel(#KatH);
  }

  LBudSet_MainBudget := True;
}
//------------------------------------------------------------------------------
function LBudPick_MainBudget : boolean;
{
  LBudPick_MainBudget := False;
  var cCurBudget : comp;  cCurBudget := KatH.cBudget;
  var cCurBudVar : comp;  cCurBudVar := KatH.cBudVar;
  if (pExtFpBudget.RunViewBudget(word(cgiPickMult or cgiNotEdit), word(cgiBudget_GetSingle), cCurBudget, cCurBudVar) = 0)
  { Exit; }
  LBudSet_MainBudget(cCurBudget, cCurBudVar);
  LBudPick_MainBudget := True;
}
//------------------------------------------------------------------------------
function LBudPick_SlaveBudget : boolean;
{
  LBudPick_SlaveBudget := False;
  var cCurBudget : comp;  cCurBudget := KatH.cSlaveBudget;
  var cCurBudVar : comp;  cCurBudVar := KatH.cSlaveBudVar;
  if (pExtFpBudget.RunViewBudget(word(cgiPickMult or cgiNotEdit), word(cgiBudget_GetSingle), cCurBudget, cCurBudVar) = 0)
  { Exit; }
  LBudSet_SlaveBudget(cCurBudget, cCurBudVar);
  LBudPick_SlaveBudget := True;
}


//------------------------------------------------------------------------------
// BUDVAR
//------------------------------------------------------------------------------
function LBudSet_MainBudVar(_Value : comp) : boolean;
{
  LBudSet_MainBudVar := False;
  Set KatH.cBudVar     := _Value;
  Set KatH.sBudStage   := pExtFpBudVar.GetStage     (_Value);
  Set KatH.cBudVariant := pExtFpBudVar.GetVariant   (_Value);
  Set KatH.cAlgVariant := pExtFpBudVar.GetAlgVariant(_Value);
  Set KatH.cValVariant := pExtFpBudVar.GetValVariant(_Value);
  LBudSet_MainBudVar := True;
}
//------------------------------------------------------------------------------
function LBudSet_SlaveBudVar(_Value : comp) : boolean;
{
  LBudSet_SlaveBudVar := False;
  Set KatH.cSlaveBudVar     := _Value;
  Set KatH.sSlaveBudStage   := pExtFpBudVar.GetStage     (_Value);
  Set KatH.cSlaveBudVariant := pExtFpBudVar.GetVariant   (_Value);
  LBudSet_SlaveBudVar := True;
}
//------------------------------------------------------------------------------
function LBudPick_MainBudVar : boolean;
{
  LBudPick_MainBudVar := False;

  var cCurBudget : comp;  cCurBudget := KatH.cBudget;
  var cCurBudVar : comp;  cCurBudVar := KatH.cBudVar;
  if (cCurBudget = 0)
  { Message('Определите сначала бюджет...'); Exit; }
  if (pExtFpBudVar.RunViewBudVar(word(cgiPick), cCurBudget, cCurBudVar) = 0)
  { Exit; }

  LBudSet_MainBudVar(cCurBudVar);
  if (NeedDuplicateBudget)
  {
    if  (KatH.cSlaveBudVariant = 0)
    and (KatH.cSlaveBudVar     = 0)
    {
      LBudSet_SlaveBudVar(cCurBudVar);
    }
  }

  LBudPick_MainBudVar := True;
}
//------------------------------------------------------------------------------
function LBudPick_SlaveBudVar : boolean;
{
  LBudPick_SlaveBudVar := False;

  var cCurBudget : comp;  cCurBudget := KatH.cSlaveBudget;
  var cCurBudVar : comp;  cCurBudVar := KatH.cSlaveBudVar;
  if (cCurBudget = 0)
  { Message('Определите сначала бюджет...'); Exit; }
  if (pExtFpBudVar.RunViewBudVar(word(cgiPick), cCurBudget, cCurBudVar) = 0)
  { Exit; }

  LBudSet_SlaveBudVar(cCurBudVar);

  LBudPick_SlaveBudVar := True;
}
