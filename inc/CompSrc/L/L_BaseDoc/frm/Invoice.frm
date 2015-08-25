#doc
Печать инвойса из счета на продажу
#end
.Form 'Invoice'
.Hide
.Fields

BaseDocNRec              : comp
DogovorNRec              : comp
Шапка_ДатаВыписки        : Date
Шапка_ТелФакс            : String
Шапка_НомерСчета         : String
Шапка_НомерДатаДоговора  : String
Шапка_Плательщик         : String

SpStepNRec               : comp
KatSoprNRec              : comp
SpSoprNRec               : comp
Строка_7СимвПартии       : String
Строка_КолГрузМест       : Double
Строка_Кол               : Double
Строка_НаименМЦ          : String
Строка_Код_ТНВЭД         : String
Строка_Цена              : Double
Строка_Стоимость         : Double
Строка_ДатаНакл          : Date
Строка_СкладОткуда       : String
Строка_НомерНакл         : String

Строка_ВсегоКолГрузМест  : Double
Строка_ВсегоКол          : Double
Строка_ВсегоСтоимость    : Double

.EndFields
^ ^
^ ^ ^ ^ ^
.{ CheckEnter Stroka
^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
^ ^ ^
.EndForm