#doc
Регистр-расчет  стоимости сырья/материалов, списанных в отчетном периоде
#end
.form 'PReg1'
.hide
.fields
  BegDate : date
  EndDate : date
.endfields
^^
.fields
  MCname  : string
.endfields
.{
^
.fields
  DOper   : date
  DocNum  : string

  Kol     : string
  ed      : string
  Kost    : string
  Summa   : string
.endfields
.{CHECKENTER RegLoop1

^^^^^^
.}
.fields
  WSum   : string
.endfields
^
.}
.endform


#doc
Регистр-расчет стоимости МЦ, списанных в отчетном периоде
#end
.linkform 'RegSpisInPeriod' prototype is 'PReg1'
.NameInList 'Регистр-расчет стоимости МЦ, списанных в отчетном периоде'
.Group 'Регистры промежуточных расчетов'
.DEFP PA4
.DEFO PORTRAIT
.PAPER PA4
.ORIENT PORTRAIT
.fields
  BegDate
  EndDate
.endfields
 И                           Регистр-расчет стоимости МЦ,
                    списанных в отчетном периоде с  Б^ Б по  Б^ Й

.fields
  MCname
.endfields
.{
 И  Матценность :  Б^ Й
 Ш┌───────────────┬─────────────────────────────────────────────────────────────────────────────────────┬────────────┬──────────┬─────────────┬─────────────────┐
│ Дата операции │                                 Документ                                            │ Количество │ Ед. изм. │  Цена, руб. │ Стоимость, руб. │
├───────────────┼─────────────────────────────────────────────────────────────────────────────────────┼────────────┼──────────┼─────────────┼─────────────────┤ Ш
.fields
  DOper
  DocNum
  Kol
  ed
  Kost
  Summa
.endfields
.{CHECKENTER RegLoop1
 Ш│@~@@@@@@@@@@@@@│ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&'&&&&&&&.&&│@~@@@@@@@@│&'&&&&&&&&.&&│&'&&&&&&&&&&&&.&&│
 Ш.}
.fields
  WSum
.endfields
 Ш└───────────────┴─────────────────────────────────────────────────────────────────────────────────────┴────────────┴──────────┴─────────────┴─────────────────┘ Ш
 И  Общая стоимость :  Б^ Б руб. И

.}
.endform


//=========================================================================
//=========================================================================
#doc
Регистр-расчет стоимости списанных сырья/материалов по методу ФИФО (ЛИФО)
#end
.form 'PReg2'
.hide
.fields
  BegDate : date
  EndDate : date
.endfields
^^
.fields
  MCname  : string
  DOper   : date
  DocNum  : string
  Kol     : string
  DPrih   : date
  DocNumPrih : string
  KolPrih : string
  Kost    : string
.endfields
.{

^^^^^^^^
.}
.fields
  WSum    : string
.endfields
^
.endform


#doc
Регистр-расчет стоимости списанных материалов по методу ФИФО(ЛИФО)
#end
.linkform 'RegSpisMatFIFO' prototype is 'PReg2'
.NameInList 'Регистр-расчет стоимости списанных материалов по методу ФИФО(ЛИФО)'
.Group 'Регистры промежуточных расчетов ФИФО (ЛИФО)'
.DEFP PA4
.DEFO PORTRAIT
.PAPER PA4
.ORIENT PORTRAIT
.fields
  BegDate
  EndDate
.endfields
 И                             Регистр-расчет стоимости списанных МЦ
                             в отчетном периоде с  Б^ Б по  Б^ Й

 Ш┌──────────────────┬────────────┬────────────────────────────────────────────────────┬─────────────┬─────────────┬─────────────┬──────────────┬───────────────┐
│   Наименование   │    Дата    │                       Документ                     │ Списываемое │     Дата    │    Номер    │ Количество в │   Стоимость   │
│     объекта      │  списания  │                                                    │ количество  │ поступления │ прих. докум.│ прих. докум. │   списания    │
├──────────────────┼────────────┼────────────────────────────────────────────────────┼─────────────┼─────────────┼─────────────┼──────────────┼───────────────┤ Ш
.fields
  MCname
  DOper
  DocNum
  Kol
  DPrih
  DocNumPrih
  KolPrih
  Kost
.endfields
.{
 Ш│@~@@@@@@@@@@@@@@@@│@~@@@@@@@@@@│ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&'&&&&&&&&.&&│@~@@@@@@@@@@@│@~@@@@@@@@@@@│&'&&&&&&&&&.&&│&'&&&&&&&&&&.&&│ Ш
.}
.fields
  WSum
