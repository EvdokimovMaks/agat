//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Бухгалтерский контур
// Базовая форма для алгоритма Txo_Oborot - отчет по некорректным проводкам
//------------------------------------------------------------------------------

#doc
Базовая форма для алгоритма Txo_Oborot - отчет по некорректным проводкам
#end
.set name = 'ErTxoOborot'
.nameinlist 'Отчет по проводкам с некорректной аналитикой (базовая форма)'
.hide
.fields
   GroupName  : string

   cKatImp    : comp
   KatImpCode : string
   KatImpName : string

   DatOb      : date
   Descr      : string
   NoDok      : string
   TipDocName : string
   cOborot    : comp
.endfields
 ──────────┬─────────────┬──────────┬───────────────────────────────────────────┬──────────────────
 Дата      │Дескриптор   │Номер     │Тип документа                              │Oborot.nrec
 проводки  │Пользователя │документа │                                           │
 ──────────┼─────────────┼──────────┼───────────────────────────────────────────┼──────────────────
.{
.{ CheckEnter ErTxoObGroupHeader
 Не найдено соответствие для параметров: ^
.{ CheckEnter ErTxoKatImpList
   FpKatImp.Nrec = ^
   FpKatImp.Code = ^
   FpKatImp.Name = ^
.}
.}
.{ CheckEnter ErTxoObMasterData
 @@@@@@@@@@│@@@@@@@@@@@@@│@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@
.}
.}
.endform

.linkform 'ErTxoOborot_01' prototype is 'ErTxoOborot'
.nameinlist 'Отчет по проводкам с некорректной аналитикой'
.fields
   CommonFormHeader
   GroupName
   KatImpCode
   KatImpName
   DatOb
   Descr
   NoDok
   TipDocName
   cOborot
.endfields

 ^
 ──────────┬─────────────┬──────────┬───────────────────────────────────────────┬──────────────────
 Дата      │Дескриптор   │Номер     │Тип документа                              │Oborot.nrec
 проводки  │Пользователя │документа │                                           │
 ──────────┼─────────────┼──────────┼───────────────────────────────────────────┼──────────────────
.{
.{ CheckEnter ErTxoObGroupHeader

 Не найдено соответствие по таблицам : ^
.{ CheckEnter ErTxoKatImpList
   ^ ^
.}

.}
.{ CheckEnter ErTxoObMasterData
 @@@@@@@@@@│@@@@@@@@@@@@@│@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@
.}
.}
.endform
