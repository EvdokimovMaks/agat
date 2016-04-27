!  ╔═════════════════════════════════════════════════════════════════════╗
!  ║    А О   "Н О В Ы Й   А Т Л А Н Т",    Н Т О  "T O P   S O F T"     ║
!  ║           Проект "БИЗНЕС-КАДРЫ" (с) 1996, 1997                      ║
!  ║      Версия : 5.0                                                   ║
!  ║      Разработал:  Московских А.М.                                   ║
!  ║      Назначение:  Выходные формы для группировочных отчетов         ║
!  ║      Параметры:                                                     ║
!  ║      Изменения:                                                     ║
!  ╚═════════════════════════════════════════════════════════════════════╝
/* Изменения Герасимовича А.А. (BK):
    19.01.2000: [+] Добавлено поле Appointments.TaxRate
                [*] В присоединенной форме "Пофамильный список с должностями"
                    добавлен вывод данного столбца
    27.01.2000: [+] Кроме наименования образования теперь выводится и его код
*/


#doc
Выходные формы для группировочных отчетов
#end
.form staff_gr
.Fields
  RepTytle
  dFromDate dToDate
  FiltrName FiltrCode FiltrString
  Header1 Header2 Header3
!--- Create table Persons "Физические лица"   // [2]
  DepName TabNmb InvalidGrp PensionDate DisDate FIO
  BornDate BornAddr Sex
#ifNdef Gal9_1
  : char
#end
  Nationality
  PasspRusSer PasspRusNmb PasspRusGivenBy PasspRusGivenDate
  LiveAddr
  EducationSysCode EducationName AppDate

!--- Create table Appointments "Назначения и перемещения"-основное // [10]
  PostL PostCode CategoryL EmpCategoryL EmpCategoryKod:comp TaxRateL

!--- Create table Education "Сведения об образовании"  // [7]
  UnivName UnivFromDate UnivToDate Speciality

!--- Create table ServLen "Сведения о стаже" // [15]
  SLYearsC:word SLMonthsC:word SLDaysC:word     // непрерывный
  StajC
  SLYearsT:word SLMonthsT:word SLDaysT:word     // общий
  StajT
  SLYearsE:word SLMonthsE:word SLDaysE:word     // на данном предприятии
  StajE

!--- Create table Communications "Коммуникации"  // [5]
  Addr

  Footer3 Footer2 Footer1
.EndFields
.HIDE
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 За период с @@@@@@@@@@ по @@@@@@@@@@
.{staff_gr_CycleFiltr  CheckEnter
 ^: ^ ^
.}
 --------------------------------------------------------------------------------
.{staff_gr_Ctrl1  CheckEnter
   заголовок 1        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{staff_gr_Ctrl2  CheckEnter
   заголовок 2        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{staff_gr_Ctrl3  CheckEnter
   заголовок 3        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{staff_gr_Persons  CheckEnter

              Таблица "Физические лица"
 Подразделение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Табельный номер: @@@@@@@@@@@@@@@@@@@
 Группа инвалидности:  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Год оформления пенсии: @@@@@@@@@@
 Дата увольнения: @@@@@@@@@@
 ФИО: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Дата рождения: @@@@@@@@@@
 Место рождения: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Пол: @@@
 Национальность: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
            Национальный паспорт
 Серия: @@@@@@@@@@@@@@@@@@@@@@
 Номер: @@@@@@@@@@@@@@@@@@@@@@
 Выдан: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Дата выдачи: @@@@@@@@@@

 Домашний адрес: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Код образования: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Образование: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Дата приема на работу: @@@@@@@@@@

              Таблица "Назначения и перемещения" - основное место работы
 Профессия, должность: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Код должности       : @@@@@@@@@@@@@@@
 Разряд: @@@@
 Категория: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   Код категории ^
 Оклад/ставка: &&&&&&&&&&&&&&&.&&&

              Таблица "Сведения об образовании"
 Наименование учебного заведения: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Дата поступления: @@@@@@@@@@
 Дата окончания: @@@@@@@@@@
 Специальность по диплому: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

              Таблица "Сведения о стаже"
          непрерывный
 Продолжительность стажа, полных лет: @@@  месяцев:@@@  дней:@@@
 ^
          общий
 Продолжительность стажа, полных лет: @@@  месяцев:@@@  дней:@@@
 ^
          на данном предприятии, для выслуги
 Продолжительность стажа, полных лет: @@@  месяцев:@@@  дней:@@@
 ^

              Таблица "Коммуникации"
 Номер телефона: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
================================================================

.}
 Итог3: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
 Итог2: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
 Итог1: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.endform


.LINKFORM "Национальный состав работающих" PROTOTYPE IS staff_gr
.group "Национальный состав работающих"
.p 60
!.o 15
.Var iNmb : integer
     sNat : string
     iTot : integer
     not_first_page : boolean
.EndVar
.Fields
  RepTytle
  dToDate
  sNat iNmb iTot
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
                           стр. @NP@
 ┌─────────────────────┬────────────┐
 │   Национальность    │ количество │
 ├─────────────────────┼────────────┤
.}
.]h
.Begin
     not_first_page := false;
 End.
!   НАЦИОНАЛЬНЫЙ СОСТАВ РАБОТАЮЩИХ
@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
         на @@@@@@@@@@
.Begin
     not_first_page := true;
 End.
.{staff_gr_CycleFiltr  CheckEnter
.}
.Begin
  iTot := 0;
 End.
 ┌─────────────────────┬────────────┐
 │   Национальность    │ количество │
 ├─────────────────────┼────────────┤
.{staff_gr_Ctrl1  CheckEnter
.Begin
  iNmb := 0;
  sNat := Nationality;
 End.
.{staff_gr_Ctrl2  CheckEnter
.{staff_gr_Ctrl3  CheckEnter
.{staff_gr_Persons  CheckEnter
.Begin
  iNmb := iNmb + 1;
 End.
.}
.}
.}
.{?internal;trim(sNat)<>'ОБОБЩЕНИЕ'
 │                     │            │
 │ @@@@@@@@@@@@@@@@@@@ │  &&&&&     │
.}
.Begin
  iTot := iTot + iNmb;
 End.
.}
 └─────────────────────┴────────────┘
     ВСЕГО                &&&&&
.endform


.LINKFORM "Национальный состав работающих - графики" PROTOTYPE IS staff_gr
.group "Национальный состав работающих - графики"
.Var iNmb : integer
     sNat : string
     not_first_page : boolean
.EndVar
.Fields
  dToDate
  iNmb sNat
.EndFields
.GRAF
GRAPHREPORT {
Query "Вид графика" {
  MyGraphType  GraphType  "Тип графика" "Pie";
  MyGraphDim   GraphDim   "Трехмерные эффекты" "2D";
}
PAGE {
  GRAPH as MyGraphType as MyGraphDim {
    UPTITLE "НАЦИОНАЛЬНЫЙ СОСТАВ РАБОТАЮЩИХ на @@@@@@@@@@";
    DATA  {
.{staff_gr_CycleFiltr  CheckEnter
.}
.{staff_gr_Ctrl1  CheckEnter
.Begin
  iNmb := 0;
  if (Length(Nationality) <> 0)
    sNat := Nationality;
  else
    sNat := 'не указано';
 End.
.{staff_gr_Ctrl2  CheckEnter
.{staff_gr_Ctrl3  CheckEnter
.{staff_gr_Persons  CheckEnter
.Begin
  iNmb := iNmb + 1;
 End.
.}
.}
.}
.{?internal;trim(sNat)<>'ОБОБЩЕНИЕ'
 ^, "^";
.}
.}
          } // Data
    SERIE {}
  }  }
} //GRAPHREPORT
.endform


.LINKFORM "Справка о наличии работающих" PROTOTYPE IS staff_gr
.group "Справка о наличии работающих"
.p 60
!.o 15
.Var iNmb : integer
     sNat : string
     iTot : integer
     not_first_page : boolean
.EndVar
.Fields
  RepTytle
  dToDate
  sNat iNmb iTot
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
                           стр. @NP@
 ┌─────────────────────┬────────────┐
 │   Профессия         │ количество │
 ├─────────────────────┼────────────┤
.}
.]h
.Begin
     not_first_page := false;
 End.
