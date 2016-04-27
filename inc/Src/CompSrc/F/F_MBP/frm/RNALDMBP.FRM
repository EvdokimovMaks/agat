//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Спецоснастка
// Ведомость наличия драгметаллов в спецоснастке
//------------------------------------------------------------------------------

#doc
Печать аналитического отчета о наличии драгметалов в спецоснастке.<br>
#end
.Set Name = 'RNALD_MBP'
.Hide
.Fields
  dFor : Date
  Place : String
  Grouping : String
  SumFormat : String
  cSigners : comp
.EndFields
  ^  ^  ^  ^  ^
.{ cirDFilt CheckEnter // Установленные фильтры
.Fields
  fltName : String : 'T:-'
.EndFields
  ^
.}

// Драгметаллы
.Fields
  DragName : String
.EndFields
 .{.?nlS1; .}
 .{.?nlS2; .}
 .{.?nlS3; ^ .}
 .{.?nlS4; .}

.{ cirDCom CheckEnter // Общий цикл вывода
.{ cirDGrp CheckEnter // Наименования группировки
.Fields
  GrpName : String : 'T:-' // Cуммарное имя группировки с отступом

  GrpNamePt: String  // Наименование группировки
  GrpKodPt : String  // Код группировки
  GrpNRecPt: String  // NRec группировки по номенклатуре или таб.номер для ЛС
  NLev     : Word    // Номер уровня группировки

  GrpKol : Double  GrpSum : Double
  GrpPerc : Double  GrpIznSum : Double  GrpDragVal : Double
.EndFields
  ^  ^ ^ ^ ^  ^ ^ ^ ^  .{.?dnlGrp; ^ .}
.}
.{ cirDOper CheckEnter // Операции
.Fields
  InName : String  dIn : Date  Price : Double  Kol : Double  Stoim : Double
  Perc : Double  SumIzn : Double  dExpl : Date  Ed : String
  DopInfo : String  OpDragVal : Double
.EndFields
  ^  ^ ^ ^ ^ ^ ^ ^ ^ ^  .{.?dnlOp; ^ .}
.}
.{ cirDItog CheckEnter // Итоги
.Fields
  ItogName : String : 'T:-'  ItogKol : Double  ItogSum : Double
  ItogPerc : Double  ItogIznSum : Double  ItogDragVal : Double
.EndFields
  ^ ^ ^ ^ ^  .{.?dnlItog; ^ .}
.}
.}
 .{.?nlS5; .}
.Fields
  TotSum : Double  TopPerc : Double  TotIznSum : Double  TotDragVal : Double
.EndFields
  ^ ^ ^  .{.?dnlTot; ^ .}

.EndForm

//-------------------------------------------------------------------------

.LinkForm RNALD_MBP_01 Prototype Is RNALD_MBP
.Group 'Краткие'
.NameInList 'Краткая ведомость наличия драгметаллов'
.declare
#include FeeSigners.vih
.endDeclare
.Defo Landscape
.p 50
.Var
  iExcelFormat : ExcelFormat;
  iFeeSigners : FeeSigners;
  i, lSign : longint;
  FIOs, Post : array [1..2] of string;
.endvar
.begin
 lSign := 0;

 for (i := 1; i <= Count(FIOs); i++)
 {
   FIOs[i] := '';
   Post[i] := '';
 }

 iFeeSigners.InitFeeSigners(cgReport_MBP);
 iFeeSigners.FindFeeSignersByNRec(cSigners);

 if (iFeeSigners.FeeSignersIsValid)
   if (iFeeSigners.GetSignerFirst)
     do
     {
       lSign++;
       FIOs[lSign] := iFeeSigners.GetSignerFIO(1);
       Post[lSign] := if (iFeeSigners.GetSignerRole <> '', iFeeSigners.GetSignerRole, iFeeSigners.GetSignerPosition(1));
     }
     while (iFeeSigners.GetSignerNext);
end.
.Fields
  CommonFormHeader
  Place DateToStr(dFor, 'DD/MM/YYYY') Grouping
.EndFields
 Р ^

       БКраткая Б ведомость наличия драгоценных металлов в спецоснастке  Б^ Б на дату  Б^ Б

 Группировка:  Б^ Б
 Установленные фильтры:
.{ cirDFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
    Б^ Б
.}

.Fields
  DragName
.EndFields
──────────────────────────────────────────────────┬.{.?nlS1;─────────────────────.}
                                                  │       Содержание драгметаллов
                   Наименование                   ├.{.?nlS2;────────────────────┬.}
                                                  │.{.?nlS3;@~@@@@@@@@@@@@@@@@@@│.}
