/*
 ╔═════════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 2002 корпорация ГАЛАКТИКА                           ║
 ║ Проект        : ГАЛАКТИКА                                                   ║
 ║ Система       : Оперативный контур                                          ║
 ║ Версия        : 7.1                                                         ║
 ║ Назначение    : Отчеты в XML формате                                        ║
 ║ Ответственный : Полежай Алексей Геннадьевич                                 ║
 ╚═════════════════════════════════════════════════════════════════════════════╝
*/

//форма-прототип
#doc
Отчеты в XML формате
#end
.set name 'kzoutxml'
.hide
.fields
  tagDocument_type   : string  //1 тип документа    (выводится в заголовке, тег <document>)
  tagDocument_version: word    //2 версия документа (выводится в заголовке, тег <document>)
  multiPages         : boolean //3 является ли форма многостраничной
  codePage           : string  //4 кодировка (UTF-8, CP866, ...)
.endfields
1234
^^^^
.if FormTag                    //начало формирования отчета (вход в тег <form>)
.fields
  tagForm_id: string           //номер формы (<form_...>)
.endfields
1
^
.{checkenter SheetTag          //цикл по листам формы (тег <sheet>)
.fields
  sheetNum: longint            //номер листа
.endfields
1
^
.{checkenter PageTag           //цикл по страницам формы (тег <page>)
.fields
  tagPage_id: string           //номер страницы (<page_...>)
.endfields
1
^
.{checkenter PageLevelTag      //цикл по тегам уровня страницы (от <page> до <rowset>)
.fields
  tagPageLevel_name  : string  //название тега
  tagPageLevel_value : string  //значение тега
.endfields
12
^^
.} //checkenter PageLevelTag
.if RowSetTag                  //вход в секцию <rowset> (для формирования строк реестра)
.{checkenter RowTag            //цикл по строкам реестра (тег <row>)
.fields
  rowNum: longint              //номер строки
.endfields
1
^
.{checkenter RowLevelTag       //цикл по тегам уровня строки (от <row> до </row>)
.fields
  tagRowLevel_name  : string   //название тега
  tagRowLevel_value : string   //значение тега
.endfields
12
^^
.} //checkenter RowLevelTag
.} //checkenter RowTag
.end //if RowSetTag
.{checkenter PageLevelTag2     //цикл по тегам уровня страницы (от </rowset> до </page>)
.fields
  tagPageLevel2_name  : string //название тега
  tagPageLevel2_value : string //значение тега
.endfields
12
^^
.} //checkenter PageLevelTag2
.} //checkenter PageTag
.} //checkenter SheetTag
.end //if FormTag
.endform

//основная присоединенная форма
#doc
Отчет в XML формате для Казахстана
#end
.linkform 'kzxmlform01' prototype is 'kzoutxml'
.nameinlist 'Отчет в XML формате для Казахстана'
.var
  tagvalue_utf8: string;  //для получения значений тегов в кодировке UTF-8
.endvar
.fields
  codePage
  tagDocument_type
  tagDocument_version
.endfields
<?xml version="1.0" encoding="^"?>
<document type="^" version="^" id="">
.if FormTag
.fields
  tagForm_id
.endfields
<form_^>
.{checkenter SheetTag
.{?internal; (multiPages)
<sheet>
.}
.{checkenter PageTag
.fields
  tagPage_id
.endfields
<page_^>
.{checkenter PageLevelTag
.fields
  tagPageLevel_name
  //значение тега в нужной кодировке
  if (upCase(codePage) = 'UTF-8'
    , if (oem2utf8(tagPageLevel_value, tagvalue_utf8) <> 0
        , tagvalue_utf8
        , ''
      )
    , tagPageLevel_value
  )
  tagPageLevel_name
.endfields
<^>^</^>
.} //checkenter PageLevelTag
.if RowSetTag
<rowset>
.{checkenter RowTag
<row>
.{checkenter RowLevelTag
.fields
  tagRowLevel_name
  if (upCase(codePage) = 'UTF-8'
    , if (oem2utf8(tagRowLevel_value, tagvalue_utf8) <> 0
        , tagvalue_utf8
        , ''
      )
    , tagRowLevel_value
  )
  tagRowLevel_name
.endfields
<^>^</^>
.} //checkenter RowLevelTag
</row>
.} //checkenter RowTag
</rowset>
.end //if RowSetTag
.{checkenter PageLevelTag2
.fields
  tagPageLevel2_name
  if (upCase(codePage) = 'UTF-8'
    , if (oem2utf8(tagPageLevel2_value, tagvalue_utf8) <> 0
        , tagvalue_utf8
        , ''
      )
    , tagPageLevel2_value
  )
  tagPageLevel2_name
.endfields
<^>^</^>
.} //checkenter PageLevelTag2
.fields
  tagPage_id
.endfields
</page_^>
.} //checkenter PageTag
.{?internal; (multiPages)
</sheet>
.}
.} //checkenter SheetTag
.fields
  tagForm_id
.endfields
</form_^>
.end //if FormTag
</document>
.endform
