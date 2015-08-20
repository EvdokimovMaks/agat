/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                 (c) 2000 - 3000 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Заработная плата                                          ║
 ║ Версия        : 5.71                                                      ║
 ║ Назначение    : Контрольный журнал по оплате труда                        ║
 ║ Ответственный : Гуз Максим Геннадьевич                                    ║
 ║ Параметры     : нет                                                       ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
#doc
Контрольный журнал по оплате труда
#end
.set name='kontrjur'
.hide
.fields
 Month
 Year
 Podr
 Razdel
 Soderj
 Monthtek
 SchetGr
 SubSchGr
 SchetD
 SubSchD
 SchetK
 SubSchK
 PodrBefore
 KAU_N
 KAUD_N_Name
 KAUK_N_Name
 PodrAfter
 DayChasStr
 SummaP
 KAU3Group
 ItogKAU3
 SummaKAU3
 DayChasKAU3
 KAU2Group
 ItogKAU2
 SummaKAU2
 DayChasKAU2
 KAU1Group
 ItogKAU1
 SummaKAU1
 DayChasKAU1
 SummaSubSch
 DayChasSubSch
 SummaSch
 DayChasSch
 SummaMonth
 DayChasMonth
 SummaSoder
 DayChasSoder
 SummaRazdel
 DayChasRazdel
.endfields
                Контрольный журнал по оплате труда
                       за ^ @@@@ г.
 ^
.{ kontrjur1
 Раздел ^
.{ kontrjur2
 Операция ^
.{ kontrjur3
 Месяц ^
.{ kontrjur4
счет ^
.{ kontrjur5
субсчет ^
.{ kontrjur6
.{ kontrjur7
.{ kontrjur8
.{ kontrjur9
╔═════════════════════════════════════════╤═══════════════════════════════════╗
║ Дебет Счет/Субсчет                      │ Счет/Субсчет               Кредит ║
║       @@@@/@@@@                         │ @@@@/@@@@                         ║
 ^
.{ kontrKAU
.if kontrKAU_N
║ КАУ @ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ │ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ║
.end
.}
╟─────────────────────────────────────────┴───────────────────────────────────╢
║ Подразделение @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Месяц          ║
║ Наименование                                                                ║
║ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   Сумма         &&&&&&&&&&&&&&&&.&& ║
╚═════════════════════════════════════════════════════════════════════════════╝
.}
.if kontrKAU_3
    Итого по КАУ @     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &&&&&&&&&&&&&.&&  ^
.end
.}
.if kontrKAU_2
   Итого по КАУ @     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &&&&&&&&&&&&&.&&  ^
.end
.}
.if kontrKAU_1
  Итого по КАУ @     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &&&&&&&&&&&&&.&&  ^
.end
.}
.if kontrSubSch
 Итого по Субсчету                                  &&&&&&&&&&&&&.&&  ^
.end
.}
.if kontrSchet
Итого по Счету                                     &&&&&&&&&&&&&.&&  ^
.end
.}
.if kontrMonth
Итого за                                           &&&&&&&&&&&&&.&&  ^
.end
.}
Итого                                              &&&&&&&&&&&&&.&&  ^
.}
Итого                                              &&&&&&&&&&&&&.&&  ^
.}
.endForm

.linkform 'kontrjur_01' prototype is 'kontrjur'
.group 'without_TXO'
.nameinlist'Контрольный журнал по оплате труда'
.fields
CommonFormHeader
.endfields
^
.fields
 Month
 Year
 Podr
 Razdel
 SchetD
 SubSchD
 SchetK
 SubSchK
 KAU_N
 KAUD_N_Name
 KAUK_N_Name
 PodrAfter
 Monthtek
 Soderj
 DayChasStr
 SummaP
 KAU3Group
 ItogKAU3
 SummaKAU3
 DayChasKAU3
 KAU2Group
 ItogKAU2
 SummaKAU2
 DayChasKAU2
 KAU1Group
 ItogKAU1
 SummaKAU1
 DayChasKAU1
 SubSchGr
 SummaSubSch
 DayChasSubSch
 SchetGr
 SummaSch
 DayChasSch
 Monthtek
 SummaMonth
 DayChasMonth
 Soderj
 SummaSoder
 DayChasSoder
 Razdel
 SummaRazdel
 DayChasRazdel
.endfields
                Контрольный журнал по оплате труда
                       за ^ @@@@ г.
 Подразделение:  Б^ Б
