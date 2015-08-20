// Печать протокола операции экспорта-импорта

.Autoform 'Journ_log'(LogNRec:comp; OnlyBad:word)
.Create view JournLog
from
  ExImNast,
  ExImLog,
  ExImLogT,
  ExImLogR,
  ExImLogE
where
((
  LogNRec       == ExImLog.NRec and
  ExImLog.cNast == ExImNast.NRec and
  ExImLog.NRec  == ExImLogT.cLog and
  (9101         <> ExImLogT.wTable) and
  ExImLogT.NRec == ExImLogR.cLogT and
  ExImLogR.NRec == ExImLogE.cLogR and
  OnlyBad       <<= ExImLogR.Status(noindex)
));
.fields
  if(OnlyBad = 0, 'всей операции', 'ошибок операции')
  if(ExImNast.PrImpExp = 1, 'импорта', 'экспорта')
  if(ExImNast.Katalog = 1, 'Контрагенты',
    if(ExImNast.Katalog = 2, 'МЦ',
    if(ExImNast.Katalog = 3, 'МБП',
    if(ExImNast.Katalog = 4, 'ОС',
    if(ExImNast.Katalog = 5, 'НМА',
    if(ExImNast.Katalog = 6, 'Шаблоны МЦ',
    if(ExImNast.Katalog = 7, 'Штатное расписание',
    if(ExImNast.Katalog = 8, 'Картотека сотрудников','Спецодежды'))))))))
  ExImNast.Name
  ExImLog.logDate
  ExImLog.logTime
  if(ExImLogT.wTable = 1421, 'Банки',
    if(ExImLogT.wTable = 1418, 'Контрагенты',
    if(ExImLogT.wTable = 1461, 'Города',
    if(ExImLogT.wTable = 1458, 'Страны',
    if(ExImLogT.wTable = 2000, 'МБП',
    if(ExImLogT.wTable = 2001, 'Приходы МБП',
    if(ExImLogT.wTable = 1412, 'Единицы Измерения',
    if(ExImLogT.wTable = 1411, 'МЦ',
    if(ExImLogT.wTable = 1434, 'Отпускные Единицы Измерения',
    if(ExImLogT.wTable = 3001, 'Пробег Автотранспорта',
    if(ExImLogT.wTable = 3000, 'ОС',
    if(ExImLogT.wTable = 3036, 'Спецификация ОС',
    if(ExImLogT.wTable = 3003, 'Классификация видов ОС',
    if(ExImLogT.wTable = 3005, 'Классификация групп ОС',
    if(ExImLogT.wTable = 3004, 'Использование ОС',
    if(ExImLogT.wTable = 3032, 'Способ начисления амортизации',
    if(ExImLogT.wTable = 1477, 'Индивидуальная характеристика ОС',
    if(ExImLogT.wTable = 3008, 'Наличие драгметаллов', ''))))))))))))))))))
  ExImLogR.Value
  if(ExImLogR.Status = 0, 'Успешно',
    if(ExImLogR.Status = 1, 'Ссылка не определена',
    if(ExImLogR.Status = 2, 'Дублирование данных', '')))
.endfields
.{table 'JournLog.ExImLog'
  Протокол ^ ^ каталога ^ по настройке ^
  Операция выполненна ^ ^
.{table 'JournLog.ExImLogT'
  Таблица ^
  ────────────────────────────────────────────────────────────────────────
.{table 'JournLog.ExImLogR'
  Значение:@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  Статус: ^
.}
  ────────────────────────────────────────────────────────────────────────
.}
.}
.endform
