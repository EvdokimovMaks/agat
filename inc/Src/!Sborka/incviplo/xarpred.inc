{$IFDEF __type__}
{═════════════ Таблица : XARPREDX "XARPREDX" ══════════════}
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
    KOD            : String1;         { код плана счетов                      }
    PLANSSCH_NREC  : Comp;            { Номер записи                          }
    PERECH_NAMEPER : String50;        { Наименование                          }
    PERECH1_NAMEPER: String50;        { Наименование                          }
    CKAUK          : array [1..6] of Comp;{ КАУ кредит. счета                 }
    TBLK           : array [1..6] of Word;{ таблицы КАУ кредит. счета         }
    FLAG6          : String1;         { Учит.суммы за год, в кот.             }
    FLAG12         : String1;         { Пенсионный уменьшает нб               }
    FLAG18         : String1;         { занято                                }
    FLAG19         : String1;         { занято                                }
    FLAG26         : String1;         { занято                                }
    FLAG27         : String1;         { FLAG27                                }
    FLAG28         : String1;         { отнесение алиментов                   }
    FLAG29         : String1;         { для больничного                       }
    FLAG30         : String1;         { резерв                                }
    NEED_2         : Word;            { Алгоритм перерасчета подоходного      }
    NEED_3         : Word;            { Перерасчет подоходного                }
    NEED_4         : Word;            { Перерасчет подоходного                }
    NEED_5         : Word;            { Перерасчет подоходного                }
    NEED_6         : Word;            { для настроек подоходного              }
    NEED_9         : Word;            { для учета переходов в больничном      }
    NEED_17        : Word;            { признак                               }
    DOUBLE2        : Double;          { для настроек подоходного              }
    DOUBLE4        : Double;          { занято                                }
    DOUBLE6        : Double;          { для депонентов                        }
    DOUBLE7        : Double;          { для депонентов                        }
    DATE0          : Date;            { вычеты переносятся на след месяц      }
    DATE1          : Date;            { Брать общий стаж для расчета пособий  }
    DATE4          : Date;            { занято                                }
    DATE5          : Date;            { резерв                                }
    DATE6          : Date;            { резерв                                }
    DATE8          : Date;            { занято                                }
    DATE9          : Date;            { занято                                }
    UCHPLVED       : Word;            { Учет платежных ведомостей             }
    KATBANKP_NREC  : Comp;            { Номер записи                          }
    SYSCODE        : Word;            { Номер                                 }
    NAIMSOC_NAME   : String;          { Название                              }
    KLNAIM_NAME    : String;          { Название                              }
    KLNAIM_NREC    : Comp;            { Номер записи                          }
    OCRUG16        : Word;            { Занято                                }
    OCRUG7         : Word;            { Номер справки для налоговой           }
    CPOL           : Comp;            { Код Получателя                        }
    CBANKPOL       : Comp;            { Код Банка пол-теля                    }
    TSCALE         : Comp;            { Ссылка на шкалу почт.сбора            }
    CKASSA         : Comp;            { Ссылка на кассу                       }
    NEED_8         : Word;            { вид удержания для double1             }
    OCRUG6         : Word;            { Номер файла для налоговой             }
    NEED_20        : Word;            { резерв                                }
    NEED_19        : Word;            { ссылка на шкалу для соц.налога        }
    KAUFLAG        : String1;         { Флаг для авт.форм.КАУ                 }
    CEXFLAG        : String1;         { Проводки с подраздел                  }
    MES            : Word;            { Отчетный месяц                        }
    PRPEREXO       : String1;         { Признак Перехода                      }
    INFOLPA        : String;          { INFOLPA                               }
    TUNEVALUE      : String;          { TUNEVALUE                             }
    OCRUG14        : Word;            { Занято                                }
    ROUNDFOT       : String1;         { Настройка округл. из классиф.         }
    MESOTP         : Word;            { Кол.месяцев для Отпуска               }
    DATOTCH        : Date;            { Дата отчетного периода                }
    SEVERNAD       : String1;         { Северная надбавка (0/1)               }
    ISINDEKS       : String1;         { Индексация (0/1)                      }
    VISLET         : String1;         { Выслуга лет (0/1)                     }
    MESFLAG        : String1;         { Проводки с учетом месяца              }
    NALFLAG        : String1;         { Возврат Под. Налога.                  }
    FLAG22         : String1;         { Для подоходного                       }
    ALIMFLAG       : String1;         { Алимен.с учетом пенс.                 }
    ZAPAS          : String1;         { Сбор с плательщика                    }
    SKLAFLAG       : String1;         { Показывать склады                     }
    RUSSA          : String1;         { Россия - ,Беларусь +                  }
    FLAG5          : String1;         { За вычетом больничных                 }
    FLAG14         : String1;         { Автомат.коррект.дни и часы            }
    INDEKSS        : String1;         { Индексация для совм                   }
    FLAG3          : String1;         { Признак подоходного налога            }
    FLAG4          : String1;         { Удаление договоров подряда            }
    FLAG7          : String1;         { Удаление нарядов                      }
    FLAG8          : String1;         { Удаление расчетов от обратного        }
    FLAG2          : String1;         { Детские пособия отдельно              }
    ZAPAS1         : String1;         { Пуск с отладкой                       }
    FLAG9          : String1;         { Целевой сбор уменьшает нб             }
    FLAG16         : String1;         { занято                                }
    FLAG10         : String1;         { Контролировать 194 код                }
    FLAG17         : String1;         { занято                                }
    FLAG15         : String1;         { занято                                }
    FLAG20         : String1;         { Взимать алим.с части мат.пом          }
    FLAG23         : String1;         { Настройка для пенс.Украины            }
    FLAG24         : String1;         { Взимать профс.с части мат.пом         }
    DOUBLE9        : Double;          { Для ЕСН(1-по шкале,0-по строке)       }
    OCRUG15        : Word;            { Режим расчета подоходного             }
    NEED_18        : Word;            { N ФОТ, нб которого уменьш.на Пенсионный }
    OCRUG3         : Word;            { Алгоритм округл.нал ФОТ               }
    NEED_14        : Word;            { для пенсионного стажа                 }
    NEED_15        : Word;            { срок хранение данных в системе        }
    FLAG11         : String1;         { Учитывать целевой в межпериоде        }
    FLAG25         : String1;         { Char - byte (для внешних совместителей) }
    NEED_10        : Word;            { округление для внешних совместителей  }
    PODRSHARE      : String1;         { Доступ к подразделениям               }
    NEED_11        : Word;            { НДС почтового сбора                   }
    NEED_12        : Word;            { для больничного                       }
    MINOKL         : Double;          { Сумма минимал.оклада                  }
    MINOKLP        : Double;          { Сумма пр. мин.оклада                  }
    DOUBLE8        : Double;          { для депонентов                        }
    OCRUG8         : Word;            { Месяц последней выплаты               }
    OCRUG9         : Word;            { Год последней выплаты                 }
    MATPOM         : Double;          { мат.пом.не обл.налог                  }
    MATPOMFZ       : Double;          { мат.пом.В Пенсионный                  }
    PODARKI        : Double;          { Подарки,не обл.налог                  }
    PODARKIFZ      : Double;          { Подарки,в ФондСоцЗащ                  }
    MESSTOR        : Word;            { Кол.месяцев для стор                  }
    NEED_16        : Word;            { признак алгоритма для индекс.детских  }
    MINRAZ         : Double;          { Сумма первого разряда                 }
    DATAMIN        : Date;            { Дата для мин.оклада                   }
    VAKFLAG        : String1;         { Показывать вакансии                   }
    NOMALG         : Word;            { Ном.алгор.для Налогов                 }
    OCRUG10        : Word;            { Уровень детализации иерархии          }
    NOMALGP        : Word;            { Ном.алгор.для ДопНалога               }
    XARPRED_NREC   : Comp;            { Номер записи                          }
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
