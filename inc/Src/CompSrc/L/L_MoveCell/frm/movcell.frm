#doc
Каталог единиц подвижного состава для МЦ
#end
.AutoForm PrintCellVal_MC(var pMC:comp)
.NameInList 'Каталог единиц подвижного состава для МЦ'
.list 'Каталог единиц подвижного состава для МЦ'
.Create view PrintCellVal_main
as select
   CellVal.*
  ,MoveCell.*
  ,KatMC.*
From
   MoveCell
  ,CellVal  (Normal)
  ,KatMC
  ,KatEd
where
  ((
      word(0)           == CellVal.PrMC
  and pMC               == CellVal.cMC
  and CellVal.cMoveCell == MoveCell.nRec
  and pMC               == KatMC.nRec
  and KatMC.cEd         == KatED.NRec
  ))
;
.fields
  KatMC.Name
  KatMC.BarKod
  KatEd.Name
  MoveCell.Name
  MoveCell.Code
  CellVal.koef
.endfields

            Единицы подвижного состава для МЦ
.{table 'PrintCellVal_main.KatMC' by KatMC.Name
Наименование МЦ:      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Номенклатурный номер: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Учетная единица измерения: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
──────────────────────────────┬───────────────┬───────────────
 Наименование                 │ Код           │ Коэффициент
──────────────────────────────┴───────────────┴───────────────
.{table 'PrintCellVal_main.CellVal' by MoveCell.Name
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ &&&&&&&&.&&&&
.}
.endform
!--------------------------------------------------------------------

#doc
Каталог единиц подвижного состава для Шаблона МЦ
#end
.AutoForm PrintCellVal_MaskMC(var pMaskMC:comp)
.NameInList 'Каталог единиц подвижного состава для Шаблона МЦ'
.list 'Каталог единиц подвижного состава для Шаблона МЦ'
.Create view PrintCellVal_main
as select
   CellVal.*
  ,MoveCell.*
  ,MaskMC.*
From
   MoveCell
  ,CellVal  (Normal)
  ,MaskMC
  ,KatEd
where
  ((
      word(1)           == CellVal.PrMC
  and pMaskMC           == CellVal.cMC
  and CellVal.cMoveCell == MoveCell.nRec
  and pMaskMC           == MaskMC.nRec
  and MaskMC.cEd        == KatED.NRec

  ))
;
.fields
  MaskMC.Name
  MaskMC.BarKod
  KatEd.Name
  MoveCell.Name
  MoveCell.Code
  CellVal.koef
.endfields

         Единицы подвижного состава для Шаблона МЦ
.{table 'PrintCellVal_main.MaskMC' by MaskMC.Name
Наименование Шаблона МЦ: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Номенклатурный номер:    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Учетная единица измерения: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
──────────────────────────────┬───────────────┬───────────────
 Наименование                 │ Код           │ Коэффициент
──────────────────────────────┴───────────────┴───────────────
.{table 'PrintCellVal_main.CellVal' by MoveCell.Name
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ &&&&&&&&.&&&&
.}
.endform

#doc
Каталог единиц подвижного состава для услуг
#end
.AutoForm PrintCellVal_Usl(var pUsl:comp)
.NameInList 'Каталог единиц подвижного состава для услуг'
.list 'Каталог единиц подвижного состава для услуг'
.Create view PrintCellVal_main
as select
   CellVal.*
  ,MoveCell.*
  ,KatUsl.*
From
   MoveCell
  ,CellVal  (Normal)
  ,KatUsl
  ,KatEd
where
  ((
      word(0)           == CellVal.PrMC
  and pUsl              == CellVal.cMC
  and CellVal.cMoveCell == MoveCell.nRec
  and pUsl              == KatUsl.nRec
  and KatUsl.cEd        == KatED.NRec
  ))
;
.fields
  KatUsl.Name
  KatUsl.Kod
  KatEd.Name
  MoveCell.Name
  MoveCell.Code
  CellVal.koef
.endfields

            Единицы подвижного состава для Услуг
.{table 'PrintCellVal_main.KatUsl' by KatUsl.Name
Наименование услуги:  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Номенклатурный номер: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Учетная единица измерения: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
──────────────────────────────┬───────────────┬───────────────
 Наименование                 │ Код           │ Коэффициент
──────────────────────────────┴───────────────┴───────────────
.{table 'PrintCellVal_main.CellVal' by MoveCell.Name
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ &&&&&&&&.&&&&
.}
.endform
!--------------------------------------------------------------------
