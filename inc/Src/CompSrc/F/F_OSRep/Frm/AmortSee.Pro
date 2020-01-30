//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.85 - Основные средства
// Разность данных по амортизации по методам учета
// Внимание! Существует slk-отчет в формате Excel
//------------------------------------------------------------------------------

#include FeeSigners.frn

#doc
Разность данных по амортизации по методам учета
#end

.set name = 'AmortSee'
.hide
.group 'Разность данных по амортизации'
.fields

  BegDate      : date
  EndDate      : date
  Param_wStoimInReestr : word   // какую первоначальной стоимости (стоимости) в реестре
  AdditionalParam : word        // дополнительные параметры при печати

  Фильтр
  Формат_Сумм : string // Формат содержащийся в рфыекщйках пользователя UserDeskRep.ResName[1]

  //---------------------------------------------
  fMetodName1 // исходный метод учета
  fMetodName2 // метод учета для сравнения

  //---------------------------------------------
  // группировки с итогами
  Node_Name

  Node_SIznM1  : double // сумма износа за месяц по исходному методу учета
  Node_Stoim1  : double // стоимость объекта по исходному методу учета
  Node_SumIzn1 : double // сумма износа объекта по исходному методу учета

  Node_SIznM2  : double // сумма износа за месяц по методу учета для сравнения
  Node_Stoim2  : double // стоимость объекта по методу учета для сравнения
  Node_SumIzn2 : double // сумма износа объекта по методу учета для сравнения

  Node_Raznost    : double // общая разница по суммам износа за месяц
  Node_PR         : double // постоянная разность
  Node_PRPog      : double // погашено постоянная разность
  Node_VVRNach    : double // начисление вычитаемой временной разности (ВВР)
  Node_VVRPog     : double // погашение ВВР
  Node_NVRNach    : double // начисление налогооблагаемой временной разности (НВР)
  Node_NVRPog     : double // погашение НВР
  Node_TotalPR    : double // накопленная величина постоянной разницы
  Node_TotalPRPog : double // накопленная величина постоянной разницы
  Node_TotalVVR   : double // накопленная величина вычитаемой временной разницы (ВВР)
  Node_TotalNVR   : double // накопленная величина налогооблагаемой временной разницы (НВР)

  Node_ValName
  //---------------------------------------------
  // исходные строки отчета
  Leaf_Name

  Leaf_InvNumber
  Leaf_Period : date // период (месяц) сравниваемых данных

  Leaf_SIznM1     : double // сумма износа за месяц по исходному методу учета
  Leaf_Stoim1     : double // стоимость объекта по исходному методу учета
  Leaf_SumIzn1    : double // сумма износа объекта по исходному методу учета
  Leaf_Algoritm1  // Наименование алгоритма начисления амортизации
  Leaf_TXO1       // Наименование ТХО по амортизации

  Leaf_SIznM2     : double // сумма износа за месяц по методу учета для сравнения
  Leaf_Stoim2     : double // стоимость объекта по методу учета для сравнения
  Leaf_SumIzn2    : double // сумма износа объекта по методу учета для сравнения
  Leaf_Algoritm2  // Наименование алгоритма начисления амортизации
  Leaf_TXO2       // Наименование ТХО по амортизации

  Leaf_Raznost    : double // общая разность
  Leaf_PR         : double // постоянная разность
  Leaf_PRPog      : double // погашено постоянная разность
  Leaf_VVRNach    : double // начисление вычитаемой временной разности (ВВР)
  Leaf_VVRPog     : double // погашение ВВР
  Leaf_NVRNach    : double // начисление налогооблагаемой временной разности (НВР)
  Leaf_NVRPog     : double // погашение НВР
  Leaf_TotalPR    : double // накопленная величина постоянной разницы
  Leaf_TotalPRPog : double // накопленная величина постоянной разницы
  Leaf_TotalVVR   : double // накопленная величина вычитаемой временной разницы (ВВР)
  Leaf_TotalNVR   : double // накопленная величина налогооблагаемой временной разницы (НВР)

  Leaf_ValName
  //---------------------------------------------
  Leaf_wTiDk     : word  // тип (ОС/НМА)
  Leaf_cKatOS    : comp  // ссылка на карточку ОС
  Leaf_DateK     : date  // дата ввода в эксплуатацию