!   СПРАВКА О НАЛИЧИИ РАБОТАЮЩИХ
@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
         на @@@@@@@@@@
.Begin
     not_first_page := true;
 End.
.{staff_gr_CycleFiltr  CheckEnter
.}
.Begin
  iTot := 0;
 End.
 ┌─────────────────────┬────────────┐
 │   Профессия         │ количество │
 ├─────────────────────┼────────────┤
.{staff_gr_Ctrl1  CheckEnter
.Begin
  iNmb := 0;
  sNat := Header1;
 End.
.{staff_gr_Ctrl2  CheckEnter
.{staff_gr_Ctrl3  CheckEnter
.{staff_gr_Persons  CheckEnter
.Begin
  iNmb := iNmb + 1;
 End.
.}
.}
.}
 │                     │            │
 │ @@@@@@@@@@@@@@@@@@@ │  &&&&&     │
.Begin
  iTot := iTot + iNmb;
 End.
.}
 └─────────────────────┴────────────┘
     ВСЕГО                &&&&&
.endform
.LINKFORM "Справка о наличии работающих - графики" PROTOTYPE IS staff_gr
.group "Справка о наличии работающих - графики"
.Var iNmb : integer
     sNat : string
.EndVar
.Fields
  dToDate
  iNmb sNat
.EndFields
.GRAF
GRAPHREPORT {
Query "Вид графика" {
  MyGraphType  GraphType  "Тип графика" "Pie";
  MyGraphDim   GraphDim   "Трехмерные эффекты" "2D";
}
PAGE {
  GRAPH as MyGraphType as MyGraphDim {
    UPTITLE "СПРАВКА О НАЛИЧИИ РАБОТАЮЩИХ на @@@@@@@@@@";
    DATA  {
.{staff_gr_CycleFiltr  CheckEnter
.}
.{staff_gr_Ctrl1  CheckEnter
.Begin
  iNmb := 0;
  if (Length(PostL) <> 0)
    sNat := Header1;
  else
    sNat := 'не указано';
 End.
.{staff_gr_Ctrl2  CheckEnter
.{staff_gr_Ctrl3  CheckEnter
.{staff_gr_Persons  CheckEnter
.Begin
  iNmb := iNmb + 1;
 End.
.}
.}
.}
 ^, "^";
.}
          } // Data
    SERIE {}
  }  }
} //GRAPHREPORT
.endform
.LINKFORM "Справка по категориям работников" PROTOTYPE IS staff_gr
.group "Справка по категориям работников"
.DEFO LANDSCAPE
.p 41
!.o 3
.Var iNmb : integer
     sDep : string
     iMan    : integer
     iWorman : integer
     iAdmin  : integer
     iSpec   : integer
     iClerk  : integer
     iWork   : integer
     iTotal  : integer
     iManT    : integer
     iWormanT : integer
     iAdminT  : integer
     iSpecT   : integer
     iClerkT  : integer
     iWorkT   : integer
     iTotalT  : integer
     sKateg   : comp
     sTmp    : string
     not_first_page : boolean
     Admin_Marker: longint
     Spec_Marker : longint
     Clerk_Marker: longint
     Work_Marker : longint
     IndexNo     : longint
.EndVar
.Fields
  RepTytle
  dToDate
  iNmb sDep iTotal  iAdmin  iSpec  iClerk  iWork  iWorman  iMan
            iTotalT iAdminT iSpecT iClerkT iWorkT iWormanT iManT
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
                                                                                            стр. @NP@
 ┌────────────────────────────────────────────────────────────────────────────────────────────────────┐
 │ N п/п     подразделение        всего   руководители специалисты служащие рабочие   женщины мужчины │
 └────────────────────────────────────────────────────────────────────────────────────────────────────┘
.}
.]h
.Begin
Admin_Marker := InitMarker('Unlo4grp_Admin_Marker', 8, 10, 1);
Spec_Marker  := InitMarker('Unlo4grp_Spec_Marker', 8, 10, 1);
Clerk_Marker := InitMarker('Unlo4grp_Clerk_Marker', 8, 10, 1);
Work_Marker  := InitMarker('Unlo4grp_Work_Marker', 8, 10, 1);
     not_first_page := false;
 End.
!                              СПРАВКА ПО КАТЕГОРИЯМ РАБОТНИКОВ ПРЕДПРИЯТИЯ
                            @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                               на @@@@@@@@@@
.Begin
     not_first_page := true;
 End.
.{staff_gr_CycleFiltr  CheckEnter
.}
.Begin
     iNmb    := 0;
     iMan    := 0;
     iWorman := 0;
     iAdmin  := 0;
     iSpec   := 0;
     iClerk  := 0;
     iWork   := 0;
     iTotal  := 0;
     iManT    := 0;
     iWormanT := 0;
     iAdminT  := 0;
     iSpecT   := 0;
     iClerkT  := 0;
     iWorkT   := 0;
     iTotalT  := 0;
 End.
 ┌────────────────────────────────────────────────────────────────────────────────────────────────────┐
 │ N п/п     подразделение        всего   руководители специалисты служащие рабочие   женщины мужчины │
 └────────────────────────────────────────────────────────────────────────────────────────────────────┘
