/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Розничная торговля                                        ║
 ║ Версия        : 5.70                                                      ║
 ║ Назначение    : Ведомости в розничной торговле                            ║
 ║ Ответственный : Пасовец Александр                                         ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
#doc
Ведомости в розничной торговле
#end
.set name='RozReports'
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
  VItogoR_gr    :Double;  //Итого расход по группе МЦ в валюте
  ItogoI_gr     :Double;  //Итого исход расход по группе МЦ
  VItogoI_gr    :Double;  //Итого исход расход по группе МЦ в валюте

  Itogo_gr_     :Double;  //Итого вход по группе МЦ
  VItogo_gr_    :Double;  //Итого вход по группе МЦ в валюте
  ItogoP_gr_    :Double;  //Итого приход по группе МЦ
  VItogoP_gr_   :Double;  //Итого приход по группе МЦ в валюте
  ItogoR_gr_    :Double;  //Итого расход по группе МЦ
  VItogoR_gr_   :Double;  //Итого расход по группе МЦ в валюте
  ItogoI_gr_    :Double;  //Итого исход расход по группе МЦ
  VItogoI_gr_   :Double;  //Итого исход расход по группе МЦ в валюте

  Itogo_gr2     :Double;  //Итого вход по группе МЦ
  VItogo_gr2    :Double;  //Итого вход по группе МЦ в валюте
  ItogoP_gr2    :Double;  //Итого приход по группе МЦ
  VItogoP_gr2   :Double;  //Итого приход по группе МЦ в валюте
  ItogoR_gr2    :Double;  //Итого расход по группе МЦ
  VItogoR_gr2   :Double;  //Итого расход по группе МЦ в валюте
  ItogoI_gr2    :Double;  //Итого исход расход по группе МЦ
  VItogoI_gr2   :Double;  //Итого исход расход по группе МЦ в валюте

  Itogo_gr2_    :Double;  //Итого вход по группе МЦ
  VItogo_gr2_   :Double;  //Итого вход по группе МЦ в валюте
  ItogoP_gr2_   :Double;  //Итого приход по группе МЦ
  VItogoP_gr2_  :Double;  //Итого приход по группе МЦ в валюте
  ItogoR_gr2_   :Double;  //Итого расход по группе МЦ
  VItogoR_gr2_  :Double;  //Итого расход по группе МЦ в валюте
  ItogoI_gr2_   :Double;  //Итого исход расход по группе МЦ
  VItogoI_gr2_  :Double;  //Итого исход расход по группе МЦ в валюте

  Itogo_r       :Double;  //Итого вход по разрезу
  VItogo_r      :Double;  //Итого вход по разрезу в валюте
  ItogoP_r      :Double;  //Итого приход по разрезу
  VItogoP_r     :Double;  //Итого приход по разрезу в валюте
  ItogoR_r      :Double;  //Итого расход по разрезу
  VItogoR_r     :Double;  //Итого расход по разрезу в валюте
  ItogoI_r      :Double;  //Итого исход по разрезу
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
  VItogoR       :Double;  //Итого расход по предприятию в валюте
  ItogoI        :Double;  //Итого исход по предприятию
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

  allKVh        :Double;
  allKPrih      :Double;
  allKRash      :Double;
  allKIsh       :Double;

  allg2KVh      :Double;
  allg2KPrih    :Double;
  allg2KRash    :Double;
  allg2KIsh     :Double;

  Itogo_RezMC   :Double;  //Резерв по МЦ

.endvar
//------------------------------------------------------------------------------
.Function FSRoundRub(var s:double) : double;
begin
  if wGetTune('Rozn.RBRoundSt') = 1 // по настройке числа знаков в дробной части при отображении стоимости
    FSRoundRub := Round(s, integer(wGetTune('Rozn.KolStoim')));
  else
   if wGetTune('Rozn.RBRound') = 1
   {
     //Делаем вызов так, как будто включена настройка:
     //"Правила округления\Прайс-листы\по спецалгоритму для РБ"
     FSRoundRub := fRoundAny(s, 1.0, 3);

     Exit;
   }
  else
    FSRoundRub := FRoundRubRozn(s);   //округление как в прайс-листах
end.

.Function FSRoundVal(var s:double) : double;
begin
 FSRoundVal := FRoundValRozn(s);
end.

