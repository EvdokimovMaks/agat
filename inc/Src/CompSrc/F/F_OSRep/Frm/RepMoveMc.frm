//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.85 - Основные средства
// Движение составляющих между объектами
// Внимание! Существует slk-отчет в формате Excel
//------------------------------------------------------------------------------

#doc
Движение составляющих между объектами
#end

.set name = 'RepMoveMc'
.hide
.fields
  //---------------------------------------------
  TiDk: word // 15 - ОС, 16 - НМА

  OsMcMovAll_nRec
  OsMcMovAll_DatOb : date

  KatMcCur_nRec
  KatMcCur_Name
  KatMcCur_Type
  OsMcCur_nRec
  OsMcCur_BarKod

  // ИЗ ОБЪЕКТА
  KatOsOld_NRec
  KatOsOld_Name
  KatOsOld_InNum
  // вышест.запись в OsMc
  KatMcOld_nRec
  KatMcOld_Name
  OsMcOld_nRec
  OsMcOld_BarKod

  // В ОБЪЕКТ
  KatOsNew_NRec
  KatOsNew_Name
  KatOsNew_InNum
  // вышест.запись в OsMc
  KatMcNew_nRec
  KatMcNew_Name
  OsMcNew_nRec
  OsMcNew_BarKod


  //---------------------------------------------
.endfields

.{
   TiDk ^

.{ RepMoveMc_Body CheckEnter

   OsMcMovAll_nRec  ^
   OsMcMovAll_DatOb ^

   KatMcCur_nRec    ^
   KatMcCur_Name    ^
   KatMcCur_Type    ^
   OsMcCur_nRec     ^
   OsMcCur_BarKod   ^

   // ИЗ ОБЪЕКТА
   KatOsOld_NRec    ^
   KatOsOld_Name    ^
   KatOsOld_InNum   ^
   // вышест.запись в OsMc
   KatMcOld_nRec    ^
   KatMcOld_Name    ^
   OsMcOld_nRec     ^
   OsMcOld_BarKod   ^

   // В ОБЪЕКТ
   KatOsNew_NRec    ^
   KatOsNew_Name    ^
   KatOsNew_InNum   ^
   // вышест.запись в OsMc
   KatMcNew_nRec    ^
   KatMcNew_Name    ^
   OsMcNew_nRec     ^
   OsMcNew_BarKod   ^

.}
.}

.endform


!#ifdef __YUKOS_OSSP___
//*******************************************************************
.linkform 'RepMoveMc01' prototype is 'RepMoveMc'
.nameinlist 'Движение составляющих между объектами'
.defo portrait
.fields
  CommonFormHeader
  //---------------------------------------------
  'Движение составляющих между объектами ' +
    if (TiDk = 15, 'основных средств',
     if(TiDk = 16, 'нематериальных активов', '???'))

  KatMcCur_Name
  KatMcCur_Type

  OsMcCur_BarKod
  if (longint(OsMcMovAll_DatOb)=0,'',DateToStr(longint(OsMcMovAll_DatOb), 'DD/MM/YYYY'))

  KatOsOld_Name
  KatOsOld_InNum

  KatOsNew_Name
  KatOsNew_InNum
  //---------------------------------------------
.endfields
 Р ^
 Б                               @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ С
 Р.{
.[H
                                                                                                                         лист @np@
──────────────────────────────┬───┬──────────────┬──────────┬───────────────────────────────────┬───────────────────────────────────
       Наименование МЦ        │Тип│Номенклатурный│   Дата   │            Из объекта             │             В объект
                              │   │     номер    │ операции ├────────────────────┬──────────────├────────────────────┬──────────────
                              │   │              │          │   Наименование     │ Инвентарный  │   Наименование     │ Инвентарный
                              │   │              │          │                    │    номер     │                    │    номер
──────────────────────────────┴───┴──────────────┴──────────┴────────────────────┴──────────────┴────────────────────┴──────────────
.]H
.{ RepMoveMc_Body CheckEnter
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@ @@@@@@@@@@@@@@ @~@@@@@@@@ @@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@
.}
.[F
───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.]F
.} Р
.endform

//*******************************************************************
!#end //__YUKOS_OSSP__