.{ kontrjur1
                       ^
──────────────────────────────────────────────────────────────────────────────
.{ kontrjur2
.{ kontrjur3
.{ kontrjur4
.{ kontrjur5
.{ kontrjur6
.{ kontrjur7
.{ kontrjur8
.{ kontrjur9
╔════════════════════════════════════════╤═══════════════════════════════════╗
║ Дебет Счет/Субсчет                     │ Счет/Субсчет               Кредит ║
║       @@@@/@@@@                        │ @@@@/@@@@                         ║
.{ kontrKAU
.if kontrKAU_N
║ КАУ @ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ │ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ║
.end
.}
╟────────────────────────────────────────┴───────────────────────────────────╢
║ Подразделение @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Месяц @@@@@@@@ ║
║ Наименование  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ║
║ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  Сумма         &&&&&&&&&&&&&&&&.&& ║
╚════════════════════════════════════════════════════════════════════════════╝
.}
.if kontrKAU_3
 Й    Итого по КАУ @ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&.&&  ^ Й
.end
.}
.if kontrKAU_2
 Й   Итого по КАУ @ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&.&&  ^ Й
.end
.}
.if kontrKAU_1
 Й  Итого по КАУ @ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&.&&  ^ Й
.end
.}
.if kontrSubSch
 Й Итого по Субсчету  @@@@                      &&&&&&&&&&&&&.&&  ^ Й
.end
.}
.if kontrSchet
 ЙИтого по Счету     @@@@                      &&&&&&&&&&&&&.&&  ^ Й
.end
.}
.if kontrMonth
 ЙИтого за @@@@@@@@@@ Й@@@@@@@@@@@@ Й              &&&&&&&&&&&&&.&&  ^ Й
.end
.}
 ЙИтого    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&.&&  ^ Й
.}
 ЙИтого    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&.&&  ^ Й
.}
.endForm

.linkform 'kontrjur_02' prototype is 'kontrjur'
.group 'without_TXO'
.nameinlist'Итоги по счетам и субсчетам'
.fields
CommonFormHeader
.endfields
^
.fields
 Month
 Year
 Podr
 Razdel
 SchetGr
 SubSchGr
 SummaSubSch
 DayChasSubSch
 SchetGr
 SummaSch
 DayChasSch
 Monthtek
 SummaMonth
 DayChasMonth
 Soderj
 SummaSoder
 DayChasSoder
 Razdel
 SummaRazdel
 DayChasRazdel
.endfields
                Контрольный журнал по оплате труда
                       за ^ @@@@ г.
 Подразделение:  Б^ Б
.{ kontrjur1
                       ^
─────────────────────────────────────────────────────────────────────
.{ kontrjur2
.{ kontrjur3
.{ kontrjur4
 Счет @@@@
.{ kontrjur5
.{ kontrjur6
.{ kontrjur7
.{ kontrjur8
.{ kontrjur9
.{ kontrKAU
.if kontrKAU_N
.end
.}
.}
.if kontrKAU_3
.end
.}
.if kontrKAU_2
.end
.}
.if kontrKAU_1
.end
.}
.if kontrSubSch
 Й Итого по Субсчету  @@@@                      &&&&&&&&&&&&&.&&  ^ Й
.end
.}
.if kontrSchet
 ЙИтого по Счету     @@@@                      &&&&&&&&&&&&&.&&  ^ Й
.end
.}
.if kontrMonth
 ЙИтого за @@@@@@@@@@@@@@@@@@@@                &&&&&&&&&&&&&.&&  ^ Й
.end
.}
 ЙИтого    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&.&&  ^ Й
.}
 ЙИтого    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&.&&  ^ Й
.}
.endForm

.linkform 'kontrjur_03' prototype is 'kontrjur'
.group 'without_TXO'
.nameinlist'Итоги по счетам, субсчетам и КАУ'
.fields
CommonFormHeader
.endfields
^
.fields
 Month
 Year
 Podr
 Razdel
 SchetGr
 KAU3Group
 ItogKAU3
 SummaKAU3
 DayChasKAU3
 KAU2Group
 ItogKAU2
 SummaKAU2
 DayChasKAU2
 KAU1Group
 ItogKAU1
 SummaKAU1
 DayChasKAU1
 SubSchGr
 SummaSubSch
 DayChasSubSch
 SchetGr
 SummaSch
 DayChasSch
 Monthtek
 SummaMonth
 DayChasMonth
 Soderj
 SummaSoder
 DayChasSoder
 Razdel
 SummaRazdel
 DayChasRazdel
