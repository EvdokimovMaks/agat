//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.71 - Бухгалтерский контур
// Иерархические реестры платежных документов
//------------------------------------------------------------------------------
// Внимание! Существует slk-отчет в формате Excel

#include Responsible.frn

#doc
Иерархические реестры платежных документов
#end
.set name='ReePlp'
.hide
.fields
  sNameOrg     // наименование организации
#ResponsibleFields
  header       // название отчета
  dates   :date// с ____ по _____

  PrintOborot: Boolean

  strFilters
  FilterTree1
  FilterName

  NameSum      // название суммы
  SymV         // символ валюты

  LevelName:string:'t:r'  // наименование группировки (номер документа,наименование платежа)
  LevelSum     // сумма  на уровне
  LevelVal     // валюта

  //Perf_Number  // номер в отчете по порядку
  Perf_nRec    // PlPor.nRec, Oborot.nRec
  Perf_NoDoc   // обороты и проводки по ним
  Perf_Date :date // дата
  Perf_Name:string:'t:r' // назначение платежа
  Perf_Base    // основание
  Perf_Cond    // условия
  Perf_VidOp       // вид операции             }
  Perf_fKontragent // контрагент               }
  Perf_fBankName   // банк контрагента         } для банковской выписки
  Perf_fBankMFO1   // мфо                      }
  Perf_fBankSchet1 // счет                     }

  Perf_Sum     // сумма по документу
  Perf_Val     // валюта

  Perf_NamePL      // назн. платежа для БВ     }

  Specif_nRec        // спецификация по документу (обороты)
  Specif_Name:string //
  Specif_SchD        // счет по дебету
  Specif_SchK        // счет по кредиту
  Specif_Sum         // сумма проводки
  Specif_Val         // валюта проводки
  Specif_SodPr       // содержание проводки

.endfields
! --------------------------------------------------------------------------
! Следующая строка нужна только для поддержки старого функционала,
! возможно реализованного пользователями и партнёрами.
! В формах написанных разработчиками Галактики использован новый подход,
! реализованный через объектную переменную iExcelFormat типа ExcelFormat.
#include ExcelFormat.frn
!
.var
  iExcelFormat : ExcelFormat;
.endvar
! --------------------------------------------------------------------------
 ^
#ResponsibleBody(ReePlp)

 ^
 ^
 ^
.{ CheckEnter FiltersTree
strFilters ^ //просто проверка на фильтры производится после их печати, но во всех отчетах строка раньше
.{ CheckEnter FilterTree
 FilterTree1 ^
.{ CheckEnter FilterTreeName
 FilterName ^
.}
.}
.}
 .{.?TreePlp_Shapka1;┬───────────────────.} .{.?TreePlp_Val1;┬────────.}
 .{.?TreePlp_Shapka2;│   @@@@@@@@@@@@@@  .} .{.?TreePlp_Val2;│ Валюта .}
 .{.?TreePlp_Shapka3;│   @@@@@@@@@@@@@@  .} .{.?TreePlp_Val3;│        .}
 .{.?TreePlp_Shapka4;┴───────────────────.} .{.?TreePlp_Val4;┴────────.}

.{
.{ TreePlp_Body CheckEnter
 ^ .{.?TreePlp_Shapka6;^ .} .{.?TreePlp_Val6;@@@@@@ .}
.}
.{ TreePlp_Perfomance CheckEnter
 ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ .{.?TreePlp_Shapka7;^ .} .{.?TreePlp_Val7;@@@@@@ .} ^
.}
.{ TreePlp_Specif CheckEnter
 ^ ^ ^ ^ .{.?TreePlp_Shapka8;^ .} .{.?TreePlp_Val8;@@@@@@ .}  ^
.}
.{ TreePlp_Line CheckEnter
 .{.?TreePlp_Shapka5;────────────────────.} .{.?TreePlp_Val5;─────────.}
.}
.}

.endform

//*******************************************************************
.linkform 'ReePlp01' prototype is 'ReePlp'
.nameinlist 'Иерархия платежных документов'
.group 'Иерархия платежных документов'
.defo landscape
.var
  sBlank: string;
  i: integer;
.endvar
.fields
CommonFormHeader
 header
 if ( Longint(dates) = 0, '', DateToStr(dates, 'DD/MM/YYYY'))

 sNameOrg
 strFilters
 FilterTree1
 FilterName

 NameSum
 SymV

 LevelName:'t:r'
 LevelSum
 LevelVal

 Perf_NoDoc
 if ( Longint(Perf_Date) = 0, '', DateToStr(Perf_Date, 'DD/MM/YYYY'))
 Perf_Name:'t:r'
 Perf_Sum
 Perf_Val
 Specif_Name
