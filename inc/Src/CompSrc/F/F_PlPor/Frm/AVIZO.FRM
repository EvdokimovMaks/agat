//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.0 - Бухгалтерский контур
// Входящие и исходящие извещения (авизо)
//------------------------------------------------------------------------------

#doc
Входящие и исходящие извещения (авизо)
#end
.form 'Avizo'
.group 'Исходящее авизо'
.nameinlist 'Базовая форма'
.hide
.fields
! параметры печати
ParamSum ParamText ParamGroupPrint
! номера и даты
NoDOK PlPorNRec DatVip1 DatVip2 DatOB1 DatOB2 YEARDOC YEARDOCS MonthDoc DayDoc
AvizoType
! счет и субсчет взвиморасчетов, месяц, год
MainSch MainSub MainMon MainYear MainYearS
! основание
BaseName
! назначение извещения
NamePl1 NamePl2 NamePl3 NamePl4 NamePl5
! валюта документа
NdeSim ValNRec ValSim
! плательщик
PlatName
  PlatTip PlatAddr PlatOKPO PlatTEL PlatUNN
  PlatKodState PlatNameState
  PlatKodCity PlatNameCity PlatTELCity
! получатель
PolName
  PolTip PolAddr PolOKPO PolTEL PolUNN
  PolKodState PolNameState
  PolKodCity PolNameCity PolTELCity
NppOper:integer
OborotNRec
NameOper
  SodPr KorrSchet KorrSub SumDeb: double SumKred: double ValDeb: double ValKred: double
SchDeb SchKred AvizoDir
! итого
AllSumDeb: double AllSumKred: double AllValDeb: double AllValKred: double
! количество документов
koldoc
! выброс листа
page_symb
.endfields
#include ExcelFormat.var
.var
  sFormat: string;
  CurSim: string;
  CurText: string;
  CurSchet: string;
  CurDeb, CurKred, CurAllDeb, CurAllKred: double;
  Numero: word;             // Номер печатаемого экземпляра
.endvar

.Begin
  sFormat := '\2p[|-]3666`666`666`666`666`667.88';
  Numero := 0;
end.

.{
.begin
  Numero := Numero + 1;
end.
ParamSum         параметр Печать сумм ^
ParamText        параметр Содержание записей ^
ParamGroupPrint  параметр Групповая печать ^
!
NoDOK            Номер документа ^
PlPorNRec        nRec  документа ^
DatVip1          Дата выписки докум. DD/MM/YY ^
DatVip2          Дата выписки докум. DD mon YYYY г. ^
DatOB1           Дата оборота фактическая DD/MM/YY ^
DatOB2           Дата оборота фактическая DD mon YYYY г. ^
YEARDOC          Год даты выписки ^
YEARDOCS         Год даты выписки (сокр.) ^
MonthDoc         Месяц даты выписки ^
DayDoc           День даты выписки ^
AvizoType        Тип авизо ^
!
MainSch          счет взвиморасчетов ^
MainSub                      субсчет ^
MainMon          месяц года          ^
MainYear         год                 ^
MainYearS        год сокращенный     ^
!
BaseName         документ-основание   ^
NamePl1          содержание извещения ^
NamePl2                               ^
NamePl3                               ^
NamePl4                               ^
NamePl5                               ^
!
NdeSim           символ НДЕ:         ^
ValNRec          NRec валюты:        ^
ValSim           символ валюты:      ^
.begin
  CurSim := if((ParamSum = 0) or (ValNRec = 0), NdeSim, ValSim);
end.
!  плательщик
PlatName         Наименование ^
PlatTip          ООО, НТО, МП, и т.п. ^
PlatAddr         адрес организации ^
PlatOKPO         код по ОКПО ^
PlatTEL          телефоны + факсы организации ^
PlatUNN          ^
PlatKodState     код страны ^
PlatNameState    наименование страны ^
PlatKodCity      код города ^
PlatNameCity     наименование города ^
PlatTELCity      код телефона города ^
!  получатель
PolName          Наименование ^
PolTip           ООО, НТО, МП, и т.п. ^
PolAddr          адрес организации ^
PolOKPO          код по ОКПО ^
PolTEL           телефоны + факсы организации ^
PolUNN           ^
PolKodState      код страны ^
PolNameState     наименование страны ^
PolKodCity       код города ^
PolNameCity      наименование города ^
PolTELCity       код телефона города ^
.{
NppOper          номер п/п           ^
OborotNRec       номер записи        ^
NameOper         операция            ^
SodPr            содержание проводки ^
KorrSchet        корр. счет          ^
KorrSub             субсчет          ^
SumDeb           сумма по дебету     ^
SumKred                по кредиту    ^
ValDeb           в валюте по дебету: ^
ValKred                  по кредиту: ^
SchDeb                               ^
SchKred                              ^
AvizoDir                             ^
.begin
  case ParamText of
    0: CurText := string(NppOper) + '. ' + NamePl1 + ' ' + NamePl2 + ' ' + NamePl3 + ' ' +  NamePl4 + ' ' +  NamePl5;
    1: CurText := string(NppOper) + '. ' + Trim(NameOper) + if((NameOper = ''), '', if((SodPr = ''), '', ', ')) + Trim(SodPr);
  else CurText := string(NppOper) + '. ' + SodPr;
  end;
  CurSchet := KorrSchet + ' ' + KorrSub;
  CurDeb   := if((ParamSum = 0) or (ValNRec = 0), SumDeb,  ValDeb);
  CurKred  := if((ParamSum = 0) or (ValNRec = 0), SumKred, ValKred);
end.
.}
! итого
AllSumDeb                            ^
AllSumKred                           ^
AllValDeb                            ^
AllValKred                           ^
.begin
  CurAllDeb  := if((ParamSum = 0) or (ValNRec = 0), AllSumDeb,  AllValDeb);
  CurAllKred := if((ParamSum = 0) or (ValNRec = 0), AllSumKred, AllValKred);
end.

koldoc           кол. документов     ^
.if DelimiterAvizo
---------------------------------------------------------------------
.end
page_symb ^
.}

