/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,2004 корпорация ГАЛАКТИКА                    ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Розничная торговля                                        ║
 ║ Версия        : 5.585                                                     ║
 ║ Назначение    : Ведомости движения товара по складам в розничной торговле ║
 ║ Ответственный : Швайковский Дмитрий Владимирович                          ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/

#include rzMCrep.pro

#doc
Движение (НДЕ и Баз.)
#end
.linkform 'RozMCReports_M01' prototype is 'RozMCReports'
.nameinlist 'Движение (НДЕ и Баз.)'
.group 'M00001'
.p 60
.fields
  CommonFormHeader
  DateToStr(dDate,'DD/MM/YYYY')
  DateToStr(dDate2,'DD/MM/YYYY')
  if(typePrices=0,'Закупочная цена','Цена реализации')
  VNTar VNBase
  VNTar VNBase
  VNTar VNBase
  VNTar VNBase
  VNTar VNBase
  KodGroup  NameGroup
  NameMC  CodeMC  NameEd
  TitlRazr1 NameRazr
  nDoc  dDoc
  KontrName
  if(typePrices=0,PriceU,PriceR)
  if(typePrices=0,vPriceU,vPriceR)
  KVh
  if(typePrices=0,Summa,Summa_)
  if(typePrices=0,vSumma,vSumma_)
  KPrih
  if(typePrices=0,SummaP,SummaP_)
  if(typePrices=0,vSummaP,vSummaP_)
  KRash
  if(typePrices=0,SummaR,SummaR_)
  if(typePrices=0,vSummaR,vSummaR_)
  KIsh
  if(typePrices=0,SummaI,SummaI_)
  if(typePrices=0,vSummaI,vSummaI_)

  TitlRazr1
  NameRazr
  kItogo_mc
  if(typePrices=0,Itogo_mc,Itogo_mc_)
  if(typePrices=0,vItogo_mc,Itogo_mc_)
  kpItogo_mc
  if(typePrices=0,ItogoP_mc,ItogoP_mc_)
  if(typePrices=0,vItogoP_mc,vItogoP_mc_)
  krItogo_mc
  if(typePrices=0,ItogoR_mc,ItogoR_mc_)
  if(typePrices=0,vItogoR_mc,vItogoR_mc_)
  kiItogo_mc
  if(typePrices=0,ItogoI_mc,ItogoI_mc_)
  if(typePrices=0,vItogoI_mc,vItogoI_mc_)

  NameMC
  if(typePrices=0,Itogo_r,Itogo_r_)
  if(typePrices=0,vItogo_r,vItogo_r_)
  if(typePrices=0,ItogoP_r,ItogoP_r_)
  if(typePrices=0,vItogoP_r,vItogoP_r_)
  if(typePrices=0,ItogoR_r,ItogoR_r_)
  if(typePrices=0,vItogoR_r,vItogoR_r_)
  if(typePrices=0,ItogoI_r,ItogoI_r_)
  if(typePrices=0,vItogoI_r,vItogoI_r_)

  NameGroup
  if(typePrices=0,Itogo_gr,Itogo_gr_)
  if(typePrices=0,vItogo_gr,vItogo_gr_)
  if(typePrices=0,ItogoP_gr,ItogoP_gr_)
  if(typePrices=0,vItogoP_gr,vItogoP_gr_)
  if(typePrices=0,ItogoR_gr,ItogoR_gr_)
  if(typePrices=0,vItogoR_gr,vItogoR_gr_)
  if(typePrices=0,ItogoI_gr,ItogoI_gr_)
  if(typePrices=0,vItogoI_gr,vItogoI_gr_)

  if(typePrices=0,Itogo,Itogo_)
  if(typePrices=0,vItogo,vItogo_)
  if(typePrices=0,ItogoP,ItogoP_)
  if(typePrices=0,vItogoP,vItogoP_)

  if(typePrices=0,ItogoR,ItogoR_)
  if(typePrices=0,vItogoR,vItogoR_)
  if(typePrices=0,ItogoI,ItogoI_)
  if(typePrices=0,vItogoI,vItogoI_)
