

.autoform BrigadeDutyGroupingCard(BrigadeMarker, DepartmentMarker: LongInt)
.p 70
.var
  I: Integer
  // ª®«¨ç¥áâ¢® ¡à¨£ ¤, ¤ ­­ë¥ ¯® ª®â®àë¬ ¡ë«¨ ¢ë¢¥¤¥­ë ¢ ®âç¥â
  BrigadesPrinted: integer;
  CurDate:String
  DutyTimeTotal:Double
  DutySumTotal:Double
  CharacterclockNumbers: boolean
  PersonalAccount: comp
  ClockNumber: string
  Surname:String
  BrigadeNumber: word
  ActualHours:Double
  Tariff:Double
  TariffSum:Double
  TariffSumVsKTU:Double
  KTU:Double
  PaymentSum:Double
  ActualHoursSumTotal:Double
  TariffSumVsKTUTotal:Double
  PaymentSumTotal:Double
  RateOfOutput:Double
  Factor:Double
  IndexNo:longint;
  Res: integer;
  TimeTotal:double;
.endvar
.create view T1 as select
  PRNARYAD.TABN,
  PRNARYAD.STRTABN,
  PRNARYAD.CLSCH,
  PRNARYAD.CHASF,
  PRNARYAD.TARIF,
  PRNARYAD.KTY,
  PRNARYAD.SUMMA,
  PRNARYAD.TPERSON,
  PRNARYAD.MNREC,
  PERSONS.FIO
from
  SYS_NAR (ReadOnly),
  PRNARYAD (ReadOnly),
  PERSONS (ReadOnly)
where
((
  1 == SYS_NAR.CHOICE
  and BrigadeNumber == SYS_NAR.NBRIG (noindex)
  and (FoundMarker(DepartmentMarker, SYS_NAR.CEX))
  and SYS_NAR.NREC == PRNARYAD.MNREC
  and PRNARYAD.TPERSON == PERSONS.NREC
))
order external by SYS_NAR.NBRIG, PRNARYAD.TABN;
.create view T2 as
select
  SYS_NAR.NMNEM,
  SYS_NAR.SUMMANTM,
  SYS_NAR.SUMMANAR,
  XARPRED.DATOTCH,
  BRIGAD.NMBRIG
from
  SYS_NAR (ReadOnly),
  BRIGAD (ReadOnly),
  XARPRED (ReadOnly)
where
((
  1              == SYS_NAR.CHOICE and
  SYS_NAR.NBRIG  == BRIGAD.NBRIG
)) and
((BrigadeNumber = SYS_NAR.NBRIG) and (FoundMarker(DepartmentMarker, SYS_NAR.CEX)))
order by SYS_NAR.NMNEM;

.fields
  BrigadeNumber
  T2.BRIGAD.NMBRIG
  CurDate
  T2.SYS_NAR.NMNEM
  Time2StrDef(T2.SYS_NAR.SUMMANTM)
  T2.SYS_NAR.SUMMANAR
  Time2StrDef(DutyTimeTotal)
  DutySumTotal

  ClockNumber
  Surname
  ActualHours
  Tariff
  KTU
  TariffSum
  TariffSumVsKTU
  PaymentSum

  ActualHoursSumTotal
  TariffSumVsKTUTotal
  PaymentSumTotal
  RateOfOutput
  Factor
  Time2StrDef(TimeTotal)
  T2.SYS_NAR.SUMMANAR:'SUM:DutyTotals'
.endfields
.begin
  CharacterClockNumbers := wGetTune('FormatClockNumber') <> 0;
  BrigadeNumber := 0;
  ClockNumber := '';
  I := 0;
  BrigadesPrinted := 0;
