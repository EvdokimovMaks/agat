/*
 ╔══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) Корпорация ГАЛАКТИКА, 1994,2000                  ║
 ║ Проект        : ГАЛАКТИКА                                                ║
 ║ Система       : Оперативный контур                                       ║
 ║ Версия        : 5.80                                                     ║
 ║ Назначение    : Печать каталога сложных скидок                           ║
 ║ Ответственный : Шишов Виктор Васильевич (ShV)                            ║
 ╚══════════════════════════════════════════════════════════════════════════╝
*/

#doc
Печать каталога сложных скидок
#end
.form 'LstKlSk'
.hide
.var
  IsFirstPrim  : boolean;
.endvar
.fields
  pNRec_KatSkid
.endfields
.{
   ^
.}
.endform

//******************************************************************************

#doc
Реестр сложных скидок
#end
.linkform 'LstKlSk_00' prototype is 'LstKlSk'
.nameInList 'Реестр сложных скидок'
.create view KatSkid_Ier
var
 pVid : word;
 (
  KatSkidValTarif,
  KatSkidValSkid,
  SkidTfValTarif,
  SkidTfValSkid,
  SkidPrim_PrMC,
  SkidPrim_MCUsl,
  SkidPrim_GrMCUsl
 )

As select

  if (KatSkid.wTarif = 0, oValFunc.GetValSymbol(KatSkid.cValTarif), '')

, if (KatSkid.PrSkid = 0, oValFunc.GetValSymbol(KatSkid.cValSkid), '')

, oValFunc.GetValSymbol(SkidTf.cValTarif)

, oValFunc.GetValSymbol(SkidTf.cValSkid)

, if (SkidPrim.PrMC=1, 'Т', 'У')
, if (SkidPrim.PrMC=1, KatMC.Name, KatUsl.Name)
, if (SkidPrim.PrMC=1, GroupMC.Name, GroupUsl.Name)

from
  KatSkid                          (readonly),
  SkidTf                           (readonly),
  SkidPrim                         (readonly),
  SkidSum                          (readonly),
  synonym KlVal ValTarif           (readonly),
  synonym KlVal ValSkid            (readonly),
  synonym KlVal Tbl_SkidTfValTarif (readonly),
  synonym KlVal Tbl_SkidTfValSkid  (readonly),
  KatMC                            (readonly),
  KatUsl                           (readonly),
  GroupMC                          (readonly),
  GroupUsl                         (readonly),
  GrPrice                          (readonly),
  KlPrice                          (readonly),
  KatORG                           (readonly),
  KatOrgDescr                      (readonly)

Where
    ((
     comp(pNRec_KatSkid)   == KatSkid.NRec             and

     KatSkid.NRec          == SkidTf.cKatSkid          and
     KatSkid.cValTarif     == ValTarif.NRec            and
     KatSkid.cValSkid      == ValSkid.NRec             and

     KatSkid.NRec          == SkidPrim.cKatSkid        and
     pVid                  == SkidPrim.Vid             and
     SkidPrim.cGrOrg       == KatOrgDescr.NRec         and
     SkidPrim.cOrg         == KatORG.NRec              and
     SkidPrim.cGrPrices    == GrPrice.NRec             and
     SkidPrim.cPrices      == KlPrice.NRec             and
     SkidPrim.cMCUsl       == KatMC.NRec               and
     SkidPrim.cMCUsl       == KatUsl.NRec              and
     SkidPrim.cGroupMCUsl  == GroupMC.NRec             and
     SkidPrim.cGroupMCUsl  == GroupUsl.NRec
    ))
order by SkidTf.TarifSum, SkidPrim.npp
;

.fields
  CommonFormHeader
.endfields
^

                                                               Реестр сложных скидок

