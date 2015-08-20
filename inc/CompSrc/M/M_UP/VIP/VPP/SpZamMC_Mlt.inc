#ifdef ComponentVersion
#component "M_UP"
#end

#ifndef __SPZAMMC_MLT_INC__
#define __SPZAMMC_MLT_INC__

Table struct TTInfoResM
(
 nRec         : comp,

 prRes        : word,
 cRes         : comp,
 cParty       : comp,
 cSaldTune    : comp,
 cKitKau      : comp
)
With Index
(
 TTInfoResM01 = nRec (Unique, Autoinc),
 TTInfoResM02 = prRes + cRes + cParty + cSaldTune + cKitKau
);

Table struct TTNeedZamM
(
 nRec                : comp,

 cTTInfoResM         : comp,
 prMC                : word,
 cMC                 : comp,
 cParty              : comp,
 cSaldTune           : comp,
 cKitKau             : comp,

 RefTopTab           : comp,
 cNoteBene           : comp,
 cFilter             : comp,
 TypeOper            : word,
 prMCUsl_Oper        : word,
 cMCUsl_Oper         : comp,
 wNumNBSIzm          : word,

 NumSort             : comp,
 Number              : LongInt,
 FlagErr             : Byte,
 CodExecute          : longInt,

 Diskret_ED          : word,
 Nal                 : double,
 Nal_Fact            : double,
 Kol                 : double,
 Kol_Specif          : double,
 Kol_Norm            : double,
 KolNorma            : double
)
with index
(
  TTNeedZamM001 = nRec (Unique, Autoinc),
  TTNeedZamM003 = cTTInfoResM + cNoteBene + cFilter + TypeOper + prMCUsl_Oper + cMCUsl_Oper + RefTopTab,
  TTNeedZamM004 = RefTopTab + cNoteBene + cFilter + TypeOper + prMC + cMC + NumSort + cParty + cSaldTune + cKitKau,  // Индеск для цикла в FillMCZamDown_IR_TopDown_Flt_M_Norm  NumSort поставлен перед cParty и после cMC потому что по заданным cMC в любом случае надо подбирать удаления а вот партии при этом прежде всего надо выбирать те, которые присутсвуют в списке TTNeedZamM
  TTNeedZamM005 = RefTopTab + prMC + cMC + cSaldTune + cKitKau + cTTInfoResM + cNoteBene + TypeOper + wNumNBSIzm,
  TTNeedZamM006 = FlagErr + RefTopTab + cNoteBene + cFilter,     //  ????????????????????  потом сделаю !!!!!!!!!!!!!!!!
  TTNeedZamM007 = RefTopTab + TypeOper,
  TTNeedZamM008 = prMC + cMC + cSaldTune + cKitKau + cNoteBene + cFilter + TypeOper + prMCUsl_Oper + cMCUsl_Oper + RefTopTab,
/////////////  TTNeedZamM009 = cNoteBene + cFilter + TypeOper + RefTopTab,
  TTNeedZamM010 = RefTopTab + cNoteBene + cFilter + TypeOper + wNumNBSIzm // + cTTInfoResM
);

Table struct TTNaZamenuM
(
 nRec                 : comp,
 RefTopTab            : comp,

 NeedZam_cTTInfoResM  : comp,
 prMCNeedZam          : word,
 RefMCNeedZam         : comp,
 RefPartyNeedZam      : comp,
 NeedZam_cSaldTune    : comp,
 NeedZam_cKitKau      : comp,
 RefNBSZam            : comp,
 Diskret_NeedZam      : word,

 TypeOper             : word,
 NaZamenu_cTTInfoResM : comp,
 prMCNaZamenu         : word,
 RefMCNaZamenu        : comp,
 RefPartyNaZamenu     : comp,
 NaZamenu_cSaldTune   : comp,
 NaZamenu_cKitKau     : comp,
 RefNBSIzm            : comp,
 Diskret_NZam         : word,

 RefNoteBene          : comp,
 RefFilter            : comp,

 RefPodr              : comp,
 RefMol               : comp,

 RefSpOrder           : comp,

 NumSort              : LongInt,
 Number               : LongInt,
 SrokGodn             : Date,

 TreeNodeType         : word,
 Flags                : longInt,
 FlagErr              : Byte,
 CodExecute           : longInt,
 Kol_NeedZam          : double,
 Kol                  : double,
 Price                : double,

 SvOst_Start          : double
)
with index
(
  TTNaZamenuM001 = nRec (Unique, Autoinc),
  TTNaZamenuM002 = RefTopTab + NeedZam_cTTInfoResM + RefNoteBene + RefFilter + TypeOper + NaZamenu_cTTInfoResM + RefPodr + RefMOL + RefSpOrder,
///////////////  TTNaZamenuM003 = RefTopTab + NeedZam_cTTInfoResM + Flags,
//  TTNaZamenuM004 = RefTopTab + NeedZam_cTTInfoResM + RefNoteBene + RefFilter + TypeOper + NaZamenu_cTTInfoResM + NumSort,   // в этот индес ничего не добавлять, иначе NumSort собьется !!!!!!!!!!!!!!!!!! iiiiiiiiiiii
  TTNaZamenuM004 = RefTopTab + NeedZam_cTTInfoResM + RefNoteBene + RefFilter + TypeOper + prMCNaZamenu + RefMCNaZamenu + NumSort + RefPartyNaZamenu + NaZamenu_cSaldTune + NaZamenu_cKitKau,   // в этот индес ничего не добавлять, иначе NumSort собьется,  RefPartyNaZamenu добавил что бы при равных NumSort у нас был всегда одинаковый порядок записей !!!!!!!!!!!!!!!!!! iiiiiiiiiiii
///////////////  TTNaZamenuM006 = NeedZam_cTTInfoResM + RefSpOrder + RefNoteBene + RefFilter,
//!!!!!!!!!!!!!  TTNaZamenuM007 = NaZamenu_cTTInfoResM + RefNoteBene + RefFilter,
  TTNaZamenuM008 = prMCNaZamenu + RefMCNaZamenu + RefNoteBene, //!!!!!!!!!!!!! + RefFilter,
//!!!!!!!!!!!!!  TTNaZamenuM009 = NaZamenu_cTTInfoResM + RefPodr + RefMol + RefSpOrder + RefNoteBene + RefFilter,
//  TTNaZamenuM010 = Number,   //  ????????????????????  потом сделаю !!!!!!!!!!!!!!!!
//  TTNaZamenuM011 = RefTopTab + prMCNeedZam + RefMCNeedZam + prMCNaZamenu + RefMCNaZamenu,
  TTNaZamenuM012 = NeedZam_cTTInfoResM + RefNoteBene + RefFilter + TypeOper + prMCNaZamenu + RefMCNaZamenu,
  TTNaZamenuM013 = FlagErr + RefTopTab + NeedZam_cTTInfoResM + RefNoteBene + RefFilter + TypeOper + prMCNaZamenu + RefMCNaZamenu,   //ddddddddddddddddddd
//!!!!!!!!!!!!!  TTNaZamenuM014 = RefTopTab + NeedZam_cTTInfoResM + TypeOper + RefNoteBene + RefFilter,
  TTNaZamenuM015 = RefNoteBene + RefFilter + RefTopTab + TypeOper + NeedZam_cSaldTune + NeedZam_cKitKau,
//!!!!!!!!!!!!!  TTNaZamenuM016 = prMCNaZamenu + RefMCNaZamenu + RefPodr + RefMol + RefSpOrder + RefNoteBene + RefFilter,

  TTNaZamenuM017 = prMCNeedZam + RefMCNeedZam + TypeOper + RefNoteBene
);


