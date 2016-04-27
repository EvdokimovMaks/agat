//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Логистика
// Константы (отчеты, Казахстан)
//******************************************************************************

const
  csDocType: string = 'd307.00';       //атрибут type тега <document>
  cwDocVer  : word   = 1;               //атрибут version тега <document>
  csFormID  : string = '307000000016';  //номер формы <form_307000000016>
  csPageA_ID: string = '307000000016';  //номер страницы А <page_307000000016>
  csPageB_ID: string = '307000000023';  //номер страницы А <page_307000000023>

  cwPageLevel: word = 1;
  cwRowLevel: word = 2;

  //для группировок по листу и страницам
  cwgSheet: word = 1;
  cwgPageA: word = 2;
  cwgPageB: word = 3;
end;

#define UTF_8 'UTF-8'         //кодировка UTF-8
#define CP866 'CP866'         //DOS кодировка 866
#define cwRowsOnPage 10       //число строк на странице

//параметры формирования отчета (для DSK)
#define DSK_DSTART    'kzree307_dstart'
#define DSK_DEND      'kzree307_dend'
#define DSK_WREESTR   'kzree307_wreestr'
#define DSK_CODEPAGE  'kzree307_codepage'
#define DSK_ZEROPRINT 'kzree307_zeroprint'

//вывод чисел нужной длины
#declare dbl_(dbl_, len_)
  trim(string(round(#dbl_, 0), #len_, 0))
#end

//вывод строк нужной длины или пустых строк
#declare str_(s_, len_, ch_)
  if (trim(#s_) = '', '', LPadCh(SubStr(#s_, 1, #len_), #ch_, #len_))
#end

//вывод дат или пустых строк
#declare Date_(d_)
  if (longint(#d_) = 0, '', DateToStr(#d_, 'DD.MM.YYYY'))
#end

//добавить запись во временную таблицу
#declare insertRecord(wGr, n, s1, s2, s3, c, cGr)
  ClearBuffer(tnsSfReestr);
  sSfReestr.wGroup := #wGr;
  sSfReestr.npp   := #n;
  sSfReestr.sum1  := #s1;
  sSfReestr.sum2  := #s2;
  sSfReestr.sum3  := #s3;
  sSfReestr.cSf   := #c;
  sSfReestr.cGroup := #cGr;
  if (insert current sSfReestr <> tsOk) {}
#end

//накопление итоговых сумм
#declare updateRecord(s1, s2, s3)
  sSfReestr.sum1  := Round(sSfReestr.sum1, 0) + #s1;
  sSfReestr.sum2  := Round(sSfReestr.sum2, 0) + #s2;
  sSfReestr.sum3  := Round(sSfReestr.sum3, 0) + #s3;
  if (update current sSfReestr <> tsOk) {}
#end
