//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 8.1 - Логистика
// Отчет о наличии серийных номеров
//******************************************************************************

#doc
Отчет о наличии серийных номеров
#end
.Form 'snsklrazr'
.Hide
.Fields
 ShowTotal : boolean
 MCName    : string
 MCKod     : string
 GroupMC   : string
 EdIzmAbbr : string
 SkladName : string
 MOLName   : string
 PartyName : string
 SerialN   : string
 LastRec   : boolean
 innum     : string
 zavnom    : string
 nameos    : string
 Status    : string
.EndFields
^
.{
^ ^ ^ ^
^ ^ ^ ^
^
^ ^ ^ ^
.}
.EndForm

#include snsklmc.frn
#include snsklgrmc.frn
#include snsklpodr.frn
#include snsklmol.frn