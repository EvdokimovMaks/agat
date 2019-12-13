/*
╔═════════════════════════════════════════════════════════════════════╗
║           ASUP/TEP (с) 1996, АО "Новый Атлант", НТО "Top Soft"      ║
║  Версия :     1.00                                                  ║
║  Разработал:  Авсеев А.В.                                           ║
║  Назначение:  Описание меню состояния программы TEP                 ║
║               (включается в MAIN.RC)                                ║
║                                                                     ║
║   1. Дата модификации  ДД/ММ/ГГ     Кто модифицировал               ║
║      Что сделано:                                                   ║
║                                                                     ║
╚═════════════════════════════════════════════════════════════════════╝
*/

 (sciEnEsc1478..sciEnEsc1478)
 {
   '~F1~ Помощь',        cmHelp,         kbF1;
   '~Enter~ Выбор',      cmOk,           kbEnter;
   '~ESC~ Закрыть',      cmClose,        kbAltF3;
   '~F4~ Изменить',      cmEdit,         kbF4;
   '~F7~ Добавить',      cmAddNewRec,    kbF7;
   '~F8~ Удалить',       cmDelete,       kbF8;
 #Std_Stat
 }

(sci13CtrlDel78Esc..sci13CtrlDel78Esc) // Mick, 25.09.96
   {
   '~F1~ Пом.',                 cmHelp,              kbF1;
   '~F3~ Выбрать',              cmPick,              kbF3;
   '~Ctrl+Del~ Отменить выбор', cmUnpick,            kbCtrlDel;
   '~F7~ Добавить',             cmInsert,            kbF7;
   '~F8~ Уд.',                  cmDelete,            kbF8;
   '~Esc~ Закр.',               cmClose,             kbAltF3;
 #Std_Stat
   }

(sci1EntEsc..sci1EntEsc)
{
'~F1~ Помощь',           cmHelp,              kbF1;
'~Enter~ Изменить',      cmEdit,              kbEnter;
'~Esc~ Закрыть',         cmClose,             kbAltF3;
 #Std_Stat
}

(sci1Ent7Esc..sci1Ent7Esc)
{
'~F1~ Помощь',           cmHelp,              kbF1;
'~Enter~ Изменить',      cmEdit,              kbEnter;
'~F7~ Добавить',         cmInsert,            kbF7;
'~Esc~ Закрыть',         cmClose,             kbAltF3;
 #Std_Stat
}

