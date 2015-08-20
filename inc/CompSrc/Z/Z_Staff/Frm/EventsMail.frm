//------------------------------------------------------------------------------
//                                           (c) корпорация ГАЛАКТИКА
// Версия     : 7.12
// Форма для отправки письма с событиями системы
//------------------------------------------------------------------------------
#doc
Форма для отправки письма с событиями системы
#end
.form MailEvent_Form
.Fields
FIO
TabNmb
Date_Ev
Message
.EndFields
.HIDE
.{ MailEvent_FormCycle CheckEnter
 ^ ^ ^ ^
.}
.begin
 MailEvent_Form.fExit;
end.
.endform


.LINKFORM "HTML_Event_mail" PROTOTYPE IS MailEvent_Form
!.group "HTML_Event_mail"
.Fields
FIO
TabNmb
Date_Ev
Message
.EndFields

<STYLE></STYLE>

<META content="MSHTML 6.00.2600.0" name=Events></HEAD>
<BODY>
<TABLE width="100%" background="" border=1>
  <TBODY>
  <TR bgColor=gray>
    <TD vAlign=top align=middle>
      <H5>ФИО</H5></TD>
    <TD vAlign=top align=middle>
      <H5>Таб.номер</H5></TD>
    <TD vAlign=top align=middle>
      <H5>Дата</H5></TD>
    <TD vAlign=top align=middle>
      <H5>Сообщение</H5></TD>

.{ MailEvent_FormCycle CheckEnter
  <TR>
    <TD vAlign=top align=left>^ </TD>
    <TD vAlign=top align=left>^ </TD>
    <TD vAlign=top align=left>^ </TD>
    <TD vAlign=top align=left>^ </TD>
.}
    </TR></TBODY></TABLE></BODY></HTML>
.endform