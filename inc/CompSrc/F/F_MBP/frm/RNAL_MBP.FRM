//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Спецоснастка
// Ведомость наличия спецоснастки в различных разрезах
//------------------------------------------------------------------------------

#doc
Печать аналитического отчета о наличии спецоснастки.<br>
#end
.Set Name = 'RNAL_MBP'
.Group 'Подробные'
.Hide
.Fields
  dFor : Date
  What : String  Place : String
  Grouping : String
  UseStr : String  D1Name : String
  D2Name : String  D3Name : String
.EndFields
  ^  ^  ^  ^
  ^  ^  ^  ^
.{ cirFilt CheckEnter // Установленные фильтры
.Fields
  fltName : String : 'T:-'
.EndFields
  ^
.}

.{ cirCom CheckEnter // Общий цикл вывода
.{ cirGrp CheckEnter // Наименования группировки
.Fields
  GrpName : String : 'T:-' // Cуммарное имя группировки с отступом

  GrpNamePt: String  // Наименование группировки
  GrpKodPt : String  // Код группировки
  GrpNRecPt: String  // NRec группировки по МБП или таб.новер для ЛС
  NLev     : Word    // Номер уровня группировки

  GrpKol : Double  GrpSum : Double
  GrpPerc : Double  GrpIznSum : Double
.EndFields
  ^  ^ ^ ^ ^  ^ ^ ^ ^
.}
.{ cirOper CheckEnter // Операции
.Fields
  InName : String
  NRecIn : Comp
  dIn : Date  Price : Double  Kol : Double  Stoim : Double
  Perc : Double  SumIzn : Double  dExpl : Date  Ed : String
  DopInfo : String dEndExpl : Date Srok : Longint
  PartyKod : String PartyName : String
.EndFields
  ^
  NRec - ^
  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
//---------------------------
.}
.{ cirItog CheckEnter // Итоги
.Fields
  ItogName : String : 'T:-'  lBorder : String : 'T:-'
  ItogKol : Double  ItogSum : Double  ItogPerc : Double  ItogIznSum : Double
.EndFields
  ^ ^ иерархический отступ
  ^ ^ ^ ^
.}
.}
.Fields
  TotKol : Double TotSum : Double  TopPerc : Double  TotIznSum : Double
.EndFields
  ^ ^ ^ ^

.EndForm

//-------------------------------------------------------------------------

.LinkForm RNAL_MBP_01 Prototype Is RNAL_MBP
.Group 'Краткие'
.NameInList 'Краткая ведомость наличия'
.p 80
.Fields
  CommonFormHeader
  What  Place  DateToStr(dFor, 'DD/MM/YYYY') Grouping
.EndFields
.Var
  Cherta : String
.endVar
 Р ^

                 БКраткая Б ведомость наличия ^  Б^ Б на дату  Б^ Б

 Группировка:  Б^ Б
 Установленные фильтры:
.{ cirFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
    Б^ Б
.}

.Fields
  UseStr
