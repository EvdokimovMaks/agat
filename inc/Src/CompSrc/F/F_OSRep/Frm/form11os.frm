//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.70 - Основные средства
// Наличие, движение и состав ОС (НМА). Форма № 11
//------------------------------------------------------------------------------

#doc
Наличие, движение и состав основных средств (нематериальных активов). Форма № 11
#end

.Set Name='Form11'
.Hide
.var
  iEF : ExcelFormat;
.endvar
.Fields
CurrFormat : string
CurrFormatUkr : string
SumFormat     : string  //формат вывода суммы
SumFormatWithSign  : string //формат вывода суммы со знаком

dFormStDate : date // начальная дата формы
dFormEndDate: date // конечная дата формы

NRec_Org    // ссылка на организацию
OrgName     //Наименование организации
IndexK       //Индекс организации
State       //Государство
City        //Город
OrgAddr     //адрес организации
OrgOKPO     //Код ОКПО/ОКЮЛП организации
OrgOKONH    //Код ОКОНХ/ОКВЭД организации
OrgUNN      //код УНП/УНН

wPodrazdel_1 : word // номер подраздела
DopParamNum
s1 : string  //наименование
s2 : string  //код
s3  s4  s5  s6  s7  s8  s9  s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25

wPodrazdel_2 : word // номер подраздела
DopParamNuma
sa : string
sb : string
sc  sd  se  sf  sg  sh  si  sj  sk  sl  sm  sn  so  sp  sr  ss  st  su  sv  sw  sx  sy  sz

wPodrazdel_3 : word // номер подраздела
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
