/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Производство                                              ║
 ║ Версия        : 5.70                                                      ║
 ║ Назначение    : Ведомость операций по отпуску МЦ в производство           ║
 ║                 сверх лимита в разрезе лимитир. МЦ                        ║
 ║ Ответственный : Зайцев Александр Владимирович                             ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.set name = 'SoprDocRep_And'
.hide
.fields
  Name_Nkl
	KatPodr_Name_From
	KatPodr_Name_To

  SpSopr_NPP  SpSopr_prMC  SpSopr_cMCUsl_Name  SpSopr_cMCUsl_BarKod  SpSopr_cParty_Name  SpSopr_OtpED_Name  SpSopr_KolFact  SpSopr_Price
	Title_CU Name_CU
  SpObjAcc_prMC  SpObjAcc_cMCUsl_Name  SpObjAcc_cMCUsl_BarKod  SpObjAcc_OtpED_Name  SpObjAcc_KolcPos

.endfields
^
^
^
.{
^ ^ ^ ^ ^ ^ ^ ^
.{
^ ^
.}

.{
^ ^ ^ ^ ^
.}

.}
.endform

.linkform 'SoprDocRep_And_1' prototype is 'SoprDocRep_And'
.fields
	Name_Nkl
	KatPodr_Name_From
	KatPodr_Name_To
.endfields


     Накладная ^
       Откуда  ^
       Куда    ^

───────┬───────┬──────────────────────────────────────────┬───────────────────┬──────────────────────────────────────────────┬───────────┬─────────────────────┬─────────────────────
 Номер │ Тип   │             Ресурс                       │   Ном.Номер       │              Партия                          │  Единица  │      Количество     │       Цена
 строки│ресурса│                                          │                   │                                              │ измерения │                     │
───────┴───────┴──────────────────────────────────────────┴───────────────────┴──────────────────────────────────────────────┴───────────┴─────────────────────┴─────────────────────
.{
.fields
SpSopr_NPP SpSopr_prMC    SpSopr_cMCUsl_Name               SpSopr_cMCUsl_BarKod  SpSopr_cParty_Name                      SpSopr_OtpED_Name  SpSopr_KolFact    SpSopr_Price
.endfields
@@@@@@@ @@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@ &'&&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&&
.{
.fields
 Title_CU    Name_CU
.endfields
@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}

.{
.fields
      SpObjAcc_prMC  SpObjAcc_cMCUsl_Name                 SpObjAcc_cMCUsl_BarKod                                        SpObjAcc_OtpED_Name  SpObjAcc_KolcPos
.endfields
        @@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@                                               @@@@@@@@@@@ &'&&&&&&&&&&&&&&&&&&&
.}
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

.}
.endform