.{staff_gr_Ctrl1  CheckEnter
.Begin
  iNmb := iNmb + 1;
  sDep := DepName;
  iMan    := 0;
  iWorman := 0;
  iAdmin  := 0;
  iSpec   := 0;
  iClerk  := 0;
  iWork   := 0;
  iTotal  := 0;
 End.
.{staff_gr_Ctrl2  CheckEnter
.{staff_gr_Ctrl3  CheckEnter
.{staff_gr_Persons  CheckEnter
.Begin
  iTotal := iTotal + 1;
  sTmp := UpCase(Sex);
  if (sTmp = 'М') then
     iMan := iMan + 1;
  else
    begin
    if (sTmp = 'Ж') then
       iWorman := iWorman + 1;
  end;
  sKateg := EmpCategoryKod;

  if SearchMarker(Admin_Marker, sKateg, IndexNo) then
     iAdmin  := iAdmin + 1;
  else
    begin
    if SearchMarker(Spec_Marker, sKateg, IndexNo) then
       iSpec   := iSpec + 1;
    else
      begin
      if SearchMarker(Clerk_Marker, sKateg, IndexNo) then
         iClerk  := iClerk + 1;
      else
        begin
        if SearchMarker(Work_Marker, sKateg, IndexNo) then
           iWork   := iWork + 1;
      end;
    end;
  end;
 End.
.}
.}
.}
.{?internal;trim(DepName) <> 'ОБОБЩЕНИЕ'
   &&&&&   @@@@@@@@@@@@@@@@@@@@   &&&&&      &&&&&        &&&&&      &&&&&   &&&&&     &&&&&   &&&&&
.}
.Begin
     iTotalT  := iTotalT  + iTotal;
     iAdminT  := iAdminT  + iAdmin;
     iSpecT   := iSpecT   + iSpec;
     iClerkT  := iClerkT  + iClerk;
     iWorkT   := iWorkT   + iWork;
     iWormanT := iWormanT + iWorman;
     iManT    := iManT    + iMan;
 End.
.}
 ──────────────────────────────────────────────────────────────────────────────────────────────────────
           ВСЕГО                  &&&&&      &&&&&        &&&&&      &&&&&   &&&&&     &&&&&   &&&&&
.endform
.LINKFORM "Справка по качественному составу работников" PROTOTYPE IS staff_gr
.group "Справка по качественному составу работников"
.DEFO LANDSCAPE
.p 41
.Var iNmb : integer
     sDep : string
     wAge     : word
     wRepYear : word
     iTotal  : integer
     iAge30  : integer
     iAge40  : integer
     iAge50  : integer
     iAge60  : integer
     iAge61  : integer
     iEdHi   : integer
     iEdSS   : integer
     iEdSO   : integer
     iStag01 : integer
     iStag05 : integer
     iStag10 : integer
     iStag20 : integer
     iStag25 : integer
     iStag26 : integer
     iTotalT  : integer
     iAge30T  : integer
     iAge40T  : integer
     iAge50T  : integer
     iAge60T  : integer
     iAge61T  : integer
     iEdHiT   : integer
     iEdSST   : integer
     iEdSOT   : integer
     iStag01T : integer
     iStag05T : integer
     iStag10T : integer
     iStag20T : integer
     iStag25T : integer
     iStag26T : integer
     not_first_page : boolean
.EndVar
.Fields
  RepTytle
  dToDate
  iNmb sDep
  iTotal  iAge30  iAge40  iAge50  iAge60  iAge61  iEdHi  iEdSS  iEdSO
  iStag01  iStag05  iStag10  iStag20  iStag25  iStag26
  iTotalT iAge30T iAge40T iAge50T iAge60T iAge61T iEdHiT iEdSST iEdSOT
  iStag01T iStag05T iStag10T iStag20T iStag25T iStag26T
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
                                                                                                              стр. @NP@
┌─────┬──────────────────────┬───────┬───────────────────────────────┬─────────────────────────┬─────────────────────────────────────┐
│  N  │                      │       │     по возрасту               │     по образованию      │           по стажу работы           │
│ п/п │   подразделение      │ всего │ до 30 31-40 41-50 51-60  > 60 │ высшее ср.проф. ср.общ. │ до 1   1-4   5-9  10-19 20-25  >25  │
├─────┼──────────────────────┼───────┼───────────────────────────────┼─────────────────────────┼─────────────────────────────────────┤
.}
.]h
.Begin
     not_first_page := false;
 End.
!                         СПРАВКА ПО КАЧЕСТВЕННОМУ СОСТАВУ РАБОТНИКОВ ПРЕДПРИЯТИЯ
                         @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                               на @@@@@@@@@@
.Begin
     not_first_page := true;
 End.
.{staff_gr_CycleFiltr  CheckEnter
.}
.Begin
     iNmb    := 0;
     iTotalT  := 0;
     iAge30T  := 0;
     iAge40T  := 0;
     iAge50T  := 0;
     iAge60T  := 0;
     iAge61T  := 0;
     iEdHiT   := 0;
     iEdSST   := 0;
     iEdSOT   := 0;
     iStag01T := 0;
     iStag05T := 0;
     iStag10T := 0;
     iStag20T := 0;
     iStag25T := 0;
     iStag26T := 0;
 End.
