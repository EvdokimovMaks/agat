//********************************************************************************
//                                                        (c) корпорация Галактика
// Галактика 5.85 - логистика
// пересчет цен ДО из одной валюты в другую
//********************************************************************************

#ifNdef _MODPRICE_FUN
#define _MODPRICE_FUN

Create view loDO

Var
  pBaseDoc: comp;

Select
  SpStep.*

From
  BaseDoc
, StepDoc
, SpStep

Where
((

    pBaseDoc     == BaseDoc.NRec
AND BaseDoc.NRec == StepDoc.cBaseDoc
AND StepDoc.NRec == SpStep.cStepDoc

));

//******************************************************************************

Procedure ModPriceNewVal(cDoc, cValOld, cValNew: comp);
{
  loDO.pBaseDoc := cDoc;

  if ( loDO.GetFirst BaseDoc <> tsOk )
    Exit;

  var dCurse: Date;

  dCurse := if(loDO.BaseDoc.dValCurse > ZeroDate, loDO.BaseDoc.dValCurse, loDO.BaseDoc.dDoc);

  loDO._LOOP SpStep
    {
      loDO.SpStep.Price := oValFunc.GetAnyCurrency(cValOld, loDO.SpStep.Price, dCurse, cValNew);
      loDO.SpStep.cVal  := cValNew;

      loDO.update current SpStep;
    }
}

//******************************************************************************

Procedure ModPriceNewVal2(cDoc, cValNew: comp; CrossCurse: double);
{
  loDO.pBaseDoc := cDoc;

  if ( loDO.GetFirst BaseDoc <> tsOk )
    Exit;

  loDO._LOOP SpStep
    {
      loDO.SpStep.Price := loDO.SpStep.Price * CrossCurse;
      loDO.SpStep.cVal  := cValNew;

      loDO.update current SpStep;
    }
}

//******************************************************************************

procedure ChangeValSpStep (cDoc : comp; cValNew : comp);
{
  loDO.pBaseDoc := cDoc;
  if (loDO.GetFirst BaseDoc <> tsOk)
    Exit;

  loDO.update SpStep set SpStep.cVal := cValNew;
}

//******************************************************************************

Procedure ChangeCurseVal;
{
  var dat    : Date;    dat     := BaseDoc.dDoc;
  var cValBD : comp;    cValBD  := BaseDoc.cVal;
  var cOldVal: comp;    cOldVal := BaseDoc.cVal;
  var doCurse: double;  doCurse := BaseDoc.ValCurse;
  var dOldCur: double;  dOldCur := BaseDoc.ValCurse;

  var par: word;

  if NOT ReadMyDsk(par, 'VSCHET_CURSVAL', FALSE)
    par := 2;

  if (par > 2)
    par := 2;

  par := 20 + par;

  if ( RunInterface('Cursval', cValBD, doCurse, dat, par) = cmCancel )
    Exit;

  set BaseDoc.cVal := cValBD;
  set StepDoc.cVal := cValBD;

  if ( ( par = 2 ) AND ( BaseDoc.TipMoney = 2 ) )  //выбрали валюту и курс для вал-НДЕ ДО
    {
      if (Message('Установить курс на ' + DateToStr(dat, 'DD/MM/YYYY')
                + ' за 1 ' + SimVolB + ' '
                + DoubleToStr(doCurse / KlVal.SumValut, '\4p[|-]36`666`666`666.8888')
                + ' ' + oValFunc.GetValSymbol(0) + '?', Confirmation + YesNo) = cmYes)
       {
         set BaseDoc.dValCurse := dat;
         set BaseDoc.ValCurse  := doCurse / KlVal.SumValut;
       }
    }
  else // выбрали только валюту
    {
      par := 1;

      set BaseDoc.dValCurse := ZeroDate;
      set BaseDoc.ValCurse  := 0.0;
    }

  if ( BaseDoc.dValCurse = ZeroDate )
    StrCurse := 'Курс за 1 ' + SimVolB
  else
    StrCurse := 'Курс на ' + DateToStr(BaseDoc.dValCurse, 'DD/MM/YYYY') + ' за 1 ' + SimVolB;

  SaveMyDsk(par, 'VSCHET_CURSVAL');

  // для новой записи ничего сохранять не нужно
  if IsNew
    Exit;

   // если не делать Update, то будет пересчитывать по курсу на предыдущую дату !!!
  if ( update current BaseDoc <> tsOk )
    Message('Ошибка обновления записи!', Error)
  else
    if ( IsValid(tnSpStep) AND (( cOldVal <> BaseDoc.cVal ) OR (dOldCur <> BaseDoc.ValCurse)))
      if ( Message('Пересчитать цены по документу?', YesNo + Confirmation + mfSwapButtons) <> cmYes )
        ChangeValSpStep(BaseDoc.nRec, cValBD)
      else
        {
          var TEMPKURS: double;

          if ( NOT boGetTune('Doc.Sell.CrossCurseDO') )
            ModPriceNewVal(BaseDoc.NRec, cOldVal, cValBD)
          else
            if ( RunDialog('GetCrossCurse', TEMPKURS) = cmCancel )
              ModPriceNewVal(BaseDoc.NRec, cOldVal, cValBD)
            else
              ModPriceNewVal2(BaseDoc.NRec, cValBD, TEMPKURS);

          GetTotalSkid(FALSE);
        }
}

#end // _MODPRICE_FUN
//******************************************************************************