(sci1Enter47Esc..sci1Enter47Esc)
{
'~F1~ Помощь',        cmHelp,              kbF1;
'~Enter~ Выбор',      cmDefault,           kbEnter;
'~F4~ Изменить',      cmEdit,              kbF4;
'~F7~ Добавить',      cmIns,               kbF7;
'~Esc~ Закрыть',      cmClose,             kbAltF3;
 #Std_Stat
}

 (sci1EnFilt..sci1EnFilt)
  {
    '~F1~ Помощь',   cmHelp,              kbF1;
    '~Esc~ Закрыть', cmClose,             kbAltF3;
    '~Alt+F~ Фильтр', cmSetFil,           kbAltF;
    '~Enter~ Ввод',  cmOk,                kbEnter;
 #Std_Stat
  }
 (sciDep..sciDep)
  {
   '~F1~ Помощь',           cmHelp,              kbF1;
   '~F3~ Выбрать',          cmPick,              kbF3;
   '~F7~ Добавить',         cmInsert,            kbF7;
   '~F8~ Удалить ',         cmDelete,            kbF8;
   '~Ctrl+Del~ Стереть ',   cmClearBase,           kbCtrlDel;
   '~Enter~ Изменить',      cmEdit,              kbEnter;
 #Std_Stat
  }

 (sci178OkEsc..sci178OkEsc)
  {
   '~F1~ Помощь',           cmHelp,              kbF1;
   '~F7~ Добавить',         cmInsert,            kbF7;
   '~F8~ Удалить ',         cmDelete,            kbF8;
   '~Enter~ Выбор ',        cmOk,                kbEnter;
   '~Esc~ Закрыть',         cmClose,             kbAltF3;
 #Std_Stat
  }

 (sciT178EnEsc..sciT178EnEsc)
  {
   '~F1~ Помощь',           cmHelp,              kbF1;
   '~F7~ Добавить',         cmInsert,            kbF7;
   '~F8~ Удалить ',         cmDelete,            kbF8;
   '~Enter~ Изменить',      cmEdit,              kbEnter;
   '~Esc~ Закрыть',         cmClose,             kbAltF3;
 #Std_Stat
  }

 (sci1478ChooseEsc..sci1478ChooseEsc)
  {
   '~F1~ Помощь',   cmHelp,              kbF1;
   '~F4~ Перейти',  cmChoose,            kbF4;
   '~F7~ Добавить', cmInsert,            kbF7;
   '~F8~ Удалить ', cmDelete,            kbF8;
   '~Esc~ Закрыть', cmClose,             kbAltF3;
 #Std_Stat
  }

 (sci147Esc..sci147Esc)
  {
   '~F1~ Помощь',   cmHelp,              kbF1;
   '~F4~ Перейти',  cmChoose,            kbF4;
   '~F7~ Добавить', cmInsert,            kbF7;
   '~Esc~ Закрыть', cmClose,             kbAltF3;
 #Std_Stat
  }

 (sci147EscI..sci147EscI)
  {
   '~F1~ Помощь',   cmHelp,              kbF1;
   '~F4~ Изменить', cmEdit,              kbF4;
   '~F7~ Добавить', cmInsert,            kbF7;
   '~Esc~ Закрыть', cmClose,             kbAltF3;
 #Std_Stat
  }

 (sci13478ChooseEsc..sci13478ChooseEsc)
  {
   '~F1~ Помощь',   cmHelp,              kbF1;
   '~F3~ Выбрать',  cmPick,              kbF3;
   '~F4~ Перейти',  cmChoose,            kbF4;
   '~F7~ Добавить', cmInsert,            kbF7;
   '~F8~ Удалить ', cmDelete,            kbF8;
   '~Esc~ Закрыть', cmClose,             kbAltF3;
 #Std_Stat
  }

 (sci1347Esc..sci1347Esc)
  {
   '~F1~ Помощь',   cmHelp,              kbF1;
   '~F3~ Выбрать',  cmPick,              kbF3;
   '~F4~ Перейти',  cmChoose,            kbF4;
   '~F7~ Добавить', cmInsert,            kbF7;
   '~Esc~ Закрыть', cmClose,             kbAltF3;
 #Std_Stat
  }

 (sci134ChooseEsc..sci134ChooseEsc)
  {
   '~F1~ Помощь',   cmHelp,              kbF1;
   '~F3~ Выбрать',  cmPick,              kbF3;
   '~F4~ Перейти',  cmChoose,            kbF4;
   '',              cmInsert,            kbF7;
   '',              cmDelete,            kbF8;
   '~Esc~',         cmClose,             kbAltF3;
 #Std_Stat
  }

 (sci1378C..sci1378C)
  {
   '~F1~ Помощь',   cmHelp,              kbF1;
   '~F3~ Выбрать',  cmPick,              kbF3;
   '',              cmEdit,              kbF4;
   '',              cmInsert,            kbF7;
   '',              cmDelete,            kbF8;
   '',              cmClose,             kbAltF3;
   '~Ctrl+Del~ Вернуться к базовой единице', cmClearBase,  kbCtrlDel;
 #Std_Stat
  }

 (sci1378CDel..sci1378CDel)
  {
   '~F1~ Помощь',   cmHelp,              kbF1;
   '~F3~ Выбрать',  cmPick,              kbF3;
   '',              cmEdit,              kbF4;
   '',              cmInsert,            kbF7;
   '',              cmDelete,            kbF8;
   '',              cmClose,             kbAltF3;
   '~Ctrl+Del~ Стереть ', cmClearBase,              kbCtrlDel;
 #Std_Stat
  }

 (sci1378Clear..sci1378Clear)
  {
   '~F1~ Помощь',   cmHelp,              kbF1;
   '~F3~ Выбрать',  cmPick,              kbF3;
   '',              cmEdit,              kbF4;
   '~F7~ Добавить', cmInsert,            kbF7;
   '~F8~ Удалить ', cmDelete,            kbF8;
    '',             cmClose,             kbAltF3;
   '~Ctrl+Del~ Стереть ', cmClear,              kbCtrlDel;
 #Std_Stat
  }

 (sci13Clear..sci13Clear)
  {
   '~F1~ Помощь',   cmHelp,              kbF1;
   '~F3~ Выбрать',  cmPick,              kbF3;
   '',              cmEdit,              kbF4;
   '',              cmInsert,            kbF7;
   '',              cmDelete,            kbF8;
   '',              cmClose,             kbAltF3;
   '~Ctrl+Del~ Стереть', cmClear,              kbCtrlDel;
 #Std_Stat
  }

 (sci1Clear..sci1Clear)
  {
   '~F1~ Помощь',   cmHelp,              kbF1;
   '',              cmPick,              kbF3;
   '',              cmEdit,              kbF4;
   '',              cmInsert,            kbF7;
   '',              cmDelete,            kbF8;
   '',              cmClose,             kbAltF3;
   '~Ctrl+Del~ Стереть', cmClear,              kbCtrlDel;
 #Std_Stat
  }

 (sci1EnterEsc..sci1EnterEsc)
  {
    '~F1~ Помощь',        cmHelp,             kbF1;
    '~Enter~ Выбор',      cmDefault,          kbEnter;
    '~Esc~ Закрыть',      cmClose,            kbAltF3;
 #Std_Stat
  }

 (sciT1EnEsc..sciT1EnEsc)
  {
    '~F1~ Помощь',   cmHelp,             kbF1;
    '~Enter~ Ввод',  cmOk,               kbEnter;
    '~Esc~ Закрыть', cmClose,            kbAltF3;
 #Std_Stat
  }

 (sciSD178EnEsc..sciSD178EnEsc)
  {
   '~F1~ Помощь',           cmHelp,              kbF1;
   '~F7~ Добавить',         cmInsert,            kbF7;
   '~F8~ Удалить ',         cmDelete,            kbF8;
   '~Enter~ Изменить',      cmEdit,              kbEnter;
   '~Esc~ Закрыть',         cmClose,             kbAltF3;
 #Std_Stat
  }

 (sciSDlg..sciSDlg)
  {
    '~F1~ Помощь',   cmHelp,             kbF1;
    '~Enter~ Ввод',  cmOk,               kbEnter;
    '~Esc~ Закрыть', cmClose,            kbAltF3;
 #Std_Stat
  }

 (sciT13EnEsc..sciT13EnEsc)
  {
    '~F1~ Помощь',   cmHelp,             kbF1;
    '~F3~ Выбрать',  cmPick,             kbF3;
    '~Enter~ Ввод',  cmOk,               kbEnter;
    '~Esc~ Закрыть', cmClose,            kbAltF3;
 #Std_Stat
  }

 (sci14ChooseEsc..sci14ChooseEsc)
  {
    '~F1~ Помощь',   cmHelp,              kbF1;
    '~F4~ Перейти',  cmChoose,            kbF4;
    '~Esc~ Закрыть', cmClose,             kbAltF3;
 #Std_Stat
  }

 (sci1EscSp..sci1EscSp)
  {
    '~F1~ Помощь',   cmHelp,              kbF1;
    '~Esc~ Закрыть', cmClose,             kbAltF3;
    '',              cmPick,              kbSpace;
 #Std_Stat
  }

 (sci147MCTepEsc..sci147MCTepEsc)
  {
    '~F1~ Помощь',        cmHelp,             kbF1;
    '~F4~ Изменить',      cmEdit,             kbF4;
    '~F7~ Добавить',      cmAddNewRec,        kbF7;
    '~Esc~ Закрыть',      cmClose,            kbAltF3;
    #Std_Stat
  }

 (sci1347MCTepEsc..sci1347MCTepEsc)
  {
    '~F1~ Помощь',        cmHelp,             kbF1;
    '~F3~ Выбрать',       cmPick,             kbF3;
    '~F4~ Изменить',      cmEdit,             kbF4;
    '~F7~ Добавить',      cmAddNewRec,        kbF7;
    '~Esc~ Закрыть',      cmClose,            kbAltF3;
    #Std_Stat
  }


 (sci1MCTepEnEsc..sci1MCTepEnEsc)
  {
    '~F1~ Помощь',        cmHelp,             kbF1;
    '~Enter~ Изменить',   cmEdit,          kbEnter;
    '~F7~ Добавить',      cmAddNewRec,        kbF7;
    '~Esc~ Закрыть',      cmClose,            kbAltF3;
    #Std_Stat
  }

  (sci147EnEscTreem..sci147EnEscTreem)
  {
  '~F1~ Помощь',                cmHelp,                 kbF1;
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmIns,                  kbF7;
  '~Ctrl+Enter~ Выбор',         cmAttrib,               kbCtrlEnter;
  '~Ctrl+Backspace~ Свернуть',  cmCompressLevel,        kbCtrlBack;
  '~Enter~ Раскрыть',           cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbEsc;
  #Std_Stat
  }