.endfields
^
                БВЕДОМОСТЬ ДВИЖЕНИЯ МЦ В РОЗНИЧНОЙ ТОРГОВЛЕ Б
                            Бс ^ по ^ Б
!'RozReports_M01'
.{
.[h OverWrite
 Ш
───────────────────────────────────────────────────┬──────────────────────────┬─────────────────────────────────────┬─────────────────────────────────────┬─────────────────────────────────────┬─────────────────────────────────────
              Документ прихода                     │@~@@@@@@@@@@@@@@@@@@@@@@@@│           Входящий остаток          │               Приход                │              Расход                 │           Исходящий остаток
─────────┬──────────┬──────────────────────────────┼─────────────┬────────────┼──────────┬─────────────┬────────────┼──────────┬─────────────┬────────────┼──────────┬─────────────┬────────────┼──────────┬─────────────┬────────────
  Номер  │   Дата   │         Контрагент           │в @@@@@@@@@@@│в @@@@@@@@@@│  Кол-во  │в @@@@@@@@@@@│в @@@@@@@@@@│  Кол-во  │в @@@@@@@@@@@│в @@@@@@@@@@│  Кол-во  │в @@@@@@@@@@@│в @@@@@@@@@@│  Кол-во  │в @@@@@@@@@@@│в @@@@@@@@@@
─────────┴──────────┴──────────────────────────────┴─────────────┴────────────┴──────────┴─────────────┴────────────┴──────────┴─────────────┴────────────┴──────────┴─────────────┴────────────┴──────────┴─────────────┴──────────── Ш
.]h
.{
.if RzRepMCNeedGroup1

Группа: ^ ^
.end
.{
.if RzRepMCNeedObj1

 БТовар: Б  Ш^ Ш,  Бкод: Б  Ш^ Ш,  Бединица измерения: Б  Р^ Р
.end
.{
^ : ^

.{
 Ш@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&.&& &'&&&&&&&.&& &'&&&&.&&& &'&&&&&&&&.&& &'&&&&&&&.&& &'&&&&.&&& &'&&&&&&&&.&& &'&&&&&&&.&& &'&&&&.&&& &'&&&&&&&&.&& &'&&&&&&&.&& &'&&&&.&&& &'&&&&&&&&.&& &'&&&&&&&.&& Ш
.}
 ЩИтого по @@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@        &'&&&&&&&.&&& &'&&&&&&&&.&& &'&&&&&&&.&& &'&&&&.&&& &'&&&&&&&&.&& &'&&&&&&&.&& &'&&&&.&&& &'&&&&&&&&.&& &'&&&&&&&.&& &'&&&&.&&& &'&&&&&&&&.&& &'&&&&&&&.&& Щ

.}
.if RzRepMCNeedObj2
 ЩИтого по товару @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                      &'&&&&&&&&.&& &'&&&&&&&.&&            &'&&&&&&&&.&& &'&&&&&&&.&&            &'&&&&&&&&.&& &'&&&&&&&.&&            &'&&&&&&&&.&& &'&&&&&&&.&& Щ
.end
.}
.if RzRepMCNeedGroup2
 ЩИтого по группе @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                      &'&&&&&&&&.&& &'&&&&&&&.&&            &'&&&&&&&&.&& &'&&&&&&&.&&            &'&&&&&&&&.&& &'&&&&&&&.&&            &'&&&&&&&&.&& &'&&&&&&&.&& Щ
.end
.}
.}

 Щ                ИТОГО ПО ПРЕДПРИЯТИЮ                                                      &'&&&&&&&&.&& &'&&&&&&&.&&            &'&&&&&&&&.&& &'&&&&&&&.&&            &'&&&&&&&&.&& &'&&&&&&&.&&            &'&&&&&&&&.&& &'&&&&&&&.&& Щ
.endform


