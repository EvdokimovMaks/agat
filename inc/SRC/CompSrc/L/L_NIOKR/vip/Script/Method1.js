// ===================================
// Метод расчета от фонда оплаты труда
// ===================================

  Executor.SetSmeta(CurSmeta())
  Executor.setPosition(CurExecutor())

  Stage.setPosition(Executor.cTheme)

  if ( Stage.IsLeaf != 0 )
  {
    Theme.setPosition(Stage.cNode)

    ClearLog()
    ItemInsert(1, 1, 1, 1, 4, 1, 'Входные данные');

    NalProc = GetStageNalogPercent(Stage.nRec)
    NalSum  = GetStageNalogSumma(Stage.nRec, Theme.dOpen)

    WriteLine(1, 'Расчет смет методом прямого расчета');
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

        sm = 0

        pSmetaPr  = 0
        pSmetaNR  = 0
        pSmetaECH = 0
        pSmetaFOT = 0
        pSmetaCCP = 0

        i = 0

        SpSmeta.SetParams(Stage.nRec, Executor.cFpCO, CurSmeta())

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
            // Оплата труда
              pSmetaFOT = SpSmeta.nRec
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
                Executor.Price = Executor.Price + SpSmeta.Summa
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
        WriteLine(i, 'зафиксировано сумм:'); i = i + 1
        WriteLine(i, '  ' + Executor.FixSum); i = i + 1

      // Трудоемкость в чел-днях Тр по каждому исполнителю

      //Шаг 1. Расчет фонда оплаты труда по каждому исполнителю (статья сметы):
      //Оплата труда = Тр x Счд.
        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, 'Шаг 1. Расчет оплаты труда по каждому исполнителю (статья сметы)'); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, ''); i = i + 1
        WriteLine(i, 'Оплата труда = Тр x Счд'); i = i + 1

        FOT = parseFloat(Executor.Tr) * parseFloat(kp1)
        FOT = RoundNIOKR(FOT, Theme.cVal)

        WriteLine(i, 'Оплата труда: ' + FOT); i = i + 1

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

      //Шаг 2. Расчет полной себестоимости собственных работ ССР по каждому исполнителю, как суммы статей: Оплата труда, ЕСН, накладные расходы, материалы, спецоборудование, командировочные, прочие затраты (статья сметы).
      //ЕСН = Оплата труда х Кесн
      //Накладные расходы = Оплата труда х Кнр
      //ССР = Оплата труда + ЕСН + Накладные расходы + стоимость материалов + стоимость спецоборудо-вания + сумма командировочных + сумма прочих затрат.

        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, 'Шаг 2. Расчет полной себестоимости собственных работ ССР по каждому исполнителю, как суммы статей: Оплата труда, ЕСН, накладные расходы, материалы, спецоборудование, командировочные, прочие затраты (статья сметы)'); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, ''); i = i + 1

        ECH = parseFloat(FOT) * parseFloat(kp4)
        ECH = RoundNIOKR(ECH, Theme.cVal)

        WriteLine(i, 'ЕСН = Оплата труда х Кесн = ' + ECH); i = i + 1

        NR = parseFloat(FOT) * parseFloat(kp3)
        NR = RoundNIOKR(NR, Theme.cVal)

        WriteLine(i, 'Накладные расходы = Оплата труда х Кнр = ' + NR); i = i + 1
        WriteLine(i, 'ССР = Оплата труда + ЕСН + Накладные расходы + стоимость материалов + стоимость спецоборудования + сумма командировочных + сумма прочих затрат'); i = i + 1

        CCP = parseFloat(FOT) + parseFloat(ECH) + parseFloat(NR) + parseFloat(sm)
        CCP = RoundNIOKR(CCP, Theme.cVal)

        WriteLine(i, 'ССР: ' + CCP); i = i + 1
        WriteLine(i, 'ССР уменьшенная: ' + (parseFloat(CCP) - parseFloat(Executor.FixSum))); i = i + 1

        if (SpSmeta.setPosition(pSmetaECH))
        {
          if (SpSmeta.LookReCalc == 1)
          {
            WriteLine(i, '!!! Пересчет заблокирован. Статья затрат: ' + SpSmeta.Kod + '. ' + SpSmeta.Name + ', сумма: ' + SpSmeta.Summa)
            i = i + 1
          }
          else
          {
            Executor.Summa = Executor.Summa + parseFloat(CCP)

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

      //Шаг 3. Расчет прибыли по каждому исполнителю (статья сметы)
      //Пр = ССР х Кпр.
        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, 'Шаг 3. Расчет прибыли по каждому исполнителю (статья сметы)'); i = i + 1
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

      //Шаг 4. Стоимость собственных работ исполнителя (статья сметы)
      //Цср = ССР + Пр.
        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, 'Шаг 4. Стоимость собственных работ исполнителя (статья сметы)'); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, ''); i = i + 1

        if (boGetTune('NIOKR.SMETA.PRIBYLINPRICE') && (parseFloat(Pr) > 0))
        {
          WriteLine(i, 'Цср = ССР + Пр'); i = i + 1
          CCP = parseFloat(CCP) + parseFloat(Pr)
        }
        else
        {
          WriteLine(i, 'Цср = ССР'); i = i + 1
        }

        if (SpSmeta.setPosition(pSmetaCCP))
        {
          if (SpSmeta.LookReCalc == 1)
          {
            WriteLine(i, '!!! Пересчет заблокирован. Статья затрат: ' + SpSmeta.Kod + '. ' + SpSmeta.Name + ', сумма: ' + SpSmeta.Summa)
            i = i + 1
          }
          else
          {
            SpSmeta.Summa = CCP
            SpSmeta.rewrite()
          }
        }
        else
        {
          WriteLine(i, '!!! В смете не найдена статья затрат "Стоимость собственных работ"')
          i = i + 1
        }

        // Расчет ФОТ
        if ( IsKredit == 0 )
          Executor.SumFOT = parseFloat(Executor.SumFOT) * parseFloat(GetControlActivityValue('%', 0, 0, Stage.dOpen)) / 100;

        Executor.SumFOT = RoundNIOKR(Executor.SumFOT, Theme.cVal)

        WriteLine(i, 'Сумма ФОТ: ' + Executor.SumFOT); i = i + 1

        if not (boGetTune('NIOKR.SMETA.PRIBYLINPRICE') && (parseFloat(Pr) > 0))
        {
          CCP = parseFloat(CCP) + parseFloat(Pr)
        }

        WriteLine(i, 'Цср: ' + CCP)

        // Полная стоимость по исполнителю: Цср + сторонние работы
        Executor.Price = Executor.Price + parseFloat(CCP)

        Executor.rewrite()
      }
    }

    RunProtocol(0, 1, CurExecutor(), _CurDateTime(), 0, 0);
  }