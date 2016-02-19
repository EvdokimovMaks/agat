.LinkForm 'ReportRKMDebug' Prototype is 'MNPLAN'
.NameInList '�⫠��� �� ���'
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
      0001000000000033h: runinterface(AGAT::ReportRKMForm1D, comp(_MNREC), '');
      000100000000022Ch: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10620, '');     //'���_��ଠ 2�_��������_��������'
      0001000000000125h: runinterface(AGAT::ReportRKMForm3D, comp(_MNREC), '');                //'���_��ଠ 3�_���ਠ��'
      0001000000000188h: runinterface(AGAT::ReportRKMForm3D, comp(_MNREC), '');            //'���_��ଠ 4�_����䠡ਪ���'
      0001000000000191h: runinterface(AGAT::ReportRKMForm3D, comp(_MNREC), '');                      //'���_��ଠ 5�_���'
      000100000000019Ah: runinterface(AGAT::ReportRKMForm3D, comp(_MNREC), '');  //'���_��ଠ 6�_��������������_��������'
      00010000000001A3h: runinterface(AGAT::ReportRKMForm3D, comp(_MNREC), '');    //'���_��ଠ 7�_��������������_������'
      0001000000000172h: runinterface(AGAT::ReportRKMForm8D, comp(_MNREC), '', 0);    //'���_��ଠ 8�_�����������_��_�_�����������'
      00010000000001EBh: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10618, '');
      00010000000001D2h: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10495, '');
      0001000000000223h: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10619, '');
      0001000000000235h: runinterface(AGAT::ReportRKMForm14D, comp(_MNREC), 10642, '');
      00010000000001F3h: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10497, '');
    else
    {
      var s: string;
      if v.getfirst wayaccou = tsOk
        s := v.wayaccou.name
      else
        s := 'Nrec='+v.mnplan.nrec;
      message('���㬥��� � 蠡����� "'+s+'" �� ��ࠡ��뢠���� � �⮬ ����', error);
    }
    end;
  }
  else
  {
    message('�� ������ ���㬥�� (_mnrec='+_MNREC+')');
  }
  ReportRKMDebug.fExit;
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
