//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Спецоснастка
// Ведомость движения спецоснастки в различных разрезах
//------------------------------------------------------------------------------

#doc
Печать аналитического отчета о движении спецоснастки.<br>
#end
.Set Name = 'RMOV_MBP'
.Hide
.Fields
  dFrom : Date  dTo : Date
  What : String Place : String
  Grouping : String
  NrecPodr : comp
.EndFields
  ^  ^  ^  ^  ^  ^
.{ cirMvFilt CheckEnter // Установленные фильтры
.Fields
  fltName : String : 'T:-'
.EndFields
  ^
.}

.{ cirMvCom CheckEnter // Общий цикл вывода
.{ cirMvGrp CheckEnter // Наименования группировки
.Fields
  GrpName : String : 'T:-' // Cуммарное имя группировки с отступом

  GrpNamePt: String  // Наименование группировки
  GrpKodPt : String  // Код группировки
  GrpNRecPt: String  // NRec группировки по МБП или таб.новер для ЛС
  NLev     : Word    // Номер уровня группировки

  slPrice  : Double
  GrpSlKol : Double  GrpSlSum : Double
  GrpInKol : Double  GrpInSum : Double
  GrpOtKol : Double  GrpOtSum : Double
  GrpOsKol : Double  GrpOsSum : Double
.EndFields
  ^  ^ ^ ^ ^  ^  ^ ^  ^ ^  ^ ^  ^ ^
.}
.{ cirMvOper CheckEnter // Операции
.Fields
  InNRec : Comp OutNRec : Comp
  opName : String  Ed : String  Price : Double
  dOp : Date  opDoc : String  opType : String  dEx : Date
  PartyKod : String PartyName : String
  InKol : Double  InSum : Double
  OtKol : Double  OtSum : Double
  OsKol : Double  OsSum : Double
.EndFields
  ^ ^  ^  ^  ^  ^ ^ ^  ^  ^ ^  ^ ^  ^ ^  ^ ^
.}
.{ cirMvItog CheckEnter // Итоги
.Fields
  ItogName : String : 'T:-'  lBorder : String : 'T:-'
  ItogSlKol : Double  ItogSlSum : Double
  ItogInKol : Double  ItogInSum : Double
  ItogOtKol : Double  ItogOtSum : Double
  ItogOsKol : Double  ItogOsSum : Double
.EndFields
  ^ ^  ^ ^  ^ ^  ^ ^  ^ ^
.}
.}
.Fields
  TotSlKol : Double  TotInKol : Double  TotOtKol : Double  TotOsKol : Double
  TotSlSum : Double  TotInSum : Double  TotOtSum : Double  TotOsSum : Double
.EndFields
  ^  ^  ^  ^
  ^  ^  ^  ^

.EndForm


//-------------------------------------------------------------------------


.LinkForm RMOV_MBP_01 Prototype is RMOV_MBP
.Group 'Краткие'
.NameInList 'Краткая ведомость движения'
.Defo Landscape
.p 50
.Fields
  CommonFormHeader
  What  Place  DateToStr(dFrom, 'DD/MM/YYYY')  DateToStr(dTo, 'DD/MM/YYYY')
  Grouping
.EndFields
.Var
  Cherta : String
.endVar
 Р ^

                                         БКраткая Б ведомость движения ^  Б^ Б в период с  Б^ Б по  Б^ Б

 Группировка:  Б^ Б
 Установленные фильтры:
.{ cirMvFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
    Б^ Б
.}

.{ cirMvCom CheckEnter
.Fields
  'Сумма, ' + sGetTune('NDE.SIMVRUB')
  'Сумма, ' + sGetTune('NDE.SIMVRUB')
  'Сумма, ' + sGetTune('NDE.SIMVRUB')
  'Сумма, ' + sGetTune('NDE.SIMVRUB')
.EndFields
.[h
                                                                                                                                                  стр.@np@
──────────────────────────────────────────────────┬─────────────────────────┬─────────────────────────┬─────────────────────────┬─────────────────────────
                                                  │    Входящий остаток     │         Приход          │         Расход          │    Исходящий остаток
                 Наименование                     ├──────────┬──────────────┼──────────┬──────────────┼──────────┬──────────────┼──────────┬──────────────
                                                  │Количество│@~@@@@@@@@@@@@│Количество│@~@@@@@@@@@@@@│Количество│@~@@@@@@@@@@@@│Количество│@~@@@@@@@@@@@@
──────────────────────────────────────────────────┴──────────┴──────────────┴──────────┴──────────────┴──────────┴──────────────┴──────────┴──────────────
.]h
.{ cirMvGrp CheckEnter
.Fields
  GrpName : 'T:-'  GrpSlKol  GrpSlSum   GrpInKol  GrpInSum   GrpOtKol  GrpOtSum   GrpOsKol  GrpOsSum
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б &'#&&&&.&& &'#&&&&&&&&.&& &'#&&&&.&& &'#&&&&&&&&.&& &'#&&&&.&& &'#&&&&&&&&.&& &'#&&&&.&& &'#&&&&&&&&.&&
.}
.{ cirMvOper CheckEnter
.}
.{ cirMvItog CheckEnter
.begin
  Cherta := PadCh(LBorder, '─', 154)
end.
.Fields
  ItogName : 'T:-'   ItogSlKol  ItogSlSum   ItogInKol  ItogInSum   ItogOtKol  ItogOtSum   ItogOsKol  ItogOsSum
  Cherta : 'T:-'
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'#&&&&.&& &'#&&&&&&&&.&& &'#&&&&.&& &'#&&&&&&&&.&& &'#&&&&.&& &'#&&&&&&&&.&& &'#&&&&.&& &'#&&&&&&&&.&& Б
^
.}
.}
.Fields
  TotSlKol  TotSlSum  TotInKol  TotInSum
  TotOtKol  TotOtSum  TotOsKol  TotOsSum
