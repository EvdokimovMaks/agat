.linkform 'ReportGroupByPodr' prototype is 'REESBVIP'
.nameinlist '(new) Реестры на выплату по заказам в разрезе подразделений'
.group 'Реестры по перечислению в сбербанк'

.{
.{
.{
.}
.}
.if BrPage
.else
.end
.}

.begin
  RunInterface(AGAT::ReportGroupByPodr, sbbanNrec);
end.

.endform
