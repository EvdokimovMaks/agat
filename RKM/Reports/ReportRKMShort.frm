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
      0001000000000033h: runinterface(AGAT::ReportRKMForm1D, comp(_MNREC), 'РКМ Форма 1 ПРОТОКОЛ ЦЕНЫ');
      000100000000022Ch: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10620, 'РКМ Форма 2 ПЛАНОВАЯ КАЛЬКУЛЯЦИЯ');
      0001000000000125h: runinterface(AGAT::ReportRKMForm3, comp(_MNREC), 'РКМ Форма 4 Материалы');
      0001000000000188h: runinterface(AGAT::ReportRKMForm3, comp(_MNREC), 'РКМ Форма 5 Полуфабрикаты');
      0001000000000191h: runinterface(AGAT::ReportRKMForm3, comp(_MNREC), 'РКМ Форма 6 ПКИ');
      00010000000001EBh: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10618, 'РКМ Форма 8 ОБЩЕПРОИЗВОДСТВЕННЫЕ РАСХОДЫ');
      00010000000001D2h: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10495, 'РКМ Форма 9 ОБЩЕХОЗЯЙСТВЕННЫЕ РАСХОДЫ');
      0001000000000223h: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10619, 'РКМ Форма 10 СПЕЦИАЛЬНЫЕ ЗАТРАТЫ');
      00010000000001F3h: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10497, 'РКМ Форма 14 СВЕДЕНИЯ ОБ ОБЪЕМАХ РЕАЛИЗАЦИИ ПРОДУКЦИИ');
      0001000000000172h: runinterface(AGAT::ReportRKMForm8D, comp(_MNREC), 'РКМ Форма 7 РАСШИФРОВКА ЗП И ТРУДОЗАТРАТ', 1);
      0001000000000235h: runinterface(AGAT::ReportRKMForm14D, comp(_MNREC), 10642, 'РКМ Форма 14Д ПРОЧИЕ ПРОИЗВОДСТВЕННЫЕ ЗАТРАТЫ КРАТКАЯ');
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
