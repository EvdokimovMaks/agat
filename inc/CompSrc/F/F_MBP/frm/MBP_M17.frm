//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Спецоснастка
// Форма М-17 - "Карточка учета материалов" для печати из спецоснастки
//------------------------------------------------------------------------------

#doc
Печать формы М-17 (Карточки учета материалов) по номенклатурной КУ спецоснастки.<br>
#end
.Set Name = 'MBP_Form_M17'
.Hide
.{MBPMater CheckEnter
.Fields
  NameOrg
  ОКПО

  Podr
  Sklad
  Post

  MBPNum
  MBPName

  MBPEdKod
  MBPEdName

  MBPPrice : Double
  MBPRazm
  MBPSrok
.EndFields

Организация ^
ОКПО ^

Структурное подразделение ^
Склад ^
Поставщик ^

Номенклатурный номер МБП  ^
Наименование МБП ^

Код единицы измерения ^
Наименование единицы измерения ^

Цена МБП ^
Размер МБП ^
Срок службы МБП ^

.{MBPMatOper CheckEnter
.Fields
  OperDate: Date  NumDoc  OperTxt  InKol: Double  OutKol: Double
.EndFields
  ^       ^         ^        ^      ^
.}
.if MBP_M17_BreakToNextPg
.end
.}
.endForm
