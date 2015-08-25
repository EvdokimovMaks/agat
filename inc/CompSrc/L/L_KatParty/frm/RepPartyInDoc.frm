!════════════════════════════════════════════════════════════════════════════╗
!                     (c) Корпорация ГАЛАКТИКА, 1996,97                      ║
! Проект        : ГАЛАКТИКА                                                  ║
! Система       :                                                            ║
! Версия        :                                                            ║
! Назначение    :                                                            ║
! Ответственный :                                                            ║
!════════════════════════════════════════════════════════════════════════════╝
#Doc
Карточка упоминаний партий МЦ в документах
#End
.Form 'RepPartyInDoc'
.NameInList 'Карточка упоминаний партий МЦ в документах'
.Hide
.var
   nPP, nPP1 : longint;
   Kol1 : double;
   PartyNameKod : string;
.endvar
.begin
 nPP1:=0
end.
.fields
  dDate1 : string
  dDate2 : string
.endfields
с ^ по ^
.{CheckEnter Cicle1 // цикл по партиям МЦ
.begin
 nPP1:=nPP1+1;
end.
.fields
  PartyNRec : comp
  PartyName : string
  PartyKod : string
.endfields
  ^^^
.begin
 nPP:=0;
 Kol1:=0;
 PartyNameKod:=PartyName+', код '+PartyKod
end.

.{CheckEnter Cicle2   // цикл по документам
.begin
 nPP:=nPP+1;
end.
.fields
  dDoc    : string
  NDoc    : string
  VidDoc  : string
  OrgNRec : comp
  OrgName : string
  NameMC  : string
  OtpEDNRec : comp
  OtpEDName : string
  Kol     : double
  UchEdKol: double
  Sum     : double
.endfields

  ^^^^^^^^^^^
.begin
 Kol1:=Kol1+UchEdKol;
end.

.} // по документам
.}
.EndForm
!
!==============================================================================
!
#Doc
Карточка упоминаний партий МЦ в документах
#End
.LinkForm 'RepPartyInDoc_1' prototype is 'RepPartyInDoc'
.NameInList 'Карточка упоминаний партий МЦ в документах'
.Defo landscape
!.P 40
.Fields
  CommonFormHeader
  dDate1
  dDate2
.EndFields
 В^ В

 Б                         Карточка упоминаний партий МЦ за период
                               c @@@@@@@@@@ по @@@@@@@@@@ Б
.{CheckEnter Cicle1 // цикл по ПМЦ
.Fields
  PartyNameKod
.EndFields

 Б @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
 Р─────┬──────────┬─────────┬────────────────────────────────┬──────────────────────────────┬─────────────────┬───────┬──────────────┬────────────────────────
  №  │   Дата   │  Номер  │               Вид              │          Контрагент,         │       МЦ        │  Ед.  │  Количество  │      С у м м а
 п/п │ документа│документа│            документа           │         подразделение        │                 │  изм. │              │
─────┴──────────┴─────────┴────────────────────────────────┴──────────────────────────────┴─────────────────┴───────┴──────────────┴──────────────────────── Р
.{CheckEnter Cicle2 //цикл по документам
.Fields
  Npp
  dDoc
  NDoc
  VidDoc
  OrgName
  NameMC
  OtpEDName
  Kol
  Sum
.EndFields
 Р &&&& @@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@ @~@@@@@ &&&&&&&&&&.&&&  &#'&&&&&&&&&&&&&&&&&.&& Р
.[F
 Р──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── Р
.]F
.}
.}
.EndForm
