//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.50 - базовый интерфейс выбора
// Каталог векселей, фин. вложений и кредитов (браузы)
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// Векселя
Browse brVekslMark ('',hcVekslHotKeys,sci1478EnIns);
  Show at (,,,25);
Fields {Font = {Color = RecColor}};
  KatNotes.sName 'Статус'        ('Статус документа')           : [ 3], Protect, NoAutoSize, Centered;
  Veksl.DatVip   'Составлен'     ('Дата составления векселя')   : [10], Protect, NoAutoSize, Centered;
  Veksl.SrDoc    'Серия'         ('Серия документа')            : [ 8], Protect;
  Veksl.NoDoc    '№ докум.'      ('Номер документа')            : [ 8], Protect;
  Veksl.NoBlnk   'Бланк'         ('Номер бланка документа')     : [ 8], Protect;
  if (Veksl.cVal = 0, Veksl.Sum, Veksl.SumV)
                 'Сумма'         ('Сумма по векселю')           : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  KlVal.SimvolV  'Вал'           ('Валюта документа')           : [ 3], Protect, NoAutoSize, Centered;
  KatOrg.Name    'Векселедатель' ('Наименование векселедателя') : [25], Protect;
  isPicked       'V'                                            : [ 1], Skip, NoAutoSize, Centered;
#AddFieldArchiveToBrowse(GetDocTiDkGal(TipDk), Veksl.nRec, m_sCurrentBarKod)
end;  // Browse

//------------------------------------------------------------------------------
// Ценные бумаги
Browse brFinMark ('',hcVekslHotKeys,sci1478EnIns);
  Show at (,,,25);
Fields {Font = {Color = RecColor}};
  KatNotes.sName 'Статус'        ('Статус документа')               : [ 3], Protect, NoAutoSize, Centered;
  Veksl.DatVip   'Составлен'     ('Дата составления документа')     : [10], Protect, NoAutoSize, Centered;
  Veksl.SrDoc    'Серия'         ('Серия документа')                : [ 8], Protect;
  Veksl.NoDoc    '№ докум.'      ('Номер документа')                : [ 8], Protect;
  Veksl.NoBlnk   'Бланк'         ('Номер бланка документа')         : [ 8], Protect;
  Veksl.Kol      'Количество'    ('Количество документов в пакете') : [20.0, '\0p[|-]3666`666`666`666`666'], Protect, NoAutoSize;
  if (Veksl.cVal = 0, Veksl.Sum * Veksl.Kol, Veksl.SumV * Veksl.Kol)
                 'Сумма'         ('Сумма по пакету документов')     : [22.2, '\2p[|-]3666`666`666`666`666.88'], Protect, NoAutoSize;
  KlVal.SimvolV  'Вал'           ('Валюта документа')               : [ 3], Protect, NoAutoSize, Centered;
  KatOrg.Name    'Эмитент'       ('Наименование эмитента')          : [18], Protect;
  isPicked       'V'                                                : [ 1], Skip, NoAutoSize, Centered;
  #AddFieldArchiveToBrowseDop
end;  // Browse

//------------------------------------------------------------------------------
// Выданные кредиты
Browse brKredVdMark ('', hcVekslHotKeys, sci1478EnIns);
  Show at (,,, 25);
