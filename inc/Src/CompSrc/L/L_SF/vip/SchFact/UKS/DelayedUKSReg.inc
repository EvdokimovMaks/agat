#ifndef __DELAYEDUKSREG_INC
#define __DELAYEDUKSREG_INC

const
  cwfDateDoc: word = 1;
  cwfStroy  : word = 2;
end;

#define tuneName   UserDeskRep.RepName
#define dateDocBeg UserDeskRep.ResDate[1]
#define dateDocEnd UserDeskRep.ResDate[2]

#define wordDocType UserDeskRep.ResWord[1]
#define wordFilter  UserDeskRep.ResWord[2]

#define compKatStroy UserDeskRep.ResComp[1]

#end //__DELAYEDUKSREG_INC
