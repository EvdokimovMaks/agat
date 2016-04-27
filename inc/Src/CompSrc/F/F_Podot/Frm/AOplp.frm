//-----------------------------------------------------------------------------------
//                                                           (c) корпорация ГАЛАКТИКА
// Галактика 5.85 - Касса
// Расшифровка авансовых документов
//-----------------------------------------------------------------------------------

#doc
Расшифровка авансовых документов.
#end
.set name='ReeAO'
.hide
.fields
  header                // название отчета
  dates //:date         // с ____ по _____
  NameSum     : string  // название суммы
  PrevNameSum : string
  SymV        : string  // символ валюты
  PrevSymV    : string  // символ валюты
  LevelName:string:'t:r'// наименование группировки (период, подразделение, сотрудник, валюта, страна, город, норма расходов)
  LevelSum              // сумма на уровне узлов
  LevelPrevUchSum
  LevelVal              // символ валюты узла
  AvOt_nRec             // PlPor.nRec (AO)
  Norm_nRec             // RashDoc.nRec (Норма расходов)
  Norm_NoAO             // номер авансового отчёта
  Norm_Date :date       // дата обработки
  Norm_Name:string:'t:r'// наименование нормы расходов
  Norm_Sum              // сумма по норме расходов
  Norm_PrevUchSum
  Norm_Val              // символ валюты нормы
.endfields
 ^
 ^

 .{.?TreePlp_Shapka1;┬───────────────────.} .{.?AoPlp_PrevUch1;┬───────────────────.} .{.?TreePlp_Val1;┬────────.}
 .{.?TreePlp_Shapka2;│   @@@@@@@@@@@@@@  .} .{.?AoPlp_PrevUch2;│   @@@@@@@@@@@@@@  .} .{.?TreePlp_Val2;│ Валюта .}
 .{.?TreePlp_Shapka3;│   @@@@@@@@@@@@@@  .} .{.?AoPlp_PrevUch3;│   @@@@@@@@@@@@@@  .} .{.?TreePlp_Val3;│        .}
 .{.?TreePlp_Shapka4;┴───────────────────.} .{.?AoPlp_PrevUch4;┴───────────────────.} .{.?TreePlp_Val4;┴────────.}

.{
.{ AOPlp_Header CheckEnter
 ^ .{.?TreePlp_Shapka5;^ .} .{.?AoPlp_PrevUch5;^ .} .{.?TreePlp_Val5;@@@@@@ .}
.}
.{ AOPlp_Body CheckEnter
 ^ - AvOt_nRec
 ^ - Norm_nRec
 ^ - Norm_NoAO
 ^ - Norm_Date :date
 ^ - Norm_Name:string

 .{.?TreePlp_Shapka6;^ .} .{.?AoPlp_PrevUch6;^ .} .{.?TreePlp_Val6;@@@@@@ .}


.}
.{ AOPlp_Footer CheckEnter
 .{.?AOPlp_Shapka7;────────────────────.} .{.?AOPlp_Val7;─────────.}
.}
.}

.endform

//*******************************************************************
.linkform 'ReeAO01' prototype is 'ReeAO'
.group 'Расшифровка авансовых документов'
.nameinlist 'Расшифровка авансовых документов'
.p 60
.defo landscape
.fields
 CommonFormHeader
 header
 dates

 NameSum
 SymV

 LevelName:'t:r'
 LevelSum
 LevelVal

 Norm_NoAO
 if ( Longint(Norm_Date) = 0, '', DateToStr(Norm_Date, 'DD/MM/YYYY'))
 Norm_Name:'t:r'
 Norm_Sum
 Norm_Val

.endfields
 Ш^ Ш
 С                                  @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                              @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ С
 Р                                                                                                                     лист @np@
─────────┬───────────┬─────────────────────────────────────────────────────────────.{.?TreePlp_Shapka1;┬──────────────────.}.{.?AoPlp_PrevUch1;.}.{.?TreePlp_Val1;┬────────.}
  Номер  │   Дата    │                       Наименование                          .{.?TreePlp_Shapka2;│ @~@@@@@@@@@@@@@@ .}.{.?AoPlp_PrevUch2;.}.{.?TreePlp_Val2;│ Валюта .}
  док-та │ обработки │                      статьи расходов                        .{.?TreePlp_Shapka3;│ @~@@@@@@@@@@@@@@ .}.{.?AoPlp_PrevUch3;.}.{.?TreePlp_Val3;│        .}
