//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.1 - модуль "Управление бюджетом"
// Функционал настроек авто формирования полей
//------------------------------------------------------------------------------

#ifndef __FpTumeFldMakeRule_Inc__
#define __FpTumeFldMakeRule_Inc__

const
  lc_TuneAutoFld_Not : word = 0;  // значение настройки = НЕТ
  lc_TuneAutoFld_Yes : word = 1;  // значение настройки = ДА

  lc_TuneAutoFld_Dlm : string = '';  // разделитель в поле "код в иерархии" по умолчанию

  // ID настроек авто формирования полей
  lc_TuneAutoFldID = 'UprFin.FP.AUTOFIELD';

  // ID настроек "Статьи бюджета"
  lc_TuneAutoFldID_SB = lc_TuneAutoFldID+'.STBUD';
  lc_TuneAutoFldID_SB_LevelCode = lc_TuneAutoFldID_SB+'.LevelCode';  // Автоматическое формирование поля "код на уровне"
  lc_TuneAutoFldID_SB_Hier_Code = lc_TuneAutoFldID_SB+'.Hier_Code';  // Автоматическое формирование поля "код в иерархии"
  lc_TuneAutoFldID_SB_DelimCode = lc_TuneAutoFldID_SB+'.DelimCode';  // Используемый разделитель в поле "код в иерархии"

  // ID настроек "Центры ответственности"
  lc_TuneAutoFldID_CO = lc_TuneAutoFldID+'.CO';
  lc_TuneAutoFldID_CO_LevelCode = lc_TuneAutoFldID_CO+'.LevelCode';  // Автоматическое формирование поля "код на уровне"
end; //const

#endif//__FpTumeFldMakeRule_Inc__
