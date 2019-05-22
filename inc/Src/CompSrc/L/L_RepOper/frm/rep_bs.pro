//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.20 - Отчеты контура логистики
// Отчеты по закупкам / продажам
//------------------------------------------------------------------------------

#doc
Отчеты по закупкам / продажам
#end
.form 'Rep_BS'
.NameInList 'Базовая форма'
.hide
.{ CheckEnter ParNastr
.fields
   StrNastr
.endfields
^
.}
.fields
  otfilter otfilter1 otfilter2 otfilter3
  otcval basval vtarsim vbassim head1 head2 head3 head4 headgr
.endfields
^^^^
^^^^^^^^^
!------------ начало цикла по группам ----------------------------------------
.{
.fields
    a0 NameGroup
.endfields
^^
!------------ начало цикла по товарам ----------------------------------------
.{
.fields
    nRecMC a1 NomenklN a2 NameMC a3 nRecOtpEd NameUchEd NameMCandBARandEd
    a4 Massa1 a5 Volume1
    nRec_Sopr Nomer_Nakl Date_Nakl
.endfields
^^^^^^^^^^^^^^^^
!------------ начало цикла по накладным --------------------------------------
.{
!------------ начало цикла по интервалам -------------------------------------
.{
.fields
    nRecParty NameParty
    nRecGroup NameGroupMC
    nRecPodr  NamePodr
    nRecMOL   NameMOL
    nRecKonrt NameKontr KontrRegion KontrCity
    nRecSpSopr nRecSopr DateNakl NomNakl
    KolKupl PriceUch PriceUchVal CostUch CostUchVal
    PriceKupl PriceKuplVal CostKupl CostKuplVal
    PriceNakl ValNakl
    Proc1 Proc2 SumNacen SumNacenVal
    Massa Volume
    NazNRec NazName NazCode
    nRecDO NomerDO DateDO
    nRecSpOrd nRecSpSopr3 nRecSopr3 nRecDoc4
    nRec_MC Name_MC nRec_OtpEd Name_UchEd NameGroupMCUsl
.endfields
^^^^^^^^^^^^^
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
!------------ оплата, возврат и налоги ---------------------------------------
.{
.fields
    Naim Kol Price PriceVal Sum SumVal
.endfields
^^^^^^
.}
!-----------------------------------------------------------------------------
.}
!------------ конец цикла по интервалам --------------------------------------
.fields
    IntDate1 IntDate2 IntKol
    IntCostUch IntCostUchVal
    IntCostKupl IntCostKuplVal
    IntSumNacen IntSumNacenVal
    IntMassa IntVolume
.endfields
^^^^^^^^^^^
!------------ оплата, возвраты и налоги по интервалам ------------------------
.{
.fields
    IntNaim IntNalKol IntSum IntSumVal
.endfields
^^^^
.}
!-----------------------------------------------------------------------------
.}
!------------ конец цикла по накладным ---------------------------------------
.fields
    TovKol
    TovCostUch TovCostUchVal
    TovCostKupl TovCostKuplVal
    TovSumNacen TovSumNacenVal
    TovMassa TovVolume
.endfields
^^^^^^^^^
!------------ итоги по оплате, возвратам и налогам по номенклатуре -----------
.{
.fields
    TovNaim TovNalKol TovSum TovSumVal
.endfields
^^^^
.}
!-----------------------------------------------------------------------------
.fields
    IntNaklDate1 IntNaklDate2 IntNaklKol
    IntNaklCostUch IntNaklCostUchVal
    IntNaklCostKupl IntNaklCostKuplVal
    IntNaklSumNacen IntNaklSumNacenVal
    IntNaklMassa IntNaklVolume
.endfields
^^^^^^^^^^^
!-----------------------------------------------------------------------------
.{
.fields
    IntNaklNaim IntNaklNalKol IntNaklSum IntNaklSumVal
.endfields
^^^^
.}
!-----------------------------------------------------------------------------
.}
!------------ конец цикла по группам товаров ---------------------------------
.fields
    a6 GroupKol
    GroupCostUch GroupCostUchVal
    GroupCostKupl GroupCostKuplVal
    GroupSumNacen GroupSumNacenVal
    GroupMassa GroupVolume
.endfields
^^^^^^^^^^
!------------ итоги по оплате, возвратам и налогам группы товаров ------------
.{
.fields
    GroupNaim GroupNalKol GroupSum GroupSumVal
.endfields
^^^^
.}
!-----------------------------------------------------------------------------
.}
!------------ конец цикла по группам -----------------------------------------
.fields
    TotKol
    TotCostUch TotCostUchVal
    TotCostKupl TotCostKuplVal
    TotSumNacen TotSumNacenVal
    TotMassa TotVolume
.endfields
^^^^^^^^^
!------------ конечные итоги по оплате, возвратам и налогам ------------------
.{
.fields
    TotNaim TotNalKol TotSum TotSumVal
.endfields
^^^^
.}
!-----------------------------------------------------------------------------
.endform
!
!
!
!
!
