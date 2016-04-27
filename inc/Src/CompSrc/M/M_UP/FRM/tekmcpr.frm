/*
 ╔════════════════════════════════════════════════════════════════════════════╗
 ║                     (c) Корпорация ГАЛАКТИКА, 1996,97                      ║
 ║ Проект        : ГАЛАКТИКА                                                  ║
 ║ Система       : Оперативный контур                                         ║
 ║ Версия        : 5.70                                                       ║
 ║ Назначение    : Просмотр наличия остатков матценностей в производстве      ║
 ║ Ответственный : Зайцев Александр Владимирович (AXE)                        ║
 ╚════════════════════════════════════════════════════════════════════════════╝
*/
.set name = 'TekMCPr'
.hide
.fields
  hdr
  dateRec
  podr1
  mol
  mc bar gr typ
  ost:Double
  res:Double
  svob:Double
  mc2 bar2 gr2 typ2
  ost2:Double
  res2:Double
  svob2:Double
  iost2:Double
  ires2:Double
  isvob2:Double
  predpr
  mol_itogo
  mci bari gri typi
  osti:Double
  resi:Double
  sumi:Double
.endfields
^
^
.if mc_yes
.{
^
.if mol_yes
.{
.if mol_write
^
.end
.if mc_sp
.{
^ ^ ^ ^ ^ ^ ^
.}
.end
.}
.end
.if mol_no
.{
^ ^ ^ ^ ^ ^ ^
.}
^ ^ ^
.end
.}
.end
^
.{
.if mol_it
^
.end
.{
^ ^ ^ ^ ^ ^ ^
.}
.}
.endform
!
!
!
.linkform 'TekMCPr_1' prototype is 'TekMCPr'
.var
 SumKol :Double;
 SumKolPr:double;
.endvar
.begin
 SumKol:=0;
 SumKolPr:=0;
end.
.fields
  CommonFormHeader
  dateRec
  podr1
  mol
  mc bar gr typ ost res svob
  mc2 bar2 gr2 typ2 ost2 res2 svob2
  iost2 ires2 isvob2
  predpr
  mol_itogo
  mci bari gri typi osti resi sumi
.endfields
.var
 itogo:Double
 itogores:Double
 itogosvob:Double
.endVar
.begin
itogo:=0;
itogores:=0;
itogosvob:=0;
end.
^


                    БВЕДОМОСТЬ НАЛИЧИЯ ОСТАТКОВ НА ПРОИЗВОДСТВЕ Б

                        На дату: @@@@@@@@@@@@@@@@@@

 Р─────────────────────────────┬────────┬─────────┬─────────┬───────────────┬───────────────┬────────────────
   Наименование матценности  │ Баркод │ Группа  │   Тип   │    Остаток    │   Цена един.  │      Сумма
─────────────────────────────┴────────┴─────────┴─────────┴───────────────┴───────────────┴──────────────── Р
.if mc_yes
.begin
sumKol:=0;
end.
.{

 БПодразделение: @@@@@@@@@@@@@@@@ Б

.if mol_yes
.{
.if mol_write

 БМОЛ: @@@@@@@@@@@@@@@@@@ Б

.end
.if mc_sp
.{
 Р@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@ @@@@@@@@@ @@@@@@@@@ &'&&&&&&&&&.&&& &'&&&&&&&&&.&&& &'&&&&&&&&&&.&&& Р
.begin
sumKol:=sumKol+ost;
end.
.}
.end
.}
.end
.if mol_no
.{
 Р@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@ @@@@@@@@@ @@@@@@@@@ &'&&&&&&&&&.&&& &'&&&&&&&&&.&&& &'&&&&&&&&&&.&&& Р
.begin
sumKol:=sumKol+ost2;
iost2:=iost2+ost2;
ires2:=ires2+res2;
isvob2:=isvob2+svob2;
end.
.}
!.fields
!itogo
!itogores
!itogosvob
!.endfields
 СИтого по разрезу:                                          &'&&&&&&&&&.&&& &'&&&&&&&&&.&&& &'&&&&&&&&&&.&&& С
.end
.begin
 sumKolPr:=sumKolPr+sumKol;
 sumKol:=0;
end.
.}
.end
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.{
.if mol_it

 Б МОЛ: @@@@@@@@@@@@@@@@@@@@@@ Б

.end
.{
 Р@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@ @@@@@@@@@ @@@@@@@@@ &'&&&&&&&&&.&&& &'&&&&&&&&&.&&& &'&&&&&&&&&&.&&& Р
.begin
itogo:=itogo+osti;
itogores:=itogores+resi;
itogosvob:=itogosvob+sumi;
end.
.}
.}
.fields
itogo
itogores
itogosvob
.endfields
 СИтого по разрезу:                                          &'&&&&&&&&&.&&& &'&&&&&&&&&.&&& &'&&&&&&&&&&.&&& С
.endform