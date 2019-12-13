cmOpenSearch :
{
  if ( not oProtector.CanEditDoc(BaseDoc.nRec, cpM_SilentNo) )
  {
    Stop;
    Exit;
  }
  Case CurField of
  #Nomenkl,
  #NamTovar:
  {
    if (wGetTune('Pick.SelKatMc') = 1)
    {
      message(''#3'Выбор из каталога МЦ(Услуг) недоступен!', Information);
      Exit;
    }
    QuickChoiceName := if(CurField = #Nomenkl, 'qcKodMCUsl', 'qcNameMCUsl');

    ProcessCommand(cmPick);

    Stop;
  }
  #KatOtpEdGrM.Name,
  #KatOtpEd.Name:
  {
    QuickChoiceName := 'qcKatOtpEdGrMName';
    ProcessCommand(cmPick);
    Stop;
  }
  #KatParty.Name:
  {
    QuickChoiceName := 'qcKatPartyName';
    ProcessCommand(cmPick);
    Stop;
  }
  #KatParty.KOD:
  {
    QuickChoiceName := 'qcKatPartyKOD';
    ProcessCommand(cmPick);
    Stop;
  }
  #TTNResOtgr.Name:
  {
    if (BaseDoc.VidDoc = 1410 OR BaseDoc.VidDoc = 1420)
      QuickChoiceName := 'qcTTNResOtgrName_W'
    else
      QuickChoiceName := 'qcTTNResOtgrName';

    ProcessCommand(cmPick);
    Stop;
  }
  #TTNMoveCell.Name:
  {
    QuickChoiceName := 'qcTTNMoveCellName';
    ProcessCommand(cmPick);
    Stop;
  }
  #TTNKatEd.Name:
  {
    QuickChoiceName := 'qcTTNKatEdName';
    ProcessCommand(cmPick);
    Stop;
  }
  #TTNMetMassa.Name:
  {
    QuickChoiceName := 'qcTTNMetMassaName';
    ProcessCommand(cmPick);
    Stop;
  }
end;
}
