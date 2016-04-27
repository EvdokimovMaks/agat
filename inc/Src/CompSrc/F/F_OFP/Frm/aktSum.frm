//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - модуль "Платежный календарь"
// Отчеты - Финансовое обязательство
//------------------------------------------------------------------------------

#doc
Отчеты - Сводное финансовое обязательство (прототип).<br>
#end
.set name='AktSum'
.hide
.Fields
  AktSum_NRec
  AktSum_desgr              // Группа дескрипторов
  AktSum_descr              // Дескриптор менеджера
  AktSum_dInput             // Дата создания документа
  AktSum_NoDoc              // Номер документа

  AktSum_fGroup             // Группа ФО
  AktSum_Name               // Наименование
  AktSum_dDoc               // Планируемая дата погашения
  AktSumNotes_Name          // Статус
  AktSum_Direct             // Направление движения средств
  AktSum_fAktSumPrior       // Приоритет
  AktSum_Sum                // Сумма
  AktSum_valsAktSum         // Валюта
  AktSum_SumDebts           // Задолженность
  TuneBudget                // есть связь с бюджетом

  AktOfpNRec
  AktOFP_desgr              // Группа дескрипторов
  AktOFP_descr              // Дескриптор менеджера
  AktOFP_dInput             // Дата создания документа
  AktOFP_NoDoc              // Номер документа

  AktOFP_Group              // Группа ФОБ
  AktOFP_Status             // Статус документа
  AktOFP_TipMoney           // Тип по валюте
  AktOFP_Purpose            // Назначение
  AktOFP_Prior              // Приоритет исполнения
  AktOFP_dDoc               // Планируемая дата погашения обязательств
  AktOFP_dFirstLast         // Интервал

  AktDogovorName            // Договор
  DocReasonName             // Документ-основание
  AktOrg_Name               // Контрагент
  AktOFP_Direct             // Направление жвижения средств
  AktOFP_TypePlat           // Вид платежа
  AktOFP_Summa              // Сумма обязательств
  AktOFPValSimv             // Символ денежной единицы
  AktOFP_HozSumma           // Сумма фактического исполнения
  AktOFPValSimv1
  AktPodr_Name              // Центр учета
  AktCurator_FIO            // Куратор акта

  AktOFP_AktPerfPurpose1    // Назначение платежа
  AktOFP_AktPerfPurpose2    // Назначение платежа
  AktOFP_AktPerfPurpose3    // Назначение платежа
  AktOFP_AktPerfPurpose4    // Назначение платежа
  AktOFP_AktPerfPurpose5    // Назначение платежа
  AktOFP_AktPerfPurpose6    // Назначение платежа

  AktOfp_StBud_FpSpAttrNRec
  AktOfp_StBud_Name         // Наименование статьи
  AktOfp_StBud_CO_Name      // Наименование ЦО
  AktOfp_StBud_Proc         // Процент
  AktOfp_StBud_Sum          // Сумма
  AktOfp_StBud_cVal         // Валюта
  AktOfp_StBud_FreeSum      // Свободно
  AktOfp_StBud_StBudVal     // Валюта


.endFields
.{
^ ^ ^ ^ ^
^ ^ ^ ^ ^
^ ^ ^ ^ ^

.{ AktSum_AktOfp CheckEnter
^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^

.{ AktSum_AktOfp_StBud CheckEnter
^ ^ ^ ^ ^ ^ ^ ^
.}

.}

.}
.endform

#doc
Сводное финансовое обязательство.<br>
#end
.linkform 'AktSum01' prototype is 'AktSum'
.nameinlist 'Сводное финансовое обязательство'
.group 'Сводное финансовое обязательство'
.p 50
.defo portrait
.Fields
  AktSum_desgr            // Группа дескрипторов
  AktSum_descr            // Дескриптор менеджера
  AktSum_dInput           // Дата создания документа
  AktSum_NoDoc            // Номер документа

  AktSum_fGroup           // Группа ФО
  AktSum_Name             // Наименование
  AktSumNotes_Name        // Статус
  AktSum_fAktSumPrior     // Приоритет
  AktSum_Direct           // Направление движения средств
  AktSum_dDoc             // Планируемая дата погашения
  AktSum_Sum              // Сумма
  AktSum_valsAktSum       // Валюта
  AktSum_SumDebts         // Задолженность
  AktSum_valsAktSum       // Валюта

  AktOFP_NoDoc            // Номер документа
  AktOrg_Name             // Контрагент
  AktOFP_Status           // Статус документа
  AktOFP_Prior            // Приоритет исполнения
  AktOFP_Direct           // Направление жвижения средств
  AktOFP_dDoc             // Планируемая дата погашения обязательств
  AktOFP_Summa            // Сумма обязательств
  AktOFPValSimv           // Символ денежной единицы

  AktOfp_StBud_Name       // Наименование статьи
  AktOfp_StBud_CO_Name    // Наименование ЦО
  AktOfp_StBud_Proc       // Процент
  AktOfp_StBud_Sum        // Сумма
  AktOfp_StBud_cVal       // Валюта
  AktOfp_StBud_FreeSum    // Свободно
  AktOfp_StBud_StBudVal   // Валюта

.endFields
.{

                           БСВОДНОЕ ФИНАНСОВОЕ ОБЯЗАТЕЛЬСТВО Б


 Группа/дескриптор  Ж@@@@@@/@@@@@@@@@@ Ж Дата создания  Ж@@@@@@@@@@@ Ж Номер  Ж@@@@@@@@@@ Ж

 Группа ФОБ    Ж@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ж
 Наименование  Ж@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ж
 Статус        Ж@@@@@@@@@@@@@@@@@@@@@@ Ж Приоритет      Ж@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ж
 Направление   Ж@@@@@@@@@@@@@@@@@@@@@@ Ж Планируемая дата погашения  Ж@@@@@@@@@@@@@@@ Ж
 Сумма         Ж&'&&&&&&&&&&&&&&& @@@@ Ж Задолженность  Ж&'&&&&&&&&&&&&&&&&&&&&& @@@@ Ж

.{ AktSum_AktOfp CheckEnter
  БФинансовое обязательство Б                                      Номер  Ж@@@@@@@@@@ Ж
 Контрагент    Ж@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ж
 Статус        Ж@@@@@@@@@@@@@@@@@@@@@@ Ж Приоритет      Ж@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ж
 Направление   Ж@@@@@@@@@@@@@@@@@@@@@@ Ж Планируемая дата погашения  Ж@@@@@@@@@@@@@@@ Ж
 Сумма         Ж&'&&&&&&&&&&&&&&& @@@@ Ж

.{ AktSum_AktOfp_StBud CheckEnter
 Статья        Ж@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ж
 Центр ответственности  Ж@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ж
 Процент       Ж&'&&&% Ж          Сумма  Ж&'&&&&&&&&&&&&&&& @@@@ Ж
.{?internal; (TuneBudget = 1)
                           Свободно  Ж&'&&&&&&&&&&&&&&& @@@@ Ж
.}

.}
.}

.}
.endform
