//******************************************************************************
//                                                      (с) корпорация Галактика
// Галактика 8.1 - Управление персоналом
// Ежедневный отчет об отсутствующих сотрудниках
//******************************************************************************

#doc
Ежедневный отчет об отсутствующих сотрудниках
#end
.set name='vidnejday'
.p 80
.hide
.fields
 DateForm
 DeptFullName
 Npp
 Fio
 Tabn
 Dept
 Post
 Period
 Reason
 CityKom
 PlaceKom1
 PlaceKom2
 PlaceKom3
 PlaceKom4
 PlaceKom5
 PlaceKom6
 PlaceKom7
 PlaceKom8
 PlaceKom9
 PlaceKom10
 GoalKom
 EtapCityKom
 EtapPlaceKom1
 EtapPlaceKom2
 EtapPlaceKom3
 EtapPlaceKom4
 EtapPlaceKom5
 EtapPlaceKom6
 EtapPlaceKom7
 EtapPlaceKom8
 EtapPlaceKom9
 EtapPlaceKom10
.endfields
 ^
.{ for_Dept CheckEnter
   ^
.{ foraInformD CheckEnter
 ^^^^^^^^^^^^^^^^^^ ^
.{ for_Place CheckEnter
^^^^^^^^^^^
.}

.}
.}

.endForm
