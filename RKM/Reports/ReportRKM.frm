.LinkForm 'ReportRKM' Prototype is 'MNPLAN'
.NameInList 'ฎเฌ  '
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
      0001000000000033h: runinterface(AGAT::ReportRKMForm1D, comp(_MNREC), ' ฎเฌ  1  ');
      000100000000022Ch: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10620, ' ฎเฌ  2  ');     //'_ฎเฌ  2_ซ ญฎข ๏_ช ซ์ชใซ๏ๆจ๏'
      0001000000000125h: runinterface(AGAT::ReportRKMForm3D, comp(_MNREC), ' ฎเฌ  3  โฅเจ ซ๋');                //'_ฎเฌ  3_ โฅเจ ซ๋'
      0001000000000188h: runinterface(AGAT::ReportRKMForm3D, comp(_MNREC), ' ฎเฌ  4 ฎซใไ กเจช โ๋');            //'_ฎเฌ  4_ฎซใไ กเจช โ๋'
      0001000000000191h: runinterface(AGAT::ReportRKMForm3D, comp(_MNREC), ' ฎเฌ  5 ');                      //'_ฎเฌ  5_'
      000100000000019Ah: runinterface(AGAT::ReportRKMForm3D, comp(_MNREC), ' ฎเฌ  6  ');  //'_ฎเฌ  6__'
      00010000000001A3h: runinterface(AGAT::ReportRKMForm3D, comp(_MNREC), ' ฎเฌ  7  ');    //'_ฎเฌ  7__'
      0001000000000172h: runinterface(AGAT::ReportRKMForm8D, comp(_MNREC), ' ฎเฌ  8 7    ', 0);    //'_ฎเฌ  8____'
      00010000000001EBh: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10618, ' ฎเฌ  9  ');
      00010000000001D2h: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10495, ' ฎเฌ  10  ');
      0001000000000223h: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10619, ' ฎเฌ  11  ');
      0001000000000235h: runinterface(AGAT::ReportRKMForm14D, comp(_MNREC), 10642, ' ฎเฌ  14   ');
      00010000000001F3h: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10497, ' ฎเฌ  15     ');
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
