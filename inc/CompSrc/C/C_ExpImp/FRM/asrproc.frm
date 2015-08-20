.form AsrProcessLog
.hide
.fields
  dFormLog
  nRecordsNum
.endfields
^ ^
.{
.fields
  dStartImp
  dFinishImp
.endfields
^ ^
.}

.{
.fields
dtFormOp
CodeOp
NameOp
DesGr
Descr
dtProcess
CodeVar
dBuh
nBuh
TxoCode
TxoName
.endfields
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.endform

.linkform 'AsrProcessLog02' prototype is AsrProcessLog
.Group 'Отчет обработки в формате TEXT'
.nameinlist 'Полный отчет обработки в формате TEXT'
.fields
  dFormLog
  nRecordsNum
.endfields
 Дата и время формирования отчета - ^
 Обработано записей - ^

.{
.fields
  dStartImp
  dFinishImp
.endfields
 ^ ^
.}

  ====================================================
.{
.fields
dtFormOp
CodeOp
NameOp
DesGr
Descr
dtProcess
CodeVar
dBuh
nBuh
TxoCode
TxoName
.endfields
  Дата и время формирования           - ^
  Код операции                        - ^
  Наименование операции               - ^
  Группа лица проводившего импорт     - ^
  Дескриптор лица проводившего импорт - ^
  Дата обработки                      - ^
  Код варианта таблицы соответствия   - ^
  Дата бухгалтерской справки          - ^
  Номер бухгалтерской справки         - ^
  Код ТХО                             - ^
  Наименование ТХО                    - ^
  ====================================================
.}
.endform