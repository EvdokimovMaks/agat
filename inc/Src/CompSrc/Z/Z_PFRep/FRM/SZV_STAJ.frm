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
.nameinlist '«¥ªâà®­­ ï ä®à¬  -'
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
< xmlns="http://¯ä.àä//-/2018-01-29"
       xmlns:2="http://¯ä.àä//â¨¯ë/2017-10-23"
       xmlns:4="http://¯ä.àä//2017-08-21" 
       xmlns:2="http://¯ä.àä//2017-08-21" 
       xmlns:2="http://¯ä.àä///â¨¯ë/2017-09-11" 
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
             xsi:schemaLocation="http://¯ä.àä//-/2018-01-29 ..\..\..\..\å¥¬ë\\å®¤ïé¨¥\2017\-_2018-01-29.xsd">
	<«ã¦¥¡­ ï­ä®à¬ æ¨ï>
		<4:GUID>^</4:GUID>
		<4: â à¥¬ï>^T^</4: â à¥¬ï>
		<4:à®£à ¬¬ ®¤£®â®¢ª¨> « ªâ¨ª  ERP. ¥àá¨ï 9.1</4:à®£à ¬¬ ®¤£®â®¢ª¨>
	</«ã¦¥¡­ ï­ä®à¬ æ¨ï>
	<-1>
		<¨¯>^</¨¯>
		<âà å®¢ â¥«ì>
			<2:¥£®¬¥à>^</2:¥£®¬¥à>
			<2:>^</2:>
			<2:>^</2:>
			<2: ¨¬¥­®¢ ­¨¥>^</2: ¨¬¥­®¢ ­¨¥>
		</âà å®¢ â¥«ì>
		<âç¥â­ë©¥à¨®¤>
			<®¤>0</®¤>
			<®¤>^</®¤>
		</âç¥â­ë©¥à¨®¤>
		<®«¨ç¥áâ¢®>^</®«¨ç¥áâ¢®>
.{?internal;TypeSZV = 0 and PostCount <> 0
		<á­®¢ ­¨ï>
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
			<á­®¢ ­¨¥>
				<2:®¤à §¤¥«¥­¨¥>^</2:®¤à §¤¥«¥­¨¥>
				<2:à®ä¥áá¨ï®«¦­®áâì>^</2:à®ä¥áá¨ï®«¦­®áâì>
				<2:®«¨ç¥áâ¢®â â>^</2:®«¨ç¥áâ¢®â â>
				<2:®«¨ç¥áâ¢® ªâ>^</2:®«¨ç¥áâ¢® ªâ>
				<2:¯¨á ­¨¥>^</2:¯¨á ­¨¥>
				<2:®ªã¬¥­âë>^</2:®ªã¬¥­âë>
				<>
.{?internal;SSUsl <> ''
					<®¤>^</®¤>
.}
.{?internal;SSKPS <> ''
					<®§¨æ¨ï¯¨áª >^</®§¨æ¨ï¯¨áª >
.}
				</>
			</á­®¢ ­¨¥>
.begin
  SumCountPlan := SumCountPlan + double(CountPlan);
  SumCountFact := SumCountFact + double(CountFact);
end.
.}
.fields
  SumCountPlan
  SumCountFact
.endfields
			<2:á¥£®â â>^</2:á¥£®â â>
			<2:á¥£® ªâ>^</2:á¥£® ªâ>
		</á­®¢ ­¨ï>
.}
.fields
  Dolg_Ruk
  Fio_Ruk1
  Fio_Ruk2
  Fio_Ruk3
  FormDate
.endfields
		<ãª®¢®¤¨â¥«ì>
			<®«¦­®áâì>^</®«¦­®áâì>
			<>
				<2: ¬¨«¨ï>^</2: ¬¨«¨ï>
				<2:¬ï>^</2:¬ï>
				<2:âç¥áâ¢®>^</2:âç¥áâ¢®>
			</>
		</ãª®¢®¤¨â¥«ì>
		< â  ¯®«­¥­¨ï>^</ â  ¯®«­¥­¨ï>
	</-1>
	<->
.fields
  RegNomPred
  PredInn
  KPPPred
  NamePredShort
  TypeSZV
  Yea
.endfields
		<âà å®¢ â¥«ì>
			<2:¥£®¬¥à>^</2:¥£®¬¥à>
			<2:>^</2:>
			<2:>^</2:>
			<2: ¨¬¥­®¢ ­¨¥>^</2: ¨¬¥­®¢ ­¨¥>
		</âà å®¢ â¥«ì>
		<¨¯>^</¨¯>
		<âç¥â­ë©¥à¨®¤>
			<®¤>0</®¤>
			<®¤>^</®¤>
		</âç¥â­ë©¥à¨®¤>		
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
		<>
			<>
				<2: ¬¨«¨ï>^</2: ¬¨«¨ï>
				<2:¬ï>^</2:¬ï>
				<2:âç¥áâ¢®>^</2:âç¥áâ¢®>
			</>
			<>^</>
