//------------------------------------------------------------------------------
//                                                      (c) Є®аЇ®а жЁп ѓ « ЄвЁЄ 
// ѓ « ЄвЁЄ  ERP 7.12 - “Їа ў«Ґ­ЁҐ ЇҐаб®­ «®¬
// ”®а¬  ¤«п ®вЇа ўЄЁ ЇЁбм¬  б б®ЎлвЁп¬Ё бЁбвҐ¬л
//------------------------------------------------------------------------------

#doc
”®а¬  ¤«п ®вЇа ўЄЁ ЇЁбм¬  б б®ЎлвЁп¬Ё бЁбвҐ¬л
#end
.form MailEvent_Form
.Fields
FIO
TabNmb
Date_Ev
Message

Department2
Post2
Date_Ev2
Message2
.EndFields
.HIDE
.{ MailEvent_FormCycle CheckEnter
 ^ ^ ^ ^
.}
.{ MailEvent_FormCycle2 CheckEnter
 ^ ^ ^ ^
.}
.begin
 MailEvent_Form.fExit;
end.
.endform


.LINKFORM "HTML_Event_mail" PROTOTYPE IS MailEvent_Form
.Fields
FIO
TabNmb
Date_Ev
Message

Department2
Post2
Date_Ev2
Message2
.EndFields

<html>
  <head>
    <meta charset="Windows-1251" />
    <style>
      table { border-collapse: collapse; padding: 5px;}
      th { background-color: silver; }
      td, th { border: 1px solid black; }
    </style>
  </head>

  <body>
    <table>
      <tbody>
        <tr>
          <th>ФИО</th>
          <th>Таб. номер</th>
          <th>Дата</th>
          <th>Сообщение</th>
        </tr>

.{ MailEvent_FormCycle CheckEnter
        <tr>
          <td>^</td>
          <td>^</td>
          <td>^</td>
          <td>^</td>
        </tr>
.}
      </tbody>
    </table>

    <br></br>

    <table>
      <tbody>
        <tr>
          <th>Подразделение</th>
          <th>Должность</th>
          <th>Дата</th>
          <th>Сообщение</th>
        </tr>

.{ MailEvent_FormCycle2 CheckEnter
        <tr>
          <td>^</td>
          <td>^</td>
          <td>^</td>
          <td>^</td>
        </tr>
.}
      </tbody>
    </table>
  </body>

</html>
.endform
