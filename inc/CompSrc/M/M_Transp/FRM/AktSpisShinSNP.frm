/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                                                  (c) корпорация ГАЛАКТИКА ║
 ║ Галактика 8.10, Управление транспортом                                    ║
 ║ Базовая форма для печати Акта списания шин (Сибнефтепровод)               ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.set name='AktSpisShinSNP'
.Group 'Шины'
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
!	размер шины
	TireSize
! модель шины
	Model
! количество шин конкретной модели
  AmountMod
! завод изготовитель
 	Manuf
! номер шины
	NumShin
! данные ТС
 RegNum MarkaTC TypeTC AmountShin
! Норма пробега
	NormProbeg
! Пробег с начала экслуатации
	AllProbeg
! Остаток протектора в мм
	Pgp
! Дата списания шины
	dSpis
! данные по комиссии
  EndComissPost EndComissFIO
.endfields
.{

.{ CheckEnter TireSize
^
^
^
^ ^
^ ^
.{ CheckEnter GroupCommiss
^ ^
.}

^
.{ CheckEnter ObjectSpisMod
^ ^ ^
.}

.{ CheckEnter ObjectSpisTC
^
^ ^ ^ ^
^ ^
.}

.{ CheckEnter ObjectCauseSpis
^ ^
.}

.{ CheckEnter EndGroupCommiss
^ ^
.}
.if AktSpisBrkPage
.end
.}

.}
.endform
