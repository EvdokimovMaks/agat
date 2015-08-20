//********************************************************************************
//                                                        (c) корпорация Галактика
// Галактика 7.12 - Управление производственной логистикой
// Операции-Расчет остатков/дефицитов по отпуску в производство
//********************************************************************************

.Set name = 'mnfdefic'
.NameInList 'Базовая форма'
.Hide
.Fields
 per_date                                                          //1
 naDatu                                                            //2
 F1 F2 F3                                                          //3,4,5
  NPP NREC_TOVAR NAME_TOVAR CODE_TOVAR Ed_Izm                      //6,7,8,9,10
  W_NALICH RezervMC Po_DO Wipas_Nakl Spis_Nakl Ostat_Otpusk PROGNOZ//11,12,13,14,15,16,17

  dAVG_Price                                                       //18

	dSpStep_Price                                                    //19

.Endfields
 ^
 ^
 ^ ^ ^
.{
  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}

.Endform

.Linkform 'mnfdefic_01' prototype is mnfdefic
.NameInList 'Ведомость дефицитов'
.Group 'DefMC'
.Fields
 CommonFormHeader
 per_date
 naDatu
 F1 F2 F3
 NPP NAME_TOVAR Ed_Izm W_NALICH RezervMC Po_DO  Spis_Nakl Ostat_Otpusk PROGNOZ
.Endfields
 ^

                ВЕДОМОСТЬ ДЕФИЦИТОВ ПО ОТПУСКУ МЦ В ПРОИЗВОДСТВО
              ^
                  ^
                  ^
                  ^
                  ^
  Р─────┬─────────────────────────────┬─────────┬─────────────┬────────────┬───────────────┬────────────┬──────────────┬────────────────
  Номер│                             │ Ед.изм. │  Остатки на │   Резерв   │  Выписано по  │  Отпущено  │  Подлежит    │   Дефицит
   п/п │     Наименование МЦ         │         │   складах   │     МЦ     │  документам   │            │  к отпуску   │
  ─────┴─────────────────────────────┴─────────┴─────────────┴────────────┴───────────────┴────────────┴──────────────┴──────────────── Р
.{
 Р&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@ &'&&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&&.&&& Р
.}
.Endform


.Linkform 'mnfdefic_03' prototype is mnfdefic
.NameInList 'Ведомость дефицитов c ценами'
.var
  dbDOSum : double
  dbRemainsSum : double
  dbDefSum : double
  dbDOSumSum : double
  dbRemainsSumSum : double
  dbDefSumSum : double
  dbDef : double
.endvar
.begin
  dbDOSum := 0;
  dbRemainsSum := 0;
  dbDefSum := 0;
  dbDOSumSum := 0;
  dbRemainsSumSum := 0;
  dbDefSumSum := 0;
  dbDef := 0;
end.
.Group 'DefMC'
.Fields
 CommonFormHeader
 per_date
 naDatu
 F1 F2 F3

.Endfields
 ^

                ВЕДОМОСТЬ ДЕФИЦИТОВ ПО ОТПУСКУ МЦ В ПРОИЗВОДСТВО
^
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
^
^
 Р─────┬──────────────────────┬─────────┬─────────┬────────────────────────┬──────────────────────┬───────────┬────────────────────────
Номер│    Наименование МЦ   │ Бар-код │         │  Выписано по ДО/ЛЗК    │  Остатки на складах  │  Резерв   │        Дефицит
 п/п │                      │         │ Ед.изм. ├───────────┬────────────┼───────────┬──────────┤    МЦ     ├────────────┬───────────
     │                      │         │         │  Кол-во   │    Сумма   │   Кол-во  │  Сумма   │           │   Кол-во   │   Сумма
─────┼──────────────────────┼─────────┼─────────┼───────────┼────────────┼───────────┼──────────┼───────────┼────────────┼─────────── Р
.{
.begin
  dbDOSum := double(dAVG_price)*double(Po_DO)
  dbDOSumSum := dbDOSumSum + dbDOSum
  dbRemainsSum := double(dAVG_price)*double(W_NALICH)
  dbRemainsSumSum := dbRemainsSumSum + dbRemainsSum
  dbDef := if(( double(W_NALICH) - double(Po_DO) + double(Spis_Nakl)) <  double(0.0001),
              -(double(W_NALICH) - double(Po_DO) + double(Spis_Nakl)), double(0))
  dbDefSum :=  double(dbDef)*double(dAVG_price)
  dbDefSumSum := dbDefSumSum + dbDefSum
end.
.fields
 NPP NAME_TOVAR CODE_TOVAR Ed_Izm  Po_DO dbDOSum  W_NALICH dbRemainsSum RezervMC dbDef dbDefSum
.endfields
 Р&&&& │@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@│@@@@@@@@@│&'&&&&&&.&&│&'&&&&&&&.&&│&'&&&&&&.&&│&'&&&&&.&&│&'&&&&&&.&&│&'&&&&&&.&&&│&'&&&&&&.&& Р
.}
 Р─────┴──────────────────────┴─────────┴─────────┴───────────┴────────────┴───────────┴──────────┴───────────┴────────────┴─────────── Р
