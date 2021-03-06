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
< xmlns="http://¯ä.àä//-/2018-03-22"
       xmlns:2="http://¯ä.àä//â¨¯ë/2017-10-23"
       xmlns:4="http://¯ä.àä//2017-08-21" 
       xmlns:2="http://¯ä.àä//2017-08-21"                
       xmlns:4="http://¯ä.àä///â¨¯ë/2018-11-20"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
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
			<4: ¨¬¥­®¢ ­¨¥>^</4: ¨¬¥­®¢ ­¨¥>
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
				<4:®¤à §¤¥«¥­¨¥>^</4:®¤à §¤¥«¥­¨¥>
				<4:à®ä¥áá¨ï®«¦­®áâì>^</4:à®ä¥áá¨ï®«¦­®áâì>
				<4:®«¨ç¥áâ¢®â â>^</4:®«¨ç¥áâ¢®â â>
				<4:®«¨ç¥áâ¢® ªâ>^</4:®«¨ç¥áâ¢® ªâ>
				<4:¯¨á ­¨¥>^</4:¯¨á ­¨¥>
				<4:®ªã¬¥­âë>^</4:®ªã¬¥­âë>
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
			<4:á¥£®â â>^</4:á¥£®â â>
			<4:á¥£® ªâ>^</4:á¥£® ªâ>
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
.{?internal;Fio_Ruk3 <> ''
				<2:âç¥áâ¢®>^</2:âç¥áâ¢®>
.}
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
			<4: ¨¬¥­®¢ ­¨¥>^</4: ¨¬¥­®¢ ­¨¥>
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
.{?internal;GetPatronymic <> ''
				<2:âç¥áâ¢®>^</2:âç¥áâ¢®>
.}
			</>
			<>^</>
.}
.{?internal;wDopAdv = 0 or wDopAdv = 1
			<â ¦¥¢ë©¥à¨®¤>
				<4:¥à¨®¤>
					<2:>^</2:>
					<2:®>^</2:®>
				</4:¥à¨®¤>
.}
.{?internal;Terr <> '' or Usl <> '' or KPS <> '' or Osn <> '' or Visl <> '' or OsnDop <> ''
				<4:ì£®â­ë©â ¦>
.{?internal;Terr <> ''
                                        <4:>
                                                <4:á­®¢ ­¨¥>^</4:á­®¢ ­¨¥>
.{?internal;double(rZarkoof) >= double(0.01)
                                                <4:®íää¨æ¨¥­â>^</4:®íää¨æ¨¥­â>
.}
                                        </4:>
.}
.{?internal;Usl <> '' or KPS <> ''
					<4:>
.{?internal;Usl <> ''
						<4:®¤>^</4:®¤>
.}
.{?internal;KPS <> ''
						<4:®§¨æ¨ï¯¨áª >^</4:®§¨æ¨ï¯¨áª >
.}
					</4:>
.}
.{?internal;Osn <> '' or wHours <> 0 or wMinutes <> 0 or wMon <> 0 or wDays <> 0
                                        <4:>
.{?internal;Osn <> ''
                                                <4:á­®¢ ­¨¥>^</4:á­®¢ ­¨¥>
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
                                        </4:>
.}
.{?internal;OsnDop <> ''
                                        <4:®¯¢¥¤¥­¨ï>^</4:®¯¢¥¤¥­¨ï>
.}
.{?internal;Visl <> '' or VislDop <> '' or wHours2 <> 0 or wMinutes2 <> 0 or wMon2 <> 0 or wDays2 <> 0
                                        <4:>
.{?internal;Visl <> ''
                                                <4:á­®¢ ­¨¥>^</4:á­®¢ ­¨¥>
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
                                                <4:®«ïâ ¢ª¨>^</4:®«ïâ ¢ª¨>
.}
                                        </4:>
.}
				</4:ì£®â­ë©â ¦>
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
