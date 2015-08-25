/*
 ╔═════════════════════════════════════════════════════════════════════════════╗
 ║                                                  (c) корпорация ГАЛАКТИКА   ║
 ║ Галактика 8.10, Управление транспортом                                      ║
 ║ Базовая форма для печати Лимитной карточки на получение ГСМ (Сибнефтепровод)║
 ╚═════════════════════════════════════════════════════════════════════════════╝
*/
.set name='LimZapReceptGSM'
.hide
.fields
! LimZapH.nRec
  LimZapH_nRec
! наименование организации
  NameOrg
! наименование автокалоны
	CarColon
! дата формирования отчета
	dCreateRep
! наименование склада
	WareHouse
!	единица измерения
	Unit
! ответсвенные лица
	PersonInChange
! LimZapL.nRec
  LimZapL_nRec
! марка топлива
	MarkFuel
! количество литров
	AmountLiter
! данные ТС
 	MarkaTC RegNum
! ФИО водителя
	FIODriver
! данные по комиссии, дата выдачи
  ComissPost ComissFIO dOfIssue
! данные по комиссии, выдачу разрешил, дата выдачи
  ComissPost1 ComissFIO1 dOfIssue1
! номер ведомости
	NumReport
! дата выдачи ЛВЗ
	dOfIssueLZV
.endfields
.{

.{ CheckEnter LimZapH
^
^ 
^ ^
^ ^
.{ CheckEnter LimZapLFIOPers
^
.}

.{ CheckEnter LimZapL
^ ^ ^ ^ ^ ^
.{ CheckEnter LimZapLCommiss
^ ^ ^
.}
^ ^ ^
.}
^ ^
.if LimZapReceptBrkPage

.end
.}

.}
.endform
