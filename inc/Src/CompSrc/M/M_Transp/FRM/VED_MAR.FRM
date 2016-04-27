/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,99 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Автотранспорт                                             ║
 ║ Версия        : 5.70                                                      ║
 ║ Назначение    : Итоговый отчет по маршрутам                               ║
 ║ Ответственный : Власик Павел Владимирович                                 ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
//28.4.99
.set name='Ved_Mar'
.hide
.fields
 BegDate  EndDate  NaimPred
 NMarAvt
 NPunkt KatCity KatState
 nRecPutLst : Comp
 Nomer  GarNom PutLst_Npl Waywps_ExitDn Waywps_ExitCh Waywps_ReturnDn Waywps_ReturnCh
 ExitDn ExitCh ReturnDn ReturnCh Stoim:double TimeAll
 GruZak_Massa : double Probeg_NoGr: double Probeg_Gr: double Probeg_All : double
 ProbegMar : double
.endfields

^ ^ ^
.{
^
.{
^ ^ ^
.{
^
^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^
.}

.}

^
.}

.endform
 И.linkform 'Ved_Mar_01' prototype is 'Ved_Mar'
.NameInList 'Итоговый отчет по пассажирским маршрутам'
.Group 'Ved_Mar1'
.Var
  ItgPunkt   : Double
  ItgMar     : Double
  ItgAll     : Double
  ProbegAll  : Double
.EndVar
.fields
 CommonFormHeader
 BegDate  EndDate NaimPred
.endfields
^
                    Итоговый отчет по пассажирским маршрутам
                 c @@@@@@@@@@@@@@@@@@  по   @@@@@@@@@@@@@@@@@@
                        @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.begin
  ItgAll := 0
  ProbegAll := 0
end.
 ──────────┬──────────┬──────────┬──────────┬──────────┬──────────┬──────────┬───────────┬────────────
    Гос.   │ Гаражный │  Номер   │   Дата   │   Время  │   Дата   │   Время  │ Стоимость │   Время
   номер   │   номер  │ путевого │ прибытия │ прибытия │  убытия  │  убытия  │           │ нахождения
           │          │  листа   │          │          │          │          │           │  в пункте
 ──────────┼──────────┼──────────┼──────────┼──────────┼──────────┼──────────┼───────────┼────────────
     1     │    2     │    3     │    4     │     5    │    6     │     7    │     8     │     9
 ──────────┴──────────┴──────────┴──────────┴──────────┴──────────┴──────────┴───────────┴────────────
.{
.begin
  ItgMar := 0
end.
.Fields
  NMarAvt
.endfields
    ГМаршрут   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Г
.{
.begin
  ItgPunkt := 0
end.
.Fields
  NPunkt KatCity KatState
.endfields
    ВПункт     @@@@@@@@@@@@@ @@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@ В
.{
.begin
  ItgMar := ItgMar +  Stoim
  ItgPunkt := ItgPunkt   +  Stoim
  ItgAll := ItgAll + Stoim
end.
.Fields
 Nomer GarNom PutLst_Npl ExitDn ExitCh ReturnDn ReturnCh Stoim TimeAll
.endfields
 @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@   @@@@@@@  @@@@@@@@@@   @@@@@@@  &&&&&&&&.&& &&&&&&&&.&&
.}
.Fields
  ItgPunkt
.endfields
  БИтого по пункту                              Б Б                              &'&&&&&&&&&.&& Б
.}
.Fields
  ItgMar
.endfields
  БИтого по маршруту                            Б  Б                             &'&&&&&&&&&.&& Б
.begin
  ProbegAll := ProbegAll + ProbegMar
end.
.Fields
  ProbegMar
.endfields
  БПробег по маршруту                           Б Б                              &'&&&&&&&&&.&& Б
.}
 ─────────────────────────────────────────────────────────────────────────────────────────────────────
.Fields
  ItgAll
.endfields
 Б Итого выручка по предприятию                                              &'&&&&&&&&&.&& Б
.Fields
  ProbegAll
.endfields
 Б Итого пробег по предприятию                                               &'&&&&&&&&&.&& Б
.endform И

.linkform 'Ved_Mar_02' prototype is 'Ved_Mar'
.NameInList 'Итоговый отчет по грузовым маршрутам'
.Group 'Ved_Mar1'
.Var
  ItgPunkt_Gr   : Double
  ItgMar_Gr     : Double
  ItgAll_Gr     : Double
  ItgPunkt_Pr   : Double
  ItgMar_Pr     : Double
  ItgAll_Pr     : Double
  ItgPunkt_PrG   : Double
  ItgMar_PrG     : Double
  ItgAll_PrG     : Double
  ItgPunkt_PrN   : Double
  ItgMar_PrN     : Double
  ItgAll_PrN     : Double
.EndVar
.fields
 CommonFormHeader
 BegDate  EndDate NaimPred
.endfields
^
 И                    Итоговый отчет по грузовым маршрутам
                 c @@@@@@@@@@@@@@@@@@  по   @@@@@@@@@@@@@@@@@@
                        @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.begin
  ItgAll_Pr := 0
  ItgAll_PrG := 0
  ItgAll_PrN := 0
