/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                                                  (c) корпорация ГАЛАКТИКА ║
 ║ Галактика 7.12, Управление транспортом                                    ║
 ║ Базовая форма для печати Акта списания                                    ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.set name='AktSpis_Comp'
.Group 'Комплектующие'
.Group 'Шины'
.hide
.fields
! организация
    Org
! Денежка
    Valut
! дата формирования акта
    DateAkt
! списание: 'аккумуляторной батареи' / 'агрегата' / 'автомобильных шин'
    TipCompA
!причина снятия
   sRemoval
! состав комиссии
  HeadComissPost HeadComissFIO
    ComissPost ComissFIO ComissTabN

! 'аккумуляторная батарея' / 'агрегат'
    TipComp
! Ссылка на комплектующую
    ComponNRec
! дата снятия
    DateSp
! Ссылка на подразделение баланса ТС (Transp.cPodr)
    KatPodrNRec
! Ссылка на ТС
    TranspNRec
! марка коплектующей
    MarComp
! заводской номер коплектующей
    CompZavNom CompNom
! ед. пробега: км / дн.
    EdProbeg
! фактический пробег
    ProbegFakt
! норма
    ProbegNorm
! процент износа
    Iznos
    Econom

! шины / АКБ
ObjTip GarNom_PodrName GosNom MarkaName

! естественный износ
NPP_EI NPP_EI_S ShinaNRec_EI KatPodrNRec_EI TranspNRec_EI Marka_EI DatUst_EI DatSnat_EI RazmerShin_EI Nomer_EI Nomer2_EI Narab_EdIzm_EI ProbegNormShi_EI ProbegFaktShi_EI Stiom_EI DeltaProbeg_EI Econom_EI
! недопробег
NPP_N NPP_N_S ShinaNRec_N KatPodrNRec_N TranspNRec_N Marka_N DatUst_N DatSnat_N RazmerShin_N Nomer_N Nomer2_N Narab_EdIzm_N ProbegNormShi_N ProbegFaktShi_N Stiom_N DeltaProbeg_N Econom_N Econom_Sum
Post FIO

.endfields
.{
^
^
^
^
^

^ ^
 .{.?GroupComissTop;^ ^ ^.}
.{ CheckEnter GroupCompon
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter GroupShina
.{ CheckEnter ObjectSpis
^ ^ ^ ^
.{ CheckEnter EstIznos
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter NProbeg
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter ObjectSpisItog
^
.}
.}
.}
.{ CheckEnter GroupComissBottom
^ ^
.}
.{ CheckEnter InsBreakPage
.}
.}
.endform
