//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.1 - Управление персоналом
// Форма для отправки письма соискателю (отказ)
//------------------------------------------------------------------------------

#doc
Форма для отправки письма соискателю (отказ)
#end
.form Failure_Mail_Form
.Fields
  OutString
.EndFields
.hide
.{ Cycle_Failure CheckEnter
  ^
.}
.begin
  Failure_Mail_Form.fExit;
end.
.endform


.linkform "HTML_Failure_Mail" prototype is Failure_Mail_Form
.Fields
  OutString
.EndFields


<!DOCTYPE html public "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>Failure</TITLE>
<META content="MSHTML 6.00.2600.0" name=Failure  charset=cp866>
</HEAD>
<BODY>
.{ Cycle_Failure CheckEnter
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
