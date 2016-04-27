const
  // тип работ
  lPrjType  = 1;
  lWorkType = 2;
  // тип ресурса
  lHumanType = 1;
  lMachineType = 2;
  // тип связи
  lStartToStart = 0;
  lStartToEnd   = 1;
  lEndToStart   = 2;
  lEndToEnd     = 3;
  // тип диаграмы
  lGanntChart    = 0;
  lScheduleChart = 1;
//  lLoadChart     = 2;
//  lActivitySheet = 3;
  lResourceSheet = 4;
  lCalendar      = 5;
  lDetailSheet   = 6;
  lLevelingSheet = 7;

  lTeg_Task = 'Task';
  lTeg_TaskNrec = 'NrecWork';
  lTeg_TaskNrecParent = 'NrecParent';
  lTeg_TaskPercentComplete = 'PercentComplete';
  lTeg_TaskStartDate = 'Start';
  lTeg_TaskFinishDate = 'Finish';
  lTeg_TaskTypeRec = 'TypeRec';
  lTeg_TaskName = 'Name';
  
  lShotFormatDate = 'DD.MM.YYYY';
  lShotFormatDate1 = 'YYYY.MM.DD';
end;
