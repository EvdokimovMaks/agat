cmOpenSearch:
{
  if ( not oProtector.CanEditDoc(BaseDoc.nRec, cpM_SilentNo) )
    {
      Stop;
      Exit;
    }

  case CurField of
    #BaseDoc.DesGr:
      {
        QuickChoiceName := 'qcGrDescrDesGr';
        ProcessCommand(cmPick);
        Stop;
      }
    #BaseDoc.Descr:
      {
        QuickChoiceName := 'qcKatSoprDescr';
        ProcessCommand(cmPick);
        Stop;
      }
    #BDMoveCell.Name:
      {
        QuickChoiceName := 'qcMoveCellUzbekName';
        ProcessCommand(cmPick);
        Stop;
      }
    #KatOrg.Name:
      {
        if ( BoundActive(tbdKontrBound) OR BoundActive(tbKontrBound) OR BoundActive(tbKontrBoundNI) )
          {
            Stop;
            Exit;
          }

        if NullVipRef(oChkLink)
          GetVipRef(oChkLink, 'KatOrg');

        if oChkLink.CheckLinks(coKatOrgDescr)
          QuickChoiceName := 'qcKatOrgName'
        else
          QuickChoiceName := 'qcKatOrgTreeName';

        ProcessCommand(cmPick);
        Stop;
      }
    #KatBank.Name:
      {
        QuickChoiceName := 'qcKatBankName';
        ProcessCommand(cmPick);
        Stop;
      }
    #KatBank.MFO1:
      {
        QuickChoiceName := 'qcKatBankMFO1';
        ProcessCommand(cmPick);
        Stop;
      }
    #KatPodr.Name:
      {
        QuickChoiceName := 'qcKatPodrName';
        ProcessCommand(cmPick);
        Stop;
      }
    #KatPayment.Name:
      {
        QuickChoiceName := 'qcKatPaymentName';
        ProcessCommand(cmPick);
        Stop;
      }

    #Nomenkl,
    #NamTovar:
      {
        if (wGetTune('Pick.SelKatMc') = 1)
          {
            message('Выбор из каталога МЦ(Услуг) недоступен!', Information);
            Exit;
          }

        QuickChoiceName := if(CurField = #Nomenkl, 'qcKodMCUsl', 'qcNameMCUsl');

        ProcessCommand(cmPick);

        Stop;
      }
    #KatOtpEd.Name:
      {
        QuickChoiceName := 'qcKatOtpEdGrMName';
        ProcessCommand(cmPick);
        Stop;
      }
    #KlPrice.Name:
      {
        QuickChoiceName := 'qcPriceLName';
        ProcessCommand(cmPick);
        Stop;
      }
  else
    ProcessCommand(cmPick);
  End;

  Abort;
}
