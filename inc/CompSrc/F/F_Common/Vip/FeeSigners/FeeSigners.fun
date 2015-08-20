//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.1 - Макроопределения для вывода в поток подписантов,
// на базе объекта подписантов.
//------------------------------------------------------------------------------
#ifndef __FeeSignersFun__
#define __FeeSignersFun__

//-----------------------------------------------------------------------------
// Макроопределение вывод подписантов в поток
//   iFeeSigners      - имя переменной объекта подписантов (типа FeeSigners)
//   StreamObjectName - имя объекта потока
//   FormName         - Имя формы
#declare WriteFeeSigners(iFeeSigners,StreamObjectName,FormName)
{
  // Группа : boolean
  #StreamObjectName.write(#iFeeSigners.FeeSignersIsValid);

  // Если установлена Группа
  if (#iFeeSigners.FeeSignersIsValid)
  {
    // cFeeSignersNRec - Ссылка на выбранную группу
    #StreamObjectName.write(#iFeeSigners.GetFeeSigners);

    // Имя_группы, имя выбранной группы
    #StreamObjectName.write(#iFeeSigners.GetFeeSignersName);

    // * Списки в формате установленном пользователем:

    // Информация_о_председателе - в формате установленом пользователем
    #StreamObjectName.write(#iFeeSigners.GetSignersList(0));

    // Список_подписантов - в формате установленом пользователем
    #StreamObjectName.write(#iFeeSigners.GetSignersList(1));

    // * Председатель:
    if (#iFeeSigners.RestrictFeeByRole(2, 'PredCom'))
    {
      #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // Председатель_nRec
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // Председатель_ФИО
      #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // Председатель_Табельный_Номер
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // Председатель_Должность
      #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // Председатель_Роль
    }
    else
    {
      #StreamObjectName.skipFormat(5);
    }

    #iFeeSigners.ClearRestriction;

    // * Подписанты:
    var wFeeSignersNum : word;
    var wFeeSignersCount : word;
    wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;

    // Количество_подписантов
    #StreamObjectName.write(wFeeSignersCount);

    if (#iFeeSigners.GetSignerFirst)
    {
      For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum := wFeeSignersNum + 1)
      {
        // Входим в цикл по подписантам
        #StreamObjectName.PutEventById(feDoLoop, fcFeeSignersMember_#FormName);

        #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // Подписант_nRec
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // Подписант_ФИО
        #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // Подписант_Табельный_Номер
        #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // Подписант_Должность
        #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // Подписант_Роль
        if (not #iFeeSigners.GetSignerNext)
          break;
      }
    }
  }
  else
  {
    #StreamObjectName.skipFormat(2+2+5+1);
  }

}
#end

//-----------------------------------------------------------------------------
// Макроопределение вывод подписантов в поток (все варианты написания)
//   iFeeSigners      - имя переменной объекта подписантов (типа FeeSigners)
//   StreamObjectName - имя объекта потока
//   FormName         - Имя формы
#declare WriteFeeSignersAll(iFeeSigners,StreamObjectName,FormName)
{
  // Группа : boolean
  #StreamObjectName.write(#iFeeSigners.FeeSignersIsValid);

  // Если установлена Группа
  if (#iFeeSigners.FeeSignersIsValid)
  {
    // cFeeSignersNRec - Ссылка на выбранную группу
    #StreamObjectName.write(#iFeeSigners.GetFeeSigners);

    // Имя_группы, имя выбранной группы
    #StreamObjectName.write(#iFeeSigners.GetFeeSignersName);

    // * Списки в формате установленном пользователем:

    // Информация_о_председателе - в формате установленом пользователем
    #StreamObjectName.write(#iFeeSigners.GetSignersList(0));

    // Список_подписантов - в формате установленом пользователем
    #StreamObjectName.write(#iFeeSigners.GetSignersList(1));

    // * Председатель:
    if (#iFeeSigners.RestrictFeeByRole(2, 'PredCom'))
    {
      #StreamObjectName.write(#iFeeSigners.GetSignerNRec);         // Председатель_nRec
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));       // Председатель_ФИО_1
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(2));       // Председатель_ФИО_2
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(3));       // Председатель_ФИО_3
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(4));       // Председатель_ФИО_4
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(5));       // Председатель_ФИО_5
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(6));       // Председатель_ФИО_6
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(7));       // Председатель_ФИО_7
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(8));       // Председатель_ФИО_8
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(9));       // Председатель_ФИО_9
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(10));      // Председатель_ФИО_10
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(11));      // Председатель_ФИО_11
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(12));      // Председатель_ФИО_12
      #StreamObjectName.write(#iFeeSigners.GetSignerTabN);         // Председатель_Табельный_Номер
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1));  // Председатель_Должность_1
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(2));  // Председатель_Должность_2
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(3));  // Председатель_Должность_3
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(4));  // Председатель_Должность_4
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(5));  // Председатель_Должность_5
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(6));  // Председатель_Должность_6
      #StreamObjectName.write(#iFeeSigners.GetSignerRole);         // Председатель_Роль
    }
    else
    {
      #StreamObjectName.skipFormat(21);
    }

    #iFeeSigners.ClearRestriction

    // * Подписанты:
    var wFeeSignersNum : word;
    var wFeeSignersCount : word;
    wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;

    // Количество_подписантов
    #StreamObjectName.write(wFeeSignersCount);

    if (#iFeeSigners.GetSignerFirst)
    {
      For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum := wFeeSignersNum + 1)
      {
        // Входим в цикл по подписантам
        #StreamObjectName.PutEventById(feDoLoop, fcFeeSignersMember_#FormName);

        #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // Подписант_nRec
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // Подписант_ФИО_1
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(2));      // Подписант_ФИО_2
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(3));      // Подписант_ФИО_3
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(4));      // Подписант_ФИО_4
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(5));      // Подписант_ФИО_5
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(6));      // Подписант_ФИО_6
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(7));      // Подписант_ФИО_7
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(8));      // Подписант_ФИО_8
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(9));      // Подписант_ФИО_9
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(10));     // Подписант_ФИО_10
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(11));     // Подписант_ФИО_11
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(12));     // Подписант_ФИО_12
        #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // Подписант_Табельный_Номер
        #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // Подписант_Должность_1
        #StreamObjectName.write(#iFeeSigners.GetSignerPosition(2)); // Подписант_Должность_2
        #StreamObjectName.write(#iFeeSigners.GetSignerPosition(3)); // Подписант_Должность_3
        #StreamObjectName.write(#iFeeSigners.GetSignerPosition(4)); // Подписант_Должность_4
        #StreamObjectName.write(#iFeeSigners.GetSignerPosition(5)); // Подписант_Должность_5
        #StreamObjectName.write(#iFeeSigners.GetSignerPosition(6)); // Подписант_Должность_6
        #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // Подписант_Роль
        if (not #iFeeSigners.GetSignerNext)
          break;
      }
    }
  }
  else
  {
    #StreamObjectName.skipFormat(2+2+5+1);
  }
}
#end

