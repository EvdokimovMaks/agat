//------------------------------------------------------------------------------
//                                                      (c) Корпорация ГАЛАКТИКА
// Галактика 8.1 - Бухгалтерский контур
// Форма для вывода состава ОС/ НМА
//------------------------------------------------------------------------------
#doc
  Форма для печати состава ОС/ НМА
#end
.set name = 'SostObjOS'
.hide
.var
  iEF : ExcelFormat;
.endvar
.fields
  TitleRep          // название отчета
  //---------------------------------------------
  TiDk      : word             // 15 - ОС, 16 - НМА
  SumFormat : string

  NastrOs_NRec : comp          // ссылка на метод учета по которому выводятся данные
  // из инвентарной картотеки
  KatOs_Nrec   : comp          // сылка на инвентарную карточку
  KatOs_Level  : word          // уровень вложенности по иерархии картотеки 0 - корневой
  KatOs_InNum                  // Инвентарный номер объекта
  KatOs_Name                   // Наименование объекта
  KatOs_BarKod                 // Бар-код матценности соответствующей объекту ОС
  KatOs_ZavNom                 // Заводской номер объекта ОС
  KatOs_IsLeaf     : word
  KatOs_OsMcExists : boolean   // флаг наличия МЦ в составе объекта (false - в составе нет МЦ)
  SpKatOs_Stoim    : double    // Стоимость объекта
  SpKatOs_SumIzn : double      // Сумма износа объекта // new
  SpKatOs_SIznM  : double      // Износ за месяц объекта// new
  OSKatSopr_NRec   : comp      // ссылка на заголовок накладной на покупку
  OSSpSopr_NRec    : comp      // ссылка на спецификацию накладной
  OSSpOrder_NRec   : comp      // ссылка на спецификацию ордера по накладной
  OSKatSopr_Sum    : double    // стоимость покупки по накладной из объекта
  OSKatOr_Name                 // поставщик по накладной из объекта
  OsKatSoprNumDate             // номер и дата накладной на покупку

    // услуги рапределенные на объект
    OsMcUsl_NRec1     : comp   // ссылка на связь ОС и услуг
    KatUsl_NRec1      : comp   // ссылка на каталог услуг
    KatSoprUsl_NRec1  : comp   // ссылка на акт на прием услуг
    SpSoprUsl_NRec1   : comp   // ссылка на спецификацию акта на прием услуг
    KatUsl_Name1               // наименование услуги по объекту ОС
    StoimPokup1       : double // стоимость покупки услуги
    RaspUslOnCurrObj1 : double // сумма услуги по объекту
    Org_NameUsl1               // контрагент
    NumDateUsl1                // номер и дата документа
    UslKatSoprName1            // примечаение к акту на прием услуг

  // из состава объекта
  OsMc_NRec    : comp          // ссылка на составляющую
  OsMc_Level   : word          // уровень вложенности по иерархии состава 0 - корневой
  KatMc_Name                   // наименование МЦ
  OsMc_TiDk    : word          // Тип  15-МЦ, 315 - Услуга
  OsMc_BarKod                  // номенклатурный номер
  OsMc_ZavNom                  // заводской номер
  OsMc_IsLeaf   : word         // признак листа
  OsMc_DatEk    : date         // дата ввода    // new
  OsMc_DatV     : date         // дата выбытия  // new
  OsMc_Kol      : double       // количество МЦ // new

  SpOsMc_Stoim  : double       // стоимость
  SpOsMc_SumIzn : double       // Сумма износа  // new
  SpOsMc_SIznM  : double       // Износ за месяц // new

  MCKatSopr_NRec: comp         // ссылка на заголовок накладной на покупку
  MCSpSopr_NRec : comp         // ссылка на спецификацию накладной
  MCSpOrder_NRec: comp         // ссылка на спецификацию ордера по накладной
  KatSopr_Sum   : double       // стоимость покупки
  KatOr_Name                   // поставщик
  NumDate                      // номер и дата накладной на покупку

    // услуги распределенные на составляющие
    OsMcUsl_NRec2     : comp   // ссылка на связь составляющих и услуг
    KatUsl_NRec2      : comp   // ссылка на каталог услуг
    KatSoprUsl_NRec2  : comp   // ссылка на акт на прием услуг
    SpSoprUsl_NRec2   : comp   // ссылка на спецификацию акта на прием услуг
    KatUsl_Name2               // наименование услуги по составляющей (МЦ)
    StoimPokup2       : double // стоимость покупки услуги
    RaspUslOnCurrObj2 : double // сумма услуги по составляющей
    Org_NameUsl2               // контрагент
    NumDateUsl2                // номер и дата документа
    UslKatSoprName2            // примечаение к акту на прием услуг

  //---------------------------------------------
