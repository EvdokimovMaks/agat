//------------------------------------------------------------------------------
//                                                      (c) Корпорация ГАЛАКТИКА
//------------------------------------------------------------------------------
// Галактика 8.10 - Ядро
// Статус-строки
//------------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// Учебный процесс - для картотеки студентов
//-----------------------------------------------------------------------------
(scStaffReceptionT2MainPickSt..scStaffReceptionT2MainPickSt)
{
#F1
      '~F7~ Добавить',           cmStaffEmplInsert,       kbF7;
      '~F8~ Удалить',            cmDelete,                kbF8;
      '~Enter~ Изменить',        cmStaffDoCommonData,     kbEnter;
      '',                        cmStaffSeeDopInfo,       kbF9;
      '~Alt+B~ Фильтр',          cmStaffPrSetFlt,         kbAltB;
      '~Alt+S~ Сортировка ',     cmStaffSort,             kbAltS;
      '~Alt+F~ Фото'       ,     cmNal,                   kbAltF;
      '~Alt+-~ Распределение ' , cmAltMinus,              kbAltMinus;

#Ins
#PlusMinus
#Staf2Std
}

(scGalDial..scGalDial)
{
#F1
  '~Enter~ Выбор',              cmOk,                   kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(scGalDialPick..scGalDialPick)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~Enter~ Выбор',              cmOk,                   kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci178Esc..sci178Esc)
{
#F1
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci178EscBrNastr..sci178EscBrNastr)
{
#F1
  '~F7~ Добавить соответствие', cmInsert,               kbF7;
  '~F8~ Удалить соответствие',  cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci178EscSort..sci178EscSort)
{
#F1
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
  '~Alt+S~ Сортировка',         cmAccording,            kbAltS;
#Std_Stat
}

(sci178Ins..sci178Ins)
{
#F1
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
#Ins
  '',                           cmClose,                kbAltF3;
#Std_Stat
}

(sci1378Ins..sci1378Ins)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
#Ins
  '',                           cmClose,                kbAltF3;
#Std_Stat
}

(sci178InsPM..sci178InsPM)
{
#F1
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
#Ins
#PlusMinus
  '',                           cmClose,                kbAltF3;
#Std_Stat
}

(sci18InsPM..sci18InsPM)
{
#F1
  '~F8~ Удалить',               cmDelete,               kbF8;
#Ins
#PlusMinus
  '',                           cmClose,                kbAltF3;
#Std_Stat
}

(sci1378InsPM..sci1378InsPM)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
#Ins
#PlusMinus
  '',                           cmClose,                kbAltF3;
  '',                           cmStaffSeeDopInfo,      kbF9;
#Std_Stat
}

(sci1InsPM..sci1InsPM)
{
#F1
#Ins
#PlusMinus
  '',                           cmClose,                kbAltF3;
#Std_Stat
}

(sci14PM..sci14PM)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
#PlusMinus
  '',                           cmClose,                kbAltF3;
#Std_Stat
}

(sci14Esc..sci14Esc)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}
(sci14TabEsc..sci14TabEsc)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~Esc~ Выход',                cmClose,                kbAltF3;
  '',                           cmCtrlTab,              kbCtrlTab;
#Std_Stat
}

(sci134Esc..sci134Esc)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci1378Esc..sci1378Esc)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci1378EscSort..sci1378EscSort)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
  '~Alt+S~ Сортировка',         cmAccording,            kbAltS;
#Std_Stat
}

(sci17Esc..sci17Esc)
{
#F1
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci137Esc..sci137Esc)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci13478Esc..sci13478Esc)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci13478EscA..sci13478EscA)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci17EnEsc..sci17EnEsc)
{
#F1
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci1EnPM..sci1EnPM)
{
#F1
  '~Enter~ Выбор',              cmDefault,              kbEnter;
#PlusMinus
#Std_Stat
}

(sci17EnIns..sci17EnIns)
{
#F1
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
#Ins
#PlusMinus
#Std_Stat
}

