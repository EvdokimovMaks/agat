//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Управление бюджетом"
// Универсальный интерфейс : "Фильтры пользователя"
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// ALG
//------------------------------------------------------------------------------
//==============================================================================
LotExpression myExpr;

//------------------------------------------------------------------------------
function MyAddAlg(_Npp : word; _AtlAlg : string) : boolean;
{
  MyAddAlg := False;
  var AlgName : string;  AlgName := 'Alg'+string(_Npp);
  myExpr.Delete(AlgName);
  myExpr.Add(AlgName, _AtlAlg);
  if (trim(_AtlAlg) <> '')
  {
    if (not myExpr.Check(_AtlAlg) )
    {
      fplog('MyAddAlg: некорректный алгоритм : '+_AtlAlg+''#13''+myExpr.GetError);
      Exit;
    }
  }
  MyAddAlg := True;
}

//------------------------------------------------------------------------------
function MyConvUserAlg(_UserAlg : string) : string;
{
  MyConvUserAlg := _UserAlg;
  var AtlAlg : string;  AtlAlg := _UserAlg;
  var Npp : word;

  AtlAlg := Replace(AtlAlg, NameAlgDate, 'FpOborot.DatOb');
  AtlAlg := Replace(AtlAlg, NameAlgNumDoc, 'FpOborot.NoDoc');
  AtlAlg := Replace(AtlAlg, NameAlgSumma, 'FpOborot.Summa');
  AtlAlg := Replace(AtlAlg, NameAlgKol, 'FpOborot.Kol');
  AtlAlg := Replace(AtlAlg, NameAlgCast, 'FpOborot.Name');
  AtlAlg := Replace(AtlAlg, NameAlgDescr, 'FpOborot.Descr');
  AtlAlg := Replace(AtlAlg, NameAlgGrDescr, 'FpOborot.DesGr');
  MyConvUserAlg := AtlAlg;
}

//------------------------------------------------------------------------------
function MyLotExpression(_AlgName : string; var _Res : boolean) : boolean;
{
  MyLotExpression := False;
  if (not myExpr.Run(_AlgName, _Res) )
  { Exit; }
  MyLotExpression := True;
}

