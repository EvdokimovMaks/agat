.set name = 'SZV_STAJ_Base'
.hide
.fields
  GUID
  FormDate
  FormTime
  TypeODV
  TypeSZV
  RegNomPred
  PredInn
  KPPPred
  NamePredShort
  Yea
  PersCount
  Dolg_Ruk
  Fio_Ruk1
  Fio_Ruk2
  Fio_Ruk3
  PostCount
.endfields
^^^^^^^^^^^^^^^^
.{ CheckEnter StaffStr
.fields
  DepartmentName
  PostName
  CountPlan
  CountFact
  NatureWork
  Doc
  SSUsl
  SSKPS
.endfields
^^^^^^^^
.}

.{ CheckEnter STAJ
.fields
  LastName
  FirstName
  GetPatronymic
  SNILS
  FromDate
  ToDate
  Terr
  rZarkoof
  Usl
  KPS
  Osn
  wHours
  wMinutes
  wMon
  wDays
  OsnDop
  Visl
  wHours2
  wMinutes2
  wMon2
  wDays2
  VislDop
  DatUv
  wLast
  wDopAdv
  wLastAdv
.endfields
^^^^^^^^^^^^^^^^^^^^^^^^^^
.}
.fields
  wSocDaNet
  wDopDaNet
  wNonStateVznos
  dNonStateDateB1
  dNonStateDateE1
  wNonStateDaNet1
  dNonStateDateB2
  dNonStateDateE2
  wNonStateDaNet2
.endfields
^^^^^^^^^
.endform
.linkform 'SZV_STAJ' prototype is 'SZV_STAJ_Base'
.nameinlist 'Электронная форма СЗВ-СТАЖ'
.group 'SZV_STAJ'
.var
  SumCountPlan: double
  SumCountFact: double
  DateUv: string
.endvar
.fields
  GUID
  FormDate
  FormTime
  TypeODV
  RegNomPred
  PredInn
  KPPPred
  NamePredShort
  Yea
  PersCount
.endfields
.begin
  SumCountPlan := 0;
  SumCountFact := 0;
  DateUv := '';
end.
<?xml version="1.0" encoding="UTF-8"?>
<ЭДПФР xmlns="http://пф.рф/ВС/СЗВ-СТАЖ/2018-03-22"
       xmlns:ВС2="http://пф.рф/ВС/типы/2017-10-23"
       xmlns:АФ4="http://пф.рф/АФ/2017-08-21" 
       xmlns:УТ2="http://пф.рф/УТ/2017-08-21"                
       xmlns:ИС4="http://пф.рф/ВС/ИС/типы/2018-11-20"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<СлужебнаяИнформация>
		<АФ4:GUID>^</АФ4:GUID>
		<АФ4:ДатаВремя>^T^</АФ4:ДатаВремя>
		<АФ4:ПрограммаПодготовки>Галактика ERP. Версия 9.1</АФ4:ПрограммаПодготовки>
	</СлужебнаяИнформация>
	<ОДВ-1>
		<Тип>^</Тип>
		<Страхователь>
			<УТ2:РегНомер>^</УТ2:РегНомер>
			<УТ2:ИНН>^</УТ2:ИНН>
			<УТ2:КПП>^</УТ2:КПП>
			<ИС4:Наименование>^</ИС4:Наименование>
		</Страхователь>
		<ОтчетныйПериод>
			<Код>0</Код>
			<Год>^</Год>
		</ОтчетныйПериод>
		<КоличествоЗЛ>^</КоличествоЗЛ>
