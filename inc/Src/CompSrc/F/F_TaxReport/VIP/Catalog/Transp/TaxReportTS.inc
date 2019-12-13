const

  //Выпадающие списки
  NODE_INVALID_TS = 0;

  // ОКЕИ
  NODE_OKEI_Null =   0; // -
  NODE_OKEI_181  = 181; // 181 | Брутто-регистровая тонна (2,8316 м3) (БРТ)
  NODE_OKEI_251  = 251; // 251 | Лошадиная сила (л.с.)
  NODE_OKEI_796  = 796; // 796 | Штука (Шт)
  NODE_OKEI_999  = 999; // 999 | Килограмм силы (Кгс)

  // Формула расчета
  NODE_FORMRASCH_1 = 1; // Стр. 300 = стр. 190
  NODE_FORMRASCH_2 = 2; // Стр. 300 = стр. 190 - стр. 230
  NODE_FORMRASCH_3 = 3; // Стр. 300 = стр. 190 - стр. 250 - стр. 270
  NODE_FORMRASCH_4 = 4; // Стр. 300 = стр. 190 - стр. 290
  NODE_FORMRASCH_5 = 5; // Стр. 300 = стр. 190 - стр. 250 - стр. 270 - стр. 290

  // Экологический класс
  NODE_JEkologKl_Null = 9;  // -
  NODE_JEkologKl_0    = 0;  // 0
  NODE_JEkologKl_1    = 1;  // 1
  NODE_JEkologKl_2    = 2;  // 2
  NODE_JEkologKl_3    = 3;  // 3
  NODE_JEkologKl_4    = 4;  // 4
  NODE_JEkologKl_5    = 5;  // 5
  NODE_JEkologKl_6    = 6;  // 6

  // Средняя стоимость автомобиля
  NODE_SrStoim_Null      = 0;  // -
  NODE_SrStoim_ot03_do05 = 2;  // 002 | от 3 до 5 млн. руб.
  NODE_SrStoim_ot05_do10 = 3;  // 003 | от 5 до 10 млн. руб.
  NODE_SrStoim_ot10_do15 = 4;  // 004 | от 10 до 15 млн. руб.
  NODE_SrStoim_ot15      = 5;  // 005 | от 15 млн. руб.

  // Режимы налоговой льготы
  lc_LgMode_Null : word  = 0;  // нет особых льгот
  lc_LgMode_Free : word  = 1;  // освобождение от налога
  lc_LgMode_Low  : word  = 2;  // снижение налога

  // Режимы налоговой ставки
  NODE_TaxRate_Auto   : word = 0;  // Автоматически из нового каталога
  NODE_TaxRate_Doc    : word = 1;  // Вручную в документе
  NODE_TaxRate_OldKat : word = 2;  // Из старого каталога

end;