.endform

.linkform 'AvizoIsh_01' prototype is 'Avizo'
.group 'Исходящее авизо'
.nameinlist 'Авизо (суммы в НДЕ или валюте)'
.fields
PlatName
PolName PolNameCity
NoDOK DatVip2
MainSch + if(MainSub <> '','/' + MainSub,'') MainMon MainYear
BaseName
CurSim CurSim
CurText CurSchet
iExcelFormat.DoubleToStrFormatNotNul(CurDeb, sFormat)
iExcelFormat.DoubleToStrFormatNotNul(CurKred, sFormat)
iExcelFormat.DoubleToStrFormatNotNul(CurAllDeb, sFormat)
iExcelFormat.DoubleToStrFormatNotNul(CurAllKred, sFormat)
PlatNameCity + ' ' + PlatAddr
koldoc
page_symb
.endfields

.{
 И
   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    БКому Б @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ гор. @@@@@@@@@@@@@@@
    БИЗВЕЩЕНИЕ Б №  Б^ Б от  Б^ Б г. о произведенных записях
   По счету взаиморасчетов  Б^ Б в  Б^ Б месяце  Б^ Б года.
   Основание @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Ш
 ┌──────────────────────────────────────────────────────────────────────────────────┬───────────────────┐
 │                           БПроизведена запись Б                                      │      БЗаписать Б      │
 │                                                                                  │Дата        №      │
 ├───────────────────────────────────────┬────────┬────────────────┬────────────────┼─────────┬─────────┤
 │                                       │Корр.   │     Дебет      │     Кредит     │  Дебет  │  Кредит │
 │                ТЕКСТ                  │счет    ├────────────────┼────────────────┼─────────┼─────────┤
 │                                       │        │сумма в @@@@@@@@│сумма в @@@@@@@@│  счет   │  счет   │
 ├───────────────────────────────────────┼────────┼────────────────┼────────────────┼─────────┼─────────┤
.{
 │ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ │ Б@~@@@@@@ Б│ &'#&&&&&&&&&&& │ &'#&&&&&&&&&&& │         │         │
.}
 ├───────────────────────────────────────┼────────┼────────────────┼────────────────┼─────────┼─────────┤
 │  БИтого Б                                 │        │  Б&'#&&&&&&&&&&& Б │  Б&'#&&&&&&&&&&& Б │         │         │
 └───────────────────────────────────────┴────────┴────────────────┴────────────────┴─────────┴─────────┘
 Р И
   Принятие на баланс просим подтвердить.
   Извещение с подписью главного бухгалтера и печатью выслать
   по адресу : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

   Приложение :  Б^ Б документа
                                 Подпись _____________    Подпись _____________
 И

.if DelimiterAvizo
 -----------------------------------------------------------------


.end
^
.}
.endform

