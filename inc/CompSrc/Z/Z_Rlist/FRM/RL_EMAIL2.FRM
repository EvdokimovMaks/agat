.linkform 'raslist_111' prototype is 'raslist'
.group 'email'
.nameinlist'ђ бзҐв­л© «Ёбв®Є ¤«п а ббл«ЄЁ'
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
 FaktDn FaktCh
 PlanDn PlanCh
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
  PeriodStr :='§  '+Mes+' ¬Ґбпж '+String(God)+' Ј.'
end.
<html>
<head>
  <title>ђ бзҐв­л© «Ёбв®Є</title>
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
<a href="#" onClick="show('full');show('anons'); return false;"><i><small>Џ®Є § вм Єа вЄго Ё­д®а¬ жЁо ® ўлЇ« в е</small></i></a>
.}
<p>
<table border=1 width="700" style="font-size: 8pt;">
<tr>
  <td width="50"><p><strong>Џ®¤а §¤.</strong></p></td>
  <td width="70"><p><strong>’ Ў. ­®¬Ґа</strong></p></td>
  <td width="50"><p><strong>ЇҐаЁ®¤:</strong></p></td>
  <td width="380"><p>^</p></td>
</tr>
<tr>
  <td width="50"><p>^</p></td>
  <td width="70"><p>^</p></td>
  <td width="50"><p><strong>”.€.Ћ.</strong></p></td>
  <td width="380"><p>^</p></td>
</tr>
</table>
<table border=1 width="700" style="font-size: 8pt;">
<tr>
  <td width="300"><p>^</p></td>
  <td align="right" width="400"><strong>’ аЁд­ п бв ўЄ /ЋЄ« ¤:</strong>   &'&&&&&&&&&&&&&.&&</td>
</tr>
</table>
<table width="700" frame="border" border=1 style="font-size: 8pt;">
<tr align="center">
    <td width="5"><p><strong>ЊҐб.</strong></p></td>
    <td width="5"><p><strong>Љ®«.¤­</strong></p></td>
    <td width="5"><p><strong>— б®ў</strong></p></td>
    <td width="10"><p><strong>Љ®¤</strong></p></td>
    <td width="530"><strong>Ќ Ё¬Ґ­®ў ­ЁҐ ўЁ¤  ®Ї« в(г¤Ґа¦ ­Ё©)</strong></td>
    <td width="145"><strong>‘г¬¬ </strong></td>
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
    <td align="right" width="530"><strong>ЌЂ—€‘‹…ЌЋ...</strong></td>
    <td align="right" width="145"><p><strong>&'&&&&&&&&&&&&&.&&</strong></p></td>
</tr>
<tr><td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p></p></td>
    <td align="right" width="530"> ”ЋЌ„ ‚ђ…Њ…Ќ€...</td>
    <td align="right" width="145"><p> &&.& „Ќ. &&&&.&& —.</p></td>
</tr>
<tr><td align="left" width="5"><p></p></td>
    <td align="left" width="5"><p></p></td>
    <td align="left" width="5"><p></p></td>
    <td align="left" width="10"><p></p></td>
    <td align="right" width="530"> ”ЂЉ’€—…‘Љ€ Ћ’ђЂЃЋ’ЂЌЋ ‚ђ…Њ…Ќ€...</td>
    <td align="right" width="145"> &&.& „Ќ. &&&&.&& —.</td>
</tr>
.if CPlanDays
<tr><td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p></p></td>
    <td align="right" width="530"> Џ‹ЂЌЋ‚Ћ… ‚…ђЊџ ...</td>
    <td align="right" width="145"><p> &&.& „Ќ. &&&&.&& —.</p></td>
</tr>
.end
.if CPaidDays
<tr><td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="5"><p></p></td>
    <td align="right" width="10"><p></p></td>
    <td align="right" width="530"> ЋЏ‹Ђ—€‚Ђ…ЊЋ… ‚…ђЊџ...</td>
    <td align="right" width="145"><p> &&.& „Ќ. &&&&.&& —.</p></td>
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
    <td align="right" width="530"><strong>“„…ђ†ЂЌЋ...</strong></td>
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
    <td align="right" width="530"><strong>Ќ…ЌЂ—€‘‹џ…Њ›‰ „Ћ•Ћ„...</strong></td>
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
<a href="#" onClick="show('full');show('anons'); return false;"><i><small>Џ®Є § вм а бзҐв­л© «Ёбв®Є</small></i></a>
<h3>Ља вЄ п Ё­д®а¬ жЁп ® ўлЇ« в е</h3>
<table border=1 width="800" style="font-size: 14pt;">
  <tr>
    <td width="100"><p><center><strong>„ в </strong></center></p></td>
    <td width="150"><p><center><strong>‘г¬¬ </strong></center></p></td>
    <td width="550"><p><center><strong>Љ®¬¬Ґ­в аЁ©</strong></center></p></td>
  </tr>
.{ Short_Info CheckEnter
  <tr>
    <td style="font-family:Courier;" width="100"><p>^</p></td>
    <td style="font-family:Courier;" align="right" width="150"><p>^</p></td>
    <td align="left" width="550"><p>  ^</p></td>
  </tr>
.}
  <tr>
    <td style="font-family:Courier;" width="100"><p>€’ЋѓЋ:</p></td>
    <td style="font-family:Courier;" align="right" width="150"><p>^</p></td>
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