//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1 - �����⨪�
// �����㬥�⠫쭠� ������
//******************************************************************************

#ifdef ComponentVersion
#component "L_SoprBase"
#end

ToolBar tbCalcSum
{
  btChkSum =
  {
    Command   = cmChkSum;
    BitMap    = bmpChkSum;
    Help      = '������ ���� �㬬 �� ���㬥��� (Alt+Q)';
    BroadCast = False;
    HotKey    = kbAltQ;
  };
};
  
ToolBar tbAttrSchFact
{
  btAttrSchFact =
  {
    Command   = cmAttrSchFact;
    BitMap    = bmpSFAttr;
    Help      = '���������� ���譨� ��ਡ�⮢ ��� ���� (Alt+E)';
    BroadCast = False;
    HotKey    = kbAltE;
  };
};

ToolBar tbAutoRasp
{
  btAutoRasp =
  {
    Command   = cmAutoRasp;
    BitMap    = bmpAutoRasp;
    Help      = '�����।������ �� �� ࠧ१� �࠭���� (Alt+2)';
    BroadCast = False;
  };
};


ToolBar tbMoveUpDown
{
  btMoveUp =
  {
    Command   = cmMoveUp;
    BitMap    = bmpMoveUp;
    Help      = '��६����� ������ �� ������ �����';
    BroadCast = False;
  };
  btMoveDown =
  {
    Command   = cmMoveDown;
    BitMap    = bmpMoveDown;
    Help      = '��६����� ������ �� ������ ����';
    BroadCast = False;
  };
};
