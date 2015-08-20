/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,99 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : €ขโฎโเ ญแฏฎเโ                                             บ
 บ ฅเแจ๏        : 6.00                                                      บ
 บ  งญ ็ฅญจฅ    : ’ฅๅญจชฎ - ํชแฏซใ โ ๆจฎญญ๋ฅ ฏฎช ง โฅซจ                     บ
 บ โขฅโแโขฅญญ๋ฉ : ซ cจช  ขฅซ ซ คจฌจเฎขจ็                                 บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name='Tex_Rep'
.hide
.fields
  Filter
  HoursInDay
  NaimPred Rep_Nrec : comp
  BegDate  EndDate
  NameItg NameItgDop
  Str_Name1 Str_Name2 Str_Name3 Str_Name4 Str_Name5 Str_Name6
  VarToplivo dat
  AnalGroup NumLevel
  CodTbl :word  NrecTBl : comp
  AnalDet AnalDet_Dop
  GosNomer GarNom MarkaNm Lst_Nrec : comp
  DatePL Smena NPL SpeedExi SpeedRet MotoExi MotoRet Tabn Fio TimeNorma TimeAll TimeMove TimeStop TimeRep TimeInOut
  Ezdk ProbegAll ProbegGr Tonn TonnKm MotoTime
!---------------------------
  LenNariad TexSpeed LenEzdSr TimeLoadSr
  ADInHous ADInRepair kval ktg
  GruzStat GruzDin GruzPodSr
!---------------------------
 ProbegSobst ProbegSobst_Gru ProbegSobst_tkm
 ProbegCng  ProbegCng_Gru ProbegCng_tkm
 ProbegIno  ProbegIno_Gru ProbegIno_tkm
 ProbegNoCity ProbegNoCity_Gru ProbegNoCity_tkm
 ProbegCity Probeg1Gr Probeg2Gr Probeg3Gr ProbegMount ProbegExpl ProbegExplEnd
 KodGsm Gsmname BegOwKg EndOwKg VidtGsmKg NormGsmKg FaktGsmKg EkonomKg
 BegOw EndOw VidtGsm NormGsm FaktGsm Ekonom
 TimeHeat TimeSpec probegWrk
 TimeNar
 Nrec_trl GosNomer_trl GarNom_Trl
 Probeg_pri ProbegGrPri GruzTnPri GruzTnKmPri Probeg_beg Probeg_end Stop_noDvi
!---------------------------

  AnalItg NumLevelItg
  CodTblItg :word  NrecTBlItg : comp
  TimeNormaItg TimeAllItg TimeMoveItg TimeStopItg TimeRepItg TimeInOutItg
  EzdkItg ProbegAllItg ProbegGrItg TonnItg TonnKmItg MotoTimeItg
!---------------------------
  LenNariadItg TexSpeedItg LenEzdSrItg TimeLoadSrItg
  ADInHousItg ADInRepairItg kvalItg ktgItg
  GruzStatItg GruzDinItg GruzPodSrItg
!---------------------------

 ProbegSobstItg ProbegSobst_GruItg ProbegSobst_tkmItg
 ProbegCngItg  ProbegCng_GruItg ProbegCng_tkmItg
 ProbegInoItg  ProbegIno_GruItg ProbegIno_tkmItg
 ProbegNoCityItg ProbegNoCity_GruItg ProbegNoCity_tkmItg
 ProbegCityItg Probeg1GrItg Probeg2GrItg Probeg3GrItg ProbegMountItg
 VidtGsmKgItg NormGsmKgItg FaktGsmKgItg EkonomKgItg
 VidtGsmItg NormGsmItg FaktGsmItg EkonomItg
 TimeHeatItg TimeSpecItg probegWrkItg
 TimeNaritg
 Probeg_priItg ProbegGrPriItg GruzTnPriItg GruzTnKmPriItg Probeg_begItg Probeg_endItg  Stop_noDviItg Limit_Itg
!---------------------------

.endfields


.{
^
.}
^
^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^
^ ^
.{ CheckEnter GroupAnal
^
^ ^ ^
.{ CheckEnter DocAnal
^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^  ^    ^ ^ ^ ^
.}
.{ CheckEnter TotalAnal
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^   ^ ^ ^
.}
.}
.endform