.endfields
^
#ResponsibleLinkVar
#ResponsibleLinkInit(ReePlp)
 Р             @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                         @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.begin
  sBlank := '';
  if Length(sNameOrg) <= 42
  {
    For (i := 1; i < 42 - (Length(sNameOrg)); i := i + 1)
       sBlank := sBlank + ' ';

    sNameOrg := sNameOrg + sBlank;
  }
end.
  E^ E
  (наименование организации, предприятия)
.{ CheckEnter FiltersTree
^
.{ CheckEnter FilterTree
^
.{ CheckEnter FilterTreeName
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.}
.}
────────┬──────────┬───────────────────────────────────────────────────.{.?TreePlp_Shapka1;┬──────────────────────.}.{.?TreePlp_Val1;┬────────.}
  Номер │   Дата   │                   Наименование                    .{.?TreePlp_Shapka2;│  @~@@@@@@@@@@@@@@@@  .}.{.?TreePlp_Val2;│ Валюта .}
  док-та│          │                      платежа                      .{.?TreePlp_Shapka3;│  @~@@@@@@@@@@@@@@@@  .}.{.?TreePlp_Val3;│        .}
────────┴──────────┴───────────────────────────────────────────────────.{.?TreePlp_Shapka4;┴──────────────────────.}.{.?TreePlp_Val4;┴────────.}
.{
.{ TreePlp_Body CheckEnter
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ .{.?TreePlp_Shapka6; &'&&&&&&&&&&&&&&&&&&& .}.{.?TreePlp_Val6; @@@@@@ .}
.}
.{ TreePlp_Perfomance CheckEnter
@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ .{.?TreePlp_Shapka7; &'&&&&&&&&&&&&&&&&&&& .}.{.?TreePlp_Val7; @@@@@@ .}
.}
.{ TreePlp_Specif CheckEnter
                    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ .{.?TreePlp_Shapka8; .} .{.?TreePlp_Val8; .}
.}
.{ TreePlp_Line CheckEnter
───────────────────────────────────────────────────────────────────────.{.?TreePlp_Shapka5;───────────────────────.}.{.?TreePlp_Val5;─────────.}
.}
.}
.{While (Номер_ответственного_лица < Количество_ответственных_лиц)
.begin
  Номер_ответственного_лица := Номер_ответственного_лица + 1;
end.
.fields
  Массив_Ответственное_лицо_Должность [Номер_ответственного_лица]
  Массив_Ответственное_лицо_ФИО       [Номер_ответственного_лица]
.endfields

 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б  _________________   Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                                              (подпись)                (расшифровка подписи)
.} Р
.endform

//*******************************************************************
.linkform 'ReePlp02' prototype is 'ReePlp'
.nameinlist 'Регистр движения денежных средств'
.group 'Регистр движения денежных средств'
.defo landscape
.var
  sBlank: string;
  i: integer;
.endvar
.fields
CommonFormHeader
 header
 if ( Longint(dates) = 0, '', DateToStr(dates, 'DD/MM/YYYY'))

 sNameOrg
 strFilters
 FilterTree1
 FilterName

 NameSum
 SymV

 LevelName:'t:r'
 LevelSum
 LevelVal

 Perf_NoDoc
 if ( Longint(Perf_Date) = 0, '', DateToStr(Perf_Date, 'DD/MM/YYYY'))
 Perf_Base
 Perf_Cond
 Perf_Sum
 Perf_Val
.endfields
^
#ResponsibleLinkVar
#ResponsibleLinkInit(ReePlp)

 Р             @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                         @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.begin
  sBlank := '';
  if Length(sNameOrg) <= 42
  {
    For (i := 1; i < 42 - (Length(sNameOrg)); i := i + 1)
       sBlank := sBlank + ' ';

    sNameOrg := sNameOrg + sBlank;
  }
end.
  E^ E
  (наименование организации, предприятия)
.{ CheckEnter FiltersTree
^
.{ CheckEnter FilterTree
^
.{ CheckEnter FilterTreeName
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.}
.}
────────┬──────────┬───────────────────────┬───────────────────────────.{.?TreePlp_Shapka1;┬──────────────────────.}.{.?TreePlp_Val1;┬────────.}
  Номер │   Дата   │      Основание        │         Условия           .{.?TreePlp_Shapka2;│  @~@@@@@@@@@@@@@@@@  .}.{.?TreePlp_Val2;│ Валюта .}
  док-та│          │                       │                           .{.?TreePlp_Shapka3;│  @~@@@@@@@@@@@@@@@@  .}.{.?TreePlp_Val3;│        .}
────────┴──────────┴───────────────────────┴───────────────────────────.{.?TreePlp_Shapka4;┴──────────────────────.}.{.?TreePlp_Val4;┴────────.}
.{
.{ TreePlp_Body CheckEnter
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ .{.?TreePlp_Shapka6; &'&&&&&&&&&&&&&&&&&&& .}.{.?TreePlp_Val6; @@@@@@ .}
.}
.{ TreePlp_Perfomance CheckEnter
@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@ .{.?TreePlp_Shapka7; &'&&&&&&&&&&&&&&&&&&& .}.{.?TreePlp_Val7; @@@@@@ .}
.}
.{ TreePlp_Specif CheckEnter
                            .{.?TreePlp_Shapka8; .} .{.?TreePlp_Val8; .}
.}
.{ TreePlp_Line CheckEnter
───────────────────────────────────────────────────────────────────────.{.?TreePlp_Shapka5;───────────────────────.}.{.?TreePlp_Val5;─────────.}
.}
.}
.{While (Номер_ответственного_лица < Количество_ответственных_лиц)
.begin
  Номер_ответственного_лица := Номер_ответственного_лица + 1;
end.
.fields
  Массив_Ответственное_лицо_Должность [Номер_ответственного_лица]
  Массив_Ответственное_лицо_ФИО       [Номер_ответственного_лица]
.endfields

 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б  _________________   Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                                              (подпись)                 (расшифровка подписи)
.} Р
.endform

!==============================================================================
.linkform 'seebankO' prototype is 'ReePlp'
.group 'Банковская выписка'
.nameinlist '1. Банковская выписка (по оборотам)'
.p 80
.defo portrait
.var
  sBlank: string;
  i: integer;
.endvar
.fields
CommonFormHeader
 sNameOrg
 strFilters
 FilterTree1
 FilterName

 NameSum
 SymV

 LevelName:'t:r'
 LevelSum
 LevelVal

 Perf_VidOp 
 Perf_NoDoc
 Perf_fBankMFO1   // мфо 
 Perf_fBankSchet1 // счет

 Perf_Sum
 Perf_Val

 Specif_SchD        // счет по дебету
 Specif_SchK        // счет по кредиту
 Specif_Sum         // сумма проводки
 Specif_Val         // валюта проводки

.endfields
^
#ResponsibleLinkVar
#ResponsibleLinkInit(ReePlp)
             БВыписка Б
.begin
  sBlank := '';
  if Length(sNameOrg) <= 42
  {
    For (i := 1; i < 42 - (Length(sNameOrg)); i := i + 1)
       sBlank := sBlank + ' ';

    sNameOrg := sNameOrg + sBlank;
  }
end.
 Р
  E^ E
  (наименование организации, предприятия) Р
.{ CheckEnter FiltersTree
 В^ В
.{ CheckEnter FilterTree
 Б^ Б
.{ CheckEnter FilterTreeName
 И    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
.}
.}
.}
 И────┬──────┬───────────┬────────────────────.{.?TreePlp_Shapka1;┬──────────────────────.}.{.?TreePlp_Val1;┬────────.}
 Вид│Номер │Код корр.  │Счет корреспондента .{.?TreePlp_Shapka2;│  @~@@@@@@@@@@@@@@@@  .}.{.?TreePlp_Val2;│ Валюта .}
 оп.│док-та│Счет по Деб│Счет по Kредиту     .{.?TreePlp_Shapka3;│  @~@@@@@@@@@@@@@@@@  .}.{.?TreePlp_Val3;│        .}
────┴──────┴───────────┴────────────────────.{.?TreePlp_Shapka4;┴──────────────────────.}.{.?TreePlp_Val4;┴────────.} И
.{
.{ TreePlp_Body CheckEnter
 Й@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?TreePlp_Shapka6; &'&&&&&&&&&&&&&&&&&&& .}.{.?TreePlp_Val6; @@@@@@ .} Й
.}
.{ TreePlp_Perfomance CheckEnter
 И@@@@ @@@@@@ @@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@.{.?TreePlp_Shapka7; &'&&&&&&&&&&&&&&&&&&& .}.{.?TreePlp_Val7; @@@@@@ .} И
.}
.{ TreePlp_Specif CheckEnter
 К           @@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@ .{.?TreePlp_Shapka8; &'&&&&&&&&&&&&&&&&&&& .}.{.?TreePlp_Val8; @@@@@@ .} К
.}
.{ TreePlp_Line CheckEnter
 И────────────────────────────────────────────.{.?TreePlp_Shapka5;───────────────────────.}.{.?TreePlp_Val5;─────────.} И
.}
.} Р
.{While (Номер_ответственного_лица < Количество_ответственных_лиц)
.begin
  Номер_ответственного_лица := Номер_ответственного_лица + 1;
end.
.fields
  Массив_Ответственное_лицо_Должность [Номер_ответственного_лица]
  Массив_Ответственное_лицо_ФИО       [Номер_ответственного_лица]
.endfields

 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б  _________________   Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                                              (подпись)                  (расшифровка подписи)
.} Р
.endform

!==============================================================================
.linkform 'seebankS' prototype is 'ReePlp'
.group 'Банковская выписка'
.nameinlist '2. Банковская выписка (по содержанию)'
.p 60
.defo landscape
.var
  sBlank: string;
  i: integer;
.endvar
.fields
CommonFormHeader
 sNameOrg
 strFilters
 FilterTree1
 FilterName

 NameSum
 SymV

 LevelName:'t:r'
 LevelSum
 LevelVal

 Perf_VidOp 
 Perf_NoDoc
 Perf_fBankMFO1   // мфо 
 Perf_fBankSchet1 // счет
 Perf_fKontragent // контрагент

 Perf_Sum
 Perf_Val

 Perf_NamePL

 Specif_SchD        // счет по дебету
 Specif_SchK        // счет по кредиту
 Specif_Sum         // сумма проводки
 Specif_Val         // валюта проводки
 Specif_SodPr       // содержание проводки

.endfields
^
#ResponsibleLinkVar
#ResponsibleLinkInit(ReePlp)
       Б      Выписка Б
.begin
  sBlank := '';
  if Length(sNameOrg) <= 42
  {
    For (i := 1; i < 42 - (Length(sNameOrg)); i := i + 1)
       sBlank := sBlank + ' ';

    sNameOrg := sNameOrg + sBlank;
  }
end.
 Р
  E^ E
  (наименование организации, предприятия) Р
.{ CheckEnter FiltersTree
 В^ В
.{ CheckEnter FilterTree
 Б^ Б
.{ CheckEnter FilterTreeName
     И@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
.}
.}
.}
 Р────┬──────┬───────────┬────────────────────┬────────────────────────────────────────.{.?TreePlp_Shapka1;┬──────────────────────.}.{.?TreePlp_Val1;┬────────.}┬──────────────────────────────────────────────────
 Вид│Номер │ Код кор.  │Счет корреспондента │               Наименование             .{.?TreePlp_Shapka2;│  @~@@@@@@@@@@@@@@@@  .}.{.?TreePlp_Val2;│ Валюта .}│               Назначение платежа
 оп.│док-та│Счет по Деб│Счет по Кредиту     │              корреспондента            .{.?TreePlp_Shapka3;│  @~@@@@@@@@@@@@@@@@  .}.{.?TreePlp_Val3;│        .}│
────┴──────┴───────────┴────────────────────┴────────────────────────────────────────.{.?TreePlp_Shapka4;┴──────────────────────.}.{.?TreePlp_Val4;┴────────.}┴────────────────────────────────────────────────── Р
.{
.{ TreePlp_Body CheckEnter
 С@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?TreePlp_Shapka6; &'&&&&&&&&&&&&&&&&&&& .}.{.?TreePlp_Val6; @@@@@@  .} С
.}
.{ TreePlp_Perfomance CheckEnter
 Р@@@@ @@@@@@ @@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?TreePlp_Shapka7; &'&&&&&&&&&&&&&&&&&&& .}.{.?TreePlp_Val7; @@@@@@  .} @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
.}
.{ TreePlp_Specif CheckEnter
 Т            @@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@                                         .{.?TreePlp_Shapka8; &'&&&&&&&&&&&&&&&&&&& .}.{.?TreePlp_Val8; @@@@@@  .} @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Т
.}
.{ TreePlp_Line CheckEnter
 Р─────────────────────────────────────────────────────────────────────────────────────.{.?TreePlp_Shapka5;───────────────────────.}.{.?TreePlp_Val5;─────────.}─────────────────────────────────────────────────── Р
.}
.} Р
.{While (Номер_ответственного_лица < Количество_ответственных_лиц)
.begin
  Номер_ответственного_лица := Номер_ответственного_лица + 1;
end.
.fields
  Массив_Ответственное_лицо_Должность [Номер_ответственного_лица]
  Массив_Ответственное_лицо_ФИО       [Номер_ответственного_лица]
.endfields

 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б  _________________   Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                                              (подпись)                 (расшифровка подписи)
.} Р
.endform    
