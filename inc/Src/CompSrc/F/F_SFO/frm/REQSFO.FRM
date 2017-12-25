//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Спецодежда
// Печать требования на выдачу СФО
//------------------------------------------------------------------------------

#doc
Печать разнесенной и неразнесенной форм Требования на выдачу СФО.<br>
#end
.Set Name = 'ReqSFOProt'
.Hide
.Var
  IsCustom : boolean;
.endVar
.Begin
  if (Lic_ItemExists('Custom'))
    IsCustom := True;
end.
.Fields
// Шапка требования
  dNumber : String  dDate : Date  fDesGr : String  fDescr : String
  PersName : String  TabN : String  CardN : String
  r_Rost : String  r_od1 : String  r_od2 : String  r_ob : String
  r_gu : String  r_perch : String  r_isz : String  r_pog : String  r_ob2 : String
  PodrToName : String  MOLToName : String
  PodrFrName : String  MOLFrName : String
  WriteSize : Boolean  ReqNRec : Comp
  NormKod : String NormName : String
  MyOrgName : String NDE_ShName : String
// Строки спецификации - они же группы СФО или предметы, выданные по группе
  GrKind : Word GrKod  : String  GrName : String  GrEd : String  trbKol : Word  otpKol : Word
  SFOKod : String  SFOName : String  SFOPrice : Double  SFOKol : Double
  SFOIznS : Double  SFOType : Word SFOSize : String PartyKod : String PartyName : String
// Подписанты
  Подписант_nRec : comp
  Подписант_ФИО : String
  Подписант_Табельный_Номер : String
  Подписант_Должность : String
  Подписант_Роль : String
.endFields
.{
   ^ ^ ^ ^
   ^ ^ ^
   ^ ^ ^ ^ ^ ^ ^ ^ ^
   ^ ^
   ^ ^
   ^ ^
   ^ ^
   ^ ^
.{
   ^ ^ ^ ^ ^ ^ | ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter FeeSignersCycle_ReqSFOProt
   ^ ^ ^ ^ ^
.}
.}
.endForm

//-------------------------------------------------------------------------

.LinkFORM ReqSFO01 Prototype Is ReqSFOProt
.NameInList 'Требование на выдачу специальной (форменной) одежды'
.Group 'Неразнесенные'
.Fields
   CommonFormHeader  MyOrgName
   dNumber   DateToStr(dDate, 'DD/MM/YYYY')
   PersName  TabN  CardN
   r_Rost  r_od1  r_od2  r_ob  r_ob2
.endFields
.{
 И ^
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Требование №  Б^ Б от  Б^ Б на выдачу специальной (форменной) одежды
 работнику:  Б^ Б  Таб. №:  Б^ Б  Карточка №:  Б^ Б
 размеры:рост  Б^ Б  одежда1  Б^ Б  одежда2  Б^ Б  обувь1  Б^ Б  обувь2  Б^ Б
.{?INTERNAL; not (IsCustom)
.Fields
  r_gu  r_perch  r_isz
.endFields
         гол.убор  Б^ Б  перчатки  Б^ Б  СИЗОД  Б^ Б
.}
.{?INTERNAL; (IsCustom)
.Fields
  r_gu  r_perch  r_isz  r_pog
.endFields
         гол.убор  Б^ Б  перчатки  Б^ Б  СИЗОД  Б^ Б  погоны  Б^ Б
.}
.Fields
   MOLToName  PodrToName
   MOLFrName  PodrFrName
   NDE_ShName NDE_ShName
   if (GrKind = 1, '- ', '')+GrKod  GrName  GrEd  trbKol
.endFields
 куда    МОЛ:  Б^ Б
         Подразделение:  Б^ Б
 откуда  МОЛ:  Б^ Б
         Подразделение:  Б^ Б
 Р
┌──────────────┬───────────────────────────┬────────────┬──────╥──────────────┬───────────────────────────┬────────────────┬──────┬─────────────────┐
│  Код группы  │      Название группы      │  Ед. изм.  │Кол-во║  Номенкл. №  │        Наименование       │  Цена, @@@@@@  │Кол-во│Стоимость, @@@@@@│
└──────────────┴───────────────────────────┴────────────┴──────╫──────────────┴───────────────────────────┴────────────────┴──────┴─────────────────┘
.{
 @@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ &#&&& ║
.}
 ──────────────────────────────────────────────────────────────╨────────────────────────────────────────────────────────────────────────────────────
 Ш И
 Выдано наименований :
.{ CheckEnter FeeSignersCycle_ReqSFOProt
.Fields
  if (Подписант_Роль <> '', Подписант_Роль, Подписант_должность)
  Подписант_ФИО
.EndFields

  Д@@@@@@@@@@@@@@@@@@@@@@@@@ Д   _________________    Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
         должность                подпись                 расшифровка подписи
.} И

.}
.endForm

