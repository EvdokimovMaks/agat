.LinkForm 'ReportRKMShort' Prototype is 'MNPLAN'
.NameInList '��ଠ ��� ��⪠�'
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
      0001000000000125h: runinterface(AGAT::ReportRKMForm3, comp(_MNREC), '��� ��ଠ 4 ���ਠ��');
      0001000000000188h: runinterface(AGAT::ReportRKMForm3, comp(_MNREC), '��� ��ଠ 5 ����䠡ਪ���');
      0001000000000191h: runinterface(AGAT::ReportRKMForm3, comp(_MNREC), '��� ��ଠ 6 ���');
      00010000000001D2h: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10495, '��� ��ଠ 9 ����������������� �������');
      00010000000001F3h: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10497, '��� ��ଠ 14 �������� �� ������� ���������� ���������');
      0001000000000172h: runinterface(AGAT::ReportRKMForm8D, comp(_MNREC), '��� ��ଠ 8� 7 ����������� �� � �����������', 1);
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
