/*
 ╔══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) Корпорация ГАЛАКТИКА, 1996,98                    ║
 ║ Проект        : ГАЛАКТИКА                                                ║
 ║ Система       : Оперативный контур                                       ║
 ║ Версия        : 5.20                                                     ║
 ║ Назначение    : Отчет по реализации товара, взятого на консигнацию       ║
 ║ Ответственный : Скороход Димтрий Владимирович (SDV)                      ║
 ╚══════════════════════════════════════════════════════════════════════════╝
*/
#doc
Отчет по реализации товара, взятого на консигнацию
#end
.set name = 'conssell'
.hide
.if CONSSELL_SKLAD
.fields
  PodrName
.endfields
 ^
.end
.fields
  DateB DateE RubSign ValSign
.endfields
 ^ ^ ^ ^
.{ CheckEnter CONSSELL_PARTY_LOOP
.fields
  PartyName PartyValut
.endfields
 ^ ^
.{
.fields
  MCName MCEd
.endfields
 ^ ^
.{
.fields
  DateSell BaseNoDoc KolToSell RecipientD
  PriceR PriceV PriceP SummaR SummaV SummaP
.endfields
   ^  ^  ^  ^
   ^  ^  ^  ^  ^  ^
.}
.fields
  MC_Quantity  MC_Summa  MC_VSumma  MC_PcVal
.endfields
  ^  ^  ^  ^
.}
.fields
  Party_Quantity Party_Summa Party_VSumma Party_PcVal
.endfields
  ^  ^  ^  ^

.}
.endform

#doc
Руб-Вал
Отчет реализаций
#end
.linkform 'conssell_01' prototype is 'conssell'
.Group 'Руб-Вал'
.NameInList 'Отчет реализаций '
.fields
  CommonFormHeader
.endfields
^
.if CONSSELL_SKLAD
.fields
  DateB DateE PodrName
.endfields
            БОтчет по реализации с ^ по ^
         взятого на консигнацию товара для подразделения Б
 Б           Б@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.else
.fields
  DateB DateE
.endfields
            БОтчет по реализации с ^ по ^
                 взятого на консигнацию товара Б
.end
.fields
  RubSign ValSign RubSign ValSign
.endfields
 Р──────────┬───────────┬────────────┬──────────┬───────────┬───────────┬─────────────────┬─────────────────
   Дата   │ Документ  │ Количество │   Дата   │   Цена    │   Цена    │ Сумма  продажи  │ Сумма  продажи
  продажи │ основание │ проданного │  прихода │ в &&&&&&  │ в &&&&&&  │   в   &&&&&&    │   в   &&&&&&
──────────┴───────────┴────────────┴──────────┴───────────┴───────────┴─────────────────┴───────────────── Р
.{ CheckEnter CONSSELL_PARTY_LOOP
.fields
  PartyName
.endfields
 Р@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
.{
.fields
  MCName MCEd
.endfields
  Б^ Б( В^ В)
.{
.fields
  DateSell BaseNoDoc KolToSell RecipientD
  PriceR PriceV SummaR SummaV
.endfields
 Р@@@@@@@@@@ &&&&&&&&&&& &&&&&&&.&&&& @@@@@@@@@@ &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&&&&&&&.&& &'&&&&&&&&&&&&.&& Р
.}
.fields
  MC_Quantity  MC_Summa  MC_VSumma
.endfields
 С                       &&&&&&&.&&&&                                    &'&&&&&&&&&&&&.&& &'&&&&&&&&&&&&.&& С
.}
 Р────────────────────────────────────────────────────────────────────────────────────────────────────── Р
.fields
  Party_Quantity Party_Summa Party_VSumma
.endfields
 С                       &&&&&&&.&&&&                                    &'&&&&&&&&&&&&.&& &'&&&&&&&&&&&&.&& С

.}
.endform
#doc
Руб
Отчет реализаций
#end
.linkform 'conssell_02' prototype is 'conssell'
.Group 'Руб'
.NameInList 'Отчет реализаций '
.fields
  CommonFormHeader
.endfields
^
.if CONSSELL_SKLAD
.fields
  DateB DateE PodrName
.endfields
                Отчет по реализации с  Б^ Б по  Б^ Б
              взятого на консигнацию товара для подразделения
 Б               @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.else
.fields
  DateB DateE
.endfields
                Отчет по реализации с  Б^ Б по  Б^ Б
                      взятого на консигнацию товара
.end
.fields
  RubSign RubSign
.endfields
 И──────────┬───────────┬────────────┬──────────┬───────────┬───────────────── И
 И   Дата   │ Документ  │ Количество │   Дата   │   Цена    │ Сумма  продажи   И
 И  продажи │ основание │ проданного │  прихода │ в &&&&&&  │   в   &&&&&&     И
 И──────────┴───────────┴────────────┴──────────┴───────────┴───────────────── И
