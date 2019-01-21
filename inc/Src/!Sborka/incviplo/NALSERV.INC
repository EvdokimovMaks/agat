{$IFDEF __type__}
{═════════════ Таблица : NALSERV "NALSERV" ══════════════}
type
  String10        = String[10];
  String80        = String[80];
  String255        = String[255];
  pNALSERV = ^tNALSERV;
  tNALSERV = record   { - NALSERV }
    CCGRNAL        : Comp;            { ccGrNal                               }
    DNALOG         : Date;            { dNalog                                }
    SPGRNAL_NREC   : Comp;            { Номер записи                          }
    SPGRNAL_ATL_LASTDATE: Date;       { Дата последней модификации            }
    SPGRNAL_ATL_LASTTIME: Time;       { Время последней модификации           }
    SPGRNAL_ATL_LASTUSER: Comp;       { Код пользователя                      }
    SPGRNAL_ATL_ORIGINOFFICE: Word;   { Номер офиса, в котором занесена запись }
    SPGRNAL_ATL_OWNER: Comp;          { Код владельца записи                  }
    SPGRNAL_ATL_BRANCH: Comp;         { Филиал                                }
    CGRNAL         : Comp;            { ссылка на KatGrNal                    }
    CNALOG         : Comp;            { ссылка на налог ( Katnalog )          }
    NALOG          : Double;          { ставка налога                         }
    SUMNAL         : Double;          { сумма налога с учетной единицы в вал. }
    CVAL           : Comp;            { код валюты                            }
    NALD1          : Date;            { дата начала действия                  }
    NALD2          : Date;            { дата окончания действия               }
    SPGRNAL_ISCUSTOM: Word;           { 0-нет,1-входит в тамож.               }
    CCOUNTRY       : Comp;            { -> страна, для которой применим налог }
    CORG           : Comp;            { организация-получатель налога         }
    DOPNALOG       : Double;          { доп. ставка налога                    }
    NALUCH         : Word;            { 0-не входит в нал.учет, 1-входит      }
    TOLERANS       : array [1..2] of Double;{ Предельное отклонение ручных налогов }
    WCONTROL       : Word;            { Контроль отклонения                   }
    KATNALOG_NREC  : Comp;            { Номер записи                          }
    KATNALOG_ATL_LASTDATE: Date;      { Дата последней модификации            }
    KATNALOG_ATL_LASTTIME: Time;      { Время последней модификации           }
    KATNALOG_ATL_LASTUSER: Comp;      { Код пользователя                      }
    KATNALOG_ATL_ORIGINOFFICE: Word;  { Номер офиса, в котором занесена запись }
    KATNALOG_ATL_OWNER: Comp;         { Код владельца записи                  }
    KATNALOG_ATL_BRANCH: Comp;        { Филиал                                }
    KOD            : String10;        { символ налога                         }
    NAME           : String80;        { наименование налога                   }
    FORMULA        : String;          { выражение формулы расчета             }
    PRIOR          : Word;            { приоритет налога                      }
    KATNALOG_ISCUSTOM: Word;          { 0-нет,1-входит в тамож.               }
    CVIDNAL        : Comp;            { Ссылка на вид налога                  }
    TIPNALOG       : Word;            { Адвал./специф./комб.                  }
    NPP            : Word;            { Для сортировки в печати               }
    ISAGREG        : Boolean;         { Агрегировать по ставкам - да/нет      }
    OUTUCH         : Word;            { 1-не входит в учетную цену, 0 - входит }
    CUSL           : Comp;            { ссылка на налоговую услугу            }
  end;
const
  tiMAININD              = 0;  { PRIOR(nM)                               }

type
    prNALSERV = pNALSERV;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNKATNALOG=1;
    TNSPGRNAL=0;
    FNCCGRNAL=0;
    FNCCOUNTRY=17;
    FNCGRNAL=9;
    FNCNALOG=10;
    FNCORG=18;
    FNCUSL=42;
    FNCVAL=13;
    FNCVIDNAL=37;
    FNDNALOG=1;
    FNDOPNALOG=19;
    FNFORMULA=34;
    FNISAGREG=40;
    FNKATNALOG_ATL_BRANCH=31;
    FNKATNALOG_ATL_LASTDATE=26;
    FNKATNALOG_ATL_LASTTIME=27;
    FNKATNALOG_ATL_LASTUSER=28;
    FNKATNALOG_ATL_ORIGINOFFICE=29;
    FNKATNALOG_ATL_OWNER=30;
    FNKATNALOG_ISCUSTOM=36;
    FNKATNALOG_NREC=25;
    FNKOD=32;
    FNNALD1=14;
    FNNALD2=15;
    FNNALOG=11;
    FNNALUCH=20;
    FNNAME=33;
    FNNPP=39;
    FNOUTUCH=41;
    FNPRIOR=35;
    FNSPGRNAL_ATL_BRANCH=8;
    FNSPGRNAL_ATL_LASTDATE=3;
    FNSPGRNAL_ATL_LASTTIME=4;
    FNSPGRNAL_ATL_LASTUSER=5;
    FNSPGRNAL_ATL_ORIGINOFFICE=6;
    FNSPGRNAL_ATL_OWNER=7;
    FNSPGRNAL_ISCUSTOM=16;
    FNSPGRNAL_NREC=2;
    FNSUMNAL=12;
    FNTIPNALOG=38;
    FNTOLERANS1=21;
    FNTOLERANS2=22;
    FNWCONTROL=24;
{$ENDIF}
