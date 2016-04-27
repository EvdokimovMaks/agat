#doc
РЕЕСТР СФОРМИРОВАННЫХ АКТОВ СВЕРКИ
#end
.Form 'ReeAkt'
.Hide
.Fields
   nRecAktSver
   NameKontr
   NameDog
   NameAktSver
   SaldoOut
   SimbVal
.EndFields
.{
nRecAktSver   ^
NameKontr     ^
NameDog       ^
NameAktSver   ^
SaldoOut      ^
SimbVal       ^
.}
.EndForm


#doc
Реестр сформированных актов сверки
#end
.LinkForm 'ReeAkt_01' Prototype is 'ReeAkt'
.NameInList 'Реестр сформированных актов сверки'
.fields
  CommonFormHeader
.endfields
 Р^

                                     РЕЕСТР СФОРМИРОВАННЫХ АКТОВ СВЕРКИ

┌──────────────────────────────┬────────────────────────┬────────────────────────┬──────────────────────────┐
│                              │                        │                        │                          │
│          Контрагент          │     Номер договора     │    Номер акта сверки   │  Сальдо на конец периода │
│                              │                        │                        │                          │
└──────────────────────────────┴────────────────────────┴────────────────────────┴──────────────────────────┘ Р
.{
.fields
   NameKontr
   NameDog
   NameAktSver
   SaldoOut
   SimbVal
.endfields

 Р @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&.&& @@@@@ Р
.}
.endform