.{
.{table 'KatSkid_Ier.KatSkid'
.fields
  KatSkid_Ier.KatSkid.Name
  if (KatSkid_Ier.KatSkid.Vid=0,'от Исходного значения','с Накоплением скидки')
  if (KatSkid_Ier.KatSkid.wTarif =0,'Сумма','Кол-во')
  KatSkid_Ier.KatSkidValTarif
  if (KatSkid_Ier.KatSkid.PrSkid=0,'Сумма','%')
  KatSkid_Ier.KatSkidValSkid
     '──────────────────────┬─────────────────────'

  if (KatSkid_Ier.KatSkid.wTarif =0,
    if (KatSkid_Ier.KatSkid.PrSkid=0,
     '     Cумма тарифа     │   Cумма скидки      ',
     '     Cумма тарифа     │      % скидки       '),
    if (KatSkid_Ier.KatSkid.PrSkid=0,
     '     Кол-во тарифа    │   Cумма скидки      ',
     '     Кол-во тарифа    │      % скидки       '))

     '──────────────────────┼─────────────────────'

.endfields
 ═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
 Б@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б

     Метод расчета:  Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
     Вид Тарифа:  Б@@@@@@@@@@ Б Валюта тарифа:  Б@@@@@@@@@ Б
     Вид Скидки:  Б@@@@@@@@@@ Б Валюта скидки:  Б@@@@@@@@@ Б

   БТарифы Б
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{table 'KatSkid_Ier.SkidTf'
.fields
  if (KatSkid_Ier.KatSkid.wTarif =0,
     DoubleToStr(KatSkid_Ier.SkidTf.TarifSum,'\2p[|-]3666`666`666`666`666.88'),
     DoubleToStr(KatSkid_Ier.SkidTf.TarifKol,'\2p[|-]3666`666`666`666`666.888'))
  if (KatSkid_Ier.KatSkid.wTarif =0,
     KatSkid_Ier.SkidTfValTarif,
     '')
  if (KatSkid_Ier.KatSkid.PrSkid=0,
   DoubleToStr(KatSkid_Ier.SkidTf.SkidSum,'\2p[|-]3666`666`666`666`666.88'),
   DoubleToStr(KatSkid_Ier.SkidTf.SkidProcent,'\2p[|-]3666`666`666`666`666.88'))
  if (KatSkid_Ier.KatSkid.PrSkid=0,
   KatSkid_Ier.SkidTfValSkid,
   '')


.endfields
   &&&&&&&&&&&&&& @@@@@@│&&&&&&&&&&&&& @@@@@@
.}
  ──────────────────────┴─────────────────────
.begin
  KatSkid_Ier.pVid := 0;
  IsFirstPrim := True;
end.
.{table 'KatSkid_Ier.SkidPrim'
.{while IsFirstPrim=True

   БПрименения по позиции спецификации Б
  ────┬──────┬─────────────────────────────────┬─────────────────────────────────┬────────────────────────────────────────────
      │      │         Контрагенты             │          Прайс-листы            │                 МЦ/Усл
    № │ При- ├─────────────┬───────────────────┼───────────────┬─────────────────┼───────┬───────────────┬────────────────────
      │менять│   Группа    │    Контрагент     │    Группа     │   Прайс-лист    │Признак│    Группа     │      МЦ/Усл
  ────┼──────┼─────────────┼───────────────────┼───────────────┼─────────────────┼───────┼───────────────┼────────────────────
.begin
  IsFirstPrim := False;
end.
.}
.fields
  KatSkid_Ier.SkidPrim.npp
  if (KatSkid_Ier.SkidPrim.IsUses = 0,'Нет','Да')
  KatSkid_Ier.KatOrgDescr.Name
  KatSkid_Ier.KatOrg.Name
  KatSkid_Ier.GrPrice.Name
  KatSkid_Ier.KlPrice.Name
  KatSkid_Ier.SkidPrim_PrMC
  KatSkid_Ier.SkidPrim_GrMCUsl
  KatSkid_Ier.SkidPrim_MCUsl
.endfields
   @~@│@~@@@@│@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@│@~@@@@@│@@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@
.}
.{while IsFirstPrim=False
  ────┴──────┴─────────────┴───────────────────┴───────────────┴─────────────────┴───────┴───────────────┴────────────────────
.begin
  IsFirstPrim := True;
end.
.}
.begin
  KatSkid_Ier.pVid := 1;
  IsFirstPrim := True;
end.
.{table 'KatSkid_Ier.SkidPrim'
.{while IsFirstPrim=True

   БПрименения по группе позиций спецификации Б
  ────┬──────┬─────────────────────────────────┬───────────────┬────────────────────────
      │      │         Контрагенты             │               │        МЦ/Усл
    № │ При- ├─────────────┬───────────────────┤    Группы     ├───────┬────────────────
      │менять│   Группа    │    Контрагент     │ прайс-листов  │Признак│    Группа
  ────┼──────┼─────────────┼───────────────────┼───────────────┼───────┼────────────────
.begin
  IsFirstPrim := False;
end.
.}
.fields
  KatSkid_Ier.SkidPrim.npp
  if (KatSkid_Ier.SkidPrim.IsUses = 0,'Нет','Да')
  KatSkid_Ier.KatOrgDescr.Name
  KatSkid_Ier.KatOrg.Name
  KatSkid_Ier.GrPrice.Name
  KatSkid_Ier.SkidPrim_PrMC
  KatSkid_Ier.SkidPrim_GrMCUsl
.endfields
   @~@│@~@@@@│@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@│@~@@@@@│@@@@@@@@@@@@@@@@
.}
.{while IsFirstPrim=False
  ────┴──────┴─────────────┴───────────────────┴───────────────┴───────┴────────────────
.begin
  IsFirstPrim := True;
end.
.}
.begin
  KatSkid_Ier.pVid := 2;
  IsFirstPrim := True;
end.
.{table 'KatSkid_Ier.SkidPrim'
.{while IsFirstPrim=True

   БПрименения по документу в целом Б
  ────┬──────┬──────────────────────────────────
      │      │         Контрагенты
    № │ При- ├─────────────┬────────────────────
      │менять│   Группа    │    Контрагент
  ────┼──────┼─────────────┼────────────────────
.begin
  IsFirstPrim := False;
end.
.}
.fields
  KatSkid_Ier.SkidPrim.npp
  if (KatSkid_Ier.SkidPrim.IsUses = 0,'Нет','Да')
  KatSkid_Ier.KatOrgDescr.Name
  KatSkid_Ier.KatOrg.Name
.endfields
   @~@│@~@@@@│@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@
.}
.{while IsFirstPrim=False
  ────┴──────┴─────────────┴────────────────────
.begin
  IsFirstPrim := True;
end.
.}
.}

.}
.endform