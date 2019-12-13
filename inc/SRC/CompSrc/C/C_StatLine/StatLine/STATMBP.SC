!╔═══════════════════════════════════════════════════════════════════════════╗
!║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
!║ Проект        : ГАЛАКТИКА                                                 ║
!║ Система       : МБП                                                       ║
!║ Версия        : 5.5                                                       ║
!║ Назначение    : Статус-строки                                             ║
!║ Ответственный : Станевич Юрий Олегович                                    ║
!╚═══════════════════════════════════════════════════════════════════════════╝

! Текущее наличие

(sciMBP1EscIns..sciMBP1EscIns)
{
#F1
  '~F9~ Выбор разреза',  cmPFormat,      kbF9;
  '~Ins~ Пометить одну', cmMarkUnMark,   kbIns;
#PlusMinus
  '~Enter~ Выбрать',     cmDefault,      kbEnter;
  '~Esc~ Закрыть',       cmClose,        kbAltF3;
#Std_Stat
}

(sciMBP13EscIns..sciMBP13EscIns)
{
#F1
  '~F3~ Выбор количества', cmPick,       kbF3;
  '~F9~ Выбор разреза',  cmPFormat,      kbF9;
  '~Ins~ Пометить одну', cmMarkUnMark,   kbIns;
#PlusMinus
  '~Enter~ Выбрать',     cmDefault,      kbEnter;
  '~Esc~ Закрыть',       cmClose,        kbAltF3;
#Std_Stat
}

(sciMBP1Esc..sciMBP1Esc)
{
#F1
  '~F9~ Выбор разреза', cmPFormat,      kbF9;
  '~Esc~ Закрыть',      cmClose,        kbAltF3;
#Std_Stat
}

! КУ и другие документы

(sciMBP178Esc..sciMBP178Esc)
{
#F1
  '~F9~ Формат',        cmPFormat,      kbF9;
  '~F7~ Добавить',      cmInsert,       kbF7;
  '~F8~ Удалить ',      cmDelete,       kbF8;
  '~Esc~ Закрыть',      cmClose,        kbAltF3;
  '',                   cmAkt,          kbAltE;
#Std_Stat
}

(sciMBP1378Esc..sciMBP1378Esc)
{
#F1
  '~F3~ Выбор',         cmPick,         kbF3;
  '~F9~ Формат',        cmPFormat,      kbF9;
  '~F7~ Добавить',      cmInsert,       kbF7;
  '~F8~ Удалить',       cmDelete,       kbF8;
  '~Esc~ Закрыть',      cmClose,        kbAltF3;
  '',                   cmAkt,          kbAltE;
#Std_Stat
}

(sciMBP13478Esc..sciMBP13478Esc)
{
#F1
  '~F3~ Выбор',         cmPick,         kbF3;
  '~F4~ Изменить',      cmEdit,         kbF4;
  '~F9~ Формат',        cmPFormat,      kbF9;
  '~F7~ Добавить',      cmInsert,       kbF7;
  '~F8~ Удалить',       cmDelete,       kbF8;
  '~Esc~ Закрыть',      cmClose,        kbAltF3;
  '',                   cmAkt,          kbAltE;
#Std_Stat
}

(sciMBP178EnEsc..sciMBP178EnEsc)
{
#F1
  '~F7~ Добавить',      cmInsert,       kbF7;
  '~F8~ Удалить',       cmDelete,       kbF8;
  '~Enter~ Выбор',      cmDefault,      kbEnter;
  '~Esc~ Закрыть',      cmClose,        kbAltF3;
  '',                   cmAkt,          kbAltE;
#Std_Stat
}

(sciMBP178EnIns..sciMBP178EnIns)
{
#F1
  '~F7~ Добавить',      cmInsert,       kbF7;
  '~F8~ Удалить',       cmDelete,       kbF8;
  '~Enter~ Выбор',      cmDefault,      kbEnter;
  '~Esc~ Закрыть',      cmClose,        kbAltF3;
  '~Ins~ Пометить одну', cmMarkUnMark,   kbIns;
#PlusMinus
  '',                   cmAkt,          kbAltE;
#Std_Stat
}

(sciMBP178EscIns..sciMBP178EscIns)
{
#F1
  '~F9~ Формат',        cmPFormat,      kbF9;
  '~F7~ Добавить',      cmInsert,       kbF7;
  '~F8~ Удалить ',      cmDelete,       kbF8;
  '~Esc~ Закрыть',      cmClose,        kbAltF3;
  '~Ins~ Пометить одну', cmMarkUnMark,   kbIns;
#PlusMinus
  '',                   cmAkt,          kbAltE;
#Std_Stat
}

(sciMBP1378EscIns..sciMBP1378EscIns)
{
#F1
  '~F3~ Выбор',         cmPick,         kbF3;
  '~F9~ Формат',        cmPFormat,      kbF9;
  '~F7~ Добавить',      cmInsert,       kbF7;
  '~F8~ Удалить',       cmDelete,       kbF8;
  '~Esc~ Закрыть',      cmClose,        kbAltF3;
  '~Ins~ Пометить одну', cmMarkUnMark,   kbIns;
#PlusMinus
  '',                   cmAkt,          kbAltE;
#Std_Stat
}

! Отчеты

(sciMBP13RepFlt..sciMBP13RepFlt)
{
#F1
  '~F3~ Выбор',         cmPick,         kbF3;
  '~Ctrl+F3~ Выборка',  cmRestoreDoc,   kbCtrlF3;
  '~Del~ - Снять',      cmDelOnProtect, kbDel;
  '~Esc~ Закрыть',      cmClose,        kbAltF3;
#Std_Stat
}

(sciMBPRep1347..sciMBPRep1347)
{
#F1
  '~F3~ Выбор',         cmPick,         kbF3;
  '~F4~ Наименование',  cmEdit,         kbF4;
  '~F7~ Добавить',      cmInsert,       kbF7;
  '~Esc~ Закрыть',      cmClose,        kbAltF3;
#Std_Stat
}

(sciMBPNst148EnEsc..sciMBPNst148EnEsc)
{
#F1
  '~F4~ Переименовать', cmEdit,         kbF4;
  '~F8~ Удалить',       cmDelete,       kbF8;
  '~Enter~ Ввод',       cmDefault,      kbEnter;
  '~Esc~ Закрыть',      cmClose,        kbAltF3;
#Std_Stat
}
