/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,99 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Автотранспорт                                             ║
 ║ Версия        : 6.00                                                      ║
 ║ Назначение    : Отчет по заказчикам                                       ║
 ║ Ответственный : Лисица Наталья Михайловна                                 ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.set name='Zak_rep'
.hide
.fields
  Filter
  NaimPred BegDate  EndDate  NameItg NameItgDop
  Str_Name1 Str_Name2 Str_Name3 Str_Name4 Str_Name5 Str_Name6
  AnalGroup   NumLevel
  KolTc CodTbl :word  NrecTBl : comp
  Main_DayAll Main_GruzTn Main_TimeAll Main_TimeMove
  Main_TimeLoad1 Main_TimeLoad2
  Main_TimeStop Main_KolEz Main_ProbegAll Main_ProbegGr Main_MotoCh

  Npl_nrec : comp Npl  DatPl NotePl
  Main_vodila_nrec : comp Main_vodila Main_vodila_tabn
  Marka Tc_nrec : comp
  GosNom GarNom  Katzak_nrec : comp NomZak CodeZak NameZak
  AnalDet AnalDet_Dop
  Nrec_Norma : comp Normaprobeg NormaMoto
  SytProbeg NormaprobegData NormaprobegDataKof
  SytMotoCh NormaMotoChData NormaMotoChDataKof
  ExitCh ExitDn SpeedExi MotoExi ReturnCh ReturnDn SpeedRet MotoRet
  DayAll GruzTn TimeAll TimeMove TimeLoad1 TimeLoad2 TimeStop KolEz ProbegAll PutProbegAll PutMotoChAll ProbegGr
  KolDn  Chasf SummaRc Faktt PriceTopZapr Normt SumUsl MotoCh
  Fact_DayAll Fact_GruzTn Fact_TimeAll Fact_TimeMove
  Fact_TimeLoad1 Fact_TimeLoad2
  Fact_TimeStop Fact_KolEz Fact_ProbegAll Fact_ProbegGr Fact_MotoCh
  Plan_NomZak
  Plan_DayAll Plan_GruzTn Plan_TimeAll Plan_TimeMove
  Plan_TimeLoad1 Plan_TimeLoad2
  Plan_TimeStop Plan_KolEz Plan_ProbegAll Plan_ProbegGr  Plan_motoch

  AnalItg  NumLevelItg

  ItgCodTbl :word  ItgNrecTBl : comp
  ItgDayAll
  ItgGruzTn ItgTimeAll ItgTimeMove ItgTimeLoad1 ItgTimeLoad2 ItgTimeStop ItgKolEz
  ItgProbegAll ItgPutProbegAll ItgPutMotochAll ItgProbegGr
  ItgKolDn  ItgChasf ItgSummaRc ItgFaktt ItgPriceTopZapr ItgNormt
  ItgSumUsl ItgNormaprobeg ItgNormaMoto ItgMotoCh

  ItgFact_DayAll ItgFact_GruzTn ItgFact_TimeAll ItgFact_TimeMove
  ItgFact_TimeLoad1 ItgFact_TimeLoad2
  ItgFact_TimeStop ItgFact_KolEz ItgFact_ProbegAll ItgFact_ProbegGr ItgFact_MotoCh
  ItgPlan_DayAll ItgPlan_GruzTn ItgPlan_TimeAll ItgPlan_TimeMove
  ItgPlan_TimeLoad1 ItgPlan_TimeLoad2
  ItgPlan_TimeStop ItgPlan_KolEz ItgPlan_ProbegAll ItgPlan_ProbegGr ItgPlan_MotoCh
.endfields


.{
^
.}
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.{ CheckEnter GroupAnalZak
^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.{ CheckEnter ShapkaZak
.}
.{ CheckEnter DocAnalZak
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^  ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter TotalAnalZak
Итого ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^
.}
.}
.endform

.linkform 'Zak_Rep_01' prototype is 'Zak_rep'
.NameInList 'Отчет по заказчикам '
.Group 'avto'
.Group 'Фактические'
!.hide
.fields
  Filter
  BegDate  EndDate
  AnalGroup
  Npl  GosNom
  TimeAll TimeMove DayAll ProbegAll
  SummaRc  PriceTopZapr SumUsl
  AnalItg
  ItgTimeAll ItgTimeMove ItgDayAll ItgProbegAll
  ItgSummaRc  ItgPriceTopZapr ItgSumUsl
.endfields


