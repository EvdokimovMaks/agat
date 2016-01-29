.LinkForm 'foPlPorRepRCKOut_1C_New' Prototype is 'foPlPorRepRCKOut'
.NameInList 'Платежные поручения в формате 1С'
.fields 
//Шапка платежного документа
if(Tidk=1,DocBasFn866To1251('СекцияДокумент=Платежное поручение'),DocBasFn866To1251('СекцияДокумент=Платежное требование'))
DocBasFn866To1251('Номер='+Nodok)
DocBasFn866To1251('Дата='+Replace(String(Datvip),'/','.'))
DocBasFn866To1251('Сумма='+DoubleToStr(round(Sumplat,2),'666666666666666666666.88'))
//реквизиты плательщика
DocBasFn866To1251('ПлательщикСчет='+PlatSchet)
DocBasFn866To1251('ПлательщикИНН='+PlatUNN)
DocBasFn866To1251('ПлательщикКПП='+Denosch2)
DocBasFn866To1251('Плательщик='+PlatName)
DocBasFn866To1251('ПлательщикБИК='+PlatMFO)
//реквизиты получателя
DocBasFn866To1251('ПолучательСчет='+PolSchet)                             
DocBasFn866To1251('ПолучательИНН='+PolUNN)
DocBasFn866To1251('ПолучательКПП='+PolKodPlatNDS)
DocBasFn866To1251('Получатель='+PolName)
DocBasFn866To1251('ПолучательБИК='+PolMFO)
//реквизиты платежа
DocBasFn866To1251('ВидПлатежа='+'Электронно')
//DocBasFn866To1251('ВидПлатежа='+'')
DocBasFn866To1251('ВидОплаты='+vidoper)
DocBasFn866To1251('Очередность='+replace(kodnew,'0',''))
//Поля для РЦК
DocBasFn866To1251('СекцияСтрока')
DocBasFn866To1251('АналитическийКлассификатор='+Replace(sKBK,'-',''))
DocBasFn866To1251('Классификатор1='+sPodrRCK)
DocBasFn866To1251('СуммаСтроки='+DoubleToStr(round(KBKSum,2),'666666666666666666666.88'))
DocBasFn866To1251('КонецСтроки')
DocBasFn866To1251('НазначениеПлатежа='+NamePL)
//Дополнительные реквизиты для платежей в бюджетную систему РФ
DocBasFn866To1251('СтатусСоставителя='+ExtractDelimitedWord(tax,1,';'))    //tax_status
DocBasFn866To1251('ПоказательКБК='+ExtractDelimitedWord(tax,2,';'))        //tax_kbk
DocBasFn866To1251('ОКАТО='+ExtractDelimitedWord(tax,3,';'))                //okato
DocBasFn866To1251('ПоказательОснования='+ExtractDelimitedWord(tax,4,';'))  //tax_reason
DocBasFn866To1251('ПоказательПериода='+ExtractDelimitedWord(tax,5,';'))    //tax_period
DocBasFn866To1251('ПоказательНомера='+ExtractDelimitedWord(tax,6,';'))     //tax_number
DocBasFn866To1251('ПоказательДаты='+ExtractDelimitedWord(tax,7,';'))       //tax_date
DocBasFn866To1251('ПоказательТипа='+ExtractDelimitedWord(tax,8,';'))       //tax_type
DocBasFn866To1251('Примечание=')
DocBasFn866To1251('Комментарий=')
//Реквизиты для согласования задания на платеж для РЦК
DocBasFn866To1251('GKEY='+nrec)
DocBasFn866To1251('ПризнакЗП=1')
DocBasFn866To1251('Срочный='+sSroch)
DocBasFn866To1251('Инициатор='+Loginname)
DocBasFn866To1251('ПутьНаFTP='+sDogFTP)
DocBasFn866To1251('Договор='+sDogName)
DocBasFn866To1251('СуммаПоДоговору='+DoubleToStr(round(sDogSum,2),'666666666666666666666.88'))
DocBasFn866To1251('ГруппаЗП='+PodOtchet)
//Конец платежного документа
DocBasFn866To1251('КонецДокумента')
//Конец реестра платежных документов
DocBasFn866To1251('КонецФайла')
.endfields
1CClientBankExchange
.{
^
^
^
^
^
^
^
^
^
^
^
^
^
^
^
^
^
.{ CheckKBKLoop CheckEnter
^
^
^
^
^
.}
^
^
^
^
^
^
^
^
^
^
^
^
^
^
^
^
^
^
^
^
.}
^
.endform