end.
 ──────────┬──────────┬──────────┬──────────┬──────────┬──────────┬──────────┬───────────┬────────────────────────────────────────
    Гос.   │ Гаражный │  Номер   │   Дата   │   Время  │   Дата   │   Время  │    Вес    │               Пробег, км
   номер   │   номер  │ путевого │ прибытия │ прибытия │  убытия  │  убытия  │   груза   ├────────────┬─────────────┬─────────────
           │          │  листа   │          │          │          │          │           │ без груза  │  с грузом   │    всего
 ──────────┼──────────┼──────────┼──────────┼──────────┼──────────┼──────────┼───────────┼────────────┼─────────────┼─────────────
     1     │    2     │    3     │    4     │     5    │    6     │     7    │     8     │     9      │      10     │     11
 ──────────┴──────────┴──────────┴──────────┴──────────┴──────────┴──────────┴───────────┴────────────┴─────────────┴─────────────
.{
.begin
  ItgMar_Gr := 0
  ItgMar_Pr := 0
  ItgMar_PrG := 0
  ItgMar_PrN := 0
end.
.Fields
  NMarAvt
.endfields
 Г   Маршрут   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Г
.{
.begin
  ItgPunkt_Gr := 0
  ItgPunkt_Pr := 0
  ItgPunkt_PrG := 0
  ItgPunkt_PrN := 0
end.
.Fields
  NPunkt KatCity KatState
.endfields
 В   Пункт     @@@@@@@@@@@@@ @@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@ В
.{
.begin
  ItgPunkt_Gr := ItgPunkt_Gr   +  GruZak_Massa
  ItgPunkt_PrN := ItgPunkt_PrN+Probeg_NoGr
  ItgMar_PrN     := ItgMar_PrN+ Probeg_NoGr
  ItgAll_PrN     := ItgAll_PrN + Probeg_NoGr
  ItgPunkt_PrG   := ItgPunkt_PrG+Probeg_Gr
  ItgMar_PrG     := ItgMar_PrG+ Probeg_Gr
  ItgAll_PrG     := ItgAll_PrG + Probeg_Gr
  ItgPunkt_Pr   := ItgPunkt_Pr+Probeg_All
  ItgMar_Pr     := ItgMar_Pr+ Probeg_All
  ItgAll_Pr     := ItgAll_Pr + Probeg_All

end.
.Fields
 Nomer GarNom PutLst_Npl ExitDn ExitCh ReturnDn ReturnCh GruZak_Massa Probeg_NoGr Probeg_Gr Probeg_All
.endfields
 @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@    @@@@@@@ @@@@@@@@@@   @@@@@@@@ &&&&&&&&.&& &&&&&&&&&.&& &&&&&&&&&&.&& &&&&&&&&&.&&
.}
.Fields
  ItgPunkt_Gr ItgPunkt_PrN ItgPunkt_PrG ItgPunkt_Pr
.endfields
 Б Итого по пункту                                                              &&&&&&&&.&& &&&&&&&&&.&& &&&&&&&&&&.&& &&&&&&&&&.&& Б
.}
.Fields
  ItgMar_PrN ItgMar_PrG ItgMar_Pr
.endfields
 Итого по маршруту                                                                        &&&&&&&&&.&& &&&&&&&&&&.&& &&&&&&&&&.&& Б
.}
 ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.Fields
  ItgAll_PrN ItgAll_PrG ItgAll_Pr
.endfields
 Б Итого  по предприятию                                                                    &&&&&&&&&.&& &&&&&&&&&.&& &&&&&&&&&&.&& Й
.endform

.linkform 'Ved_Mar_03' prototype is 'Ved_Mar'
.NameInList 'Итоговый отчет по  маршрутам и ТС'
.Group 'Ved_Mar2'
.Var
  ItgPunkt   : Double
  ItgMar     : Double
  ItgAll     : Double
  ProbegAll  : Double
.EndVar
.fields
 CommonFormHeader
 BegDate  EndDate NaimPred
.endfields
^
                    Итоговый отчет по выручке
                 c @@@@@@@@@@@@@@@@@@  по   @@@@@@@@@@@@@@@@@@
                        @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.begin
  ItgAll := 0
  ProbegAll := 0
end.
 ──────────┬──────────┬──────────┬──────────┬─────────┬───────────┬─────────┬────────────
    Гос.   │ Гаражный │  Номер   │   Дата   │  Время  │   Дата    │  Время  │ Выручка
   номер   │   номер  │ путевого │  выезда  │ выезда  │ прибытия  │прибытия │
           │          │  листа   │          │         │           │         │
 ──────────┼──────────┼──────────┼──────────┼─────────┼───────────┼─────────┼────────────
     1     │    2     │    3     │    4     │    5    │     6     │    7    │     8
 ──────────┴──────────┴──────────┴──────────┴─────────┴───────────┴─────────┴────────────
.{
.begin
  ItgMar := 0
end.
.Fields
  NMarAvt
.endfields
   Маршрут   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
.begin
  ItgPunkt := 0
end.
.{
.begin
  ItgMar := ItgMar +  Probeg_All
  ItgPunkt := ItgPunkt   +  Probeg_All
  ItgAll := ItgAll + Probeg_All
end.
.Fields
 Nomer GarNom PutLst_Npl Waywps_ExitDn Waywps_ExitCh Waywps_ReturnDn Waywps_ReturnCh  Probeg_All
.endfields
 @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@  @@@@@@@@  @@@@@@@@@@  @@@@@@@@ &'&&&&&&&.&&
.}
.Fields
  ItgPunkt
.endfields
 Итого по ТС                                                                 &'&&&&&&&.&&
.}
.Fields
  ItgMar
.endfields
 Итого по маршруту                                                           &'&&&&&&&.&&
.}
 ────────────────────────────────────────────────────────────────────────────────────────
.Fields
  ItgAll
.endfields
 Итого выручка по предприятию                                                &'&&&&&&&.&&
.endform