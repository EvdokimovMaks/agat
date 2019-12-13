//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 8.1 - Логистика - документы-основания
// Процедуры резервирования
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

  // неделимая учетная ЕдИзм
  if ( fEdIzm.GetKatEdDiskr(KatMC.cEd) = 1 )
    {
      var kk: double; // kk - коэффициент отпускной ЕдИзм

      kk := fEdIzm.GetKoefOtpEd(SpStep.cOtpEd);

      // проверяем на дискретность количество в учетной ЕдИзм
      if not fEdIzm.IsKolDiskret(TaraKol * kk)
        {
          TaraKol := trunc(TaraKol * kk) + 1.0;

          var TaraUchKol: double;

          TaraUchKol := TaraKol;

          // переводим количество в отпускную ЕдИзм
          TaraKol := TaraUchKol / kk;

          // подбираем количество в учетной ЕдИзм, не превышающую допустимое значение
          while ( ( TaraKol > MaxKol ) AND f_KolIsPositive(TaraUchKol) ) do
            {
              TaraUchKol -= 1.0;

              TaraKol := TaraUchKol / kk;
            }
        }
    }

  // неделимая отпускная ЕдИзм
  if ( fEdIzm.GetDiskrOtpEd(SpStep.cOtpEd) = 1 )
    {
      if not fEdIzm.IsKolDiskret(TaraKol)
        {
          TaraKol := trunc(TaraKol) + 1;

          if ( TaraKol > MaxKol )
            TaraKol := TaraKol - 1;
        }
    }
  else // делимая отпускная ЕдИзм
    TaraKol := Round(TaraKol, -integer(lg(fTekRun.GetMinQuantity))); // за основу берется число из настройки
}                                                                    // " = Настройка = \Настройка\Оперативный контур\..
                                                                     //        ..Складской учет\Минимальное значение для количества МЦ"
                                                                     // избавление от погрешностей в остатках.
