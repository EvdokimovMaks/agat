//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Спецоснастка
// Ведомость наличия спецоснастки по возрасту запасов
//------------------------------------------------------------------------------

#doc
Печать аналитического отчета о наличии спецоснастки по возрасту запасов.<br>
#end
.Set Name = 'RNalO_MBP'
.Hide
.Fields
  dFor : Date
  What : String  Place : String
  Grouping : String
  cSigners : comp
.EndFields
  ^  ^  ^  ^  ^
.{ cirOFilt CheckEnter // Установленные фильтры
.Fields
  fltName : String : 'T:-'
.EndFields
  ^
.}

.Fields
  NRange : Longint
  rBeg : String
  rEnd : String
.EndFields

  ^
 .{.?noS1;.}
 .{.?noS2;.}
 .{.?noS3; ^ .}
 .{.?noS4; ^ .}
 .{.?noS5;.}

.{ cirOCom CheckEnter // Общий цикл вывода
.{ cirOGrp CheckEnter // Наименования группировки
.Fields
  GrpName : String : 'T:-'
.EndFields
  ^
.}
.{ cirOOper CheckEnter // Операции
.Fields
  InName : String  dIn : Date  Price : Double
  Kol : Double  Perc : Double  SExpl : String
  Stoim : Double   SumIzn : Double
.EndFields
  ^  ^ ^ ^ ^ ^
  Первоначальная стоимость  .{.?noS8; ^ .}
  Амортизация               .{.?noS9; ^ .}
.}
.{ cirOItog CheckEnter // Итоги
.Fields
  lBorder  : String : 'T:-'
  ItogName : String : 'T:-'
  ItogKol  : Double //ERP-632

  ItogSum : Double  ItogIznSum : Double
.EndFields

  ^ иерархический отступ

.{ cirOItogName CheckEnter

  ^ Строка "Итого по ..."
  ^ итого кол-во
.}

  Первоначальная стоимость  .{.?noS10; ^ .}
  Амортизация               .{.?noS11; ^ .}
.}
.}

.Fields
  TotSum : Double  TotIznSum : Double
.EndFields
  Первоначальная стоимость  .{.?noS12;  ^ .}
  Амортизация               .{.?noS14; ^ .}

.EndForm

//-------------------------------------------------------------------------

.LinkForm RNalO_MBP_01 Prototype Is RNalO_MBP
.Group 'Краткие'
.NameInList 'Краткая ведомость наличия по возрасту запасов'
.declare
#include FeeSigners.vih
.endDeclare
.Defo Landscape
.p 50
.var
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
  What  Place  DateToStr(dFor, 'DD/MM/YYYY')  Grouping
.EndFields
 Р ^

                 БКраткая Б ведомость наличия ^  Б^ Б по возрасту запасов на дату  Б^ Б

 Группировка:  Б^ Б
 Установленные фильтры:
.{ cirOFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
    Б^ Б
.}

.Fields
  Pad('', (16*NRange-8) shr 1)
  rBeg  rEnd
.EndFields
────────────────────────────────────────┬───────────────┬.{.?noS1;────────────────.}
                                        │               │^Возраст
                  Вид                   │  Общая сумма  ├.{.?noS2;───────────────┬.}
                                        │    на дату    │.{.?noS3; @~@@@@@@@@@@@ │.}
                                        │               │.{.?noS4; @~@@@@@@@@@@@ │.}
────────────────────────────────────────┴───────────────┴.{.?noS5;───────────────┴.}
.{ cirOCom CheckEnter
.{ cirOGrp CheckEnter
.Fields
  GrpName : 'T:-'
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{ cirOOper CheckEnter
  .{.?noS8; .}
  .{.?noS9; .}
.}
.{ cirOItog CheckEnter
.Fields
  ItogName : 'T:-'  ItogSum  ItogIznSum
  PadCh(LBorder, '─', 56+NRange*16) : 'T:-'
.EndFields
.{ cirOItogName CheckEnter
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
 Б               Первоначальная стоимость  .{.?noS10;&#'&&&&&&&&&.&& .} Б
 Б               Амортизация               .{.?noS11;&#'&&&&&&&&&.&& .} Б
^
.}
.}
.Fields
  PadCh('', '─', 56+NRange*16) : 'T:-'
  TotSum  TotIznSum
.EndFields
^
 БИтого: Б
 Б               Первоначальная стоимость  .{.?noS12;&#'&&&&&&&&&.&& .} Б
 Б               Амортизация               .{.?noS14;&#'&&&&&&&&&.&& .} Б
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

.LinkForm RNalO_MBP_02 Prototype Is RNalO_MBP
.Group 'Подробные'
.NameInList 'Подробная ведомость наличия по возрасту запасов'
.declare
#include FeeSigners.vih
.endDeclare
.Defo Landscape
.p 50
.var
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
  What  Place  DateToStr(dFor, 'DD/MM/YYYY')  Grouping
.EndFields
 Р ^

                 БПодробная Б ведомость наличия ^  Б^ Б по возрасту запасов на дату  Б^ Б

 Группировка:  Б^ Б
 Установленные фильтры:
.{ cirOFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
    Б^ Б
.}

.Fields
  Pad('', (16*NRange-8) shr 1)
  rBeg  rEnd
.endFields
─────────────────────────────────────────────┬───────────┬──────────┬────────────┬───────────────┬.{.?noS1;────────────────.}
                                             │           │          │            │               │^Возраст
                    Вид                      │   Дата    │Количество│    Цена    │  Общая сумма  ├.{.?noS2;───────────────┬.}
                                             │поступления│          │            │    на дату    │.{.?noS3; @~@@@@@@@@@@@ │.}
                                             │           │          │            │               │.{.?noS4; @~@@@@@@@@@@@ │.}
─────────────────────────────────────────────┴───────────┴──────────┴────────────┴───────────────┴.{.?noS5;───────────────┴.}
.{ cirOCom CheckEnter
.{ cirOGrp CheckEnter
.Fields
  GrpName : 'T:-'
.EndFields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{ cirOOper CheckEnter
.Fields
  InName  DateToStr(dIn, 'DD/MM/YYYY')+SExpl  Kol  Price  Stoim  SumIzn
.EndFields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @~@@@@@@@@@ &#'&&&.&&& &#'&&&&&&.&&
 Б                                                      Первоначальная стоимость    .{.?noS8;&#'&&&&&&&&&.&& .} Б
 Б                                                      Амортизация                 .{.?noS9;&#'&&&&&&&&&.&& .} Б

.}
.{ cirOItog CheckEnter
.Fields
  ItogName : 'T:-'
  ItogKol  //ERP-632
  ItogSum  ItogIznSum
  PadCh(LBorder, '─', 97+NRange*16) : 'T:-'
.EndFields
.{ cirOItogName CheckEnter
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &#'&&&.&&& Б
.}
 Б                                                      Первоначальная стоимость    .{.?noS10;&#'&&&&&&&&&.&& .} Б
 Б                                                      Амортизация                 .{.?noS11;&#'&&&&&&&&&.&& .} Б
^
.}
.}
.Fields
  PadCh('', '─', 97+NRange*16) : 'T:-'
  TotSum  TotIznSum
.EndFields
^
 БИтого: Б
 Б                                                      Первоначальная стоимость    .{.?noS12;&#'&&&&&&&&&.&& .} Б
 Б                                                      Амортизация                 .{.?noS14;&#'&&&&&&&&&.&& .} Б
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