.fields
dbDOSumSum
dbDefSumSum
.endfields
 Р                                              Итого:             &'&&&&&&&&&.&&                                          &'&&&&&&&.&& Р
.Endform


.Linkform 'mnfdefic_04' prototype is mnfdefic
.NameInList 'Ведомость дефицитов c ценами ДО'
.var
  dbDOSum : double
  dbRemainsSum : double
  dbDefSum : double
  dbDOSumSum : double
  dbRemainsSumSum : double
  dbDefSumSum : double
  dbDef : double
.endvar
.begin
  dbDOSum := 0;
  dbRemainsSum := 0;
  dbDefSum := 0;
  dbDOSumSum := 0;
  dbRemainsSumSum := 0;
  dbDefSumSum := 0;
  dbDef := 0;
end.
.Group 'DefMC'
.Fields
 CommonFormHeader
 per_date
 naDatu
 F1 F2 F3

.Endfields
 ^

                ВЕДОМОСТЬ ДЕФИЦИТОВ ПО ОТПУСКУ МЦ В ПРОИЗВОДСТВО С ЦЕНАМИ ДО
^
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
^
^
 Р─────┬──────────────────────┬─────────┬─────────┬────────────────────────┬──────────────────────┬───────────┬────────────────────────
Номер│    Наименование МЦ   │ Бар-код │         │  Выписано по ДО/ЛЗК    │  Остатки на складах  │  Резерв   │        Дефицит
 п/п │                      │         │ Ед.изм. ├───────────┬────────────┼───────────┬──────────┤    МЦ     ├────────────┬───────────
     │                      │         │         │  Кол-во   │    Сумма   │   Кол-во  │  Сумма   │           │   Кол-во   │   Сумма
─────┼──────────────────────┼─────────┼─────────┼───────────┼────────────┼───────────┼──────────┼───────────┼────────────┼─────────── Р
.{
.begin
  dbDOSum := double(dSpStep_Price)*double(Po_DO)
  dbDOSumSum := dbDOSumSum + dbDOSum
  dbRemainsSum := double(dSpStep_Price)*double(W_NALICH)
  dbRemainsSumSum := dbRemainsSumSum + dbRemainsSum
  dbDef := if(( double(W_NALICH) - double(Po_DO) + double(Spis_Nakl)) <  double(0.0001),
              -(double(W_NALICH) - double(Po_DO) + double(Spis_Nakl)), double(0))
  dbDefSum :=  double(dbDef)*double(dSpStep_Price)
  dbDefSumSum := dbDefSumSum + dbDefSum
end.
.fields
 NPP NAME_TOVAR CODE_TOVAR Ed_Izm  Po_DO dbDOSum  W_NALICH dbRemainsSum RezervMC dbDef dbDefSum
.endfields
 Р&&&& │@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@│@@@@@@@@@│&'&&&&&&.&&│&'&&&&&&&.&&│&'&&&&&&.&&│&'&&&&&.&&│&'&&&&&&.&&│&'&&&&&&.&&&│&'&&&&&&.&& Р
.}
 Р─────┴──────────────────────┴─────────┴─────────┴───────────┴────────────┴───────────┴──────────┴───────────┴────────────┴─────────── Р
.fields
dbDOSumSum
dbDefSumSum
.endfields
 Р                                              Итого:             &'&&&&&&&&&.&&                                          &'&&&&&&&.&& Р
.Endform


.Linkform 'mnfdefic_02' prototype is mnfdefic
.NameInList 'Ведомость остатков'
.Group 'OstMC'
.Fields
 CommonFormHeader
 per_date
 naDatu
 F1 F2 F3
 NPP NAME_TOVAR Ed_Izm W_NALICH RezervMC Po_DO Spis_Nakl Ostat_Otpusk PROGNOZ
.Endfields
 ^

                ВЕДОМОСТЬ ОСТАТКОВ ПО ОТПУСКУ МЦ В ПРОИЗВОДСТВО
              ^
                  ^
                  ^
                  ^
                  ^
 Р─────┬─────────────────────────────┬─────────┬──────────────┬──────────┬──────────────┬────────────┬──────────────┬──────────────────
Номер│                             │ Ед.изм. │  Остатки на  │  Резерв  │ Выписано по  │  Отпущено  │   Подлежит   │ Останется в нали-
 п/п │     Наименование МЦ         │         │   складах    │    МЦ    │ документам   │            │  к отпуску   │ чии после отпуска
─────┴─────────────────────────────┴─────────┴──────────────┴──────────┴──────────────┴────────────┴──────────────┴────────────────── Р
.{
 Р&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@ &'&&&&&&&&.&&& &'&&&&.&&& &'&&&&&&&&&.&&& &'&&&&&.&&& &'&&&&&&&&.&&& &'&&&&&&&&&&&&.&&& Р
.}

.Endform