#include tppstats.sc

/*
╔═══════════════════════════════════════════════════════════════════════╗
║   Система   : Проект "ASUP/TEP"                                       ║
║   Версия    : 5.50                                                    ║
║   Назначение: Статус-контексты                                        ║
║   Разработал: Валиуллин К.Ф.    23.01.98                              ║
║   Изменения :                                                         ║
║        Автор: ________________________________ Дата: _______________  ║
║        Цель : ______________________________________________________  ║
╚═══════════════════════════════════════════════════════════════════════╝

------------------- Все закомментарено ---------------------

(sciMY1Esc..sciMY1Esc)
            {
              '~F1~ Помощь',        cmHelp,        kbF1;
              '~Esc~ Выход',        cmClose,       kbAltF3;
              #include STD_STAT.RC2
            }

(sciMY13Esc..sciMY13Esc)
            {
              '~F1~ Помощь',       cmHelp,        kbF1;
              '~F3~ Выбрать',       cmPick,        kbF3;
              '~Esc~ Выход',        cmClose,       kbAltF3;
              #include STD_STAT.RC2
            }

(sciMY1EnEsc..sciMY1EnEsc)
            {
              '~F1~ Помощь',        cmHelp,        kbF1;
              '~Enter~ Выбрать',    cmDefault,     kbEnter;
              '~Esc~ Выход',        cmClose,       kbAltF3;
              #Std_Stat
            }

(sciMY178EnEsc..sciMY178EnEsc)
            {
              '~F1~ Помощь',        cmHelp,        kbF1;
              '~F7~ Добавить',      cmInsert,      kbF7;
              '~F8~ Удалить',       cmDelete,      kbF8;
              '~Enter~ Выбрать',    cmDefault,     kbEnter;
              '~Esc~ Выход',        cmClose,       kbAltF3;
              #Std_Stat
            }
*/


