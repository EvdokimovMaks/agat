.linkform ReePlDocOrgOrd prototype is 'ReePlatDocs'
.nameinlist '������ ᮡ�⢥���� ���⥦��� ����祭��'
.group '������ ����祭��� ���㬥�⮢'
.defo landscape
.var
Orders: string;
_s: longint;
_q: IQuery;
.endvar
.fields
CommonFormHeader MyOrgName
header
datebeg dateend
ourbankInfo
VidDoc strFilters FilterPlDoc1 FilterName
ndesimv
nodok
if (datob1 <> DateToStr(date(0,0,0), 'DD/MM/YY'), datob1, '')
nameall
WOrgName
Orders
sumplat
SIMVOLV
SummaByAll
.endfields
.begin
sqlAddStr(_s, 'select distinct sm.cobj as Zakaz                                                                        ');
sqlAddStr(_s, 'from plpor pl                                                                                           ');
sqlAddStr(_s, 'join basefin bf on bf.CPLPOR = pl.nrec                                                                  ');
sqlAddStr(_s, 'join basedoc bd on bd.nrec = bf.CBASEDOC                                                                ');
sqlAddStr(_s, 'join stepdoc st on st.cbasedoc = bd.nrec                                                                ');
sqlAddStr(_s, 'join spstep sps on sps.cstepdoc = st.nrec                                                               ');
sqlAddStr(_s, 'join specmtr sm on sm.csaldtune = #comp(0001000000000001h) and sm.cotable = 1104 and sm.cspec = sps.nrec');
sqlAddStr(_s, 'where pl.nrec = :CurPlporNrec                                                                           ');
_q := querymanager.createQuery(_s);
end.
��^
^

��          @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
��                        � @@@@@@@@@@ �.  �� @@@@@@@@@@ �.
     ^
^
^
.{ CheckEnter FilterPlDoc
 ^
.{ CheckEnter FilterPlDocName
 ^
.}
.}
������������������������������������������������������������������������������������������������������������.{.?Shapka1;������������������������������.}
  ����� �   ���   �               ������������                �    �࣠������    �         ������         .{.?Shapka2;�            �㬬�            .}
  ���-⠳          �                  ���⥦�                  �                   �                        .{.?Shapka3;�            @@@@@@           .}
������������������������������������������������������������������������������������������������������������.{.?Shapka4;������������������������������.}
.{
.{
.{
.begin
Orders := '';
var rs: IResultSet;
if _q != nullref
{
  _q.setParam('CurPlporNrec', comp(PlPorNRec));
  rs := _q.getResultSet;
}
if rs != nullref
  if rs.getfirst = tsOk do
  {
    var cCurOrd: comp;
    cCurOrd := rs.row.val('Zakaz');
    var sCurOrd: string;
    sCurOrd := if(getanykau(0, 40, cCurOrd), givenanname(1), '');
    Orders := Orders + sCurOrd + ', ';
  } while rs.getnext = tsOk;
end.
  @@@@@@ @@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@ .{.?Summa1;&'&&&&&&&&&&&&&&&&&&&&&&&&& .}^
.}
 .{.?BankFooter1;;false; .}
.}
 .{.?OrgFooter1;false .} .{.?OrgFooter2;false .}
.}
�����������������������������������������������������������������.{.?Footer1;����������������������������.}
 ����� :                                                        .{.?Footer2;&'&&&&&&&&&&&&&&&&&&&&&&&&& .}��

.if ExistFeeSigners_ReePlatDocs
.fields
if(�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
�����ᠭ�_���
.endfields
.{checkenter FeeSignersCycle_ReePlatDocs
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.}
.end
.endform