!  // по исходному методу учета
  Leaf_cSpKatOS1 : comp     // ссылка на SpKatOS
  Leaf_SrokIsp1  : double   // Срок полезного использования (в месяцах)
  Leaf_STOIM_1   : double   // Первоначальная стоимость
  Leaf_SIZNM_1   : double   // Износ за месяц EndDate
  Leaf_SUMIZN_1  : double   // сумма износа за период BegDate-EndDate
  Leaf_SUMIZN_IzmStm1  : double   // сумма износа за период BegDate-EndDate из операций Изм стоимости
  Leaf_OstSTOIM_1: double   // остаточная стоимость на EndDate

! // по методу учета для сравнения
  Leaf_cSpKatOS2 : comp     // ссылка на SpKatOS
  Leaf_SrokIsp2  : double   // Срок полезного использования (в месяцах)
  Leaf_STOIM_2   : double   // Первоначальная стоимость
  Leaf_SIZNM_2   : double   // Износ за месяц EndDate
  Leaf_SUMIZN_2  : double   // сумма износа за период BegDate-EndDate
  Leaf_SUMIZN_IzmStm2  : double   // сумма износа за период BegDate-EndDate из операций Изм стоимости
  Leaf_OstSTOIM_2: double   // остаточная стоимость на EndDate

  Leaf_VVR_Stoim    : double   // ВВР первоначальной стоимости
  Leaf_NVR_Stoim    : double   // НВР первоначальной стоимости
  Leaf_VVR_Inp      : double   // ВВР на BegDate
  Leaf_NVR_Inp      : double   // НВР на BegDate
  Leaf_PR_Inp       : double   // ПР  на BegDate
  Leaf_PRPog_Inp    : double   // погашено ПР  на BegDate

  Leaf_VVR_Period   : double   // ВВР за период BegDate-EndDate
  Leaf_NVR_Period   : double   // НВР за период BegDate-EndDate
  Leaf_PR_Period    : double   // ПР  за период BegDate-EndDate
  Leaf_PRPog_Period : double   // ПР  за период BegDate-EndDate

  Leaf_VVR_Cor      : double   // Корректировка ВВР за период BegDate-EndDate
  Leaf_VVRPog_Cor   : double   // Корректировка ПВВР за период BegDate-EndDate
  Leaf_NVR_Cor      : double   // Корректировка НВР за период BegDate-EndDate
  Leaf_NVRPog_Cor   : double   // Корректировка ПНВР за период BegDate-EndDate
  Leaf_PR_Cor       : double   // Корректировка ПР за период BegDate-EndDate
  Leaf_PRPog_Cor    : double   // Корректировка погашено ПР за период BegDate-EndDate

  Leaf_Vyb_Period_1 : double   // выбытие по исходному методу учета за период BegDate-EndDate
  Leaf_Vyb_Period_2 : double   // выбытие по методу учета для сравнения за период BegDate-EndDate

  Leaf_STOIM_CUR_1    : double   // Текущая Первоначальная стоимость
  Leaf_SIZNM_CUR_1    : double   // Текущий Износ за месяц EndDate
  Leaf_SUMIZN_CUR_1   : double   // Текущий накопленный износ

  Leaf_STOIM_CUR_2    : double   // Текущая Первоначальная стоимость
  Leaf_SIZNM_CUR_2    : double   // Текущий Износ за месяц EndDate
  Leaf_SUMIZN_CUR_2   : double   // Текущий накопленный износ

#FeeSigners_Os_Fields

.endfields
  //---------------------------------------------
