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
< xmlns="http://¯ä.àä//-/2017-01-01" 
       xmlns:="http://¯ä.àä/ã­¨ä¨æ¨à®¢ ­­ë¥¨¯ë/2014-01-01" 
       xmlns:="http://¯ä.àä/" 
       xmlns:2="http://¯ä.àä//2016-06-21" 
       xmlns:="http://¯ä.àä//â¨¯ë/2014-01-01" 
       xmlns:="http://¯ä.àä//â¨¯ë/2017-01-01" 
       xmlns:="http://¯ä.àä//â¨¯ë/2014-01-01" 
       xmlns:xs="http://www.w3.org/2001/XMLSchema">
	<«ã¦¥¡­ ï­ä®à¬ æ¨ï>
		<:GUID>^</:GUID>
		<: â à¥¬ï>^T^</: â à¥¬ï>
	</«ã¦¥¡­ ï­ä®à¬ æ¨ï>
	<-1>
		<¨¯>^</¨¯>
		<âà å®¢ â¥«ì>
			<:¥£®¬¥à>^</:¥£®¬¥à>
			<:>^</:>
			<:>^</:>
			<: ¨¬¥­®¢ ­¨¥>^</: ¨¬¥­®¢ ­¨¥>
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
			<:á­®¢ ­¨¥>
				<:®¤à §¤¥«¥­¨¥>^</:®¤à §¤¥«¥­¨¥>
				<:à®ä¥áá¨ï®«¦­®áâì>^</:à®ä¥áá¨ï®«¦­®áâì>
				<:®«¨ç¥áâ¢®â â>^</:®«¨ç¥áâ¢®â â>
				<:®«¨ç¥áâ¢® ªâ>^</:®«¨ç¥áâ¢® ªâ>
				<:¯¨á ­¨¥>^</:¯¨á ­¨¥>
				<:®ªã¬¥­âë>^</:®ªã¬¥­âë>
				<:>
.{?internal;SSUsl <> ''
					<:®¤>^</:®¤>
.}
.{?internal;SSKPS <> ''
					<:®§¨æ¨ï¯¨áª >^</:®§¨æ¨ï¯¨áª >
.}
				</:>
			</:á­®¢ ­¨¥>
.begin
  SumCountPlan := SumCountPlan + double(CountPlan);
  SumCountFact := SumCountFact + double(CountFact);
end.
.}
.fields
  SumCountPlan
  SumCountFact
.endfields
			<:á¥£®â â>^</:á¥£®â â>
			<:á¥£® ªâ>^</:á¥£® ªâ>
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
				<: ¬¨«¨ï>^</: ¬¨«¨ï>
				<:¬ï>^</:¬ï>
				<:âç¥áâ¢®>^</:âç¥áâ¢®>
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
			<:¥£®¬¥à>^</:¥£®¬¥à>
			<:>^</:>
			<:>^</:>
			<: ¨¬¥­®¢ ­¨¥>^</: ¨¬¥­®¢ ­¨¥>
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
				<: ¬¨«¨ï>^</: ¬¨«¨ï>
				<:¬ï>^</:¬ï>
				<:âç¥áâ¢®>^</:âç¥áâ¢®>
			</>
			<>^</>
.}
.{?internal;wDopAdv = 0 or wDopAdv = 1
			<â ¦¥¢ë©¥à¨®¤>
				<:¥à¨®¤>
					<:>^</:>
					<:®>^</:®>
				</:¥à¨®¤>
.}
.{?internal;Terr <> '' or Usl <> '' or KPS <> '' or Osn <> '' or Visl <> '' or OsnDop <> ''
				<:ì£®â­ë©â ¦>
.{?internal;Terr <> ''
                                        <:>
                                                <:á­®¢ ­¨¥>^</:á­®¢ ­¨¥>
.{?internal;double(rZarkoof) >= double(0.01)
                                                <:®íää¨æ¨¥­â>^</:®íää¨æ¨¥­â>
.}
                                        </:>
.}
.{?internal;Usl <> '' or KPS <> ''
					<:>
.{?internal;Usl <> ''
						<:®¤>^</:®¤>
.}
.{?internal;KPS <> ''
						<:®§¨æ¨ï¯¨áª >^</:®§¨æ¨ï¯¨áª >
.}
					</:>
.}
.{?internal;Osn <> '' or wHours <> 0 or wMinutes <> 0 or wMon <> 0 or wDays <> 0
                                        <:>
.{?internal;Osn <> ''
                                                <:á­®¢ ­¨¥>^</:á­®¢ ­¨¥>
.}
.{?internal;wHours <> 0 or wMinutes <> 0
                                                <:ëà ¡®âª ç á å>
.{?internal;wHours <> 0
                                                      <: áë>^</: áë>
.}
.{?internal;wMinutes <> 0
                                                      <:¨­ãâë>^</:¨­ãâë>
.}
                                                </:ëà ¡®âª ç á å>
.}
.{?internal;(wMon <> 0 or wDays <> 0) and (wHours = 0 and wMinutes = 0)
                                                <:ëà ¡®âª  «¥­¤ à­ ï>
.{?internal;wMon <> 0
                                                      <:á¥¥áïæë>^</:á¥¥áïæë>
.}
.{?internal;wDays <> 0
                                                      <:á¥­¨>^</:á¥­¨>
.}
                                                </:ëà ¡®âª  «¥­¤ à­ ï>
.}
                                        </:>
.}
.{?internal;OsnDop <> ''
                                        <:®¯¢¥¤¥­¨ï>^</:®¯¢¥¤¥­¨ï>
.}
.{?internal;Visl <> '' or VislDop <> '' or wHours2 <> 0 or wMinutes2 <> 0 or wMon2 <> 0 or wDays2 <> 0
                                        <:>
.{?internal;Visl <> ''
                                                <:á­®¢ ­¨¥>^</:á­®¢ ­¨¥>
.}
.{?internal;wHours2 <> 0 or wMinutes2 <> 0
                                                <:ëà ¡®âª ç á å>
.{?internal;wHours2 <> 0
                                                      <: áë>^</: áë>
.}
.{?internal;wMinutes2 <> 0
                                                      <:¨­ãâë>^</:¨­ãâë>
.}
                                                </:ëà ¡®âª ç á å>
.}
.{?internal;(wMon2 <> 0 or wDays2 <> 0) and (wHours2 = 0 and wMinutes2 = 0)
                                                <:ëà ¡®âª  «¥­¤ à­ ï>
.{?internal;wMon2 <> 0
                                                      <:á¥¥áïæë>^</:á¥¥áïæë>
.}
.{?internal;wDays2 <> 0
                                                      <:á¥­¨>^</:á¥­¨>
.}
                                                </:ëà ¡®âª  «¥­¤ à­ ï>
.}
.{?internal;VislDop <> ''
                                                <:®«ïâ ¢ª¨>^</:®«ïâ ¢ª¨>
.}
                                        </:>
.}
				</:ì£®â­ë©â ¦>
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
                               <:>^</:>
                               <:®>^</:®>
                            </¥à¨®¤>
                            <¯« ç¥­®>^</¯« ç¥­®>
                        </¯« â >
.}
.{?internal;wNonStateVznos = 1 and dNonStateDateB2 <> '' and dNonStateDateE2 <> ''
                        <¯« â >
                            <¥à¨®¤>
                               <:>^</:>
                               <:®>^</:®>
                            </¥à¨®¤>
                            <¯« ç¥­®>^</¯« ç¥­®>
                        </¯« â >
.}
.}
	</->
</>
.endform
