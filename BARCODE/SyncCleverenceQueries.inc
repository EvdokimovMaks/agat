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
where katos.dopinnum <> '' and datetime(katos.atl_lastdate, katos.atl_lasttime) >= datetime(:date, :time)

union all

select 2,
       mbpin.nrec,
       katmbp.name,
       avBarcode.vstring,
       katmol.name,
       katpodr.name,
       mbpin.din,
       avPlace.vstring,
       katmbp.nnumber
from katmbp
join mbpin on mbpin.cmbp = katmbp.nrec and mbpin.kolfact > 0
join attrnam anBarcode on anBarcode.wtable=2001 and anBarcode.name=:anMBPBarcode
join attrnam anPlace on anPlace.wtable=2001 and anPlace.name=:anMBPPlace
join attrval avBarcode on avBarcode.crec = mbpin.nrec and avBarcode.cattrnam = anBarcode.nrec and
                          avBarcode.vString <> '' and datetime(avBarcode.atl_lastdate, avBarcode.atl_lasttime) >= datetime(:date, :time)
left join attrval avPlace on avPlace.crec = mbpin.nrec and avPlace.cattrnam = anPlace.nrec
left join katmol on katmol.nrec=mbpin.cmol
left join katpodr on katpodr.nrec=mbpin.cpodr;