.endfields
 Ш├──────────────────┴────────────┴────────────────────────────────────────────────────┴─────────────┴─────────────┴─────────────┴──────────────┼───────────────┤
│  БИТОГО ПО ДОКУМЕНТУ Б                                                                                                                          │ Б&'&&&&&&&&&&&&& Б│
└─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┴───────────────┘ Ш
.endform


//=========================================================================
//=========================================================================
#doc
Регистр информации о приобретенных партиях товаров по методу ЛИФО(ФИФО)
#end
.form 'PReg3'
.hide

.fields
  BegDate : date
  EndDate : date
.endfields
^^
.fields
  MCname  : string
  EdName
.endfields
.{
^ ^
.fields
  dOper   : date
  docNum  : string

  kolP: double  priceP: double  sumP: double   kolR: double  priceR: double sumR: double
  kolEnd: double  sumEnd: double
.endfields
.{
^ ^   ^ ^ ^  ^ ^ ^  ^ ^
.}
.fields
  totKolOst: double  totSumOst: double
.endfields
  ^ ^
.}
.endform


#doc
Регистр информации о приобретенных партиях товаров по методу ЛИФО(ФИФО)
#end
.linkform 'RegPrihMatFIFO' prototype is 'PReg3'
.NameInList 'Регистр информации о приобретенных партиях товаров по методу ЛИФО(ФИФО)'
.Group 'Регистры промежуточных расчетов ЛИФО/ФИФО'
.DEFP PA4
.DEFO PORTRAIT
.PAPER PA4
.ORIENT PORTRAIT
.var
 totKolP: double  totSumP: double
 totKolR: double  totSumR: double
.endvar
.fields
  BegDate  EndDate
.endfields
 И                           Регистр информации о приобретенных партиях МЦ
                           в отчетном периоде с  Б^ Б по  Б^ Й
 Ш
───────────┬─────────────────────────────────────────────────────────────┬────────────────────────────────────┬────────────────────────────────────┬─────────────────────────
           │                                                             │                Приход              │                Расход              │          Остаток
 Дата опер.│                           Операция                          ├──────────┬───────────┬─────────────┼──────────┬───────────┬─────────────┼──────────┬──────────────
           │                                                             │Количество│   Цена    │  Стоимость  │Количество│    Цена   │  Стоимость  │Количество│  Стоимость
───────────┴─────────────────────────────────────────────────────────────┴──────────┴───────────┴─────────────┴──────────┴───────────┴─────────────┴──────────┴────────────── Ш
.fields
  MCName + ' ('+EdName+')'
.endfields
.{
.begin
  totKolP:= 0;  totSumP:= 0;
  totKolR:= 0;  totSumR:= 0;
end.
 Щ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Щ
.fields
  dOper docNum   kolP priceP sumP  kolR priceR sumR   kolEnd sumEnd
.endfields
.{
.begin
  totKolP:= totKolP +kolP;  totSumP:= totSumP +sumP;
  totKolR:= totKolR +kolR;  totSumR:= totSumR +sumR;
end.
 Ш @~@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&.&& &'&&&&&&.&& &'&&&&&&&&.&& &'&&&&&.&& &'&&&&&&.&& &'&&&&&&&&.&& &'&&&&&.&& &'&&&&&&&&.&&  Ш
.}
.fields
  totKolP totSumP  totKolR  totSumR  totKolOst totSumOst
.endfields
 Щ  ИТОГО                                                                   &'&&&&&.&&             &'&&&&&&&&.&& &'&&&&&.&&             &'&&&&&&&&.&& &'&&&&&.&& &'&&&&&&&&.&&  Щ
.}
.endform





//==========================================================================
//==========================================================================
#doc
Регистр информации о приобретенных партиях товаров по средней себестоимости
#end
.form 'PReg4'
.hide
.fields
  BegDate : date
  EndDate : date
.endfields
^^
.fields
  MCname  : string
  EdName
.endfields
.{
^ ^
.fields
  dOper   : date
  docNum  : string
  flagPrih : boolean
  kol: double  price: double  sum: double    kolEnd: double  sumEnd: double
.endfields
.{
^ ^  ^  ^ ^ ^  ^ ^
.}
.fields
  totKolVP: double  totSumVP: double
  totKolVR: double  totSumVR: double
  totKolOst: double  totSumOst: double
.endfields
  ^ ^ ^ ^
  ^ ^
.}
.endform