.endFields
.{ cirCom CheckEnter
.[h
──────────────────────────────────────────────────┬───────────────────────────────────────── стр.@NP@
                                                  │                  @~@@@@@@@@@@@@
                Наименование                      ├──────────┬───────────────┬───────┬───────────────
                                                  │Количество│   Стоимость   │ Износ │  Сумма износа
──────────────────────────────────────────────────┴──────────┴───────────────┴───────┴───────────────
.]h
.{ cirGrp CheckEnter
.Fields
  GrpName : 'T:-'  GrpKol
  if ((Pos('в пользовании', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), GrpSum, GrpSum - GrpIznSum)
  if (GrpPerc > 0, String(GrpPerc)+'%', '')  GrpIznSum
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б &#'&&&.&&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&&
.}
.{ cirOper CheckEnter
.}
.{ cirItog CheckEnter
.begin
  Cherta := PadCh(LBorder, '─', 101)
end.
.Fields
  ItogName : 'T:-'  ItogKol
  if ((Pos('в пользовании', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), ItogSum, ItogSum - ItogIznSum)
  if (ItogPerc > 0, String(ItogPerc)+'%', '')  ItogIznSum
  Cherta : 'T:-'
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &#'&&&.&&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&& Б
^
.}
.}
.Fields
  TotKol
  if ((Pos('в пользовании', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), TotSum, TotSum - TotIznSum)
  if (TopPerc > 0, String(TopPerc)+'%', '')
  TotIznSum
.EndFields
─────────────────────────────────────────────────────────────────────────────────────────────────────
 БИтого:                                             &#'&&&.&&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&& Б Р
.EndForm

//-------------------------------------------------------------------------

.LinkForm RNAL_MBP_02 Prototype Is RNAL_MBP
.Group 'Подробные'
.NameInList 'Подробная ведомость наличия'
.p 80
.Fields
  CommonFormHeader
  What  Place DateToStr(dFor, 'DD/MM/YYYY') Grouping
.EndFields
.Var
  Cherta : String
.endVar
 Р ^

                 БПодробная Б ведомость наличия ^  Б^ Б на дату  Б^ Б

 Группировка:  Б^ Б
 Установленные фильтры:
.{ cirFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
    Б^ Б
.}

.Fields
  UseStr  D1Name  D2Name  D3Name
.endFields
.{ cirCom CheckEnter
.[h
──────────────────────────────────────────────────┬──────────┬──────────┬───────────────────────────────────────── стр.@NP@
                                                  │   Дата   │   Дата   │                  @~@@@@@@@@@@@
                Наименование                      │ @~@@@@@@ │ @~@@@@@@ ├──────────┬───────────────┬───────┬───────────────
                                                  │          │ @~@@@@@@ │Количество│   Стоимость   │ Износ │  Сумма износа
──────────────────────────────────────────────────┴──────────┴──────────┴──────────┴───────────────┴───────┴───────────────
.]h
.{ cirGrp CheckEnter
.Fields
  GrpName : 'T:-'
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{ cirOper CheckEnter
.Fields
  InName  DateToStr(dIn, 'DD/MM/YYYY')  if (LongInt(dExpl) > 0, DateToStr(dExpl, 'DD/MM/YYYY'), '')
  Kol  if ((Pos('в пользовании', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), Stoim, Stoim - SumIzn)
  if (Perc > 0, String(Perc)+'%', '')  SumIzn
.EndFields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ &#'&&&.&&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&&
.}
.{ cirItog CheckEnter
.begin
  Cherta := PadCh(LBorder, '─', 123)
end.
.Fields
  ItogName : 'T:-' ItogKol
  if ((Pos('в пользовании', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), ItogSum, ItogSum - ItogIznSum)
  if (ItogPerc > 0, String(ItogPerc)+'%', '')
  ItogIznSum  Cherta : 'T:-'
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &#'&&&.&&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&& Б
^
.}
.}
.Fields
  TotKol
  if ((Pos('в пользовании', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), TotSum, TotSum - TotIznSum)
  if (TopPerc > 0, String(TopPerc)+'%', '')
  TotIznSum
.EndFields
───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 БИтого:                                                                   &#'&&&.&&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&& Б Р
.EndForm

//-------------------------------------------------------------------------

.LinkForm RNAL_MBP_03 Prototype Is RNAL_MBP
.Group 'Краткие'
.NameInList 'Краткая инвентарная ведомость наличия'
.p 80
.Fields
  CommonFormHeader
  What  Place DateToStr(dFor, 'DD/MM/YYYY') Grouping
.EndFields
.Var
  Cherta : String
.endVar
 Р ^

                 БКраткая инвентарная Б ведомость наличия ^  Б^ Б на дату  Б^ Б

 Группировка:  Б^ Б
 Установленные фильтры:
.{ cirFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
    Б^ Б
.}

.Fields
  UseStr
.endFields
.{ cirCom CheckEnter
.[h
                                                                                                    стр.@NP@
──────────────────────────────────────────────────┬──────────────────────────────────────────┬──────────────
                                                  │                 @~@@@@@@@@@@@            │ Количество
                Наименование                      ├───────────────┬──────────┬───────────────┤ в наличии
                                                  │      Цена     │Количество│   Стоимость   │
──────────────────────────────────────────────────┴───────────────┴──────────┴───────────────┴──────────────
.]h
.{ cirGrp CheckEnter
.Fields
  GrpName : 'T:-'  if (GrpKol > 0, GrpSum/GrpKol, 0)  GrpKol
  if ((Pos('в пользовании', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), GrpSum, GrpSum - GrpIznSum)
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б &'#&&&&&&&&&.&& &#'&&&.&&& &#'&&&&&&&&&.&&
.}
.{ cirOper CheckEnter
.}
.{ cirItog CheckEnter
.begin
  Cherta := PadCh(LBorder, '─', 108)
end.
.Fields
  ItogName : 'T:-'  if (ItogKol > 0, ItogSum/ItogKol, 0)  ItogKol
  if ((Pos('в пользовании', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), ItogSum, ItogSum - ItogIznSum)
  Cherta : 'T:-'
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'#&&&&&&&&&.&& &#'&&&.&&& &#'&&&&&&&&&.&& Б
^
.}
.}
.Fields
  TotKol
  if ((Pos('в пользовании', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), TotSum, TotSum - TotIznSum)
.EndFields
────────────────────────────────────────────────────────────────────────────────────────────────────────────
 БИтого:                                                             &#'&&&.&&& &#'&&&&&&&&&.&& Б Р
.EndForm

//-------------------------------------------------------------------------

.LinkForm RNAL_MBP_04 Prototype Is RNAL_MBP
.Group 'Подробные'
.NameInList 'Инвентарная ведомость наличия'
.p 80
.Fields
  CommonFormHeader
  What  Place DateToStr(dFor, 'DD/MM/YYYY') Grouping
.EndFields
.Var
  Cherta : String
.endVar
 Р ^

                 БИнвентарная Б ведомость наличия ^  Б^ Б на дату  Б^ Б

 Группировка:  Б^ Б
 Установленные фильтры:
.{ cirFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
    Б^ Б
.}

.Fields
  UseStr  D1Name  D2Name  D3Name
.endFields
.{ cirCom CheckEnter
.[h
                                                                                                                          стр.@NP@
──────────────────────────────────────────────────┬──────────┬──────────┬──────────────────────────────────────────┬──────────────
                                                  │   Дата   │   Дата   │                 @~@@@@@@@@@@@            │ Количество
                Наименование                      │ @~@@@@@@ │ @~@@@@@@ ├───────────────┬──────────┬───────────────┤ в наличии
                                                  │          │ @~@@@@@@ │      Цена     │Количество│   Стоимость   │
──────────────────────────────────────────────────┴──────────┴──────────┴───────────────┴──────────┴───────────────┴──────────────
.]h
.{ cirGrp CheckEnter
.Fields
  GrpName : 'T:-'
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{ cirOper CheckEnter
.Fields
  InName  DateToStr(dIn, 'DD/MM/YYYY')  if (LongInt(dExpl) > 0, DateToStr(dExpl, 'DD/MM/YYYY'), '')
  Price  Kol
  if ((Pos( 'в пользовании', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), Stoim, Stoim - SumIzn)
.EndFields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ &'#&&&&&&&&&.&& &#'&&&.&&& &#'&&&&&&&&&.&&
.}
.{ cirItog CheckEnter
.begin
  Cherta := PadCh( LBorder, '─', 130)
end.
.Fields
  ItogName : 'T:-'  if (ItogKol > 0, ItogSum/ItogKol, 0)  ItogKol
  if ((Pos('в пользовании', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), ItogSum, ItogSum - ItogIznSum)
  Cherta : 'T:-'
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'#&&&&&&&&&.&& &#'&&&.&&& &#'&&&&&&&&&.&& Б
^
.}
.}
.Fields
  TotKol
  if ((Pos('в пользовании', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), TotSum, TotSum - TotIznSum)
.EndFields
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 БИтого:                                                                                   &#'&&&.&&& &#'&&&&&&&&&.&& Б Р
.EndForm

//-------------------------------------------------------------------------

.LinkForm RNAL_MBP_05 Prototype Is RNAL_MBP
.Group 'Краткие'
.NameInList 'Краткая ведомость наличия (начальная и остаточная стоимость)'
.p 80
.Fields
  CommonFormHeader
  What  Place  DateToStr(dFor, 'DD/MM/YYYY') Grouping
.EndFields
.Var
  Cherta : String
.endVar
 Р ^

                 БКраткая Б ведомость наличия ^  Б^ Б на дату  Б^ Б

 Группировка:  Б^ Б
 Установленные фильтры:
.{ cirFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
    Б^ Б
.}

.Fields
  UseStr
.endFields
.{ cirCom CheckEnter
.[h
──────────────────────────────────────────────────┬───────────────────────────────────────────────────────── стр.@NP@
                                                  │                  @~@@@@@@@@@@@@
                                                  ├──────────┬───────────────────────────────┬───────┬───────────────
                Наименование                      │          │           Стоимость           │       │
                                                  │Количество├───────────────┬───────────────┤ Износ │  Сумма износа
                                                  │          │   начальная   │   остаточная  │       │
──────────────────────────────────────────────────┴──────────┴───────────────┴───────────────┴───────┴───────────────
.]h
.{ cirGrp CheckEnter
.Fields
  GrpName : 'T:-'  GrpKol
  GrpSum
  GrpSum - GrpIznSum
  if (GrpPerc > 0, String(GrpPerc)+'%', '')  GrpIznSum
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б &#'&&&.&&& &#'&&&&&&&&&.&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&&
.}
.{ cirOper CheckEnter
.}
.{ cirItog CheckEnter
.begin
  Cherta := PadCh(LBorder, '─', 117)
end.
.Fields
  ItogName : 'T:-'  ItogKol
  ItogSum
  ItogSum - ItogIznSum
  if (ItogPerc > 0, String(ItogPerc)+'%', '')  ItogIznSum
  Cherta : 'T:-'
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &#'&&&.&&& &#'&&&&&&&&&.&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&& Б
^
.}
.}
.Fields
  TotKol
  TotSum
  TotSum - TotIznSum
  if (TopPerc > 0, String(TopPerc)+'%', '')
  TotIznSum
.EndFields
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 БИтого:                                             &#'&&&.&&& &#'&&&&&&&&&.&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&& Б Р
.EndForm

//-------------------------------------------------------------------------

.LinkForm RNAL_MBP_06 Prototype Is RNAL_MBP
.Group 'Подробные'
.NameInList 'Подробная ведомость наличия (начальная и остаточная стоимость)'
.p 80
.Fields
  CommonFormHeader
  What  Place DateToStr(dFor, 'DD/MM/YYYY') Grouping
.EndFields
.Var
  Cherta : String
.endVar
 Р ^

                 БПодробная Б ведомость наличия ^  Б^ Б на дату  Б^ Б

 Группировка:  Б^ Б
 Установленные фильтры:
.{ cirFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
    Б^ Б
.}
 Р Ш
.Fields
  UseStr  D1Name  D2Name  D3Name
.endFields
.{ cirCom CheckEnter
.[h
──────────────────────────────────────────────────┬──────────┬──────────┬───────────────────────────────────────────────────────── стр.@NP@
                                                  │          │          │                       @~@@@@@@@@@@@
                                                  │   Дата   │   Дата   ├──────────┬───────────────────────────────┬───────┬───────────────
                Наименование                      │ @~@@@@@@ │ @~@@@@@@ │          │            Стоимость          │       │
                                                  │          │ @~@@@@@@ │Количество├───────────────┬───────────────┤ Износ │  Сумма износа
                                                  │          │          │          │   начальная   │  остаточная   │       │
──────────────────────────────────────────────────┴──────────┴──────────┴──────────┴───────────────┴───────────────┴───────┴───────────────
.]h
.{ cirGrp CheckEnter
.Fields
  GrpName : 'T:-'
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{ cirOper CheckEnter
.Fields
  InName  DateToStr(dIn, 'DD/MM/YYYY')  if (LongInt(dExpl) > 0, DateToStr(dExpl, 'DD/MM/YYYY'), '')
  Kol
  Stoim
  Stoim - SumIzn
  if (Perc > 0, String(Perc)+'%', '')  SumIzn
.EndFields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ &#'&&&.&&& &#'&&&&&&&&&.&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&&
.}
.{ cirItog CheckEnter
.begin
  Cherta := PadCh(LBorder, '─', 139)
end.
.Fields
  ItogName : 'T:-' ItogKol
  ItogSum
  ItogSum - ItogIznSum
  if (ItogPerc > 0, String(ItogPerc)+'%', '')
  ItogIznSum  Cherta : 'T:-'
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &#'&&&.&&& &#'&&&&&&&&&.&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&& Б
^
.}
.}
.Fields
  TotKol
  TotSum
  TotSum - TotIznSum
  if (TopPerc > 0, String(TopPerc)+'%', '')
  TotIznSum
.EndFields
───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 БИтого:                                                                   &#'&&&.&&& &#'&&&&&&&&&.&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&& Б Ш
.EndForm

//-------------------------------------------------------------------------