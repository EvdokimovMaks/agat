/*
 ╔══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) Корпорация ГАЛАКТИКА, 1994,2000                  ║
 ║ Проект        : ГАЛАКТИКА                                                ║
 ║ Система       : Оперативный контур                                       ║
 ║ Версия        : 5.80                                                     ║
 ║ Назначение    : Предоставленные сложные скидки по группам МЦ/Усл         ║
 ║ Ответственный : Шишов Виктор Васильевич (ShV)                            ║
 ╚══════════════════════════════════════════════════════════════════════════╝
*/

#doc
Предоставленные сложные скидки по группам МЦ/Усл
#end
.form 'SkidRep'
.hide
.var
  IsFirstPrim  : boolean;
  IsPrim       : boolean;
.endvar

.fields
  pFilter_Str    : string
.endfields
.{
  ^
.}

.fields
  pMCUSL_Kod     : string
  pMCUSL_Name    : string

  pSkidSp_Sum    : double
  pSkidSp_Sr     : double
  pSkidSp_Skid   : double

  pSkidGrSp_Sum  : double
  pSkidGrSp_Sr   : double
  pSkidGrSp_Skid : double
.endfields
.{
  ^^^^^^^^
.}

.fields
  pSkidSp_Sum_Itog
  pSkidSp_Skid_Itog

  pSkidGrSp_Sum_Itog
  pSkidGrSp_Skid_Itog
.endfields
^^^^

.endform

#doc
Предоставленные сложные скидки по группам МЦ/Усл
#end
.linkform 'SkidRep_00' prototype is 'SkidRep'
.nameInList 'Предоставленные сложные скидки по группам МЦ/Усл'

.fields
  CommonFormHeader
.endfields
^
                                            Предоставленные сложные скидки по группам МЦ/Усл

.fields
  pFilter_Str
.endfields
.{
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}

.fields
  pMCUSL_Name

  pSkidSp_Sum
  pSkidSp_Sr
  pSkidSp_Skid

  pSkidGrSp_Sum
  pSkidGrSp_Sr
  pSkidGrSp_Skid
.endfields
 ───────────────────────────────────┬──────────────────────────────────┬───────────────────────────────────
           Группа МЦ/Усл            │      Скидки по позициям          │       Скидки по группам
                                    │         спецификаций             │      позиций спецификаций
                                    ├───────────┬─────────┬────────────┼────────────┬─────────┬────────────
                                    │   Сумма   │    %    │   Скидка   │   Сумма    │   %     │ Скидка
 ───────────────────────────────────┼───────────┼─────────┼────────────┼────────────┼─────────┼────────────
.{
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&&&&&&&&.&&│&&&&&&.&&│&&&&&&&&.&& │ &&&&&&&&.&&│&&&&&&.&&│&&&&&&&&.&&
.}
────────────────────────────────────┴───────────┴─────────┴────────────┴────────────┴─────────┴────────────
.fields
  pSkidSp_Sum_Itog
  pSkidSp_Skid_Itog
  pSkidGrSp_Sum_Itog
  pSkidGrSp_Skid_Itog
.endfields
                           ИТОГО:    &&&&&&&&.&&           &&&&&&&&.&&   &&&&&&&&.&&           &&&&&&&&.&&
.endform