.}
.{?internal;wDopAdv = 0 or wDopAdv = 1
			<â ¦¥¢ë©¥à¨®¤>
				<2:¥à¨®¤>
					<2:>^</2:>
					<2:®>^</2:®>
				</2:¥à¨®¤>
.}
.{?internal;Terr <> '' or Usl <> '' or KPS <> '' or Osn <> '' or Visl <> '' or OsnDop <> ''
				<2:ì£®â­ë©â ¦>
.{?internal;Terr <> ''
                                        <2:>
                                                <2:á­®¢ ­¨¥>^</2:á­®¢ ­¨¥>
.{?internal;double(rZarkoof) >= double(0.01)
                                                <2:®íää¨æ¨¥­â>^</2:®íää¨æ¨¥­â>
.}
                                        </2:>
.}
.{?internal;Usl <> '' or KPS <> ''
					<2:>
.{?internal;Usl <> ''
						<2:®¤>^</2:®¤>
.}
.{?internal;KPS <> ''
						<2:®§¨æ¨ï¯¨áª >^</2:®§¨æ¨ï¯¨áª >
.}
					</2:>
.}
.{?internal;Osn <> '' or wHours <> 0 or wMinutes <> 0 or wMon <> 0 or wDays <> 0
                                        <2:>
.{?internal;Osn <> ''
                                                <2:á­®¢ ­¨¥>^</2:á­®¢ ­¨¥>
.}
.{?internal;wHours <> 0 or wMinutes <> 0
                                                <2:ëà ¡®âª ç á å>
.{?internal;wHours <> 0
                                                      <2: áë>^</2: áë>
.}
.{?internal;wMinutes <> 0
                                                      <2:¨­ãâë>^</2:¨­ãâë>
.}
                                                </2:ëà ¡®âª ç á å>
.}
.{?internal;(wMon <> 0 or wDays <> 0) and (wHours = 0 and wMinutes = 0)
                                                <2:ëà ¡®âª  «¥­¤ à­ ï>
.{?internal;wMon <> 0
                                                      <2:á¥¥áïæë>^</2:á¥¥áïæë>
.}
.{?internal;wDays <> 0
                                                      <2:á¥­¨>^</2:á¥­¨>
.}
                                                </2:ëà ¡®âª  «¥­¤ à­ ï>
.}
                                        </2:>
.}
.{?internal;OsnDop <> ''
                                        <2:®¯¢¥¤¥­¨ï>^</2:®¯¢¥¤¥­¨ï>
.}
.{?internal;Visl <> '' or VislDop <> '' or wHours2 <> 0 or wMinutes2 <> 0 or wMon2 <> 0 or wDays2 <> 0
                                        <2:>
.{?internal;Visl <> ''
                                                <2:á­®¢ ­¨¥>^</2:á­®¢ ­¨¥>
.}
.{?internal;wHours2 <> 0 or wMinutes2 <> 0
                                                <2:ëà ¡®âª ç á å>
.{?internal;wHours2 <> 0
                                                      <2: áë>^</2: áë>
.}
.{?internal;wMinutes2 <> 0
                                                      <2:¨­ãâë>^</2:¨­ãâë>
.}
                                                </2:ëà ¡®âª ç á å>
.}
.{?internal;(wMon2 <> 0 or wDays2 <> 0) and (wHours2 = 0 and wMinutes2 = 0)
                                                <2:ëà ¡®âª  «¥­¤ à­ ï>
.{?internal;wMon2 <> 0
                                                      <2:á¥¥áïæë>^</2:á¥¥áïæë>
.}
.{?internal;wDays2 <> 0
                                                      <2:á¥­¨>^</2:á¥­¨>
.}
                                                </2:ëà ¡®âª  «¥­¤ à­ ï>
.}
.{?internal;VislDop <> ''
                                                <2:®«ïâ ¢ª¨>^</2:®«ïâ ¢ª¨>
.}
                                        </2:>
.}
				</2:ì£®â­ë©â ¦>
.}
.{?internal;wDopAdv = 0 or wLastAdv <> 0
			</â ¦¥¢ë©¥à¨®¤>
.}
.fields
  DateUv
.endfields
.{?internal;DateUv <> '' and wLast = 1
		        < â ¢®«ì­¥­¨ï>^</ â ¢®«ì­¥­¨ï>
.}
.{?internal;wLast = 1
		</>
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
                        <>
                            < ç¨á«¥­ë >^</ ç¨á«¥­ë >
                            < ç¨á«¥­ë®>^</ ç¨á«¥­ë®>
                        </>
.{?internal;wNonStateVznos = 1 and dNonStateDateB1 <> '' and dNonStateDateE1 <> ''
                        <¯« â >
                            <¥à¨®¤>
                               <2:>^</2:>
                               <2:®>^</2:®>
                            </¥à¨®¤>
                            <¯« ç¥­®>^</¯« ç¥­®>
                        </¯« â >
.}
.{?internal;wNonStateVznos = 1 and dNonStateDateB2 <> '' and dNonStateDateE2 <> ''
                        <¯« â >
                            <¥à¨®¤>
                               <2:>^</2:>
                               <2:®>^</2:®>
                            </¥à¨®¤>
                            <¯« ç¥­®>^</¯« ç¥­®>
                        </¯« â >
.}
.}
	</->
</>
.endform
