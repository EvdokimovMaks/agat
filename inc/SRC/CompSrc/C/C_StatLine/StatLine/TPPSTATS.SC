/*
╔═════════════════════════════════════════════════════════════════════╗
║           ASUP/TPP (с) 1997, АО "Новый Атлант", НТО "Top Soft"      ║
║  Версия :     5.10                                                  ║
║  Разработал:  Морозов А.Д.                                          ║
║  Назначение:  Статус-контексты ТПП                                  ║
║                                                                     ║
║   1. Дата модификации  ДД/ММ/ГГ     Кто модифицировал               ║
║      Что сделано:                                                   ║
║                                                                     ║
╚═════════════════════════════════════════════════════════════════════╝
*/
(sciTPP1478Esc..sciTPP1478Esc)
   {
      '~F1~ Помощь',        cmHelp,         kbF1;
      '~F4~ Изменить',      cmEdit,         kbF4;
      '~F7~ Добавить',      cmInsert,       kbF7;
      '~F8~ Удалить',       cmDelete,       kbF8;
      '~Esc~ Выход',        cmClose,        kbAltF3;
!     '',     cmPrintDoc,          kbCtrlP;
      #Std_Stat
   }

(sciTPP13478Esc..sciTPP13478Esc)
   {
      '~F1~ Помощь',        cmHelp,         kbF1;
      '~F3~ Выбрать',       cmPick,         kbF3;
      '~F4~ Изменить',      cmEdit,         kbF4;
      '~F7~ Добавить',      cmInsert,       kbF7;
      '~F8~ Удалить',       cmDelete,       kbF8;
      '~Esc~ Выход',        cmClose,        kbAltF3;
      '',                   cmDefault,      kbF2;
!     '',     cmPrintDoc,          kbCtrlP;
      #Std_Stat
   }

(sciTPP1478CPEsc..sciTPP1478CPEsc)
   {
      '~F1~ Помощь',        cmHelp,         kbF1;
      '~F4~ Изменить',      cmEdit,         kbF4;
      '~F7~ Добавить',      cmInsert,       kbF7;
      '~F8~ Удалить',       cmDelete,       kbF8;
      '',                   cmClose,        kbAltF3;
      '',                   cmDefault,      kbF2;
      '~Ctrl+P~ Печать',    cmPrintDoc,          kbCtrlP;
      #Std_Stat
   }

(sciTPP13478CPEsc..sciTPP13478CPEsc)
   {
      '~F1~ Помощь',        cmHelp,         kbF1;
      '~F3~ Выбрать',       cmPick,         kbF3;
      '~F4~ Изменить',      cmEdit,         kbF4;
      '~F7~ Добавить',      cmInsert,       kbF7;
      '~F8~ Удалить',       cmDelete,       kbF8;
      '',                   cmClose,        kbAltF3;
      '',                   cmDefault,      kbF2;
      '~Ctrl+P~ Печать',    cmPrintDoc,     kbCtrlP;
      #Std_Stat
   }

(sciTpp17t8EnEsc..sciTpp17t8EnEsc)
   {
      '~F1~ Помощь',        cmHelp,         kbF1;
      '~F7~ Добавить',      cmTppIns,       kbF7;
      '~F8~ Удалить ',      cmDelete,       kbF8;
      '~Enter~ Тех.процесс', cmDefault,     kbEnter;
      '~Esc~ Закрыть',      cmClose,        kbAltF3;
      #Std_Stat
   }

(sciTpp137t8EnEsc..sciTpp137t8EnEsc)
   {
      '~F1~ Помощь',        cmHelp,         kbF1;
      '~F3~ +/- Осн.',      cmPick,         kbF3;
      '~F7~ Добавить',      cmTppIns,       kbF7;
      '~F8~ Удалить ',      cmDelete,       kbF8;
      '~Enter~ Изменить',   cmDefault,     kbEnter;
      '~Esc~ Закрыть',      cmClose,        kbAltF3;
      #Std_Stat
   }

