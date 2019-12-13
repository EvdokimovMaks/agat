/*                                            `
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                       (c) 2002 корпорация ГАЛАКТИКА                       ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Оперативный контур                                        ║
 ║ Версия        : 5.83 (ArtDesign)                                          ║
 ║ Назначение    : Прототипы бирок для складских ячеек хранения и стеллажей  ║
 ║ Ответственный : Двинский Сергей Леонидович                                ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/

#doc
Прототипы бирок для складских ячеек хранения и стеллажей
#end
.set name = 'BirkaP'
.hide
.fields
  MYORG : string        //Собст. организация
  PodrName : string     //Склад
  KOD : string          //Код ячейки
  NameBOX: string       //Наименование ячейки
  SHK_BOX : string      //Штрих-код ячейки
  BarKod : string       //МЦ Баркод
  BarKod2 : string      //МЦ Баркод2
  Article : string      //Наименование МЦ
  Ed_izm  : string      //Ед.измерения
  Count : double
.endfields
.{
^^^^^^^^^^
.}
.endform

#doc
Прототипы бирок для складских ячеек хранения и стеллажей
#end
.set name = 'BirkaR'
.hide
.fields
  MYORG : string       //Собст. организация
  PodrName : string    //Склад
  KOD : string         //Код ячейки
  NameBOX: string      //Наименование ячейки
  SHK_BOX : string     //Штрих-код ячейки
  BarKod : string      //МЦ Баркод
  BarKod2 : string     //МЦ Баркод2
  Article : string     //Наименование МЦ
  Ed_izm  : string     //Ед.измерения

  MYORG2: string       //Собст. организация
  PodrName2: string    //Склад
  KOD2: string         //Код ячейки
  NameBOX2:string      //Наименование ячейки
  SHK_BOX2: string     //Штрих-код ячейки
  BarKod_2: string      //МЦ Баркод
  BarKod2_2: string     //МЦ Баркод2
  Article2: string     //Наименование МЦ
  Ed_izm2 : string     //Ед.измерения
.endfields
.{
^^^^^^^^^ ^^^^^^^^^
.}
.endform