#doc
Движение (НДЕ)
#end
.linkform 'RozMCReports_M02' prototype is 'RozMCReports'
.nameinlist 'Движение (НДЕ)'
.group 'M00000'
.p 60
.fields
  CommonFormHeader
  DateToStr(dDate,'DD/MM/YYYY')
  DateToStr(dDate2,'DD/MM/YYYY')
  if(typePrices=0,'Закупочная цена','Цена реализации')
  VNTar VNTar VNTar VNTar VNTar
  KodGroup  NameGroup
  NameMC  CodeMC  NameEd
  TitlRazr1 NameRazr
  nDoc  dDoc
  KontrName
  if(typePrices=0,PriceU,PriceR)
  KVh
  if(typePrices=0,Summa,Summa_)
  KPrih
  if(typePrices=0,SummaP,SummaP_)
  KRash
  if(typePrices=0,SummaR,SummaR_)
  KIsh
  if(typePrices=0,SummaI,SummaI_)

  TitlRazr1
  NameRazr
  kItogo_mc
  if(typePrices=0,Itogo_mc,Itogo_mc_)
  kpItogo_mc
  if(typePrices=0,ItogoP_mc,ItogoP_mc_)
  krItogo_mc
  if(typePrices=0,ItogoR_mc,ItogoR_mc_)
  kiItogo_mc
  if(typePrices=0,ItogoI_mc,ItogoI_mc_)

  NameMC
  if(typePrices=0,Itogo_r,Itogo_r_)
  if(typePrices=0,ItogoP_r,ItogoP_r_)
  if(typePrices=0,MyItogoR_r,ItogoR_r_)
  if(typePrices=0,MyItogoI_r,ItogoI_r_)

  NameGroup
  if(typePrices=0,Itogo_gr,Itogo_gr_)
  if(typePrices=0,ItogoP_gr,ItogoP_gr_)
  if(typePrices=0,MyItogoR_gr,ItogoR_gr_)
  if(typePrices=0,MyItogoI_gr,ItogoI_gr_)

  if(typePrices=0,Itogo,Itogo_)
  if(typePrices=0,ItogoP,ItogoP_)
  if(typePrices=0,MyItogoR,ItogoR_)
  if(typePrices=0,MyItogoI,ItogoI_)
.endfields
^
                БВЕДОМОСТЬ ДВИЖЕНИЯ МЦ В РОЗНИЧНОЙ ТОРГОВЛЕ
                         с ^ по ^ Б
!'RozReports_M02'
.{
.[h OverWrite
 Ш
───────────────────────────────────────────────────┬────────────────┬──────────────────────────────────┬──────────────────────────────────┬──────────────────────────────────┬──────────────────────────────────
              Документ прихода                     │@~@@@@@@@@@@@@@@│         Входящий остаток         │             Приход               │             Расход               │        Исходящий остаток
─────────┬──────────┬──────────────────────────────┤                ├────────────┬─────────────────────┼────────────┬─────────────────────┼────────────┬─────────────────────┼────────────┬─────────────────────
  Номер  │   Дата   │          Контрагент          │в @@@@@@@@@@@@@@│   Кол-во   │    в @@@@@@@@@@@    │   Кол-во   │    в @@@@@@@@@@@    │   Кол-во   │    в @@@@@@@@@@@    │   Кол-во   │    в @@@@@@@@@@@
─────────┴──────────┴──────────────────────────────┴────────────────┴────────────┴─────────────────────┴────────────┴─────────────────────┴────────────┴─────────────────────┴────────────┴───────────────────── Ш
 А.]h
.{
.if RzRepMCNeedGroup1

 СГруппа: ^ ^ С
.end
.{
.if RzRepMCNeedObj1

Товар:  Ш^ Ш, код:  Р^ Р, единица измерения:  Р^ Р
.end
.{

^ : ^
.{
 Ш@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&.&& &'&&&&&&.&&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&.&&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&.&&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&.&&& &'&&&&&&&&&&&&&&&&.&& Ш
.}
 ШИтого по @@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&.&&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&.&&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&.&&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&.&&& &'&&&&&&&&&&&&&&&&.&& Ш
.}
.if RzRepMCNeedObj2
 ШИтого по товару @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@              &'&&&&&&&&&&&&&&&&.&&              &'&&&&&&&&&&&&&&&&.&&              &'&&&&&&&&&&&&&&&&.&&              &'&&&&&&&&&&&&&&&&.&& Ш
.end
.}
.if RzRepMCNeedGroup2
 ШИтого по группе @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@              &'&&&&&&&&&&&&&&&&.&&              &'&&&&&&&&&&&&&&&&.&&              &'&&&&&&&&&&&&&&&&.&&              &'&&&&&&&&&&&&&&&&.&& Ш
.end
.}
.}

 Щ                ИТОГО ПО ПРЕДПРИЯТИЮ                                              &'&&&&&&&&&&&&&&&&.&&              &'&&&&&&&&&&&&&&&&.&&              &'&&&&&&&&&&&&&&&&.&&              &'&&&&&&&&&&&&&&&&.&& Щ
