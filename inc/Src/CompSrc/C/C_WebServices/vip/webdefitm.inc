#ifndef __webDefItm__vih__
#define __webDefItm__vih__

Const 
  tsmyerror = 500;  // ��� ���� �訡�� 
end;

#declare DEF_IWebDef_ITM
  Property ExternalId : comp    read write;  // ���譨� �����䨪���
#end

#declare DEF_WebDef_ITM(ifcName)
    var L_ExternalId : comp;          // ���譨� �����䨪���

    Property #ifcName.ExternalId   : comp  read  L_ExternalId 
                                           write L_ExternalId := Result;  // ���譨� �����䨪���
#end

#define namefileerr 'err.log'

// ���ᠭ�� ����� 
// ��� ⠡���� �᭮���� 
// ��� ⠡���� ᨭ�����
// ��ப���� �������� ⠡����
// �㦭� ��⠢���� ��� ��� १����� � ⥬����� ⠡���� 
// �㦭� �������������� �᪠�� ������ �᫨ Id ������� 
#declare DEF_SETDATA_ITM(tblName,tblNameSyn,tblNameStr,bNeetInsResult,bNeedIdbyName)
    // �᫨ ���뫠 ����� �࠭����� 
//    if (not l_modification)
//      setModification(true);
    
    // ��� �訡�� (��� ����� ������ �⫠��� ��� � ᠬ �� �஢�થ � CheckFields)  
    var wCodeError : word;
    wCodeError := 0;
    l_sTextError := '';
    var wTypeOper  : word;
    wTypeOper := 0; // ���뫮 ������� ����権

    if (Id = 0)
    {
      // �஡㥬 ������� �� �������� 
      var sStr : string;
      sStr := UpCase(Name);
      if (#bNeedIdbyName)
      {
        if (GetFirst #tblNameSyn where ((sStr == #tblNameSyn.Name)) = tsOk)
        {
         Id := #tblNameSyn.Nrec;
         wTypeOper := 2;// ������ ���������  
        }  
        else
          wTypeOper := 1;// ������ ��⠢�� 
      }    
      else
        wTypeOper := 1;// ������ ��⠢�� 
    }
    else
    {
      wTypeOper := 2;// ������ ���������  
      var cNrec : comp;
      cNrec := Id;
      if (GetFirst #tblNameSyn where ((cNrec == #tblNameSyn.Nrec)) <> tsOk)
        wCodeError := tsInvalidPositioning;
    }  
    
    if (not l_betatestetinit)
      l_betaTester := GetBetaTester;

    _try
    {
      // ��६����� l_modification ���⠢����� � true � openTransaction ��� ���������
      // ��ꥪ�, ��� ⮣� �����ꥪ�, ����� �� �������㥬.
      // ����� ॠ������ �������� �ᯮ�짮���� ���� � �� �� ��ꥪ� ��� ��������,
      // ��������� ���, ⠪ � ��� �����ꥪ� (��뫪�) ��㣮�� ��ꥪ�
      
      var sName : string;
      sName := Name;
      if (l_betaTester)
      {
        LogStrToFile(#namefileerr,'��砫� ����樨 SETDATA. ��� � �६�:' + datetostr(GetServerDate, 'DD.MM.YYYY') + ' ' + timetostr(GetServerTime, 'HH:MM:SS'));
        LogStrToFile(#namefileerr,'��ࠬ����: '
                               + 'TableName=' + #tblNameStr + ' | '
                               + 'Id=' + string(id) + ' | ' + 'Name=' + sName+ ' | '
                               + 'l_modification=' + string(l_modification) + ' | '
                               + 'sdFlags= '+ string(sdFlags)
                    );
      }
      
      // �஢��塞 �ࠢ��쭮 �� �������� �� ���� ��� ��ꥪ� � �����筮 ��
      // ���ଠ樨 ��� ᮧ����� �����
      // ���� ��������� �訡�� ᮧ����� �����
      wCodeError := CheckField;
      
      // �஢��塞 ����� 㦥 �訡�� ����  
      if (wCodeError = tsOk)     
        if(l_modification)
        {
          wCodeError := modifyData;
          // �� �㦭�, �᫨ �� �ᯮ�짮��� ��������� ���������,
          // ��� � ��襬 �ਬ�� ��� ࠡ��� createHandle
          if( wCodeError = tsOk ) l_id := id;
        }
        // �᫨ ���� Primary key - ������ �������� ��⮬���᪨, ���� ����� �᪠��
        // �� ������-���� ����. ���� �� ������७���� (���ਬ�� ������������)
        // ���� �� ⮬�, ���஥ <> '' ��� 0, ⮣�� ����� �㤥� 㪠�뢠�� ��
        // 㭨����� ��ਡ��, �� ���� Id
        else
        {
          wCodeError := 0;
          if(( sdFlags and sdNoPosition ) = 0 ) Id := 0; // <���_ ����� ���_� -�<_��� ���<��, �_� �����
          if(( sdFlags and sdEmptyData ) <> 0 ) Id := 0; // ������ ���<��
        }
    }
    _except
      else {}
    _finally
    {
      // �ᥣ�� �����頥� �⮡� �뫮 �� �ᯬ�譮
      if (l_betaTester)
      {
        LogStrToFile(#namefileerr,'��� �믮������ ����樨=' + string(wCodeError) + ' | ' 
                               + 'Id=' + string(id));
        LogStrToFile(#namefileerr,'����� ����樨 SETDATA. ��� � �६�:' + datetostr(GetServerDate, 'DD.MM.YYYY') + ' ' + timetostr(GetServerTime, 'HH:MM:SS'));
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
      // �����頥� �ᥣ�� 0 �⮡� ��㯯���� ������ ࠡ�⠫�
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

// ���������� � ��襬 �ਬ�� �� ��������� - �ࠪ��᪨ �����
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

