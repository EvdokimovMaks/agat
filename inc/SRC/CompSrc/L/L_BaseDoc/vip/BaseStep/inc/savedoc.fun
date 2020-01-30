//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Логистика - ДО
// Функции копирования документов
//******************************************************************************

#include DOfuns.var
#include UKSfuns.var
#include SDfuns.var

Create view loSavedDO
var
  NeedReCalc
, NoCopyParty             //Не копировать партии товаров
             : boolean;
from
  BaseDoc
, StepDoc
, SpStep
, SpStep SpStep2
, SpStep SpStepMC
, KatUsl
, KatMC
, SpDocNal
, SpGrSch
, DocInfo
, Dogovor
, SpDocs
, KatNotes
, ObjAcct
, SpObjAcc
, SpStepNrecOldAndNew
;

//******************************************************************************
var bArch_Copy : boolean;

Function IsArchSp(_cMCUsl : comp; _PrMC : comp) : boolean;
{
  Result := FALSE;

  if (_PrMC = 1)
    {
      if (loSavedDO.GetFirst KatMC where (( _cMCUsl == KatMC.nRec ))= tsOk)
        if (loSavedDO.KatMC.IsArch = 1)
          Result := TRUE;
    }
  else
    if (loSavedDO.GetFirst KatUsl where (( _cMCUsl == KatUsl.nRec ))= tsOk)
      if (loSavedDO.KatUsl.IsArch = 1)
        Result := TRUE;

  if Result
    loSavedDO.NeedReCalc := TRUE;
}

Function FoundArchive(_cBaseDoc : comp) : boolean;
{
  Result := FALSE;

  if (loSavedDO.GetFirst StepDoc where (( _cBaseDoc == StepDoc.cBaseDoc )) = tsOk)
    loSavedDO._LOOP SpStep where (( loSavedDO.StepDoc.nRec == SpStep.cStepDoc ))
      if IsArchSp(loSavedDO.SpStep.cMCUsl, loSavedDO.SpStep.PrMC)
        {
          Result := TRUE;
          Exit;
        }
}

//******************************************************************************

Function FoundInDogovorSpec(nRecDog  : comp;
                            NRecMcUsl: comp;
                            wTip     : word;
                            NRecOtpEd: comp;
                        var doPrice  : TSumma): boolean;
var
  NewPrice: double;
  dValNalog: Date;
{
  FoundInDogovorSpec := TRUE;

  if (loSavedDO.GetFirst FastFirstRow Dogovor where ((nRecDog == Dogovor.NRec)) <> tsOk)
    Exit;

  FoundInDogovorSpec := FALSE;

  loSavedDO._LOOP SpDocs where (( Dogovor.NRec == SpDocs.cDoc AND
                                  Dogovor.TiDk == SpDocs.TiDk AND
                                  wTip         == SpDocs.PrMC ))
  {
    if ((nRecMcUsl = loSavedDO.SpDocs.cMCUSL) AND
        (nRecOtpEd = loSavedDO.SpDocs.cOtpEd))
      {
        if (loSavedDO.BaseDoc.cVal <> loSavedDO.Dogovor.cVal)
          {
            dValNalog := if (loSavedDO.BaseDoc.dValCurse = Date(0, 0, 0),
                             loSavedDO.BaseDoc.dDoc,
                             loSavedDO.BaseDoc.dValCurse);
            NewPrice := oValFunc.GetAnyCurrency(loSavedDO.Dogovor.cVal,
                                                loSavedDO.SpDocs.Price,
                                                dValNalog,
                                                loSavedDO.BaseDoc.cVal);
          }
        else
          NewPrice := loSavedDO.SpDocs.Price;

        doPrice := oDOfuns.DoRoundP(loSavedDO.BaseDoc.cVal, loSavedDO.BaseDoc.VidDoc, NewPrice);

        FoundInDogovorSpec := TRUE;
        Exit;
      }
  }
}

//******************************************************************************