#doc
Регистр информации о приобретенных партиях товаров
#end
.linkform 'RegPrihRash' prototype is 'PReg4'
.NameInList 'Регистр информации о приобретенных партиях товаров'
.Group 'Регистры промежуточных расчетов'
.DEFP PA4
.DEFO PORTRAIT
.PAPER PA4
.ORIENT PORTRAIT
.var
 totKolP: double  totSumP: double
 totKolR: double  totSumR: double
.endvar
.fields
  BegDate  EndDate
.endfields
 И                     Регистр информации о приобретенных партиях МЦ
                     в отчетном периоде с  Б^ Б по  Б^ Й
 Ш
───────────┬────────────────────────────────────────────────────────────────────────────┬────────────────────────────┬─────────────────────────────
    Дата   │                                                                            │          Операция          │           Остаток
  операции │                      Наименование операции                                 ├────────────┬───────────────┼────────────┬────────────────
           │                                                                            │ Количество │   Стоимость   │ Количество │   Стоимость
───────────┴────────────────────────────────────────────────────────────────────────────┴────────────┴───────────────┴────────────┴──────────────── Ш
.fields
  MCName + ' ('+EdName+')'
.endfields
.{
.begin
  totKolP:= 0;  totSumP:= 0;
  totKolR:= 0;  totSumR:= 0;
end.
 Щ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Щ
.fields
  dOper docNum   kol sum   kolEnd sumEnd
.endfields
.{
.begin
  if flagPrih
    { totKolP:= totKolP +kol;  totSumP:= totSumP +sum; }
  else
    { totKolR:= totKolR +kol;  totSumR:= totSumR +sum; }
end.
 Ш @~@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&&&&.&& Ш
.}
.fields
  totKolVP totSumVP totKolVR totSumVR
  totKolP totSumP  totKolR  totSumR  totKolOst totSumOst
.endfields
 Щ Возвраты                                                                    Приходы     &'&&&&&&&.&& &'&&&&&&&&&&.&& Щ
 Щ                                                                             Расходы     &'&&&&&&&.&& &'&&&&&&&&&&.&& Щ

 Щ ИТОГО                                                                       Приходы     &'&&&&&&&.&& &'&&&&&&&&&&.&& Щ
 Щ                                                                             Расходы     &'&&&&&&&.&& &'&&&&&&&&&&.&& Щ
 Щ                                                                             Остаток     &'&&&&&&&.&& &'&&&&&&&&&&.&& Щ
.}
.endform




#doc
Краткий регистр информации о приобретенных партиях товаров
#end
.linkform 'RegPrihRashShort' prototype is 'PReg4'
.NameInList 'Краткий регистр информации о приобретенных партиях товаров'
.Group 'Регистры промежуточных расчетов'
.DEFP PA4
.DEFO PORTRAIT
.PAPER PA4
.ORIENT PORTRAIT
.var
 totKolP: double  totSumP: double
 totKolR: double  totSumR: double
.endvar
.fields
  BegDate  EndDate
.endfields
 И                     Регистр информации о приобретенных партиях МЦ
                     в отчетном периоде с  Б^ Б по  Б^ Й
 Ш
─────────────────────────────────────────────────────────────────────────────┬────────────────────────────┬─────────────────────────────
                              Наименование МЦ                                │          Приход            │           Расход
                           Наименование операции                             ├────────────┬───────────────┼────────────┬────────────────
                                                                             │ Количество │   Стоимость   │ Количество │   Стоимость
─────────────────────────────────────────────────────────────────────────────┴────────────┴───────────────┴────────────┴──────────────── Ш
.fields
  MCName + ' ('+EdName+')'
.endfields
.{
.begin
  totKolP:= 0;  totSumP:= 0;
  totKolR:= 0;  totSumR:= 0;
end.
 Щ ^ Щ
.{
.begin
  if flagPrih
    { totKolP:= totKolP +kol;  totSumP:= totSumP +sum; }
  else
    { totKolR:= totKolR +kol;  totSumR:= totSumR +sum; }
end.
.}
.fields
  totKolVP totSumVP totKolVR totSumVR
  totKolP totSumP  totKolR  totSumR  totKolOst totSumOst
.endfields
 Щ  Возвраты                                                                    &'&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&&&&.&& Щ
 Щ  Обороты                                                                     &'&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&&&&.&& Щ
 Щ  Остаток                                                                     &'&&&&&&&.&& &'&&&&&&&&&&.&& Щ
.}
.endform
