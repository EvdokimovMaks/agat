//******************************************************************************
//                                                      (с) корпорация Галактика
// Галактика 7.12 - Заработная плата
//******************************************************************************

#doc
  Табель учета использования рабочего времени и расчета заработной платы
  (Типовая форма № Т-12(Казахстан), 4-я страница).
#end

.form T12FourthPage_Kaz
.fields
  DateR WorkDays Code_20_21
  Code_14 Code_15_16_29 Code_18 Code_17_20 Code_11_19 Code_31 Code_34 Code_35
  Code_36 Code_38 Code_39 Code_40 Code_41 Code_42 Code_43 Code_44 AllAbsences
  Code_37 Code_45 AllDays ExtraDays Code_05 Code_06 OverTimeAll AllHours
  Code_21_33
  SpisQuantity NotInSpisQuantity
  Code_12_13_27
  SumWorkDays SumCode_20_21
  SumCode_14 SumCode_15_16_29 SumCode_18 SumCode_17_20 SumCode_11_19 SumCode_31
  SumCode_34 SumCode_35 SumCode_36 SumCode_38 SumCode_39 SumCode_40 SumCode_41
  SumCode_42 SumCode_43 SumCode_44 SumAllAbsences SumCode_37 SumCode_45 SumAllDays
  SumExtraDays SumCode_05 SumCode_06 SumOverTimeAll SumAllHours
  SumCode_21_33
  SumSpisQuantity SumNotInSpisQuantity
  SumCode_12_13_27
.endfields
.{ T12_KazCycle Checkenter
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^
.}
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^
.endform