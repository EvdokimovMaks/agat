var
  _TaskNo: Integer;
  _JobID: Comp;
  _TaskName: String;
  DE: IDWExporter;
  IsMS_SQL_UpLoad: boolean;
  DateFormatStr: string;
  maxLogErrors: LongInt;
  logErrors: LongInt;
  _flagFinish: Boolean;
  _flagExcept: Boolean;

Create view ltIDWTask
  as select *
  from DWTasks, DWMemo, DWJobs;
//, dwmonitor;

#include idw.const

#include ex_comm.inc
Exception ExDWFieldNotValid;

file mf;

function  GetUniqueTaskName (TaskNo: Integer): String; forward;
procedure StoreJobInfo (mf_handle: Longint); forward;
procedure LoadJobInfo (mf_handle: Longint); forward;
procedure DefaultJobInfo; forward;
function  SetupJobInfo: Boolean; forward;
procedure RegisterParamsAndFields; forward;
function ExecuteTask: Boolean; forward;
function dwDateToStr(d: date): string; forward;

function dwDateToStr(d: date): string;
{
  if ( d = ZeroDate )
    dwDateToStr := EmptyStr
  else
    dwDateToStr := DateToStr(d, DateFormatStr);
}

procedure WriteLogRecord (msg: string);
begin
  DE._WriteLogRecord (msg);
end;

function GetTaskName (TaskNo: Integer): String;
var
  TName: String;
begin
  TName := GetUniqueTaskName (TaskNo);
  if TName = '' then
    _raise ExUnsupportedTaskNo;
  GetTaskName := TName;
end;

function GetUnitVersion: String;
begin
  GetUnitVersion := UnitVersion;
end;

procedure SetTaskVars (TaskNo: Integer; JobID: Comp);
begin
  if ((TaskNo <= 0) or (TaskNo>UnitTaskNo)) then
    _raise ExUnsupportedTaskNo;
  _TaskNo := TaskNo;
  _TaskName := GetTaskName (TaskNo);
  _JobID := JobID;
end;

procedure Store;
begin
  if (_JobID = 0) then
  begin
    ltIDWTask.getfirst DWTasks where ((GetTaskName (_TaskNo) == DWTasks.TaskName));
    ltIDWTask.getfirst DWMemo where ((DWTasks.cSetupInfo == DWMemo.atl_nrec));
  end
  else
  begin
    ltIDWTask.getfirst DWJobs where ((_JobID == DWJobs.atl_nrec));
    ltIDWTask.getfirst DWMemo where ((DWJobs.cSetupInfo == DWMemo.atl_nrec));
  end;
  ClearMemoField (ltIDWTask.DWMemo.Info);
  mf.OpenMemo (ltIDWTask.DWMemo.Info);
  if( _flagExcept) then
  {
    _flagExcept := false; // сбросить флаг исключения
  }
  else
  {
    StoreJobInfo (mf.handle);
  }
  
  mf.Close;
//  mf.OpenMemo (ltIDWTask.DWMemo.Info);
//  if (mf.GetSize = 0) then
//    _raise ExCantSaveConfig;
  ltIDWTask.update current DWMemo;
end;

procedure Load;
begin
  if (_JobID = 0) then
  begin
    ltIDWTask.getfirst DWTasks where ((GetTaskName (_TaskNo) == DWTasks.TaskName));
    ltIDWTask.getfirst DWMemo where ((DWTasks.cSetupInfo == DWMemo.atl_nrec));
  end
  else
  begin
    ltIDWTask.getfirst DWJobs where ((_JobID == DWJobs.atl_nrec));
    ltIDWTask.getfirst DWTasks where ((DWJobs.cTask == DWTasks.atl_nrec));
    ltIDWTask.getfirst DWMemo where ((DWJobs.cSetupInfo == DWMemo.atl_nrec));
  end;
  mf.OpenMemo (ltIDWTask.DWMemo.Info);
  if (mf.GetSize = 0) then
  begin
    mf.Close;
    DefaultJobInfo;
    Exit;
    // !!!!!!!!!!!!
  end;
  LoadJobInfo (mf.handle);
  mf.Close;
end;

procedure DefaultSetup (TaskNo: Integer; JobID: Comp);
begin
  SetTaskVars (TaskNo, JobID);
  DefaultJobInfo;
  Store;
end;

function GetTaskCount: Integer;
begin
  GetTaskCount := UnitTaskNo;
end;

function Run (TaskNo: Integer; JobID: Comp): Boolean;
var
  NoError: Boolean;
  s: string;
  maxErrorLog: LongInt;
  currentErrorLog: LongInt;
begin
  IsMS_SQL_UpLoad := UpCase(sGetTune('ExtUnloading.ExternalExportMode')) = 'MICROSOFT SQL SERVER';
  DateFormatStr   := sGetTune('ExtUnloading.DateFormatStr');
  DateFormatStr   := if(trim(DateFormatStr) = '', 'DD.MM.YYYY', DateFormatStr);
  maxLogErrors    := lGetTune('ExtUnloading.MaxLogRecord');
  logErrors       := 0;
  Run := false;
  NoError := false;
  SetTaskVars (TaskNo, JobID);
  Load;
  if (not GetDEObject (DE)) then
  begin
    WriteLogRecord ('Не могу получить ссылку на DataExporter');
    Exit;
  end;
  _flagFinish := false;
  _flagExcept := false;
  DE.StartExport (JobID);
  RegisterParamsAndFields;
  _try  
  {
    NoError := ExecuteTask;
    _flagExcept := false;
  }
  _except
    on ExExportStructure:
    {
       DE.FinishExport (False);
       NoError := true;
       _flagFinish := true;
       _retry;
    }
    on ExBulkInsert:
    {
       _flagFinish := true;
	DE.FinishExport (True);
        NoError := true;
    }
    on ExInternalTerminated:
    {
       _flagFinish := true;
       DE.FinishExport (True);
       _flagExcept := true; 	// не сохранять параметры при исключении
    }
   
    on ExFieldNotValid:
    {

       if logErrors < maxLogErrors	
       {
         WriteLogRecord ('ExFieldNotValid: Предыдущий вызов SetField производился для поля "'+DE.GetLastFieldName+'"');
         logErrors := logErrors + 1; 
       }
      _retry;

    }

    on ExUserBreak:
    {
       DE.FinishExport (True);
       _flagFinish := true;
        NoError := false;
       _reraise;	
    }

    on ExDbDuplicateKey:
    {
      s := ExploreException();
       _flagFinish := true;
      WriteLogRecord(s);
      DE.FinishExport (True);
      NoError := false;
    }

    else
    {
      s := ExploreException();
      if( Pos('ExExportStructure',s) > 0)
      {

       DE.FinishExport (False);
       NoError := true;
       _flagFinish := true;
//       _retry;

      }
      else
      {

        WriteLogRecord ('Ошибка выгрузки по исключению: ' + s);
        DE.FinishExport (true);
        NoError := false;

        _flagFinish := true;
//      dwQueues.State := qsIncomplete; 
//      DE.FinishExport (False)
//      _reraise;
      }
    }

  if( not _flagFinish)
  
    DE.FinishExport (False);
  Run := NoError;

end;

function Setup (TaskNo: Integer; JobID: Comp): Boolean;
begin
  SetTaskVars (TaskNo, JobID);
  Load;
  if (SetupJobInfo) then
    Store;
  Setup := true;
end;
