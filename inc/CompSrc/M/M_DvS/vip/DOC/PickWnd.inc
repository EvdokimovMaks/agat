

#ifndef _PickWnd_inc_
#define _PickWnd_inc_

#ifdef ComponentVersion
#component "M_DVS"
#endif


Type  StructPickWnd = record
   sNameFld      : string;
   NumFld        : word;
   Pick          : word;
   Pick_Default  : word;
   Pick_Old      : word;
   cValue        : comp;
end;

Type  StructPickWnd_Ext = record
   Value_comp    : comp   ;
   Value_word    : word   ;
   Value_longInt : longInt;
   Value_date    : date   ;
   Value_string  : string ;
end;

#endif
