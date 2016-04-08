.linkform 'ReportGroupByPodr' prototype is 'REESBVIP'
.nameinlist '(АГАТ) Реестры на выплату по заказам в разрезе подразделений'
.group 'Реестры по перечислению в сбербанк'

.f "nul"

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
