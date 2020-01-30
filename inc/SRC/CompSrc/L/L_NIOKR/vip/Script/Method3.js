// ===================================
// Прямой метод расчета
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

    WriteLine(1, 'Расчет смет методом от фонда оплаты труда');
    WriteLine(2, 'Заказ             : ' + Theme.VnNum + ' ' + Theme.Name + ', дата расчета сметы - ' + Theme.dOpen);
    WriteLine(3, 'Этап заказа       : ' + Stage.VnNum + ' ' + Stage.Name + ', плановая дата начала - ' + Stage.dFrom + ', дата параметров расчета - ' + Stage.dOpen);
    WriteLine(4, 'Вариант сметы     : ' + Executor.SmetaName);
    WriteLine(5, 'Исполнитель       : ' + Executor.Abbr + ' ' + Executor.Name)
    WriteLine(6, 'Трудоемкость      : ' + Executor.Tr)
    WriteLine(7, 'Коррекция налогов : ' + Executor.Prib)
    WriteLine(8, '--------------------------------------------------------------------------------')

    if ( Stage.Status == 2 )
    {
      WriteLine(9, 'В статусе этапа "закрыт" пересчет сметы по исполнителю запрещен');
      WriteLine(10, '--------------------------------------------------------------------------------')
    }
    else
    {
      if (Executor.LookReCalc == 1)
      {
        WriteLine(9, 'Пересчет сметы по исполнителю заблокирован');
      }
      else
      {
        IsKredit = 0

        if ( ( Stage.wKredit == 0 ) && ( Executor.Abbr != 'Отдел 818' ) )
          IsKredit = 0
        else
          IsKredit = 1

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

        Executor.Summa  = 0
        Executor.Price  = 0
        Executor.FixSum = 0

        SpSmeta.SetParams(Stage.nRec, Executor.cFpCO, CurSmeta())

        sm    = 0
        FOT   = 0
        SmStr = 0

        pSmetaECH = 0
        pSmetaNR  = 0
        pSmetaPr  = 0
        pSmetaCCP = 0

        i = 0

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

          Executor.FixSum = Executor.FixSum + SpSmeta.FixSum

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
            // ФОТ
              FOT = SpSmeta.Summa
              break;
            case "205":
            // ЕСН
              pSmetaECH = SpSmeta.nRec
              break;
            case "206":
            // Сумма командировочных расходов по каждому исполнителю
              sm = sm + SpSmeta.Summa
              break;
            case "207":
            // Стоимость сторонних работ
              {
                Executor.Summa = Executor.Summa + SpSmeta.Summa
                SmStr = SpSmeta.Summa
                break;
              }
            case "208":
            // Сумма прочих расходов по каждому исполнителю
              sm = sm + SpSmeta.Summa
              break;
            case "209":
            // Накладные расходы
              pSmetaNR = SpSmeta.nRec
              break;
            case "210":
            // Стоимость собственных работ
              pSmetaCCP = SpSmeta.nRec
              break;
            case "211":
            // Прибыль
              pSmetaPr = SpSmeta.nRec
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
        WriteLine(i, 'ФОТ:'); i = i + 1
        WriteLine(i, '  ' + FOT); i = i + 1
        WriteLine(i, 'зафиксировано сумм:'); i = i + 1
        WriteLine(i, '  ' + Executor.FixSum); i = i + 1

        Executor.SumFOT = FOT

        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, 'Шаг 1. Расчет трудоемкости работ исполнителя (статья сметы)'); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, ''); i = i + 1
        WriteLine(i, 'Тр = ФОТ / Счд'); i = i + 1

        if ( parseFloat(kp1) == 0 )
          Tp = 0
        else
          Tp = parseFloat(FOT) / parseFloat(kp1)

        Tp = RoundTr(parseFloat(Tp), 0)

        WriteLine(i, 'Тр: ' + Tp); i = i + 1

        Executor.Tr = Tp

        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, 'Шаг 2. Расчет себестоимости собственных работ исполнителя (статья сметы)'); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, ''); i = i + 1

        ECH = parseFloat(FOT) * parseFloat(kp4)
        ECH = RoundNIOKR(ECH, Theme.cVal)

        WriteLine(i, 'ЕСН = ФОТ х Кесн = '); i = i + 1
        WriteLine(i, '  ' + ECH); i = i + 1

        NR = parseFloat(FOT) * parseFloat(kp3)
        NR = RoundNIOKR(NR, Theme.cVal)

        WriteLine(i, 'Накладные расходы = ФОТ х Кнр ='); i = i + 1
        WriteLine(i, '  ' + NR); i = i + 1
        WriteLine(i, 'ССР = ФОТ + ЕСН + Накладные расходы + стоимость материалов + стоимость спецоборудования + сумма командировочных + сумма прочих расходов'); i = i + 1

        CCP = parseFloat(FOT) + parseFloat(ECH) + parseFloat(NR) + parseFloat(sm)
        CCP = RoundNIOKR(CCP, Theme.cVal)

        WriteLine(i, 'ССР: ' + CCP); i = i + 1
        WriteLine(i, 'ССР уменьшенная: ' + (parseFloat(CCP) - parseFloat(Executor.FixSum))); i = i + 1

        Executor.Summa = Executor.Summa + parseFloat(CCP)

        if (SpSmeta.setPosition(pSmetaECH))
        {
          if (SpSmeta.LookReCalc == 1)
          {
            WriteLine(i, '!!! Пересчет заблокирован. Статья затрат: ' + SpSmeta.Kod + '. ' + SpSmeta.Name + ', сумма: ' + SpSmeta.Summa)
            i = i + 1
          }
          else
          {
            SpSmeta.Summa = ECH
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

        if (SpSmeta.setPosition(pSmetaNR))
        {
          if (SpSmeta.LookReCalc == 1)
          {
            WriteLine(i, '!!! Пересчет заблокирован. Статья затрат: ' + SpSmeta.Kod + '. ' + SpSmeta.Name + ', сумма: ' + SpSmeta.Summa)
            i = i + 1
          }
          else
          {
            SpSmeta.Summa = NR
            SpSmeta.rewrite()
          }
        }
        else
        {
          WriteLine(i, '!!! В смете не найдена статья затрат "Накладные расходы"')
          i = i + 1
        }

        if ( IsKredit == 0 )
          Executor.SumFOT = parseFloat(Executor.SumFOT) + parseFloat(SpSmeta.Summa)

        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, 'Шаг 3. Расчет прибыли'); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, ''); i = i + 1
        WriteLine(i, 'Пр = ССР уменьшенная х Кпр + фиксированная сумма изменения прибыли'); i = i + 1

        Pr = (parseFloat(CCP) - parseFloat(Executor.FixSum)) * parseFloat(kp2) + parseFloat(Executor.Prib)
        Pr = RoundNIOKR(Pr, Theme.cVal)

        WriteLine(i, 'Пр: ' + Pr); i = i + 1

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

        if (SpSmeta.setPosition(pSmetaCCP))
        {
          if (SpSmeta.LookReCalc == 1)
          {
            WriteLine(i, '!!! Пересчет заблокирован. Статья затрат: ' + SpSmeta.Kod + '. ' + SpSmeta.Name + ', сумма: ' + SpSmeta.Summa)
            i = i + 1
          }
          else
          {
            SpSmeta.Summa = parseFloat(CCP) + parseFloat(Pr)
            SpSmeta.rewrite()
          }
        }
        else
        {
          WriteLine(i, '!!! В смете не найдена статья затрат "Стоимость собственных работ"')
          i = i + 1
        }

        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, 'Шаг 4. Стоимость собственных работ исполнителя (статья сметы)'); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, ''); i = i + 1

        if (boGetTune('NIOKR.SMETA.PRIBYLINPRICE') && (parseFloat(Pr) > 0))
        {
          WriteLine(i, 'Цср = ССР + Пр'); i = i + 1
          WriteLine(i, 'Цср: ' + parseFloat(CCP) + parseFloat(Pr)); i = i + 1
        }
        else
        {
          WriteLine(i, 'Цср = ССР'); i = i + 1
          WriteLine(i, 'Цср: ' + parseFloat(CCP)); i = i + 1
        }

        // Расчет ФОТ
        if ( IsKredit == 0 )
          Executor.SumFOT = parseFloat(Executor.SumFOT) * parseFloat(GetControlActivityValue('%', 0, 0, Stage.dOpen)) / 100;

        Executor.SumFOT = RoundNIOKR(Executor.SumFOT, Theme.cVal)

        WriteLine(i, 'Сумма ФОТ: ' + Executor.SumFOT); i = i + 1

        // Полная стоимость по исполнителю: Цср + сторонние работы
        Executor.Price = parseFloat(CCP) + parseFloat(Pr) + parseFloat(SmStr)

        Executor.rewrite()
      }
    }

    RunProtocol(0, 1, CurExecutor(), _CurDateTime(), 0, 0);
  }