.{
^
.}
           Сведения о транспортных расходах по заказчикам
     по путевым листам  c @@@@@@@@@@@@@@@@@@@@@@@ по @@@@@@@@@@@@@@@@@@@@@

┌──────────────────┬──────────┬───────────┬───────────┬───────────┬─────────┬───────────┬───────────┬───────────┬───────────┐
│                  │  Номер   │    Гос.   │   Время   │   Время   │  Дни    │  Пробег   │  Оплата   │ Стоимость │ Стоимость │
│    Заказчик      │ путевого │   номер   │   всего   │ в движении│по заказу│ по заказу │ водителям │   ГСМ     │  услуг    │
│                  │          │           │ по заказу │ по заказу │         │           │           │           │           │
└──────────────────┴──────────┴───────────┴───────────┴───────────┴─────────┴───────────┴───────────┴───────────┴───────────┘

.{ CheckEnter GroupAnalZak
^
.{ CheckEnter ShapkaZak
.}
.{ CheckEnter DocAnalZak
                    @@@@@@@@@@@ @@@@@@@@@@  &'&&&&&.&&  &'&&&&&.&&  &'&&&&&  &'&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&&
.}
.{ CheckEnter TotalAnalZak
^
                                            &'&&&&&.&&  &'&&&&&.&&  &'&&&&&  &'&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&&
.}
.}
.endform
.linkform 'Zak_Rep_011' prototype is 'Zak_rep'
.NameInList 'Отчет по заказчикам '
.Group 'Фактические (Var)'
.Group 'Фактические (Rail)'
!.hide
.fields
  Filter
  BegDate  EndDate
  AnalGroup
  Npl  GosNom
  TimeAll TimeMove DayAll ProbegAll
  SummaRc  PriceTopZapr SumUsl
  AnalItg
  ItgTimeAll ItgTimeMove ItgDayAll ItgProbegAll
  ItgSummaRc  ItgPriceTopZapr ItgSumUsl
.endfields


.{
^
.}
           Сведения о транспортных расходах по заказчикам
     по регистрационным листам   c @@@@@@@@@@@@@@@@@@@@@@@ по @@@@@@@@@@@@@@@@@@@@@

┌──────────────────┬──────────┬───────────┬───────────┬───────────┬─────────┬───────────┬───────────┬───────────┬───────────┐
│                  │  Номер   │  Бортовой │   Время   │   Время   │  Дни    │  Пробег   │  Оплата   │ Стоимость │ Стоимость │
│    Заказчик      │  листа   │   номер   │   всего   │ в движении│по заказу│ по заказу │ водителям │   ГСМ     │  услуг    │
│                  │          │           │ по заказу │ по заказу │         │           │           │           │           │
└──────────────────┴──────────┴───────────┴───────────┴───────────┴─────────┴───────────┴───────────┴───────────┴───────────┘

.{ CheckEnter GroupAnalZak
^
.{ CheckEnter ShapkaZak
.}
.{ CheckEnter DocAnalZak
                    @@@@@@@@@@@ @@@@@@@@@@  &'&&&&&.&&  &'&&&&&.&&  &'&&&&&  &'&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&&
.}
.{ CheckEnter TotalAnalZak
^
                                            &'&&&&&.&&  &'&&&&&.&&  &'&&&&&  &'&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&&
.}
.}
.endform
.linkform 'Zak_Rep_02' prototype is 'Zak_rep'
.NameInList 'Отчет по заказчикам с водителем'
.Group 'avto'
.Group 'Фактические'
!.hide
.fields
  Filter
  BegDate  EndDate
  AnalGroup
  Npl  DatPl  GosNom Main_Vodila
  TimeAll TimeMove DayAll ProbegAll
  SummaRc  PriceTopZapr SumUsl
  AnalItg
  ItgTimeAll ItgTimeMove ItgDayAll ItgProbegAll
  ItgSummaRc  ItgPriceTopZapr ItgSumUsl
.endfields


.{
^
.}
           Сведения о транспортных расходах по заказчикам
     по путевым листам  c @@@@@@@@@@@@@@@@@@@@@@@ по @@@@@@@@@@@@@@@@@@@@@

