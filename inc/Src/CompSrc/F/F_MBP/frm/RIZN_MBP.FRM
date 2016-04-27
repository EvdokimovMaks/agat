//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Спецоснастка
// Ведомость начиcления износа спецоснастки в различных разрезах
//------------------------------------------------------------------------------

#doc
Печать аналитического отчета "Ведомость начисления износа" по спецоснастке.<br>
#end
.Set Name = 'RIzn_MBP'
.Hide
.Fields
  pCommand : Word
  dFrom : Date
  dTo   : Date
  Grouping : String
  MyOrgName : String
  NDE_ShName : String
  cSigners : comp
.EndFields
  ^  ^  ^  ^  ^  ^  ^
.{ cirIznFilt CheckEnter // Установленные фильтры
.Fields
  fltName : String : 'T:-'
.EndFields
  ^
.}

.{ cirIznCom CheckEnter // Общий цикл вывода
.{ cirIznGrp CheckEnter // Наименования группировки
.Fields
  GrpName : String : 'T:-'
  GrpKol : Double  GrpSum : Double
  GrpPerc : Double  GrpIznSum : Double
  GrpIznSumF : Double  GrpOstStoim : Double
.EndFields
  ^  ^ ^ ^ ^ ^ ^
.}
.{ cirIznOper CheckEnter // Операции
.Fields
  InName : String  dOper: Date  opDoc : String  tOper: String
  Price : Double  Kol : Double  Stoim : Double
  Perc : Double  SumIzn : Double  dExpl : Date  Ed : String
  DopInfo : String SumIznF : Double OstStoim : Double
.EndFields
  ^  ^ ^ ^  ^ ^ ^  ^ ^ ^  ^ ^ ^ ^
.}
.{ cirIznItog CheckEnter // Итоги
.Fields
  ItogName : String : 'T:-'  lBorder : String : 'T:-'
  ItogKol : Double  ItogSum : Double
  ItogPerc : Double  ItogIznSum : Double
  ItogIznSumF : Double  ItogOstStoim : Double
.EndFields
  ^ ^  ^ ^ ^ ^ ^ ^
.}
.}
.Fields
  TotKol : Double TotSum : Double
  TopPerc : Double  TotIznSum : Double
  TotIznSumF : Double  TotOstStoim : Double
.EndFields
  ^ ^ ^ ^ ^ ^

.{ CheckEnter FeeSignersCycle_RIzn_MBP
.Fields
  Подписант_nRec : comp
  Подписант_ФИО : String
  Подписант_Табельный_Номер : String
  Подписант_Должность : String
  Подписант_Роль : String
.EndFields
  ^ ^ ^ ^ ^
.}
.EndForm

//-------------------------------------------------------------------------

.LinkForm RIzn_MBP_01 Prototype Is RIzn_MBP
.Group 'Краткие'
.NameInList 'Краткая ведомость начисления износа'
.p 80
.Fields
  CommonFormHeader
  MyOrgName
  if (pCommand > 0, 'СФО', 'спецоснастки')
  DateToStr(dFrom, 'DD/MM/YYYY')  DateToStr(dTo, 'DD/MM/YYYY')  Grouping
.EndFields
.Var
  Cherta : String
.endVar
 Р ^
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

             БКраткая Б ведомость начисления износа ^ с  Б^ Б по  Б^ Б

 Группировка:  Б^ Б
 Установленные фильтры:
.{ cirIznFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
    Б^ Б
.}

.{ cirIznCom CheckEnter
.[h
.Fields
  NDE_ShName
  NDE_ShName
.EndFields
──────────────────────────────────────────────────┬─────────────────────────────── стр.@np@
                                                  │              Начислен износ
                Наименование                      ├───────────────┬────────┬───────────────
                                                  │ Сумма износа, │ Кол-во │Перв.стоимость,
                                                  │@~@@@@@@@@@@@@@│        │@~@@@@@@@@@@@@@
──────────────────────────────────────────────────┴───────────────┴────────┴───────────────
.]h
.{ cirIznGrp CheckEnter
.Fields
  GrpName : 'T:-'  GrpIznSum  GrpKol  GrpSum
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б &#'&&&&&&&&&.&& &#'&&.&& &#'&&&&&&&&&.&&
.}
.{ cirIznOper CheckEnter
.}
.{ cirIznItog CheckEnter
.begin
  Cherta := PadCh(LBorder, '─', 91)
end.
.Fields
  ItogName : 'T:-'  ItogIznSum  ItogKol  ItogSum  Cherta : 'T:-'
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &#'&&&&&&&&&.&& &#'&&.&& &#'&&&&&&&&&.&& Б
^
.}
.}
.Fields
  TotIznSum  TotKol  TotSum
.EndFields
───────────────────────────────────────────────────────────────────────────────────────────
  БИтого:                                            &#'&&&&&&&&&.&& &#'&&.&& &#'&&&&&&&&&.&& Б
.{ CheckEnter FeeSignersCycle_RIzn_MBP
.Fields
  if (Подписант_Роль <> '', Подписант_Роль, Подписант_должность)
  Подписант_ФИО
.EndFields

  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д   _______________    Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
          должность                подпись                  расшифровка подписи
.} Р
.EndForm

//-------------------------------------------------------------------------

