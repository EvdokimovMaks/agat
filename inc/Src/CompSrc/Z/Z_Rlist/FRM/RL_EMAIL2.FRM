.linkform 'raslist_111' prototype is 'raslist'
.group 'email_new'
.nameinlist' áç„â­ë© «šáâźȘ €«ï à ááë«Șš'
.F 'RLMAIL.HTML'
.var
  PeriodStr : string;
  PrintUd,PrintPerech : boolean;
  CurUd : word;
  Itogo : double;
.endvar
.fields
 PeriodStr
 Podr
 Tabn FIO
 N1
 Okl
 Msro Koldn Kolch Kod Nopl Summaop
 Nachisl
 FondDn FondCh
 FondStr
 FondDn FondCh
 FondStr_2
 FondDn_2 FondCh_2
 FaktDn FaktCh
 PlanDn PlanCh
 PlanStr
 PlanDn PlanCh
 PlanStr_2
 PlanDn_2 PlanCh_2
 PaidDn PaidCh
 Itogo
 Msru Kodud Nudr Summaud
 Itogo
 Itogo
 Str_Dolg1 Dolg1
 Str_Dolg2 Dolg2
 Msrn Kodn Nudn Summan
 Nenach
.endfields
.{
.if cc0
.begin
  PrintUd := false;
  PrintPerech := false;
  Itogo := 0;
  CurUd := 1;
  PeriodStr :='§  '+Mes+' Ź„áïæ '+String(God)+' Ł.'
end.
<html>
<head>
  <title> áç„â­ë© «šáâźȘ</title>
  <META http-equiv="Content-Type" content="text/html; charset=windows-1251">
  <style type="text/css">
      body {
        font-family: ''Times New Roman'', Times, serif;
        font-size: 12pt;
      }
      table{
        border: 1px;
        border-collapse: collapse;
      }
      td {
        padding: 2px;
        border-width: 1px;
        border-style: solid;
        border-color: black;
      }
      .bgrColor{
        background-color: #F0F0F0;
        }
  </style>
</head>
<body>
.{?internal; needShowShortInfo
<script language="JavaScript">
function show(div){
    if(document.getElementById(div))
    if(document.getElementById(div).style.display!='none'){
        document.getElementById(div).style.display = 'none';
    }
    else{
        document.getElementById(div).style.display = 'block';
    }
}
</script>
<div id="full" style="display: block;">
<a href="#" onClick="show('full');show('anons'); return false;"><i><small>źȘ § âì Șà âȘăî š­äźàŹ æšî ź ąëŻ« â ć</small></i></a>
.}
<p>
<table border=1 width="700" style="font-size: 8pt;">
<tr>
  <td width="100" class="bgrColor"><p><strong>„àšź€</strong></p></td>
  <td width="600"><p>^</p></td>
</tr>
<tr>
  <td width="100" class="bgrColor"><p><strong>ź€à §€„«„­š„</strong></p></td>
  <td width="600"><p>^</p></td>
</tr>
<tr>
  <td width="100" class="bgrColor"><p><strong> Ą.ü/</strong></p></td>
  <td width="600"><p>^ / ^</p></td>
</tr>
<tr>
  <td width="100" class="bgrColor"><p><strong>ź«Š­źáâì</strong></p></td>
  <td width="600"><p>^</p></td>
</tr>
<tr>
  <td width="100" class="bgrColor"><p><strong> àšä­ ï áâ ąȘ /Ș« €</strong></p></td>
  <td width="600"><p>@@@@@@@@@@@@@@@@@@@@@@@@@@</p></td>
</tr>
</table>
<table width="700" frame="border" border=1 style="font-size: 8pt;">
<tr align="center">
    <td width="5" class="bgrColor"><p><strong>„á.</strong></p></td>
    <td width="5" class="bgrColor"><p><strong>ź«.€­</strong></p></td>
    <td width="5" class="bgrColor"><p><strong> áźą</strong></p></td>
    <td width="10" class="bgrColor"><p><strong>ź€</strong></p></td>
    <td width="530" class="bgrColor"><strong> šŹ„­źą ­š„ ąš€  źŻ« â</strong></td>
    <td width="145" class="bgrColor"><strong>ăŹŹ </strong></td>
</tr>
.{
.if cc1
<tr>
    <td align="right" width="5"><p>^</p></td>
    <td align="right" width="5"><p>^</p></td>
    <td align="right" width="5"><p>^</p></td>
    <td align="right" width="10"><p>^</p></td>
    <td align="left" width="530"><p>^</p></td>
    <td align="right" width="145"><p>&'&&&&&&&&&&&&&.&&</p></td>
</tr>
.end
.}
<tr>
    <td align="right" width="5" class="bgrColor"><p></p></td>
    <td align="right" width="5" class="bgrColor"><p></p></td>
    <td align="right" width="5" class="bgrColor"><p></p></td>
    <td align="right" width="10" class="bgrColor"><p></p></td>
    <td align="right" width="530" class="bgrColor"><strong>...</strong></td>
    <td align="right" width="145" class="bgrColor"><p><strong>&'&&&&&&&&&&&&&.&&</strong></p></td>
</tr>
.{?Internal; FondTime2 = false
<tr><td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p></p></td>
    <td align="right" width="530">  ...</td>
    <td align="right" width="145"><p> &&.& . &&&&.&& .</p></td>
</tr>
.}
.{?Internal; FondTime2 = true
<tr><td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p></p></td>
    <td align="right" width="530"> ^</td>
    <td align="right" width="145"><p> &&.& . &&&&.&& .</p></td>
</tr>
<tr><td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p></p></td>
    <td align="right" width="530"> ^</td>
    <td align="right" width="145"><p> &&.& . &&&&.&& .</p></td>
</tr>
.}
<tr><td align="left" width="5"><p></p></td>
    <td align="left" width="5"><p></p></td>
    <td align="left" width="5"><p></p></td>
    <td align="left" width="10"><p></p></td>
    <td align="right" width="530">   ...</td>
    <td align="right" width="145"> &&.& . &&&&.&& .</td>
</tr>
.if CPlanDays
.{?Internal; PlanTime2 = false
<tr><td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p></p></td>
    <td align="right" width="530">   ...</td>
    <td align="right" width="145"><p> &&.& . &&&&.&& .</p></td>
</tr>
.}
.{?Internal; PlanTime2 = true
<tr><td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p></p></td>
    <td align="right" width="530"> ^</td>
    <td align="right" width="145"><p> &&.& . &&&&.&& .</p></td>
</tr>
<tr><td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p></p></td>
    <td align="right" width="530"> ^</td>
    <td align="right" width="145"><p> &&.& . &&&&.&& .</p></td>
</tr>
.}
.end
.if CPaidDays
<tr><td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p></p></td>
    <td align="right" width="530">  ...</td>
    <td align="right" width="145"><p> &&.& . &&&&.&& .</p></td>
</tr>
.end
<tr align="center">
    <td width="5" class="bgrColor"><p><strong>„á.</strong></p></td>
    <td width="5" class="bgrColor"><p><strong>ź«.€­</strong></p></td>
    <td width="5" class="bgrColor"><p><strong> áźą</strong></p></td>
    <td width="10" class="bgrColor"><p><strong>ź€</strong></p></td>
    <td width="530" class="bgrColor"><strong> šŹ„­źą ­š„ ąš€  ă€„àŠ ­š©</strong></td>
    <td width="145" class="bgrColor"><strong>ăŹŹ </strong></td>
</tr>
.{
.if cc2
.begin
if TypeUd = 1
  PrintUd := true;
if TypeUd = 2
  PrintPerech := true;
end.
.{?internal; TypeUd <> curUd;
<tr><td align="right" width="5" class="bgrColor"><p></p></td>
    <td align="right" width="5" class="bgrColor"><p></p></td>
    <td align="right" width="5" class="bgrColor"><p></p></td>
    <td align="right" width="10" class="bgrColor"><p></p></td>
    <td align="right" width="530" class="bgrColor"><strong>...</strong></td>
    <td align="right" width="145" class="bgrColor"><strong>&'&&&&&&&&&&&&&.&&</strong></td>
</tr>
<tr align="center">
    <td width="5" class="bgrColor"><p><strong>„á.</strong></p></td>
    <td width="5" class="bgrColor"><p><strong>ź«.€­</strong></p></td>
    <td width="5" class="bgrColor"><p><strong> áźą</strong></p></td>
    <td width="10" class="bgrColor"><p><strong>ź€</strong></p></td>
    <td width="530" class="bgrColor"><strong> šŹ„­źą ­š„ ąš€  Ż„à„çšá«„­š©</strong></td>
    <td width="145" class="bgrColor"><strong>ăŹŹ </strong></td>
</tr>
.}
.begin
  if  CurUd = TypeUd
    Itogo := Itogo + double(Summaud)
  else
  {
    curUd := integer(TypeUd);
    Itogo := double(Summaud)
  }
end.
<tr><td align="right" width="5">^</td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p>^</p></td>
    <td align="left" width="530"><p>^</p></td>
    <td align="right" width="145"><p>&'&&&&&&&&&&&&&.&&</p></td>
</tr>
.end
.}
.{?internal;  PrintPerech = false;
<tr><td align="right" width="5" class="bgrColor"><p></p></td>
    <td align="right" width="5" class="bgrColor"><p></p></td>
    <td align="right" width="5" class="bgrColor"><p></p></td>
    <td align="right" width="10" class="bgrColor"><p></p></td>
    <td align="right" width="530" class="bgrColor"><strong>...</strong></td>
    <td align="right" width="145" class="bgrColor"><strong>&'&&&&&&&&&&&&&.&&</strong></td>
</tr>
<tr align="center">
    <td width="5" class="bgrColor"><p><strong>„á.</strong></p></td>
    <td width="5" class="bgrColor"><p><strong>ź«.€­</strong></p></td>
    <td width="5" class="bgrColor"><p><strong> áźą</strong></p></td>
    <td width="10" class="bgrColor"><p><strong>ź€</strong></p></td>
    <td width="530" class="bgrColor"><strong> šŹ„­źą ­š„ ąš€  perech</strong></td>
    <td width="145" class="bgrColor"><strong>ăŹŹ </strong></td>
</tr>
.begin
  Itogo := 0
end.
.}
<tr><td align="right" width="5" class="bgrColor"><p></p></td>
    <td align="right" width="5" class="bgrColor"><p></p></td>
    <td align="right" width="5" class="bgrColor"><p></p></td>
    <td align="right" width="10" class="bgrColor"><p></p></td>
    <td align="right" width="530" class="bgrColor"><strong>\...</strong></td>
    <td align="right" width="145" class="bgrColor"><strong>&'&&&&&&&&&&&&&.&&</strong></td>
</tr>
<tr><td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p></p></td>
    <td align="left" width="530"><strong>^</strong></td>
    <td align="right" width="145"><strong>&'&&&&&&&&&&&&&.&&</strong></td>
</tr>
.{?internal;(trim(Dolg2) <> '')
<tr><td align="left" width="5"><p></p></td>
    <td align="left" width="5"><p></p></td>
    <td align="left" width="5"><p></p></td>
    <td align="left" width="10"><p></p></td>
    <td align="right" width="530"><strong>^</strong></td>
    <td align="right" width="145"><strong>&'&&&&&&&&&&&&&.&&</strong></td>
</tr>
.}
.{
.if cc3
<tr><td align="right" width="5">^</td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10">^</td>
    <td align="left" width="530">^</td>
    <td align="right" width="145">&'&&&&&&&&&&&&&.&&</td>
</tr>
.end
.}
.if nene
<tr><td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p></p></td>
    <td align="right" width="530"><strong> ...</strong></td>
    <td align="right" width="145"><strong>&'&&&&&&&&&&&&&.&&</strong></td>
</tr>
.end
</table>
</p>
.{?internal; needShowShortInfo
</div>
.}
.if CAllNalogFOT
.{ AllFOTLoop CheckEnter
.}
.end
.fields
  paymentDate
  paymentSum
  paymentComment
  totalShortSum
.endfields
.if NeedShortInfo
<div id="anons" style="display: none;">
<a href="#" onClick="show('full');show('anons'); return false;"><i><small>źȘ § âì à áç„â­ë© «šáâźȘ</small></i></a>
<h3>à âȘ ï š­äźàŹ æšï ź ąëŻ« â ć</h3>
<table border=1 width="800" style="font-size: 14pt;">
  <tr>
    <td width="100"><p><center><strong> â </strong></center></p></td>
    <td width="150"><p><center><strong>ăŹŹ </strong></center></p></td>
    <td width="550"><p><center><strong>źŹŹ„­â àš©</strong></center></p></td>
  </tr>
.{ Short_Info CheckEnter
  <tr>
    <td style="font-family:Courier;" width="100"><p>^</p></td>
    <td style="font-family:Courier;" align="right" width="150"><p>&'&&&&&&&&&&&&&.&&</p></td>
    <td align="left" width="550"><p>  ^</p></td>
  </tr>
.}
  <tr>
    <td style="font-family:Courier;" width="100"><p>:</p></td>
    <td style="font-family:Courier;" align="right" width="150"><p>&'&&&&&&&&&&&&&.&&</p></td>
    <td align="left" width="550"><p> </p></td>
  </tr>
</table>
</div>
.end
.end
.fields
 FCH
 MonthRL
 EmailLine
.endfields
</body>
</html>
<p>----------^-----------</p>
<p>----------^-----------</p>
<p>----------^-----------</p>
.}
.endform
.linkform 'raslist_111_old' prototype is 'raslist'
.group 'email'
.nameinlist' áç„â­ë© «šáâźȘ €«ï à ááë«Șš, Ą„§ à §€„«  Ż„à„çšá«„­š©'
.F 'RLMAIL.HTML'
.var
  PeriodStr : string;
  tag1, tag2: string;