.endform


#doc
Движение (по ном., НДЕ и Баз.)
#end
.linkform 'RozMCReports_M03' prototype is 'RozMCReports'
.nameinlist 'Движение (по ном., НДЕ и Баз.)'
.group 'M01001'
.p 60
.fields
  CommonFormHeader
  DateToStr(dDate,'DD/MM/YYYY')
  DateToStr(dDate2,'DD/MM/YYYY')
  if(typePrices=0,'учетных ценах','ценах реализации')
  VNTar VNBase
  VNTar VNBase
  VNTar VNBase
  VNTar VNBase
  KodGroup  NameGroup
  NameMC CodeMC NameEd
  TitlRazr1  NameRazr
  if(typePrices=0,Itogo_mc,Itogo_mc_)
  if(typePrices=0,vItogo_mc,vItogo_mc_)
  if(typePrices=0,ItogoP_mc,ItogoP_mc_)
  if(typePrices=0,vItogoP_mc,vItogoP_mc_)
  if(typePrices=0,ItogoR_mc,ItogoR_mc_)
  if(typePrices=0,vItogoR_mc,vItogoR_mc_)
  if(typePrices=0,ItogoI_mc,ItogoI_mc_)
  if(typePrices=0,vItogoI_mc,vItogoI_mc_)

  NameMC
  if(typePrices=0,Itogo_r,Itogo_r_)
  if(typePrices=0,vItogo_r,vItogo_r_)
  if(typePrices=0,ItogoP_r,ItogoP_r_)
  if(typePrices=0,vItogoP_r,vItogoP_r_)
  if(typePrices=0,ItogoR_r,ItogoR_r_)
  if(typePrices=0,vItogoR_r,vItogoR_r_)
  if(typePrices=0,ItogoI_r,ItogoI_r_)
  if(typePrices=0,vItogoI_r,vItogoI_r_)

  NameGroup
  if(typePrices=0,Itogo_gr,Itogo_gr_)
  if(typePrices=0,vItogo_gr,vItogo_gr_)
  if(typePrices=0,ItogoP_gr,ItogoP_gr_)
  if(typePrices=0,vItogoP_gr,vItogoP_gr_)
  if(typePrices=0,ItogoR_gr,ItogoR_gr_)
  if(typePrices=0,vItogoR_gr,vItogoR_gr_)
  if(typePrices=0,ItogoI_gr,ItogoI_gr_)
  if(typePrices=0,vItogoI_gr,vItogoI_gr_)

  if(typePrices=0,Itogo,Itogo_)
  if(typePrices=0,vItogo,vItogo_)
  if(typePrices=0,ItogoP,ItogoP_)
  if(typePrices=0,vItogoP,vItogoP_)
  if(typePrices=0,ItogoR,ItogoR_)
  if(typePrices=0,vItogoR,vItogoR_)
  if(typePrices=0,ItogoI,ItogoI_)
  if(typePrices=0,vItogoI,vItogoI_)
.endfields
^
                БВЕДОМОСТЬ ДВИЖЕНИЯ МЦ В РОЗНИЧНОЙ ТОРГОВЛЕ
                с ^ по ^ в ^ Б
