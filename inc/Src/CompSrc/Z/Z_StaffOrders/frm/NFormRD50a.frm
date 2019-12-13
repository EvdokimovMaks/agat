//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.8 - Управление персоналом
// Форма Т-5a  Сводный приказ о переводе
//------------------------------------------------------------------------------

#doc
Форма Т-5a  Сводный приказ о переводе
#end
.form NformRD50a
.Hide
.Fields
Организация  ОКПО
TitleDocNrec : comp
sBarCode
номер_документа  дата_составления

ContDocNrec : comp
PersNrec : comp
AppointNrec : comp
FIO
FIO_VP
TabN
подразделение : WideString
должность

SysOpl
tarif

topKoef

дата_с
дата_по

CountStaf
Rejim
Osn

PassportsSer                            //Серия
PassportsNmb                            //Номер
PassportsGivenDate                      //Дата выдачи
PassportsGivenBy                        //Кем выдан

ContractNmb                             //Номер трудового договора
ContractDate                            //Дата трудового договора

ADDRProp                                //Место регистрации
ADDRReg                                 //Место временной регистрации
FIOSokr                                 //Фамилия с инициалами

ДолжнРук
ФиоРук

.EndFields

^ ^ ^ ^ ^ ^
.{ NformRD50aCycle CheckEnter
^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^
.}
^ ^
.endform
