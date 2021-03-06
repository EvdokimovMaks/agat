
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
  reestr: string[20],
  dVklRee: date,
  dOpl  : date,
  bdds  : string[11],
  avans : string[20],
  ispoln: string[50],
  dds   : string[150],
  bdr   : string[50],
  buhsch: string[50],
  cfo   : string[50],
  zakaz : string[50],
  sud   : string[20],
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
  WT_BASEDOC            = 1102;
  WT_SPSTEP             = 1104;
  WT_PLPOR              = 9015;
    ATTRNAM_AVANS         = 000100000000008Dh; //Nrec ��ਡ�� �� �����/��. ����
    ATTRNAM_BUH           = 0001000000000089h; //Nrec ��ਡ�� �� ���� ��壠��ਨ
    ATTRNAM_KAZN          = 0001000000000087h; //Nrec ��ਡ�� �� ���� �����祩�⢠
    ATTRNAM_DIR           = 000100000000008Ah; //Nrec ��ਡ�� �� ���� ������᪮� ��४樨
    ATTRNAM_PEU           = 0001000000000088h; //Nrec ��ਡ�� �� ���� ���
    ATTRNAM_REZERV        = 0001000000000096h; //Nrec ��ਡ�� �� ���� १��
    ATTRNAM_SOGL          = 000100000000008Bh; //Nrec ��ਡ�� �� ��⮢ � ᮣ��ᮢ����
    ATTRNAM_REDYSOG       = 0001000000000002h; //Nrec ��ਡ�� �� ����⢨⥫�� �
    ATTRNAM_DEYSTVS       = 00010000000004E1h; //Nrec ��ਡ�� �� ���㬥��-���᭮�����
    ATTRNAM_DOPPRIM       = 40010868C57CE3D6h; //Nrec ��ਡ�� �� ���. �ਬ�砭��
    ATTRNAM_ZAMECHE       = 000100000000009Fh; //Nrec ��ਡ�� �� ����砭��
    ATTRNAM_ISKLUCH       = 00010000000006BBh; //Nrec ��ਡ�� �� �᪫�祭��
    ATTRNAM_ISPOLN        = 000100000000005Bh; //Nrec ��ਡ�� �� �ᯮ���⥫� �������
    ATTRNAM_NAZNPL        = 000100000000010Dh; //Nrec ��ਡ�� �� �����祭�� ���⥦�
    ATTRNAM_BUHSCH        = 0001000000000094h; //Nrec ��ਡ�� �� ����� �����ᮢ��� ���
    ATTRNAM_OBOSNOV       = 00010000000000A0h; //Nrec ��ਡ�� �� ���᭮����� ���⠢騪�
    ATTRNAM_CMMNCNT       = 00010000000006BDh; //Nrec ��ਡ�� �� ��饥 ������⢮ ������஢
    ATTRNAM_ORGINGR       = 000100000000005Ch; //Nrec ��ਡ�� �� �࣠������ �室�� � ��㯯�
    ATTRNAM_OSNDO         = 00010000000000B9h; //Nrec ��ਡ�� �� �᭮���� ��
    ATTRNAM_PEREPIS       = 0001000000000095h; //Nrec ��ਡ�� �� ��९�᪠ �� ᮣ��ᮢ����
    ATTRNAM_BDDS          = 000100000000008Eh; //Nrec ��ਡ�� �� �� ����/��� ���
    ATTRNAM_PBUH          = 0001000000000097h; //Nrec ��ਡ�� �� �ਬ�砭�� ��壠��ਨ
    ATTRNAM_PKAZ          = 0001000000000098h; //Nrec ��ਡ�� �� �ਬ�砭�� �����祩�⢠
    ATTRNAM_PDIR          = 000100000000009Ah; //Nrec ��ਡ�� �� �ਬ�砭�� �������᪮� ��४樨
    ATTRNAM_PPEU          = 0001000000000099h; //Nrec ��ਡ�� �� �ਬ�砭�� ���
    ATTRNAM_SUBPODR       = 00010000000006BCh; //Nrec ��ਡ�� �� ��� � �㡯����稪�
    ATTRNAM_DDS           = 000100000000008Fh; //Nrec ��ਡ�� �� ����� ���
    ATTRNAM_SUMMPKB       = 00010000000009DDh; //Nrec ��ਡ�� �� �㬬� ���
    ATTRNAM_SUD           = 0001000000001979h; //Nrec ��ਡ�� �� ����ﭨ� �㤮�ந�����⢠
    ATTRNAM_ISK           = 281474976712379;
    ATTRNAM_SMP           = 281474976712380;
    ATTRNAM_PRBUH         = 0001000000000097h;
    ATTRNAM_PRKAZ         = 0001000000000098h;
    ATTRNAM_PRDIR         = 000100000000009Ah;
    ATTRNAM_PRPEU         = 0001000000000099h;

    ATTRNAM_BDR           = 0001000000000093h;
    ATTRNAM_USEMODE_PLPOR = 000100000000077Ah; //Nrec ��ਡ�� ���⥦�� ����� �ᯮ�짮����� ���
    ATTRNAM_AVANSOK_PLPOR = 00010000000004A5h; //Nrec ��ਡ�� ���⥦�� �����/��. ����
    ATTRNAM_VIZABUH_PLPOR = 00010000000004A6h; //Nrec ��ਡ�� ���⥦�� ���� ��壠��ਨ
    ATTRNAM_VIZAKAZ_PLPOR = 00010000000004A7h; //Nrec ��ਡ�� ���⥦�� ���� �����祩�⢠
    ATTRNAM_VIZADIR_PLPOR = 00010000000004A8h; //Nrec ��ਡ�� ���⥦�� ���� ������᪮� ��४樨
    ATTRNAM_VIZAPEU_PLPOR = 00010000000004A9h; //Nrec ��ਡ�� ���⥦�� ���� ���
    ATTRNAM_VIZAREZ_PLPOR = 00010000000004AAh; //Nrec ��ਡ�� ���⥦�� ���� १��
    ATTRNAM_REDYSOG_PLPOR = 00010000000004ABh; //Nrec ��ਡ�� ���⥦�� ��⮢ � ᮣ��ᮢ����
    ATTRNAM_DEYSTVS_PLPOR = 00010000000004ACh; //Nrec ��ਡ�� ���⥦�� ����⢨⥫�� �
    ATTRNAM_BASEDOC_PLPOR = 0001000000000777h; //Nrec ��ਡ�� ���⥦�� ���㬥��-���᭮�����
    ATTRNAM_DOPPRIM_PLPOR = 00010000000004ADh; //Nrec ��ਡ�� ���⥦�� ���. �ਬ�砭��
    ATTRNAM_ZAMECHE_PLPOR = 00010000000004AEh; //Nrec ��ਡ�� ���⥦�� ����砭��
    ATTRNAM_ISKLUCH_PLPOR = 0001000000000778h; //Nrec ��ਡ�� ���⥦�� �᪫�祭��
    ATTRNAM_ISPLNTL_PLPOR = 000100000000005Ah; //Nrec ��ਡ�� ���⥦�� �ᯮ���⥫� �������
    ATTRNAM_NAZNPLP_PLPOR = 00010000000004AFh; //Nrec ��ਡ�� ���⥦�� �����祭�� ���⥦�
    ATTRNAM_NUMBALS_PLPOR = 00010000000004B0h; //Nrec ��ਡ�� ���⥦�� ����� �����ᮢ��� ���
    ATTRNAM_OBOSNOV_PLPOR = 00010000000004B1h; //Nrec ��ਡ�� ���⥦�� ���᭮����� ���⠢騪�
    ATTRNAM_CMMNCNT_PLPOR = 0001000000000779h; //Nrec ��ਡ�� ���⥦�� ��饥 ������⢮ ������஢
    ATTRNAM_ORGINGR_PLPOR = 00010000000004B2h; //Nrec ��ਡ�� ���⥦�� �࣠������ �室�� � ��㯯�
    ATTRNAM_MNBASDC_PLPOR = 00010000000004B3h; //Nrec ��ਡ�� ���⥦�� �᭮���� ��
    ATTRNAM_PEREPIS_PLPOR = 00010000000004B4h; //Nrec ��ਡ�� ���⥦�� ��९�᪠ �� ᮣ��ᮢ����
    ATTRNAM_POHBBDS_PLPOR = 00010000000004B5h; //Nrec ��ਡ�� ���⥦�� �� ����/��� ���
    ATTRNAM_PRIMBUH_PLPOR = 00010000000004B6h; //Nrec ��ਡ�� ���⥦�� �ਬ�砭�� ��壠��ਨ
    ATTRNAM_PRIMKAZ_PLPOR = 00010000000004B7h; //Nrec ��ਡ�� ���⥦�� �ਬ�砭�� �����祩�⢠
    ATTRNAM_PRIMDIR_PLPOR = 00010000000004B8h; //Nrec ��ਡ�� ���⥦�� �ਬ�砭�� �������᪮� ��४樨
    ATTRNAM_PRIMPEU_PLPOR = 00010000000004B9h; //Nrec ��ਡ�� ���⥦�� �ਬ�砭�� ���
    ATTRNAM_SUBPODR_PLPOR = 000100000000077Bh; //Nrec ��ਡ�� ���⥦�� ��� � �㡯����稪�
    ATTRNAM_RTCLDDS_PLPOR = 0001000000000090h; //Nrec ��ਡ�� ���⥦�� ����� ���
    ATTRNAM_SUMMPKB_PLPOR = 0001000000000ACBh; //Nrec ��ਡ�� ���⥦�� �㬬� ���
  ATTRNAM_USEMODE_SPSTP = 000100000000079Eh;
  SALDTUNE_DFLT         = 0001000000000001h;
  DSK_MRKDESCR          = 'AGAT_BDREE_MRKDESCR';
  DSK_MRKORG            = 'AGAT_BDREE_MRKORG';
  DSK_MRKISPOLN         = 'AGAT_BDREE_MRKISPOLN';
  DSK_MRKDDS            = 'AGAT_BDREE_MRKDDS';
  DSK_MRKZAKAZ          = 'AGAT_BDREE_MRKZAKAZ';
  DSK_MRKBDR            = 'AGAT_BDREE_MRKBDR';
  DSK_MRKBUHSCH         = 'AGAT_BDREE_MRKBUHSCH';
  DSK_MRKBDDS           = 'AGAT_BDREE_MRKBDDS';
  DSK_MRKAVANS          = 'AGAT_BDREE_MRKAVANS';
  DSK_MRKDOG            = 'AGAT_BDREE_MRKDOG';
  DSK_MRKCFO            = 'AGAT_BDREE_MRKCFO';
  DSK_MRKVAL            = 'AGAT_BDREE_MRKVAL';
  DSK_MRKREJIM          = 'AGAT_BDREE_MRKREJIM';
  DSK_MRKSUD            = 'AGAT_BDREE_MRKSUD';
  KODGR_DDS             = 10009;
  KODGR_BDR             = 10010;
  cmPrintDoc            = 3440;
  BIT_DDOC              = 0;
  BIT_DFORM             = 1;
  BIT_DSOGL             = 2;
  BIT_DESCR             = 0;
  BIT_KONTRAG           = 1;
  BIT_STATUS            = 2;
  BIT_INICIATOR         = 3;
  BIT_DDS               = 4;
  BIT_BDR               = 5;
  BIT_BUHSCH            = 6;
  BIT_ZAKAZ             = 7;
  BIT_DOG               = 8;
  BIT_CFO               = 9;
  BIT_VAL               = 10;
  BIT_REJIM             = 11;
  BIT_SUD               = 12;
  BIT_NODOC             = 13;
  BIT_REESTR            = 14;
  BIT_GROUP             = 15;
  BIT_SUMMA             = 0;
  BIT_TOTAL             = 1;
  BIT_SUMVAL            = 2;
  BIT_SUMOPL            = 3;
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
