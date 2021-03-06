.LinkForm 'ReportRKMShort' Prototype is 'MNPLAN'
.NameInList 'ฎเฌ   ชเ โช ๏'
.f 'NUL'
.create view v
as select *
from mnplan, wayaccou
where ((
  comp(_MNREC) == mnplan.nrec and
  mnplan.cwayaccou == wayaccou.nrec
));
.{CheckEnter MNPLAN_LOOP1
.begin
  if v.getfirst mnplan = tsok
  {
    case v.mnplan.cwayaccou of
      0001000000000033h: runinterface(AGAT::ReportRKMForm1D, comp(_MNREC), '') //' ฎเฌ  1  ');
      000100000000022Ch: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10620, '') //' ฎเฌ  2  ');
      0001000000000125h: runinterface(AGAT::ReportRKMForm3, comp(_MNREC), '') //' ฎเฌ  4  โฅเจ ซ๋');
      0001000000000188h: runinterface(AGAT::ReportRKMForm3, comp(_MNREC), '') //' ฎเฌ  5 ฎซใไ กเจช โ๋');
      0001000000000191h: runinterface(AGAT::ReportRKMForm3, comp(_MNREC), '') //' ฎเฌ  6 ');
      00010000000001EBh: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10618, '') //' ฎเฌ  8  ');
      00010000000001D2h: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10495, '') //' ฎเฌ  9  ');
      0001000000000223h: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10619, '') //' ฎเฌ  10  ');
      00010000000001F3h: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10497, '') //' ฎเฌ  14     ');
      0001000000000172h: runinterface(AGAT::ReportRKMForm8D, comp(_MNREC), '',1) //' ฎเฌ  7    ', 1);
      0001000000000235h: runinterface(AGAT::ReportRKMForm14D, comp(_MNREC), 10642, '') //' ฎเฌ  14    ');
    else
    {
      var s: string;
      if v.getfirst wayaccou = tsOk
        s := v.wayaccou.name
      else
        s := 'Nrec='+v.mnplan.nrec;
      message('ฎชใฌฅญโ๋ แ ่ กซฎญฎฌ "'+s+'" ญฅ ฎกเ ก โ๋ข ๎โแ๏ ข ํโฎฌ ฎโ็ฅโฅ', error);
    }
    end;
  }
  else
  {
    message('ฅ ญ ฉคฅญ คฎชใฌฅญโ (_mnrec='+_MNREC+')');
  }
end.
.{CheckEnter SPMNPL_LOOP1
.}
.{CheckEnter OBJACCT_IN_LOOP
.{CheckEnter SPOBJACC_IN_LOOP
.{CheckEnter SPOBJACC_CURIN_LOOP
.}
.}
.}
.{CheckEnter OBJACCT_OUT_LOOP
.{CheckEnter SPOBJACC_CUROUT_LOOP
.{CheckEnter SPOBJACC_OUT_LOOP
.}
.}
.}
.}
.endform
