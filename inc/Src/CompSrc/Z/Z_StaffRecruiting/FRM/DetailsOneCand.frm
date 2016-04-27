//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Управление персоналом
// Отчет о персональных данных кандидата
//------------------------------------------------------------------------------

#doc
Отчет о персональных данных кандидата
#end
.form DetailsOneCand
.hide
.fields
FIO           // ФИО
BornDate      // Дата рождения
Education     // Уровень образования
Educ_inst     // Место учебы
Educ_ToDate   // Дата окончания учебы
Educ_Spec     // Специальность по диплому
Educ_Qualif   // Квалификация по диплому
BaseProf      // Основная профессия
AddProf       // Смежная порфессия
Staj          // Общий стаж работы
Place_work_Place  // Место предыдущей работы
Place_work_Post   // должность на пред. месте.
Place_work_From   // с ...
Place_work_To     // по ..
Language      // Иностранный язык
Lang_level    // Уровень владения
.endfields

.{ OneCandidat checkenter
^ ^ ^ ^ ^ ^
^ ^ ^ ^
.{ OneCand_OldWork checkenter
^ ^ ^ ^
.}
.{ OneCand_Lang checkenter
^ ^
.}
.}
.endform