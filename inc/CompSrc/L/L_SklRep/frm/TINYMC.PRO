! ╔═════════════════════════════════════════════════════════════════════════╗
! ║  Разработал:  Александр Крахотко                                        ║
! ║  Назначение:  Оборотная ведомость по МЦ                                 ║
! ╚═════════════════════════════════════════════════════════════════════════╝
#doc
Оборотная ведомость по МЦ
#end
.Set Name = 'TinyMC'
.hide
.fields
  sPodr  : string
  sMOL   : string
  sMC    : string
  sParty : string

  b_dat e_dat
  valR valB
!.{
  mc_nom  mc_name mc_nRec : comp ed_Y ed_O
!.{
!.if tinyskl0
      sklad
      sklad_nRec:comp
      // в учетных единицах измерения
      b_kolY:double  b_prRY  b_prBY  b_sumRY  b_sumBY
      a_kolY:double  a_prRY  a_prBY  a_sumRY  a_sumBY
      s_kolY:double  s_prRY  s_prBY  s_sumRY  s_sumBY
      e_kolY:double  e_prRY  e_prBY  e_sumRY  e_sumBY
      // в отпускных
      b_kolO  b_prRO  b_prBO  b_sumRO  b_sumBO
      a_kolO  a_prRO  a_prBO  a_sumRO  a_sumBO
      s_kolO  s_prRO  s_prBO  s_sumRO  s_sumBO
      e_kolO  e_prRO  e_prBO  e_sumRO  e_sumBO
      // в весовых характеристиках
      b_kolV  b_prRV  b_prBV  b_sumRV  b_sumBV
      a_kolV  a_prRV  a_prBV  a_sumRV  a_sumBV
      s_kolV  s_prRV  s_prBV  s_sumRV  s_sumBV
      e_kolV  e_prRV  e_prBV  e_sumRV  e_sumBV

      b_sumR_NDS b_sumB_NDS
      a_sumR_NDS a_sumB_NDS
      s_sumR_NDS s_sumB_NDS
      e_sumR_NDS e_sumB_NDS
!.end
!.}
!.if tinyskl1 // сумма по МЦ
    // в учетных единицах измерения
    sb_kolY:double  sb_prRY  sb_prBY  sb_sumRY  sb_sumBY
    sa_kolY:double  sa_prRY  sa_prBY  sa_sumRY  sa_sumBY
    ss_kolY:double  ss_prRY  ss_prBY  ss_sumRY  ss_sumBY
    se_kolY:double  se_prRY  se_prBY  se_sumRY  se_sumBY
    // в отпускных
    sb_kolO  sb_prRO  sb_prBO  sb_sumRO  sb_sumBO
    sa_kolO  sa_prRO  sa_prBO  sa_sumRO  sa_sumBO
    ss_kolO  ss_prRO  ss_prBO  ss_sumRO  ss_sumBO
    se_kolO  se_prRO  se_prBO  se_sumRO  se_sumBO
    // в весовых характеристиках
    sb_kolV  sb_prRV  sb_prBV  sb_sumRV  sb_sumBV
    sa_kolV  sa_prRV  sa_prBV  sa_sumRV  sa_sumBV
    ss_kolV  ss_prRV  ss_prBV  ss_sumRV  ss_sumBV
    se_kolV  se_prRV  se_prBV  se_sumRV  se_sumBV
!!.end
!.}
!!.if tinyskl2 // итого по предприятию
  // в учетных единицах измерения
  ib_kolY  ib_prRY  ib_prBY  ib_sumRY  ib_sumBY
  ia_kolY  ia_prRY  ia_prBY  ia_sumRY  ia_sumBY
  is_kolY  is_prRY  is_prBY  is_sumRY  is_sumBY
  ie_kolY  ie_prRY  ie_prBY  ie_sumRY  ie_sumBY
  // в отпускных
  ib_kolO  ib_prRO  ib_prBO  ib_sumRO  ib_sumBO
  ia_kolO  ia_prRO  ia_prBO  ia_sumRO  ia_sumBO
  is_kolO  is_prRO  is_prBO  is_sumRO  is_sumBO
  ie_kolO  ie_prRO  ie_prBO  ie_sumRO  ie_sumBO
  // в весовых характеристиках
  ib_kolV  ib_prRV  ib_prBV  ib_sumRV  ib_sumBV
  ia_kolV  ia_prRV  ia_prBV  ia_sumRV  ia_sumBV
  is_kolV  is_prRV  is_prBV  is_sumRV  is_sumBV
  ie_kolV  ie_prRV  ie_prBV  ie_sumRV  ie_sumBV
!!.end
.endfields

