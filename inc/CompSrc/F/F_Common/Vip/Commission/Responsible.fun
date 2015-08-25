//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Макоропределения для вывода в поток ответственных лиц,
// на базе объекта комиссий.
//------------------------------------------------------------------------------
#ifndef __ResponsibleFun__
#define __ResponsibleFun__

// Макроопределение вывода Ответственных лиц в поток
//   iResponsible     - имя переменной объекта комиссии (типа Commission)
//   StreamObjectName - имя объекта потока
//   FormName         - Имя формы
#declare WriteResponsible(iResponsible,StreamObjectName,FormName)
{
  // Ответственные_лица : boolean
  #StreamObjectName.write(#iResponsible.GetSelection <> comp(0)); // if (#iResponsible.SelectionIsValid)

  // Если установлена выборка ответственных лиц
  if (#iResponsible.GetSelection <> comp(0)) // if (#iResponsible.SelectionIsValid)
  {
    // cSelectionResponsibleNRec - Ссылка на выбранную выборку
    #StreamObjectName.write(#iResponsible.GetSelection);

    // Имя_выборки_ответственных_лиц, имя выбраной ответственных лиц // ResponsibleName
    #StreamObjectName.write(#iResponsible.GetSelectionName);

    // * Списки в формате установленом пользователем:

    // Список_ответственных_лиц - в формате установленом пользователем
    #StreamObjectName.write(#iResponsible.GetComponentsList(1));


    // * Списки ответственных лиц с жёстко установленой структурой:

    // ФИО_ответственных_лиц
    #StreamObjectName.write(#iResponsible.GetComponentsList(2));

    // Должность_и_ФИО_ответственных_лиц
    #StreamObjectName.write(#iResponsible.GetComponentsList(3));

    // ФИО_и_Должность_ответственных_лиц
    #StreamObjectName.write(#iResponsible.GetComponentsList(4));


    // * Ответственные лица:
    var wResponsibleNum : word;
    var wResponsibleCount : word;
    wResponsibleCount := #iResponsible.GetComponentsCount;

    // Количество_ответственных_лиц
    #StreamObjectName.write(wResponsibleCount);

    For (wResponsibleNum := 1; wResponsibleNum <= wResponsibleCount; wResponsibleNum := wResponsibleNum + 1)
    {
      // Входим в цикл по ответственным лицам
      #StreamObjectName.PutEventById(feDoLoop, fcResponsible_#FormName);

      #StreamObjectName.write(#iResponsible.GetComponentNRec(wResponsibleNum)); // Ответственное_лицо_nRec
      #StreamObjectName.write(#iResponsible.GetComponentFIO (wResponsibleNum)); // Ответственное_лицо_ФИО
      #StreamObjectName.write(#iResponsible.GetComponentTabN(wResponsibleNum)); // Ответственное_лицо_Табельный_Номер
      #StreamObjectName.write(#iResponsible.GetComponentPost(wResponsibleNum)); // Ответственное_лицо_Должность
    }
  }
  else
  {
    #StreamObjectName.skipFormat(2+1+3+1);
  }

}
#end

// Макроопределения вывода Ответственных лиц в XLT-шаблон
//   iResponsible     - имя переменной объекта комиссии (типа Commission)
//   StreamXLT        - имя перемеенной объекта выгрузки в XLT-шаблон (типа XLSRepBuilder)
#declare WriteXltResponsibleTable(iResponsible,StreamXLT)
{
  // * Ответственные лица:
  var wResponsibleNum : word;

  // Если установлена выборка ответственных лиц
  if (#iResponsible.GetSelection <> comp(0)) // if (#iResponsible.SelectionIsValid)
  {
    // Создаем таблицу  Responsible
    #StreamXLT.CreateTbl('Responsible');

    // Поля таблицы Responsible
    #StreamXLT.CreateTblFld('Ответственное_лицо_nRec');
    #StreamXLT.CreateTblFld('Ответственное_лицо_ФИО');
    #StreamXLT.CreateTblFld('Ответственное_лицо_Табельный_Номер');
    #StreamXLT.CreateTblFld('Ответственное_лицо_Должность');

    // Выгрузка полей таблицы Responsible в XLT-шаблон
    For (wResponsibleNum := 1; wResponsibleNum <= #iResponsible.GetComponentsCount; wResponsibleNum := wResponsibleNum + 1)
    {
      #StreamXLT.ClearTblBuffer;

      #StreamXLT.SetTblNumberFldValue('Ответственное_лицо_nRec',            #iResponsible.GetComponentNRec(wResponsibleNum)); // Ответственное_лицо_nRec
      #StreamXLT.SetTblStringFldValue('Ответственное_лицо_ФИО',             #iResponsible.GetComponentFIO (wResponsibleNum)); // Ответственное_лицо_ФИО
      #StreamXLT.SetTblStringFldValue('Ответственное_лицо_Табельный_Номер', #iResponsible.GetComponentTabN(wResponsibleNum)); // Ответственное_лицо_Табельный_Номер
      #StreamXLT.SetTblStringFldValue('Ответственное_лицо_Должность',       #iResponsible.GetComponentPost(wResponsibleNum)); // Ответственное_лицо_Должность

      #StreamXLT.InsTblRow;
    }

    #StreamXLT.PublishTbl('Responsible');
  }
}
#end

//Переменные для XLT-шаблона
#declare WriteXltResponsibleVar(iResponsible,StreamXLT)
{
  // Ответственные_лица : boolean
  #StreamXLT.SetNumberVar('Ответственные_лица', word(#iResponsible.GetSelection <> comp(0)));

  // cSelectionResponsibleNRec - Ссылка на выбранную выборку
  #StreamXLT.SetNumberVar('cSelectionResponsibleNRec', #iResponsible.GetSelection);

  // Имя_выборки_ответственных_лиц // ResponsibleName
  #StreamXLT.SetStringVar('Имя_выборки_ответственных_лиц', #iResponsible.GetSelectionName);

  // * Списки в формате установленом пользователем:

  // Список_ответственных_лиц - в формате установленом пользователем
  #StreamXLT.SetStringVar('Список_ответственных_лиц', #iResponsible.GetComponentsList(1));

  // * Списки ответственных лиц с жёстко установленой структурой:

  // ФИО_ответственных_лиц
  #StreamXLT.SetStringVar('ФИО_ответственных_лиц', #iResponsible.GetComponentsList(2));

  // Должность_и_ФИО_ответственных_лиц
  #StreamXLT.SetStringVar('Должность_и_ФИО_ответственных_лиц', #iResponsible.GetComponentsList(3));

  // ФИО_и_Должность_ответственных_лиц
  #StreamXLT.SetStringVar('ФИО_и_Должность_ответственных_лиц', #iResponsible.GetComponentsList(4));

  // Количество_ответственных_лиц
  #StreamXLT.SetNumberVar('Количество_ответственных_лиц', #iResponsible.GetComponentsCount);

}
#end // ResponsibleBody


#end // __ResponsibleFun__
