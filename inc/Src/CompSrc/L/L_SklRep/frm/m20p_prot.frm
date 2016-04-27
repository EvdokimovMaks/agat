#doc
формы по Альбому для пром. предприятий РБ
#end

.set name='m20p_prot'
.hide
.fields
  OrgName
  UNN
  OKPO
  OKONH
  Addr

  Year     // Год

  SklName  // Наименование склада/МОЛ
  MolName

  Dt1   : date
  Dt2   : date

  NameMC       // Наименование товара
  CodeMC       // Бар-код товара
  EdIsm        // Учетная ед. измерения
  KodEdIsm     // Код Учетная ед. измерения
  Price:double       // Цена
  Kol1:double        // Количество
  Summa1:double      // Сумма
  Kol2:double        // Количество
  Summa2:double      // Сумма
.endfields

.{
OrgName            : ^
UNN                : ^
OKPO               : ^
OKONH              : ^
Addr               : ^

Год                : ^
ПОДРАЗДЕЛЕНИЕ      : ^
МОЛ                : ^

Дата1              : ^
Дата2              : ^

.{
Наименование товара          : ^
Бар-код товара               : ^
Учетная ед. измерения        : ^
Код Учетная ед. измерения    : ^
Цена                         : ^
Количество1                  : ^
Сумма1                       : ^
Количество2                  : ^
Сумма2                       : ^
.}
.}
.endform

