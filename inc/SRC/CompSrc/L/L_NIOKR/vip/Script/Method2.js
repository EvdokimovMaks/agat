// ===================================
// ����� ��⮤ ����
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

    WriteLine(1, '����� ᬥ� ��⮤�� ���⭮�� ����');
    WriteLine(2, '�����             : ' + Theme.VnNum + ' ' + Theme.Name + ', ��� ���� ᬥ�� - ' + Theme.dOpen);
    WriteLine(3, '�⠯ ������       : ' + Stage.VnNum + ' ' + Stage.Name + ', �������� ��� ��砫� - ' + Stage.dFrom + ', ��� ��ࠬ��஢ ���� - ' + Stage.dOpen);
    WriteLine(4, '��ਠ�� ᬥ��     : ' + Executor.SmetaName);
    WriteLine(5, '�ᯮ���⥫�       : ' + Executor.Abbr + ' ' + Executor.Name)
    WriteLine(6, '���४�� �ਡ뫨 : ' + Executor.Prib)
    WriteLine(7, '--------------------------------------------------------------------------------')

    if ( Stage.Status == 2 )
    {
      WriteLine(8, '� ����� �⠯� "������" ������ ᬥ�� �� �ᯮ���⥫� ����饭');
      WriteLine(9, '--------------------------------------------------------------------------------')
    }
    else
    {
      if (Executor.LookReCalc == 1)
      {
        WriteLine(8, '������ ᬥ�� �� �ᯮ���⥫� �������஢��');
      }
      else
      {
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

        if ( ( Stage.wKredit == 0 ) && ( Executor.Abbr != '�⤥� 818' ) )
          IsKredit = 0
        else
          IsKredit = 1

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
            // ����� ��㤠
              pSmetaFOT = SpSmeta.nRec
              break;
            case "204":
            // ���
              pSmetaECH = SpSmeta.nRec
              break;
            case "205":
            // �㬬� �������஢���� ��室�� �� ������� �ᯮ���⥫�
              sm = sm + SpSmeta.Summa
              break;
            case "206":
            // �⮨����� ��஭��� ࠡ��
              {
                Executor.Summa = Executor.Summa + SpSmeta.Summa
                Executor.Price = Executor.Price + SpSmeta.Summa
                break;
              }
            case "207":
            // �㬬� ���� ��室�� �� ������� �ᯮ���⥫�
              sm = sm + SpSmeta.Summa
              break;
            case "208":
            // �������� ��室�
              pSmetaNR = SpSmeta.nRec
              break;
            case "209":
            // �ਡ��
              pSmetaPr = SpSmeta.nRec
              break;
            case "210":
            // �⮨����� ᮡ�⢥���� ࠡ��
              SSR = SpSmeta.Summa
              Executor.Price = Executor.Price + SpSmeta.Summa
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
        WriteLine(i, '  ' + SSR); i = i + 1

      //��� 1. ����� �����樥�� ���⭮� ����⪨
      //��� = (1 + ��� + ���) + (1 + ��� + ���) � ���.

        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, '��� 1. ����� �����樥�� ���⭮� ����⪨'); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, ''); i = i + 1

        if (boGetTune('NIOKR.SMETA.PRIBYLINPRICE') && (parseFloat(kp2) > 0))
        {
          WriteLine(i, '��� = (1 + ��� + ���) + (1 + ��� + ���) � ���'); i = i + 1

          Kop = 1.0 + parseFloat(kp4) + parseFloat(kp3)
          Kop = Kop + parseFloat(kp2) + parseFloat(kp2) * parseFloat(kp4) + parseFloat(kp2) * parseFloat(kp3)
        }
        else
        {
          WriteLine(i, '��� = (1 + ��� + ���)'); i = i + 1

          Kop = 1.0 + parseFloat(kp4) + parseFloat(kp3)
        }

        WriteLine(i, '���: ' + Kop); i = i + 1

      //��� 2. ����� 䮭�� ������ ��㤠 �ᯮ���⥫� (����� ᬥ��)
      //����� ��㤠 = (��� - (�⮨����� ���ਠ��� + �⮨����� ᯥ殡��㤮����� + �㬬� �������஢��-��� + �㬬� ���� ��室��)+ (� ��)� ��� / ���.

        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, '��� 2. ����� 䮭�� ������ ��㤠 �ᯮ���⥫� (����� ᬥ��)'); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, ''); i = i + 1

        if (boGetTune('NIOKR.SMETA.PRIBYLINPRICE') && (parseFloat(kp2) > 0))
        {
          WriteLine(i, '����� ��㤠 = (��� - (���ਠ�� + ᯥ殡��㤮����� + �������஢��� + ��稥 ��室�) + (���ਠ�� + ᯥ殡��㤮����� + �������஢��� + ��稥 ��室�) � ��� + 䨪�஢����� �㬬� ��������� �ਡ뫨) / ���'); i = i + 1

          FOT = parseFloat(SSR) - parseFloat(sm) - parseFloat(sm) * parseFloat(kp2) + parseFloat(Executor.Prib)
          FOT = parseFloat(FOT) / parseFloat(Kop)
        }
        else
        {
          WriteLine(i, '����� ��㤠 = (��� - (���ਠ�� + ᯥ殡��㤮����� + �������஢��� + ��稥 ��室�) + 䨪�஢����� �㬬� ��������� �ਡ뫨) / ���'); i = i + 1

          FOT = parseFloat(SSR) - parseFloat(sm) + parseFloat(Executor.Prib)
          FOT = parseFloat(FOT) / parseFloat(Kop)
        }

        CHP = CHP - FOT

        OKP = FOT
        FOT = RoundNIOKR(FOT, Theme.cVal)
        OKP = OKP - FOT

        OKPi = OKPi + OKP

        WriteLine(i, '����� ��㤠    : ' + FOT); i = i + 1
        WriteLine(i, '���㣫����      : ' + OKP); i = i + 1
        WriteLine(i, '���㣫���� �⮣�: ' + OKPi); i = i + 1

        if (SpSmeta.setPosition(pSmetaFOT))
        {
          if (SpSmeta.LookReCalc == 1)
          {
            WriteLine(i, '!!! ������ �������஢��. ����� �����: ' + SpSmeta.Kod + '. ' + SpSmeta.Name + ', �㬬�: ' + SpSmeta.Summa)
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
          WriteLine(i, '!!! � ᬥ� �� ������� ����� ����� "����� ��㤠"')
          i = i + 1
        }

        Executor.SumFOT = SpSmeta.Summa

      //��� 3. ����� ��㤮������ �� �ᯮ���⥫� (����� ᬥ��)
      //�� = ����� ��㤠 / ��.

        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, '��� 3. ����� ��㤮������ �� �ᯮ���⥫� (����� ᬥ��)'); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, ''); i = i + 1
        WriteLine(i, '�� = ����� ��㤠 / ��'); i = i + 1

        if ( parseFloat(kp1) == 0 )
          Tp = 0
        else
          Tp = parseFloat(FOT) / parseFloat(kp1)

        Tp = RoundTr(parseFloat(Tp), 0)

        WriteLine(i, '��: ' + Tp); i = i + 1

        Executor.Tr = Tp

      //��� 4. ����� ���᫥��� �� ��� (����� ᬥ��)
      //��� = ����� ��㤠 � ���.

        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, '��� 4. ����� ���᫥��� �� ��� (����� ᬥ��)'); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, ''); i = i + 1
        WriteLine(i, '��� = ����� ��㤠 � ���'); i = i + 1

        Cech = parseFloat(FOT) * parseFloat(kp4)

        CHP = CHP - Cech

        OKP  = Cech
        Cech = RoundNIOKR(Cech, Theme.cVal)
        OKP  = OKP - Cech

        OKPi = OKPi + OKP

        WriteLine(i, '���            : ' + Cech); i = i + 1
        WriteLine(i, '���㣫����      : ' + OKP); i = i + 1
        WriteLine(i, '���㣫���� �⮣�: ' + OKPi); i = i + 1

        if (SpSmeta.setPosition(pSmetaECH))
        {
          if (SpSmeta.LookReCalc == 1)
          {
            WriteLine(i, '!!! ������ �������஢��. ����� �����: ' + SpSmeta.Kod + '. ' + SpSmeta.Name + ', �㬬�: ' + SpSmeta.Summa)
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
          WriteLine(i, '!!! � ᬥ� �� ������� ����� ����� "���"')
          i = i + 1
        }

        if ( IsKredit == 0 )
          Executor.SumFOT = parseFloat(Executor.SumFOT) + parseFloat(SpSmeta.Summa)

      //��� 5. ����� �ਡ뫨 (����� ᬥ��)
      //�� = ��� - ��� / (1+���).

        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, '��� 5. ����� �ਡ뫨 (����� ᬥ��)'); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, ''); i = i + 1

        if (boGetTune('NIOKR.SMETA.PRIBYLINPRICE') && (parseFloat(kp2) > 0))
        {
          WriteLine(i, '�� = ��� - ��� / (1+���)'); i = i + 1
          Pr = parseFloat(SSR) - parseFloat(SSR) / parseFloat(1 + parseFloat(kp2))
        }
        else
        {
          WriteLine(i, '�� = ��� x ���'); i = i + 1
          Pr = parseFloat(SSR) * parseFloat(kp2)
        }

        OKP  = Pr
        Pr   = RoundNIOKR(Pr, Theme.cVal)
        OKP  = OKP - Pr
        OKPi = OKPi + OKP

        WriteLine(i, '��        : ' + Pr); i = i + 1
        WriteLine(i, '���㣫����: ' + OKP); i = i + 1
        WriteLine(i, '���㣫���� �⮣�: ' + OKPi); i = i + 1

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

      //��� 6. ����� ��������� ��室�� (����� ᬥ��)
      //��� = ��� - (����� ��㤠 + ��� + �⮨����� ���ਠ��� + �⮨����� ᯥ殡��㤮����� + �㬬� �������஢���� + �㬬� ���� ��室�� + ��).

        WriteLine(i, ''); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, '��� 6. ����� ��������� ��室�� (����� ᬥ��) � ��⮬ ���㣫����'); i = i + 1
        WriteLine(i, '********************************************************************************'); i = i + 1
        WriteLine(i, ''); i = i + 1
        WriteLine(i, '���㣫���� = ' + OKPi); i = i + 1
        WriteLine(i, ''); i = i + 1

        if (boGetTune('NIOKR.SMETA.PRIBYLINPRICE') && (parseFloat(Pr) > 0))
        {
          WriteLine(i, '��� = ��� - (����� ��㤠 + ��� + �⮨����� ���ਠ��� + �⮨����� ᯥ殡��㤮����� + �㬬� �������஢���� + �㬬� ���� ��室�� + ��)'); i = i + 1

          CHP = CHP + parseFloat(SSR) - (parseFloat(sm) + parseFloat(Pr))
        }
        else
        {
          WriteLine(i, '��� = ��� - (����� ��㤠 + ��� + �⮨����� ���ਠ��� + �⮨����� ᯥ殡��㤮����� + �㬬� �������஢���� + �㬬� ���� ��室��)'); i = i + 1

          CHP = CHP + parseFloat(SSR) - (parseFloat(sm))
        }

        WriteLine(i, '��� (��� ���㣫����): ' + CHP); i = i + 1
        CHP = RoundNIOKR(CHP, Theme.cVal)

        if ( CHP <= 0 )
        {
          WriteLine(i, '��� (��� ���㣫����): ' + Cech); i = i + 1
          WriteLine(i, '��� = ��� + ���㣫����'); i = i + 1

          Cech = parseFloat(Cech) + (parseFloat(OKPi))
          Cech = RoundNIOKR(Cech, Theme.cVal)

          WriteLine(i, '��� ���㣫����� (� ��⮬ ��⠫��� ���㣫����): ' + Cech); i = i + 1

          if (SpSmeta.setPosition(pSmetaECH))
          {
            if (SpSmeta.LookReCalc == 1)
            {
              WriteLine(i, '!!! ������ �������஢��. ����� �����: ' + SpSmeta.Kod + '. ' + SpSmeta.Name + ', �㬬�: ' + SpSmeta.Summa)
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
            WriteLine(i, '!!! � ᬥ� �� ������� ����� ����� "���"')
            i = i + 1
          }
        }
        else
        {
          WriteLine(i, '��� = ��� + ���㣫����'); i = i + 1

          CHP = parseFloat(CHP) + (parseFloat(OKPi))
          CHP = RoundNIOKR(CHP, Theme.cVal)
        }

        if (SpSmeta.setPosition(pSmetaNR))
        {
          if (SpSmeta.LookReCalc == 1)
          {
            WriteLine(i, '!!! ������ �������஢��. ����� �����: ' + SpSmeta.Kod + '. ' + SpSmeta.Name + ', �㬬�: ' + SpSmeta.Summa)
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
          WriteLine(i, '!!! � ᬥ� �� ������� ����� ����� "�������� ��室�"')
          i = i + 1
        }

        // ����� ���
        if ( IsKredit == 0 )
        {
          Executor.SumFOT = Executor.SumFOT + parseFloat(SpSmeta.Summa);
          Executor.SumFOT = parseFloat(Executor.SumFOT) * parseFloat(GetControlActivityValue('%', 0, 0, Stage.dOpen)) / 100;
        }

        Executor.SumFOT = RoundNIOKR(Executor.SumFOT, Theme.cVal)

        WriteLine(i, '�㬬� ���: ' + Executor.SumFOT); i = i + 1
        WriteLine(i, '��� ���㣫����� (� ��⮬ ��⠫��� ���㣫����): ' + CHP); i = i + 1
        WriteLine(i, '���: ' + CHP); i = i + 1

        Executor.Summa = Executor.Summa + parseFloat(FOT) + parseFloat(Cech) + parseFloat(sm) + parseFloat(CHP)

        WriteLine(i, '���: ' + Executor.Summa)

        Executor.rewrite()
      }
    }

    RunProtocol(0, 1, CurExecutor(), _CurDateTime(), 0, 0);
  }