// =============================================================================
//                                                     (c)  корпорация Галактика
// Галактика 7.12 - Производственный контур
// Отчет по планам
// =============================================================================

.set name='MnPlan'
.hide

.fields

  _MNRec _MType _MWayAcNRec _MWayAcName _MTypeDoc _WKolAn
	_MUserDesgr  _MUserDescr _MNumber _MDateForm _MStatus _MDateUtv
	_MName _MGroup _MDBeg _MDEnd

  // Название и значение аналитик шапки
  _R1 _R2 _R3 _R4 _R5 _A1 _A2 _A3 _A4 _A5

	// NRec ролей
	McRole1 McRole2 McRole3 McRole4 McRole5
	// Коды аналитик
	MwKodGr1 MwKodGr2 MwKodGr3 MwKodGr4 MwKodGr5
	// NRec значений аналитики
	McAnVal1 McAnVal2 McAnVal3 McAnVal4 McAnVal5

  // дополнительные поля шапки плана (названия полей)
  _DopN1 _DopN2 _DopN3 _DopN4 _DopN5 _DopN6 _DopN7
  // дополнительные поля шапки плана (значения полей)
	_DopV1 _DopV2 _DopV3 _DopV4 _DopV5 _DopV6 _DopV7

	// название поля объекта планирования
	_SpNameRoleIzd
	// названия ролей спецификации
	_RS1 _RS2 _RS3
	// NRec ролей спецификации
  SpcRole1 SpcRole2 SpcRole3
	// Коды аналитик спецификации
	SpwKodGr1 SpwKodGr2 SpwKodGr3

	// названия ролей представления
	_SplR4 _SplR5 _SplR6 _SplR7
	// названия полей представления
	_SplNameP1 _SplNameP2 _SplNameP3 _SplNameP4 _SplNameP5 _SplNameP6 _SplNameP7
	_SplNameP8 _SplNameP9 _SplNameP10 _SplNameP11 _SplNameP12 _SplNameP13 _SplNameP14

  // спецификация---------------------------------------------------------------
	_SpMnPlanNRec _SpMnPlNRec _SpNum _SpType _SpNameIzd _SpKod _SpObozn
	_SpEdIzm _SpStatus _SpDBeg _SpDEnd _SpState _SpPrProd
	// значения аналитик
	_AS1 _AS2 _AS3
	// NRec значений аналитики
	SpAnVal1 SpcAnVal2 SpcAnVal3

	_SpPrProdV _SpPrior _SpEdIzmTr _SpRazr _SpKodTar
	_SpSysOpl _SpDBegFact _SpDEndFact
	_SplA4 _SplA5 _SplA6 _SplA7
	_SplValP1 _SplValP2 _SplValP3 _SplValP4 _SplValP5 _SplValP6 _SplValP7
	_SplValP8 _SplValP9 _SplValP10 _SplValP11 _SplValP12 _SplValP13 _SplValP14

  // входяшие документы
  TypeDocIn NRecDocIn
  TypePosIn NRecPosIn
  TypePosCurIn NRecPosCurIn

  // исходящие документы
  TypeDocOut NRecDocOut
  TypePosCurOut NRecPosCurOut
  TypePosOut NRecPosOut

.endfields

.{ CheckEnter MnPlan_Loop1
     NRec плана: ^
		 NRec шаблона: ^
     Наименование шаблона: ^
		 Тип документа: ^
     Системное представление: ^
		 Группа дескрипторов: ^
		 Дескриптор пользователя: ^
     Номер:  ^
     Дата формирования: ^
		 Статус: ^
		 Дата утверждения: ^
		 Наименование документа: ^
		 Группа документов: ^
		 Дата начала: ^
		 Дата окончания: ^

     Аналитики документа:
     @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@
     @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@

     Дополнительные поля:
     @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@
     @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.{ CheckEnter SpMnPl_Loop1
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.}

.{ CheckEnter ObjAcct_In_Loop
     ^^
.{ CheckEnter SpObjAcc_In_Loop
       ^^
.{ CheckEnter SpObjAcc_CurIn_Loop
         ^^
.}
.}
.}

.{ CheckEnter ObjAcct_Out_Loop
     ^^
.{ CheckEnter SpObjAcc_CurOut_Loop
       ^^
.{ CheckEnter SpObjAcc_Out_Loop
         ^^
.}
.}
.}

.}

.endform