!'RozReports_M03'
.{
.[h OverWrite
 Ш
──────────────────────────────────┬─────────────┬──────────┬─────────────────────────────────────────┬─────────────────────────────────────────┬─────────────────────────────────────────┬─────────────────────────────────────────
                                  │             │ Единица  │             Входящий остаток            │                  Приход                 │                 Расход                  │            Исходящий остаток
       Наименование МЦ            │   К О Д     │измерения ├────────────────────┬────────────────────┼────────────────────┬────────────────────┼────────────────────┬────────────────────┼────────────────────┬────────────────────
                                  │             │          │   в @@@@@@@@@@@    │    в @@@@@@@@@@    │    в @@@@@@@@@@@   │    в @@@@@@@@@@    │   в @@@@@@@@@@@    │    в @@@@@@@@@@    │    в @@@@@@@@@@@   │    в @@@@@@@@@@
──────────────────────────────────┴─────────────┴──────────┴────────────────────┴────────────────────┴────────────────────┴────────────────────┴────────────────────┴────────────────────┴────────────────────┴──────────────────── Ш
 А.]h
.{
.if RzRepMCNeedGroup1

Группа: ^ ^
.end
.{
.if RzRepMCNeedObj1

Товар:  Ш^ Ш, код:  Р^ Р, единица измерения:  Р^ Р
.end
.{
.{
.}
 Ш@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@            &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& Ш
.}
.if RzRepMCNeedObj2
 ШИтого по товару @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& Ш
.end
.}
.if RzRepMCNeedGroup2
 ШИтого по группе @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& Ш
.end
.}
.}

 Щ                ИТОГО ПО ПРЕДПРИЯТИЮ                        &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& Ш
.endform


#doc
Движение (по ном., НДЕ)
#end
.linkform 'RozMCReports_M04' prototype is 'RozMCReports'
.nameinlist 'Движение (по ном., НДЕ)'
.group 'M01000'
.p 60
.fields
  CommonFormHeader
  DateToStr(dDate,'DD/MM/YYYY')
  DateToStr(dDate2,'DD/MM/YYYY')
  if(typePrices=0,'учетных ценах','ценах реализации')
  VNTar VNTar VNTar VNTar
  KodGroup NameGroup
  NameMC  CodeMC  NameEd
  TitlRazr1  NameRazr
  if(typePrices=0,Itogo_mc,Itogo_mc_)
  if(typePrices=0,ItogoP_mc,ItogoP_mc_)
  if(typePrices=0,ItogoR_mc,ItogoR_mc_)
  if(typePrices=0,ItogoI_mc,ItogoI_mc_)
  NameMC
  if(typePrices=0,Itogo_r,Itogo_r_)
  if(typePrices=0,ItogoP_r,ItogoP_r_)
  if(typePrices=0,ItogoR_r,ItogoR_r_)
  if(typePrices=0,ItogoI_r,ItogoI_r_)

  NameGroup
  if(typePrices=0,Itogo_gr,Itogo_gr_)
  if(typePrices=0,ItogoP_gr,ItogoP_gr_)
  if(typePrices=0,ItogoR_gr,ItogoR_gr_)
  if(typePrices=0,ItogoI_gr,ItogoI_gr_)

  if(typePrices=0,Itogo,Itogo_)
  if(typePrices=0,ItogoP,ItogoP_)
  if(typePrices=0,ItogoR,ItogoR_)
  if(typePrices=0,ItogoI,ItogoI_)
.endfields
^
                БВЕДОМОСТЬ ДВИЖЕНИЯ МЦ В РОЗНИЧНОЙ ТОРГОВЛЕ
                с ^ по ^ в ^ Б
!'RozReports_M04'
.{
.[h OverWrite
 Р
──────────────────────────────────┬─────────────┬──────────┬──────────────────────────┬──────────────────────────┬──────────────────────────┬──────────────────────────
                                  │             │ Единица  │     Входящий остаток     │           Приход         │           Расход         │    Исходящий остаток
       Наименование МЦ            │   К О Д     │измерения ├──────────────────────────┼──────────────────────────┼──────────────────────────┼──────────────────────────
                                  │             │          │       в @@@@@@@@@@@      │       в @@@@@@@@@@@      │       в @@@@@@@@@@@      │      в @@@@@@@@@@@
──────────────────────────────────┴─────────────┴──────────┴──────────────────────────┴──────────────────────────┴──────────────────────────┴────────────────────────── Р
 А.]h
.{
.if RzRepMCNeedGroup1

 ИГруппа: ^ ^ И
.end
.{
.if RzRepMCNeedObj1

Товар:  Ш^ Ш, код:  Р^ Р, единица измерения:  Р^ Р
.end
.{
.{
.}
 Р@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@            &'&&&&&&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&&&&&&.&& Р
.}
.if RzRepMCNeedObj2
 РИтого по товару @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&&&&&&.&& Р
.end
.}
 Б.if RzRepMCNeedGroup2 Б
 РИтого по группе @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&&&&&&.&& С
.end Б
.}
.}

 Р                ИТОГО ПО ПРЕДПРИЯТИЮ                        &'&&&&&&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&&&&&&.&& Р
