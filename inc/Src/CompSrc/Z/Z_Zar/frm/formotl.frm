/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,2000 корпорация ГАЛАКТИКА                    ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Заработная плата                                          ║
 ║ Версия        : 5.70                                                      ║
 ║ Назначение    : Отладочная информация по отчету в налоговую инспекцию     ║
 ║ Ответственный : Маслакова Татьяна Владимировна                            ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
#doc
Отладочная информация по отчету в налоговую инспекцию
#end
.form formotl
.DEFO LANDSCAPE
.DEFP PA4
.p 47
.hide
.fields
 Podr
 Mes God
 Tabn
 SumD1: double SumD2: double SumD3: double SumD4: double
 SumD5: double SumD6: double SumD7: double SumD8: double SumD9: double
 SumV1: double SumV2: double SumV3: double SumV4: double SumV5: double
 SumS1: double SumS2: double
 SumOblag: double SumOblagDop: double SumOblagMV: double
 SumN1: double SumN2: double SumN3: double SumN4: double
.endfields
 ^
 ^^
.{
 ^
 ^^^^^^^^^
 ^^^^^
 ^^
 ^^^
 ^^^^
.}
.endform
!
!
!
.Linkform 'formotl_01' Prototype is 'formotl'
.Set Filler ='-'
.nameinlist 'Полная форма свода'
.DEFO LANDSCAPE
.DEFP PA4
.var
 AllSumD1, AllSumD2, AllSumD3, AllSumD4, AllSumD5, AllSumD6, AllSumD7, AllSumD8, AllSumD9: double
 AllSumV1, AllSumV2, AllSumV3, AllSumV4, AllSumV5: double
 AllSumS1, AllSumS2,
 AllSumOblag, AllSumOblagDop, AllSumOblagMV,
 AllSumN1, AllSumN2, AllSumN3, AllSumN4: double
.endvar
.fields
 Podr
 Mes God
 Tabn
 SumD1 SumD2 SumD3 SumD4 SumD5 SumD6 SumD7 SumD8 SumD9
 SumV1 SumV2 SumV3 SumV4 SumV5
 SumS1 SumS2
 SumOblag SumOblagDop SumOblagMV
 SumN1 SumN2 SumN3 SumN4
 AllSumD1 AllSumD2 AllSumD3 AllSumD4 AllSumD5 AllSumD6 AllSumD7 AllSumD8 AllSumD9
 AllSumV1 AllSumV2 AllSumV3 AllSumV4 AllSumV5
 AllSumS1 AllSumS2
 AllSumOblag AllSumOblagDop AllSumOblagMV
 AllSumN1 AllSumN2 AllSumN3 AllSumN4
.endfields
.begin
 AllSumD1:=0; AllSumD2:=0; AllSumD3:=0; AllSumD4:=0;
 AllSumD5:=0; AllSumD6:=0; AllSumD7:=0; AllSumD8:=0; AllSumD9:=0;
 AllSumV1:=0; AllSumV2:=0; AllSumV3:=0; AllSumV4:=0; AllSumV5:=0;
 AllSumS1:=0; AllSumS2:=0;
 AllSumOblag:=0; AllSumOblagMV:=0; AllSumOblagDop:=0;
 AllSumN1:=0; AllSumN2:=0; AllSumN3:=0; AllSumN4:=0;
end.

 Ш Подразделение  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

                                   Суммы по работникам для формирования отчета в налоговую инспекцию
                                                          за ^ ^