.{
     BegDate        ^
     EndDate        ^
     Param_wStoimInReestr ^
     AdditionalParam      ^
.{ AmortSee_Filter CheckEnter
^
.}
     Формат_Сумм    ^
     fMetodName1    ^
     fMetodName2    ^
.{
.{ AmortSee_Header CheckEnter
     Node_Name      ^

     Node_SIznM1    ^
     Node_Stoim1    ^
     Node_SumIzn1   ^

     Node_SIznM2    ^
     Node_Stoim2    ^
     Node_SumIzn2   ^

     Node_Raznost    ^
     Node_PR         ^
     Node_PRPog      ^
     Node_VVRNach    ^
     Node_VVRPog     ^
     Node_NVRNach    ^
     Node_NVRPog     ^
     Node_TotalPR    ^
     Node_TotalPRPog ^
     Node_TotalVVR   ^
     Node_TotalNVR   ^
     Node_ValName    ^
.}
.{ AmortSee_Body CheckEnter
     Leaf_Name      ^

     Leaf_InvNumber ^
     Leaf_Period    ^

     Leaf_SIznM1    ^
     Leaf_Stoim1    ^
     Leaf_SumIzn1   ^
     Leaf_Algoritm1 ^
     Leaf_TXO1      ^

     Leaf_SIznM2    ^
     Leaf_Stoim2    ^
     Leaf_SumIzn2   ^
     Leaf_Algoritm2 ^
     Leaf_TXO2      ^

     Leaf_Raznost    ^
     Leaf_PR         ^
     Leaf_PRPog      ^
     Leaf_VVRNach    ^
     Leaf_VVRPog     ^
     Leaf_NVRNach    ^
     Leaf_NVRPog     ^
     Leaf_TotalPR    ^
     Leaf_TotalPRPog ^
     Leaf_TotalVVR   ^
     Leaf_TotalNVR   ^
     Leaf_ValName    ^

     //--------------------------
     Leaf_wTiDk     ^
     Leaf_cKatOS    ^
     Leaf_DateK     ^

     Leaf_cSpKatOS1 ^
     Leaf_SrokIsp1  ^
     Leaf_STOIM_1    ^
     Leaf_SIZNM_1    ^
     Leaf_SUMIZN_1   ^
     Leaf_SUMIZN_IzmStm1  ^
     Leaf_OstSTOIM_1 ^

     Leaf_cSpKatOS_2 ^
     Leaf_SrokIsp_2  ^
     Leaf_STOIM_2    ^
     Leaf_SIZNM_2    ^
     Leaf_SUMIZN_2   ^
     Leaf_SUMIZN_IzmStm2  ^
     Leaf_OstSTOIM_2 ^

     Leaf_VVR_Stoim     ^
     Leaf_NVR_Stoim     ^

     Leaf_VVR_Inp       ^
     Leaf_NVR_Inp       ^
     Leaf_PR_Inp        ^
     Leaf_PRPog_Inp     ^

     Leaf_VVR_Period    ^
     Leaf_NVR_Period    ^
     Leaf_PR_Period     ^
     Leaf_PRPog_Period  ^

     Leaf_VVR_Cor       ^
     Leaf_VVRPog_Cor    ^
     Leaf_NVR_Cor       ^
     Leaf_NVRPog_Cor    ^
     Leaf_PR_Cor        ^
     Leaf_PRPog_Cor     ^

     Leaf_Vyb_Period_1 ^
     Leaf_Vyb_Period_2 ^

     Leaf_STOIM_CUR_1    ^
     Leaf_SIZNM_CUR_1    ^
     Leaf_SUMIZN_CUR_1   ^

     Leaf_STOIM_CUR_2    ^
     Leaf_SIZNM_CUR_2    ^
     Leaf_SUMIZN_CUR_2   ^
.}
.{ AmortSee_Footer CheckEnter
.}
.{ AmortSee_Line CheckEnter
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.}
.}
.}
#FeeSigners_Os_Body(AmortSee)
.endform