.linkform 'AvizoIsh_02' prototype is 'Avizo'
.group 'Исходящее авизо 2'
.nameinlist 'Авизо (суммы в НДЕ и валюте)'
.fields
PlatName
PolName PolNameCity
NoDOK DatVip2
MainSch + if(MainSub <> '','/' + MainSub,'') MainMon MainYear
BaseName
ValSim NdeSim ValSim NdeSim
CurText CurSchet
iExcelFormat.DoubleToStrFormatNotNul(ValDeb, sFormat)
iExcelFormat.DoubleToStrFormatNotNul(SumDeb, sFormat)
iExcelFormat.DoubleToStrFormatNotNul(ValKred, sFormat)
iExcelFormat.DoubleToStrFormatNotNul(SumKred, sFormat)
iExcelFormat.DoubleToStrFormatNotNul(AllValDeb, sFormat)
iExcelFormat.DoubleToStrFormatNotNul(AllSumDeb, sFormat)
iExcelFormat.DoubleToStrFormatNotNul(AllValKred, sFormat)
iExcelFormat.DoubleToStrFormatNotNul(AllSumKred, sFormat)
PlatNameCity + ' ' + PlatAddr
koldoc
page_symb
.endfields

.{
 И
   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    БКому Б @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ гор. @@@@@@@@@@@@@@@
    БИЗВЕЩЕНИЕ Б №  Б^ Б от  Б^ Б г. о произведенных записях
   По счету взаиморасчетов  Б^ Б в  Б^ Б месяце  Б^ Б года.
   Основание @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Р
 ┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┬───────────────────┐
 │                                             БПроизведена запись Б                                                      │      БЗаписать Б      │
 │                                                                                                                    │Дата        №      │
 ├───────────────────────────────────────┬────────┬─────────────────────────────────┬─────────────────────────────────┼─────────┬─────────┤
 │                                       │Корр.   │              Дебет              │             Кредит              │  Дебет  │  Кредит │
 │                ТЕКСТ                  │счет    ├────────────────┬────────────────┼────────────────┬────────────────┼─────────┼─────────┤
 │                                       │        │сумма в @@@@@@@@│сумма в @@@@@@@@│сумма в @@@@@@@@│сумма в @@@@@@@@│  счет   │  счет   │
 ├───────────────────────────────────────┼────────┼────────────────┼────────────────┼────────────────┼────────────────┼─────────┼─────────┤
.{
 │ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ │ Б@~@@@@@@ Б│ &'#&&&&&&&&&&& │ &'#&&&&&&&&&&& │ &'#&&&&&&&&&&& │ &'#&&&&&&&&&&& │         │         │
.}
 ├───────────────────────────────────────┼────────┼────────────────┼────────────────┼────────────────┼────────────────┼─────────┼─────────┤
 │  БИтого Б                                 │        │  Б&'#&&&&&&&&&&& Б │  Б&'#&&&&&&&&&&& Б │  Б&'#&&&&&&&&&&& Б │  Б&'#&&&&&&&&&&& Б │         │         │
 └───────────────────────────────────────┴────────┴────────────────┴────────────────┴────────────────┴────────────────┴─────────┴─────────┘
 Ш И
   Принятие на баланс просим подтвердить.
   Извещение с подписью главного бухгалтера и печатью выслать
   по адресу : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

   Приложение :  Б^ Б документа
                                 Подпись _____________    Подпись _____________
 И

.if DelimiterAvizo
 -----------------------------------------------------------------


.end
^
.}
.endform
