//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.10 - модуль "Управление бюджетом"
// Константы объектной таблицы
//------------------------------------------------------------------------------

#ifndef __FpObjTblMonitoring_Inc__
#define __FpObjTblMonitoring_Inc__

const
  lcUMI_CommonPrefix    = 'UserMonitorInt_';                 // префикс всех наших данный из FpLockData.DataID
  lcUMI_Data            = 'UserMonitorInt_Data_';            // инт-с редактирования данных
  lcUMI_MetaData        = 'UserMonitorInt_MetaData_';        // инт-с редактирования метаданных
  lcUMI_ExclusiveAccess = 'UserMonitorInt_ExclusiveAccess';  // монопольный доступ включен
  lcUMI_PrepareToExclusiveAccess = 'UserMonitorInt_Prepare'; // подготовка к установке монопольного доступа

  lcUMI_IsData            = 1;       //типы записей в FpObjTblMonitoring
  lcUMI_IsMetaData        = 2;
  lcUMI_IsPreparing       = 3;
  lcUMI_IsExclusiveAccess = 4;

  lcUMI_NoExclusiveAccess          = 0;    //Тип режима в FpObjTblMonitoring
  lcUMI_PreparingToExclusiveAccess = 1;
  lcUMI_ExclusiveAccessIsSet       = 2;

  // причины отказа в доступе
  lcUMI_NoReason                          = 0; // причина для отказа не найдена
  lcUMI_MetaData_Reason_NoExclusiveAccess = 1; // не включен монопольный доступ для редактирования метаданных
  lcUMI_MetaData_Reason_NotAdmin          = 2; // пользователь - не администратор, установивший монопольный доступ
  lcUMI_MetaData_Reason_IsDataEditing     = 3; // идет редактирование данных
  lcUMI_Data_Reason_NotAdmin              = 4; // пользователь - не администратор, установивший монопольный доступ
  lcUMI_Data_Reason_IsMetaDataEditing     = 5; // идет редактирование метаданных

  // текст сообщения при запрете редактирования данных
  lcUMI_Data_InhibitMessage = 'В данный момент происходит монопольное редактирование метаданных модуля...';
end;

#endif//__FpObjTblMonitoring_Inc__
