// константы для osver...-файлов
const
  //тип объекта для печати и отображения в дереве
  cgObj = 1;
  cgCard = 2;
  cgOborot = 3;

  // значения поля parWhat
  cgNone  = 0;
  cgBalance  : word = 1; // стоимость
  cgIznos    : word = 2; // сумма износа
  cgMonthIzn : word = 4; // сумма износа за месяц
  cgOstStoim : word = 8; // остаточная стоимость
  
  cgNoBuhData: word = 64;
  // значения поля parTiDk
  cgType_NotDef  : word =  0; // не определено
  cgType_OS      : word = 15; // ОС
  cgType_NMA     : word = 16; // НМА

  cgManySubsch   : tSubsch = '...';
  cgManySchet    : tSchet3 = '...';
  cgDefPrecision : double = 0.001;
  // объекты в наличии
  cgObjectNo  = 0; // нет - некорректные записи
  cgObjectYes = 1; // есть

  const_cKatOs   = 1;    //Карточки ОС/НМА
  const_cSchetO  = 2;
  const_cSubO    = 3;
  const_cSchetK  = 5;
  const_cSubK    = 6;
  const_cwKodSPO = 25; // для подразделения(w - Количество выбранных, с - значение)
  const_cwKau1   = 26; // для Кау до 30
  const_cwDefKau1 = const_cwKau1 + 12;
  const_wKatOsChoice = 1; //При сверке учитывать все либо только выбранные карточки
  const_wNeedCheckAn = 3;
  const_wMSchetK = 20;    ///количество выбранных счетов по кредиту
  const_wMKatOS  = 21;    ///количество выбранных Карточки ОС/НМА
  const_wMSchetO = 22;    ///количество выбранных счетов по дебету
  const_wMSubO   = 23;      ///количество выбранных субсчетов по дебету
  const_wMSubK   = 24;      ///количество выбранных субсчетов по кредиту


  cgLastRepPar = const_cwKau1 + 17;
  //заголовок Visual
  cgs_VisualTitle = 'Сверка данных ОС и КБУ. ';
  //количество этапов
  cgs_Etaps = '3';
end;

#define wKAU1 UserDeskRep.ResWord[const_cwKau1]
#define wKAU2 UserDeskRep.ResWord[const_cwKau1 + 1]
#define wKAU3 UserDeskRep.ResWord[const_cwKau1 + 2]
#define wKAU4 UserDeskRep.ResWord[const_cwKau1 + 3]
#define wKAU5 UserDeskRep.ResWord[const_cwKau1 + 4]
#define wKAU6 UserDeskRep.ResWord[const_cwKau1 + 5]

#define cKAU1 UserDeskRep.ResComp[const_cwKau1]
#define cKAU2 UserDeskRep.ResComp[const_cwKau1 + 1]
#define cKAU3 UserDeskRep.ResComp[const_cwKau1 + 2]
#define cKAU4 UserDeskRep.ResComp[const_cwKau1 + 3]
#define cKAU5 UserDeskRep.ResComp[const_cwKau1 + 4]
#define cKAU6 UserDeskRep.ResComp[const_cwKau1 + 5]

#define cKODSPO UserDeskRep.ResComp[const_cwKodSPO]

#define mKAU1 UserDeskRep.ResWord[const_cwKau1 + 6]
#define mKAU2 UserDeskRep.ResWord[const_cwKau1 + 7]
#define mKAU3 UserDeskRep.ResWord[const_cwKau1 + 8]
#define mKAU4 UserDeskRep.ResWord[const_cwKau1 + 9]
#define mKAU5 UserDeskRep.ResWord[const_cwKau1 + 10]
#define mKAU6 UserDeskRep.ResWord[const_cwKau1 + 11]

#define mKODSPO UserDeskRep.ResWord[const_cwKodSPO]

#define DefKAU1 UserDeskRep.ResWord[const_cwDefKau1]
#define DefKAU2 UserDeskRep.ResWord[const_cwDefKau1 + 1]
#define DefKAU3 UserDeskRep.ResWord[const_cwDefKau1 + 2]
#define DefKAU4 UserDeskRep.ResWord[const_cwDefKau1 + 3]
#define DefKAU5 UserDeskRep.ResWord[const_cwDefKau1 + 4]
