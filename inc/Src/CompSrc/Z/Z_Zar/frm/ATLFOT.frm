.form AFForm
.hide
.fields
VedMonth1
VedYear1
VedMonth2
VedYear2
EmptyItog
YearVed
Yearitog
MonthVed
EmptyItog1
EmptyVed
PodrName
PodrItog
PodrOkladAv
PodrBonusAv
PodrTotalAv
PodrOklad
PodrBonus
.endfields
  ^ ^ ^ ^
 .{.?AF_HatI; ^ .} .{.?AF_HatY; ^ .}
 .{.?AF_HatIY; ^ .} .{.?AF_HatM; ^ .}
 .{.?AF_HatIE; ^ .} .{.?AF_HatO; ^ .}
.{ AF_mpCycle checkEnter
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@ .{.?AF_PodrYear; &&&&&&&&&&.&& |.}  .{.?AF_PodrAv; ^ ^ ^ .} .{.?AF_PodrMonth; &&&&&&&&&&.&& &&&&&&&&&&.&& |.}
.}
.fields
FPodrname
FPodrItog
FPodrOkladAv
FPodrBonusAv
FPodrTotalAv
FPodrOklad
FPodrBonus
NameDolj
FIO
Datpos
YearPersItog
persOkladAv
persBonusAv
persTotalAv
Oklad
Itog
.endfields
.{ AF_PodrFlevel checkEnter
^  .{.?AF_FPodrYear; &&&&&&&&&&.&& |.}  .{.?AF_FPodrAv; ^ ^ ^ .} .{.?AF_FPodrMonth; &&&&&&&&&&.&& &&&&&&&&&&.&& |.}
.{ AF_pers checkenter
@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ .{.?AF_PersYear; &&&&&&&&&&.&& |.} .{.?AF_PersAv; ^ ^ ^ .} .{.?AF_PersMonth; &&&&&&&&&&.&& &&&&&&&&&&.&& |.}
.}
.}
.endform