.endvar
.fields
 PeriodStr
 Podr Tabn FIO
 N1 Okl
 Msro Koldn Kolch Kod Nopl Summaop
 Nachisl
 FondDn FondCh
 FondStr
 FondDn FondCh
 FondStr_2
 FondDn_2 FondCh_2
 FaktDn FaktCh
 PlanDn PlanCh
 PlanStr
 PlanDn PlanCh
 PlanStr_2
 PlanDn_2 PlanCh_2
 PaidDn PaidCh
 Msru Kodud Nudr tag1 Summaud tag2
 Uder
 Str_Dolg1 Dolg1
 Str_Dolg2 Dolg2
 Msrn Kodn Nudn Summan
 Nenach
.endfields
.{
.if cc0
.begin
  PeriodStr :='§  '+Mes+' Ź„áïæ '+String(God)+' Ł.'
end.
<html>
<head>
  <title> áç„â­ë© «šáâźȘ</title>
  <META http-equiv="Content-Type" content="text/html; charset=windows-1251">
</head>
<body>
.{?internal; needShowShortInfo
<script language="JavaScript">
function show(div){
    if(document.getElementById(div))
    if(document.getElementById(div).style.display!='none'){
        document.getElementById(div).style.display = 'none';
    }
    else{
        document.getElementById(div).style.display = 'block';
    }
}
</script>
<div id="full" style="display: block;">
<a href="#" onClick="show('full');show('anons'); return false;"><i><small>źȘ § âì Șà âȘăî š­äźàŹ æšî ź ąëŻ« â ć</small></i></a>
.}
<p>
<table border=1 width="700" style="font-size: 8pt;">
<tr>
  <td width="50"><p><strong>ź€à §€.</strong></p></td>
  <td width="70"><p><strong> Ą. ­źŹ„à</strong></p></td>
  <td width="50"><p><strong>Ż„àšź€:</strong></p></td>
  <td width="380"><p>^</p></td>
</tr>
<tr>
  <td width="50"><p>^</p></td>
  <td width="70"><p>^</p></td>
  <td width="50"><p><strong>...</strong></p></td>
  <td width="380"><p>^</p></td>
</tr>
</table>
<table border=1 width="700" style="font-size: 8pt;">
<tr>
  <td width="300"><p>^</p></td>
  <td align="right" width="400"><strong> àšä­ ï áâ ąȘ /Ș« €:</strong>   @@@@@@@@@@@@@@@@@@@@@@@@@@</td>
</tr>
</table>
<table width="700" frame="border" border=1 style="font-size: 8pt;">
<tr align="center">
    <td width="5"><p><strong>„á.</strong></p></td>
    <td width="5"><p><strong>ź«.€­</strong></p></td>
    <td width="5"><p><strong> áźą</strong></p></td>
    <td width="10"><p><strong>ź€</strong></p></td>
    <td width="530"><strong> šŹ„­źą ­š„ ąš€  źŻ« â(ă€„àŠ ­š©)</strong></td>
    <td width="145"><strong>ăŹŹ </strong></td>
</tr>
.{
.if cc1
<tr>
    <td align="right" width="5"><p>^</p></td>
    <td align="right" width="5"><p>^</p></td>
    <td align="right" width="5"><p>^</p></td>
    <td align="right" width="10"><p>^</p></td>
    <td align="left" width="530"><p>^</p></td>
    <td align="right" width="145"><p>&'&&&&&&&&&&&&&.&&</p></td>
</tr>
.end
.}
<tr>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p></p></td>
    <td align="right" width="530"><strong>...</strong></td>
    <td align="right" width="145"><p><strong>&'&&&&&&&&&&&&&.&&</strong></p></td>
</tr>
.{?Internal; FondTime2 = false
<tr><td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p></p></td>
    <td align="right" width="530">  ...</td>
    <td align="right" width="145"><p> &&.& . &&&&.&& .</p></td>
</tr>
.}
.{?Internal; FondTime2 = true
<tr><td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p></p></td>
    <td align="right" width="530"> ^</td>
    <td align="right" width="145"><p> &&.& . &&&&.&& .</p></td>
</tr>
<tr><td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p></p></td>
    <td align="right" width="530"> ^</td>
    <td align="right" width="145"><p> &&.& . &&&&.&& .</p></td>
</tr>
.}
<tr><td align="left" width="5"><p></p></td>
    <td align="left" width="5"><p></p></td>
    <td align="left" width="5"><p></p></td>
    <td align="left" width="10"><p></p></td>
    <td align="right" width="530">   ...</td>
    <td align="right" width="145"> &&.& . &&&&.&& .</td>
</tr>
.if CPlanDays
.{?Internal; PlanTime2 = false
<tr><td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p></p></td>
    <td align="right" width="530">   ...</td>
    <td align="right" width="145"><p> &&.& . &&&&.&& .</p></td>
</tr>
.}
.{?Internal; PlanTime2 = true
<tr><td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p></p></td>
    <td align="right" width="530"> ^</td>
    <td align="right" width="145"><p> &&.& . &&&&.&& .</p></td>
</tr>
<tr><td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p></p></td>
    <td align="right" width="530"> ^</td>
    <td align="right" width="145"><p> &&.& . &&&&.&& .</p></td>
</tr>
.}
.end
.if CPaidDays
<tr><td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p></p></td>
    <td align="right" width="530">  ...</td>
    <td align="right" width="145"><p> &&.& . &&&&.&& .</p></td>
</tr>
.end
.{
.if cc2
.begin
if  (Kodud = 199)or(Kodud = 220)
{
  tag1 :='<h3>';
  tag2 :='</h3>';
}
else
{
  tag1 :='';
  tag2 :='';
}
end.
<tr><td align="right" width="5">^</td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p>^</p></td>
    <td align="left" width="530"><p>^</p></td>
    <td align="right" width="145"><p> ^ &'&&&&&&&&&&&&&.&& ^ </p></td>
</tr>
.end
.}
<tr><td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p></p></td>
    <td align="right" width="530"><strong>...</strong></td>
    <td align="right" width="145"><strong>&'&&&&&&&&&&&&&.&&</strong></td>
</tr>
<tr><td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p></p></td>
    <td align="left" width="530"><strong>^</strong></td>
    <td align="right" width="145"><strong>&'&&&&&&&&&&&&&.&&</strong></td>
</tr>
.{?internal;(trim(Dolg2) <> '')
<tr><td align="left" width="5"><p></p></td>
    <td align="left" width="5"><p></p></td>
    <td align="left" width="5"><p></p></td>
    <td align="left" width="10"><p></p></td>
    <td align="right" width="530"><strong>^</strong></td>
    <td align="right" width="145"><strong>&'&&&&&&&&&&&&&.&&</strong></td>
</tr>
.}
.{
.if cc3
<tr><td align="right" width="5">^</td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10">^</td>
    <td align="left" width="530">^</td>
    <td align="right" width="145">&'&&&&&&&&&&&&&.&&</td>
</tr>
.end
.}
.if nene
<tr><td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p></p></td>
    <td align="right" width="530"><strong> ...</strong></td>
    <td align="right" width="145"><strong>&'&&&&&&&&&&&&&.&&</strong></td>
</tr>
.end
</table>
</p>
.{?internal; needShowShortInfo
</div>
.}
.if CAllNalogFOT
.{ AllFOTLoop CheckEnter
.}
.end
.fields
  paymentDate
  paymentSum
  paymentComment
  totalShortSum
.endfields
.if NeedShortInfo
<div id="anons" style="display: none;">
<a href="#" onClick="show('full');show('anons'); return false;"><i><small>źȘ § âì à áç„â­ë© «šáâźȘ</small></i></a>
<h3>à âȘ ï š­äźàŹ æšï ź ąëŻ« â ć</h3>
<table border=1 width="800" style="font-size: 14pt;">
  <tr>
    <td width="100"><p><center><strong> â </strong></center></p></td>
    <td width="150"><p><center><strong>ăŹŹ </strong></center></p></td>
    <td width="550"><p><center><strong>źŹŹ„­â àš©</strong></center></p></td>
  </tr>
.{ Short_Info CheckEnter
  <tr>
    <td style="font-family:Courier;" width="100"><p>^</p></td>
    <td style="font-family:Courier;" align="right" width="150"><p>&'&&&&&&&&&&&&&.&&</p></td>
    <td align="left" width="550"><p>  ^</p></td>
  </tr>
.}
  <tr>
    <td style="font-family:Courier;" width="100"><p>:</p></td>
    <td style="font-family:Courier;" align="right" width="150"><p>&'&&&&&&&&&&&&&.&&</p></td>
    <td align="left" width="550"><p> </p></td>
  </tr>
</table>
</div>
.end
.end
.fields
 FCH
 MonthRL
 EmailLine
.endfields
</body>
</html>
<p>----------^-----------</p>
<p>----------^-----------</p>
<p>----------^-----------</p>
.}
.endform
