//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - Управление договорами
// Печать реестров распределения платежного документа по накладным/актам
//------------------------------------------------------------------------------

#doc
Печать реестров распределения платежного документа по накладным/актам
#end

.Form 'Ree_Vk'
.NameInList 'Реестр по платежу'
.Hide
.fields
  NRec    : comp
  TipDoc  : word

  obKatDoc_Name
  obAppVeks_NoApp
  obAppVeks_DatVip

! цикл по оборотам Vk_Ree_Oborot
  obOborot_krSCHETK
  obOborot_SubSchK
  obkrKAU
  obOborot_dbSCHETO
  obOborot_SubOsSch
  obdbKAU
  obOborot_SumOb

  obHozOper_Name1

.endfields
^^
^ ^ ^
! цикл по оборотам
.{ CheckEnter Vk_Ree_Oborot
  ^ ^ ^ ^ ^ ^ ^
.}
^

.endform

.linkform 'Ree_Vk1' prototype is 'Ree_Vk'
.NameInList 'Реестр распределения платежного документа по накладным/актам'
.create view loApV
var
  NrecVk  : comp;
  wTipDoc : word;
  AllHozDoc : word;
(
  temp,
  VidDocTxt,
  NameMCUsl,
  k_Valut,
  ValDo
)
As select
 ' ',
 KatDoc.Name,
 if(SpSopr.PrMC=1,KatMC.Name,KatUsl.Name),
 if(SoprHoz.KodValut=0,0,SoprHoz.SumValut/SoprHoz.Summa),
 if (BaseDoc.cVal=0,if(sGetTune('NDE.SIMVRUB')<>'',sGetTune('NDE.SIMVRUB'),'руб.'),
                    KlValDo.SimVolV)
from
  AppVeks   (ReadOnly)
, SoprHoz   (ReadOnly)
, SpSopHoz  (ReadOnly)
, SpSopr    (ReadOnly)
, KatSopr   (ReadOnly)
, BaseDoc   (ReadOnly)
, KatOrg    (ReadOnly)
, KatMC     (ReadOnly)
, KatUSL    (ReadOnly)
, KlVal     (ReadOnly)
, KatDoc    (ReadOnly)
, Synonym KlVal KlValDo

Where
((
         NrecVk  == AppVeks.NRec
and      wTipDoc == SoprHoz.TipDoc
and AppVeks.NRec == SoprHoz.cSoprDoc
and SoprHoz.NRec == SpSopHoz.cSoprHoz
and SpSopHoz.cSpSopr == SpSopr.NRec
and SoprHoz.cStepDoc == StepDoc.NRec
and StepDoc.cBaseDoc == BaseDoc.NRec
and AppVeks.cOrg  == KatOrg.NRec
and AppVeks.cVal == KlVal.NRec
and SpSopr.cSopr == KatSopr.NRec
and SpSopr.cMCUsl == KatMC.NRec
and SpSopr.cMCUsl == KatUsl.NRec
and SpSopr.cOtpEd == KatOtpEd.NRec
and  BaseDoc.cVal == KlValDo.NRec
and AllHozDoc     == KatDoc.TiDkGal

))
;
.fields
  CommonFormHeader
  loApV.VidDocTxt loApV.AppVeks.NoApp
  loApV.KatOrg.Name
  loApV.AppVeks.DatVip
  loApV.AppVeks.Sum loApV.AppVeks.SumV loApV.KlVal.SimvolV
  loApV.BaseDoc.NoDoc loApV.BaseDoc.Summa loApV.ValDo
  loApV.NameMCUsl loApV.KatSopr.NSopr loApV.KatSopr.dSopr loApV.SpSopr.Kol loApV.SpSopHoz.Kolvo loApV.KatOtpEd.Name
  loApV.SpSopHoz.Summa loApV.SpSopHoz.Summa*k_Valut
.endfields
.var
  Summ, NSum   : double;
  SummV, NSumV : double;
.endvar
.begin
  loApV.NrecVk:=NRec;
  loApV.wTipDoc:=TipDoc;
  if ( loApV.GetFirst AppVeks = 0 )
   {
     loApV.AllHozDoc:=TipDoc;
   }
  Summ:=0; NSum:=loApV.AppVeks.Sum;
  SummV:=0; NSumV:=loApV.AppVeks.SumV;
end.
 Р^ Р
 Р
                             БРеестр распределения платежного документа по накладным/актам Б
                                    ^ № ^
     Контрагент  Б^ Б
     на   Б^ Б
     Сумма платежа по документу  Б&#'&&&&&&&&&&&&&&.&& Б      Сумма в валюте  Б&#'&&&&&&&&&&&&.&& ^ С
 Р┌─────────────────────────┬──────────┬──────────┬──────────┬──────────┬─────────┬────────────────────────────────────┐
