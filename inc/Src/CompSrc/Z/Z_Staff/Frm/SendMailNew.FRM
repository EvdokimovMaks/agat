#doc
���� �ନ஢���� HTML ���⮢�� ���뫪�
#end
.form RunAlwaysSendEMailFRM
.hide
.Fields
���������_⠡����
��᫮: date
����稩_����: boolean
���
�
�
�
�⠦
���_஦�����: date
������
.endfields
.{ TableCycle CheckEnter
    ���������_⠡���� ^
.{ TblCycle CheckEnter
.{ DateCycle CheckEnter
     ��᫮            ^
     ����稩_����     ^
.}
.{ FotoCycle CheckEnter
    ���              ^
.}
.{ FioCycle CheckEnter
    �                 ^
    �                 ^
    �                 ^
    �⠦              ^
    ���_஦�����     ^
    ������           ^
.}
.}
.}
.endform

.LINKFORM "���ଠ�� � ���� ஦����� ��� ��ࠢ�� �� E-Mail" PROTOTYPE IS RunAlwaysSendEMailFRM
.group "mail"
.Fields
���������_⠡����
LoCase(DateToStr (��᫮, 'Day'))
DateToStr(��᫮, 'DD.MM.YYYY')
���
�
�
�
�⠦
DateToStr(���_஦�����, 'DD.MM.YYYY')
������

.EndFields
<HTML>
<HEAD>
<STYLE></STYLE>
<META name=GENERATOR content="text/html; charset=cp866" http-equiv=Content-Type>
</HEAD>
<BODY>
.{ TableCycle CheckEnter
<br>
<font face="Arial" font size=4>^</font>

.{ TblCycle CheckEnter
<TABLE width="85" background="" border="1">
<TBODY>
<TR>
.{ DateCycle CheckEnter
  <TD vAlign=top align=middle width="85">
  <font face="Arial"
.{?internal;not ����稩_����
  color=red
.}
  size=2>^</font><br><font face="Arial"
.{?internal;not ����稩_����
  color=red
.}
  size=2>^</font>
  </TD>
.}
</TR>
<TR>
.{ FotoCycle CheckEnter
  <TD vAlign=top align=middle width="85">
  <IMG alt=��⮣��� src="^" Height= "100">
  </TD>
.}
</TR>
<TR>
.{ FIOCycle CheckEnter
  <TD vAlign=top align=middle width="85" >
  <font face="Arial" size=2><B>^<br>^<br>^<br></B></font>
  <font face="Arial" color=Blue size=2>
.{?internal; �⠦ <> ''
  �⠦:
.}
  ^<br></font>
  <font face="Arial" size=2>^<br><B>(^)</B></font>
  </TD>
.}
</TR>
</TBODY>
</TABLE>
.}
.}

</BODY>
</HTML>
.endform
