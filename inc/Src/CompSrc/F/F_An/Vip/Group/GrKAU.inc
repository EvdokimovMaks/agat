#ifndef __ONEGRKAU_INC__
#define __ONEGRKAU_INC__

#ifdef ComponentVersionInDict
#include ISLOJ.vih
#include ISPSLOJ.vih
#endif

#GalPublic type TSloj   = record as table Sloj;
#GalPublic type TSpSloj = record as table SpSloj;

#ifdef ComponentVersion
  #define TSloj
  #define TSpSloj
#else
  #define TSloj           TSloj
  #define TSpSloj         TSpSloj
#end

#endif //__ONEGRKAU_INC__
