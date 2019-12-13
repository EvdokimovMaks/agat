! ╔═══════════════════════════════════════════════════════════════════════════╗
! ║                     (c) 1994,98 корпорация ГАЛАКТИКА                      ║
! ║ Проект        : ГАЛАКТИКА                                                 ║
! ║ Система       : Модуль Управление ремонтами                               ║
! ║ Версия        : 5.80                                                      ║
! ║ Назначение    : Все статус-строки модуля Управление ремонтами             ║
! ║ Ответственный : Бургардт Александр                                        ║
! ║ Изменения     :                                                           ║
! ╚═══════════════════════════════════════════════════════════════════════════╝

        (sciRem13SpEsc..sciRem13SpEsc)
        {
          '~F1~ Помощь',        cmHelp,         kbF1;
          '~F3~ Выбор',         cmPick,         kbF3;
          '~Esc~ Выход',        cmClose,        kbAltF3;
          '',                   cmDefault,      kbEnter;
          '',                   cmPick,         kbSpace;
          '',                   cmQuit,         kbAltX;
#Std_Stat
        }

        (sciRem17a8Esc..sciRem17a8Esc)
        {
          '~F1~ Помощь',        cmHelp,         kbF1;
          '~F7~ Добавить',      cmAddNewRec,    kbF7;
          '~F8~ Удалить ',      cmDelete,       kbF8;
          '~Esc~ Выход',        cmClose,        kbAltF3;
          '',                   cmQuit,         kbAltX;
#Std_Stat
        }

        (sciRem178EnEsc..sciRem178EnEsc)
        {
          '~F1~ Помощь',        cmHelp,         kbF1;
          '~F4~ Изменить',      cmDefault,      kbF4;
          '~F7~ Добавить',      cmAddNewRec,    kbF7;
          '~F8~ Удалить ',      cmDelete,       kbF8;
          '~Esc~ Выход',        cmClose,        kbAltF3;
          '',                   cmDefault,      kbEnter;
          '',                   cmQuit,         kbAltX;
#Std_Stat
        }

        (sciRem1478InsPM..sciRem1478InsPM)
        {
          '~F1~ Помощь',        cmHelp,         kbF1;
          '~Ins~ Пометить',     cmMarkUnMark,   kbIns;
          '~+/-~ Сразу все',    cmMarkUnMark,   kbF3;
          '~Enter~ Выбор',      cmDefault,      kbEnter;
          '',                   cmSelectAll,    kbPlus;
          '',                   cmSelectAll,    kbGrayPlus;
          '',                   cmUnSelectAll,  kbMinus;
          '',                   cmUnSelectAll,  kbGrayMinus;
          '',                   cmClose,        kbAltF3;
          '',                   cmQuit,         kbAltX;
#Std_Stat
        }

        (sciRem17a8EnEsc..sciRem17a8EnEsc)
        {
          '~F1~ Помощь',        cmHelp,         kbF1;
          '~F7~ Добавить',      cmAddNewRec,    kbF7;
          '~F8~ Удалить ',      cmDelete,       kbF8;
          '~Esc~ Выход',        cmClose,        kbAltF3;
          '',                   cmQuit,         kbAltX;
#Std_Stat
        }

        (sciRem137a8Esc..sciRem137a8Esc)
        {
          '~F1~ Помощь',        cmHelp,         kbF1;
          '~F3~ Выбор',         cmPick,         kbF3;
          '~F7~ Добавить',      cmAddNewRec,    kbF7;
          '~F8~ Удалить',       cmDelete,       kbF8;
          '~Esc~ Выход',        cmClose,        kbAltF3;
          '',                   cmQuit,         kbAltX;
#Std_Stat
        }

        (sciRem1478EnEsc..sciRem1478EnEsc)
        {
          '~F1~ Помощь',        cmHelp,         kbF1;
          '~F4~ Изменить',      cmEdit,         kbF4;
          '~F7~ Добавить',      cmAddNewRec,    kbF7;
          '~F8~ Удалить ',      cmDelete,       kbF8;
          '',                   cmDefault,      kbEnter;
          '~Esc~ Выход',        cmClose,        kbAltF3;
#Std_Stat
        }

        (sciRem1478Esc..sciRem1478Esc)
        {
          '~F1~ Помощь',        cmHelp,         kbF1;
          '~F4~ Изменить',      cmEdit,         kbF4;
          '~F7~ Добавить',      cmAddNewRec,    kbF7;
          '~F8~ Удалить ',      cmDelete,       kbF8;
          '~Esc~ Выход',        cmClose,        kbAltF3;
#Std_Stat
        }


        (sciRem13478Esc..sciRem13478Esc)
        {
          '~F1~ Помощь',        cmHelp,         kbF1;
          '~F3~ Выбор',         cmPick,         kbF3;
          '~F4~ Изменить',      cmEdit,         kbF4;
          '~F7~ Добавить',      cmAddNewRec,    kbF7;
          '~F8~ Удалить ',      cmDelete,       kbF8;
          '~Esc~ Выход',        cmClose,        kbAltF3;
#Std_Stat
        }

        (sciRem1478c9Esc..sciRem1478c9Esc)
        {
          '~F1~ Помощь',        cmHelp,         kbF1;
          '~F4~ Изменить',      cmEdit,         kbF4;
          '~F7~ Добавить',      cmInsert,       kbF7;
          '~F8~ Удалить',       cmDelete,       kbF8;
          '~Ctrl+F9~ Импорт',   cmImp,          kbCtrlF9;
          '~Esc~ Выход',        cmClose,        kbAltF3;
#Std_Stat
        }

        (sciRem1478c9EnEsc..sciRem1478c9EnEsc)
        {
          '~F1~ Помощь',        cmHelp,         kbF1;
          '~F4~ Изменить',      cmDefault,      kbF4;
          '~F7~ Добавить',      cmAddNewRec,    kbF7;
          '~F8~ Удалить',       cmDelete,       kbF8;
          'Поиск',              cmOpenSearch,   kbAltF;
          'Фильтр',             cmFilterSave,   kbAltB;
          'Статус',             cmValue14,      kbAltF5;
          'Импорт',             cmImp,          kbCtrlF9;
          'Дерево',             cmAccording,    kbAltS;
          '~Esc~ Выход',        cmClose,        kbAltF3;
          '',                   cmDefault,      kbEnter;
          '',                   cmValue15,      kbAltF6;
#Std_Stat
        }