──────────────────────────────────────────────────┴.{.?nlS4;────────────────────┴.}
.{ cirDCom CheckEnter
.{ cirDGrp CheckEnter
.Fields
  GrpName : 'T:-'
  iExcelFormat.DoubleToStrFormatNotNul(GrpDragVal, SumFormat)
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б .{.?dnlGrp;&&&&&&&&&&&&&&&&&&&& .}
.}
.{ cirDOper CheckEnter
 .{.?dnlOp; .}
.}
.{ cirDItog CheckEnter
.Fields
  ItogName : 'T:-'
  iExcelFormat.DoubleToStrFormatNotNul(ItogDragVal, SumFormat)
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ .{.?dnlItog;&&&&&&&&&&&&&&&&&&&& .} Б
.}
.}

───────────────────────────────────────────────────.{.?nlS5;─────────────────────.}
.Fields
  iExcelFormat.DoubleToStrFormatNotNul(TotDragVal, SumFormat)
.EndFields
 БИтого:                                             .{.?dnlTot;&&&&&&&&&&&&&&&&&&&& .} Б
.{?Internal;(lSign > 0);

.}
.begin
 i := 0;
end.
.{While (i < lSign)
.begin
  i++;
end.
.fields
  Post[i]
  FIOs[i]
.endfields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.} Р
.EndForm

//-------------------------------------------------------------------------

.LinkForm RNALD_MBP_02 Prototype Is RNALD_MBP
.Group 'Подробные'
.NameInList 'Подробная ведомость наличия драгметаллов'
.declare
#include FeeSigners.vih
.endDeclare
.Defo Landscape
.p 50
.Var
  iExcelFormat : ExcelFormat;
  iFeeSigners : FeeSigners;
  i, lSign : longint;
  FIOs, Post : array [1..2] of string;
.endvar
.begin
 lSign := 0;

 for (i := 1; i <= Count(FIOs); i++)
 {
   FIOs[i] := '';
   Post[i] := '';
 }

 iFeeSigners.InitFeeSigners(cgReport_MBP);
 iFeeSigners.FindFeeSignersByNRec(cSigners);

 if (iFeeSigners.FeeSignersIsValid)
   if (iFeeSigners.GetSignerFirst)
     do
     {
       lSign++;
       FIOs[lSign] := iFeeSigners.GetSignerFIO(1);
       Post[lSign] := if (iFeeSigners.GetSignerRole <> '', iFeeSigners.GetSignerRole, iFeeSigners.GetSignerPosition(1));
     }
     while (iFeeSigners.GetSignerNext);
end.
.Fields
  CommonFormHeader
  Place DateToStr(dFor, 'DD/MM/YYYY') Grouping
.EndFields
 Р ^

       БПодробная Б ведомость наличия драгоценных металлов в спецоснастке  Б^ Б на дату  Б^ Б

 Группировка:  Б^ Б
 Установленные фильтры:
.{ cirDFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
    Б^ Б
.}

.Fields
  DragName
.EndFields
──────────────────────────────────────────────────┬──────────┬──────────┬.{.?nlS1;─────────────────────.}
                                                  │   Дата   │   Дата   │       Содержание драгметаллов
                    Наименование                  │  прихода │ ввода в  ├.{.?nlS2;────────────────────┬.}
                                                  │          │  экспл.  │.{.?nlS3;@~@@@@@@@@@@@@@@@@@@│.}
──────────────────────────────────────────────────┴──────────┴──────────┴.{.?nlS4;────────────────────┴.}
.{ cirDCom CheckEnter
.{ cirDGrp CheckEnter
.Fields
  GrpName : 'T:-'
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б .{.?dnlGrp; .}
.}
.{ cirDOper CheckEnter
.Fields
  InName  DateToStr(dIn, 'DD/MM/YYYY')
  if (LongInt(dExpl) > 0, DateToStr(dExpl, 'DD/MM/YYYY'), '')
  iExcelFormat.DoubleToStrFormatNotNul(OpDragVal, SumFormat)
.EndFields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ .{.?dnlOp;&&&&&&&&&&&&&&&&&&&& .}
.}
.{ cirDItog CheckEnter
.Fields
  ItogName : 'T:-'
  iExcelFormat.DoubleToStrFormatNotNul(ItogDragVal, SumFormat)
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ .{.?dnlItog;&&&&&&&&&&&&&&&&&&&& .} Б
.}
.}

─────────────────────────────────────────────────────────────────────────.{.?nlS5;─────────────────────.}
.Fields
  iExcelFormat.DoubleToStrFormatNotNul(TotDragVal, SumFormat)
.EndFields
 БИтого:                                                                   .{.?dnlTot;&&&&&&&&&&&&&&&&&&&& .} Б
.{?Internal;(lSign > 0);

.}
.begin
 i := 0;
end.
.{While (i < lSign)
.begin
  i++;
end.
.fields
  Post[i]
  FIOs[i]
.endfields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.} Р
.EndForm

//-------------------------------------------------------------------------