─────────┴───────────┴─────────────────────────────────────────────────────────────.{.?TreePlp_Shapka4;┴──────────────────.}.{.?AoPlp_PrevUch4;.}.{.?TreePlp_Val4;┴────────.}
.{
.{ AOPlp_Header CheckEnter
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?TreePlp_Shapka5; &'&&&&&&&&&&&&&&& .}.{.?AoPlp_PrevUch5;.}.{.?TreePlp_Val5;@@@@@@ .} Б
.}
.{ AOPlp_Body CheckEnter
@@@@@@@@  @@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?TreePlp_Shapka6; &'&&&&&&&&&&&&&&& .}.{.?AoPlp_PrevUch6;.}.{.?TreePlp_Val6;@@@@@@ .}
.}
.{ AOPlp_Footer CheckEnter
───────────────────────────────────────────────────────────────────────────────────.{.?AOPlp_Shapka7;───────────────────.}.{.?AOPlp_Val7;─────────.}
.}
.} Р
.endform

//*******************************************************************
.linkform 'ReeAO02' prototype is 'ReeAO'
.group 'Детализированная расшифровка авансовых документов'
.nameinlist 'Расшифровка превышенных сумм норм расходов и учтённых в зарплате'
.p 60
.defo landscape
.fields
 CommonFormHeader
 header
 dates

 NameSum
 PrevNameSum
 SymV
 PrevSymV

 LevelName:'t:r'
 LevelSum
 LevelPrevUchSum
 LevelVal

 Norm_NoAO
 if ( Longint(Norm_Date) = 0, '', DateToStr(Norm_Date, 'DD/MM/YYYY'))
 Norm_Name:'t:r'
 Norm_Sum
 Norm_PrevUchSum
 Norm_Val

.endfields
 Ш^
 Б                                  @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                              @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Щ
 Ш                                                                                                                     лист @np@
─────────┬───────────┬───────────────────────────────────────────────────────.{.?TreePlp_Shapka1;┬──────────────────.}.{.?AoPlp_PrevUch1;┬──────────────────.}.{.?TreePlp_Val1;┬────────.}
  Номер  │   Дата    │                          Наименование                 .{.?TreePlp_Shapka2;│ @~@@@@@@@@@@@@@@ .}.{.?AoPlp_PrevUch2;│ @~@@@@@@@@@@@@@@ .}.{.?TreePlp_Val2;│ Валюта .}
  док-та │ обработки │                         статьи расходов               .{.?TreePlp_Shapka3;│ @~@@@@@@@@@@@@@@ .}.{.?AoPlp_PrevUch3;│ @~@@@@@@@@@@@@@@ .}.{.?TreePlp_Val3;│        .}
─────────┴───────────┴───────────────────────────────────────────────────────.{.?TreePlp_Shapka4;┴──────────────────.}.{.?AoPlp_PrevUch4;┴──────────────────.}.{.?TreePlp_Val4;┴────────.} И
.{
.{ AOPlp_Header CheckEnter
 Й@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?TreePlp_Shapka5; &'&&&&&&&&&&&&&&& .}.{.?AoPlp_PrevUch5; &'&&&&&&&&&&&&&&& .}.{.?TreePlp_Val5;@@@@@@ .} Й
.}
.{ AOPlp_Body CheckEnter
 И@@@@@@@@  @@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?TreePlp_Shapka6; &'&&&&&&&&&&&&&&& .}.{.?AoPlp_PrevUch6; &'&&&&&&&&&&&&&&& .}.{.?TreePlp_Val6;@@@@@@ .} И
.}
.{ AOPlp_Footer CheckEnter
 И─────────────────────────────────────────────────────────────────────────────.{.?AOPlp_Shapka7;─────────────────────────────────────────────────────────.}.{.?AOPlp_Val7;─────────.} И
.}
.} Р
.endform
