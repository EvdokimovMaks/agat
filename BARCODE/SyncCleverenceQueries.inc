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
from mbpin
join katmbp on mbpin.cmbp = katmbp.nrec
left join attrnam anBarcode on anBarcode.wtable=2001 and anBarcode.name=:anMBPBarcode
left join attrnam anPlace on anPlace.wtable=2001 and anPlace.name=:anMBPPlace
left join attrval avBarcode on avBarcode.crec = mbpin.nrec and avBarcode.cattrnam = anBarcode.nrec and avBarcode.vString <> ''
left join attrval avPlace on avPlace.crec = mbpin.nrec and avPlace.cattrnam = anPlace.nrec
left join katmol on katmol.nrec=mbpin.cmol
left join katpodr on katpodr.nrec=mbpin.cpodr
where mbpin.kolfact > 0 and (
      datetime(avBarcode.atl_lastdate, avBarcode.atl_lasttime) >= datetime(:date, :time ) or
      datetime(avPlace.atl_lastdate, avPlace.atl_lasttime) >= datetime(:date, :time ) or
      datetime(mbpin.atl_lastdate, mbpin.atl_lasttime) >= datetime(:date, :time ) or
      datetime(katmbp.atl_lastdate, katmbp.atl_lasttime) >= datetime(:date, :time ) );
