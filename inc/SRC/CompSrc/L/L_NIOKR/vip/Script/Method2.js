// ===================================
// Обратный метод расчета
// ===================================

// округление числа до st-ого количества знаков после запятой
function RoundTr(x, st)
{
   str = String(Math.round(x*Math.pow(10, st))/Math.pow(10, st)).replace(',' , '.');
   return str;
}

  Executor.SetSmeta(CurSmeta())
  Executor.setPosition(CurExecutor())

  Stage.setPosition(Executor.cTheme)

  if ( Stage.IsLeaf != 0 )
  {
    Theme.setPosition(Stage.cNode)

    NalProc = GetStageNalogPercent(Stage.nRec)
    NalSum  = GetStageNalogSumma(Stage.nRec, Theme.dOpen)

    ClearLog()
    ItemInsert(1, 1, 1, 1, 4, 1, 'Входные данные');

    WriteLine(1, 'Расчет смет методом обратного расчета');
    WriteLine(2, 'Заказ             : ' + Theme.VnNum + ' ' + Theme.Name + ', дата расчета сметы - ' + Theme.dOpen);
    WriteLine(3, 'Этап заказа       : ' + Stage.VnNum + ' ' + Stage.Name + ', плановая дата начала - ' + Stage.dFrom + ', дата параметров расчета - ' + Stage.dOpen);
    WriteLine(4, 'Вариант сметы     : ' + Executor.SmetaName);
    WriteLine(5, 'Исполнитель       : ' + Executor.Abbr + ' ' + Executor.Name)
    WriteLine(6, 'Коррекция прибыли : ' + Executor.Prib)
    WriteLine(7, '--------------------------------------------------------------------------------')

    if ( Stage.Status == 2 )
    {
      WriteLine(8, 'В статусе этапа "закрыт" пересчет сметы по исполнителю запрещен');
      WriteLine(9, '--------------------------------------------------------------------------------')
    }
    else
    {
      if (Executor.LookReCalc == 1)
      {
        WriteLine(8, 'Пересчет сметы по исполнителю заблокирован');
      }
      else
      {
        kp1 = GetControlActivityValue('Счд' , Executor.nRec, Theme.Direct, Stage.dOpen)
        kp2 = GetControlActivityValue('Кпр' , Executor.nRec, Theme.Direct, Stage.dOpen)
        kp3 = GetControlActivityValue('Кнр' , Executor.nRec, Theme.Direct, Stage.dOpen)
        kp4 = GetControlActivityValue('Кесн', Executor.nRec, Theme.Direct, Stage.dOpen)

        ItemInsert(1, 1, 1, 1, 4, 2, 'Параметры расчетов');

        WriteLine(1, 'Счд : ' + kp1)
        WriteLine(2, 'Кпр : ' + kp2)
        WriteLine(3, 'Кнр : ' + kp3)
        WriteLine(4, 'Кесн: ' + kp4)
        WriteLine(5, '% ЗП: ' + GetControlActivityValue('%', 0, 0, Stage.dOpen))

        ItemInsert(1, 1, 1, 1, 4, 3, 'Статьи затрат');

        WriteLine(1, '--------------------------------------------------------------------------------')

        Executor.Summa = 0
        Executor.Price = 0

        sm   = 0
        SSR  = 0
        OKPi = 0
        CHP  = 0

        pSmetaFOT = 0
        pSmetaECH = 0
        pSmetaPr  = 0
        pSmetaNR  = 0
        pSmetaTr  = 0

        SpSmeta.SetParams(Stage.nRec, Executor.cFpCO, CurSmeta())

        i = 0

        IsKredit = 0

        if ( ( Stage.wKredit == 0 ) && ( Executor.Abbr != 'Отдел 818' ) )
          IsKredit = 0
        else
          IsKredit = 1

        for(SpSmeta.getFirst(); ResultOfNavigation; SpSmeta.getNext())
        {
          i = i + 1

          if (SpSmeta.Look == 0)
          {
            WriteLine(i, 'Статья затрат: ' + SpSmeta.Kod + '. ' + SpSmeta.Name)
            i = i + 1
            WriteLine(i, '  сумма        : ' + SpSmeta.Summa)
            i = i + 1
            WriteLine(i, '  зафиксировано: ' + SpSmeta.FixSum)
          }
          else
          {
            WriteLine(i, 'Статья затрат: ' + SpSmeta.Kod + '. ' + SpSmeta.Name)
            i = i + 1
            WriteLine(i, '  блокировка')
          }

          switch (SpSmeta.Kod)
          {
            case "201":
            // Сумма потребностей в материалах по каждому исполнителю
              sm = sm + SpSmeta.Summa
              break;
            case "202":
            // Сумма потребностей в спецоборудовании по каждому исполнителю
              sm = sm + SpSmeta.Summa
              break;
            case "203":
            // Оплата труда
              pSmetaFOT = SpSmeta.nRec
              break;
            case "204":
            // ЕСН
              pSmetaECH = SpSmeta.nRec
              break;
            case "205":
            // Сумма командировочных расходов по каждому исполнителю
              sm = sm + SpSmeta.Summa
              break;
            case "206":
            // Стоимость сторонних работ
              {
                Executor.Summa = Executor.Summa + SpSmeta.Summa
                Executor.Price = Executor.Price + SpSmeta.Summa
                break;
              }
            case "207":
            // Сумма прочих расходов по каждому исполнителю
              sm = sm + SpSmeta.Summa
              break;
            case "208":
            // Накладные расходы
              pSmetaNR = SpSmeta.nRec
              break;
            case "209":
            // Прибыль
              pSmetaPr = SpSmeta.nRec
              break;
            case "210":
            // Стоимость собственных работ
              SSR = SpSmeta.Summa
              Executor.Price = Executor.Price + SpSmeta.Summa
              break;
            default:
              if (SpSmeta.Priznak == 0) // расходы
              {
                Executor.Summa = Executor.Summa + SpSmeta.Summa
              }
          }
        }

        i = 1

        ItemInsert(1, 1, 1, 1, 4, 3, 'алгоритм расчета');

        WriteLine(i, '--------------------------------------------------------------------------------'); i = i + 1
        WriteLine(i, ''); i = i + 1
        WriteLine(i, 'стоимость материалов + стоимость спецоборудования + сумма командировочных + сумма прочих затрат:'); i = i + 1
        WriteLine(i, '  ' + sm); i = i + 1
        WriteLine(i, 'Цср:'); i = i + 1
        WriteLine(i, '  ' + SSR); i = i + 1

      //Шаг 1. Расчет коэффициента обратной раскрутки
      //Кор = (1 + Кесн + Кнр) + (1 + Кесн + Кнр) х Кпр.

        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, 'Шаг 1. Расчет коэффициента обратной раскрутки'); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, ''); i = i + 1

        if (boGetTune('NIOKR.SMETA.PRIBYLINPRICE') && (parseFloat(kp2) > 0))
        {
          WriteLine(i, 'Кор = (1 + Кесн + Кнр) + (1 + Кесн + Кнр) х Кпр'); i = i + 1

          Kop = 1.0 + parseFloat(kp4) + parseFloat(kp3)
          Kop = Kop + parseFloat(kp2) + parseFloat(kp2) * parseFloat(kp4) + parseFloat(kp2) * parseFloat(kp3)
        }
        else
        {
          WriteLine(i, 'Кор = (1 + Кесн + Кнр)'); i = i + 1

          Kop = 1.0 + parseFloat(kp4) + parseFloat(kp3)
        }

        WriteLine(i, 'Кор: ' + Kop); i = i + 1

      //Шаг 2. Расчет фонда оплаты труда исполнителя (статья сметы)
      //Оплата труда = (Цср - (стоимость материалов + стоимость спецоборудования + сумма командировоч-ных + сумма прочих расходов)+ (то же)х Кпр / Кор.

        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, 'Шаг 2. Расчет фонда оплаты труда исполнителя (статья сметы)'); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, ''); i = i + 1

        if (boGetTune('NIOKR.SMETA.PRIBYLINPRICE') && (parseFloat(kp2) > 0))
        {
          WriteLine(i, 'Оплата труда = (Цср - (материалы + спецоборудование + командировочные + прочие расходы) + (материалы + спецоборудование + командировочные + прочие расходы) х Кпр + фиксированная сумма изменения прибыли) / Кор'); i = i + 1

          FOT = parseFloat(SSR) - parseFloat(sm) - parseFloat(sm) * parseFloat(kp2) + parseFloat(Executor.Prib)
          FOT = parseFloat(FOT) / parseFloat(Kop)
        }
        else
        {
          WriteLine(i, 'Оплата труда = (Цср - (материалы + спецоборудование + командировочные + прочие расходы) + фиксированная сумма изменения прибыли) / Кор'); i = i + 1

          FOT = parseFloat(SSR) - parseFloat(sm) + parseFloat(Executor.Prib)
          FOT = parseFloat(FOT) / parseFloat(Kop)
        }

        CHP = CHP - FOT

        OKP = FOT
        FOT = RoundNIOKR(FOT, Theme.cVal)
        OKP = OKP - FOT

        OKPi = OKPi + OKP

        WriteLine(i, 'Оплата труда    : ' + FOT); i = i + 1
        WriteLine(i, 'Округление      : ' + OKP); i = i + 1
        WriteLine(i, 'Округление итого: ' + OKPi); i = i + 1

        if (SpSmeta.setPosition(pSmetaFOT))
        {
          if (SpSmeta.LookReCalc == 1)
          {
            WriteLine(i, '!!! Пересчет заблокирован. Статья затрат: ' + SpSmeta.Kod + '. ' + SpSmeta.Name + ', сумма: ' + SpSmeta.Summa)
            i = i + 1
          }
          else
          {
            SpSmeta.Summa = FOT
            SpSmeta.rewrite()
          }
        }
        else
        {
          WriteLine(i, '!!! В смете не найдена статья затрат "Оплата труда"')
          i = i + 1
        }

        Executor.SumFOT = SpSmeta.Summa

      //Шаг 3. Расчет трудоемкости по исполнителю (статья сметы)
      //Тр = Оплата труда / Счд.

        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, 'Шаг 3. Расчет трудоемкости по исполнителю (статья сметы)'); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, ''); i = i + 1
        WriteLine(i, 'Тр = Оплата труда / Счд'); i = i + 1

        if ( parseFloat(kp1) == 0 )
          Tp = 0
        else
          Tp = parseFloat(FOT) / parseFloat(kp1)

        Tp = RoundTr(parseFloat(Tp), 0)

        WriteLine(i, 'Тр: ' + Tp); i = i + 1

        Executor.Tr = Tp

      //Шаг 4. Расчет отчислений по ЕСН (статья сметы)
      //Сесн = Оплата труда х Кесн.

        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, 'Шаг 4. Расчет отчислений по ЕСН (статья сметы)'); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, ''); i = i + 1
        WriteLine(i, 'Сесн = Оплата труда х Кесн'); i = i + 1

        Cech = parseFloat(FOT) * parseFloat(kp4)

        CHP = CHP - Cech

        OKP  = Cech
        Cech = RoundNIOKR(Cech, Theme.cVal)
        OKP  = OKP - Cech

        OKPi = OKPi + OKP

        WriteLine(i, 'Сесн            : ' + Cech); i = i + 1
        WriteLine(i, 'Округление      : ' + OKP); i = i + 1
        WriteLine(i, 'Округление итого: ' + OKPi); i = i + 1

        if (SpSmeta.setPosition(pSmetaECH))
        {
          if (SpSmeta.LookReCalc == 1)
          {
            WriteLine(i, '!!! Пересчет заблокирован. Статья затрат: ' + SpSmeta.Kod + '. ' + SpSmeta.Name + ', сумма: ' + SpSmeta.Summa)
            i = i + 1
          }
          else
          {
            SpSmeta.Summa = Cech
            SpSmeta.rewrite()
          }
        }
        else
        {
          WriteLine(i, '!!! В смете не найдена статья затрат "ЕСН"')
          i = i + 1
        }

        if ( IsKredit == 0 )
          Executor.SumFOT = parseFloat(Executor.SumFOT) + parseFloat(SpSmeta.Summa)

      //Шаг 5. Расчет прибыли (статья сметы)
      //Пр = Цср - Цср / (1+Кпр).

        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, 'Шаг 5. Расчет прибыли (статья сметы)'); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, ''); i = i + 1

        if (boGetTune('NIOKR.SMETA.PRIBYLINPRICE') && (parseFloat(kp2) > 0))
        {
          WriteLine(i, 'Пр = Цср - Цср / (1+Кпр)'); i = i + 1
          Pr = parseFloat(SSR) - parseFloat(SSR) / parseFloat(1 + parseFloat(kp2))
        }
        else
        {
          WriteLine(i, 'Пр = Цср x Кпр'); i = i + 1
          Pr = parseFloat(SSR) * parseFloat(kp2)
        }

        OKP  = Pr
        Pr   = RoundNIOKR(Pr, Theme.cVal)
        OKP  = OKP - Pr
        OKPi = OKPi + OKP

        WriteLine(i, 'Пр        : ' + Pr); i = i + 1
        WriteLine(i, 'Округление: ' + OKP); i = i + 1
        WriteLine(i, 'Округление итого: ' + OKPi); i = i + 1

        if (SpSmeta.setPosition(pSmetaPr))
        {
          if (SpSmeta.LookReCalc == 1)
          {
            WriteLine(i, '!!! Пересчет заблокирован. Статья затрат: ' + SpSmeta.Kod + '. ' + SpSmeta.Name + ', сумма: ' + SpSmeta.Summa)
            i = i + 1
          }
          else
          {
            SpSmeta.Summa = Pr
            SpSmeta.rewrite()
          }
        }
        else
        {
          WriteLine(i, '!!! В смете не найдена статья затрат "Прибыль"')
          i = i + 1
        }

        if ( IsKredit == 0 )
          Executor.SumFOT = parseFloat(Executor.SumFOT) + parseFloat(SpSmeta.Summa)

      //Шаг 6. Расчет накладных расходов (статья сметы)
      //Снр = Цср - (Оплата труда + Сесн + стоимость материалов + стоимость спецоборудования + сумма командировочных + сумма прочих расходов + Пр).

        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, 'Шаг 6. Расчет накладных расходов (статья сметы) с учетом округлений'); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, ''); i = i + 1
        WriteLine(i, 'Округления = ' + OKPi); i = i + 1
        WriteLine(i, ''); i = i + 1

        if (boGetTune('NIOKR.SMETA.PRIBYLINPRICE') && (parseFloat(Pr) > 0))
        {
          WriteLine(i, 'Снр = Цср - (Оплата труда + Сесн + стоимость материалов + стоимость спецоборудования + сумма командировочных + сумма прочих расходов + Пр)'); i = i + 1

          CHP = CHP + parseFloat(SSR) - (parseFloat(sm) + parseFloat(Pr))
        }
        else
        {
          WriteLine(i, 'Снр = Цср - (Оплата труда + Сесн + стоимость материалов + стоимость спецоборудования + сумма командировочных + сумма прочих расходов)'); i = i + 1

          CHP = CHP + parseFloat(SSR) - (parseFloat(sm))
        }

        WriteLine(i, 'Снр (без округления): ' + CHP); i = i + 1
        CHP = RoundNIOKR(CHP, Theme.cVal)

        if ( CHP <= 0 )
        {
          WriteLine(i, 'Сесн (без округления): ' + Cech); i = i + 1
          WriteLine(i, 'Сесн = Сесн + Округления'); i = i + 1

          Cech = parseFloat(Cech) + (parseFloat(OKPi))
          Cech = RoundNIOKR(Cech, Theme.cVal)

          WriteLine(i, 'Сесн округленная (с учетом остальных округлений): ' + Cech); i = i + 1

          if (SpSmeta.setPosition(pSmetaECH))
          {
            if (SpSmeta.LookReCalc == 1)
            {
              WriteLine(i, '!!! Пересчет заблокирован. Статья затрат: ' + SpSmeta.Kod + '. ' + SpSmeta.Name + ', сумма: ' + SpSmeta.Summa)
              i = i + 1
            }
            else
            {
              SpSmeta.Summa = Cech
              SpSmeta.rewrite()
            }
          }
          else
          {
            WriteLine(i, '!!! В смете не найдена статья затрат "ЕСН"')
            i = i + 1
          }
        }
        else
        {
          WriteLine(i, 'Снр = Снр + Округления'); i = i + 1

          CHP = parseFloat(CHP) + (parseFloat(OKPi))
          CHP = RoundNIOKR(CHP, Theme.cVal)
        }

        if (SpSmeta.setPosition(pSmetaNR))
        {
          if (SpSmeta.LookReCalc == 1)
          {
            WriteLine(i, '!!! Пересчет заблокирован. Статья затрат: ' + SpSmeta.Kod + '. ' + SpSmeta.Name + ', сумма: ' + SpSmeta.Summa)
            i = i + 1
          }
          else
          {
            SpSmeta.Summa = CHP
            SpSmeta.rewrite()
          }
        }
        else
        {
          WriteLine(i, '!!! В смете не найдена статья затрат "Накладные расходы"')
          i = i + 1
        }

        // Расчет ФОТ
        if ( IsKredit == 0 )
        {
          Executor.SumFOT = Executor.SumFOT + parseFloat(SpSmeta.Summa);
          Executor.SumFOT = parseFloat(Executor.SumFOT) * parseFloat(GetControlActivityValue('%', 0, 0, Stage.dOpen)) / 100;
        }

        Executor.SumFOT = RoundNIOKR(Executor.SumFOT, Theme.cVal)

        WriteLine(i, 'Сумма ФОТ: ' + Executor.SumFOT); i = i + 1
        WriteLine(i, 'Снр округленная (с учетом остальных округлений): ' + CHP); i = i + 1
        WriteLine(i, 'Снр: ' + CHP); i = i + 1

        Executor.Summa = Executor.Summa + parseFloat(FOT) + parseFloat(Cech) + parseFloat(sm) + parseFloat(CHP)

        WriteLine(i, 'Цср: ' + Executor.Summa)

        Executor.rewrite()
      }
    }

    RunProtocol(0, 1, CurExecutor(), _CurDateTime(), 0, 0);
  }