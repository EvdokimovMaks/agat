//******************************************************************************
// �����⨪� 7.12 - 8.�
// �㤠ॢ �.�.
// ��ࠢ�� � ��௫�� ��� ���㡫��� ��������(������� �ଠ)
//******************************************************************************
.set name='zarplSpravRB'
.hide
.fields
  Lschet	
  DateFormir
  Nomer
  PlaceGive
  FioSotr
  NameOrganization
  NameDolgn_1 NameDolgn_2
  Surname_Initials
  Year Jan Feb Mart April May June July Aug Sept Oct Nov Dec
  TotalSumma
  TotalSummaStr
  Day Month YearForm
  Boss
  MainBuh
.endfields
.{ ZarplSprRbCycle checkenter
^
^ ^ ^ ^ ^ ^ ^ ^
.{ ZarSprRbYearCycle checkenter
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
^ ^ ^ ^ ^ ^ ^
.}
.endform