.endfields

^
.{ // шапка
   TiDk ^
        ^
   NastrOsNRec ^

  // из инвентарной картотеки
  KatOs_Nrec       ^
  KatOs_Level      ^
  KatOs_InNum      ^
  KatOs_Name       ^
  KatOs_BarKod     ^
  KatOs_ZavNom     ^
  KatOs_IsLeaf     ^
  KatOs_OsMcExists ^
  SpKatOs_Stoim    ^
  SpKatOs_SumIzn   ^
  SpKatOs_SIznM    ^

  OSKatSopr_NRec   ^
  OSSpSopr_NRec    ^
  OSSpOrder_NRec   ^

  OSKatSopr_Sum    ^
  OSKatOr_Name     ^
  OsKatSoprNumDate ^

.{ Usl_Cicle1 CheckEnter
  // услуги рапределенные на объект
  OsMcUsl_NRec1    ^
  KatUsl_NRec1     ^
  KatSoprUsl_NRec1 ^
  SpSoprUsl_NRec1  ^
  KatUsl_Name1   ^
  StoimPokup1    ^
  RaspUslOnCurrObj1 ^
  Org_NameUsl1   ^
  NumDateUsl1    ^
  UslKatSoprName1^
.}

.{ MC_Cicle  CheckEnter
  // из состава объекта
  OsMc_NRec     ^
  OsMc_Level    ^
  KatMc_Name    ^
  OsMc_TiDk     ^
  OsMc_BarKod   ^
  OsMc_ZavNom   ^
  OsMc_IsLeaf   ^
  OsMc_DatEk    ^
  OsMc_DatV     ^
  OsMc_Kol      ^
  SpOsMc_Stoim  ^
  SpOsMc_SumIzn ^
  SpOsMc_SIznM  ^
  MCKatSopr_NRec^
  MCSpSopr_NRec ^
  MCSpOrder_NRec^
  KatSopr_Sum   ^
  KatOr_Name    ^
  NumDate       ^
.{ Usl_Cicle2 CheckEnter
    // услуги распределенные на составляющие
    OsMcUsl_NRec2    ^
    KatUsl_NRec2     ^
    KatSoprUsl_NRec2 ^
    SpSoprUsl_NRec2  ^
    KatUsl_Name2   ^
    StoimPokup2    ^
    RaspUslOnCurrObj2 ^
    Org_NameUsl2   ^
    NumDateUsl2    ^
    UslKatSoprName2^
.}
.}

.}

.endform

//*******************************************************************
.linkform 'SostObjOs01' prototype is 'SostObjOs'
.nameinlist 'Состав объектов ОС / НМА '
.defo landscape
.p 65
.var
 Stoim, StoimPokup : double;
.endvar
.fields
  CommonFormHeader
  TitleRep
  //---------------------------------------------

  PadCh('',' ',KatOs_Level*2) + KatOs_Name : 'T:-'
  KatOs_InNum
  KatOs_ZavNom
  DoubleToStr(SpKatOs_Stoim,SumFormat)
  iEF.DoubleToStrRep(OsKatSopr_Sum,SumFormat)
  OSKatOr_Name
  OsKatSoprNumDate
    KatUsl_Name1
    iEF.DoubleToStrRep(RaspUslOnCurrObj1,SumFormat)
    Org_NameUsl1
    NumDateUsl1
  PadCh('',' ',OsMc_Level*2) + KatMc_Name : 'T:-'
  OsMc_BarKod
  OsMc_ZavNom
  DoubleToStr(SpOsMc_Stoim,SumFormat)
  iEF.DoubleToStrRep(KatSopr_Sum,SumFormat)
  KatOr_Name
  NumDate
    KatUsl_Name2
    if (RaspUslOnCurrObj2 = 0, '', DoubleToStr(RaspUslOnCurrObj2, SumFormat))
    Org_NameUsl2
    NumDateUsl2

  DoubleToStr(Stoim,SumFormat)
  iEF.DoubleToStrRep(StoimPokup,SumFormat)

  //---------------------------------------------
