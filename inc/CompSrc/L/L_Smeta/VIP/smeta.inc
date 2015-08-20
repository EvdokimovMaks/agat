//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.1 - Сметная документация
// Константы Сметных расчетов
//------------------------------------------------------------------------------

Const
  // Режимы импорта смет/актов выполненных работ (значения параметра pwMode интерфейса PacketImport)
  // Обнаружил следующие предположения в имеющемся коде по поводу значений констант:
  // 1. константы со значениями до 9 включительно означают импорт смет;
  // 2. константы от со значениями от 10 и выше означают импорт актов.
  // Рекомендую придерживаться этого соглашения при добавлении новых констант.
  cgImportModeSmetaSt        = 0;
  cgImportModeSmetaGrand     = 1;
  cgImportModeAktsFirstConst = 10; // учитывая замечание выше решил завести такую константу и постепенно
                                   // использовать ее в коде проверки импорта актов или смет вместо числа 10
  cgImportModeAktSt          = 10;
  cgImportModeAktGrand       = 11;
  cgImportModeAktArps110     = 12;

  // Режимы переноса цены из локальной сметы в акт выполненных работ
  cgSmetaPriceToBaseCost        = 0; // Цена из сметы переносится в базовую цену акта
  cgSmetaPriceToCurrCost        = 1; // Цена из сметы переносится в текущую цену акта
  cgSmetaPriceToBaseAndCurrCost = 2; // Цена из сметы переносится в базовую и текущую цену акта.

  coTechPart = 27999;

// Формат сметы (SmetaStroy.Priznak)
  cgPrizn_ARPS  = 0; // Российская "АРПС"
  cgPrizn_ST    = 2; // Украинская "СТ-Смета"
  cgPrizn_Grand = 4; // Российская "Гранд-Смета"

// Типы позиций Плана работ (SmetaSpec.TipPos)
  cgSmPos_Part = 10; // Сметный раздел
  cgSmPos_Job  = 20; // Работа
  cgSmPos_Res  = 30; // Ресурс
  cgSmPos_TD   = 40; // Техническое решение

  // Тип ресурса в локальной смете (SmetaSpec.TipRes)
  cgSmRes_ZP  =   0; // Зарплта
  cgSmRes_EM  =   1; // Стоимость эксплуатации машин
  cgSmRes_MC  =   2; // Материал
  cgSmRes_Dav =   3; // Давальческий материал
  cgSmRes_Ob  = 100; // Оборудование
  cgSmRes_SR  = 101; // Сметный раздел (в объектной или сводной смете)
  cgSmRes_LS  = 102; // Локальная смета (в объектной смете)
  cgSmRes_DZ  = 103; // Дополнительные затраты (в сводной смете)

  // Тип ресурса при выборе из смет (NormResource.ResType, PickSmeta.TipRes, SpDocSmeta.TipRes, PlanJob.TipRes)
  cgRes_None      = 0; // Прочие ресурсы
  cgRes_OZP       = 1; // Основная ЗП
  cgRes_ZPM       = 2; // ЗП машинистов
  cgRes_EM        = 3; // Эксплуатация машин и механизмов
  cgRes_MC        = 4; // Материалы
  cgRes_SP        = 5; // Сметная прибыль
  cgRes_NR        = 6; // Накладные расходы
  cgRes_Koef      = 7; // Коэффициент в акте
  cgRes_UslVR     = 8; // Услуга в виде работ
  cgRes_Dav       = 9; // Давальческий материал

  // Тип записи в таблице Koeff4Act (определяется значением поля Koeff4Act.wKoeff)
  cgRecK4A_Koeff = 0; // Коэффициент в АВР            (Koeff4Act.cDoc->KatSopr.NRec, Koeff4Act.cPosition->SmetaStroy.NRec)
  cgRecK4A_Limit = 1; // Лимитированная затрата в АВР (Koeff4Act.cDoc->KatSopr.NRec, Koeff4Act.cPosition->SmetaStroy.NRec)

  // Тип коэффициента сметы (SmetaKoeff.TipKoeff)
  cgTipKoef_Infl  =     0; // коэффициент учета инфляции
  cgTipKoef_Zima  =     1; // коэффициент зимнего удорожания
  cgTipKoef_NR    =     2; // норматив накладных расходов
  cgTipKoef_SP    =     3; // норматив сметной прибыли
  cgTipKoef_Trud  =     4; // коэффициент учета условий работ
  cgTipKoef_Proch =    10; // прочие коэффициенты
  cgTipKoef_Zatr  =    11; // коэффициенты к элементам затрат
  cgTipKoef_All   = 12345; // Все (параметр интерфейса GetKatKoeff)
  cgTipKoef_Invalid = rvMaxWord; // Недействительное значение коэффициента.

  // К чему относится коэффициент (SmetaKoeff.Primenenie)
  cgPrimenenie_OZP   =  0; // заработная плата
  cgPrimenenie_EM    =  1; // эксплуатация машин и механизмов
  cgPrimenenie_MC    =  2; // стоимость материалов
  cgPrimenenie_ZPM   =  3; // заработная плата механизаторов
  cgPrimenenie_TZO   =  4; // трудозатраты основных рабочих
  cgPrimenenie_TZM   =  5; // трудозатраты механизаторов
  cgPrimenenie_PZ    = 10; // прямые затраты
  cgPrimenenie_PZNR  = 11; // прямые затраты и накладные расходы
  cgPrimenenie_OZPNR = 12; // заработная плата и накладные расходы
  cgPrimenenie_ZPMNR = 13; // заработная плата механизаторов и накладные расходы
  cgPrimenenie_Invalid = rvMaxWord; // Недействительное значение поля.

  // Действие коэффициента (SmetaKoeff.Deystv)
  cgDeystv_Mul = 0; // умножение (*)
  cgDeystv_Div = 1; // деление   (/)
  cgDeystv_Add = 2; // сложение  (+)
  cgDeystv_Sub = 3; // вычитание (-)
  cgDeystv_Invalid = rvMaxWord; // Недействительное значение поля.

  // имена закладок для переключения области ввода процедурой SetCurrentTab,
  // имеющейся в SmetaSpecRazd, SmetaSpecRes, SmetaSpecJob
  tabAttr    = 1;
  tabKoeff   = 2;
  tabZatr    = 3;
  tabLimit   = 4;
  tabKomm    = 5;
  tabObj     = 6;
  tabOsn     = 7;
  tabLinkMTR = 8; // целевой учет

  // Возможные значения PickSmeta.wList, которые устанавливает интерфейс GetSmetaMCU (выбор из локальных смет)
  cgPickedSmetaResources = 0; // ресурсы локальной сметы
  cgPickedSmetaParts     = 1; // помеченные разделы локальной сметы (записи данного типа появляются при выборе из смет в плане строительства)
End;