.endfields
                Контрольный журнал по оплате труда
                       за ^ @@@@ г.
 Подразделение:  Б^ Б
.{ kontrjur1
                       ^
─────────────────────────────────────────────────────────────────────
.{ kontrjur2
.{ kontrjur3
.{ kontrjur4
 Счет @@@@
.{ kontrjur5
.{ kontrjur6
.{ kontrjur7
.{ kontrjur8
.{ kontrjur9
.{ kontrKAU
.if kontrKAU_N
.end
.}
.}
.if kontrKAU_3
 Й    Итого по КАУ @ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&.&&  ^ Й
.end
.}
.if kontrKAU_2
 Й   Итого по КАУ @ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&.&&  ^ Й
.end
.}
.if kontrKAU_1
 Й  Итого по КАУ @ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&.&&  ^ Й
.end
.}
.if kontrSubSch
 Й Итого по Субсчету  @@@@                      &&&&&&&&&&&&&.&&  ^ Й
.end
.}
.if kontrSchet
 ЙИтого по Счету     @@@@                      &&&&&&&&&&&&&.&&  ^ Й
.end
.}
.if kontrMonth
 ЙИтого за @@@@@@@@@@@@@@@@@@@@                &&&&&&&&&&&&&.&&  ^ Й
.end
.}
 ЙИтого    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&.&&  ^ Й
.}
 ЙИтого    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&.&&  ^ Й
.}
.endForm


.linkform 'kontrjur_04' prototype is 'kontrjur'
.group 'without_TXO'
.nameinlist'Контрольный журнал по оплате труда (табличная форма)'
.fields
CommonFormHeader
.endfields
^
.fields
 Month
 Year
 Podr
 Razdel
 Soderj
 Monthtek
 SchetD
 SubSchD
 SchetK
 SubSchK
 PodrBefore
 KAU_N
 KAUD_N_Name
 KAUK_N_Name
 SummaP
 DayChasStr
 KAU3Group
 ItogKAU3
 SummaKAU3
 DayChasKAU3
 KAU2Group
 ItogKAU2
 SummaKAU2
 DayChasKAU2
 KAU1Group
 ItogKAU1
 SummaKAU1
 DayChasKAU1
 SubSchGr
 SummaSubSch
 DayChasSubSch
 SchetGr
 SummaSch
 DayChasSch
 Monthtek
 SummaMonth
 DayChasMonth
 Soderj
 SummaSoder
 DayChasSoder
 Razdel
 SummaRazdel
 DayChasRazdel
.endfields
 Р                Контрольный журнал по оплате труда
                       за ^ @@@@ г.
 Подразделение:  Б^ Б
══════════════════════════════════════╦════════════════════════════════╦═══════════════════════════
               ДЕБЕТ                  ║               КРЕДИТ           ║ ПОДРАЗДЕЛЕНИЕ
──────┬───────┬───────────────────────╫──────┬───────┬─────────────────╫──────────┬────────────────
 СЧЕТ │СУБСЧЕТ│                       ║ СЧЕТ │СУБСЧЕТ│                 ║          │    СУММА
══════╪═══════╪═══════════════════════╬══════╪═══════╪═════════════════╬══════════╪════════════════ Р
.{ kontrjur1
 С @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   ║      │       │                 ║          │ С
.{ kontrjur2
 С   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   ║      │       │                 ║          │ С
.{ kontrjur3
 С     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   ║      │       │                 ║          │ С
.{ kontrjur4
.{ kontrjur5
.{ kontrjur6
.{ kontrjur7
.{ kontrjur8
.{ kontrjur9
 Р @@@@ │ @@@@  │                       ║ @@@@ │ @@@@  │                 ║ ^  Р
.{ kontrKAU
.if kontrKAU_N
 Р КАУ @ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ║ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ║          │ Р
.end
.}
 Р      │       │                       ║      │       │                 ║          │ &&&&&&&&&&&&&.&&  ^ Р
 Р──────┴───────┴───────────────────────╨──────┴───────┴─────────────────╨──────────┴───────────────── Р
.}
.if kontrKAU_3
 С    Итого по КАУ @ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                 &&&&&&&&&&&&&&&&.&&  ^ С
.end
.}
.if kontrKAU_2
 С   Итого по КАУ @ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                  &&&&&&&&&&&&&&&&.&&  ^ С
.end
.}
.if kontrKAU_1
 С  Итого по КАУ @ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                   &&&&&&&&&&&&&&&&.&&  ^ С
.end
.}
.if kontrSubSch
 С Итого по Субсчету  @@@@                                                         &&&&&&&&&&&&&&&&.&&  ^ С
.end
.}
.if kontrSchet
 СИтого по Счету     @@@@                                                          &&&&&&&&&&&&&&&&.&&  ^ С
.end
.}
.if kontrMonth
 СИтого за @@@@@@@@@@@@@@@@@@@@                                                    &&&&&&&&&&&&&&&&.&&  ^ С
.end
.}
 СИтого    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                     &&&&&&&&&&&&&&&&.&&  ^ С
.}
 СИтого    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                     &&&&&&&&&&&&&&&&.&&  ^ С
.}
.endForm

