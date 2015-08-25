
#doc
Инвентаризационно-расчетная ведомость
#end
.AutoForm 'Inv_Vedomost'
.NameInList "Беларусь.Деноминация(НДС 8,26)"
.DEFO LANDSCAPE
.P 60
.Var
  dbl5, dbl8, my_NDS: double;
  wNum: word;
.EndVar
.Create view Inv_Ved
from
    KatOrg  (ReadOnly)
  , Pick    (Accelerate)
  ,kated ,katmc ,katmol ,katpodr ,tmpsaldo1
where
((
  coGetTune('MyOrg') ==   KatOrg.nRec
))
;
.Create view Inv_Ved_ex
as select
    TmpSaldo1.Kol
  , TmpSaldo1.Price
  , TmpSaldo1.cPodr
  , TmpSaldo1.cMOL
  , TmpSaldo1.cMC
  , KatPodr.Name
  , KatMol.Name
  , KatMC.Name
  , KatMC.BarKod
  , KatMC.kGroupMC
  , KatEd.Name
from
    tmpSaldo1
  , KatPodr   (ReadOnly)
  , KatMOL    (ReadOnly)
  , KatMC     (ReadOnly)
  , KatEd     (ReadOnly)
  ,katorg
where
((
      tmpSaldo1.cPodr    == KatPodr.nRec
  and tmpSaldo1.cMOL     == KatMOL.nRec
  and tmpSaldo1.cMC      == KatMC.nRec
  and KatMC.cEd          == KatEd.nRec
))
order EXTERNAL by KatPodr.Name   (length=30), tmpSaldo1.cPodr,
                  KatMOL.Name    (length=30), tmpSaldo1.cMOL,
                  KatMC.Name     (length=30), tmpSaldo1.cMC
;
.fields
  CommonFormHeader
  KatOrg.Name

  inv_ved_ex.KatPodr.Name
  inv_ved_ex.KatMOL.Name

  wNum
    inv_ved_ex.KatMC.Name
    inv_ved_ex.KatMC.BarKod

    inv_ved_ex.KatMC.KGroupMC
    inv_ved_ex.KatEd.Name
     dbl5

      inv_ved_ex.tmpSaldo1.Price
      my_NDS
      dbl8
      (inv_ved_ex.tmpSaldo1.Price - dbl8)
      inv_ved_ex.tmpSaldo1.Kol
      (dbl5 * inv_ved_ex.tmpSaldo1.Kol)
      (inv_ved_ex.tmpSaldo1.Price * inv_ved_ex.tmpSaldo1.Kol)
