.linkform AgatClaim1 prototype is Claim
.nameinlist 'Агат. Служебная записка'
.f 'NUL'
.declare
#include globalifc.vih
.endDeclare
.var
  pXL: XLSRepBuilder;
  sXLSFileName, sXLTFileName: string;
  isCreateXLT: boolean;
  npp: integer;
.endvar
.create view v
as select *
from claim, katmc, attrval avTU, attrval avPrim
where ((
  _CLNREC == claim.nrec and
  claim.cmcusl == katmc.nrec and

  31012 == avTU.wtable and
  _CLNREC == avTU.crec and
  0001000000000421h == avTU.cattrnam and

  31012 == avPrim.wtable and
  _CLNREC == avPrim.crec and
  0001000000000420h == avPrim.cattrnam

));
.create view vd
as select *
from claim, katstroy ks, specmtr sm, spdocs spd, calplan cp, dogovor d, dogovor d1
where ((
  comp(_INDNREC)    /== claim.cindent and

  claim.cvalkau[1]  /== ks.nrec and

  0001000000000001h /== sm.csaldtune and
  1723              /== sm.cotable and
  claim.cvalkau[1]  /== sm.cobj and

  sm.cspec          /== spd.nrec and (spd.tidk = 403) and
  spd.cdoc          /== cp.nrec and
  cp.cdogovor       /== d.nrec and (d.direct = 1) and

  d.cdogovor         == d1.nrec
));
.create view ve
var
  _dogovorNrec: comp;
as select *
from dogovor d, exclassval ev, exclassseg es
where ((
  _dogovorNrec  == d.nrec and
  1707          == ev.wtable and
  _dogovorNrec  == ev.crec and
  179           == ev.classcode and
  ev.cclassseg  == es.nrec
));
.function GetCode(s: string): string;
begin
  var i: integer;
  var lens: integer;
  var symCode: byte;
  if(s[1]='[') s := substr(s,2,254);
  lens := length(s);
  symCode := ord(s[1]);
  for(i:=1; (i <= lens and symCode >= 48 and symCode <= 57); i++)
  {
    symCode := ord(s[i]);
  }
  result := substr(s, 1, i-1);
end.
.function GetContractName(aDogovorNrec: comp): string;
begin
  var s: string;
  s := '';
  ve._dogovorNrec := aDogovorNrec;
  if (ve.getfirst d = tsOk)
    s := '№'+ve.d.nodoc+' от '+datetostr(ve.d.ddoc,'DD.MM.YYYY');
  if (ve.getfirst ev = tsOk)
    if (ve.getfirst es = tsOk)
      s := ve.es.Name;
  result := s;
