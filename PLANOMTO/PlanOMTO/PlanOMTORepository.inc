sql query q1 =
select indent.nrec                          as IndentNrec,
       claim.nrec                           as ClaimNrec,
       coalesce(pln.SpmnplanNrec, #comp(0)) as SpmnplanNrec,
       coalesce(pln.SpmnplNrec, #comp(0))   as SpmnplNrec,
       coalesce(pln.ValspmnpNrec, #comp(0)) as ValspmnpNrec,
       claim.cmcusl                         as KatmcNrec,
       claim.cotped                         as OtpedNrec,
       case claim.cstate
         when #comp(281474976710724) then #comp(281474976710882)   //исполняемый -> утвержденный
         when #comp(281474976710904) then #comp(281474976710919)   //Принята к исполнению -> Принята к исполнению
         when #comp(281474976710937) then #comp(281474976710919)   //Заменяющая.Принята к исполнению -> Принята к исполнению
         when #comp(281474976710908) then #comp(281474976710934)   //Заменяющая -> Заменяющая
         when #comp(281474976710906) then #comp(281474976710938)   //Исполнена -> Исполнена
         else #comp(281474976710884)                               //по умполчанию -> Оформлена
       end                             as KatnotesNrec,
       claim.cvalkau[1]                as KatstroyNrec,
       claim.cvalkau[2]                as PersonNrec,
       indent.priority                 as PriorNrec,
       indent.dind                     as dbeg,
       indent.dplan                    as dend,
       claim.dfinish                   as daccept,
       claim.kol                       as ClaimQty
from indent
join claim on indent.nrec = claim.cindent and claim.kol > 0 and claim.prmc = 1   //статус строки заявки - не закрыт
left join (select oa.cobject as IndentNrec, spoa.cpos as ClaimNrec, max(spm.nrec) as SpmnplanNrec, max(spmnpl.nrec) as SpmnplNrec, max(vsp.nrec) as ValspmnpNrec
           from objacct oa
           join spobjacc spoa on oa.nrec = spoa.cobjacct and 13 = spoa.typepos and 31 = spoa.typeobj
           join spmnpl on spoa.cobject = spmnpl.nrec and 25 = spmnpl.wkolan
           join valspmnp vsp on spmnpl.nrec = vsp.cspmnpl
           join spmnplan spm on spmnpl.cspmnplan = spm.nrec
           where oa.typeown=29 and oa.cowner=? and oa.typeobj=3
           group by oa.cobject, spoa.cpos
          ) pln on indent.nrec = pln.IndentNrec and claim.nrec = pln.ClaimNrec
where indent.cstate in (#comp(281474976710896), #comp(281474976710897), #comp(281474976710895)) //Статус "Согласована", "Принята к исполнению", "Исполнена"
;

sql query q2 =
select spm.nrec                                     as SpmnplanNrec,
       spl.nrec                                     as SpmnplNrec,
       vsp.nrec                                     as ValspmnpNrec,
       case when coalesce(cp.termdefby, 0) = 0
       then coalesce(cp.dto, 0)
       else case when coalesce(tplat.mindate,0) > 0
            then coalesce(tplat.mindate,0) + coalesce(cp.ndays,0)
            else 0
            end
       end                                          as dDeliverPlan,
       coalesce(tbuy.dord,0)                        as dDeliverFact,
       coalesce(tplat.mindate,0)                    as dPayFact,
       coalesce(basedoc.nrec, #comp(0))             as BasedocNrec,
       coalesce(basedoc.corg, #comp(0))             as KatorgNrec,
       coalesce(spstep.kol,0)                       as BasedocQty,
       coalesce(spstep.summa,0)                     as BasedocSum,
       case when coalesce(basedoc.total,0) > 0
            then  coalesce(spstep.summa,0) / basedoc.total * coalesce(tplat.summa,0)
            else  coalesce(tplat.summa,0)
       end                                          as BasedocPaid,
       coalesce(tbuy.qty,0)                         as BuyQtyFact,
       coalesce(tRegrade.Qty,0)                     as RegradeQty,
       coalesce(tIssue.Qty,0)                       as IssueQty
from spmnplan spm
join spmnpl spl on spm.nrec = spl.cspmnplan and 25 = spl.wkolan
join valspmnp vsp on spl.nrec = vsp.cspmnpl
left join spobjacc spoa1 on 31 = spoa1.typepos and spl.nrec = spoa1.cpos and 35 = spoa1.typeobj and spoa1.cobject <> #comp(0)
left join spstep on coalesce(spoa1.cobject, #comp(0)) = spstep.nrec
left join stepdoc on coalesce(spstep.cstepdoc, #comp(0)) = stepdoc.nrec
left join basedoc on coalesce(stepdoc.cbasedoc, #comp(0)) = basedoc.nrec
left join calplan cp on coalesce(basedoc.ccalplan, #comp(0)) = cp.nrec
left join (select cstepdoc, min(datob) as mindate, max(datob) as maxdate, sum(summa) as summa
           from soprhoz
           where 1 = tidkgal and #comp(0) <> cstepdoc
           group by cstepdoc
          ) tplat on coalesce(stepdoc.nrec,#comp(0)) = tplat.cstepdoc
left join (select bd.nrec as cbasedoc, spo.cmc as cmc, max(spo.dord) as dord, sum(spo.kol) as qty
           from basedoc bd
           join stepdoc sd on bd.nrec = sd.cbasedoc
           join katsopr ks on sd.nrec = ks.cstepdoc
           join sklorder sko on ks.nrec = sko.csopr and 0 = sko.vidorder
           join sporder spo on sko.nrec = spo.csklorder
           where bd.viddoc in (101,111)
           group by bd.nrec, spo.cmc
          ) tbuy on coalesce(basedoc.nrec,#comp(0)) = tbuy.cbasedoc and spm.cizd = tbuy.cmc
left join (select spo.cmc as KatmcNrec, sm.cobj as KatstroyNrec, sm.ckau[4] as IndentNrec, sum(spo.kol) as Qty
           from katsopr ks
           join sklorder sko on ks.nrec = sko.csopr and 0 = sko.vidorder
           join sporder spo on sko.nrec = spo.csklorder
           join specmtr sm on 1112 = sm.cotable and spo.nrec = sm.cspec and sm.ckau[4] <> 0
           where ks.vidsopr = 630
           group by spo.cmc, sm.cobj, sm.ckau[4]
          ) tRegrade on spm.cizd = tRegrade.KatmcNrec and spm.canval1 = tRegrade.KatstroyNrec and spm.canval3 = tRegrade.IndentNrec
left join (select spo.cmc as KatmcNrec, sm.cobj as KatstroyNrec, sm.ckau[4] as IndentNrec, sum(spo.kol) as Qty
           from katsopr ks
           join sklorder sko on ks.nrec = sko.csopr and 1 = sko.vidorder
           join sporder spo on sko.nrec = spo.csklorder
           join specmtr sm on 1112 = sm.cotable and spo.nrec = sm.cspec and sm.ckau[4] <> 0
           where ks.vidsopr = 501
           group by spo.cmc, sm.cobj, sm.ckau[4]
          ) tIssue on spm.cizd = tIssue.KatmcNrec and spm.canval1 = tIssue.KatstroyNrec and spm.canval3 = tIssue.IndentNrec
where spm.cmnplan = ?
;

const
  ROLE_INDENT       = 400114700445157Dh;
  ROLE_KATSTROY     = 0001000000000001h;
  ROLE_PERSON       = 40014835F8DA98C2h;
  ROLE_PROVIDER     = 400111A5C92CBBF8h;
  ROLE_BASEDOC      = 0001000000000011h;
  ROLE_PLSNAB       = 400174D9C8CF511Eh;
  KATNOTES_DONE     = 000100000000011Ah; //статус строки плана ОМТО - исполнена
end;



 /*
sql query q1 =
select indent.nrec as IndentNrec,
       claim.nrec as ClaimNrec,
       coalesce(spm.nrec, #comp(0)) as SpmnplanNrec,
       coalesce(spmnpl.nrec, #comp(0)) as SpmnplNrec,
       coalesce(vsp.nrec, #comp(0)) as ValspmnpNrec,
       claim.cmcusl as KatmcNrec,
       claim.cotped as OtpedNrec,

       case claim.cstate
         when #comp(281474976710724) then #comp(281474976710882)   //исполняемый -> утвержденный
         when #comp(281474976710904) then #comp(281474976710919)   //Принята к исполнению -> Принята к исполнению
         when #comp(281474976710937) then #comp(281474976710919)   //Заменяющая.Принята к исполнению -> Принята к исполнению
         when #comp(281474976710908) then #comp(281474976710934)   //Заменяющая -> Заменяющая
         else #comp(281474976710884)                               //по умполчанию -> Оформлена
       end as KatnotesNrec,

       indent.priority as PriorNrec,
       indent.dind as dbeg,
       indent.dplan as dend,
       claim.dfinish as daccept,

       case when coalesce(cp.termdefby, 0) = 0
       then coalesce(cp.dto, 0)
       else case when coalesce(tplat.mindate,0) > 0
            then coalesce(tplat.mindate,0) + coalesce(cp.ndays,0)
            else 0
            end
       end as dDeliverPlan,

       coalesce(tbuy.dord,0) as dDeliverFact,
       coalesce(tplat.mindate,0) as dPayFact,
       coalesce(basedoc.nrec, #comp(0)) as BasedocNrec,
       coalesce(tdo.qty,0) as BasedocQty,
       coalesce(basedoc.total, 0) as BasedocSum,
       coalesce(tplat.summa,0) as BasedocPaid,
       coalesce(tbuy.qty,0) as BuyQtyFact
from indent
join claim on indent.nrec = claim.cindent and claim.kol > 0 and claim.prmc = 1 and claim.state <> 3   //статус строки заявки - не закрыт
left join objacct oa on oa.typeown=29 and oa.cowner=? and oa.typeobj=3 and oa.cobject=indent.nrec
left join spobjacc spoa on coalesce(oa.nrec,#comp(0)) = spoa.cobjacct and
                            13 = spoa.typepos and claim.nrec = spoa.cpos and
                            31 = spoa.typeobj and #comp(0) <> spoa.cobject
left join spmnpl on coalesce(spoa.cobject, #comp(0)) = spmnpl.nrec and 25 = spmnpl.wkolan
left join valspmnp vsp on coalesce(spmnpl.nrec, #comp(0)) = vsp.cspmnpl
left join spmnplan spm on coalesce(spmnpl.cspmnplan, #comp(0)) = spm.nrec
left join spobjacc spoa1 on 31 = spoa1.typepos and coalesce(spmnpl.nrec,#comp(0)) = spoa1.cpos and 35 = spoa1.typeobj and spoa1.cobject <> #comp(0) and spoa1.cpos <> #comp(0)
left join spstep on coalesce(spoa1.cobject, #comp(0)) = spstep.nrec
left join stepdoc on coalesce(spstep.cstepdoc, #comp(0)) = stepdoc.nrec
left join basedoc on coalesce(stepdoc.cbasedoc, #comp(0)) = basedoc.nrec and basedoc.viddoc in (101,111)
left join calplan cp on coalesce(basedoc.ccalplan, #comp(0)) = cp.nrec
left join (select cstepdoc, min(datob) as mindate, max(datob) as maxdate, sum(summa) as summa
           from soprhoz
           where 1 = tidkgal and #comp(0) <> cstepdoc
           group by cstepdoc
          ) tplat on coalesce(stepdoc.nrec,#comp(0)) = tplat.cstepdoc
left join (select bd.nrec as cbasedoc, spo.cmc as cmc, max(spo.dord) as dord, sum(spo.kol) as qty
           from basedoc bd
           join stepdoc sd on bd.nrec = sd.cbasedoc
           join katsopr ks on sd.nrec = ks.cstepdoc
           join sklorder sko on ks.nrec = sko.csopr and 0 = sko.vidorder
           join sporder spo on sko.nrec = spo.csklorder
           where bd.viddoc in (101,111)
           group by bd.nrec, spo.cmc
          ) tbuy on coalesce(basedoc.nrec,#comp(0)) = tbuy.cbasedoc and claim.cmcusl = tbuy.cmc
left join (select bd.nrec as cbasedoc, sps.cmcusl as cmc, sum(sps.kol) as qty
           from basedoc bd
           join stepdoc sd on bd.nrec = sd.cbasedoc
           join spstep sps on sd.nrec = sps.cstepdoc and sps.prmc = 1
           group by bd.nrec, sps.cmcusl
          ) tdo on coalesce(basedoc.nrec,#comp(0)) = tdo.cbasedoc and claim.cmcusl = tdo.cmc
where indent.cstate=#comp(281474976710896);
*/
