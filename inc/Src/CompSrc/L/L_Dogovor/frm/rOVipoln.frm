//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 8.1 - Логистика - договоры
// Печатная форма отчет о выполнении распоряжений
//******************************************************************************

#doc
Отчет о выполнении распоряжений
#end

.Form 'repOVipoln'
.NameInList 'Базовая форма'
.Hide
.Fields

  TipRaspor  : string

  Npp        : integer

  RaspType   : word
  RaspNrec   : comp
  dRasp      : date
  nRasp      : string
  dSrokIsp   : date
  CO         : string
  COspec     : string
  vidRasp    : string
  vidRaspSpec: string
  Pid        : string
  PidSpec    : string
  PodrOtpr   : string
  MolOtpr    : string
  PodrPol    : string
  MolPol     : string
  isp        : string
  RaspSpNrec : comp
  mtr        : string
  edIzm      : string
  kol        : double

  NaklNrec   : comp
  dNakl      : date
  nNakl      : string
  PodrOtprN  : string
  MolOtprN   : string
  PodrPolN   : string
  MolPolN    : string

  NaklSpNrec : comp
  kolNakl    : double
  KolZn      : byte

.EndFields
.{
 ^
.{
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.}
.EndForm