┌─────┬──────────────────────┬───────┬───────────────────────────────┬─────────────────────────┬─────────────────────────────────────┐
│  N  │                      │       │     по возрасту               │     по образованию      │    по общему стажу работы           │
│ п/п │   подразделение      │ всего │ до 30 31-40 41-50 51-60  > 60 │ высшее ср.проф. ср.общ. │ до 1   1-4   5-9  10-19 20-25  >25  │
├─────┼──────────────────────┼───────┼───────────────────────────────┼─────────────────────────┼─────────────────────────────────────┤
.{staff_gr_Ctrl1  CheckEnter
.Begin
  iNmb := iNmb + 1;
  sDep := DepName;
     iTotal  := 0;
     iAge30  := 0;
     iAge40  := 0;
     iAge50  := 0;
     iAge60  := 0;
     iAge61  := 0;
     iEdHi   := 0;
     iEdSS   := 0;
     iEdSO   := 0;
     iStag01 := 0;
     iStag05 := 0;
     iStag10 := 0;
     iStag20 := 0;
     iStag25 := 0;
     iStag26 := 0;
 End.
.{staff_gr_Ctrl2  CheckEnter
.{staff_gr_Ctrl3  CheckEnter
.{staff_gr_Persons  CheckEnter
.Begin
  iTotal := iTotal + 1;
  wAge := IntervalYears( StrToDate(BornDate,  'DD/MM/YYYY'),
                         StrToDate(dToDate, 'DD/MM/YYYY') );
  if (wAge < 31) then
    iAge30 := iAge30 + 1
  else if (wAge < 41) then
    iAge40 := iAge40 + 1
  else if (wAge < 51) then
    iAge50 := iAge50 + 1
  else if (wAge < 61) then
    iAge60 := iAge60 + 1
  else
    iAge61 := iAge61 + 1;
  if (Comp(EducationSysCode) = -98) then
     iEdHi := iEdHi + 1;
  if (Comp(EducationSysCode) = -97) then
     iEdSS := iEdSS + 1;
  if (Comp(EducationSysCode) = -94) then
     iEdSO := iEdSO + 1;
  wAge := SLYearsT;
  if (wAge < 1) then
    iStag01 := iStag01 + 1
  else if (wAge < 5) then
    iStag05 := iStag05 + 1
  else if (wAge < 11) then
    iStag10 := iStag10 + 1
  else if (wAge < 21) then
    iStag20 := iStag20 + 1
  else if (wAge < 26) then
    iStag25 := iStag25 + 1
  else
    iStag26 := iStag26 + 1;
 End.
.}
.}
.}
.{?internal;trim(DepName) <> 'ОБОБЩЕНИЕ'
│     │                      │       │                               │                         │                                     │
│ &&& │ @@@@@@@@@@@@@@@@@@@@ │ &&&&& │ &&&&& &&&&& &&&&& &&&&& &&&&& │  &&&&&   &&&&&   &&&&&  │ &&&&& &&&&& &&&&& &&&&& &&&&& &&&&& │
.}
.Begin
     iTotalT  := iTotalT  + iTotal;
     iAge30T  := iAge30T  + iAge30;
     iAge40T  := iAge40T  + iAge40;
     iAge50T  := iAge50T  + iAge50;
     iAge60T  := iAge60T  + iAge60;
     iAge61T  := iAge61T  + iAge61;
     iEdHiT   := iEdHiT   + iEdHi;
     iEdSST   := iEdSST   + iEdSS;
     iEdSOT   := iEdSOT   + iEdSO;
     iStag01T := iStag01T + iStag01;
     iStag05T := iStag05T + iStag05;
     iStag10T := iStag10T + iStag10;
     iStag20T := iStag20T + iStag20;
     iStag25T := iStag25T + iStag25;
     iStag26T := iStag26T + iStag26;
 End.
.}
└─────┴──────────────────────┴───────┴───────────────────────────────┴─────────────────────────┴─────────────────────────────────────┘
          ВСЕГО                &&&&&   &&&&& &&&&& &&&&& &&&&& &&&&&    &&&&&   &&&&&   &&&&&    &&&&& &&&&& &&&&& &&&&& &&&&& &&&&&
.endform
.LINKFORM "Национальный состав работающих подразделения" PROTOTYPE IS staff_gr
.group "Национальный состав работающих подразделения"
.p 60
!.o 15
.Var iNmb : integer
     sNat : string
     iTot : integer
     not_first_page : boolean
.EndVar
.Fields
  RepTytle
  dToDate
  FiltrString
  sNat iNmb iTot
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
                         стр. @NP@
 ┌─────────────────────┬────────────┐
 │   Национальность    │ количество │
 ├─────────────────────┼────────────┤
.}
.]h
.Begin
     not_first_page := false;
 End.
!   НАЦИОНАЛЬНЫЙ СОСТАВ РАБОТАЮЩИХ
@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
         на @@@@@@@@@@
.Begin
     not_first_page := true;
 End.
.{staff_gr_CycleFiltr  CheckEnter
 @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.Begin
  iTot := 0;
 End.
 ┌─────────────────────┬────────────┐
 │   Национальность    │ количество │
 ├─────────────────────┼────────────┤
.{staff_gr_Ctrl1  CheckEnter
.Begin
  iNmb := 0;
  sNat := Nationality;
 End.
.{staff_gr_Ctrl2  CheckEnter
.{staff_gr_Ctrl3  CheckEnter
.{staff_gr_Persons  CheckEnter
.Begin
  iNmb := iNmb + 1;
 End.
.}
.}
.}
.{?internal;trim(sNat)<>'ОБОБЩЕНИЕ'
 │                     │            │
 │ @@@@@@@@@@@@@@@@@@@ │  &&&&&     │
.}
.Begin
  iTot := iTot + iNmb;
 End.
.}
 └─────────────────────┴────────────┘
     ВСЕГО                &&&&&
.endform
.LINKFORM "Национальный состав подразделения - графики" PROTOTYPE IS staff_gr
.group "Национальный состав подразделения - графики"
.Var iNmb : integer
     sNat : string
     sFltrVal : string
.EndVar
.Fields
  dToDate
  sFltrVal
  iNmb sNat
.EndFields
.GRAF
GRAPHREPORT {
Query "Вид графика" {
  MyGraphType  GraphType  "Тип графика" "Pie";
  MyGraphDim   GraphDim   "Трехмерные эффекты" "2D";
}
PAGE {
  GRAPH as MyGraphType as MyGraphDim {
.Begin
   sFltrVal := '';
 End.
.{staff_gr_CycleFiltr  CheckEnter
.Begin
   if (Trim(FiltrCode) = '=')
     sFltrVal := FiltrString;
 End.
.}
    UPTITLE "НАЦИОНАЛЬНЫЙ СОСТАВ РАБОТАЮЩИХ на ^. ^.";
    DATA  {
.{staff_gr_Ctrl1  CheckEnter
.Begin
  iNmb := 0;
  if (Length(Nationality) <> 0)
    sNat := Nationality;
  else
    sNat := 'не указано';
 End.
.{staff_gr_Ctrl2  CheckEnter
.{staff_gr_Ctrl3  CheckEnter
.{staff_gr_Persons  CheckEnter
.Begin
  iNmb := iNmb + 1;
 End.
.}
.}
.}
.{?internal;trim(sNat)<>'ОБОБЩЕНИЕ'
 ^, "^";
.}
.}
          } // Data
    SERIE {}
  }  }
} //GRAPHREPORT
.endform
.LINKFORM "Пофамильные списки" PROTOTYPE IS staff_gr
.group "Пофамильные списки"
.p 60
!.o 6
.Var iNmb   : integer
     iTotal : integer
     sFiltrCode : string
     not_first_page : boolean
.EndVar
.Fields
  RepTytle dToDate
  FiltrName sFiltrCode FiltrString
  DepName iNmb TabNmb FIO iTotal
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
                                                     стр. @NP@
┌─────────────────────────────────────────────────────────────┐
│  N       Таб.          Фамилия Имя Отчество                 │
│ п/п     номер                                               │
└─────────────────────────────────────────────────────────────┘
.}
.]h

.Begin
     not_first_page := false;
 End.
 @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                          на @@@@@@@@@@

┌─────────────────────────────────────────────────────────────┐
│  N       Таб.          Фамилия Имя Отчество                 │
│ п/п     номер                                               │
└─────────────────────────────────────────────────────────────┘
.Begin
     not_first_page := true;
 End.
