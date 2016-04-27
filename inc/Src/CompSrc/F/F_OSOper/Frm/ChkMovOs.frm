//------------------------------------------------------------------------------
//                                                      (c) Корпорация ГАЛАКТИКА
// Галактика 8.1 - Бухгалтерский контур
// Отчет о проверке целостности данных по операциям
//------------------------------------------------------------------------------
#doc
  Форма для печати отчета о проверке целостности данных по операциям
#end
.form 'ChkMoveOs'
.hide
.fields
  MoveOsNRec     : comp
  SpMoveNRec     : comp
  SpMoveOsNRec   : comp
  TiDk           : string
  SysOper        : string
  DatOb          : string
  NoDoc          : string
  MU             : string
  MsgErr         : string

  Msg            : string
  MsgNakl        : string
.endfields

.{ CheckEnter OperLoop
.{ CheckEnter SpMoveOsLoop
   MoveOsNRec     - ^
   SpMoveNRec     - ^
   SpMoveOsNRec   - ^
   TiDk           - ^
   SysOper        - ^
   DatOb          - ^
   NoDoc          - ^
   MU             - ^
   MsgErr         - ^
.}
.{
   Msg            - ^
.}
.}

.{ CheckEnter NaklLoop
.{
   MsgNakl        - ^
.}
.}

.endform

//------------------------------------------------------------------------------------------------------------------------------
.linkform 'ChkMoveOs_01' prototype is 'ChkMoveOs'
.NameInList 'Список нарушений в целостности данных по операциям'
.fields
   CommonFormHeader
   TiDk
   substr(SysOper,1,25)
   DatOb
   NoDoc
   MU
   MsgErr
.endfields
^

.{ CheckEnter OperLoop
           Список нарушений в целостности данных по операциям в ОС и НМА
               и необходимые действия по их исправлению

──────┬────────────────────────┬──────────┬──────────────────┬────────────────────────
Модуль│        Тип             │   Дата   │      Номер       │      Метод
      │     операции           │ операции │     операции     │      учета
──────┴────────────────────────┴──────────┴──────────────────┴────────────────────────
.{ CheckEnter SpMoveOsLoop
@~@@@@ @@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@
   ^
.}
──────────────────────────────────────────────────────────────────────────────────────

.fields
   Msg
.endfields
.{
^
.}
.}

.fields
   MsgNakl
.endfields
.{ CheckEnter NaklLoop
.{
^
.}
.}

.endform

