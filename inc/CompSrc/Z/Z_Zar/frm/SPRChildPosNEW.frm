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
  mes Sum
  DayFormir MonthFormir YearFormir
  FioDirektor FioGlBuh
.endfields
.{ SprChildNewSotrCycle checkenter 
^ ^ ^ ^ ^
^ ^
^ ^ ^  ^ ^ ^ 
^ ^
.{ SprChildMes checkenter
^   .{.?SprChildGod; ^ .}
.}
^ ^ ^ ^ ^
.}
.endform