.{?internal;TypeSZV = 0 and PostCount <> 0
		<ОснованияДНП>
.{ CheckEnter StaffStr
.fields
  DepartmentName
  PostName
  CountPlan
  CountFact
  NatureWork
  Doc
  SSUsl
  SSKPS
.endfields
			<Основание>
				<ИС4:Подразделение>^</ИС4:Подразделение>
				<ИС4:ПрофессияДолжность>^</ИС4:ПрофессияДолжность>
				<ИС4:КоличествоШтат>^</ИС4:КоличествоШтат>
				<ИС4:КоличествоФакт>^</ИС4:КоличествоФакт>
				<ИС4:Описание>^</ИС4:Описание>
				<ИС4:Документы>^</ИС4:Документы>
				<ОУТ>
.{?internal;SSUsl <> ''
					<Код>^</Код>
.}
.{?internal;SSKPS <> ''
					<ПозицияСписка>^</ПозицияСписка>
.}
				</ОУТ>
			</Основание>
.begin
  SumCountPlan := SumCountPlan + double(CountPlan);
  SumCountFact := SumCountFact + double(CountFact);
end.
.}
.fields
  SumCountPlan
  SumCountFact
.endfields
			<ИС4:ВсегоШтат>^</ИС4:ВсегоШтат>
			<ИС4:ВсегоФакт>^</ИС4:ВсегоФакт>
		</ОснованияДНП>
.}
.fields
  Dolg_Ruk
  Fio_Ruk1
  Fio_Ruk2
  Fio_Ruk3
  FormDate
.endfields
		<Руководитель>
			<Должность>^</Должность>
			<ФИО>
				<УТ2:Фамилия>^</УТ2:Фамилия>
				<УТ2:Имя>^</УТ2:Имя>
.{?internal;Fio_Ruk3 <> ''
				<УТ2:Отчество>^</УТ2:Отчество>
.}
			</ФИО>
		</Руководитель>
		<ДатаЗаполнения>^</ДатаЗаполнения>
	</ОДВ-1>
	<СЗВ-СТАЖ>
.fields
  RegNomPred
  PredInn
  KPPPred
  NamePredShort
  TypeSZV
  Yea
.endfields
		<Страхователь>
			<УТ2:РегНомер>^</УТ2:РегНомер>
			<УТ2:ИНН>^</УТ2:ИНН>
			<УТ2:КПП>^</УТ2:КПП>
			<ИС4:Наименование>^</ИС4:Наименование>
		</Страхователь>
		<Тип>^</Тип>
		<ОтчетныйПериод>
			<Код>0</Код>
			<Год>^</Год>
		</ОтчетныйПериод>		
