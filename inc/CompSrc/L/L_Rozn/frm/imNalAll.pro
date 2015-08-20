!╔═══════════════════════════════════════════════════════════════════════════╗
!║                     (c) 1994,2001 корпорация ГАЛАКТИКА                    ║
!║ Проект        : ГАЛАКТИКА                                                 ║
!║ Система       : Имущество                                                 ║
!║ Версия        : 5.80                                                      ║
!║ Назначение    : Ведомости наличия имущества                               ║
!║ Ответственный : Макс Голдин                                               ║
!╚═══════════════════════════════════════════════════════════════════════════╝



#doc
Ведомости наличия имущества
#end
.set name='imNalAll'
.hide
.var
   Summa        :Double;  //Сумма входящая
  VSumma        :Double;  //Сумма входящая

   Itogo_mc_kol :Double;  //Итого количества по МЦ
   Itogo_mc     :Double;  //Итого вход. по МЦ
  vItogo_mc     :Double;  //Итого вход. по МЦ в валюте

   Itogo_gr     :Double;  //Итого вход по группе МЦ
  vItogo_gr     :Double;  //Итого вход по группе МЦ в валюте

   Itogo_r      :Double;  //Итого вход по разрезу
  vItogo_r      :Double;  //Итого вход по разрезу в валюте

   Itogo        :Double;  //Итого вход по предприятию
  vItogo        :Double;  //Итого вход по предприятию в валюте

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
!.  if ImRepNeedObj1
     TitlRazr1 :String  //строка: "подразделение", "МОЛ", "партия"
     NameRazr :String   //Наименование подразделения, МОЛ, партии
     CodeRazr :String   //Код -- // --
!.  end

!.  {
!.   if ImRepNeedGroup1
      NameGroup :String  //Наименование группы МЦ
      KodGroup :String   //Код группы МЦ
!.   end

!.   {
      NameMC :String     //Наименование товара
      CodeMC :String     //Бар-код товара
      NameEd :String     //ед. измерения

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
!.   }

!.   if ImRepNeedGroup2
!.   end
!.  }

!.  if ImRepNeedObj2
     TitlRazr2 :String  //строка: "подразделению", "МОЛ", "партии"
!.  end
!. }
!.}
.endfields

дата : ^
дата 2 : ^

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
.if ImRepNeedObj1
  Подразделение, МОЛ или партия : ^
  Наименование разреза : ^
  Код разреза : ^
.end
.begin
  Itogo_r     := 0;
  vItogo_r    := 0;
end.
.{
.if ImRepNeedGroup1
Наименование группы МЦ : ^
Код группы МЦ : ^
.end
.begin
  Itogo_gr     := 0;
  vItogo_gr    := 0;
end.
.{
наименование товара : ^
код товара : ^
учетная единица измерения : ^
.begin
  Itogo_mc_kol := 0;
  Itogo_mc     := 0;
  vItogo_mc    := 0;

  Itogo_RezMC :=0;
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
  Summa :=PriceU * KVh;FSRoundRub(Summa);
  vSumma :=vPriceU * KVh;FSRoundVal(vSumma);

  Itogo_mc_kol := Itogo_mc_kol + KVh;
  Itogo_mc := Itogo_mc + Summa;
  vItogo_mc := vItogo_mc + vSumma;

  Itogo_RezMC :=Itogo_RezMC + Rezerv;
end.
.}
.begin
  Itogo_gr := Itogo_gr + Itogo_mc;
  vItogo_gr := vItogo_gr + vItogo_mc;
end.
.}
.if ImRepNeedGroup2
.end
.begin
  Itogo_r := Itogo_r + Itogo_gr;
  vItogo_r := vItogo_r + vItogo_gr;
end.
.}
.if ImRepNeedObj2
Подразделению, МОЛ или партии : ^
.end
.begin
  Itogo := Itogo + Itogo_r;
  vItogo := vItogo + vItogo_r;
end.
.}
.}
.endform