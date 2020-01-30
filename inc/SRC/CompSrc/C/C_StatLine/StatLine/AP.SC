        (scInterfkip01..scInterfkip01) //RDS
        {
         #F1
          '~F7~ Добавить',      cmInsert,       kbF7;
          '~F8~ Удалить',       cmDelete,       kbF8;
          '',                   cmAttrib,       kbCtrlEnter;
          '',                   cmAddNewRec,    kbCtrlF7;
          '',                   cmReturn,       kbCtrlF8;
          '',                   cmView,         kbCtrlBack;
          '~Esc~ Закрыть',      cmClose,        kbAltF3;
         #Std_Stat
        }

        (scInterfkip02..scInterfkip02)
        {
         #F1
          '~F3~ Выбор периода', cmPick,         kbF3;
          '~Esc~ Закрыть',      cmClose,        kbAltF3;
         #Std_Stat
        }

        (scInterfkip03..scInterfkip03)
        {
         #F1
          '~F3~ Закрыть пункт как выполненный', cmEndJob,  kbF3;
          '~Esc~ Закрыть',      cmClose,        kbAltF3;
          '',                   cmAttrib,       kbCtrlEnter;
          '',                   cmAddNewRec,    kbCtrlF7;
          '',                   cmReturn,       kbCtrlF8;
          '',                   cmView,         kbCtrlBack;
         #Std_Stat
        }
        (scInterfkip04..scInterfkip04)
        {
         #F1
          '~Esc~ Закрыть',      cmClose,        kbAltF3;
         #Std_Stat
        }
        (scInterfkip05..scInterfkip05)
        {
         #F1
          '~F3~ Формула',       cmPick,         kbF3;
          '~F7~ Добавить',      cmInsert,       kbF7;
          '~F8~ Удалить',       cmDelete,       kbF8;
          '~Esc~ Закрыть',      cmClose,        kbAltF3;
         #Std_Stat
        }
        (scInterfkip06..scInterfkip06)
        {
         #F1
          '~F4~ Изменить',      cmInsert,       kbF4;
          '~Esc~ Закрыть',      cmClose,        kbAltF3;
         #Std_Stat
        }
        (scInterfkip07..scInterfkip07)
        {
         #F1
          '~Esc~ Закрыть',      cmClose,        kbAltF3;
         #Std_Stat
        }

       (scInterfkip09..scInterfkip09) //RDS
        {
         #F1
          '~Enter~ Выбор',      cmReturn,       kbEnter;
          '~F3~ Просмотр',      cmView,         kbF3;
          '~Alt+N~ Выбор счета',cmPlansNo,      kbAltN;
          '~Esc~ Закрыть',      cmClose,        kbAltF3;
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
          '~F3~ Выбор',         cmPick,         kbF3;
          '~F4~ Документ',      cmEdit,         kbF4;
          '~Alt+N~ Выбор счета',cmPlansNo,      kbAltN;
          '',                   cmMarkUnMark,   kbIns;
          '',                   cmSelectAll,    kbPlus;
          '',                   cmUnSelectAll,  kbMinus;
          '',                   cmSelectAll,    kbGrayPlus;
          '',                   cmUnSelectAll,  kbGrayMinus;
         #Std_Stat
        }