.endfields
.begin
 delete Pick where ((word(11) == Pick.wList));
 delete Pick where ((word(8)  == Pick.wList)) ;
 delete Pick where ((word(7)  == Pick.wList)) ;
 delete Pick where ((word(10) == Pick.wList));
 if (RunInterface('GetSome_Any',LongInt(1+2+4+8)) = 11)
    {
    Inv_Vedomost.fExit ;
    Exit;
    }
 var myd: date;
 myd := Cur_Date;
 my_NDS := 8.26;
 if(RunDialog('GetFormNaNDS', myd, my_NDS) = 11) {
   Inv_Vedomost.fExit ;
   Exit;
 };


 var PickPodr, PickMOL, PickMC, PickParty: boolean;
 PickPodr :=false;
 PickMOL  :=false;
 PickMC   :=false;
 PickParty:=false;
 if (GetFirst Pick where ((word(11) == Pick.wList))=0)
   PickPodr:=true;
 if (GetFirst Pick where ((word(8) == Pick.wList))=0)
   PickMOL:=true;
 if (GetFirst Pick where ((word(7) == Pick.wList))=0)
   PickMC:=true;
 if (GetFirst Pick where ((word(10) == Pick.wList))=0)
   PickParty:=true;

 //---------------------
 delete all TmpSaldo1;
 if not Store_Init {
    message(''#3'Ошибка при расчете сальдовых остатков');
    Inv_Vedomost.fExit;
    Exit;
 }
 if not Store_Reinit {
    message(''#3'Ошибка при расчете сальдовых остатков');
    Inv_Vedomost.fExit;
    Exit;
 }
 Store_ForceInVal(true);
 Store_TypeOstatki(TRUE);
 Store_DoSpace(true);

 Store_Run(myd,
           if (PickMC    , comp(-2), comp(0)),
           if (PickPodr  , comp(-2), comp(0)),
           if (PickMOL   , comp(-2), comp(0)),
           if (PickParty , comp(-2), comp(0)),
           true,
           true,
           FALSE);

 if (Store_wasStopped)
   {
   message(''#3'Расчет сальдовых остатков был прерван');
   Store_Done;
   Inv_Vedomost.fExit;
   Exit;
   }
 Store_Done;
 //---------------------
 wNum := 1 ;

 if (inv_ved_ex.GetFirst viewTable <> 0)
   {
   Message ('Ведомость пуста...') ;
   Inv_Vedomost.fExit;
   Exit;
   }
end.
 Р^
                                             Инвентаризационно-расчетная ведомость
                              остатков товарно-материальных ценностей по состоянию на 1 января 2000 г.

Предприятие(учреждение) ^
Основание для составления инвентаризационно-расчетной ведомости:
   Порядок отражения в бухгалтерском учете операций, связанных с деноминацией денежной единицы Республики Беларусь (утвержден приказом
Министерства финансов Республики Беларусь от 12 ноября 1999 г. N331, зарегистрирован в Национальном реестре правовых актов Республики Беларусь
19 ноября 1999 г., рег. N8/1478);
   письмо Государственного налогового комитета Республики Беларусь от 20 декабря 1999 г. N2-1-2/8735 "О налоге на добавленную стоимость".
   К началу составления данной инвентаризационно-расчетной ведомости результаты инвентаризации товарно-материальных ценностей, проведенной на
основании приказа (постановления,распоряжения) N_____ от ___________ 1999 г., по состоянию на 31 декабря 1999 г. отражены в бухгалтерском учете,
а фактическое наличие товарно-материальных ценностей соответствует данным бухгалтерского учета.



┌─────┬────────────────────────────────────┬──────────┬───────────────────────────┬─────────┬────────────┬─────────────┬──────────┬─────────────────────────────────┐
│     │       Товарно-материальные         │ Единица  │       Цена за единицу     │ Ставка  │  Сумма     │             │Количество│            Стоимость            │
│     │             ценности               │измерения │                           │  НДС    │  НДС в     │             ├──────────┼────────────────┬────────────────┤
│     ├────────────────┬─────────┬─────────┼──────────┼─────────────┬─────────────┤ для вы- │ цене за    │   Цена      │          │                │                │
│  №  │                │ номен-  │         │          │             │01.01.2000 г.│ деления │ единицу    │ за единицу  │          │       на       │       на       │
│ п/п │  наименование  │ кла-    │ группа  │наимено-  │ 31.12.99 г. │(после дено- │ суммы   │ (гр.7*     │ без НДС на  │  всего   │  31.12.1999г.  │  01.01.2000г.  │
│     │                │ турный  │         │ вание    │(до деноми-  │   минации)  │  НДС    │ *гр.8)/    │01.01.2000 г.│          │ (до деномина-  │  (после дено-  │
│     │                │ номер   │         │          │   нации)    │(гр.6 / 1000)│в цене за│ /100 на    │(гр.7 - гр.9)│          │      ции)      │    минации)    │
│     │                │         │         │          │             │ но не менее │ единицу │01.01.2000г.│             │          │ (гр. 6*гр. 11) │ (гр. 7*гр. 11) │
│     │                │         │         │          │             │  0,01 руб.* │ (8,26)  │            │             │          │                │                │
├─────┼────────────────┼─────────┼─────────┼──────────┼─────────────┼─────────────┼─────────┼────────────┼─────────────┼──────────┼────────────────┼────────────────┤
│  1  │        2       │    3    │    4    │    5     │      6      │      7      │    8    │      9     │      10     │    11    │       12       │      13        │
└─────┴────────────────┴─────────┴─────────┴──────────┴─────────────┴─────────────┴─────────┴────────────┴─────────────┴──────────┴────────────────┴────────────────┘ Р
.{table 'inv_ved_ex:main' by inv_ved_ex.KatPodr.Name (length=30), inv_ved_ex.TmpSaldo1.cPodr
.[h SKIP OVERWRITE
 Р┌─────┬────────────────┬─────────┬─────────┬──────────┬─────────────┬─────────────┬─────────┬────────────┬─────────────┬──────────┬────────────────┬────────────────┐
│  1  │        2       │    3    │    4    │    5     │      6      │      7      │    8    │      9     │      10     │    11    │       12       │       13       │
└─────┴────────────────┴─────────┴─────────┴──────────┴─────────────┴─────────────┴─────────┴────────────┴─────────────┴──────────┴────────────────┴────────────────┘ Р
.]h
.{group by inv_ved_ex.KatMOL.Name  (length=30), inv_ved_ex.TmpSaldo1.cMOL

 РСтруктурная единица предприятия(учреждения): @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
 РМатериально ответственное лицо:              @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р

.{group by inv_ved_ex.KatMC.Name   (length=30), inv_ved_ex.TmpSaldo1.cMC
.Begin
  dbl8 := inv_ved_ex.tmpSaldo1.Price * my_NDS / 100;
  dbl5 := inv_ved_ex.tmpSaldo1.Price * 1000;
End.
 Р &&&&& @@@@@@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@ @@@@@@@@@@@ &&&&&&&&&&&.& &&&&&&&&&&&.&  &&&&.&&  &&&&&&&&&&.& &&&&&&&&&&&.& &&&&&&.&& &&&&&&&&&&&&&&.& &&&&&&&&&&&&&&.& Р
.begin
  wNum := wNum + 1 ;
end.
.{group by inv_ved_ex.TmpSaldo1.cParty
.} // group
.} // group
.} // group
.} // table

 Р  Подписи:   члены инвентаризационной комиссии     _________________________________________ Р


 Р                                                   _________________________________________ Р


 Р                                                   _________________________________________ Р

.[f
 Р__________________________

    * С учетом правил округления в соответствии с постановлением Минэкономики РБ от 12.11.99 г. № 149. Р
.]f
.endform
