/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,2004 корпорация ГАЛАКТИКА                    ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Розничная торговля                                        ║
 ║ Версия        : 5.85                                                      ║
 ║ Назначение    : Ведомости в розничной торговле                            ║
 ║ Ответственный : Швайковский Дмитрий Владимирович                          ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
#doc
Ведомости в розничной торговле
#end
.set name='RozMCReports'
.hide
.var
  Summa         :Double;  //Сумма входящая
  VSumma        :Double;  //Сумма входящая
  SummaP        :Double;  //Сумма прихода
  VSummaP       :Double;  //Сумма прихода
  SummaR        :Double;  //Сумма расхода
  VSummaR       :Double;  //Сумма расхода
  SummaI        :Double;  //Сумма исх.
  VSummaI       :Double;  //Сумма исх.

  Summa_        :Double;  //Сумма входящая
  VSumma_       :Double;  //Сумма входящая
  SummaP_       :Double;  //Сумма прихода
  VSummaP_      :Double;  //Сумма прихода
  SummaR_       :Double;  //Сумма расхода
  VSummaR_      :Double;  //Сумма расхода
  SummaI_       :Double;  //Сумма исх.
  VSummaI_      :Double;  //Сумма исх.

  RozAdd        :Double;  //Розничная надбавка
  VRozAdd       :Double;  //Розничная надбавка в валюте
  SellTax       :Double;  //Налоги с продаж
  VSellTax      :Double;  //Налоги с продаж в валюте

  kItogo_mc     :Double;  //Итого количество вход. по МЦ
  kpItogo_mc    :Double;  //Итого количество прихода по МЦ
  krItogo_mc    :Double;  //Итого количество расхода по МЦ
  kiItogo_mc    :Double;  //Итого количество исх. по МЦ

  eItogo_mc     :Double;  //Итого количество ЕУ вход. по МЦ
  epItogo_mc    :Double;  //Итого количество ЕУ прихода по МЦ
  erItogo_mc    :Double;  //Итого количество ЕУ расхода по МЦ
  eiItogo_mc    :Double;  //Итого количество ЕУ исх. по МЦ

  Itogo_mc      :Double;  //Итого вход. по МЦ
  VItogo_mc     :Double;  //Итого вход. по МЦ в валюте
  ItogoP_mc     :Double;  //Итого прихода по МЦ
  VItogoP_mc    :Double;  //Итого прихода по МЦ в валюте
  ItogoR_mc     :Double;  //Итого расхода по МЦ
  VItogoR_mc    :Double;  //Итого расхода по МЦ в валюте
  ItogoI_mc     :Double;  //Итого исх. по МЦ
  VItogoI_mc    :Double;  //Итого исх. по МЦ в валюте

  Itogo_mc_     :Double;  //Итого вход. по МЦ
  VItogo_mc_    :Double;  //Итого вход. по МЦ в валюте
  ItogoP_mc_    :Double;  //Итого прихода по МЦ
  VItogoP_mc_   :Double;  //Итого прихода по МЦ в валюте
  ItogoR_mc_    :Double;  //Итого расхода по МЦ
  VItogoR_mc_   :Double;  //Итого расхода по МЦ в валюте
  ItogoI_mc_    :Double;  //Итого исх. по МЦ
  VItogoI_mc_   :Double;  //Итого исх. по МЦ в валюте

  Itogo_gr      :Double;  //Итого вход по группе МЦ
  VItogo_gr     :Double;  //Итого вход по группе МЦ в валюте
  ItogoP_gr     :Double;  //Итого приход по группе МЦ
  VItogoP_gr    :Double;  //Итого приход по группе МЦ в валюте
  ItogoR_gr     :Double;  //Итого расход по группе МЦ
  MyItogoR_gr   :Double;  //Итого расход по группе МЦ для закупочных цен
  VItogoR_gr    :Double;  //Итого расход по группе МЦ в валюте
  ItogoI_gr     :Double;  //Итого исход расход по группе МЦ
  MyItogoI_gr   :Double;  //Итого исход расход по группе МЦ
  VItogoI_gr    :Double;  //Итого исход расход по группе МЦ в валюте

  Itogo_gr_     :Double;  //Итого вход по группе МЦ
  VItogo_gr_    :Double;  //Итого вход по группе МЦ в валюте
  ItogoP_gr_    :Double;  //Итого приход по группе МЦ
  VItogoP_gr_   :Double;  //Итого приход по группе МЦ в валюте
  ItogoR_gr_    :Double;  //Итого расход по группе МЦ
  VItogoR_gr_   :Double;  //Итого расход по группе МЦ в валюте
  ItogoI_gr_    :Double;  //Итого исход расход по группе МЦ
  VItogoI_gr_   :Double;  //Итого исход расход по группе МЦ в валюте

  Itogo_r       :Double;  //Итого вход по разрезу
  VItogo_r      :Double;  //Итого вход по разрезу в валюте
  ItogoP_r      :Double;  //Итого приход по разрезу
  VItogoP_r     :Double;  //Итого приход по разрезу в валюте
  ItogoR_r      :Double;  //Итого расход по разрезу
  MyItogoR_r    :Double;  //Итого расход по разрезу для закупочных цен
  VItogoR_r     :Double;  //Итого расход по разрезу в валюте
  ItogoI_r      :Double;  //Итого исход по разрезу
  MyItogoI_r    :Double;  //Итого исход по разрезу для закупочных цен
  VItogoI_r     :Double;  //Итого исход по разрезу в валюте

  Itogo_r_      :Double;  //Итого вход по разрезу
  VItogo_r_     :Double;  //Итого вход по разрезу в валюте
  ItogoP_r_     :Double;  //Итого приход по разрезу
  VItogoP_r_    :Double;  //Итого приход по разрезу в валюте
  ItogoR_r_     :Double;  //Итого расход по разрезу
  VItogoR_r_    :Double;  //Итого расход по разрезу в валюте
  ItogoI_r_     :Double;  //Итого исход по разрезу
  VItogoI_r_    :Double;  //Итого исход по разрезу в валюте

  Itogo         :Double;  //Итого вход по предприятию
  VItogo        :Double;  //Итого вход по предприятию в валюте
  ItogoP        :Double;  //Итого приход по предприятию
  VItogoP       :Double;  //Итого приход по предприятию в валюте
  ItogoR        :Double;  //Итого расход по предприятию
  MyItogoR      :Double;  //Итого расход по предприятию для закупочных цен
  VItogoR       :Double;  //Итого расход по предприятию в валюте
  ItogoI        :Double;  //Итого исход по предприятию
  MyItogoI      :Double;  //Итого исход по предприятию для закупочных цен
  VItogoI       :Double;  //Итого исход по предприятию в валюте

  Itogo_        :Double;  //Итого вход по предприятию
  VItogo_       :Double;  //Итого вход по предприятию в валюте
  ItogoP_       :Double;  //Итого приход по предприятию
  VItogoP_      :Double;  //Итого приход по предприятию в валюте
  ItogoR_       :Double;  //Итого расход по предприятию
  VItogoR_      :Double;  //Итого расход по предприятию в валюте
  ItogoI_       :Double;  //Итого исход по предприятию
  VItogoI_      :Double;  //Итого исход по предприятию в валюте

  KIsh          :Double;  //Исходящий остаток

  EUSumma       :Double;  //Сумма входящая
  EUVSumma      :Double;  //Сумма входящая
  EUSummaP      :Double;  //Сумма прихода
  EUVSummaP     :Double;  //Сумма прихода
  EUSummaR      :Double;  //Сумма расхода
  EUVSummaR     :Double;  //Сумма расхода
  EUSummaI      :Double;  //Сумма исх.
  EUVSummaI     :Double;  //Сумма исх.

  EUSumma_      :Double;  //Сумма входящая
  EUVSumma_     :Double;  //Сумма входящая
  EUSummaP_     :Double;  //Сумма прихода
  EUVSummaP_    :Double;  //Сумма прихода
  EUSummaR_     :Double;  //Сумма расхода
  EUVSummaR_    :Double;  //Сумма расхода
  EUSummaI_     :Double;  //Сумма исх.
  EUVSummaI_    :Double;  //Сумма исх.

  EUItogo_mc    :Double;  //Итого вход. по МЦ
  EUVItogo_mc   :Double;  //Итого вход. по МЦ в валюте
  EUItogoP_mc   :Double;  //Итого прихода по МЦ
  EUVItogoP_mc  :Double;  //Итого прихода по МЦ в валюте
  EUItogoR_mc   :Double;  //Итого расхода по МЦ
  EUVItogoR_mc  :Double;  //Итого расхода по МЦ в валюте
  EUItogoI_mc   :Double;  //Итого исх. по МЦ
  EUVItogoI_mc  :Double;  //Итого исх. по МЦ в валюте

  EUItogo_mc_   :Double;  //Итого вход. по МЦ
  EUVItogo_mc_  :Double;  //Итого вход. по МЦ в валюте
  EUItogoP_mc_  :Double;  //Итого прихода по МЦ
  EUVItogoP_mc_ :Double;  //Итого прихода по МЦ в валюте
  EUItogoR_mc_  :Double;  //Итого расхода по МЦ
  EUVItogoR_mc_ :Double;  //Итого расхода по МЦ в валюте
  EUItogoI_mc_  :Double;  //Итого исх. по МЦ
  EUVItogoI_mc_ :Double;  //Итого исх. по МЦ в валюте

  EUItogo_gr    :Double;  //Итого вход по группе МЦ
  EUVItogo_gr   :Double;  //Итого вход по группе МЦ в валюте
  EUItogoP_gr   :Double;  //Итого приход по группе МЦ
  EUVItogoP_gr  :Double;  //Итого приход по группе МЦ в валюте
  EUItogoR_gr   :Double;  //Итого расход по группе МЦ
  EUVItogoR_gr  :Double;  //Итого расход по группе МЦ в валюте
  EUItogoI_gr   :Double;  //Итого исход расход по группе МЦ
  EUVItogoI_gr  :Double;  //Итого исход расход по группе МЦ в валюте

  EUItogo_gr_   :Double;  //Итого вход по группе МЦ
  EUVItogo_gr_  :Double;  //Итого вход по группе МЦ в валюте
  EUItogoP_gr_  :Double;  //Итого приход по группе МЦ
  EUVItogoP_gr_ :Double;  //Итого приход по группе МЦ в валюте
  EUItogoR_gr_  :Double;  //Итого расход по группе МЦ
  EUVItogoR_gr_ :Double;  //Итого расход по группе МЦ в валюте
  EUItogoI_gr_  :Double;  //Итого исход расход по группе МЦ
  EUVItogoI_gr_ :Double;  //Итого исход расход по группе МЦ в валюте

  EUItogo_r     :Double;  //Итого вход по разрезу
  EUVItogo_r    :Double;  //Итого вход по разрезу в валюте
  EUItogoP_r    :Double;  //Итого приход по разрезу
  EUVItogoP_r   :Double;  //Итого приход по разрезу в валюте
  EUItogoR_r    :Double;  //Итого расход по разрезу
  EUVItogoR_r   :Double;  //Итого расход по разрезу в валюте
  EUItogoI_r    :Double;  //Итого исход по разрезу
  EUVItogoI_r   :Double;  //Итого исход по разрезу в валюте

  EUItogo_r_    :Double;  //Итого вход по разрезу
  EUVItogo_r_   :Double;  //Итого вход по разрезу в валюте
  EUItogoP_r_   :Double;  //Итого приход по разрезу
  EUVItogoP_r_  :Double;  //Итого приход по разрезу в валюте
  EUItogoR_r_   :Double;  //Итого расход по разрезу
  EUVItogoR_r_  :Double;  //Итого расход по разрезу в валюте
  EUItogoI_r_   :Double;  //Итого исход по разрезу
  EUVItogoI_r_  :Double;  //Итого исход по разрезу в валюте

  EUItogo       :Double;  //Итого вход по предприятию
  EUVItogo      :Double;  //Итого вход по предприятию в валюте
  EUItogoP      :Double;  //Итого приход по предприятию
  EUVItogoP     :Double;  //Итого приход по предприятию в валюте
  EUItogoR      :Double;  //Итого расход по предприятию
  EUVItogoR     :Double;  //Итого расход по предприятию в валюте
  EUItogoI      :Double;  //Итого исход по предприятию
  EUVItogoI     :Double;  //Итого исход по предприятию в валюте

  EUItogo_      :Double;  //Итого вход по предприятию
  EUVItogo_     :Double;  //Итого вход по предприятию в валюте
  EUItogoP_     :Double;  //Итого приход по предприятию
  EUVItogoP_    :Double;  //Итого приход по предприятию в валюте
  EUItogoR_     :Double;  //Итого расход по предприятию
  EUVItogoR_    :Double;  //Итого расход по предприятию в валюте
  EUItogoI_     :Double;  //Итого исход по предприятию
  EUVItogoI_    :Double;  //Итого исход по предприятию в валюте

  EUKVh         :Double;  //Количество EU входящее
  EUKPrih       :Double;  //Кол-во EU прихода
  EUKRash       :Double;  //Количество EU расхода
  EUKIsh        :Double;  //Исходящий EU остаток

  Itogo_RezMC   :Double;  //Резерв по МЦ

