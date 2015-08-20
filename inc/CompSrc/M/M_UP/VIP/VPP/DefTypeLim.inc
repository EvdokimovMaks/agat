
#ifndef _DEF_TYPE_LIM_INC_
#define _DEF_TYPE_LIM_INC_

type StructTmpGrN = record
     wFlagVisible   : word;
     wStatusIRMC    : word;
     wStatusIRVid   : word;
     cLimTmp        : comp;
     cPodrFrom      : comp;
     cPodrTo        : comp;
     cKatLimit      : comp;
     cKatMC         : comp;
     cBaseDoc       : comp;

     cKatSopr       : comp;
     cSpecif        : comp;
     cPersons       : comp;

     LimDocSumma    : Double;
     SumLimit       : Double;

     Number         : string;
     Reason         : string;
end;

#end