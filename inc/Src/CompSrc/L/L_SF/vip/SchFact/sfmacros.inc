//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 7.12 - ����⨢�� ������
// ���ம�।������ ��� ��
//******************************************************************************

#ifNdef __SFMACROS_INC
#define __SFMACROS_INC

#define EX_ATTR_OKED '��� ����'

#declare GetOKED(Table_)
  if (vSf.TuneCountry = ccKaz)
    {
      var value : string;

      value := sGetAttr(coKatSopr, #Table_.NRec, '��� ����');

      if (trim(value) <> '')
        sSetAttr(coSchFact, vSf.Sf.NRec, '��� ����', value);
    }
#end

// ��� �ᯮ�짮����� � ��஭��� ���������� � �⤥���� ����䥩��,
// �⮡�, � �⫨砥 �� funIsClosedPeriod, �� �������� ��६���� � ���祭�ﬨ ����஥�
#declare IsClosedPeriod(dReg, bMes = True)
  if (wGetTune('Nalog.Rus.CloseBook') > 0,
    if (#dReg <=
        if (wGetTune('Nalog.Rus.CloseBook') = 1,
           if (Day(dGetTune('Fin.User.dTecBuh')) = 1, 
               Sub_Day(dGetTune('Fin.User.dTecBuh'), 1), dGetTune('Fin.User.dTecBuh')),
        if (wGetTune('Nalog.Rus.CloseBook') = 2,
           if (Day(dGetTune('Oper.DateClosePeriod')) = 1, 
               Sub_Day(dGetTune('Oper.DateClosePeriod'), 1), dGetTune('Oper.DateClosePeriod')),
           if (Day(dGetTune('Nalog.Rus.CloseDate_SF')) = 1, 
               Sub_Day(dGetTune('Nalog.Rus.CloseDate_SF'), 1), dGetTune('Nalog.Rus.CloseDate_SF')))),
        if (#bMes, Message('����� ��ਮ� ������. ��� ����饭� �������� ��� ���㬥��.', Warning + OkButton) >= 0,
            True),
        False),
      False)
#end

// �஢�ઠ �� ����稥 ��� � �����, ���� �஡���� � �㬥�樥�, � ��⭮�� � NextNumStr
#declare CheckNum(aPredefNum)
  if ((Pos('0', #aPredefNum) <> 0) or (Pos('1', #aPredefNum) <> 0) or
      (Pos('2', #aPredefNum) <> 0) or (Pos('3', #aPredefNum) <> 0) or
      (Pos('4', #aPredefNum) <> 0) or (Pos('5', #aPredefNum) <> 0) or
      (Pos('6', #aPredefNum) <> 0) or (Pos('7', #aPredefNum) <> 0) or
      (Pos('8', #aPredefNum) <> 0) or (Pos('9', #aPredefNum) <> 0), True, False)
#end

#end
