//******************************************************************************
// Файл сгенерирован автоматически
//******************************************************************************

Create View vFld
As Select * From
  ABC2GESN
, ACTDISC
, ACTEDUCATIONS
, ACTIONCON
, ACTPERRASPR
, AKCIZHINOUTCOME
, AKCIZHREQUEST
, AKTOFP
, AKTSOST
, AKTSUM
, AKTSVER
, ALLOCZTR
, APPRECRUIT
, APPVEKS
, ASRFITTBL
, ASRHJOUR
, BALANSM
, BARGAIN
, BASEDOC
, BASEFIN
, BAZDIST
, BAZRAS
, BOOKPRZK
, BUDJET
, BUHREP
, CALPLAN
, CESMTRESCHGLOG
, CESPOSCHGLOG
, CFO_REQ
, COMPETCON
, CONNECTINQ
, CONTACT
, CUSTLIC
, DIARY130
, DISTDOC
, DISTDOCHIERARCHY
, DOCNASTR
, DOCREF
, DOCREQ
, DOCSCHEM
, DOGOVOR
, DOVER
, DPARTYDS
, EIEXPSET
, EIIMPSET
, ESTBARG
, ESTSALES
, EXPSET
, FILTAN
, FORMPL
, FOT_RASPR
, FPBUDGET
, FPBUDPROT
, FPBUDVAR
, FPIEDOC
, FPOBOROT
, FPOBTMP
, FPVAPPROV
, GOALCON
, GOALTEACH
, GRAFREM
, GROUPING
, GROUPNORMCOLLECTION
, GROUPTEACH
, GRSOPR
, HDR_PS
, HISTINQ
, HISTSP
, HISTZAM
, HOZOPER
, IEJOURNALROOT
, IERSORTMC
, IERSTATMC
, INDENT
, INQUIRER
, INVTAB
, ISKI
, JOBCONFIG
, JOBQUALIFIER
, JOURDEF
, JOUROBJ
, KATKOMPL
, KATMARSH
, KATMBP
, KATOS
, KATPOTREB
, KATSOPR
, KATSTROY
, KATSTRZ
, KATZAK
, KOEFCHANGE
, KTOBJREM
, LIMZAPH
, MARAVT
, MASKICN
, MBPIN
, MBPMOVE
, MBPOPER
, MDAOBJRLTT
, MGCARD
, MNOBJRLTT
, MNPLAN
, MOVEMC
, MOVEOS
, MTRACT
, NAKLRASX
, NAKLTMP
, NALREGDC
, NORMA
, NORMCOLLECTION
, NORMJOB
, NORMRESOURCE
, NORMVALUE
, NOTEBENE
, NZAKAZ
, OBJR2DOC
, OBJREM
, OBJREMSP
, OBORCFG
, OBOROT
, OBOROTNM
, OBORPICK
, OCSPOS_CHLOG
, OFPDAYS
, OFPMODEL
, OFPPRIHOD
, OFPPROT
, OPERPLAN
, OTCHETS
, OTGORDER
, PARTYDS
, PASSDOC
, PAYLIST
, PEREOCNZS
, PERSCARD
, PLANEDUC
, PLANNER
, PLANNINGI
, PLANRECRUIT
, PLANVALUE
, PLANVAR
, PLATVED
, PLPOR
, PLSTROY
, PLTUNE
, PRIKAZ
, PS_LINES
, PUTLST
, PUTVACATION
, PUTVACCON
, PUT_ACY
, PUT_MAN
, QPHEAD
, QPLINE
, QPMOVE
, QUESTION
, RATEADD
, RATELIST
, REGTC
, REMLST
, REPCDOC
, REPHEAD
, REQSFO
, RESOURCEPRICE
, RESPRICE
, RESULTHEAD
, RSTRPD
, RTXO
, RZDOC
, SALES
, SCHFACT
, SELECTION
, SERTIFIC
, SERVTRET
, SETTXRP
, SHABSMET
, SKLORDER
, SMET
, SMETAALG
, SMETASTROY
, SOGLVEKS
, SOPRHOZ
, SPALLSTAFF
, SPARTYDS
, SPBALANS
, SPINQUIRER
, SPORDER
, SPPLAN
, SPPLANRECR
, SPPLANT
, SPREADDS
, SPRESULT
, SPTREQUEST
, SRCRECRUIT
, STACTDS
, STATLOG
, STATUSER
, SYLLABUS
, SYLLABUSCON
, TACTDS
, TAXCLDR
, TAXDAT
, TAXSCHEM
, TEACHRES
, TEMPSPEC
, TMPPLPOR
, TMPREEPLP
, TPARTYDS
, TREQUEST
, TTNDOC
, TVEDREM
, UKSTABEL
, UKSVALUES
, VAGON
, VALUTDOC
, VARCALC
, VEDDEPONIR
, VEKSL
, VVSTROY
, WAYACCOU
, WAYSCORE
, WORKPCON
, WORKPERIOD
;


