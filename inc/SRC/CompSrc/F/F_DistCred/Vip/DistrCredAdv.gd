//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.10 - ��壠���᪨� ������
// ���� ����ᮢ�� ���⥦��
//******************************************************************************

/////////////////////////////////////////////////////////////////////
// ⠡��� ��� ����ࠣ��⮢
table struct mt_KatOrg
(
  cOrg :comp,
  SumBill :double,            // �㬬� ���㧮�/���⠢�� ����ࠣ���
  SumPay :double,             // �㬬� ���⥦�� ����ࠣ���
  SumNakl :double,
  SumOplSp :double,
  State :word,
  Name : string[80],
  Selected : word
)
with index
(
  mt_KatOrg00 = cOrg,
  mt_KatOrg01 = Selected + cOrg,
  mt_KatOrg02 = Name
);
/////////////////////////////////////////////////////////////////////


/////////////////////////////////////////////////////////////////////
// ⠡��� ���⥦��
// ���� State
// 0 -  ���⥦ �� �ਢ易�, �� ��।����
// 1 -  ���⥦ �ਢ易� � ��
// 2 -  �㬬� ���⥦� ��।����� �� ᯥ�䨪�樨  ��

table struct mt_BaseFin
(
  NRec : comp,
  cBaseFin : comp,                  // ���⥦
  cSoprDoc : comp,                  // ��ࢨ�� ���㬥��
  TiDkGal : word,                   // ⨯ ���㬥�� (system)
  TipDoc  : word,                   // ⨯ ���㬥�� (user)
  cOrg : comp,                      // ����ࠣ���
  cBaseDoc : comp,                  // ��
  cPredoplDO : comp,                // �।��� ��
  DateOpl : date,
  NoDoc : string,
  DogNoDoc : string[20],         //����� �������
  Summa : double,
  SumVal : double,
  cVal   : comp,
  SumToDistr : double,
  SumVToDistr : double,
  State : word,                     // ����ﭨ� ���⥦�
                                    // 0 - ����権 ���.  1 - ��।���� �� �� (��������)  2 - ����祭� ᯥ�䨪���
                                    // 0 - �� ��ࠡ�⠭  1 - ��ࠡ�⠭ ���筮  2 - ��ࠡ�⠭ ���������
  Tip_Sf  : word,                   // ⨯ ��
  cDogovor: comp,
  cAppDogovor: comp,
  cCalPlan: comp,
#ifdef __USG__
  cPlDgDist: comp,
#end
  Selected : word,
  isLeaf : word,
  cNode : comp,
  cInvestor : comp,                 // �������
  cKatStroy : comp                  // ��쥪� ��ந⥫��⢠
)
with index
(
  mt_BaseFin00 = NRec (Unique, Surrogate),
  mt_BaseFin01 = cBaseFin,
  mt_BaseFin02 = cOrg + cBaseDoc + cDogovor + cAppDogovor + cCalPlan + DateOpl, // �� ���㬥�⠬-�᭮����� + �������
  mt_BaseFin03 = TiDkGal + cSoprDoc + cBaseDoc + cDogovor + cAppDogovor + cCalPlan,     // �� ��ࢨ筮�� ���㬥���
  mt_BaseFin04 = cOrg + cBaseFin,      // �� ����ࠣ��⠬ + ���⥦��
  mt_BaseFin05 = cDogovor + cCalPlan,
  mt_BaseFin06 = cDogovor + cAppDogovor + cCalPlan,
  mt_BaseFin07 = Selected + cOrg + cBaseDoc + cDogovor + cAppDogovor + cCalPlan + DateOpl,
  mt_BaseFin07_1 = Selected + cOrg + isLeaf + cNode,
  mt_BaseFin08 = TiDkGal + cSoprDoc + cNode + cOrg,
  mt_BaseFin09 = cOrg + cNode + DateOpl,
  mt_BaseFin10 = cNode
#ifdef __USG__
  ,mt_BaseFin11 = cPlDgDist
#end
  ,mt_BaseFin12 = Selected + cOrg + cBaseDoc + cDogovor + DateOpl
  ,mt_BaseFin13 = cOrg + cBaseDoc + cDogovor + DateOpl

);
/////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////
// ���㬥��� �᭮�����
table struct mt_BaseDoc
(
  NRec : comp,
  cBaseDoc : comp,
  cDogovor: comp,
  cAppDogovor: comp,
  cCalPlan: comp,
  cOrg : comp,
  SumOpl : double,
  SumDolg : double,
  SumPay : double,            // �㬬� ���⥦��
  SumShip : double,           // �㬬� ���㧮�
  SumARel : double,           // �㬬� ��⮢ �� ॠ������
  Selected : word,
  Nodoc : string[20],         //����� ��
  DogNoDoc : string[20],      //����� �������
  AppDogNoDoc : string[20],
  dDoc  : Date,
  Total : double,
  wViewDOMode : word          // ०�� �⮡ࠦ���� �� (������� ���������)
)
with index
(
  mt_BaseDoc00 = NRec,
  mt_BaseDoc01 = cBaseDoc,
  mt_BaseDoc02 = wViewDOMode + cOrg + dDoc,
  mt_BaseDoc03 = cDogovor + cCalPlan + cBaseDoc,
  mt_BaseDoc04 = cDogovor + cAppDogovor + cCalPlan + cBaseDoc,
  mt_BaseDoc05 = wViewDOMode + Selected + cOrg + dDoc + cBaseDoc       // �� ����ࠣ��⠬ + ���㬥�⠬-�᭮�����
);
/////////////////////////////////////////////////////////////////////