│                         │   Номер  │   Дата   │          │  Кол-во  │ Единица │           Сумма оплаченного        │
│       Наименование      │накладной/│накладной/│  Кол-во  │ оплачен. │измерения├───────────────────┬────────────────┤
│                         │   акта   │  акта    │          │          │         │       в НДЕ       │    в валюте    │
├─────────────────────────┴──────────┴──────────┴──────────┴──────────┴─────────┴───────────────────┴────────────────┤ Р
.{table 'loApV.SoprHoz'
 Р│ БДокумент-основание № @@@@@@@@ Б  Бна сумму &#'&&&&&&&&&&&&&.&& @@@@@ Б                                                    │ Р
.{table 'loApV.SpSopHoz'
 Р│  @@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ &&&&&&.&&& &&&&&&.&&& @~@@@@@@@ &#'&&&&&&&&&&&&&.&& &#'&&&&&&&&&&.&&│ Р
.begin
  Summ:=Summ+loApV.SpSopHoz.Summa;
  SummV:=SummV+loApV.SpSopHoz.Summa*k_Valut;
end.
.}
.}
.begin
 NSum:=NSum-Summ; NSumV:=NSumV-SummV;
end.
.fields
  Summ SummV
  NSum NSumV
.endfields
 Р├───────────────────────────────────────────────────────────────────────────────┬───────────────────┬────────────────┤
│ ИТОГО                                                                         │                   │                │
│   разнесено                                                                   │&#'&&&&&&&&&&&&&.&&│&#'&&&&&&&&&&.&&│
│   разнести                                                                    │&#'&&&&&&&&&&&&&.&&│&#'&&&&&&&&&&.&&│
└───────────────────────────────────────────────────────────────────────────────┴───────────────────┴────────────────┘ Р
.{ CheckEnter Vk_Ree_Oborot
.}
.endform


.linkform 'Ree_Vk2' prototype is 'Ree_Vk'
.NameInList 'Реестр распределения платежного документа по накладным/актам (с группировкой)'
.create view loApV1
var
  NrecVk  : comp;
  wTipDoc : word;
  AllHozDoc : word;
(
  temp,
  VidDocTxt,
  NameMCUsl,
  NameDoc,
  k_Valut,
  ValDo,
  ValKS
)
As select
 ' ',
 KatDoc.Name,
 if(SpSopr.PrMC=1,KatMC.Name,KatUsl.Name),
 if(SpSopr.PrMC=1,'Накладная','Акт      '),
 if(SoprHoz.KodValut=0,0,SoprHoz.SumValut/SoprHoz.Summa),
 if(BaseDoc.cVal=0,if(sGetTune('NDE.SIMVRUB')<>'',sGetTune('NDE.SIMVRUB'),'руб.'),
                   KlValDo.SimVolV),
 if(KatSopr.cVal=0,if(sGetTune('NDE.SIMVRUB')<>'',sGetTune('NDE.SIMVRUB'),'руб.'),
                   KlValDo.SimVolV)
from
  AppVeks   (ReadOnly)
, SoprHoz   (ReadOnly)
, SpSopHoz  (ReadOnly)
, SpSopr    (ReadOnly)
, KatSopr   (ReadOnly)
, BaseDoc   (ReadOnly)
, KatOrg    (ReadOnly)
, KatMC     (ReadOnly)
, KatUSL    (ReadOnly)
, KlVal     (ReadOnly)
, KatDoc    (ReadOnly)
, Synonym KlVal KlValDo
, TmpGrN    (TmpGrN01)

Where
((
         NrecVk  == AppVeks.NRec
and      wTipDoc == SoprHoz.TipDoc
and AppVeks.NRec == SoprHoz.cSoprDoc
and SoprHoz.NRec == SpSopHoz.cSoprHoz           // была жесткая подцепка
and SpSopHoz.cSpSopr == SpSopr.NRec
and SoprHoz.cStepDoc == StepDoc.NRec            // была жесткая подцепка
and StepDoc.cBaseDoc == BaseDoc.NRec
and AppVeks.cOrg  == KatOrg.NRec
and AppVeks.cVal == KlVal.NRec
and SpSopr.cSopr == KatSopr.NRec
and SpSopr.cMCUsl == KatMC.NRec
and SpSopr.cMCUsl == KatUsl.NRec
and SpSopr.cOtpEd == KatOtpEd.NRec
and  BaseDoc.cVal == KlValDo.NRec
and    word(3001) == TmpGrN.wList
and  SoprHoz.NRec == TmpGrN.cRec1
and AllHozDoc     == KatDoc.TiDkGal
))
Bounds SpSopHoz01 =
       TmpGrN.cRec  == SpSopHoz.NRec
Bounds KatSopr01 =
       TmpGrN.cRec2 == KatSopr.NRec
;
.fields
  CommonFormHeader
  loApV1.VidDocTxt
  loApV1.AppVeks.NoApp
  loApV1.KatOrg.Name
  loApV1.AppVeks.DatVip
  loApV1.AppVeks.Sum loApV1.AppVeks.SumV loApV1.KlVal.SimvolV
  loApV1.BaseDoc.NoDoc loApV1.BaseDoc.Summa loApV1.ValDo
  loApV1.NameDoc loApV1.KatSopr.NSopr loApV1.KatSopr.dSopr loApV1.KatSopr.Summa loApV1.KatSopr.SumVal
  loApV1.NameMCUsl loApV1.SpSopr.Kol loApV1.SpSopHoz.Kolvo loApV1.KatOtpEd.Name
  loApV1.SpSopHoz.Summa loApV1.SpSopHoz.Summa*k_Valut
