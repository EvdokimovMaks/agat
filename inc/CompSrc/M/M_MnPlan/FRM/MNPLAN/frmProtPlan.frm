// =============================================================================
//                                                     (c)  корпорация Галактика
// Галактика 7.11
//
// =============================================================================

.set name='frmProtPlan'
.hide
.fields _TypeOfProtokol
        _TypeOfDocument _NameOfDocument _CodeOfAlg _NameOfAlg _DateStart _TimeStart _DateEnd _TimeEnd _Description _ProtocolMEMO
.endfields
Тип протокола: ^
Тип документа: ^
Наименование документа: ^
Код алгоритма: ^
Наименование алгоритма: ^
Дата начала расчета: ^
Время начала расчета: ^
Дата окончания: ^
Время окончания расчета: ^
Дескриптор: ^

^
.endform

.linkform 'linkfrmProtPlan' prototype is 'frmProtPlan'
.NameInList 'Протокол расчета'
.fields _TypeOfProtokol
				_TypeOfDocument _NameOfDocument _CodeOfAlg _NameOfAlg _DateStart _TimeStart _DateEnd _TimeEnd _Description _ProtocolMEMO
.endfields
Тип протокола: ^
Тип документа: ^
Наименование документа: ^
Код алгоритма: ^
Наименование алгоритма: ^
Дата начала расчета: ^
Время начала расчета: ^
Дата окончания: ^
Время окончания расчета: ^
Дескриптор: ^

^
.endform