!*****************************************************************************
!*********************** Данные **********************************************
.fields
  dDate :Date        //Дата отчета
  dDate2 :Date       //Дата окончания периода
  Nelik  : String

  OrgName  :String   //Наименование организации, адрес и телефон
  UNN      :String   //УНН
  OKPO     :String   //ОКПО
  OKDP     :String   //ОКДП
  Org_Bank :String   //Банковские реквизиты организации

  PodrName :String   //наименование подразделения

  MolName  :String   //Ф.И.О. материально ответственного лица
  MolTabN  :String   //табельный номер МОЛ
  MolDolg  :String   //должность МОЛ

  typePrices :Word   //0 - учетные цены; 1 - цены реализации

  VNTar :String      //Наименование вал. для отчетов
  VNBase :String     //Наименование базовой валюты

!.{
!. {
!.  if RzRepNeedObj1
     TitlRazr1 :String  //строка: "подразделение", "МОЛ", "партия"
     NameRazr  :String  //Наименование подразделения, МОЛ, партии
     CodeRazr  :String  //Код -- // --
!.  end

!.  {
!.   if RzRepNeedGroup1
      NameGroup :String  //Наименование группы МЦ
      KodGroup  :String  //Код группы МЦ
!.   end

!.  {
!.    if RzRepNeedGroup2a
       NameGroup2 :String  //Наименование группы2 МЦ
       KodGroup2  :String  //Код группы2 МЦ
!.    end

!.   {
      NameMCrec : comp
      NameMC    : String     //Наименование товара
      CodeMC    : String     //Бар-код товара
      NameEd    : String     //ед. измерения

!.    {
       nDoc :String       //Номер документа прихода
       dDoc :Date         //Дата документа

       KontrName :String  //Контрагент(поставщик)
       KontrOKPO :String  //ОКПО контрагента

       KVh   :Double      //Количество входящее
       KPrih :Double      //Кол-во прихода
       KRash :Double      //Количество расхода
       KMest :Double      //Количество в одном месте

       cObju     :comp    //Ссылка на объект учета: МОЛ, подр., партия
       pz        :Double  //Заводская цена
       pzv       :Double  //Заводская цена вал
       PriceZ    :Double  //Закупочная цена
       PriceU    :Double  //Учетная цена
       VPriceU   :Double  //Учетная цена в валюте
       RozAdd    :Double  //Розничная надбавка
       VRozAdd   :Double  //Розничная надбавка в валюте
       procRozAdd:Double  //процент розничной надбавки
       PriceRoz  :Double  //Розничная цена
       VPriceRoz :Double  //Розничная цена в валюте
       PriceR    :Double  //Цена реализации
       VPriceR   :Double  //Цена реализации в валюте

       vhodNDS   :Double  //Входящий НДС

       KEU    :Double     //Коэфф естественной убыли
       DelED  :Word       //Делима ли ед. изм. ( 0 Да )
       rezerv :Double     //Резерв для наличия
!.    }
!.   }

!.    if RzRepNeedGroup2b
!.    end
!.  }
!.   if RzRepNeedGroup2
!.   end
!.  }

!.  if RzRepNeedObj2
     TitlRazr2 :String  //строка: "подразделению", "МОЛ", "партии"
!.  end
!. }
!.}
.endfields

дата : ^
дата 2 : ^
неликвиды: ^

Наименование организации, адрес и телефон ^
УНН организации                           ^
ОКПО организации                          ^
ОКДП организации                          ^
Банковские реквизиты организации          ^

Подразделение       ^

Ф.И.О. МОЛ          ^
табельный номер МОЛ ^
должность МОЛ       ^

какие цены печатать : ^
валюта для отчетов :  ^
базовая валюта :      ^