┌──────────────────┬──────────┬───────────┬───────────┬───────────────┬───────────┬───────────┬─────────┬───────────┬───────────┬───────────┬───────────┐
│                  │  Номер   │   Дата    │    Гос.   │   Водитель    │   Время   │   Время   │  Дни    │  Пробег   │  Оплата   │ Стоимость │ Стоимость │
│    Заказчик      │ путевого │  выписки  │   номер   │               │   всего   │ в движении│по заказу│ по заказу │ водителям │   ГСМ     │  услуг    │
│                  │          │           │           │               │по заказу  │ по заказу │         │           │           │           │           │
└──────────────────┴──────────┴───────────┴───────────┴───────────────┴───────────┴───────────┴─────────┴───────────┴───────────┴───────────┴───────────┘

.{ CheckEnter GroupAnalZak
^
.{ CheckEnter ShapkaZak
.}
.{ CheckEnter DocAnalZak
                    @@@@@@@@@@ @@@@@@@@@@@  @@@@@@@@@  @@@@@@@@@@@@@@@  &'&&&&&.&&  &'&&&&&.&&  &'&&&&&  &'&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&&
.}
.{ CheckEnter TotalAnalZak
^
                                                                        &'&&&&&.&&  &'&&&&&.&&  &'&&&&&  &'&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&&
.}
.}
.endform
.linkform 'Zak_Rep_021' prototype is 'Zak_rep'
.NameInList 'Отчет по заказчикам с водителем'
.Group 'Фактические (Var)'
.Group 'Фактические (Rail)'
!.hide
.fields
  Filter
  BegDate  EndDate
  AnalGroup
  Npl  DatPl  GosNom Main_Vodila
  TimeAll TimeMove DayAll ProbegAll
  SummaRc  PriceTopZapr SumUsl
  AnalItg
  ItgTimeAll ItgTimeMove ItgDayAll ItgProbegAll
  ItgSummaRc  ItgPriceTopZapr ItgSumUsl
.endfields


.{
^
.}
           Сведения о транспортных расходах по заказчикам
     по регистрационныи листам  c @@@@@@@@@@@@@@@@@@@@@@@ по @@@@@@@@@@@@@@@@@@@@@

┌──────────────────┬──────────┬───────────┬───────────┬───────────────┬───────────┬───────────┬─────────┬───────────┬───────────┬───────────┬───────────┐
│                  │  Номер   │   Дата    │ Бортовой  │   Водитель    │   Время   │   Время   │  Дни    │  Пробег   │  Оплата   │ Стоимость │ Стоимость │
│    Заказчик      │  листа   │  выписки  │   номер   │               │   всего   │ в движении│по заказу│ по заказу │ водителям │   ГСМ     │  услуг    │
│                  │          │           │           │               │по заказу  │ по заказу │         │           │           │           │           │
└──────────────────┴──────────┴───────────┴───────────┴───────────────┴───────────┴───────────┴─────────┴───────────┴───────────┴───────────┴───────────┘

.{ CheckEnter GroupAnalZak
^
.{ CheckEnter ShapkaZak
.}
.{ CheckEnter DocAnalZak
                    @@@@@@@@@@ @@@@@@@@@@@  @@@@@@@@@  @@@@@@@@@@@@@@@  &'&&&&&.&&  &'&&&&&.&&  &'&&&&&  &'&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&&
.}
.{ CheckEnter TotalAnalZak
^
                                                                        &'&&&&&.&&  &'&&&&&.&&  &'&&&&&  &'&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&&
.}
.}
.endform
.linkform 'Zak_Rep_03' prototype is 'Zak_rep'
.NameInList 'Отчет по плановым заказам'
.Group 'avto'
.Group 'Плановые'
!.hide
.var
 itgNorm :double;
.endvar
.fields
  Filter
  BegDate  EndDate
  AnalGroup KolTC
! NameZak
  NomZak
  GosNom
  Normaprobeg ProbegAll Plan_NomZak Plan_ProbegAll Fact_ProbegAll
  Main_vodila
  AnalItg ItgNormaprobeg
  ItgProbegAll ItgPlan_ProbegAll ItgFact_ProbegAll
.endfields


.{
^
.}

                    Сведения о  заказах
     за период c @@@@@@@@@@@@@@@@@@@@@@@ по  @@@@@@@@@@@@@@@@@@@@@@@

