.LinkForm 'ReportRKMShort' Prototype is 'MNPLAN'
.NameInList 'Форма РКМ краткая'
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
      0001000000000125h: runinterface(AGAT::ReportRKMForm3, comp(_MNREC), 'РКМ Форма 4 Материалы');
      0001000000000188h: runinterface(AGAT::ReportRKMForm3, comp(_MNREC), 'РКМ Форма 5 Полуфабрикаты');
      0001000000000191h: runinterface(AGAT::ReportRKMForm3, comp(_MNREC), 'РКМ Форма 6 ПКИ');
      00010000000001D2h: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10495, 'РКМ Форма 9 ОБЩЕХОЗЯЙСТВЕННЫЕ РАСХОДЫ');
      00010000000001F3h: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10497, 'РКМ Форма 14 СВЕДЕНИЯ ОБ ОБЪЕМАХ РЕАЛИЗАЦИИ ПРОДУКЦИИ');
    else
    {
      var s: string;
      if v.getfirst wayaccou = tsOk
        s := v.wayaccou.name
      else
        s := 'Nrec='+v.mnplan.nrec;
      message('Документы с шаблоном "'+s+'" не обрабатываются в этом отчете', error);
    }
    end;
  }
  else
  {
    message('Не найден документ (_mnrec='+_MNREC+')');
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