end.
.begin
  isCreateXLT := false;
  sXLTFileName := TranslatePath('%StartPath%xls\Demand.xlt');

  if (not isCreateXLT)  sXLSFileName := pXL.CreateReport(sXLTFileName, True)
                  else  sXLSFileName := pXL.CreateXLT(sXLTFileName, True);

  pXL.CreateVar(sXLSFileName);
  pXL.SetStringVar('Номер', _INTERNALNUMBER);
  pXL.SetStringVar('ДатаПриема', _BOOKINGDATE);
  pXL.SetStringVar('ДатаИсполнения', _EXECUTIONDATE);
  pXL.SetStringVar('Статус', _DOCSTATE);
  pXL.SetStringVar('Примечания', _NOTES);
  pXL.SetStringVar('ЗаказчикНаименование', _CUSTOMER);
  pXL.SetStringVar('ЗаказчикКод', getCode(_CUSTOMER));
  pXL.SetStringVar('ИсполнительНаименование', _PERFORMER);
  pXL.SetStringVar('ИсполнительКод', getCode(_PERFORMER));
  pXL.SetStringVar('ИзготовительНаименование', _A4);
  pXL.SetStringVar('ПользовательФИО', sgettune('USER.FIO'));

  var contracts: string;
  contracts := '';

  var s, stmt: longint;

  sqlFreeStr(s);
  sqlAddStr(s, 'select distinct dogovor.nodoc, dogovor.ddoc');
  sqlAddStr(s, 'from claim');
  sqlAddStr(s, 'join (');
  sqlAddStr(s, '      select distinct coalesce(d1.nrec,d.nrec) as DogovorNrec, katstroy.nrec as KatstroyNrec');                  //заказы по схеме связей
  sqlAddStr(s, '      from spschem');
  sqlAddStr(s, '      join katstroy on spschem.cbasedoc = katstroy.nrec');
  sqlAddStr(s, '      join calplan cp on spschem.cdoc = cp.nrec and cp.directmc = 1');
  sqlAddStr(s, '      join dogovor d on cp.cdogovor = d.nrec');
  sqlAddStr(s, '      left join dogovor d1 on d.cdogovor = d1.nrec');
  sqlAddStr(s, '      where spschem.tidk=403 and spschem.tidkbase=454');
  sqlAddStr(s, '      union');
  sqlAddStr(s, '      select distinct coalesce(d1.nrec,d.nrec), katstroy.nrec');                                                 //заказы по ЦУ
  sqlAddStr(s, '      from calplan cp');
  sqlAddStr(s, '      join spdocs spd on 403 = spd.tidk and cp.nrec = spd.cdoc');
  sqlAddStr(s, '      join specmtr spm on #comp(0001000000000001h) = spm.csaldtune and 1723 = spm.cotable and spd.nrec = spm.cspec');
  sqlAddStr(s, '      join katstroy on spm.cobj = katstroy.nrec');
  sqlAddStr(s, '      join dogovor d on cp.cdogovor = d.nrec');
  sqlAddStr(s, '      left join dogovor d1 on d.cdogovor = d1.nrec');
  sqlAddStr(s, '      where cp.directmc = 1');
  sqlAddStr(s, '      union');
  sqlAddStr(s, '      select distinct coalesce(d1.nrec, d.nrec), ks.nrec');                                                       //заказы по внешнему атрибуту
  sqlAddStr(s, '      from dogovor d');
  sqlAddStr(s, '      join attrval av on 1707 = av.wtable and d.nrec = av.crec and #comp(00010000000000ABh) = av.cattrnam');
  sqlAddStr(s, '      join katstroy ks on av.vcomp = ks.nrec');
  sqlAddStr(s, '      left join dogovor d1 on d.cdogovor = d1.nrec');
  sqlAddStr(s, '      where d.direct = 1');
  sqlAddStr(s, '     ) t on claim.cvalkau[1] = t.KatstroyNrec');
  sqlAddStr(s, 'join dogovor on t.DogovorNrec = dogovor.nrec');
  sqlAddStr(s, 'where #comp('+_INDNREC+') = claim.cindent');

  stmt := sqlAllocStmt;

  sqlPrepare(stmt, s);

  var dogovorNodoc: string;
  var dogovorDdoc: date;
  sqlBindCol(stmt, 1, dogovorNodoc);
  sqlBindCol(stmt, 2, dogovorDdoc);

  sqlExecute(stmt);
  while sqlFetch(stmt) = tsOk
  {
    contracts := contracts + if(contracts='','',', ') + '№'+dogovorNodoc+' от '+datetostr(dogovorDdoc,'DD.MM.YYYY');
  }

  sqlFreeStmt(stmt);
  //дальше действовать буду я!
  //мутим терь поиск игк и договора, чтобы ПОТОМ найти РАСЧЕТНЫЙ, мать его, СЧЁТ!
  sqlFreeStr(s);
  sqlAddStr(s, 'select distinct c.cvalkau[1] as OrderNrec,                                                             ');
  sqlAddStr(s, '                igk.vcomp    as IGKNrec                                                                ');
  sqlAddStr(s, 'from claim c                                                                                           ');
  sqlAddStr(s, 'join katstroy k on k.nrec = c.cvalkau[1]                                                               ');
  sqlAddStr(s, 'join attrval igk on igk.wtable = 2101 and igk.crec = k.nrec and igk.cattrnam = #comp(00010000000004CCh)');
  sqlAddStr(s, 'where c.cindent =  #comp('+_IndNRec+')                                                                 ');

  //делаем GetDogovorByKatstroy
  stmt := sqlAllocStmt;
  sqlPrepare(stmt, s);
  var OrderNrec, IGKNrec, dogovorNrec: comp;
  sqlBindCol(stmt, 1, OrderNrec);
  sqlBindCol(stmt, 2, IGKNrec);
  sqlExecute(stmt);
  var GDBK: agatglobalifc;
  while sqlFetch(stmt) = tsOk
  {
    dogovorNrec := GDBK.GetDogovorByKatstroy(OrderNrec);
  }
  sqlFreeStmt(stmt);

  //ищем расчетный счет
  sqlFreeStr(s);
  sqlAddStr(s, 'select rsbank.name as RSName,                                                      ');
  sqlAddStr(s, '       igk.name    as IGK,                                                         ');
  sqlAddStr(s, '       ecsDog.name as GosKontrakt                                                  ');
  sqlAddStr(s, 'from spcash spc                                                                                    ');
  sqlAddStr(s, 'left join spkau igk on igk.nrec = case when spc.tblos[1] = 10527 then spc.kauos[1]                 ');
  sqlAddStr(s, '                                       when spc.tblos[2] = 10527 then spc.kauos[2]                 ');
  sqlAddStr(s, '                                       when spc.tblos[3] = 10527 then spc.kauos[3]                 ');
  sqlAddStr(s, '                                       when spc.tblos[4] = 10527 then spc.kauos[4]                 ');
  sqlAddStr(s, '                                       when spc.tblos[5] = 10527 then spc.kauos[5]                 ');
  sqlAddStr(s, '                                       when spc.tblos[6] = 10527 then spc.kauos[6] end             ');
  sqlAddStr(s, 'left join spkau rsbank on rsbank.nrec = case when spc.tblos[1] = 10545 then spc.kauos[1]           ');
  sqlAddStr(s, '                                             when spc.tblos[2] = 10545 then spc.kauos[2]           ');
  sqlAddStr(s, '                                             when spc.tblos[3] = 10545 then spc.kauos[3]           ');
  sqlAddStr(s, '                                             when spc.tblos[4] = 10545 then spc.kauos[4]           ');
  sqlAddStr(s, '                                             when spc.tblos[5] = 10545 then spc.kauos[5]           ');
  sqlAddStr(s, '                                             when spc.tblos[6] = 10545 then spc.kauos[6] end       ');
  sqlAddStr(s, 'left join dogovor d on d.nrec = case when spc.tblos[1] = 14 then spc.kauos[1]                      ');
  sqlAddStr(s, '                                     when spc.tblos[2] = 14 then spc.kauos[2]                      ');
  sqlAddStr(s, '                                     when spc.tblos[3] = 14 then spc.kauos[3]                      ');
  sqlAddStr(s, '                                     when spc.tblos[4] = 14 then spc.kauos[4]                      ');
  sqlAddStr(s, '                                     when spc.tblos[5] = 14 then spc.kauos[5]                      ');
  sqlAddStr(s, '                                     when spc.tblos[6] = 14 then spc.kauos[6] end                  ');
  sqlAddStr(s, 'left join exclassval GKDog on GKDog.classcode = 179 and GKDog.wtable = 1707 and GKDog.crec = d.nrec');
  sqlAddStr(s, 'left join exclassseg ecsDog on ecsDog.nrec = GKDog.cclassseg                                       ');
  sqlAddStr(s, 'where (case when spc.tblos[1] = 10527 then spc.kauos[1]                                            ');
  sqlAddStr(s, '            when spc.tblos[2] = 10527 then spc.kauos[2]                                            ');
  sqlAddStr(s, '            when spc.tblos[3] = 10527 then spc.kauos[3]                                            ');
  sqlAddStr(s, '            when spc.tblos[4] = 10527 then spc.kauos[4]                                            ');
  sqlAddStr(s, '            when spc.tblos[5] = 10527 then spc.kauos[5]                                            ');
  sqlAddStr(s, '            when spc.tblos[6] = 10527 then spc.kauos[6] end) = #comp(' + IGKNrec + ') and          ');
  sqlAddStr(s, '      (case when spc.tblos[1] = 14 then spc.kauos[1]                                               ');
  sqlAddStr(s, '            when spc.tblos[2] = 14 then spc.kauos[2]                                               ');
  sqlAddStr(s, '            when spc.tblos[3] = 14 then spc.kauos[3]                                               ');
  sqlAddStr(s, '            when spc.tblos[4] = 14 then spc.kauos[4]                                               ');
  sqlAddStr(s, '            when spc.tblos[5] = 14 then spc.kauos[5]                                               ');
  sqlAddStr(s, '            when spc.tblos[6] = 14 then spc.kauos[6] end) = #comp(' + dogovorNrec + ')             ');

  stmt := sqlAllocStmt;
  sqlPrepare(stmt, s);
  var RSName, IGK, GosKontrakt: string;
  sqlBindCol(stmt, 1, RSName);
  sqlBindCol(stmt, 2, IGK);
  sqlBindCol(stmt, 3, GosKontrakt);
  sqlExecute(stmt);
  var str1, str2, str3: string;
  while sqlFetch(stmt) = tsOk
  {
    str1 := RSName;
    str2 := IGK;
    str3 := GosKontrakt;
  }
  sqlFreeStmt(stmt);
  //пока до сюда

  pXL.SetStringVar('Контракты', contracts);
  pXL.SetStringVar('РасчетныйСчет', str1);
  pXL.SetStringVar('ИГК', str2);
  pXL.SetStringVar('ГосКонтракт', str3);

  pXL.PublishVar;

  pXL.CreateTbls(sXLSFileName);
  pXL.CreateTbl('Main');
  pXL.CreateTblFld('НомерСтроки');
  pXL.CreateTblFld('Наименование');
  pXL.CreateTblFld('Примечание');
  pXL.CreateTblFld('Код');
  pXL.CreateTblFld('Количество');
  pXL.CreateTblFld('КоличествоОстаток');
  pXL.CreateTblFld('ДатаПриема');
  pXL.CreateTblFld('ДатаИсполнения');
  pXL.CreateTblFld('Заказ');
  pXL.CreateTblFld('ОтвИсполнитель');
  npp := 1;
