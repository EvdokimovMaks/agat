//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 9.1 - логистика
// Инструментальная панель
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
    Help      = 'Пересчет общих сумм по документу (Alt+Q)';
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
    Help      = 'Заполнение внешних атрибутов для ЭСЧФ (Alt+E)';
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
    Help      = 'Автораспределение МЦ по разрезу хранения (Alt+2)';
    BroadCast = False;
  };
};


ToolBar tbMoveUpDown
{
  btMoveUp =
  {
    Command   = cmMoveUp;
    BitMap    = bmpMoveUp;
    Help      = 'Переместить запись на позицию вверх';
    BroadCast = False;
  };
  btMoveDown =
  {
    Command   = cmMoveDown;
    BitMap    = bmpMoveDown;
    Help      = 'Переместить запись на позицию вниз';
    BroadCast = False;
  };
};
