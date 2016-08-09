
const
  cmChangeView = 32001;
  cmFilling = 32002;
  cmAutoAgreement = 32003;
  cmCreatePlpors = 32004;
end;

#define sumformat [10,'\2p[|-]3666`666`666`666`666~88']

table struct tsection (
  nrec: comp,
  name: string[20],
  value: string,
  operator: string
) with index (
  i01 = name + nrec,
  i02 = nrec (unique,surrogate)
);

table struct tbd (
  nrec  : comp,
  cprnt : comp,
  viddoc: word,
  descr : string[20],
  ddoc  : date,
  nodoc : string[40],
  naznpl: string,
  dform : date,
  summa : double,
  total : double,
  sumval: double,
  sumopl: double,
  cnote : comp,
  bdds  : string[11],
  avans : string[20],
  ispoln: string[50],
  dds   : string[150],
  bdr   : string[50],
  buhsch: string[50],
  cfo   : string[50],
  zakaz : string[50],
  sogl  : string[3],
  dsogl : date,
  cbuh  : comp,
  vbuh  : string[15],
  dbuh  : date,
  ckaz  : comp,
  vkaz  : string[15],
  dkaz  : date,
  cdir  : comp,
  vdir  : string[15],
  ddir  : date,
  cpeu  : comp,
  vpeu  : string[15],
  dpeu  : date,
  crez  : comp,
  vrez  : string[15],
  drez  : date,
  daysogl: integer,
  daybuh: integer,
  daydir: integer,
  daykaz: integer,
  daypeu: integer,
  dayrez: integer,
  daydefer: integer
) with index (
  i01 = nrec,
  i02 = ddoc + nodoc,
  i03 = viddoc,
  i04 = cprnt + ddoc + nodoc
);

table struct tdopfld (
  cbasedoc: comp,
  zakaz: string,
  cfo: string
) with index (
  i01 = cbasedoc
);

table struct tmInfoDescr (
  nrec: comp,
  cUser : comp,
  Descr : string[21],
  FIO   : string[80]
) with index (
  tmInfoDescr00 = NRec(Unique, Surrogate),
  tmInfoDescr01 = FIO,
  tmInfoDescr02 = Descr,
  tmInfoDescr03 = cUser
);

table struct tmpfltr (filter: string[100], crec: comp) with index (i01 = filter+crec);

const
  WT_BASEDOC     = 1102;
  ATTRNAM_AVANS  = 000100000000008Dh;
  ATTRNAM_BUH    = 0001000000000089h;
  ATTRNAM_DIR    = 000100000000008Ah;
  ATTRNAM_KAZN   = 0001000000000087h;
  ATTRNAM_PEU    = 0001000000000088h;
  ATTRNAM_REZERV = 0001000000000096h;
  ATTRNAM_PBUH   = 0001000000000097h;
  ATTRNAM_PDIR   = 000100000000009Ah;
  ATTRNAM_PKAZ   = 0001000000000098h;
  ATTRNAM_PPEU   = 0001000000000099h;
  ATTRNAM_SOGL   = 000100000000008Bh;
  ATTRNAM_ISPOLN = 000100000000005Bh;
  ATTRNAM_BUHSCH = 0001000000000094h;
  ATTRNAM_BDDS   = 000100000000008Eh;
  ATTRNAM_BDR    = 0001000000000093h;
  ATTRNAM_DDS    = 000100000000008Fh;
  ATTRNAM_OSNDO  = 00010000000000B9h;
  ATTRNAM_NAZNPL = 000100000000010Dh;
  SALDTUNE_DFLT  = 0001000000000001h;
  DSK_MRKDESCR   = 'AGAT_BDREE_MRKDESCR';
  DSK_MRKORG     = 'AGAT_BDREE_MRKORG';
  DSK_MRKISPOLN  = 'AGAT_BDREE_MRKISPOLN';
  DSK_MRKDDS     = 'AGAT_BDREE_MRKDDS';
  DSK_MRKZAKAZ   = 'AGAT_BDREE_MRKZAKAZ';
  DSK_MRKBDR     = 'AGAT_BDREE_MRKBDR';
  DSK_MRKBUHSCH  = 'AGAT_BDREE_MRKBUHSCH';
  DSK_MRKBDDS    = 'AGAT_BDREE_MRKBDDS';
  DSK_MRKAVANS   = 'AGAT_BDREE_MRKAVANS';
  DSK_MRKDOG     = 'AGAT_BDREE_MRKDOG';
  DSK_MRKCFO     = 'AGAT_BDREE_MRKCFO';
  DSK_MRKVAL     = 'AGAT_BDREE_MRKVAL';
  DSK_MRKREJIM   = 'AGAT_BDREE_MRKREJIM';
  KODGR_DDS      = 10009;
  KODGR_BDR      = 10010;
  cmPrintDoc     = 3440;
  BIT_DDOC       = 0;
  BIT_DFORM      = 1;
  BIT_DSOGL      = 2;
  BIT_DESCR      = 0;
  BIT_KONTRAG    = 1;
  BIT_STATUS     = 2;
  BIT_INICIATOR  = 3;
  BIT_DDS        = 4;
  BIT_BDR        = 5;
  BIT_BUHSCH     = 6;
  BIT_ZAKAZ      = 7;
  BIT_DOG        = 8;
  BIT_CFO        = 9;
  BIT_VAL        = 10;
  BIT_REJIM      = 11;
  BIT_NODOC      = 12;
  BIT_SUMMA      = 0;
  BIT_TOTAL      = 1;
  BIT_SUMVAL     = 2;
  BIT_SUMOPL     = 3;
  VIZA_SOGLASOVANO      = 00010000000001CEh;
  VIZA_NE_TREBUETSA     = 00010000000013CCh;
  VIZA_S_OBSHIH_SCHETOV = 0001000000001423h;
  VIZA_NA_RAB_GROUP     = 0001000000001424h;
  STATUS_VKL_V_REESTR   = 000100000000007Eh;
  STATUS_OPLACHEN       = 0001000000000077h;
end;

table struct tbdpair (
  cbd: comp,
  key: word,
  val: comp
) with index (
  i01 = cbd + key + val (unique)
);