.{
.{
.if RzRepNeedObj1
  Подразделение, МОЛ или партия : ^
  Наименование разреза : ^
  Код разреза : ^
.end
.begin
  Itogo_r     := 0;
  VItogo_r    := 0;
  ItogoP_r    := 0;
  VItogoP_r   := 0;
  ItogoR_r    := 0;
  VItogoR_r   := 0;
  ItogoI_r    := 0;
  VItogoI_r   := 0;

  Itogo_r_    := 0;
  VItogo_r_   := 0;
  ItogoP_r_   := 0;
  VItogoP_r_  := 0;
  ItogoR_r_   := 0;
  VItogoR_r_  := 0;
  ItogoI_r_   := 0;
  VItogoI_r_  := 0;

  EUItogo_r     := 0;
  EUVItogo_r    := 0;
  EUItogoP_r    := 0;
  EUVItogoP_r   := 0;
  EUItogoR_r    := 0;
  EUVItogoR_r   := 0;
  EUItogoI_r    := 0;
  EUVItogoI_r   := 0;

  EUItogo_r_    := 0;
  EUVItogo_r_   := 0;
  EUItogoP_r_   := 0;
  EUVItogoP_r_  := 0;
  EUItogoR_r_   := 0;
  EUVItogoR_r_  := 0;
  EUItogoI_r_   := 0;
  EUVItogoI_r_  := 0;
end.
.{
.if RzRepNeedGroup1
Наименование группы МЦ : ^
Код группы МЦ : ^
.end
.begin
allKVh    := 0;
allKPrih  := 0;
allKRash  := 0;
allKIsh   := 0;

Itogo_gr     := 0;
VItogo_gr    := 0;
ItogoP_gr    := 0;
VItogoP_gr   := 0;
ItogoR_gr    := 0;
VItogoR_gr   := 0;
ItogoI_gr    := 0;
VItogoI_gr   := 0;

Itogo_gr_     := 0;
VItogo_gr_    := 0;
ItogoP_gr_    := 0;
VItogoP_gr_   := 0;
ItogoR_gr_    := 0;
VItogoR_gr_   := 0;
ItogoI_gr_    := 0;
VItogoI_gr_   := 0;

EUItogo_gr     := 0;
EUVItogo_gr    := 0;
EUItogoP_gr    := 0;
EUVItogoP_gr   := 0;
EUItogoR_gr    := 0;
EUVItogoR_gr   := 0;
EUItogoI_gr    := 0;
EUVItogoI_gr   := 0;

EUItogo_gr_     := 0;
EUVItogo_gr_    := 0;
EUItogoP_gr_    := 0;
EUVItogoP_gr_   := 0;
EUItogoR_gr_    := 0;
EUVItogoR_gr_   := 0;
EUItogoI_gr_    := 0;
EUVItogoI_gr_   := 0;
 end.
.{
.if RzRepNeedGroup2a
Наименование группы МЦ2 : ^
Код группы МЦ2 : ^
.end
.begin

allg2KVh     := 0;
allg2KPrih   := 0;
allg2KRash   := 0;
allg2KIsh    := 0;

Itogo_gr2    := 0;
VItogo_gr2   := 0;
ItogoP_gr2   := 0;
VItogoP_gr2  := 0;
ItogoR_gr2   := 0;
VItogoR_gr2  := 0;
ItogoI_gr2   := 0;
VItogoI_gr2  := 0;

Itogo_gr2_   := 0;
VItogo_gr2_  := 0;
ItogoP_gr2_  := 0;
VItogoP_gr2_ := 0;
ItogoR_gr2_  := 0;
VItogoR_gr2_ := 0;
ItogoI_gr2_  := 0;
VItogoI_gr2_ := 0;

 end.
.{
nRec товара : ^
наименование товара : ^
код товара : ^
учетная единица измерения : ^
.begin
Itogo_mc     := 0;
VItogo_mc    := 0;
ItogoP_mc    := 0;
VItogoP_mc   := 0;
ItogoR_mc    := 0;
VItogoR_mc   := 0;
ItogoI_mc    := 0;
VItogoI_mc   := 0;

Itogo_mc_    := 0;
VItogo_mc_   := 0;
ItogoP_mc_   := 0;
VItogoP_mc_  := 0;
ItogoR_mc_   := 0;
VItogoR_mc_  := 0;
ItogoI_mc_   := 0;
VItogoI_mc_  := 0;

EUItogo_mc   := 0;
EUVItogo_mc  := 0;
EUItogoP_mc  := 0;
EUVItogoP_mc := 0;
EUItogoR_mc  := 0;
EUVItogoR_mc := 0;
EUItogoI_mc  := 0;
EUVItogoI_mc := 0;

EUItogo_mc_  := 0;
EUVItogo_mc_ := 0;
EUItogoP_mc_ := 0;
EUVItogoP_mc_:= 0;
EUItogoR_mc_ := 0;
EUVItogoR_mc_:= 0;
EUItogoI_mc_ := 0;
EUVItogoI_mc_:= 0;

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
Документ N :               ^
От :                       ^
Поставщик :                ^
ОКПО поставщика :          ^

Вх. количество :           ^
Количество прихода :       ^
Количество расхода :       ^
Количество в одном месте : ^

Ссылка на объект учета     ^
Заводская цена             ^
Заводская цена вал         ^
Закупочная цена :          ^
Учетная цена :             ^
Учетная цена в валюте :    ^
Розничная надбавка       : ^
Розничная надбавка в вал : ^
Процент розничной надбавки ^
Розничная цена :           ^
Розничная цена в валюте :  ^
Цена реализации :          ^
Цена реализации в валюте : ^

Входящий НДС :             ^

KEU:    ^
DelED:  ^
Rezerv: ^
.begin

  EUKvh   := if(DelED=2, Round((Kvh * KEU),3), Round((Kvh * KEU),0));
  EUKPrih := if(DelED=2, Round((KPrih * KEU),3), Round((KPrih * KEU),0));
  EUKRash := if(DelED=2, Round((KRash * KEU),3), Round((KRash * KEU),0));

  KIsh    := KVh + KPrih - KRash;
  EUKIsh  := EUKVh + EUKPrih - EUKRash;

  Summa   := PriceU  * KVh;
  vSumma  := vPriceU * KVh;
  SummaP  := PriceU  * KPrih;
  vSummaP := vPriceU * KPrih;
  SummaR  := PriceU  * KRash;
  vSummaR := vPriceU * KRash;
  SummaI  := Summa   + SummaP  - SummaR ;
  vSummaI := vSumma  + vSummaP - vSummaR;
   Summa  := FSRoundRub(Summa);
  vSumma  := FSRoundVal(vSumma);
   SummaP := FSRoundRub(SummaP);
  vSummaP := FSRoundVal(vSummaP);
   SummaR := FSRoundRub(SummaR);
  vSummaR := FSRoundVal(vSummaR);
  SummaI  := FSRoundRub(SummaI );
  vSummaI := FSRoundVal(vSummaI);

  EUSumma   := PriceU   * EUKVh;
  EUvSumma  := vPriceU  * EUKVh;
  EUSummaP  := PriceU   * EUKPrih;
  EUvSummaP := vPriceU  * EUKPrih;
  EUSummaR  := PriceU   * EUKRash;
  EUvSummaR := vPriceU  * EUKRash;
  EUSummaI  := EUSumma  + EUSummaP  - EUSummaR ;
  EUvSummaI := EUvSumma + EUvSummaP - EUvSummaR;
  EUSumma   := FSRoundRub(EUSumma);
  EUvSumma  := FSRoundVal(EUvSumma);
  EUSummaP  := FSRoundRub(EUSummaP);
  EUvSummaP := FSRoundVal(EUvSummaP);
  EUSummaR  := FSRoundRub(EUSummaR);
  EUvSummaR := FSRoundVal(EUvSummaR);
  EUSummaI  := FSRoundRub(EUSummaI );
  EUvSummaI := FSRoundVal(EUvSummaI);

  Summa_   := PriceR  * KVh;
  vSumma_  := vPriceR * KVh;
  SummaP_  := PriceR  * KPrih;
  vSummaP_ := vPriceR * KPrih;
  SummaR_  := PriceR  * KRash;
  vSummaR_ := vPriceR * KRash;
  SummaI_  := Summa_  + SummaP_  - SummaR_ ;
  vSummaI_ := vSumma_ + vSummaP_ - vSummaR_;
   Summa_  := FSRoundRub(Summa_);
  vSumma_  := FSRoundVal(vSumma_);
   SummaP_ := FSRoundRub(SummaP_);
  vSummaP_ := FSRoundVal(vSummaP_);
   SummaR_ := FSRoundRub(SummaR_);
  vSummaR_ := FSRoundVal(vSummaR_);
  SummaI_  := FSRoundRub(SummaI_ );
  vSummaI_ := FSRoundVal(vSummaI_);



  EUSumma_   := PriceR    * EUKVh;
  EUvSumma_  := vPriceR   * EUKVh;
  EUSummaP_  := PriceR    * EUKPrih;
  EUvSummaP_ := vPriceR   * EUKPrih;
  EUSummaR_  := PriceR    * EUKRash;
  EUvSummaR_ := vPriceR   * EUKRash;
  EUSummaI_  := EUSumma_  + EUSummaP_  - EUSummaR_ ;
  EUvSummaI_ := EUvSumma_ + EUvSummaP_ - EUvSummaR_;
  EUSumma_   := FSRoundRub(EUSumma_);
  EUvSumma_  := FSRoundVal(EUvSumma_);
  EUSummaP_  := FSRoundRub(EUSummaP_);
  EUvSummaP_ := FSRoundVal(EUvSummaP_);
  EUSummaR_  := FSRoundRub(EUSummaR_);
  EUvSummaR_ := FSRoundVal(EUvSummaR_);
  EUSummaI_  := FSRoundRub(EUSummaI_ );
  EUvSummaI_ := FSRoundVal(EUvSummaI_);

  SellTax  := PriceR - PriceRoz;
  vSellTax := vPriceR - vPriceRoz;

  Itogo_mc  := Itogo_mc + Summa;
  vItogo_mc := vItogo_mc + vSumma;
  ItogoP_mc := ItogoP_mc + SummaP;
  vItogoP_mc := vItogoP_mc + vSummaP;
  ItogoR_mc  := ItogoR_mc  + SummaR ;
  vItogoR_mc := vItogoR_mc + vSummaR;
  ItogoI_mc  := ItogoI_mc  + SummaI ;
  vItogoI_mc := vItogoI_mc + vSummaI;

  Itogo_mc_  := Itogo_mc_ + Summa_;
  vItogo_mc_ := vItogo_mc_ + vSumma_;
  ItogoP_mc_ := ItogoP_mc_ + SummaP_;
  vItogoP_mc_ := vItogoP_mc_ + vSummaP_;
  ItogoR_mc_  := ItogoR_mc_  + SummaR_ ;
  vItogoR_mc_ := vItogoR_mc_ + vSummaR_;
  ItogoI_mc_  := ItogoI_mc_  + SummaI_ ;
  vItogoI_mc_ := vItogoI_mc_ + vSummaI_;

  EUItogo_mc  := EUItogo_mc  + EUSumma;
  EUvItogo_mc := EUvItogo_mc + EUvSumma;
  EUItogoP_mc := EUItogoP_mc + EUSummaP;
  EUvItogoP_mc := EUvItogoP_mc + EUvSummaP;
  EUItogoR_mc  := EUItogoR_mc  + EUSummaR;
  EUvItogoR_mc := EUvItogoR_mc + EUvSummaR;
  EUItogoI_mc  := EUItogoI_mc  + EUSummaI;
  EUvItogoI_mc := EUvItogoI_mc + EUvSummaI;

  EUItogo_mc_  := EUItogo_mc_  + EUSumma_;
  EUvItogo_mc_ := EUvItogo_mc_ + EUvSumma_;
  EUItogoP_mc_ := EUItogoP_mc_ + EUSummaP_;
  EUvItogoP_mc_ := EUvItogoP_mc_ + EUvSummaP_;
  EUItogoR_mc_  := EUItogoR_mc_  + EUSummaR_;
  EUvItogoR_mc_ := EUvItogoR_mc_ + EUvSummaR_;
  EUItogoI_mc_  := EUItogoI_mc_  + EUSummaI_;
  EUvItogoI_mc_ := EUvItogoI_mc_ + EUvSummaI_;

  Itogo_RezMC := Itogo_RezMC + Rezerv;

  kItogo_mc  := kItogo_mc  + KVh;
  kpItogo_mc := kpItogo_mc + KPrih;
  krItogo_mc := krItogo_mc + KRash;
  kiItogo_mc := kiItogo_mc + KIsh;

  eItogo_mc  := eItogo_mc  + EUKVh;
  epItogo_mc := epItogo_mc + EUKPrih;
  erItogo_mc := erItogo_mc + EUKRash;
  eiItogo_mc := eiItogo_mc + EUKIsh;

  allKVh   := allKVh   + KVh;
  allKPrih := allKPrih + KPrih;
  allKRash := allKRash + KRash;
  allKIsh  := allKIsh  + KIsh;

  allg2KVh   := allg2KVh   + KVh;
  allg2KPrih := allg2KPrih + KPrih;
  allg2KRash := allg2KRash + KRash;
  allg2KIsh  := allg2KIsh  + KIsh;

 end.
.}
.begin
  Itogo_gr   := Itogo_gr   + Itogo_mc;
  vItogo_gr  := vItogo_gr  + vItogo_mc;
  ItogoP_gr  := ItogoP_gr  + ItogoP_mc;
  vItogoP_gr := vItogoP_gr + vItogoP_mc;
  ItogoR_gr  := ItogoR_gr  + ItogoR_mc;
  vItogoR_gr := vItogoR_gr + vItogoR_mc;
  ItogoI_gr  := ItogoI_gr  + ItogoI_mc;
  vItogoI_gr := vItogoI_gr + vItogoI_mc;

  Itogo_gr_   := Itogo_gr_   + Itogo_mc_;
  vItogo_gr_  := vItogo_gr_  + vItogo_mc_;
  ItogoP_gr_  := ItogoP_gr_  + ItogoP_mc_;
  vItogoP_gr_ := vItogoP_gr_ + vItogoP_mc_;
  ItogoR_gr_  := ItogoR_gr_  + ItogoR_mc_;
  vItogoR_gr_ := vItogoR_gr_ + vItogoR_mc_;
  ItogoI_gr_  := ItogoI_gr_  + ItogoI_mc_;
  vItogoI_gr_ := vItogoI_gr_ + vItogoI_mc_;

  Itogo_gr2   := Itogo_gr2   + Itogo_mc;
  vItogo_gr2  := vItogo_gr2  + vItogo_mc;
  ItogoP_gr2  := ItogoP_gr2  + ItogoP_mc;
  vItogoP_gr2 := vItogoP_gr2 + vItogoP_mc;
  ItogoR_gr2  := ItogoR_gr2  + ItogoR_mc;
  vItogoR_gr2 := vItogoR_gr2 + vItogoR_mc;
  ItogoI_gr2  := ItogoI_gr2  + ItogoI_mc;
  VItogoI_gr2 := VItogoI_gr2 + vItogoI_mc;

  Itogo_gr2_   := Itogo_gr2_   + Itogo_mc_;
  vItogo_gr2_  := vItogo_gr2_  + vItogo_mc_;
  ItogoP_gr2_  := ItogoP_gr2_  + ItogoP_mc_;
  vItogoP_gr2_ := vItogoP_gr2_ + vItogoP_mc_;
  ItogoR_gr2_  := ItogoR_gr2_  + ItogoR_mc_;
  vItogoR_gr2_ := vItogoR_gr2_ + vItogoR_mc_;
  ItogoI_gr2_  := ItogoI_gr2_  + ItogoI_mc_;
  VItogoI_gr2_ := VItogoI_gr2_ + vItogoI_mc_;

  EUItogo_gr   := EUItogo_gr   + EUItogo_mc;
  EUvItogo_gr  := EUvItogo_gr  + EUvItogo_mc;
  EUItogoP_gr  := EUItogoP_gr  + EUItogoP_mc;
  EUvItogoP_gr := EUvItogoP_gr + EUvItogoP_mc;
  EUItogoR_gr  := EUItogoR_gr  + EUItogoR_mc;
  EUvItogoR_gr := EUvItogoR_gr + EUvItogoR_mc;
  EUItogoI_gr  := EUItogoI_gr  + EUItogoI_mc;
  EUvItogoI_gr := EUvItogoI_gr + EUvItogoI_mc;

  EUItogo_gr_   := EUItogo_gr_   + EUItogo_mc_;
  EUvItogo_gr_  := EUvItogo_gr_  + EUvItogo_mc_;
  EUItogoP_gr_  := EUItogoP_gr_  + EUItogoP_mc_;
  EUvItogoP_gr_ := EUvItogoP_gr_ + EUvItogoP_mc_;
  EUItogoR_gr_  := EUItogoR_gr_  + EUItogoR_mc_;
  EUvItogoR_gr_ := EUvItogoR_gr_ + EUvItogoR_mc_;
  EUItogoI_gr_  := EUItogoI_gr_  + EUItogoI_mc_;
  EUvItogoI_gr_ := EUvItogoI_gr_ + EUvItogoI_mc_;

 end.
.}
.if RzRepNeedGroup2b
.end
.}
.if RzRepNeedGroup2
.end
.begin
  Itogo_r  := Itogo_r  + Itogo_gr;
  vItogo_r := vItogo_r + vItogo_gr;
  ItogoP_r := ItogoP_r + ItogoP_gr;
  vItogoP_r := vItogoP_r + vItogoP_gr;
  ItogoR_r  := ItogoR_r  + ItogoR_gr;
  vItogoR_r := vItogoR_r + vItogoR_gr;
  ItogoI_r  := ItogoI_r  + ItogoI_gr;
  vItogoI_r := vItogoI_r + vItogoI_gr;

  Itogo_r_  := Itogo_r_  + Itogo_gr_;
  vItogo_r_ := vItogo_r_ + vItogo_gr_;
  ItogoP_r_ := ItogoP_r_ + ItogoP_gr_;
  vItogoP_r_ := vItogoP_r_ + vItogoP_gr_;
  ItogoR_r_  := ItogoR_r_  + ItogoR_gr_;
  vItogoR_r_ := vItogoR_r_ + vItogoR_gr_;
  ItogoI_r_  := ItogoI_r_  + ItogoI_gr_;
  vItogoI_r_ := vItogoI_r_ + vItogoI_gr_;

  EUItogo_r  := EUItogo_r  + EUItogo_gr;
  EUvItogo_r := EUvItogo_r + EUvItogo_gr;
  EUItogoP_r := EUItogoP_r + EUItogoP_gr;
  EUvItogoP_r := EUvItogoP_r + EUvItogoP_gr;
  EUItogoR_r  := EUItogoR_r  + EUItogoR_gr;
  EUvItogoR_r := EUvItogoR_r + EUvItogoR_gr;
  EUItogoI_r  := EUItogoI_r  + EUItogoI_gr;
  EUvItogoI_r := EUvItogoI_r + EUvItogoI_gr;

  EUItogo_r_  := EUItogo_r_  + EUItogo_gr_;
  EUvItogo_r_ := EUvItogo_r_ + EUvItogo_gr_;
  EUItogoP_r_ := EUItogoP_r_ + EUItogoP_gr_;
  EUvItogoP_r_ := EUvItogoP_r_ + EUvItogoP_gr_;
  EUItogoR_r_  := EUItogoR_r_  + EUItogoR_gr_;
  EUvItogoR_r_ := EUvItogoR_r_ + EUvItogoR_gr_;
  EUItogoI_r_  := EUItogoI_r_  + EUItogoI_gr_;
  EUvItogoI_r_ := EUvItogoI_r_ + EUvItogoI_gr_;

 end.
.}
.if RzRepNeedObj2
Подразделению, МОЛ или партии : ^
.end
.begin
  Itogo  := Itogo  + Itogo_r;
  vItogo := vItogo + vItogo_r;
  ItogoP := ItogoP + ItogoP_r;
  vItogoP := vItogoP + vItogoP_r;
  ItogoR  := ItogoR  + ItogoR_r;
  vItogoR := vItogoR + vItogoR_r;
  ItogoI  := ItogoI  + ItogoI_r;
  vItogoI := vItogoI + vItogoI_r;

  Itogo_  := Itogo_  + Itogo_r_;
  vItogo_ := vItogo_ + vItogo_r_;
  ItogoP_ := ItogoP_ + ItogoP_r_;
  vItogoP_ := vItogoP_ + vItogoP_r_;
  ItogoR_  := ItogoR_  + ItogoR_r_;
  vItogoR_ := vItogoR_ + vItogoR_r_;
  ItogoI_  := ItogoI_  + ItogoI_r_;
  vItogoI_ := vItogoI_ + vItogoI_r_;

  EUItogo  := EUItogo  + EUItogo_r;
  EUvItogo := EUvItogo + EUvItogo_r;
  EUItogoP := EUItogoP + EUItogoP_r;
  EUvItogoP := EUvItogoP + EUvItogoP_r;
  EUItogoR  := EUItogoR  + EUItogoR_r;
  EUvItogoR := EUvItogoR + EUvItogoR_r;
  EUItogoI  := EUItogoI  + EUItogoI_r;
  EUvItogoI := EUvItogoI + EUvItogoI_r;

  EUItogo_  := EUItogo_  + EUItogo_r_;
  EUvItogo_ := EUvItogo_ + EUvItogo_r_;
  EUItogoP_ := EUItogoP_ + EUItogoP_r_;
  EUvItogoP_ := EUvItogoP_ + EUvItogoP_r_;
  EUItogoR_  := EUItogoR_  + EUItogoR_r_;
  EUvItogoR_ := EUvItogoR_ + EUvItogoR_r_;
  EUItogoI_  := EUItogoI_  + EUItogoI_r_;
  EUvItogoI_ := EUvItogoI_ + EUvItogoI_r_;
 end.
.}
.}
.begin

 end.

.endform