Function CopyStep(wVD        : word;
                  nRecSpStep : comp;
                  naltype    : word;
                  NRecDog    : comp;
                  WithOutRes : boolean;
                  LeavePos   : boolean;
                  pcSpMC     : comp;
                  Buf        : TSpStep
                 ): boolean;
Var
  OldKol, OldKolSkl: double;
{
  Result := TRUE;

  if (WithOutRes AND LeavePos)
    Exit;

  Result := FALSE;

  var piKatDopEd_: iKatDEI;

  loSavedDO.SpStep.Buffer := type$SpStep(Buf);
  loSavedDO.SpStep.cSpMC  := pcSpMC;

  if NOT FoundInDogovorSpec(nRecDog,
                            loSavedDO.SpStep.cMCUsl,
                            loSavedDO.SpStep.PrMC,
                            loSavedDO.SpStep.cOtpEd,
                            loSavedDO.SpStep.Price)
    Exit;

  if ( wVD = 202 )
    loSavedDO.SpStep.KolOpl := 0;

  loSavedDO.SpStep.NRec     := 0;
  loSavedDO.SpStep.cStepDoc := loSavedDO.StepDoc.NRec;
  loSavedDO.SpStep.dDoc     := loSavedDO.BaseDoc.dDoc;
  loSavedDO.SpStep.Reserv   := 0;
  loSavedDO.SpStep.SrokRes  := 0;
  loSavedDO.SpStep.cOwner   := loSavedDO.SpStep2.cOwner;

  if loSavedDO.NoCopyParty
     loSavedDO.SpStep.cParty := 0;

  if WithOutRes
    loSavedDO.SpStep.Npp := oSpNext.GetSpNppNext(loSavedDO.SpStep.cStepDoc, coSpStep);

  OldKol    := loSavedDO.SpStep.Kol;
  OldKolSkl := loSavedDO.SpStep.KolSkl;

  loSavedDO.SpStep.Kol    := 0;
  loSavedDO.SpStep.KolSkl := 0;

  RunPostUpdateChangeAlg(0, 0, True);

  if (loSavedDO.insert current SpStep <> tsOk)
    Exit;

  loSavedDO.SpStep.Kol    := OldKol;
  loSavedDO.SpStep.KolSkl := OldKolSkl;

  oSpDocs.CheckSpDocsOstatokOnStep(loSavedDO.BaseDoc.cNote, loSavedDO.SpStep.cSpDocs, TSpStep(loSavedDO.SpStep.Buffer), loSavedDO.SpStep.KolSkl);

  loSavedDO.NeedReCalc := loSavedDO.NeedReCalc OR not f_KolIsZero(loSavedDO.SpStep.KolSkl - OldKolSkl);

  loSavedDO.SpStep.Kol += (loSavedDO.SpStep.KolSkl - OldKolSkl);

  if (loSavedDO.update current SpStep <> tsOk)
    Exit;

  loSavedDO.ClearBuffer(loSavedDO.tnSpStepNrecOldAndNew);
  loSavedDO.SpStepNrecOldAndNew.SpStepNrecOld := nRecSpStep;
  loSavedDO.SpStepNrecOldAndNew.SpStepNrecNew := loSavedDO.SpStep.NRec;
  loSavedDO.insert current SpStepNrecOldAndNew;

  oMTRFun.CopySpecMTR(coSpStep, nRecSpStep, coSpStep, loSavedDO.SpStep.NRec);

  RunInterface('CopySpDocSmeta', coSpStep, nRecSpStep, coSpStep, loSavedDO.SpStep.nRec);

  Result := TRUE;

  if ((wGetTune('Doc.SaveNoDO') AND 8) = 0)
    CopyAllAttr    (coSpStep, NRecSpStep, loSavedDO.SpStep.NRec);

  if ((wGetTune('Doc.SaveNoDO') AND 4) = 0)
    CopyAllClassVal(coSpStep, NRecSpStep, loSavedDO.SpStep.NRec);

  if ((loSavedDO.SpStep.PrMC <> 1) AND (loSavedDO.KatUsl.TYPEUSL = 1))
    oCalcFuns.ClcUsl_CopyFactPar(nRecSpStep, coSpStep, loSavedDO.SpStep.NRec, coSpStep);

  oSDfuns.TTNDoc_Copy(coSpStep, NRecSpStep, coSpStep, loSavedDO.SpStep.NRec);

  loSavedDO._LOOP SpDocNal
                  where ((nRecSpStep == SpDocNal.cSpDoc AND
                          naltype    == SpDocNal.TipDoc))
    {
      loSavedDO.SpDocNal.NRec   := 0;
      loSavedDO.SpDocNal.cSpDoc := loSavedDO.SpStep.NRec;
      loSavedDO.SpDocNal.cDoc   := loSavedDO.BaseDoc.NRec;
      if (loSavedDO.insert current SpDocNal <> tsOk) {};
    }

  if (loSavedDO.SpStep.PrMC = 1)
   {  // копируем ДЕИ
     piKatDopEd_.CopyDopEd(coSpStep,
                           NRecSpStep,
                           1,
                           loSavedDO.SpStep.KolSkl,
                           coSpStep,
                           loSavedDO.SpStep.NRec,
                           1,
                           loSavedDO.SpStep.KolSkl,
                           loSavedDO.BaseDoc.VidDoc);

     piKatDopEd_.CopyDopEd(coSpStep,
                           NRecSpStep,
                           2,
                           loSavedDO.SpStep.Kol,
                           coSpStep,
                           loSavedDO.SpStep.NRec,
                           2,
                           loSavedDO.SpStep.Kol,
                           loSavedDO.BaseDoc.VidDoc);
   }

  //копируем сложные скидки по спецификации в ДО на продажу
  if ( wVD = 201 )
    piCalcSkid.CopyDocSkid(nRecSpStep, loSavedDO.SpStep.NRec, 1);

  RunPostUpdateChangeAlg(loSavedDO.SpStep.NRec, 0, False);
}

