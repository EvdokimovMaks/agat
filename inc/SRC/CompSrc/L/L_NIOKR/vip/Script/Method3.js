// ===================================
// ��אַ� ��⮤ ����
// ===================================

// ���㣫���� �᫠ �� st-��� ������⢠ ������ ��᫥ ����⮩
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
    ItemInsert(1, 1, 1, 1, 4, 1, '�室�� �����');

    WriteLine(1, '����� ᬥ� ��⮤�� �� 䮭�� ������ ��㤠');
    WriteLine(2, '�����             : ' + Theme.VnNum + ' ' + Theme.Name + ', ��� ���� ᬥ�� - ' + Theme.dOpen);
    WriteLine(3, '�⠯ ������       : ' + Stage.VnNum + ' ' + Stage.Name + ', �������� ��� ��砫� - ' + Stage.dFrom + ', ��� ��ࠬ��஢ ���� - ' + Stage.dOpen);
    WriteLine(4, '��ਠ�� ᬥ��     : ' + Executor.SmetaName);
    WriteLine(5, '�ᯮ���⥫�       : ' + Executor.Abbr + ' ' + Executor.Name)
    WriteLine(6, '��㤮�������      : ' + Executor.Tr)
    WriteLine(7, '���४�� ������� : ' + Executor.Prib)
    WriteLine(8, '--------------------------------------------------------------------------------')

    if ( Stage.Status == 2 )
    {
      WriteLine(9, '� ����� �⠯� "������" ������ ᬥ�� �� �ᯮ���⥫� ����饭');
      WriteLine(10, '--------------------------------------------------------------------------------')
    }
    else
    {
      if (Executor.LookReCalc == 1)
      {
        WriteLine(9, '������ ᬥ�� �� �ᯮ���⥫� �������஢��');
      }
      else
      {
        IsKredit = 0

        if ( ( Stage.wKredit == 0 ) && ( Executor.Abbr != '�⤥� 818' ) )
          IsKredit = 0
        else
          IsKredit = 1

        kp1 = GetControlActivityValue('��' , Executor.nRec, Theme.Direct, Stage.dOpen)
        kp2 = GetControlActivityValue('���' , Executor.nRec, Theme.Direct, Stage.dOpen)
        kp3 = GetControlActivityValue('���' , Executor.nRec, Theme.Direct, Stage.dOpen)
        kp4 = GetControlActivityValue('���', Executor.nRec, Theme.Direct, Stage.dOpen)

        ItemInsert(1, 1, 1, 1, 4, 2, '��ࠬ���� ���⮢');

        WriteLine(1, '�� : ' + kp1)
        WriteLine(2, '��� : ' + kp2)
        WriteLine(3, '��� : ' + kp3)
        WriteLine(4, '���: ' + kp4)
        WriteLine(5, '% ��: ' + GetControlActivityValue('%', 0, 0, Stage.dOpen))

        ItemInsert(1, 1, 1, 1, 4, 3, '���� �����');

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
            WriteLine(i, '����� �����: ' + SpSmeta.Kod + '. ' + SpSmeta.Name)
            i = i + 1
            WriteLine(i, '  �㬬�        : ' + SpSmeta.Summa)
            i = i + 1
            WriteLine(i, '  ��䨪�஢���: ' + SpSmeta.FixSum)
          }
          else
          {
            WriteLine(i, '����� �����: ' + SpSmeta.Kod + '. ' + SpSmeta.Name)
            i = i + 1
            WriteLine(i, '  �����஢��')
          }

          Executor.FixSum = Executor.FixSum + SpSmeta.FixSum

          switch (SpSmeta.Kod)
          {
            case "201":
            // �㬬� ���ॡ���⥩ � ���ਠ��� �� ������� �ᯮ���⥫�
              sm = sm + SpSmeta.Summa
              break;
            case "202":
            // �㬬� ���ॡ���⥩ � ᯥ殡��㤮����� �� ������� �ᯮ���⥫�
              sm = sm + SpSmeta.Summa
              break;
            case "203":
            // ���
              FOT = SpSmeta.Summa
              break;
            case "205":
            // ���
              pSmetaECH = SpSmeta.nRec
              break;
            case "206":
            // �㬬� �������஢���� ��室�� �� ������� �ᯮ���⥫�
              sm = sm + SpSmeta.Summa
              break;
            case "207":
            // �⮨����� ��஭��� ࠡ��
              {
                Executor.Summa = Executor.Summa + SpSmeta.Summa
                SmStr = SpSmeta.Summa
                break;
              }
            case "208":
            // �㬬� ���� ��室�� �� ������� �ᯮ���⥫�
              sm = sm + SpSmeta.Summa
              break;
            case "209":
            // �������� ��室�
              pSmetaNR = SpSmeta.nRec
              break;
            case "210":
            // �⮨����� ᮡ�⢥���� ࠡ��
              pSmetaCCP = SpSmeta.nRec
              break;
            case "211":
            // �ਡ��
              pSmetaPr = SpSmeta.nRec
              break;
            default:
              if (SpSmeta.Priznak == 0) // ��室�
              {
                Executor.Summa = Executor.Summa + SpSmeta.Summa
              }
          }
        }

        i = 1

        ItemInsert(1, 1, 1, 1, 4, 3, '������ ����');

        WriteLine(i, '--------------------------------------------------------------------------------'); i = i + 1
        WriteLine(i, ''); i = i + 1
        WriteLine(i, '�⮨����� ���ਠ��� + �⮨����� ᯥ殡��㤮����� + �㬬� �������஢���� + �㬬� ���� �����:'); i = i + 1
        WriteLine(i, '  ' + sm); i = i + 1
        WriteLine(i, '���:'); i = i + 1
        WriteLine(i, '  ' + FOT); i = i + 1
        WriteLine(i, '��䨪�஢��� �㬬:'); i = i + 1
        WriteLine(i, '  ' + Executor.FixSum); i = i + 1

        Executor.SumFOT = FOT

        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, '��� 1. ����� ��㤮������ ࠡ�� �ᯮ���⥫� (����� ᬥ��)'); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, ''); i = i + 1
        WriteLine(i, '�� = ��� / ��'); i = i + 1

        if ( parseFloat(kp1) == 0 )
          Tp = 0
        else
          Tp = parseFloat(FOT) / parseFloat(kp1)

        Tp = RoundTr(parseFloat(Tp), 0)

        WriteLine(i, '��: ' + Tp); i = i + 1

        Executor.Tr = Tp

        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, '��� 2. ����� ᥡ��⮨���� ᮡ�⢥���� ࠡ�� �ᯮ���⥫� (����� ᬥ��)'); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, ''); i = i + 1

        ECH = parseFloat(FOT) * parseFloat(kp4)
        ECH = RoundNIOKR(ECH, Theme.cVal)

        WriteLine(i, '��� = ��� � ��� = '); i = i + 1
        WriteLine(i, '  ' + ECH); i = i + 1

        NR = parseFloat(FOT) * parseFloat(kp3)
        NR = RoundNIOKR(NR, Theme.cVal)

        WriteLine(i, '�������� ��室� = ��� � ��� ='); i = i + 1
        WriteLine(i, '  ' + NR); i = i + 1
        WriteLine(i, '��� = ��� + ��� + �������� ��室� + �⮨����� ���ਠ��� + �⮨����� ᯥ殡��㤮����� + �㬬� �������஢���� + �㬬� ���� ��室��'); i = i + 1

        CCP = parseFloat(FOT) + parseFloat(ECH) + parseFloat(NR) + parseFloat(sm)
        CCP = RoundNIOKR(CCP, Theme.cVal)

        WriteLine(i, '���: ' + CCP); i = i + 1
        WriteLine(i, '��� 㬥��襭���: ' + (parseFloat(CCP) - parseFloat(Executor.FixSum))); i = i + 1

        Executor.Summa = Executor.Summa + parseFloat(CCP)

        if (SpSmeta.setPosition(pSmetaECH))
        {
          if (SpSmeta.LookReCalc == 1)
          {
            WriteLine(i, '!!! ������ �������஢��. ����� �����: ' + SpSmeta.Kod + '. ' + SpSmeta.Name + ', �㬬�: ' + SpSmeta.Summa)
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
          WriteLine(i, '!!! � ᬥ� �� ������� ����� ����� "���"')
          i = i + 1
        }

        if ( IsKredit == 0 )
          Executor.SumFOT = parseFloat(Executor.SumFOT) + parseFloat(SpSmeta.Summa)

        if (SpSmeta.setPosition(pSmetaNR))
        {
          if (SpSmeta.LookReCalc == 1)
          {
            WriteLine(i, '!!! ������ �������஢��. ����� �����: ' + SpSmeta.Kod + '. ' + SpSmeta.Name + ', �㬬�: ' + SpSmeta.Summa)
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
          WriteLine(i, '!!! � ᬥ� �� ������� ����� ����� "�������� ��室�"')
          i = i + 1
        }

        if ( IsKredit == 0 )
          Executor.SumFOT = parseFloat(Executor.SumFOT) + parseFloat(SpSmeta.Summa)

        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, '��� 3. ����� �ਡ뫨'); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, ''); i = i + 1
        WriteLine(i, '�� = ��� 㬥��襭��� � ��� + 䨪�஢����� �㬬� ��������� �ਡ뫨'); i = i + 1

        Pr = (parseFloat(CCP) - parseFloat(Executor.FixSum)) * parseFloat(kp2) + parseFloat(Executor.Prib)
        Pr = RoundNIOKR(Pr, Theme.cVal)

        WriteLine(i, '��: ' + Pr); i = i + 1

        if (SpSmeta.setPosition(pSmetaPr))
        {
          if (SpSmeta.LookReCalc == 1)
          {
            WriteLine(i, '!!! ������ �������஢��. ����� �����: ' + SpSmeta.Kod + '. ' + SpSmeta.Name + ', �㬬�: ' + SpSmeta.Summa)
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
          WriteLine(i, '!!! � ᬥ� �� ������� ����� ����� "�ਡ��"')
          i = i + 1
        }

        if ( IsKredit == 0 )
          Executor.SumFOT = parseFloat(Executor.SumFOT) + parseFloat(SpSmeta.Summa)

        if (SpSmeta.setPosition(pSmetaCCP))
        {
          if (SpSmeta.LookReCalc == 1)
          {
            WriteLine(i, '!!! ������ �������஢��. ����� �����: ' + SpSmeta.Kod + '. ' + SpSmeta.Name + ', �㬬�: ' + SpSmeta.Summa)
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
          WriteLine(i, '!!! � ᬥ� �� ������� ����� ����� "�⮨����� ᮡ�⢥���� ࠡ��"')
          i = i + 1
        }

        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, '��� 4. �⮨����� ᮡ�⢥���� ࠡ�� �ᯮ���⥫� (����� ᬥ��)'); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, ''); i = i + 1

        if (boGetTune('NIOKR.SMETA.PRIBYLINPRICE') && (parseFloat(Pr) > 0))
        {
          WriteLine(i, '��� = ��� + ��'); i = i + 1
          WriteLine(i, '���: ' + parseFloat(CCP) + parseFloat(Pr)); i = i + 1
        }
        else
        {
          WriteLine(i, '��� = ���'); i = i + 1
          WriteLine(i, '���: ' + parseFloat(CCP)); i = i + 1
        }

        // ����� ���
        if ( IsKredit == 0 )
          Executor.SumFOT = parseFloat(Executor.SumFOT) * parseFloat(GetControlActivityValue('%', 0, 0, Stage.dOpen)) / 100;

        Executor.SumFOT = RoundNIOKR(Executor.SumFOT, Theme.cVal)

        WriteLine(i, '�㬬� ���: ' + Executor.SumFOT); i = i + 1

        // ������ �⮨����� �� �ᯮ���⥫�: ��� + ��஭��� ࠡ���
        Executor.Price = parseFloat(CCP) + parseFloat(Pr) + parseFloat(SmStr)

        Executor.rewrite()
      }
    }

    RunProtocol(0, 1, CurExecutor(), _CurDateTime(), 0, 0);
  }