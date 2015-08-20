//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Спецоснастка
// Ведомость движения драгметаллов в спецоснастке
//------------------------------------------------------------------------------

#doc
Печать аналитического отчета о движении драгметаллов в спецоснастке.<br>
#end
.Set Name = 'RMOVD_MBP'
.Hide
.Fields
  dFrom : Date  dTo : Date
  Place : String
  Grouping : String
  SumFormat : String
.EndFields
  ^  ^  ^  ^  ^
.{ cirMvDFilt CheckEnter // Установленные фильтры
.Fields
  fltName : String : 'T:-'
.EndFields
  ^
.}

// Драгметаллы
.Fields
  DragName : String
.EndFields
 .{.?mvS1; .}
 .{.?mvS2; ^.}
 .{.?mvS3; .}
 .{.?mvS4; .}
 .{.?mvS5; .}

.{ cirMvDCom CheckEnter // Общий цикл вывода
.{ cirMvDGrp CheckEnter // Наименования группировки
.Fields
  GrpName : String : 'T:-' // Cуммарное имя группировки с отступом

  GrpNamePt: String  // Наименование группировки
  GrpKodPt : String  // Код группировки
  GrpNRecPt: String  // NRec группировки по МБП или таб.новер для ЛС
  NLev     : Word    // Номер уровня группировки

  GrpSlKol : Double  // Вход сальдо по драгметаллу
  GrpInKol : Double  // Сумма приходов по драгметаллу
  GrpOtKol : Double  // Сумма расходов по драгметаллу
  GrpOsKol : Double  // Исходящий остаток по драгметаллу

.EndFields
  ^  ^ ^ ^ ^ .{.?dmvGrp; ^  ^  ^  ^ .}
.}
.{ cirMvDOper CheckEnter // Операции
.Fields
  opName : String  Ed : String  Price : Double
  dOp : Date  opDoc : String  opType : String
  InKol : Double
  OtKol : Double
  OsKol : Double
.EndFields
  ^  ^  ^  ^ ^ ^ .{.?dmvOp; ^  ^  ^ .}
.}
.{ cirMvDItog CheckEnter // Итоги
.Fields
  ItogName : String : 'T:-'
  ItogSlKol : Double
  ItogInKol : Double
  ItogOtKol : Double
  ItogOsKol : Double
.EndFields
  ^ .{.?dmvItog; ^  ^  ^  ^ .}
.}
.}
 .{.?mvS6; .}
.Fields
  TotSlSum : Double  TotInSum : Double  TotOtSum : Double  TotOsSum : Double
.EndFields
  .{.?dmvTot; ^  ^  ^  ^ .}

.EndForm


//-------------------------------------------------------------------------


.LinkForm RMOVD_MBP_01 Prototype is RMOVD_MBP
.Group 'Краткие'
.NameInList 'Краткая ведомость движения драгметаллов'
.Defo Landscape
.p 50
.Var
  iExcelFormat : ExcelFormat;
.endVar
.Fields
  CommonFormHeader
  Place
  DateToStr(dFrom, 'DD/MM/YYYY')
  DateToStr(dTo, 'DD/MM/YYYY')
  Grouping
.EndFields
 Р ^

                БКраткая Б ведомость движения драгоценных металлов в спецоснастке  Б^ Б в период с  Б^ Б по  Б^ Б

 Группировка:  Б^ Б
 Установленные фильтры:
.{ cirMvDFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
    Б^ Б
.}

.Fields // Драгметаллы
  DragName
.EndFields
──────────────────────────────────────────────────┬.{.?mvS1;───────────────────────────────────────────────────────────────────────────────────┬.}
                                                  │.{.?mvS2;@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│.}
                 Наименование                     ├.{.?mvS3;────────────────────┬────────────────────┬────────────────────┬────────────────────┼.}
                                                  │.{.?mvS4;    Вход.остаток    │       Приход       │       Расход       │    Исх. остаток    │.}
