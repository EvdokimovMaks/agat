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
  SumToDistrFst : double,
  SumVToDistrFst : double,
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
  mt_BaseFin02 = cOrg + cBaseDoc + cDogovor + cAppDogovor + cCalPlan + DateOpl + NoDoc, // �� ���㬥�⠬-�᭮����� + �������
  mt_BaseFin03 = TiDkGal + cSoprDoc + cBaseDoc + cDogovor + cAppDogovor + cCalPlan,     // �� ��ࢨ筮�� ���㬥���
  mt_BaseFin04 = cOrg + cBaseFin,      // �� ����ࠣ��⠬ + ���⥦��
  mt_BaseFin05 = cDogovor + cCalPlan,
  mt_BaseFin06 = cDogovor + cAppDogovor + cCalPlan,
  mt_BaseFin07 = Selected + cOrg + cBaseDoc + cDogovor + cAppDogovor + cCalPlan + DateOpl + NoDoc,
  mt_BaseFin07_1 = Selected + cOrg + isLeaf,
  mt_BaseFin08 = TiDkGal + cSoprDoc + cNode + cOrg,
  mt_BaseFin09 = cOrg + cNode + DateOpl,
  mt_BaseFin10 = cNode,
  mt_BaseFin10_1 = Selected + cNode
#ifdef __USG__
  ,mt_BaseFin11 = cPlDgDist