(sciCursVal..sciCursVal)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~Enter~ Новый курс',         cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci147EnEsc..sci147EnEsc)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
!  '',                          cmDelete,               kbF8; не ставить!
#Std_Stat
}

(sci147EnEscForSE..sci147EnEscForSE)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
!  '',                          cmDelete,               kbF8; не ставить!
#Std3Stat
}

(sci1478EnEscA..sci1478EnEscA)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci1478EnEsc..sci1478EnEsc)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci14EnEsc..sci14EnEsc)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}
(sci14EnTabEsc..sci14EnTabEsc)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
  '',                           cmCtrlTab,              kbCtrlTab;
#Std_Stat
}

(sci14EnInsEsc..sci14EnInsEsc)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Ins
#PlusMinus
#Std_Stat
}

(sci14EnTabInsEsc..sci14EnTabInsEsc)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
  '',                           cmCtrlTab,              kbCtrlTab;
#Ins
#PlusMinus
#Std_Stat
}

(sci1SpEsc..sci1SpEsc)
{
#F1
  '~Пробел~ Ввод',              cmDefault,              kbSpace;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci1EnEsc..sci1EnEsc)
{
#F1
  '~Enter~ Ввод',               cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci1EnEsc2..sci1EnEsc2)
{
#F1
  '~Enter~ Переход',            cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci1EnEscDial..sci1EnEscDial)
{
#F1
  '~Enter~ Ввод',               cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci1Esc..sci1Esc)
{
#F1
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}


(sci178EscEge..sci178EscEge)
{
#F1
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
  '~Ctrl+F9~ Импорт',        cmImp,                  kbCtrlF9;
#Std_Stat
}


(sci1378EscEge..sci1378EscEge)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
  '~Ctrl+F9~ Импорт',        cmImp,                  kbCtrlF9;
#Std_Stat
}

(sci1EscIns..sci1EscIns)
{
#F1
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Ins
#PlusMinus
#Std_Stat
}

(sci1EscInsSort..sci1EscInsSort)
{
#F1
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Ins
#PlusMinus
  '~Alt+S~ Сортировка',         cmAccording,            kbAltS;
#Std_Stat
}

(sciEnEsc1Ins..sciEnEsc1Ins)
{
#F1
  '~Enter~ Ввод',               cmDefault,              kbEnter;
#Ins
#PlusMinus
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci13EscIns..sci13EscIns)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Ins
#PlusMinus
#Std_Stat
}

(sci14EscIns..sci14EscIns)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Ins
#PlusMinus
#Std_Stat
}

(sci13Esc..sci13Esc)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci13EnEsc..sci13EnEsc)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~Enter~ Ввод',               cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci178EnEsc..sci178EnEsc)
{
#F1
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci148EnEsc..sci148EnEsc)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci178EnEscA..sci178EnEscA)
{
#F1
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci178EnEscIns..sci178EnEscIns)
{
#F1
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
#Ins
#PlusMinus
}

(sci178EnEscIns1..sci178EnEscIns1)
{
#F1
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
#Ins
#PlusMinus
}

(sci178EnFiltrIns..sci178EnFiltrIns)
{
#F1
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_StatFiltr
#Ins
#PlusMinus
}

(sci1378En..sci1378En)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Enter~ Ввод',               cmDefault,              kbEnter;
#Std_Stat
}

(sci178En..sci178En)
{
#F1
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Enter~ Ввод',               cmDefault,              kbEnter;
#Std_Stat
}

(sci1378EnEsc..sci1378EnEsc)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Enter~ Ввод',               cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci1378TabEsc..sci1378TabEsc)
{
#F1
  '~F3~ Коррекция',             cmPick,                 kbF3;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Tab~ Панель',               cmValue9,               kbTab;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci138EnEsc..sci138EnEsc)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Enter~ Ввод',               cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci138Esc..sci138Esc)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci18EnEsc..sci18EnEsc)
{
#F1
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Enter~ Ввод',               cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci18EnEsc1..sci18EnEsc1)
{
#F1
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci1348Esc..sci1348Esc)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci148Esc..sci148Esc)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci148Ins..sci148Ins)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F8~ Удалить',               cmDelete,               kbF8;
#Ins
#PlusMinus
#Std_Stat
}

