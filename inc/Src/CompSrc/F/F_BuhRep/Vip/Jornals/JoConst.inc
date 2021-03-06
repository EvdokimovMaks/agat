const
  colSaldoInD  = 1;   // JornTune.SetKauDay - ����室������ �뢮�� �������
  colSaldoInK  = 2;
  colOborotD   = 4;
  colItogD     = 8;
  colOborotK   = 16;
  colItogK     = 32;
  colSaldoOutD = 64;
  colSaldoOutK = 128;
  coKolVo      = 256; // ���뢠�� ������⢮

  bySchAndSub  = 0;   // JornTune.SetPole - ����஥��� ࠧ१� �� �᭮��� ��⠬
  bySchOnly    = 1;

  // TODO: �뭥�� � buhconst.inc
  sfAn         = 0;        // JornTune.[S]et[F]iltr - ��� ࠧ१�
  sfDoc        = 1; // ���㬥���
  sfDate       = 2; // ����
  sfSch        = 3; // ���
  sfAnDoc      = 4; // �����⨪� � ���㬥���
  sfPodr       = 5; //  ���ࠧ�������
  sfSchAn      = 6; // ��� � �����⨪�
  sfSchPodrAn  = 7; // ���, ���ࠧ������� � �����⨪�
  sfSchDate    = 8; // ��� � ����
  sfSchAnDoc   = 9; // ���, �����⨪� � ���㬥���
  sfSchPodrSub = 10;// ���, ���ࠧ������� � �����
  sfSchDoc     = 11;// ��� � ���㬥���

  //wtSimple = 1;       // JoSlit.[wT]ype

  // JoSlit.wType
  slVal   = 0;
  slDoc   = 1;
  slKau   = 2;
  slDate  = 3;
  slSchet = 4;
  slPodr  = 5;
  slSub   = 6;
  slItog  = 100;


  wtSalInD  = 10;     // JoColums.[wT]ype
  wtSalInK  = 11;
  wtObD     = 20;
  wtObDItog = 21;
  wtObK     = 30;
  wtObKItog = 31;
  wtSalOutD = 40;
  wtSalOutK = 41;

  wOnlyKorr = 0;
  wToOther  = 1;
  wAddSch   = 2;
  wAddSub   = 3;
  wAddKau   = 4;

  byOborot  = 1;      // JoSlit.Added
  bySaldo   = 2;
  byTunes   = 3;      // JoColumns.Added
  byData    = 4;

  wdsDay    = 0;      // [D]ate[S]ize JornTune.FilialNo - 1-� ���
  wdsMonth  = 1;      //

  // Saldo Type
  stUndef   = 255;
  stActive  = 0;
  stPassive = 1;
  stActPass = 2;

  cgSaldoIn  = 1;
  cgSaldoOut = 2;

  wItogAllOb  = 0;
  wItogKorrOb = 1;
end;