.endform


#doc
Движение (по группам, НДЕ и Баз.)
#end
.linkform 'RozMCReports_M05' prototype is 'RozMCReports'
.nameinlist 'Движение (по группам, НДЕ и Баз.)'
.group 'M10001'
.p 60
.fields
  CommonFormHeader
  DateToStr(dDate,'DD/MM/YYYY')
  DateToStr(dDate2,'DD/MM/YYYY')
  if(typePrices=0,'учетных ценах','ценах реализации')
  VNTar VNBase
  VNTar VNBase
  VNTar VNBase
  VNTar VNBase
  NameGroup  KodGroup
  NameMC
  if(typePrices=0,Itogo_r,Itogo_r_)
  if(typePrices=0,vItogo_r,vItogo_r_)
  if(typePrices=0,ItogoP_r,ItogoP_r_)
  if(typePrices=0,vItogoP_r,vItogoP_r_)
  if(typePrices=0,ItogoR_r,ItogoR_r_)
  if(typePrices=0,vItogoR_r,vItogoR_r_)
  if(typePrices=0,ItogoI_r,ItogoI_r_)
  if(typePrices=0,vItogoI_r,vItogoI_r_)

  NameGroup
  if(typePrices=0,Itogo_gr,Itogo_gr_)
  if(typePrices=0,vItogo_gr,vItogo_gr_)
  if(typePrices=0,ItogoP_gr,ItogoP_gr_)
  if(typePrices=0,vItogoP_gr,vItogoP_gr_)
  if(typePrices=0,ItogoR_gr,ItogoR_gr_)
  if(typePrices=0,vItogoR_gr,vItogoR_gr_)
  if(typePrices=0,ItogoI_gr,ItogoI_gr_)
  if(typePrices=0,vItogoI_gr,vItogoI_gr_)

  if(typePrices=0,Itogo,Itogo_)
  if(typePrices=0,vItogo,vItogo_)
  if(typePrices=0,ItogoP,ItogoP_)
  if(typePrices=0,vItogoP,vItogoP_)
  if(typePrices=0,ItogoR,ItogoR_)
  if(typePrices=0,vItogoR,vItogoR_)
  if(typePrices=0,ItogoI,ItogoI_)
  if(typePrices=0,vItogoI,vItogoI_)
.endfields
^
                БВЕДОМОСТЬ ДВИЖЕНИЯ МЦ В РОЗНИЧНОЙ ТОРГОВЛЕ
               с ^ по ^ в ^ Б
!'RozReports_M05'
.{
.[h OverWrite
 Ш
──────────────────────────────────┬─────────────┬───────────────────────────────────────────┬───────────────────────────────────────────┬───────────────────────────────────────────┬───────────────────────────────────────────
                                  │             │              Входящий остаток             │                   Приход                  │                   Расход                  │             Исходящий остаток
         Группа МЦ                │   К О Д     ├─────────────────────┬─────────────────────┼─────────────────────┬─────────────────────┼─────────────────────┬─────────────────────┼─────────────────────┬─────────────────────
                                  │             │    в @@@@@@@@@@@    │     в @@@@@@@@@@    │    в @@@@@@@@@@@    │     в @@@@@@@@@@    │    в @@@@@@@@@@@    │     в @@@@@@@@@@    │    в @@@@@@@@@@@    │     в @@@@@@@@@@
──────────────────────────────────┴─────────────┴─────────────────────┴─────────────────────┴─────────────────────┴─────────────────────┴─────────────────────┴─────────────────────┴─────────────────────┴───────────────────── Ш
 А.]h
.{
.if RzRepMCNeedGroup1

Группа: ^ ^
.end
.{
.if RzRepMCNeedObj1
.end
.{
.{
.}
.}
.if RzRepMCNeedObj2
 Ш@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& Ш
.end
.}
.if RzRepMCNeedGroup2
 ШИтого по группе @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& Ш
.end
.}
.}

 Ш                ИТОГО ПО ПРЕДПРИЯТИЮ             &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& Ш
