//------------------------------------------------------------------------------
//                                                      (c) Корпорация Галактика
// Галактика ERP 9.1
// Глобальные функции
//------------------------------------------------------------------------------

#include KatDocName.vih
#include TiDkInfo.vih
#include ShowAnalytics.vih
#include fncCode128.vih
#include RltFuncs.vih
#include MultiCopy.vih
#include ThemeFuncs.vih
#include TuneSynonyms.vih
#include BankFinder.vih
#include EanBarCode.vih
#include RepBarCode.vih
#include KatOrg.vih
#include StaticSF.vih

Global F_KatDoc::KatDocName
     , F_KatDoc::TiDkInfo
     , F_Common::ShowAnalytics
     , F_Common::MultiCopy
     , L_Common::fncCode128
     , L_Realting::RltFuncs
     , L_NIOKR::iThemeFuncs
     , L_Common::TuneSynonyms
     , L_KatOrg::BankFinder
     , C_COMMON::EanBarCode
     , C_COMMON::RepBarCode
     , L_KatOrg::KatOrg
     , L_SF::viStaticSF
     ;