//******************************************************************************
// Проверка (обновление) таблиц на соответствие групп дескрипторов дескрипторам
Procedure UpdateRecords;
{
  StartNewVisual(vtIndicatorVisual, vfTimer+vfBreak+vfConfirm, 'Обновление записей', RecordsInTable(#MemTblName));

  #UpdateFld(                 ABC2GESN,                'ABC2GESN',                ABC2GESN01)
  #UpdateFld(                  ACTDISC,                 'ACTDISC',                 ACTDISC01)
  #UpdateFld(            ACTEDUCATIONS,           'ACTEDUCATIONS',           ACTEDUCATIONS01)
  #UpdateFld(                ACTIONCON,               'ACTIONCON',               ACTIONCON01)
  #UpdateFld(              ACTPERRASPR,             'ACTPERRASPR',             ACTPERRASPR01)
  #UpdateFld(          AKCIZHINOUTCOME,         'AKCIZHINOUTCOME',         AKCIZHINOUTCOME01)
  #UpdateFld(            AKCIZHREQUEST,           'AKCIZHREQUEST',           AKCIZHREQUEST01)
  #UpdateFld(                   AKTOFP,                  'AKTOFP',                  AKTOFP01)
  #UpdateFld(                  AKTSOST,                 'AKTSOST',                 AKTSOST01)
  #UpdateFld(                   AKTSUM,                  'AKTSUM',                  AKTSUM01)
  #UpdateFld(                  AKTSVER,                 'AKTSVER',                 AKTSVER01)
  #UpdateFld(                 ALLOCZTR,                'ALLOCZTR',                ALLOCZTR01)
  #UpdateFld(               APPRECRUIT,              'APPRECRUIT',              APPRECRUIT01)
  #UpdateFld(                  APPVEKS,                 'APPVEKS',                 APPVEKS00)
  #UpdateFld(                ASRFITTBL,               'ASRFITTBL',               ASRFITTBL01)
  #UpdateFld(                 ASRHJOUR,                'ASRHJOUR',                ASRHJOUR01)
  #UpdateFld(                  BALANSM,                 'BALANSM',                 BALANSM01)
  #UpdateFld(                  BARGAIN,                 'BARGAIN',                 BARGAIN01)
  #UpdateFld(                  BASEDOC,                 'BASEDOC',                 BASEDOC01)
  #UpdateFld(                  BASEFIN,                 'BASEFIN',                 BASEFIN01)
  #UpdateFld(                  BAZDIST,                 'BAZDIST',                 BAZDIST01)
  #UpdateFld(                   BAZRAS,                  'BAZRAS',                  BAZRAS01)
  #UpdateFld(                 BOOKPRZK,                'BOOKPRZK',                BOOKPRZK00)
  #UpdateFld(                   BUDJET,                  'BUDJET',                  BUDJET01)
  #UpdateFld(                   BUHREP,                  'BUHREP',                  BUHREP01)
  #UpdateFld(                  CALPLAN,                 'CALPLAN',                 CALPLAN01)
  #UpdateFld(           CESMTRESCHGLOG,          'CESMTRESCHGLOG',          CESMTRESCHGLOG01)
  #UpdateFld(             CESPOSCHGLOG,            'CESPOSCHGLOG',            CESPOSCHGLOG01)
  #UpdateFld(                  CFO_REQ,                 'CFO_REQ',                 CFO_REQ01)
  #UpdateFld(                COMPETCON,               'COMPETCON',               COMPETCON01)
  #UpdateFld(               CONNECTINQ,              'CONNECTINQ',              CONNECTINQ01)
  #UpdateFld(                  CONTACT,                 'CONTACT',                 CONTACT01)
  #UpdateFld(                  CUSTLIC,                 'CUSTLIC',                 CUSTLIC01)
  #UpdateFld(                 DIARY130,                'DIARY130',                DIARY13001)
  #UpdateFld(                  DISTDOC,                 'DISTDOC',                 DISTDOC01)
  #UpdateFld(         DISTDOCHIERARCHY,        'DISTDOCHIERARCHY',        DISTDOCHIERARCHY01)
  #UpdateFld(                 DOCNASTR,                'DOCNASTR',                DOCNASTR01)
  #UpdateFld(                   DOCREF,                  'DOCREF',                  DOCREF01)
  #UpdateFld(                   DOCREQ,                  'DOCREQ',                  DOCREQ01)
  #UpdateFld(                 DOCSCHEM,                'DOCSCHEM',                DOCSCHEM01)
  #UpdateFld(                  DOGOVOR,                 'DOGOVOR',                 DOGOVOR01)
  #UpdateFld(                    DOVER,                   'DOVER',                   DOVER01)
  #UpdateFld(                 DPARTYDS,                'DPARTYDS',                DPARTYDS01)
  #UpdateFld(                 EIEXPSET,                'EIEXPSET',                EIEXPSET01)
  #UpdateFld(                 EIIMPSET,                'EIIMPSET',                EIIMPSET01)
  #UpdateFld(                  ESTBARG,                 'ESTBARG',                 ESTBARG01)
  #UpdateFld(                 ESTSALES,                'ESTSALES',                ESTSALES01)
  #UpdateFld(                   EXPSET,                  'EXPSET',                  EXPSET01)
  #UpdateFld(                   FILTAN,                  'FILTAN',                  FILTAN01)
  #UpdateFld(                   FORMPL,                  'FORMPL',                  FORMPL01)
  #UpdateFld(                FOT_RASPR,               'FOT_RASPR',               FOT_RASPR01)
  #UpdateFld(                 FPBUDGET,                'FPBUDGET',                FPBUDGET01)
  #UpdateFld(                FPBUDPROT,               'FPBUDPROT',               FPBUDPROT01)
  #UpdateFld(                 FPBUDVAR,                'FPBUDVAR',                FPBUDVAR01)
  #UpdateFld(                  FPIEDOC,                 'FPIEDOC',                 FPIEDOC01)
  #UpdateFld(                 FPOBOROT,                'FPOBOROT',                FPOBOROT01)
  #UpdateFld(                  FPOBTMP,                 'FPOBTMP',                 FPOBTMP01)
  #UpdateFld(                FPVAPPROV,               'FPVAPPROV',               FPVAPPROV01)
  #UpdateFld(                  GOALCON,                 'GOALCON',                 GOALCON01)
  #UpdateFld(                GOALTEACH,               'GOALTEACH',               GOALTEACH01)
  #UpdateFld(                  GRAFREM,                 'GRAFREM',                 GRAFREM01)
  #UpdateFld(                 GROUPING,                'GROUPING',                GROUPING01)
  #UpdateFld(      GROUPNORMCOLLECTION,     'GROUPNORMCOLLECTION',        GRNORMCOLLECTION01)
  #UpdateFld(               GROUPTEACH,              'GROUPTEACH',              GROUPTEACH01)
  #UpdateFld(                   GRSOPR,                  'GRSOPR',                  GRSOPR01)
  #UpdateFld(                   HDR_PS,                  'HDR_PS',                  HDR_PS01)
  #UpdateFld(                  HISTINQ,                 'HISTINQ',                 HISTINQ01)
  #UpdateFld(                   HISTSP,                  'HISTSP',                  HISTSP01)
  #UpdateFld(                  HISTZAM,                 'HISTZAM',                 HISTZAM01)
  #UpdateFld(                  HOZOPER,                 'HOZOPER',                 HOZOPER01)
  #UpdateFld(            IEJOURNALROOT,           'IEJOURNALROOT',           IEJOURNALROOT01)
  #UpdateFld(                IERSORTMC,               'IERSORTMC',               IERSORTMC01)
  #UpdateFld(                IERSTATMC,               'IERSTATMC',               IERSTATMC01)
  #UpdateFld(                   INDENT,                  'INDENT',                  INDENT01)
  #UpdateFld(                 INQUIRER,                'INQUIRER',                INQUIRER01)
  #UpdateFld(                   INVTAB,                  'INVTAB',                  INVTAB01)
  #UpdateFld(                     ISKI,                    'ISKI',                    ISKI01)
  #UpdateFld(                JOBCONFIG,               'JOBCONFIG',               JOBCONFIG01)
  #UpdateFld(             JOBQUALIFIER,            'JOBQUALIFIER',            JOBQUALIFIER01)
  #UpdateFld(                  JOURDEF,                 'JOURDEF',                 JOURDEF01)
  #UpdateFld(                  JOUROBJ,                 'JOUROBJ',                 JOUROBJ01)
  #UpdateFld(                 KATKOMPL,                'KATKOMPL',                KATKOMPL01)
  #UpdateFld(                 KATMARSH,                'KATMARSH',                KATMARSH01)
  #UpdateFld(                   KATMBP,                  'KATMBP',                  KATMBP01)
  #UpdateFld(                    KATOS,                   'KATOS',                   KATOS01)
  #UpdateFld(                KATPOTREB,               'KATPOTREB',               KATPOTREB01)
  #UpdateFld(                  KATSOPR,                 'KATSOPR',                 KATSOPR01)
  #UpdateFld(                 KATSTROY,                'KATSTROY',                KATSTROY01)
  #UpdateFld(                  KATSTRZ,                 'KATSTRZ',                 KATSTRZ01)
  #UpdateFld(                   KATZAK,                  'KATZAK',                  KATZAK01)
  #UpdateFld(               KOEFCHANGE,              'KOEFCHANGE',                KOEFCHNG01)
  #UpdateFld(                 KTOBJREM,                'KTOBJREM',                KTOBJREM01)
  #UpdateFld(                  LIMZAPH,                 'LIMZAPH',                 LIMZAPH01)
  #UpdateFld(                   MARAVT,                  'MARAVT',                  MARAVT01)
  #UpdateFld(                  MASKICN,                 'MASKICN',                 MASKICN01)
  #UpdateFld(                    MBPIN,                   'MBPIN',                   MBPIN01)
  #UpdateFld(                  MBPMOVE,                 'MBPMOVE',                 MBPMOVE01)
  #UpdateFld(                  MBPOPER,                 'MBPOPER',                 MBPOPER01)
  #UpdateFld(               MDAOBJRLTT,              'MDAOBJRLTT',              MDAOBJRLTT01)
  #UpdateFld(                   MGCARD,                  'MGCARD',                  MGCARD01)
  #UpdateFld(                MNOBJRLTT,               'MNOBJRLTT',               MNOBJRLTT01)
  #UpdateFld(                   MNPLAN,                  'MNPLAN',                  MNPLAN01)
  #UpdateFld(                   MOVEMC,                  'MOVEMC',                  MOVEMC01)
  #UpdateFld(                   MOVEOS,                  'MOVEOS',                  MOVEOS01)
  #UpdateFld(                   MTRACT,                  'MTRACT',                  MTRACT01)
  #UpdateFld(                 NAKLRASX,                'NAKLRASX',                NAKLRASX01)
  #UpdateFld(                  NAKLTMP,                 'NAKLTMP',                  NAKLTMP1)
  #UpdateFld(                 NALREGDC,                'NALREGDC',                NALREGDC01)
  #UpdateFld(                    NORMA,                   'NORMA',                   NORMA01)
  #UpdateFld(           NORMCOLLECTION,          'NORMCOLLECTION',          NORMCOLLECTION01)
  #UpdateFld(                  NORMJOB,                 'NORMJOB',                 NORMJOB01)
  #UpdateFld(             NORMRESOURCE,            'NORMRESOURCE',            NORMRESOURCE01)
  #UpdateFld(                NORMVALUE,               'NORMVALUE',               NORMVALUE01)
  #UpdateFld(                 NOTEBENE,                'NOTEBENE',                NOTEBENE01)
  #UpdateFld(                   NZAKAZ,                  'NZAKAZ',                  NZAKAZ01)
  #UpdateFld(                 OBJR2DOC,                'OBJR2DOC',                OBJR2DOC01)
  #UpdateFld(                   OBJREM,                  'OBJREM',                  OBJREM01)
  #UpdateFld(                 OBJREMSP,                'OBJREMSP',                OBJREMSP01)
  #UpdateFld(                  OBORCFG,                 'OBORCFG',                 OBORCFG01)
  #UpdateFld(                   OBOROT,                  'OBOROT',                  OBOROT11)
  #UpdateFld(                 OBOROTNM,                'OBOROTNM',                OBOROTNM01)
  #UpdateFld(                 OBORPICK,                'OBORPICK',                OBORPICK01)
  #UpdateFld(             OCSPOS_CHLOG,            'OCSPOS_CHLOG',            OCSPOS_CHLOG01)
  #UpdateFld(                  OFPDAYS,                 'OFPDAYS',                 OFPDAYS01)
  #UpdateFld(                 OFPMODEL,                'OFPMODEL',                OFPMODEL01)
  #UpdateFld(                OFPPRIHOD,               'OFPPRIHOD',               OFPPRIHOD01)
  #UpdateFld(                  OFPPROT,                 'OFPPROT',                 OFPPROT01)
  #UpdateFld(                 OPERPLAN,                'OPERPLAN',                OPERPLAN01)
  #UpdateFld(                  OTCHETS,                 'OTCHETS',                 OTCHETS01)
  #UpdateFld(                 OTGORDER,                'OTGORDER',                OTGORDER01)
  #UpdateFld(                  PARTYDS,                 'PARTYDS',                 PARTYDS01)
  #UpdateFld(                  PASSDOC,                 'PASSDOC',                 PASSDOC01)
  #UpdateFld(                  PAYLIST,                 'PAYLIST',                 PAYLIST01)
  #UpdateFld(                PEREOCNZS,               'PEREOCNZS',               PEREOCNZS01)
  #UpdateFld(                 PERSCARD,                'PERSCARD',                PERSCARD01)
  #UpdateFld(                 PLANEDUC,                'PLANEDUC',                PLANEDUC01)
  #UpdateFld(                  PLANNER,                 'PLANNER',                 PLANNER01)
  #UpdateFld(                PLANNINGI,               'PLANNINGI',                PLANINGI01)
  #UpdateFld(              PLANRECRUIT,             'PLANRECRUIT',             PLANRECRUIT01)
  #UpdateFld(                PLANVALUE,               'PLANVALUE',               PLANVALUE01)
  #UpdateFld(                  PLANVAR,                 'PLANVAR',                 PLANVAR01)
  #UpdateFld(                  PLATVED,                 'PLATVED',                 PLATVED01)
  #UpdateFld(                    PLPOR,                   'PLPOR',                   PLPOR11)
  #UpdateFld(                  PLSTROY,                 'PLSTROY',                 PLSTROY01)
  #UpdateFld(                   PLTUNE,                  'PLTUNE',                  PLTUNE01)
  #UpdateFld(                   PRIKAZ,                  'PRIKAZ',                  PRIKAZ01)
  #UpdateFld(                 PS_LINES,                'PS_LINES',                PS_LINES01)
  #UpdateFld(                   PUTLST,                  'PUTLST',                  PUTLST01)
  #UpdateFld(              PUTVACATION,             'PUTVACATION',             PUTVACATION01)
  #UpdateFld(                PUTVACCON,               'PUTVACCON',               PUTVACCON01)
  #UpdateFld(                  PUT_ACY,                 'PUT_ACY',                 PUT_ACY01)
  #UpdateFld(                  PUT_MAN,                 'PUT_MAN',                 PUT_MAN01)
  #UpdateFld(                   QPHEAD,                  'QPHEAD',                  QPHEAD01)
  #UpdateFld(                   QPLINE,                  'QPLINE',                  QPLINE01)
  #UpdateFld(                   QPMOVE,                  'QPMOVE',                  QPMOVE01)
  #UpdateFld(                 QUESTION,                'QUESTION',                QUESTION01)
  #UpdateFld(                  RATEADD,                 'RATEADD',                 RATEADD01)
  #UpdateFld(                 RATELIST,                'RATELIST',                RATELIST01)
  #UpdateFld(                    REGTC,                   'REGTC',                   REGTC01)
  #UpdateFld(                   REMLST,                  'REMLST',                  REMLST01)
  #UpdateFld(                  REPCDOC,                 'REPCDOC',                  ORGINDEX)
  #UpdateFld(                  REPHEAD,                 'REPHEAD',                 REPHEAD01)
  #UpdateFld(                   REQSFO,                  'REQSFO',                  REQSFO01)
  #UpdateFld(            RESOURCEPRICE,           'RESOURCEPRICE',           RESOURCEPRICE01)
  #UpdateFld(                 RESPRICE,                'RESPRICE',                RESPRICE01)
  #UpdateFld(               RESULTHEAD,              'RESULTHEAD',              RESULTHEAD01)
  #UpdateFld(                   RSTRPD,                  'RSTRPD',                  RSTRPD01)
  #UpdateFld(                     RTXO,                    'RTXO',                    RTXO01)
  #UpdateFld(                    RZDOC,                   'RZDOC',                   RZDOC01)
  #UpdateFld(                    SALES,                   'SALES',                   SALES01)
  #UpdateFld(                  SCHFACT,                 'SCHFACT',                 SCHFACT00)
  #UpdateFld(                SELECTION,               'SELECTION',               SELECTION01)
  #UpdateFld(                 SERTIFIC,                'SERTIFIC',                SERTIFIC01)
  #UpdateFld(                 SERVTRET,                'SERVTRET',                SERVTRET01)
  #UpdateFld(                  SETTXRP,                 'SETTXRP',                 SETTXRP01)
  #UpdateFld(                 SHABSMET,                'SHABSMET',                SHABSMET01)
  #UpdateFld(                 SKLORDER,                'SKLORDER',                SKLORDER01)
  #UpdateFld(                     SMET,                    'SMET',                    SMET01)
  #UpdateFld(                 SMETAALG,                'SMETAALG',                SMETAALG01)
  #UpdateFld(               SMETASTROY,              'SMETASTROY',              SMETASTROY01)
  #UpdateFld(                 SOGLVEKS,                'SOGLVEKS',                SOGLVEKS00)
  #UpdateFld(                  SOPRHOZ,                 'SOPRHOZ',                 SOPRHOZ01)
  #UpdateFld(               SPALLSTAFF,              'SPALLSTAFF',              SPALLSTAFF01)
  #UpdateFld(                 SPARTYDS,                'SPARTYDS',                SPARTYDS01)
  #UpdateFld(                 SPBALANS,                'SPBALANS',                SPBALANS01)
  #UpdateFld(               SPINQUIRER,              'SPINQUIRER',              SPINQUIRER01)
  #UpdateFld(                  SPORDER,                 'SPORDER',                 SPORDER01)
  #UpdateFld(                   SPPLAN,                  'SPPLAN',                  SPPLAN01)
  #UpdateFld(               SPPLANRECR,              'SPPLANRECR',              SPPLANRECR01)
  #UpdateFld(                  SPPLANT,                 'SPPLANT',                 SPPLANT01)
  #UpdateFld(                 SPREADDS,                'SPREADDS',                SPREADDS01)
  #UpdateFld(                 SPRESULT,                'SPRESULT',                SPRESULT01)
  #UpdateFld(               SPTREQUEST,              'SPTREQUEST',              SPTREQUEST01)
  #UpdateFld(               SRCRECRUIT,              'SRCRECRUIT',              SRCRECRUIT01)
  #UpdateFld(                  STACTDS,                 'STACTDS',                 STACTDS01)
  #UpdateFld(                  STATLOG,                 'STATLOG',                 STATLOG01)
  #UpdateFld(                 STATUSER,                'STATUSER',                STATUSER00)
  #UpdateFld(                 SYLLABUS,                'SYLLABUS',                SYLLABUS01)
  #UpdateFld(              SYLLABUSCON,             'SYLLABUSCON',             SYLLABUSCON01)
  #UpdateFld(                   TACTDS,                  'TACTDS',                  TACTDS01)
  #UpdateFld(                  TAXCLDR,                 'TAXCLDR',                 TAXCLDR01)
  #UpdateFld(                   TAXDAT,                  'TAXDAT',                  TAXDAT01)
  #UpdateFld(                 TAXSCHEM,                'TAXSCHEM',                TAXSCHEM01)
  #UpdateFld(                 TEACHRES,                'TEACHRES',                TEACHRES01)
  #UpdateFld(                 TEMPSPEC,                'TEMPSPEC',                TEMPSPEC01)
  #UpdateFld(                 TMPPLPOR,                'TMPPLPOR',                TMPPLPOR01)
  #UpdateFld(                TMPREEPLP,               'TMPREEPLP',               TMPREEPLP01)
  #UpdateFld(                 TPARTYDS,                'TPARTYDS',                TPARTYDS01)
  #UpdateFld(                 TREQUEST,                'TREQUEST',                TREQUEST01)
  #UpdateFld(                   TTNDOC,                  'TTNDOC',                  TTNDOC01)
  #UpdateFld(                  TVEDREM,                 'TVEDREM',                 TVEDREM01)
  #UpdateFld(                 UKSTABEL,                'UKSTABEL',                UKSTABEL01)
  #UpdateFld(                UKSVALUES,               'UKSVALUES',               UKSVALUES01)
  #UpdateFld(                    VAGON,                   'VAGON',                   VAGON01)
  #UpdateFld(                 VALUTDOC,                'VALUTDOC',                VALUTDOC01)
  #UpdateFld(                  VARCALC,                 'VARCALC',                 VARCALC01)
  #UpdateFld(               VEDDEPONIR,              'VEDDEPONIR',              VEDDEPONIR01)
  #UpdateFld(                    VEKSL,                   'VEKSL',                   VEKSL00)
  #UpdateFld(                  VVSTROY,                 'VVSTROY',                 VVSTROY01)
  #UpdateFld(                 WAYACCOU,                'WAYACCOU',                WAYACCOU01)
  #UpdateFld(                 WAYSCORE,                'WAYSCORE',                WAYSCORE01)
  #UpdateFld(                 WORKPCON,                'WORKPCON',                WORKPCON01)
  #UpdateFld(               WORKPERIOD,              'WORKPERIOD',              WORKPERIOD01)

  StopVisual('', 0);
}
