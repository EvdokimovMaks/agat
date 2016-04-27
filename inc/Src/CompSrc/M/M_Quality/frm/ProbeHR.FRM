!╔═══════════════════════════════════════════════════════════════════════════╗
!║                     (c) 2005 корпорация ГАЛАКТИКА                         ║
!║ Проект        : ГАЛАКТИКА                                                 ║
!║ Система       : Управление качеством продукции                            ║
!║ Версия        : 7.1                                                       ║
!║ Назначение    : Форма для иерархических реестров проб качества            ║
!║ Ответственный : Жилко Дмитрий Витальевич (HATTER)                         ║
!╚═══════════════════════════════════════════════════════════════════════════╝
!-----------------------------------------------------------------------------
.form 'PROBEHR'
.hide
.fields
 wPrintForm    : word    // 01
 strReestrName : string  // 02
 dProbeBeg     : string  // 03
 dProbeEnd     : string  // 04
 Mc            : string  // 05
 Party         : string  // 06
 Org           : string  // 07
 Podr          : string  // 08
 Mol           : string  // 09
 RepName       : string  // 10
 flgFilters    : word    // 11 - UserDeskRep.ResWord[21]
 flgRepStyles  : word    // 12 - UserDeskRep.ResWord[9]
 flgGrpStyles  : word    // 13 - UserDeskRep.ResWord[8]
.endfields
          1
 1234567890123
 ^^^^^^^^^^^^^

.{ //main cycle
.{ CheckEnter GroupHeaderProbe
.fields
 GroupHeaderName : string  // 21
.endfields
 2
 1
 ^
.} // CheckEnter GroupHeaderProbe

.fields
  ccPrKachvo         : comp   // 31
	PrKachvoCode       : string // 32
	PrKachvoName       : string // 33
  PrKachvodtProbe    : string // 34
	PrKachvoNotesName  : string // 35
  PrKachvoMcName     : string // 36
  PrKachvoPartyName  : string // 37
  PrKachvoOrgName    : string // 38
  PrKachvoPodrName   : string // 39
  PrKachvoMolName    : string // 40
  ccQPHead           : comp   // 41
  PrKachvoQPHeadName : string // 42
.endfields
	3        4
  123456789012
  ^^^^^^^^^^^^

//.if PrnQPLine
//.end //if
.{ CheckEnter PrnQPLine
.fields
  ccQPLine        : comp   // 51
  QPLinePokazCode : string // 52
  QPLinePokazName : string // 53
  QPLineFactValue : string // 54
  QPLineNormValue : string // 55
  QPLineMinValue  : string // 56
  QPLineMaxValue  : string // 57
  QPLineAnName    : string // 58
  QPLineOtpEdName : string // 59
.endfields
	5
  123456789
  ^^^^^^^^^
.} // CheckEnter PrnQPLine

//.if PrnRezKontr
//.end //if
.{ CheckEnter PrnRezKontr
.fields
  ccRezKontr        : comp   // 71
  RezKontrdtKontr   : string // 72
	RezKontrNotesName : string // 73
	ccTsKachvo        : string // 74
	TsKachvoCodeTest  : string // 75
	TsKachvoName      : string // 76
.endfields
	7
  123456
  ^^^^^^

//.if PrnValKontr
//.end //if
.{ CheckEnter PrnValKontr
.fields
  ccValKontr        : comp   // 91
  ValKontrPokazCode : string // 92
  ValKontrPokazName : string // 93
  ValKontrFactValue : string // 94
  ValKontrNormValue : string // 95
  ValKontrMinValue  : string // 96
  ValKontrMaxValue  : string // 97
  ValKontrAnName    : string // 98
  ValKontrOtpEdName : string // 99
.endfields
	9
  123456789
  ^^^^^^^^^
.} // CheckEnter PrnValKontr

.} // CheckEnter PrnRezKontr

.} // end of main cycle

.endform
!
!
!
.linkform 'PROBEHR_Reestr01' prototype is 'PROBEHR'
.group 'РЕЕСТР ПРОБ КАЧЕСТВА'
.p 55
.defo landscape
.NameInList 'Реестр проб качества'
! ----------------------------------------------------------------------
.var
  boIsFilter    : boolean;       //флаг установленных фильтров
!-------------------------------
  strWarning     : string;
  strNameDoc     : string;
	boNeedSpecif   : boolean;
  boNeedQPLine   : boolean;
  boNeedRezKontr : boolean;
  boNeedValKontr : boolean;
	boNeedGrpHier  : boolean;
.endvar
.begin
  boNeedSpecif := (flgRepStyles > 0);
  boNeedQPLine := ((flgRepStyles and 1 ) <> 0);
  boNeedRezKontr := ((flgRepStyles and 2 ) <> 0);
  boNeedValKontr := ((flgRepStyles and 2 ) <> 0);
	boNeedGrpHier := (flgGrpStyles > 0);
!--------------------------------------------
  strWarning := if( wPrintForm = 1, '***** ВНИМАНИЕ! РЕЕСТР ПОЛУЧЕН ПО ТЕКУЩЕЙ ГРУППЕ ***** ДЛЯ ПОЛУЧЕНИЯ ПОЛНОГО РЕЕСТРА ВОСПОЛЬЗУЙТЕСЬ <CTRL>+<P> *****', '');
end.
.fields
 CommonFormHeader
 strWarning
.endfields
 ^   ^
.fields
 strReestrName
.endfields
 Б@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgFilters and word(1)) = 1);
