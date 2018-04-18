//------------------------------------------------------------------------------------------------------------
//                                                                                    (c) корпорация Галактика
// Галактика 9.1
// Значения полей ЭСЧФ
//------------------------------------------------------------------------------------------------------------
#ifndef _ValueInvoice_inc_
#define _ValueInvoice_inc_

const
  // invoiceDocType - Тип ЭСЧФ
  sf_ORIGINAL         = 0; // Исходный счет-фактура
  sf_ADDITIONAL       = 1; // Дополнительный
  sf_FIXED            = 2; // Исправленный
  sf_ADD_NO_REFERENCE = 4; // Дополнительный без ссылки на исходный

  sf_sORIGINAL         = 'ORIGINAL';         // Исходный счет-фактура
  sf_sADDITIONAL       = 'ADDITIONAL';       // Дополнительный
  sf_sFIXED            = 'FIXED';            // Исправленный
  sf_sADD_NO_REFERENCE = 'ADD_NO_REFERENCE'; // Дополнительный без ссылки на исходный

  // providerStatus - статус поставщика
  pr_SELLER                  = 0; // Продавец
  pr_CONSIGNOR               = 1; // Комитент
  pr_COMMISSIONAIRE          = 2; // Комиссионер
  pr_TAX_DEDUCTION_PAYER     = 3; // Плательщик, передающий налоговые вычеты
  pr_TRUSTEE                 = 4; // Доверительный управляющий
  pr_FOREIGN_ORGANIZATION    = 5; // Иностранная организация
  pr_AGENT                   = 6; // Посредник
  pr_DEVELOPER               = 7; // Заказчик (застройщик)
  pr_TURNOVERS_ON_SALE_PAYER = 8; // Плательщик, передающий обороты по реализации

  // recipientStatus - статус получателя
  re_CUSTOMER                    = 0; // Покупатель
  re_CONSUMER                    = 1; // Потребитель
  re_CONSIGNOR                   = 2; // Комитент
  re_COMMISSIONAIRE              = 3; // Комиссионер
  re_TAX_DEDUCTION_RECIPIENT     = 4; // Покупатель, получающий налоговые вычеты
  re_FOREIGN_ORGANIZATION_BUYER  = 5; // Покупатель объектов у иностранной организации
  re_TURNOVERS_ON_SALE_RECIPIENT = 6; // Плательщик, получающий обороты по реализации

  // requisites provider/recipient
  rq_dependentPerson     = 1;
  rq_residentsOfOffshore = 2;
  rq_specialDealGoods    = 4;
  rq_bigCompany          = 8;

  // rateType - тип НДС
  rt_sDECIMAL    = 'DECIMAL';    // для фиксированных ставок (кроме 0%)
  rt_sZERO       = 'ZERO';       // для ставки 0%
  rt_sNO_VAT     = 'NO_VAT';     // для значения <Без НДС>
  rt_sCALCULATED = 'CALCULATED'; // расчетная ставка

  // descriptionType Тип дополнительных данных
  dt_DEDUCTION_IN_FULL = 1; // Вычет в полном объеме
  dt_VAT_EXEMPTION     = 2; // Освобождение от НДС
  dt_OUTSIDE_RB        = 4; // Реализация за пределами Республики Беларусь
  dt_IMPORT_VAT        = 8; // Ввозной НДС

  ds_DEDUCTION_IN_FULL = 'DEDUCTION_IN_FULL';
  ds_VAT_EXEMPTION     = 'VAT_EXEMPTION';
  ds_OUTSIDE_RB        = 'OUTSIDE_RB';
  ds_IMPORT_VAT        = 'IMPORT_VAT';

  // typeDocument
  td_No            =   0; // не указан
  td_Default       =   1; // по умолчанию
  td_SeriaNumBlank =   2; // по серии и номеру бланка
  td_BlankCode     =   3; // по коду бланка
  td_WithoutDoc    = 600; // Без документа
  td_Other         = 601; // Другое
  td_TN2           = 602; // ТН-2
  td_TTN1          = 603; // ТТН-1
  td_Dogovor       = 604; // договор
  td_Kontrakt      = 605; // Контракт
  td_Akt           = 606; // акт
  td_CMRNakl       = 607; // CMR-накладная
  td_SF            = 608; // Счет-фактура
  td_Invoice       = 609; // invoice (счет)
  td_Avizo         = 610; // авизо
  td_BuhS          = 611; // бухгалтерская справка
  td_AVR           = 612; // акт выполненных работ
  td_Konosament    = 613; // Коносамент
  td_eTTN1         = 614; // Электронная ТТН-1
  td_eTN2          = 615; // Электронная ТН-2

  // blankCode
  bc_SeriaNumBlank = 0;   // по серии и номеру бланка
end;

#endif // _ValueInvoice_inc_