end.
.{ while I < GetMarkerCount(BrigadeMarker)
.begin
  I := I + 1;
  if (not GetMarker(BrigadeMarker, I - 1, BrigadeNumber))
    BrigadeDutyGroupingCard.FContinue;
  if (T2.GetFirst ViewTable <> 0)
    BrigadeDutyGroupingCard.FContinue;
  DutyTimeTotal := 0;
  DutySumTotal := 0;
  ActualHoursSumTotal := 0;
  TariffSumVsKTUTotal := 0;
  PaymentSumTotal := 0;
  CurDate := DateToStr(dGetTune('UP.DATOTCH'), 'MONTH YYYY');
end.
ÿ‘‚„€Ÿ ƒ“ˆ‚—€Ÿ Š€’—Š€  ˆƒ€„… ÿ^ÿ (^) ‡€ ÿ^ÿ ƒ„€.
‹€’€ ‘„…‹œ€Ÿ

ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³®¬¥à ­ àï¤                  ³‚à¥¬ï      ³‘ã¬¬            ³
ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´ÿ
.{ table 'T2' by T2.SYS_NAR.NMNEM;DutyTotals
ÿ³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&&&&&&&&&&&³&'&&&&&&&&&&&.&&³ÿ
.begin
  DutyTimeTotal := DutyTimeTotal + T2.SYS_NAR.SUMMANTM;
  DutySumTotal := DutySumTotal + T2.SYS_NAR.SUMMANAR;
  TimeTotal := TimeTotal + T2.SYS_NAR.SUMMANTM;
end.
.}
ÿÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
³                       ÿˆ’ƒ ³&&&&&&&&&&&³&'&&&&&&&&&&&.&&³ÿ
ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÿ
.begin
  T1.SetOrder(0);
  Res := T1.GetFirst ViewTable;
end.
ÿÉÍÍÍÍÍÍÑÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÑÍÍÍÍÍÍÍÍÑÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÑÍÍÍÍÍÍÑÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÑÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÑÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
º’ ¡.  ³” ¬¨«¨ï ˆ..             ³’ ¡.    ³’ à¨ä­ ï        ³Š’“   ³‘ã¬¬            ³‘ã¬¬  ¯® â à¨äã ³‘ã¬¬            º
º­®¬.  ³                         ³¢à¥¬ï   ³áâ ¢ª           ³      ³¯® â à¨äã       ³á ãç¥â®¬ Š’“    ³§ à¯« âë        º
ÇÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¶ÿ
.{ while Res=0
.begin
  if CharacterClockNumbers
    ClockNumber := T1.PRNARYAD.STRTABN;
  else
    ClockNumber := T1.PRNARYAD.TABN;

  PersonalAccount := T1.PRNARYAD.CLSCH;
  Surname := GetSurnameWithInitials(T1.PERSONS.FIO);
  ActualHours := T1.PRNARYAD.CHASF;
  Tariff := T1.PRNARYAD.TARIF;
  KTU := T1.PRNARYAD.KTY;
  PaymentSum := 0;
  ActualHoursSumTotal := ActualHoursSumTotal + T1.PRNARYAD.CHASF;

  TariffSum := ActualHours * Tariff;
  TariffSumVsKTU := TariffSum * KTU;
  TariffSumVsKTUTotal := TariffSumVsKTUTotal + TariffSumVsKTU;

  while (T1.PRNARYAD.CLSCH = PersonalAccount) and (Res = 0)
  {
    PaymentSum := PaymentSum + T1.PRNARYAD.SUMMA;
    PaymentSumTotal := PaymentSumTotal + T1.PRNARYAD.SUMMA;
    Res := T1.GetNext ViewTable;
  }
end.
ÿº&&&&&&³@@@@@@@@@@@@@@@@@@@@@@@@@³&&&&&.&&³&'&&&&&&&&&&&.&&³&&&.&&³&'&&&&&&&&&&&.&&³&'&&&&&&&&&&&.&&³&'&&&&&&&&&&&.&&ºÿ
.}
ÿÇÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¶
º                          ÿˆ’ƒ ³&&&&&.&&³                                        ³&'&&&&&&&&&&&.&&³&'&&&&&&&&&&&.&&ºÿ
ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼ÿ

.begin
  if (ActualHoursSumTotal <> 0)
    RateOfOutput := DutyTimeTotal / ActualHoursSumTotal * 100;
  else
    RateOfOutput := 0;
  if (TariffSumVsKTUTotal <> 0)
    Factor := DutySumTotal / TariffSumVsKTUTotal;
  else
    Factor := 0;

  Inc(BrigadesPrinted);
end.
ÿÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³ ®à¬  ¢ëà ¡®âª¨ = ÿ&&&.&&%      ³ÿ
³     Š®íää¨æ¨¥­â = ÿ&&&.&&&&&    ³ÿ
ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÿ



.}
! ¥á«¨ à á¯¥ç â ­ë ¡ë«¨ ¤ ­­ë¥ ¡®«¥¥, ç¥¬ ®¤­®© ¡à¨£ ¤ë, ¢ë¢¥áâ¨ ®¡é¨¥ ¨â®£¨
.{?internal;BrigadesPrinted > 1
‚à¥¬ï, ¢á¥£®: &&&&&&&&&&&&&&&&
‘ã¬¬ , ¢á¥£®: &'&&&&&&&&&&&.&&
.}
.[f

ÿ                                                       áâà.ÿ @NPÿ@ÿ
.]f
.endform
