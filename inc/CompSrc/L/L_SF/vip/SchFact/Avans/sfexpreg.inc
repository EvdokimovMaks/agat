//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Логистика
// Пакетное формирование СФ по экспортным отгрузкам (константы и макроопределения)
//******************************************************************************

const
//  cwExpConfirmLess: word = 0;
  cwExpNoConfirm   : word = 0;
  cwExpConfirmAfter: word = 1;
  cwExpNdsBack     : word = 2;

  cwfDocNakl: word = 0;
  cwfDocAct: word = 1;

  cwNaklOtgr  : word = 201;
  cwActOtgr   : word = 211;
  cwSoprVidDoc: word = 100;
  cwDefStatus: word = 1;

  cwfDocStatusIn: word = 1;
  cwfDocStatusTo: word = 2;
//  cwfDocInClosed: word = 4;
//  cwfForeignContr: word = 8;
  cwfAvansOnly   : word = 4;
  cwfProtocol    : word = 8;
end;

#declare boundAttrVal(I_)
bounds byAttr#I_ =
    coKatSopr    == AttrVal#I_.wTable
and KatSopr.NRec == AttrVal#I_.cRec
and g_cAttr#I_   == AttrVal#I_.cAttrNam
#end

#define tuneName      UserDeskRep.RepName

#define wordExpRegim  UserDeskRep.ResWord[1]
#define wordExpDoc    UserDeskRep.ResWord[2]
#define wordDocFilt1  UserDeskRep.ResWord[3]
#define wordDocFilt2  UserDeskRep.ResWord[4]
#define wordNewTypeBK UserDeskRep.ResWord[5]

#define DateDocBeg    UserDeskRep.ResDate[1]
#define DateDocEnd    UserDeskRep.ResDate[2]

#define compStatusIn  UserDeskRep.ResComp[1]
#define compStatusTo  UserDeskRep.ResComp[2]
