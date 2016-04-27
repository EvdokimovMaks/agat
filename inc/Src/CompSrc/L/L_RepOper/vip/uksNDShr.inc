const
  cwfDateSF: word = 1;
  cwfStroy : word = 2;
  cwfParty : word = 4;
  cwfMC    : word = 8;
  cwfUsl   : word = 16;

  cwpMCUsl  : word = 0;
  cwpMCOnly : word = 1;
  cwpUslOnly: word = 2;

  //Pick.wList
  cwPickLstObjID  : word = 881;
  cwPickLstPartyID: word = 882;
  cwPickLstMCID   : word = 883;
  cwPickLstUslID  : word = 884;
  cwPickPartyList : word = 10;
  cwPickMCList    : word = 7;
  cwPickUslList   : word = 12;
  cwRepCode       : word = 223;
  cwStroyObjTiDk  : word = 454;
  cwSfBuyTiDk     : word = 73;
  cwGrpDogovor    : word = 2;
  cwGrpObject     : word = 29;
  cwGrpMcUsl      : word = 70;
  cwGrpParty      : word = 50;
  cwGrpKatOrg     : word = 10;
  cwSumCount      : word = 7;
end;

#define tuneName   UserDeskRep.RepName
#define dateDocBeg UserDeskRep.ResDate[1]
#define dateDocEnd UserDeskRep.ResDate[2]

#define wordMCUslParam UserDeskRep.ResWord[1]
#define wordFilter     UserDeskRep.ResWord[2]
#define multiStroy     UserDeskRep.ResLngInt[3]
#define multiParty     UserDeskRep.ResLngInt[4]
#define multiMC        UserDeskRep.ResLngInt[5]
#define multiUsl       UserDeskRep.ResLngInt[6]

#define compKatStroy UserDeskRep.ResComp[1]
#define compKatParty UserDeskRep.ResComp[2]
#define compKatMC    UserDeskRep.ResComp[3]
#define compKatUsl   UserDeskRep.ResComp[4]
#define compRepGrLst UserDeskRep.ResComp[5]