//------------------------------------------------------------------------------
        (sciRem1478c9EnEscSH..sciRem1478c9EnEscSH)
        {
          '~F1~ Помощь',        cmHelp,         kbF1;
          '~F4~ Изменить',      cmDefault,      kbF4;
          '~F7~ Добавить',      cmAddNewRec,    kbF7;
          '~F8~ Удалить',       cmDelete,       kbF8;
          'Поиск',              cmOpenSearch,   kbAltF;
          'Фильтр',             cmFilterSave,   kbAltB;
          'Дерево',             cmAccording,    kbAltS;
          '~Esc~ Выход',        cmClose,        kbAltF3;
          '',                   cmDefault,      kbEnter;
          '',                   cmValue15,      kbAltF6;
#Std_Stat
        }

        (sciRem14Esc..sciRem14Esc)
        {
          '~F1~ Помощь',        cmHelp,         kbF1;
          '~F4~ Изменить',      cmEdit,         kbF4;
          '~Enter~ Передача',   cmDefault,      kbEnter;
          '~Esc~ Выход',        cmClose,        kbAltF3;
#Std_Stat
        }

  (sciRem1478EscTree..sciRem1478EscTree)
  {
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Ctrl+Enter~ Открыть',       cmTreeOpenNode,         kbCtrlEnter;
  '~Ctrl+Backspace~ Закрыть',   cmTreeCloseNode,        kbCtrlBack;
  '~Esc~ Выход',                cmClose,                kbEsc;
  '',                           cmRemMove,              kbCtrlF6;
  '',                           cmRemTreeCloseAll,      kbAltQ;
  '',                           cmHideAll,              kbCtrlGrayMinus;
#Std_Stat
  }

  (sciRemK1478EscTree..sciRemK1478EscTree)
  {
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Alt+F~ Поиск',              cmOpenSearch,           kbAltF;
  '~Alt+G~ Поиск далее',        cmRecalcAllSums,        kbAltG;
  '~Alt+B~ Фильтр',             cmFilterSave,           kbAltB;
  '~Ctrl+Enter~ Открыть',       cmTreeOpenNode,         kbCtrlEnter;
  '~Ctrl+Backspace~ Закрыть',   cmTreeCloseNode,        kbCtrlBack;
  '~Esc~ Выход',                cmClose,                kbEsc;
  '',                           cmRemMove,              kbCtrlF6;
  '',                           cmVal1,                 kbCtrlF8;
  '',                           cmRemTreeCloseAll,      kbAltQ;
  '',                           cmHideAll,              kbCtrlGrayMinus;
#Std_Stat
  }

  (sciRemK1478Esc..sciRemK1478Esc)
  {
    '~F1~ Помощь',        cmHelp,         kbF1;
    '~F4~ Изменить',      cmEdit,         kbF4;
    '~F7~ Добавить',      cmAddNewRec,    kbF7;
    '~F8~ Удалить ',      cmDelete,       kbF8;
    '~Alt+F~ Поиск',      cmOpenSearch,   kbAltF;
    '~Alt+G~ Поиск далее',cmRecalcAllSums,kbAltG;
    '~Alt+B~ Фильтр',     cmFilterSave,   kbAltB;
    '~Esc~ Выход',        cmClose,        kbAltF3;
    '',                   cmVal1,         kbCtrlF8;
#Std_Stat
  }

