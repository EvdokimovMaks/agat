//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.84 - базовая форма
// Печать отчета о расчете финансового результата от реализации
// Внимание! Существует slk-отчет в формате Excel
//------------------------------------------------------------------------------

#doc
Печать отчета о расчете финансового результата от реализации
#end

.set name='NalUchVeks4'
.nameinlist 'Базовая форма'
.hide
.fields
  Name_doc
  Org_name                // наименование организации
  Org_Unn                 // ИНН организации
                          // фильтр
  FD1           : date
  FD2           : date

  Nrec_Veks               // Nrec векселя
  No_Veks                 // номер векселя
  Ser_Veks                // серия векселя
  DatVip_Veks  : date     // дата эмитирования
  Nominal      : double   // номинал векселя
  SumPriob     : double   // стоимость приобретения
  SumRashod    : double   // расходы, связанные  с реал. векс.
  AllRashod    : double   // расходы на приобретение и реализацию
  Dat_Priob    : date     // дата приобретения
  UslP_Veks               // условие погашения векселя
  DatPUsl      : date     // дата погашения по условиям векс.
  DatReal      : date     // дата реализации
  SumRealiz    : double   // фактическая выручка от реализации
  // дисконтные векселя
  DnPrPogash              // кол-во дней от приобрет. до погаш.
  DnPrRealiz              // кол-во дней от приобрет. до реализ.
  RaschPriceD  : double   // расчетная цена векселя дисконтного
  // %% - ые векселя
  PrStav                  // проц. ставка по векселю
  DnEmitRealiz            // кол-во дней с даты эмитирования до реализ. векс.
  RaschPricePr  : double  // расчетная цена векселя %%
  // бездоходные векселя
  StavRefinRF             // ставка рефин. ЦБ РФ                                           !!!!!!!!!!
  RaschPriceBD  : double  // расчетная цена бездоходного векселя                           !!!!!!!!!!

  RaschPrNorm   : double  // расчетная цена векселя после нормирования
  OtklonFactV   : double  // отклонение фактической выручки
  ItogPrUb      : double  // Итого прибыль (убытки)
.endfields
! Подкачка Excel форматов
! Эта строчка нужна пока не будет решена 102.31867
#include ExcelFormat.frn