.endvar

.procedure FSRoundRub(var s:double);
begin
 s:=FRoundRub5(s);
end.

.procedure FSRoundVal(var s:double);
begin
 s:=FRoundVal5(s);
end.

!*****************************************************************************
!*********************** Данные **********************************************
.fields
  dDate :Date        //Дата отчета
  dDate2 :Date       //Дата окончания периода

  typePrices :Word   //0 - учетные цены; 1 - цены реализации

  VNTar :String      //Наименование вал. для отчетов
  VNBase :String     //Наименование базовой валюты

!.{
!. {
!. if RzRepMCNeedGroup1
     NameGroup :String  //Наименование группы МЦ
     KodGroup :String   //Код группы МЦ
!. end

!.   {
!.  if RzRepMCNeedObj1
      NameMC :String     //Наименование товара
      CodeMC :String     //Бар-код товара
      NameEd :String     //ед. измерения
!.  end

!.  {
       TitlRazr1 :String  //строка: "подразделение", "МОЛ", "партия"
       NameRazr :String   //Наименование подразделения, МОЛ, партии
       CodeRazr :String   //Код -- // --
!.    {
       nDoc :String       //Номер документа прихода
       dDoc :Date         //Дата документа

       KontrName :String  //Контрагент(поставщик)
       KontrOKPO :String  //ОКПО контрагента

       KVh :Double        //Количество входящее
       KPrih :Double      //Кол-во прихода
       KRash :Double      //Количество расхода
       KMest :Double      //Количество в одном месте

       PriceU :Double     //Учетная цена
       VPriceU :Double    //Учетная цена в валюте
       PriceRoz :Double   //Розничная цена
       VPriceRoz :Double  //Розничная цена в валюте
       PriceR :Double     //Цена реализации
       VPriceR :Double    //Цена реализации в валюте

       KEU :Double        //Коэфф естественной убыли
       DelED :Word        //Делима ли ед. изм. ( 0 Да )
       rezerv :Double     //Резерв для наличия
!.    }
!.  }

!.  if RzRepMCNeedObj2
     TitlRazr2 :String  //строка: "подразделению", "МОЛ", "партии"
!.  end
!.   }
!.   if RzRepMCNeedGroup2
!.   end
!. }
!.}
.endfields