.{ CheckEnter CONSSELL_PARTY_LOOP
.fields
  PartyName
.endfields
 И@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
.{
.fields
  MCName MCEd
.endfields
  Б^ Б( В^ В)
.{
.fields
  DateSell BaseNoDoc KolToSell RecipientD
  PriceR SummaR
.endfields
 И@@@@@@@@@@ &&&&&&&&&&& &&&&&&&.&&&& @@@@@@@@@@ &'&&&&&&.&& &'&&&&&&&&&&&&.&& И
.}
.fields
  MC_Quantity  MC_Summa
.endfields
 Й                       &&&&&&&.&&&&                        &'&&&&&&&&&&&&.&& Й
.}
 И──────────────────────────────────────────────────────────────────────── И
.fields
  Party_Quantity Party_Summa
.endfields
 Й                       &&&&&&&.&&&&                        &'&&&&&&&&&&&&.&& Й

.}
.endform
#doc
Вал
Отчет реализаций
#end
.linkform 'conssell_03' prototype is 'conssell'
.Group 'Вал'
.NameInList 'Отчет реализаций '
.fields
  CommonFormHeader
.endfields
^
.if CONSSELL_SKLAD
.fields
  DateB DateE PodrName
.endfields
                Отчет по реализации с  Б^ Б по  Б^ Б
              взятого на консигнацию товара для подразделения
 Б               @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.else
.fields
  DateB DateE
.endfields
                Отчет по реализации с  Б^ Б по  Б^ Б
                      взятого на консигнацию товара
.end
.fields
  ValSign ValSign
.endfields
 И──────────┬───────────┬────────────┬──────────┬───────────┬───────────────── И
 И   Дата   │ Документ  │ Количество │   Дата   │   Цена    │ Сумма  продажи   И
 И  продажи │ основание │ проданного │  прихода │ в &&&&&&  │   в   &&&&&&     И
 И──────────┴───────────┴────────────┴──────────┴───────────┴───────────────── И
.{ CheckEnter CONSSELL_PARTY_LOOP
.fields
  PartyName
.endfields
 И@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
.{
.fields
  MCName MCEd
.endfields
  Б^ Б( В^ В)
.{
.fields
  DateSell BaseNoDoc KolToSell RecipientD
  PriceV SummaV
.endfields
 И@@@@@@@@@@ &&&&&&&&&&& &&&&&&&.&&&& @@@@@@@@@@ &'&&&&&&.&& &'&&&&&&&&&&&&.&& И
.}
.fields
  MC_Quantity  MC_VSumma
.endfields
 Й                       &&&&&&&.&&&&                        &'&&&&&&&&&&&&.&& Й
.}
 И──────────────────────────────────────────────────────────────────────── И
.fields
  Party_Quantity Party_VSumma
.endfields
 Й                       &&&&&&&.&&&&                        &'&&&&&&&&&&&&.&& Й

.}
.endform
!
!
!
!***************************************************************************
!                                 для партий
!***************************************************************************
!
!
!
!
#doc
Руб-Вал
Отчет реализаций для партии
#end
.linkform 'conssell_04' prototype is 'conssell'
.Group 'Руб-Вал'
.NameInList 'Отчет реализаций для партии '
.fields
  CommonFormHeader
.endfields
 ^
.if CONSSELL_SKLAD
.fields
  DateB DateE
  PodrName
.endfields
      Отчет по реализации с  Б^ Б по  Б^ Б
    взятого на консигнацию товара для подразделения
 Б     @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.else
.fields
  DateB DateE
.endfields
      Отчет по реализации с  Б^ Б по  Б^ Б
            взятого на консигнацию товара
.end
.fields
  RubSign RubSign
.endfields
 Р──────────┬───────────┬────────────┬──────────┬───────────┬───────────┬─────────────────┬─────────────────
   Дата   │ Документ  │ Количество │   Дата   │   Цена    │   Цена    │ Сумма  продажи  │ Сумма  продажи
  продажи │ основание │ проданного │  прихода │ в &&&&&&  │           │   в   &&&&&&    │
