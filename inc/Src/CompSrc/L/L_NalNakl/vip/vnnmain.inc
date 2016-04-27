//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 8.1 - Логистика
// включение файлов, содержащих описания доп.логических таблиц,
//******************************************************************************

// чтобы исключить дублирование с модулем СФ

// #include vNnMain.inc - вставить перед #include vNnMain.vpp

#ifNdef __VNNMAIN_INC
#define __VNNMAIN_INC

#define __NEED_KS_tbBySF__

#include mathfunc.vpp
#include tranfunc.vpp
#include vGetSH.vpp
#include vGetKS.vpp
#include vGetSP.vpp
#include vGetSSp.vpp
#include vGetSSD_NN.vpp

#end // __VNNMAIN_INC