.{staff_gr_CycleFiltr  CheckEnter
.Begin
   if (FiltrCode = '= ')
     sFiltrCode := ':';
   else
     sFiltrCode := ' ' + FiltrCode;
 End.
 ^^ ^
.}
.Begin  iTotal := 0;  End.
.{staff_gr_Ctrl1  CheckEnter
.{?internal;trim(DepName) <> 'ОБОБЩЕНИЕ'
Подразделение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.Begin  iNmb := 0;  End.
.{staff_gr_Ctrl2  CheckEnter
.{staff_gr_Ctrl3  CheckEnter
.{staff_gr_Persons  CheckEnter
.Begin  iNmb := iNmb + 1;   End.
 &&&&   &&&&&&&&&   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.}
.Begin  iTotal := iTotal + iNmb;  End.
.}
.}
ВСЕГО:&&&&&&
.endform
.LINKFORM "Пофамильные списки подразделения" PROTOTYPE IS staff_gr
.group "Пофамильные списки подразделения"
.p 60
!.o 6
.Var iNmb   : integer
     sFiltrCode : string
     not_first_page : boolean
.EndVar
.Fields
  RepTytle dToDate
  FiltrName sFiltrCode FiltrString
  iNmb TabNmb FIO
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
                                                     стр. @NP@
┌─────────────────────────────────────────────────────────────┐
│  N       Таб.          Фамилия Имя Отчество                 │
│ п/п     номер                                               │
└─────────────────────────────────────────────────────────────┘
.}
.]h
.Begin
     not_first_page := false;
 End.
 @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                             на @@@@@@@@@@
.Begin
     not_first_page := true;
 End.
.{staff_gr_CycleFiltr  CheckEnter
.Begin
   if (FiltrCode = '= ')
     sFiltrCode := ':';
   else
     sFiltrCode := ' ' + FiltrCode;
 End.
 ^^ ^
.}
.{staff_gr_Ctrl1  CheckEnter
┌─────────────────────────────────────────────────────────────┐
│  N       Таб.          Фамилия Имя Отчество                 │
│ п/п     номер                                               │
└─────────────────────────────────────────────────────────────┘
.Begin  iNmb := 0;  End.
.{staff_gr_Ctrl2  CheckEnter
.{staff_gr_Ctrl3  CheckEnter
.{staff_gr_Persons  CheckEnter
.Begin  iNmb := iNmb + 1;   End.
 &&&&   &&&&&&&&&   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.}
.}
.}
.endform
.LINKFORM "Пофамильный список с должностями" PROTOTYPE IS staff_gr
.group "Пофамильный список с должностями"
.DEFO PORTRAIT
.p 60
!.o 4
.Var iNmb   : integer
     iTotal : integer
     not_first_page : boolean
.EndVar
.Fields
  RepTytle dToDate
  DepName iNmb TabNmb FIO PostL CategoryL EmpCategoryL TaxRateL iTotal
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
                                                                                                       стр. @NP@
┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│ N    Таб.      Фамилия Имя Отчество             Должность              Разряд    Категория            Оклад/   │
│п/п  номер                                                                                             ставка   │
└────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
.}
.]h
.Begin
     not_first_page := false;
 End.
  И@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                    на @@@@@@@@@@

┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│ N    Таб.      Фамилия Имя Отчество             Должность              Разряд    Категория            Оклад/   │
│п/п  номер                                                                                             ставка   │
└────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
.Begin
     not_first_page := true;
 End.
.{staff_gr_CycleFiltr  CheckEnter
.}
.Begin  iTotal := 0;  End.
.{staff_gr_Ctrl1  CheckEnter
.{?internal;trim(DepName) <> 'ОБОБЩЕНИЕ'
Подразделение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.Begin  iNmb := 0;  End.
.{staff_gr_Ctrl2  CheckEnter
.{staff_gr_Ctrl3  CheckEnter
.{staff_gr_Persons  CheckEnter
.Begin  iNmb := iNmb + 1;   End.
 &&& &&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&& @@@@@@@@@@@@@@@@@@@@@ &&&&&&&&.&&
.}
.}
.Begin  iTotal := iTotal + iNmb;  End.
.}
.}
ВСЕГО:&&&&&&
.endform
.LINKFORM "Список пенсионеров" PROTOTYPE IS staff_gr
.group "Список пенсионеров"
.p 60
!.o 6
.Var iNmb   : integer
     iTotal : integer
     not_first_page : boolean
.EndVar
.Fields
  RepTytle dToDate
  DepName iNmb TabNmb FIO PensionDate iTotal
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
                                                           стр. @NP@
┌───────────────────────────────────────────────────────────────────┐
│  N      Таб.         Фамилия Имя Отчество               Дата вых. │
│ п/п    номер                                            на пенсию │
└───────────────────────────────────────────────────────────────────┘
.}
.]h
.Begin
     not_first_page := false;
 End.
 @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                             на @@@@@@@@@@

┌───────────────────────────────────────────────────────────────────┐
│  N      Таб.         Фамилия Имя Отчество               Дата вых. │
│ п/п    номер                                            на пенсию │
└───────────────────────────────────────────────────────────────────┘
.Begin
     not_first_page := true;
 End.
.{staff_gr_CycleFiltr  CheckEnter
.}
.Begin  iTotal := 0;  End.
.{staff_gr_Ctrl1  CheckEnter
.{?internal;trim(DepName) <> 'ОБОБЩЕНИЕ'
Подразделение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.Begin  iNmb := 0;  End.
.{staff_gr_Ctrl2  CheckEnter
.{staff_gr_Ctrl3  CheckEnter
.{staff_gr_Persons  CheckEnter
.Begin  iNmb := iNmb + 1;   End.
 &&&&   &&&&&&&&   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@
.}
.}
.Begin  iTotal := iTotal + iNmb;  End.
.}
.}
ВСЕГО:&&&&&&
.endform
.LINKFORM "Список инвалидов" PROTOTYPE IS staff_gr
.group "Список инвалидов"
.p 60
!.o 6
.Var iNmb   : integer
     iTotal : integer
     not_first_page : boolean
.EndVar
.Fields
  RepTytle dToDate
  DepName iNmb TabNmb FIO InvalidGrp iTotal
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
                                                     стр. @NP@
┌─────────────────────────────────────────────────────────────┐
│  N      Таб.      Фамилия Имя Отчество          Группа      │
│ п/п    номер                                    инвалидности│
└─────────────────────────────────────────────────────────────┘
.}
.]h
.Begin
     not_first_page := false;
 End.
 @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                             на @@@@@@@@@@

┌─────────────────────────────────────────────────────────────┐
│  N      Таб.      Фамилия Имя Отчество          Группа      │
│ п/п    номер                                    инвалидности│
└─────────────────────────────────────────────────────────────┘
.Begin
     not_first_page := true;
 End.
