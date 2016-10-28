//------------------------------------------------------------------------------------------------------------
//                                                                                    (c) корпорация Галактика
// Галактика 9.1
// Поля ЭСЧФ
//------------------------------------------------------------------------------------------------------------
#ifndef _FieldInvoice_inc_
#define _FieldInvoice_inc_

const
  // Раздел 1. Общие сведения
  fi_sender           = 1; // Субъект хозяйствования, составляющий ЭСЧФ
  fi_number           = 2; // 1. Номер ЭСЧФ
  fi_dateIssuance     = 3; // 2. Дата выставления ЭСЧФ
  fi_dateTransaction  = 4; // 3. Дата совершения операции ЭСЧФ
  fi_documentType     = 5; // 4. Тип ЭСЧФ
  fi_invoice          = 6; // 5. К ЭСЧФ
  fi_dateCancellation = 7; // 5.1. Дата аннулирования ЭСЧФ
  fi_sendToRecipient  = 8; // Отобразить получателю

  fi_requisitesOrg  = 9;   // Реквизиты поставщика\получателя

  // Раздел 2. Реквизиты поставщика - provider
  fi_provider_providerStatus       = 11; // 6. Статус поставщика
  fi_provider_dependentPerson      = 12; // 6.1. Взаимозависимое лицо
  fi_provider_residentsOfOffshore  = 13; // 6.2. Сделка с резидентом оффшорной зоны
  fi_provider_specialDealGoods     = 14; // 6.3. Сделка с товарами по перечню, определяемому Правительством РБ
  fi_provider_bigCompany           = 15; // 6.4. Организация, включенная в перечень крупных плательщиков
  fi_provider_countryCode          = 16; // 7. Код страны поставщика
  fi_provider_unp                  = 17; // 8. УНП
  fi_provider_branchCode           = 18; // 8.1. Код филиала (обособленного подразделения)
  fi_provider_name                 = 19; // 9. Поставщик
  fi_provider_address              = 20; // 10. Юридический адрес
  fi_provider_principal_number     = 21; // 11. Номер счета комитента
  fi_provider_principal_date       = 22; // 11. Дата выписки
  fi_provider_vendor_number        = 23; // 12. Номер счета продавца
  fi_provider_vendor_date          = 24; // 12. Дата выписки
  fi_provider_declaration          = 25; // 13. Регистрационный номер выпуска товаров
  fi_provider_dateRelease          = 26; // 13.1. Дата выпуска товаров
  fi_provider_dateActualExport     = 27; // 13.2. Дата разрешения на убытие товаров
  fi_provider_taxes_number         = 28; // 14. Реквизиты заявления о ввозе товаров и уплате косвенных налогов - номер
  fi_provider_taxes_date           = 29; // 14. Реквизиты заявления о ввозе товаров и уплате косвенных налогов - дата

  // Раздел 3. Реквизиты получателя - recipient
  fi_recipient_recipientStatus     = 31; // 15. Статус получателя
  fi_recipient_dependentPerson     = 32; // 15.1. Взаимозависимое лицо
  fi_recipient_residentsOfOffshore = 33; // 15.2. Сделка с резидентом оффшорной зоны
  fi_recipient_specialDealGoods    = 34; // 15.3. Сделка с товарами по перечню, определяемому Правительством РБ
  fi_recipient_bigCompany          = 35; // 15.4. Организация, включенная в перечень крупных плательщиков
  fi_recipient_countryCode         = 36; // 16. Код страны получателя
  fi_recipient_unp                 = 37; // 17. УНП
  fi_recipient_branchCode          = 38; // 17.1. Код филиала (обособленного подразделения)
  fi_recipient_name                = 39; // 18. Получатель
  fi_recipient_address             = 40; // 19. Юридический адрес
  fi_recipient_declaration         = 41; // 20. Регистрационный номер выпуска товаров
  fi_recipient_taxes_number        = 42; // 21. Реквизиты заявления о ввозе товаров и уплате косвенных налогов - номер
  fi_recipient_taxes_date          = 43; // 21. Реквизиты заявления о ввозе товаров и уплате косвенных налогов - дата
  fi_recipient_dateImport          = 44; // 21.1. Дата ввоза товаров

  // Раздел 4. Реквизиты грузоотправителя и грузополучателя - senderReceiver
  fi_Part4Invoice          = 50; // Не заполнять 4 раздел ЭСЧФ
  // Реквизиты грузоотправителя - consignor
  fi_consignor_countryCode = 51; // 22. Код страны грузоотправителя
  fi_consignor_unp         = 52; // 23. УНП
  fi_consignor_name        = 53; // 24. Наименование
  fi_consignor_address     = 54; // 25. Адрес отправки
  // Реквизиты грузополучателя - consignee
  fi_consignee_countryCode = 55; // 26. Код страны Грузополучателя
  fi_consignee_unp         = 56; // 27. УНП
  fi_consignee_name        = 57; // 28. Наименование
  fi_consignee_address     = 58; // 29. Адрес доставки

  // Раздел 5. Условия поставки - deliveryCondition
  fi_deliveryCondition_contract_number                = 61; // 30. Договор (контракт) на поставку товара
  fi_deliveryCondition_contract_date                  = 62; // 30. Дата договора (контракта)
  fi_deliveryCondition_contract_document_typeDocument = 63; // Вид документа
  fi_deliveryCondition_contract_document_nameDocument = 64; // Название
  fi_deliveryCondition_contract_document_date         = 65; // Дата
  fi_deliveryCondition_contract_document_blankCode    = 66; // Код типа бланка
  fi_deliveryCondition_contract_document_seria        = 67; // Серия
  fi_deliveryCondition_contract_document_number       = 68; // Номер
  fi_deliveryCondition_description                    = 69; // 31.Дополнительные сведения

  // Раздел 6. Данные по товарам (работам, услугам), имущественным правам - roster
  fi_roster_item_number       = 71; // 1. № п/п
  fi_roster_item_name         = 72; // 2. Наименование товара (работ, услуг), имущественных прав
  fi_roster_item_code         = 73; // 3.1. Код товара (ТН ВЭД ЕАЭС)
  fi_roster_item_code_oced    = 74; // 3.2. Код видов деятельности (ОКЭД)
  fi_roster_item_units        = 75; // 4. Единица измерения
  fi_roster_item_count        = 76; // 5. Количество (объем)
  fi_roster_item_price        = 77; // 6. Цена (тариф) за единицу товара (работы, услуги) имущественных прав без учета НДС, тыс бел.руб
  fi_roster_item_cost         = 78; // 7. Стоимость товаров (работ, услуг), имущественных прав без НДС
  fi_roster_item_summaExcise  = 79; // 8. В том числе сумма акциза, тыс бел.руб
  fi_roster_item_vat_rate     = 80; // 9.1. Ставка НДС
  fi_roster_item_vat_rateType = 81; // 9.2. Ставка НДС
  fi_roster_item_vat_summaVat = 82; // 10. Сумма НДС
  fi_roster_item_costVat      = 83; // 11. Стоимость товаров (работ, услуг), имущественных прав с учетом НДС, тыс.бел. руб.
  fi_roster_item_descriptions = 84; // 12. Дополнительные данные
  fi_roster_item_descr_value  = 89; // 12. Дополнительные данные
  fi_roster_item_units_name   = 90; // Наименование единицы измерения
  // итоговые суммы
  fi_roster_totalCostVat      = 85; // Всего по счету. Стоимость товаров (работ, услуг), имущественных прав без НДС
  fi_roster_totalExcise       = 86; // Всего по счету. Сумма акциза
  fi_roster_totalVat          = 87; // Всего по счету. Сумма НДС
  fi_roster_totalCost         = 88; // Стоимость товаров (работ, услуг), имущественных прав с учетом НДС

  // дополнительный параметры
  fi_roster_NDSFrom           = 100; // Брать НДС из
  fi_roster_NDSUsl            = 101; // Налоговая услуга

end;

#endif // _FieldInvoice_inc_
