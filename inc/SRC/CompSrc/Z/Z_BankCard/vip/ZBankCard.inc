#ifndef _ZBankCard_inc_INCLUDED_
#define _ZBankCard_inc_INCLUDED_

const
//кодировка файла
  cn_file_encoding_UTF8        = 0; //UTF-8
  cn_file_encoding_Windows1251 = 1; //Windows-1251

//тип договора с банком
  cn_Dogovor_Val        = 0; //в валюте
  cn_Dogovor_NDE        = 1; //НДЕ

// виды карт
  cnCard_Salary      = 0;    //основные банковские реквизиты (заработная плата)
  cnCard_SalaryDop   = 1;    //данные дополнительного банка (заработная плата)
  cnCard_SalaryMP    = 2;    //данные основного банка для межрасчетных выплат
  cnCard_SalaryMPDop = 3;    //данные дополнительного банка для межрасчетных выплат.
  cnCard_Corpo       = 1000; //корпоративная карта
  cnCard_NO          = 100;  //без карты, просто реквизиты

  cosCard_Salary      = 'Зарплатная (осн.)';                       // cnCard_Salary
  cosCard_Corpo       = 'Корпоративная';                           // cnCard_Corpo
  cosCard_SalaryDop   = 'Зарплатная (доп.)';                       // cnCard_SalaryDop
  cosCard_SalaryMP    = 'Зарплатная (межрасч. выпл.)';             // cnCard_SalaryMP
  cosCard_SalaryMPDop = 'Зарплатная (доп. для межрасч.выплат)';    // cnCard_SalaryMPDop

// Принадлежность к платежной системе
  cnPay_American_Express    = 3;
  cnPay_Visa                = 4;
  cnPay_MasterCard          = 5;
  cnPay_MasterCard_Business = 54;
  cnPay_Maestro             = 6;
  cnPay_MIR                 = 7;
  cnPay_Other               = 0;
  cnPay_No                  = 100;

  cnCard_NoExistence        = 0; //наличие карты - нет
  cnCard_Existence          = 1; //наличие карты - да

  cnNameEmptyPROJECT        = '<Нет прикрепления к зарплатному проекту в банке>'; 
  cnNameEmptyPROJECTsmall   = 'Нет прикрепления к Зпр'; 

  cnData_Zarpl              = 1;
  cnData_Avans              = 2;

  cnAccessEditCard_ALL      = 0;//все права на редактирование банковской карты
  cnAccessEditCard_No       = 1;//только просмотр

  //константы для позиционирования на карту
  cnUse_All                 = 0; //любая карта
  cnUse_Salary              = 1; //зарплата
  cnUse_Avans               = 2; //аванс
  cnUse_Bank                = 3; //карта определенного банка

  cnTransfer                = 0;
  cnCreate                  = 1;
  cnClose                   = 2;
  cnAll                     = 3;

end;

#endif