end.
.{ CheckEnter CLAIM_LOOP1
.begin
  if v.getfirst claim = tsOk { }
  pXL.ClearTblBuffer;
  pXL.SetTblStringFldValue('НомерСтроки', npp);
  pXL.SetTblStringFldValue('Наименование', _NAME);
  if (v.claim.prmc = 1 and v.getfirst katmc = tsOk)
    pXL.SetTblStringFldValue('Наименование', v.katmc.name + if(v.getfirst avTU = tsOk, ' '+v.avTU.vString, ''));
  pXL.SetTblStringFldValue('Примечание', if(v.getfirst avPrim = tsOk, v.avPrim.vString, ''));
  pXL.SetTblStringFldValue('Код', _CODE);
  pXL.SetTblNumberFldValue('Количество', _KOL);
  pXL.SetTblNumberFldValue('КоличествоОстаток', v.claim.advdo[2]);
  pXL.SetTblStringFldValue('ДатаПриема', _BEG);
  pXL.SetTblStringFldValue('ДатаИсполнения', _END);
  pXL.SetTblStringFldValue('Заказ', substr(_AS1,1,pos(' ',_AS1+' ')-1));
  pXL.SetTblStringFldValue('ОтвИсполнитель', _AS2);
  pXL.InsTblRow;
  npp++;
end.
.}
.begin
  pXL.PublishTbl('Main');
  pXL.LoadReport(sXLSFileName);
  pXL.DisConnectExcel;
end.
.endform