.linkform 'kontrjur_05' prototype is 'kontrjur'
.group 'with_TXO'
.nameinlist'Контрольный журнал по оплате труда (табличная форма)'
.fields
CommonFormHeader
.endfields
^
.fields
 Month
 Year
 Podr
 Razdel
 Soderj
 Monthtek
 SchetD
! SubSchD
! SchetK
! SubSchK
 PodrBefore
 KAU_N
 KAUD_N_Name
 KAUK_N_Name
 SummaP
 DayChasStr
 KAU3Group
 ItogKAU3
 SummaKAU3
 DayChasKAU3
 KAU2Group
 ItogKAU2
 SummaKAU2
 DayChasKAU2
 KAU1Group
 ItogKAU1
 SummaKAU1
 DayChasKAU1
! SubSchGr
! SummaSubSch
! DayChasSubSch
 SchetGr
 SummaSch
 DayChasSch
 Monthtek
 SummaMonth
 DayChasMonth
 Soderj
 SummaSoder
 DayChasSoder
 Razdel
 SummaRazdel
 DayChasRazdel
.endfields
 Р                Контрольный журнал по оплате труда
                       за ^ @@@@ г.
 Подразделение:  Б^ Б
══════════════════════════════════════╦════════════════════════════════╦═══════════════════════════
               ДЕБЕТ                  ║               КРЕДИТ           ║ ПОДРАЗДЕЛЕНИЕ
──────────────────────────────────────╫────────────────────────────────╫──────────┬────────────────
                                      ║                                ║          │    СУММА
══════════════════════════════════════╬════════════════════════════════╬══════════╪════════════════ Р
.{ kontrjur1
 С @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   ║      │       │                 ║          │ С
.{ kontrjur2
 С   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   ║      │       │                 ║          │ С
.{ kontrjur3
 С     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   ║      │       │                 ║          │ С
.{ kontrjur4
.{ kontrjur5
.{ kontrjur6
.{ kontrjur7
.{ kontrjur8
.{ kontrjur9
 С     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   ║      │       │                 ║ ^  С
! Р @@@@ │ @@@@  │                       ║ @@@@ │ @@@@  │                 ║ ^  Р
.{ kontrKAU
.if kontrKAU_N
 Р КАУ @ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ║ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ║          │ Р
.end
.}
 Р      │       │                       ║      │       │                 ║          │ &&&&&&&&&&&&&.&&  ^ Р
 Р──────┴───────┴───────────────────────╨──────┴───────┴─────────────────╨──────────┴───────────────── Р
.}
.if kontrKAU_3
 С    Итого по КАУ @ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                 &&&&&&&&&&&&&&&&.&&  ^ С
.end
.}
.if kontrKAU_2
 С   Итого по КАУ @ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                  &&&&&&&&&&&&&&&&.&&  ^ С
.end
.}
.if kontrKAU_1
 С  Итого по КАУ @ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                   &&&&&&&&&&&&&&&&.&&  ^ С
.end
.}
.if kontrSubSch
! С Итого по Субсчету  @@@@                                                         &&&&&&&&&&&&&&&&.&&  ^ С
.end
.}
.if kontrSchet
 СИтого по параметру @@@@@@@@@@@@@@@@@@@@@@@@@@@                                   &&&&&&&&&&&&&&&&.&&  ^ С
.end
.}
.if kontrMonth
 СИтого за @@@@@@@@@@@@@@@@@@@@                                                    &&&&&&&&&&&&&&&&.&&  ^ С
.end
.}
 СИтого    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                     &&&&&&&&&&&&&&&&.&&  ^ С
.}
 СИтого    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                     &&&&&&&&&&&&&&&&.&&  ^ С
.}
.endForm
