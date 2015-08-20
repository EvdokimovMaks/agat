//------------------------------------------------------------------------------
//                                                      (c) Корпорация ГАЛАКТИКА
// Галактика 8.1 - Бухгалтерский контур
// Стоимостной баланс по налоговым группам
//------------------------------------------------------------------------------
#include OsNma.def
#doc
  Форма для печати стоимостного баланса по налоговым группам
#end
!=============================================================================
.Form 'NalGrBal'
!=============================================================================
.Hide
.Fields
  Период
  Начало_периода
  Начало_следующего_периода
  ФорматСум
  Печатать_индивидуальные_операции : boolean
  Печатать_групповые_операции : boolean
  Учитывать_индивидуальные_непроведенные_операции : boolean
  Учитывать_групповые_непроведенные_операции : boolean
  nRec_Метода_учета_ОС : comp
  nRec_Метода_учета_НМА : comp
  nRec_Собственной_организации
  РНН_Собственной_организации
  Наименование_Собственной_организации

!UpperCommonItogNalGr1
  Итог_верхний_бал_стоим_на_начало : double
  Итог_верхний_увеличение_за_счет_ремонта : double
  Итог_верхний_Расходы_на_приобретение : double
  Итог_верхний_Расходы_на_изготовление : double
  Итог_верхний_Увеличение_прочее : double
  Итог_верхний_Сумма_ремонта : double
  Итог_верхний_Сумма_ремонта_в_пределах_нормы : double
  Итог_верхний_Стоимость_реализованных_индивидуальных : double
  Итог_верхний_Стоимость_реализованных_групповых : double
  Итог_верхний_Стоимость_ликвидированных_индивидуальных : double
  Итог_верхний_Стоимость_ликвидированных_групповых : double
  Итог_верхний_Сумма_аморт_меньше_мин_бал_стоим : double
  Итог_верхний_Сумма_амортизации : double
  Итог_верхний_Уменьшение_прочее : double
  Итог_верхний_подлежащий_вычету_при_выбытии : double
  Итог_верхний_подлежащий_вычету_менее_100_МРП : double
  Итог_верхний_Баланс_на_конец : double

!GruppaHigherNalGr1
  Имя_группировки_заголовок
  Номер_группировки_заголовок
  Номер_вышестоящей_группировки_заголовок
  nRec_вышестоящей_группировки : comp

!GruppaNalGr1
  Имя_группы_заголовок
  Номер_группы_заголовок
  Номер_вышестоящей_группы_заголовок
  Вид_учета_группы : word
  Норма_амортизации_группы_заголовок : double
  nRec_группы : comp

!KatOsNalGr1
  nRec_KatOs
  cMc_KatOs
  Инвентарный_номер
  Наименование_ИК

!NameNalGr1
  nRec_MoveOs
  nRec_SpMove
  nRec_SpMoveOs
  Дата_операции
  Расходы_на_приобретение : double
  Расходы_на_изготовление : double
  Увеличение_прочее : double
  Сумма_ремонта : double
  Стоимость_реализованных_индивидуальных : double
  Стоимость_реализованных_групповых : double
  Стоимость_ликвидированных_индивидуальных : double
  Стоимость_ликвидированных_групповых : double
  Сумма_аморт_меньше_мин_бал_стоим : double
  Сумма_амортизации : double
  Уменьшение_прочее : double

!KatOsItogNalGr1
  Итог_ИК_бал_стоим_на_начало : double
  Итог_ИК_Сумма_ремонта_в_пределах_нормы : double
  Итог_ИК_увеличение_за_счет_ремонта : double

!ItogNalGr1
  Имя_группы_итоги
  Итог_группы_бал_стоим_на_начало : double
  Итог_группы_увеличение_за_счет_ремонта : double
  Итог_группы_Сумма_ремонта_в_пределах_нормы : double
  Итог_группы_подлежащий_вычету_при_выбытии : double
  Итог_группы_подлежащий_вычету_менее_100_МРП : double

!ItogHigherNalGr1
  Имя_группировки_итоги
  Итог_группировки_бал_стоим_на_начало : double
  Итог_группировки_увеличение_за_счет_ремонта : double
  Итог_группировки_Расходы_на_приобретение : double
  Итог_группировки_Расходы_на_изготовление : double
  Итог_группировки_Увеличение_прочее : double
  Итог_группировки_Сумма_ремонта : double
  Итог_группировки_Сумма_ремонта_в_пределах_нормы : double
  Итог_группировки_Стоимость_реализованных_индивидуальных : double
  Итог_группировки_Стоимость_реализованных_групповых : double
  Итог_группировки_Стоимость_ликвидированных_индивидуальных : double
  Итог_группировки_Стоимость_ликвидированных_групповых : double
  Итог_группировки_Сумма_аморт_меньше_мин_бал_стоим : double
  Итог_группировки_Сумма_амортизации : double
  Итог_группировки_Уменьшение_прочее : double
  Итог_группировки_подлежащий_вычету_при_выбытии : double
  Итог_группировки_подлежащий_вычету_менее_100_МРП : double

!ItogMarkedNalGr1
  Имя_помеченные
  Итог_помеченные_бал_стоим_на_начало : double
  Итог_помеченные_увеличение_за_счет_ремонта : double
  Итог_помеченные_Расходы_на_приобретение : double
  Итог_помеченные_Расходы_на_изготовление : double
  Итог_помеченные_Увеличение_прочее : double
  Итог_помеченные_Сумма_ремонта : double
  Итог_помеченные_Сумма_ремонта_в_пределах_нормы : double
  Итог_помеченные_Стоимость_реализованных_индивидуальных : double
  Итог_помеченные_Стоимость_реализованных_групповых : double
  Итог_помеченные_Стоимость_ликвидированных_индивидуальных : double
  Итог_помеченные_Стоимость_ликвидированных_групповых : double
  Итог_помеченные_Сумма_аморт_меньше_мин_бал_стоим : double
  Итог_помеченные_Сумма_амортизации : double
  Итог_помеченные_Уменьшение_прочее : double
  Итог_помеченные_подлежащий_вычету_при_выбытии : double
  Итог_помеченные_подлежащий_вычету_менее_100_МРП : double
  Итог_помеченные_Баланс_на_конец : double

.EndFields