дата : ^
дата 2 : ^

какие цены печатать : ^
валюта для отчетов :  ^
базовая валюта :      ^

.{
.{
.if RzRepMCNeedGroup1
Наименование группы МЦ : ^
Код группы МЦ : ^
.end
.begin
Itogo_gr     := 0;
VItogo_gr    := 0;
ItogoP_gr    := 0;
VItogoP_gr   := 0;
ItogoR_gr    := 0;
MyItogoR_gr  := 0;
VItogoR_gr   := 0;

Itogo_gr_     := 0;
VItogo_gr_    := 0;
ItogoP_gr_    := 0;
VItogoP_gr_   := 0;
ItogoR_gr_    := 0;
VItogoR_gr_   := 0;

EUItogo_gr     := 0;
EUVItogo_gr    := 0;
EUItogoP_gr    := 0;
EUVItogoP_gr   := 0;
EUItogoR_gr    := 0;
EUVItogoR_gr   := 0;

EUItogo_gr_     := 0;
EUVItogo_gr_    := 0;
EUItogoP_gr_    := 0;
EUVItogoP_gr_   := 0;
EUItogoR_gr_    := 0;
EUVItogoR_gr_   := 0;
 end.
.{
.if RzRepMCNeedObj1
наименование товара : ^
код товара : ^
учетная единица измерения : ^
.end
.begin
  Itogo_r     := 0;
  VItogo_r    := 0;
  ItogoP_r    := 0;
  VItogoP_r   := 0;
  ItogoR_r    := 0;
  MyItogoR_r  := 0;
  VItogoR_r   := 0;

  Itogo_r_    := 0;
  VItogo_r_   := 0;
  ItogoP_r_   := 0;
  VItogoP_r_  := 0;
  ItogoR_r_   := 0;
  VItogoR_r_  := 0;

  EUItogo_r     := 0;
  EUVItogo_r    := 0;
  EUItogoP_r    := 0;
  EUVItogoP_r   := 0;
  EUItogoR_r    := 0;
  EUVItogoR_r   := 0;

  EUItogo_r_    := 0;
  EUVItogo_r_   := 0;
  EUItogoP_r_   := 0;
  EUVItogoP_r_  := 0;
  EUItogoR_r_   := 0;
  EUVItogoR_r_  := 0;
end.
.{
Подразделение, МОЛ или партия : ^
Наименование разреза : ^
Код разреза : ^
.begin
Itogo_mc     := 0;
VItogo_mc    := 0;
ItogoP_mc    := 0;
VItogoP_mc   := 0;
ItogoR_mc    := 0;
VItogoR_mc   := 0;

Itogo_mc_     := 0;
VItogo_mc_    := 0;
ItogoP_mc_    := 0;
VItogoP_mc_   := 0;
ItogoR_mc_    := 0;
VItogoR_mc_   := 0;

EUItogo_mc     := 0;
EUVItogo_mc    := 0;
EUItogoP_mc    := 0;
EUVItogoP_mc   := 0;
EUItogoR_mc    := 0;
EUVItogoR_mc   := 0;

EUItogo_mc_     := 0;
EUVItogo_mc_    := 0;
EUItogoP_mc_    := 0;
EUVItogoP_mc_   := 0;
EUItogoR_mc_    := 0;
EUVItogoR_mc_   := 0;

Itogo_RezMC := 0;

kItogo_mc   := 0;
kpItogo_mc  := 0;
krItogo_mc  := 0;
kiItogo_mc  := 0;

eItogo_mc   := 0;
epItogo_mc  := 0;
erItogo_mc  := 0;
eiItogo_mc  := 0;
 end.
.{
____________________________________________________________________________
Документ № :               ^
От :                       ^
Поставщик :                ^
ОКПО поставщика :          ^

Вх. количество :           ^
Количество прихода :       ^
Количество расхода :       ^
Количество в одном месте : ^

Учетная цена :             ^
Учетная цена в валюте :    ^
Розничная цена :           ^
Розничная цена в валюте :  ^
Цена реализации :          ^
Цена реализации в валюте : ^

KEU:    ^
DelED:  ^
Rezerv: ^
.begin

  EUKvh := if(DelED=2, Round((Kvh * KEU),3), Round((Kvh * KEU),0));
  EUKPrih := if(DelED=2, Round((KPrih * KEU),3), Round((KPrih * KEU),0));
  EUKRash := if(DelED=2, Round((KRash * KEU),3), Round((KRash * KEU),0));

  Summa :=PriceU * KVh;FSRoundRub(Summa);
  vSumma :=vPriceU * KVh;FSRoundVal(vSumma);

  SummaP :=PriceU * KPrih;FSRoundRub(vSummaP);
  vSummaP :=vPriceU * KPrih;FSRoundVal(vSummaP);

  SummaR :=PriceU * KRash;FSRoundRub(SummaR);
  vSummaR :=vPriceU * KRash;FSRoundVal(vSummaR);

  EUSumma :=PriceU * EUKVh;FSRoundRub(EUSumma);
  EUvSumma :=vPriceU * EUKVh;FSRoundVal(EUvSumma);

  EUSummaP :=PriceU * EUKPrih;FSRoundRub(EUSummaP);
  EUvSummaP :=vPriceU * EUKPrih;FSRoundVal(EUvSummaP);

  EUSummaR :=PriceU * EUKRash;FSRoundRub(EUSummaR);
  EUvSummaR :=vPriceU * EUKRash;FSRoundVal(EUvSummaR);

  Summa_ :=PriceR * KVh;FSRoundRub(Summa_);
  vSumma_ :=vPriceR * KVh;FSRoundVal(vSumma_);

  SummaP_ :=PriceR * KPrih;FSRoundRub(vSummaP_);
  vSummaP_ :=vPriceR * KPrih;FSRoundVal(vSummaP_);

  SummaR_ :=PriceR * KRash;FSRoundRub(SummaR_);
  vSummaR_ :=vPriceR * KRash;FSRoundVal(vSummaR_);

  EUSumma_ :=PriceR * EUKVh;FSRoundRub(EUSumma_);
  EUvSumma_ :=vPriceR * EUKVh;FSRoundVal(EUvSumma_);

  EUSummaP_ :=PriceR * EUKPrih;FSRoundRub(EUSummaP_);
  EUvSummaP_ :=vPriceR * EUKPrih;FSRoundVal(EUvSummaP_);

  EUSummaR_ :=PriceR * EUKRash;FSRoundRub(EUSummaR_);
  EUvSummaR_ :=vPriceR * EUKRash;FSRoundVal(EUvSummaR_);


  KIsh := KVh + KPrih - KRash;
  EUKIsh := EUKVh + EUKPrih - EUKRash;

  SummaI := Summa + SummaP - SummaR;
  vSummaI := vSumma + vSummaP - vSummaR;

  SummaI_ := Summa_ + SummaP_ - SummaR_;
  vSummaI_ := vSumma_ + vSummaP_ - vSummaR_;

  EUSummaI := EUSumma + EUSummaP - EUSummaR;
  EUvSummaI := EUvSumma + EUvSummaP - EUvSummaR;

  EUSummaI_ := EUSumma_ + EUSummaP_ - EUSummaR_;
  EUvSummaI_ := EUvSumma_ + EUvSummaP_ - EUvSummaR_;

  RozAdd := PriceRoz - PriceU;
  vRozAdd := vPriceRoz - vPriceU;
  SellTax := PriceR - PriceRoz;
  vSellTax := vPriceR - vPriceRoz;

  Itogo_mc := Itogo_mc + Summa;
  vItogo_mc := vItogo_mc + vSumma;
  ItogoP_mc := ItogoP_mc + SummaP;
  vItogoP_mc := vItogoP_mc + vSummaP;
  ItogoR_mc := ItogoR_mc + SummaR;
  vItogoR_mc := vItogoR_mc + vSummaR;

  Itogo_mc_ := Itogo_mc_ + Summa_;
  vItogo_mc_ := vItogo_mc_ + vSumma_;
  ItogoP_mc_ := ItogoP_mc_ + SummaP_;
  vItogoP_mc_ := vItogoP_mc_ + vSummaP_;
  ItogoR_mc_ := ItogoR_mc_ + SummaR_;
  vItogoR_mc_ := vItogoR_mc_ + vSummaR_;

  EUItogo_mc := EUItogo_mc + EUSumma;
  EUvItogo_mc := EUvItogo_mc + EUvSumma;
  EUItogoP_mc := EUItogoP_mc + EUSummaP;
  EUvItogoP_mc := EUvItogoP_mc + EUvSummaP;
  EUItogoR_mc := EUItogoR_mc + EUSummaR;
  EUvItogoR_mc := EUvItogoR_mc + EUvSummaR;

  EUItogo_mc_ := EUItogo_mc_ + EUSumma_;
  EUvItogo_mc_ := EUvItogo_mc_ + EUvSumma_;
  EUItogoP_mc_ := EUItogoP_mc_ + EUSummaP_;
  EUvItogoP_mc_ := EUvItogoP_mc_ + EUvSummaP_;
  EUItogoR_mc_ := EUItogoR_mc_ + EUSummaR_;
  EUvItogoR_mc_ := EUvItogoR_mc_ + EUvSummaR_;

  Itogo_RezMC := Itogo_RezMC + Rezerv;

  kItogo_mc  := kItogo_mc  + KVh;
  kpItogo_mc := kpItogo_mc + KPrih;
  krItogo_mc := krItogo_mc + KRash;
  kiItogo_mc := kiItogo_mc + KIsh;

  eItogo_mc  := eItogo_mc  + EUKVh;
  epItogo_mc := epItogo_mc + EUKPrih;
  erItogo_mc := erItogo_mc + EUKRash;
  eiItogo_mc := eiItogo_mc + EUKIsh;
 end.
.}
.begin
  ItogoI_mc := Itogo_mc + ItogoP_mc - ItogoR_mc;
  vItogoI_mc := vItogo_mc + vItogoP_mc - vItogoR_mc;
  Itogo_r := Itogo_r + Itogo_mc;
  vItogo_r := vItogo_r + vItogo_mc;
  ItogoP_r := ItogoP_r + ItogoP_mc;
  vItogoP_r := vItogoP_r + vItogoP_mc;
  ItogoR_r := ItogoR_gr + ItogoR_mc;
  MyItogoR_r := MyItogoR_r + ItogoR_mc;
  vItogoR_r := vItogoR_r + vItogoR_mc;

  ItogoI_mc_ := Itogo_mc_ + ItogoP_mc_ - ItogoR_mc_;
  vItogoI_mc_ := vItogo_mc_ + vItogoP_mc_ - vItogoR_mc_;
  Itogo_r_ := Itogo_r_ + Itogo_mc_;
  vItogo_r_ := vItogo_r_ + vItogo_mc_;
  ItogoP_r_ := ItogoP_r_ + ItogoP_mc_;
  vItogoP_r_ := vItogoP_r_ + vItogoP_mc_;
  ItogoR_r_ := ItogoR_r_ + ItogoR_mc_;
  vItogoR_r_ := vItogoR_r_ + vItogoR_mc_;


  EUItogoI_mc := EUItogo_mc + EUItogoP_mc - EUItogoR_mc;
  EUvItogoI_mc := EUvItogo_mc + EUvItogoP_mc - EUvItogoR_mc;
  EUItogo_r := EUItogo_r + EUItogo_mc;
  EUvItogo_r := EUvItogo_r + EUvItogo_mc;
  EUItogoP_r := EUItogoP_r + EUItogoP_mc;
  EUvItogoP_r := EUvItogoP_r + EUvItogoP_mc;
  EUItogoR_r := EUItogoR_r + EUItogoR_mc;
  EUvItogoR_r := EUvItogoR_r + EUvItogoR_mc;

  EUItogoI_mc_ := EUItogo_mc_ + EUItogoP_mc_ - EUItogoR_mc_;
  EUvItogoI_mc_ := EUvItogo_mc_ + EUvItogoP_mc_ - EUvItogoR_mc_;
  EUItogo_r_ := EUItogo_r_ + EUItogo_mc_;
  EUvItogo_r_ := EUvItogo_r_ + EUvItogo_mc_;
  EUItogoP_r_ := EUItogoP_r_ + EUItogoP_mc_;
  EUvItogoP_r_ := EUvItogoP_r_ + EUvItogoP_mc_;
  EUItogoR_r_ := EUItogoR_r_ + EUItogoR_mc_;
  EUvItogoR_r_ := EUvItogoR_r_ + EUvItogoR_mc_;

 end.
.}
.if RzRepMCNeedObj2
Подразделению, МОЛ или партии : ^
.end
.begin
  ItogoI_r := Itogo_r + ItogoP_r - ItogoR_r;
  MyItogoI_r := Itogo_r + ItogoP_r - MyItogoR_r;
  vItogoI_r := vItogo_r + vItogoP_r - vItogoR_r;
  Itogo_gr := Itogo_gr + Itogo_r;
  vItogo_gr := vItogo_gr + vItogo_r;
  ItogoP_gr := ItogoP_gr + ItogoP_r;
  vItogoP_gr := vItogoP_gr + vItogoP_r;
  ItogoR_gr := ItogoR_gr + ItogoR_r;
  MyItogoR_gr := MyItogoR_gr + MyItogoR_r;
  vItogoR_gr := vItogoR_gr + vItogoR_r;

  ItogoI_r_ := Itogo_r_ + ItogoP_r_ - ItogoR_r_;
  vItogoI_r_ := vItogo_r_ + vItogoP_r_ - vItogoR_r_;
  Itogo_gr_ := Itogo_gr_ + Itogo_r_;
  vItogo_gr_ := vItogo_gr_ + vItogo_r_;
  ItogoP_gr_ := ItogoP_gr_ + ItogoP_r_;
  vItogoP_gr_ := vItogoP_gr_ + vItogoP_r_;
  ItogoR_gr_ := ItogoR_gr_ + ItogoR_r_;
  vItogoR_gr_ := vItogoR_gr_ + vItogoR_r_;

  EUItogoI_r := EUItogo_r + EUItogoP_r - EUItogoR_r;
  EUvItogoI_r := EUvItogo_r + EUvItogoP_r - EUvItogoR_r;
  EUItogo_gr := EUItogo_gr + EUItogo_r;
  EUvItogo_gr := EUvItogo_gr + EUvItogo_r;
  EUItogoP_gr := EUItogoP_gr + EUItogoP_r;
  EUvItogoP_gr := EUvItogoP_gr + EUvItogoP_r;
  EUItogoR_gr := EUItogoR_gr + EUItogoR_r;
  EUvItogoR_gr := EUvItogoR_gr + EUvItogoR_r;

  EUItogoI_r_ := EUItogo_r_ + EUItogoP_r_ - EUItogoR_r_;
  EUvItogoI_r_ := EUvItogo_r_ + EUvItogoP_r_ - EUvItogoR_r_;
  EUItogo_gr_ := EUItogo_gr_ + EUItogo_r_;
  EUvItogo_gr_ := EUvItogo_gr_ + EUvItogo_r_;
  EUItogoP_gr_ := EUItogoP_gr_ + EUItogoP_r_;
  EUvItogoP_gr_ := EUvItogoP_gr_ + EUvItogoP_r_;
  EUItogoR_gr_ := EUItogoR_gr_ + EUItogoR_r_;
  EUvItogoR_gr_ := EUvItogoR_gr_ + EUvItogoR_r_;

 end.
.} //
.if RzRepMCNeedGroup2
.end
.begin
  ItogoI_gr := Itogo_gr + ItogoP_gr - ItogoR_gr;
  MyItogoI_gr := Itogo_gr + ItogoP_gr - MyItogoR_gr;
  vItogoI_gr := vItogo_gr + vItogoP_gr - vItogoR_gr;
  Itogo := Itogo_r + Itogo_gr;
  vItogo := vItogo + vItogo_gr;
  ItogoP := ItogoP + ItogoP_gr;
  vItogoP := vItogoP + vItogoP_gr;
  ItogoR := ItogoR + ItogoR_gr;
  MyItogoR := MyItogoR + MyItogoR_gr;
  vItogoR := vItogoR + vItogoR_gr;

  ItogoI_gr_ := Itogo_gr_ + ItogoP_gr_ - ItogoR_gr_;
  vItogoI_gr_ := vItogo_gr_ + vItogoP_gr_ - vItogoR_gr_;
  Itogo_ := Itogo_ + Itogo_gr_;
  vItogo_ := vItogo_ + vItogo_gr_;
  ItogoP_ := ItogoP_ + ItogoP_gr_;
  vItogoP_ := vItogoP_ + vItogoP_gr_;
  ItogoR_ := ItogoR_ + ItogoR_gr_;
  vItogoR_ := vItogoR_ + vItogoR_gr_;


  EUItogoI_gr := EUItogo_gr + EUItogoP_gr - EUItogoR_gr;
  EUvItogoI_gr := EUvItogo_gr + EUvItogoP_gr - EUvItogoR_gr;
  EUItogo := EUItogo + EUItogo_gr;
  EUvItogo := EUvItogo + EUvItogo_gr;
  EUItogoP := EUItogoP + EUItogoP_gr;
  EUvItogoP := EUvItogoP + EUvItogoP_gr;
  EUItogoR := EUItogoR + EUItogoR_gr;
  EUvItogoR := EUvItogoR + EUvItogoR_gr;

  EUItogoI_gr_ := EUItogo_gr_ + EUItogoP_gr_ - EUItogoR_gr_;
  EUvItogoI_gr_ := EUvItogo_gr_ + EUvItogoP_gr_ - EUvItogoR_gr_;
  EUItogo_ := EUItogo_ + EUItogo_gr_;
  EUvItogo_ := EUvItogo_ + EUvItogo_gr_;
  EUItogoP_ := EUItogoP_ + EUItogoP_gr_;
  EUvItogoP_ := EUvItogoP_ + EUvItogoP_gr_;
  EUItogoR_ := EUItogoR_ + EUItogoR_gr_;
  EUvItogoR_ := EUvItogoR_ + EUvItogoR_gr_;

 end.
.}
.}
.begin
  ItogoI := Itogo + ItogoP - ItogoR;
  MyItogoI := Itogo + ItogoP - MyItogoR;
  vItogoI := vItogo + vItogoP - vItogoR;

  EUItogoI := EUItogo + EUItogoP - EUItogoR;
  EUvItogoI := EUvItogo + EUvItogoP - EUvItogoR;

  ItogoI_ := Itogo_ + ItogoP_ - ItogoR_;
  vItogoI_ := vItogo_ + vItogoP_ - vItogoR_;

  EUItogoI_ := EUItogo_ + EUItogoP_ - EUItogoR_;
  EUvItogoI_ := EUvItogo_ + EUvItogoP_ - EUvItogoR_;

 end.

.endform