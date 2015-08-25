//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.1 - Управление персоналом
// Форма для отправки письма соискателю (собеседование)
//------------------------------------------------------------------------------

#doc
Форма для отправки письма соискателю (собеседование)
#end
.form Conversation_Mail_Form
.Fields
  OutString
.EndFields
.hide
.{ Cycle_Conversation CheckEnter
  ^
.}
.begin
  Conversation_Mail_Form.fExit;
end.
.endform


.linkform "HTML_Conversation_Mail" prototype is Conversation_Mail_Form
.Fields
  OutString
.EndFields


<!DOCTYPE html public "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>Conversation</TITLE>
<META content="MSHTML 6.00.2600.0" name=Conversation  charset=cp866>
</HEAD>
<BODY>
.{ Cycle_Conversation CheckEnter
  ^
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
//    <BR>Руководитель отдела кадров
//    <BR>корпорации "ГАЛАКТИКА"
//    <BR>Лаврисюк А.С.
//  </STRONG>
