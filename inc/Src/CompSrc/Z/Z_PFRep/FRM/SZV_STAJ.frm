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
<����� xmlns="http://��.��/��/���-����/2018-03-22"
       xmlns:��2="http://��.��/��/⨯�/2017-10-23"
       xmlns:��4="http://��.��/��/2017-08-21" 
       xmlns:��2="http://��.��/��/2017-08-21"                
       xmlns:��4="http://��.��/��/��/⨯�/2018-11-20"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<��㦥����ଠ��>
		<��4:GUID>^</��4:GUID>
		<��4:��⠂६�>^T^</��4:��⠂६�>
		<��4:�ணࠬ�������⮢��>�����⨪� ERP. ����� 9.1</��4:�ணࠬ�������⮢��>
	</��㦥����ଠ��>
	<���-1>
		<���>^</���>
		<���客�⥫�>
			<��2:��������>^</��2:��������>
			<��2:���>^</��2:���>
			<��2:���>^</��2:���>
			<��4:������������>^</��4:������������>
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
			<�᭮�����>
				<��4:���ࠧ�������>^</��4:���ࠧ�������>
				<��4:������������>^</��4:������������>
				<��4:������⢮���>^</��4:������⢮���>
				<��4:������⢮����>^</��4:������⢮����>
				<��4:���ᠭ��>^</��4:���ᠭ��>
				<��4:���㬥���>^</��4:���㬥���>
				<���>
.{?internal;SSUsl <> ''
					<���>^</���>
.}
.{?internal;SSKPS <> ''
					<������᪠>^</������᪠>
.}
				</���>
			</�᭮�����>
.begin
  SumCountPlan := SumCountPlan + double(CountPlan);
  SumCountFact := SumCountFact + double(CountFact);
end.
.}
.fields
  SumCountPlan
  SumCountFact
.endfields
			<��4:�ᥣ����>^</��4:�ᥣ����>
			<��4:�ᥣ�����>^</��4:�ᥣ�����>
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
				<��2:�������>^</��2:�������>
				<��2:���>^</��2:���>
.{?internal;Fio_Ruk3 <> ''
				<��2:����⢮>^</��2:����⢮>
.}
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
			<��2:��������>^</��2:��������>
			<��2:���>^</��2:���>
			<��2:���>^</��2:���>
			<��4:������������>^</��4:������������>
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
		<��>
			<���>
				<��2:�������>^</��2:�������>
				<��2:���>^</��2:���>
.{?internal;GetPatronymic <> ''
				<��2:����⢮>^</��2:����⢮>
.}
			</���>
			<�����>^</�����>
.}
.{?internal;wDopAdv = 0 or wDopAdv = 1
			<�⠦��멏�ਮ�>
				<��4:��ਮ�>
					<��2:�>^</��2:�>
					<��2:��>^</��2:��>
				</��4:��ਮ�>
.}
.{?internal;Terr <> '' or Usl <> '' or KPS <> '' or Osn <> '' or Visl <> '' or OsnDop <> ''
				<��4:�죮�멑⠦>
.{?internal;Terr <> ''
                                        <��4:��>
                                                <��4:�᭮�����>^</��4:�᭮�����>
.{?internal;double(rZarkoof) >= double(0.01)
                                                <��4:�����樥��>^</��4:�����樥��>
.}
                                        </��4:��>
.}
.{?internal;Usl <> '' or KPS <> ''
					<��4:���>
.{?internal;Usl <> ''
						<��4:���>^</��4:���>
.}
.{?internal;KPS <> ''
						<��4:������᪠>^</��4:������᪠>
.}
					</��4:���>
.}
.{?internal;Osn <> '' or wHours <> 0 or wMinutes <> 0 or wMon <> 0 or wDays <> 0
                                        <��4:��>
.{?internal;Osn <> ''
                                                <��4:�᭮�����>^</��4:�᭮�����>
.}
.{?internal;wHours <> 0 or wMinutes <> 0
                                                <��2:��ࠡ�⪠����>
.{?internal;wHours <> 0
                                                      <��2:����>^</��2:����>
.}
.{?internal;wMinutes <> 0
                                                      <��2:������>^</��2:������>
.}
                                                </��2:��ࠡ�⪠����>
.}
.{?internal;(wMon <> 0 or wDays <> 0) and (wHours = 0 and wMinutes = 0)
                                                <��2:��ࠡ�⪠�������ୠ�>
.{?internal;wMon <> 0
                                                      <��2:�᥌�����>^</��2:�᥌�����>
.}
.{?internal;wDays <> 0
                                                      <��2:�᥄��>^</��2:�᥄��>
.}
                                                </��2:��ࠡ�⪠�������ୠ�>
.}
                                        </��4:��>
.}
.{?internal;OsnDop <> ''
                                        <��4:����������>^</��4:����������>
.}
.{?internal;Visl <> '' or VislDop <> '' or wHours2 <> 0 or wMinutes2 <> 0 or wMon2 <> 0 or wDays2 <> 0
                                        <��4:��>
.{?internal;Visl <> ''
                                                <��4:�᭮�����>^</��4:�᭮�����>
.}
.{?internal;wHours2 <> 0 or wMinutes2 <> 0
                                                <��2:��ࠡ�⪠����>
.{?internal;wHours2 <> 0
                                                      <��2:����>^</��2:����>
.}
.{?internal;wMinutes2 <> 0
                                                      <��2:������>^</��2:������>
.}
                                                </��2:��ࠡ�⪠����>
.}
.{?internal;(wMon2 <> 0 or wDays2 <> 0) and (wHours2 = 0 and wMinutes2 = 0)
                                                <��2:��ࠡ�⪠�������ୠ�>
.{?internal;wMon2 <> 0
                                                      <��2:�᥌�����>^</��2:�᥌�����>
.}
.{?internal;wDays2 <> 0
                                                      <��2:�᥄��>^</��2:�᥄��>
.}
                                                </��2:��ࠡ�⪠�������ୠ�>
.}
.{?internal;VislDop <> ''
                                                <��4:����⠢��>^</��4:����⠢��>
.}
                                        </��4:��>
.}
				</��4:�죮�멑⠦>
.}
.{?internal;wDopAdv = 0 or wLastAdv <> 0
			</�⠦��멏�ਮ�>
.}
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
                               <��2:�>^</��2:�>
                               <��2:��>^</��2:��>
                            </��ਮ�>
                            <����祭�>^</����祭�>
                        </�����>
.}
.{?internal;wNonStateVznos = 1 and dNonStateDateB2 <> '' and dNonStateDateE2 <> ''
                        <�����>
                            <��ਮ�>
                               <��2:�>^</��2:�>
                               <��2:��>^</��2:��>
                            </��ਮ�>
                            <����祭�>^</����祭�>
                        </�����>
.}
.}
	</���-����>
</�����>
.endform
