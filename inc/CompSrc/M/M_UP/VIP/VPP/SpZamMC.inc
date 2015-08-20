#ifndef __SPZAMMC_INC__
#define __SPZAMMC_INC__

#ifdef ComponentVersion
#component "M_UP"
#end

Table struct TTInfoResS
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
 TTInfoResS01 = nRec (Unique, Autoinc),
 TTInfoResS02 = prRes + cRes + cParty + cSaldTune + cKitKau
);

Table struct TTNeedZamS
(
 nRec              : comp,

 cTTInfoResS       : comp,
 cMC               : comp,
 cParty            : comp,
 cSaldTune         : comp,
 cKitKau           : comp,

 Number            : LongInt,
 FlagErr           : Byte,
 CodExecute        : longInt,
 Diskret_ED        : word,
 Nal               : double,
 Nal_Fact          : double,
 KolSpecif         : double,
 KolNorma          : double
)
with index
(
  TTNeedZamS001 = nRec (Unique, Autoinc),
  TTNeedZamS002 = cMC + cParty + cTTInfoResS,    // индекс юзается для сортировки отображаемых записей  // cTTInfoResS  добавлен чтобы сортировка была аналогична сортировке TTNeedZamM
  TTNeedZamS003 = cTTInfoResS,
  TTNeedZamS005 = FlagErr
);


Table struct TTNaZamenuS
(
 nRec                 : comp,
 RefTopTab            : comp,

 NeedZam_cTTInfoResS  : comp,
 RefMCNeedZam         : comp,
 RefPartyNeedZam      : comp,
 NeedZam_cSaldTune    : comp,
 NeedZam_cKitKau      : comp,
 RefNBSZam            : comp,
 Diskret_NeedZam      : word,

// prMC               : word,        ??????????????????? потом сделаю !!!!!!!!!!!!!!
 NaZamenu_cTTInfoResS : comp,
 RefMCNaZamenu        : comp,
 RefPartyNaZamenu     : comp,
 NaZamenu_cSaldTune   : comp,
 NaZamenu_cKitKau     : comp,
 RefNBSIzm            : comp,
 Diskret_NZam         : word,

 RefNoteBene          : comp,

 RefPodr              : comp,
 RefMol               : comp,

 RefSpOrder           : comp,

 wRzltNBSZam          : word,
 NumSort              : LongInt,
 wActZamNum           : LongInt,
 wNumNBSIzm           : word,
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
  TTNaZamenuS001 = nRec (Unique, Autoinc),
  TTNaZamenuS002 = RefTopTab + RefNoteBene + NeedZam_cTTInfoResS + NaZamenu_cTTInfoResS + RefPodr + RefMOL + RefSpOrder,
  TTNaZamenuS004 = RefTopTab + NeedZam_cTTInfoResS + wRzltNBSZam(Desc) + NumSort + wActZamNum + wNumNBSIzm + NaZamenu_cTTInfoResS,   // NaZamenu_cTTInfoResS добавлено что бы при равных NumSort у нас был всегда одинаковый порядок записей
  TTNaZamenuS005 = NaZamenu_cTTInfoResS + RefPodr + RefMol + RefSpOrder + NeedZam_cSaldTune + NeedZam_cKitKau,
  TTNaZamenuS006 = NeedZam_cTTInfoResS + FlagErr,
  TTNaZamenuS007 = RefMCNeedZam + RefNoteBene,
  TTNaZamenuS008 = RefMCNaZamenu + RefPartyNaZamenu,
  TTNaZamenuS009 = RefTopTab + NeedZam_cTTInfoResS + RefNoteBene + RefMCNaZamenu
);


Table struct TTPossibleZamS
(
 nRec                : comp,

 RefSpecifDoc        : comp,
 RefOwnSpecifTab     : comp,
 RefMCNZam           : comp,

 NeedZam_cTTInfoResS : comp,
 RefMCNeedZam        : comp,
 RefPartyNeedZam     : comp,
 NeedZam_cSaldTune   : comp,
 NeedZam_cKitKau     : comp,

 RefListZam          : comp,
 RefNoteBene         : comp,
 RefNBSZam           : comp,
 RefNBSIzm           : comp,
 RzltNBSZam          : word,

 KoefZam             : double
)
with index
(
  TTPossibleZamS001 = nRec (Unique, Autoinc),
  TTPossibleZamS002 = RefSpecifDoc + RefOwnSpecifTab + RefMCNZam + RefNoteBene,
  TTPossibleZamS003 = NeedZam_cTTInfoResS + RefMCNZam + RefNoteBene + RefListZam
);


 #endif