/////////////////////////////////////////////////////////////////////
// ��������
table struct mt_Dogovor
(
  NoDoc : string[20],
  NRec : comp,
  cDogovor : comp,
  cOrg : comp,
  SumOpl : double,
  SumDolg : double,
  Selected : word

)
with index
(
  mt_Dogovor00 = NRec (Unique, Surrogate),
  mt_Dogovor01 = cDogovor,
  mt_Dogovor02 = cOrg,
  mt_Dogovor03 = Selected + cOrg + cDogovor,       // �� ��࠭�� �� ����ࠣ��⠬ + ���㬥�⠬-�᭮�����
  mt_Dogovor04 = cOrg + cDogovor       // �� ����ࠣ��⠬ + ���㬥�⠬-�᭮�����
);

/////////////////////////////////////////////////////////////////////
// ����
table struct mt_log
(
  Nrec  : comp,     //
  ind   : longint,  //
  cRec1 : comp,     // BaseFin
  cRec2 : comp,     // BaseDoc
  cRec3 : comp,     // KatSopr
  cRec4 : comp,     // KatStroy
  cUser : comp,     // ��뫪� �� ���짮��⥫�
  wnum  : word,     // ����� ��ᨨ
  wErr  : word      // ��� �訡��
)
with index
(
  mt_log00 = NRec (Unique, Surrogate),
  mt_log01 = cRec1,
  mt_log02 = wnum + cRec1,
  mt_log03 = ind (autoinc),
  mt_log04 = cRec1 + cRec2 + cRec3 + wErr
);

table struct mt_ulog
(
  cRec1 : comp,
  cRec2 : comp
)
with index
(
  mt_ulog01 = cRec1
);

/////////////////////////////////////////////////////////////////////
// ��������
table struct t_KatSopr
(
  cRec       : comp,
  cRec1      : comp,
  cRec2      : comp,
  Sums       : tSumma_x02, // 1 - ����祭�� �㬠 2 - ������������ �� �����
  kTbl       : word,
  wList      : word,
  cBaseDoc   : comp,
  Selected   : word,
  dOpr       : date,
  dSopr      : date,
  cDogovor   : comp,       // ��뫪� �� �������
  cAppDogovor: comp,       // ��뫪� �� �ਫ������
  cCalPlan   : comp,       // ��뫪� �� �㭪� �������୮�� �����
  doPercent  : double      // ���� ����� �� ��業� (���㣫���� �� 2 ������)
)
(
  t_KatSopr01 = cRec,
  t_KatSopr02 = cRec1,
  t_KatSopr03 = cRec2,
  t_KatSopr04 = wList,
  t_KatSopr05 = kTbl + cRec + cDogovor + dSopr,
  t_KatSopr06 = wList + cRec,
  t_KatSopr07 = wList + cRec1,
  t_KatSopr08 = cBaseDoc,
  t_KatSopr09 = Selected + cRec, // �� ��࠭�� + �� ����ࠣ��⠬
  t_KatSopr10 = kTbl + cRec + dSopr,
  t_KatSopr11 = cRec + cCalPlan + dSopr,
  t_KatSopr12 = kTbl + cRec + cAppDogovor + dSopr
);

