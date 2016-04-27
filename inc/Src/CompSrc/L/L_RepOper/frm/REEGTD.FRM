//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - Отчеты контура логистики
// Реестр платежей по ГТД
//------------------------------------------------------------------------------

#doc
"Реестр платежей по ГТД"
#end
.set name='ReeGTD'
.hide
.nameinlist 'Реестр ГТД (базовая форма)'
.var
  NalogParamTxt: string
  SopNalogParamTxt: string
.endvar
.fields
!.{ReeGTD_Sopr CheckEnter   // ГТД
  SoprNRec: comp
  DscSopr DesGrSopr nSopr DscAndNomer dSopr:date:'m:DD/MM/YYYY'
  SoprName
  BaseDocNo
  OrgName OrgINN GruzFrom GruzFromINN GruzTo GruzToINN
  dOpr:date:'m:DD/MM/YYYY'
  dPrice:date:'m:DD/MM/YYYY'
  NazName
  NazCode
  NalVhod
!.{ReeGTD_SpSopr CheckEnter   // спецификация ГТД
  SpSoprNRec: comp
  Nam Bar OtpEd Kol tmpMas tmpVol
  Price:double PriceNoNal:double PriceWNal:double
  Sum:double SumNoNal:double SumNalPos:double SumWNal:double
  PriceV:double PriceVNoNal:double PriceVWNal:double
  SumV:double SumVNoNal:double SumVNalPos:double SumVWNal:double
  SimVal ValBasToOt
  PriceVdoc SumVdoc SimValDoc Party
!  OrdPriceR OrdPriceV
  NDS:double NDSv:double AKC:double AKCv:double
  NPP1:double NPP1v:double NPP2:double NPP2v:double
  NPP3:double NPP3v:double NPP4:double NPP4v:double
  NPP5:double NPP5v:double NPP6:double NPP6v:double
!.{ReeGTD_SpDocNal CheckEnter   // налоги
  SpDocNalNRec: comp
  NalogName: string
  NalogNpp: word
  NalogPerc: double
  NalogSumNal: double
  NalogVal: string
  NalogSumVal: double
  NalogSumma: double
  NalogOrg: string
  NalogParam: word
!.}   // налоги
!.{ReeGTD_SoprHoz CheckEnter   // платежи
  SpSopHozNRec: comp
  SoprHozNRec: comp
  PlatDatOb: date
  PlatKolOpl: double
  PlatSumOpl: double
  PlatSumOplV: double
  PlatValOpl: double
  PlatTiDkGal: word
  PlatTiDkGalTxt: string
  PlatdDoc: date
  PlatNumDoc: string
  PlatSumDoc: double
  PlatSumVDoc: double
  PlatValDoc: string
  PlatComment: string
!.}   // платежи
!.}   // спецификация ГТД
!.{ReeGTD_SopSopr CheckEnter   // Сопр.услуги
  SopSoprNRec: comp
  SopDscSopr SopDesGrSopr SopnSopr SopDscAndNomer SopdSopr:date:'m:DD/MM/YYYY'
  SopSoprName
  SopBaseDocNo
  SopOrgName SopOrgINN SopGruzFrom SopGruzFromINN SopGruzTo SopGruzToINN
  SopdOpr:date:'m:DD/MM/YYYY'
  SopdPrice:date:'m:DD/MM/YYYY'
  SopNazName
  SopNazCode
  SopNalVhod
!.{ReeGTD_SopSpSopr CheckEnter   // спецификация сопр.услуги
  SopSpSoprNRec: comp
  SopNam SopBar SopOtpEd SopKol SoptmpMas SoptmpVol
  SopPrice:double SopPriceNoNal:double SopPriceWNal:double
  SopSum:double SopSumNoNal:double SopSumNalPos:double SopSumWNal:double
  SopPriceV:double SopPriceVNoNal:double SopPriceVWNal:double
  SopSumV:double SopSumVNoNal:double SopSumVNalPos:double SopSumVWNal:double
  SopSimVal SopValBasToOt
  SopPriceVdoc SopSumVdoc SopSimValDoc SopParty
!  OrdPriceR OrdPriceV
  SopNDS:double  SopNDSv:double  SopAKC:double  SopAKCv:double
  SopNPP1:double SopNPP1v:double SopNPP2:double SopNPP2v:double
  SopNPP3:double SopNPP3v:double SopNPP4:double SopNPP4v:double
  SopNPP5:double SopNPP5v:double SopNPP6:double SopNPP6v:double
!.{ReeGTD_SopSpDocNal CheckEnter   // налоги
  SopSpDocNalNRec: comp
  SopNalogName: string
  SopNalogNpp: word
  SopNalogPerc: double
  SopNalogSumNal: double
  SopNalogVal: string
  SopNalogSumVal: double
  SopNalogSumma: double
  SopNalogOrg: string
  SopNalogParam: word
!.}   // налоги
!.{ReeGTD_SopSoprHoz CheckEnter   // платежи
  SopSpSopHozNRec: comp
  SopSoprHozNRec: comp
  SopPlatDatOb: date
  SopPlatKolOpl: double
  SopPlatSumOpl: double
  SopPlatSumOplV: double
  SopPlatValOpl: double
  SopPlatTiDkGal: word
  SopPlatTiDkGalTxt: string
  SopPlatdDoc: date
  SopPlatNumDoc: string
  SopPlatSumDoc: double
  SopPlatSumVDoc: double
  SopPlatValDoc: string
  SopPlatComment: string
!.}   // платежи
!.}   // спецификация сопр.услуги
!.}   // Сопр.услуги
!.}   // ГТД
.endfields
.{ReeGTD_Sopr CheckEnter   // ГТД
 NRec:                  ^
 Дескриптор накладной:  ^
 Код группы пользователей ^
 Номер накладной:       ^
 Номер с дескриптором:  ^
 Дата накладной:        ^
 Примечания к накладной:^
 Документ-основание:    ^
 Контрагент:            ^  УНН ^
 Грузоотправитель:      ^  УНН ^
 Грузополучатель:       ^  УНН ^
 Дата оприход/списания: ^
 Дата цен:              ^
 Наименование назначения ^
 Код назначения         ^
 Налоги:                ^ в стоимость МЦ/услуг
.{ReeGTD_SpSopr CheckEnter   // спецификация ГТД
   NREC позиции ^
   Наименование позиции ^
   Номенклатурный номер ^
   Отпускная единица    ^
   Количество           &'&&&&&&&&&&&&&.&&&
   Вес                  &'&&&&&&&&&&&&&.&&&
   Объем                &'&&&&&&&&&&&&&.&&&
   Цена по документу    &&&&&&&&&&&&&&&.&&&  без налогов &&&&&&&&&&&&&&&.&&&  с налогами &&&&&&&&&&&&&.&&&
   Стоимость по докумен.&&&&&&&&&&&&&&&.&&&  без налогов &&&&&&&&&&&&&&&.&&&  налоги &&&&&&&&&&&&&&&.&&&  с налогами &&&&&&&&&&&&&.&&&
   Цена в базовой валюте&&&&&&&&&&&&&&&.&&&  без налогов &&&&&&&&&&&&&&&.&&&  с налогами &&&&&&&&&&&&&.&&&
   Стоим в баз.валюте   &&&&&&&&&&&&&&&.&&&  без налогов &&&&&&&&&&&&&&&.&&&  налоги &&&&&&&&&&&&&&&.&&&  с налогами &&&&&&&&&&&&&.&&&
   Базовая валюта       ^
   курс валюты отчетов  &&&&&&&&&&&.&&&&&
   Цена в валюте        &'&&&&&&&&&&&&&.&&&
   Стоимость в валюте   &'&&&&&&&&&&&&&.&&&
   Валюта               ^
   Партия               ^
!   Цена из ордера       &'&&&&&&&&&&&&&.&&&   в валюте &'&&&&&&&&&&&&&.&&&
   ------------------------------------------------------
   НДС      &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
   Акциз    &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
   Налог1   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
   Налог2   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
   Налог3   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
   Налог4   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
   Налог5   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
   Налог6   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
.{ReeGTD_SpDocNal CheckEnter   // налоги
     NRec           ^
     Название налога:    ^
     Номер:              ^
     Процентная ставка:  &&&&&&&&&&&&&&.&&
     Сумма в вал.налога: &&&&&&&&&&&&&&.&&
     Валюта налога:      ^
     Сумма в вал.докум.: &&&&&&&&&&&&&&.&&
     Сумма в НДЕ:        &&&&&&&&&&&&&&.&&
     Организация:        ^
     Параметры:          &&&&&&&&&&&&&&&&&
.begin
  NalogParamTxt := if ((NalogParam and 1) = 0, '-', 'Т')+
                   if ((NalogParam and 2) = 0, '-', 'И')+
                   if ((NalogParam and 4) = 0, '-', 'В');
end.
.}   // налоги
Платежи
.{ReeGTD_SoprHoz CheckEnter   // платежи
     SpSopHozNRec: comp        ^
     SoprHozNrec: comp         ^
     Дата операции:            ^
     Количество оплаченного:   &&&&&&&&&&&&&&.&&
     Сумма оплаченного:        &&&&&&&&&&&&&&.&&
     Сумма оплаченного в вал.: &&&&&&&&&&&&&&.&&
     Валюта операции:          ^
     Код документа:            ^
     Тип документа:            ^
     Дата документа:           ^
     Номер документа:          ^
     Сумма документа:          &&&&&&&&&&&&&&.&&
     Сумма документа в валюте: &&&&&&&&&&&&&&.&&
     Валюта документа:         ^
     Примечание:               ^
.}   // платежи
.}   // спецификация ГТД
Сопутствующие услуги других контрагентов
.{ReeGTD_SopSopr CheckEnter   // Сопр.услуги
      NRec:                  ^
      Дескриптор накладной:  ^
      Код группы пользователей ^
      Номер накладной:       ^
      Номер с дескриптором:  ^
      Дата накладной:        ^
      Примечания к накладной:^
      Документ-основание:    ^
      Контрагент:            ^  УНН ^
      Грузоотправитель:      ^  УНН ^
      Грузополучатель:       ^  УНН ^
      Дата оприход/списания: ^
      Дата цен:              ^
      Наименование назначения ^
      Код назначения         ^
      Налоги:                ^ в стоимость МЦ/услуг
.{ReeGTD_SopSpSopr CheckEnter   // спецификация сопр.услуги
        NRec: comp       ^
        Наименование позиции ^
        Номенклатурный номер ^
        Отпускная единица    ^
        Количество           &'&&&&&&&&&&&&&.&&&
        Вес                  &'&&&&&&&&&&&&&.&&&
        Объем                &'&&&&&&&&&&&&&.&&&
        Цена по документу    &&&&&&&&&&&&&&&.&&&  без налогов &&&&&&&&&&&&&&&.&&&  с налогами &&&&&&&&&&&&&.&&&
        Стоимость по докумен.&&&&&&&&&&&&&&&.&&&  без налогов &&&&&&&&&&&&&&&.&&&  налоги &&&&&&&&&&&&&&&.&&&  с налогами &&&&&&&&&&&&&.&&&
        Цена в базовой валюте&&&&&&&&&&&&&&&.&&&  без налогов &&&&&&&&&&&&&&&.&&&  с налогами &&&&&&&&&&&&&.&&&
        Стоим в баз.валюте   &&&&&&&&&&&&&&&.&&&  без налогов &&&&&&&&&&&&&&&.&&&  налоги &&&&&&&&&&&&&&&.&&&  с налогами &&&&&&&&&&&&&.&&&
        Базовая валюта       ^
        курс валюты отчетов  &&&&&&&&&&&.&&&&&
        Цена в валюте        &'&&&&&&&&&&&&&.&&&
        Стоимость в валюте   &'&&&&&&&&&&&&&.&&&
        Валюта               ^
        Партия               ^
!        Цена из ордера       &'&&&&&&&&&&&&&.&&&   в валюте &'&&&&&&&&&&&&&.&&&
        ------------------------------------------------------
        НДС      &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
        Акциз    &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
        Налог1   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
        Налог2   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
        Налог3   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
        Налог4   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
        Налог5   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
        Налог6   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
.{ReeGTD_SopSpDocNal CheckEnter   // налоги
          NRec           ^
          Название налога:    ^
          Номер:              ^
          Процентная ставка:  &&&&&&&&&&&&&&.&&
          Сумма в вал.налога: &&&&&&&&&&&&&&.&&
          Валюта налога:      ^
          Сумма в вал.докум.: &&&&&&&&&&&&&&.&&
          Сумма в НДЕ:        &&&&&&&&&&&&&&.&&
          Организация:        ^
          Параметры:          &&&&&&&&&&&&&&&&&
.begin
  SopNalogParamTxt := if ((SopNalogParam and 1) = 0, '-', 'Т')+
                      if ((SopNalogParam and 2) = 0, '-', 'И')+
                      if ((SopNalogParam and 4) = 0, '-', 'В');
end.
.}   // налоги
Платежи
.{ReeGTD_SopSoprHoz CheckEnter        // платежи
          SopSpSopHozNRec:          ^
          SopSoprHozNRec:           ^
          Дата операции:            ^
          Количество оплаченного:   &&&&&&&&&&&&&&.&&
          Сумма оплаченного:        &&&&&&&&&&&&&&.&&
          Сумма оплаченного в вал.: &&&&&&&&&&&&&&.&&
          Валюта операции:          ^
          Код документа:            ^
          Тип документа:            ^
          Дата документа:           ^
          Номер документа:          ^
          Сумма документа:          &&&&&&&&&&&&&&.&&
          Сумма документа в валюте: &&&&&&&&&&&&&&.&&
          Валюта документа:         ^
          Примечание:               ^
.}   // платежи
.}   // спецификация сопр.услуги
.}   // Сопр.услуги
.}   // ГТД
.endform

