/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                                                  (c) корпорация ГАЛАКТИКА ║
 ║ Галактика 8.10, Управление транспортом                                    ║
 ║ Базовая форма для печати Акта списания комплектующих (Сибнефтепровод)     ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.set name='AktSpisCompSNP'
.hide
.fields
! должность согласующего
	sMatchingPost
! наименование организации
	sNameOrg
! ФИО согласующего
	sMatchingName
! номер акта
! NumAkt
! дата формирования акта
	sCity
! дата формирования акта
	dCreateAkt
! председатель комиссии
	HeadComissPost HeadComissFIO
! данные по комиссии
  ComissPost ComissFIO
!	тип комплектующей
	Tip
! номер комплектующей
	NumComp
! количество комплектующих
	AmountComp
! дата установки
	DatZak
! данные ТС
 	RegNum MarkaTC TypeTC
! Норма пробега
	NormProbeg
! Пробег с начала экслуатации
	AllProbeg
! данные по комиссии
  EndComissPost EndComissFIO
.endfields
.{

.{ CheckEnter GroupTS
^
^
^
^ ^
^ ^
.{ CheckEnter GroupCommissComp
^ ^
.}

^ ^ ^ ^ ^ ^ ^
^ ^
.{ CheckEnter EndGroupCommissComp
^ ^
.}
.if BrkPageComp
.end
.}

.}
.endform