.endfields
.begin
  Stoim := 0;
  StoimPokup := 0;
end.
 Р ^
 Б                               @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ С
 Р.{
.[H
                                                                                                                                                                    лист @np@
──────────────────────────────────┬───────────────────────┬──────────────┬──────────────┬────────────────────┬────────────────────┬─────────────────────────┬──────────────────────
Наименование объекта/составляющей │     Наименование      │Инвент/номенкл│  Заводской   │     Стоимость      │ Стоимость покупки  │        Поставщик        │Накладная на покупку/
                                  │      услуги/МЦ        │     номер    │    номер     │                    │                    │                         │Акт выполненных работ
──────────────────────────────────┴───────────────────────┴──────────────┴──────────────┴────────────────────┴────────────────────┴─────────────────────────┴──────────────────────
.]H
.begin
  if (KatOs_IsLeaf = 1) and (not KatOs_OsMcExists)
  {
    Stoim      += SpKatOs_Stoim;
    StoimPokup += OSKatSopr_Sum;
  }
end.
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                         @@@@@@@@@@@@@@ @@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@ Б
.{ Usl_Cicle1 CheckEnter
.begin
  if (KatOs_IsLeaf = 1)
    StoimPokup += RaspUslOnCurrObj1;
end.
                                   @@@@@@@@@@@@@@@@@@@@@@@                                                    &&&&&&&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@
.}
.{ MC_Cicle  CheckEnter
.{?Internal; Longint(OsMc_DatV)=0;
.begin
  if (OsMc_IsLeaf = 1)
    Stoim    += SpOsMc_Stoim;
  StoimPokup += KatSopr_Sum;
end.
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                         @@@@@@@@@@@@@@ @@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@
.}
.{ Usl_Cicle2  CheckEnter
.{?Internal; Longint(OsMc_DatV)=0;
! .begin
!  if (OsMc_IsLeaf = 1)
!    StoimPokup +=  RaspUslOnCurrObj2;
!  end.
                                   @@@@@@@@@@@@@@@@@@@@@@@                                                    &&&&&&&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@
.}
.}
.}
.[F
───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 Б                                                                        Итого:           &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& Б
.]F
.} Р
.endform

//*******************************************************************
.linkform 'SostObjOs02' prototype is 'SostObjOs'
.nameinlist 'Состав объектов ОС / НМА, развернутый с учетом выбывших'
.defo landscape
.p 60
.var
 Stoim, SumIzn, SIznM, StoimPokup : double;
 StoimVyb, SumIznVyb, SIznMVyb : double;
.endvar
.fields
  CommonFormHeader
  TitleRep+'(развернутый, с учетом выбывших из состава)'
  //---------------------------------------------

  PadCh('',' ',KatOs_Level*2) + KatOs_Name : 'T:-'
  KatOs_InNum
  KatOs_ZavNom
  DoubleToStr(SpKatOs_Stoim,SumFormat)
  iEF.DoubleToStrRep(SpKatOs_SumIzn,SumFormat)
  iEF.DoubleToStrRep(SpKatOs_SIznM,SumFormat)
  iEF.DoubleToStrRep(OsKatSopr_Sum,SumFormat)
  OSKatOr_Name
  OsKatSoprNumDate
    KatUsl_Name1
    iEF.DoubleToStrRep(RaspUslOnCurrObj1,SumFormat)
    Org_NameUsl1
    NumDateUsl1

  PadCh('',' ',OsMc_Level*2) + if(Longint(OsMc_DatV)>0,'*','') + KatMc_Name : 'T:-'
  OsMc_BarKod
  OsMc_ZavNom
  DoubleToStr(SpOsMc_Stoim,SumFormat)
  iEF.DoubleToStrRep(SpOsMc_SumIzn,SumFormat)
  iEF.DoubleToStrRep(SpOsMc_SIznM ,SumFormat)
  iEF.DoubleToStrRep(KatSopr_Sum,SumFormat)
  KatOr_Name
  NumDate
  if(Longint(OsMc_DatV)>0, DateToStr(OsMc_DatV,'DD/MM/YYYY'), '')
    KatUsl_Name2
    iEF.DoubleToStrRep(RaspUslOnCurrObj2, SumFormat)
    Org_NameUsl2
    NumDateUsl2

  DoubleToStr(Stoim,SumFormat)
  iEF.DoubleToStrRep(SumIzn,SumFormat)
  iEF.DoubleToStrRep(SIznM,SumFormat)
  iEF.DoubleToStrRep(StoimPokup,SumFormat)

  //---------------------------------------------