//-------------------------------------------------------------------------

.LinkFORM ReqSFO02 Prototype Is ReqSFOProt
.NameInList 'Требование на выдачу специальной (форменной) одежды'
.Group 'Разнесенные'
.var
  nameCnt, frmSum, spcSum, Stoim : Double
.endVar
.Fields
   CommonFormHeader  MyOrgName
   dNumber   DateToStr(dDate, 'DD/MM/YYYY')
   PersName  TabN  CardN
   r_Rost  r_od1  r_od2  r_ob  r_ob2
.endFields
.{
.begin
  nameCnt := 0;
  frmSum := 0;
  spcSum := 0;
end.
 И ^
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Требование №  Б^ Б от  Б^ Б на выдачу специальной (форменной) одежды
 работнику:  Б^ Б  Таб. №:  Б^ Б  Карточка №:  Б^ Б
 размеры:рост  Б^ Б  одежда1  Б^ Б  одежда2  Б^ Б  обувь1  Б^ Б  обувь2  Б^ Б
.{?INTERNAL; not (IsCustom)
.Fields
  r_gu  r_perch  r_isz
.endFields
         гол.убор  Б^ Б  перчатки  Б^ Б  СИЗОД  Б^ Б
.}
.{?INTERNAL; (IsCustom)
.Fields
  r_gu  r_perch  r_isz  r_pog
.endFields
         гол.убор  Б^ Б  перчатки  Б^ Б  СИЗОД  Б^ Б  погоны  Б^ Б
.}
.Fields
   MOLToName  PodrToName
   MOLFrName  PodrFrName
   NDE_ShName NDE_ShName

   if (GrKind = 1, '- ', '')+GrKod  GrName  GrEd  trbKol  otpKol

   SFOKod  SFOName + if (WriteSize and (Trim(SFOSize) <> ''), ' (' + SFOSize + ')', '')
   SFOPrice  SFOKol  Stoim
   if (SFOType = 1, 'форм', if (SFOType = 2, 'спец', ''))
.endFields
 куда    МОЛ:  Б^ Б
         Подразделение:  Б^ Б
 откуда  МОЛ:  Б^ Б
         Подразделение:  Б^ Б
 Р
┌──────────────┬─────────────────────────┬────────────┬──────┬──────╥──────────────┬─────────────────────────┬──────────────┬──────┬─────────────────┬─────┐
│  Код группы  │     Название группы     │  Ед. изм.  │Затреб│Отпущ.║  Номенкл. №  │      Наименование       │ Цена, @@@@@@ │Кол-во│Стоимость, @@@@@@│Катег│
└──────────────┴─────────────────────────┴────────────┴──────┴──────╫──────────────┴─────────────────────────┴──────────────┴──────┴─────────────────┴─────┘
.{
.begin
  if (otpKol > 0)
    nameCnt := nameCnt + 1;

  Stoim := SFOPrice * SFOKol - if (wGetTune('Fin.MBP.OstStoim') = 0, 0, SFOIznS);

  case (SFOType) of
    1: frmSum := frmSum + Stoim;
    2: spcSum := spcSum + Stoim;
  end;
end.
 @@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@  &#&&& &#&&& ║@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@ &#'&&&&&&&&.&& &#&&&& &#'&&&&&&&&&&&.&& @@@@@
.}
 ───────────────────────────────────────────────────────────────────╨──────────────────────────────────────────────────────────────────────────────────────
 Ш И
.Fields
  nameCnt  frmSum  NDE_ShName  spcSum  NDE_ShName
.endFields
 Б Выдано наименований : @@@@@@@@@ Б

 Б Сумма  по форменной : &'&&&&&&&&&&&&.&& @@@@@@ Б
 Б      по специальной : &'&&&&&&&&&&&&.&& @@@@@@ Б
.{ CheckEnter FeeSignersCycle_ReqSFOProt
.Fields
  if (Подписант_Роль <> '', Подписант_Роль, Подписант_должность)
  Подписант_ФИО
.EndFields

  Д@@@@@@@@@@@@@@@@@@@@@@@@@ Д   _________________    Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
         должность                подпись                 расшифровка подписи
.} И

.}
.endForm

//-------------------------------------------------------------------------
