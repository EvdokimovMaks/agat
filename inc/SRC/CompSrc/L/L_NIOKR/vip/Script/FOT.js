// ===================================
// ����� ���
// ===================================

  Executor.SetSmeta(CurSmeta())
  Executor.setPosition(CurExecutor())

  Stage.setPosition(Executor.cTheme)

  if ( Stage.IsLeaf != 0 )
  {
    Theme.setPosition(Stage.cNode)

    ClearLog()
    ItemInsert(1, 1, 1, 1, 4, 1, '�室�� �����');

    WriteLine(1, '����� ���');
    WriteLine(2, '�����             : ' + Theme.Name + ', ��� ���� ᬥ�� - ' + Theme.dOpen);
    WriteLine(3, '�⠯ ������       : ' + Stage.VnNum + ' ' + Stage.Name + ', �������� ��� ��砫� - ' + Stage.dFrom + ', ��� ��ࠬ��஢ ���� - ' + Stage.dOpen);
    WriteLine(4, '��ਠ�� ᬥ��     : ' + Executor.SmetaName);
    WriteLine(5, '�ᯮ���⥫�       : ' + Executor.Abbr + ' ' + Executor.Name)
    WriteLine(6, '--------------------------------------------------------------------------------')

    if ( Stage.Status == 2 )
    {
      WriteLine(7, '� ����� �⠯� "������" ������ ᬥ�� ����饭');
      WriteLine(8, '--------------------------------------------------------------------------------')
    }
    else
    {
      kp = GetControlActivityValue('%', 0, 0, Stage.dOpen)

      ItemInsert(1, 1, 1, 1, 4, 2, '��ࠬ���� ���⮢');

      WriteLine(1, '% ��: ' + kp)

      ItemInsert(1, 1, 1, 1, 4, 3, '���� �����');

      WriteLine(1, '--------------------------------------------------------------------------------')

      i = 0

      SpSmeta.SetParams(Stage.nRec, Executor.cFpCO, CurSmeta())

      SmFOT = 0

      IsKredit = 0

      if ( ( Stage.wKredit == 0 ) && ( Executor.Abbr != '�⤥� 818' ) )
        IsKredit = 0
      else
        IsKredit = 1

      for(SpSmeta.getFirst(); ResultOfNavigation; SpSmeta.getNext())
      {
        i = i + 1

        WriteLine(i, '����� �����: ' + SpSmeta.Kod + '. ' + SpSmeta.Name); i = i + 1
        WriteLine(i, '  �㬬�        : ' + SpSmeta.Summa); i = i + 1
        WriteLine(i, '  ��䨪�஢���: ' + SpSmeta.FixSum)

        switch (SpSmeta.Kod)
        {
          case "203":
          // ����� ��㤠
            SmFOT = parseFloat(SmFOT) + parseFloat(SpSmeta.Summa)
            break;
          case "205":
          // ���
            if ( IsKredit == 0 )
              SmFOT = parseFloat(SmFOT) + parseFloat(SpSmeta.Summa)
            break;
          case "209":
          // �������� ��室�
            if ( IsKredit == 0 )
              SmFOT = parseFloat(SmFOT) + parseFloat(SpSmeta.Summa)
            break;
          case "211":
          // �ਡ��
            if ( IsKredit == 0 )
              SmFOT = parseFloat(SmFOT) + parseFloat(SpSmeta.Summa)
            break;
        }
      }

      ItemInsert(1, 1, 1, 1, 4, 3, '������ ����');

      WriteLine(i, '--------------------------------------------------------------------------------'); i = i + 1
      WriteLine(i, ''); i = i + 1
      WriteLine(i, '���㫠 ���� ��� ��� ��������� �������:'); i = i + 1
      WriteLine(i, '��� = (����� ��㤠 + ��� + �������� ��室� + �ਡ��) * ��業� ���� ��� / 100'); i = i + 1
      WriteLine(i, '��� �।���� �������: ��� ࠢ�� �㬬� �� ���� "����� ��㤠"'); i = i + 1

      // ����� ���
      if ( IsKredit == 0 )
        SmFOT = parseFloat(SmFOT) * parseFloat(kp) / 100;

      WriteLine(1, '�㬬� ���: ' + SmFOT);

      SmFOT = RoundNIOKR(SmFOT, Theme.cVal)

      Executor.SumFOT = SmFOT

      Executor.rewrite()
    }

    RunProtocol(0, 1, CurExecutor(), _CurDateTime(), 0, 0);
  }
