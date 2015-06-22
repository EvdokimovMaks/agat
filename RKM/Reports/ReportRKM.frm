.LinkForm 'ReportRKM' Prototype is 'MNPLAN'
.NameInList 'Форма РКМ'
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
      0001000000000125h: runinterface(AGAT::ReportRKMForm3D, comp(_MNREC), 'РКМ Форма 3Д Материалы');                //'РКМ_Форма 3Д_Материалы'
      0001000000000188h: runinterface(AGAT::ReportRKMForm3D, comp(_MNREC), 'РКМ Форма 4Д Полуфабрикаты');            //'РКМ_Форма 4Д_Полуфабрикаты'
      0001000000000191h: runinterface(AGAT::ReportRKMForm3D, comp(_MNREC), 'РКМ Форма 5Д ПКИ');                      //'РКМ_Форма 5Д_ПКИ'
      000100000000019Ah: runinterface(AGAT::ReportRKMForm3D, comp(_MNREC), 'РКМ Форма 6Д КОНТРАГЕНТСКИЕ ПОСТАВКИ');  //'РКМ_Форма 6Д_КОНТРАГЕНТСКИЕ_ПОСТАВКИ'
      00010000000001A3h: runinterface(AGAT::ReportRKMForm3D, comp(_MNREC), 'РКМ Форма 7Д КОНТРАГЕНТСКИЕ РАБОТЫ');    //'РКМ_Форма 7Д_КОНТРАГЕНТСКИЕ_РАБОТЫ'
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