.EndFields
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 БИтого:                                             &'#&&&&.&& &'#&&&&&&&&.&& &'#&&&&.&& &'#&&&&&&&&.&& &'#&&&&.&& &'#&&&&&&&&.&& &'#&&&&.&& &'#&&&&&&&&.&& Б Р
.EndForm

//-------------------------------------------------------------------------

.LinkForm RMOV_MBP_02 Prototype is RMOV_MBP
.Group 'Подробные'
.NameInList 'Подробная ведомость движения'
.Defo Landscape
.p 50
.Fields
  CommonFormHeader
  What  Place  DateToStr(dFrom, 'DD/MM/YYYY')  DateToStr(dTo, 'DD/MM/YYYY')
  Grouping
.EndFields
.Var
  Cherta : String
.endVar
 Ш ^

                                                             БПодробная Б ведомость движения ^  Б^ Б в период с  Б^ Б по  Б^ Б

 Группировка:  Б^ Б
 Установленные фильтры:
.{ cirMvFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
    Б^ Б
.}
.{ cirMvCom CheckEnter
.Fields
  'Цена, '  + sGetTune('NDE.SIMVRUB')
  'Сумма, ' + sGetTune('NDE.SIMVRUB')
  'Сумма, ' + sGetTune('NDE.SIMVRUB')
  'Сумма, ' + sGetTune('NDE.SIMVRUB')
  'Сумма, ' + sGetTune('NDE.SIMVRUB')
.EndFields
.[h
                                                                                                                                                                                                стр.@np@
──────────────────────────────────────────────┬──────────────────────┬──────────┬───────────────┬─────────────────────────┬─────────────────────────┬─────────────────────────┬─────────────────────────
                                              │     Документ         │   Дата   │               │    Входящий остаток     │         Приход          │         Расход          │    Исходящий остаток
                 Наименование                 ├──────────┬───────────┤ ввода в  │@~@@@@@@@@@@@@@├──────────┬──────────────┼──────────┬──────────────┼──────────┬──────────────┼──────────┬──────────────
                                              │   Дата   │   Номер   │  экспл.  │               │Количество│@~@@@@@@@@@@@@│Количество│@~@@@@@@@@@@@@│Количество│@~@@@@@@@@@@@@│Количество│@~@@@@@@@@@@@@
──────────────────────────────────────────────┴──────────┴───────────┴──────────┴───────────────┴──────────┴──────────────┴──────────┴──────────────┴──────────┴──────────────┴──────────┴──────────────
.]h
.{ cirMvGrp CheckEnter
.Fields
  GrpName : 'T:-'   slPrice   GrpSlKol  GrpSlSum   GrpInKol  GrpInSum   GrpOtKol  GrpOtSum   GrpOsKol  GrpOsSum
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б &'#&&&&&&&&&.&& &'#&&&&.&& &'#&&&&&&&&.&& &'#&&&&.&& &'#&&&&&&&&.&& &'#&&&&.&& &'#&&&&&&&&.&&  Б&'#&&&&.&& &'#&&&&&&&&.&& Б
.}
.{ cirMvOper CheckEnter
.Fields
  opName  DateToStr(dOp, 'DD/MM/YYYY')  opDoc  if (To_Days(dEx) > 0, DateToStr(dEx, 'DD/MM/YYYY'), '')
  Price  InKol  InSum  OtKol  OtSum  OsKol  OsSum
.EndFields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @~@@@@@@@@ &&&&&&&&&&& @~@@@@@@@@ &'#&&&&&&&&&.&&                           &'#&&&&.&& &'#&&&&&&&&.&& &'#&&&&.&& &'#&&&&&&&&.&&  В&'#&&&&.&& &'#&&&&&&&&.&& В
.}
.{ cirMvItog CheckEnter
.begin
  Cherta := PadCh(LBorder, '─', 200)
end.
.Fields
  ItogName : 'T:-'   ItogSlKol  ItogSlSum   ItogInKol  ItogInSum   ItogOtKol  ItogOtSum   ItogOsKol  ItogOsSum
  Cherta : 'T:-'
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                 &'#&&&&.&& &'#&&&&&&&&.&& &'#&&&&.&& &'#&&&&&&&&.&& &'#&&&&.&& &'#&&&&&&&&.&& &'#&&&&.&& &'#&&&&&&&&.&& Б
^
.}
.}
.Fields
  TotSlKol  TotSlSum  TotInKol  TotInSum
  TotOtKol  TotOtSum  TotOsKol  TotOsSum
.EndFields
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 БИтого:                                                                                           &'#&&&&.&& &'#&&&&&&&&.&& &'#&&&&.&& &#'&&&&&&&&.&& &'#&&&&.&& &#'&&&&&&&&.&& &'#&&&&.&& &#'&&&&&&&&.&& Б Ш
.EndForm
