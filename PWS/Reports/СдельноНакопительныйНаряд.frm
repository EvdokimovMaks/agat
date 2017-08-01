.LinkForm 'SdNar' Prototype is 'MNPLAN'
.NameInList 'Агат. Сдельно-накопительный наряд'
.f "NUL"
.var
  _dataRepository: pwsDataRepository;
  _dataStream    : pwsReportDataStream;
.endvar
.create view v
as select *
from pws, pwsPerson, pwsWork, tSums;
.begin
  v.delete all pws;
  v.delete all pwsPerson;
  v.delete all pwsWork;
  v.delete all tSums;
end.
.{CheckEnter MNPLAN_LOOP1
.begin
  var c: comp = 0;
  _dataRepository.LoadPws(_mNrec, c);
  _dataRepository.LoadPwsPersons(c);
  _dataRepository.LoadPwsWorks(c);
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
.begin
  RunFReport(_dataStream.pwsDS, '', true);
end.
.endform