//******************************************************************************

Function CopyDO(nRecDO      : comp;
                naltype     : word;
                NRecDog     : comp;
                WithOutRes  : boolean;
                ChargeParam : word;
                NeedNomMes  : word = 0 ): comp;
{
  Result := 0;
  loSavedDO.NeedReCalc := FALSE;

  if (
      (loSavedDO.GetFirst BaseDoc where (( nRecDO == BaseDoc.NRec     )) <> tsOk)
       OR
      (loSavedDO.GetFirst StepDoc where (( nRecDO == StepDoc.cBaseDoc )) <> tsOk)
     )
    {
      Message('Запомненный Вами документ не найден (возможно, удален), поэтому будет создан новый...', OkButton + Warning);
      Exit;
    }

  var NRecStepDoc: comp; NRecStepDoc := loSavedDO.StepDoc.NRec;

  if WithOutRes
    {
      var Flag: byte; Flag := 0; // 1-есть что переносить, 2-есть что оставлять
      loSavedDO._LOOP SpStep where (( NRecStepDoc == SpStep.cStepDoc AND
                                      word(1)     == SpStep.PrMC ))
        {
          if (loSavedDO.SpStep.Kol > loSavedDO.SpStep.Reserv)
            if (loSavedDO.SpStep.Reserv > 0)
              Flag := Flag OR if(ChargeParam = 0, 1, 4)
            else
              Flag := Flag OR 1;

          if (loSavedDO.SpStep.Kol <= loSavedDO.SpStep.Reserv)
            Flag := Flag OR 2;

          if (Flag = 3)
            Break;
        }

      if ((Flag = 1) OR (Flag = 2) OR (Flag = 4))
        {
          Message('Документ-основание не содержит позиций для разделения.', Information);
          Exit;
        }

      loSavedDO.update SpStep where (( NRecStepDoc == SpStep.cStepDoc )) set SpStep.Npp := 0;
    }

  loSavedDO.BaseDoc.NRec := 0;

  var tmpW: word;

  case loSavedDO.BaseDoc.VidDoc of
  //------------------------------
     101: tmpW := if(boGetTune('Oper.Buy.DO.AvtoNum'), 100, 0);
  //------------------------------
     111: tmpW := if(boGetTune('Oper.Buy.PredOplDO.AvtoNum'),  99, 0);
  //------------------------------
     201: tmpW := 101;
  //------------------------------
     202: tmpW := 102;
  //------------------------------
     211: tmpW := 111;
  //------------------------------
     501: tmpW := 103;
  //------------------------------
    1420: tmpW := 1410;
  //------------------------------
    else  tmpW := 0;
  //------------------------------
  end;

  var Flag: boolean;  Flag := (nRecDog <> 0);  // TRUE - не надо сохранять номер

  if Not Flag
    {
      case loSavedDO.BaseDoc.VidDoc of
        201: Flag := wGetTune('Oper.UniqNoDOsell')           > 0;
        211: Flag := wGetTune('Oper.UniqNoDOsellPO')         > 0;
        101: Flag := wGetTune('Oper.UniqNoDObuy')            > 0;
        111: Flag := wGetTune('Oper.UniqNoDObuyPO')          > 0;
       1410: Flag := wGetTune('Doc.Wood.NarAkt.UniqNoDObuy') > 0;
       1420: Flag := wGetTune('Doc.Wood.Schet.UniqNoDObuy')  > 0;
      end;

      if Not Flag
        case (wGetTune('Doc.SaveNoDO') AND 3) of
        //------------------------------
          word(0): Flag := TRUE;
        //------------------------------
          word(2): Flag := iCase(NeedNomMes;
                                 Message('Сохранить старый номер документа-основания?', Confirmation + YesNo) <> cmYes,
                                 TRUE,
                                 FALSE);
        //------------------------------
        end;
    }

  if not boGetTune('Doc.NaslDescr')
  {
    loSavedDO.BaseDoc.Descr := CurDescr;
    loSavedDO.BaseDoc.DesGr := CurDesGr;
  }

  loSavedDO.BaseDoc.dDoc    := Cur_Date;
  loSavedDO.BaseDoc.YearDoc := Year(loSavedDO.BaseDoc.dDoc);
  loSavedDO.BaseDoc.dEnd    := Add_Day(loSavedDO.BaseDoc.dDoc, loSavedDO.BaseDoc.KolDn);

  if Flag
    if (tmpW = 0)
      loSavedDO.BaseDoc.NoDoc := PadCh('', '0', if (loSavedDO.BaseDoc.VidDoc = 201, bGetTune('Doc.Sell.DO.NoDoc'), 6))
    else
      loSavedDO.BaseDoc.NoDoc := oDOfuns.GetNextNumberBaseDoc(loSavedDO.BaseDoc.buffer);

  var sTune: string;

  case loSavedDO.BaseDoc.VidDoc of
     101 : sTune := 'Doc.Buy.Status';
     201
   , 510 : sTune := 'Doc.Sell.Status';
     102 : sTune := 'Doc.PrCons.Status';
     202 : sTune := 'Doc.OtpCons.Status';
     111 : sTune := 'Doc.Buy.StatusPO';
     211 : sTune := 'Doc.Sell.StatusPO';
    1410 : sTune := 'Doc.Wood.NarAkt.Status';
    1420 : sTune := 'Doc.Wood.Schet.Status';
  else
           sTune := '';
  end;

  if ( sTune <> '' )
    loSavedDO.BaseDoc.Status := if(wGetTune(sTune) = 0, 2, 1)
  else
    loSavedDO.BaseDoc.Status := 2; // Исполняемый документ

  var TiDk: word;

  TiDk := oDOfuns.GetTipHozOnVidDoc(loSavedDO.BaseDoc.VidDoc);

  if not oStatUser.Descr_Stat_U(TRUE, TiDk, CurDescr, loSavedDO.BaseDoc.cNote)
    loSavedDO.BaseDoc.cNote := oNotes.GetFirstNote(40, loSavedDO.BaseDoc.Status)
  else
    if (loSavedDO.GetFirst KatNotes where ((loSavedDO.BaseDoc.cNote == KatNotes.NRec)) = tsOk)
      loSavedDO.BaseDoc.Status := loSavedDO.KatNotes.Status;

  loSavedDO.BaseDoc.Prior := '99';

  if( GetFirst KatBank where (( loSavedDO.BaseDoc.cBank == KatBank.nRec))= tsOK )
    {
      if (KatBank.Status = 5)
        if ( GetFirst KatBank where (( loSavedDO.BaseDoc.cOrg     == KatBank.cOrg
                                                        AND word(1) == KatBank.Aktiv )) = tsOK )
          loSavedDO.BaseDoc.cBank := KatBank.NRec;
        else
          if ( GetFirst KatBank where (( loSavedDO.BaseDoc.cOrg   == KatBank.cOrg
                                                        AND word(0) == KatBank.Aktiv )) = tsOK )
            loSavedDO.BaseDoc.cBank := KatBank.NRec;
    }

  if (loSavedDO.insert current BaseDoc <> tsOk)
    {
      Message('Ошибка формирования копии документа!', Warning);
      Exit;
    }

  if ((wGetTune('Doc.SaveNoDO') AND 8) = 0)
    CopyAllAttr    (coBaseDoc, NRecDO, loSavedDO.BaseDoc.NRec);

  if ((wGetTune('Doc.SaveNoDO') AND 4) = 0)
    CopyAllClassVal(coBaseDoc, NRecDO, loSavedDO.BaseDoc.NRec);

  //--для memo-поля (примечание для DocInfo)
  if (loSavedDO.GetFirst DocInfo where(( NRecDO     == DocInfo.cDoc AND
                                         word(1102) == DocInfo.DocType )) = tsOk)
    {
      loSavedDO.DocInfo.NRec := 0;
      loSavedDO.DocInfo.cDoc := loSavedDO.BaseDoc.NRec;

      if (loSavedDO.insert current DocInfo = tsOk) {}
    }

  var cObjOld, cObjNew, cSpObjOld, cSpObjNew, ClaimNrec: comp;

  cObjNew := cObjOld := 0;

  if ((wGetTune('Doc.SaveNoDO') AND 16) = 0)
  {
    // копирование привязки к заявке МТО (шапка)
    if ( loSavedDO.GetFirst ObjAcct where (( toBaseDoc == ObjAcct.TypeObj
                                         and nRecDO    == ObjAcct.cObject
                                         and toZClient == ObjAcct.TypeOwn (noindex)
                                          )) = tsOk )
      { //входящие по отношению к заявке
        cObjOld := loSavedDO.ObjAcct.nRec;

        loSavedDO.ObjAcct.nRec    := 0;
        loSavedDO.ObjAcct.cObject := loSavedDO.BaseDoc.nRec;

        if ( loSavedDO.insert current ObjAcct = tsOk )
          cObjNew := loSavedDO.ObjAcct.nRec;
      }
    else //исходящие по отношению к заявке
      if ( loSavedDO.GetFirst ObjAcct where (( toBaseDoc == ObjAcct.TypeOwn
                                           and nRecDO    == ObjAcct.cOwner
                                           and toZClient == ObjAcct.TypeObj (noindex)
                                            )) = tsOk )
        {
          cObjOld := loSavedDO.ObjAcct.nRec;

          loSavedDO.ObjAcct.nRec   := 0;
          loSavedDO.ObjAcct.cOwner := loSavedDO.BaseDoc.nRec;

          if ( loSavedDO.insert current ObjAcct = tsOk )
            cObjNew := loSavedDO.ObjAcct.nRec;
        }
  }

  if (loSavedDO.RecordExists SpStep2 where (( nRecStepDoc == SpStep2.cStepDoc AND
                                              word(1)     == SpStep2.PrMC
                                           )) <> tsOk)
    loSavedDO.NoCopyParty := False
  else
  loSavedDO.NoCopyParty := if((wGetTune('Party.MoveParty') = 1), (Message('Копировать партии?', Confirmation + YesNo + mfSwapButtons) <> cmYes),
                              if((wGetTune('Party.MoveParty') = 2), True, False));


  loSavedDO.StepDoc.NRec     := 0;
  loSavedDO.StepDoc.cBaseDoc := loSavedDO.BaseDoc.NRec;
  loSavedDO.StepDoc.dStart   := loSavedDO.BaseDoc.dDoc;
  loSavedDO.StepDoc.dEnd     := loSavedDO.BaseDoc.dEnd;
  loSavedDO.StepDoc.Status   := loSavedDO.BaseDoc.Status;
  loSavedDO.StepDoc.dIzvFact := 0;
  loSavedDO.StepDoc.dOplFact := 0;

  if ( loSavedDO.BaseDoc.dDoc <> ZeroDate )
    case loSavedDO.BaseDoc.VidDoc of
      101, 111, 201, 211:
        oDOfuns.GetOplAndOtgrDatesDef(loSavedDO.BaseDoc.VidDoc, loSavedDO.BaseDoc.cOrg, loSavedDO.BaseDoc.dDoc, loSavedDO.StepDoc.dOplMax, loSavedDO.StepDoc.dOtgr);
    end;

  if (loSavedDO.insert current StepDoc <> tsOk)
    oDOfuns.BaseDoc_Delete(loSavedDO.BaseDoc.NRec) // откат ДО
  else
    {  // копирование спецификации счета
      StartNewVisual(vtNumericVisual, vfTimer, 'Копирование спецификации...', 1);

      loSavedDO.delete all SpStepNrecOldAndNew;

      loSavedDO._LOOP SpStep2 where (( nRecStepDoc == SpStep2.cStepDoc AND
                                       comp(0)     == SpStep2.cSpMC ))
        {
          NextVisual;

          if NOT bArch_Copy
            if IsArchSp(loSavedDO.SpStep2.cMCUsl, loSavedDO.SpStep2.PrMC)
              Continue;

          var NewNrec       : comp;
          var OldNrec       : comp;    OldNrec        := loSavedDO.SpStep2.NRec;
          var NeedRemove    : boolean; NeedRemove     := (loSavedDO.SpStep2.Kol > loSavedDO.SpStep2.Reserv);
          var NeedCopyNotRes: boolean; NeedCopyNotRes := FALSE;

          if (NeedRemove) AND
              (ChargeParam = 1) AND
               (loSavedDO.SpStep2.Reserv > 0)
            NeedCopyNotRes := TRUE;

          if CopyStep(loSavedDO.BaseDoc.VidDoc, loSavedDO.SpStep2.NRec, naltype, NRecDog, WithOutRes, NOT NeedRemove, 0, TSpStep(loSavedDO.SpStep2.Buffer))
            {
              if NeedCopyNotRes
                {
                  loSavedDO.update current SpStep
                     set SpStep.Kol     := loSavedDO.SpStep2.Kol    - loSavedDO.SpStep2.Reserv,
                         SpStep.KolSkl  := loSavedDO.SpStep2.KolSkl - loSavedDO.SpStep2.Reserv;

                  loSavedDO.update current SpStep2
                     set SpStep2.Kol    := loSavedDO.SpStep2.Reserv,
                         SpStep2.KolSkl := loSavedDO.SpStep2.Reserv;
                }

              NewNrec := loSavedDO.SpStep.NRec;
              loSavedDO._LOOP SpStepMC where ((OldNrec == SpStepMC.cSpMC))
                {
                  NextVisual;
                  CopyStep(loSavedDO.BaseDoc.VidDoc, loSavedDO.SpStepMC.NRec, naltype, NRecDog, WithOutRes, NOT NeedRemove, NewNrec, TSpStep(loSavedDO.SpStepMC.Buffer));
                  if WithOutRes AND NeedRemove AND NOT NeedCopyNotRes
                    {
                      var c: comp; c := loSavedDO.SpStepMC.NRec;

                      GetFirst FastFirstRow SpStep where (( c == SpStep.NRec ));

                      DoSpStepDelete;
                    }
                }

              if WithOutRes AND NeedRemove AND NOT NeedCopyNotRes
                {
                  GetFirst FastFirstRow SpStep where (( OldNrec == SpStep.NRec ));
                  DoSpStepDelete;
                }

              // копирование привязки к заявке МТО (спецификация)
              cSpObjNew := 0;
              cSpObjOld := 0;

              if ((wGetTune('Doc.SaveNoDO') AND 16) = 0)
              {
                if ( (cObjOld <> 0) and (cObjNew <> 0) )
                  if ( loSavedDO.GetFirst SpObjAcc where ((  toSpStep    == SpObjAcc.TypePos
                                                         and OldNrec     == SpObjAcc.cPos
                                                         and word(0)     == SpObjAcc.TypeHier (noindex)
                                                         and cObjOld     == SpObjAcc.cObjAcct (noindex)
                                                         )) = tsOk )
                    { //входящие по отношению к заявке
                      cSpObjOld := loSavedDO.SpObjAcc.nRec;

                      loSavedDO.SpObjAcc.nRec     := 0;
                      loSavedDO.SpObjAcc.cObjAcct := cObjNew;
                      loSavedDO.SpObjAcc.cPos     := NewNrec;

                      if ( loSavedDO.insert current SpObjAcc = tsOk )
                        cSpObjNew := loSavedDO.SpObjAcc.nRec;

                      if ( (cSpObjOld <> 0) and (cSpObjNew <> 0) )
                        if ( loSavedDO.GetFirst SpObjAcc where ((  word(1)   == SpObjAcc.TypeHier
                                                               and cObjOld   == SpObjAcc.cObjAcct (noindex)
                                                               and cSpObjOld == SpObjAcc.cSpObjAcc (noindex)
                                                               )) = tsOk )
                          {
                            loSavedDO.SpObjAcc.nRec      := 0;
                            loSavedDO.SpObjAcc.cObjAcct  := cObjNew;
                            loSavedDO.SpObjAcc.cSpObjAcc := cSpObjNew;
                            loSavedDO.SpObjAcc.cPos      := NewNrec;

                            if ( loSavedDO.insert current SpObjAcc = tsOk )
                              {}
                          }
                    }
                  else //исходящие по отношению к заявке
                    if ( loSavedDO.GetFirst SpObjAcc where ((  toSpStep  == SpObjAcc.TypeObj
                                                           and OldNrec   == SpObjAcc.cObject
                                                           and word(1)   == SpObjAcc.TypeHier (noindex)
                                                           and cObjOld   == SpObjAcc.cObjAcct (noindex)
                                                           )) = tsOk )
                      {
                        ClaimNrec := loSavedDO.SpObjAcc.cPos;

                        if ( loSavedDO.GetFirst SpObjAcc where ((  toSpZClient == SpObjAcc.TypePos
                                                               and ClaimNrec   == SpObjAcc.cPos
                                                               and word(0)     == SpObjAcc.TypeHier (noindex)
                                                               and cObjOld     == SpObjAcc.cObjAcct (noindex)
                                                               )) = tsOk )
                          {
                            cSpObjOld := loSavedDO.SpObjAcc.nRec;

                            loSavedDO.SpObjAcc.nRec     := 0;
                            loSavedDO.SpObjAcc.cObjAcct := cObjNew;

                            if ( loSavedDO.insert current SpObjAcc = tsOk )
                              cSpObjNew := loSavedDO.SpObjAcc.nRec;

                            if ( (cSpObjOld <> 0) and (cSpObjNew <> 0) )
                              if ( loSavedDO.GetFirst SpObjAcc where ((  word(1)   == SpObjAcc.TypeHier
                                                                     and cObjOld   == SpObjAcc.cObjAcct (noindex)
                                                                     and cSpObjOld == SpObjAcc.cSpObjAcc (noindex)
                                                                     )) = tsOk )
                                {
                                  loSavedDO.SpObjAcc.nRec      := 0;
                                  loSavedDO.SpObjAcc.cObjAcct  := cObjNew;
                                  loSavedDO.SpObjAcc.cSpObjAcc := cSpObjNew;
                                  loSavedDO.SpObjAcc.cObject   := NewNrec;

                                  if ( loSavedDO.insert current SpObjAcc = tsOk )
                                    {}
                                }
                          }
                      }
               }
            }
        }

      loSavedDO._LOOP SpStep where ((loSavedDO.StepDoc.NRec == SpStep.cStepDoc))
        if ((loSavedDO.SpStep.cOwner <> 0) AND (loSavedDO.SpStep.cOwner <> 1))
          if loSavedDO.GetFirst SpStepNrecOldAndNew where ((loSavedDO.SpStep.cOwner == SpStepNrecOldAndNew.SpStepNrecOld)) = tsOk
            {
              loSavedDO.SpStep.cOwner := loSavedDO.SpStepNrecOldAndNew.SpStepNrecNew;
              loSavedDO.update current SpStep;
            }

      if WithOutRes
        loSavedDO.update SpStep where (( NRecStepDoc == SpStep.cStepDoc )) set SpStep.Npp := oSpNext.GetSpNppNext(nRecStepDoc, coSpStep);
      //ERP-1462 - скопируем привязку к доверености
      oDoverFuns.CopyRefDover(trDoverDO, trDoverDO, coStepDoc, coStepDoc, NrecStepDoc, loSavedDO.StepDoc.NRec, loSavedDO.StepDoc.NRec );

      StopVisual('', 0);

      var cNewDO : comp; cNewDO := loSavedDO.BaseDoc.NRec;

      if ( loSavedDO.RecordExists SpGrSch
                     where (( word(0) == SpGrSch.wList AND
                              NRecDO  == SpGrSch.cBaseDoc )) = tsOk )
        loSavedDO.insert into SpGrSch
        (
          cGroupSch
        , wList
        , cBaseDoc
        )
        select
          SpGrSchOld.cGroupSch
        , SpGrSchOld.wList
        , cNewDO
        from SpGrSch SpGrSchOld
        where
        ((
            word(0) == SpGrSchOld.wList
        AND NRecDO  == SpGrSchOld.cBaseDoc
        ));

      oSDfuns.TTNDoc_Copy(coBaseDoc, NRecDO, coBaseDoc, loSavedDO.BaseDoc.NRec);

      if ( IsPredOplDO(loSavedDO.BaseDoc.VidDoc) AND (loSavedDO.BaseDoc.SpecYes = 0) )
        {
          loSavedDO._LOOP SpDocNal
                          where ((nRecDO                              == SpDocNal.cDoc  AND
                                  word(loSavedDO.BaseDoc.VidDoc+2000) == SpDocNal.TipDoc))
            {
              loSavedDO.SpDocNal.NRec   := 0;
              loSavedDO.SpDocNal.cDoc   := loSavedDO.BaseDoc.NRec;
              loSavedDO.SpDocNal.cSpDoc := loSavedDO.BaseDoc.NRec;

              if (loSavedDO.insert current SpDocNal <> tsOk) {};
            }
        }

      //копируем сложные скидки по спецификации в ДО на продажу
      if (loSavedDO.BaseDoc.VidDoc = 201) OR ( loSavedDO.BaseDoc.VidDoc = 1420 )
       piCalcSkid.CopyDocSkid(nRecDO, loSavedDO.BaseDoc.NRec, 0);

      Result := loSavedDO.BaseDoc.NRec;

      oUKSfuns.JoinDO(loSavedDO.BaseDoc.NRec);
    }


  if WithOutRes OR loSavedDO.NeedReCalc
    {
      GetFirst FastFirstRow BaseDoc where (( NRecDO == BaseDoc.NRec ));
      GetTotalSkid(FALSE);
      NRecDO := loSavedDO.BaseDoc.NRec;
      GetFirst FastFirstRow BaseDoc where (( NRecDO == BaseDoc.NRec ));
      GetTotalSkid(FALSE);
    }
}

//******************************************************************************
