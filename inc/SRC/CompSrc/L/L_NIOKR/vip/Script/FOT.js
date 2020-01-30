// ===================================
// Расчет ФОТ
// ===================================

  Executor.SetSmeta(CurSmeta())
  Executor.setPosition(CurExecutor())

  Stage.setPosition(Executor.cTheme)

  if ( Stage.IsLeaf != 0 )
  {
    Theme.setPosition(Stage.cNode)

    ClearLog()
    ItemInsert(1, 1, 1, 1, 4, 1, 'Входные данные');

    WriteLine(1, 'Расчет ФОТ');
    WriteLine(2, 'Заказ             : ' + Theme.Name + ', дата расчета сметы - ' + Theme.dOpen);
    WriteLine(3, 'Этап заказа       : ' + Stage.VnNum + ' ' + Stage.Name + ', плановая дата начала - ' + Stage.dFrom + ', дата параметров расчета - ' + Stage.dOpen);
    WriteLine(4, 'Вариант сметы     : ' + Executor.SmetaName);
    WriteLine(5, 'Исполнитель       : ' + Executor.Abbr + ' ' + Executor.Name)
    WriteLine(6, '--------------------------------------------------------------------------------')

    if ( Stage.Status == 2 )
    {
      WriteLine(7, 'В статусе этапа "закрыт" пересчет сметы запрещен');
      WriteLine(8, '--------------------------------------------------------------------------------')
    }
    else
    {
      kp = GetControlActivityValue('%', 0, 0, Stage.dOpen)

      ItemInsert(1, 1, 1, 1, 4, 2, 'Параметры расчетов');

      WriteLine(1, '% ЗП: ' + kp)

      ItemInsert(1, 1, 1, 1, 4, 3, 'Статьи затрат');

      WriteLine(1, '--------------------------------------------------------------------------------')

      i = 0

      SpSmeta.SetParams(Stage.nRec, Executor.cFpCO, CurSmeta())

      SmFOT = 0

      IsKredit = 0

      if ( ( Stage.wKredit == 0 ) && ( Executor.Abbr != 'Отдел 818' ) )
        IsKredit = 0
      else
        IsKredit = 1

      for(SpSmeta.getFirst(); ResultOfNavigation; SpSmeta.getNext())
      {
        i = i + 1

        WriteLine(i, 'Статья затрат: ' + SpSmeta.Kod + '. ' + SpSmeta.Name); i = i + 1
        WriteLine(i, '  сумма        : ' + SpSmeta.Summa); i = i + 1
        WriteLine(i, '  зафиксировано: ' + SpSmeta.FixSum)

        switch (SpSmeta.Kod)
        {
          case "203":
          // Оплата труда
            SmFOT = parseFloat(SmFOT) + parseFloat(SpSmeta.Summa)
            break;
          case "205":
          // ЕСН
            if ( IsKredit == 0 )
              SmFOT = parseFloat(SmFOT) + parseFloat(SpSmeta.Summa)
            break;
          case "209":
          // Накладные расходы
            if ( IsKredit == 0 )
              SmFOT = parseFloat(SmFOT) + parseFloat(SpSmeta.Summa)
            break;
          case "211":
          // Прибыль
            if ( IsKredit == 0 )
              SmFOT = parseFloat(SmFOT) + parseFloat(SpSmeta.Summa)
            break;
        }
      }

      ItemInsert(1, 1, 1, 1, 4, 3, 'алгоритм расчета');

      WriteLine(i, '--------------------------------------------------------------------------------'); i = i + 1
      WriteLine(i, ''); i = i + 1
      WriteLine(i, 'Формула расчета ФОТ для договорных заказов:'); i = i + 1
      WriteLine(i, 'ФОТ = (Оплата труда + ЕСН + Накладные расходы + Прибыль) * Процент расчета ФОТ / 100'); i = i + 1
      WriteLine(i, 'Для кредитных заказов: ФОТ равен сумме по статье "Оплата труда"'); i = i + 1

      // Расчет ФОТ
      if ( IsKredit == 0 )
        SmFOT = parseFloat(SmFOT) * parseFloat(kp) / 100;

      WriteLine(1, 'Сумма ФОТ: ' + SmFOT);

      SmFOT = RoundNIOKR(SmFOT, Theme.cVal)

      Executor.SumFOT = SmFOT

      Executor.rewrite()
    }

    RunProtocol(0, 1, CurExecutor(), _CurDateTime(), 0, 0);
  }