^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.{
.{ CheckEnter UpperCommonItogNalGr1
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter GruppaHigherNalGr1
^ ^ ^ ^
.}
.{ CheckEnter GruppaNalGr1
^ ^ ^ ^ ^ ^
.}
.{ CheckEnter KatOsNalGr1
^ ^ ^ ^
.}
.{ CheckEnter NameNalGr1
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter KatOsItogNalGr1
^ ^ ^
.}
.{ CheckEnter ItogNalGr1
^ ^ ^ ^ ^ ^
.}
.{ CheckEnter ItogHigherNalGr1
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter ItogMarkedNalGr1
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.}
.EndForm

!=============================================================================
.linkform 'Kaz4' prototype is 'NalGrBal'
!=============================================================================
.NameInList 'Дополнительная форма к строке 100.22.007'
.group 'Kaz'
.defo landscape
.P 58
.Var
  bFoundRentedOs              : boolean
  bFoundGroup                 : boolean
  bPrintKatOs                 : boolean
  iNPP                        : comp
  sNPP                        : string
  tmp_cKatNalGr               : comp
  wTipDoc                     : word
  dBegDate                    : date
  dEndDate                    : date
  tmp_cNastrOs                : comp
  tmp_dCurrObjRepair          : double
  tmp_dNotReturned            : double
  tmp_dCommonNotReturned      : double
  tmp_OwnNotUsedSum           : double
  tmp_dSubRashod              : double
  tmp_dNotSubRashod           : double
  dCommonLimit                : double
  bUseNotProvedOpers          : boolean

  dCommonRentSum              : double
  dCommonObjRepair            : double
  dCommonSumRepairReturned    : double
  dCommonNotReturned          : double
  dCommonSubRashod            : double
  dCommonNotSubRashod         : double

  iArr                                         : comp
  iCur                                         : comp
  KatNalGrArray                                : array[1..10000] of comp
  Массив_группы_Баланс_на_конец                : array[1..10000] of double
  Массив_группы_Сумма_ремонта_в_пределах_нормы : array[1..10000] of double

  Итог_группы_Поступление     : double
  Итог_группы_Выбытие         : double
  Итог_группы_Баланс_на_конец : double
.EndVar

.create view vRent
(
  bIsRented,
  d_AttrValSumRepairReturned_vDouble,
  d_AttrValRentSum_vDouble
)
as select
  //bIsRented
  if (isValidAll(tnExClassName),
    if(isValidAll(tnExClassVal),
      if (isValidAll(tnExClassSeg),
        if (ExClassSeg.Name = #ExClassRentedOs, true, false),
        false),
      false),
    false),

  //d_AttrValSumRepairReturned_vDouble
  if (vRent.isValidAll(vRent.tnAttrValSumRepairReturned),
    vRent.AttrValSumRepairReturned.vDouble,
    0),

  //d_AttrValRentSum_vDouble
  if (vRent.isValidAll(vRent.tnAttrValRentSum),
    vRent.AttrValRentSum.vDouble,
    0),

  *
from
  KatOs, KatNalGr, NalGrOs, MoveOs, SpMoveOs, SpKatOs, SpMove,
  ExClassVal, ExClassName, ExClassSeg,
  synonym AttrNam AttrNamMasterName,
  synonym AttrVal AttrValMasterName,
  synonym AttrNam AttrNamMasterRNN,
  synonym AttrVal AttrValMasterRNN,
  synonym AttrNam AttrNamRentDogNumber,
  synonym AttrVal AttrValRentDogNumber,
  synonym AttrNam AttrNamRentDogDate,
  synonym AttrVal AttrValRentDogDate,
  synonym AttrNam AttrNamRentSum,
  synonym AttrVal AttrValRentSum,
  synonym AttrNam AttrNamSumRepairReturned,
  synonym AttrVal AttrValSumRepairReturned

where
((
  tmp_cKatNalGr                   == KatNalGr.nRec                        and
  KatNalGr.nRec                   == NalGrOs.cKatNalGr                    and
  NalGrOs.cKatOs                  == KatOs.nRec                           and

  //Признак собственности
  word(coKatos)                   == ExClassName.wTable                   and
  #ExClassRentOsFeature           == ExClassName.Name                     and
  ExClassName.ClassCode           == ExClassVal.ClassCode                 and
  KatOs.nRec                      == ExClassVal.cRec                      and
  ExClassVal.cClassSeg            == ExClassSeg.nRec                      and

  //наименование арендодателя
  word(coKatos)                   == AttrNamMasterName.wTable             and
  word(0)                         == AttrNamMasterName.AttrType           and
  #NalGrMasterName                == AttrNamMasterName.Name               and
  word(coKatos)                   == AttrValMasterName.wTable             and
  KatOs.NRec                      == AttrValMasterName.cRec               and
  AttrNamMasterName.NRec          == AttrValMasterName.cAttrNam           and

  //РНН
  word(coKatos)                   == AttrNamMasterRNN.wTable               and
  word(0)                         == AttrNamMasterRNN.AttrType             and
  #NalGrMasterRNN                 == AttrNamMasterRNN.Name                 and
  word(coKatos)                   == AttrValMasterRNN.wTable               and
  KatOs.NRec                      == AttrValMasterRNN.cRec                 and
  AttrNamMasterRNN.NRec           == AttrValMasterRNN.cAttrNam             and

  //номер договора аренды
  word(coKatos)                   == AttrNamRentDogNumber.wTable           and
  word(0)                         == AttrNamRentDogNumber.AttrType         and
  #NalGrRentDogNumber             == AttrNamRentDogNumber.Name             and
  word(coKatos)                   == AttrValRentDogNumber.wTable           and
  KatOs.NRec                      == AttrValRentDogNumber.cRec             and
  AttrNamRentDogNumber.NRec       == AttrValRentDogNumber.cAttrNam         and

  //дата договора аренды
  word(coKatos)                   == AttrNamRentDogDate.wTable             and
  word(2)                         == AttrNamRentDogDate.AttrType           and
  #NalGrRentDogDate               == AttrNamRentDogDate.Name               and
  word(coKatos)                   == AttrValRentDogDate.wTable             and
  KatOs.NRec                      == AttrValRentDogDate.cRec               and
  AttrNamRentDogDate.NRec         == AttrValRentDogDate.cAttrNam           and

  //сумма арендной платы
  word(coKatos)                   == AttrNamRentSum.wTable                 and
  word(1)                         == AttrNamRentSum.AttrType               and
  #NalGrRentSum                   == AttrNamRentSum.Name                   and
  word(coKatos)                   == AttrValRentSum.wTable                 and
  KatOs.NRec                      == AttrValRentSum.cRec                   and
  AttrNamRentSum.NRec             == AttrValRentSum.cAttrNam               and

  //сумма расходов на ремонт, подлежащая возмещению
  word(coKatos)                   == AttrNamSumRepairReturned.wTable       and
  word(1)                         == AttrNamSumRepairReturned.AttrType     and
  #NalGrSumRepairReturned         == AttrNamSumRepairReturned.Name         and
  word(coKatos)                   == AttrValSumRepairReturned.wTable       and
  KatOs.NRec                      == AttrValSumRepairReturned.cRec         and
  AttrNamSumRepairReturned.NRec   == AttrValSumRepairReturned.cAttrNam     and

  //операции изменения стоимости
  wTipDoc                         == MoveOs.TipDoc                         and
  word(3)                         == MoveOs.SysOper                        and
  dBegDate                       <<= MoveOs.DatOb                          and
  dEndDate                       >>= MoveOs.DatOb                          and
  MoveOs.nRec                     == SpMoveOs.cMoveOs                      and
  tmp_cNastrOs                    == SpMoveOs.cNastrOs                     and
  KatOs.nRec                      == SpMoveOs.cKatOs                       and
  MoveOs.nRec                     == SpMove.cMoveOs                        and
  tmp_cNastrOs                    == SpMove.cNastrOs                       and
  KatOs.nRec                      == SpKatOs.cKatOs                        and
  tmp_cNastrOs                    == SpKatOs.cNastrOs
));

.fields
  if (dCommonRentSum<>0, Trim(DoubleToStr(dCommonRentSum, ФорматСум)), '')
  if (dCommonObjRepair<>0, Trim(DoubleToStr(dCommonObjRepair, ФорматСум)), '')
  if (dCommonSumRepairReturned<>0, Trim(DoubleToStr(dCommonSumRepairReturned, ФорматСум)), '')
  if (dCommonNotReturned<>0, Trim(DoubleToStr(dCommonNotReturned, ФорматСум)), '')
  if (dCommonSubRashod<>0, Trim(DoubleToStr(dCommonSubRashod, ФорматСум)), '')
  if (dCommonNotSubRashod<>0, Trim(DoubleToStr(dCommonNotSubRashod, ФорматСум)), '')

  sNPP
  vRent.AttrValMasterName.vString
  vRent.AttrValMasterRNN.vString
  vRent.KatOs.NameOs
  Номер_вышестоящей_группы_заголовок
  vRent.AttrValRentDogNumber.vString
  if (longint(vRent.AttrValRentDogDate.vDate) <> 0, DateToStr(vRent.AttrValRentDogDate.vDate, 'DD/MM/YYYY'), '')
  if (vRent.AttrValRentSum.vDouble<>0, Trim(DoubleToStr(vRent.AttrValRentSum.vDouble, ФорматСум)), '')
  if (tmp_dCurrObjRepair<>0, Trim(DoubleToStr(tmp_dCurrObjRepair, ФорматСум)), '')
  if (d_AttrValSumRepairReturned_vDouble<>0, Trim(DoubleToStr(d_AttrValSumRepairReturned_vDouble, ФорматСум)), '')
  if (tmp_dNotReturned<>0, Trim(DoubleToStr(tmp_dNotReturned, ФорматСум)), '')
  if (tmp_dSubRashod<>0, Trim(DoubleToStr(tmp_dSubRashod, ФорматСум)), '')
  if (tmp_dNotSubRashod<>0, Trim(DoubleToStr(tmp_dNotSubRashod, ФорматСум)), '')
.endfields

.Begin
  if (vRent.GetFirst AttrNamMasterName <> tsOk)
  {
    Message('Для формирования отчета необходимо наличие внешнего атрибута'#13+
            #NalGrMasterName, Information + CancelButton);
    Kaz4.fBreak;
    Exit;
  }

  if (vRent.GetFirst AttrNamMasterRNN <> tsOk)
  {
    Message('Для формирования отчета необходимо наличие внешнего атрибута'#13+
            #NalGrMasterRNN, Information + CancelButton);
    Kaz4.fBreak;
    Exit;
  }

  if (vRent.GetFirst AttrNamRentDogNumber <> tsOk)
  {
    Message('Для формирования отчета необходимо наличие внешнего атрибута'#13+
            #NalGrRentDogNumber, Information + CancelButton);
    Kaz4.fBreak;
    Exit;
  }

  if (vRent.GetFirst AttrNamRentDogDate <> tsOk)
  {
    Message('Для формирования отчета необходимо наличие внешнего атрибута'#13+
            #NalGrRentDogDate, Information + CancelButton);
    Kaz4.fBreak;
    Exit;
  }

  if (vRent.GetFirst AttrNamRentSum <> tsOk)
  {
    Message('Для формирования отчета необходимо наличие внешнего атрибута'#13+
            #NalGrRentSum, Information + CancelButton);
    Kaz4.fBreak;
    Exit;
  }

  if (vRent.GetFirst AttrNamSumRepairReturned <> tsOk)
  {
    Message('Для формирования отчета необходимо наличие внешнего атрибута'#13+
            #NalGrSumRepairReturned, Information + CancelButton);
    Kaz4.fBreak;
    Exit;
  }

  if (GetFirst ExClassName <> tsOk) {};

  for (iArr := 1; iArr <= 10000; iArr := iArr + 1)
  {
    KatNalGrArray[iArr] := 0;
    Массив_группы_Баланс_на_конец[iArr] := 0;
    Массив_группы_Сумма_ремонта_в_пределах_нормы[iArr] := 0;
  }
End.

            БДополнительная форма к строке 100.22.007 приложения 100.22  Б
 Ш
.{
.[h
─────┬──────────────────────────┬────────────┬──────────────────────────────────────────────────────┬──────┬────────────────────┬───────────────┬───────────────┬───────────────┬───────────────┬───────────────┬───────────────
  N  │      Наименование        │    РНН     │                   Наименование ОС                    │  N   │      N и дата      │    Сумма      │  Фактические  │Сумма расходов │Сумма расходов │  Расходы на   │  Расходы на
     │      арендодателя        │            │                                                      │группы│      договора      │   арендной    │  расходы на   │  на ремонт,   │  на ремонт,   │   ремонт,     │  ремонт, не
     │                          │            │                                                      │      │       аренды       │    платы      │    ремонт     │  подлежащая   │не подлежащая  │  подлежащие   │  подлежащие
     │                          │            │                                                      │      │                    │               │               │  возмещению   │возмещению(H-I)│  отнесению    │   отнесению
     │                          │            │                                                      │      │                    │               │               │               │               │   на вычет    │ на вычет(J-K)
─────┼──────────────────────────┼────────────┼──────────────────────────────────────────────────────┼──────┼────────────────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────
  A  │            B             │     C      │                          D                           │  E   │          F         │       G       │       H       │       I       │       J       │       K       │       L
─────┴──────────────────────────┴────────────┴──────────────────────────────────────────────────────┴──────┴────────────────────┴───────────────┴───────────────┴───────────────┴───────────────┴───────────────┴───────────────
.]h
.{ CheckEnter UpperCommonItogNalGr1
.Begin
  iNPP := 1;
  dBegDate := StrToDate(Начало_периода,'DD.MM.YYYY');
  dEndDate := StrToDate(Начало_следующего_периода,'DD.MM.YYYY');
  dEndDate := Sub_Day(dEndDate, 1);
  iArr := 0;
  iCur := 0;
End.
.}
.{ CheckEnter GruppaHigherNalGr1
.}
.{ CheckEnter GruppaNalGr1
.Begin
  Итог_группы_Поступление := 0;
  Итог_группы_Выбытие     := 0;
End.
.}
.{ CheckEnter KatOsNalGr1
.}
.{ CheckEnter NameNalGr1
.Begin
  Итог_группы_Поступление := Итог_группы_Поступление +
                             Расходы_на_приобретение +
                             Расходы_на_изготовление +
                             Увеличение_прочее;

  Итог_группы_Выбытие := Итог_группы_Выбытие +
                         Стоимость_реализованных_индивидуальных +
                         Стоимость_реализованных_групповых +
                         Стоимость_ликвидированных_индивидуальных +
                         Стоимость_ликвидированных_групповых +
                         Уменьшение_прочее;
End.
.}
.{ CheckEnter KatOsItogNalGr1
.}
.{ CheckEnter ItogNalGr1
.Begin
  Итог_группы_Баланс_на_конец := Итог_группы_бал_стоим_на_начало
                               + Итог_группы_Поступление
                               - Итог_группы_Выбытие;

  tmp_cKatNalGr := nRec_группы;

  iCur := iCur + 1;
  KatNalGrArray[iCur] := nRec_группы;
  Массив_группы_Баланс_на_конец[iCur] := Итог_группы_Баланс_на_конец;
  Массив_группы_Сумма_ремонта_в_пределах_нормы[iCur] := Итог_группы_Сумма_ремонта_в_пределах_нормы;

  if (Вид_учета_группы = 0)
  {
    if (Учитывать_групповые_непроведенные_операции)
      bUseNotProvedOpers := true;
    else
      bUseNotProvedOpers := false;
  }
  else
  {
    if (Учитывать_индивидуальные_непроведенные_операции)
      bUseNotProvedOpers := true;
    else
      bUseNotProvedOpers := false;
  }

  if (vRent.GetFirst KatNalGr = tsOk)
  {
    bFoundGroup := true;

    //эта штука считается только на основе данных по собственным объектам
    if (Итог_группы_Баланс_на_конец > 0)
      tmp_OwnNotUsedSum := Итог_группы_Баланс_на_конец * vRent.KatNalGr.NormRem / 100
                         - Итог_группы_Сумма_ремонта_в_пределах_нормы;
    else
      tmp_OwnNotUsedSum := 0;
  }
  else
    bFoundGroup := false;

  bFoundRentedOs := false;
  if (bFoundGroup)
    if (vRent.GetFirst NalGrOs = tsOk)
      bFoundRentedOs := true;

  tmp_dCommonNotReturned := 0;
End.
!нужно найти сумму всех ремонтов по всем арендованным объектам данной группы
!и вычесть оттуда суммы расходов на ремонт, подлежащие возмещению, по каждому
!арендованному объекту данной налоговой группы
.{while bFoundRentedOs
.Begin
  bFoundRentedOs := false;

  if (vRent.GetFirst KatOs = tsOk)
  {
    if (bIsRented)
      bPrintKatOs := true;
    else
      bPrintKatOs := false;
  }
  else
    bPrintKatOs := false;

  if (bPrintKatOs)
  {
    tmp_dCurrObjRepair := 0;

    case vRent.KatOs.TiDk of
      15,99,115  : wTipDoc := 15;
      16,100,116 : wTipDoc := 16;
    end;

    if (wTipDoc = 15)
      tmp_cNastrOs := nRec_Метода_учета_ОС;
    else
      tmp_cNastrOs := nRec_Метода_учета_НМА;

    //считаем сумму ремонтов по данному арендованному объекту за текущий налоговый период
    vRent._loop MoveOs
    {
      if (vRent.GetFirst SpMove = tsOk)
        #ifdef __YUKOS_OS__
        if ((vRent.SpMove.Proved <> 0) or (bUseNotProvedOpers))
        #else
        if ((vRent.SpMove.cHozOper <> 0) or (bUseNotProvedOpers))
        #end
          if (vRent.GetFirst SpMoveOs = tsOk)
            tmp_dCurrObjRepair := tmp_dCurrObjRepair + vRent.SpMoveOs.Rashod;
    }

    if (tmp_dCurrObjRepair <> 0)
      tmp_dCommonNotReturned := tmp_dCommonNotReturned + tmp_dCurrObjRepair - d_AttrValSumRepairReturned_vDouble;

  }//if (bPrintKatOs)

  if (vRent.GetNext NalGrOs = tsOk)
    bFoundRentedOs := true;
  else
    bFoundRentedOs := false;
End.
.}
!снова спозиционируемся на первую запись
.Begin
  dCommonLimit := tmp_OwnNotUsedSum - tmp_dCommonNotReturned;

  if (bFoundGroup)
    if (vRent.GetFirst NalGrOs = tsOk)
      bFoundRentedOs := true;
End.
!надо выводить данные по каждому арендованному объекту
.{while bFoundRentedOs
.Begin
  bFoundRentedOs := false;

  if (vRent.GetFirst KatOs = tsOk)
  {
    if (bIsRented)
      bPrintKatOs := true;
    else
      bPrintKatOs := false;
  }
  else
    bPrintKatOs := false;

  if (bPrintKatOs)
  {
    case vRent.KatOs.TiDk of
      15,99,115  : wTipDoc := 15;
      16,100,116 : wTipDoc := 16;
    end;

    if (wTipDoc = 15)
      tmp_cNastrOs := nRec_Метода_учета_ОС;
    else
      tmp_cNastrOs := nRec_Метода_учета_НМА;

    //считаем сумму ремонтов по данному арендованному объекту за текущий налоговый период
    tmp_dCurrObjRepair := 0;
    tmp_dNotReturned := 0;

    vRent._loop MoveOs
    {
      if (vRent.GetFirst SpMove = tsOk)
        #ifdef __YUKOS_OS__
        if ((vRent.SpMove.Proved <> 0) or (bUseNotProvedOpers))
        #else
        if ((vRent.SpMove.cHozOper <> 0) or (bUseNotProvedOpers))
        #end
          if (vRent.GetFirst SpMoveOs = tsOk)
            tmp_dCurrObjRepair := tmp_dCurrObjRepair + vRent.SpMoveOs.Rashod;
    }

    //J - сумма расходов на ремонт, не подлежащая возмещению
    if (tmp_dCurrObjRepair <> 0)
      tmp_dNotReturned := tmp_dCurrObjRepair - d_AttrValSumRepairReturned_vDouble;

    if (tmp_dNotReturned < 0)
      tmp_dNotReturned := 0;

    //если лимита нет в принципе, то тогда все суммы относим к "не подлежащим
    //отнесению на вычет" (колонка L)
    if (tmp_OwnNotUsedSum = 0)
    {
      tmp_dSubRashod := 0;
      tmp_dNotSubRashod := tmp_dNotReturned;
    }
    else
    //если нужный лимит по группе превышен не был, то во всех арендованных ОСах в
    //расходы, подлежащие отнесению на вычет, пишем их ремонты за период
    if (dCommonLimit > 0)
    {
      tmp_dSubRashod := tmp_dNotReturned;
      tmp_dNotSubRashod := 0;
    }
    //а если превысили лимит, то относим сколько можно по каждому объекту
    //пока это возможно....
    else
    {
      if (tmp_dNotReturned > tmp_OwnNotUsedSum)
      {
        tmp_dSubRashod    := tmp_OwnNotUsedSum;
        tmp_dNotSubRashod := tmp_dNotReturned - tmp_OwnNotUsedSum;
        tmp_OwnNotUsedSum := 0;
      }
      else
      {
        tmp_dSubRashod    := tmp_dNotReturned;
        tmp_dNotSubRashod := 0;
        tmp_OwnNotUsedSum := tmp_OwnNotUsedSum - tmp_dNotReturned;
      }
    }

    dCommonRentSum           := dCommonRentSum + d_AttrValRentSum_vDouble;
    dCommonObjRepair         := dCommonObjRepair + tmp_dCurrObjRepair;
    dCommonSumRepairReturned := dCommonSumRepairReturned + d_AttrValSumRepairReturned_vDouble;
    dCommonNotReturned       := dCommonNotReturned + tmp_dNotReturned;
    dCommonSubRashod         := dCommonSubRashod + tmp_dSubRashod;
    dCommonNotSubRashod      := dCommonNotSubRashod + tmp_dNotSubRashod;

  }//if (bPrintKatOs)

  if (vRent.GetNext NalGrOs = tsOk)
    bFoundRentedOs := true;
  else
    bFoundRentedOs := false;
End.
.}
.}
.{ CheckEnter ItogHigherNalGr1
.}
.{ CheckEnter ItogMarkedNalGr1
.}
.}
00001 ИТОГО                                                                                                                      &&&&&&&&&&&&&&& &&&&&&&&&&&&&&& &&&&&&&&&&&&&&& &&&&&&&&&&&&&&& &&&&&&&&&&&&&&& &&&&&&&&&&&&&&&
!===============================================================================
!ПОКА ТОЛЬКО ИТОГИ ВЫВЕЛИ... А СЕЙЧАС ВЫВЕДЕМ ВСЕ ДАННЫЕ ПО ВСЕМ ОСАМ...
!здесь ниже фактически дублируется верхний код... (за небольшим исключением)...
!===============================================================================
.{while (iArr < iCur)
.Begin
  iArr := iArr + 1;
  tmp_cKatNalGr := KatNalGrArray[iArr];

  if (vRent.GetFirst KatNalGr = tsOk)
  {
    bFoundGroup := true;

    //эта штука считается только на основе данных по собственным объектам
    if (Массив_группы_Баланс_на_конец[iArr] > 0)
      tmp_OwnNotUsedSum := Массив_группы_Баланс_на_конец[iArr] * vRent.KatNalGr.NormRem / 100
                         - Массив_группы_Сумма_ремонта_в_пределах_нормы[iArr];
    else
      tmp_OwnNotUsedSum := 0;
  }
  else
    bFoundGroup := false;

  bFoundRentedOs := false;
  if (bFoundGroup)
    if (vRent.GetFirst NalGrOs = tsOk)
      bFoundRentedOs := true;

  tmp_dCommonNotReturned := 0;
End.
!нужно найти сумму всех ремонтов по всем арендованным объектам данной группы
!и вычесть оттуда суммы расходов на ремонт, подлежащие возмещению, по каждому
!арендованному объекту данной налоговой группы
.{while bFoundRentedOs
.Begin
  bFoundRentedOs := false;

  if (vRent.GetFirst KatOs = tsOk)
  {
    if (bIsRented)
      bPrintKatOs := true;
    else
      bPrintKatOs := false;
  }
  else
    bPrintKatOs := false;

  if (bPrintKatOs)
  {
    tmp_dCurrObjRepair := 0;

    case vRent.KatOs.TiDk of
      15,99,115  : wTipDoc := 15;
      16,100,116 : wTipDoc := 16;
    end;

    if (wTipDoc = 15)
      tmp_cNastrOs := nRec_Метода_учета_ОС;
    else
      tmp_cNastrOs := nRec_Метода_учета_НМА;

    //считаем сумму ремонтов по данному арендованному объекту за текущий налоговый период
    vRent._loop MoveOs
    {
      if (vRent.GetFirst SpMove = tsOk)
        #ifdef __YUKOS_OS__
        if ((vRent.SpMove.Proved <> 0) or (bUseNotProvedOpers))
        #else
        if ((vRent.SpMove.cHozOper <> 0) or (bUseNotProvedOpers))
        #end
          if (vRent.GetFirst SpMoveOs = tsOk)
            tmp_dCurrObjRepair := tmp_dCurrObjRepair + vRent.SpMoveOs.Rashod;
    }

    if (tmp_dCurrObjRepair <> 0)
      tmp_dCommonNotReturned := tmp_dCommonNotReturned + tmp_dCurrObjRepair - d_AttrValSumRepairReturned_vDouble;

  }//if (bPrintKatOs)

  if (vRent.GetNext NalGrOs = tsOk)
    bFoundRentedOs := true;
  else
    bFoundRentedOs := false;
End.
.}
!снова спозиционируемся на первую запись
.Begin
  dCommonLimit := tmp_OwnNotUsedSum - tmp_dCommonNotReturned;

  if (bFoundGroup)
    if (vRent.GetFirst NalGrOs = tsOk)
      bFoundRentedOs := true;
End.
!надо выводить данные по каждому арендованному объекту
.{while bFoundRentedOs
.Begin
  bFoundRentedOs := false;

  if (vRent.GetFirst KatOs = tsOk)
  {
    if (bIsRented)
      bPrintKatOs := true;
    else
      bPrintKatOs := false;
  }
  else
    bPrintKatOs := false;

  if (bPrintKatOs)
  {
    case vRent.KatOs.TiDk of
      15,99,115  : wTipDoc := 15;
      16,100,116 : wTipDoc := 16;
    end;

    if (wTipDoc = 15)
      tmp_cNastrOs := nRec_Метода_учета_ОС;
    else
      tmp_cNastrOs := nRec_Метода_учета_НМА;

    //считаем сумму ремонтов по данному арендованному объекту за текущий налоговый период
    tmp_dCurrObjRepair := 0;
    tmp_dNotReturned := 0;

    vRent._loop MoveOs
    {
      if (vRent.GetFirst SpMove = tsOk)
        #ifdef __YUKOS_OS__
        if ((vRent.SpMove.Proved <> 0) or (bUseNotProvedOpers))
        #else
        if ((vRent.SpMove.cHozOper <> 0) or (bUseNotProvedOpers))
        #end
          if (vRent.GetFirst SpMoveOs = tsOk)
            tmp_dCurrObjRepair := tmp_dCurrObjRepair + vRent.SpMoveOs.Rashod;
    }

    //J - сумма расходов на ремонт, не подлежащая возмещению
    if (tmp_dCurrObjRepair <> 0)
      tmp_dNotReturned := tmp_dCurrObjRepair - d_AttrValSumRepairReturned_vDouble;

    if (tmp_dNotReturned < 0)
      tmp_dNotReturned := 0;

    //если лимита нет в принципе, то тогда все суммы относим к "не подлежащим
    //отнесению на вычет" (колонка L)
    if (tmp_OwnNotUsedSum = 0)
    {
      tmp_dSubRashod := 0;
      tmp_dNotSubRashod := tmp_dNotReturned;
    }
    else
    //если нужный лимит по группе превышен не был, то во всех арендованных ОСах в
    //расходы, подлежащие отнесению на вычет, пишем их ремонты за период
    if (dCommonLimit > 0)
    {
      tmp_dSubRashod := tmp_dNotReturned;
      tmp_dNotSubRashod := 0;
    }
    //а если превысили лимит, то относим сколько можно по каждому объекту
    //пока это возможно....
    else
    {
      if (tmp_dNotReturned > tmp_OwnNotUsedSum)
      {
        tmp_dSubRashod    := tmp_OwnNotUsedSum;
        tmp_dNotSubRashod := tmp_dNotReturned - tmp_OwnNotUsedSum;
        tmp_OwnNotUsedSum := 0;
      }
      else
      {
        tmp_dSubRashod    := tmp_dNotReturned;
        tmp_dNotSubRashod := 0;
        tmp_OwnNotUsedSum := tmp_OwnNotUsedSum - tmp_dNotReturned;
      }
    }
  }//if (bPrintKatOs)
End.
.{?Internal;(bPrintKatOs);
.Begin
  iNPP := iNPP + 1;
  sNPP := string(iNPP);
  while (Length(sNPP) < 5)
    sNPP := '0'+sNPP;
End.
@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@ @@@@@@@@@ @@@@@@@@@@ &&&&&&&&&&&&&&& &&&&&&&&&&&&&&& &&&&&&&&&&&&&&& &&&&&&&&&&&&&&& &&&&&&&&&&&&&&& &&&&&&&&&&&&&&&
.}
.Begin
  if (vRent.GetNext NalGrOs = tsOk)
    bFoundRentedOs := true;
  else
    bFoundRentedOs := false;
End.
.}
.}
 Ш
.endform

!=============================================================================
.linkform 'Kaz3' prototype is 'NalGrBal'
!=============================================================================
.NameInList 'Форма 100.22'
.group 'Kaz'
.defo landscape
.P 58
.Var
  Итог_помеченные_Поступление                      : double
  Итог_помеченные_Выбытие                          : double
  Итог_помеченные_Баланс_на_конец_с_корректировкой : double

  Итог_группы_Поступление         : double
  Итог_группы_Выбытие             : double
  Итог_группы_Баланс_на_конец     : double
  Итог_общий_Доходы_от_превышения : double

  bFoundRentedOs              : boolean
  bFoundGroup                 : boolean
  bPrintKatOs                 : boolean
  tmp_cKatNalGr               : comp
  wTipDoc                     : word
  dBegDate                    : date
  dEndDate                    : date
  tmp_cNastrOs                : comp
  tmp_dCurrObjRepair          : double
  tmp_dNotReturned            : double
  tmp_dCommonNotReturned      : double
  tmp_OwnNotUsedSum           : double
  tmp_dSubRashod              : double
  tmp_dNotSubRashod           : double
  dCommonLimit                : double
  bUseNotProvedOpers          : boolean
  Порядковый_номер_раздела    : comp

  dCommonRentSum              : double
  dCommonObjRepair            : double
  dCommonSumRepairReturned    : double
  dCommonNotReturned          : double
  dCommonSubRashod            : double
  dCommonNotSubRashod         : double
.EndVar

.create view vRent
(
  bIsRented,
  d_AttrValSumRepairReturned_vDouble,
  d_AttrValRentSum_vDouble
)
as select
  //bIsRented
  if (isValidAll(tnExClassName),
    if(isValidAll(tnExClassVal),
      if (isValidAll(tnExClassSeg),
        if (ExClassSeg.Name = #ExClassRentedOs, true, false),
        false),
      false),
    false),

  //d_AttrValSumRepairReturned_vDouble
  if (vRent.isValidAll(vRent.tnAttrValSumRepairReturned),
    vRent.AttrValSumRepairReturned.vDouble,
    0),

  //d_AttrValRentSum_vDouble
  if (vRent.isValidAll(vRent.tnAttrValRentSum),
    vRent.AttrValRentSum.vDouble,
    0),

  *
from
  KatOs, KatNalGr, NalGrOs, MoveOs, SpMoveOs, SpKatOs, SpMove,
  ExClassVal, ExClassName, ExClassSeg,
  synonym AttrNam AttrNamMasterName,
  synonym AttrVal AttrValMasterName,
  synonym AttrNam AttrNamMasterRNN,
  synonym AttrVal AttrValMasterRNN,
  synonym AttrNam AttrNamRentDogNumber,
  synonym AttrVal AttrValRentDogNumber,
  synonym AttrNam AttrNamRentDogDate,
  synonym AttrVal AttrValRentDogDate,
  synonym AttrNam AttrNamRentSum,
  synonym AttrVal AttrValRentSum,
  synonym AttrNam AttrNamSumRepairReturned,
  synonym AttrVal AttrValSumRepairReturned

where
((
  tmp_cKatNalGr                   == KatNalGr.nRec                        and
  KatNalGr.nRec                   == NalGrOs.cKatNalGr                    and
  NalGrOs.cKatOs                  == KatOs.nRec                           and

  //Признак собственности
  word(coKatos)                   == ExClassName.wTable                   and
  #ExClassRentOsFeature           == ExClassName.Name                     and
  ExClassName.ClassCode           == ExClassVal.ClassCode                 and
  KatOs.nRec                      == ExClassVal.cRec                      and
  ExClassVal.cClassSeg            == ExClassSeg.nRec                      and

  //наименование арендодателя
  word(coKatos)                   == AttrNamMasterName.wTable             and
  word(0)                         == AttrNamMasterName.AttrType           and
  #NalGrMasterName                == AttrNamMasterName.Name               and
  word(coKatos)                   == AttrValMasterName.wTable             and
  KatOs.NRec                      == AttrValMasterName.cRec               and
  AttrNamMasterName.NRec          == AttrValMasterName.cAttrNam           and

  //РНН
  word(coKatos)                   == AttrNamMasterRNN.wTable               and
  word(0)                         == AttrNamMasterRNN.AttrType             and
  #NalGrMasterRNN                 == AttrNamMasterRNN.Name                 and
  word(coKatos)                   == AttrValMasterRNN.wTable               and
  KatOs.NRec                      == AttrValMasterRNN.cRec                 and
  AttrNamMasterRNN.NRec           == AttrValMasterRNN.cAttrNam             and

  //номер договора аренды
  word(coKatos)                   == AttrNamRentDogNumber.wTable           and
  word(0)                         == AttrNamRentDogNumber.AttrType         and
  #NalGrRentDogNumber             == AttrNamRentDogNumber.Name             and
  word(coKatos)                   == AttrValRentDogNumber.wTable           and
  KatOs.NRec                      == AttrValRentDogNumber.cRec             and
  AttrNamRentDogNumber.NRec       == AttrValRentDogNumber.cAttrNam         and

  //дата договора аренды
  word(coKatos)                   == AttrNamRentDogDate.wTable             and
  word(2)                         == AttrNamRentDogDate.AttrType           and
  #NalGrRentDogDate               == AttrNamRentDogDate.Name               and
  word(coKatos)                   == AttrValRentDogDate.wTable             and
  KatOs.NRec                      == AttrValRentDogDate.cRec               and
  AttrNamRentDogDate.NRec         == AttrValRentDogDate.cAttrNam           and

  //сумма арендной платы
  word(coKatos)                   == AttrNamRentSum.wTable                 and
  word(1)                         == AttrNamRentSum.AttrType               and
  #NalGrRentSum                   == AttrNamRentSum.Name                   and
  word(coKatos)                   == AttrValRentSum.wTable                 and
  KatOs.NRec                      == AttrValRentSum.cRec                   and
  AttrNamRentSum.NRec             == AttrValRentSum.cAttrNam               and

  //сумма расходов на ремонт, подлежащая возмещению
  word(coKatos)                   == AttrNamSumRepairReturned.wTable       and
  word(1)                         == AttrNamSumRepairReturned.AttrType     and
  #NalGrSumRepairReturned         == AttrNamSumRepairReturned.Name         and
  word(coKatos)                   == AttrValSumRepairReturned.wTable       and
  KatOs.NRec                      == AttrValSumRepairReturned.cRec         and
  AttrNamSumRepairReturned.NRec   == AttrValSumRepairReturned.cAttrNam     and

  //операции изменения стоимости
  wTipDoc                         == MoveOs.TipDoc                         and
  word(3)                         == MoveOs.SysOper                        and
  dBegDate                       <<= MoveOs.DatOb                          and
  dEndDate                       >>= MoveOs.DatOb                          and
  MoveOs.nRec                     == SpMoveOs.cMoveOs                      and
  tmp_cNastrOs                    == SpMoveOs.cNastrOs                     and
  KatOs.nRec                      == SpMoveOs.cKatOs                       and
  MoveOs.nRec                     == SpMove.cMoveOs                        and
  tmp_cNastrOs                    == SpMove.cNastrOs                       and
  KatOs.nRec                      == SpKatOs.cKatOs                        and
  tmp_cNastrOs                    == SpKatOs.cNastrOs
))
;
.fields
  РНН_Собственной_организации
  SubStr(Начало_периода, 7, 4)
  Наименование_Собственной_организации

!ItogMarkedNalGr1
  'Раздел. ' + Имя_помеченные
  String(Порядковый_номер_раздела)
  if (Итог_помеченные_бал_стоим_на_начало<>0, Trim(DoubleToStr(Итог_помеченные_бал_стоим_на_начало, ФорматСум)), '')
  if (Итог_помеченные_Поступление<>0, Trim(DoubleToStr(Итог_помеченные_Поступление, ФорматСум)), '')
  if (Итог_помеченные_Выбытие<>0, Trim(DoubleToStr(Итог_помеченные_Выбытие, ФорматСум)), '')
  if (Итог_помеченные_Баланс_на_конец<>0, Trim(DoubleToStr(Итог_помеченные_Баланс_на_конец, ФорматСум)), '')
  if (Итог_помеченные_Сумма_амортизации<>0, Trim(DoubleToStr(Итог_помеченные_Сумма_амортизации, ФорматСум)), '')
  if (Итог_помеченные_Сумма_ремонта_в_пределах_нормы<>0, Trim(DoubleToStr(Итог_помеченные_Сумма_ремонта_в_пределах_нормы, ФорматСум)), '')
  if (Итог_помеченные_увеличение_за_счет_ремонта<>0, Trim(DoubleToStr(Итог_помеченные_увеличение_за_счет_ремонта, ФорматСум)), '')
  if (Итог_помеченные_подлежащий_вычету_менее_100_МРП<>0, Trim(DoubleToStr(Итог_помеченные_подлежащий_вычету_менее_100_МРП, ФорматСум)), '')
  if (Итог_помеченные_подлежащий_вычету_при_выбытии<>0, Trim(DoubleToStr(Итог_помеченные_подлежащий_вычету_при_выбытии, ФорматСум)), '')
  if (Итог_помеченные_Баланс_на_конец_с_корректировкой<>0, Trim(DoubleToStr(Итог_помеченные_Баланс_на_конец_с_корректировкой, ФорматСум)), '')

  if (Итог_общий_Доходы_от_превышения<>0, Trim(DoubleToStr(Итог_общий_Доходы_от_превышения, ФорматСум)), '')

  if (dCommonRentSum<>0, Trim(DoubleToStr(dCommonRentSum, ФорматСум)), '')
  if (dCommonObjRepair<>0, Trim(DoubleToStr(dCommonObjRepair, ФорматСум)), '')
  if (dCommonSumRepairReturned<>0, Trim(DoubleToStr(dCommonSumRepairReturned, ФорматСум)), '')
  if (dCommonNotReturned<>0, Trim(DoubleToStr(dCommonNotReturned, ФорматСум)), '')
  if (dCommonSubRashod<>0, Trim(DoubleToStr(dCommonSubRashod, ФорматСум)), '')
  if (dCommonNotSubRashod<>0, Trim(DoubleToStr(dCommonNotSubRashod, ФорматСум)), '')
.endfields
.Begin
  if (vRent.GetFirst AttrNamMasterName <> tsOk)
  {
    Message('Для формирования отчета необходимо наличие внешнего атрибута'#13+
            #NalGrMasterName, Information + CancelButton);
    Kaz3.fBreak;
    Exit;
  }

  if (vRent.GetFirst AttrNamMasterRNN <> tsOk)
  {
    Message('Для формирования отчета необходимо наличие внешнего атрибута'#13+
            #NalGrMasterRNN, Information + CancelButton);
    Kaz3.fBreak;
    Exit;
  }

  if (vRent.GetFirst AttrNamRentDogNumber <> tsOk)
  {
    Message('Для формирования отчета необходимо наличие внешнего атрибута'#13+
            #NalGrRentDogNumber, Information + CancelButton);
    Kaz3.fBreak;
    Exit;
  }

  if (vRent.GetFirst AttrNamRentDogDate <> tsOk)
  {
    Message('Для формирования отчета необходимо наличие внешнего атрибута'#13+
            #NalGrRentDogDate, Information + CancelButton);
    Kaz3.fBreak;
    Exit;
  }

  if (vRent.GetFirst AttrNamRentSum <> tsOk)
  {
    Message('Для формирования отчета необходимо наличие внешнего атрибута'#13+
            #NalGrRentSum, Information + CancelButton);
    Kaz3.fBreak;
    Exit;
  }

  if (vRent.GetFirst AttrNamSumRepairReturned <> tsOk)
  {
    Message('Для формирования отчета необходимо наличие внешнего атрибута'#13+
            #NalGrSumRepairReturned, Information + CancelButton);
    Kaz3.fBreak;
    Exit;
  }

  if (GetFirst ExClassName <> tsOk) {};
End.
 Ш
                              АМОРТИЗАЦИОННЫЕ ОТЧИСЛЕНИЯ, РАСХОДЫ НА РЕМОНТ
                                И ДРУГИЕ ВЫЧЕТЫ ПО ФИКСИРОВАННЫМ АКТИВАМ

 Б ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
 │                            Раздел. Общая информация о налогоплательщике                        │
 └────────────────────────────────────────────────────────────────────────────────────────────────┘ Б
  1  РНН   Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б  2  Налоговый период (год):  Б@@@@ Б

  3  Наименование
     налогоплательщика   Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.{
.{ CheckEnter UpperCommonItogNalGr1
.Begin
  dBegDate := StrToDate(Начало_периода,'DD.MM.YYYY');
  dEndDate := StrToDate(Начало_следующего_периода,'DD.MM.YYYY');
  dEndDate := Sub_Day(dEndDate, 1);
  Порядковый_номер_раздела := 0;
End.
.}
.{ CheckEnter GruppaHigherNalGr1
.}
.{ CheckEnter GruppaNalGr1
.Begin
  Итог_группы_Поступление := 0;
  Итог_группы_Выбытие     := 0;
End.
.}
.{ CheckEnter KatOsNalGr1
.}
.{ CheckEnter NameNalGr1
.Begin
  Итог_группы_Поступление := Итог_группы_Поступление
                           + Расходы_на_приобретение
                           + Расходы_на_изготовление
                           + Увеличение_прочее;

  Итог_группы_Выбытие := Итог_группы_Выбытие
                       + Стоимость_реализованных_индивидуальных
                       + Стоимость_реализованных_групповых
                       + Стоимость_ликвидированных_индивидуальных
                       + Стоимость_ликвидированных_групповых
                       + Уменьшение_прочее;
End.
.}
.{ CheckEnter KatOsItogNalGr1
.}
.{ CheckEnter ItogNalGr1
.Begin
  Итог_группы_Баланс_на_конец := Итог_группы_бал_стоим_на_начало
                               + Итог_группы_Поступление
                               - Итог_группы_Выбытие;

  if (Итог_группы_Баланс_на_конец < 0)
    Итог_общий_Доходы_от_превышения := Итог_общий_Доходы_от_превышения
                                     - Итог_группы_Баланс_на_конец;

  tmp_cKatNalGr := nRec_группы;

  if (Вид_учета_группы = 0)
  {
    if (Учитывать_групповые_непроведенные_операции)
      bUseNotProvedOpers := true;
    else
      bUseNotProvedOpers := false;
  }
  else
  {
    if (Учитывать_индивидуальные_непроведенные_операции)
      bUseNotProvedOpers := true;
    else
      bUseNotProvedOpers := false;
  }

  if (vRent.GetFirst KatNalGr = tsOk)
  {
    bFoundGroup := true;

    //эта штука считается только на основе данных по собственным объектам
    if (Итог_группы_Баланс_на_конец > 0)
      tmp_OwnNotUsedSum := Итог_группы_Баланс_на_конец * vRent.KatNalGr.NormRem / 100
                         - Итог_группы_Сумма_ремонта_в_пределах_нормы;
    else
      tmp_OwnNotUsedSum := 0;
  }
  else
    bFoundGroup := false;

  bFoundRentedOs := false;
  if (bFoundGroup)
    if (vRent.GetFirst NalGrOs = tsOk)
      bFoundRentedOs := true;

  tmp_dCommonNotReturned := 0;
End.
!нужно найти сумму всех ремонтов по всем арендованным объектам данной группы
!и вычесть оттуда суммы расходов на ремонт, подлежащие возмещению, по каждому
!арендованному объекту данной налоговой группы
.{while bFoundRentedOs
.Begin
  bFoundRentedOs := false;

  if (vRent.GetFirst KatOs = tsOk)
  {
    if (bIsRented)
      bPrintKatOs := true;
    else
      bPrintKatOs := false;
  }
  else
    bPrintKatOs := false;

  if (bPrintKatOs)
  {
    tmp_dCurrObjRepair := 0;

    case vRent.KatOs.TiDk of
      15,99,115  : wTipDoc := 15;
      16,100,116 : wTipDoc := 16;
    end;

    if (wTipDoc = 15)
      tmp_cNastrOs := nRec_Метода_учета_ОС;
    else
      tmp_cNastrOs := nRec_Метода_учета_НМА;

    //считаем сумму ремонтов по данному арендованному объекту за текущий налоговый период
    vRent._loop MoveOs
    {
      if (vRent.GetFirst SpMove = tsOk)
        #ifdef __YUKOS_OS__
        if ((vRent.SpMove.Proved <> 0) or (bUseNotProvedOpers))
        #else
        if ((vRent.SpMove.cHozOper <> 0) or (bUseNotProvedOpers))
        #end
          if (vRent.GetFirst SpMoveOs = tsOk)
            tmp_dCurrObjRepair := tmp_dCurrObjRepair + vRent.SpMoveOs.Rashod;
    }

    if (tmp_dCurrObjRepair <> 0)
      tmp_dCommonNotReturned := tmp_dCommonNotReturned + tmp_dCurrObjRepair - d_AttrValSumRepairReturned_vDouble;

  }//if (bPrintKatOs)

  if (vRent.GetNext NalGrOs = tsOk)
    bFoundRentedOs := true;
  else
    bFoundRentedOs := false;
End.
.}
!снова спозиционируемся на первую запись
.Begin
  dCommonLimit := tmp_OwnNotUsedSum - tmp_dCommonNotReturned;

  if (bFoundGroup)
    if (vRent.GetFirst NalGrOs = tsOk)
      bFoundRentedOs := true;
End.
!надо выводить данные по каждому арендованному объекту
.{while bFoundRentedOs
.Begin
  bFoundRentedOs := false;

  if (vRent.GetFirst KatOs = tsOk)
  {
    if (bIsRented)
      bPrintKatOs := true;
    else
      bPrintKatOs := false;
  }
  else
    bPrintKatOs := false;

  if (bPrintKatOs)
  {
    case vRent.KatOs.TiDk of
      15,99,115  : wTipDoc := 15;
      16,100,116 : wTipDoc := 16;
    end;

    if (wTipDoc = 15)
      tmp_cNastrOs := nRec_Метода_учета_ОС;
    else
      tmp_cNastrOs := nRec_Метода_учета_НМА;

    //считаем сумму ремонтов по данному арендованному объекту за текущий налоговый период
    tmp_dCurrObjRepair := 0;
    tmp_dNotReturned := 0;

    vRent._loop MoveOs
    {
      if (vRent.GetFirst SpMove = tsOk)
        #ifdef __YUKOS_OS__
        if ((vRent.SpMove.Proved <> 0) or (bUseNotProvedOpers))
        #else
        if ((vRent.SpMove.cHozOper <> 0) or (bUseNotProvedOpers))
        #end
          if (vRent.GetFirst SpMoveOs = tsOk)
            tmp_dCurrObjRepair := tmp_dCurrObjRepair + vRent.SpMoveOs.Rashod;
    }

    //J - сумма расходов на ремонт, не подлежащая возмещению
    if (tmp_dCurrObjRepair <> 0)
      tmp_dNotReturned := tmp_dCurrObjRepair - d_AttrValSumRepairReturned_vDouble;

    if (tmp_dNotReturned < 0)
      tmp_dNotReturned := 0;

    //если лимита нет в принципе, то тогда все суммы относим к "не подлежащим
    //отнесению на вычет" (колонка L)
    if (tmp_OwnNotUsedSum = 0)
    {
      tmp_dSubRashod := 0;
      tmp_dNotSubRashod := tmp_dNotReturned;
    }
    else
    //если нужный лимит по группе превышен не был, то во всех арендованных ОСах в
    //расходы, подлежащие отнесению на вычет, пишем их ремонты за период
    if (dCommonLimit > 0)
    {
      tmp_dSubRashod := tmp_dNotReturned;
      tmp_dNotSubRashod := 0;
    }
    //а если превысили лимит, то относим сколько можно по каждому объекту
    //пока это возможно....
    else
    {
      if (tmp_dNotReturned > tmp_OwnNotUsedSum)
      {
        tmp_dSubRashod    := tmp_OwnNotUsedSum;
        tmp_dNotSubRashod := tmp_dNotReturned - tmp_OwnNotUsedSum;
        tmp_OwnNotUsedSum := 0;
      }
      else
      {
        tmp_dSubRashod    := tmp_dNotReturned;
        tmp_dNotSubRashod := 0;
        tmp_OwnNotUsedSum := tmp_OwnNotUsedSum - tmp_dNotReturned;
      }
    }

    dCommonRentSum           := dCommonRentSum + d_AttrValRentSum_vDouble;
    dCommonObjRepair         := dCommonObjRepair + tmp_dCurrObjRepair;
    dCommonSumRepairReturned := dCommonSumRepairReturned + d_AttrValSumRepairReturned_vDouble;
    dCommonNotReturned       := dCommonNotReturned + tmp_dNotReturned;
    dCommonSubRashod         := dCommonSubRashod + tmp_dSubRashod;
    dCommonNotSubRashod      := dCommonNotSubRashod + tmp_dNotSubRashod;

  }//if (bPrintKatOs)

  if (vRent.GetNext NalGrOs = tsOk)
    bFoundRentedOs := true;
  else
    bFoundRentedOs := false;
End.
.}
.}
.{ CheckEnter ItogHigherNalGr1
.}
.{ CheckEnter ItogMarkedNalGr1
.Begin
  Итог_помеченные_Поступление := Итог_помеченные_Расходы_на_приобретение
                               + Итог_помеченные_Расходы_на_изготовление
                               + Итог_помеченные_Увеличение_прочее;

  Итог_помеченные_Выбытие := Итог_помеченные_Стоимость_реализованных_индивидуальных
                           + Итог_помеченные_Стоимость_реализованных_групповых
                           + Итог_помеченные_Стоимость_ликвидированных_индивидуальных
                           + Итог_помеченные_Стоимость_ликвидированных_групповых
                           + Итог_помеченные_Уменьшение_прочее;

  Итог_помеченные_Баланс_на_конец := Итог_помеченные_Баланс_на_конец
                                   + Итог_помеченные_Увеличение_прочее
                                   - Итог_помеченные_Уменьшение_прочее;

  Итог_помеченные_Баланс_на_конец_с_корректировкой :=
                                   Итог_помеченные_Баланс_на_конец
                                 - Итог_помеченные_Сумма_амортизации
                                 + Итог_помеченные_увеличение_за_счет_ремонта
                                 - Итог_помеченные_Сумма_аморт_меньше_мин_бал_стоим
                                 - Итог_помеченные_подлежащий_вычету_менее_100_МРП
                                 - Итог_помеченные_подлежащий_вычету_при_выбытии;

  if (Итог_помеченные_Баланс_на_конец_с_корректировкой < 0)
    Итог_помеченные_Баланс_на_конец_с_корректировкой := 0;

  Порядковый_номер_раздела := Порядковый_номер_раздела + 1;
End.

  Б┌────────────────────────────────────────────────────────────────────────────────────────────────┐
 │@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│
 └────────────────────────────────────────────────────────────────────────────────────────────────┘
  Код строки                          Наименование                                  Сумма
 Б
  100.22.00@ A Стоимостный баланс подгруппы на начало налогового периода     &&&&&&&&&&&&&&&&&&&
             B Стоимость поступивших основных средств подгруппы              &&&&&&&&&&&&&&&&&&&
             C Стоимость выбывших основных средств подгруппы                 &&&&&&&&&&&&&&&&&&&
             D Стоимостный баланс подгруппы на конец налогового периода      &&&&&&&&&&&&&&&&&&&
             E Амортизационные отчисления                                    &&&&&&&&&&&&&&&&&&&
               Фактические расходы на ремонт основных средств, относимые на
             F вычеты в пределах 15% стоимостного баланса группы             &&&&&&&&&&&&&&&&&&&
               Фактические расходы на ремонт основных средств, относимые на
             G увеличение стоимостного баланса группы                        &&&&&&&&&&&&&&&&&&&
               Стоимостный баланс подгруппы, подлежащий вычету при величине
             H менее 100 МРП                                                 &&&&&&&&&&&&&&&&&&&
               Стоимостный баланс подгруппы, подлежащий вычету при выбытии
             I всех фиксированных активов подгруппы                          &&&&&&&&&&&&&&&&&&&
               Стоимостный баланс подгурппы на конец налогового периода с
             J учетом корректировок                                          &&&&&&&&&&&&&&&&&&&

.}
.}
 Б ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
 │                                            Раздел. Доходы                                      │
 └────────────────────────────────────────────────────────────────────────────────────────────────┘
 Б
  100.22.006   Доходы от превышения стоимости выбывших фиксированных активов &&&&&&&&&&&&&&&&&&&
               над стоимостным балансом подгруппы

 Б ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
 │                                            Раздел. Прочие                                      │
 └────────────────────────────────────────────────────────────────────────────────────────────────┘
 Б
  100.22.007 A Сумма арендной платы                                          &&&&&&&&&&&&&&&&&&&
             B Фактические расходы на ремонт                                 &&&&&&&&&&&&&&&&&&&
             C Сумма расходов на ремонт, подлежащая возмещению               &&&&&&&&&&&&&&&&&&&
             D Сумма расходов на ремонт, не подлежащая возмещению            &&&&&&&&&&&&&&&&&&&
             E Расходы на ремонт, подлежащие отнесению на вычет              &&&&&&&&&&&&&&&&&&&
             F Расходы на ремонт, не подлежащие отнесению на вычет           &&&&&&&&&&&&&&&&&&&


                  ┌───────────────────────────────────────────────────────────────────────────────┐
                  │                      Не выходить за ограничительную рамку                     │
                  │ _________________________________________________________/ __________________/│
                  │ Ф.И.О. Должностного лица, заполнившего данную форму              Подпись      │
                  └───────────────────────────────────────────────────────────────────────────────┘
 Ш
.endform

!=============================================================================
.linkform 'Ukr1' prototype is 'NalGrBal'
!=============================================================================
.NameInList 'Изменение балансовой стоимости'
.group 'Ukr'
.defo landscape
.P 58
.Var
  Строка_увеличение_бал_стоим                      : double
  Строка_уменьшение_бал_стоим                      : double

  Итог_ИК_увеличение_бал_стоим                     : double
  Итог_ИК_уменьшение_бал_стоим                     : double
  Итог_ИК_бал_стоим_на_конец                       : double
  Итог_ИК_Расходы_на_приобретение                  : double
  Итог_ИК_Расходы_на_изготовление                  : double
  Итог_ИК_Увеличение_прочее                        : double
  Итог_ИК_Стоимость_реализованных_индивидуальных   : double
  Итог_ИК_Стоимость_реализованных_групповых        : double
  Итог_ИК_Стоимость_ликвидированных_индивидуальных : double
  Итог_ИК_Стоимость_ликвидированных_групповых      : double
  Итог_ИК_Сумма_аморт_меньше_мин_бал_стоим         : double
  Итог_ИК_Сумма_амортизации                        : double
  Итог_ИК_Уменьшение_прочее                        : double

  Итог_группы_увеличение_бал_стоим                 : double
  Итог_группы_уменьшение_бал_стоим                 : double
  Итог_группы_бал_стоим_на_конец                   : double

  Итог_общий_бал_стоим_на_начало                   : double
  Итог_общий_увеличение_бал_стоим                  : double
  Итог_общий_уменьшение_бал_стоим                  : double
  Итог_общий_бал_стоим_на_конец                    : double

  Итог_группы_Расходы_на_приобретение                  : double
  Итог_группы_Расходы_на_изготовление                  : double
  Итог_группы_Увеличение_прочее                        : double
  Итог_группы_Стоимость_реализованных_индивидуальных   : double
  Итог_группы_Стоимость_реализованных_групповых        : double
  Итог_группы_Стоимость_ликвидированных_индивидуальных : double
  Итог_группы_Стоимость_ликвидированных_групповых      : double
  Итог_группы_Сумма_аморт_меньше_мин_бал_стоим         : double
  Итог_группы_Сумма_амортизации                        : double
  Итог_группы_Уменьшение_прочее                        : double

  Итог_общий_Расходы_на_приобретение                   : double
  Итог_общий_Расходы_на_изготовление                   : double
  Итог_общий_Увеличение_прочее                         : double
  Итог_общий_Стоимость_реализованных_индивидуальных    : double
  Итог_общий_Стоимость_реализованных_групповых         : double
  Итог_общий_Стоимость_ликвидированных_индивидуальных  : double
  Итог_общий_Стоимость_ликвидированных_групповых       : double
  Итог_общий_Сумма_аморт_меньше_мин_бал_стоим          : double
  Итог_общий_Сумма_амортизации                         : double
  Итог_общий_Уменьшение_прочее                         : double

.EndVar
.Begin
  Итог_общий_бал_стоим_на_начало                       := 0;
  Итог_общий_увеличение_бал_стоим                      := 0;
  Итог_общий_уменьшение_бал_стоим                      := 0;
  Итог_общий_бал_стоим_на_конец                        := 0;

  Итог_общий_Расходы_на_приобретение                   := 0;
  Итог_общий_Расходы_на_изготовление                   := 0;
  Итог_общий_Увеличение_прочее                         := 0;
  Итог_общий_Стоимость_реализованных_индивидуальных    := 0;
  Итог_общий_Стоимость_реализованных_групповых         := 0;
  Итог_общий_Стоимость_ликвидированных_индивидуальных  := 0;
  Итог_общий_Стоимость_ликвидированных_групповых       := 0;
  Итог_общий_Сумма_аморт_меньше_мин_бал_стоим          := 0;
  Итог_общий_Сумма_амортизации                         := 0;
  Итог_общий_Уменьшение_прочее                         := 0;
End.

.create view vKatOs
as select *
from SpMoveOs, KatOs
where
((
  comp(nRec_SpMoveOs) == SpMoveOs.nRec and
  SpMoveOs.cKatOs     == KatOs.nRec
));
.fields
  Период
  Начало_следующего_периода
  Начало_периода

!GruppaNalGr1
  Имя_группы_заголовок

!NameNalGr1
  if (comp(nRec_SpMoveOs) <> comp(0), vKatOs.KatOs.InNum, '')
  if (comp(nRec_SpMoveOs) <> comp(0), vKatOs.KatOs.NameOs, '')
  Дата_операции
  if (Расходы_на_приобретение<>0, Trim(DoubleToStr(Расходы_на_приобретение, ФорматСум)), '')
  if (Расходы_на_изготовление<>0, Trim(DoubleToStr(Расходы_на_изготовление, ФорматСум)), '')
  if (Увеличение_прочее<>0, Trim(DoubleToStr(Увеличение_прочее, ФорматСум)), '')
  if (Строка_увеличение_бал_стоим<>0, Trim(DoubleToStr(Строка_увеличение_бал_стоим, ФорматСум)), '')
  if (Стоимость_реализованных_индивидуальных<>0, Trim(DoubleToStr(Стоимость_реализованных_индивидуальных, ФорматСум)), '')
  if (Стоимость_реализованных_групповых<>0, Trim(DoubleToStr(Стоимость_реализованных_групповых, ФорматСум)), '')
  if (Стоимость_ликвидированных_индивидуальных<>0, Trim(DoubleToStr(Стоимость_ликвидированных_индивидуальных, ФорматСум)), '')
  if (Стоимость_ликвидированных_групповых<>0, Trim(DoubleToStr(Стоимость_ликвидированных_групповых, ФорматСум)), '')
  if (Сумма_аморт_меньше_мин_бал_стоим<>0, Trim(DoubleToStr(Сумма_аморт_меньше_мин_бал_стоим, ФорматСум)), '')
  if (Сумма_амортизации<>0, Trim(DoubleToStr(Сумма_амортизации, ФорматСум)), '')
  if (Уменьшение_прочее<>0, Trim(DoubleToStr(Уменьшение_прочее, ФорматСум)), '')
  if (Строка_уменьшение_бал_стоим<>0, Trim(DoubleToStr(Строка_уменьшение_бал_стоим, ФорматСум)), '')

!KatOsItogNalGr1
  'Итого по ИК № ' + Инвентарный_номер + ' ' + Наименование_ИК
  if (Итог_ИК_бал_стоим_на_начало <> 0, Trim(DoubleToStr(Итог_ИК_бал_стоим_на_начало,ФорматСум)), '')
  if (Итог_ИК_Расходы_на_приобретение<>0, Trim(DoubleToStr(Итог_ИК_Расходы_на_приобретение, ФорматСум)), '')
  if (Итог_ИК_Расходы_на_изготовление<>0, Trim(DoubleToStr(Итог_ИК_Расходы_на_изготовление, ФорматСум)), '')
  if (Итог_ИК_Увеличение_прочее<>0, Trim(DoubleToStr(Итог_ИК_Увеличение_прочее, ФорматСум)), '')
  if (Итог_ИК_увеличение_бал_стоим<>0, Trim(DoubleToStr(Итог_ИК_увеличение_бал_стоим, ФорматСум)), '')
  if (Итог_ИК_Стоимость_реализованных_индивидуальных<>0, Trim(DoubleToStr(Итог_ИК_Стоимость_реализованных_индивидуальных, ФорматСум)), '')
  if (Итог_ИК_Стоимость_реализованных_групповых<>0, Trim(DoubleToStr(Итог_ИК_Стоимость_реализованных_групповых, ФорматСум)), '')
  if (Итог_ИК_Стоимость_ликвидированных_индивидуальных<>0, Trim(DoubleToStr(Итог_ИК_Стоимость_ликвидированных_индивидуальных, ФорматСум)), '')
  if (Итог_ИК_Стоимость_ликвидированных_групповых<>0, Trim(DoubleToStr(Итог_ИК_Стоимость_ликвидированных_групповых, ФорматСум)), '')
  if (Итог_ИК_Сумма_аморт_меньше_мин_бал_стоим<>0, Trim(DoubleToStr(Итог_ИК_Сумма_аморт_меньше_мин_бал_стоим, ФорматСум)), '')
  if (Итог_ИК_Сумма_амортизации<>0, Trim(DoubleToStr(Итог_ИК_Сумма_амортизации, ФорматСум)), '')
  if (Итог_ИК_Уменьшение_прочее<>0, Trim(DoubleToStr(Итог_ИК_Уменьшение_прочее, ФорматСум)), '')
  if (Итог_ИК_уменьшение_бал_стоим<>0, Trim(DoubleToStr(Итог_ИК_уменьшение_бал_стоим, ФорматСум)), '')
  if (Итог_ИК_бал_стоим_на_конец<>0, Trim(DoubleToStr(Итог_ИК_бал_стоим_на_конец, ФорматСум)), '')

  Инвентарный_номер
  Наименование_ИК
  if (Итог_ИК_бал_стоим_на_начало <> 0, Trim(DoubleToStr(Итог_ИК_бал_стоим_на_начало,ФорматСум)), '')
  if (Итог_ИК_Расходы_на_приобретение<>0, Trim(DoubleToStr(Итог_ИК_Расходы_на_приобретение, ФорматСум)), '')
  if (Итог_ИК_Расходы_на_изготовление<>0, Trim(DoubleToStr(Итог_ИК_Расходы_на_изготовление, ФорматСум)), '')
  if (Итог_ИК_Увеличение_прочее<>0, Trim(DoubleToStr(Итог_ИК_Увеличение_прочее, ФорматСум)), '')
  if (Итог_ИК_увеличение_бал_стоим<>0, Trim(DoubleToStr(Итог_ИК_увеличение_бал_стоим, ФорматСум)), '')
  if (Итог_ИК_Стоимость_реализованных_индивидуальных<>0, Trim(DoubleToStr(Итог_ИК_Стоимость_реализованных_индивидуальных, ФорматСум)), '')
  if (Итог_ИК_Стоимость_реализованных_групповых<>0, Trim(DoubleToStr(Итог_ИК_Стоимость_реализованных_групповых, ФорматСум)), '')
  if (Итог_ИК_Стоимость_ликвидированных_индивидуальных<>0, Trim(DoubleToStr(Итог_ИК_Стоимость_ликвидированных_индивидуальных, ФорматСум)), '')
  if (Итог_ИК_Стоимость_ликвидированных_групповых<>0, Trim(DoubleToStr(Итог_ИК_Стоимость_ликвидированных_групповых, ФорматСум)), '')
  if (Итог_ИК_Сумма_аморт_меньше_мин_бал_стоим<>0, Trim(DoubleToStr(Итог_ИК_Сумма_аморт_меньше_мин_бал_стоим, ФорматСум)), '')
  if (Итог_ИК_Сумма_амортизации<>0, Trim(DoubleToStr(Итог_ИК_Сумма_амортизации, ФорматСум)), '')
  if (Итог_ИК_Уменьшение_прочее<>0, Trim(DoubleToStr(Итог_ИК_Уменьшение_прочее, ФорматСум)), '')
  if (Итог_ИК_уменьшение_бал_стоим<>0, Trim(DoubleToStr(Итог_ИК_уменьшение_бал_стоим, ФорматСум)), '')
  if (Итог_ИК_бал_стоим_на_конец<>0, Trim(DoubleToStr(Итог_ИК_бал_стоим_на_конец, ФорматСум)), '')

!ItogNalGr1
  Имя_группы_итоги
  if (Итог_группы_бал_стоим_на_начало<>0, Trim(DoubleToStr(Итог_группы_бал_стоим_на_начало, ФорматСум)), '')
  if (Итог_группы_Расходы_на_приобретение<>0, Trim(DoubleToStr(Итог_группы_Расходы_на_приобретение, ФорматСум)), '')
  if (Итог_группы_Расходы_на_изготовление<>0, Trim(DoubleToStr(Итог_группы_Расходы_на_изготовление, ФорматСум)), '')
  if (Итог_группы_Увеличение_прочее<>0, Trim(DoubleToStr(Итог_группы_Увеличение_прочее, ФорматСум)), '')
  if (Итог_группы_увеличение_бал_стоим<>0, Trim(DoubleToStr(Итог_группы_увеличение_бал_стоим, ФорматСум)), '')
  if (Итог_группы_Стоимость_реализованных_индивидуальных<>0, Trim(DoubleToStr(Итог_группы_Стоимость_реализованных_индивидуальных, ФорматСум)), '')
  if (Итог_группы_Стоимость_реализованных_групповых<>0, Trim(DoubleToStr(Итог_группы_Стоимость_реализованных_групповых, ФорматСум)), '')
  if (Итог_группы_Стоимость_ликвидированных_индивидуальных<>0, Trim(DoubleToStr(Итог_группы_Стоимость_ликвидированных_индивидуальных, ФорматСум)), '')
  if (Итог_группы_Стоимость_ликвидированных_групповых<>0, Trim(DoubleToStr(Итог_группы_Стоимость_ликвидированных_групповых, ФорматСум)), '')
  if (Итог_группы_Сумма_аморт_меньше_мин_бал_стоим<>0, Trim(DoubleToStr(Итог_группы_Сумма_аморт_меньше_мин_бал_стоим, ФорматСум)), '')
  if (Итог_группы_Сумма_амортизации<>0, Trim(DoubleToStr(Итог_группы_Сумма_амортизации, ФорматСум)), '')
  if (Итог_группы_Уменьшение_прочее<>0, Trim(DoubleToStr(Итог_группы_Уменьшение_прочее, ФорматСум)), '')
  if (Итог_группы_уменьшение_бал_стоим<>0, Trim(DoubleToStr(Итог_группы_уменьшение_бал_стоим, ФорматСум)), '')
  if (Итог_группы_бал_стоим_на_конец<>0, Trim(DoubleToStr(Итог_группы_бал_стоим_на_конец, ФорматСум)), '')

  if (Итог_общий_бал_стоим_на_начало<>0, Trim(DoubleToStr(Итог_общий_бал_стоим_на_начало, ФорматСум)), '')
  if (Итог_общий_Расходы_на_приобретение<>0, Trim(DoubleToStr(Итог_общий_Расходы_на_приобретение, ФорматСум)), '')
  if (Итог_общий_Расходы_на_изготовление<>0, Trim(DoubleToStr(Итог_общий_Расходы_на_изготовление, ФорматСум)), '')
  if (Итог_общий_Увеличение_прочее<>0, Trim(DoubleToStr(Итог_общий_Увеличение_прочее, ФорматСум)), '')
  if (Итог_общий_увеличение_бал_стоим<>0, Trim(DoubleToStr(Итог_общий_увеличение_бал_стоим, ФорматСум)), '')
  if (Итог_общий_Стоимость_реализованных_индивидуальных<>0, Trim(DoubleToStr(Итог_общий_Стоимость_реализованных_индивидуальных, ФорматСум)), '')
  if (Итог_общий_Стоимость_реализованных_групповых<>0, Trim(DoubleToStr(Итог_общий_Стоимость_реализованных_групповых, ФорматСум)), '')
  if (Итог_общий_Стоимость_ликвидированных_индивидуальных<>0, Trim(DoubleToStr(Итог_общий_Стоимость_ликвидированных_индивидуальных, ФорматСум)), '')
  if (Итог_общий_Стоимость_ликвидированных_групповых<>0, Trim(DoubleToStr(Итог_общий_Стоимость_ликвидированных_групповых, ФорматСум)), '')
  if (Итог_общий_Сумма_аморт_меньше_мин_бал_стоим<>0, Trim(DoubleToStr(Итог_общий_Сумма_аморт_меньше_мин_бал_стоим, ФорматСум)), '')
  if (Итог_общий_Сумма_амортизации<>0, Trim(DoubleToStr(Итог_общий_Сумма_амортизации, ФорматСум)), '')
  if (Итог_общий_Уменьшение_прочее<>0, Trim(DoubleToStr(Итог_общий_Уменьшение_прочее, ФорматСум)), '')
  if (Итог_общий_уменьшение_бал_стоим<>0, Trim(DoubleToStr(Итог_общий_уменьшение_бал_стоим, ФорматСум)), '')
  if (Итог_общий_бал_стоим_на_конец<>0, Trim(DoubleToStr(Итог_общий_бал_стоим_на_конец, ФорматСум)), '')

.endfields

            БИзменение балансовой стоимости основных фондов за ^ Б
 Ш
.{
.[h
────────────┬─────────────────────────────┬──────────┬───────────┬───────────────────────────────────────────────┬───────────────────────────────────────────────────────────────────────────────────────────────┬──────────────
 Инвентарный│       Наименование ОФ       │   Дата   │Балансовая │        Увеличение балансовой стоимости        │                                Уменьшение балансовой стоимости                                │ Балансовая
  номер ОФ  │                             │ операции │ стоимость ├───────────┬───────────┬───────────┬───────────┼───────────────────────┬───────────────────────┬───────────┬───────────┬───────────┬───────────┤ стоимость
            │                             │          │ основных  │Расходы на │Расходы на │  Прочее   │ Итого на  │       Стоимость       │ Балансовая стоимость  │   Сумма   │   Сумма   │  Прочее   │ Итого на  │  основных
            │                             │          │  фондов   │приобрете- │самостояте-│           │увеличение │   реализованных ОФ    │ в связи с ликвидацией │амортизации│амортизации│           │уменьшение │ фондов на
            │                             │          │    на     │    ние    │льное изго │           │балансовой ├───────────┬───────────┤    основных фондов    │  (меньше  │           │           │балансовой │ @@@@@@@@@@
            │                             │          │@@@@@@@@@@ │ основных  │товление ОФ│           │ стоимости │По балансо-│ По сумме  ├───────────┬───────────┤мин.баланс.│           │           │ стоимости │
            │                             │          │           │  фондов   │  за счет  │           │           │вой стоимо-│реализации │  групп с  │  групп с  │стоимости) │           │           │           │
            │                             │          │           │           │всех источ-│           │           │сти гр. с  │   гр. с   │ индивиду- │ групповым │           │           │           │           │
            │                             │          │           │           │ников фин. │           │           │ индивиду- │ групповым │  альным   │  учетом   │           │           │           │           │
            │                             │          │           │           │           │           │           │альным уче-│  учетом   │  учетом   │           │           │           │           │           │
            │                             │          │           │           │           │           │           │    том    │           │           │           │           │           │           │           │
────────────┴─────────────────────────────┴──────────┴───────────┴───────────┴───────────┴───────────┴───────────┴───────────┴───────────┴───────────┴───────────┴───────────┴───────────┴───────────┴───────────┴──────────────
.]h
.{ CheckEnter UpperCommonItogNalGr1
.}
.{ CheckEnter GruppaHigherNalGr1
.}
.{ CheckEnter GruppaNalGr1
.Begin
  Итог_группы_увеличение_бал_стоим                     := 0;
  Итог_группы_уменьшение_бал_стоим                     := 0;
  Итог_группы_бал_стоим_на_конец                       := 0;

  Итог_группы_Расходы_на_приобретение                  := 0;
  Итог_группы_Расходы_на_изготовление                  := 0;
  Итог_группы_Увеличение_прочее                        := 0;
  Итог_группы_Стоимость_реализованных_индивидуальных   := 0;
  Итог_группы_Стоимость_реализованных_групповых        := 0;
  Итог_группы_Стоимость_ликвидированных_индивидуальных := 0;
  Итог_группы_Стоимость_ликвидированных_групповых      := 0;
  Итог_группы_Сумма_аморт_меньше_мин_бал_стоим         := 0;
  Итог_группы_Сумма_амортизации                        := 0;
  Итог_группы_Уменьшение_прочее                        := 0;
End.
 Б^ Б
.}
.{ CheckEnter KatOsNalGr1
.Begin
  Итог_ИК_увеличение_бал_стоим                     := 0;
  Итог_ИК_уменьшение_бал_стоим                     := 0;
  Итог_ИК_бал_стоим_на_конец                       := 0;
  Итог_ИК_Расходы_на_приобретение                  := 0;
  Итог_ИК_Расходы_на_изготовление                  := 0;
  Итог_ИК_Увеличение_прочее                        := 0;
  Итог_ИК_Стоимость_реализованных_индивидуальных   := 0;
  Итог_ИК_Стоимость_реализованных_групповых        := 0;
  Итог_ИК_Стоимость_ликвидированных_индивидуальных := 0;
  Итог_ИК_Стоимость_ликвидированных_групповых      := 0;
  Итог_ИК_Сумма_аморт_меньше_мин_бал_стоим         := 0;
  Итог_ИК_Сумма_амортизации                        := 0;
  Итог_ИК_Уменьшение_прочее                        := 0;
End.
.}
.{ CheckEnter NameNalGr1
.Begin
  Строка_увеличение_бал_стоим := Расходы_на_приобретение + Расходы_на_изготовление + Увеличение_прочее;
  Строка_уменьшение_бал_стоим := Стоимость_реализованных_индивидуальных + Стоимость_реализованных_групповых + Стоимость_ликвидированных_индивидуальных +
                                 Стоимость_ликвидированных_групповых + Сумма_амортизации + Уменьшение_прочее;

  Итог_группы_увеличение_бал_стоим := Итог_группы_увеличение_бал_стоим + Строка_увеличение_бал_стоим;
  Итог_группы_уменьшение_бал_стоим := Итог_группы_уменьшение_бал_стоим + Строка_уменьшение_бал_стоим;

  Итог_группы_Расходы_на_приобретение                  := Итог_группы_Расходы_на_приобретение + Расходы_на_приобретение;
  Итог_группы_Расходы_на_изготовление                  := Итог_группы_Расходы_на_изготовление + Расходы_на_изготовление;
  Итог_группы_Увеличение_прочее                        := Итог_группы_Увеличение_прочее + Увеличение_прочее;
  Итог_группы_Стоимость_реализованных_индивидуальных   := Итог_группы_Стоимость_реализованных_индивидуальных + Стоимость_реализованных_индивидуальных;
  Итог_группы_Стоимость_реализованных_групповых        := Итог_группы_Стоимость_реализованных_групповых + Стоимость_реализованных_групповых;
  Итог_группы_Стоимость_ликвидированных_индивидуальных := Итог_группы_Стоимость_ликвидированных_индивидуальных + Стоимость_ликвидированных_индивидуальных;
  Итог_группы_Стоимость_ликвидированных_групповых      := Итог_группы_Стоимость_ликвидированных_групповых + Стоимость_ликвидированных_групповых;
  Итог_группы_Сумма_аморт_меньше_мин_бал_стоим         := Итог_группы_Сумма_аморт_меньше_мин_бал_стоим + Сумма_аморт_меньше_мин_бал_стоим;
  Итог_группы_Сумма_амортизации                        := Итог_группы_Сумма_амортизации + Сумма_амортизации;
  Итог_группы_Уменьшение_прочее                        := Итог_группы_Уменьшение_прочее + Уменьшение_прочее;
  
  Итог_ИК_увеличение_бал_стоим := Итог_ИК_увеличение_бал_стоим + Строка_увеличение_бал_стоим;
  Итог_ИК_уменьшение_бал_стоим := Итог_ИК_уменьшение_бал_стоим + Строка_уменьшение_бал_стоим;

  Итог_ИК_Расходы_на_приобретение                  := Итог_ИК_Расходы_на_приобретение + Расходы_на_приобретение;
  Итог_ИК_Расходы_на_изготовление                  := Итог_ИК_Расходы_на_изготовление + Расходы_на_изготовление;
  Итог_ИК_Увеличение_прочее                        := Итог_ИК_Увеличение_прочее + Увеличение_прочее;
  Итог_ИК_Стоимость_реализованных_индивидуальных   := Итог_ИК_Стоимость_реализованных_индивидуальных + Стоимость_реализованных_индивидуальных;
  Итог_ИК_Стоимость_реализованных_групповых        := Итог_ИК_Стоимость_реализованных_групповых + Стоимость_реализованных_групповых;
  Итог_ИК_Стоимость_ликвидированных_индивидуальных := Итог_ИК_Стоимость_ликвидированных_индивидуальных + Стоимость_ликвидированных_индивидуальных;
  Итог_ИК_Стоимость_ликвидированных_групповых      := Итог_ИК_Стоимость_ликвидированных_групповых + Стоимость_ликвидированных_групповых;
  Итог_ИК_Сумма_аморт_меньше_мин_бал_стоим         := Итог_ИК_Сумма_аморт_меньше_мин_бал_стоим + Сумма_аморт_меньше_мин_бал_стоим;
  Итог_ИК_Сумма_амортизации                        := Итог_ИК_Сумма_амортизации + Сумма_амортизации;
  Итог_ИК_Уменьшение_прочее                        := Итог_ИК_Уменьшение_прочее + Уменьшение_прочее;
  if (vKatOs.GetFirst SpMoveOs <> tsOk) {};
  if (vKatOs.GetFirst KatOs <> tsOk) {};
End.
.{?Internal; if (Вид_учета_группы = 0, Печатать_групповые_операции, Печатать_индивидуальные_операции);
@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@             &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&&
.}
.}
.{ CheckEnter KatOsItogNalGr1
.Begin
  Итог_ИК_бал_стоим_на_конец := Итог_ИК_бал_стоим_на_начало
                               + Итог_ИК_увеличение_бал_стоим
                               - Итог_ИК_уменьшение_бал_стоим;
End.
.{?Internal; ((Вид_учета_группы <> 0) AND Печатать_индивидуальные_операции);
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&&&&& Б
.}
.{?Internal; ((Вид_учета_группы <> 0) AND (Not Печатать_индивидуальные_операции));
@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&&&&&
.}
.}
.{ CheckEnter ItogNalGr1
.Begin
  Итог_группы_бал_стоим_на_конец := Итог_группы_бал_стоим_на_начало
                                  + Итог_группы_увеличение_бал_стоим
                                  - Итог_группы_уменьшение_бал_стоим;

  Итог_общий_бал_стоим_на_начало   := Итог_общий_бал_стоим_на_начало + Итог_группы_бал_стоим_на_начало;
  Итог_общий_увеличение_бал_стоим  := Итог_общий_увеличение_бал_стоим + Итог_группы_увеличение_бал_стоим;
  Итог_общий_уменьшение_бал_стоим  := Итог_общий_уменьшение_бал_стоим + Итог_группы_уменьшение_бал_стоим;

  Итог_общий_Расходы_на_приобретение                   := Итог_общий_Расходы_на_приобретение + Итог_группы_Расходы_на_приобретение;
  Итог_общий_Расходы_на_изготовление                   := Итог_общий_Расходы_на_изготовление + Итог_группы_Расходы_на_изготовление;
  Итог_общий_Увеличение_прочее                         := Итог_общий_Увеличение_прочее + Итог_группы_Увеличение_прочее;
  Итог_общий_Стоимость_реализованных_индивидуальных    := Итог_общий_Стоимость_реализованных_индивидуальных + Итог_группы_Стоимость_реализованных_индивидуальных;
  Итог_общий_Стоимость_реализованных_групповых         := Итог_общий_Стоимость_реализованных_групповых + Итог_группы_Стоимость_реализованных_групповых;
  Итог_общий_Стоимость_ликвидированных_индивидуальных  := Итог_общий_Стоимость_ликвидированных_индивидуальных + Итог_группы_Стоимость_ликвидированных_индивидуальных;
  Итог_общий_Стоимость_ликвидированных_групповых       := Итог_общий_Стоимость_ликвидированных_групповых + Итог_группы_Стоимость_ликвидированных_групповых;
  Итог_общий_Сумма_аморт_меньше_мин_бал_стоим          := Итог_общий_Сумма_аморт_меньше_мин_бал_стоим + Итог_группы_Сумма_аморт_меньше_мин_бал_стоим;
  Итог_общий_Сумма_амортизации                         := Итог_общий_Сумма_амортизации + Итог_группы_Сумма_амортизации;
  Итог_общий_Уменьшение_прочее                         := Итог_общий_Уменьшение_прочее + Итог_группы_Уменьшение_прочее;

End.
 БИтого по группе @@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&&&&& Б
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.}
.{ CheckEnter ItogHigherNalGr1
.}
.{ CheckEnter ItogMarkedNalGr1
.}
.}
.Begin
  Итог_общий_бал_стоим_на_конец := Итог_общий_бал_стоим_на_начало + Итог_общий_увеличение_бал_стоим - Итог_общий_уменьшение_бал_стоим;
End.
 БИтого                                      &&&&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&& &&&&&&&&&&&&&& Б
 Ш
.endform


!=============================================================================
.linkform 'Kaz1' prototype is 'NalGrBal'
!=============================================================================
.NameInList 'Изменение балансовой стоимости'
.group 'Kaz'
.defo landscape
.P 58
.Var
  Строка_увеличение_бал_стоим                          : double
  Строка_уменьшение_бал_стоим                          : double

  Итог_группы_увеличение_бал_стоим                     : double
  Итог_группы_уменьшение_бал_стоим                     : double
  Итог_группы_бал_стоим_на_конец                       : double

  Итог_группировки_увеличение_бал_стоим                : double
  Итог_группировки_уменьшение_бал_стоим                : double
  Итог_группировки_бал_стоим_на_конец                  : double

  Итог_общий_бал_стоим_на_начало                       : double
  Итог_общий_увеличение_бал_стоим                      : double
  Итог_общий_уменьшение_бал_стоим                      : double
  Итог_общий_бал_стоим_на_конец                        : double

  Итог_группы_Расходы_на_приобретение                  : double
  Итог_группы_Расходы_на_изготовление                  : double
  Итог_группы_Увеличение_прочее                        : double
  Итог_группы_Сумма_ремонта                            : double
  Итог_группы_Стоимость_реализованных_индивидуальных   : double
  Итог_группы_Стоимость_реализованных_групповых        : double
  Итог_группы_Стоимость_ликвидированных_индивидуальных : double
  Итог_группы_Стоимость_ликвидированных_групповых      : double
  Итог_группы_Сумма_аморт_меньше_мин_бал_стоим         : double
  Итог_группы_Сумма_амортизации                        : double
  Итог_группы_Уменьшение_прочее                        : double

  Итог_общий_Расходы_на_приобретение                   : double
  Итог_общий_Расходы_на_изготовление                   : double
  Итог_общий_Увеличение_прочее                         : double
  Итог_общий_Сумма_ремонта                             : double
  Итог_общий_увеличение_за_счет_ремонта                : double
  Итог_общий_Стоимость_реализованных_индивидуальных    : double
  Итог_общий_Стоимость_реализованных_групповых         : double
  Итог_общий_Стоимость_ликвидированных_индивидуальных  : double
  Итог_общий_Стоимость_ликвидированных_групповых       : double
  Итог_общий_Сумма_аморт_меньше_мин_бал_стоим          : double
  Итог_общий_Сумма_амортизации                         : double
  Итог_общий_Уменьшение_прочее                         : double

  Итог_ИК_Расходы_на_приобретение                      : double
  Итог_ИК_Расходы_на_изготовление                      : double
  Итог_ИК_Увеличение_прочее                            : double
  Итог_ИК_Сумма_ремонта                                : double
  Итог_ИК_увеличение_бал_стоим                         : double
  Итог_ИК_Стоимость_реализованных_индивидуальных       : double
  Итог_ИК_Стоимость_реализованных_групповых            : double
  Итог_ИК_Стоимость_ликвидированных_индивидуальных     : double
  Итог_ИК_Стоимость_ликвидированных_групповых          : double
  Итог_ИК_Сумма_аморт_меньше_мин_бал_стоим             : double
  Итог_ИК_Сумма_амортизации                            : double
  Итог_ИК_Уменьшение_прочее                            : double
  Итог_ИК_уменьшение_бал_стоим                         : double
  Итог_ИК_бал_стоим_на_конец                           : double

.EndVar
.Begin
  Итог_общий_бал_стоим_на_начало                       := 0;
  Итог_общий_увеличение_бал_стоим                      := 0;
  Итог_общий_уменьшение_бал_стоим                      := 0;
  Итог_общий_бал_стоим_на_конец                        := 0;

  Итог_общий_Расходы_на_приобретение                   := 0;
  Итог_общий_Расходы_на_изготовление                   := 0;
  Итог_общий_Увеличение_прочее                         := 0;
  Итог_общий_Сумма_ремонта                             := 0;
  Итог_общий_увеличение_за_счет_ремонта                := 0;
  Итог_общий_Стоимость_реализованных_индивидуальных    := 0;
  Итог_общий_Стоимость_реализованных_групповых         := 0;
  Итог_общий_Стоимость_ликвидированных_индивидуальных  := 0;
  Итог_общий_Стоимость_ликвидированных_групповых       := 0;
  Итог_общий_Сумма_аморт_меньше_мин_бал_стоим          := 0;
  Итог_общий_Сумма_амортизации                         := 0;
  Итог_общий_Уменьшение_прочее                         := 0;
End.

.create view vKatOs
as select *
from SpMoveOs, KatOs
where
((
  comp(nRec_SpMoveOs) == SpMoveOs.nRec and
  SpMoveOs.cKatOs     == KatOs.nRec
));
.fields
  Период
  Начало_следующего_периода
  Начало_периода

!GruppaHigherNalGr1
  Имя_группировки_заголовок

!GruppaNalGr1
  Имя_группы_заголовок

!KatOsNalGr1
  Инвентарный_номер
  Наименование_ИК

!NameNalGr1
  if (comp(nRec_SpMoveOs) <> comp(0), vKatOs.KatOs.InNum, '')
  if (comp(nRec_SpMoveOs) <> comp(0), vKatOs.KatOs.NameOs, '')
  Дата_операции
  if (Расходы_на_приобретение<>0, Trim(DoubleToStr(Расходы_на_приобретение, ФорматСум)), '')
  if (Расходы_на_изготовление<>0, Trim(DoubleToStr(Расходы_на_изготовление, ФорматСум)), '')
  if (Увеличение_прочее<>0, Trim(DoubleToStr(Увеличение_прочее, ФорматСум)), '')
  if (Сумма_ремонта<>0, Trim(DoubleToStr(Сумма_ремонта, ФорматСум)), '')
  if (Строка_увеличение_бал_стоим<>0, Trim(DoubleToStr(Строка_увеличение_бал_стоим, ФорматСум)), '')
  if (Стоимость_реализованных_индивидуальных<>0, Trim(DoubleToStr(Стоимость_реализованных_индивидуальных, ФорматСум)), '')
  if (Стоимость_реализованных_групповых<>0, Trim(DoubleToStr(Стоимость_реализованных_групповых, ФорматСум)), '')
  if (Стоимость_ликвидированных_индивидуальных<>0, Trim(DoubleToStr(Стоимость_ликвидированных_индивидуальных, ФорматСум)), '')
  if (Стоимость_ликвидированных_групповых<>0, Trim(DoubleToStr(Стоимость_ликвидированных_групповых, ФорматСум)), '')
  if (Сумма_аморт_меньше_мин_бал_стоим<>0, Trim(DoubleToStr(Сумма_аморт_меньше_мин_бал_стоим, ФорматСум)), '')
  if (Сумма_амортизации<>0, Trim(DoubleToStr(Сумма_амортизации, ФорматСум)), '')
  if (Уменьшение_прочее<>0, Trim(DoubleToStr(Уменьшение_прочее, ФорматСум)), '')
  if (Строка_уменьшение_бал_стоим<>0, Trim(DoubleToStr(Строка_уменьшение_бал_стоим, ФорматСум)), '')

!KatOsItogNalGr1
  Инвентарный_номер
  if (Итог_ИК_бал_стоим_на_начало<>0, Trim(DoubleToStr(Итог_ИК_бал_стоим_на_начало, ФорматСум)), '')
  if (Итог_ИК_Расходы_на_приобретение<>0, Trim(DoubleToStr(Итог_ИК_Расходы_на_приобретение, ФорматСум)), '')
  if (Итог_ИК_Расходы_на_изготовление<>0, Trim(DoubleToStr(Итог_ИК_Расходы_на_изготовление, ФорматСум)), '')
  if (Итог_ИК_Увеличение_прочее<>0, Trim(DoubleToStr(Итог_ИК_Увеличение_прочее, ФорматСум)), '')
  if (Итог_ИК_Сумма_ремонта<>0, Trim(DoubleToStr(Итог_ИК_Сумма_ремонта, ФорматСум)), '')
  if (Итог_ИК_увеличение_бал_стоим<>0, Trim(DoubleToStr(Итог_ИК_увеличение_бал_стоим, ФорматСум)), '')
  if (Итог_ИК_Стоимость_реализованных_индивидуальных<>0, Trim(DoubleToStr(Итог_ИК_Стоимость_реализованных_индивидуальных, ФорматСум)), '')
  if (Итог_ИК_Стоимость_реализованных_групповых<>0, Trim(DoubleToStr(Итог_ИК_Стоимость_реализованных_групповых, ФорматСум)), '')
  if (Итог_ИК_Стоимость_ликвидированных_индивидуальных<>0, Trim(DoubleToStr(Итог_ИК_Стоимость_ликвидированных_индивидуальных, ФорматСум)), '')
  if (Итог_ИК_Стоимость_ликвидированных_групповых<>0, Trim(DoubleToStr(Итог_ИК_Стоимость_ликвидированных_групповых, ФорматСум)), '')
  if (Итог_ИК_Сумма_аморт_меньше_мин_бал_стоим<>0, Trim(DoubleToStr(Итог_ИК_Сумма_аморт_меньше_мин_бал_стоим, ФорматСум)), '')
  if (Итог_ИК_Сумма_амортизации<>0, Trim(DoubleToStr(Итог_ИК_Сумма_амортизации, ФорматСум)), '')
  if (Итог_ИК_Уменьшение_прочее<>0, Trim(DoubleToStr(Итог_ИК_Уменьшение_прочее, ФорматСум)), '')
  if (Итог_ИК_уменьшение_бал_стоим<>0, Trim(DoubleToStr(Итог_ИК_уменьшение_бал_стоим, ФорматСум)), '')
  if (Итог_ИК_бал_стоим_на_конец<>0, Trim(DoubleToStr(Итог_ИК_бал_стоим_на_конец, ФорматСум)), '')

!ItogNalGr1
  Имя_группы_итоги
  if (Итог_группы_бал_стоим_на_начало<>0, Trim(DoubleToStr(Итог_группы_бал_стоим_на_начало, ФорматСум)), '')
  if (Итог_группы_Расходы_на_приобретение<>0, Trim(DoubleToStr(Итог_группы_Расходы_на_приобретение, ФорматСум)), '')
  if (Итог_группы_Расходы_на_изготовление<>0, Trim(DoubleToStr(Итог_группы_Расходы_на_изготовление, ФорматСум)), '')
  if (Итог_группы_Увеличение_прочее<>0, Trim(DoubleToStr(Итог_группы_Увеличение_прочее, ФорматСум)), '')
  if (Итог_группы_Сумма_ремонта<>0, Trim(DoubleToStr(Итог_группы_Сумма_ремонта, ФорматСум)), '')
  if (Итог_группы_увеличение_за_счет_ремонта<>0, Trim(DoubleToStr(Итог_группы_увеличение_за_счет_ремонта, ФорматСум)), '')
  if (Итог_группы_увеличение_бал_стоим<>0, Trim(DoubleToStr(Итог_группы_увеличение_бал_стоим, ФорматСум)), '')
  if (Итог_группы_Стоимость_реализованных_индивидуальных<>0, Trim(DoubleToStr(Итог_группы_Стоимость_реализованных_индивидуальных, ФорматСум)), '')
  if (Итог_группы_Стоимость_реализованных_групповых<>0, Trim(DoubleToStr(Итог_группы_Стоимость_реализованных_групповых, ФорматСум)), '')
  if (Итог_группы_Стоимость_ликвидированных_индивидуальных<>0, Trim(DoubleToStr(Итог_группы_Стоимость_ликвидированных_индивидуальных, ФорматСум)), '')
  if (Итог_группы_Стоимость_ликвидированных_групповых<>0, Trim(DoubleToStr(Итог_группы_Стоимость_ликвидированных_групповых, ФорматСум)), '')
  if (Итог_группы_Сумма_аморт_меньше_мин_бал_стоим<>0, Trim(DoubleToStr(Итог_группы_Сумма_аморт_меньше_мин_бал_стоим, ФорматСум)), '')
  if (Итог_группы_Сумма_амортизации<>0, Trim(DoubleToStr(Итог_группы_Сумма_амортизации, ФорматСум)), '')
  if (Итог_группы_Уменьшение_прочее<>0, Trim(DoubleToStr(Итог_группы_Уменьшение_прочее, ФорматСум)), '')
  if (Итог_группы_уменьшение_бал_стоим<>0, Trim(DoubleToStr(Итог_группы_уменьшение_бал_стоим, ФорматСум)), '')
  if (Итог_группы_бал_стоим_на_конец<>0, Trim(DoubleToStr(Итог_группы_бал_стоим_на_конец, ФорматСум)), '')

!ItogHigherNalGr1
  Имя_группировки_итоги
  if (Итог_группировки_бал_стоим_на_начало<>0, Trim(DoubleToStr(Итог_группировки_бал_стоим_на_начало, ФорматСум)), '')
  if (Итог_группировки_Расходы_на_приобретение<>0, Trim(DoubleToStr(Итог_группировки_Расходы_на_приобретение, ФорматСум)), '')
  if (Итог_группировки_Расходы_на_изготовление<>0, Trim(DoubleToStr(Итог_группировки_Расходы_на_изготовление, ФорматСум)), '')
  if (Итог_группировки_Увеличение_прочее<>0, Trim(DoubleToStr(Итог_группировки_Увеличение_прочее, ФорматСум)), '')
  if (Итог_группировки_Сумма_ремонта<>0, Trim(DoubleToStr(Итог_группировки_Сумма_ремонта, ФорматСум)), '')
  if (Итог_группировки_увеличение_за_счет_ремонта<>0, Trim(DoubleToStr(Итог_группировки_увеличение_за_счет_ремонта, ФорматСум)), '')
  if (Итог_группировки_увеличение_бал_стоим<>0, Trim(DoubleToStr(Итог_группировки_увеличение_бал_стоим, ФорматСум)), '')
  if (Итог_группировки_Стоимость_реализованных_индивидуальных<>0, Trim(DoubleToStr(Итог_группировки_Стоимость_реализованных_индивидуальных, ФорматСум)), '')
  if (Итог_группировки_Стоимость_реализованных_групповых<>0, Trim(DoubleToStr(Итог_группировки_Стоимость_реализованных_групповых, ФорматСум)), '')
  if (Итог_группировки_Стоимость_ликвидированных_индивидуальных<>0, Trim(DoubleToStr(Итог_группировки_Стоимость_ликвидированных_индивидуальных, ФорматСум)), '')
  if (Итог_группировки_Стоимость_ликвидированных_групповых<>0, Trim(DoubleToStr(Итог_группировки_Стоимость_ликвидированных_групповых, ФорматСум)), '')
  if (Итог_группировки_Сумма_аморт_меньше_мин_бал_стоим<>0, Trim(DoubleToStr(Итог_группировки_Сумма_аморт_меньше_мин_бал_стоим, ФорматСум)), '')
  if (Итог_группировки_Сумма_амортизации<>0, Trim(DoubleToStr(Итог_группировки_Сумма_амортизации, ФорматСум)), '')
  if (Итог_группировки_Уменьшение_прочее<>0, Trim(DoubleToStr(Итог_группировки_Уменьшение_прочее, ФорматСум)), '')
  if (Итог_группировки_уменьшение_бал_стоим<>0, Trim(DoubleToStr(Итог_группировки_уменьшение_бал_стоим, ФорматСум)), '')
  if (Итог_группировки_бал_стоим_на_конец<>0, Trim(DoubleToStr(Итог_группировки_бал_стоим_на_конец, ФорматСум)), '')

  if (Итог_общий_бал_стоим_на_начало<>0, Trim(DoubleToStr(Итог_общий_бал_стоим_на_начало, ФорматСум)), '')
  if (Итог_общий_Расходы_на_приобретение<>0, Trim(DoubleToStr(Итог_общий_Расходы_на_приобретение, ФорматСум)), '')
  if (Итог_общий_Расходы_на_изготовление<>0, Trim(DoubleToStr(Итог_общий_Расходы_на_изготовление, ФорматСум)), '')
  if (Итог_общий_Увеличение_прочее<>0, Trim(DoubleToStr(Итог_общий_Увеличение_прочее, ФорматСум)), '')
  if (Итог_общий_Сумма_ремонта<>0, Trim(DoubleToStr(Итог_общий_Сумма_ремонта, ФорматСум)), '')
  if (Итог_общий_увеличение_за_счет_ремонта<>0, Trim(DoubleToStr(Итог_общий_увеличение_за_счет_ремонта, ФорматСум)), '')
  if (Итог_общий_увеличение_бал_стоим<>0, Trim(DoubleToStr(Итог_общий_увеличение_бал_стоим, ФорматСум)), '')
  if (Итог_общий_Стоимость_реализованных_индивидуальных<>0, Trim(DoubleToStr(Итог_общий_Стоимость_реализованных_индивидуальных, ФорматСум)), '')
  if (Итог_общий_Стоимость_реализованных_групповых<>0, Trim(DoubleToStr(Итог_общий_Стоимость_реализованных_групповых, ФорматСум)), '')
  if (Итог_общий_Стоимость_ликвидированных_индивидуальных<>0, Trim(DoubleToStr(Итог_общий_Стоимость_ликвидированных_индивидуальных, ФорматСум)), '')
  if (Итог_общий_Стоимость_ликвидированных_групповых<>0, Trim(DoubleToStr(Итог_общий_Стоимость_ликвидированных_групповых, ФорматСум)), '')
  if (Итог_общий_Сумма_аморт_меньше_мин_бал_стоим<>0, Trim(DoubleToStr(Итог_общий_Сумма_аморт_меньше_мин_бал_стоим, ФорматСум)), '')
  if (Итог_общий_Сумма_амортизации<>0, Trim(DoubleToStr(Итог_общий_Сумма_амортизации, ФорматСум)), '')
  if (Итог_общий_Уменьшение_прочее<>0, Trim(DoubleToStr(Итог_общий_Уменьшение_прочее, ФорматСум)), '')
  if (Итог_общий_уменьшение_бал_стоим<>0, Trim(DoubleToStr(Итог_общий_уменьшение_бал_стоим, ФорматСум)), '')
  if (Итог_общий_бал_стоим_на_конец<>0, Trim(DoubleToStr(Итог_общий_бал_стоим_на_конец, ФорматСум)), '')

.endfields

            БИзменение балансовой стоимости основных фондов за ^ Б
 Ш
.{
.[h
────────────┬───────────────────┬──────────┬──────────┬─────────────────────────────────────────────────────────────────┬───────────────────────────────────────────────────────────────────────────────────────┬───────────────
 Инвентарный│  Наименование ОФ  │   Дата   │Балансовая│                 Увеличение балансовой стоимости                 │                            Уменьшение балансовой стоимости                            │ Балансовая
  номер ОФ  │                   │ операции │стоимость ├──────────┬──────────┬──────────┬──────────┬──────────┬──────────┼─────────────────────┬─────────────────────┬──────────┬──────────┬──────────┬──────────┤ стоимость
            │                   │          │ основных │Расходы на│Расходы на│  Прочее  │  Сумма   │Расходы на│ Итого на │      Стоимость      │Балансовая стоимость │  Сумма   │  Сумма   │  Прочее  │ Итого на │  основных
            │                   │          │  фондов  │приобрете-│самостоя- │          │ ремонта  │  ремонт, │увеличение│  реализованных ОФ   │в связи с ликвидацией│амортиза- │амортиза- │          │уменьшение│ фондов на
            │                   │          │    на    │   ние    │ тельное  │          │за период │ реконст- │балансовой├──────────┬──────────┤   основных фондов   │ции (мень-│   ции    │          │балансовой│ @@@@@@@@@@
            │                   │          │@@@@@@@@@@│ основных │изготовле-│          │          │ рукцию и │стоимости │По балан- │ По сумме ├──────────┬──────────┤ ше мин.  │          │          │стоимости │
            │                   │          │          │  фондов  │ние ОФ за │          │          │модерниза-│          │совой сто-│реализации│ групп с  │ групп с  │ баланс.  │          │          │          │
            │                   │          │          │          │счет всех │          │          │цию,увели-│          │имости гр.│   гр. с  │индивиду- │групповым │стоимости)│          │          │          │
            │                   │          │          │          │источников│          │          │ чивающие │          │с индиви- │групповым │  альным  │  учетом  │          │          │          │          │
            │                   │          │          │          │   фин.   │          │          │балансовую│          │ дуальным │  учетом  │  учетом  │          │          │          │          │          │
            │                   │          │          │          │          │          │          │стоимость │          │  учетом  │          │          │          │          │          │          │          │
────────────┴───────────────────┴──────────┴──────────┴──────────┴──────────┴──────────┴──────────┴──────────┴──────────┴──────────┴──────────┴──────────┴──────────┴──────────┴──────────┴──────────┴──────────┴───────────────
.]h
.{ CheckEnter UpperCommonItogNalGr1
.}
.{ CheckEnter GruppaHigherNalGr1
 Б^ Б

.}
.{ CheckEnter GruppaNalGr1
.Begin
  Итог_группы_увеличение_бал_стоим                     := 0;
  Итог_группы_уменьшение_бал_стоим                     := 0;
  Итог_группы_бал_стоим_на_конец                       := 0;

  Итог_группы_Расходы_на_приобретение                  := 0;
  Итог_группы_Расходы_на_изготовление                  := 0;
  Итог_группы_Увеличение_прочее                        := 0;
  Итог_группы_Сумма_ремонта                            := 0;
  Итог_группы_Стоимость_реализованных_индивидуальных   := 0;
  Итог_группы_Стоимость_реализованных_групповых        := 0;
  Итог_группы_Стоимость_ликвидированных_индивидуальных := 0;
  Итог_группы_Стоимость_ликвидированных_групповых      := 0;
  Итог_группы_Сумма_аморт_меньше_мин_бал_стоим         := 0;
  Итог_группы_Сумма_амортизации                        := 0;
  Итог_группы_Уменьшение_прочее                        := 0;
End.
 Б^ Б
.}
.{ CheckEnter KatOsNalGr1
.Begin
  Итог_ИК_Расходы_на_приобретение                  := 0;
  Итог_ИК_Расходы_на_изготовление                  := 0;
  Итог_ИК_Увеличение_прочее                        := 0;
  Итог_ИК_Сумма_ремонта                            := 0;
  Итог_ИК_увеличение_бал_стоим                     := 0;
  Итог_ИК_Стоимость_реализованных_индивидуальных   := 0;
  Итог_ИК_Стоимость_реализованных_групповых        := 0;
  Итог_ИК_Стоимость_ликвидированных_индивидуальных := 0;
  Итог_ИК_Стоимость_ликвидированных_групповых      := 0;
  Итог_ИК_Сумма_аморт_меньше_мин_бал_стоим         := 0;
  Итог_ИК_Сумма_амортизации                        := 0;
  Итог_ИК_Уменьшение_прочее                        := 0;
  Итог_ИК_уменьшение_бал_стоим                     := 0;
  Итог_ИК_бал_стоим_на_конец                       := 0;
End.
.{?Internal; if (Вид_учета_группы = 0, false, true);
 Б@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.}
.{ CheckEnter NameNalGr1
.Begin
  Строка_увеличение_бал_стоим := Расходы_на_приобретение + Расходы_на_изготовление + Увеличение_прочее;
  Строка_уменьшение_бал_стоим := Стоимость_реализованных_индивидуальных + Стоимость_реализованных_групповых + Стоимость_ликвидированных_индивидуальных +
                                 Стоимость_ликвидированных_групповых + Сумма_амортизации + Уменьшение_прочее;

  Итог_группы_увеличение_бал_стоим := Итог_группы_увеличение_бал_стоим + Строка_увеличение_бал_стоим;
  Итог_группы_уменьшение_бал_стоим := Итог_группы_уменьшение_бал_стоим + Строка_уменьшение_бал_стоим;

  Итог_группы_Расходы_на_приобретение                  := Итог_группы_Расходы_на_приобретение + Расходы_на_приобретение;
  Итог_группы_Расходы_на_изготовление                  := Итог_группы_Расходы_на_изготовление + Расходы_на_изготовление;
  Итог_группы_Увеличение_прочее                        := Итог_группы_Увеличение_прочее + Увеличение_прочее;
  Итог_группы_Сумма_ремонта                            := Итог_группы_Сумма_ремонта + Сумма_ремонта;
  Итог_группы_Стоимость_реализованных_индивидуальных   := Итог_группы_Стоимость_реализованных_индивидуальных + Стоимость_реализованных_индивидуальных;
  Итог_группы_Стоимость_реализованных_групповых        := Итог_группы_Стоимость_реализованных_групповых + Стоимость_реализованных_групповых;
  Итог_группы_Стоимость_ликвидированных_индивидуальных := Итог_группы_Стоимость_ликвидированных_индивидуальных + Стоимость_ликвидированных_индивидуальных;
  Итог_группы_Стоимость_ликвидированных_групповых      := Итог_группы_Стоимость_ликвидированных_групповых + Стоимость_ликвидированных_групповых;
  Итог_группы_Сумма_аморт_меньше_мин_бал_стоим         := Итог_группы_Сумма_аморт_меньше_мин_бал_стоим + Сумма_аморт_меньше_мин_бал_стоим;
  Итог_группы_Сумма_амортизации                        := Итог_группы_Сумма_амортизации + Сумма_амортизации;
  Итог_группы_Уменьшение_прочее                        := Итог_группы_Уменьшение_прочее + Уменьшение_прочее;

  Итог_ИК_Расходы_на_приобретение                  := Итог_ИК_Расходы_на_приобретение                  + Расходы_на_приобретение;
  Итог_ИК_Расходы_на_изготовление                  := Итог_ИК_Расходы_на_изготовление                  + Расходы_на_изготовление;
  Итог_ИК_Увеличение_прочее                        := Итог_ИК_Увеличение_прочее                        + Увеличение_прочее;
  Итог_ИК_Сумма_ремонта                            := Итог_ИК_Сумма_ремонта                            + Сумма_ремонта;
  Итог_ИК_увеличение_бал_стоим                     := Итог_ИК_увеличение_бал_стоим                     + Строка_увеличение_бал_стоим;
  Итог_ИК_Стоимость_реализованных_индивидуальных   := Итог_ИК_Стоимость_реализованных_индивидуальных   + Стоимость_реализованных_индивидуальных;
  Итог_ИК_Стоимость_реализованных_групповых        := Итог_ИК_Стоимость_реализованных_групповых        + Стоимость_реализованных_групповых;
  Итог_ИК_Стоимость_ликвидированных_индивидуальных := Итог_ИК_Стоимость_ликвидированных_индивидуальных + Стоимость_ликвидированных_индивидуальных;
  Итог_ИК_Стоимость_ликвидированных_групповых      := Итог_ИК_Стоимость_ликвидированных_групповых      + Стоимость_ликвидированных_групповых;
  Итог_ИК_Сумма_аморт_меньше_мин_бал_стоим         := Итог_ИК_Сумма_аморт_меньше_мин_бал_стоим         + Сумма_аморт_меньше_мин_бал_стоим;
  Итог_ИК_Сумма_амортизации                        := Итог_ИК_Сумма_амортизации                        + Сумма_амортизации;
  Итог_ИК_Уменьшение_прочее                        := Итог_ИК_Уменьшение_прочее                        + Уменьшение_прочее;
  Итог_ИК_уменьшение_бал_стоим                     := Итог_ИК_уменьшение_бал_стоим                     + Строка_уменьшение_бал_стоим;

  if (vKatOs.GetFirst SpMoveOs <> tsOk) {};
  if (vKatOs.GetFirst KatOs <> tsOk) {};
End.
.{?Internal; if (Вид_учета_группы = 0, Печатать_групповые_операции, Печатать_индивидуальные_операции);
@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@ @@@@@@@@@@            &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&&            &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&&
.}
.}
.{ CheckEnter KatOsItogNalGr1
.Begin
  Итог_ИК_бал_стоим_на_конец := Итог_ИК_бал_стоим_на_начало + Итог_ИК_увеличение_бал_стоим - Итог_ИК_уменьшение_бал_стоим;
End.
.{?Internal; if (Вид_учета_группы = 0, false, true);
 БИтого по ИК @@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&&            &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&&&&&&& Б

.}
.}
.{ CheckEnter ItogNalGr1
.Begin
  Итог_группы_увеличение_бал_стоим := Итог_группы_увеличение_бал_стоим + Итог_группы_увеличение_за_счет_ремонта;

  Итог_группы_бал_стоим_на_конец := Итог_группы_бал_стоим_на_начало + Итог_группы_увеличение_бал_стоим - Итог_группы_уменьшение_бал_стоим;

  Итог_общий_бал_стоим_на_начало   := Итог_общий_бал_стоим_на_начало + Итог_группы_бал_стоим_на_начало;
  Итог_общий_увеличение_бал_стоим  := Итог_общий_увеличение_бал_стоим + Итог_группы_увеличение_бал_стоим;
  Итог_общий_уменьшение_бал_стоим  := Итог_общий_уменьшение_бал_стоим + Итог_группы_уменьшение_бал_стоим;

  Итог_общий_Расходы_на_приобретение                   := Итог_общий_Расходы_на_приобретение + Итог_группы_Расходы_на_приобретение;
  Итог_общий_Расходы_на_изготовление                   := Итог_общий_Расходы_на_изготовление + Итог_группы_Расходы_на_изготовление;
  Итог_общий_Увеличение_прочее                         := Итог_общий_Увеличение_прочее + Итог_группы_Увеличение_прочее;
  Итог_общий_Сумма_ремонта                             := Итог_общий_Сумма_ремонта + Итог_группы_Сумма_ремонта;
  Итог_общий_увеличение_за_счет_ремонта                := Итог_общий_увеличение_за_счет_ремонта + Итог_группы_увеличение_за_счет_ремонта;
  Итог_общий_Стоимость_реализованных_индивидуальных    := Итог_общий_Стоимость_реализованных_индивидуальных + Итог_группы_Стоимость_реализованных_индивидуальных;
  Итог_общий_Стоимость_реализованных_групповых         := Итог_общий_Стоимость_реализованных_групповых + Итог_группы_Стоимость_реализованных_групповых;
  Итог_общий_Стоимость_ликвидированных_индивидуальных  := Итог_общий_Стоимость_ликвидированных_индивидуальных + Итог_группы_Стоимость_ликвидированных_индивидуальных;
  Итог_общий_Стоимость_ликвидированных_групповых       := Итог_общий_Стоимость_ликвидированных_групповых + Итог_группы_Стоимость_ликвидированных_групповых;
  Итог_общий_Сумма_аморт_меньше_мин_бал_стоим          := Итог_общий_Сумма_аморт_меньше_мин_бал_стоим + Итог_группы_Сумма_аморт_меньше_мин_бал_стоим;
  Итог_общий_Сумма_амортизации                         := Итог_общий_Сумма_амортизации + Итог_группы_Сумма_амортизации;
  Итог_общий_Уменьшение_прочее                         := Итог_общий_Уменьшение_прочее + Итог_группы_Уменьшение_прочее;

End.
 БИтого по группе @@@@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&&&&&&& Б

.}
.{ CheckEnter ItogHigherNalGr1
.Begin
  Итог_группировки_увеличение_бал_стоим :=
                      Итог_группировки_увеличение_за_счет_ремонта +
                      Итог_группировки_Расходы_на_приобретение +
                      Итог_группировки_Расходы_на_изготовление +
                      Итог_группировки_Увеличение_прочее;
  Итог_группировки_уменьшение_бал_стоим :=
                      Итог_группировки_Стоимость_реализованных_индивидуальных +
                      Итог_группировки_Стоимость_реализованных_групповых +
                      Итог_группировки_Стоимость_ликвидированных_индивидуальных +
                      Итог_группировки_Стоимость_ликвидированных_групповых +
                      Итог_группировки_Сумма_амортизации +
                      Итог_группировки_Уменьшение_прочее;
  Итог_группировки_бал_стоим_на_конец :=
                      Итог_группировки_бал_стоим_на_начало +
                      Итог_группировки_увеличение_бал_стоим -
                      Итог_группировки_уменьшение_бал_стоим
End.
 БИтого по группе @@@@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&&&&&&& Б

.}
.{ CheckEnter ItogMarkedNalGr1
.}
.}
.Begin
  Итог_общий_бал_стоим_на_конец := Итог_общий_бал_стоим_на_начало + Итог_общий_увеличение_бал_стоим - Итог_общий_уменьшение_бал_стоим;
End.
 БИтого                            &&&&&&&&&&&&&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&& &&&&&&&&&&&&&&& Б
 Ш
.endform

!=============================================================================
.linkform 'Kaz2' prototype is 'NalGrBal'
!=============================================================================
.NameInList 'Дополнительная форма к строке 100.22.00'
.group 'Kaz'
.defo landscape
.P 58
.Var
  Итог_группы_Поступление                      : double
  Итог_группы_Выбытие                          : double
  Итог_группы_Баланс_на_конец                  : double
  Итог_группы_Сумма_амортизации                : double
  Итог_группы_Сумма_аморт_меньше_мин_бал_стоим : double
  Итог_группы_Баланс_на_конец_с_корректировкой : double
  Итог_группы_Увеличение_прочее                : double
  Итог_группы_Уменьшение_прочее                : double

  Итог_ИК_Поступление                      : double
  Итог_ИК_Выбытие                          : double
  Итог_ИК_Баланс_на_конец                  : double
  Итог_ИК_Сумма_амортизации                : double
  Итог_ИК_Сумма_аморт_меньше_мин_бал_стоим : double
  Итог_ИК_Баланс_на_конец_с_корректировкой : double
  Итог_ИК_Увеличение_прочее                : double
  Итог_ИК_Уменьшение_прочее                : double

  Итог_верхний_Поступление                      : double
  Итог_верхний_Выбытие                          : double
  Итог_верхний_Баланс_на_конец_с_корректировкой : double

.EndVar
.fields

!UpperCommonItogNalGr1
  if (Итог_верхний_бал_стоим_на_начало<>0, Trim(DoubleToStr(Итог_верхний_бал_стоим_на_начало, ФорматСум)), '')
  if (Итог_верхний_Поступление<>0, Trim(DoubleToStr(Итог_верхний_Поступление, ФорматСум)), '')
  if (Итог_верхний_Выбытие<>0, Trim(DoubleToStr(Итог_верхний_Выбытие, ФорматСум)), '')
  if (Итог_верхний_Баланс_на_конец<>0, Trim(DoubleToStr(Итог_верхний_Баланс_на_конец, ФорматСум)), '')
  if (Итог_верхний_Сумма_амортизации<>0, Trim(DoubleToStr(Итог_верхний_Сумма_амортизации, ФорматСум)), '')
  if (Итог_верхний_Сумма_ремонта_в_пределах_нормы<>0, Trim(DoubleToStr(Итог_верхний_Сумма_ремонта_в_пределах_нормы, ФорматСум)), '')
  if (Итог_верхний_увеличение_за_счет_ремонта<>0, Trim(DoubleToStr(Итог_верхний_увеличение_за_счет_ремонта, ФорматСум)), '')
  if (Итог_верхний_подлежащий_вычету_менее_100_МРП<>0, Trim(DoubleToStr(Итог_верхний_подлежащий_вычету_менее_100_МРП, ФорматСум)), '')
  if (Итог_верхний_подлежащий_вычету_при_выбытии<>0, Trim(DoubleToStr(Итог_верхний_подлежащий_вычету_при_выбытии, ФорматСум)), '')
  if (Итог_верхний_Баланс_на_конец_с_корректировкой<>0, Trim(DoubleToStr(Итог_верхний_Баланс_на_конец_с_корректировкой, ФорматСум)), '')

!GruppaHigherNalGr1

!GruppaNalGr1

!KatOsNalGr1

!NameNalGr1

!KatOsItogNalGr1
  Наименование_ИК
  Номер_вышестоящей_группы_заголовок
  if (Length(Номер_группы_заголовок) > 1, SubStr(Номер_группы_заголовок,2,Length(Номер_группы_заголовок)-1), Номер_группы_заголовок)
  if (Норма_амортизации_группы_заголовок<>0, Trim(DoubleToStr(Норма_амортизации_группы_заголовок, '666')), '')
  if (Итог_ИК_бал_стоим_на_начало<>0, Trim(DoubleToStr(Итог_ИК_бал_стоим_на_начало, ФорматСум)), '')
  if (Итог_ИК_Поступление<>0, Trim(DoubleToStr(Итог_ИК_Поступление, ФорматСум)), '')
  if (Итог_ИК_Выбытие<>0, Trim(DoubleToStr(Итог_ИК_Выбытие, ФорматСум)), '')
  if (Итог_ИК_Баланс_на_конец<>0, Trim(DoubleToStr(Итог_ИК_Баланс_на_конец, ФорматСум)), '')
  if (Итог_ИК_Сумма_амортизации<>0, Trim(DoubleToStr(Итог_ИК_Сумма_амортизации, ФорматСум)), '')
  if (Итог_ИК_Сумма_ремонта_в_пределах_нормы<>0, Trim(DoubleToStr(Итог_ИК_Сумма_ремонта_в_пределах_нормы, ФорматСум)), '')
  if (Итог_ИК_увеличение_за_счет_ремонта<>0, Trim(DoubleToStr(Итог_ИК_увеличение_за_счет_ремонта, ФорматСум)), '')
  if (Итог_ИК_Сумма_аморт_меньше_мин_бал_стоим<>0, Trim(DoubleToStr(Итог_ИК_Сумма_аморт_меньше_мин_бал_стоим, ФорматСум)), '')
  if (Итог_ИК_Баланс_на_конец_с_корректировкой<>0, Trim(DoubleToStr(Итог_ИК_Баланс_на_конец_с_корректировкой, ФорматСум)), '')

!ItogNalGr1
  Имя_группы_заголовок
  Номер_вышестоящей_группы_заголовок
  if (Length(Номер_группы_заголовок) > 1, SubStr(Номер_группы_заголовок,2,Length(Номер_группы_заголовок)-1), Номер_группы_заголовок)
  if (Норма_амортизации_группы_заголовок<>0, Trim(DoubleToStr(Норма_амортизации_группы_заголовок, '666')), '')
  if (Итог_группы_бал_стоим_на_начало<>0, Trim(DoubleToStr(Итог_группы_бал_стоим_на_начало, ФорматСум)), '')
  if (Итог_группы_Поступление<>0, Trim(DoubleToStr(Итог_группы_Поступление, ФорматСум)), '')
  if (Итог_группы_Выбытие<>0, Trim(DoubleToStr(Итог_группы_Выбытие, ФорматСум)), '')
  if (Итог_группы_Баланс_на_конец<>0, Trim(DoubleToStr(Итог_группы_Баланс_на_конец, ФорматСум)), '')
  if (Итог_группы_Сумма_амортизации<>0, Trim(DoubleToStr(Итог_группы_Сумма_амортизации, ФорматСум)), '')
  if (Итог_группы_Сумма_ремонта_в_пределах_нормы<>0, Trim(DoubleToStr(Итог_группы_Сумма_ремонта_в_пределах_нормы, ФорматСум)), '')
  if (Итог_группы_увеличение_за_счет_ремонта<>0, Trim(DoubleToStr(Итог_группы_увеличение_за_счет_ремонта, ФорматСум)), '')
  if (Итог_группы_подлежащий_вычету_менее_100_МРП<>0, Trim(DoubleToStr(Итог_группы_подлежащий_вычету_менее_100_МРП, ФорматСум)), '')
  if (Итог_группы_подлежащий_вычету_при_выбытии<>0, Trim(DoubleToStr(Итог_группы_подлежащий_вычету_при_выбытии, ФорматСум)), '')
  if (Итог_группы_Баланс_на_конец_с_корректировкой<>0, Trim(DoubleToStr(Итог_группы_Баланс_на_конец_с_корректировкой, ФорматСум)), '')

!ItogHigherNalGr1

.endfields

                            ДОПОЛНИТЕЛЬНАЯ ФОРМА К СТРОКЕ 100.22.00  ПРИЛОЖЕНИЯ 100.22
                                 АМОРТИЗАЦИОННЫЕ ОТЧИСЛЕНИЯ, РАСХОДЫ НА РЕМОНТ
                                   И ДРУГИЕ ВЫЧЕТЫ ПО ФИКСИРОВАННЫМ АКТИВАМ
 Ш
.{
.[h
─┬───┬─┬─────────────────────┬─┬──────┬─┬──────┬─┬──────────┬─┬──────────┬─┬────────────┬─┬────────────┬─┬────────────┬─┬────────────┬─┬────────────┬─┬────────────┬─┬────────────┬─┬────────────┬─┬────────────┬─┬─────────────
 │ N │ │    Наименование     │ │  N   │ │  N   │ │Предельная│ │Применяе- │ │Стоимостный │ │ Стоимость  │ │ Стоимость  │ │Стоимостный │ │Амортизаци- │ │Фактические │ │Фактические │ │Стоимостный │ │Стоимостный │ │Стоимостный
 │   │ │                     │ │группы│ │ под- │ │  норма   │ │мая норма │ │   баланс   │ │поступивших │ │  выбывших  │ │   баланс   │ │   онные    │ │  расходы   │ │  расходы   │ │   баланс   │ │   баланс   │ │   баланс
 │   │ │                     │ │      │ │группы│ │амортиза- │ │амортиза- │ │ подгруппы  │ │  основных  │ │  основных  │ │ подгруппы  │ │ отчисления │ │ на ремонт  │ │ на ремонт  │ │ подгруппы, │ │ подгруппы, │ │ подгруппы
 │   │ │                     │ │      │ │      │ │ ционных  │ │ ционных  │ │ на начало  │ │  средств   │ │  средств   │ │ на конец   │ │            │ │  основных  │ │  основных  │ │ подлежащий │ │ подлежащий │ │  на конец
 │   │ │                     │ │      │ │      │ │отчислений│ │отчислений│ │ налогового │ │ подгруппы  │ │ подгруппы  │ │ налогового │ │            │ │  средств,  │ │  средств,  │ │ вычету при │ │ вычету при │ │ налогового
 │   │ │                     │ │      │ │      │ │          │ │   (%)    │ │  периода   │ │            │ │            │ │  периода   │ │            │ │ относимые  │ │ относимые  │ │  величине  │ │  выбытии   │ │ периода с
 │   │ │                     │ │      │ │      │ │          │ │          │ │            │ │            │ │            │ │            │ │            │ │ на вычеты  │ │ на увели-  │ │ менее 100  │ │ всех фик-  │ │   учетом
 │   │ │                     │ │      │ │      │ │          │ │          │ │            │ │            │ │            │ │            │ │            │ │ в пределах │ │   чение    │ │    МРП     │ │ сированных │ │корректировок
 │   │ │                     │ │      │ │      │ │          │ │          │ │            │ │            │ │            │ │            │ │            │ │ 15% стои-  │ │стоимостного│ │            │ │  активов   │ │
 │   │ │                     │ │      │ │      │ │          │ │          │ │            │ │            │ │            │ │            │ │            │ │  мостного  │ │  баланса   │ │            │ │ подгруппы  │ │
 │   │ │                     │ │      │ │      │ │          │ │          │ │            │ │            │ │            │ │            │ │            │ │  баланса   │ │   группы   │ │            │ │            │ │
A│   │B│                     │C│      │D│      │E│          │F│          │G│            │H│            │I│            │J│  (G+H-I)   │K│   (J*F)    │L│   группы   │M│            │N│            │O│            │P│(J-K+M-N-O)
─┴───┴─┴─────────────────────┴─┴──────┴─┴──────┴─┴──────────┴─┴──────────┴─┴────────────┴─┴────────────┴─┴────────────┴─┴────────────┴─┴────────────┴─┴────────────┴─┴────────────┴─┴────────────┴─┴────────────┴─┴─────────────
.]h
.{ CheckEnter UpperCommonItogNalGr1
.Begin
  Итог_верхний_Поступление := Итог_верхний_Расходы_на_приобретение
                            + Итог_верхний_Расходы_на_изготовление
                            + Итог_верхний_Увеличение_прочее;

  Итог_верхний_Выбытие := Итог_верхний_Стоимость_реализованных_индивидуальных
                        + Итог_верхний_Стоимость_реализованных_групповых
                        + Итог_верхний_Стоимость_ликвидированных_индивидуальных
                        + Итог_верхний_Стоимость_ликвидированных_групповых
                        + Итог_верхний_Уменьшение_прочее;

  Итог_верхний_Баланс_на_конец := Итог_верхний_Баланс_на_конец
                                + Итог_верхний_Увеличение_прочее
                                - Итог_верхний_Уменьшение_прочее;

  Итог_верхний_Баланс_на_конец_с_корректировкой :=
                                   Итог_верхний_Баланс_на_конец
                                 - Итог_верхний_Сумма_амортизации
                                 + Итог_верхний_увеличение_за_счет_ремонта
                                 - Итог_верхний_Сумма_аморт_меньше_мин_бал_стоим
                                 - Итог_верхний_подлежащий_вычету_менее_100_МРП
                                 - Итог_верхний_подлежащий_вычету_при_выбытии;

  if (Итог_верхний_Баланс_на_конец_с_корректировкой < 0)
    Итог_верхний_Баланс_на_конец_с_корректировкой := 0;
End.
 БИТОГО                                                              &&&&&&&&&&&&&&&&&&&&&   &&&&&&&&&&&&   &&&&&&&&&&&&   &&&&&&&&&&&&   &&&&&&&&&&&&   &&&&&&&&&&&&   &&&&&&&&&&&&   &&&&&&&&&&&&   &&&&&&&&&&&&   &&&&&&&&&&&& Б
.}
.{ CheckEnter GruppaHigherNalGr1
.}
.{ CheckEnter GruppaNalGr1
.Begin
  Итог_группы_Поступление                      := 0;
  Итог_группы_Выбытие                          := 0;
  Итог_группы_Сумма_амортизации                := 0;
  Итог_группы_Сумма_аморт_меньше_мин_бал_стоим := 0;
  Итог_группы_Увеличение_прочее                := 0;
  Итог_группы_Уменьшение_прочее                := 0;
End.
.}
.{ CheckEnter KatOsNalGr1
.Begin
  Итог_ИК_Поступление                      := 0;
  Итог_ИК_Выбытие                          := 0;
  Итог_ИК_Баланс_на_конец                  := 0;
  Итог_ИК_Сумма_амортизации                := 0;
  Итог_ИК_Сумма_аморт_меньше_мин_бал_стоим := 0;
  Итог_ИК_Баланс_на_конец_с_корректировкой := 0;
  Итог_ИК_Увеличение_прочее                := 0;
  Итог_ИК_Уменьшение_прочее                := 0;
End.
.}
.{ CheckEnter NameNalGr1
.Begin
  Итог_группы_Поступление := Итог_группы_Поступление +
                             Расходы_на_приобретение +
                             Расходы_на_изготовление +
                             Увеличение_прочее;

  Итог_группы_Выбытие := Итог_группы_Выбытие +
                         Стоимость_реализованных_индивидуальных +
                         Стоимость_реализованных_групповых +
                         Стоимость_ликвидированных_индивидуальных +
                         Стоимость_ликвидированных_групповых +
                         Уменьшение_прочее;

  Итог_группы_Сумма_амортизации := Итог_группы_Сумма_амортизации +
                                   Сумма_амортизации;

  Итог_группы_Сумма_аморт_меньше_мин_бал_стоим := Итог_группы_Сумма_аморт_меньше_мин_бал_стоим +
                                                  Сумма_аморт_меньше_мин_бал_стоим;

  Итог_группы_Увеличение_прочее := Итог_группы_Увеличение_прочее + Увеличение_прочее;
  Итог_группы_Уменьшение_прочее := Итог_группы_Уменьшение_прочее + Уменьшение_прочее;

  Итог_ИК_Поступление                      := Итог_ИК_Поступление +
                                              Расходы_на_приобретение +
                                              Расходы_на_изготовление;

  Итог_ИК_Выбытие                          := Итог_ИК_Выбытие +
                                              Стоимость_реализованных_индивидуальных +
                                              Стоимость_реализованных_групповых +
                                              Стоимость_ликвидированных_индивидуальных +
                                              Стоимость_ликвидированных_групповых;

  Итог_ИК_Сумма_амортизации                := Итог_ИК_Сумма_амортизации +
                                              Сумма_амортизации;

  Итог_ИК_Сумма_аморт_меньше_мин_бал_стоим := Итог_ИК_Сумма_аморт_меньше_мин_бал_стоим +
                                              Сумма_аморт_меньше_мин_бал_стоим;

  Итог_ИК_Увеличение_прочее := Итог_ИК_Увеличение_прочее + Увеличение_прочее;
  Итог_ИК_Уменьшение_прочее := Итог_ИК_Уменьшение_прочее + Уменьшение_прочее;
End.
.}
.{ CheckEnter KatOsItogNalGr1
.Begin
  Итог_ИК_Поступление := Итог_ИК_Поступление + Итог_ИК_Увеличение_прочее;
  Итог_ИК_Выбытие     := Итог_ИК_Выбытие     + Итог_ИК_Уменьшение_прочее;

  Итог_ИК_Баланс_на_конец := Итог_ИК_бал_стоим_на_начало +
                             Итог_ИК_Поступление -
                             Итог_ИК_Выбытие;

  Итог_ИК_Баланс_на_конец_с_корректировкой := Итог_ИК_Баланс_на_конец -
                                              Итог_ИК_Сумма_амортизации -
                                              Итог_ИК_Сумма_аморт_меньше_мин_бал_стоим +
                                              Итог_ИК_увеличение_за_счет_ремонта;

  if (Итог_ИК_Баланс_на_конец_с_корректировкой < 0)
    Итог_ИК_Баланс_на_конец_с_корректировкой := 0;
End.
.{?Internal; if (Вид_учета_группы = 0, false, true);
      @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@   @@@@@@                    &&&      &&&&&&&&&&&&   &&&&&&&&&&&&   &&&&&&&&&&&&   &&&&&&&&&&&&   &&&&&&&&&&&&   &&&&&&&&&&&&   &&&&&&&&&&&&   &&&&&&&&&&&&                  &&&&&&&&&&&&
.}
.}
.{ CheckEnter ItogNalGr1
.Begin
  Итог_группы_Баланс_на_конец := Итог_группы_бал_стоим_на_начало +
                                 Итог_группы_Поступление -
                                 Итог_группы_Выбытие;

  Итог_группы_Баланс_на_конец_с_корректировкой := Итог_группы_Баланс_на_конец -
                                                  Итог_группы_Сумма_амортизации +
                                                  Итог_группы_увеличение_за_счет_ремонта -
                                                  Итог_группы_Сумма_аморт_меньше_мин_бал_стоим -
                                                  Итог_группы_подлежащий_вычету_менее_100_МРП -
                                                  Итог_группы_подлежащий_вычету_при_выбытии;

  if (Итог_группы_Баланс_на_конец_с_корректировкой < 0)
    Итог_группы_Баланс_на_конец_с_корректировкой := 0;
End.
.{?Internal; if (Вид_учета_группы <> 0, false, true);
      @@@@@@@@@@@@@@@@@@@@@     @@@@@@   @@@@@@                    &&&      &&&&&&&&&&&&   &&&&&&&&&&&&   &&&&&&&&&&&&   &&&&&&&&&&&&   &&&&&&&&&&&&   &&&&&&&&&&&&   &&&&&&&&&&&&   &&&&&&&&&&&&   &&&&&&&&&&&&   &&&&&&&&&&&&
.}
.}
.{ CheckEnter ItogHigherNalGr1
.}
.{ CheckEnter ItogMarkedNalGr1
.}
.}
 Ш
.endform
