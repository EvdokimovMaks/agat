.LinkForm 'REESSETLSCH' Prototype is 'REESBVIP'
.Group 'Реестры по перечислению в сбербанк'
.NameInList 'Агат. Установка лицевых счетов'
.var
vmsg: string;
.endvar
.create view v
as select *
from spplban, lschet
where ((
  comp(SpplbannRec) == spplban.nrec and
  spplban.clsch == lschet.nrec
));
.{
.{
.{
.begin
  if v.getfirst spplban = tsOk
  {
    if v.getfirst lschet = tsOk
    {
      v.spplban.nomlsh := v.lschet.pasport;
      v.update current spplban;
      vMsg := 'установлен №л/с = '+v.spplban.nomlsh;
    }
    else
      vMsg := 'не найден lschet';
  }
  else
    vMsg := 'не найден spplban';
end.
.fields
FIO
vMsg
.endfields
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ^
.}
.}
.if BrPage
.end
.}
.endform
