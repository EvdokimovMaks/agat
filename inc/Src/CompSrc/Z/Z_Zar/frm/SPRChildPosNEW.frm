//******************************************************************************
// �����⨪� 7.12 - 8.�
// �㤠ॢ �.�.
// ��ࠢ�� � ࠧ��� ��ᮡ�� �� ��⥩ ��� ���㡫��� ��������(������� �ଠ)
//******************************************************************************
.set name='SprChildPosNEW'
.hide
.fields
  DateFormir
  NumberSpr
  PlaceGive
  FioSotr
  Adress
  sChildFio sChildBorn
  DayBeginPeriod MonthBeginPeriod YearBeginPeriod
  DayEndPeriod  MonthEndPeriod YearEndPeriod
  sum1 sum2
  ItogSum
  mes Sum
  DayFormir MonthFormir YearFormir
  FIO_Sost Tel_Sost
  FioDirektor FioGlBuh
.endfields
.{ SprChildNewSotrCycle checkenter 
^ ^ ^ ^ ^
^ ^
^ ^ ^  ^ ^ ^ 
^ ^ ^
.{ SprChildMes checkenter
^   .{.?SprChildGod; ^ .}
.}
^ ^ ^
^ ^
^ ^
.}
.endform
