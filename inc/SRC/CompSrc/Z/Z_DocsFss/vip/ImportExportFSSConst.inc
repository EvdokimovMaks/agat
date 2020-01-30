#ifndef _ImportExportFSSConst_inc_INCLUDED_
#define _ImportExportFSSConst_inc_INCLUDED_

const
//Куда импортируем - экспортируем
  cn_ImportExportPortal = 0;  //портал ФСС
  cn_ImportExportXml    = 1;  //в Xml
  cn_ImportExportPortal_Dop = 2; ///портал ФСС - дополнительно - игнорировать сертификат

//Хранилище
  cn_Location_CurrentUser     = 0;  //текущий пользователь
  cn_Location_LocalMachine    = 1;  //локальный компьютер

//Сертификаты
  cn_Cert_INSURER     = 0;  //страхователь
  cn_Cert_CHIEF       = 1;  //директор
  cn_Cert_ACCOUNTANT  = 2;  //бухгалтер
  cn_Cert_FSS         = 3;  //бухгалтер

//Какую dll используем
  cn_ImportHTPPConector = 0; //
  cn_ImportGalFSS       = 1; //

//Настройка соединения
  cn_Proxy_No  = 0; // без прокси
  cn_Proxy_OS  = 1; // установить режим подключения через прокси сервер, заданный в операционной системе по умолчанию
  cn_Proxy_PAR = 2; // становить режим подключения через прокси сервер, с явно указанными параметрами сервера порта и пользователя

//Состояние сообщений Web-сервиса
  cn_Error_Web          = '0';
  cn_Info_Web           = '1';
  cn_Error_Xml          = '2';

//Вывод протокола соединения
  cn_OutPutProt    = 1; // Выводить протокол соединения
  cn_OutPutProt_No = 0; // Не выводить протокол соединения

//версия .NET FrameWork (не ниже 4.5)
  cn_nVersNetFrameWork = 45;
  cn_sVersNetFrameWork = '4.5';

  cn_Thumbprint_prom1 = '2E595F368FEB24F2C232EB8C2B3691A4219B4883';
  cn_Thumbprint_prom2 = '2E595F368FEB24F2C232EB8C2B3691A4219B4883';
  cn_Thumbprint_test  = '27BCE267A113D536277CE87E5A474BEB2C0488A9';

  cn_TypeXML_FSS    = 0;
  cn_TypeXML_Kontur = 1;

//действие по экспорту
  cn_Act_PortalFSS   = 0; //выгрузка на Портал ФСС
  cn_Act_XML_FSS     = 1; //выгрузка в XML, для дальнейшей передачи на портал ФСС
  cn_Act_XML_Kontur  = 2; //выгрузка в XML, для дальнейшей передачи в Контур

  cn_Status_LN_0   = 0; //листок нетрудоспособности не является электронным
  cn_Status_LN_010 = 3; //ЭЛН открыт
  cn_Status_LN_020 = 2; //ЭЛН продлен
  cn_Status_LN_030 = 1; //ЭЛН закрыт
  cn_Status_LN_040 = 4; //ЭЛН направление на МСЭ
  cn_Status_LN_050 = 5; //ЭЛН дополнен данными МСЭ
  cn_Status_LN_060 = 6; //ЭЛН заполнен Страхователем
  cn_Status_LN_070 = 7; //ЭЛН заполнен Страхователем (реестр ПВСО)
  cn_Status_LN_080 = 8; //ЭЛН Пособие выплачено
  cn_Status_LN_090 = 9; //ЭЛН Действия прекращены

//статусы для реестров ФСС
  cn_Status_Not_Sent   = 0; //не отправлен
  cn_Status_Sent       = 1; //отправлен

//тип фильтрации
  cn_UndefFilterValue  = 0;
  cn_FilterDay         = 1;
  cn_FilterMonth       = 2;
  cn_FilterYear        = 3;

//функции для работы с сервисом ФСС
  cn_FUNC_SendFile         = 0;
  cn_FUNC_UploadsGet       = 1;
  cn_FUNC_UploadGetByExtID = 2;

//константа для сервиса ФСС
  cn_GatewayService_FSS = 100;

//состояние обработки
  cn_StateFSS_Mess_Received        = 0;  //Получен
  cn_StateFSS_Err_Mess_Received    = 10; //Ошибка получения
  cn_StateFSS_Sign_Check           = 1;  //ЭЦП проверено
  cn_StateFSS_Err_Sign_Check       = 11; //Ошибка проверки ЭЦП
  cn_StateFSS_SubmittedforCons     = 2;  //Передано на рассмотрение
  cn_StateFSS_Err_SubmittedforCons = 21; //ФЛК не пройден
end;

#endif