(sciRemK147EnIns..sciRemK147EnIns)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Ctrl+Enter~ Открыть',       cmTreeOpenNode,         kbCtrlEnter;
  '~Ctrl+Backspace~ Закрыть',   cmTreeCloseNode,        kbCtrlBack;
  '~Alt+F~ Поиск',              cmOpenSearch,           kbAltF;
  '~Alt+G~ Поиск далее',        cmRecalcAllSums,        kbAltG;
  '~Alt+B~ Фильтр',             cmFilterSave,           kbAltB;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Ins
#PlusMinus
#Std_Stat
}

(sciRemK147EnEsc..sciRemK147EnEsc)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Ctrl+Enter~ Открыть',       cmTreeOpenNode,         kbCtrlEnter;
  '~Ctrl+Backspace~ Закрыть',   cmTreeCloseNode,        kbCtrlBack;
  '~Alt+F~ Поиск',              cmOpenSearch,           kbAltF;
  '~Alt+G~ Поиск далее',        cmRecalcAllSums,        kbAltG;
  '~Alt+B~ Фильтр',             cmFilterSave,           kbAltB;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

  (sciRem1478EnEscTree..sciRem1478EnEscTree)
  {
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  'Поиск',                      cmOpenSearch,           kbAltF;
  'Поиск далее',                cmRecalcAllSums,        kbAltG;
  'Фильтр',                     cmFilterSave,           kbAltB;
  'Статус',                     cmValue14,              kbAltF5;
  'Новое дерево',               cmValue2,               kbAltN;
  'Перенос',                    cmRemMove,              kbCtrlF6;
  'Список',                     cmAccording,            kbAltS;
  'Открыть',                    cmTreeOpenNode,         kbCtrlEnter;
  'Закрыть',                    cmTreeCloseNode,        kbCtrlBack;
  '~Esc~ Выход',                cmClose,                kbEsc;
  '',                           cmRemTreeCloseAll,      kbAltQ;
  '',                           cmHideAll,              kbCtrlGrayMinus;
  '',                           cmShowAll,              kbCtrlGrayPlus;
  '',                           cmCompressLevel,        kbCtrlGrayMul;
  '',                           cmValue15,              kbAltF6;
  '',                           cmValue17,              kbHome;
  '',                           cmValue20,              kbEnd;
#Std_Stat
  }

