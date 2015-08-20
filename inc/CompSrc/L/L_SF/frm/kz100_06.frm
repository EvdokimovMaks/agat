/*
 ╔═════════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 2002 корпорация ГАЛАКТИКА                           ║
 ║ Проект        : ГАЛАКТИКА                                                   ║
 ║ Система       : Оперативный контур                                          ║
 ║ Версия        : 5.80                                                        ║
 ║ Назначение    : Безвозмездно полученное имущество (работы, услуги)          ║
 ║                (форма 100.06.001-003, Казахстан)                            ║
 ║ Ответственный : Шишов Виктор Васильевич (ShV)                               ║
 ╚═════════════════════════════════════════════════════════════════════════════╝
*/
#doc
Безвозмездно полученное имущество (работы, услуги)
(форма 100.06.001-003, Казахстан)
#end
.Form 'KzRep_100_06'
.Hide
.var
  OutStrUTF_8 : string;
.endvar
.Fields

  codePage             : string
  tagDocument_type     : string
  tagDocument_version  : string

  tagForm_id           : string
  tagForm_idStr        : string

  n_p                  : String    //Номер страницы (001,002,003, ...)
  rnn0                 : String    //РНН собственной организации
  fio1                 : String    //Название1 собственной организации
  fio2                 : String    //Название2 собственной организации
  np_year              : LongInt   //Отчетный год
  np_d1                : String    //фактическая Дата 1
  np_d2                : String    //фактическая Дата 2
  sum_i                : Double    //Сумма всего

  n_s                  : LongInt   //Нпп - начинаем с 2 на первой стр.
  rnn                  : String    //РНН поставщика
  vnn                  : String    //Наименование товара
  num                  : String    //№ СФ
  date_                : String    //Дата СФ
  sum                  : Double    //Сумма позиции спецификации

  fio_dl               : String    //ФИО, заполнившее форму

.EndFields
^^^
.{  //<form_100060000114>
^^
.{  //<sheet><page_100060000114>
^^^^^^^^
.{  //<row>
^^^^^^
.}  //</row>
^
.}  //</page_100060000114></sheet>
.}  //</form_100060000114>
.EndForm



//==================================================================================
//==================================================================================
//==================================================================================
#doc
XML - Безвозмездно полученное имущество (работы, услуги)
#end
.Linkform 'KzRep_100_06_XML' prototype 'KzRep_100_06'
.nameinlist 'XML - Безвозмездно полученное имущество (работы, услуги)'
.fields
  codePage
  tagDocument_type
  tagDocument_version
.EndFields
<?xml version="1.0" encoding="^"?>
<document type="^" version ="^" id="">
.{  //<form_...>
.fields
  tagForm_id
.EndFields
<form_^>
.{  //<sheet><page_...>
.fields
  tagForm_id
  n_p
  if((oem2utf8(rnn0,OutStrUTF_8)<>0)and(codePage='UTF-8'),OutStrUTF_8,rnn0)
  if((oem2utf8(fio1,OutStrUTF_8)<>0)and(codePage='UTF-8'),OutStrUTF_8,fio1)
  if((oem2utf8(fio2,OutStrUTF_8)<>0)and(codePage='UTF-8'),OutStrUTF_8,fio2)
  np_year
  sum_i
.EndFields
<sheet>
<page_^>
<n_p>^</n_p>
<rnn>^</rnn>
<fio1>^</fio1>
<fio2>^</fio2>
<np_year>^</np_year>
<sum_i>^</sum_i>
<rowset>
.{  //<row>
.fields
  n_s
  if((oem2utf8(rnn,OutStrUTF_8)<>0)and(codePage='UTF-8'),OutStrUTF_8,rnn)
  if((oem2utf8(vnn,OutStrUTF_8)<>0)and(codePage='UTF-8'),OutStrUTF_8,vnn)
  num
  date_
  sum
.EndFields
<row>
<n_s>^</n_s>
<rnn>^</rnn>
<vnn>^</vnn>
<num>^</num>
<date_>^</date_>
<sum>^</sum>
</row>
.}  //</row>
.fields
  if((oem2utf8(fio_dl,OutStrUTF_8)<>0)and(codePage='UTF-8'),OutStrUTF_8,fio_dl)
  tagForm_id
.EndFields
</rowset>
<fio_dl>^</fio_dl>
</page_^>
</sheet>
.}  //</page_...></sheet>
.fields
  tagForm_id
.EndFields
</form_^>
.}  //</form_...>
</document>
.EndForm