┌──────────────────┬──────────┬───────────┬──────────┬───────────┬───────────┬───────────┬────────────┬──────────────────────┐
│                  │  Номер   │    Гос.   │  Суточный│  Пробег   │  Номер    │  Пробег по│  Пробег    │     Водитель         │
│    Заказчик      │  заказа  │   номер   │  пробег  │  в заказе │ вышестоящ.│ вышестоящ.│по подчинен.│                      │
│                  │          │           │  по норме│           │  заказа   │  заказу   │  заказам   │                      │
└──────────────────┴──────────┴───────────┴──────────┴───────────┴───────────┴───────────┴────────────┴──────────────────────┘
.{ CheckEnter GroupAnalZak
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@
.{ CheckEnter ShapkaZak
.}
.{ CheckEnter DocAnalZak
                   @@~@@@@@@@@ @@@~@@@@@@@ &'&&&&&.&& &'&&&&&.&&   @@@@@@@@@  &'&&&&&.&&  &'&&&&&.&&   @@@@@@@@@@@@@@@@@@@@@@
.}
.{ CheckEnter TotalAnalZak
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&.&& &'&&&&&.&&              &'&&&&&.&&  &'&&&&&.&&
.}
.}
.endform
.linkform 'Zak_Rep_031' prototype is 'Zak_rep'
.NameInList 'Отчет по плановым заказам'
.Group 'Плановые (Rail)'
.Group 'Плановые (Var)'
!.hide
.var
 itgNorm :double;
.endvar
.fields
  Filter
  BegDate  EndDate
  AnalGroup KolTC
! NameZak
  NomZak
  GosNom
  Normaprobeg ProbegAll Plan_NomZak Plan_ProbegAll Fact_ProbegAll
  Main_vodila
  AnalItg ItgNormaprobeg
  ItgProbegAll ItgPlan_ProbegAll ItgFact_ProbegAll
.endfields


.{
^
.}

                    Сведения о  заказах
     за период c @@@@@@@@@@@@@@@@@@@@@@@ по  @@@@@@@@@@@@@@@@@@@@@@@

┌──────────────────┬──────────┬───────────┬──────────┬───────────┬───────────┬───────────┬────────────┬──────────────────────┐
│                  │  Номер   │ Бортовой  │  Суточный│  Пробег   │  Номер    │  Пробег по│  Пробег    │     Водитель         │
│    Заказчик      │  заказа  │   номер   │  пробег  │  в заказе │ вышестоящ.│ вышестоящ.│по подчинен.│                      │
│                  │          │           │  по норме│           │  заказа   │  заказу   │  заказам   │                      │
└──────────────────┴──────────┴───────────┴──────────┴───────────┴───────────┴───────────┴────────────┴──────────────────────┘
.{ CheckEnter GroupAnalZak
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@
.{ CheckEnter ShapkaZak
.}
.{ CheckEnter DocAnalZak
                   @@~@@@@@@@@ @@@~@@@@@@@ &'&&&&&.&& &'&&&&&.&&   @@@@@@@@@  &'&&&&&.&&  &'&&&&&.&&   @@@@@@@@@@@@@@@@@@@@@@
.}
.{ CheckEnter TotalAnalZak
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&.&& &'&&&&&.&&              &'&&&&&.&&  &'&&&&&.&&
.}
.}
.endform

.linkform 'Zak_Rep_04' prototype is 'Zak_rep'
.NameInList 'Отчет по плановым заказам'
.Group 'avto'
.Group 'Фактические'
!.hide
.var
 itgNorm :double;
.endvar
.fields
  Filter
  BegDate  EndDate
  AnalGroup  KolTC
! NameZak
  NomZak
  GosNom
  Normaprobeg ProbegAll Plan_NomZak Plan_ProbegAll Fact_ProbegAll
  Main_vodila
  AnalItg ItgNormaprobeg
  ItgProbegAll ItgPlan_ProbegAll ItgFact_ProbegAll
.endfields


.{
^
.}

                    Сведения о  заказах
     за период c @@@@@@@@@@@@@@@@@@@@@@@ по  @@@@@@@@@@@@@@@@@@@@@@@
┌──────────────────┬──────────┬───────────┬──────────┬───────────┬───────────┬───────────┬────────────┬──────────────────────┐
│                  │  Номер   │    Гос.   │  Суточный│  Пробег   │  Номер    │  Пробег по│  Пробег    │     Водитель         │
│    Заказчик      │  заказа  │   номер   │  пробег  │  в заказе │ вышестоящ.│ вышестоящ.│по подчинен.│                      │
│                  │          │           │  по норме│           │  заказа   │  заказу   │  заказам   │                      │
└──────────────────┴──────────┴───────────┴──────────┴───────────┴───────────┴───────────┴────────────┴──────────────────────┘

