{
 �����������������������������������������������������������������������ͻ
 �               ������� : GALDICT "�����⨪� 9.1"                       �
 �    ��� ᮧ����� 16/05/14                                             �
 �����������������������������������������������������������������������ͼ
}

{$ifdef __MTtabledef__}
{������������� ������ : C_MAILER::TPLICENSEINFO "TPLICENSEINFO" ��������������}
type
  pTPLICENSEINFO = ^tTPLICENSEINFO;
  tTPLICENSEINFO = record   { - TPLICENSEINFO }
    NREC           : Comp;            { �����䨪���                         }
    CPARENT        : Comp;            { �����䨪��� த�⥫�                }
    TITLE          : String[80];      { ������������ ������/�����           }
    PRNNAME        : String[80];      { ��ப��� �����䨪��� த�⥫�      }
    NAME           : String[80];      { ��ப��� �����䨪���               }
    LICCOUNT       : Word;            { ��᫮ ��業���                        }
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
{������������� ������ : C_MAILER::TPPATCHESLIST "TPPATCHESLIST" ��������������}
type
  pTPPATCHESLIST = ^tTPPATCHESLIST;
  tTPPATCHESLIST = record   { - TPPATCHESLIST }
    NREC           : Comp;            { �����䨪���                         }
    CPARENT        : Comp;            { ��뫪� �� த�⥫�                    }
    NAME           : String[80];      { ��� ��⥬�, ����                    }
  end;
const
  tiTPPATCHESLIST0       = 0;  { NREC(Un M A)                            }
  tiTPPATCHESLIST1       = 1;  { NAME(M Up)                              }
  tiTPPATCHESLIST2       = 2;  { CPARENT(M) + NREC                       }

const
  mtTPPATCHESLIST = 'C_MAILER::TPPATCHESLIST';
{$endif __MTtabledef__}

{$ifdef __MTtabledef__}
{������������� ������ : C_MAILER::TPSUPPORTSERVICES "TPSUPPORTSERVICES" ��������������}
type
  pTPSUPPORTSERVICES = ^tTPSUPPORTSERVICES;
  tTPSUPPORTSERVICES = record   { - TPSUPPORTSERVICES }
    NREC           : Comp;            { �����䨪���                         }
    EMAIL          : String[200];     { EMail                                 }
    NAME           : String[80];      { ������������                          }
  end;
const
  tiTPSUPPORTSERVICES0   = 0;  { NREC(Un M A)                            }
  tiTPSUPPORTSERVICES1   = 1;  { NAME(M Up)                              }
  tiTPSUPPORTSERVICES2   = 2;  { EMAIL(M Up)                             }

const
  mtTPSUPPORTSERVICES = 'C_MAILER::TPSUPPORTSERVICES';
{$endif __MTtabledef__}

{$ifdef __MTtabledef__}
{������������� ������ : C_MAILER::TPSYSTEMINFORMATION "TPSYSTEMINFORMATION" ��������������}
type
  pTPSYSTEMINFORMATION = ^tTPSYSTEMINFORMATION;
  tTPSYSTEMINFORMATION = record   { - TPSYSTEMINFORMATION }
    NREC           : Comp;            { �����䨪���                         }
    OSVERSION      : String[200];     { ����� ����樮���� ��⥬�           }
    ATLVERSION     : String[200];     { ����� �⫠���                      }
    GALVERSION     : String[200];     { ����� �����⨪�                      }
    DBDRIVER       : String[200];     { �ࠩ��� ��                            }
    VERSION        : SmallInt;        { ����� lic 䠩��                      }
    ORGANIZATION   : String;          { �࣠������                           }
    ENDSUPPORTDATE : Date;            { ��� �ਮ�⠭���� ���㦨�����        }
    LICNUMBER      : LongInt;         { ������᪨� �����                      }
  end;
const
  tiTPSYSTEMINFORMATION0 = 0;  { NREC(Un M A)                            }

const
  mtTPSYSTEMINFORMATION = 'C_MAILER::TPSYSTEMINFORMATION';
{$endif __MTtabledef__}

{$ifdef __MTtabledef__}
{������������� ������ : C_MAILER::TPUSERINFORMATION "TPUSERINFORMATION" ��������������}
type
  pTPUSERINFORMATION = ^tTPUSERINFORMATION;
  tTPUSERINFORMATION = record   { - TPUSERINFORMATION }
    NREC           : Comp;            { �����䨪���                         }
    EMAIL          : String[200];     { E-Mail ������                        }
    FIO            : String[200];     { ��� ������                           }
    CMODULE        : Comp;            { ��뫪� �� �����                      }
    CSERVICE       : Comp;            { ��뫪� �� �㦡� �寮���প�         }
    WERRORTYPE     : Word;            { ⨯ �����                           }
    CLONNAME       : String[200];     { ������������ �����                    }
    SERRORDESCR    : String[200];     { ���ᠭ�� �����                      }
  end;
const
  tiTPUSERINFORMATION0   = 0;  { NREC(Un M A)                            }
  tiTPUSERINFORMATION1   = 1;  { CMODULE(M)                              }

const
  mtTPUSERINFORMATION = 'C_MAILER::TPUSERINFORMATION';
{$endif __MTtabledef__}