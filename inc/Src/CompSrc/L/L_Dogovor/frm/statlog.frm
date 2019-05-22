/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Управление договорами                                     ║
 ║ Версия        : 5.70                                                      ║
 ║ Назначение    : История изменения статусов документов                     ║
 ║ Ответственный : Глушаков Дмитрий Сергеевич                                ║
 ║ Параметры     : есть                                                      ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/

#doc
Протокол изменения статуса документа
#end
.AutoForm 'PrintStatLog' (var pDoc:comp;var pDocType:word)
.NameInList 'Протокол изменения статуса документа'
!.list ''
.Create view PrintStatLog_main
as select
  StatLog.*,
  KatNotes.Name,
  NewNotes.Name
from
   StatLog
  ,KatNotes
  ,synonym KatNotes NewNotes
where
  ((
      pDoc                ==   StatLog.cDoc
  and pDocType            ==   StatLog.DocType
  and StatLog.cOldNote    ==   KatNotes.NRec
  and StatLog.cNewNote    ==   NewNotes.NRec
  ))
order by StatLog.dOper, StatLog.TimeOper
;
.fields
  CommonFormHeader
  pDocType                   //  : word   "Тип документа"

  StatLog.DesGr              //  : tDesGr "Дескриптор группы менеджеров"
  StatLog.Descr              //  : tDescr "Дескриптор менеджера"
  StatLog.dOper              // ['DD/MM/YYYY'] //  : date   "Дата операции"
  StatLog.TimeOper           // ['HH:MM']      //  : time   "Время операции"
  KatNotes.Name              //           "Старое значение статуса"
  NewNotes.Name              //           "Новое значение статуса"
  StatLog.Comment            //  : s80    "Причина изменения статуса"
.endfields //                                                        норм.!           элита!
^

  Протокол изменения статуса документа
  Вид документа: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
─────────┬────────┬────────────┬───────┬────────────────┬─────────────────
 Группа  │ Дескр. │    Дата    │ Время │     Старый     │     Новый
         │        │  операции  │ опер. │     статус     │     статус
─────────┴────────┴────────────┴───────┴────────────────┴─────────────────
!@@@@@@@@  @@@@@@@  88/88/8888   88:88   @@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@
.{table 'PrintStatLog_main.StatLog' by StatLog.dOper, StatLog.TimeOper
 @@@@@@@@  @@@@@@@  @@@@@@@@@@   @@@@@   @@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@
 Причина: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.}
.endform
