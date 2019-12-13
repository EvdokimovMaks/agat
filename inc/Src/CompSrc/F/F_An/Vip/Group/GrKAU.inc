#ifndef __ONEGRKAU_INC__
#define __ONEGRKAU_INC__

#ifdef ComponentVersionInDict
#include ISLOJ.vih
#include ISPSLOJ.vih
#endif

#GalPublic type TSloj   = record as table Sloj;
#GalPublic type TSpSloj = record as table SpSloj;

  #define TSloj
  #define TSpSloj

#endif //__ONEGRKAU_INC__
