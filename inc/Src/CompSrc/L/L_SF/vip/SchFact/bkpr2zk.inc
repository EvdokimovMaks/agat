//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Оперативный контур
// Константы книг продаж/покупок
//******************************************************************************

#ifNdef __BKPR2ZK_INC
#define __BKPR2ZK_INC

const
  ZK_EXIST  = 0h; // 00
  ZK_NEXIST = 2h; // 10
  PR_EXIST  = 1h; // 01
  PR_NEXIST = 3h; // 11

  sPlatFieldName = 'Платеж: ';   // Наименование заголовка для поля платежа (СФ и книга продаж/покупок)
  sOtgrFieldName = 'Отгрузка: '; // Наименование заголовка для поля отгрузки (Книга продаж/покупок)

  // Константы для флагов записи регистрации
  cwCorrAvans   : Word = 1;  // Корректирующая запись, признак авансового документа
  cwSetGTD      : Word = 2;  // Корректирующая запись, признак, что можно задать ГТД
  cwCorr_Dop    : Word = 4;  // Корректирующая запись, признак попадания в доп.лист
  cwSpecCorr_Pr : Word = 8;  // Корректирующая запись книги продаж, запись ссылается на корректируемую запись из другой СФ

  // Фильтрация книги
  cw_Bound_Date      : Word = 1; // по периоду
  cw_Bound_ValDate   : Word = 2; // по периоду и валюте
  cw_Bound_Val       : Word = 3; // по валюте
  cw_Bound_Object    : Word = 4; // по объекту строительства
  cw_Bound_Descr     : Word = 5; // по дескриптору
  cw_Bound_DescrDate : Word = 6; // по дескриптору и дате
  cw_Bound_DesGr     : Word = 7; // по группе дескрипторов
  cw_Bound_DesGrDate : Word = 8; // по группе дескрипторов и дате

  cw_Condition_Object      : Word = 1;  // по объекту строительства
  cw_Condition_KatOrg      : Word = 2;  // по контрагенту
  cw_Condition_OtvPodr     : Word = 4;  // по центру ответственности
  cw_Condition_Descr       : Word = 8;  // по дескриптору
  cw_Condition_DesGr       : Word = 16; // по группе дескрипторов
  cw_Condition_Descr_DO_SF : Word = 32; // по дескриптору СФ или ДО
  cw_Condition_DesGr_DO_SF : Word = 64; // по группе дескрипторов СФ или ДО

  // Форматы печати
  cw_Text  : Word = 0; // Печать в текстовом формате
  cw_Excel : Word = 1; // Печать в формате Excel
  cw_XML   : Word = 2; // Печать в формате XML

end;

// Устанавливаю бит флага в определенное значение
procedure SetFlagsBit(var aWord : Word; aBit, aFlag : Word);
{
  aWord := Word(aWord and (not Word(aBit))); // Устанавливаю бит в 0
  aWord := Word(aWord or Word(aFlag));       // Устанавливаю в бите признак
}

#end //__BKPR2ZK_INC