(sci148EnIns..sci148EnIns)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
#Ins
#PlusMinus
#Std_Stat
}

(sci147EnIns..sci147EnIns)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
#Ins
#PlusMinus
#Std_Stat
}

(sci1347EnIns..sci1347EnIns)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
#Ins
#PlusMinus
#Std_Stat
}

(sci147EnInsA..sci147EnInsA)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
#Ins
#Std_Stat
}

(sci1478EnIns..sci1478EnIns)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
#Ins
#PlusMinus
#Std_Stat
}

(sci17EnIns..sci17EnIns)
{
#F1
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
#Ins
#PlusMinus
#Std_Stat
}

(sci18EnIns..sci18EnIns)
{
#F1
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
#Ins
#PlusMinus
#Std_Stat
}

(sci1EnIns..sci1EnIns)
{
#F1
  '~Enter~ Выбор',              cmDefault,              kbEnter;
#Ins
#PlusMinus
#Std_Stat
}

(sci14EnIns..sci14EnIns)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
#Ins
#PlusMinus
#Std_Stat
}

(sci134EnEsc..sci134EnEsc)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~Enter~ Ввод',               cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci134EnIns..sci134EnIns)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~Enter~ Ввод',               cmDefault,              kbEnter;
#Ins
#PlusMinus
#Std_Stat
}

(sci1EnInsOK..sci1EnInsOK)
{
#F1
  '~Enter~ Выбор',              cmDefault,              kbEnter;
#Ins
#PlusMinus
  '~^En,^BkSp~ Уровень',        cmAttrib,               kbCtrlEnter;
#Std_Stat
}

(sci1EnInsSort..sci1EnInsSort)
{
#F1
  '~Enter~ Выбор',              cmDefault,              kbEnter;
#Ins
#PlusMinus
  '~Alt+S~ Сортировка',         cmAccording,            kbAltS;
#Std_Stat
}
(sci18Esc..sci18Esc)
{
#F1
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci18EscIns..sci18EscIns)
{
#F1
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Ins
#PlusMinus
#Std_Stat
}

(sci178EscIns..sci178EscIns)
{
#F1
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Ins
#PlusMinus
#Std_Stat
}

(sci1378EscIns..sci1378EscIns)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Ins
#PlusMinus
#Std_Stat
}

(sci1478Esc..sci1478Esc)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
  '',                           cmDefault,              kbF2;
#Std_Stat
}

(sci148EscIns..sci148EscIns)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Ins
#PlusMinus
  '',                           cmDefault,              kbF2;
#Std_Stat
}

(sci1478EscIns..sci1478EscIns)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Ins
#PlusMinus
  '',                           cmDefault,              kbF2;
  '',                           cmShiftF1,              kbAltE;
#Std_Stat
}

(sci13478EscIns..sci13478EscIns)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Ins
#PlusMinus
#Std_Stat
}

(scGetSomeMC_LIFO..scGetSomeMC_LIFO)
{
#F1
  '~Ins~',                      cmInsert,               kbIns;
  '~Del~',                      cmDelete,               kbDel;
  '~Space~ Пометка',            cmPick,                 kbSpace;
#PlusMinus
#Std_Stat
}

! Используется в спецификации накладных
(sci13789Esc..sci13789Esc)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~F9~ Тов/Усл',               cmOform,                kbF9;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

! Используется в спецификации накладных
(sci134789Esc..sci134789Esc)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~F9~ Тов/Усл',               cmSeeDopInfo,           kbF9;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

