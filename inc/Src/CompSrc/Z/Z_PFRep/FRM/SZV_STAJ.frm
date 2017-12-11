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
.endfields
^^^^^^^^^^^^^^^^^^^^^^^
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
.nameinlist '�����஭��� �ଠ ���-����'
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
<����� xmlns="http://��.��/��/���-����/2017-01-01" 
       xmlns:��="http://��.��/㭨��஢���륒���/2014-01-01" 
       xmlns:��="http://��.��/��" 
       xmlns:��2="http://��.��/��/2016-06-21" 
       xmlns:��="http://��.��/��/⨯�/2014-01-01" 
       xmlns:��="http://��.��/��/⨯눑/2017-01-01" 
       xmlns:��="http://��.��/��/⨯됂/2014-01-01" 
       xmlns:xs="http://www.w3.org/2001/XMLSchema">
	<��㦥����ଠ��>
		<��:GUID>^</��:GUID>
		<��:��⠂६�>^T^</��:��⠂६�>
	</��㦥����ଠ��>
	<���-1>
		<���>^</���>
		<���客�⥫�>
			<��:��������>^</��:��������>
			<��:���>^</��:���>
			<��:���>^</��:���>
			<��:������������>^</��:������������>
		</���客�⥫�>
		<����멏�ਮ�>
			<���>0</���>
			<���>^</���>
		</����멏�ਮ�>
		<������⢮��>^</������⢮��>
.{?internal;TypeSZV = 0 and PostCount <> 0
		<�᭮�����>
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
			<��:�᭮�����>
				<��:���ࠧ�������>^</��:���ࠧ�������>
				<��:������������>^</��:������������>
				<��:������⢮���>^</��:������⢮���>
				<��:������⢮����>^</��:������⢮����>
				<��:���ᠭ��>^</��:���ᠭ��>
				<��:���㬥���>^</��:���㬥���>
				<��:���>
					<��:���>^</��:���>
					<��:������᪠>^</��:������᪠>
				</��:���>
			</��:�᭮�����>
.begin
  SumCountPlan := SumCountPlan + double(CountPlan);
  SumCountFact := SumCountFact + double(CountFact);
end.
.}
.fields
  SumCountPlan
  SumCountFact
.endfields
			<��:�ᥣ����>^</��:�ᥣ����>
			<��:�ᥣ�����>^</��:�ᥣ�����>
		</�᭮�����>
.}
.fields
  Dolg_Ruk
  Fio_Ruk1
  Fio_Ruk2
  Fio_Ruk3
  FormDate
.endfields
		<�㪮����⥫�>
			<���������>^</���������>
			<���>
				<��:�������>^</��:�������>
				<��:���>^</��:���>
				<��:����⢮>^</��:����⢮>
			</���>
		</�㪮����⥫�>
		<��⠇���������>^</��⠇���������>
	</���-1>
	<���-����>
.fields
  RegNomPred
  PredInn
  KPPPred
  NamePredShort
  TypeSZV
  Yea
.endfields
		<���客�⥫�>
			<��:��������>^</��:��������>
			<��:���>^</��:���>
			<��:���>^</��:���>
			<��:������������>^</��:������������>
		</���客�⥫�>
		<���>^</���>
		<����멏�ਮ�>
			<���>0</���>
			<���>^</���>
		</����멏�ਮ�>		
.{ CheckEnter STAJ
.fields
  LastName
  FirstName
  GetPatronymic
  SNILS
  FromDate
  ToDate
  Terr
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
		<��>
			<���>
				<��:�������>^</��:�������>
				<��:���>^</��:���>
				<��:����⢮>^</��:����⢮>
			</���>
			<�����>^</�����>
.}
			<�⠦��멏�ਮ�>
				<��:��ਮ�>
					<��:�>^</��:�>
					<��:��>^</��:��>
				</��:��ਮ�>
.{?internal;Terr <> '' or Usl <> '' or KPS <> '' or Osn <> '' or Visl <> '' or OsnDop <> ''
				<��:�죮�멑⠦>
.{?internal;Terr <> ''
                                        <��:��>
                                                <��:�᭮�����>^</��:�᭮�����>
                                        </��:��>
.}
.{?internal;Usl <> '' or KPS <> ''
					<��:���>
.{?internal;Usl <> ''
						<��:���>^</��:���>
.}
.{?internal;KPS <> ''
						<��:������᪠>^</��:������᪠>
.}
					</��:���>
.}
.{?internal;Osn <> ''
                                        <��:��>
.{?internal;Osn <> ''
                                                <��:�᭮�����>^</��:�᭮�����>
.}
.{?internal;wHours <> 0 or wMinutes <> 0
                                                <��:��ࠡ�⪠����>
                                                      <��:����>^</��:����>
                                                      <��:������>^</��:������>
                                                </��:��ࠡ�⪠����>
.}
.{?internal;(wMon <> 0 or wDays <> 0) and (wHours = 0 and wMinutes = 0)
                                                <��:��ࠡ�⪠�������ୠ�>
                                                      <��:�᥌�����>^</��:�᥌�����>
                                                      <��:�᥄��>^</��:�᥄��>
                                                </��:��ࠡ�⪠�������ୠ�>
.}
                                        </��:��>
.}
.{?internal;OsnDop <> ''
                                        <��:����������>^</��:����������>
.}
.{?internal;Visl <> '' or VislDop <> ''
                                        <��:��>
.{?internal;Visl <> ''
                                                <��:�᭮�����>^</��:�᭮�����>
.}
.{?internal;wHours2 <> 0 or wMinutes2 <> 0
                                                <��:��ࠡ�⪠����>
                                                      <��:����>^</��:����>
                                                      <��:������>^</��:������>
                                                </��:��ࠡ�⪠����>
.}
.{?internal;(wMon2 <> 0 or wDays2 <> 0) and (wHours2 = 0 and wMinutes2 = 0)
                                                <��:��ࠡ�⪠�������ୠ�>
                                                      <��:�᥌�����>^</��:�᥌�����>
                                                      <��:�᥄��>^</��:�᥄��>
                                                </��:��ࠡ�⪠�������ୠ�>
.}
.{?internal;VislDop <> ''
                                                <��:����⠢��>^</��:����⠢��>
.}
                                        </��:��>
.}
				</��:�죮�멑⠦>
.}
			</�⠦��멏�ਮ�>
.fields
  DateUv
.endfields
.{?internal;DateUv <> '' and wLast = 1
		        <��⠓���쭥���>^</��⠓���쭥���>
.}
.{?internal;wLast = 1
		</��>
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
                        <��>
                            <���᫥�덠���>^</���᫥�덠���>
                            <���᫥�돮��>^</���᫥�돮��>
                        </��>
.{?internal;wNonStateVznos = 1 and dNonStateDateB1 <> '' and dNonStateDateE1 <> ''
                        <�����>
                            <��ਮ�>
                               <��:�>^</��:�>
                               <��:��>^</��:��>
                            </��ਮ�>
                            <����祭�>^</����祭�>
                        </�����>
.}
.{?internal;wNonStateVznos = 1 and dNonStateDateB2 <> '' and dNonStateDateE2 <> ''
                        <�����>
                            <��ਮ�>
                               <��:�>^</��:�>
                               <��:��>^</��:��>
                            </��ਮ�>
                            <����祭�>^</����祭�>
                        </�����>
.}
.}
	</���-����>
</�����>
.endform
