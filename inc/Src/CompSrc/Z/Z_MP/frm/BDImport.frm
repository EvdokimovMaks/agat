/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Заработная плата                                          ║
 ║ Версия        : 5.70                                                      ║
 ║ Ответственный : Корзюк Виталий Францевич                                  ║
 ║ Назначение    : Протокол импорта бригадных нарядов                        ║
 ║                                                                           ║
 ║ Изменения                                                                 ║
 ║     Автор: ___________________ Дата: __________________                   ║
 ║     Цель : ____________________________________________                   ║
 ║                                                                           ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/

#doc
Протокол импорта бригадных нарядов
#end
.FORM 'BrigadeDutyImport'
.DEFP PA4
.DEFO PORTRAIT
.FIELDS
  ImportFileName
.ENDFIELDS
ПРОТОКОЛ ИМПОРТА

Импортируется файл ^
.{
.CASE
!==========
.WHEN InsertDuty
.FIELDS
  DutyNumber1
  DutyDepartment1
  DutyBrigadeNumber1
  Премия1
.ENDFIELDS

(+) Добавляется наряд
  Номер: ^; Цех: ^; Бригада: ^; Премия: ^
!==========
.WHEN UpdateDuty
.FIELDS
  DutyNumber2
  DutyDepartment2
  DutyBrigadeNumber2
  Премия2
.ENDFIELDS

(!) Обновляется наряд
  Номер: ^; Цех: ^; Бригада: ^; Премия: ^
!==========
.WHEN InsertDutyItem
.FIELDS
  Номер_наряда3
  Номер_работы3
  Код_работы3
  Номер_операции3
  Норма_времени3
  Норма_оплаты3
  Количество3
  Суммарное_время3
  Стоимость_работы3
  Счет3
  Субсчет3
.ENDFIELDS
  (+) Добавляется запись на лицевой стороне наряда ^:
    &&&: ^, ^, ^, ^, ^, ^, ^, ^, ^
!==========
.WHEN UpdateDutyItem
.FIELDS
  Номер_наряда4
  Номер_работы4
  Код_работы4
  Номер_операции4
  Норма_времени4
  Норма_оплаты4
  Количество4
  Суммарное_время4
  Стоимость_работы4
  Счет4
  Субсчет4
.ENDFIELDS
  (!) Обновляется запись на лицевой стороне наряда ^:
    &&&: ^, ^, ^, ^, ^, ^, ^, ^, ^
!==========
.WHEN ErrorDetected
.FIELDS
  ErrorLine5
  ErrorPos5
.ENDFIELDS
∙ Ошибка импорта. Cтрока: ^, Позиция ^
!==========
.WHEN BadDepartment
.FIELDS
  Department6
.ENDFIELDS
∙ Нет такого цеха: ^
!==========
.WHEN BadClockNumber
.FIELDS
  ClockNumber7
.ENDFIELDS
∙ Нет такого табельного номера: ^
!==========
.WHEN BadAccount
.FIELDS
  Account9
.ENDFIELDS
∙ Нет такого счета: ^
!==========
.WHEN BadControlAccount
.FIELDS
  Account10
  ControlAccount10
.ENDFIELDS
∙ Для счета ^ нет субсчета ^
!==========
.WHEN BadRecordNumber
.FIELDS
  RecordNumber11
.ENDFIELDS
∙ Некорректный номер записи: ^
.WHEN AccountChanged
.FIELDS
  Account12
  KAU1
  KAU2
  KAU3
.ENDFIELDS
∙ Счет был изменен. КАУ установлен по умолчанию.
  Старые значения: счет "^", КАУ "^"/"^"/"^"
!==========
.WHEN BadBrigadeNumber
.FIELDS
  ClockNumber13
.ENDFIELDS
∙ Нет такого номера бригады: ^
!==========
.WHEN BadDate
.FIELDS
  Date14
.ENDFIELDS
∙ Некорректная дата: ^
!==========
.WHEN ErrorMessage
.FIELDS
  MessageString
.ENDFIELDS
∙ ^
.END
.}
.ENDFORM