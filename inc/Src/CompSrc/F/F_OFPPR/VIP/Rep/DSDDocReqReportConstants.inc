//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.10 - модуль "Платежный календарь (PR)"
// Константы для отчета по заявкам
//------------------------------------------------------------------------------

#ifndef __DSDDocReqDocReqReport_Inc__
#define __DSDDocReqDocReqReport_Inc__

const
  // Константы фильтров
//  DSDDocReq_Filter_StateData      = 1; // Фильтр по "состояние на дату"
  DSDDocReq_Filter_Investor       = 1; // Фильтр по инвесторам
  DSDDocReq_Filter_Contractor     = 2; // Фильтр по контрагентам
  DSDDocReq_Filter_Contract       = 3; // Фильтр по договорам
  DSDDocReq_Filter_Date           = 4; // Фильтр по датам
  DSDDocReq_Filter_Status         = 5; // Фильтр по статусу
  DSDDocReq_Filter_Implementation = 6; // Фильтр по исполнению
  DSDDocReq_Filter_Paying         = 7; // Фильтр по оплате

  // Тип даты
  DSDDocReq_DateFilter_FirstDate  = 1; // Фильтр по начальной дате
  DSDDocReq_DateFilter_SecondDate = 2; // Фильтр по конечной дате
  DSDDocReq_DataFilter_StateData  = 3; // Фильтр "состояние на дату"

  // Сообщения пользователю
  DSDDocReq_Delete_Question   = 'Удалить текущую запись?'   ; // Вопрос об удалении записи
  DSDDocReq_Date_NotPosible   = 'Ошибка ввода диапазона дат'; // Ошибка диапазона дат
  DSDDocReq_Date_NoRecords    = 'Не найдено ни одной записи удовлетворяющей настройкам';
  DSDDocReq_Report_DateTitle  = 'по состоянию на ';
  DSDDocReq_Filter_NoFilter   = 'Не найдены настройки отчета';

  // Наименования фильтров
  DSDDocReq_Name_NoName       = 'Без имени'; // Фильтр без имени

  // XLS отчет
  DSDExcluded_Report_RepID    = 'F_OFPPR\ExcludedDocReqRep'  ; // Идентификатор отчета
  DSDProduction_Report_RepID  = 'F_OFPPR\ProductionDocReqRep'; // Идентификатор отчета
  DSDSettings_MarkerName      = 'DSDSettingsMarker';

  // Наименования и значения переменных отчета
  DSDDocReq_VarName_ReportDate   = 'Дата_Отчета';
  DSDDocReq_VarName_Filters      = 'Фильтры';
  DSDDocReq_VarName_FiltersValue = 'Фильтры:';

  // Наименования таблиц отчета
  DSDDocReq_TblName_DSDDocReqList  = 'Заявки_';
  DSDDocReq_TblName_DSDFiltersList = 'Фильтры_';

  // Наименования колонок таблиц
  DSDDocReq_TblCols_Number           = 'Номер_СЗО'         ;
  DSDDocReq_TblCols_Date             = 'Дата_СЗО'          ;
  DSDDocReq_TblCols_ValName          = 'Валюта'            ;
  DSDDocReq_TblCols_Sum              = 'Сумма'             ;
  DSDDocReq_TblCols_VATSum           = 'Сумма_НДС'         ;
  DSDDocReq_TblCols_Contractor       = 'Контрагент'        ;
  DSDDocReq_TblCols_Contract         = 'Договор'           ;
  DSDDocReq_TblCols_Bill             = 'Счет'              ;
  DSDDocReq_TblCols_Invoice          = 'Счет_фактура'      ;
  DSDDocReq_TblCols_TORG12           = 'ТОРГ'              ;
  DSDDocReq_TblCols_Akt              = 'Акт_Работ'         ;
  DSDDocReq_TblCols_PaymentType      = 'Вид_Платежа'       ;
  DSDDocReq_TblCols_PaymentPurpose   = 'Назначение_платежа';
  DSDDocReq_TblCols_Investor         = 'Инвестор'          ;
  DSDDocReq_TblCols_ListNumber       = 'Номер_Реестра'     ;
  DSDDocReq_TblCols_ListDate         = 'Дата_Реестра'      ;
  DSDDocReq_TblCols_ExclusionPurpose = 'Причина_исключения';
  DSDDocReq_TblCols_Note             = 'Примечание'        ;
  DSDDocReq_TblCols_Specification    = 'Спецификация'      ;
  DSDDocReq_TblCols_DivisionName     = 'Раздел'            ;
  DSDDocReq_TblCols_SubDivisionName  = 'Подраздел'         ;
  DSDDocReq_TblCols_SubSumVAT        = 'Подсумма_НДС'      ;
  DSDDocReq_TblCols_PaymentKeeping   = 'Удержание_аванса'  ;
  DSDDocReq_TblCols_TotalSum         = 'Итоговая_сумма'    ;
  DSDDocReq_TblCols_ObjectName       = 'Объект'            ;
  DSDDocReq_TblCols_SubObjectName    = 'Подобъект'         ;
  DSDDocReq_TblCols_ObjectCode       = 'Код_объекта'       ;
  DSDDocReq_TblCols_Commission       = 'Поручение'         ;
  DSDDocReq_TblCols_Enclosure        = 'Приложения'        ;
  DSDDocReq_TblCols_DocReqStatus     = 'Статус'            ;
  DSDDocReq_TblCols_DesignSign       = 'Признак_исполнения';
  DSDDocReq_TblCols_NotPayedSum      = 'Не_оплачено'       ;
  DSDDocReq_TblCols_PaymentOrderNum  = 'Номер_ПП'          ;
  DSDDocReq_TblCols_PaymentOrderDate = 'Дата_ПП'           ;
  DSDDocReq_TblCols_PaymentMonth     = 'Месяц_платежа'     ;
  DSDDocReq_TblCols_PaymentYear      = 'Год_платежа'       ;

  // Таблица фильтры
  DSDDocReq_TblColsFilter_Name       = 'Фильтр'            ;
  DSDDocReq_TblColsFilter_Value      = 'Значение'          ;

end;

#endif // __DSDDocReqDocReqReport_Inc__
