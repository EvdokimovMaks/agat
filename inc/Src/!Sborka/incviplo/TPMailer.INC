{
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �               �����瑕 : GALDICT "�����皋�� ERP 9.1"                   �
 �    ���� 甌Г���� 01/02/19                                             �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
}

{$ifdef __MTtabledef__}
{様様様様様様� ��゛��� : C_MAILER::TPLICENSEINFO "TPLICENSEINFO" 様様様様様様様}
type
  pTPLICENSEINFO = ^tTPLICENSEINFO;
  tTPLICENSEINFO = record   { - TPLICENSEINFO }
    NREC           : Comp;            { �ぅ�皋筥��皰�                         }
    CPARENT        : Comp;            { �ぅ�皋筥��皰� 牀え皀��                }
    TITLE          : String[80];      { ��━キ����┘ ���矣��/��ゃ��           }
    PRNNAME        : String[80];      { �矗����覃 ┐キ皋筥��皰� 牀え皀��      }
    NAME           : String[80];      { �矗����覃 ┐キ皋筥��皰�               }
    LICCOUNT       : Word;            { ��甄� ��罐�Ж�                        }
  end;
const
  tiTPLICENSEINFO0       = 0;  { NREC(Un M A)                            }
  tiTPLICENSEINFO1       = 1;  { NAME(M Up)                              }
  tiTPLICENSEINFO2       = 2;  { TITLE(M Up)                             }
  tiTPLICENSEINFO3       = 3;  { PRNNAME(M Up) + NAME(Up)                }
  tiTPLICENSEINFO4       = 4;  { CPARENT(M) + NREC                       }

const
  mtTPLICENSEINFO = 'C_MAILER::TPLICENSEINFO';
{$endif __MTtabledef__}

{$ifdef __MTtabledef__}
{様様様様様様� ��゛��� : C_MAILER::TPPATCHESLIST "TPPATCHESLIST" 様様様様様様様}
type
  pTPPATCHESLIST = ^tTPPATCHESLIST;
  tTPPATCHESLIST = record   { - TPPATCHESLIST }
    NREC           : Comp;            { �ぅ�皋筥��皰�                         }
    CPARENT        : Comp;            { �瘠��� �� 牀え皀��                    }
    NAME           : String[80];      { ��� 瓱痰ガ�, ��砒�                    }
  end;
const
  tiTPPATCHESLIST0       = 0;  { NREC(Un M A)                            }
  tiTPPATCHESLIST1       = 1;  { NAME(M Up)                              }
  tiTPPATCHESLIST2       = 2;  { CPARENT(M) + NREC                       }

const
  mtTPPATCHESLIST = 'C_MAILER::TPPATCHESLIST';
{$endif __MTtabledef__}

{$ifdef __MTtabledef__}
{様様様様様様� ��゛��� : C_MAILER::TPSUPPORTSERVICES "TPSUPPORTSERVICES" 様様様様様様様}
type
  pTPSUPPORTSERVICES = ^tTPSUPPORTSERVICES;
  tTPSUPPORTSERVICES = record   { - TPSUPPORTSERVICES }
    NREC           : Comp;            { �ぅ�皋筥��皰�                         }
    EMAIL          : String[200];     { EMail                                 }
    NAME           : String[80];      { ��━キ����┘                          }
  end;
const
  tiTPSUPPORTSERVICES0   = 0;  { NREC(Un M A)                            }
  tiTPSUPPORTSERVICES1   = 1;  { NAME(M Up)                              }
  tiTPSUPPORTSERVICES2   = 2;  { EMAIL(M Up)                             }

const
  mtTPSUPPORTSERVICES = 'C_MAILER::TPSUPPORTSERVICES';
{$endif __MTtabledef__}

{$ifdef __MTtabledef__}
{様様様様様様� ��゛��� : C_MAILER::TPSYSTEMINFORMATION "TPSYSTEMINFORMATION" 様様様様様様様}
type
  pTPSYSTEMINFORMATION = ^tTPSYSTEMINFORMATION;
  tTPSYSTEMINFORMATION = record   { - TPSYSTEMINFORMATION }
    NREC           : Comp;            { �ぅ�皋筥��皰�                         }
    OSVERSION      : String[200];     { �ム瓱� ��ム�罔����� 瓱痰ガ�           }
    ATLVERSION     : String[200];     { �ム瓱� �皓��皋��                      }
    GALVERSION     : String[200];     { �ム瓱� �����皋��                      }
    DBDRIVER       : String[200];     { ����▲� ��                            }
    VERSION        : SmallInt;        { �ム瓱� lic �����                      }
    ORGANIZATION   : String;          { �爍��├�罔�                           }
    ENDSUPPORTDATE : Date;            { ���� �爬�痰���→� �＝�礒│����        }
    LICNUMBER      : LongInt;         { ��┘�矚�┤ ���ム                      }
  end;
const
  tiTPSYSTEMINFORMATION0 = 0;  { NREC(Un M A)                            }

const
  mtTPSYSTEMINFORMATION = 'C_MAILER::TPSYSTEMINFORMATION';
{$endif __MTtabledef__}

{$ifdef __MTtabledef__}
{様様様様様様� ��゛��� : C_MAILER::TPUSERINFORMATION "TPUSERINFORMATION" 様様様様様様様}
type
  pTPUSERINFORMATION = ^tTPUSERINFORMATION;
  tTPUSERINFORMATION = record   { - TPUSERINFORMATION }
    NREC           : Comp;            { �ぅ�皋筥��皰�                         }
    EMAIL          : String[200];     { E-Mail ��┘���                        }
    FIO            : String[200];     { ��� ��┘���                           }
    CMODULE        : Comp;            { 瘁覊�� �� ��ゃ��                      }
    CSERVICE       : Comp;            { 瘁覊�� �� 甄礒＜ 皀絲�いムΚ�         }
    WERRORTYPE     : Word;            { 皋� ���牀��                           }
    CLONNAME       : String[200];     { ��━キ����┘ �����                    }
    SERRORDESCR    : String[200];     { ������┘ ���牀��                      }
  end;
const
  tiTPUSERINFORMATION0   = 0;  { NREC(Un M A)                            }
  tiTPUSERINFORMATION1   = 1;  { CMODULE(M)                              }

const
  mtTPUSERINFORMATION = 'C_MAILER::TPUSERINFORMATION';
{$endif __MTtabledef__}