/////////////////////////////////////////////////////////////////////
// ����樨 ���������
table struct mt_SpSopr
(
  cSpSopr       : comp,
  cKatSopr      : comp,
  cInvestor     : comp,
  cKatStroy     : comp,
  cVal          : comp,
  dSumma        : double,
  dDistrSum     : double,
  dSummaVal     : double,
  dDistrSumVal  : double,
  dDistrOst     : double,
  sKSInfo       : string,
  sMCUslName    : string,
  dSopr         : date
)
(
  mt_SpSopr01 = cInvestor + cKatStroy + dSopr,
  mt_SpSopr02 = cKatSopr + cInvestor,
  mt_SpSopr03 = cSpSopr
);

/////////////////////////////////////////////////////////////////////
// ��������
table struct mt_Investor
(
  cInvestor    : comp,
  cAFPKP       : comp,
  dAllSumma    : double,
  dAllDistrSum : double,
  dAllPlanSum  : double   
)
(
  mt_Investor01 = cAFPKP + cInvestor,
  mt_Investor02 = cInvestor
);

/////////////////////////////////////////////////////////////////////
// ��쥪�� ��ந⥫��⢠
table struct mt_Obj
(
  cInvestor  : comp,
  cAFPKP     : comp,
  cKatStroy  : comp,
  dAllSumma  : double,
  dDistrSum  : double,
  dPercent   : double
)
(
  mt_Obj01 = cInvestor,
  mt_Obj02 = cAFPKP + cInvestor + cKatStroy,
  mt_Obj03 = cInvestor + cKatStroy
);

/////////////////////////////////////////////////////////////////////
// ������ ������� - ��ꥪ� ��ந⥫��⢠ - ��������� - ������ ���������
table struct mt_IerSopr
(
  NRec       : comp,
  cNode      : comp,
  cInvestor  : comp,
  cKatStroy  : comp,
  cKatSopr   : comp,
  cSpSopr    : comp,
  sNameRec   : string,
  NumAFPKP   : string,
  dSumma     : double,
  dDistrSum  : double,
  dPlanSum   : double,
  dPercent   : double,
  isLeaf     : word,
  dDolya     : double
)
(
  mt_IerSopr01 = NRec(Unique, AutoInc),
  mt_IerSopr02 = cNode,
  mt_IerSopr03 = cInvestor + cKatStroy + cKatSopr + cSpSopr,
  mt_IerSopr04 = cInvestor + cNode
);


/////////////////////////////////////////////////////////////////////
// �X�
table struct mt_MagOper = MagOper;
/////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////
// �������� ���� �����
table struct mt_DogCred
(
  cDogovor   : comp,       // ��뫪� �� �������
  cAppDogovor: comp,       // �����饥 ᮣ��襭��
  cAFPKP     : comp,       // ����ᮢ� 䨭��ᮢ� ���
  AdvProc    : double,     // ��業� ����
  dCredAdv   : double,     // 㦥 ���⥭�
  dCredAdvOst: double,     // ��⠫��� � �����
  bManyAFPKP : boolean,    // �ਧ��� ��᪮�쪨� ����ᮢ�� ����
  SumAvFPKP  : double,     // �㬬� ����ᮢ��� 䨭��ᮢ��� ���
  wType      : word        // 0 - ���� ����� �� ��業�
                           // 1 - ���� ����� �� �㬬�
)
with index
(
  mt_Dogovor00 = cDogovor + cAppDogovor + cAFPKP,
  mt_Dogovor01 = cAFPKP
);