! Используется в спецификации накладных
(sci1789Esc..sci1789Esc)
{
#F1
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~F9~ Тов/Усл',               cmOform,                kbF9;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(scPakRaz..scPakRaz)
{
#F1
  '~^Enter~ Разнести',          cmAttrib,               kbCtrlEnter;
  '~Del~ Отменить',             cmDelete,               kbDel;
  '~F9~ Просмотр',              cmSeeDopInfo,           kbF9;
  '',                           cmMarkUnMark,           kbF3;
#Std_Stat
}

! Для импорта/экспорта (Антонович)
(sci1478EscWithFile..sci1478EscWithFile)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
  '',                           cmDefault,              kbF2;
  '~Ctrl+O~ Загрузить...',      cmOpenFile,             kbCtrlO;
  '~Ctrl+S~ Сохранить как...',  cmSaveFile,             kbCtrlS;
#Std_Stat
}

! ADVREP - отчеты по модулю "Учет договоров" (Барановский)
(sciADV1CtEnEsc..sciADV1CtEnEsc)
{
#F1
  '~Ctrl+Enter~ Документ',      cmEdit,                 kbCtrlEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sciADV19Esc..sciADV19Esc)
{
#F1
  '~F9~ Формат',                cmPFormat,              kbF9;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sciADV19CtEnEsc..sciADV19CtEnEsc)
{
#F1
  '~F9~ Формат',                cmPFormat,              kbF9;
  '~Ctrl+Enter~ Документ',      cmEdit,                 kbCtrlEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

//'Для ОС
(sciADV149Esc..sciADV149Esc)
{
#F1
  '~F4~ Документ',              cmEdit,                 kbF4;
  '~F9~ Формат',                cmPFormat,              kbF9;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sciADV14Esc..sciADV14Esc)
{
#F1
  '~F4~ Документ',              cmEdit,                 kbF4;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci14InsPMEnEsc..sci14InsPMEnEsc)
{
#F1
  '~F4~ Изменить',            cmEdit,                 kbF4;
#Ins
#PlusMinus
  '~Enter~ Выбор',            cmDefault,              kbEnter;
  '~Esc~ Выход',              cmClose,                kbAltF3;
  '',                         cmClose,                kbAltF3;
#Std_Stat
}
(sci178InsPMFile..sci178InsPMFile)
{
#F1
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '',                           cmClose,                kbAltF3;
  '',                           cmEditFile,             kbAltF4;
  '',                           cmDeleteFile,           kbAltF8;
#Ins
#PlusMinus
#Std_Stat
}
(sci13EnDelEsc..sci13EnDelEsc)
{
#F1
   '~F3~Выбор',                 cmPick,                 kbF3;
   '~Del~Стереть',              cmUnpick,               kbDel;
   '~Enter~ Ввод',              cmDefault,              kbEnter;
   '~Esc~ Закрыть',             cmClose,                kbAltF3;
#Std_Stat
}
(sci1478InsSaveFile..sci1478InsSaveFile)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~F9~ Запуск',                cmRunOperation,         kbF9;
!  '~Alt+B~ Фильтры',            cmFilterSave,           kbAltB;
!  '~Alt+H~ Протокол',           cmLog,                  kbAltH;
#Std_Stat
}

(sci14c4InsPMEsc..sci14c4InsPMEsc)
{
#F1
  '~F4~ Изменить',            cmEdit,                 kbF4;
  '~Shift+F4~ Изм в БД',      cmEditSopr,             kbShiftF4;
#Ins
#PlusMinus
  '~Esc~ Выход',              cmClose,                kbAltF3;
  '',                         cmClose,                kbAltF3;
#Std_Stat
}
(sci134c4InsPMEsc..sci134c4InsPMEsc)
{
#F1
  '~F3~Выбор',                cmPick,                 kbF3;
  '~F4~ Изменить',            cmEdit,                 kbF4;
  '~Shift+F4~ Изм в БД',      cmEditSopr,             kbShiftF4;
#Ins
#PlusMinus
  '~Esc~ Выход',              cmClose,                kbAltF3;
  '',                         cmClose,                kbAltF3;
#Std_Stat
}
(sci1c4Esc..sci1c4Esc)
{
#F1
  '~Shift+F4~ Изм в БД',      cmEditSopr,             kbShiftF4;
  '~Esc~ Выход',              cmClose,                kbAltF3;
  '',                         cmClose,                kbAltF3;
#Std_Stat
}

