#ifndef __FeeSignersInc__
#define __FeeSignersInc__

const

// ограничения для разделения PersPod
cgCommisSelectionBound = 207;
cgCommisSigner  = 208;
cgCommisRole  = 209;

// варианты написания фамилий
cgCommisFIOManual1  =   1;
cgCommisFIOManual2  =   2;
cgCommisFIOManual3  =   3;
cgCommisFIOManual4  =   4;
cgCommisFIOManual5  =   5;
cgCommisFIOManual6  =   6;
cgCommisFIOManual7  =   7;
cgCommisFIOManual8  =   8;
cgCommisFIOManual9  =   9;
cgCommisFIOManual10 =  10;
cgCommisFIOManual11 =  11;
cgCommisFIOManual12 =  12;

// варианты написания собственных должностей
cgCommisPositionManual1 =  21;
cgCommisPositionManual2 =  22;
cgCommisPositionManual3 =  23;
cgCommisPositionManual4 =  24;
cgCommisPositionManual5 =  25;
cgCommisPositionManual6 =  26;
cgCommisPositionManual7 =  27;

// варианты написания сторонних должностей
cgCommisPositionContrManual1 =  31;
cgCommisPositionContrManual2 =  32;
cgCommisPositionContrManual3 =  33;
cgCommisPositionContrManual4 =  34;
cgCommisPositionContrManual5 =  35;
cgCommisPositionContrManual6 =  36;
cgCommisPositionContrManual7 =  37;

// дополнительная информация
cgCommisDoverManual = 38; // доверенность на подпись
cgCommisPrimManual = 39;  // примечание


cgRole_PredCom     = 1;
cgRole_ChlenCom    = 2;
cgRole_Otvetstv    = 3;
cgRole_KontaktLico = 4;
cgRole_Koord       = 5;
cgRole_Prezid      = 6;
cgRole_VPrezid     = 7;
cgRole_Direct      = 8;
cgRole_ZDirect     = 9;
cgRole_GlBux       = 10;
cgRole_ZamGlBux    = 11;
cgRole_Bux         = 12;
cgRole_StarshKass  = 13;
cgRole_Kass        = 14;
cgRole_ProvLico    = 15;
cgRole_UtvLico     = 16;
cgRole_Sostavitel  = 17;
cgRole_Razdatel    = 18;

cgDopInfo_AddDov = 1;

// Для групп подписантов необходимо использовать
// константы cgReport_7201..cgReport_7600, предварительно зарегистрировав их в Reports.inc


end

#end // __FeeSignersInc__
