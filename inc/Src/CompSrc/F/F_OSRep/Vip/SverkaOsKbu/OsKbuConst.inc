// ����⠭�� ��� osver...-䠩���
const
  //⨯ ��ꥪ� ��� ���� � �⮡ࠦ���� � ��ॢ�
  cgObj = 1;
  cgCard = 2;
  cgOborot = 3;

  // ���祭�� ���� parWhat
  cgNone  = 0;
  cgBalance  : word = 1; // �⮨�����
  cgIznos    : word = 2; // �㬬� �����
  cgMonthIzn : word = 4; // �㬬� ����� �� �����
  cgOstStoim : word = 8; // ����筠� �⮨�����
  cgUpdIzn   : word = 16; // ���४�஢�� ����⨧�樨
  cgStoimL   : word = 32; // �������樮���� �⮨�����
  
  cgNoBuhData: word = 64;
  // ���祭�� ���� parTiDk
  cgType_NotDef  : word =  0; // �� ��।�����
  cgType_OS      : word = 15; // ��
  cgType_NMA     : word = 16; // ���

  cgManySubsch   : tSubsch = '...';
  cgManySchet    : tSchet3 = '...';
  cgDefPrecision : double = 0.001;
  // ��ꥪ�� � ����稨
  cgObjectNo  = 0; // ��� - �����४�� �����
  cgObjectYes = 1; // ����

  const_cKatOs   = 1;    //����窨 ��/���
  const_cSchetO  = 2;
  const_cSubO    = 3;
  const_cSchetK  = 5;
  const_cSubK    = 6;
  const_cwKodSPO = 25; // ��� ���ࠧ�������(w - ������⢮ ��࠭���, � - ���祭��)
  const_cwKau1   = 26; // ��� ��� �� 30
  const_cwDefKau1 = const_cwKau1 + 12;
  const_wKatOsChoice = 1; //�� ᢥથ ���뢠�� �� ���� ⮫쪮 ��࠭�� ����窨
  const_wNeedCheckAn = 3;
  const_wMSchetK = 20;    ///������⢮ ��࠭��� ��⮢ �� �।���
  const_wMKatOS  = 21;    ///������⢮ ��࠭��� ����窨 ��/���
  const_wMSchetO = 22;    ///������⢮ ��࠭��� ��⮢ �� ������
  const_wMSubO   = 23;      ///������⢮ ��࠭��� ����⮢ �� ������
  const_wMSubK   = 24;      ///������⢮ ��࠭��� ����⮢ �� �।���


  cgLastRepPar = const_cwKau1 + 17;
  //��������� Visual
  cgs_VisualTitle = '���ઠ ������ �� � ���. ';
  //������⢮ �⠯��
  cgs_Etaps = '3';
end;

#define wKAU1 UserDeskRep.ResWord[const_cwKau1]
#define wKAU2 UserDeskRep.ResWord[const_cwKau1 + 1]
#define wKAU3 UserDeskRep.ResWord[const_cwKau1 + 2]
#define wKAU4 UserDeskRep.ResWord[const_cwKau1 + 3]
#define wKAU5 UserDeskRep.ResWord[const_cwKau1 + 4]
#define wKAU6 UserDeskRep.ResWord[const_cwKau1 + 5]

#define cKAU1 UserDeskRep.ResComp[const_cwKau1]
#define cKAU2 UserDeskRep.ResComp[const_cwKau1 + 1]
#define cKAU3 UserDeskRep.ResComp[const_cwKau1 + 2]
#define cKAU4 UserDeskRep.ResComp[const_cwKau1 + 3]
#define cKAU5 UserDeskRep.ResComp[const_cwKau1 + 4]
#define cKAU6 UserDeskRep.ResComp[const_cwKau1 + 5]

#define cKODSPO UserDeskRep.ResComp[const_cwKodSPO]

#define mKAU1 UserDeskRep.ResWord[const_cwKau1 + 6]
#define mKAU2 UserDeskRep.ResWord[const_cwKau1 + 7]
#define mKAU3 UserDeskRep.ResWord[const_cwKau1 + 8]
#define mKAU4 UserDeskRep.ResWord[const_cwKau1 + 9]
#define mKAU5 UserDeskRep.ResWord[const_cwKau1 + 10]
#define mKAU6 UserDeskRep.ResWord[const_cwKau1 + 11]

#define mKODSPO UserDeskRep.ResWord[const_cwKodSPO]

#define DefKAU1 UserDeskRep.ResWord[const_cwDefKau1]
#define DefKAU2 UserDeskRep.ResWord[const_cwDefKau1 + 1]
#define DefKAU3 UserDeskRep.ResWord[const_cwDefKau1 + 2]
#define DefKAU4 UserDeskRep.ResWord[const_cwDefKau1 + 3]
#define DefKAU5 UserDeskRep.ResWord[const_cwDefKau1 + 4]

#ifdef _12KAU_
#define DefKAU7 UserDeskRep.ResWord[const_cwDefKau1 + 5]
#define DefKAU8 UserDeskRep.ResWord[const_cwDefKau1 + 6]
#define DefKAU9 UserDeskRep.ResWord[const_cwDefKau1 + 7]
#define DefKAU10 UserDeskRep.ResWord[const_cwDefKau1 + 8]
#define DefKAU11 UserDeskRep.ResWord[const_cwDefKau1 + 9]
#define DefKAU12 UserDeskRep.ResWord[const_cwDefKau1 + 10]

#define wKAU7 UserDeskRep.ResWord[const_cwKau1 + 23]
#define wKAU8 UserDeskRep.ResWord[const_cwKau1 + 24]
#define wKAU9 UserDeskRep.ResWord[const_cwKau1 + 25]
#define wKAU10 UserDeskRep.ResWord[const_cwKau1 + 26]
#define wKAU11 UserDeskRep.ResWord[const_cwKau1 + 27]
#define wKAU12 UserDeskRep.ResWord[const_cwKau1 + 28]

#define cKAU7 UserDeskRep.ResComp[const_cwKau1 + 23]
#define cKAU8 UserDeskRep.ResComp[const_cwKau1 + 24]
#define cKAU9 UserDeskRep.ResComp[const_cwKau1 + 25]
#define cKAU10 UserDeskRep.ResComp[const_cwKau1 + 26]
#define cKAU11 UserDeskRep.ResComp[const_cwKau1 + 27]
#define cKAU12 UserDeskRep.ResComp[const_cwKau1 + 28]

#define mKAU7 UserDeskRep.ResWord[const_cwKau1 + 29]
#define mKAU8 UserDeskRep.ResWord[const_cwKau1 + 30]
#define mKAU9 UserDeskRep.ResWord[const_cwKau1 + 31]
#define mKAU10 UserDeskRep.ResWord[const_cwKau1 + 32]
#define mKAU11 UserDeskRep.ResWord[const_cwKau1 + 33]
#define mKAU12 UserDeskRep.ResWord[const_cwKau1 + 34]
#endif
