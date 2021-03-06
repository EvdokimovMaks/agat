{$IFDEF __type__}
{様様様様様様� ��゛��� : XARPREDX "XARPREDX" 様様様様様様様}
type
  String21        = String[21];
  String50        = String[50];
  String255        = String[255];
  String30        = String[30];
  String0        = String[0];
  String20        = String[20];
  String1        = String[1];
  pXARPREDX = ^tXARPREDX;
  tXARPREDX = record   { - XARPREDX }
    TUNEVALUPICK   : Word;            { TuneValuPick                          }
    I_IDX          : SmallInt;        { i_idx                                 }
    MYCURREPNO     : Comp;            { myCurRepNo                            }
    MYFILIALNO     : LongInt;         { myFilialNo                            }
    MYPLANSNO      : Comp;            { myPlansNo                             }
    SHPZAR         : String21;        { shpzar                                }
    SC             : String50;        { sc                                    }
    NAM            : String;          { nam                                   }
    MYW            : Word;            { myw                                   }
    NEWINN         : String30;        { newINN                                }
    PRNAMEPER      : String50;        { prNamePer                             }
    SAVEREC        : Comp;            { saverec                               }
    DATAM          : Date;            { DataM                                 }
    DATENASTR      : Date;            { datenastr                             }
    DOLGVAR        : Byte;            { dolgvar                               }
    FL11           : Word;            { fl11                                  }
    FL25           : Word;            { fl25                                  }
    FLAGBL         : Word;            { FlagBL                                }
    MYSETDEFPARAM  : Word;            { MySetDefParam                         }
    PERSONSAUTOKAUTYPE: Word;         { PersonsAutoKauType                    }
    KATPODRAUTOKAUTYPE: Word;         { KatPodrAutoKauType                    }
    SEPARATELYBYDEP: Word;            { SeparatelyByDep                       }
    DEBITAUTODEPTYPE: Word;           { DebitAutoDepType                      }
    CREDITAUTODEPTYPE: Word;          { CreditAutoDepType                     }
    EC             : TReferenceBuf;   { EC                                    }
    ALNEED_17      : String;          { ALNEED_17                             }
    AVERAGEMIN     : String;          { AVERAGEMIN                            }
    UCHETDOH       : String;          { UCHETDOH                              }
    ZAPINDEKS      : String;          { ZAPINDEKS                             }
    UCHDEPON       : String;          { UCHDEPON                              }
    FREEZDEPON     : String;          { FREEZDEPON                            }
    ALGFLAG12      : String;          { ALGFLAG12                             }
    DOLGDEPON      : String;          { DOLGDEPON                             }
    VIDUCH_KASSA   : String;          { VIDUCH_KASSA                          }
    ALGNEED_3      : String;          { ALGNEED_3                             }
    ALGNEED_4      : String;          { ALGNEED_4                             }
    ALGNEED_5      : String;          { ALGNEED_5                             }
    UDERPROP       : String;          { UDERPROP                              }
    BLISN          : String;          { BLISN                                 }
    BLISNSD        : String;          { BLISNSD                               }
    X_DATE0        : String;          { X_DATE0                               }
    X_DATE1        : String;          { X_DATE1                               }
    X_FLAG27       : String;          { X_FLAG27                              }
    X_DATE5        : String;          { X_DATE5                               }
    X_DATE6        : String;          { X_DATE6                               }
    X_DATE8        : String;          { X_DATE8                               }
    X_XDATE8       : String;          { X_XDATE8                              }
    X_DATE9        : String;          { X_DATE9                               }
    X_XDATE9       : String;          { X_XDATE9                              }
    DATE4CH        : Byte;            { DATE4CH                               }
    DATEZN         : Byte;            { DATEZN                                }
    ALGNEED_2      : String;          { ALGNEED_2                             }
    ALGNEED_FLAG6  : String;          { ALGNEED_FLAG6                         }
    ALGNEED_FLAG28 : String;          { ALGNEED_FLAG28                        }
    ALGNEED_FLAG29 : String;          { ALGNEED_FLAG29                        }
    ALGNEED_FLAG30 : String;          { ALGNEED_FLAG30                        }
    ALGNEED_9      : String;          { ALGNEED_9                             }
    SCHETDEB       : String0;         { SCHETDEB                              }
    SUBSCHDEB      : String0;         { SUBSCHDEB                             }
    NAMKAUD        : String0;         { NAMKAUD                               }
    SCHETKR        : String20;        { SCHETKR                               }
    SUBSCHKR       : String21;        { SUBSCHKR                              }
    NAMKAUK        : String;          { NAMKAUK                               }
    SCHETPER       : String20;        { SCHETPER                              }
    SUBSCHPER      : String21;        { SUBSCHPER                             }
    KOD            : String1;         { ��� ����� 瘍モ��                      }
    PLANSSCH_NREC  : Comp;            { ���ム ����瓱                          }
    PERECH_NAMEPER : String50;        { ��━キ����┘                          }
    PERECH1_NAMEPER: String50;        { ��━キ����┘                          }
    CKAUK          : array [1..6] of Comp;{ ��� �爛え�. 瘍モ�                 }
    TBLK           : array [1..6] of Word;{ ��゛�肓 ��� �爛え�. 瘍モ�         }
    FLAG6          : String1;         { �腮�.痺��� �� ���, � ���.             }
    FLAG12         : String1;         { �キ瓱���覃 祠キ跏�モ ��               }
    FLAG18         : String1;         { ���閧�                                }
    FLAG19         : String1;         { ���閧�                                }
    FLAG26         : String1;         { ���閧�                                }
    FLAG27         : String1;         { FLAG27                                }
    FLAG28         : String1;         { �皚メキ┘ ��━キ皰�                   }
    FLAG29         : String1;         { か� ｀�讚�膈���                       }
    FLAG30         : String1;         { 爛Д燿                                }
    NEED_2         : Word;            { ����爬皙 �ムム�瘍モ� ��ぎ絎き���      }
    NEED_3         : Word;            { �ムム�瘍モ ��ぎ絎き���                }
    NEED_4         : Word;            { �ムム�瘍モ ��ぎ絎き���                }
    NEED_5         : Word;            { �ムム�瘍モ ��ぎ絎き���                }
    NEED_6         : Word;            { か� ��痰牀オ ��ぎ絎き���              }
    NEED_9         : Word;            { か� 竍モ� �ムュ�ぎ� � ｀�讚�膈��      }
    NEED_17        : Word;            { �爬Л��                               }
    DOUBLE2        : Double;          { か� ��痰牀オ ��ぎ絎き���              }
    DOUBLE4        : Double;          { ���閧�                                }
    DOUBLE6        : Double;          { か� ぅ���キ皰�                        }
    DOUBLE7        : Double;          { か� ぅ���キ皰�                        }
    DATE0          : Date;            { �諛モ� �ムキ�瘴矚� �� 甄イ �メ閹      }
    DATE1          : Date;            { ���碎 �♂┤ 痰�� か� ��瘍モ� ��甌；�  }
    DATE4          : Date;            { ���閧�                                }
    DATE5          : Date;            { 爛Д燿                                }
    DATE6          : Date;            { 爛Д燿                                }
    DATE8          : Date;            { ���閧�                                }
    DATE9          : Date;            { ���閧�                                }
    UCHPLVED       : Word;            { �腑� ���皀Ν諷 ▲ぎ��痰ォ             }
    KATBANKP_NREC  : Comp;            { ���ム ����瓱                          }
    SYSCODE        : Word;            { ���ム                                 }
    NAIMSOC_NAME   : String;          { ��Б��┘                              }
    KLNAIM_NAME    : String;          { ��Б��┘                              }
    KLNAIM_NREC    : Comp;            { ���ム ����瓱                          }
    OCRUG16        : Word;            { ���閧�                                }
    OCRUG7         : Word;            { ���ム 甎��→� か� ������〓�           }
    CPOL           : Comp;            { ��� ���竍�皀��                        }
    CBANKPOL       : Comp;            { ��� ����� ���-皀��                    }
    TSCALE         : Comp;            { �瘠��� �� 茯��� ��艪.瓠���            }
    CKASSA         : Comp;            { �瘠��� �� ��瘁�                       }
    NEED_8         : Word;            { ※� 磴ム����� か� double1             }
    OCRUG6         : Word;            { ���ム ����� か� ������〓�             }
    NEED_20        : Word;            { 爛Д燿                                }
    NEED_19        : Word;            { 瘁覊�� �� 茯��� か� 甌�.������        }
    KAUFLAG        : String1;         { ���� か� �≒.筮爼.���                 }
    CEXFLAG        : String1;         { 蹍〓お� � ��む�Гカ                  }
    MES            : Word;            { �砒モ�覃 �メ閹                        }
    PRPEREXO       : String1;         { 踸Л�� �ムュ���                      }
    INFOLPA        : String;          { INFOLPA                               }
    TUNEVALUE      : String;          { TUNEVALUE                             }
    OCRUG14        : Word;            { ���閧�                                }
    ROUNDFOT       : String1;         { ��痰牀��� ��珮��. ├ ���瘁��.         }
    MESOTP         : Word;            { ���.�メ閹ア か� �皴竅��               }
    DATOTCH        : Date;            { ���� �砒モ���� �ム┏��                }
    SEVERNAD       : String1;         { �アム��� ��ぁ�→� (0/1)               }
    ISINDEKS       : String1;         { ��ぅ���罔� (0/1)                      }
    VISLET         : String1;         { �諱�磽� �モ (0/1)                     }
    MESFLAG        : String1;         { 蹍〓お� � 竍モ�� �メ閹�              }
    NALFLAG        : String1;         { ��Б��� ���. ������.                  }
    FLAG22         : String1;         { ��� ��ぎ絎き���                       }
    ALIMFLAG       : String1;         { ��━キ.� 竍モ�� �キ�.                 }
    ZAPAS          : String1;         { �｀� � ���皀�跚┴�                    }
    SKLAFLAG       : String1;         { ����щ��碎 瓷��る                     }
    RUSSA          : String1;         { ��瘁�� - ,�カ�珮瘡 +                  }
    FLAG5          : String1;         { �� �諛モ�� ｀�讚�膈諷                 }
    FLAG14         : String1;         { �≒����.��玻オ�.き� � ��瘠            }
    INDEKSS        : String1;         { ��ぅ���罔� か� 甌↑                   }
    FLAG3          : String1;         { 踸Л�� ��ぎ絎き��� ������            }
    FLAG4          : String1;         { ����キ┘ ぎ��〓牀� ��む錣�            }
    FLAG7          : String1;         { ����キ┘ ��瑙ぎ�                      }
    FLAG8          : String1;         { ����キ┘ ��瘍モ�� �� �÷�皚���        }
    FLAG2          : String1;         { �モ瓷┘ ��甌；� �發カ讚�              }
    ZAPAS1         : String1;         { 鉑� � �皓�お��                       }
    FLAG9          : String1;         { �カア�� 瓠�� 祠キ跏�モ ��             }
    FLAG16         : String1;         { ���閧�                                }
    FLAG10         : String1;         { ���矗���牀��碎 194 ���                }
    FLAG17         : String1;         { ���閧�                                }
    FLAG15         : String1;         { ���閧�                                }
    FLAG20         : String1;         { �Ж��碎 ��━.� ��痰� ���.���          }
    FLAG23         : String1;         { ��痰牀��� か� �キ�.����┃�            }
    FLAG24         : String1;         { �Ж��碎 �牀籬.� ��痰� ���.���         }
    DOUBLE9        : Double;          { ��� ���(1-�� 茯���,0-�� 痰牀��)       }
    OCRUG15        : Word;            { �ウ━ ��瘍モ� ��ぎ絎き���             }
    NEED_18        : Word;            { N ���, �� ��皰牀�� 祠キ跏.�� �キ瓱���覃 }
    OCRUG3         : Word;            { ����爬皙 ��珮��.��� ���               }
    NEED_14        : Word;            { か� �キ瓱������ 痰���                 }
    NEED_15        : Word;            { 痼�� 縲��キ┘ ����諷 � 瓱痰ガ�        }
    FLAG11         : String1;         { �腮硅��碎 罐�ア�� � �ウ�ム┏ぅ        }
    FLAG25         : String1;         { Char - byte (か� ↓ヨ��� 甌↑メ皋皀�ォ) }
    NEED_10        : Word;            { ��珮��キ┘ か� ↓ヨ��� 甌↑メ皋皀�ォ  }
    PODRSHARE      : String1;         { ��痰祚 � ��む�Гカキ�鍖               }
    NEED_11        : Word;            { ��� ��艪�〓�� 瓠���                   }
    NEED_12        : Word;            { か� ｀�讚�膈���                       }
    MINOKL         : Double;          { �祠�� �┃━��.������                  }
    MINOKLP        : Double;          { �祠�� ��. �┃.������                  }
    DOUBLE8        : Double;          { か� ぅ���キ皰�                        }
    OCRUG8         : Word;            { �メ閹 ��甄イ�ォ �覩��硅               }
    OCRUG9         : Word;            { ��� ��甄イ�ォ �覩��硅                 }
    MATPOM         : Double;          { ���.���.�� �゛.�����                  }
    MATPOMFZ       : Double;          { ���.���.� �キ瓱���覃                  }
    PODARKI        : Double;          { ����爲�,�� �゛.�����                  }
    PODARKIFZ      : Double;          { ����爲�,� ����������                  }
    MESSTOR        : Word;            { ���.�メ閹ア か� 痰��                  }
    NEED_16        : Word;            { �爬Л�� ����爬皙� か� ┃ぅ��.ぅ矚���  }
    MINRAZ         : Double;          { �祠�� �ム〓�� ��о錣�                 }
    DATAMIN        : Date;            { ���� か� �┃.������                   }
    VAKFLAG        : String1;         { ����щ��碎 �����瓱�                   }
    NOMALG         : Word;            { ���.�����.か� �������                 }
    OCRUG10        : Word;            { �牀▲�� ぅ���├�罔� ┘��璢┬          }
    NOMALGP        : Word;            { ���.�����.か� ���������               }
    XARPRED_NREC   : Comp;            { ���ム ����瓱                          }
  end;

