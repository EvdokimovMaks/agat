#ifdef ComponentVersion
#component "M_UP"
#end

#ifndef __SPOPERMC_INC__
#define __SPOPERMC_INC__

Table struct TTNeedZamD
(
 nRec              : comp,

 prMC              : word,
 cMC               : comp,
 cParty            : comp,
 RefTopTab         : comp,
 cNoteBene         : comp,
 cFilter           : comp,
 TypeOper          : word,
 prMCUsl_Oper      : word,
 cMCUsl_Oper       : comp,

 NumSort           : comp,
 Number            : LongInt,
 FlagErr           : Byte,
 CodExecute        : longInt,

 Diskret_ED        : word,
 Nal               : double,
 Kol               : double,
 Kol_Specif        : double,
 Kol_Norm          : double,
 KolNorma          : double
)
with index
(
  TTNeedZamD001 = nRec (Unique, Autoinc),
  TTNeedZamD003 = prMC + cMC + cParty + cNoteBene + cFilter + TypeOper + prMCUsl_Oper + cMCUsl_Oper + RefTopTab,
  TTNeedZamD004 = RefTopTab + cNoteBene + cFilter + TypeOper + prMC + cMC + NumSort + cParty,  // Индеск для цикла в FillMCZamDown_IR_TopDown_Flt_M_Norm  NumSort поставлен перед cParty и после cMC потому что по заданным cMC в любом случае надо подбирать удаления а вот партии при этом прежде всего надо выбирать те, которые присутсвуют в списке TTNeedZamD
  TTNeedZamD005 = RefTopTab + prMC + cMC + cParty + cNoteBene + TypeOper,
  TTNeedZamD006 = FlagErr + RefTopTab + cNoteBene + cFilter,     //  ????????????????????  потом сделаю !!!!!!!!!!!!!!!!
  TTNeedZamD007 = RefTopTab + TypeOper,
  TTNeedZamD008 = prMC + cMC + cNoteBene + cFilter + TypeOper + prMCUsl_Oper + cMCUsl_Oper + RefTopTab,
  TTNeedZamD009 = cNoteBene + cFilter + TypeOper + RefTopTab,
  TTNeedZamD010 = RefTopTab + cNoteBene + cFilter + TypeOper + prMC + cMC + cParty
);

Table struct TTNaZamenuD
(
 nRec              : comp,
 RefTopTab         : comp,

 prMCNeedZam       : word,
 RefMCNeedZam      : comp,
 RefPartyNeedZam   : comp,
 RefNBSZam         : comp,
 Diskret_NeedZam   : word,

 TypeOper          : word,
 prMCNaZamenu      : word,
 RefMCNaZamenu     : comp,
 RefPartyNaZamenu  : comp,
 RefNBSIzm         : comp,
 Diskret_NZam      : word,

 RefNoteBene       : comp,
 RefFilter         : comp,

 RefPodr           : comp,
 RefMol            : comp,

 RefSpOrder        : comp,

 NumSort           : LongInt,
 Number            : LongInt,
 SrokGodn          : Date,

 TreeNodeType      : word,
 Flags             : longInt,
 FlagErr           : Byte,
 CodExecute        : longInt,
 Kol_NeedZam       : double,
 Kol               : double,
 Price             : double,

 SvOst_Start       : double
)
with index
(
  TTNaZamenuD001 = nRec (Unique, Autoinc),
  TTNaZamenuD002 = RefTopTab + prMCNeedZam + RefMCNeedZam + RefPartyNeedZam + RefNoteBene + RefFilter + TypeOper + prMCNaZamenu + RefMCNaZamenu + RefPartyNaZamenu + RefPodr + RefMOL + RefSpOrder,
  TTNaZamenuD003 = RefTopTab + prMCNeedZam + RefMCNeedZam + RefPartyNeedZam + Flags,
//  TTNaZamenuD004 = RefTopTab + prMCNeedZam + RefMCNeedZam + RefPartyNeedZam + RefNoteBene + RefFilter + TypeOper + prMCNaZamenu + RefMCNaZamenu + RefPartyNaZamenu + NumSort,   // в этот индес ничего не добавлять, иначе NumSort собьется !!!!!!!!!!!!!!!!!! iiiiiiiiiiii
  TTNaZamenuD004 = RefTopTab + prMCNeedZam + RefMCNeedZam + RefPartyNeedZam + RefNoteBene + RefFilter + TypeOper + prMCNaZamenu + RefMCNaZamenu + NumSort + RefPartyNaZamenu,   // в этот индес ничего не добавлять, иначе NumSort собьется,  RefPartyNaZamenu добавил что бы при равных NumSort у нас был всегда одинаковый порядок записей !!!!!!!!!!!!!!!!!! iiiiiiiiiiii
  TTNaZamenuD006 = prMCNeedZam + RefMCNeedZam + RefPartyNeedZam + RefSpOrder + RefNoteBene + RefFilter,
  TTNaZamenuD007 = prMCNaZamenu + RefMCNaZamenu + RefPartyNaZamenu + RefNoteBene + RefFilter,
  TTNaZamenuD008 = prMCNaZamenu + RefMCNaZamenu + RefNoteBene + RefFilter,
  TTNaZamenuD009 = prMCNaZamenu + RefMCNaZamenu + RefPartyNaZamenu + RefPodr + RefMol + RefSpOrder + RefNoteBene + RefFilter,
  TTNaZamenuD010 = Number,   //  ????????????????????  потом сделаю !!!!!!!!!!!!!!!!
  TTNaZamenuD011 = RefTopTab + prMCNeedZam + RefMCNeedZam + prMCNaZamenu + RefMCNaZamenu,
  TTNaZamenuD012 = prMCNeedZam + RefMCNeedZam + RefPartyNeedZam + RefNoteBene + RefFilter + TypeOper + prMCNaZamenu + RefMCNaZamenu + RefPartyNaZamenu,
  TTNaZamenuD013 = FlagErr + RefTopTab + prMCNeedZam + RefMCNeedZam + RefPartyNeedZam + RefNoteBene + RefFilter + TypeOper + prMCNaZamenu + RefMCNaZamenu,
  TTNaZamenuD014 = RefTopTab + prMCNeedZam + RefMCNeedZam + RefPartyNeedZam + TypeOper + RefNoteBene + RefFilter,
  TTNaZamenuD015 = RefNoteBene + RefFilter + RefTopTab + TypeOper,
  TTNaZamenuD016 = prMCNaZamenu + RefMCNaZamenu + RefPodr + RefMol + RefSpOrder + RefNoteBene + RefFilter

);