.endform

#doc
Движение (по группам, НДЕ)
#end
.linkform 'RozMCReports_M05' prototype is 'RozMCReports'
.nameinlist 'Движение (по группам, НДЕ)'
.group 'M10000'
.p 60
.fields
  CommonFormHeader
  DateToStr(dDate,'DD/MM/YYYY')
  DateToStr(dDate2,'DD/MM/YYYY')
  if(typePrices=0,'учетных ценах','ценах реализации')
  VNTar VNTar VNTar VNTar
  NameGroup  KodGroup
  NameMC
  if(typePrices=0,Itogo_r,Itogo_r_)
  if(typePrices=0,ItogoP_r,ItogoP_r_)
  if(typePrices=0,ItogoR_r,ItogoR_r_)
  if(typePrices=0,ItogoI_r,ItogoI_r_)

  NameGroup  
  if(typePrices=0,Itogo_gr,Itogo_gr_)
  if(typePrices=0,ItogoP_gr,ItogoP_gr_)
  if(typePrices=0,ItogoR_gr,ItogoR_gr_)
  if(typePrices=0,ItogoI_gr,ItogoI_gr_)

  if(typePrices=0,Itogo,Itogo_)
  if(typePrices=0,ItogoP,ItogoP_)
  if(typePrices=0,ItogoR,ItogoR_)
  if(typePrices=0,ItogoI,ItogoI_)
.endfields
^
                БВЕДОМОСТЬ ДВИЖЕНИЯ МЦ В РОЗНИЧНОЙ ТОРГОВЛЕ
               с ^ по ^ в ^ Б
!'RozReports_M05'
.{
.[h OverWrite
 Ш
──────────────────────────────────┬─────────────┬──────────────────────────┬──────────────────────────┬──────────────────────────┬──────────────────────────
                                  │             │     Входящий остаток     │         Приход           │          Расход          │    Исходящий остаток
         Группа МЦ                │   К О Д     ├──────────────────────────┼──────────────────────────┼──────────────────────────┼──────────────────────────
                                  │             │     в @@@@@@@@@@@        │       в @@@@@@@@@@@      │       в @@@@@@@@@@@      │     в @@@@@@@@@@@
──────────────────────────────────┴─────────────┴──────────────────────────┴──────────────────────────┴──────────────────────────┴────────────────────────── Р
 А.]h
.{
.if RzRepMCNeedGroup1

Группа: Ш ^ ^ Ш
.end
.{
.if RzRepMCNeedObj1
.end
.{
.{
.}
.}
.if RzRepMCNeedObj2
 Р@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&.&&    &'&&&&&&&&&&&&&&&&.&&      &'&&&&&&&&&&&&&&&&.&&      &'&&&&&&&&&&&&&&&&.&& И
.end
.}
.if RzRepMCNeedGroup2
 ИИтого по группе @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&.&&    &'&&&&&&&&&&&&&&&&.&&      &'&&&&&&&&&&&&&&&&.&&      &'&&&&&&&&&&&&&&&&.&& И
.end Ш
.}
.}

 Р                ИТОГО ПО ПРЕДПРИЯТИЮ                &'&&&&&&&&&&&&&&&&.&&    &'&&&&&&&&&&&&&&&&.&&      &'&&&&&&&&&&&&&&&&.&&      &'&&&&&&&&&&&&&&&&.&& И
.endform

!876`543`210`987`654`321.00
!    &'&&&&&&&&&&&&&&&&&.&&

#include rzmovMCeu.frn