.{ CheckEnter GroupAnalZak
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@          @@@@@@@@@@@@@@@@@@@@@@
.{ CheckEnter ShapkaZak
.}
.{ CheckEnter DocAnalZak
                   @@~@@@@@@@@ @@@~@@@@@@@ &'&&&&&.&& &'&&&&&.&&  @@@@@@@@@@@@ &'&&&&&.&&  &'&&&&&.&&   @@@@@@@@@@@@@@@@@@@@@@
.}
.{ CheckEnter TotalAnalZak
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&.&& &'&&&&&.&&               &'&&&&&.&&  &'&&&&&.&&
.}
.}
.endform
.linkform 'Zak_Rep_041' prototype is 'Zak_rep'
.NameInList 'Отчет по плановым заказам'
.Group 'Фактические (Rail)'
.Group 'Фактические (Var)'
!.hide
.var
 itgNorm :double;
.endvar
.fields
  Filter
  BegDate  EndDate
  AnalGroup  KolTC
! NameZak
  NomZak
  GosNom
  Normaprobeg ProbegAll Plan_NomZak Plan_ProbegAll Fact_ProbegAll
  Main_vodila
  AnalItg ItgNormaprobeg
  ItgProbegAll ItgPlan_ProbegAll ItgFact_ProbegAll
.endfields


.{
^
.}

                    Сведения о  заказах
     за период c @@@@@@@@@@@@@@@@@@@@@@@ по  @@@@@@@@@@@@@@@@@@@@@@@
┌──────────────────┬──────────┬───────────┬──────────┬───────────┬───────────┬───────────┬────────────┬──────────────────────┐
│                  │  Номер   │ Бортовой  │  Суточный│  Пробег   │  Номер    │  Пробег по│  Пробег    │     Водитель         │
│    Заказчик      │  заказа  │   номер   │  пробег  │  в заказе │ вышестоящ.│ вышестоящ.│по подчинен.│                      │
│                  │          │           │  по норме│           │  заказа   │  заказу   │  заказам   │                      │
└──────────────────┴──────────┴───────────┴──────────┴───────────┴───────────┴───────────┴────────────┴──────────────────────┘

.{ CheckEnter GroupAnalZak
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@          @@@@@@@@@@@@@@@@@@@@@@
.{ CheckEnter ShapkaZak
.}
.{ CheckEnter DocAnalZak
                   @@~@@@@@@@@ @@@~@@@@@@@ &'&&&&&.&& &'&&&&&.&&  @@@@@@@@@@@@ &'&&&&&.&&  &'&&&&&.&&   @@@@@@@@@@@@@@@@@@@@@@
.}
.{ CheckEnter TotalAnalZak
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&.&& &'&&&&&.&&               &'&&&&&.&&  &'&&&&&.&&
.}
.}
.endform
.linkform 'Zak_Rep_05' prototype is 'Zak_rep'
.NameInList 'Отчет по заказам '
.Group 'avto'
.Group 'Обобщенная'
!.hide
.fields
  Filter
  BegDate  EndDate
  AnalGroup
  Npl  GosNom NomZak
  TimeAll TimeMove DayAll ProbegAll MotoCh
  AnalItg
  ItgTimeAll ItgTimeMove ItgDayAll ItgProbegAll ItgMotoCh
.endfields


.{
^
.}
           Сведения о транспортных расходах по заказчикам
     по путевым листам  c @@@@@@@@@@@@@@@@@@@@@@@ по @@@@@@@@@@@@@@@@@@@@@

┌──────────────────┬──────────┬───────────┬───────────┬───────────┬───────────┬─────────┬───────────┬───────────┐
│                  │  Номер   │    Гос.   │   Номер   │   Время   │   Время   │  Дни    │  Пробег   │  Моточасы │
│    Заказчик      │ путевого │   номер   │   заказа  │   всего   │ в движении│по заказу│ по заказу │ по заказу │
│                  │          │           │           │ по заказу │ по заказу │         │           │           │
└──────────────────┴──────────┴───────────┴───────────┴───────────┴───────────┴─────────┴───────────┴───────────┘

.{ CheckEnter GroupAnalZak
^
.{ CheckEnter ShapkaZak
.}
.{ CheckEnter DocAnalZak
                    @@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@ &'&&&&&.&&  &'&&&&&.&&  &'&&&&&  &'&&&&&.&&  &'&&&&&.&&
.}
.{ CheckEnter TotalAnalZak
^
                                                       &'&&&&&.&&  &'&&&&&.&&  &'&&&&&  &'&&&&&.&&  &'&&&&&.&&
.}
.}
.endform
.linkform 'Zak_Rep_06' prototype is 'Zak_rep'
.NameInList 'Отчет по закреплениям ТС'
.Group 'avto'
.Group 'Закрепление'
!.hide
.var
 itgNorm :double;
