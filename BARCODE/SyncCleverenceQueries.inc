sql query qOSMBP =
select 1              as kind,
       katos.nrec     as nrec,
       katos.nameos   as name,
       katos.dopinnum as barcode,
       katmol.name    as mol,
       katpodr.name   as podr,
       katos.datek    as datek,
       spkau.name     as place,
       katos.innum    as innum
from katos
left join kaureff on kaureff.cotable=3000 and kaureff.crec=katos.nrec and kaureff.wkau=10004
left join spkau on spkau.nrec=kaureff.ckau
left join katmol on katmol.nrec=katos.cmol
left join katpodr on katpodr.nrec=katos.cpodr
where katos.dopinnum <> '' and (
      datetime(katos.atl_lastdate, katos.atl_lasttime) >= datetime(:date, :time ) or
      datetime(kaureff.atl_lastdate, kaureff.atl_lasttime) >= datetime(:date, :time ) )

union all

select 2                  as kind,
       mbpin.nrec         as nrec,
       katmbp.name        as name,
       avBarcode.vstring  as barcode,
       katmol.name        as mol,
       katpodr.name       as podr,
       mbpin.din          as datek,
       avPlace.vstring    as place,
       katmbp.nnumber     as innum
from katmbp
join mbpin on mbpin.cmbp = katmbp.nrec and mbpin.kolfact > 0
join attrnam anBarcode on anBarcode.wtable=2001 and anBarcode.name=:anMBPBarcode
join attrnam anPlace on anPlace.wtable=2001 and anPlace.name=:anMBPPlace
join attrval avBarcode on avBarcode.crec = mbpin.nrec and avBarcode.cattrnam = anBarcode.nrec and avBarcode.vString <> ''
left join attrval avPlace on avPlace.crec = mbpin.nrec and avPlace.cattrnam = anPlace.nrec
left join katmol on katmol.nrec=mbpin.cmol
left join katpodr on katpodr.nrec=mbpin.cpodr
where datetime(avBarcode.atl_lastdate, avBarcode.atl_lasttime) >= datetime(:date, :time ) or
      datetime(avPlace.atl_lastdate, avPlace.atl_lasttime) >= datetime(:date, :time ) or
      datetime(mbpin.atl_lastdate, mbpin.atl_lasttime) >= datetime(:date, :time ) or
      datetime(katmbp.atl_lastdate, katmbp.atl_lasttime) >= datetime(:date, :time );

sql query qDocs1 =
insert tdocs (kind, nrec, startDate, name)
select 3 as kind,
       invtab.nrec as nrec,
       invtab.dinv as startDate,
       'Ž‘ '+katmol.name+' '+katpodr.name as Name
from invtab
join katmol on invtab.cmol = katmol.nrec
join katpodr on invtab.csklad = katpodr.nrec
where invtab.tipdoc = 15 and invtab.dinvend = 0 and invtab.dinv >= :date;

sql query qDocs2 =
insert tdocs (kind, nrec, startDate, name)
select 4 as kind,
       mbpmove.nrec as nrec,
       mbpmove.dmove as startDate,
       'Œ '+katmol.name+' '+katpodr.name as Name
from mbpmove
join katmol on mbpmove.cmolf = katmol.nrec
join katpodr on mbpmove.cpodrf = katpodr.nrec
where mbpmove.status = 11 and mbpmove.cvalold = #comp(0) and mbpmove.dmove >= :date
;

sql query qSpDocs =
select tdocs.kind        as kind,
       tdocs.nrec        as docNrec,
       spinvtab.nrec     as spDocNrec,
       spinvtab.cmc      as cRec,
       spkPlacePlan.code as placePlan,
       spkPlaceFact.code as placeFact,
       spinvtab.kolprg   as kolPlan,
       spinvtab.kol      as kolFact
from tdocs
join spinvtab on tdocs.nrec = spinvtab.cinvtab
join attrnam anPlacePlan on anPlacePlan.wtable = 1124 and anPlacePlan.name = :anPlacePlan
join attrnam anPlaceFact on anPlaceFact.wtable = 1124 and anPlaceFact.name = :anPlaceFact
left join attrval avPlacePlan on spinvtab.nrec = avPlacePlan.crec and anPlacePlan.nrec = avPlacePlan.cattrnam
left join attrval avPlaceFact on spinvtab.nrec = avPlaceFact.crec and anPlaceFact.nrec = avPlaceFact.cattrnam
left join spkau spkPlacePlan on avPlacePlan.vComp = spkPlacePlan.nrec
left join spkau spkPlaceFact on avPlaceFact.vComp = spkPlaceFact.nrec
where tdocs.kind = 3

union all

select tdocs.kind,
       tdocs.nrec,
       mbpinv.nrec,
       mbpinv.ckatmbp,
       spkPlacePlan.code,
       spkPlaceFact.code,
       mbpinv.cntkol,
       mbpinv.fctkol
from tdocs
join mbpinv on tdocs.nrec = mbpinv.cmove
left join spkau spkPlacePlan on mbpinv.crecs[2] = spkPlacePlan.nrec
left join spkau spkPlaceFact on mbpinv.crecs[3] = spkPlaceFact.nrec
where tdocs.kind = 4;