(sciTpp1478EnEscNtc..sciTpp1478EnEscNtc)
   {
      '~F1~ Помощь',        cmHelp,         kbF1;
      '~F4~ Извещение',     cmEdit,         kbF4;
      '~F7~ Добавить',      cmTppIns,       kbF7;
      '~F8~ Удалить ',      cmTppDel,       kbF8;
      '~Enter~ Тех.процесс', cmDefault,     kbEnter;
      '~Esc~ Закрыть',      cmClose,        kbAltF3;
      #Std_Stat
   }

(sciTpp178Esc..sciTpp178Esc)
   {
      '~F1~ Помощь',        cmHelp,         kbF1;
      '~F7~ Добавить',      cmTppIns,       kbF7;
      '~F8~ Удалить ',      cmDeleteRecord, kbF8;
      '~Esc~ Закрыть',      cmClose,        kbAltF3;
      #Std_Stat
   }

(sciTpp178EnEsc..sciTpp178EnEsc)
   {
      '~F1~ Помощь',        cmHelp,         kbF1;
      '~F7~ Добавить',      cmInsert,       kbF7;
      '~F8~ Удалить ',      cmDelete,       kbF8;
      '~Enter~ Изменить',   cmEdit,     kbEnter;
      '~Esc~ Закрыть',      cmClose,        kbAltF3;
      #Std_Stat
   }

(sciTpp1378EnEsc..sciTpp1378EnEsc)
   {
      '~F1~ Помощь',        cmHelp,         kbF1;
      '~F3~ Выбрать',       cmPick,         kbF3;
      '~F7~ Добавить',      cmInsert,       kbF7;
      '~F8~ Удалить ',      cmDelete,       kbF8;
      '~Enter~ Изменить',   cmEdit,     kbEnter;
      '~Esc~ Закрыть',      cmClose,        kbAltF3;
      #Std_Stat
   }

(sciTpp18Esc..sciTpp18Esc)
   {
      '~F1~ Помощь',        cmHelp,         kbF1;
      '~F8~ Удалить ',      cmDelete,       kbF8;
      '~Esc~ Закрыть',      cmClose,        kbAltF3;
      #Std_Stat
   }

(sciTpp138Esc..sciTpp138Esc)
   {
      '~F1~ Помощь',        cmHelp,         kbF1;
      '~F3~ Выбрать',       cmPick,         kbF3;
      '~F8~ Удалить ',      cmDelete,       kbF8;
      '~Esc~ Закрыть',      cmClose,        kbAltF3;
      #Std_Stat
   }

(sciTpp1EnEsc..sciTpp1EnEsc)
   {
      '~F1~ Помощь',        cmHelp,         kbF1;
      '~Enter~ Вывод',      cmOK,           kbEnter;
      '~Esc~ Выход',        cmClose,        kbAltF3;
      #Std_Stat
   }

(sciTpp_1478EnEsc..sciTpp_1478EnEsc)
   {
      '~F1~ Помощь',        cmHelp,         kbF1;
      '~F4~ Изменить',      cmEdit,         kbF4;
      '~F7~ Добавить',      cmInsert,       kbF7;
      '~F8~ Удалить ',      cmDelete,       kbF8;
      '~Enter~ Выбор',      cmDefault,      kbEnter;
      '~Esc~ Закрыть',      cmClose,        kbAltF3;
      #Std_Stat
   }

(sciTpp_13478EnEsc..sciTpp_13478EnEsc)
   {
      '~F1~ Помощь',        cmHelp,         kbF1;
      '~F3~ Выбрать',       cmPick,         kbF3;
      '~F4~ Изменить',      cmEdit,         kbF4;
      '~F7~ Добавить',      cmInsert,       kbF7;
      '~F8~ Удалить ',      cmDelete,       kbF8;
      '~Enter~ Выбор',      cmDefault,      kbEnter;
      '~Esc~ Закрыть',      cmClose,        kbAltF3;
      #Std_Stat
   }

