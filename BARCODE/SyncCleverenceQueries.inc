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
where katos.dopinnum <> ''// and (
      //datetime(katos.atl_lastdate, katos.atl_lasttime) >= datetime(:date, :time ) or
      //datetime(kaureff.atl_lastdate, kaureff.atl_lasttime) >= datetime(:date, :time ) )

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
//where datetime(avBarcode.atl_lastdate, avBarcode.atl_lasttime) >= datetime(:date, :time ) or
//      datetime(avPlace.atl_lastdate, avPlace.atl_lasttime) >= datetime(:date, :time ) or
//      datetime(mbpin.atl_lastdate, mbpin.atl_lasttime) >= datetime(:date, :time ) or
//      datetime(katmbp.atl_lastdate, katmbp.atl_lasttime) >= datetime(:date, :time )
;

sql query qSpDocs =
select year(datetime(invtab.dinv,0)) as year,
       month(datetime(invtab.dinv,0)) as month,
       invtab.csklad     as PodrNrec,
       invtab.cmol       as MOLNrec,
       1                 as Kind,
       spinvtab.cmc      as cRec,
       spkPlacePlan.code as placePlan,
       spkPlaceFact.code as placeFact,
       spinvtab.kolprg   as kolPlan,
       spinvtab.kol      as kolFact
from invtab
join spinvtab on invtab.nrec = spinvtab.cinvtab
join attrnam anPlacePlan on anPlacePlan.wtable = 1124 and anPlacePlan.name = :anPlacePlan
join attrnam anPlaceFact on anPlaceFact.wtable = 1124 and anPlaceFact.name = :anPlaceFact
left join attrval avPlacePlan on spinvtab.nrec = avPlacePlan.crec and anPlacePlan.nrec = avPlacePlan.cattrnam
left join attrval avPlaceFact on spinvtab.nrec = avPlaceFact.crec and anPlaceFact.nrec = avPlaceFact.cattrnam
left join spkau spkPlacePlan on avPlacePlan.vComp = spkPlacePlan.nrec
left join spkau spkPlaceFact on avPlaceFact.vComp = spkPlaceFact.nrec
where invtab.tipdoc = 15 and invtab.dinvend = 0 and invtab.dinv >= :date

union all

select year(datetime(mbpmove.dmove,0)) as year,
       month(datetime(mbpmove.dmove,0)) as month,
       mbpmove.cpodrf,
       mbpmove.cmolf,
       2,
       mbpinv.crecs[1],
       spkPlacePlan.code,
       spkPlaceFact.code,
       mbpinv.cntkol,
       mbpinv.fctkol
from mbpmove
join mbpinv on mbpmove.nrec = mbpinv.cmove
left join spkau spkPlacePlan on mbpinv.crecs[2] = spkPlacePlan.nrec
left join spkau spkPlaceFact on mbpinv.crecs[3] = spkPlaceFact.nrec
where mbpmove.status = 11 and mbpmove.cvalold = #comp(0) and mbpmove.dmove >= :date
;