Table struct TTPossibleZamM
(
 nRec              : comp,

 RefSpecifDoc      : comp,
 RefOwnSpecifTab   : comp,
 RefNoteBene       : comp,
 RefFilter         : comp,
 wNumNBSIzm        : word,
 TypeOper          : word,
 prMCUsl_Oper      : word,
 RefMCUsl_Oper     : comp,

 NeedZam_cTTInfoResM : comp,
 prMCNeedZam       : word,
 RefMCNeedZam      : comp,
 RefPartyNeedZam   : comp,
 NeedZam_cSaldTune : comp,
 NeedZam_cKitKau   : comp,
 RefListZam        : comp,
 RefNBSZam         : comp,
 RefNBSIzm         : comp,
 RzltNBSZam        : word,

 KoefZam           : double,
 Kol_Add           : double
)
with index
(
  TTPossibleZamM001 = nRec (Unique, Autoinc),
  TTPossibleZamM002 = RefSpecifDoc + RefOwnSpecifTab + RefNoteBene + RefFilter + TypeOper + prMCUsl_Oper + RefMCUsl_Oper,
  TTPossibleZamM003 = RefNoteBene + RefFilter + TypeOper + NeedZam_cTTInfoResM + prMCUsl_Oper + RefMCUsl_Oper
/////////////////	TTPossibleZamM004 = RefNBSIzm,
/////////////////	TTPossibleZamM005 = prMCNeedZam + RefMCNeedZam + RefPartyNeedZam + TypeOper + RefNoteBene + RefFilter
);

/*Table struct TTAktZam_List
(
 nRec            : comp,

 RefNoteBene     : comp,
 Number          : word,

 dtSet           : date,
 FlagErr         : Byte,
 CodExecute      : longInt,

 FormatActZam    : Byte,

 RefTTNazamenu   : comp
)
with Index
(
 TTAktZam_List01 = nRec(Unique, Autoinc),
 TTAktZam_List02 = RefNoteBene,
 TTAktZam_List03 = dtSet(Desc) + Number,
 TTAktZam_List06 = RefTTNazamenu + RefNoteBene
);

Table struct TTFilter_List
(
 nRec            : comp,
 RefNoteBene     : comp,
 cOwner          : comp,

 RefTTNazamenu   : comp,

 Number          : word,
 dtBeg           : date,
 dtEnd           : date,

 FlagErr         : Byte,
 CodExecute      : longInt
)
With index
(
 TTFilter_List01 = nRec(Unique, Autoinc),
 TTFilter_List02 = RefNoteBene + cOwner,
 TTFilter_List03 = RefNoteBene + Number,
 TTFilter_List04 = RefNoteBene + RefTTNazamenu,
 TTFilter_List05 = RefTTNazamenu + RefNoteBene + cOwner,
 TTFilter_List06 = FlagErr + RefNoteBene
);*/

#Declare Where_TTNeedZamM_TTNaZamenuOne(prTTNeedZamM,prTTNaZamenuM)
     #prTTNeedZamM.cTTInfoResM           ==    #prTTNaZamenuM.NeedZam_cTTInfoResM        and
     #prTTNeedZamM.cNoteBene             ==    #prTTNaZamenuM.RefNoteBene                and
     #prTTNeedZamM.cFilter               ==    #prTTNaZamenuM.RefFilter                  and
     #prTTNeedZamM.TypeOper              ==    #prTTNaZamenuM.TypeOper                   and
     #prTTNeedZamM.prMCUsl_Oper          ==    #prTTNaZamenuM.prMCNaZamenu               and
     #prTTNeedZamM.cMCUsl_Oper           ==    #prTTNaZamenuM.RefMCNaZamenu
#end // #Declare Where_TTNeedZamM_TTNaZamenuOne

#endif
