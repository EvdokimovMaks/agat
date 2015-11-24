table struct tPlanOmto (
  nrec        : comp,
  MnplanNrec  : comp,
  SpmnplanNrec: comp,
  SpmnplNrec  : comp,
  ValspmnpNrec: comp,
  GroupmcNrec : comp,
  GroupmcName : string[80],
  KatmcNrec   : comp,
  KatmcName   : string[80],
  OtpedNrec   : comp,
  OtpedName   : string[20],
  KatnotesNrec: comp,
  KatnotesName: string[30],
  PriorNrec   : comp,
  PriorName   : string[30],
  dbeg        : date,
  dend        : date,
  daccept     : date,
  ddeliverPlan: date,
  ddeliverNew : date,
  ddeliverFact: date,
  dpayFact    : date,
  KatstroyNrec: comp,
  KatstroyName: string[200],
  PersonNrec  : comp,
  PersonName  : string[60],
  IndentNrec  : comp,
  IndentName  : string[80],
  KatorgNrec  : comp,
  KatorgName  : string[150],
  BasedocNrec : comp,
  BasedocName : string[40],
  BasedocDate : date,
  IndentQty   : double,
  SaldoQty    : double,
  BuyQtyPlan  : double,
  BaseDocQty  : double,
  BuyQtyFact  : double,
  BasedocSum  : double,
  BasedocPaid : double,
  IssueQty    : double,
  RegradingQty: double,
  Description : string
) with index (
  i01 = Nrec (unique, surrogate),
  i02 = SpmnplanNrec
);

sql query queryLoadPlanOMTO =
select
  #IDENTITY,                                                //Nrec
  spm.cmnplan,                                            //MnplanNrec
  spm.nrec,                                               //SpmnplanNrec
  coalesce(spl.nrec, #comp(0)),                           //SpmnplNrec
  coalesce(vsp.nrec, #comp(0)),                           //ValspmnpNrec
  coalesce(groupmc.nrec, #comp(0)),                       //GroupmcNrec
  coalesce(groupmc.name,''),                              //GroupmcName
  coalesce(katmc.nrec, #comp(0)),                         //KatmcNrec
  coalesce(katmc.name,''),                                //KatmcName
  coalesce(katotped.nrec, #comp(0)),                      //KatedNrec
  coalesce(katotped.abbr,''),                             //KatedName
  coalesce(katnotes.nrec, #comp(0)),                      //KatnotesNrec
  coalesce(katnotes.name,''),                             //KatnotesName
  coalesce(farinfo.nrec,#comp(0)),                        //PriorNrec
  coalesce(farinfo.name,''),                              //PriorName
  spm.startdate,                                          //dbeg
  spm.enddate,                                            //dend
  spm.startdatefact,                                      //daccept
  spm.enddatefact,                                        //dDeliverPlan
  spm.utvdate,                                            //ddeliverNew
  date(spm.startdatetime),                                //dDeliverFact
  date(spm.enddatetime),                                  //dPayFact
  coalesce(ks.nrec,#comp(0)),                             //KatstroyNrec
  coalesce(ks.name,''),                                   //KatstroyName
  coalesce(pers.nrec,#comp(0)),                           //PersonNrec
  coalesce(pers.fio,''),                                  //PersonName
  coalesce(indent.nrec,#comp(0)),                         //IndentNrec
  coalesce(indent.noind,''),                              //IndentName
  coalesce(katorg.nrec,#comp(0)),                         //KatorgNrec
  coalesce(katorg.name,''),                               //KatorgName
  coalesce(basedoc.nrec,#comp(0)),                        //BasedocNrec
  coalesce(basedoc.nodoc,''),                             //BasedocName
  coalesce(basedoc.ddoc,0),                               //BasedocDate
  vsp.kol,                                                //IndentQty
  vsp.price,                                              //SaldoQty
  vsp.vprice,                                             //BuyQtyPlan
  vsp.summa,                                              //BaseDocQty
  vsp.kolfield5,                                          //BuyQtyFact
  vsp.kolfact,                                            //BasedocSum
  vsp.pricefact,                                          //BasedocPaid
  vsp.kolfield6,                                          //IssueQty
  vsp.summafact                                           //RegradingQty
from spmnplan spm
left join spmnpl spl on spm.nrec = spl.cspmnplan and spl.wkolan=25 and spl.canval4=spm.cmnplan
left join valspmnp vsp on coalesce(spl.nrec,#comp(0)) <> #comp(0) and coalesce(spl.nrec,#comp(0)) = vsp.cspmnpl
left join katmc on spm.cizd = katmc.nrec
left join groupmc on coalesce(katmc.cgroupmc,#comp(0)) = groupmc.nrec
left join katotped on spm.cotped = katotped.nrec
left join katnotes on spm.cstatus = katnotes.nrec
left join farinfo on spm.prior = farinfo.nrec
left join katstroy ks on spm.canval1 = ks.nrec
left join persons pers on spm.canval2 = pers.nrec
left join indent on spm.canval3 = indent.nrec
left join katorg on spm.canval4 = katorg.nrec
left join basedoc on spm.canval5 = basedoc.nrec
where spm.cmnplan = ?;