.Fields
 dProbeBeg
 dProbeEnd
.EndFields
      за период с  Б^ Б  по   Б^ Б
.}
!------------------------------------------------------------------------
!.Fields
! RepName
!.EndFields
!      сформирован по настройке -  Б^ Б
!------------------------------------------------------------------------
.begin
 if ( ((flgFilters and   word(2)) =   2)
   OR ((flgFilters and   word(4)) =   4)
   OR ((flgFilters and   word(8)) =   8)
   OR ((flgFilters and  word(16)) =  16)
   OR ((flgFilters and  word(32)) =  32)
    ) boIsFilter := True
 else boIsFilter := False;
end.
.{ ?INTERNAL; boIsFilter;
      Используются фильтры:
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgFilters and word(2) ) = 2 ));
.Fields
 Mc
.EndFields
      по матценности -  Б^ Б
.}
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgFilters and word(4) ) = 4 ));
.Fields
 Party
.EndFields
      по партии -  Б^ Б
.}
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgFilters and word(8) ) = 8 ));
.Fields
 Org
.EndFields
      по организации -  Б^ Б
.}
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgFilters and word(16) ) = 16 ));
.Fields
 Podr
.EndFields
      по подразделению -  Б^ Б
.}
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgFilters and word(32) ) = 32 ));
.Fields
 Mol
.EndFields
      по МОЛ -  Б^ Б
.}
!------------------------------------------------------------------------
.} // ?INTERNAL; ( boIsFilter );
.{ ?internal; (not boNeedSpecif);
 ──────────────────────────────────────────────┬──────────┬──────────┬──────────────┬──────────────┬─────────────┬───────────────┬──────────────┬────────────────
  Проба                                        │   Дата   │  Статус  │ Матценность  │    Партия    │ Организация │ Подразделение │     МОЛ      │   Паспорт
 ──────────────────────────────────────────────┴──────────┴──────────┴──────────────┴──────────────┴─────────────┴───────────────┴──────────────┴────────────────
.} //.{ ?internal; (not boNeedSpecif);
!------------------------------------------------------------------------
.{ //MAIN CYCLE ON PRKACHVO's
!------------------------------------------------------------------------
.[h SKIP
.fields
 CommonFormHeader
 strReestrName
.endfields

 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── Лист N @Np@

.]h //HEADER end
!------------------------------------------------------------------------
.{ CheckEnter GroupHeaderProbe; (boNeedGrpHier);
.Fields GroupHeaderName:'T:-' .EndFields
 Б @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}//CheckEnter GroupHeaderProbe; (boNeedGrpHier);
.{ ?internal; boNeedSpecif;
.fields
	 PrKachvoCode
	 PrKachvoName
	 PrKachvoNotesName
	 PrKachvodtProbe
   PrKachvoMcName
   PrKachvoPartyName
   PrKachvoOrgName
   PrKachvoPodrName
   PrKachvoMolName
 .endfields
  Проба ^ ^ ^ от ^ по ^ ^ ^ ^ ^
                        ──────────────────────────────────────────┬──────────────────┬───────────────┬───────────────┬───────────────┬───────────────┬───────────
                             Показатель качества                  │     Аналитика    │  Фактическое  │  Нормативное  │  Минимальное  │ Максимальное  │ Единица
                                                                  │                  │   значение    │   значение    │   значение    │  значение     │ измерения
                        ──────────────────────────────────────────┴──────────────────┴───────────────┴───────────────┴───────────────┴───────────────┴───────────
.} //.{ ?internal; boNeedSpecif;
.{ ?internal; (not boNeedSpecif);
.fields
	 PrKachvoCode
	 PrKachvoName
	 PrKachvodtProbe
   PrKachvoNotesName
   PrKachvoMcName
   PrKachvoPartyName
   PrKachvoOrgName
   PrKachvoPodrName
   PrKachvoMolName
   PrKachvoQPHeadName
.endfields
 @@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@@@@ @@@@@@@@@@@@@@ @@@@@@@@@@@@@@ @@@@@@@@@@@@@@ @@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@
.} //.{ ?internal; (not boNeedSpecif);
.{ CheckEnter PrnQPLine; boNeedQPLine;
.fields
  QPLinePokazCode
  QPLinePokazName
  QPLineAnName
  QPLineFactValue
  QPLineNormValue
  QPLineMinValue
  QPLineMaxValue
  QPLineOtpEdName
.endfields
                         @@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@@@@
.} //CheckEnter PrnQPLine; boNeedQPLine;
.{ CheckEnter PrnRezKontr; boNeedRezKontr;
.fields
	TsKachvoCodeTest
	TsKachvoName
  RezKontrdtKontr
  RezKontrNotesName
.endfields
      Результат контроля по тесту качества ^ ^ от ^ в статусе ^
.{ CheckEnter PrnValKontr; boNeedValKontr;
.fields
  ValKontrPokazCode
  ValKontrPokazName
  ValKontrAnName
  ValKontrFactValue
  ValKontrNormValue
  ValKontrMinValue
  ValKontrMaxValue
  ValKontrOtpEdName
.endfields
                         @@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@@@@
.} //CheckEnter PrnValKontr; boNeedValKontr;
.} //CheckEnter PrnRezKontr; boNeedRezKontr;
.{ ?internal; boNeedSpecif;
                        ─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.} //.{ ?internal; boNeedSpecif;
.} //MAIN CYCLE ON PRKACHVO's
 
.endform