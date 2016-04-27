/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,01 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Планирование                                              ║
 ║ Версия        : 7.10                                                      ║
 ║ Назначение    : Формирование исходящих заявок. Константы настройки        ║
 ║ Ответственный : Барановский Алексей Леонидович (Aleksis)                  ║
 ║ Параметры     : Есть                                                      ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
Const
//=======================================================================
// 'КОНСТАНТЫ-ЗНАЧЕНИЯ'
//-----------------------------------------------------------------------
 //'методы
 methFixValue        = Word(0);  //'значение не менять !!!
 methFromVid         = Word(1);
 methDocVal          = Word(2);
 methFromDocHdr      = Word(3);
 methFromDocSpec     = Word(4);
 methFromDocPos      = Word(5);
 methCurDate         = Word(6);

 //'дополнительно
 //'нет уточнения
 methNullExt         = Word(0);  //'значение не менять !!!

 //'представление
 methFromVidExt1     = Word(1);
 methFromVidExt2     = Word(2);
 methFromVidExt3     = Word(3);
 methFromVidExt4     = Word(4);
 methFromVidExt5     = Word(5);

 //'заголовок документа
 methFromDocHdrExt1  = Word(100);
 methFromDocHdrExt2  = Word(101);
 methFromDocHdrExt3  = Word(102);
 methFromDocHdrExt4  = Word(103);

 //'спецификация документа
 methFromDocSpecExt1 = Word(200);
 methFromDocSpecExt2 = Word(201);
 methFromDocSpecExt3 = Word(202);
 methFromDocSpecExt4 = Word(203);
 methFromDocSpecExt5 = Word(204);
 methFromDocSpecExt6 = Word(205);

 //'позиция документа
 methFromDocPosExt1  = Word(300);
 methFromDocPosExt2  = Word(301);
 methFromDocPosExt3  = Word(302);
 methFromDocPosExt4  = Word(303);
 methFromDocPosExt5  = Word(304);
 methFromDocPosExt6  = Word(305);

//=======================================================================
// 'КОНСТАНТЫ-НАИМЕНОВАНИЯ'
//-----------------------------------------------------------------------
 //'методы
 methFixValue_Name         : String = 'фикс.значение';
 methFromVid_Name          : String = 'представление';
 methDocVal_Name           : String = 'валюта док-та';
 methFromDocHdr_Name       : String = 'заголовок док-та';
 methFromDocSpec_Name      : String = 'спецификация док-та';
 methFromDocPos_Name       : String = 'позиция док-та';
 methCurDate_Name          : String = 'текущая дата';

 //'дополнительно
 //'нет уточнения
 methNullExt_Name          : String = 'нет';

 //'представление
 methFromVidExt1_Name      : String = 'начало периода';
 methFromVidExt2_Name      : String = 'окончание периода';
 methFromVidExt3_Name      : String = 'окончание предыдущего периода';
 methFromVidExt4_Name      : String = 'начало следующего периода';
 methFromVidExt5_Name      : String = 'по графику';

 //'заголовок документа
 methFromDocHdrExt1_Name   : String = 'аналитика - начало периода';
 methFromDocHdrExt2_Name   : String = 'аналитика - окончание периода';
 methFromDocHdrExt3_Name   : String = 'аналитика - окончание предыдущего периода';
 methFromDocHdrExt4_Name   : String = 'аналитика - начало следующего периода';
 methFromDocHdrExt5_Name   : String = 'аналитика';

 //'спецификация документа
 methFromDocSpecExt1_Name   : String = 'аналитика - начало периода';
 methFromDocSpecExt2_Name   : String = 'аналитика - окончание периода';
 methFromDocSpecExt3_Name   : String = 'аналитика - окончание предыдущего периода';
 methFromDocSpecExt4_Name   : String = 'аналитика - начало следующего периода';
 methFromDocSpecExt5_Name   : String = 'аналитика';
 methFromDocSpecExt6_Name   : String = 'дата начала';
 methFromDocSpecExt7_Name   : String = 'дата окончания';

 //'позиция документа
 methFromDocPosExt1_Name   : String = 'аналитика - начало периода';
 methFromDocPosExt2_Name   : String = 'аналитика - окончание периода';
 methFromDocPosExt3_Name   : String = 'аналитика - окончание предыдущего периода';
 methFromDocPosExt4_Name   : String = 'аналитика - начало следующего периода';
 methFromDocPosExt5_Name   : String = 'дата поставки';
 methFromDocPosExt6_Name   : String = 'дата закупки';
 methFromDocPosExt7_Name   : String = 'дата заказа';
 methFromDocPosExt8_Name   : String = 'дата обеспечения';
 methFromDocPosExt9_Name   : String = 'дата запуска';
 methFromDocPosExt10_Name  : String = 'дата выпуска';
 methFromDocPosExt11_Name  : String = 'дата отгрузки';
 methFromDocPosExt12_Name  : String = 'дата приема';
 methFromDocPosExt13_Name  : String = 'дата исполнения';
 methFromDocPosExt14_Name  : String = 'аналитика';
End