//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.10 - ��壠���᪨� ������
// ���।������ ���⥦��� ���㬥�⮢ � ��⮬ ४����樨 � �����⮢ ���⥦��
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
  cNode : comp
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
  mt_BaseFin07_1 = Selected + cOrg + isLeaf,
  mt_BaseFin08 = TiDkGal + cSoprDoc + cNode + cOrg,
  mt_BaseFin09 = cOrg + cNode + DateOpl,
  mt_BaseFin10 = cNode
#ifdef __USG__
  ,mt_BaseFin11 = cPlDgDist
#end
  ,mt_BaseFin12 = Selected + cOrg + cBaseDoc + cDogovor + DateOpl
  ,mt_BaseFin13 = cOrg + cBaseDoc + cDogovor + DateOpl
  ,mt_BaseFin14 = Selected + cOrg + cBaseDoc + DateOpl
  ,mt_BaseFin15 = cOrg + cBaseDoc + DateOpl
);
/////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////
// ���㬥��� �᭮�����
table struct mt_BaseDoc
(
  NRec : comp,
  cBaseDoc : comp,
  cDogovor : comp,
  cAppDogovor: comp,
  cCalPlan: comp,
  cOrg : comp,
  SumOpl : double,
  SumDolg : double,
  SumPay : double,            // �㬬� ���⥦��
  SumShip : double,           // �㬬� ���㧮�
  SumActRec : double,         // �㬬� �����⮢
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

table struct mt_log
(
  Nrec  : comp,
  ind   : longint,
  cRec1 : comp,
  cRec2 : comp,
  cUser : comp, //��뫪� �� ���짮��⥫�
  wnum  : word
)
with index
(
  mt_log00 = NRec (Unique, Surrogate),
  mt_log01 = cRec1,
  mt_log02 = wnum + cRec1,
  mt_log03 = ind (autoinc)
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
table struct t_KatSopr
(
  cRec  : comp,
  cRec1 : comp,
  cRec2 : comp,
  Sums  : tSumma_x02,  // 1 - ����祭�� �㬠 2 - ������������ �� �����
  kTbl  : word,
  wList : word,
  cBaseDoc : comp,
  Selected : word,
  dOpr     : date,
  dSopr    : date,
  wSort    : word,
  bRetOk   : boolean,  // ������ �� ��ࠡ�⠭ � �����
  bActOk   : boolean,  // ४������ �뫠 ��ࠡ�⠭� � �����
  cBaseFin : comp,     // ��뫪� �� ������
  wTypeRec : word,     // ��� �����. 0 - ���������, 1 - ४������, 2 - ������
  cDogovor : comp      // ��뫪� �� �������
)
(
  t_KatSopr01 = cRec,
  t_KatSopr02 = cRec1,
  t_KatSopr03 = cRec2,
  t_KatSopr04 = wList,
  t_KatSopr05 = kTbl + cRec + dSopr + wSort,
  t_KatSopr06 = wList + cRec,
  t_KatSopr07 = wList + cRec1,
  t_KatSopr08 = cBaseDoc,
  t_KatSopr09 = Selected + cRec, // �� ��࠭�� + �� ����ࠣ��⠬
  t_KatSopr10 = kTbl + cRec + dOpr + wSort,
  t_KatSopr11 = wTypeRec + dOpr,
  t_KatSopr12 = wTypeRec + cBaseDoc + dOpr
);

table struct mt_MagOper = MagOper;
/////////////////////////////////////////////////////////////////////
