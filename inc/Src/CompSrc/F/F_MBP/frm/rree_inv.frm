//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.1 - Спецоснастка
// Печатная форма для вывода реестров актов инвентаризации спецоснастки
//------------------------------------------------------------------------------

#doc
Печать реестра актов инвентаризации спецоснастки.<br>
#end
.Set Name = 'rRee_InvProt'
.Hide
.Fields
  frDate : Date
  toDate : Date
  RazrFiltr : String
  MyOrgName : String
  NDE_ShName : String
  cSigners : comp
.endFields

// Шапка реестра

  ^  ^  ^  ^  ^  ^

.{ ReeInvDoc CheckEnter // Список документов

.Fields
  fDocNRec : Comp
  fDesGr : String  fDescr : String
  fDate : Date  fNumber : String  fDocExpl : String
  fPodr : String  fMOL : String  fPers : String
  fDocKolF : Double  fDocKol : Double
  fDocSummaF : Double  fDocSumma : Double
.endFields
  fDocNRec   -  ^
  fDesGr     -  ^
  fDescr     -  ^
  fDate      -  ^
  fNumber    -  ^
  fDocExpl   -  ^
  fPodr      -  ^
  fMOL       -  ^
  fPers      -  ^
  fDocKolF   -  ^
  fDocKol    -  ^
  fDocSummaF -  ^
  fDocSumma  -  ^
.{ ReeInvDocSpec CheckEnter // Спецификация документа

.Fields
   fSpecNRec : Comp
   fMBPKod : String  fMBPName : String  fEd : String
   fPrice : Double  fPerc : Double  fInExpl : String
   fKolF : Double  fKol : Double
   fSummaF : Double  fSumma : Double
   fParty : String fPartyKod : String
.endFields
// Спецификация документа
   fSpecNRec -  ^
   fMBPKod   -  ^
   fMBPName  -  ^
   fEd       -  ^
   fPrice    -  ^
   fPerc     -  ^
   fInExpl   -  ^
   fKolF     -  ^
   fKol      -  ^
   fSummaF   -  ^
   fSumma    -  ^
   fParty    -  ^
   fPartyKod -  ^
// конец Спецификация документа
.}
.}
.endForm

//-------------------------------------------------------------------------

.LinkFORM rRee_Inv_01 Prototype Is rRee_InvProt
.NameInList 'Краткий реестр'
.Group 'Краткий реестр'
.declare
#include FeeSigners.vih
.endDeclare
.Var
  iFeeSigners : FeeSigners;
  NumDocs, lSign, i : Longint;
  FIOs, Post : array [1..2] of String;
  SumItog, SumItogF : Double;
.endVar
.begin
  NumDocs := 0;
  SumItog := 0;
  SumItogF := 0;
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

  if (lSign = 0)
  {
    lSign := 1;
    FIOs[lSign] := '';
    Post[lSign] := '';
  }
end.
.Fields
  CommonFormHeader  MyOrgName
  frDate  toDate  RazrFiltr
.endFields
 Ш ^
 ^

                         Реестр  БАктов инвентаризации Б за период с  Б^ Б по  Б^ Б
 ^
.{ ReeInvDoc CheckEnter
.[h
.Fields
  NDE_ShName
  NDE_ShName
.endFields
──────────┬────────────────┬───────────────────────────────┬────────────────────────────┬───┬──────────────────────────────┬───────────────────── стр.@NP@
          │                │                               │                            │   │      Фактическое наличие     │По данным бухгалтерского учета
   Дата   │      Номер     │         Подразделение         │            МОЛ             │С/э├────────────┬─────────────────┼────────────┬─────────────────
          │                │                               │                            │   │ Количество │   Сумма, @@@@@@ │ Количество │   Сумма, @@@@@@
──────────┴────────────────┴───────────────────────────────┴────────────────────────────┴───┴────────────┴─────────────────┴────────────┴─────────────────
.]h
.Fields
  fDate  fNumber
  fPodr  fMol  fDocExpl
  fDocKolF
  fDocSummaF
  fDocKol
  fDocSumma
.endFields
.begin
  NumDocs := NumDocs + 1;
  SumItog := SumItog + fDocSumma;
  SumItogF := SumItogF + fDocSummaF;
end.
@@@@@@@@@@ @@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@ &'&&&&&&&.&& &'&&&&&&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&&&&&&.&&
.{ ReeInvDocSpec CheckEnter
.}
.}
.Fields
  NumDocs  SumItogF  SumItog