//-----------------------------------------------------------------------------
// Макроопределение вывод подписантов в поток для платежных документов
//   iFeeSigners      - имя переменной объекта подписантов (типа FeeSigners)
//   StreamObjectName - имя объекта потока
//   FormName         - Имя формы
//   23 поля 3 + 4*5
#declare WriteFeeSignersForPlatDocs(iFeeSigners,StreamObjectName)
{
  // Группа : boolean
  #StreamObjectName.write(#iFeeSigners.FeeSignersIsValid);

  // Если установлена Группа
  if (#iFeeSigners.FeeSignersIsValid)
  {
    // cFeeSignersNRec - Ссылка на выбранную группу
    #StreamObjectName.write(#iFeeSigners.GetFeeSigners);

    // Имя_группы, имя выбранной группы
    #StreamObjectName.write(#iFeeSigners.GetFeeSignersName);

    // * Директор:
    if (#iFeeSigners.RestrictFeeByRole(2, 'Direct'))
    {
      #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // Руководитель_nRec
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(7));      // Руководитель_ФИО
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // Руководитель_ФИО_полное
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(13));     // Руководитель_ФИО
      #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // Руководитель_Табельный_Номер
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // Руководитель_Должность
      #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // Руководитель_Роль
    }
    else
    {
      #StreamObjectName.skipFormat(7);
    }

    // * Главный Бухгалтер:
    if (#iFeeSigners.RestrictFeeByRole(2, 'GlBux'))
    {
      #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // Глав.Бух_nRec
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(7));      // Глав.Бух_ФИО
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // Глав.Бух_ФИО_полное
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(13));     // Глав.Бух_ИОФ
      #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // Глав.Бух_Табельный_Номер
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // Глав.Бух_Должность
      #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // Глав.Бух_Роль
    }
    else
    {
      #StreamObjectName.skipFormat(7);
    }

    // * Кассир:
    if (#iFeeSigners.RestrictFeeByRole(2, 'Kass'))
    {
      #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // Кассир_nRec
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(7));      // Кассир_ФИО
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // Кассир_ФИО_полное
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(13));      // Кассир_ИОФ
      #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // Кассир_Табельный_Номер
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // Кассир_Должность
      #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // Кассир_Роль
    }
    else
    {
      #StreamObjectName.skipFormat(7);
    }

    // * Ответственный:
    if (#iFeeSigners.RestrictFeeByRole(2, 'Otvetstv'))
    {
      #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // Кассир_nRec
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(7));      // Кассир_ФИО
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // Кассир_ФИО_полное
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(13));     // Кассир_ИОФ
      #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // Кассир_Табельный_Номер
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // Кассир_Должность
      #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // Кассир_Роль
    }
    else
    {
      #StreamObjectName.skipFormat(7);
    }

    #iFeeSigners.ClearRestriction
  }
  else
    #StreamObjectName.skipFormat(30);
}
#end