.endfields
.begin
  Stoim := 0;
  SumIzn:= 0;
  SIznM := 0;
  StoimPokup := 0;
  StoimVyb  := 0;
  SumIznVyb := 0;
  SIznMVyb  := 0;
end.
 Ш ^
                               @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ш
.{
.[H
 Ш                                                                                                                                                                                                                лист @np@
──────────────────────────────────┬───────────────────────┬──────────────┬──────────────┬────────────────────┬────────────────────┬────────────┬────────────────────┬─────────────────────────┬──────────────────────┬──────────
Наименование объекта/составляющей │     Наименование      │Инвент/номенкл│  Заводской   │     Стоимость      │       Износ        │  Износ за  │ Стоимость покупки  │        Поставщик        │Накладная на покупку/ │    Дата
                                  │      услуги/МЦ        │     номер    │    номер     │                    │                    │ отч.период │                    │                         │Акт выполненных работ │  выбытия
──────────────────────────────────┴───────────────────────┴──────────────┴──────────────┴────────────────────┴────────────────────┴────────────┴────────────────────┴─────────────────────────┴──────────────────────┴────────── Ш
.]H
.begin
  if (KatOs_IsLeaf = 1) and (not KatOs_OsMcExists)
  {
    Stoim      += SpKatOs_Stoim;
    StoimPokup += OSKatSopr_Sum;
    SumIzn     += SpKatOs_SumIzn;
    SIznM      += SpKatOs_SIznM;
  }
end.
 Ш@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                         @@@@@@@@@@@@@@ @@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@ Ш
.{ Usl_Cicle1 CheckEnter
.begin
  if (KatOs_IsLeaf = 1)
    StoimPokup +=  RaspUslOnCurrObj1;
end.
 Ш                                   @@@@@@@@@@@@@@@@@@@@@@@                                                                                      &&&&&&&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@ Ш
.}
.{ MC_Cicle  CheckEnter
.begin
  if (OsMc_IsLeaf = 1)
  {
    Stoim  +=  SpOsMc_Stoim;
    SumIzn +=  SpOsMc_SumIzn;
    SIznM  +=  SpOsMc_SIznM;

    if ( Longint(OsMc_DatV) > 0 )
    {
      StoimVyb  += SpOsMc_Stoim;
      SumIznVyb += SpOsMc_SumIzn;
      SIznMVyb  += SpOsMc_SIznM;
    }
  }
  StoimPokup := StoimPokup + KatSopr_Sum;
end.
 Ш@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                         @@@@@@@@@@@@@@ @@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ Ш
.{ Usl_Cicle2  CheckEnter
!.begin
!  if (OsMc_IsLeaf = 1)
!    StoimPokup += RaspUslOnCurrObj2;
!end.
 Ш                                   @@@@@@@@@@@@@@@@@@@@@@@                                                                                      &&&&&&&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@ Ш
.}
.}
.[F
 Ш────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
                                                                       Итого:            &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& Ш
.{?Internal; ((StoimVyb <> 0) OR (SumIznVyb <> 0) OR (SIznMVyb <> 0));
.fields
  if (StoimVyb = 0, '', DoubleToStr(StoimVyb,SumFormat))
  if (SumIznVyb = 0, '', DoubleToStr(SumIznVyb,SumFormat))
  if (SIznMVyb = 0, '', DoubleToStr(SIznMVyb,SumFormat))
.endfields
 Ш                                                                      Итого по выбывшим: &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&& Ш
.}
.]F
.}
.endform
//*******************************************************************
