//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Логистика
// Форма КС-14
//******************************************************************************

#doc
Форма КС-14
#end
.set name = 'kc14'
.hide

.fields
 SelfOrg
 Org
 Zakaz
 VvStroy_NoDoc
 VvStroy_DatOb        : date
 MoveOs_NoDoc
 MoveOs_DatOb         : date
 KatStroy_nRec
 KatStroy_name
 KatPlace_ADDRESS
 Contr_name_designer
 Contr_addr_designer
 KatOrg_name_designer
 KatOrg_addr_designer
 KatStroy_BOSEPSD     : string
 KatStroy_DataPSD     : date
 KatStroy_NoPSD
 VVStroy_nRec         : comp
 dBeg dEnd            : date
 monB monE            : string
 godB godE            : string

 _PICKFORM            : string
 _PICKFORM1           : string
 _FORM_A_or_B1        : string
 _FORM_A_or_B2        : string

  Valuta
  Kopeyka
  VsegoPSDR
  VsegoPSDK
  CMRPSDR
  CMRPSDK
  OborudPSDR
  OborudPSDK
  VsegoOSFR
  VsegoOSFK
  CMROSFR
  CMROSFK
  OborudOSFR
  OborudOSFK

  VsegoPSDT
  CMRPSDT
  OborudPSDT
  VsegoOSFT
  CMROSFT
  OborudOSFT

  DetailPSDName
  DetailPSDT
  DetailPSDR
  DetailPSDK

  DetailOSFName
  DetailOSFT
  DetailOSFR
  DetailOSFK

.endfields

 SelfOrg = ^
 Organization = ^
 Zakaz = ^
 VvStroy_NoDoc = ^
 VvStroy_DatOb = ^
 MoveOs_NoDoc = ^
 MoveOs_DatOb = ^
 KatStroy_nRec = ^
 KatStroy_name = ^
 KatPlace_ADDRESS = ^
 Contr_name_designer = ^
 Contr_addr_designer = ^
 KatOrg_name_designer = ^
 KatOrg_addr_designer = ^
 KatStroy_BOSEPSD = ^
 KatStroy_DataPSD = ^
 KatStroy_NoPSD = ^
 VVStroy_nRec = ^
 dBeg = ^
 dEnd = ^
 monB = ^
 monE = ^
 godB = ^
 godE = ^

.{PICKFORM
  _PICKFORM ^
.}
 _PICKFORM1 ^
.{FORM_A_or_B
  _FORM_A_or_B1 ^
  _FORM_A_or_B2 ^
.}

  Valuta ^
  Kopeyka ^
  VsegoPSD  ^ ^
  CMRPSD    ^ ^
  OborudPSD ^ ^
  VsegoOSF  ^ ^
  CMROSF    ^ ^
  OborudOSF ^ ^

  VsegoPSDT  ^
  CMRPSDT    ^
  OborudPSDT ^
  VsegoOSFT  ^
  CMROSFT    ^
  OborudOSFT ^

.{
  DetailPSDName ^
  DetailPSDT    ^
  DetailPSDR    ^
  DetailPSDK    ^
.}
.{
  DetailOSFName ^
  DetailOSFT    ^
  DetailOSFR    ^
  DetailOSFK    ^
.}

.endform
