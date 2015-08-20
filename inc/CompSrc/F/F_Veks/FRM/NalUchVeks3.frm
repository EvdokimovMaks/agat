//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.84 - базовая форма
// Печать справок по списанию дисконта
// Внимание! Существует slk-отчет в формате Excel
//------------------------------------------------------------------------------

#doc
Печать справок по списанию дисконта
#end

.set name='NalUchVeks3'
.nameinlist 'Базовая форма'
.hide
.fields
  Name_doc
  Org_name                      // наименование организации
  Org_Unn                       // ИНН организации
// фильтр
  FD1                 : date
  FD2                 : date
// выводить суммы в справку в НДЕ или в валюте
  V_Val               : word
// AppVeks3_cicle
  Nrec_App                      // Nrec АПП
  No_App                        // номер справки (АПП)
  DatVip_App          : date    // начало периода начисления справки
  DatOB_App           : date    // окончание периода начисления справки
  Val                 : comp    // Nrec валюты справки
  Val_Simv                      // Символ валюты
// SpApp3_cicle
  Nrec_Veks                     // Nrec Векселя
  No_Veks                       // номер векселя
  Vlad_Veks                     // кому выдан вексель
  Sum_Veks            : double  // номинал векселя
  Sum_SpApp           : double  // стоимость выдачи
  DatVip_Veks         : date    // дата выписки векселя
  UslP_Veks                     // условие погашения векселя
  Discount            : double  // дисконт
  StavkaR_Veks        : double  // % ставка по расходам по векселю
  StavkaRefin         : double  // ставка рефинансирования ЦБ РФ
  DatOB_Veks          : date    // дата погашения векселя, если есть
  SumPogash_SpApp     : double  // сумма погашения (сумма дисконтного дохода)
  SumPogashNorm_SpApp : double  // сумма погашения после нормирования
  SumRashod_SpApp     : double  // сумма, принимаемая к расходу
  SumUnRash           : double  // сумма, не принимаемая к расходу SumPogash_SpApp - SumRashod_SpApp

  Val_Veks            : comp    // Nrec валюты векселя
  Val_Veks_Simv                 // Символ валюты векселя
  SumV_Veks           : double  // номинал векселя в валюте
  SumV_SpApp          : double  // стоимость выдачи в валюте
  DiscountV           : double  // дисконт в валюте
  StavkaRV_Veks       : double  // % ставка по расходам (в валюте) по векселю
  SumVPogash_SpApp    : double  // сумма погашения (сумма дисконтного дохода) в валюте
  SumVPogashNorm_SpApp : double // сумма погашения в валюте после нормирования
  SumVRashod_SpApp    : double  // сумма в валюте, принимаемая к расходу
  SumVUnRash          : double  // сумма в валюте, не принимаемая к расходу SumPogash_SpApp - SumRashod_SpApp
.endfields
! Подкачка Excel форматов
! Эта строчка нужна пока не будет решена 102.31867
#include ExcelFormat.frn