#end
  ,mt_BaseFin12 = Selected + cOrg + cBaseDoc + cDogovor + DateOpl + NoDoc
  ,mt_BaseFin13 = cOrg + cBaseDoc + cDogovor + DateOpl + NoDoc
  ,mt_BaseFin14 = Selected + cOrg + cBaseDoc + DateOpl + NoDoc
  ,mt_BaseFin15 = cOrg + cBaseDoc + DateOpl + NoDoc
  ,mt_BaseFin16 = cSoprDoc + DateOpl + NRec

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
  Nodoc : string[20],           //����� ��
  DogNoDoc : string[20],         //����� �������
  AppDogNoDoc : string[20],
  dDoc  : Date,
  Total : double,
  cRepcDoc : comp,
  cSF      : comp,            // ���䠪��� ��ࢮ� ���������
  SFNum   : tDocNumber,       // ����� ���䠪����
  SFDFact  : date,            // ��� ���䠪����
  wViewDOMode : word,          // ०�� �⮡ࠦ���� �� (������� ���������)
  bPreDO      : boolean       // �� �� �।������
)
with index
(
  mt_BaseDoc00 = NRec,
  mt_BaseDoc01 = cBaseDoc,
  mt_BaseDoc02 = wViewDOMode + cOrg + dDoc + cBaseDoc,
  mt_BaseDoc03 = cDogovor + cCalPlan + cBaseDoc,
  mt_BaseDoc04 = cDogovor + cAppDogovor + cCalPlan + cBaseDoc,
  mt_BaseDoc05 = wViewDOMode + Selected + cOrg + dDoc + cBaseDoc,       // �� ����ࠣ��⠬ + ���㬥�⠬-�᭮�����
  mt_BaseDoc06 = cRepcDoc + cBaseDoc,
  mt_BaseDoc07 = wViewDOMode + cOrg + SFDFact + SFNum + cBaseDoc,
  mt_BaseDoc08 = wViewDOMode + Selected + cOrg + SFDFact + SFNum + cBaseDoc,
  mt_BaseDoc09 = wViewDOMode + bPreDO + cOrg + dDoc + cBaseDoc,
  mt_BaseDoc10 = wViewDOMode + bPreDO + Selected + cOrg + dDoc + cBaseDoc,
  mt_BaseDoc11 = wViewDOMode + bPreDO + cOrg + SFDFact + SFNum + cBaseDoc,
  mt_BaseDoc12 = wViewDOMode + bPreDO + Selected + cOrg + SFDFact + SFNum + cBaseDoc
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

table struct mt_log
(
  Nrec  : comp,
  ind : longint,
  cRec1 : comp,
  cRec2 : comp,
  cUser : comp, //��뫪� �� ���짮��⥫�
  wnum : word
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
  cUser     : comp,   // ���짮��⥫�
  lRound    : longint,// ����� ����樨
  lSetRound : longint,// ���� ����樨 �⬥��
  cRec1     : comp,   // ��뫪� �� mt_Basefin.NRec
  cRec2     : comp,   // ���� ������� ���� ��
  cOrg      : comp,   // ����ࠣ��� 宧����樨
  cBaseFin  : comp,   // 宧������
  cSoprDoc  : comp,   // ��ࢨ�� ���㬥��
  cBaseDoc  : comp,   // ��
  cDogovor  : comp,   // �������
  cAppDog   : comp,   // �����饥 ᮣ��襭��
  cKatSopr  : comp,   // ���������
  Summa     : double, // �㬬�
  SumVal    : double, // � �����
  cVal      : comp,   // �����
  wTypeOper : word    // ��� ����樨
)
with index
(
  mt_ulog01 = cRec1,
  mt_ulog02 = cUser + lRound,
  mt_ulog03 = cUser + lSetRound
);

table struct t_KatSopr
(
  cRec  : comp,
  cRec1 : comp,
  cRec2 : comp,
  Sums   : tSumma_x02,  // 1 - ����祭��� �㬬� 2 - ������������� �� �����
  SumVal : tSumma_x02,  // 1 - ����祭��� �㬬� 2 - ������������� �� �����
  cVal   : comp,
  kTbl  : word,
  wList : word,
  cBaseDoc : comp,
  Selected : word,
  dOpr     : date,
  dSopr    : date,
  cDogovor : comp,      // ��뫪� �� �������
  cAppDogovor: comp,    // ��뫪� �� �ਫ������
  cCalPlan: comp,       // ��뫪� �� �㭪� �������୮�� �����
  SFNum   : tDocNumber, // ����� ���䠪����
  SFDFact : date,       // ��� ���䠪����
  dPercent : double,    // ��業� ���� �����
  dSumCred : double,    // �㬬� ���� �����
  bProcessed : boolean  // ��������� ��ࠡ�⠭�
)
with index
(
  t_KatSopr01 = cRec,
  t_KatSopr02 = cRec1,
  t_KatSopr03 = cRec2,
  t_KatSopr04 = wList,
  t_KatSopr05 = kTbl + cRec + dSopr + cRec1,
  t_KatSopr06 = wList + cRec,
  t_KatSopr07 = wList + cRec1,
  t_KatSopr08 = cBaseDoc + dSopr + cRec1,
  t_KatSopr09 = Selected + cRec + dSopr + cRec1, // �� ��࠭�� + �� ����ࠣ��⠬ (���஢�� �� ��� + NREC)
  t_KatSopr10 = kTbl + cRec + dOpr + cRec1,
  t_KatSopr11 = kTbl + cRec + SFDFact + SFNum + cRec1
);

table struct mt_MagOper = MagOper;
/////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////
// ����� ���ᨣ����
table struct mt_RepcDoc
(
  NRec     : comp,
  cRepcDoc : comp,
  NoDoc    : string,
  dDoc     : date,
  State    : word,
  cOrg     : comp,
  cVal     : comp,              // ����� ���㬥��
  BegDate  : date,
  EndDate  : date,
  SumOpl   : double,            // ����� �� ���㬥���
  SumDolg  : double,            // ������祭�� ���⮪
  SumPay   : double,            // �㬬� �� ���㬥���
  Selected : word
)
with index
(
  mt_RepcDoc00 = NRec(Unique, Surrogate),
  mt_RepcDoc01 = cRepcDoc,
  mt_RepcDoc02 = cOrg + dDoc,
  mt_RepcDoc03 = Selected + cOrg + dDoc
);

/////////////////////////////////////////////////////////////////////
table struct KatH // � KatH �࠭���� ᫮���� �ਢ離� ���.
(
  Nrec      : comp       "Nrec",
  cNode     : comp       "cNode",
  Name      : string[80] "Name",
  Mode      : word       "����� ࠧ��᪨", // wModeXXXX
  Priority  : word       "�ਮ��� ॣ���� ���",
  cPlansSch : comp       "ॣ���� ���",
  cHozOper  : comp       "⨯���� ������",
  Oper      : word       "������",
  CorParam  : word       "�ਧ��� ���४�஢��",
  TiDkGal   : word       "��� ���㬥��"
)
with index
(
  KatH01 = Nrec,
  KatH02 = cNode + Priority,
  KatH03 = cNode + Name,
  KatH04 = Priority,
  KatH05 = Name,
  KatH06 = Mode + Priority,
  KatH07 = Mode + cPlansSch,
  KatH08 = TiDkGal
);
/////////////////////////////////////////////////////////////////////
table struct TXObyTiDk // �ਢ離� ��� � ࠧ१� ⨯�� ���㬥��⮢
(
  Nrec      : comp       "Nrec",
  cTune     : comp       "��뫪� �� ����ன� ��",
  TiDk      : word       "TiDk",
  cHozOper  : comp       "⨯���� ������"
)
with index
(
  TXObyTiDk00 = NRec(Unique, Surrogate),
  TXObyTiDk01 = cTune + TiDk
);


/////////////////////////////////////////////////////////////////////
Table Struct tmp_KatSopr // ��� �⡮஢
( Nrec     : comp,
  cNote    : comp,
  cBaseDoc : comp,
  cStepDoc : comp,
  dOpr     : date,
  dSopr    : date,
  cDogovor : comp,      // ��뫪� �� �������
  cAppDogovor: comp,    // ��뫪� �� �ਫ������
  cCalPlan : comp,       // ��뫪� �� �㭪� �������୮�� �����
  SFNum    : tDocNumber, // ����� ���䠪����
  SFDFact  : date,       // ��� ���䠪����
  cOrg     : comp,
  Vidsopr  : word,
  Summa    : tSumma,
  SumVal   : tSumma,
  cValSP   : comp,
  SumOpl   : tSumma,
  SumOplV  : tSumma

)
with index
( tmp_KatSopr01 = Nrec
 ,tmp_KatSopr02 = cBaseDoc +DSopr
 ,tmp_KatSopr03 = cOrg + DSopr

);