.{staff_gr_CycleFiltr  CheckEnter
.}
.Begin  iTotal := 0;  End.
.{staff_gr_Ctrl1  CheckEnter
.{?internal;trim(DepName) <> 'ОБОБЩЕНИЕ'
 Подразделение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.Begin  iNmb := 0;  End.
.{staff_gr_Ctrl2  CheckEnter
.{staff_gr_Ctrl3  CheckEnter
.{staff_gr_Persons  CheckEnter
.Begin  iNmb := iNmb + 1;   End.
 &&&&   &&&&&&&   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@
.}
.}
.Begin  iTotal := iTotal + iNmb;  End.
.}
.}
ВСЕГО:&&&&&&
.endform
.LINKFORM "Список несовершеннолетних" PROTOTYPE IS staff_gr
.group "Список несовершеннолетних"
.p 60
!.o 6
.Var iNmb   : integer
     iTotal : integer
     not_first_page : boolean
.EndVar
.Fields
  RepTytle dToDate
  DepName iNmb TabNmb FIO BornDate iTotal
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
                                                  стр. @NP@
┌────────────────────────────────────────────────────────────┐
│  N      Таб.       Фамилия Имя Отчество             Дата   │
│ п/п    номер                                      рождения │
└────────────────────────────────────────────────────────────┘
.}
.]h
.Begin
     not_first_page := false;
 End.
 @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                         на @@@@@@@@@@

┌────────────────────────────────────────────────────────────┐
│  N      Таб.       Фамилия Имя Отчество             Дата   │
│ п/п    номер                                      рождения │
└────────────────────────────────────────────────────────────┘
.Begin
     not_first_page := true;
 End.
.{staff_gr_CycleFiltr  CheckEnter
.}
.Begin  iTotal := 0;  End.
.{staff_gr_Ctrl1  CheckEnter
.{?internal;trim(DepName) <> 'ОБОБЩЕНИЕ'
 Подразделение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.Begin  iNmb := 0;  End.
.{staff_gr_Ctrl2  CheckEnter
.{staff_gr_Ctrl3  CheckEnter
.{staff_gr_Persons  CheckEnter
.Begin  iNmb := iNmb + 1;   End.
 &&&&   &&&&&&&   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@
.}
.}
.Begin  iTotal := iTotal + iNmb;  End.
.}
.}
ВСЕГО:&&&&&&
.endform
.LINKFORM "Адреса и телефоны сотрудников" PROTOTYPE IS staff_gr
.group "Адреса и телефоны сотрудников"
.DEFO LANDSCAPE
.p 41
!.o 6
.Var iNmb   : integer
     iTotal : integer
     sPasTmp : string
     not_first_page : boolean
.EndVar
.Fields
  RepTytle if(String(dToDate)='ДД/ММ/ГГГГ', '', dToDate)
  DepName iNmb FIO if(String(BornDate)='ДД/ММ/ГГГГ', '', BornDate) BornAddr LiveAddr Addr sPasTmp iTotal
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
                                                                                                                              стр. @NP@
┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│  N     Фамилия Имя Отчество         Дата        Место рождения                 Домашний адрес         Телефон         Паспортные данные   │
│ п/п                               рождения                                                                                                │
└───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
.}
.]h
.Begin
     not_first_page := false;
 End.
  Р@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                     на @@@@@@@@@@

┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│  N     Фамилия Имя Отчество         Дата        Место рождения                 Домашний адрес         Телефон         Паспортные данные   │
│ п/п                               рождения                                                                                                │
└───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
.Begin
     not_first_page := true;
 End.
