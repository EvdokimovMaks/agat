#ifndef __webDefItm__vih__
#define __webDefItm__vih__

Const 
  tsmyerror = 500;  // код моей ошибки 
end;

#declare DEF_IWebDef_ITM
  Property ExternalId : comp    read write;  // внешний идентификатор
#end

#declare DEF_WebDef_ITM(ifcName)
    var L_ExternalId : comp;          // внешний идентификатор

    Property #ifcName.ExternalId   : comp  read  L_ExternalId 
                                           write L_ExternalId := Result;  // Внешний идентификатор
#end

#define namefileerr 'err.log'

// описание макроса 
// имя таблицы основной 
// имя таблицы синонима
// строковое название таблицы
// нужно вставлять или нет результаты в темповую таблицы 
// нужно понаименованию искать запись если Id незадан 
#declare DEF_SETDATA_ITM(tblName,tblNameSyn,tblNameStr,bNeetInsResult,bNeedIdbyName)
    // если небыла открыта транзакция 
//    if (not l_modification)
//      setModification(true);
    
    // код ошибки (код который генерит атлантис или я сам при проверке в CheckFields)  
    var wCodeError : word;
    wCodeError := 0;
    l_sTextError := '';
    var wTypeOper  : word;
    wTypeOper := 0; // небыло никаких операций

    if (Id = 0)
    {
      // пробуем поднять по названию 
      var sStr : string;
      sStr := UpCase(Name);
      if (#bNeedIdbyName)
      {
        if (GetFirst #tblNameSyn where ((sStr == #tblNameSyn.Name)) = tsOk)
        {
         Id := #tblNameSyn.Nrec;
         wTypeOper := 2;// операция изменения  
        }  
        else
          wTypeOper := 1;// операция вставки 
      }    
      else
        wTypeOper := 1;// операция вставки 
    }
    else
    {
      wTypeOper := 2;// операция изменения  
      var cNrec : comp;
      cNrec := Id;
      if (GetFirst #tblNameSyn where ((cNrec == #tblNameSyn.Nrec)) <> tsOk)
        wCodeError := tsInvalidPositioning;
    }  
    
    if (not l_betatestetinit)
      l_betaTester := GetBetaTester;

    _try
    {
      // переменная l_modification выставляется в true в openTransaction для головного
      // объекта, или того подобъекта, который мы модифицируем.
      // Такая реализация позволяет использовать один и тот же объект как головной,
      // модифицируя его, так и как подобъект (ссылка) другого объекта
      
      var sName : string;
      sName := Name;
      if (l_betaTester)
      {
        LogStrToFile(#namefileerr,'Начало операции SETDATA. Дата и время:' + datetostr(GetServerDate, 'DD.MM.YYYY') + ' ' + timetostr(GetServerTime, 'HH:MM:SS'));
        LogStrToFile(#namefileerr,'Параметры: '
                               + 'TableName=' + #tblNameStr + ' | '
                               + 'Id=' + string(id) + ' | ' + 'Name=' + sName+ ' | '
                               + 'l_modification=' + string(l_modification) + ' | '
                               + 'sdFlags= '+ string(sdFlags)
                    );
      }
      
      // проверяем правильно ли заполнеы все поля для объекта и достаточно ли
      // информации для создания записи
      // иначе генериться ошибка создания записи
      wCodeError := CheckField;
      
      // проверяем может уже ошибка есть  
      if (wCodeError = tsOk)     
        if(l_modification)
        {
          wCodeError := modifyData;
          // Это нужно, если был использован конструктор экземпляра,
          // или в нашем примере для работы createHandle
          if( wCodeError = tsOk ) l_id := id;
        }
        // Если есть Primary key - запись найдется автоматически, иначе можно искать
        // по какому-либо полю. Либо по договоренности (например наименование)
        // либо по тому, которое <> '' или 0, тогда можно будет указывать любой
        // уникальный атрибут, не зная Id
        else
        {
          wCodeError := 0;
          if(( sdFlags and sdNoPosition ) = 0 ) Id := 0; // <гзи_ Їгбвм Ўг¤_в -г<_ў п ббл<Є , з_┐ ЄаЁў п
          if(( sdFlags and sdEmptyData ) <> 0 ) Id := 0; // Їгбв п ббл<Є 
        }
    }
    _except
      else {}
    _finally
    {
      // всегда возвращаем чтобы было все успмешно
      if (l_betaTester)
      {
        LogStrToFile(#namefileerr,'Код выполнения операции=' + string(wCodeError) + ' | ' 
                               + 'Id=' + string(id));
        LogStrToFile(#namefileerr,'Конец операции SETDATA. Дата и время:' + datetostr(GetServerDate, 'DD.MM.YYYY') + ' ' + timetostr(GetServerTime, 'HH:MM:SS'));
        LogStrToFile(#namefileerr,'');
      } 
      
      if (#bNeetInsResult)
      {     
        if(l_idRes = comp(0))
          l_idRes := GetNextNRec (#tmpResult, 0);
        l_nIndex := l_nIndex + 1;
          
        clearbuffer(#tmpResult);
        tmpResult.wCodeErrorR := wCodeError;
        tmpResult.sTextErrorR := l_sTextError;
        tmpResult.cRecR := id;
        tmpResult.nIndexR := l_nIndex - 1;
        tmpResult.cRecTmp := l_idRes;
        tmpResult.ExternalIdR := ExternalId;
        tmpResult.wCodeOperR := wTypeOper;
        insert current tmpResult;
      }
      // возвращаем всегда 0 чтобы групповая операция работала
      result := 0;
    }
#end

#declare GREATE_HANDLE_ITM
  procedure IGetHandle.createHandle;
  {
    SetIfcHandleConstructorName( 'InitId' );
    if(l_idRes = comp(0))
      AddIfcHandleParameter( l_Id );
    else
      AddIfcHandleParameter( l_idRes );      
  }  
#end

// конструкторы в нашем примере все одинаковые - практически пустые
#declare DEF_CONSTRUCTORS_IMF(tblName)
  constructor InitByName( Name : string );
  {
    l_idRes := comp(0); 
    l_betatestetinit := false;
    if (GetFirst #tblName where ((UpCase(Name) == #tblName.Name)) = tsok)
      l_id := #tblName.nRec;
    else
      l_id := comp(0);
    pushBounds( tbbyId );
    result := true; 
  }
#end

#end

