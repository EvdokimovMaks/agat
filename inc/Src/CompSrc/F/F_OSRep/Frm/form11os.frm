//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.70 - �᭮��� �।�⢠
// ����稥, �������� � ��⠢ �� (���). ��ଠ � 11
//------------------------------------------------------------------------------

#doc
����稥, �������� � ��⠢ �᭮���� �।�� (�����ਠ���� ��⨢��). ��ଠ � 11
#end

.Set Name='Form11'
.Hide
.var
  iEF : ExcelFormat;
.endvar
.Fields
CurrFormat : string
CurrFormatUkr : string
SumFormat     : string  //�ଠ� �뢮�� �㬬�
SumFormatWithSign  : string //�ଠ� �뢮�� �㬬� � ������

dFormStDate : date // ��砫쭠� ��� ���
dFormEndDate: date // ����筠� ��� ���

NRec_Org    // ��뫪� �� �࣠������
OrgName     //������������ �࣠����樨
IndexK       //������ �࣠����樨
State       //���㤠��⢮
City        //��த
OrgAddr     //���� �࣠����樨
OrgOKPO     //��� ����/����� �࣠����樨
OrgOKONH    //��� �����/����� �࣠����樨
OrgUNN      //��� ���/���

wPodrazdel_1 : word // ����� ���ࠧ����
DopParamNum
s1 : string  //������������
s2 : string  //���
s3  s4  s5  s6  s7  s8  s9  s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25

wPodrazdel_2 : word // ����� ���ࠧ����
DopParamNuma
sa : string
sb : string
sc  sd  se  sf  sg  sh  si  sj  sk  sl  sm  sn  so  sp  sr  ss  st  su  sv  sw  sx  sy  sz

wPodrazdel_3 : word // ����� ���ࠧ����
DopParamNuma2
sa2: string
sb2: string
sc2 sd2 se2 sf2 sg2 sh2 si2 sj2 sk2 sl2 sm2 sn2 so2 sp2 sr2 ss2 st2 su2 sv2 sw2 sx2 sy2 sz2

.EndFields
.{
^^^^^^
^^^^^^^^^
.{
^
^
^^^^^^^^^^^^^^^^^^^^^^^^^
.}
.{
^
^
^^^^^^^^^^^^^^^^^^^^^^^^^
.}
.{
^
^
^^^^^^^^^^^^^^^^^^^^^^^^^
.}
.}
.endForm


#include form11os_ru.frn
#include Form11Os_Bel.frn
#include form11os_kz.frn
