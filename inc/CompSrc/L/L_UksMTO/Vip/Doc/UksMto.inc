// Константы Управления комплектацией строителиства

const

//-------------------------------------------------------------------
// Передача документов

//  cgPD_SelPodr = 3011;  // для Pick.wlist

// Вид реестра     RstrPd.direct
  cgPD_Move           = 1;   // реестр на передачу
  cgPD_MoveOfDate     = 2;   // реестр на передачу с нарушенным сроком предоставления
  cgPD_MoveVizir      = 4;   // реестр на передачу для визирования
  cgPD_Move_and_OfDate  = 3;  // реестр на передачу  И  на передачу с нарушенным сроком предоставления
  cgPD_Back           = 8;    // реестр на возврат
  cgPD_BackVizir      = 16;   // реестр на возврат согласованных  (для док переданных на визирование)
  cgPD_BackVizirOtkl  = 32;   // реестр на возврат отклоненных документов (для док переданных на визирование)

  lcgPD_Move           = 'реестр на передачу';
  lcgPD_MoveOfDate     = 'реестр на передачу с нарушенным сроком предоставления';
  lcgPD_MoveVizir      = 'реестр на передачу для визирования';
  lcgPD_Back           = 'реестр на возврат';
  lcgPD_BackVizir      = 'реестр на возврат согласованных';
  lcgPD_BackVizirOtkl  = 'реестр на возврат отклоненных документов';

// Статусы реестра      RstrPd.status
  cgPD_Oforml     = 1;   // оформляется    // не менять т.к. связан с настройкой UKSMTO.AVAILSTATUS (1,2,4)
  cgPD_Ispoln     = 2;   // исполняется
  cgPD_AllReady   = 4;   // обработан
  cgPD_PartReady  = 8;   // принят частично

  lcgPD_Oforml     =  'оформляемый';
  lcgPD_Ispoln     =  'исполняемый';
  lcgPD_PartReady  =  'принят частично';
  lcgPD_AllReady   =  'обработан';


// Признак обработки документа      SpRstrPd.PrzObrab
  cgPD_Ready     = 0;   // к передаче
  cgPD_Priniat   = 1;   // принят
  cgPD_Proveden  = 2;   // проведен
  cgPD_Soglas    = 3;   // согласован
  cgPD_Otkl      = 4;   // отклонен


  lcgPD_Ready     = 'к передаче';
  lcgPD_Priniat   = 'принят';
  lcgPD_Proveden  = 'проведен';
  lcgPD_Soglas    = 'согласован';
  lcgPD_Otkl      = 'отклонен';


// версия документа    SpRstrPd.VersDoc
  cgPD_Copy         = 0;     // копия
  cgPD_Original     = 1;     // оригинал
  cgPD_OrigCopy     = 2;     // оригинал взамен копии
  cgPD_CorrectCopy  = 3;     //  откорректированная копия
  cgPD_CorrectOrig  = 4;     //  откорректированный оригинал

  lcgPD_Copy         = 'копия';
  lcgPD_Original      = 'оригинал';
  lcgPD_OrigCopy     = 'оригинал взамен копии';
  lcgPD_CorrectCopy  = 'откорректированная копия';
  lcgPD_CorrectOrig  = 'откорректированный оригинал';

// тип контрагента      SpRstrPd.TipOrg
  cgPD_NoMono        = 0;     // Немонополист
  cgPD_Mono8         = 1;     // монополист до 8 числа
  cgPD_Mono16        = 2;     // монополист до 16 числа

// Вид документа       SpRstrPd.VidDoc
  cgPD_Internal      = 0;     // Внутренний
  cgPD_External      = 1;     // Внешний

  lcgPD_ExtClassName_Org  = 'ТИП КОНТРАГЕНТА ДЛЯ ПЕРЕДАЧИ ДОКУМЕНТОВ';

//-------------------------------------------------------------------

end;