.{staff_gr_CycleFiltr  CheckEnter
.}
.Begin  iTotal := 0;  End.
.{staff_gr_Ctrl1  CheckEnter
.{?internal;trim(DepName) <> 'ОБОБЩЕНИЕ'
Подразделение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.Begin  iNmb := 0;  End.
.{staff_gr_Ctrl2  CheckEnter
.{staff_gr_Ctrl3  CheckEnter
.{staff_gr_Persons  CheckEnter
.Begin
  iNmb := iNmb + 1;
  sPasTmp := PasspRusSer;
  if (Length(PasspRusNmb) <> 0)
    sPasTmp := sPasTmp + ' N ' + PasspRusNmb;
  if (Length(PasspRusGivenBy)+Length(if(String(PasspRusGivenDate)='ДД/ММ/ГГГГ', '', PasspRusGivenDate)) > 0)
    sPasTmp := sPasTmp+' Выдан '+PasspRusGivenBy+' '+PasspRusGivenDate;
 End.

 &&&&  @@@@@@@@@@@@@@@@@@@@@@@@@@  @@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.}
.Begin  iTotal := iTotal + iNmb;  End.
.}
.}
ВСЕГО:&&&&&&
.endform
.LINKFORM "По общему стажу" PROTOTYPE IS staff_gr
.group "По общему стажу"
.Var
  iNmb   : integer
.EndVar
.Fields
  RepTytle dToDate
  DepName
  iNmb FIO StajT StajC StajE
.EndFields
@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                     по состоянию на @@@@@@@@@@

┌─────┬───────────────────────────────────┬──────────────────────────────┬──────────────────────────────┬──────────────────────────────┐
│  N  │     Фамилия Имя Отчество          │         Общий стаж           │       Непрерывный стаж       │   Стаж раб.на предприятии    │
│ п/п │                                   │                              │                              │                              │
├─────┼───────────────────────────────────┼──────────────────────────────┼──────────────────────────────┼──────────────────────────────┤
.{staff_gr_CycleFiltr  CheckEnter
.}
.{staff_gr_Ctrl1  CheckEnter
.{?internal;trim(DepName) <> 'ОБОБЩЕНИЕ'
│                                                                                                                                      │
│ @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                           │
│                                                                                                                                      │
.}
.Begin  iNmb := 0;  End.
.{staff_gr_Ctrl2  CheckEnter
.{staff_gr_Ctrl3  CheckEnter
.{staff_gr_Persons  CheckEnter
.Begin
  iNmb := iNmb + 1;
 End.
│     │                                   │                              │                              │                              │
│&&&& │ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ │ @@@@@@@@@@@@@@@@@@@@@@@@@@@@ │ @@@@@@@@@@@@@@@@@@@@@@@@@@@@ │ @@@@@@@@@@@@@@@@@@@@@@@@@@@@ │
.}
.}
.}
.}
└─────┴───────────────────────────────────┴──────────────────────────────┴──────────────────────────────┴──────────────────────────────┘
.endform
.LINKFORM "Проработавшие указанный срок" PROTOTYPE IS staff_gr
.group "Проработавшие указанный срок"
.Var
  iNmb   : integer
  iTotal : integer
  sParam : string
.EndVar
.Fields
  sParam dToDate
  DepName
  iNmb FIO PostL AppDate
  iTotal
.EndFields
.Begin  iTotal := 0;  End.
.{staff_gr_CycleFiltr  CheckEnter
.Begin
  if (FiltrName = 'Дата приема на работу')
    sParam := FiltrString;
 End.
.}
       СПИСОК СОТРУДНИКОВ, ПРОРАБОТАВШИХ НА ПРЕДПРИЯТИИ НЕ МЕНЕЕ ^ ЛЕТ
                          по состоянию на @@@@@@@@@@

┌─────┬──────────────────────────────────┬────────────────────────┬──────────┐
│  N  │     Фамилия Имя Отчество         │ Занимаемая должность   │ дата нач.│
│ п/п │                                  │                        │  работы  │
├─────┼──────────────────────────────────┼────────────────────────┼──────────┤
.{staff_gr_Ctrl1  CheckEnter
.{?internal;trim(DepName) <> 'ОБОБЩЕНИЕ'
│                                                                            │
│ @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ │
│                                                                            │
.}
.Begin  iNmb := 0;  End.
.{staff_gr_Ctrl2  CheckEnter
.{staff_gr_Ctrl3  CheckEnter
.{staff_gr_Persons  CheckEnter
.Begin
  iNmb := iNmb + 1;
 End.
│     │                                  │                        │          │
│&&&& │ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│ @@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@│
.}
.}
.Begin  iTotal := iTotal + iNmb;  End.
.}
.}
└─────┴──────────────────────────────────┴────────────────────────┴──────────┘
ВСЕГО:&&&&&& сотрудников
.endform
.LINKFORM "Пенсионеры предприятия 20 лет" PROTOTYPE IS staff_gr
.group "Пенсионеры предприятия 20 лет"
.Var iNmb   : integer
     iTotal : integer
     stLiveAddr  : string
.EndVar
.Fields
  RepTytle dToDate
  DepName
  iNmb FIO PostL AppDate stLiveAddr
  iTotal
.EndFields
 @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                          на @@@@@@@@@@

┌─────┬──────────────────────────┬────────────────────────┬──────────┬───────────────────────────┐
│  N  │  Фамилия Имя Отчество    │ Занимаемая должность   │ дата нач.│      Домашний адрес,      │
│ п/п │                          │                        │  работы  │         телефон           │
├─────┼──────────────────────────┼────────────────────────┼──────────┼───────────────────────────┤
.{staff_gr_CycleFiltr  CheckEnter
.}
.Begin  iTotal := 0;  End.
.{staff_gr_Ctrl1  CheckEnter
.{?internal;trim(DepName) <> 'ОБОБЩЕНИЕ'
│                                                                                                │
│ @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ │
│                                                                                                │
.}
.Begin  iNmb := 0;  End.
.{staff_gr_Ctrl2  CheckEnter
.{staff_gr_Ctrl3  CheckEnter
.{staff_gr_Persons  CheckEnter
.Begin
  iNmb := iNmb + 1;
 End.
.Begin
  stLiveAddr := LiveAddr;
  if (Length(Addr) > 0)
  { if (Length(stLiveAddr) > 0)
      stLiveAddr := stLiveAddr + ', тел.' + Addr;
    else
      stLiveAddr := 'тел.' + Addr;
  }
 End.
│     │                          │                        │          │                           │
│&&&& │ @@@@@@@@@@@@@@@@@@@@@@@@ │ @@@@@@@@@@@@@@@@@@@@@@ │@@@@@@@@@@│ @@@@@@@@@@@@@@@@@@@@@@@@@ │
.}
.}
.Begin  iTotal := iTotal + iNmb;  End.
.}
.}
└─────┴──────────────────────────┴────────────────────────┴──────────┴───────────────────────────┘

ВСЕГО:&&&&&& сотрудников
.endform
.LINKFORM "Руководящий состав предприятия" PROTOTYPE IS staff_gr
.group "Руководящий состав предприятия"
.Var iNmb   : integer
     iTotal : integer
.EndVar
.Fields
  RepTytle dToDate
  DepName
  iNmb FIO BornDate PostL EducationName
  iTotal
.EndFields
 @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                          на @@@@@@@@@@

┌─────┬────────────────────────┬──────────┬──────────────────────┬────────────────┐
│  N  │  Фамилия Имя Отчество  │   дата   │ Занимаемая должность │ Образование    │
│ п/п │                        │ рождения │                      │                │
├─────┼────────────────────────┼──────────┼──────────────────────┼────────────────┤
.{staff_gr_CycleFiltr  CheckEnter
.}
.Begin  iTotal := 0;  End.
.{staff_gr_Ctrl1  CheckEnter
.{?internal;trim(DepName) <> 'ОБОБЩЕНИЕ'
│                                                                                 │
│ @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ │
│                                                                                 │
.}
.Begin  iNmb := 0;  End.
.{staff_gr_Ctrl2  CheckEnter
.{staff_gr_Ctrl3  CheckEnter
.{staff_gr_Persons  CheckEnter
.Begin
  iNmb := iNmb + 1;
 End.
│     │                        │          │                      │                │
│&&&& │ @@@@@@@@@@@@@@@@@@@@@@ │@@@@@@@@@@│ @@@@@@@@@@@@@@@@@@@@ │ @@@@@@@@@@@@@@@│
.}
.}
.Begin  iTotal := iTotal + iNmb;  End.
.}
.}
└─────┴────────────────────────┴──────────┴──────────────────────┴────────────────┘

ВСЕГО:&&&&&& сотрудников
.endform
.LINKFORM "Список специалистов" PROTOTYPE IS staff_gr
.group "Список специалистов"
.Var iNmb   : integer
     iTotal : integer
.EndVar
.Fields
  RepTytle if(String(dToDate)='ДД/ММ/ГГГГ', '', dToDate)
  DepName
  iNmb FIO if(String(BornDate)='ДД/ММ/ГГГГ', '', BornDate) PostL UnivName
  if(String(UnivToDate)='ДД/ММ/ГГГГ', '', UnivToDate) Speciality
  iTotal
.EndFields
 @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                             на @@@@@@@@@@

┌─────┬────────────────────────┬──────────┬──────────────────────┬──────────────────────────┬──────────┬──────────────────────────────┐
│  N  │  Фамилия Имя Отчество  │   дата   │ Занимаемая должность │ Учебное заведение        │   дата   │ Специальность по образованию │
│ п/п │                        │ рождения │                      │                          │окончания │                              │
├─────┼────────────────────────┼──────────┼──────────────────────┼──────────────────────────┼──────────┼──────────────────────────────┤
.{staff_gr_CycleFiltr  CheckEnter
.}
.Begin  iTotal := 0;  End.
.{staff_gr_Ctrl1  CheckEnter
.{?internal;trim(DepName) <> 'ОБОБЩЕНИЕ'
│                                                                                                                                     │
│ @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ │
│                                                                                                                                     │
.}
.Begin  iNmb := 0;  End.
.{staff_gr_Ctrl2  CheckEnter
.{staff_gr_Ctrl3  CheckEnter
.{staff_gr_Persons  CheckEnter
.Begin
  iNmb := iNmb + 1;
 End.
│     │                        │          │                      │                          │          │                              │
│&&&& │ @@@@@@@@@@@@@@@@@@@@@@ │@@@@@@@@@@│ @@@@@@@@@@@@@@@@@@@@ │ @@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@│ @@@@@@@@@@@@@@@@@@@@@@@@@@@@ │
.}
.}
.Begin  iTotal := iTotal + iNmb;  End.
.}
.}
└─────┴────────────────────────┴──────────┴──────────────────────┴──────────────────────────┴──────────┴──────────────────────────────┘

ВСЕГО:&&&&&& сотрудников
.endform
.LINKFORM "Кандидат на звание Ветеран труда" PROTOTYPE IS staff_gr
.group "Кандидат на звание Ветеран труда"
.Var iNmb   : integer
     iTotal : integer
     stPasspAddr : string
.EndVar
.Fields
  RepTytle dToDate
  DepName
  iNmb FIO BornDate stPasspAddr SLYearsT SLMonthsT SLDaysT
  iTotal
.EndFields
@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                на @@@@@@@@@@

┌─────┬──────────────────────────┬──────────┬──────────────────────────┬─────────────┐
│  N  │  Фамилия Имя Отчество    │   дата   │      Домашний адрес,     │ Общий стаж  │
│ п/п │                          │ рождения │         телефон          │ лет мес дней│
├─────┼──────────────────────────┼──────────┼──────────────────────────┼─────────────┤
.{staff_gr_CycleFiltr  CheckEnter
.}
.Begin  iTotal := 0;  End.
.{staff_gr_Ctrl1  CheckEnter
.{?internal;trim(DepName) <> 'ОБОБЩЕНИЕ'
│                                                                                    │
│ @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ │
│                                                                                    │
.}
.Begin  iNmb := 0;  End.
.{staff_gr_Ctrl2  CheckEnter
.{staff_gr_Ctrl3  CheckEnter
.{staff_gr_Persons  CheckEnter
.Begin
  iNmb := iNmb + 1;
  stPasspAddr := LiveAddr;
  if (Length(Addr) > 0)
  { if (Length(stPasspAddr) > 0)
      stPasspAddr := stPasspAddr + ', тел.' + Addr;
    else
      stPasspAddr := 'тел.' + Addr;
  }
 End.
│     │                          │          │                          │             │
│&&&& │ @@@@@@@@@@@@@@@@@@@@@@@@ │@@@@@@@@@@│ @@@@@@@@@@@@@@@@@@@@@@@@ │ &&& &&& &&& │
.}
.}
.Begin  iTotal := iTotal + iNmb;  End.
.}
.}
└─────┴──────────────────────────┴──────────┴──────────────────────────┴─────────────┘

ВСЕГО:&&&&&& сотрудников
.endform
.LINKFORM "Для расчета 13 зарплаты" PROTOTYPE IS staff_gr
.group "Для расчета 13 зарплаты"
.Var
  iNmb   : integer
  iTotal : integer
.EndVar
.Fields
  RepTytle dToDate
  DepName
  iNmb TabNmb FIO PostL SLYearsE
  iTotal
.EndFields
@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                           по состоянию на @@@@@@@@@@

┌─────┬─────────┬─────────────────────────────┬─────────────────┬─────────────┐
│  N  │   Таб.  │     Фамилия Имя Отчество    │  Занимаемая     │ Стаж раб.на │
│ п/п │  номер  │                             │  должность      │ предприятии,│
│     │         │                             │                 │    лет      │
├─────┼─────────┼─────────────────────────────┼─────────────────┼─────────────┤
.{staff_gr_CycleFiltr  CheckEnter
.}
.Begin  iTotal := 0;  End.
.{staff_gr_Ctrl1  CheckEnter
.{?internal;trim(DepName) <> 'ОБОБЩЕНИЕ'
│                                                                             │
│ @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ │
│                                                                             │
.}
.Begin  iNmb := 0;  End.
.{staff_gr_Ctrl2  CheckEnter
.{staff_gr_Ctrl3  CheckEnter
.{staff_gr_Persons  CheckEnter
.Begin
  iNmb := iNmb + 1;
 End.
│     │         │                             │                 │             │
│&&&& │ &&&&&&& │ @@@@@@@@@@@@@@@@@@@@@@@@@@@ │ @@@@@@@@@@@@@@@@│    &&&&     │
.}
.}
.Begin  iTotal := iTotal + iNmb;  End.
.}
.}
└─────┴─────────┴─────────────────────────────┴─────────────────┴─────────────┘

ВСЕГО:&&&&&& сотрудников
.endform

.LINKFORM "Пофамильные списки по образованию" PROTOTYPE IS staff_gr
.group "Пофамильные списки по образованию"
.p 60
!.o 6
.Var iNmb   : integer
     iTotal : integer
     sFiltrCode : string
     not_first_page : boolean
.EndVar
.Fields
  RepTytle dToDate
  FiltrName sFiltrCode FiltrString
  DepName iNmb TabNmb FIO UnivName UnivFromDate UnivToDate iTotal
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
                                                                                       стр. @NP@
┌──────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│  N       Таб.          Фамилия Имя Отчество                   Учебное заведение            дата       дата   │
│ п/п     номер                                                                           поступления окончания│
└──────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
.}
.]h

.Begin
     not_first_page := false;
 End.
                    @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                         на @@@@@@@@@@

┌──────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│  N       Таб.          Фамилия Имя Отчество                   Учебное заведение            дата       дата   │
│ п/п     номер                                                                           поступления окончания│
└──────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
.Begin
     not_first_page := true;
 End.
.{staff_gr_CycleFiltr  CheckEnter
.Begin
   if (FiltrCode = '= ')
     sFiltrCode := ':';
   else
     sFiltrCode := ' ' + FiltrCode;
 End.
 ^^ ^
.}
.Begin  iTotal := 0;  End.
.{staff_gr_Ctrl1  CheckEnter
.{?internal;trim(DepName) <> 'ОБОБЩЕНИЕ'
Подразделение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.Begin  iNmb := 0;  End.
.{staff_gr_Ctrl2  CheckEnter
.{staff_gr_Ctrl3  CheckEnter
.{staff_gr_Persons  CheckEnter
.Begin  iNmb := iNmb + 1;   End.
 &&&&   &&&&&&&&&   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@
.}
.}
.Begin  iTotal := iTotal + iNmb;  End.
.}
.}
ВСЕГО:&&&&&&
.endform