.linkform 'MnPlan_01' prototype is 'MnPlan'
.NameInList 'Отчет (аналитика спецификации № 1 и поле № 1)'
.fields
  CommonFormHeader

  _MWayAcName _MTypeDoc _WKolAn
	_MUserDesgr  _MUserDescr _MNumber _MDateForm _MStatus _MDateUtv
	_MName _MGroup _MDBeg _MDEnd
	_R1 _R2 _R3 _R4 _R5 _A1 _A2 _A3 _A4 _A5

	_SpNameRoleIzd
  _RS1
	_SplR4
  _SplNameP1

  _SpNum _SpType _SpNameIzd
  _SpEdIzm _SpDBeg _SpDEnd
  _AS1
	_SplA4
  _SplValP1

.endfields
^

.{ CheckEnter MnPlan_Loop1
    Наименование шаблона: ^
    Тип документа: ^
    Системное представление: ^
    Группа дескрипторов: ^    Дескриптор пользователя: ^
    Номер: ^   Дата формирования: ^   Статус: ^   Дата утверждения: ^
    Наименование документа: ^
    Группа документов: ^
    Дата начала: ^   Дата окончания: ^

    Аналитики документа:
    @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@
    @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@

─────────┬─────┬──────────────────┬────────┬──────────┬───────────┬────────────────┬──────────────────┬──────────────────┬
  Номер  │ Тип │  @@@@@@@@@@@@@@  │Ед. изм.│   Дата   │   Дата    │ @@@@@@@@@@@@@@ │  @@@@@@@@@@@@@@  │  @@@@@@@@@@@@@@  │
         │     │                  │        │  начала  │ окончания │                │                  │                  │
─────────┴─────┴──────────────────┴────────┴──────────┴───────────┴────────────────┴──────────────────┴──────────────────┴
.{ CheckEnter SpMnPl_Loop1
@@@@@@@@  @@@@  @@@@@@@@@@@@@@@@@@ @@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&.&&&&
.}

.{ CheckEnter ObjAcct_In_Loop
.{ CheckEnter SpObjAcc_In_Loop
.{ CheckEnter SpObjAcc_CurIn_Loop
.}
.}
.}

.{ CheckEnter ObjAcct_Out_Loop
.{ CheckEnter SpObjAcc_CurOut_Loop
.{ CheckEnter SpObjAcc_Out_Loop
.}
.}
.}

.}
.endform

.linkform 'MnPlan_02' prototype is 'MnPlan'
.NameInList 'Отчет (аналитика спецификации № 1 и поле № 1, аналитики представления №1 и №2)'
.fields
  CommonFormHeader

  _MWayAcName _MTypeDoc _WKolAn
	_MUserDesgr  _MUserDescr _MNumber _MDateForm _MStatus _MDateUtv
	_MName _MGroup _MDBeg _MDEnd
	_R1 _R2 _R3 _R4 _R5 _A1 _A2 _A3 _A4 _A5

	_SpNameRoleIzd
  _RS1
	_SplR4
	_SplR5
  _SplNameP1

  _SpNum _SpType _SpNameIzd
  _SpEdIzm _SpDBeg _SpDEnd
  _AS1
	_SplA4
	_SplA5
  _SplValP1

.endfields
^

.{ CheckEnter MnPlan_Loop1
    Наименование шаблона: ^
    Тип документа: ^
    Системное представление: ^
    Группа дескрипторов: ^    Дескриптор пользователя: ^
    Номер: ^   Дата формирования: ^   Статус: ^   Дата утверждения: ^
    Наименование документа: ^
    Группа документов: ^
    Дата начала: ^   Дата окончания: ^

    Аналитики документа:
    @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@
    @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@@

─────────┬─────┬──────────────────┬────────┬──────────┬───────────┬────────────────┬──────────────────┬──────────────────┬────────────────┬
  Номер  │ Тип │  @@@@@@@@@@@@@@  │Ед. изм.│   Дата   │   Дата    │ @@@@@@@@@@@@@@ │  @@@@@@@@@@@@@@  │  @@@@@@@@@@@@@@  │ @@@@@@@@@@@@@@ │
         │     │                  │        │  начала  │ окончания │                │                  │                  │                │
─────────┴─────┴──────────────────┴────────┴──────────┴───────────┴────────────────┴──────────────────┴──────────────────┴────────────────┴
.{ CheckEnter SpMnPl_Loop1
@@@@@@@@  @@@@  @@@@@@@@@@@@@@@@@@ @@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@    @@@@@@@@@@@@@@@    &&&&&&&&&&.&&&&
.}

.{ CheckEnter ObjAcct_In_Loop
.{ CheckEnter SpObjAcc_In_Loop
.{ CheckEnter SpObjAcc_CurIn_Loop
.}
.}
.}

.{ CheckEnter ObjAcct_Out_Loop
.{ CheckEnter SpObjAcc_CurOut_Loop
.{ CheckEnter SpObjAcc_Out_Loop
.}
.}
.}

.}
.endform

