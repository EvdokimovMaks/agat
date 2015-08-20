#doc
Иерархический отчет о размещении МЦ в ячейках хранения
#end
.Set Name = 'BoxIerMC'
.hide
.fields

 LevelName       : string
 PartyName       : string
 RKol            : double
 REdIzm          : string
 RVolume         : double
 wIsLeaf         : word

 SaldoBox_nRec   : comp
 KatMCRep_nRec   : comp
 KatBox_nRec     : comp
 BoxIerRep_nRec  : comp
 KatParty_nRec   : comp
 KatEd_nRec      : comp

.endfields
.{
  ^ ^ ^ ^ ^ ^
  ^ ^ ^ ^ ^ ^
.}
.endform