(sciTpp_17ViewEsc..sciTpp_17ViewEsc)
   {
      '~F1~ Помощь',            cmHelp,         kbF1;
      '~F7~ Добавить',          cmInsert,       kbF7;
      '~Enter~ Изменить',       cmDefault,      kbEnter;
      '~Esc~ Закрыть',          cmClose,        kbAltF3;
      #Std_Stat
   }

(sciTpp_147SelEsc..sciTpp_147SelEsc)
   {
      '~F1~ Помощь',        cmHelp,         kbF1;
      '~F4~ Изменить',      cmEdit,         kbF4;
      '~F7~ Добавить',      cmInsert,       kbF7;
      '~Enter~ Выбор',      cmDefault,      kbEnter;
      '~Esc~ Закрыть',      cmClose,        kbAltF3;
      #Std_Stat
   }

(sciTpp_1SelEsc..sciTpp_1SelEsc)
   {
      '~F1~ Помощь',        cmHelp,         kbF1;
      '~Enter~ Выбор',      cmDefault,      kbEnter;
      '~Esc~ Закрыть',      cmClose,        kbAltF3;
      #Std_Stat
   }

(sciBOM14Esc..sciBOM14Esc)
   {
      '~F1~ Помощь',         cmHelp,        kbF1;
      '~F4~ Заголовок',      cmEdit,        kbF4;
      '~Enter~ Спецификация',cmDefault,     kbEnter;
      '~Esc~ Выход',         cmClose,       kbAltF3;
      #Std_Stat
   }

(sciBOM147Esc..sciBOM147Esc)
   {
      '~F1~ Помощь',         cmHelp,        kbF1;
      '~F4~ Заголовок',      cmEdit,        kbF4;
      '~F7~ Добавить',       cmInsert,      kbF7;
      '~Enter~ Спецификация',cmDefault,     kbEnter;
      '~Esc~ Выход',         cmClose,       kbAltF3;
      #Std_Stat
   }

(sciBOM13478Esc..sciBOM13478Esc)
   {
      '~F1~ Помощь',         cmHelp,        kbF1;
      '~F3~ Выбрать',        cmPick,        kbF3;
      '~F4~ Заголовок',      cmEdit,        kbF4;
      '~F7~ Добавить',       cmInsert,      kbF7;
      '~F8~ Удалить ',       cmDelete,      kbF8;
      '~Enter~ Спецификация',cmDefault,     kbEnter;
      '~Esc~ Выход',         cmClose,       kbAltF3;
      #Std_Stat
   }

(sciBOM1478Esc..sciBOM1478Esc)
   {
      '~F1~ Помощь',         cmHelp,        kbF1;
      '~F4~ Заголовок',      cmEdit,        kbF4;
      '~F7~ Добавить',       cmInsert,      kbF7;
      '~F8~ Удалить ',       cmDelete,      kbF8;
      '~Enter~ Спецификация',cmDefault,     kbEnter;
      '~Esc~ Выход',         cmClose,       kbAltF3;
      #Std_Stat
   }

(sciBOM14EscIns..sciBOM14EscIns)
   {
      '~F1~ Помощь',         cmHelp,        kbF1;
      '~F4~ Заголовок',      cmEdit,        kbF4;
      '~Enter~ Спецификация',cmDefault,     kbEnter;
      '~Esc~ Выход',         cmClose,       kbAltF3;
      #Ins
      #Std_Stat
   }

(sciBOM147EscIns..sciBOM147EscIns)
   {
      '~F1~ Помощь',         cmHelp,        kbF1;
      '~F4~ Заголовок',      cmEdit,        kbF4;
      '~F7~ Добавить',       cmInsert,      kbF7;
      '~Enter~ Спецификация',cmDefault,     kbEnter;
      '~Esc~ Выход',         cmClose,       kbAltF3;
      #Ins
      #Std_Stat
   }