type
    prXARPREDX = pXARPREDX;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNCATALOGS=18;
    TNKATBANK=2;
    TNKATBANKP=17;
    TNKATORG=3;
    TNKLNAIM=5;
    TNKLSUBSCH=10;
    TNKLVIDPOS=19;
    TNKLVIDUD=7;
    TNKLVIDUD1=14;
    TNKLVIDUDPOD=15;
    TNMINRAZR=6;
    TNNAIMSOC=1;
    TNPERECH=4;
    TNPERECH1=16;
    TNPLANSSCH=8;
    TNSCHETKAU=11;
    TNSCHETKAU1=12;
    TNSCHETKAU2=13;
    TNSPRSCHET=9;
    TNXsUSERS=20;
    TNXARPRED=0;
    FNALGFLAG12=38;
    FNALGNEED_2=74;
    FNALGNEED_3=43;
    FNALGNEED_4=45;
    FNALGNEED_5=47;
    FNALGNEED_9=84;
    FNALGNEED_FLAG28=78;
    FNALGNEED_FLAG29=80;
    FNALGNEED_FLAG30=82;
    FNALGNEED_FLAG6=76;
    FNALIMFLAG=156;
    FNALNEED_17=26;
    FNAVERAGEMIN=28;
    FNBLISN=51;
    FNBLISNSD=53;
    FNCBANKPOL=124;
    FNCEXFLAG=140;
    FNCKASSA=127;
    FNCKAUK1=97;
    FNCKAUK2=98;
    FNCKAUK3=99;
    FNCKAUK4=100;
    FNCKAUK5=101;
    FNCKAUK6=102;
    FNCPOL=122;
    FNCREDITAUTODEPTYPE=23;
    FNDATAM=12;
    FNDATAMIN=206;
    FNDATE0=54;
    FNDATE1=56;
    FNDATE4=70;
    FNDATE4CH=71;
    FNDATE5=60;
    FNDATE6=62;
    FNDATE8=64;
    FNDATE9=67;
    FNDATENASTR=13;
    FNDATEZN=72;
    FNDATOTCH=149;
    FNDEBITAUTODEPTYPE=22;
    FNDOLGDEPON=39;
    FNDOLGVAR=14;
    FNDOUBLE2=29;
    FNDOUBLE4=31;
    FNDOUBLE6=33;
    FNDOUBLE7=35;
    FNDOUBLE8=192;
    FNDOUBLE9=177;
    FNEC=24;
    FNFL11=15;
    FNFL25=16;
    FNFLAG10=171;
    FNFLAG11=183;
    FNFLAG12=37;
    FNFLAG14=161;
    FNFLAG15=173;
    FNFLAG16=170;
    FNFLAG17=172;
    FNFLAG18=48;
    FNFLAG19=50;
    FNFLAG2=167;
    FNFLAG20=174;
    FNFLAG22=155;
    FNFLAG23=175;
    FNFLAG24=176;
    FNFLAG25=184;
    FNFLAG26=52;
    FNFLAG27=58;
    FNFLAG28=77;
    FNFLAG29=79;
    FNFLAG3=163;
    FNFLAG30=81;
    FNFLAG4=164;
    FNFLAG5=160;
    FNFLAG6=75;
    FNFLAG7=165;
    FNFLAG8=166;
    FNFLAG9=169;
    FNFLAGBL=17;
    FNFREEZDEPON=36;
    FNINDEKSS=162;
    FNINFOLPA=144;
    FNISINDEKS=151;
    FNI_IDX=1;
    FNKATBANKP_NREC=111;
    FNKATPODRAUTOKAUTYPE=20;
    FNKAUFLAG=139;
    FNKLNAIM_NAME=114;
    FNKLNAIM_NREC=115;
    FNKOD=107;
    FNMATPOM=195;
    FNMATPOMFZ=196;
    FNMES=141;
    FNMESFLAG=153;
    FNMESOTP=148;
    FNMESSTOR=200;
    FNMINOKL=190;
    FNMINOKLP=191;
    FNMINRAZ=205;
    FNMYCURREPNO=2;
    FNMYFILIALNO=3;
    FNMYPLANSNO=4;
    FNMYSETDEFPARAM=18;
    FNMYW=8;
    FNNAIMSOC_NAME=113;
    FNNALFLAG=154;
    FNNAM=7;
    FNNAMKAUD=87;
    FNNAMKAUK=104;
    FNNEED_10=185;
    FNNEED_11=188;
    FNNEED_12=189;
    FNNEED_14=181;
    FNNEED_15=182;
    FNNEED_16=201;
    FNNEED_17=25;
    FNNEED_18=179;
    FNNEED_19=135;
    FNNEED_2=73;
    FNNEED_20=133;
    FNNEED_3=42;
    FNNEED_4=44;
    FNNEED_5=46;
    FNNEED_6=27;
    FNNEED_8=129;
    FNNEED_9=83;
    FNNEWINN=9;
    FNNOMALG=208;
    FNNOMALGP=210;
    FNOCRUG10=209;
    FNOCRUG14=146;
    FNOCRUG15=178;
    FNOCRUG16=118;
    FNOCRUG3=180;
    FNOCRUG6=131;
    FNOCRUG7=120;
    FNOCRUG8=193;
    FNOCRUG9=194;
    FNPERECH1_NAMEPER=110;
    FNPERECH_NAMEPER=109;
    FNPERSONSAUTOKAUTYPE=19;
    FNPLANSSCH_NREC=108;
    FNPODARKI=197;
    FNPODARKIFZ=198;
    FNPODRSHARE=187;
    FNPRNAMEPER=10;
    FNPRPEREXO=142;
    FNROUNDFOT=147;
    FNRUSSA=159;
    FNSAVEREC=11;
    FNSC=6;
    FNSCHETDEB=85;
    FNSCHETKR=88;
    FNSCHETPER=105;
    FNSEPARATELYBYDEP=21;
    FNSEVERNAD=150;
    FNSHPZAR=5;
    FNSKLAFLAG=158;
    FNSUBSCHDEB=86;
    FNSUBSCHKR=89;
    FNSUBSCHPER=106;
    FNSYSCODE=112;
    FNTBLK1=90;
    FNTBLK2=91;
    FNTBLK3=92;
    FNTBLK4=93;
    FNTBLK5=94;
    FNTBLK6=95;
    FNTSCALE=126;
    FNTUNEVALUE=145;
    FNTUNEVALUPICK=0;
    FNUCHDEPON=34;
    FNUCHETDOH=30;
    FNUCHPLVED=40;
    FNUDERPROP=49;
    FNVAKFLAG=207;
    FNVIDUCH_KASSA=41;
    FNVISLET=152;
    FNXARPRED_NREC=217;
    FNX_DATE0=55;
    FNX_DATE1=57;
    FNX_DATE5=61;
    FNX_DATE6=63;
    FNX_DATE8=65;
    FNX_DATE9=68;
    FNX_FLAG27=59;
    FNX_XDATE8=66;
    FNX_XDATE9=69;
    FNZAPAS=157;
    FNZAPAS1=168;
    FNZAPINDEKS=32;
    tbKLVIDPOS_4_MODIF_0=19;
    tbKLVIDPOS_4_MODIF_1=65555;
    tbPERECH_4_MODIF_0=65540;
    tbPERECH1_4_MODIF_0=65552;
    tbPLANSSCH_4_MODIF_0=65544;
    tbPLANSSCH_4_MODIF_1=131080;
{$ENDIF}
{$IFDEF __Type__}
type
   prXARPREDXXARPREDX = pXARPREDX;
   prXARPRED = pXARPREDX;
   pXARPRED = pXARPREDX;
{$endif}
