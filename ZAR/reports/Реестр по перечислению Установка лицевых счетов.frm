.LinkForm 'REESSETLSCH' Prototype is 'REESBVIP'
.Group '������� �� ����᫥��� � ᡥࡠ��'
.NameInList '����. ��⠭���� ��楢�� ��⮢'
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
      vMsg := '��⠭����� ��/� = '+v.spplban.nomlsh;
    }
    else
      vMsg := '�� ������ lschet';
  }
  else
    vMsg := '�� ������ spplban';
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
