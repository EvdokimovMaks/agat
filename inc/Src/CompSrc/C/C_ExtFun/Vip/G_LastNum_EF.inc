/*

 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,2004 корпорация ГАЛАКТИКА                    ║
 ║ Система       : ГАЛАКТИКА                                                 ║
 ║ Проект        : Ядро                                                      ║
 ║ Версия        : 5.84                                                      ║
 ║ Назначение    : Внешние процедуры и функции из G_LastNumD.dll             ║
 ║ Ответственный : Герман Юрий Эдуардович                                    ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/

//------------------------------------------------------------------------------
// LastNum.pas
#doc
  </brief>

  <p>
    Генерирует следующий номер для указанного типа документа, с указанием дескриптора и длинной номера.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>tab</code> - тип документа;</li>
    <li><code>sub</code> - дескриптор;</li>
    <li><code>len</code> - длина.</li>
  </ul>
#end
function GetLastNumD__(tab: Word, sub: String, len: Byte): String; external 'G_LastNumD.dll';
#doc
  </brief>

  <p>
    Генерирует следующий номер для указанного типа документа и дескриптора.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>tab</code> - тип документа;</li>
    <li><code>sub</code> - дескриптор.</li>
  </ul>
#end
function GetLastNumD_(tab: Word, sub: String): String; external 'G_LastNumD.dll';
#doc
  </brief>

  <p>
    Генерирует следующий номер для указанного типа документа.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>tab</code> - тип документа.</li>
  </ul>
#end
function GetLastNumD(tab: Word): String; external 'G_LastNumD.dll';
#doc
  </brief>

  <p>
    Удаляет последний номер для указанного типа документа, с указанием дескриптора и номера.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>tab</code> - тип документа;</li>
    <li><code>sub</code> - дескриптор;</li>
    <li><code>nom</code> - номер.</li>
  </ul>
#end
procedure DelLastNumD_(tab: Word, sub: String, nom: String); external 'G_LastNumD.dll';
#doc
  </brief>

  <p>
    Удаляет последний номер для указанного типа документа, с указанием его подтипа.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>tab</code> - тип документа;</li>
    <li><code>nom</code> - номер.</li>
  </ul>
#end
procedure DelLastNumD(tab: Word, nom: String); external 'G_LastNumD.dll';
#doc
  </brief>

  <p>
    Возвращает название документа по номеру.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>tab</code> - тип документа.</li>
  </ul>
#end
function GetLNDname(tab: Word): String; external 'G_LastNumD.dll';
