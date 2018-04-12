//------------------------------------------------------------------------------
//                                                      (c) Корпорация ГАЛАКТИКА
//------------------------------------------------------------------------------
// Галактика 9.2 - базовая функциональность
// Константы для iUrlRunner
//------------------------------------------------------------------------------

// Регистрация протокола должна производится следующей командой
// AtlHyperlink.exe /register:galnet /workdir:%TPU% /exename:%TPU%\atlexec.exe

const
  // Общие константы
  BaseURL =         'gal://galnet/'; // Базовый URL для всех запусков через объект UrlRunner

  urlRunInterface = 'run_i'; // Команда для запуска интерфейса
  urlFunction     = 'func';  // Параметр для имени функции

// -----------------------------------------------------------------------------
// iEditDoc
// -----------------------------------------------------------------------------
  // Команда для вызова объектного интерфейса iEditDoc
  urlEditDocInterface = 'editdoc';

  // Функции EditDoc
  urlEDRunEditBaseDoc  = 'runeditbasedoc';
  urlEDRunEditHozDoc   = 'runedithozdoc';
  urlEDRunEditHozDocEx = 'runedithozdocex';
  // Параметры функций EditDoc
  urlEDVidDoc   = 'viddoc';
  urlEDcBaseDoc = 'cbasedoc';
  urlEDCurTbl   = 'curtbl';
  urlEDTipGal   = 'tipgal';
  urlEDCurTip   = 'curtip';
  urlEDCurRec   = 'currec';
// -----------------------------------------------------------------------------


end;