.{ CheckEnter STAJ
.fields
  LastName
  FirstName
  GetPatronymic
  SNILS
  FromDate
  ToDate
  Terr
  rZarkoof
  Usl
  KPS
  Osn
  wHours
  wMinutes
  wMon
  wDays
  OsnDop
  Visl
  wHours2
  wMinutes2
  wMon2
  wDays2
  VislDop
.endfields
.begin
  DateUv := DatUv;
end.
.{?internal;SNILS <> ''
		<ЗЛ>
			<ФИО>
				<УТ2:Фамилия>^</УТ2:Фамилия>
				<УТ2:Имя>^</УТ2:Имя>
.{?internal;GetPatronymic <> ''
				<УТ2:Отчество>^</УТ2:Отчество>
.}
			</ФИО>
			<СНИЛС>^</СНИЛС>
.}
.{?internal;wDopAdv = 0 or wDopAdv = 1
			<СтажевыйПериод>
				<ИС4:Период>
					<УТ2:С>^</УТ2:С>
					<УТ2:По>^</УТ2:По>
				</ИС4:Период>
.}
.{?internal;Terr <> '' or Usl <> '' or KPS <> '' or Osn <> '' or Visl <> '' or OsnDop <> ''
				<ИС4:ЛьготныйСтаж>
.{?internal;Terr <> ''
                                        <ИС4:ТУ>
                                                <ИС4:Основание>^</ИС4:Основание>
.{?internal;double(rZarkoof) >= double(0.01)
                                                <ИС4:Коэффициент>^</ИС4:Коэффициент>
.}
                                        </ИС4:ТУ>
.}
.{?internal;Usl <> '' or KPS <> ''
					<ИС4:ОУТ>
.{?internal;Usl <> ''
						<ИС4:Код>^</ИС4:Код>
.}
.{?internal;KPS <> ''
						<ИС4:ПозицияСписка>^</ИС4:ПозицияСписка>
.}
					</ИС4:ОУТ>
.}
.{?internal;Osn <> '' or wHours <> 0 or wMinutes <> 0 or wMon <> 0 or wDays <> 0
                                        <ИС4:ИС>
.{?internal;Osn <> ''
                                                <ИС4:Основание>^</ИС4:Основание>
.}
.{?internal;wHours <> 0 or wMinutes <> 0
                                                <ВС2:ВыработкаВчасах>
.{?internal;wHours <> 0
                                                      <ВС2:Часы>^</ВС2:Часы>
.}
.{?internal;wMinutes <> 0
                                                      <ВС2:Минуты>^</ВС2:Минуты>
.}
                                                </ВС2:ВыработкаВчасах>
.}
.{?internal;(wMon <> 0 or wDays <> 0) and (wHours = 0 and wMinutes = 0)
                                                <ВС2:ВыработкаКалендарная>
.{?internal;wMon <> 0
                                                      <ВС2:ВсеМесяцы>^</ВС2:ВсеМесяцы>
.}
.{?internal;wDays <> 0
                                                      <ВС2:ВсеДни>^</ВС2:ВсеДни>
.}
                                                </ВС2:ВыработкаКалендарная>
.}
                                        </ИС4:ИС>
.}
.{?internal;OsnDop <> ''
                                        <ИС4:ДопСведенияИС>^</ИС4:ДопСведенияИС>
.}
.{?internal;Visl <> '' or VislDop <> '' or wHours2 <> 0 or wMinutes2 <> 0 or wMon2 <> 0 or wDays2 <> 0
                                        <ИС4:ВЛ>
.{?internal;Visl <> ''
                                                <ИС4:Основание>^</ИС4:Основание>
.}
.{?internal;wHours2 <> 0 or wMinutes2 <> 0
                                                <ВС2:ВыработкаВчасах>
.{?internal;wHours2 <> 0
                                                      <ВС2:Часы>^</ВС2:Часы>
.}
.{?internal;wMinutes2 <> 0
                                                      <ВС2:Минуты>^</ВС2:Минуты>
.}
                                                </ВС2:ВыработкаВчасах>
.}
.{?internal;(wMon2 <> 0 or wDays2 <> 0) and (wHours2 = 0 and wMinutes2 = 0)
                                                <ВС2:ВыработкаКалендарная>
.{?internal;wMon2 <> 0
                                                      <ВС2:ВсеМесяцы>^</ВС2:ВсеМесяцы>
.}
.{?internal;wDays2 <> 0
                                                      <ВС2:ВсеДни>^</ВС2:ВсеДни>
.}
                                                </ВС2:ВыработкаКалендарная>
.}
.{?internal;VislDop <> ''
                                                <ИС4:ДоляСтавки>^</ИС4:ДоляСтавки>
.}
                                        </ИС4:ВЛ>
.}
				</ИС4:ЛьготныйСтаж>
.}
.{?internal;wDopAdv = 0 or wLastAdv <> 0
			</СтажевыйПериод>
.}
.fields
  DateUv
.endfields
.{?internal;DateUv <> '' and wLast = 1
		        <ДатаУвольнения>^</ДатаУвольнения>
.}
.{?internal;wLast = 1
		</ЗЛ>
.}
.}
.fields
  wSocDaNet
  wDopDaNet
  dNonStateDateB1
  dNonStateDateE1
  wNonStateDaNet1
  dNonStateDateB2
  dNonStateDateE2
  wNonStateDaNet2
.endfields
.{?internal;TypeSZV = 2
                        <СВ>
                            <НачисленыНаОПС>^</НачисленыНаОПС>
                            <НачисленыПоДТ>^</НачисленыПоДТ>
                        </СВ>
.{?internal;wNonStateVznos = 1 and dNonStateDateB1 <> '' and dNonStateDateE1 <> ''
                        <Уплата>
                            <Период>
                               <УТ2:С>^</УТ2:С>
                               <УТ2:По>^</УТ2:По>
                            </Период>
                            <Уплачено>^</Уплачено>
                        </Уплата>
.}
.{?internal;wNonStateVznos = 1 and dNonStateDateB2 <> '' and dNonStateDateE2 <> ''
                        <Уплата>
                            <Период>
                               <УТ2:С>^</УТ2:С>
                               <УТ2:По>^</УТ2:По>
                            </Период>
                            <Уплачено>^</Уплачено>
                        </Уплата>
.}
.}
	</СЗВ-СТАЖ>
</ЭДПФР>
.endform
