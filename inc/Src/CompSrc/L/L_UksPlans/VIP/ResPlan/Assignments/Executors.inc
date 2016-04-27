#ifndef _Executors_inc_
#define _Executors_inc_

const
  // Типы назначений исполнителей для ресурсов (поле AssignRes.wType)
  EXECUTOR_TYPE_MACHINE = 1; // тип назначения для машины/механизма (ссылка на исполнителя - AssignRes.cTransp)
  EXECUTOR_TYPE_PERSON = 2; // тип назначения для рабочего или машиниста (ссылка на исполнителя - AssignRes.cLSchet)
end;

#endif