(sci1478EscInsC8..sci1478EscInsC8)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Ins
#PlusMinus
#Std_Stat
  '',                           cmDeleteFiltered,       kbCtrlF8;
}

(sci14CtrlEnDelInsPM..sci14CtrlEnDelInsPM)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~^Enter~ Разнести',          cmAttrib,               kbCtrlEnter;
  '~Del~ Отменить',             cmDelete,               kbDel;
#Ins
#PlusMinus
#Std_Stat
}

(sci13CtrlDelEsc..sci13CtrlDelEsc)
{
#F1
  '~F3~Выбор',                  cmPick,                 kbF3;
  '~Ctrl+Del~Удалить режим',    cmDeleteRelated,        kbCtrlDel;
  '~Esc~ Выход',                cmClose,                kbAltF3;
  '',                           cmQuit,                 kbAltX;
#Std_Stat
}

(sci1EnEscInsPM..sci1EnEscInsPM)
{
#F1
  '~Enter~ Ввод',               cmDefault,               kbEnter;
  '~Esc~ Отмена',               cmCancel,                kbEsc;
#Ins
#PlusMinus
#Std_Stat
}


(sci13CtrlShiftDelEsc..sci13CtrlShiftDelEsc)
{
#F1
  '~F3~Выбор',                    cmPick,                kbF3;
  '~Shift+Del~Нулевые значения',  cmdelkey,              kbShiftDel;
  '~Ctrl+Del~Ненулевые значения', cmDeleteRelated,       kbCtrlDel;
  '~Esc~ Выход',                  cmClose,               kbAltF3;
  '',                             cmQuit,                kbAltX;
#Std_Stat
}

(sci1378CtrlShiftDelEsc..sci1378CtrlShiftDelEsc)
{
#F1
  '~F3~ Выбор',                   cmPick,                kbF3;
  '~F7~ Добавить',                cmInsert,              kbF7;
  '~F8~ Удалить',                 cmDelete,              kbF8;
  '~Shift+Del~Нулевые значения',  cmdelkey,              kbShiftDel;
  '~Ctrl+Del~Ненулевые значения', cmDeleteRelated,       kbCtrlDel;
  '~Esc~ Выход',                  cmClose,               kbAltF3;
  '',                             cmQuit,                kbAltX;
#Std_Stat
}


//*******************************************************************
// Tolya (для "Платежного календаря") - обработка PageUp, PageDown
(sci178EscPg..sci178EscPg)
{
#F1
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
  '',                           cmPgUp,                 kbPgUp;
  '',                           cmPgDn,                 kbPgDn;
#Std_Stat
}
(sci1378EscPg..sci1378EscPg)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
  '',                           cmPgUp,                 kbPgUp;
  '',                           cmPgDn,                 kbPgDn;
#Std_Stat
}
(sci14EnEscPg..sci14EnEscPg)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
  '',                           cmPgUp,                 kbPgUp;
  '',                           cmPgDn,                 kbPgDn;
#Std_Stat
}
(sci1EscPg..sci1EscPg)
{
#F1
  '~Esc~ Выход',                cmClose,                kbAltF3;
  '',                           cmPgUp,                 kbPgUp;
  '',                           cmPgDn,                 kbPgDn;
#Std_Stat
}
(sci148EscPg..sci148EscPg)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~Esc~ Выход',                cmClose,                kbAltF3;
  '',                           cmPgUp,                 kbPgUp;
  '',                           cmPgDn,                 kbPgDn;
#Std_Stat
}

(sci13EnEscPg..sci13EnEscPg)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~Esc~ Выход',                cmClose,                kbAltF3;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '',                           cmPgUp,                 kbPgUp;
  '',                           cmPgDn,                 kbPgDn;
#Std_Stat
}

(sci1EnEscPg..sci1EnEscPg)
{
#F1
  '~Esc~ Выход',                cmClose,                kbAltF3;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '',                           cmPgUp,                 kbPgUp;
  '',                           cmPgDn,                 kbPgDn;
#Std_Stat
}

