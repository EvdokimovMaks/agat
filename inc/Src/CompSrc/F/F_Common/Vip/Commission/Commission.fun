//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Макроопределения для вывода в поток состава комиссии,
// на базе объекта комиссий.
//------------------------------------------------------------------------------
#ifndef __CommissionFun__
#define __CommissionFun__

// Макроопределение вывод комиссии в поток
//   iCommission      - имя переменной объекта комиссии (типа Commission)
//   StreamObjectName - имя объекта потока
//   FormName         - Имя формы
#declare WriteCommission(iCommission,StreamObjectName,FormName)
{
  // Комиссия : boolean
  #StreamObjectName.write(#iCommission.GetSelection <> comp(0)); // if (#iCommission.SelectionIsValid)

  // Если установлена комиссия
  if (#iCommission.GetSelection <> comp(0)) // if (#iCommission.SelectionIsValid)
  {
    // cSelectionCommissionNRec - Ссылка на выбранную комиссию
    #StreamObjectName.write(#iCommission.GetSelection);

    // Имя_комиссии, имя выбранной комиссии // CommissionName
    #StreamObjectName.write(#iCommission.GetSelectionName);

    // * Списки в формате, установленном пользователем:

    // Информация_о_председателе - в формате, установленном пользователем
    #StreamObjectName.write(#iCommission.GetComponentsList(0));

    // Список_членов_комиссии - в формате, установленном пользователем
    #StreamObjectName.write(#iCommission.GetComponentsList(1));

    // * Списки членов комиссии с жестко установленной структурой:

    // ФИО_членов_комиссии
    #StreamObjectName.write(#iCommission.GetComponentsList(2));

    // Должность_и_ФИО_членов_комиссии
    #StreamObjectName.write(#iCommission.GetComponentsList(3));

    // ФИО_и_Должность_членов_комиссии
    #StreamObjectName.write(#iCommission.GetComponentsList(4));

    // * Председатель_комиссии:
    if (#iCommission.GetCommissionChairMan)
    {
      #StreamObjectName.write(#iCommission.GetComponentNRec(0)); // Председатель_комиссии_nRec
      #StreamObjectName.write(#iCommission.GetComponentFIO (0)); // Председатель_комиссии_ФИО
      #StreamObjectName.write(#iCommission.GetComponentTabN(0)); // Председатель_комиссии_Табельный_Номер
      #StreamObjectName.write(#iCommission.GetComponentPost(0)); // Председатель_комиссии_Должность
    }
    else
      #StreamObjectName.skipFormat(4);

    // * Члены_комиссии:
    var wCommissionNum : word;
    var wCommissionCount : word;
    wCommissionCount := #iCommission.GetComponentsCount;

    // Количество_членов_комиссии
    #StreamObjectName.write(wCommissionCount);

    For (wCommissionNum := 1; wCommissionNum <= wCommissionCount; wCommissionNum := wCommissionNum + 1)
    {
      // Входим в цикл по членам комиссии
      #StreamObjectName.PutEventById(feDoLoop, fcCommissionMember_#FormName);

      #StreamObjectName.write(#iCommission.GetComponentNRec(wCommissionNum)); // Член_комиссии_nRec
      #StreamObjectName.write(#iCommission.GetComponentFIO (wCommissionNum)); // Член_комиссии_ФИО
      #StreamObjectName.write(#iCommission.GetComponentTabN(wCommissionNum)); // Член_комиссии_Табельный_Номер
      #StreamObjectName.write(#iCommission.GetComponentPost(wCommissionNum)); // Член_комиссии_Должность
    }
  }
  else
  {
    #StreamObjectName.skipFormat(2+2+3+4+1);
  }

}
#end
// Макроопределения вывода комиссии в XLT-шаблон
//   iCommission     - имя переменной объекта комиссии (типа Commission)
//   StreamXLT       - имя переменной объекта выгрузки в XLT-шаблон (типа XLSRepBuilder)
#declare WriteXltCommissionTable(iCommission,StreamXLT)
{
  // * Члены_комиссии:
  var wCommissionNum : word;

    // Создаем таблицу  Commission
  #StreamXLT.CreateTbl('Commission');

  // Поля таблицы Commission
  #StreamXLT.CreateTblFld('Член_комиссии_nRec');
  #StreamXLT.CreateTblFld('Член_комиссии_ФИО' );
  #StreamXLT.CreateTblFld('Член_комиссии_Табельный_Номер');
  #StreamXLT.CreateTblFld('Член_комиссии_Должность');

  // Если установлена выборка комиссии
  if (#iCommission.GetSelection <> comp(0)) // if (#iCommission.SelectionIsValid)
  {
    // Выгрузка полей таблицы Commission в XLT-шаблон
    For (wCommissionNum := 1; wCommissionNum <= #iCommission.GetComponentsCount; wCommissionNum := wCommissionNum + 1)
    {
      #StreamXLT.ClearTblBuffer;

      #StreamXLT.SetTblNumberFldValue('Член_комиссии_nRec',            #iCommission.GetComponentNRec(wCommissionNum)); // Член_комиссии_nRec
      #StreamXLT.SetTblStringFldValue('Член_комиссии_ФИО',             #iCommission.GetComponentFIO (wCommissionNum)); // Член_комиссии_ФИО
      #StreamXLT.SetTblStringFldValue('Член_комиссии_Табельный_Номер', #iCommission.GetComponentTabN(wCommissionNum)); // Член_комиссии_Табельный_Номер
      #StreamXLT.SetTblStringFldValue('Член_комиссии_Должность',       #iCommission.GetComponentPost(wCommissionNum)); // Член_комиссии_Должность

      #StreamXLT.InsTblRow;
    }
  }
  else
  {
    // Выгрузка полей таблицы Commission в XLT-шаблон
    For (wCommissionNum := 1; wCommissionNum <= 4; wCommissionNum := wCommissionNum + 1)
    {
      #StreamXLT.ClearTblBuffer;

      #StreamXLT.SetTblNumberFldValue('Член_комиссии_nRec',            0);  // Член_комиссии_nRec
      #StreamXLT.SetTblStringFldValue('Член_комиссии_ФИО',             ''); // Член_комиссии_ФИО
      #StreamXLT.SetTblStringFldValue('Член_комиссии_Табельный_Номер', ''); // Член_комиссии_Табельный_Номер
      #StreamXLT.SetTblStringFldValue('Член_комиссии_Должность',       ''); // Член_комиссии_Должность

      #StreamXLT.InsTblRow;
    }
  }

  #StreamXLT.PublishTbl('Commission');
}
#end

// Переменные для XLT-шаблона
// Внимание!!! Вызывать WriteXltCommissionVar рекомендуется ТОЛЬКО перед PublishVar
// чтобы не сбивались форматы
#declare WriteXltCommissionVar(iCommission,StreamXLT)
{
  // Комиссия : boolean
  #StreamXLT.SetNumberVar('Комиссия', word(#iCommission.GetSelection <> comp(0)));

  // cSelectionCommissionNRec - Ссылка на выбранную выборку
  #StreamXLT.SetNumberVar('cSelectionCommissionNRec', #iCommission.GetSelection);

  // Имя_выборки_членов_комиссии // CommissionName
  #StreamXLT.SetStringVar('Имя_комиссии', #iCommission.GetSelectionName);

  // * Списки в формате, установленном пользователем:

  // Информация_о_председателе, Список_членов_комиссии - в формате, установленном пользователем
  #StreamXLT.SetStringVar('Информация_о_председателе', #iCommission.GetComponentsList(0));
  #StreamXLT.SetStringVar('Список_членов_комиссии',    #iCommission.GetComponentsList(1));

  // * Списки членов_комиссии с жестко установленной структурой:

  // ФИО_членов_комиссии
  #StreamXLT.SetStringVar('ФИО_членов_комиссии', #iCommission.GetComponentsList(2));

  // Должность_и_ФИО_членов_комиссии
  #StreamXLT.SetStringVar('Должность_и_ФИО_членов_комиссии', #iCommission.GetComponentsList(3));

  // ФИО_и_Должность_членов_комиссии
  #StreamXLT.SetStringVar('ФИО_и_Должность_членов_комиссии', #iCommission.GetComponentsList(4));

  // * Председатель комиссии:
  if (#iCommission.GetCommissionChairMan)
  {
    #StreamXLT.SetNumberVar('Председатель_комиссии_nRec',           #iCommission.GetComponentNRec(0)); // Председатель_комиссии_nRec
    #StreamXLT.SetStringVar('Председатель_комиссии_ФИО',            #iCommission.GetComponentFIO (0)); // Председатель_комиссии_ФИО
    #StreamXLT.SetStringVar('Председатель_комиссии_Табельный_Номер',#iCommission.GetComponentTabN(0)); // Председатель_комиссии_Табельный_Номер
    #StreamXLT.SetStringVar('Председатель_комиссии_Должность',      #iCommission.GetComponentPost(0)); // Председатель_комиссии_Должность
  }

  // Количество_членов_комиссии
  #StreamXLT.SetNumberVar('Количество_членов_комиссии', #iCommission.GetComponentsCount);


}
#end // CommissionBody
//-----------------------------------------------------------------------------

// Переменные для FR-отчета
#declare WriteFRCommission(iCommission, TableFR)
{
  // * Председатель комиссии:
  if (#iCommission.GetCommissionChairMan)
  {
    #TableFR.BossComName := #iCommission.GetComponentFIO (0); // Председатель_комиссии_ФИО
    #TableFR.BossComDlg  := #iCommission.GetComponentPost(0); // Председатель_комиссии_Должность
  }

}
#end // CommissionBody
//-----------------------------------------------------------------------------

// ФИО и должности членов комиссии для FR-отчета
#declare WriteFRCommissionALL(iCommission,ComissFR)
{
  // * Члены_комиссии:
  var wCommissionNum : word;
  var wCommissionCount : word;
  wCommissionCount := #iCommission.GetComponentsCount;

  For (wCommissionNum := 1; wCommissionNum <= wCommissionCount; wCommissionNum := wCommissionNum + 1)
  {
    // Входим в цикл по членам комиссии
    ClearBuffer(tn#ComissFR);
    #ComissFR.MemberFIO  := #iCommission.GetComponentFIO (wCommissionNum); // Член_комиссии_ФИО
    #ComissFR.MemberPost := #iCommission.GetComponentPost(wCommissionNum); // Член_комиссии_Должность
    Insert Current #ComissFR;
  }
}
#end // CommissionBody
//-----------------------------------------------------------------------------

#end // __CommissionFun__
