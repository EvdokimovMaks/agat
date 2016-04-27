//------------------------------------------------------------------------------
//                                                      (c) корпорация ГАЛАКТИКА
// Версия: 8.1
// Форма для отправки письма соискателю (собеседование)
//------------------------------------------------------------------------------
#doc
Форма для отправки письма соискателю (собеседование)
#end
.form Send_Mail_Transport
.Fields
  OutString
.EndFields
.hide
.{ Cycle_Transport CheckEnter
  ^
.}
.begin
  Send_Mail_Transport.fExit;
end.
.endform


.linkform "HTML_Send_Mail" prototype is Send_Mail_Transport
.Fields
  OutString
.EndFields


<!DOCTYPE html public "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>Conversation</TITLE>
<META content="MSHTML 6.00.2600.0" name=Send  charset=cp866>
</HEAD>
<BODY>
.{ Cycle_Transport CheckEnter
  ^
</DIV>
.}
</BODY>
</HTML>

.endform

//  <STRONG>
//    <DIV align="center">  Уведомление об отказе.  </DIV>
//  </STRONG>

//  <DIV align="left">
//    <br>Уважаемый <^>, Ваша анкета была рассмотрена на предмет включения Вас в список
//    кандидатов на замещение вакантных должностей. К сожалению на данный момент нет вакансий,
//    соответствующих ващему профессиональному уровню.
//  </DIV>

//  <STRONG>
//    <BR>С уважением,
//    <BR>Иванов А.С.
//  </STRONG>
