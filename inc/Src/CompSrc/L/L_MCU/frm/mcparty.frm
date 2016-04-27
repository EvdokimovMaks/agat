#doc
Изменение заводских цен МЦ к ценам ее партий (последним по КОДУ)
#end
.form MCPartyCena
.ard
.NameInList 'Изменение заводских цен МЦ к ценам ее партий (последним по КОДУ)'
.ard
.var
   iCount : integer
   yesMC  : boolean
.endvar
.create view MCPC
from
    KatMC
  , KatParty (Normal,KatParty11)  // KatParty11 = cMC + Kons + Kod,
where
  ((
      KatMc.nRec         /==     KatParty.cMc
  and 0                   ==     KatParty.Kons
  ))
;
.begin
  iCount := 0;
end.
.{table 'MCPC.KatMC' by MCPC.KatMC.Name
.[h

Протокол изменений заводских цен МЦ по последним партиям для данной МЦ

───────────────────────────────────────┬────────────────┬────────────────┬─────────────────────────────────────────
Наименование МЦ (номенклатурный номер) │ Старая цена МЦ │ Цена Партии    │ Наименование Партии (Код)
───────────────────────────────────────┴────────────────┴────────────────┴─────────────────────────────────────────
.]h
.begin
  yesMC := FALSE ;
  if (MCPC.GetLast KatParty = 0) {} ;
  if ( (KatMc.CenaMc <> KatParty.CenaZav) and
       (0            <> KatParty.CenaZav) )
    yesMC := TRUE ;
  else
    yesMC := FALSE ;
end.
.{?Internal;yesMC
.fields
   MCPC.KatMc.Name+'('+MCPC.KatMc.BarKod+')'
   MCPC.KatMc.CenaMc
   MCPC.KatParty.CenaZav
   MCPC.KatParty.Name+'('+MCPC.KatParty.Kod+')'
.endfields
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&.&& &&&&&&&&&&&&&.&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.begin
  MCPC.KatMc.CenaMc := MCPC.KatParty.CenaZav ;
  MCPC.Update Current KatMc ;
  iCount := iCount + 1;
end.
.} // .{?Internal;yesMC
.} // table

*********************

.{?Internal;iCount>0
.fields
   iCount
.endfields
Изменено цен МЦ: ^
.}
.{?Internal;iCount=0
Заводские цены установленные в МЦ соответствуют ценам в Партиях.

Изменений не произведено.
.}
.endform