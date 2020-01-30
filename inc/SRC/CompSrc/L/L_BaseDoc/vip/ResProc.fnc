//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.1 - �����⨪� - ���㬥���-�᭮�����
// ��楤��� १�ࢨ஢����
//******************************************************************************

Procedure DoCorrentTaraKol(var TaraKol: double; MaxKol: double);
{
  if Not f_KolIsPositive(TaraKol)
    {
      TaraKol := 0.0;
      Exit;
    }

  if ( TaraKol > MaxKol )
    TaraKol := MaxKol;

  // ��������� ��⭠� �����
  if ( fEdIzm.GetKatEdDiskr(KatMC.cEd) = 1 )
    {
      var kk: double; // kk - �����樥�� ���᪭�� �����

      kk := fEdIzm.GetKoefOtpEd(SpStep.cOtpEd);

      // �஢��塞 �� ����⭮��� ������⢮ � ��⭮� �����
      if not fEdIzm.IsKolDiskret(TaraKol * kk)
        {
          TaraKol := trunc(TaraKol * kk) + 1.0;

          var TaraUchKol: double;

          TaraUchKol := TaraKol;

          // ��ॢ���� ������⢮ � ���᪭�� �����
          TaraKol := TaraUchKol / kk;

          // �����ࠥ� ������⢮ � ��⭮� �����, �� �ॢ������ �����⨬�� ���祭��
          while ( ( TaraKol > MaxKol ) AND f_KolIsPositive(TaraUchKol) ) do
            {
              TaraUchKol -= 1.0;

              TaraKol := TaraUchKol / kk;
            }
        }
    }

  // ��������� ���᪭�� �����
  if ( fEdIzm.GetDiskrOtpEd(SpStep.cOtpEd) = 1 )
    {
      if not fEdIzm.IsKolDiskret(TaraKol)
        {
          TaraKol := trunc(TaraKol) + 1;

          if ( TaraKol > MaxKol )
            TaraKol := TaraKol - 1;
        }
    }
  else // ������� ���᪭�� �����
    TaraKol := Round(TaraKol, -integer(lg(fTekRun.GetMinQuantity))); // �� �᭮�� ������ �᫮ �� ����ன��
}                                                                    // " = ����ன�� = \����ன��\����⨢�� ������\..
                                                                     //        ..�����᪮� ���\�������쭮� ���祭�� ��� ������⢠ ��"
                                                                     // ���������� �� ����譮�⥩ � ���⪠�.
