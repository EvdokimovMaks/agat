#ifndef __SCHFEXCP_INC
#define __SCHFEXCP_INC

exception ExSchFact;
  exception ExSchFactNotFoundSystDate(ExSchFact);
  exception ExSchFactNotLoaded(ExSchFact);
  exception ExSchFactNotInited(ExSchFact);
  exception ExSchFactNotCreated(ExSchFact);
  exception ExSchFactNoSoprDoc(ExSchFact);

exception ExInsertError;
exception ExUpdateError;
exception ExDeleteError;

#end // __SCHFEXCP_INC