//------------------------------------------------------------------------------
  (sciRem1478EnEscTreeSH..sciRem1478EnEscTreeSH)
  {
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  'Поиск',                      cmOpenSearch,           kbAltF;
  'Поиск далее',                cmRecalcAllSums,        kbAltG;
  'Фильтр',                     cmFilterSave,           kbAltB;
  'Новое дерево',               cmValue2,               kbAltN;
  'Перенос',                    cmRemMove,              kbCtrlF6;
  'Список',                     cmAccording,            kbAltS;
  'Открыть',                    cmTreeOpenNode,         kbCtrlEnter;
  'Закрыть',                    cmTreeCloseNode,        kbCtrlBack;
  '~Esc~ Выход',                cmClose,                kbEsc;
  '',                           cmRemTreeCloseAll,      kbAltQ;
  '',                           cmHideAll,              kbCtrlGrayMinus;
  '',                           cmShowAll,              kbCtrlGrayPlus;
  '',                           cmCompressLevel,        kbCtrlGrayMul;
  '',                           cmValue15,              kbAltF6;
  '',                           cmValue17,              kbHome;
  '',                           cmValue20,              kbEnd;
#Std_Stat
  }
//------------------------------------------------------------------------------


  (sciRem1478EnEscTObj..sciRem1478EnEscTObj)
  {
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Alt+S~ Список',             cmAccording,            kbAltS;
  '~Alt+F5~ Статус',            cmValue14,              kbAltF5;
  '~Alt+N~ Новое дерево',       cmValue2,               kbAltN;
  '~Esc~ Выход',                cmClose,                kbEsc;
  '',                           cmRemTreeCloseAll,      kbAltQ;
  '',                           cmHideAll,              kbCtrlGrayMinus;
#Std_Stat
  }


        (sciRem1378Esc..sciRem1378Esc)
        {
          '~F1~ Помощь',        cmHelp,         kbF1;
          '~F3~ Выбор',         cmPick,         kbF3;
          '~F7~ Добавить',      cmAddNewRec,    kbF7;
          '~F8~ Удалить ',      cmDelete,       kbF8;
          '~Esc~ Выход',        cmClose,        kbAltF3;
          '',                   cmQuit,         kbAltX;
#Std_Stat
        }

(sciRem178Esc..sciRem178Esc)
  {
    '~F1~ Помощь',        cmHelp,         kbF1;
    '~F7~ Добавить',      cmAddNewRec,    kbF7;
    '~F8~ Удалить ',      cmDelete,       kbF8;
    '~Esc~ Выход',        cmClose,        kbAltF3;
    '',                   cmQuit,         kbAltX;
#Std_Stat
  }


(sciRem147aSEnEsc..sciRem147aSEnEsc)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Alt+S~ Дерево',             cmAccording,            kbAltS;
  '~Alt+F5~ Статус',            cmValue14,              kbAltF5;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sciRem147aSEnEscSH..sciRem147aSEnEscSH)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Alt+S~ Дерево',             cmAccording,            kbAltS;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sciRem147aSInsEnEsc..sciRem147aSInsEnEsc)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Alt+S~ Дерево',             cmAccording,            kbAltS;
  '~Alt+F5~ Статус',            cmValue14,              kbAltF5;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Ins
#PlusMinus

#Std_Stat
}

(sciRem147aSInsEnEscSH..sciRem147aSInsEnEscSH)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Alt+S~ Дерево',             cmAccording,            kbAltS;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Ins
#PlusMinus

