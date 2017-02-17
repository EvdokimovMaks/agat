//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.10 - Спецоснастка
// Печать акта на пересортицу
//------------------------------------------------------------------------------

#doc
Формирование различных печатных форм из документов спецоснастки следующих
типов: акт на пересортицу.<br>
#end
.set name = 'Sort_MBP'
.NameInList 'Базовая форма'
.hide
.{ SortDoc CheckEnter
.fields
  DocNRec     : comp
  DocNom      : string
  DocDate     : date
  DocDesGr    : string
  DocDescr    : string
  FromPodr    : string
  FromMol     : string
  FromMolDlg  : string
  ToPodr      : string
  ToMol       : string
  ToMolDlg    : string
  cSigners    : comp
.endfields
  NRec документа         - ^
  Номер документа        - ^
  Дата документа         - ^
  Рабочая группа         - ^
  Дескриптор             - ^
  Подразделение (откуда) - ^
  МОЛ (откуда)           - ^
  Должность МОЛ (откуда) - ^
  Подразделение (куда)   - ^
  МОЛ (куда)             - ^
  Должность МОЛ (куда)   - ^
  Группа подписантов     - ^
.{ SortSpDoc CheckEnter
.fields
  InNRec    : comp
  pMBPName  : string
  pMBPNum   : string
  pMBPEd    : string
  pMBPEdKod : string
  pSklNum   : string
  pInvNum   : string
  pPasNum   : string
  pKol      : double
  pPrice    : double
  pStoim    : double
  pPerc     : double

  OutNRec   : comp
  rMBPName  : string
  rMBPNum   : string
  rMBPEd    : string
  rMBPEdKod : string
  rSklNum   : string
  rInvNum   : string
  rPasNum   : string
  rKol      : double
  rPrice    : double
  rStoim    : double
  rPerc     : double
.endfields
--------- Добавляемый предмет ---------
  NRec прихода      - ^
  Наименование      - ^
  Номенклатурный №  - ^
  Единица измерения - ^ ^
  Складской номер   - ^
  Инвентарный номер - ^
  Номер паспорта    - ^
  Количество        - ^
  Цена              - ^
  Стоимость         - ^
  Процент износа    - ^
--------- Списываемый предмет ---------
  NRec расхода      - ^
  Наименование      - ^
  Номенклатурный №  - ^
  Единица измерения - ^ ^
  Складской номер   - ^
  Инвентарный номер - ^
  Номер паспорта    - ^
  Количество        - ^
  Цена              - ^
  Стоимость         - ^
  Процент износа    - ^
.}
.}
.endform

!======================================================================================================================

.linkform 'Sort_MBP_01' prototype is Sort_MBP
.NameInList 'Акт на пересортицу'
.declare
#include FeeSigners.vih
.endDeclare
.var
  iFeeSigners : FeeSigners;
  DocNpp, i, lSign : longint;
  FIOs, Post : array [1..2] of string;
  Npp : longint;
  ItogSum : double;
.endvar
.begin
  DocNpp := 0;
  lSign := 0;

  for (i := 1; i <= Count(FIOs); i++)
  {
    FIOs[i] := '';
    Post[i] := '';
  }

  iFeeSigners.InitFeeSigners(cgReport_MBP);
  iFeeSigners.FindFeeSignersByNRec(cSigners);

  if (iFeeSigners.FeeSignersIsValid)
    if (iFeeSigners.GetSignerFirst)
      do
      {
        lSign++;
        FIOs[lSign] := iFeeSigners.GetSignerFIO(1);
        Post[lSign] := if (iFeeSigners.GetSignerRole <> '', iFeeSigners.GetSignerRole, iFeeSigners.GetSignerPosition(1));
      }
      while (iFeeSigners.GetSignerNext);
end.
.fields
  CommonFormHeader
  DocNom
  DateToStr(DocDate,'DD/MM/YYYY')
  ToPodr
  ToMol + if (ToMolDlg <> '', ' (' + ToMolDlg + ')', '')
  FromPodr
  FromMol + if (FromMolDlg <> '', ' (' + FromMolDlg + ')', '')
.endfields
.{ SortDoc CheckEnter
.begin
  DocNpp++;
  Npp := 0;
  ItogSum := 0;
end.
.{?Internal;(DocNpp > 1);

.}
 Р ^

                                                      БАКТ НА ПЕРЕСОРТИЦУ Б
                                                    Б№ ^ от ^ Б

  Куда   : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  Откуда : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{ SortSpDoc CheckEnter
.begin
  Npp := Npp + 1;
  ItogSum := ItogSum + (pStoim - rStoim);
end.
.[h
┌───┬───┬──────────────┬─────────────────────────────────────┬───────────┬──────────────┬──────────────┬──────┬──────────────┐
│ № │Тип│Номенклатурный│            Наименование             │  Единица  │  Количество  │     Цена     │  %   │  Стоимость   │
│п/п│   │    номер     │                                     │ измерения │              │              │износа│              │
├───┼───┼──────────────┼─────────────────────────────────────┼───────────┼──────────────┼──────────────┼──────┼──────────────┤
.]h
.fields
  Npp
  'Пр.'
  pMBPNum
  pMBPName
  pMBPEd
  pKol
  pPrice
  pPerc
  pStoim
  'Сп.'
  rMBPNum
  rMBPName
  rMBPEd
  rKol
  rPrice
  rPerc
  rStoim
.endfields
│&&&│@@@│@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@│&'#&&&&&&&.&&&│&'#&&&&&&&&.&&│&#&.&&│&'#&&&&&&&&.&&│
│   │@@@│@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@│&'#&&&&&&&.&&&│&'#&&&&&&&&.&&│&#&.&&│&'#&&&&&&&&.&&│
.[f
└───┴───┴──────────────┴─────────────────────────────────────┴───────────┴──────────────┴──────────────┴──────┴──────────────┘
.]f
.}
.fields
  ItogSum
.endfields
 Б  Итого:                                                                                                       &'#&&&&&&&&.&& Б

.begin
  i := 0;
end.
.{While (i < lSign)
.begin
  i++;
end.
.fields
  Post[i] + ':'
  FIOs[i]
.endfields
@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.} Р
.}
.endform
