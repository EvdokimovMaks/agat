#doc
Формы формирования HTML почтовой рассылки
#end
.form RunAlwaysSendEMailFRM
.hide
.Fields
Заголовок_таблицы
Число: date
Рабочий_день: boolean
Фото
Ф
И
О
Стаж
Дата_рождения: date
Возраст
.endfields
.{ TableCycle CheckEnter
    Заголовок_таблицы ^
.{ TblCycle CheckEnter
.{ DateCycle CheckEnter
     Число            ^
     Рабочий_день     ^
.}
.{ FotoCycle CheckEnter
    Фото              ^
.}
.{ FioCycle CheckEnter
    Ф                 ^
    И                 ^
    О                 ^
    Стаж              ^
    Дата_рождения     ^
    Возраст           ^
.}
.}
.}
.endform

.LINKFORM "Информация о днях рождения для отправки по E-Mail" PROTOTYPE IS RunAlwaysSendEMailFRM
.group "mail"
.Fields
Заголовок_таблицы
LoCase(DateToStr (Число, 'Day'))
DateToStr(Число, 'DD.MM.YYYY')
Фото
Ф
И
О
Стаж
DateToStr(Дата_рождения, 'DD.MM.YYYY')
Возраст

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
.{?internal;not Рабочий_день
  color=red
.}
  size=2>^</font><br><font face="Arial"
.{?internal;not Рабочий_день
  color=red
.}
  size=2>^</font>
  </TD>
.}
</TR>
<TR>
.{ FotoCycle CheckEnter
  <TD vAlign=top align=middle width="85">
  <IMG alt=Фотография src="^" Height= "100">
  </TD>
.}
</TR>
<TR>
.{ FIOCycle CheckEnter
  <TD vAlign=top align=middle width="85" >
  <font face="Arial" size=2><B>^<br>^<br>^<br></B></font>
  <font face="Arial" color=Blue size=2>
.{?internal; Стаж <> ''
  стаж:
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