#Std_Stat
}


  (sciRem147EnEscTree..sciRem147EnEscTree)
  {
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Alt+S~ Список',             cmAccording,            kbAltS;
  '~Alt+F5~ Статус',            cmValue14,              kbAltF5;
  'Поиск',                      cmOpenSearch,           kbAltF;
  'Поиск далее',                cmRecalcAllSums,        kbAltG;
  'Фильтр',                     cmFilterSave,           kbAltB;
  'Список',                     cmAccording,            kbAltS;
  'Статус',                     cmValue14,              kbAltF5;
  '~Ctrl+Enter~ Открыть',       cmTreeOpenNode,         kbCtrlEnter;
  '~Ctrl+Backspace~ Закрыть',   cmTreeCloseNode,        kbCtrlBack;
  '~Alt+N~ Новое дерево',       cmValue2,               kbAltN;
  '~Esc~ Выход',                cmClose,                kbEsc;
  '',                           cmRemTreeCloseAll,      kbAltQ;
  '',                           cmHideAll,              kbCtrlGrayMinus;
  '',                           cmShowAll,              kbCtrlGrayPlus;
  '',                           cmCompressLevel,        kbCtrlGrayMul;
  '',                           cmValue17,              kbHome;
  '',                           cmValue20,              kbEnd;
#Std_Stat
  }

  (sciRem147EnEscTreeSH..sciRem147EnEscTreeSH)
  {
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Alt+S~ Список',             cmAccording,            kbAltS;
  'Поиск',                      cmOpenSearch,           kbAltF;
  'Поиск далее',                cmRecalcAllSums,        kbAltG;
  'Фильтр',                     cmFilterSave,           kbAltB;
  '~Ctrl+Enter~ Открыть',       cmTreeOpenNode,         kbCtrlEnter;
  '~Ctrl+Backspace~ Закрыть',   cmTreeCloseNode,        kbCtrlBack;
  '~Alt+N~ Новое дерево',       cmValue2,               kbAltN;
  '~Esc~ Выход',                cmClose,                kbEsc;
  '',                           cmRemTreeCloseAll,      kbAltQ;
  '',                           cmHideAll,              kbCtrlGrayMinus;
  '',                           cmShowAll,              kbCtrlGrayPlus;
  '',                           cmCompressLevel,        kbCtrlGrayMul;
  '',                           cmValue17,              kbHome;
  '',                           cmValue20,              kbEnd;
#Std_Stat
  }

  (sciRem147InsEnEscTree..sciRem147InsEnEscTree)
  {
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Alt+S~ Список',             cmAccording,            kbAltS;
  '~Alt+F5~ Статус',            cmValue14,              kbAltF5;
  'Поиск',                      cmOpenSearch,           kbAltF;
  'Поиск далее',                cmRecalcAllSums,        kbAltG;
  'Фильтр',                     cmFilterSave,           kbAltB;
  'Список',                     cmAccording,            kbAltS;
  'Статус',                     cmValue14,              kbAltF5;
  '~Ctrl+Enter~ Открыть',       cmTreeOpenNode,         kbCtrlEnter;
  '~Ctrl+Backspace~ Закрыть',   cmTreeCloseNode,        kbCtrlBack;
  '~Alt+N~ Новое дерево',       cmValue2,               kbAltN;
  '~Esc~ Выход',                cmClose,                kbEsc;
  '',                           cmRemTreeCloseAll,      kbAltQ;
  '',                           cmHideAll,              kbCtrlGrayMinus;
  '',                           cmShowAll,              kbCtrlGrayPlus;
  '',                           cmCompressLevel,        kbCtrlGrayMul;
  '',                           cmValue17,              kbHome;
  '',                           cmValue20,              kbEnd;
#Ins
#PlusMinus

#Std_Stat
  }


  (sciRem147InsEnEscTreeSH..sciRem147InsEnEscTreeSH)
  {
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Alt+S~ Список',             cmAccording,            kbAltS;
  'Поиск',                      cmOpenSearch,           kbAltF;
  'Поиск далее',                cmRecalcAllSums,        kbAltG;
  'Фильтр',                     cmFilterSave,           kbAltB;
  '~Ctrl+Enter~ Открыть',       cmTreeOpenNode,         kbCtrlEnter;
  '~Ctrl+Backspace~ Закрыть',   cmTreeCloseNode,        kbCtrlBack;
  '~Alt+N~ Новое дерево',       cmValue2,               kbAltN;
  '~Esc~ Выход',                cmClose,                kbEsc;
  '',                           cmRemTreeCloseAll,      kbAltQ;
  '',                           cmHideAll,              kbCtrlGrayMinus;
  '',                           cmShowAll,              kbCtrlGrayPlus;
  '',                           cmCompressLevel,        kbCtrlGrayMul;
  '',                           cmValue17,              kbHome;
  '',                           cmValue20,              kbEnd;
#Ins
#PlusMinus

#Std_Stat
  }


(sciRemZ178Esc..sciRemZ178Esc)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Alt+B~ Фильтр',             cmFilterSave,           kbAltB;
//  '~Alt+R~ Сортировка',         cmMakeOrder,            kbAltR;
  '~Esc~ Выход',                cmClose,                kbAltF3;
  '',                           cmQuit,                 kbAltX;
#Std_Stat
}