(sciBOM13478EscIns..sciBOM13478EscIns)
   {
      '~F1~ Помощь',         cmHelp,        kbF1;
      '~F3~ Выбрать',        cmPick,        kbF3;
      '~F4~ Заголовок',      cmEdit,        kbF4;
      '~F7~ Добавить',       cmInsert,      kbF7;
      '~F8~ Удалить ',       cmDelete,      kbF8;
      '~Enter~ Спецификация',cmDefault,     kbEnter;
      '~Esc~ Выход',         cmClose,       kbAltF3;
      #Ins
      #Std_Stat
   }

(sciBOM1478EscIns..sciBOM1478EscIns)
   {
      '~F1~ Помощь',         cmHelp,        kbF1;
      '~F4~ Заголовок',      cmEdit,        kbF4;
      '~F7~ Добавить',       cmInsert,      kbF7;
      '~F8~ Удалить ',       cmDelete,      kbF8;
      '~Enter~ Спецификация',cmDefault,     kbEnter;
      '~Esc~ Выход',         cmClose,       kbAltF3;
      #Ins
      #Std_Stat
   }

(sciBOM14EscTree..sciBOM14EscTree)
   {
      '~F1~ Помощь',         cmHelp,         kbF1;
      '~F4~ Заголовок',      cmEdit,         kbF4;
      '~Enter~ Спецификация',cmDefault,      kbEnter;
 '~Ctrl+Enter~ Распахнуть'  ,cmTreeOpenNode,  kbCtrlEnter;
 '~Ctrl+Backspace~ Свернуть',cmTreeCloseNode,kbCtrlBack;
      '~Esc~ Выход',         cmClose,        kbAltF3;
      #Std_Stat
   }

(sciBOM147EscTree..sciBOM147EscTree)
   {
      '~F1~ Помощь',         cmHelp,         kbF1;
      '~F4~ Заголовок',      cmEdit,         kbF4;
      '~F7~ Добавить',       cmInsert,       kbF7;
      '~Enter~ Спецификация',cmDefault,      kbEnter;
 '~Ctrl+Enter~ Распахнуть'  ,cmTreeOpenNode,  kbCtrlEnter;
 '~Ctrl+Backspace~ Свернуть',cmTreeCloseNode,kbCtrlBack;
      '~Esc~ Выход',         cmClose,        kbAltF3;
      #Std_Stat
   }

(sciBOM1478EscTree..sciBOM1478EscTree)
   {
      '~F1~ Помощь',         cmHelp,         kbF1;
      '~F4~ Заголовок',      cmEdit,         kbF4;
      '~F7~ Добавить',       cmInsert,       kbF7;
      '~F8~ Удалить ',       cmDelete,       kbF8;
      '~Enter~ Спецификация',cmDefault,      kbEnter;
 '~Ctrl+Enter~ Распахнуть'  ,cmTreeOpenNode,  kbCtrlEnter;
 '~Ctrl+Backspace~ Свернуть',cmTreeCloseNode,kbCtrlBack;
      '~Esc~ Выход',         cmClose,        kbAltF3;
      #Std_Stat
   }

(sciBOM13478EscTree..sciBOM13478EscTree)
   {
      '~F1~ Помощь',         cmHelp,         kbF1;
      '~F3~ Выбрать',        cmPick,         kbF3;
      '~F4~ Заголовок',      cmEdit,         kbF4;
      '~F7~ Добавить',       cmInsert,       kbF7;
      '~F8~ Удалить ',       cmDelete,       kbF8;
      '~Enter~ Спецификация',cmDefault,      kbEnter;
 '~Ctrl+Enter~ Распахнуть'  ,cmTreeOpenNode,  kbCtrlEnter;
 '~Ctrl+Backspace~ Свернуть',cmTreeCloseNode,kbCtrlBack;
      '~Esc~ Выход',         cmClose,        kbAltF3;
      #Std_Stat
   }