.LinkForm RIzn_MBP_02 Prototype Is RIzn_MBP
.Group 'Подробные'
.NameInList 'Подробная ведомость начисления износа'
.p 80
.Fields
  CommonFormHeader
  MyOrgName
  if (pCommand > 0, 'СФО', 'спецоснастки')
  DateToStr(dFrom, 'DD/MM/YYYY')  DateToStr(dTo, 'DD/MM/YYYY')  Grouping
.EndFields
.Var
  Cherta : String
.endVar
 Р ^
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

                 БПодробная Б ведомость начисления износа ^ c  Б^ Б по  Б^ Б

 Группировка:  Б^ Б
 Установленные фильтры:
.{ cirIznFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
    Б^ Б
.}

.{ cirIznCom CheckEnter
.[h
.Fields
  NDE_ShName
  NDE_ShName
.EndFields
──────────────────────────────────────────────────┬─────────────────────────┬──────────┬───────────────────────────────────── стр.@np@
                                                  │         Документ        │   Дата   │                  Начислен износ
                Наименование                      ├──────────┬──────────┬───┤ ввода в  ├──────┬──────────────┬────────┬───────────────
                                                  │   Дата   │  Номер   │Тип│  экспл.  │  %   │ Сумма износа,│ Кол-во │Перв.стоимость,
                                                  │          │          │   │          │ изн. │@~@@@@@@@@@@@@│        │@~@@@@@@@@@@@@@
──────────────────────────────────────────────────┴──────────┴──────────┴───┴──────────┴──────┴──────────────┴────────┴───────────────
.]h
.{ cirIznGrp CheckEnter
.Fields
  GrpName : 'T:-'
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{ cirIznOper CheckEnter
.Fields
  InName  DateToStr(dOper, 'DD/MM/YYYY')  opDoc  tOper
  if (LongInt(dExpl) > 0, DateToStr(dExpl, 'DD/MM/YYYY'), '')
  if (Perc > 0, String(Perc), '')  SumIzn  Kol  Stoim
.EndFields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @~@ @@@@@@@@@@ &#&&&& &#'&&&&&&&&.&& &#'&&.&& &#'&&&&&&&&&.&&
.}
.{ cirIznItog CheckEnter
.begin
  Cherta := PadCh(LBorder, '─', 134)
end.
.Fields
  ItogName : 'T:-'  ItogIznSum  ItogKol  ItogSum  Cherta : 'T:-'
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@             &#'&&&&&&&&.&& &#'&&.&& &#'&&&&&&&&&.&& Б
^
.}
.}
.Fields
  TotIznSum  TotKol TotSum
.EndFields
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
  БИтого:                                                                                        &#'&&&&&&&&.&& &#'&&.&& &#'&&&&&&&&&.&& Б
.{ CheckEnter FeeSignersCycle_RIzn_MBP
.Fields
  if (Подписант_Роль <> '', Подписант_Роль, Подписант_должность)
  Подписант_ФИО
.EndFields

  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д   _______________    Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
          должность                подпись                  расшифровка подписи
.} Р
.EndForm

//-------------------------------------------------------------------------

.LinkForm RIzn_MBP_03 Prototype Is RIzn_MBP
.Group 'Очень краткие'
.NameInList 'Краткая ведомость начисления износа'
.p 80
.Fields
  CommonFormHeader
  MyOrgName
  if (pCommand > 0, 'СФО', 'спецоснастки')
  DateToStr(dFrom, 'DD/MM/YYYY')  DateToStr(dTo, 'DD/MM/YYYY')  Grouping
.EndFields
.Var
  Cherta : String
.endVar
 Р ^
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

             БКраткая Б ведомость начисления износа ^ с  Б^ Б по  Б^ Б

 Группировка:  Б^ Б
 Установленные фильтры:
.{ cirIznFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
    Б^ Б
.}

.{ cirIznCom CheckEnter
.[h
.Fields
  NDE_ShName
.EndFields
────────────────────────────────────────────────────────────┬───────────────────── стр.@np@
                       Наименование                         │     Начислен износ, @@@@@@
────────────────────────────────────────────────────────────┴──────────────────────────────
.]h
.{ cirIznGrp CheckEnter
.Fields
  GrpName : 'T:-'  GrpIznSum
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б &#'&&&&&&&&&&&&&&&&&&&&&&&&.&&
.}
.{ cirIznOper CheckEnter
.}
.{ cirIznItog CheckEnter
.begin
  Cherta := PadCh(LBorder, '─', 91)
end.
.Fields
  ItogName : 'T:-'  ItogIznSum  Cherta : 'T:-'
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &#'&&&&&&&&&&&&&&&&&&&&&&&&.&& Б
^
.}
.}
.Fields
  TotIznSum
.EndFields
───────────────────────────────────────────────────────────────────────────────────────────
  БИтого:                                                      &#'&&&&&&&&&&&&&&&&&&&&&&&&.&& Б
.{ CheckEnter FeeSignersCycle_RIzn_MBP
.Fields
  if (Подписант_Роль <> '', Подписант_Роль, Подписант_должность)
  Подписант_ФИО
.EndFields

  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д   _______________    Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
          должность                подпись                  расшифровка подписи
.} Р
.EndForm

//-------------------------------------------------------------------------
