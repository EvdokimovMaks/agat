.LinkForm 'ReportRKMDebug' Prototype is 'MNPLAN'
.NameInList 'Отладка форм РКМ'
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
      000100000000022Ch: runinterface(AGAT::ReportRKMForm10D, comp(_MNREC), 10620, '');     //'РКМ_Форма 2Д_Плановая_калькуляция'
      0001000000000125h: runinterface(AGAT::ReportRKMForm3D, comp(_MNREC), '');                //'РКМ_Форма 3Д_Материалы'
      0001000000000188h: runinterface(AGAT::ReportRKMForm3D, comp(_MNREC), '');            //'РКМ_Форма 4Д_Полуфабрикаты'
      0001000000000191h: runinterface(AGAT::ReportRKMForm3D, comp(_MNREC), '');                      //'РКМ_Форма 5Д_ПКИ'
      000100000000019Ah: runinterface(AGAT::ReportRKMForm3D, comp(_MNREC), '');  //'РКМ_Форма 6Д_КОНТРАГЕНТСКИЕ_ПОСТАВКИ'
      00010000000001A3h: runinterface(AGAT::ReportRKMForm3D, comp(_MNREC), '');    //'РКМ_Форма 7Д_КОНТРАГЕНТСКИЕ_РАБОТЫ'
      0001000000000172h: runinterface(AGAT::ReportRKMForm8D, comp(_MNREC), '', 0);    //'РКМ_Форма 8Д_РАСШИФРОВКА_ЗП_И_ТРУДОЗАТРАТ'
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
      message('Документы с шаблоном "'+s+'" не обрабатываются в этом отчете', error);
    }
    end;
  }
  else
  {
    message('Не найден документ (_mnrec='+_MNREC+')');
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
