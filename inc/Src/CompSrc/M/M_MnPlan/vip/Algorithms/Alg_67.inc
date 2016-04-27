/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,2001 корпорация ГАЛАКТИКА                    ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Портфель заказов                                          ║
 ║ Версия        : 6.00                                                      ║
 ║ Назначение    : Интерфейс резервирования МЦ                               ║
 ║ Ответственный : Скороход Дмитрий Владимирович                             ║
 ║ Параметры     : да                                                        ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/

Table STRUCT Alg67Up "Голова для резерва"
(
  OpDateCl      : date       "Дата исполнения спецификации",
  Kol           : double     "Количество в спецификации",

  KolIn         : double     "Количество отпущеных приходов",
  KolOut        : double     "Количество отпущеных расходов",
  // Price         : double     "Цена",
  // Summa         : double     "Сумма",
  PlanRest      : double     "Планируемое наличие",

  wReqDoc       : word       "видимо тип документа",
  noReqDoc      : s20        "Номер документа",
  dReqDoc       : date       "Дата документа",

  cReqDocSp     : comp       "Ссылка на спецификацию",

  cMc           : comp       "Ссылка на МЦ",
  cOtpEd        : comp       "Ссылка на единицу",

	NameMc        : string     "Для сортировки по имени МЦ"
)
;

Table STRUCT Alg67Middle "Руки для резерва"
(
  OpDate        : date       "Дата операции",
  KolRe         : double     "Количество по операции",

  cOwner        : comp       "Ссылка на вышестоящего",

  KolFact       : double     "Количество уже выполненное",
  KolTake       : double     "Количество уже распределённого",
  KolEnsure     : double     "Обеспечено подчинёнными",
  WhichWay      : word       "Приход\Расход",

  cReqDocSp     : comp       "Ссылка на спецификацию",
  cMc           : comp       "Ссылка на МЦ",
  cPlanMove     : comp       "Идентификатор операции",
  cPodr         : comp       "Подразделение",
  cMol          : comp       "Мол",
  cParty        : comp       "Партия"
)

With Index
(
  Alg67Middle01 = cReqDocSp + OpDate
)
;

Table STRUCT Alg67Down "Ноги для резерва"
(

  cRelete       : comp       "Связанная операция",
  Kol           : double     "Количество для прихода",
	KolRash				: double     "Количество для расхода",
  cTake         : comp       "Ссылка на операцию разноски",

  wReqDoc       : word       "видимо тип документа",
  noReqDoc      : s20        "Номер документа",
  dReqDoc       : date       "Дата документа",
  WhichWay      : word       "Приход\Расход",

  // из операции
  OpDate        : date       "Дата операции",
  KolRe         : double     "Количество по операции",
  KolFact       : double     "Количество уже выполненное",
  KolEnsure     : double     "Обеспечено подчинёнными",

  cReqDocSp     : comp       "Ссылка на спецификацию",
  cMc           : comp       "Ссылка на МЦ",
  cPlanMove     : comp       "Идентификатор операции",
  cPlanMove_    : comp       "Идентификатор операции",
  cPodr         : comp       "Подразделение",
  cMol          : comp       "Мол",
  cParty        : comp       "Партия"
)

With Index
(
  Alg67Down01 = cPlanMove
)
;


Table STRUCT Alg67Left "Резерв налево"
(

  cRelete       : comp       "Связанная операция",

  wReqDoc       : word       "видимо тип документа",
  noReqDoc      : s20        "Номер документа",
  dReqDoc       : date       "Дата документа",
  WhichWay      : word       "Приход\Расход",

  // из операции
  OpDate        : date       "Дата операции",
  KolRe         : double     "Количество по операции",

  KolFact       : double     "Количество уже выполненное",
  KolTake       : double     "Количество уже распределённого",
  KolEnsure     : double     "Обеспечено подчинёнными",

  cReqDocSp     : comp       "Ссылка на спецификацию",
  cMc           : comp       "Ссылка на МЦ",
  cPlanMove     : comp       "Идентификатор операции",
  cPodr         : comp       "Подразделение",
  cMol          : comp       "Мол",
  cParty        : comp       "Партия"
)

With Index
(
  Alg67Left01 = cRelete
)
;

Table STRUCT Alg67Right "Резерв направо"
(

  cRelete       : comp       "Связанная операция",

  wReqDoc       : word       "видимо тип документа",
  noReqDoc      : s20        "Номер документа",
  dReqDoc       : date       "Дата документа",
  WhichWay      : word       "Приход\Расход",

  // из операции
  OpDate        : date       "Дата операции",
  KolRe         : double     "Количество по операции",

  KolFact       : double     "Количество уже выполненное",
  KolTake       : double     "Количество уже распределённого",
  KolEnsure     : double     "Обеспечено подчинёнными",

  cReqDocSp     : comp       "Ссылка на спецификацию",
  cMc           : comp       "Ссылка на МЦ",
  cPlanMove     : comp       "Идентификатор операции",
  cPodr         : comp       "Подразделение",
  cMol          : comp       "Мол",
  cParty        : comp       "Партия"
)

With Index
(
  Alg67Right01 = cRelete
)
;
