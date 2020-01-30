//------------------------------------------------------------------------------
//                                                      (c) Корпорация ГАЛАКТИКА
// Галактика 8.1 - Бухгалтерский контур
// Отчеты по операциям резервов ОС
//------------------------------------------------------------------------------
// #include PREDEFS.INC

#include FeeSigners.frn

#doc
  Форма для печати отчетов по операциям резервов ОС.<br>
#end
.form InvRsrv
.hide
.fields
  #FeeSigners_Os_Fields

  Наименование_СО
  Код_ОКПО
  Номер_приказа
  Дата_приказа
  Начало_инвентаризации
  Конец_инвентаризации
  Номер_операции
  Дата_операции
  На_дату

  Объекты_Программы
  Инвентарные_объекты_ОС
  Остаток_по_бухучету       : double
  ConfDocName
  ConfDocNum
  ConfDocDate
  ConfDocSum                : double
  InvResUnder               : double
  InvResOver                : double

  Итого_Остаток_по_бухучету : double
  Itog_ConfDocSum           : double
  Itog_InvResUnder          : double
  Itog_InvResOver           : double
.endfields
.var
  iExcelFormat : ExcelFormat;
.endvar
.{
  #FeeSigners_Os_Body(InvRsrv)

  Наименование_СО       - ^
  Код_ОКПО              - ^
  Номер_приказа         - ^
  Дата_приказа          - ^
  Начало_инвентаризации - ^
  Конец_инвентаризации  - ^
  Номер_операции        - ^
  Дата_операции         - ^
  На_дату               - ^

.{ CheckEnter InvRsrv_Data
  ^ ^ ^ ^ ^ ^ ^ ^ ^
.}

  Итого_Остаток_по_бухучету - ^
  Itog_ConfDocSum           - ^
  Itog_InvResUnder          - ^
  Itog_InvResOver           - ^
.}
.endform