.endfields
.var
  Summ, NSum   : double;
  SummV, NSumV : double;
  NRecOldKS    : comp;
  lValid       : boolean;
.endvar
.begin
  loApV1.NrecVk:=NRec;
  loApV1.wTipDoc:=TipDoc;
  if ( loApV1.GetFirst AppVeks = 0 )
   {
    loApV1.AllHozDoc:=TipDoc;
    loApV1.Delete NoVisual TmpGrN where ((word(3001)==TmpGrN.wList));
    if ( loApV1.GetFirst SoprHoz=0 )
     {
      do
       if ( loApV1.GetFirst SpSopHoz=0 )
        {
         do
          {
            loApV1.ClearBuffer(loApV1.tnTmpGrN);
            loApV1.TmpGrN.kTbl:=3001;
            loApV1.TmpGrN.wList:=3001;
            loApV1.TmpGrN.cRec1:=loApV1.SoprHoz.NRec;
            loApV1.TmpGrN.cRec2:=loApV1.SpSopr.cSopr;
            loApV1.TmpGrN.d:=loApV1.KatSopr.dSopr;
            loApV1.TmpGrN.s:=loApV1.KatSopr.NSopr;
            loApV1.TmpGrN.cRec:=loApV1.SpSopHoz.NRec;
            if (loApV1.Insert current TmpGrN = 0) {}
          }
         while ( loApV1.GetNext SpSopHoz = 0 )
        }
      while ( loApV1.GetNext SoprHoz = 0 )
     }
    Summ:=0; NSum:=loApV1.AppVeks.Sum;
    SummV:=0; NSumV:=loApV1.AppVeks.SumV;
   }
end.
 Р^ Р
 Р
                               БРеестр распределения платежа по накладным/актам Б
                                    ^ № ^
     Контрагент  Б^ Б
     на   Б^ Б
     Сумма платежа по документу  Б&#'&&&&&&&&&&&&&&.&& Б      Сумма в валюте  Б&#'&&&&&&&&&&&&.&& ^ С
 Р┌─────────────────────────────┬──────────┬──────────┬─────────┬────────────────────────────────────┐
│                             │          │  Кол-во  │ Единица │           Сумма оплаченного        │
│         Наименование        │  Кол-во  │ оплачен. │измерения├───────────────────┬────────────────┤
│                             │          │          │         │       в НДЕ       │    в валюте    │
├─────────────────────────────┴──────────┴──────────┴─────────┴───────────────────┴────────────────┤ Р
.begin
  if (loApV1.GetFirst AppVeks= 0) {}
  PushBounds(tbKatSopr01);
  PushBounds(tbSpSopHoz01);
end.
.{table 'loApV1.SoprHoz'
 Р│ БДокумент-основание № @@@@@@@@ на сумму &#'&&&&&&&&&&&&&.&& @@@@@ Б                                  │ Р
.begin
  NRecOldKS:=0;
end.
.{table 'loApV1.TmpGrN'
.{?INTERNAL;( NRecOldKS<>loApV1.TmpGrN.cRec2 );
 Р│   Б^ № @@@@@@@@ от @@@@@@@@@@           на сумму       &#'&&&&&&&&&&&&&.&& &#'&&&&&&&&&&.&& Б│ Р
.begin
  NRecOldKS:=loApV1.TmpGrN.cRec2;
end.
.}
 Р│    @@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&.&&& &&&&&&.&&& @~@@@@@@@ &#'&&&&&&&&&&&&&.&& &#'&&&&&&&&&&.&&│ Р
.begin
  Summ:=Summ+loApV1.SpSopHoz.Summa;
  SummV:=SummV+loApV1.SpSopHoz.Summa*k_Valut;
end.
.}
.}
.begin
 NSum:=NSum-Summ; NSumV:=NSumV-SummV;
 PopBounds(tbSpSopHoz01);
 PopBounds(tbKatSopr01);
end.
.fields
  Summ SummV
  NSum NSumV
.endfields
 Р├─────────────────────────────────────────────────────────────┬───────────────────┬────────────────┤
│ ИТОГО                                                       │                   │                │
│   разнесено                                                 │&#'&&&&&&&&&&&&&.&&│&#'&&&&&&&&&&.&&│
│   разнести                                                  │&#'&&&&&&&&&&&&&.&&│&#'&&&&&&&&&&.&&│
└─────────────────────────────────────────────────────────────┴───────────────────┴────────────────┘ Р
.begin
 loApV1.Delete NoVisual TmpGrn where ((word(3001)==TmpGrN.wList))
end.
.{ CheckEnter Vk_Ree_Oborot
.}
.endform
