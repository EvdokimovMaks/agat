
// константы для osreal...-файлов
const
  // флаги поля gTune_Make
  cgFlagOrder      = cgBit00;

!!!D надо поменять местами - чтобы ДО можно было всегда формировать
  cgFlagNakl       = cgBit01;
  cgFlagDO         = cgBit02;
  
  cgFlagFactura    = cgBit03;
  // поле Налоги в цену
  cgIncNal_Yes     = 1;    // да
  cgIncNal_No      = 2;    // нет
  // тип документов
  cgType_NaklPrih  = 201;  // KatSopr.VidSopr - накладная на отпуск
  cgType_DoPrih    = 201;  // ДО

  // тип документа реализации
  cgMBPReal        = 19;   // Реализация МБП/СФО
end;