Fields {Font = {Color = RecColor}};
  Veksl.NoDoc    '№ докум.'  ('Номер документа')           : [10],  Protect, Centered;
  Veksl.DatVip   'Составлен' ('Дата составления договора') : [10],  Protect, NoAutoSize, Centered;
  VekslSum       'Сумма'     ('Сумма кредита')             : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  VekslOplSum    'Погашено'  ('Погашенная сумма кредита')  : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  VekslNoOplSum  'Остаток'   ('Непогашенная сумма кредита'): [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  KlVal.SimvolV  'Вал'       ('Валюта  кредита')           : [3],   Protect, NoAutoSize, Centered;
  Veksl.PrGod    '%'         ('Процент годовых')           : [9.5], Protect;
  Veksl.DatOb    'Погашен'   ('Дата гашения кредита')      : [10],  Protect, NoAutoSize, Centered;
  KatOrgPl.Name  'Заемщик'   ('Наименование заемщика')     : [25],  Protect;
  KatNotes.sName 'Статус'    ('Статус документа')          : [6],   Protect, NoAutoSize, Centered;
  isPicked       'V'                                       : [1],   Skip, NoAutoSize, Centered;
end;  // Browse

Tree trKredVdMark ('', hcVekslHotKeys, sci1478EnEscTreeI);
  Show At (,,, 25);
Fields {Font = {Color = RecColor}};
  Veksl.NoDoc    '№ докум.'  ('Номер документа')           : [10],  Protect, Centered;
  Veksl.DatVip   'Составлен' ('Дата составления договора') : [10],  Protect, NoAutoSize, Centered;
  VekslSum       'Сумма'     ('Сумма кредита')             : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  VekslOplSum    'Погашено'  ('Погашенная сумма кредита')  : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  VekslNoOplSum  'Остаток'   ('Непогашенная сумма кредита'): [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  KlVal.SimvolV  'Вал'       ('Валюта  кредита')           : [3],   Protect, NoAutoSize, Centered;
  Veksl.PrGod    '%'         ('Процент годовых')           : [9.5], Protect;
  Veksl.DatOb    'Погашен'   ('Дата гашения кредита')      : [10],  Protect, NoAutoSize, Centered;
  KatOrgPl.Name  'Заемщик'   ('Наименование заемщика')     : [25],  Protect;
  KatNotes.sName 'Статус'    ('Статус документа')          : [6],   Protect, NoAutoSize, Centered;
  isPicked       'V'                                       : [1],   Skip, NoAutoSize, Centered;
end;  // Tree

//------------------------------------------------------------------------------
// Полученные кредиты
Browse brKredPlMark ('', hcVekslHotKeys, sci1478EnIns);
  Show at (,,, 25);
Fields {Font = {Color = RecColor}};
  Veksl.NoDoc    '№ докум.'  ('Номер документа')           : [10],  Protect, Centered;
  Veksl.DatVip   'Составлен' ('Дата составления договора') : [10],  Protect, NoAutoSize, Centered;
  VekslSum       'Сумма'     ('Сумма кредита')             : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  VekslOplSum    'Погашено'  ('Погашенная сумма кредита')  : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  VekslNoOplSum  'Остаток'   ('Непогашенная сумма кредита'): [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  KlVal.SimvolV  'Вал'       ('Валюта  кредита')           : [3],   Protect, NoAutoSize, Centered;
  Veksl.PrGod    '%'         ('Процент годовых')           : [9.5], Protect;
  Veksl.DatOb    'Погашен'   ('Дата гашения кредита')      : [10],  Protect, NoAutoSize, Centered;
  KatOrg.Name    'Кредитор'  ('Наименование кредитора')    : [25],  Protect;
  KatNotes.sName 'Статус'    ('Статус документа')          : [6],   Protect, NoAutoSize, Centered;
  isPicked       'V'                                       : [1],   Skip, NoAutoSize, Centered;
end;  // Browse

Tree trKredPlMark ('', hcVekslHotKeys, sci1478EnEscTreeI);
  Show at (,,, 25);
Fields {Font = {Color = RecColor}};
  Veksl.NoDoc    '№ докум.'  ('Номер документа')           : [10],  Protect, Centered;
  Veksl.DatVip   'Составлен' ('Дата составления договора') : [10],  Protect, NoAutoSize, Centered;
  VekslSum       'Сумма'     ('Сумма кредита')             : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  VekslOplSum    'Погашено'  ('Погашенная сумма кредита')  : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  VekslNoOplSum  'Остаток'   ('Непогашенная сумма кредита'): [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  KlVal.SimvolV  'Вал'       ('Валюта  кредита')           : [3],   Protect, NoAutoSize, Centered;
  Veksl.PrGod    '%'         ('Процент годовых')           : [9.5], Protect;
  Veksl.DatOb    'Погашен'   ('Дата гашения кредита')      : [10],  Protect, NoAutoSize, Centered;
  KatOrg.Name    'Кредитор'  ('Наименование кредитора')    : [25],  Protect;
  KatNotes.sName 'Статус'    ('Статус документа')          : [6],   Protect, NoAutoSize, Centered;
  isPicked       'V'                                       : [1],   Skip, NoAutoSize, Centered;
end;  // Tree

//------------------------------------------------------------------------------
// Источники кредитования
Browse brKredSrcMark ('', hcVeksIstKreditov, sci1478EnIns);
  Show at (,,, 25);
Fields {Font = {Color = RecColor}};
  KatNotes.sName 'Статус'       ('Статус документа')              : [6],   Protect, Centered;
  Veksl.DatVip   'Открыт'       ('Дата открытия источника')       : [10],  Protect, NoAutoSize, Centered;
  Veksl.NoDoc    'Номер'        ('Номер источника кредитования')  : [10],  Protect, NoAutoSize;
  Veksl.MestVip  'Наименование' ('Наименование источника кредитования') : [30], Protect;
  if (Veksl.cVal = 0, Veksl.Sum, Veksl.SumV)
                 'Сумма'        ('Сумма источника кредитования')  : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect, NoAutoSize;
  if (Veksl.cVal = 0, Veksl.SumPl, Veksl.SumPlV)
                 'Используется' ('Сумма вовлеченных средств')     : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect, NoAutoSize;
  if (Veksl.cVal = 0, Veksl.Sum - Veksl.SumPl, Veksl.SumV - Veksl.SumPlV)
                 'Свободно'     ('Сумма свободных средств')       : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect, NoAutoSize;
  KlVal.SimvolV  'Вал'          ('Валюта источника кредитования') : [3],   Protect, NoAutoSize, Centered;
  Veksl.PrGod    '%'            ('Процент годовых')               : [9.5], Protect, NoAutoSize;
  Veksl.DatOb    'Закрыт'       ('Дата закрытия источника')       : [10],  Protect, NoAutoSize, Centered;
  isPicked       'V'                                              : [1],   Skip, NoAutoSize, Centered;
end;  // Browse

//------------------------------------------------------------------------------
// Долги контрагента
Browse brDolgVd ('', hcDogov_MRestruct, sci1478EnEsc);
  Show at (,,,25);
Fields {Font = {Color = RecColor}};
  KatNotes.sName 'Статус'        ('Статус документа')            : [6],  Protect, Centered;
  sMode          'Реж.' ('Режим формирования соглашения: "ДО" - по ДО, "СФ" - по счетам-фактурам, "Накл." - по накладным') :
                 [4] ,Protect, NoAutoSize, Centered;
  Veksl.DatVip   'Составлен'     ('Дата составления соглашения') : [10], Protect, NoAutoSize, Centered;
  Veksl.NoDoc    '№ докум.'      ('Номер документа')             : [10], Protect;
  if (Veksl.cVal = 0, Veksl.Sum, Veksl.SumV)
                 'Сумма'         ('Сумма задолженности')         : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  KlVal.SimvolV  'Вал'           ('Валюта соглашения')           : [3],  Protect, NoAutoSize, Centered;
  [DogDolgNoDoc] if (isValid(#DogovorDolg), oDogFuns.DogNoDoc(DogovorDolg.Buffer), '')
                 'Номер', 'договора' ('Номер договора')        : [10], Protect;
  [DogDolgDDoc]  if (isValid(#DogovorDolg), oDogFuns.DogDDoc(DogovorDolg.Buffer), Date(0,0,0))
                 'Дата', 'договора'  ('Дата договора')         : [10], Protect, NoAutoSize, Centered;
  KatOrgPl.Name  'Контрагент'    ('Наименование контрагента')    : [20], Protect;
end;  // Browse

// Долги контрагента
Browse brDolgVdMark ('', hcDogov_MRestruct, sci1478EnIns);
  Show at (,,,25);
Fields {Font = {Color = RecColor}};
  KatNotes.sName 'Статус'        ('Статус документа')            : [6],  Protect, Centered;
  sMode          'Реж.' ('Режим формирования соглашения: "ДО" - по ДО, "СФ" - по счетам-фактурам, "Накл." - по накладным') :
                  [4] ,Protect, NoAutoSize, Centered;
  Veksl.DatVip   'Составлен'     ('Дата составления соглашения') : [10], Protect, NoAutoSize, Centered;
  Veksl.NoDoc    '№ докум.'      ('Номер документа')             : [10], Protect;
  if (Veksl.cVal = 0, Veksl.Sum, Veksl.SumV)
                 'Сумма'         ('Сумма задолженности')         : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  KlVal.SimvolV  'Вал'           ('Валюта соглашения')           : [3],  Protect, NoAutoSize, Centered;
  DogDolgNoDoc   'Номер', 'договора' ('Номер договора')        : [10], Protect;
  DogDolgDDoc    'Дата', 'договора'  ('Дата договора')         : [10], Protect, NoAutoSize, Centered;
  KatOrgPl.Name  'Контрагент'    ('Наименование контрагента')    : [20], Protect;
  isPicked       'V'                                             : [1],  Skip, NoAutoSize, Centered;
end;  // Browse

// Собственные долги
Browse brDolgPl ('', hcDogov_MRestruct, sci1478EnEsc);
  Show at (,,,25);
Fields {Font = {Color = RecColor}};
  KatNotes.sName 'Статус'        ('Статус документа')            : [6],  Protect, Centered;
  Veksl.DatVip   'Составлен'     ('Дата составления соглашения') : [10], Protect, NoAutoSize, Centered;
  Veksl.NoDoc    '№ докум.'      ('Номер документа')             : [10], Protect;
  if (Veksl.cVal = 0, Veksl.Sum, Veksl.SumV)
                 'Сумма'         ('Сумма задолженности')         : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  KlVal.SimvolV  'Вал'           ('Валюта соглашения')           : [3],  Protect, NoAutoSize, Centered;
  DogDolgNoDoc   'Номер', 'договора' ('Номер договора')        : [10], Protect;
  DogDolgDDoc    'Дата', 'договора'  ('Дата договора')         : [10], Protect, NoAutoSize, Centered;
  KatOrg.Name    'Контрагент'    ('Наименование контрагента')    : [20], Protect;
end;  // Browse

// Собственные долги
Browse brDolgPlMark ('', hcDogov_MRestruct, sci1478EnIns);
  Show at (,,,25);
Fields {Font = {Color = RecColor}};
  KatNotes.sName 'Статус'        ('Статус документа')            : [6],  Protect, Centered;
  Veksl.DatVip   'Составлен'     ('Дата составления соглашения') : [10], Protect, NoAutoSize, Centered;
  Veksl.NoDoc    '№ докум.'      ('Номер документа')             : [10], Protect;
  if (Veksl.cVal = 0, Veksl.Sum, Veksl.SumV)
                 'Сумма'         ('Сумма задолженности')         : [14.2, '\2p[|-]3666`666`666`666`666.88'], Protect;
  KlVal.SimvolV  'Вал'           ('Валюта соглашения')           : [3],  Protect, NoAutoSize, Centered;
  DogDolgNoDoc   'Номер', 'договора' ('Номер договора')        : [10], Protect;
  DogDolgDDoc    'Дата', 'договора'  ('Дата договора')         : [10], Protect, NoAutoSize, Centered;
  KatOrg.Name    'Контрагент'    ('Наименование контрагента')    : [20], Protect;
  isPicked       'V'                                             : [1],  Skip, NoAutoSize, Centered;
end;  // Browse

//------------------------------------------------------------------------------

Screen scVeksl ('',hcVekslHotKeys,sci1478EnEsc);
  Show at (,26,,) FIXED_Y;
Fields
  KatOrgPl.Name    ('Плательщик по векселю')       : Skip;
  KatOrgPolh.Name  ('Первый векселедержатель')     : Skip;
  sVidVeksIer      ('Вид документа')               : Skip;
  Veksl.DatOpl     ('Срок платежа по векселю')     : Skip;
  if (Veksl.DatOb = ZeroDate, '', 'Факт. погашено ' + String(Veksl.DatOb)) : Skip;
  KatUslPog.Name   ('Условия погашения документа') : Skip;
<<
 Плательщик       .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Первый держатель .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Вид документа    .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Срок погашения   .@@@@@@@@@ .@@@@@@@@@@@@@@@@@@@@@@@@
 Условия погашения.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
>>
end; // Screen

Screen scFin ('',hcVekslHotKeys,sci1478EnEsc);
  Show at (,26,,) FIXED_Y;
Fields
  sVidVeksIer      ('Вид документа')               : Skip;
  Veksl.DatOpl     ('Срок платежа по документу')   : Skip;
  if (Veksl.DatOb = ZeroDate, '', 'Факт. погашено ' + String(Veksl.DatOb)) : Skip;
  KatUslPog.Name   ('Условия погашения документа') : Skip;
<<

 Вид документа    .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Срок погашения   .@@@@@@@@@ .@@@@@@@@@@@@@@@@@@@@@@@@
 Условия погашения.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

>>
end; // Screen

Screen scKrSrc (, hcNoContext, sci1Esc);
  Show at (, 26,,) FIXED_Y;
Fields
  sVidVeksIer      ('Вид документа')                        : Skip;
  KatNotes.Name    ('Статус документа')                     : Skip;
  Veksl.DatOpl     ('Срок закрытия источника кредитования') : Skip;
  if (Veksl.DatOb = ZeroDate, '', 'Факт. закрыт ' + String(Veksl.DatOb)) : Skip;
<<

 Вид документа    .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Статус документа .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Срок закрытия    .@@@@@@@@@ .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
>>
end; // Screen

Screen scDolg ('',hcDogov_MRestruct,sci1478EnEsc);
  Show at (,26,,) FIXED_Y;
Fields
  GrafKredVid.dDat ('Дата расчета задолженности')       : Skip;
  Veksl.DatOpl     ('Начальная дата периода погашения') : Skip;
  Veksl.DatOb      ('Конечная дата периода погашения')  : Skip;
  KatNotes.Name    ('Статус документа')                 : Skip;
  sVidVeksIer      ('Вид документа')                    : Skip;
<<

 Дата долга       .@@@@@@@@@ Период погашения с .@@@@@@@@@ по .@@@@@@@@@
 Статус документа .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Вид документа    .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

>>
end; // Screen

Screen scVekslMark ('', hcVekslHotKeys, sci1Esc);
  Show at (,26,,) FIXED_Y;
Fields
  Sum_Podbor            ('Сумма для подбора документов')                         :
                        [16.2, '\2p[|-]3666`666`666`666`666.88'], NoProtect;
  NameValPodbor         ('Наименование валюты для подбора документов',,sci13Esc) :
                        Protect, PickButton;
  Sum_Vb                ('Сумма по выбранным документам')                        :
                        [16.2, '\2p[|-]3666`666`666`666`666.88'], Skip;
  (Sum_Podbor - Sum_Vb) ('Сумма остатка для побора документов')                  :
                        [16.2, '\2p[|-]3666`666`666`666`666.88'], Skip;
<<

    Подбор  .@@@@@@@@@@@@@@@ в .@@@@@@@@@@@@@@@@@@@
    Выбрано .@@@@@@@@@@@@@@@
    Остаток .@@@@@@@@@@@@@@@

>>
end; // Screen
