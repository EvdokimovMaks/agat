//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.1 - Управление персоналом
// Форма для отправки письма соискателю (Зачисление в кандидаты)
//------------------------------------------------------------------------------

#doc
Форма для отправки письма соискателю (Зачисление в кандидаты)
#end
.form Accept_Mail_Form
.Fields
  OutString
.EndFields
.hide
.{ Cycle_Accept CheckEnter
  ^
.}
.begin
  Accept_Mail_Form.fExit;
end.
.endform


.linkform "HTML_Accept_Mail" prototype is Accept_Mail_Form
.Fields
  OutString
.EndFields


<!DOCTYPE html public "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>Failure</TITLE>
<META content="MSHTML 6.00.2600.0" name=Accept  charset=cp866>
</HEAD>
<BODY>
.{ Cycle_Accept CheckEnter
  ^
.}
</BODY>
</HTML>

.endform
/*
<STRONG>
    <DIV align="center">  Уведомление о зачислении в кандидаты.  </DIV>
  </STRONG>

  <DIV align="left">
    <br>Уважаемый <^>, Ваша анкета была рассмотрена на предмет включения Вас в список
    кандидатов на замещение вакантных должностей. По вашему вопросу было принято положительное,
    решение.
  </DIV>

  <STRONG>
    <BR>С уважением,
    <BR>Руководитель отдела кадров
    <BR>корпорации "ГАЛАКТИКА"
    <BR>Лаврисюк А.С.
  </STRONG>
*/