──────────┴───────────┴────────────┴──────────┴───────────┴───────────┴─────────────────┴───────────────── Р
.{ CheckEnter CONSSELL_PARTY_LOOP
.fields
  PartyName PartyValut
.endfields
 Р&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& (^) Р
.{
.fields
  MCName MCEd
.endfields
 Р ^(^) Р
.{
.fields
  DateSell BaseNoDoc KolToSell RecipientD
  PriceR PriceP SummaR SummaP
.endfields
 Р@@@@@@@@@@ &&&&&&&&&&& &&&&&&&.&&&& @@@@@@@@@@ &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&&&&&&&.&& &'&&&&&&&&&&&&.&& Р
.}
.fields
  MC_Quantity  MC_Summa  MC_PcVal
.endfields
 С                       &&&&&&&.&&&&                                    &'&&&&&&&&&&&&.&& &'&&&&&&&&&&&&.&& С
.}
 Р────────────────────────────────────────────────────────────────────────────────────────────────────── Р
.fields
  Party_Quantity Party_Summa Party_PcVal
.endfields
 С                       &&&&&&&.&&&&                                    &'&&&&&&&&&&&&.&& &'&&&&&&&&&&&&.&& С

.}
.endform
!
!
!
#doc
Руб
Отчет реализаций для партии
#end
.linkform 'conssell_05' prototype is 'conssell'
.Group 'Руб'
.NameInList 'Отчет реализаций для партии '
.fields
  CommonFormHeader
.endfields
 ^
.if CONSSELL_SKLAD
.fields
  DateB DateE
  PodrName
.endfields
                Отчет по реализации с  Б^ Б по  Б^ Б
              взятого на консигнацию товара для подразделения
 Б               @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.else
.fields
  DateB DateE
.endfields
                Отчет по реализации с  Б^ Б по  Б^ Б
                      взятого на консигнацию товара
.end
.fields
  RubSign RubSign
.endfields
 И──────────┬───────────┬────────────┬──────────┬───────────┬───────────────── И
 И   Дата   │ Документ  │ Количество │   Дата   │   Цена    │ Сумма  продажи   И
 И  продажи │ основание │ проданного │  прихода │ в &&&&&&  │   в   &&&&&&     И
 И──────────┴───────────┴────────────┴──────────┴───────────┴───────────────── И
.{ CheckEnter CONSSELL_PARTY_LOOP
.fields
  PartyName
.endfields
@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
.fields
  MCName MCEd
.endfields
  Б^ Б( В^ В)
.{
.fields
  DateSell BaseNoDoc KolToSell RecipientD
  PriceR SummaR
.endfields
 И@@@@@@@@@@ &&&&&&&&&&& &&&&&&&.&&&& @@@@@@@@@@ &'&&&&&&.&& &'&&&&&&&&&&&&.&& И
.}
.fields
  MC_Quantity  MC_Summa
.endfields
 Й                       &&&&&&&.&&&&                        &'&&&&&&&&&&&&.&& Й
.}
 И──────────────────────────────────────────────────────────────────────── И
.fields
  Party_Quantity Party_Summa
.endfields
 Й                       &&&&&&&.&&&&                        &'&&&&&&&&&&&&.&& Й

.}
.endform
#doc
Вал
Отчет реализаций для партии
#end
.linkform 'conssell_06' prototype is 'conssell'
.Group 'Вал'
.NameInList 'Отчет реализаций для партии '
.fields
  CommonFormHeader
.endfields
 ^
.if CONSSELL_SKLAD
.fields
  DateB DateE
  PodrName
.endfields
                Отчет по реализации с  Б^ Б по  Б^ Б
              взятого на консигнацию товара для подразделения
 Б               @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.else
.fields
  DateB DateE
.endfields
                Отчет по реализации с  Б^ Б по  Б^ Б
                      взятого на консигнацию товара
.end
 И──────────┬───────────┬────────────┬──────────┬───────────┬───────────────── И
 И   Дата   │ Документ  │ Количество │   Дата   │   Цена    │ Сумма  продажи И
 И  продажи │ основание │ проданного │  прихода │           │ И
 И──────────┴───────────┴────────────┴──────────┴───────────┴───────────────── И
.{ CheckEnter CONSSELL_PARTY_LOOP
.fields
  PartyName PartyValut
.endfields
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@( В^ В)
.{
.fields
  MCName MCEd
.endfields
  Б^ Б( В^ В)
.{
.fields
  DateSell BaseNoDoc KolToSell RecipientD
  PriceP SummaP
.endfields
 И@@@@@@@@@@ &&&&&&&&&&& &&&&&&&.&&&& @@@@@@@@@@ &'&&&&&&.&& &'&&&&&&&&&&&&.&& И
.}
.fields
  MC_Quantity   MC_PcVal
.endfields
 Й                       &&&&&&&.&&&&                        &'&&&&&&&&&&&&.&& Й
.}
 И──────────────────────────────────────────────────────────────────────── И
.fields
  Party_Quantity Party_PcVal
.endfields
 Й                       &&&&&&&.&&&&                        &'&&&&&&&&&&&&.&& Й

.}
.endform