.endvar
.fields
  Filter
  BegDate  EndDate
  AnalGroup KolTC
! NameZak
  NomZak
  GosNom
  Normaprobeg ProbegAll Fact_ProbegAll Plan_ProbegAll
  AnalItg ItgNormaprobeg
  ItgProbegAll ItgFact_ProbegAll  ItgPlan_ProbegAll
.endfields


.{
^
.}

                    Сведения о  закреплении ТС
     за период c @@@@@@@@@@@@@@@@@@@@@@@ по  @@@@@@@@@@@@@@@@@@@@@@@

┌──────────────────┬──────────┬───────────┬──────────┬───────────┬───────────┬────────────┐
│                  │  Номер   │    Гос.   │  Суточный│  Пробег   │  Пробег по│  Пробег    │
│    Заказчик      │закреплен,│   номер   │  пробег  │    в      │ плановым  │по выполн.  │
│                  │          │           │  по норме│закреплении│  заказам  │  заказам   │
└──────────────────┴──────────┴───────────┴──────────┴───────────┴───────────┴────────────┘
.{ CheckEnter GroupAnalZak
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@          @@@@@@@@@@@@@@@@@@@@@@
.{ CheckEnter ShapkaZak
.}
.{ CheckEnter DocAnalZak
                   @@~@@@@@@@@ @@@~@@@@@@@ &'&&&&&.&& &'&&&&&.&&  &'&&&&&.&&  &'&&&&&.&&
.}
.{ CheckEnter TotalAnalZak
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&.&& &'&&&&&.&&  &'&&&&&.&&  &'&&&&&.&&
.}
.}
.endform
.linkform 'Zak_Rep_13' prototype is 'Zak_rep'
.NameInList 'Отчет по плановым заказам'
.Group 'avto'
.Group 'Плановые-old'
!.hide
.var
 itgNorm :double;
.endvar
.fields
  Filter
  BegDate  EndDate
  AnalGroup KolTC
! NameZak
  NomZak
  GosNom
  Normaprobeg Main_vodila
  AnalItg ItgNormaprobeg
.endfields


.{
^
.}

                    Сведения о плановых заказах
     за период c @@@@@@@@@@@@@@@@@@@@@@@ по  @@@@@@@@@@@@@@@@@@@@@@@

┌──────────────────┬──────────┬───────────┬───────────┬──────────────────────┐
│                  │  Номер   │    Гос.   │  Плановый │     Водитель         │
│    Заказчик      │  заказа  │   номер   │  суточный │                      │
│                  │          │           │  пробег   │                      │
└──────────────────┴──────────┴───────────┴───────────┴──────────────────────┘
.{ CheckEnter GroupAnalZak
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{ CheckEnter ShapkaZak
.}
.{ CheckEnter DocAnalZak
                   @@~@@@@@@@@ @@@~@@@@@@@ &'&&&&&.&&  @@@@@@@@@@@@@@@@@@@@@@
.}
.{ CheckEnter TotalAnalZak
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&.&&
.}
.}
.endform
.linkform 'Zak_Rep_131' prototype is 'Zak_rep'
.NameInList 'Отчет по плановым заказам'
.Group 'Плановые-old (Rail)'
.Group 'Плановые-old (Var)'
!.hide
.var
 itgNorm :double;
.endvar
.fields
  Filter
  BegDate  EndDate
  AnalGroup KolTC
! NameZak
  NomZak
  GosNom
  Normaprobeg Main_vodila
  AnalItg ItgNormaprobeg
.endfields


.{
^
.}

                    Сведения о плановых заказах
     за период c @@@@@@@@@@@@@@@@@@@@@@@ по  @@@@@@@@@@@@@@@@@@@@@@@

┌──────────────────┬──────────┬───────────┬───────────┬──────────────────────┐
│                  │  Номер   │ Бортовой  │  Плановый │     Водитель         │
│    Заказчик      │  заказа  │   номер   │  суточный │                      │
│                  │          │           │  пробег   │                      │
└──────────────────┴──────────┴───────────┴───────────┴──────────────────────┘
.{ CheckEnter GroupAnalZak
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{ CheckEnter ShapkaZak
.}
.{ CheckEnter DocAnalZak
                   @@~@@@@@@@@ @@@~@@@@@@@ &'&&&&&.&&  @@@@@@@@@@@@@@@@@@@@@@
.}
.{ CheckEnter TotalAnalZak
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&.&&
.}
.}
.endform

