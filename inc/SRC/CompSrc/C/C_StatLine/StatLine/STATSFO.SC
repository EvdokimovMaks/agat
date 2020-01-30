!╔═══════════════════════════════════════════════════════════════════════════╗
!║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
!║ Проект        : ГАЛАКТИКА                                                 ║
!║ Система       : СпецОдежда                                                ║
!║ Версия        : 5.5                                                       ║
!║ Назначение    : Статус-строки                                             ║
!║ Ответственный : Станевич Юрий Олегович                                    ║
!╚═══════════════════════════════════════════════════════════════════════════╝

(sciSFO1Esc..sciSFO1Esc)
{
#F1
  '~F9~ Формат',        cmPFormat,      kbF9;
  '~Esc~ Закрыть',      cmClose,        kbAltF3;
#Std_Stat
}

(sciSFO13Esc..sciSFO13Esc)
{
#F1
  '~F3~ Выбор',         cmPick,         kbF3;
  '~F9~ Формат',        cmPFormat,      kbF9;
  '~Esc~ Закрыть',      cmClose,        kbAltF3;
#Std_Stat
}

(sciSFOEscIns..sciSFOEscIns)
{
#F1
  '~Ins~ Пометить',     cmMarkUnMark,   kbIns;
  '~Del~ Отмена',       cmDelOnProtect, kbDel;
#PlusMinus
  '~Enter~ Выбор',      cmDefault,      kbEnter;
  '~Esc~ Закрыть',      cmClose,        kbEsc;
#Std_Stat
}

(sciSFO189Esc..sciSFO189Esc)
{
#F1
  '~F8~ Удалить',       cmDelete,       kbF8;
  '~F9~ Формат',        cmPFormat,      kbF9;
  '~Alt+B~ Фильтр',     cmFilterSave,   kbAltB;
  '~Esc~ Закрыть',      cmClose,        kbAltF3;
  '',                   cmAkt,          kbAltE;
#Std_Stat
}

(sciSFO1389Esc..sciSFO1389Esc)
{
#F1
  '~F3~ Выбор',         cmPick,         kbF3;
  '~F8~ Удалить',       cmDelete,       kbF8;
  '~F9~ Формат',        cmPFormat,      kbF9;
  '~Alt+B~ Фильтр',     cmFilterSave,   kbAltB;
  '~Esc~ Закрыть',      cmClose,        kbAltF3;
  '',                   cmAkt,          kbAltE;
#Std_Stat
}

(sciSFO18EnEsc..sciSFO18EnEsc)
{
#F1
  '~F8~ Удалить',               cmDelete,   kbF8;
  '~Enter~ Выбор',              cmDefault,  kbEnter;
  '~Esc~ Закрыть',              cmClose,    kbAltF3;
#Std_Stat
}

(sciSFO1EnEsc..sciSFO1EnEsc)
{
#F1
  '~Enter~ Разноска спецификации', cmDefault,  kbEnter;
  '~F7~ Добавить',                 cmInsert,   kbF7;
  '~Esc~ Закрыть',                 cmClose,    kbAltF3;
#Std_Stat
}

(sciSFO1KolEsc..sciSFO1KolEsc)
{
#F1
  '~Enter~ Отпущено',      cmDefault,    kbEnter;
  '~Alt+R~ По размеру',    cmSortMC,     kbAltR;
  '~Alt+B~ По разрезу',    cmFilterSave, kbAltB;
  '~Esc~ Закрыть',         cmClose,      kbAltF3;
#Std_Stat
}

(sciSFO1KolIns..sciSFO1KolIns)
{
#F1
  '~Enter~ Отпущено',      cmDefault,    kbEnter;
  '~Alt+R~ По размеру',    cmSortMC,     kbAltR;
  '~Alt+B~ По разрезу',    cmFilterSave, kbAltB;
  '~Ins~ Выбор',           cmMarkUnMark, kbIns;
  '~Esc~ Закрыть',         cmClose,      kbAltF3;
#Std_Stat
}

(sciSFO1FiltEsc..sciSFO1FiltEsc)
{
#F1
  '~Alt+R~ По размеру',    cmSortMC,     kbAltR;
  '~Alt+B~ По разрезу',    cmFilterSave, kbAltB;
  '~Esc~ Закрыть',         cmClose,      kbAltF3;
#Std_Stat
}

(sciSFO1Ins..sciSFO1Ins)
{
#F1
  '~Ins~ Выбор',        cmMarkUnMark,   kbIns;
  '~Esc~ Закрыть',      cmClose,        kbAltF3;
#Std_Stat
}