(sciBOM1EscTreeS..sciBOM1EscTreeS)
   {
      '~F1~ Помощь',         cmHelp,         kbF1;
 '~Ctrl+Enter~ Распахнуть'  ,cmTreeOpenNode,  kbCtrlEnter;
 '~Ctrl+Backspace~ Свернуть',cmTreeCloseNode,kbCtrlBack;
      '~Esc~ Выход',         cmClose,        kbAltF3;
      #Std_Stat
   }

(sciBOM14EscTreeS..sciBOM14EscTreeS)
   {
      '~F1~ Помощь',         cmHelp,         kbF1;
      '~F4~ Изменить',       cmEdit,         kbF4;
 '~Ctrl+Enter~ Распахнуть'  ,cmTreeOpenNode,  kbCtrlEnter;
 '~Ctrl+Backspace~ Свернуть',cmTreeCloseNode,kbCtrlBack;
      '~Esc~ Выход',         cmClose,        kbAltF3;
      #Std_Stat
   }

(sciBOM13478EscTreeS..sciBOM13478EscTreeS)
   {
      '~F1~ Помощь',         cmHelp,         kbF1;
      '~F3~ Выбрать',        cmPick,         kbF3;
      '~F4~ Изменить',       cmEdit,         kbF4;
      '~F7~ Добавить',       cmInsert,       kbF7;
      '~F8~ Удалить ',       cmDelete,       kbF8;
 '~Ctrl+Enter~ Распахнуть'  ,cmTreeOpenNode,  kbCtrlEnter;
 '~Ctrl+Backspace~ Свернуть',cmTreeCloseNode,kbCtrlBack;
      '~Esc~ Выход',         cmClose,        kbAltF3;
      #Ins
      #Std_Stat
   }

(sciBOM1478EscTreeS..sciBOM1478EscTreeS)
   {
      '~F1~ Помощь',         cmHelp,         kbF1;
      '~F4~ Изменить',       cmEdit,         kbF4;
      '~F7~ Добавить',       cmInsert,       kbF7;
      '~F8~ Удалить ',       cmDelete,       kbF8;
 '~Ctrl+Enter~ Распахнуть'  ,cmTreeOpenNode,  kbCtrlEnter;
 '~Ctrl+Backspace~ Свернуть',cmTreeCloseNode,kbCtrlBack;
      '~Esc~ Выход',         cmClose,        kbAltF3;
      #Ins
      #Std_Stat
    }

(sciBOM1378EscTreeS..sciBOM1378EscTreeS)
   {
      '~F1~ Помощь',         cmHelp,         kbF1;
      '~F3~ Выбрать',        cmPick,         kbF3;
      '~F7~ Добавить',       cmInsert,       kbF7;
      '~F8~ Удалить ',       cmDelete,       kbF8;
 '~Ctrl+Enter~ Распахнуть'  ,cmTreeOpenNode,  kbCtrlEnter;
 '~Ctrl+Backspace~ Свернуть',cmTreeCloseNode,kbCtrlBack;
      '~Esc~ Выход',         cmClose,        kbAltF3;
      #Ins
      #Std_Stat
   }

(sciBOM178EscTreeS..sciBOM178EscTreeS)
   {
      '~F1~ Помощь',         cmHelp,         kbF1;
      '~F7~ Добавить',       cmInsert,       kbF7;
      '~F8~ Удалить ',       cmDelete,       kbF8;
 '~Ctrl+Enter~ Распахнуть'  ,cmTreeOpenNode,  kbCtrlEnter;
 '~Ctrl+Backspace~ Свернуть',cmTreeCloseNode,kbCtrlBack;
      '~Esc~ Выход',         cmClose,        kbAltF3;
      #Ins
      #Std_Stat
    }