//*******************************************************************

(sci1378CtrlDelEsc..sci1378CtrlDelEsc)
 {
#F1
   '~F3~ Выбор',                cmPick,                 kbF3;
   '~F7~ Добавить',             cmInsert,               kbF7;
   '~F8~ Удалить',              cmDelete,               kbF8;
   '~Ctrl+Del~ Все счета',      cmDeleteRelated,        kbCtrlDel;
   '~Esc~ Выход',               cmClose,                kbAltF3;
#Std_Stat
 }

//*******************************************************************
// шапка ТХО
(sci1378c9Esc..sci1378c9Esc)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~^F9~ Проверка',             cmValue6,               kbCtrlF9;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}

(sci178c9Esc..sci178c9Esc)
{
#F1
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~^F9~ Проверка',             cmValue6,               kbCtrlF9;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
}
//*******************************************************************
// средняя панель ТХО
(sci13c378c9Pg..sci13c378c9Pg)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~Shift+F3~ Мастер',          cmBuhCalculator,        kbShiftF3;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~^F9~ Проверка',             cmValue6,               kbCtrlF9;
  '',                           cmPgUp,                 kbPgUp;
  '',                           cmPgDn,                 kbPgDn;
#Std_Stat
}

(sci178c9Pg..sci178c9Pg)
{
#F1
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~^F9~ Проверка',             cmValue6,               kbCtrlF9;
  '',                           cmPgUp,                 kbPgUp;
  '',                           cmPgDn,                 kbPgDn;
#Std_Stat
}

(sci1378c9Pg..sci1378c9Pg)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~^F9~ Проверка',             cmValue6,               kbCtrlF9;
  '',                           cmPgUp,                 kbPgUp;
  '',                           cmPgDn,                 kbPgDn;
#Std_Stat
}

//*******************************************************************
// нижняя панель ТХО
(sci13c378c9..sci13c378c9)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~Shift+F3~ Мастер',          cmBuhCalculator,        kbShiftF3;
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~^F9~ Проверка',             cmValue6,               kbCtrlF9;
#Std_Stat
}

(sci178c9..sci178c9)
{
#F1
  '~F7~ Добавить',              cmInsert,               kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~^F9~ Проверка',             cmValue6,               kbCtrlF9;
#Std_Stat
}
//*******************************************************************
// browse TXO
(sci1478c9EnEscIns..sci1478c9EnEscIns)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
  '~F7~ Добавить',              cmAddNewRec,            kbF7;
  '~F8~ Удалить',               cmDelete,               kbF8;
  '~^F9~ Проверка',             cmValue6,               kbCtrlF9;
  '~Enter~ Выбор',              cmDefault,              kbEnter;
  '~Esc~ Выход',                cmClose,                kbAltF3;
#Std_Stat
#Ins
#PlusMinus
}
(sci13EscPg..sci13EscPg)
{
#F1
  '~F3~ Выбор',                 cmPick,                 kbF3;
  '~Esc~ Выход',                cmClose,                kbAltF3;
  '',                           cmPgUp,                 kbPgUp;
  '',                           cmPgDn,                 kbPgDn;
#Std_Stat
}

(sci14InsPM..sci14InsPM)
{
#F1
  '~F4~ Изменить',              cmEdit,                 kbF4;
#Ins
#PlusMinus
  '',                           cmClose,                kbAltF3;
#Std_Stat
}

(sci178EnEscInsPM..sci178EnEscInsPM)
{
#F1
  '~F7~ Добавить',              cmInsert,  kbF7;
  '~F8~ Удалить',               cmDelete,  kbF8;
  '~Enter~ Изменить',           cmDefault, kbEnter;
#Std_Stat
#Ins
#PlusMinus
  '~Esc~ Выход',                cmClose,   kbAltF3;
#Std_Stat
}
(sci1EscInsL..sci1EscInsL)
  {
#F1
  '~Esc~ Выход',                cmClose,                kbEsc;
#Ins
#Std_Stat
  }