#doc
Реестр платежей в разрезе ГТД
#end
.linkform ReeGTD_01 prototype ReeGTD
.nameinlist 'Реестр платежей в разрезе ГТД'
.fields
  CommonFormHeader
  NSopr if(longint(dSopr)=0,'',DateToStr(dSopr,'DD/MM/YYYY'))
.endfields
.{ReeGTD_Sopr CheckEnter   // ГТД
 Б^ Б
 Ш                       Распределенные платежи по накладной №  ^ от ^ Ш
 Ш┌──────────────────────┬──────────┬──────────┬────────────────────────┬──────────────────┬────────────────┬─────┬──────────────────┬────────────────┐
│     Товар/услуга     │  Номер   │   Дата   │       Контрагент       │      Сумма       │    в валюте    │ вал │из них за тов/усл │    в валюте    │
├──────────────────────┼──────────┼──────────┼────────────────────────┼──────────────────┼────────────────┴─────┼──────────────────┼────────────────┤ Ш
.{ReeGTD_SpSopr CheckEnter   // спецификация ГТД
.{ReeGTD_SpDocNal CheckEnter   // налоги
.}   // налоги
.{ReeGTD_SoprHoz CheckEnter   // платежи
.fields
  Nam PlatNumDoc if(longint(PlatdDoc)=0,'',DateToStr(PlatdDoc,'DD/MM/YYYY'))
  OrgName PlatSumDoc PlatSumVDoc PlatValDoc PlatSumOpl PlatSumOpl*PlatSumVDoc/PlatSumDoc
.endfields
 Ш│@@@@@@@@@@@@@@@@@@@@@@│ Б@~@@@@@@@@ Б│@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@│&'&&&&&&&&&&&&&.&&│&'&&&&&&&&&&&.&& @@@@@│&'&&&&&&&&&&&&&.&&│&'&&&&&&&&&&&.&&│ Ш
.}   // платежи
.}   // спецификация ГТД
.{ReeGTD_SopSopr CheckEnter   // Сопр.услуги
.{ReeGTD_SopSpSopr CheckEnter   // спецификация сопр.услуги
.{ReeGTD_SopSpDocNal CheckEnter   // налоги
.}   // налоги
.{ReeGTD_SopSoprHoz CheckEnter        // платежи
.fields
  SopNam SopPlatNumDoc if(longint(SopPlatdDoc)=0,'',DateToStr(SopPlatdDoc,'DD/MM/YYYY'))
  SopOrgName SopPlatSumDoc SopPlatSumVDoc SopPlatValDoc SopPlatSumOpl SopPlatSumOpl*SopPlatSumVDoc/SopPlatSumDoc
.endfields
 Ш│@@@@@@@@@@@@@@@@@@@@@@│ Б@~@@@@@@@@ Б│@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@│&'&&&&&&&&&&&&&.&&│&'&&&&&&&&&&&.&& @@@@@│&'&&&&&&&&&&&&&.&&│&'&&&&&&&&&&&.&&│ Ш
.}   // платежи
.}   // спецификация сопр.услуги
.}   // Сопр.услуги
 Ш└──────────────────────┴──────────┴──────────┴────────────────────────┴──────────────────┴──────────────────────┴──────────────────┴────────────────┘ Ш
.}   // ГТД
.endform