.{
^ ^ ^ ^ ^ ^
.{ CheckEnter AppVeks3_cicle
    ^ ^ ^ ^ ^ ^
.{ CheckEnter SpApp3_cicle
    ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
        ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.}
.}
.endform
!
!
!
//=====================================================================================================================

.linkform 'NalUchVeksR03' prototype is 'NalUchVeks3'
.nameinlist 'Учет по собственным векселям (справки по списанию дисконта)'
.group 'Реестр_3'
.p 80
.var
  Sum_Vid, mSum_Vid,
  Sum_Nominal, mSum_Nominal,
  Sum_Discount, mSum_Discount,
  Sum_Pogash, mSum_Pogash,
  Sum_PogashNorm, mSum_PogashNorm,
  Sum_Rashod, mSum_Rashod,
  Sum_UnRash, mSum_UnRash  : double;
.endvar
.fields
  CommonFormHeader
  Name_doc
  Org_name             // наименование организации
  Org_Unn              // ИНН организации
  if (Longint(FD1) = 0, '', DateToStr(FD1, 'DD/MM/YYYY'))
  if (Longint(FD2) = 0, '', DateToStr(FD2, 'DD/MM/YYYY'))
  if (V_Val = 0, 'в НДЕ', 'в валюте')
  if (V_Val = 0, 'в НДЕ', 'в валюте')
  if (V_Val = 0, 'в НДЕ', 'в валюте')
  if (V_Val = 0, 'в НДЕ', 'в валюте')

  No_App
  if (Longint(DatVip_App) = 0, '', DateToStr(DatVip_App, 'DD/MM/YYYY'))
  if (Longint(DatOB_App) = 0, '', DateToStr(DatOB_App, 'DD/MM/YYYY'))

  No_Veks
  Vlad_Veks
  if (V_Val = 0, Sum_Veks, SumV_Veks)
  if (V_Val = 0, Sum_SpApp, SumV_SpApp)
  if (Longint(DatVip_Veks) = 0, '', DateToStr(DatVip_Veks, 'DD/MM/YYYY'))
  UslP_Veks
  if (V_Val = 0, Discount, DiscountV)
  if (V_Val = 0, StavkaR_Veks, StavkaRV_Veks)
  StavkaRefin
  if (Longint(DatOB_Veks) = 0, '', DateToStr(DatOB_Veks, 'DD/MM/YYYY'))
  if (V_Val = 0, SumPogash_SpApp, SumVPogash_SpApp)
  if (V_Val = 0, SumPogashNorm_SpApp, SumVPogashNorm_SpApp)
  if (V_Val = 0, SumRashod_SpApp, SumVRashod_SpApp)
  if (V_Val = 0, SumUnRash, SumVUnRash)
  mSum_Nominal
  mSum_Vid
  mSum_Discount
  mSum_Pogash
  mSum_PogashNorm
  mSum_Rashod
  mSum_UnRash
  Sum_Nominal
  Sum_Vid
  Sum_Discount
  Sum_Pogash
  Sum_PogashNorm
  Sum_Rashod
  Sum_UnRash
.endfields
 Р^
.begin
  Sum_Nominal    := 0;
  Sum_Vid        := 0;
  Sum_Discount   := 0;
  Sum_Pogash     := 0;
  Sum_PogashNorm := 0;
  Sum_Rashod     := 0;
  Sum_UnRash     := 0;
end.
.{
   ^

   Налогоплательщик @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
   Идентификационный номер налогоплательщика @@@@@@@@@@@@@@@@@@@@
   Период с @@@@@@@@@@ по @@@@@@@@@@


.{ CheckEnter AppVeks3_cicle
.[h
────────┬──────────┬──────────────┬────────────┬──────────┬──────────────┬────────────┬───────────┬───────────┬──────────┬────────────────────────┬─────────────────────────
   №    │  Кому    │ Номинальная  │ Стоимость  │  Дата    │   Условие    │  Дисконт   │ Процент   │  Ставка   │  Дата    │Сумма дисконтного дохода│      Сумма ^
векселя │  выдан   │  стоимость   │  выдачи    │ выдачи   │   погашения  │@~@@@@@@@@@@│ расхода   │рефинанси- │ погашения├────────────┬───────────┼───────────┬─────────────
        │          │@~@@@@@@@@@@@@│@~@@@@@@@@@@│ векселя  │              │            │по дисконту│  рования  │          │ за период  │после нор- │принимаемая│ не приним.
        │          │              │            │          │              │            │           │   ЦБ РФ   │          │ (расчит.)  │мирования  │ к расходу │ к расходу
────────┴──────────┴──────────────┴────────────┴──────────┴──────────────┴────────────┴───────────┴───────────┴──────────┴────────────┴───────────┴───────────┴─────────────

.]h
.begin
  mSum_Nominal    := 0;
  mSum_Vid        := 0;
  mSum_Discount   := 0;
  mSum_Pogash     := 0;
  mSum_PogashNorm := 0;
  mSum_Rashod     := 0;
  mSum_UnRash     := 0;
end.

Справка №  ^ период начисления с @@@@@@@@@@ по @@@@@@@@@@

.{ CheckEnter SpApp3_cicle
.begin
  if (V_Val = 0) // в НДЕ
  {
    mSum_Nominal    := mSum_Nominal    + Sum_Veks;
    mSum_Vid        := mSum_Vid        + Sum_SpApp;
    mSum_Discount   := mSum_Discount   + Discount;
    mSum_Pogash     := mSum_Pogash     + SumPogash_SpApp;
    mSum_PogashNorm := mSum_PogashNorm + SumPogashNorm_SpApp;
    mSum_Rashod     := mSum_Rashod     + SumRashod_SpApp;
    mSum_UnRash     := mSum_UnRash     + SumUnRash;

    Sum_Nominal    := Sum_Nominal    + Sum_Veks;
    Sum_Vid        := Sum_Vid        + Sum_SpApp;
    Sum_Discount   := Sum_Discount   + Discount;
    Sum_Pogash     := Sum_Pogash     + SumPogash_SpApp;
    Sum_PogashNorm := Sum_PogashNorm + SumPogashNorm_SpApp;
    Sum_Rashod     := Sum_Rashod     + SumRashod_SpApp;
    Sum_UnRash     := Sum_UnRash     + SumUnRash;
  }
  else           // в валюте
  {
    mSum_Nominal    := mSum_Nominal    + SumV_Veks;
    mSum_Vid        := mSum_Vid        + SumV_SpApp;
    mSum_Discount   := mSum_Discount   + DiscountV;
    mSum_Pogash     := mSum_Pogash     + SumVPogash_SpApp;
    mSum_PogashNorm := mSum_PogashNorm + SumVPogashNorm_SpApp;
    mSum_Rashod     := mSum_Rashod     + SumVRashod_SpApp;
    mSum_UnRash     := mSum_UnRash     + SumVUnRash;

    Sum_Nominal    := Sum_Nominal    + SumV_Veks;
    Sum_Vid        := Sum_Vid        + SumV_SpApp;
    Sum_Discount   := Sum_Discount   + DiscountV;
    Sum_Pogash     := Sum_Pogash     + SumVPogash_SpApp;
    Sum_PogashNorm := Sum_PogashNorm + SumVPogashNorm_SpApp;
    Sum_Rashod     := Sum_Rashod     + SumVRashod_SpApp;
    Sum_UnRash     := Sum_UnRash     + SumVUnRash;
  }
end.
@@@@@@@@ @@@@@@@@@@@ &'&&&&&&&&.&& &'&&&&&&&.&& @@@@@@@@@@ @@@@@@@@@@@@@@ &'&&&&&&&.&& &'&&&&.&&  &'&&&&&&.&& @@@@@@@@@@ &'&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&.&&
.}
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
Итого по справке :
                     &'&&&&&&&&.&& &'&&&&&&&.&&                           &'&&&&&&&.&&                                   &'&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&.&&
.}
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
Итого:               &'&&&&&&&&.&& &'&&&&&&&.&&                           &'&&&&&&&.&&                                   &'&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&.&&
.}
 Р
.endform