┌───────────┬────────────────────────────────────────────────────────────────────────────────────────────┬─────────────────────────────────────────────┬────────────────┬────────────┬────────────┬────────────┬───────────────────────────────────────┐
│           │                                               Доход                                        │                   Вычеты                    │    Скидки      │  Облага-   │  Облага-   │  Облага-   │                 Налоги                │
│ Табельный ├────────────┬─────────┬──────────┬──────────┬──────────┬────────┬───────────────────────────┼───────┬───────┬─────────────────┬───────────┼────────┬───────┤  гаемая    │  гаемая    │  гаемая    ├───────────────────┬───────────────────┤
│  номер    │  основной  │дополни- │ неначис- │материаль-│материаль-│валовый │по прежнему месту работы   │необла-│необла-│       в ПФ      │  суммы,   │ льготи-│льготи-│  подо-     │  подо-     │  подо-     │        в ФБ       │       в БС        │
│           │            │тельный  │ ляемый   │ная помощь│ная выгода│доход,  ├────────┬────────┬─────────┤гаемый │гаемый ├────────┬────────│  не обл.  │ руемая │руемые │  ходным    │  ходным    │  ходным    ├─────────┬─────────┼─────────┬─────────┤
│           │            │         │ доход,   │          │          │не обла-│ всего  │ в т.ч. │в т.ч.   │минимум│минимум│  с     │с допол-│  налогом  │ матери-│подарки│  налогом   │  налогом   │  налогом   │с дохода │с дохода,│с дохода │с дохода,│
│           │            │         │ облага-  │          │          │гаемый  │        │ дополн.│матвыгода│на ра- │на иж- │ основ- │полни-  │ (н-р, на  │ альная │       │  сумма     │  сумма     │  сумма     │по преж- │получен- │по преж- │получен- │
│           │            │         │  емый    │          │          │налогом │        │        │         │ботника│дивен- │ ного   │тельного│  стр-во   │ помощь │       │ основного  │дополнитель-│ матвыгоды  │нему мес-│ного на  │нему мес-│ного на  │
│           │            │         │ налогом  │          │          │        │        │        │         │       │цев    │ дохода │дохода  │  жилья)   │        │       │  дохода    │ного дохода │            │ту работы│предпр.  │ту работы│предпр.  │
├───────────┼────────────┼─────────┼──────────┼──────────┼──────────┼────────┼────────┼────────┼─────────┼───────┼───────┼────────┼────────┼───────────┼────────┼───────┼────────────┼────────────┼────────────┼─────────┼─────────┼─────────┼─────────┤ Ш
.{ Ш
.begin
 AllSumD1:=AllSumD1+SumD1; AllSumD2:=AllSumD2+SumD2;
 AllSumD3:=AllSumD3+SumD3; AllSumD4:=AllSumD4+SumD4;
 AllSumD5:=AllSumD5+SumD5; AllSumD6:=AllSumD6+SumD6;
 AllSumD7:=AllSumD7+SumD7; AllSumD8:=AllSumD8+SumD8;
 AllSumD9:=AllSumD9+SumD9;
 AllSumV1:=AllSumV1+SumV1; AllSumV2:=AllSumV2+SumV2;
 AllSumV3:=AllSumV3+SumV3; AllSumV4:=AllSumV4+SumV4;
 AllSumV5:=AllSumV5+SumV5;
 AllSumS1:=AllSumS1+SumS1; AllSumS2:=AllSumS2+SumS2;
 AllSumOblag   :=AllSumOblag+SumOblag;
 AllSumOblagMV :=AllSumOblagMV+SumOblagMV;
 AllSumOblagDop:=AllSumOblagDop+SumOblagDop;
 AllSumN1:=AllSumN1+SumN1; AllSumN2:=AllSumN2+SumN2;
 AllSumN3:=AllSumN3+SumN3; AllSumN4:=AllSumN4+SumN4;
end.
│&&&&&&&&&&&│&#&&&&&&&&&&│&#&&&&&&&│&#&&&&&&&&│&#&&&&&&&&│&#&&&&&&&&│&#&&&&&&│&#&&&&&&│&#&&&&&&│&#&&&&&&&│&#&&&&&│&#&&&&&│&#&&&&&&│&#&&&&&&│&#&&&&&&&&&│&#&&&&&&│&#&&&&&│&#&&&&&&&&&&│&#&&&&&&&&&&│&#&&&&&&&&&&│&#&&&&&&&│&#&&&&&&&│&#&&&&&&&│&#&&&&&&&│ Ш
.}
 Ш├───────────┼────────────┼─────────┼──────────┼──────────┼──────────┼────────┼────────┼────────┼─────────┼───────┼───────┼────────┼────────┼───────────┼────────┼───────┼────────────┼────────────┼────────────┼─────────┼─────────┼─────────┼─────────┤ Ш
 Ш│  Итого    │&&&&&&&&&.&&│&&&&&&.&&│&&&&&&&.&&│&&&&&&&.&&│&&&&&&&.&&│&&&&&.&&│&&&&&.&&│&&&&&.&&│&&&&&&.&&│&&&&.&&│&&&&.&&│&&&&&.&&│&&&&&.&&│&&&&&&&&.&&│&&&&&.&&│&&&&.&&│&&&&&&&&&.&&│&&&&&&&&&.&&│&&&&&&&&&.&&│&&&&&&.&&│&&&&&&.&&│&&&&&&.&&│&&&&&&.&&│ Ш
 Ш└───────────┴────────────┴─────────┴──────────┴──────────┴──────────┴────────┴────────┴────────┴─────────┴───────┴───────┴────────┴────────┴───────────┴────────┴───────┴────────────┴────────────┴────────────┴─────────┴─────────┴─────────┴─────────┘ Ш
.endform
