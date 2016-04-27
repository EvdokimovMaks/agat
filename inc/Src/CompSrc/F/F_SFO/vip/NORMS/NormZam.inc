#ifndef _NormZam_
#define _NormZam_
Const
  cgNormZamBord = 16; // Граничное значение для разделения основной 
                      // спецификации нормы и спецификаций вариантов замен
  cgHistory = 1;      // Если интерфейс MakeZamen вызывается из Личной карточки
  cgAnaliz  = 2;      // Если интерфейс MakeZamen вызывается из отчета "Анализ потребности"
  cgTrebov  = 3;      // Если интерфейс MakeZamen вызывается из Требований на выдачу

  cgMode_Create = 1;
  cgMode_Zamena = 2;
End;
#end