#declare WriteFeeSignersForPlatDocsByHan(iFeeSigners,MyHandle)
{
  // Группа : boolean
  Form_Write(#iFeeSigners.FeeSignersIsValid,'',#MyHandle);

  // Если установлена Группа
  if (#iFeeSigners.FeeSignersIsValid)
  {
    // cFeeSignersNRec - Ссылка на выбранную группу
    Form_Write(#iFeeSigners.GetFeeSigners,'',#MyHandle);

    // Имя_группы, имя выбранной группы
    Form_Write(#iFeeSigners.GetFeeSignersName,'',#MyHandle);

    // * Директор:
    if (#iFeeSigners.RestrictFeeByRole(2, 'Direct'))
    {
      Form_Write(#iFeeSigners.GetSignerNRec       ,'',#MyHandle);        // Руководитель_nRec
      Form_Write(#iFeeSigners.GetSignerFIO(7)     ,'',#MyHandle);        // Руководитель_ФИО
      Form_Write(#iFeeSigners.GetSignerFIO(1)     ,'',#MyHandle);        // Руководитель_ФИО_полное
      Form_Write(#iFeeSigners.GetSignerFIO(13)    ,'',#MyHandle);        // Руководитель_ФИО
      Form_Write(#iFeeSigners.GetSignerTabN       ,'',#MyHandle);        // Руководитель_Табельный_Номер
      Form_Write(#iFeeSigners.GetSignerPosition(1),'',#MyHandle);        // Руководитель_Должность
      Form_Write(#iFeeSigners.GetSignerRole       ,'',#MyHandle);        // Руководитель_Роль
    }
    else
    {
      Form_SkipFormat(7, #MyHandle);
    }

    // * Главный Бухгалтер:
    if (#iFeeSigners.RestrictFeeByRole(2, 'GlBux'))
    {
      Form_Write(#iFeeSigners.GetSignerNRec       ,'',#MyHandle);   // Глав.Бух_nRec
      Form_Write(#iFeeSigners.GetSignerFIO(7)     ,'',#MyHandle);   // Глав.Бух_ФИО
      Form_Write(#iFeeSigners.GetSignerFIO(1)     ,'',#MyHandle);   // Глав.Бух_ФИО_полное
      Form_Write(#iFeeSigners.GetSignerFIO(13)    ,'',#MyHandle);   // Глав.Бух_ИОФ
      Form_Write(#iFeeSigners.GetSignerTabN       ,'',#MyHandle);   // Глав.Бух_Табельный_Номер
      Form_Write(#iFeeSigners.GetSignerPosition(1),'',#MyHandle);   // Глав.Бух_Должность
      Form_Write(#iFeeSigners.GetSignerRole       ,'',#MyHandle);   // Глав.Бух_Роль
    }
    else
    {
      Form_SkipFormat(7, #MyHandle);
    }

    // * Кассир:
    if (#iFeeSigners.RestrictFeeByRole(2, 'Kass'))
    {
      Form_Write(#iFeeSigners.GetSignerNRec       ,'',#MyHandle); // Кассир_nRec
      Form_Write(#iFeeSigners.GetSignerFIO(7)     ,'',#MyHandle); // Кассир_ФИО
      Form_Write(#iFeeSigners.GetSignerFIO(1)     ,'',#MyHandle); // Кассир_ФИО_полное
      Form_Write(#iFeeSigners.GetSignerFIO(13)    ,'',#MyHandle);  // Кассир_ИОФ
      Form_Write(#iFeeSigners.GetSignerTabN       ,'',#MyHandle); // Кассир_Табельный_Номер
      Form_Write(#iFeeSigners.GetSignerPosition(1),'',#MyHandle); // Кассир_Должность
      Form_Write(#iFeeSigners.GetSignerRole       ,'',#MyHandle); // Кассир_Роль
    }
    else
    {
      Form_SkipFormat(7, #MyHandle);
    }

    // * Ответственный:
    if (#iFeeSigners.RestrictFeeByRole(2, 'Otvetstv'))
    {
      Form_Write(#iFeeSigners.GetSignerNRec       ,'',#MyHandle); // Кассир_nRec
      Form_Write(#iFeeSigners.GetSignerFIO(7)     ,'',#MyHandle); // Кассир_ФИО
      Form_Write(#iFeeSigners.GetSignerFIO(1)     ,'',#MyHandle); // Кассир_ФИО_полное
      Form_Write(#iFeeSigners.GetSignerFIO(13)    ,'',#MyHandle); // Кассир_ИОФ
      Form_Write(#iFeeSigners.GetSignerTabN       ,'',#MyHandle); // Кассир_Табельный_Номер
      Form_Write(#iFeeSigners.GetSignerPosition(1),'',#MyHandle); // Кассир_Должность
      Form_Write(#iFeeSigners.GetSignerRole       ,'',#MyHandle); // Кассир_Роль
    }
    else
    {
      Form_SkipFormat(7, #MyHandle);
    }

    #iFeeSigners.ClearRestriction
  }
  else
    Form_SkipFormat(30, #MyHandle);
}
#end

#declare WriteFeeSignersCycle(iFeeSigners,StreamObjectName,FormName)
{
  // Если установлена Группа
  if (#iFeeSigners.FeeSignersIsValid)
  {
    #StreamObjectName.PutEventById(feTrue,fcExistFeeSigners_#FormName);
    // * Подписанты:
    var wFeeSignersNum : word;
    var wFeeSignersCount : word;

    wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;

    // Количество_подписантов
    #StreamObjectName.write(wFeeSignersCount);

    if (#iFeeSigners.GetSignerFirst)
    {
      For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum := wFeeSignersNum + 1)
      {
        // Входим в цикл по подписантам
        #StreamObjectName.PutEventById(feDoLoop, fcFeeSignersCycle_#FormName);

        #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // Подписант_nRec
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // Подписант_ФИО
        #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // Подписант_Табельный_Номер
        #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // Подписант_Должность
        #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // Подписант_Роль
        if (not #iFeeSigners.GetSignerNext)
          break;
      }
    }
  }
}
#end

// вывод подписантов через handle
#declare WriteFeeSignersCycleByHan(iFeeSigners,MyHandle,FormName)
{
  // Если установлена Группа
  if (#iFeeSigners.FeeSignersIsValid)
  {
    Form_PutEventById(feTrue,fcExistFeeSigners_#FormName,#MyHandle);
    // * Подписанты:
    var wFeeSignersNum : word;
    var wFeeSignersCount : word;

    wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;

    // Количество_подписантов
    Form_Write(wFeeSignersCount,'',#MyHandle);

    if (#iFeeSigners.GetSignerFirst)
    {
      For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum := wFeeSignersNum + 1)
      {
        // Входим в цикл по подписантам
        Form_PutEventById(feDoLoop, fcFeeSignersCycle_#FormName,#MyHandle);

        Form_Write(#iFeeSigners.GetSignerNRec,'',#MyHandle);        // Подписант_nRec
        Form_Write(#iFeeSigners.GetSignerFIO(1),'',#MyHandle);      // Подписант_ФИО
        Form_Write(#iFeeSigners.GetSignerTabN,'',#MyHandle);        // Подписант_Табел
        Form_Write(#iFeeSigners.GetSignerPosition(1),'',#MyHandle); // Подписант_Должн
        Form_Write(#iFeeSigners.GetSignerRole,'',#MyHandle);        // Подписант_Роль

        if (not #iFeeSigners.GetSignerNext)
          break;
      }
    }
  }
}
#end

#declare WriteFeeSigners_OS(iFeeSigners,StreamObjectName,FormName)
{
  // Группа : boolean
  #StreamObjectName.write(#iFeeSigners.FeeSignersIsValid);

  // Если установлена Группа
  if (#iFeeSigners.FeeSignersIsValid)
  {
    // * Подписанты:
     var wFeeSignersNum : word;
     var wFeeSignersCount : word;

    // cFeeSignersNRec - Ссылка на выбранную группу
    #StreamObjectName.write(#iFeeSigners.GetFeeSigners);

    // Имя_группы, имя выбранной группы
    #StreamObjectName.write(#iFeeSigners.GetFeeSignersName);

     // Список_подписантов - в формате установленом пользователем (члены комиссии)
    #StreamObjectName.write(#iFeeSigners.GetSignersList(4));

    // Информация_о_председателе - в формате установленом пользователем
    #StreamObjectName.write(#iFeeSigners.GetSignersList(0));

    // * Председатель:
    if (#iFeeSigners.RestrictFeeByRole(1, cgRole_PredCom))
    {
      #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // Председатель_nRec
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // Председатель_ФИО
      #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // Председатель_Табельный_Номер
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // Председатель_Должность
      #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // Председатель_Роль
    }
    else
      #StreamObjectName.skipFormat(5);

    if (#iFeeSigners.RestrictFeeByRole(1, cgRole_ChlenCom))
    {
      wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;
      // Количество_подписантов
      #StreamObjectName.write(wFeeSignersCount);

      if (#iFeeSigners.GetSignerFirst)
      {

        For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum := wFeeSignersNum + 1)
        {
          // Входим в цикл по подписантам
          #StreamObjectName.PutEventById(feDoLoop, fcFeeSignersMember_#FormName);

          #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // Подписант_nRec
          #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // Подписант_ФИО
          #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // Подписант_Табельный_Номер
          #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // Подписант_Должность
          #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // Подписант_Роль
          if (not #iFeeSigners.GetSignerNext)
            break;
        }
      }
    }
    else
      #StreamObjectName.skipFormat(1);

    // Ответственные
    if (#iFeeSigners.RestrictFeeByRole(1, cgRole_Otvetstv))
    {
      wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;
      // Количество_ответственных
      #StreamObjectName.write(wFeeSignersCount);

      if (#iFeeSigners.GetSignerFirst)
      {
        For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum := wFeeSignersNum + 1)
        {
          // Входим в цикл по ответственным
          #StreamObjectName.PutEventById(feDoLoop, fcFeeSignersResponsible_#FormName);

          #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // Ответственный_nRec
          #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // Ответственный_ФИО
          #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // Ответственный_Табельный_Номер
          #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // Ответственный_Должность
          #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // Ответственный_Роль
          if (not #iFeeSigners.GetSignerNext)
            break;
        }
      }
    }
    else
      #StreamObjectName.skipFormat(1);

     // * Директор:
    if (#iFeeSigners.RestrictFeeByRole(2, 'Direct'))
    {
      #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // Руководитель_nRec
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // Руководитель_ФИО
      #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // Руководитель_Табельный_Номер
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // Руководитель_Должность
      #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // Руководитель_Роль
    }
    else
      #StreamObjectName.skipFormat(5);

    // * Главный Бухгалтер:
    if (#iFeeSigners.RestrictFeeByRole(2, 'GlBux'))
    {
      #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // Глав.Бух_nRec
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // Глав.Бух_ФИО
      #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // Глав.Бух_Табельный_Номер
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // Глав.Бух_Должность
      #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // Глав.Бух_Роль
    }
    else
      #StreamObjectName.skipFormat(5);

    #iFeeSigners.ClearRestriction;
  }
  else
    #StreamObjectName.skipFormat(4 + 5 + 1 + 1 + 5 + 5);
}
#end

//-----------------------------------------------------------------------------
// Макроопределение вывод комиссии в поток на основе ПОДПИСАНТОВ.
// Полностью совпадает со старым потоком WriteCommission.
//   iFeeSigners      - имя переменной объекта подписантов (типа FeeSigners)
//   StreamObjectName - имя объекта потока
//   FormName         - Имя формы
#declare WriteCommission_FeeSigners(iFeeSigners,StreamObjectName,FormName)
{
  #StreamObjectName.write(#iFeeSigners.FeeSignersIsValid);  // Группа : boolean

  if (#iFeeSigners.FeeSignersIsValid)  // Если установлена Группа
  {
     var wFeeSignersCount : word;

    #StreamObjectName.write(#iFeeSigners.GetFeeSigners);  // cFeeSignersNRec - Ссылка на выбранную группу
    #StreamObjectName.write(#iFeeSigners.GetFeeSignersName);  // Имя_группы, имя выбранной группы

    // * Списки в формате, установленном пользователем:
    #StreamObjectName.write(#iFeeSigners.GetSignersList(0));  // Информация_о_председателе - в формате установленом пользователем
    #StreamObjectName.write(#iFeeSigners.GetSignersList(1));  // Список_подписантов - в формате установленом пользователем

    // * Списки членов комиссии с жестко установленной структурой:
    #StreamObjectName.write('');   // ФИО_членов_комиссии
    #StreamObjectName.write('');   // Должность_и_ФИО_членов_комиссии
    #StreamObjectName.write('');   // ФИО_и_Должность_членов_комиссии

    // * Председатель:
    if (#iFeeSigners.RestrictFeeByRole(1, cgRole_PredCom))
    {
      #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // Председатель_nRec
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // Председатель_ФИО
      #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // Председатель_Табельный_Номер
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // Председатель_Должность
    }
    else
      #StreamObjectName.skipFormat(4);

    if (#iFeeSigners.RestrictFeeByRole(1, cgRole_ChlenCom))
    {
      wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;
      #StreamObjectName.write(wFeeSignersCount);  // Количество_подписантов

      if (#iFeeSigners.GetSignerFirst)  do
      {
          #StreamObjectName.PutEventById(feDoLoop, fcCommissionMember_#FormName);   // Входим в цикл по подписантам
          #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // Подписант_nRec
          #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // Подписант_ФИО
          #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // Подписант_Табельный_Номер
          #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // Подписант_Должность

      }  while (#iFeeSigners.GetSignerNext)
    }
    else
      #StreamObjectName.skipFormat(1);
  }
  else
    #StreamObjectName.skipFormat(2+2+3+4+1);

  #iFeeSigners.ClearRestriction;
}
#end

//----------------------------------------------------------------------------------------------------------------------
// Макроопределение вывода Ответственных лиц в поток на основк ПОДПИСАНТОВ
// Полностью совпадает со старым потоком WriteResponsible.
//   iFeeSigners      - имя переменной объекта подписантов (типа FeeSigners)
//   StreamObjectName - имя объекта потока
//   FormName         - Имя формы
#declare WriteResponsible_FeeSigners(iFeeSigners,StreamObjectName,FormName)
{
  #StreamObjectName.write(#iFeeSigners.FeeSignersIsValid);  // Группа : boolean

  if (#iFeeSigners.FeeSignersIsValid)  // Если установлена Группа
  {
    var wFeeSignersCount : word;
    var SignersByOneLine : string;

    // ответственные одной строкой
    SignersByOneLine := #iFeeSigners.GetSignersList(3);

    // Ответственные
    if (#iFeeSigners.RestrictFeeByRole(1, cgRole_Otvetstv))
    {

      wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;

      #StreamObjectName.write(#iFeeSigners.GetFeeSigners);      // cFeeSignersNRec - Ссылка на выбранную группу
      #StreamObjectName.write(#iFeeSigners.GetFeeSignersName);  // Имя_группы, имя выбранной группы

      // * Списки в формате установленом пользователем:
      #StreamObjectName.write(SignersByOneLine);  // Список_ответственных_лиц - в формате установленом пользователем

      // * Списки ответственных лиц с жёстко установленой структурой:
      #StreamObjectName.write('');   // ФИО_ответственных_лиц
      #StreamObjectName.write('');   // Должность_и_ФИО_ответственных_лиц
      #StreamObjectName.write('');   // ФИО_и_Должность_ответственных_лиц

      // * Ответственные лица:
      #StreamObjectName.write(wFeeSignersCount);  // Количество_ответственных

      if (#iFeeSigners.GetSignerFirst) do
      {
          #StreamObjectName.PutEventById(feDoLoop, fcResponsible_#FormName);   // Входим в цикл по ответственным
          #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // Ответственный_nRec
          #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // Ответственный_ФИО
          #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // Ответственный_Табельный_Номер
          #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // Ответственный_Должность

      }  while(#iFeeSigners.GetSignerNext)
    }
    else
      #StreamObjectName.skipFormat(2+1+3+1);
  }
  else
    #StreamObjectName.skipFormat(2+1+3+1);

  #iFeeSigners.ClearRestriction;
}
#end


//==============================================================================
//-----------------------------------------------------------------------------
// Макроопределения вывода группы подписантов в XLT-шаблон
//   iFeeSigners     - имя переменной объекта группы подписантов (типа FeeSigners)
//   StreamXLT       - имя перемеенной объекта выгрузки в XLT-шаблон (типа XLSRepBuilder)
#declare WriteXltFeeSignersTable(iFeeSigners,StreamXLT)
{

  #StreamXLT.CreateTbl('FeeSigners');  // Создаем таблицу  FeeSigners
  // Поля таблицы FeeSigners
  #StreamXLT.CreateTblFld('Подписант_nRec');
  #StreamXLT.CreateTblFld('Подписант_ФИО' );
  #StreamXLT.CreateTblFld('Подписант_Табельный_Номер');
  #StreamXLT.CreateTblFld('Подписант_Должность');
  #StreamXLT.CreateTblFld('Подписант_Роль');

  // Если установлена выборка группы
  if (#iFeeSigners.FeeSignersIsValid) //
  {
    var wFeeSignersNum, wFeeSignersCount : word;
    // if (#iFeeSigners.RestrictFeeByRole(1, cgRole_ChlenCom))
    // {
      wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;
      // Выгрузка полей таблицы FeeSigners в XLT-шаблон
      if (#iFeeSigners.GetSignerFirst)
      {
        For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum++)
        {
          #StreamXLT.ClearTblBuffer;
          #StreamXLT.SetTblNumberFldValue('Подписант_nRec',            #iFeeSigners.GetSignerNRec);        // Подписант_nRec
          #StreamXLT.SetTblStringFldValue('Подписант_ФИО',             #iFeeSigners.GetSignerFIO(1));      // Подписант_ФИО
          #StreamXLT.SetTblStringFldValue('Подписант_Табельный_Номер', #iFeeSigners.GetSignerTabN);        // Подписант_Табельный_Номер
          #StreamXLT.SetTblStringFldValue('Подписант_Должность',       #iFeeSigners.GetSignerPosition(1)); // Подписант_Должность
          #StreamXLT.SetTblStringFldValue('Подписант_Роль',            #iFeeSigners.GetSignerRole);        // Подписант_Роль
          #StreamXLT.InsTblRow;

          if (not #iFeeSigners.GetSignerNext)
            break;
        }
      }
    // }
  }
  else   // Если нет подписантов
  {
      #StreamXLT.ClearTblBuffer;
      #StreamXLT.SetTblNumberFldValue('Подписант_nRec',            0);  // Подписант_nRec
      #StreamXLT.SetTblStringFldValue('Подписант_ФИО',             ''); // Подписант_ФИО
      #StreamXLT.SetTblStringFldValue('Подписант_Табельный_Номер', ''); // Подписант_Табельный_Номер
      #StreamXLT.SetTblStringFldValue('Подписант_Должность',       ''); // Подписант_Должность
      #StreamXLT.SetTblStringFldValue('Подписант_Роль',            ''); // Подписант_Роль
      #StreamXLT.InsTblRow;
  }

  #StreamXLT.PublishTbl('FeeSigners');
}
#end

//-----------------------------------------------------------------------------
// Макроопределения вывода Членов Коммисии из подписантов в XLT-шаблон
//   iFeeSigners     - имя переменной объекта группы подписантов (типа FeeSigners)
//   StreamXLT       - имя перемеенной объекта выгрузки в XLT-шаблон (типа XLSRepBuilder)
// Вывод Полностью совпадает с коммисией   WriteXltCommissionTable(iCommission,StreamXLT), вплоть до имен выводимых полей
#declare WriteXltFeeSignersTableOS(iFeeSigners,StreamXLT)
{

  #StreamXLT.CreateTbl('Commission');   // Создаем таблицу  FeeSigners
  // Поля таблицы Commission
  #StreamXLT.CreateTblFld('Член_комиссии_nRec');
  #StreamXLT.CreateTblFld('Член_комиссии_ФИО' );
  #StreamXLT.CreateTblFld('Член_комиссии_Табельный_Номер');
  #StreamXLT.CreateTblFld('Член_комиссии_Должность');

  var wFeeSignersCount : word;
  wFeeSignersCount := 0;

  // Если установлена выборка группы
  if (#iFeeSigners.FeeSignersIsValid) // Выгрузка полей таблицы FeeSigners в XLT-шаблон
  {
    if (#iFeeSigners.RestrictFeeByRole(1, cgRole_ChlenCom))
      if (#iFeeSigners.GetSignerFirst)
        do
        {
          wFeeSignersCount++;
          #StreamXLT.ClearTblBuffer;
          #StreamXLT.SetTblNumberFldValue('Член_комиссии_nRec',            #iFeeSigners.GetSignerNRec); // Член_комиссии_nRec
          #StreamXLT.SetTblStringFldValue('Член_комиссии_ФИО',             #iFeeSigners.GetSignerFIO(1)); // Член_комиссии_ФИО
          #StreamXLT.SetTblStringFldValue('Член_комиссии_Табельный_Номер', #iFeeSigners.GetSignerTabN); // Член_комиссии_Табельный_Номер
          #StreamXLT.SetTblStringFldValue('Член_комиссии_Должность',       #iFeeSigners.GetSignerPosition(1)); // Член_комиссии_Должность
          #StreamXLT.InsTblRow;
        }
        while (#iFeeSigners.GetSignerNext);

    #iFeeSigners.ClearRestriction;
  }

  if (wFeeSignersCount = 0) // Если нет комиссии
  {
    #StreamXLT.ClearTblBuffer;
    #StreamXLT.SetTblNumberFldValue('Член_комиссии_nRec',            0); // Член_комиссии_nRec
    #StreamXLT.SetTblStringFldValue('Член_комиссии_ФИО',             ''); // Член_комиссии_ФИО
    #StreamXLT.SetTblStringFldValue('Член_комиссии_Табельный_Номер', ''); // Член_комиссии_Табельный_Номер
    #StreamXLT.SetTblStringFldValue('Член_комиссии_Должность',       ''); // Член_комиссии_Должность
    #StreamXLT.InsTblRow;
  }

  #StreamXLT.PublishTbl('Commission');
}
#end   // WriteXltFeeSignersTableOS

//-----------------------------------------------------------------------------
// Макроопределения вывода только ОТВЕТСТВЕННЫх из подписантов  в XLT-шаблон
//   iFeeSigners     - имя переменной объекта группы подписантов (типа FeeSigners)
//   StreamXLT       - имя перемеенной объекта выгрузки в XLT-шаблон (типа XLSRepBuilder)
// Вывод Полностью совпадает с коммисией   WriteXltResponsibleTable(iResponsible,pXL);, вплоть до имен выводимых полей
#declare WriteXltFeeSignersTableOSResponsible(iFeeSigners,StreamXLT)
{
  var wFeeSignersNum : word;
  var wFeeSignersCount : word;  wFeeSignersCount :=0;

  // Ответственные
  pXL.CreateTbl('Responsible');  // Создаем таблицу  Responsible
  // Поля таблицы Responsible
  pXL.CreateTblFld('Ответственное_лицо_nRec');
  pXL.CreateTblFld('Ответственное_лицо_ФИО');
  pXL.CreateTblFld('Ответственное_лицо_Табельный_Номер');
  pXL.CreateTblFld('Ответственное_лицо_Должность');

  if (#iFeeSigners.RestrictFeeByRole(1, cgRole_Otvetstv))
    wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;

  // Выгрузка полей таблицы Responsible в XLT-шаблон
  if (#iFeeSigners.GetSignerFirst)
  {
    For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum++)
    {
      #StreamXLT.ClearTblBuffer;
      #StreamXLT.SetTblNumberFldValue('Ответственное_лицо_nRec',            #iFeeSigners.GetSignerNRec);        // Ответственное_лицо_nRec
      #StreamXLT.SetTblStringFldValue('Ответственное_лицо_ФИО',             #iFeeSigners.GetSignerFIO(1));      // Ответственное_лицо_ФИО
      #StreamXLT.SetTblStringFldValue('Ответственное_лицо_Табельный_Номер', #iFeeSigners.GetSignerTabN);        // Ответственное_лицо_Табельный_Номер
      #StreamXLT.SetTblStringFldValue('Ответственное_лицо_Должность',       #iFeeSigners.GetSignerPosition(1)); // Ответственное_лицо_Должность
      #StreamXLT.InsTblRow;

      if (not #iFeeSigners.GetSignerNext)
        break;
    }
  }

  pXL.PublishTbl('Responsible');

  #iFeeSigners.ClearRestriction;
}
#end   // WriteXltFeeSignersTableOS

//-----------------------------------------------------------------------------
// Макроопределения вывода группы подписантов в XLT-шаблон (все варианты написания)
//   iFeeSigners     - имя переменной объекта группы подписантов (типа FeeSigners)
//   StreamXLT       - имя перемеенной объекта выгрузки в XLT-шаблон (типа XLSRepBuilder)
#declare WriteXltFeeSignersAllTable(iFeeSigners,StreamXLT)
{
  // * Подписанты:
  var wFeeSignersNum,  wFeeSignersCount : word;

  // Создаем таблицу  FeeSigners
  #StreamXLT.CreateTbl('FeeSigners');

  // Поля таблицы FeeSigners
  #StreamXLT.CreateTblFld('Подписант_nRec');
  #StreamXLT.CreateTblFld('Подписант_ФИО_1' );
  #StreamXLT.CreateTblFld('Подписант_ФИО_2' );
  #StreamXLT.CreateTblFld('Подписант_ФИО_3' );
  #StreamXLT.CreateTblFld('Подписант_ФИО_4' );
  #StreamXLT.CreateTblFld('Подписант_ФИО_5' );
  #StreamXLT.CreateTblFld('Подписант_ФИО_6' );
  #StreamXLT.CreateTblFld('Подписант_ФИО_7' );
  #StreamXLT.CreateTblFld('Подписант_ФИО_8' );
  #StreamXLT.CreateTblFld('Подписант_ФИО_9' );
  #StreamXLT.CreateTblFld('Подписант_ФИО_10' );
  #StreamXLT.CreateTblFld('Подписант_ФИО_11' );
  #StreamXLT.CreateTblFld('Подписант_ФИО_12' );
  #StreamXLT.CreateTblFld('Подписант_Табельный_Номер');
  #StreamXLT.CreateTblFld('Подписант_Должность_1');
  #StreamXLT.CreateTblFld('Подписант_Должность_2');
  #StreamXLT.CreateTblFld('Подписант_Должность_3');
  #StreamXLT.CreateTblFld('Подписант_Должность_4');
  #StreamXLT.CreateTblFld('Подписант_Должность_5');
  #StreamXLT.CreateTblFld('Подписант_Должность_6');
  #StreamXLT.CreateTblFld('Подписант_Роль');

  // Если установлена выборка группы подписантов
  if (#iFeeSigners.FeeSignersIsValid) //
  {
   // if (#iFeeSigners.RestrictFeeByRole(1, cgRole_ChlenCom))
   // {
    wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;
    // Выгрузка полей таблицы FeeSigners в XLT-шаблон
    if (#iFeeSigners.GetSignerFirst)
    {
      For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum++)
      {
        #StreamXLT.ClearTblBuffer;

        #StreamXLT.SetTblNumberFldValue('Подписант_nRec',            #iFeeSigners.GetSignerNRec);        // Подписант_nRec
        #StreamXLT.SetTblStringFldValue('Подписант_ФИО_1',           #iFeeSigners.GetSignerFIO(1)));     // Подписант_ФИО_1
        #StreamXLT.SetTblStringFldValue('Подписант_ФИО_2',           #iFeeSigners.GetSignerFIO(2)));     // Подписант_ФИО_2
        #StreamXLT.SetTblStringFldValue('Подписант_ФИО_3',           #iFeeSigners.GetSignerFIO(3)));     // Подписант_ФИО_3
        #StreamXLT.SetTblStringFldValue('Подписант_ФИО_4',           #iFeeSigners.GetSignerFIO(4)));     // Подписант_ФИО_4
        #StreamXLT.SetTblStringFldValue('Подписант_ФИО_5',           #iFeeSigners.GetSignerFIO(5)));     // Подписант_ФИО_5
        #StreamXLT.SetTblStringFldValue('Подписант_ФИО_6',           #iFeeSigners.GetSignerFIO(6)));     // Подписант_ФИО_6
        #StreamXLT.SetTblStringFldValue('Подписант_ФИО_7',           #iFeeSigners.GetSignerFIO(7)));     // Подписант_ФИО_7
        #StreamXLT.SetTblStringFldValue('Подписант_ФИО_8',           #iFeeSigners.GetSignerFIO(8)));     // Подписант_ФИО_8
        #StreamXLT.SetTblStringFldValue('Подписант_ФИО_9',           #iFeeSigners.GetSignerFIO(9)));     // Подписант_ФИО_9
        #StreamXLT.SetTblStringFldValue('Подписант_ФИО_10',          #iFeeSigners.GetSignerFIO(10)));    // Подписант_ФИО_10
        #StreamXLT.SetTblStringFldValue('Подписант_ФИО_11',          #iFeeSigners.GetSignerFIO(11)));    // Подписант_ФИО_11
        #StreamXLT.SetTblStringFldValue('Подписант_ФИО_12',          #iFeeSigners.GetSignerFIO(12)));    // Подписант_ФИО_12
        #StreamXLT.SetTblStringFldValue('Подписант_Табельный_Номер', #iFeeSigners.GetSignerTabN);        // Подписант_Табельный_Номер
        #StreamXLT.SetTblStringFldValue('Подписант_Должность_1',     #iFeeSigners.GetSignerPosition(1)); // Подписант_Должность_1
        #StreamXLT.SetTblStringFldValue('Подписант_Должность_2',     #iFeeSigners.GetSignerPosition(2)); // Подписант_Должность_2
        #StreamXLT.SetTblStringFldValue('Подписант_Должность_3',     #iFeeSigners.GetSignerPosition(3)); // Подписант_Должность_3
        #StreamXLT.SetTblStringFldValue('Подписант_Должность_4',     #iFeeSigners.GetSignerPosition(4)); // Подписант_Должность_4
        #StreamXLT.SetTblStringFldValue('Подписант_Должность_5',     #iFeeSigners.GetSignerPosition(5)); // Подписант_Должность_5
        #StreamXLT.SetTblStringFldValue('Подписант_Должность_6',     #iFeeSigners.GetSignerPosition(6)); // Подписант_Должность_6
        #StreamXLT.SetTblStringFldValue('Подписант_Роль',            #iFeeSigners.GetSignerRole);        // Подписант_Роль

        #StreamXLT.InsTblRow;
        if (not #iFeeSigners.GetSignerNext)
          break;
      }
    }
   // }
  }
  else
  {
    // Выгрузка полей таблицы FeeSigners в XLT-шаблон
      #StreamXLT.ClearTblBuffer;

      #StreamXLT.SetTblNumberFldValue('Подписант_nRec',            0);  // Подписант_nRec
      #StreamXLT.SetTblStringFldValue('Подписант_ФИО_1',           ''); // Подписант_ФИО_1
      #StreamXLT.SetTblStringFldValue('Подписант_ФИО_2',           ''); // Подписант_ФИО_2
      #StreamXLT.SetTblStringFldValue('Подписант_ФИО_3',           ''); // Подписант_ФИО_3
      #StreamXLT.SetTblStringFldValue('Подписант_ФИО_4',           ''); // Подписант_ФИО_4
      #StreamXLT.SetTblStringFldValue('Подписант_ФИО_5',           ''); // Подписант_ФИО_5
      #StreamXLT.SetTblStringFldValue('Подписант_ФИО_6',           ''); // Подписант_ФИО_6
      #StreamXLT.SetTblStringFldValue('Подписант_ФИО_7',           ''); // Подписант_ФИО_7
      #StreamXLT.SetTblStringFldValue('Подписант_ФИО_8',           ''); // Подписант_ФИО_8
      #StreamXLT.SetTblStringFldValue('Подписант_ФИО_9',           ''); // Подписант_ФИО_9
      #StreamXLT.SetTblStringFldValue('Подписант_ФИО_10',          ''); // Подписант_ФИО_10
      #StreamXLT.SetTblStringFldValue('Подписант_ФИО_11',          ''); // Подписант_ФИО_11
      #StreamXLT.SetTblStringFldValue('Подписант_ФИО_12',          ''); // Подписант_ФИО_12
      #StreamXLT.SetTblStringFldValue('Подписант_Табельный_Номер', ''); // Подписант_Табельный_Номер
      #StreamXLT.SetTblStringFldValue('Подписант_Должность_1',     ''); // Подписант_Должность_1
      #StreamXLT.SetTblStringFldValue('Подписант_Должность_2',     ''); // Подписант_Должность_2
      #StreamXLT.SetTblStringFldValue('Подписант_Должность_3',     ''); // Подписант_Должность_3
      #StreamXLT.SetTblStringFldValue('Подписант_Должность_4',     ''); // Подписант_Должность_4
      #StreamXLT.SetTblStringFldValue('Подписант_Должность_5',     ''); // Подписант_Должность_5
      #StreamXLT.SetTblStringFldValue('Подписант_Должность_6',     ''); // Подписант_Должность_6
      #StreamXLT.SetTblStringFldValue('Подписант_Роль',            ''); // Подписант_Роль

      #StreamXLT.InsTblRow;
  }
  #StreamXLT.PublishTbl('FeeSigners');
}
#end

//-----------------------------------------------------------------------------
//Переменные для XLT-шаблона
// Внимание!!! Вызывать WriteXltFeeSignersVar рекомендуется ТОЛЬКО перед PublishVar
// чтобы не сбивались форматы
#declare WriteXltFeeSignersVar(iFeeSigners,StreamXLT)
{
 if (#iFeeSigners.FeeSignersIsValid) 
 {
  // Группа : boolean
  #StreamXLT.SetNumberVar('Группа', word(#iFeeSigners.FeeSignersIsValid));

  // cFeeSignersNRec - Ссылка на выбранную выборку
  #StreamXLT.SetNumberVar('cFeeSignersNRec', #iFeeSigners.GetFeeSigners);

  // Имя_выборки_группы подписантов // FeeSignersName
  #StreamXLT.SetStringVar('Имя_группы', #iFeeSigners.GetFeeSignersName);

  // * Списки в формате установленом пользователем:

  // Информация_о_председателе, Список_подписантов - в формате установленом пользователем
  #StreamXLT.SetStringVar('Информация_о_председателе', #iFeeSigners.GetSignersList(0));
  #StreamXLT.SetStringVar('Список_подписантов',        #iFeeSigners.GetSignersList(1));

  // * Председатель:
  if (#iFeeSigners.RestrictFeeByRole(2, 'PredCom'))
  {
    #StreamXLT.SetNumberVar('Председатель_nRec',           #iFeeSigners.GetSignerNRec);        // Председатель_nRec
    #StreamXLT.SetStringVar('Председатель_ФИО',            #iFeeSigners.GetSignerFIO(1));      // Председатель_ФИО
    #StreamXLT.SetStringVar('Председатель_Табельный_Номер',#iFeeSigners.GetSignerTabN);        // Председатель_Табельный_Номер
    #StreamXLT.SetStringVar('Председатель_Должность',      #iFeeSigners.GetSignerPosition(1)); // Председатель_Должность
    #StreamXLT.SetStringVar('Председатель_Роль',           #iFeeSigners.GetSignerRole);        // Председатель_Роль
  }
  #iFeeSigners.ClearRestriction;

  // Количество_подписантов
  #StreamXLT.SetNumberVar('Количество_подписантов', #iFeeSigners.GetFeeSignersCount);
 }
}
#end // WriteXltFeeSignersVar

//-----------------------------------------------------------------------------
// Переменные для XLT-шаблона
// Внимание!!! Вызывать WriteXltFeeSignersVar рекомендуется ТОЛЬКО перед PublishVar, чтобы не сбивались форматы
// Полный аналог WriteXltCommissionVar
#declare WriteXltFeeSignersVarOS(iFeeSigners,StreamXLT)
{
 if (#iFeeSigners.FeeSignersIsValid) 
 {
  #StreamXLT.SetNumberVar('Комиссия', word(#iFeeSigners.FeeSignersIsValid));    // Группа : boolean
  #StreamXLT.SetNumberVar('cSelectionCommissionNRec', #iFeeSigners.GetFeeSigners);    // cSelectionCommissionNRec - Ссылка на выбранную выборку


  #StreamXLT.SetStringVar('Имя_комиссии', #iFeeSigners.GetFeeSignersName);   // Имя_выборки_группы подписантов // FeeSignersName

  // Информация_о_председателе, Список_подписантов - в формате установленом пользователем
  #StreamXLT.SetStringVar('Информация_о_председателе', #iFeeSigners.GetSignersList(0));
  #StreamXLT.SetStringVar('Список_членов_комиссии',    #iFeeSigners.GetSignersList(1));

  // * Председатель:
  if (#iFeeSigners.RestrictFeeByRole(2, 'PredCom'))
  {
    #StreamXLT.SetNumberVar('Председатель_комиссии_nRec',           #iFeeSigners.GetSignerNRec);        // Председатель_nRec
    #StreamXLT.SetStringVar('Председатель_комиссии_ФИО',            #iFeeSigners.GetSignerFIO(1));      // Председатель_ФИО
    #StreamXLT.SetStringVar('Председатель_комиссии_Табельный_Номер',#iFeeSigners.GetSignerTabN);        // Председатель_Табельный_Номер
    #StreamXLT.SetStringVar('Председатель_комиссии_Должность',      #iFeeSigners.GetSignerPosition(1)); // Председатель_Должность
  }

  #iFeeSigners.ClearRestriction;

  #StreamXLT.SetNumberVar('Количество_членов_комиссии', #iFeeSigners.GetFeeSignersCount);  // Количество_подписантов
 }
}
#end // WriteXltFeeSignersVarOS

//-----------------------------------------------------------------------------
#declare WriteXltFeeSignersResponsibleVarOs(iFeeSigners,StreamXLT)
{
 if (#iFeeSigners.FeeSignersIsValid) 
 {
  #StreamXLT.SetNumberVar('Ответственные_лица', word(#iFeeSigners.FeeSignersIsValid));  // Ответственные_лица : boolean
  #StreamXLT.SetNumberVar('cSelectionResponsibleNRec', #iFeeSigners.GetFeeSigners);     // cSelectionResponsibleNRec - Ссылка на выбранную выборку
  #StreamXLT.SetStringVar('Имя_выборки_ответственных_лиц', #iFeeSigners.GetFeeSignersName);  // Имя_выборки_ответственных_лиц // ResponsibleName
  #StreamXLT.SetStringVar('Список_ответственных_лиц', #iFeeSigners.GetSignersList(1));  // Список_ответственных_лиц - в формате установленом пользователем

  // * Списки ответственных лиц с жёстко установленой структурой:
  #StreamXLT.SetStringVar('ФИО_ответственных_лиц', '');               // ФИО_ответственных_лиц
  #StreamXLT.SetStringVar('Должность_и_ФИО_ответственных_лиц', '');   // Должность_и_ФИО_ответственных_лиц
  #StreamXLT.SetStringVar('ФИО_и_Должность_ответственных_лиц', '');   // ФИО_и_Должность_ответственных_лиц
  #StreamXLT.SetNumberVar('Количество_ответственных_лиц', #iFeeSigners.GetFeeSignersCount);  // Количество_ответственных_лиц
 }
}
#end // WriteXltFeeSignersResponsibleVarOs

//-----------------------------------------------------------------------------
//Переменные для XLT-шаблона
// Внимание!!! Вызывать WriteXltFeeSignersAllVar рекомендуется ТОЛЬКО перед PublishVar
// чтобы не сбивались форматы
#declare WriteXltFeeSignersAllVar(iFeeSigners,StreamXLT)
{
  // Группа : boolean
  #StreamXLT.SetNumberVar('Группа', word(#iFeeSigners.FeeSignersIsValid));

  // cFeeSignersNRec - Ссылка на выбранную выборку
  #StreamXLT.SetNumberVar('cFeeSignersNRec', #iFeeSigners.GetFeeSigners);

  // Имя_выборки_группы подписантов // FeeSignersName
  #StreamXLT.SetStringVar('Имя_группы', #iFeeSigners.GetFeeSignersName);

  // * Списки в формате установленом пользователем:

  // Информация_о_председателе, Список_подписантов - в формате установленом пользователем
  #StreamXLT.SetStringVar('Информация_о_председателе', #iFeeSigners.GetSignersList(0));
  #StreamXLT.SetStringVar('Список_подписантов',        #iFeeSigners.GetSignersList(1));

  // * Председатель:
  if (#iFeeSigners.RestrictFeeByRole(2, 'PredCom'))
  {
    #StreamXLT.SetNumberVar('Председатель_nRec',           #iFeeSigners.GetSignerNRec);        // Председатель_nRec
    #StreamXLT.SetStringVar('Председатель_ФИО_1',          #iFeeSigners.GetSignerFIO(1));      // Председатель_ФИО_1
    #StreamXLT.SetStringVar('Председатель_ФИО_2',          #iFeeSigners.GetSignerFIO(2));      // Председатель_ФИО_2
    #StreamXLT.SetStringVar('Председатель_ФИО_3',          #iFeeSigners.GetSignerFIO(3));      // Председатель_ФИО_3
    #StreamXLT.SetStringVar('Председатель_ФИО_4',          #iFeeSigners.GetSignerFIO(4));      // Председатель_ФИО_4
    #StreamXLT.SetStringVar('Председатель_ФИО_5',          #iFeeSigners.GetSignerFIO(5));      // Председатель_ФИО_5
    #StreamXLT.SetStringVar('Председатель_ФИО_6',          #iFeeSigners.GetSignerFIO(6));      // Председатель_ФИО_6
    #StreamXLT.SetStringVar('Председатель_ФИО_7',          #iFeeSigners.GetSignerFIO(7));      // Председатель_ФИО_7
    #StreamXLT.SetStringVar('Председатель_ФИО_8',          #iFeeSigners.GetSignerFIO(8));      // Председатель_ФИО_8
    #StreamXLT.SetStringVar('Председатель_ФИО_9',          #iFeeSigners.GetSignerFIO(9));      // Председатель_ФИО_9
    #StreamXLT.SetStringVar('Председатель_ФИО_10',         #iFeeSigners.GetSignerFIO(10));     // Председатель_ФИО_10
    #StreamXLT.SetStringVar('Председатель_ФИО_11',         #iFeeSigners.GetSignerFIO(11));     // Председатель_ФИО_11
    #StreamXLT.SetStringVar('Председатель_ФИО_12',         #iFeeSigners.GetSignerFIO(12));     // Председатель_ФИО_12
    #StreamXLT.SetStringVar('Председатель_Табельный_Номер',#iFeeSigners.GetSignerTabN);        // Председатель_Табельный_Номер
    #StreamXLT.SetStringVar('Председатель_Должность_1',    #iFeeSigners.GetSignerPosition(1)); // Председатель_Должность_1
    #StreamXLT.SetStringVar('Председатель_Должность_2',    #iFeeSigners.GetSignerPosition(2)); // Председатель_Должность_2
    #StreamXLT.SetStringVar('Председатель_Должность_3',    #iFeeSigners.GetSignerPosition(3)); // Председатель_Должность_3
    #StreamXLT.SetStringVar('Председатель_Должность_4',    #iFeeSigners.GetSignerPosition(4)); // Председатель_Должность_4
    #StreamXLT.SetStringVar('Председатель_Должность_5',    #iFeeSigners.GetSignerPosition(5)); // Председатель_Должность_5
    #StreamXLT.SetStringVar('Председатель_Должность_6',    #iFeeSigners.GetSignerPosition(6)); // Председатель_Должность_6
    #StreamXLT.SetStringVar('Председатель_Роль',           #iFeeSigners.GetSignerRole);        // Председатель_Роль
  }

  #iFeeSigners.ClearRestriction;

  // Количество_подписантов
  #StreamXLT.SetNumberVar('Количество_подписантов', #iFeeSigners.GetFeeSignersCount);
}
#end // WriteXltFeeSignersVar

//==============================================================================
//-----------------------------------------------------------------------------
// Переменные для FR-отчета
#declare WriteFRFeeSignersChairMan(iFeeSigners,TableFR)
{
  // * Председатель:
  if (#iFeeSigners.RestrictFeeByRole(2, 'PredCom'))
  {
    #TableFR.BossFIO       := #iFeeSigners.GetSignerFIO(1);      // Председатель_ФИО
    #TableFR.BossPosition  := #iFeeSigners.GetSignerPosition(1); // Председатель_Должность
    #TableFR.BossRole      := #iFeeSigners.GetSignerRole;        // Председатель_Роль
  }

  #iFeeSigners.ClearRestriction;
}
#end // WriteFRFeeSignersChairMan

//-----------------------------------------------------------------------------
// Переменные для FR-отчета (все варианты написания)
#declare WriteFRFeeSignersAllChairMan(iFeeSigners,TableFR)
{
  // * Председатель:
  if (#iFeeSigners.RestrictFeeByRole(2, 'PredCom'))
  {
    #TableFR.BossFIO_1       := #iFeeSigners.GetSignerFIO(1);      // Председатель_ФИО_1
    #TableFR.BossFIO_2       := #iFeeSigners.GetSignerFIO(2);      // Председатель_ФИО_2
    #TableFR.BossFIO_3       := #iFeeSigners.GetSignerFIO(3);      // Председатель_ФИО_3
    #TableFR.BossFIO_4       := #iFeeSigners.GetSignerFIO(4);      // Председатель_ФИО_4
    #TableFR.BossFIO_5       := #iFeeSigners.GetSignerFIO(5);      // Председатель_ФИО_5
    #TableFR.BossFIO_6       := #iFeeSigners.GetSignerFIO(6);      // Председатель_ФИО_6
    #TableFR.BossFIO_7       := #iFeeSigners.GetSignerFIO(7);      // Председатель_ФИО_7
    #TableFR.BossFIO_8       := #iFeeSigners.GetSignerFIO(8);      // Председатель_ФИО_8
    #TableFR.BossFIO_9       := #iFeeSigners.GetSignerFIO(9);      // Председатель_ФИО_9
    #TableFR.BossFIO_10      := #iFeeSigners.GetSignerFIO(10);     // Председатель_ФИО_10
    #TableFR.BossFIO_11      := #iFeeSigners.GetSignerFIO(11);     // Председатель_ФИО_11
    #TableFR.BossFIO_12      := #iFeeSigners.GetSignerFIO(12);     // Председатель_ФИО_12
    #TableFR.BossPosition_1  := #iFeeSigners.GetSignerPosition(1); // Председатель_Должность_1
    #TableFR.BossPosition_2  := #iFeeSigners.GetSignerPosition(2); // Председатель_Должность_2
    #TableFR.BossPosition_3  := #iFeeSigners.GetSignerPosition(3); // Председатель_Должность_3
    #TableFR.BossPosition_4  := #iFeeSigners.GetSignerPosition(4); // Председатель_Должность_4
    #TableFR.BossPosition_5  := #iFeeSigners.GetSignerPosition(5); // Председатель_Должность_5
    #TableFR.BossPosition_6  := #iFeeSigners.GetSignerPosition(6); // Председатель_Должность_6
    #TableFR.BossRole        := #iFeeSigners.GetSignerRole;        // Председатель_Роль
  }

  #iFeeSigners.ClearRestriction;
}
#end // WriteFRFeeSignersAllChairMan

//-----------------------------------------------------------------------------
//ФИО и должности подписантов для FR-отчета
#declare WriteFRFeeSigners(iFeeSigners,TableFR)
{
  Delete all #TableFR;

  if (#iFeeSigners.FeeSignersIsValid)
  {
    // * Подписанты
    var wFeeSignersNum : word;
    var wFeeSignersCount : word;
    wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;

    if (#iFeeSigners.GetSignerFirst)
    {
      For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum := wFeeSignersNum + 1)
      {
        // Входим в цикл по подписантам
        ClearBuffer(##TableFR);
        #TableFR.MemberFIO      := #iFeeSigners.GetSignerFIO(1);      // Подписант_ФИО
        #TableFR.MemberPosition := #iFeeSigners.GetSignerPosition(1); // Подписант_Должность
        #TableFR.MemberRole     := #iFeeSigners.GetSignerRole;        // Подписант_Роль
        Insert Current #TableFR;
        if (not #iFeeSigners.GetSignerNext)
          break;
      }
    }
  }
}
#end // WriteFRFeeSigners

//-----------------------------------------------------------------------------
//ФИО и должности подписантов для FR-отчета (все варианты написания)
#declare WriteFRFeeSignersAll(iFeeSigners,TableFR)
{
  // * Подписанты
  var wFeeSignersNum : word;
  var wFeeSignersCount : word;
  wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;

  if (#iFeeSigners.GetSignerFirst)
  {
    For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum := wFeeSignersNum + 1)
    {
      // Входим в цикл по подписантам
      ClearBuffer(##TableFR);
      #TableFR.MemberFIO_1      := #iFeeSigners.GetSignerFIO(1);      // Подписант_ФИО_1
      #TableFR.MemberFIO_2      := #iFeeSigners.GetSignerFIO(2);      // Подписант_ФИО_2
      #TableFR.MemberFIO_3      := #iFeeSigners.GetSignerFIO(3);      // Подписант_ФИО_3
      #TableFR.MemberFIO_4      := #iFeeSigners.GetSignerFIO(4);      // Подписант_ФИО_4
      #TableFR.MemberFIO_5      := #iFeeSigners.GetSignerFIO(5);      // Подписант_ФИО_5
      #TableFR.MemberFIO_6      := #iFeeSigners.GetSignerFIO(6);      // Подписант_ФИО_6
      #TableFR.MemberFIO_7      := #iFeeSigners.GetSignerFIO(7);      // Подписант_ФИО_7
      #TableFR.MemberFIO_8      := #iFeeSigners.GetSignerFIO(8);      // Подписант_ФИО_8
      #TableFR.MemberFIO_9      := #iFeeSigners.GetSignerFIO(9);      // Подписант_ФИО_9
      #TableFR.MemberFIO_10     := #iFeeSigners.GetSignerFIO(10);     // Подписант_ФИО_10
      #TableFR.MemberFIO_11     := #iFeeSigners.GetSignerFIO(11);     // Подписант_ФИО_11
      #TableFR.MemberFIO_12     := #iFeeSigners.GetSignerFIO(12);     // Подписант_ФИО_12
      #TableFR.MemberPosition_1 := #iFeeSigners.GetSignerPosition(1); // Подписант_Должность_1
      #TableFR.MemberPosition_2 := #iFeeSigners.GetSignerPosition(2); // Подписант_Должность_2
      #TableFR.MemberPosition_3 := #iFeeSigners.GetSignerPosition(3); // Подписант_Должность_3
      #TableFR.MemberPosition_4 := #iFeeSigners.GetSignerPosition(4); // Подписант_Должность_4
      #TableFR.MemberPosition_5 := #iFeeSigners.GetSignerPosition(5); // Подписант_Должность_5
      #TableFR.MemberPosition_6 := #iFeeSigners.GetSignerPosition(6); // Подписант_Должность_6
      #TableFR.MemberRole       := #iFeeSigners.GetSignerRole;        // Подписант_Роль
      Insert Current #TableFR;
      if (not #iFeeSigners.GetSignerNext)
        break;
    }
  }
}
#end // WriteFRFeeSigners

//-----------------------------------------------------------------------------
//ФИО и должности подписантов для FR-отчета
#declare WriteFRFeeSignersOS(iFeeSigners,TableFR)
{
  Delete all #TableFR;

  if (#iFeeSigners.FeeSignersIsValid) // Выгрузка полей таблицы FeeSigners
  {
    var wFeeSignersNum, wFeeSignersCount : word;
    if (#iFeeSigners.RestrictFeeByRole(1, cgRole_ChlenCom))
    {
      wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;
      if (#iFeeSigners.GetSignerFirst)
      {
        For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum++)
        {
          // Входим в цикл по подписантам
          ClearBuffer(##TableFR);
          #TableFR.MemberFIO      := #iFeeSigners.GetSignerFIO(1);      // Подписант_ФИО
          #TableFR.MemberPosition := #iFeeSigners.GetSignerPosition(1); // Подписант_Должность
          #TableFR.MemberRole     := #iFeeSigners.GetSignerRole;        // Подписант_Роль
          Insert Current #TableFR;

          if (not #iFeeSigners.GetSignerNext)
            break;
        }
      }
    }

    #iFeeSigners.ClearRestriction;
  }
}
#end // WriteFRFeeSignersOS


#end // __FeeSignersFun__
//-----------------------------------------------------------------------------