^ ^ ^ ^
н_дата к_дата ^ ^
валН валБ     ^ ^
.{
  номенкк_МЦ наименование_МЦ ^ едУ едО ^ ^ ^ ^
.{
.if PosNoZero
      // н[ачало] п[риход] р[асход] к[онец]
      // кол - количество, сум - сумма в валюте
      склад  ^
      склад_nrec ^
      // в "У"четных единицах измерения
      н_колУ  н_ценаНУ  н_ценаБУ  н_сумНУ  н_сумБУ ^ ^ ^ ^ ^
      п_колУ  п_ценаНУ  п_ценаБУ  п_сумНУ  п_сумБУ ^ ^ ^ ^ ^
      р_колУ  р_ценаНУ  р_ценаБУ  р_сумНУ  р_сумБУ ^ ^ ^ ^ ^
      к_колУ  к_ценаНУ  к_ценаБУ  к_сумНУ  к_сумБУ ^ ^ ^ ^ ^
      // в "О"тпускных
      н_колО  н_ценаНО  н_ценаБО  н_сумНО  н_сумБО ^ ^ ^ ^ ^
      п_колО  п_ценаНО  п_ценаБО  п_сумНО  п_сумБО ^ ^ ^ ^ ^
      р_колО  р_ценаНО  р_ценаБО  р_сумНО  р_сумБО ^ ^ ^ ^ ^
      к_колО  к_ценаНО  к_ценаБО  к_сумНО  к_сумБО ^ ^ ^ ^ ^
      // в "В"есовых характеристиках
      н_колВ  н_ценаНВ  н_ценаБВ  н_сумНВ  н_сумБВ ^ ^ ^ ^ ^
      п_колВ  п_ценаНВ  п_ценаБВ  п_сумНВ  п_сумБВ ^ ^ ^ ^ ^
      р_колВ  р_ценаНВ  р_ценаБВ  р_сумНВ  р_сумБВ ^ ^ ^ ^ ^
      к_колВ  к_ценаНВ  к_ценаБВ  к_сумНВ  к_сумБВ ^ ^ ^ ^ ^

      b_sumR_NDS b_sumB_NDS ^ ^
      a_sumR_NDS a_sumB_NDS ^ ^
      s_sumR_NDS s_sumB_NDS ^ ^
      e_sumR_NDS e_sumB_NDS ^ ^
.end
.}
!.if Усли_сумма_не0
    // в "У"четных единицах измерения
    сн_колУ  сн_ценаНУ  сн_ценаБУ  сн_сумНУ  сн_сумБУ ^ ^ ^ ^ ^
    сп_колУ  сп_ценаНУ  сп_ценаБУ  сп_сумНУ  сп_сумБУ ^ ^ ^ ^ ^
    ср_колУ  ср_ценаНУ  ср_ценаБУ  ср_сумНУ  ср_сумБУ ^ ^ ^ ^ ^
    ск_колУ  ск_ценаНУ  ск_ценаБУ  ск_сумНУ  ск_сумБУ ^ ^ ^ ^ ^
    // в "О"тпускных
    сн_колО  сн_ценаНО  сн_ценаБО  сн_сумНО  сн_сумБО ^ ^ ^ ^ ^
    сп_колО  сп_ценаНО  сп_ценаБО  сп_сумНО  сп_сумБО ^ ^ ^ ^ ^
    ср_колО  ср_ценаНО  ср_ценаБО  ср_сумНО  ср_сумБО ^ ^ ^ ^ ^
    ск_колО  ск_ценаНО  ск_ценаБО  ск_сумНО  ск_сумБО ^ ^ ^ ^ ^
    // в "В"есовых характеристиках
    сн_колВ  сн_ценаНВ  сн_ценаБВ  сн_сумНВ  сн_сумБВ ^ ^ ^ ^ ^
    сп_колВ  сп_ценаНВ  сп_ценаБВ  сп_сумНВ  сп_сумБВ ^ ^ ^ ^ ^
    ср_колВ  ср_ценаНВ  ср_ценаБВ  ср_сумНВ  ср_сумБВ ^ ^ ^ ^ ^
    ск_колВ  ск_ценаНВ  ск_ценаБВ  ск_сумНВ  ск_сумБВ ^ ^ ^ ^ ^
!.end
.}
!.if Усли_итого_не0
  // итого по предприятию
  // в "У"четных единицах измерения
  ин_колУ  ин_ценаНУ  ин_ценаБУ  ин_сумНУ  ин_сумБУ ^ ^ ^ ^ ^
  ип_колУ  ип_ценаНУ  ип_ценаБУ  ип_сумНУ  ип_сумБУ ^ ^ ^ ^ ^
  ир_колУ  ир_ценаНУ  ир_ценаБУ  ир_сумНУ  ир_сумБУ ^ ^ ^ ^ ^
  ик_колУ  ик_ценаНУ  ик_ценаБУ  ик_сумНУ  ик_сумБУ ^ ^ ^ ^ ^
  // в "О"тпускных
  ин_колО  ин_ценаНО  ин_ценаБО  ин_сумНО  ин_сумБО ^ ^ ^ ^ ^
  ип_колО  ип_ценаНО  ип_ценаБО  ип_сумНО  ип_сумБО ^ ^ ^ ^ ^
  ир_колО  ир_ценаНО  ир_ценаБО  ир_сумНО  ир_сумБО ^ ^ ^ ^ ^
  ик_колО  ик_ценаНО  ик_ценаБО  ик_сумНО  ик_сумБО ^ ^ ^ ^ ^
  // в "В"есовых характеристиках
  ин_колВ  ин_ценаНВ  ин_ценаБВ  ин_сумНВ  ин_сумБВ ^ ^ ^ ^ ^
  ип_колВ  ип_ценаНВ  ип_ценаБВ  ип_сумНВ  ип_сумБВ ^ ^ ^ ^ ^
  ир_колВ  ир_ценаНВ  ир_ценаБВ  ир_сумНВ  ир_сумБВ ^ ^ ^ ^ ^
  ик_колВ  ик_ценаНВ  ик_ценаБВ  ик_сумНВ  ик_сумБВ ^ ^ ^ ^ ^
!.end

.endform