.endFields
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
Итого по реестру      документов &&&&&       на  сумму                                                    &'&&&&&&&&&&&&.&&              &'&&&&&&&&&&&&.&&
.begin
  i := 0;
end.
.{While (i < lSign)
.begin
  i++;
end.
.fields
  Post[i]
  FIOs[i]
.endfields

  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д    _______________________     Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                должность                           подпись                                расшифровка подписи
.} Ш
.endForm

//-------------------------------------------------------------------------

.LinkFORM rRee_Inv_02 Prototype Is rRee_InvProt
.NameInList 'Подробный реестр'
.Group 'Подробный реестр'
.declare
#include FeeSigners.vih
.endDeclare
.Var
  iFeeSigners : FeeSigners;
  NumDocs, lSign, i : Longint;
  FIOs, Post : array [1..2] of String;
  SumItog, SumItogF : Double;
.endVar
.begin
  NumDocs := 0;
  SumItog := 0;
  SumItogF := 0;
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

  if (lSign = 0)
  {
    lSign := 1;
    FIOs[lSign] := '';
    Post[lSign] := '';
  }
end.
.Fields
  CommonFormHeader  MyOrgName
  frDate  toDate  RazrFiltr
.endFields
 Ш ^
 ^

                         Подробный реестр  БАктов инвентаризации Б за период с  Б^ Б по  Б^ Б
 ^
.{ ReeInvDoc CheckEnter
.[h
.Fields
  NDE_ShName
  NDE_ShName
.endFields
──────────┬────────────────┬───────────────────────────────┬────────────────────────────┬───┬──────────────────────────────┬───────────────────── стр.@NP@
          │                │                               │                            │   │      Фактическое наличие     │По данным бухгалтерского учета
   Дата   │      Номер     │         Подразделение         │            МОЛ             │С/э├────────────┬─────────────────┼────────────┬─────────────────
          │                │                               │                            │   │ Количество │   Сумма, @@@@@@ │ Количество │   Сумма, @@@@@@
──────────┴────────────────┴───────────────────────────────┴────────────────────────────┴───┴────────────┴─────────────────┴────────────┴─────────────────
.]h
.Fields
  fDate  fNumber
  fPodr  fMOL  fDocExpl
  fDocKolF
  fDocSummaF
  fDocKol
  fDocSumma
.endFields
.begin
  NumDocs := NumDocs + 1;
  SumItog := SumItog + fDocSumma;
  SumItogF := SumItogF + fDocSummaF;
end.
 Б@@@@@@@@@@ @@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@ &'&&&&&&&.&& &'&&&&&&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&&&&&&.&& Б
.{ ReeInvDocSpec CheckEnter
.[h
──────────┬───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.]h
.Fields
   fMBPKod
   fMBPName
   fEd
   fPrice
   fPerc
   fInExpl
   fParty
   fKolF
   fSummaF
   fKol
   fSumma
.endFields
          │@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@ &'&&&&&&&&.&& &&&.&&% @ @@@@@@@@@@@@@@@@ &'&&&&.&& &'&&&&&&&&&&&.&& &'&&&&.&& &'&&&&&&&&&&&.&&
.[f
───────── └───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.]f
.}
.}
.Fields
  NumDocs  SumItogF  SumItog
.endFields
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
Итого по реестру      документов &&&&&         на  сумму                                                  &'&&&&&&&&&&&&.&&              &'&&&&&&&&&&&&.&&
.begin
  i := 0;
end.
.{While (i < lSign)
.begin
  i++;
end.
.fields
  Post[i]
  FIOs[i]
.endfields

  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д    _______________________     Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                должность                           подпись                                расшифровка подписи
.} Ш
.endForm
