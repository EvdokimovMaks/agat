 (scClassifier..scClassifier)
  {
    '~F1~ Помощь', cmHelp, kbF1;
    '~F4~ Изменить', cmEdit, kbF4;
    '~F7~ Добавить',  cmAddNewRec, kbF7;
    '~^Enter~ Уровень+', cmOpenLevel, kbCtrlEnter;
    '~^BkSp~ Уровень-', cmCompressLevel,kbCtrlBack;
    '^<+> Все', cmShowAll, kbCtrlEqual;
    '', cmShowAll, kbCtrlGrayPlus;
    '', cmOpenLevel, kbEqual;
    '', cmOpenLevel, kbGrayPlus;
    '', cmCompressLevel,kbGrayMinus;
    '', cmResize, kbCtrlF5;
    '', cmLastHelp, kbAltF1;
    '', cmCalculator, kbShiftF2;
    '', cmEvaluateAndModify, kbCtrlF4;
    '', cmClose, kbAltF3;
!#include STD_STAT.SCI
    }