.{
^ ^ ^ ^ ^
.{ CheckEnter NalRegDc_cicle
    ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.}
.endform
!
!
!
//=====================================================================================================================

.linkform 'NalUchVeksR04' prototype is 'NalUchVeks4'
.nameinlist 'Расчет финансового результата от реализации'
.group 'Реестр_4'
.p 65
.var
  Sum_Nominal,
  Sum_Priob,
  Sum_Rashod,
  Sum_AllRashod,
  Sum_SumRealiz,
  Sum_RaschPriceD,
  Sum_RaschPricePr,
  Sum_RaschPrNorm,
  Sum_OtklonFactV,
  Sum_ItogPrUb  : double;
.endvar
.fields
  CommonFormHeader
  Name_doc
  Org_name
  Org_Unn
  if (longint(FD1)=0,'',DateToStr(longint(FD1), 'DD/MM/YYYY'))
  if (longint(FD2)=0,'',DateToStr(longint(FD2), 'DD/MM/YYYY'))

  No_Veks
  if (longint(DatVip_Veks)=0,'',DateToStr(longint(DatVip_Veks), 'DD/MM/YYYY'))
  if (Nominal = 0, '', DoubleToStr(Nominal,'66''666''666.88'))
  if (SumPriob = 0, '', DoubleToStr(SumPriob,'66''666''666.88'))
  if (SumRashod = 0, '', DoubleToStr(SumRashod,'66''666''666.88'))
  if (AllRashod = 0, '', DoubleToStr(AllRashod,'66''666''666.88'))
  if (longint(Dat_Priob)=0,'',DateToStr(longint(Dat_Priob), 'DD/MM/YYYY'))
  if (longint(DatPUsl)=0,'',DateToStr(longint(DatPUsl), 'DD/MM/YYYY'))
  if (longint(DatReal)=0,'',DateToStr(longint(DatReal), 'DD/MM/YYYY'))
  if (SumRealiz = 0, '',DoubleToStr(SumRealiz,'66''666''666.88'))
// дисконтные векселя
  DnPrPogash
  DnPrRealiz
  if (RaschPriceD=0, '',DoubleToStr(RaschPriceD,'66''666''666.88'))
// %% - ые векселя
  PrStav
  DnEmitRealiz
  if (RaschPricePr=0, '', DoubleToStr(RaschPricePr,'66''666''666.88'))

  if (RaschPrNorm=0, '', DoubleToStr(RaschPrNorm,'66''666''66.88'))
  if (OtklonFactV=0, '', DoubleToStr(OtklonFactV,'66''666''666.88'))
  if (ItogPrUb=0, '', DoubleToStr(ItogPrUb,'66''666''666.88'))

  Sum_Nominal
  Sum_Priob
  Sum_Rashod
  Sum_AllRashod
  Sum_SumRealiz
  Sum_RaschPriceD
  Sum_RaschPricePr
  Sum_RaschPrNorm
  Sum_OtklonFactV
  Sum_ItogPrUb
.endfields
 Р^
.begin
  Sum_Nominal  := 0;
  Sum_Priob    := 0;
  Sum_Rashod   := 0;
  Sum_AllRashod := 0;
  Sum_SumRealiz := 0;
  Sum_RaschPriceD := 0;
  Sum_RaschPricePr:= 0;
  Sum_RaschPrNorm := 0;
  Sum_OtklonFactV := 0;
  Sum_ItogPrUb    := 0;
end.
.{
 И   ^

   Налогоплательщик @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
   Идентификационный номер налогоплательщика @@@@@@@@@@@@@@@@@@@@
   Период с @@@@@@@@@@ по @@@@@@@@@@


.{ CheckEnter NalRegDc_cicle
.[h
──────────┬─────────┬─────────────┬────────────┬──────────┬────────────┬──────────┬──────────┬──────────┬────────────┬────────────────────────────┬────────────────────────────┬───────────┬─────────────┬──────────────
   No     │  Дата   │ Номинальная │   Всего    │ Расходы  │  Расходы   │  Дата    │  Дата    │  Дата    │Фактическая │      Дисконтные векселя    │    Процентные векселя      │ Расчетная │ Отклонение  │    Итого
  векселя │ выдачи  │  стоимость  │ стоимость  │связанные │связанные с │ приобре- │погашения │реализации│ выручка от ├────────┬───────┬───────────┼─────────┬───────┬──────────┤   цена    │ фактической │   прибыль
          │ векселя │             │приобретения│с реализа-│приобретени-│  тения   │по услови-│          │ реализации │дней от │дней от│ Расчетная │Процент- │дней от│ Расчетная│после нор- │   выручки   │   (убыток)
          │         │             │            │ цией век-│ем и реали- │          │ям векселя│          │            │приобр. │приобр.│   цена    │ная став-│эмит.до│   цена   │ мирования │             │
          │         │             │            │  селя    │  зацией    │          │          │          │            │до пога-│до реа-│ векселя   │  ка по  │реали- │ векселя  │           │             │
          │         │             │            │          │  векселя   │          │          │          │            │ шения  │лизации│           │ векселю │зации  │          │           │             │
──────────┴─────────┴─────────────┴────────────┴──────────┴────────────┴──────────┴──────────┴──────────┴────────────┴────────┴───────┴───────────┴─────────┴───────┴──────────┴───────────┴─────────────┴──────────────

.]h

.begin
  Sum_Nominal     := Sum_Nominal + Nominal;
  Sum_Priob       := Sum_Priob + SumPriob;
  Sum_Rashod      := Sum_Rashod + SumRashod;
  Sum_AllRashod   := Sum_AllRashod + AllRashod;
  Sum_SumRealiz   := Sum_SumRealiz + SumRealiz;
  Sum_RaschPriceD := Sum_RaschPriceD + RaschPriceD;
  Sum_RaschPricePr:= Sum_RaschPricePr + RaschPricePr;
  Sum_RaschPrNorm := Sum_RaschPrNorm + RaschPrNorm;
  Sum_OtklonFactV := Sum_OtklonFactV + OtklonFactV;
  Sum_ItogPrUb    := Sum_ItogPrUb + ItogPrUb;
end.
@@@@@@@@@@ @@@@@@@@@@&'&&&&&&&&.&& &'&&&&&&&.&& &'&&&&&.&& &'&&&&&&&.&& @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ &'&&&&&&&&.&& &'&&&&  &'&&&&& &'&&&&&&.&&  &&&.&&   &'&&&&  &'&&&&&.&& &'&&&&&&.&& &'&&&&&&&&.&& &'&&&&&&&&.&&
.}
───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
Итого:               &'&&&&&&&&.&& &'&&&&&&&.&& &'&&&&&.&& &'&&&&&&&.&&                                  &'&&&&&&&&.&&                 &'&&&&&&.&&                   &'&&&&&.&& &'&&&&&&.&& &'&&&&&&&&.&& &'&&&&&&&&.&&
.}

.endform Ш