.linkform 'Zak_Rep_14' prototype is 'Zak_rep'
.NameInList 'Отчет по плановым заказам'
.Group 'avto'
.Group 'Фактические-old'
!.hide
.var
 itgNorm :double;
.endvar
.fields
  Filter
  BegDate  EndDate
  AnalGroup KolTC
! NameZak
  NomZak
  GosNom
  Normaprobeg Main_vodila
  AnalItg ItgNormaprobeg
.endfields


.{
^
.}

                    Сведения о  заказах
     за период c @@@@@@@@@@@@@@@@@@@@@@@ по  @@@@@@@@@@@@@@@@@@@@@@@

┌──────────────────┬──────────┬───────────┬───────────┬──────────────────────┐
│                  │  Номер   │    Гос.   │  Плановый │     Водитель         │
│    Заказчик      │  заказа  │   номер   │  суточный │                      │
│                  │          │           │  пробег   │                      │
└──────────────────┴──────────┴───────────┴───────────┴──────────────────────┘
.{ CheckEnter GroupAnalZak
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{ CheckEnter ShapkaZak
.}
.{ CheckEnter DocAnalZak
                   @@~@@@@@@@@ @@@~@@@@@@@ &'&&&&&.&&  @@@@@@@@@@@@@@@@@@@@@@
.}
.{ CheckEnter TotalAnalZak
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&.&&
.}
.}
.endform
.linkform 'Zak_Rep_141' prototype is 'Zak_rep'
.NameInList 'Отчет по плановым заказам'
.Group 'Фактические-old (Rail)'
.Group 'Фактические-old (Var)'
!.hide
.var
 itgNorm :double;
.endvar
.fields
  Filter
  BegDate  EndDate
  AnalGroup KolTC
! NameZak
  NomZak
  GosNom
  Normaprobeg Main_vodila
  AnalItg ItgNormaprobeg
.endfields


.{
^
.}

                    Сведения о  заказах
     за период c @@@@@@@@@@@@@@@@@@@@@@@ по  @@@@@@@@@@@@@@@@@@@@@@@

┌──────────────────┬──────────┬───────────┬───────────┬──────────────────────┐
│                  │  Номер   │ Бортовой  │  Плановый │     Водитель         │
│    Заказчик      │  заказа  │   номер   │  суточный │                      │
│                  │          │           │  пробег   │                      │
└──────────────────┴──────────┴───────────┴───────────┴──────────────────────┘
.{ CheckEnter GroupAnalZak
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{ CheckEnter ShapkaZak
.}
.{ CheckEnter DocAnalZak
                   @@~@@@@@@@@ @@@~@@@@@@@ &'&&&&&.&&  @@@@@@@@@@@@@@@@@@@@@@
.}
.{ CheckEnter TotalAnalZak
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&.&&
.}
.}
.endform
.linkform 'Zak_Rep_15' prototype is 'Zak_rep'
.NameInList 'Отчет по заказам '
.Group 'Обобщенная-Multi'
!.hide
.var
 Iw: word;
 TipMove,
 PlrpExitdn,
 PlrpReturndn,
 PlrpExitCh,
 PlrpReturnCh,
 sSoprDoc  : String;
 katzak_nr : comp;
 rpExitdn,
 rpReturndn
    :date;
 rpExitCh,
 rpReturnCh
    :time;
 nrKatzak : comp;
.endvar
.create view vRep
as select *
from
  Katzak,
  Katsopr
;
.fields
  Filter
  BegDate  EndDate
  trim(AnalGroup)
  PlrpExitDn PlrpExitCh  PlrpReturnDn PlrpReturnCh
  sSoprDoc
  TipMove Npl  GosNom NomZak
  rpExitDn rpExitCh  rpReturnDn rpReturnCh
  TimeAll TimeMove DayAll ProbegAll
  trim(AnalItg)
  ItgTimeAll ItgTimeMove ItgDayAll ItgProbegAll
.endfields
.{
^
.}
                                   Сведения  по смешанным перевозкам
                             по регистрационным листам  c ^ по ^

