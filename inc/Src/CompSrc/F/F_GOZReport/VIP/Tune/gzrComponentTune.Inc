//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Электронная отчетность ГОЗ"
// Библиотека функций : "Настройки компонента"
//------------------------------------------------------------------------------

#ifndef __gzrComponentTune_Inc__
#define __gzrComponentTune_Inc__

const
  // ключи настроек
  lc_TuneKey_CurResVer      = 'GOZReport.CurResVer'     ;  // Текущая версия ресурса F_GOZReport
  lc_TuneKey_GOZOrg         = 'GOZReport.GOZOrg'        ;  // Подотчетная организация ГОЗ
  lc_TuneKey_GOZTPer        = 'GOZReport.GOZTPer'       ;  // Тип периода отчетности ГОЗ
  lc_TuneKey_ViewRepYearBeg = 'GOZReport.ViewRepYearBeg';  // Отображать отчеты начиная с заданного года
  lc_TuneKey_DocVisibleMode = 'GOZReport.Visible'       ;  // Доступ к документам (режим прав пользователя по доступу к документам)
end; // const

#endif//__gzrComponentTune_Inc__
