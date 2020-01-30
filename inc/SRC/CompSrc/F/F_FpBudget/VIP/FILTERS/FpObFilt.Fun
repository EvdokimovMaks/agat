//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Управление бюджетом"
// Универсальный интерфейс : "Фильтры пользователя"
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
function AddFiltBounds(Bnd : LongInt; BndValues : TFiltValues) : boolean;
{
  Set FiltValues := TFiltValues(BndValues);

  if (Bnd and BndCO) = BndCO
    if not(BoundActive(tbBycCOFilt))
      AddBounds(tbBycCOFilt);
  if (Bnd and BndMultiCO) = BndMultiCO
  {
    if not(BoundActive(tbBycCustCOFilt))
      AddBounds(tbBycCustCOFilt);
    if GetFirst COSpFilter <> tsOk
    {}
    if not(BoundActive(tbByMultiCOFilt))
      AddBounds(tbByMultiCOFilt);
  } // if (Bnd and BndMultiCO) = BndMultiCO

  if (Bnd and BndPP) = BndPP
    if not(BoundActive(tbBycPeriodFilt))
      AddBounds(tbBycPeriodFilt);
  if (Bnd and BndMultiPP) = BndMultiPP
  {
    if not(BoundActive(tbBycCustPPFilt))
      AddBounds(tbBycCustPPFilt);
    if GetFirst PPSpFilter <> tsOk
    {}
    if not(BoundActive(tbByMultiPPFilt))
      AddBounds(tbByMultiPPFilt);
  } // if (Bnd and BndMultiPP) = BndMultiPP
  
  if (Bnd and BndStB) = BndStB
    if not(BoundActive(tbBycStBudFilt))
      AddBounds(tbBycStBudFilt);
  if (Bnd and BndMultiSB) = BndMultiSB
  {
    if not(BoundActive(tbBycCustSBFilt))
      AddBounds(tbBycCustSBFilt);
    if GetFirst SBSpFilter <> tsOk
    {}
    if not(BoundActive(tbByMultiSBFilt))
      AddBounds(tbByMultiSBFilt);
  } // if (Bnd and BndMultiSB) = BndMultiSB
  
  if (Bnd and BndTiD) = BndTiD
    if not(BoundActive(tbByTiDkFilt))
      AddBounds(tbByTiDkFilt);
  
  if (Bnd and BndDOpLEq) = BndDOpLEq
    if not(BoundActive(tbbyDatObLEqFilt))
      AddBounds(tbbyDatObLEqFilt);
  
  if (Bnd and BndDOpGEq) = BndDOpGEq
    if not(BoundActive(tbbyDatObGEqFilt))
      AddBounds(tbbyDatObGEqFilt);
  
  AddFiltBounds := True
}

//------------------------------------------------------------------------------
function SubFiltBounds(Bnd : LongInt) : boolean;
{
  if (Bnd and BndCO) = BndCO
    if BoundActive(tbBycCOFilt)
      SubBounds(tbBycCOFilt);
  if (Bnd and BndMultiCO) = BndMultiCO
  {
    if BoundActive(tbBycCustCOFilt)
      SubBounds(tbBycCustCOFilt);
    if BoundActive(tbByMultiCOFilt)
      SubBounds(tbByMultiCOFilt);
  } // if (Bnd and BndMultiCO) = BndMultiCO
  if (Bnd and BndPP) = BndPP
    if BoundActive(tbBycPeriodFilt)
      SubBounds(tbBycPeriodFilt);
  if (Bnd and BndMultiPP) = BndMultiPP
  {
    if BoundActive(tbBycCustPPFilt)
      SubBounds(tbBycCustPPFilt);
    if BoundActive(tbByMultiPPFilt)
      SubBounds(tbByMultiPPFilt);
  } // if (Bnd and BndMultiPP) = BndMultiPP
  if (Bnd and BndStB) = BndStB
    if BoundActive(tbBycStBudFilt)
      SubBounds(tbBycStBudFilt);
  if (Bnd and BndMultiSB) = BndMultiSB
  {
    if BoundActive(tbBycCustSBFilt)
      SubBounds(tbBycCustSBFilt);
    if BoundActive(tbByMultiSBFilt)
      SubBounds(tbByMultiSBFilt);
  } // if (Bnd and BndMultiSB) = BndMultiSB
  if (Bnd and BndTiD) = BndTiD
    if BoundActive(tbByTiDkFilt)
      SubBounds(tbByTiDkFilt);
  if (Bnd and BndDOpLEq) = BndDOpLEq
    if BoundActive(tbbyDatObLEqFilt)
      SubBounds(tbbyDatObLEqFilt);
  if (Bnd and BndDOpGEq) = BndDOpGEq
    if BoundActive(tbbyDatObGEqFilt)
      SubBounds(tbbyDatObGEqFilt);
  SubFiltBounds := True
}

//------------------------------------------------------------------------------
function ReSetFiltBounds : boolean;
{
  var Bnd : LongInt;  Bnd := 0;
  Bnd := Bnd or BndCO or BndPP or BndStB or BndTiD or BndDOpLEq or BndDOpGeq or BndMultiCO or BndMultiPP or BndMultiSB;
  SubFiltBounds(Bnd);
  ReSetFiltBounds := True;
}

//------------------------------------------------------------------------------
function AddValuesFiltBounds(Bnd : LongInt; BndValues : TFiltValues) : boolean;
{
  Set FiltValues := TFiltValues(BndValues);
  if (Bnd and BndPP) = BndPP
    if not(BoundActive(tbByValuescPeriodFilt))
    {
      AddBounds(tbByValuescPeriodFilt);
    }
  if (Bnd and BndStB) = BndStB
    if not(BoundActive(tbByValuescStBudFilt))
    {
      AddBounds(tbByValuescStBudFilt);
    }
  AddValuesFiltBounds := True
}

//------------------------------------------------------------------------------
function SubValuesFiltBounds(Bnd : LongInt) : boolean;
{
  if (Bnd and BndPP) = BndPP
    if BoundActive(tbByValuescPeriodFilt)
      SubBounds(tbByValuescPeriodFilt);
  if (Bnd and BndStB) = BndStB
    if BoundActive(tbByValuescStBudFilt)
      SubBounds(tbByValuescStBudFilt);

  SubValuesFiltBounds := True
}

//------------------------------------------------------------------------------
function ReSetValuesFiltBounds : boolean;
{
  var Bnd : LongInt;  Bnd := 0;
  Bnd := Bnd or BndCO or BndPP or BndStB or BndTiD or BndDOpLEq or BndDOpGeq;
  SubValuesFiltBounds(Bnd);
  ReSetValuesFiltBounds := True;
}