┌─────────┬──────────┬───────────┬───────────┬──────────┬───────┬───────────┬────────┬───────────┬───────────┬─────────┬───────────┐
│         │  Номер   │  Бортовой │   Номер   │   Дата   │ Время │   Дата    │ Время  │   Время   │   Время   │  Дни    │  Пробег   │
│  Тип    │  листа   │   номер   │   заказа  │  выезда  │ выезда│ возвращен.│ возвр. │   всего   │ в движении│по заказу│ по заказу │
│         │          │           │           │          │       │           │        │ по заказу │ по заказу │         │           │
└─────────┴──────────┴───────────┴───────────┴──────────┴───────┴───────────┴────────┴───────────┴───────────┴─────────┴───────────┘
.{ CheckEnter GroupAnalZak
.begin
    PlrpExitDn    := '';
    PlrpExitCh    := '';
    PlrpReturnDn  := '';
    PlrpReturnCh  := '';
    TipMove       := '';
    sSoprDoc      := '';
  if NumLevel = 1  and  CodTbl = 12007
  If Vrep.Getfirst KatZak where ((NrecTBl    == Katzak.nrec)) =  tsok
   If Vrep.Getfirst KatSopr  where ((Katzak.cKatsopr == katsopr.nrec))=  tsok
    sSoprDoc      :=
    if (Vrep.Katzak.cKatsopr <> 0 ,
    if (Vrep.KatSopr.VidSopr > 100 and Vrep.KatSopr.VidSopr < 107, 'Накладная на прием товара № ' + Vrep.KatSopr.nSopr,
    if (Vrep.KatSopr.VidSopr > 200 and Vrep.KatSopr.VidSopr < 207, 'Накладная на отпуск товара № ' + Vrep.KatSopr.nSopr,
    if (Vrep.KatSopr.VidSopr = 211, 'Акт на услуги № ' + Vrep.KatSopr.nSopr,
    if (Vrep.KatSopr.VidSopr > 500 and Vrep.KatSopr.VidSopr < 513, 'Производственный документ № ' + Vrep.KatSopr.nSopr,
    if (Vrep.KatSopr.VidSopr > 599 and Vrep.KatSopr.VidSopr < 605 and KatSopr.VidSopr <> 603, 'Накладная на внутреннее перемещение № ' + Vrep.KatSopr.nSopr,
    if (Vrep.KatSopr.VidSopr > 520 and Vrep.KatSopr.VidSopr < 524, 'Накладная на давальческую обработку № ' + Vrep.KatSopr.nSopr,
    if (Vrep.KatSopr.VidSopr = 632, 'Акт на перемещение между объектами  № ' + Vrep.KatSopr.nSopr,
    if (Vrep.KatSopr.VidSopr = 115, 'Акт на приемку МЦ № ' + KatSopr.nSopr, 'Неизвестный документ № ' +  Vrep.KatSopr.nSopr
     )))))))),' ');
  if length(trim(AnalGroup)) <> 0 and  CodTbl = 12007
  If Vrep.Getfirst KatZak where ((NrecTBl    == Katzak.nrec)) =  tsok
   {
    case Katzak.TipTc of
     0 : TipMove       := 'авто';
     10: TipMove       := 'ж.д.';
     20: TipMove       := 'прочие';
     30: TipMove       := 'смешанные';
    end;
    PlrpExitDn    := to_Char(Vrep.KatZak.ExitDn);
    PlrpExitCh    := to_Char(Vrep.KatZak.ExitCh);
    PlrpReturnDn  := to_Char(Vrep.KatZak.ReturnDn);
    PlrpReturnCh  := to_Char(Vrep.KatZak.ReturnCh);
   }
end.
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@ @@@@@@@@@@@ @@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{ CheckEnter ShapkaZak
.}
.{ CheckEnter DocAnalZak
.begin
  katzak_nr := Katzak_nrec;
  If Vrep.Getfirst KatZak where ((Katzak_nr    == Katzak.nrec)) =  tsok
   {
    rpExitDn    := Vrep.KatZak.ExitDn;
    rpExitCh    := Vrep.KatZak.ExitCh;
    rpReturnDn  := Vrep.KatZak.ReturnDn;
    rpReturnCh  := Vrep.KatZak.ReturnCh;
   }
end.
 @@@@@@@@  @@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@ @@@@@@@ @@@@@@@@@@@ @@@@@@@@ &'&&&&&.&&  &'&&&&&.&&  &'&&&&&  &'&&&&&.&&
.}
.{ CheckEnter TotalAnalZak
^
                                                                                      &'&&&&&.&&  &'&&&&&.&&  &'&&&&&  &'&&&&&.&&
.}
.}
.endform