Table struct TTPossibleZamD
(
 nRec              : comp,

 RefSpecifDoc      : comp,
 RefOwnSpecifTab   : comp,
 RefNoteBene       : comp,
 RefFilter         : comp,
 TypeOper          : word,
 prMCUsl_Oper      : word,
 RefMCUsl_Oper     : comp,

 prMCNeedZam       : word,
 RefMCNeedZam      : comp,
 RefPartyNeedZam   : comp,
 RefListZam        : comp,
 RefNBSZam         : comp,
 RefNBSIzm         : comp,
 RzltNBSZam        : word,

 KoefZam           : double,
 Kol_Add           : double
)
with index
(
  TTPossibleZamD001 = nRec (Unique, Autoinc),
  TTPossibleZamD002 = RefSpecifDoc + RefOwnSpecifTab + RefNoteBene + RefFilter + TypeOper + prMCUsl_Oper + RefMCUsl_Oper,
  TTPossibleZamD003 = RefNoteBene + RefFilter + TypeOper + prMCNeedZam + RefMCNeedZam + RefPartyNeedZam + prMCUsl_Oper + RefMCUsl_Oper,
	TTPossibleZamD004 = RefNBSIzm,
	TTPossibleZamD005 = prMCNeedZam + RefMCNeedZam + RefPartyNeedZam + TypeOper + RefNoteBene + RefFilter
);

Table struct TTAktZam_List_D
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
 TTAktZam_List_D01 = nRec(Unique, Autoinc),
 TTAktZam_List_D02 = RefNoteBene,
 TTAktZam_List_D03 = dtSet(Desc) + Number,
 TTAktZam_List_D06 = RefTTNazamenu + RefNoteBene
);

Table struct TTFilter_List_D
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
 TTFilter_List_D01 = nRec(Unique, Autoinc),
 TTFilter_List_D02 = RefNoteBene + cOwner,
 TTFilter_List_D03 = RefNoteBene + Number,
 TTFilter_List_D04 = RefNoteBene + RefTTNazamenu,
 TTFilter_List_D05 = RefTTNazamenu + RefNoteBene + cOwner,
 TTFilter_List_D06 = FlagErr + RefNoteBene
);

#Declare Where_TTNeedZamD_TTNaZamenuOne(prTop_TTNaZamenuD,prTTNeedZamD,prTTNaZamenuD)
		 #prTop_TTNaZamenuD          == #prTTNaZamenuD.RefTopTab                  and
     #prTTNeedZamD.prMC          == #prTTNaZamenuD.prMCNeedZam                and
     #prTTNeedZamD.cMC           == #prTTNaZamenuD.RefMCNeedZam               and
     #prTTNeedZamD.cParty        == #prTTNaZamenuD.RefPartyNeedZam            and
     #prTTNeedZamD.cNoteBene     == #prTTNaZamenuD.RefNoteBene                and
     #prTTNeedZamD.cFilter       == #prTTNaZamenuD.RefFilter                  and
     #prTTNeedZamD.TypeOper      == #prTTNaZamenuD.TypeOper                   and
     #prTTNeedZamD.prMCUsl_Oper  == #prTTNaZamenuD.prMCNaZamenu               and
     #prTTNeedZamD.cMCUsl_Oper   == #prTTNaZamenuD.RefMCNaZamenu
#end // #Declare Where_TTNeedZamD_TTNaZamenuOne

#endif
