//******************************************************************************
//                                                      (с) корпорация Галактика
// Галактика 8.1 - Кадры
// Описания зарегистрированных функций
//******************************************************************************

//------------------------------------------------------------------------------
// STAF_FUN.PAS
//------------------------------------------------------------------------------
Function IntervalYears (Date,Date)                     : Integer; external 'G_STAFF.DLL';
Function IntervalMonths (Date,Date)                    : Integer; external 'G_STAFF.DLL';
Function IntervalDays  (Date,Date)                     : Integer; external 'G_STAFF.DLL';
Function StajYears     (Date,Date,Double,Integer,Integer,Integer):Integer; external 'G_STAFF.DLL';
Function StajMonths    (Date,Date,Double,Integer,Integer,Integer):Integer; external 'G_STAFF.DLL';
Function StajDays      (Date,Date,Double,Integer,Integer,Integer):Integer; external 'G_STAFF.DLL';
Function Gal2StaffDep  (Comp)                          : Comp  ; external 'G_STAFF.DLL';
Function Staff2GalDep  (Comp)                          : Comp  ; external 'G_STAFF.DLL';
Function OpenStaffCatalogs                             : Boolean; external 'G_STAFF.DLL';
Function CloseStaffCatalogs                            : Boolean; external 'G_STAFF.DLL';

Function FillLinkedFormNames(String, LongInt, Word) : Boolean ; external 'G_STAFF.DLL';
Function ReFormT2(String)                           : Boolean ; external 'G_STAFF.DLL';
Function GetUniqueFileName                          : String ; external 'G_STAFF.DLL';
Function LogicSubString(var String, Byte, Boolean,
                        Boolean)                    : String ; external 'G_STAFF.DLL';
Function CreateNewFirstHeader                       : String ; external 'G_STAFF.DLL';
Function InsertStringIntoFirstHeader(String, String): Boolean ; external 'G_STAFF.DLL';
Function WriteFirstHeaderInto(String, String)       : Boolean ; external 'G_STAFF.DLL';
