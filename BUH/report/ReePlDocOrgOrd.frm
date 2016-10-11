.linkform ReePlDocOrgOrd prototype is 'ReePlatDocs'
.nameinlist '¥¥áâà á®¡áâ¢¥­­ëå ¯« â¥¦­ëå ¯®àãç¥­¨©'
.group '¥¥áâà ®¯« ç¥­­ëå ¤®ªã¬¥­â®¢'
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
ÿˆ^
^

ÿ          @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‰
ÿˆ                        á @@@@@@@@@@ £.  ¯® @@@@@@@@@@ £.
     ^
^
^
.{ CheckEnter FilterPlDoc
 ^
.{ CheckEnter FilterPlDocName
 ^
.}
.}
ÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ.{.?Shapka1;ÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ.}
  ®¬¥à ³   „ â    ³                ¨¬¥­®¢ ­¨¥                ³    à£ ­¨§ æ¨ï    ³         ‡ ª §ë         .{.?Shapka2;³            ‘ã¬¬             .}
  ¤®ª-â ³          ³                  ¯« â¥¦                   ³                   ³                        .{.?Shapka3;³            @@@@@@           .}
ÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ.{.?Shapka4;ÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ.}
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
ÿÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ.{.?Footer1;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ.}
 ˆ’ƒ :                                                        .{.?Footer2;&'&&&&&&&&&&&&&&&&&&&&&&&&& .}ÿ‰

.if ExistFeeSigners_ReePlatDocs
.fields
if(®¤¯¨á ­â_®«ì <> '', ®¤¯¨á ­â_®«ì, ®¤¯¨á ­â_¤®«¦­®áâì)
®¤¯¨á ­â_”ˆ
.endfields
.{checkenter FeeSignersCycle_ReePlatDocs
ÿˆ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿˆ
.}
.end
.endform
