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
<ЭДПФР xmlns="http://пф.рф/ВС/СЗВ-СТАЖ/2017-01-01" 
       xmlns:УТ="http://пф.рф/унифицированныеТипы/2014-01-01" 
       xmlns:АФ="http://пф.рф/АФ" 
       xmlns:АФ2="http://пф.рф/АФ/2016-06-21" 
       xmlns:ВС="http://пф.рф/ВС/типы/2014-01-01" 
       xmlns:ИС="http://пф.рф/ВС/типыИС/2017-01-01" 
       xmlns:РВ="http://пф.рф/ВС/типыРВ/2014-01-01" 
       xmlns:xs="http://www.w3.org/2001/XMLSchema">
	<СлужебнаяИнформация>
		<АФ:GUID>^</АФ:GUID>
		<АФ:ДатаВремя>^T^</АФ:ДатаВремя>
	</СлужебнаяИнформация>
	<ОДВ-1>
		<Тип>^</Тип>
		<Страхователь>
			<УТ:РегНомер>^</УТ:РегНомер>
			<УТ:ИНН>^</УТ:ИНН>
			<УТ:КПП>^</УТ:КПП>
			<ИС:Наименование>^</ИС:Наименование>
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
			<ИС:Основание>
				<ИС:Подразделение>^</ИС:Подразделение>
				<ИС:ПрофессияДолжность>^</ИС:ПрофессияДолжность>
				<ИС:КоличествоШтат>^</ИС:КоличествоШтат>
				<ИС:КоличествоФакт>^</ИС:КоличествоФакт>
				<ИС:Описание>^</ИС:Описание>
				<ИС:Документы>^</ИС:Документы>
				<ИС:ОУТ>
.{?internal;SSUsl <> ''
					<ИС:Код>^</ИС:Код>
.}
.{?internal;SSKPS <> ''
					<ИС:ПозицияСписка>^</ИС:ПозицияСписка>
.}
				</ИС:ОУТ>
			</ИС:Основание>
.begin
  SumCountPlan := SumCountPlan + double(CountPlan);
  SumCountFact := SumCountFact + double(CountFact);
end.
.}
.fields
  SumCountPlan
  SumCountFact
.endfields
			<ИС:ВсегоШтат>^</ИС:ВсегоШтат>
			<ИС:ВсегоФакт>^</ИС:ВсегоФакт>
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
				<УТ:Фамилия>^</УТ:Фамилия>
				<УТ:Имя>^</УТ:Имя>
				<УТ:Отчество>^</УТ:Отчество>
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
			<УТ:РегНомер>^</УТ:РегНомер>
			<УТ:ИНН>^</УТ:ИНН>
			<УТ:КПП>^</УТ:КПП>
			<ИС:Наименование>^</ИС:Наименование>
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
				<УТ:Фамилия>^</УТ:Фамилия>
				<УТ:Имя>^</УТ:Имя>
				<УТ:Отчество>^</УТ:Отчество>
			</ФИО>
			<СНИЛС>^</СНИЛС>
.}
.{?internal;wDopAdv = 0 or wDopAdv = 1
			<СтажевыйПериод>
				<ИС:Период>
					<УТ:С>^</УТ:С>
					<УТ:По>^</УТ:По>
				</ИС:Период>
.}
.{?internal;Terr <> '' or Usl <> '' or KPS <> '' or Osn <> '' or Visl <> '' or OsnDop <> ''
				<ИС:ЛьготныйСтаж>
.{?internal;Terr <> ''
                                        <ИС:ТУ>
                                                <ИС:Основание>^</ИС:Основание>
.{?internal;double(rZarkoof) >= double(0.01)
                                                <ИС:Коэффициент>^</ИС:Коэффициент>
.}
                                        </ИС:ТУ>
.}
.{?internal;Usl <> '' or KPS <> ''
					<ИС:ОУТ>
.{?internal;Usl <> ''
						<ИС:Код>^</ИС:Код>
.}
.{?internal;KPS <> ''
						<ИС:ПозицияСписка>^</ИС:ПозицияСписка>
.}
					</ИС:ОУТ>
.}
.{?internal;Osn <> '' or wHours <> 0 or wMinutes <> 0 or wMon <> 0 or wDays <> 0
                                        <ИС:ИС>
.{?internal;Osn <> ''
                                                <ИС:Основание>^</ИС:Основание>
.}
.{?internal;wHours <> 0 or wMinutes <> 0
                                                <ВС:ВыработкаВчасах>
.{?internal;wHours <> 0
                                                      <ВС:Часы>^</ВС:Часы>
.}
.{?internal;wMinutes <> 0
                                                      <ВС:Минуты>^</ВС:Минуты>
.}
                                                </ВС:ВыработкаВчасах>
.}
.{?internal;(wMon <> 0 or wDays <> 0) and (wHours = 0 and wMinutes = 0)
                                                <ВС:ВыработкаКалендарная>
.{?internal;wMon <> 0
                                                      <ВС:ВсеМесяцы>^</ВС:ВсеМесяцы>
.}
.{?internal;wDays <> 0
                                                      <ВС:ВсеДни>^</ВС:ВсеДни>
.}
                                                </ВС:ВыработкаКалендарная>
.}
                                        </ИС:ИС>
.}
.{?internal;OsnDop <> ''
                                        <ИС:ДопСведенияИС>^</ИС:ДопСведенияИС>
.}
.{?internal;Visl <> '' or VislDop <> '' or wHours2 <> 0 or wMinutes2 <> 0 or wMon2 <> 0 or wDays2 <> 0
                                        <ИС:ВЛ>
.{?internal;Visl <> ''
                                                <ИС:Основание>^</ИС:Основание>
.}
.{?internal;wHours2 <> 0 or wMinutes2 <> 0
                                                <ВС:ВыработкаВчасах>
.{?internal;wHours2 <> 0
                                                      <ВС:Часы>^</ВС:Часы>
.}
.{?internal;wMinutes2 <> 0
                                                      <ВС:Минуты>^</ВС:Минуты>
.}
                                                </ВС:ВыработкаВчасах>
.}
.{?internal;(wMon2 <> 0 or wDays2 <> 0) and (wHours2 = 0 and wMinutes2 = 0)
                                                <ВС:ВыработкаКалендарная>
.{?internal;wMon2 <> 0
                                                      <ВС:ВсеМесяцы>^</ВС:ВсеМесяцы>
.}
.{?internal;wDays2 <> 0
                                                      <ВС:ВсеДни>^</ВС:ВсеДни>
.}
                                                </ВС:ВыработкаКалендарная>
.}
.{?internal;VislDop <> ''
                                                <ИС:ДоляСтавки>^</ИС:ДоляСтавки>
.}
                                        </ИС:ВЛ>
.}
				</ИС:ЛьготныйСтаж>
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
                               <УТ:С>^</УТ:С>
                               <УТ:По>^</УТ:По>
                            </Период>
                            <Уплачено>^</Уплачено>
                        </Уплата>
.}
.{?internal;wNonStateVznos = 1 and dNonStateDateB2 <> '' and dNonStateDateE2 <> ''
                        <Уплата>
                            <Период>
                               <УТ:С>^</УТ:С>
                               <УТ:По>^</УТ:По>
                            </Период>
                            <Уплачено>^</Уплачено>
                        </Уплата>
.}
.}
	</СЗВ-СТАЖ>
</ЭДПФР>
.endform
