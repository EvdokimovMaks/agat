        (scInterfkip01..scInterfkip01) //RDS
        {
         #F1
          '~F7~ ��������',      cmInsert,       kbF7;
          '~F8~ �������',       cmDelete,       kbF8;
          '',                   cmAttrib,       kbCtrlEnter;
          '',                   cmAddNewRec,    kbCtrlF7;
          '',                   cmReturn,       kbCtrlF8;
          '',                   cmView,         kbCtrlBack;
          '~Esc~ �������',      cmClose,        kbAltF3;
         #Std_Stat
        }

        (scInterfkip02..scInterfkip02)
        {
         #F1
          '~F3~ �롮� ��ਮ��', cmPick,         kbF3;
          '~Esc~ �������',      cmClose,        kbAltF3;
         #Std_Stat
        }

        (scInterfkip03..scInterfkip03)
        {
         #F1
          '~F3~ ������� �㭪� ��� �믮������', cmEndJob,  kbF3;
          '~Esc~ �������',      cmClose,        kbAltF3;
          '',                   cmAttrib,       kbCtrlEnter;
          '',                   cmAddNewRec,    kbCtrlF7;
          '',                   cmReturn,       kbCtrlF8;
          '',                   cmView,         kbCtrlBack;
         #Std_Stat
        }
        (scInterfkip04..scInterfkip04)
        {
         #F1
          '~Esc~ �������',      cmClose,        kbAltF3;
         #Std_Stat
        }
        (scInterfkip05..scInterfkip05)
        {
         #F1
          '~F3~ ���㫠',       cmPick,         kbF3;
          '~F7~ ��������',      cmInsert,       kbF7;
          '~F8~ �������',       cmDelete,       kbF8;
          '~Esc~ �������',      cmClose,        kbAltF3;
         #Std_Stat
        }
        (scInterfkip06..scInterfkip06)
        {
         #F1
          '~F4~ ��������',      cmInsert,       kbF4;
          '~Esc~ �������',      cmClose,        kbAltF3;
         #Std_Stat
        }
        (scInterfkip07..scInterfkip07)
        {
         #F1
          '~Esc~ �������',      cmClose,        kbAltF3;
         #Std_Stat
        }

       (scInterfkip09..scInterfkip09) //RDS
        {
         #F1
          '~Enter~ �롮�',      cmReturn,       kbEnter;
          '~F3~ ��ᬮ��',      cmView,         kbF3;
          '~Alt+N~ �롮� ���',cmPlansNo,      kbAltN;
          '~Esc~ �������',      cmClose,        kbAltF3;
          '',                   cmLastHelp,     kbAltF1;
          '',                   cmCalculator,   kbShiftF2;
          '',                   cmQuit,         kbAltX;
          '',                   cmPrintDoc,     kbCtrlP;
          '',                   cmSaveDoc,      kbCtrlF2;
          '',                   cmRestoreDoc,   kbCtrlF3;
          '',                   cmResize,       kbCtrlF5;
          '',                   cmNext,         kbF6;
          '',                   cmPrev,         kbShiftF6;
          '',                   cmSysMenu,      kbCtrlF10;
          '',                   cmZoom,         kbF5;
          '',               cmEvaluateAndModify,kbCtrlF4;
          '',                   cmMenu,         kbF10;
          '',                cmHotKeys,          kbAltF10;
        }

       (scInterfkip10..scInterfkip10) //RDS
        {
         #F1
          '~F3~ �롮�',         cmPick,         kbF3;
          '~F4~ ���㬥��',      cmEdit,         kbF4;
          '~Alt+N~ �롮� ���',cmPlansNo,      kbAltN;
          '',                   cmMarkUnMark,   kbIns;
          '',                   cmSelectAll,    kbPlus;
          '',                   cmUnSelectAll,  kbMinus;
          '',                   cmSelectAll,    kbGrayPlus;
          '',                   cmUnSelectAll,  kbGrayMinus;
         #Std_Stat
        }