/*
╔═════════════════════════════════════════════════════════════════════╗
║           ASUP/TPP (с) 1997, АО "Новый Атлант", НТО "Top Soft"      ║
║  Версия :     5.50                                                  ║
║  Разработал:  Леонтьев Д.М.        Дата: 28-05-1998                 ║
║  Назначение:  Статус-контекст (выбор из списка с пометками)         ║
║                                                                     ║
║   1. Дата модификации  ДД/ММ/ГГ     Кто модифицировал               ║
║      Что сделано:                                                   ║
║                                                                     ║
╚═════════════════════════════════════════════════════════════════════╝
*/
        (sci1InsPMEsc..sci1InsPMEsc)
        {
          '~F1~ Помощь',   cmHelp,       kbF1;
          '~Ins~ Пометить', cmMarkUnMark, kbIns;
          '~+~ Все',       cmSelectAll,  kbPlus;
          '~-~ Снять',     cmUnSelectAll,kbMinus;
          '',              cmSelectAll,  kbGrayPlus;
          '',              cmUnSelectAll,kbGrayMinus;
          '~Esc~ Отказ',   cmCancel,     kbAltF3;
          '~Enter~ Выбор', cmOk,         kbEnter;
          '',              cmDefault,    kbF2;
#Std_Stat
        }

        (sci1CtrlDelEsc..sci1CtrlDelEsc)
        {
        #F1
          '~Ctrl+Del~ Любые объекты',   cmDeleteRelated,kbCtrlDel;
          '~Esc~ Выход',                cmClose,        kbAltF3;
          '',                           cmQuit,         kbAltX;
#Std_Stat
        }
