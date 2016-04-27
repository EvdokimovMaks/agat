#ifndef _fvedom2_inc_INCLUDED_
#define _fvedom2_inc_INCLUDED_
const
// [r]eport [m]ode
rmReprotCommon = 0;
rmChildrenControl = 1;

// [r]eport [t]ype 
rtControl = 0;
rtRegister = 1;

// [r]eport [f]ormat
rfRTF = 0;
rfExcel = 1;

// [h]eader [t]ype
htType1 = 1;
htType2 = 2;

// [e]ntity of [x]ls-[r]ows
exrSubHeader = 1;// Заголовок группировки
exrData = 2;     // Данные
exrSubTotal = 3; // Подытоги группировки

// [p]eriod[F]ltr[E]xt [s]ums
pfesCommon = 0;
pfesRecalcCurSums = 1;
pfesRecalcArcSums = 2;
pfesNoRecalcSums = 3;

// [c]heck [b]o[x]
cbx1BitMask = 1;
cbx2BitMask = 2;
cbx3BitMask = 4;
cbx4BitMask = 8;
cbx5BitMask = 16;
cbx6BitMask = 32;
cbx7BitMask = 64;
cbx8BitMask = 128;


end;
#end