──────────────────────────────────────────────────┴.{.?mvS5;────────────────────┴────────────────────┴────────────────────┴────────────────────┴.}
.{ cirMvDCom CheckEnter
.{ cirMvDGrp CheckEnter
.Fields
  GrpName : 'T:-'
  iExcelFormat.DoubleToStrFormatNotNul(GrpSlKol, SumFormat)
  iExcelFormat.DoubleToStrFormatNotNul(GrpInKol, SumFormat)
  iExcelFormat.DoubleToStrFormatNotNul(GrpOtKol, SumFormat)
  iExcelFormat.DoubleToStrFormatNotNul(GrpOsKol, SumFormat)
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б .{.?dmvGrp;&&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& .}
.}
.{ cirMvDOper CheckEnter
 .{.?dmvOp; .}
.}
.{ cirMvDItog CheckEnter
.Fields
  ItogName : 'T:-'
  iExcelFormat.DoubleToStrFormatNotNul(ItogSlKol, SumFormat)
  iExcelFormat.DoubleToStrFormatNotNul(ItogInKol, SumFormat)
  iExcelFormat.DoubleToStrFormatNotNul(ItogOtKol, SumFormat)
  iExcelFormat.DoubleToStrFormatNotNul(ItogOsKol, SumFormat)
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ .{.?dmvItog;&&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& .} Б
.}
.}
.Fields
  iExcelFormat.DoubleToStrFormatNotNul(TotSlSum, SumFormat)
  iExcelFormat.DoubleToStrFormatNotNul(TotInSum, SumFormat)
  iExcelFormat.DoubleToStrFormatNotNul(TotOtSum, SumFormat)
  iExcelFormat.DoubleToStrFormatNotNul(TotOsSum, SumFormat)
.EndFields

───────────────────────────────────────────────────.{.?mvS6;────────────────────────────────────────────────────────────────────────────────────.}
 БИтого:                                             .{.?dmvTot;&&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& .} Б Р
.EndForm


//-------------------------------------------------------------------------

.LinkForm RMOVD_MBP_02 Prototype is RMOVD_MBP
.Group 'Подробные'
.NameInList 'Подробная ведомость движения драгметаллов'
.Defo Landscape
.p 50
.Var
  iExcelFormat : ExcelFormat;
.endVar
.Fields
  CommonFormHeader
  Place
  DateToStr(dFrom, 'DD/MM/YYYY')
  DateToStr(dTo, 'DD/MM/YYYY')
  Grouping
.EndFields
 Р ^

                БПодробная Б ведомость движения драгоценных металлов в спецоснастке  Б^ Б в период с  Б^ Б по  Б^ Б

 Группировка:  Б^ Б
 Установленные фильтры:
.{ cirMvDFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
    Б^ Б
.}

.Fields // Драгметаллы
  DragName
.EndFields
─────────────────────────────────────────┬──────────┬.{.?mvS1;───────────────────────────────────────────────────────────────────────────────────┬.}
                                         │          │.{.?mvS2;@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│.}
              Наименование               │   Дата   ├.{.?mvS3;────────────────────┬────────────────────┬────────────────────┬────────────────────┼.}
                                         │          │.{.?mvS4;    Вход.остаток    │       Приход       │       Расход       │    Исх. остаток    │.}
─────────────────────────────────────────┴──────────┴.{.?mvS5;────────────────────┴────────────────────┴────────────────────┴────────────────────┴.}
.{ cirMvDCom CheckEnter
.{ cirMvDGrp CheckEnter
.Fields
  GrpName : 'T:-'
  iExcelFormat.DoubleToStrFormatNotNul(GrpSlKol, SumFormat)
  iExcelFormat.DoubleToStrFormatNotNul(GrpInKol, SumFormat)
  iExcelFormat.DoubleToStrFormatNotNul(GrpOtKol, SumFormat)
  iExcelFormat.DoubleToStrFormatNotNul(GrpOsKol, SumFormat)
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б.{.?dmvGrp;&&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& .}
.}
.{ cirMvDOper CheckEnter
.Fields
  opName  DateToStr(dOp, 'DD/MM/YYYY')
  iExcelFormat.DoubleToStrFormatNotNul(InKol, SumFormat)
  iExcelFormat.DoubleToStrFormatNotNul(OtKol, SumFormat)
  iExcelFormat.DoubleToStrFormatNotNul(OsKol, SumFormat)
.EndFields
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @~@@@@@@@@ .{.?dmvOp;                     &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& .}
.}
.{ cirMvDItog CheckEnter
.Fields
  ItogName : 'T:-'
  iExcelFormat.DoubleToStrFormatNotNul(ItogSlKol, SumFormat)
  iExcelFormat.DoubleToStrFormatNotNul(ItogInKol, SumFormat)
  iExcelFormat.DoubleToStrFormatNotNul(ItogOtKol, SumFormat)
  iExcelFormat.DoubleToStrFormatNotNul(ItogOsKol, SumFormat)
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ .{.?dmvItog;&&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& .} Б
.}
.}
.Fields
  iExcelFormat.DoubleToStrFormatNotNul(TotSlSum, SumFormat)
  iExcelFormat.DoubleToStrFormatNotNul(TotInSum, SumFormat)
  iExcelFormat.DoubleToStrFormatNotNul(TotOtSum, SumFormat)
  iExcelFormat.DoubleToStrFormatNotNul(TotOsSum, SumFormat)
.EndFields

─────────────────────────────────────────────────────.{.?mvS6;────────────────────────────────────────────────────────────────────────────────────.}
 БИтого:                                               .{.?dmvTot;&&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& .} Б Р
.EndForm
