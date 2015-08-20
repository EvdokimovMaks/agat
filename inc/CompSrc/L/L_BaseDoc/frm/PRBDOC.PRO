! ╔═════════════════════════════════════════════════════════════════════════╗
! ║  Разработал:  Кондраль В.А.                                             ║
! ║  Назначение:  Счета, договара продаж , закупок, консигнации             ║
! ╚═════════════════════════════════════════════════════════════════════════╝
#doc
Счета, договара продаж , закупок, консигнации
#end
.Set Name = 'PRBDOC'
! sdoc - символ денежной единицы документа
! srub - символ НДЕ
! UnnName - УНН/ИНН
! MFOBIK - МФО/БИК
! BaseDocNrec - системный номер документа
! mnd  - дескриптор менеджера
! nomer, ddoc - номер и дата документа
! RealSkidPercent - реальный процент скидки к документу
! post bpost bpost2 rspost mpost rspost2 mpost2 adpost telpost innpost KODPLATNDS_post НДСtippost
! OKPOpost okonhpost citypost
! postbankadr - атрибуты нашей фирмы
! grpost gradpost grtelpost inngrpost tipgrpost
! grotbank grotmfo1 grotmfo2 grotschet1 grotschet2
! grpostbankadr- атрибуты грузоотправителя
! pol bpol rspol mpol rspol2 mpol2 adpol telpol innpol KODPLATNDS_pol tippol
! dogo addogo SFAdrPostdogo SFAdrJurdogo teldogo inndogo KodPlatNDS_dogo tipdogo OKPOdogo okonhdogo citydogo
! dogp addogp SFAdrPostdogp SFAdrJurdogp teldogp inndogp KodPlatNDS_dogp tipdogp OKPOdogp okonhdogp citydogp
! OKPOpol okonhpol citypol
! polbankadr  - атрибуты контрагента
! grpol gradpol grtelpol inngrpol tipgrpol grpolbank
! grpolmfo1 grpolmfo2 grpolschet1 grpolschet2
! grpolbankadr  - атрибуты грузополучателя
! Skl - склад отгрузки
! pname - примечания
! kategor - категория ДО
! TTNatp_Name - наименование автотранспортного предприятия
! Driver_Name - имя водителя
! TTNplist    - номер путевого листа
! TTNnDov     - номер доверенности
! Transp_Nomer - регистрационный номер транспортного средства
! TTNpunkt_Name - название пункта разгрузки
!  ClName ClValue ClCode - внешняя классификация ДО
! GrName, GrSum, GrDate, GrKod - атрибуты групп ДО
! Nsert NKont KontPri - сертификат контракт приложение к нему
! oplmax - дата - оплатить до
! StrKurs - инф-ия о курсе (Курс $ 4500 на 12/09/95)
! атрибуты товара :
!             np (номер позиции)
!             AtrSpSopr - атрибут SpSopr
!             PosNrec - SpStep.Nrec - системный номер позиции
!             PrMCUS - признак товара/услуги
!             barkod, mc, ed, remmc, barkod2 (баркод, наменование, ед.изм., примеч., ОКДП)
!             zavMC, MaxProc, kodpart, namepart, godnpart, zavpart,
!             dAnalPart, nAnalPart, dSertPart, nSertPart - атрибутика мц и партии
!             edname - наименование учетной единицы
!             edtorg - единица торга в прайсе (наименование)
!             KoefTorg - коэффициент пересчета единицы документа в единицу торга
!             massa, sizeX, sizeY, sizeZ (характеристики МЦ)
!             attr1,attr2,attr3,attr4,attr5 внешние атрибуты спецификации
!             attrmc1,attrmc2,attrmc3,attrmc4,attrmc5 вн. атрибуты товара/услуги
!             koef (коэффициент пересчета в учетную ед.)
!             nvagon nkvit вагон квитанция
!             kol (количество)
!             procub (% на убыль)
!             kolskl (количество для отпуска со склада)
!             cena, cenar (цена в sdoc и srub), cenaNR (цена не округленная)
!             VlSkidPos (скидка оригинал)
!             skidka, skidkar (скидка в sdoc и srub)
!             cenaBez, cenaBezr (цена в sdoc и srub без налогов)
!             sBez, sBezR (сумма без налогов и скидок в sdoc и srub)
!             NewCena, NewCenaR (цена в sdoc и srub с учетом всех
!             скидок и налогов)
!             NewSumma, NewSummaR ( NewCena*Kol)
!             Nal1, Nal1R, Nal2, Nal2R, Nal3, Nal3R, Nal4, Nal4R,
!             Nal5, Nal5R, Nal6, Nal6R - налоги по порядковым номерам
!             классификатора налогов
!             NalOst, NalOstR - сумма по остальным налогам (невошедшие в 1-6)
!             Nds, Ndsr, ProcNds, IsExistNDS (НДС в sdoc и srub и ставка)
!             Nds10, Nds10r (НДС по ставке 10% в sdoc и srub)
!             Nds20, Nds20r (НДС по ставке 20% в sdoc и srub)
!             Ak, Akr (Акциз  в sdoc и srub)
!             GSM, GSMr (Налог на ГСМ в sdoc и srub)
!             NSel, NSelr (Налог с продаж в sdoc и srub)
!             FirstCena, UchetCena, OtpCena (заводская, учетная, отпускная цена)
!             tu, tuNDS, tuALL (стоимость услуг, отнессенных к данной позиции)
! SumNadb1, SumNadb2 (Сумма надбавок: 1 учетная-заводская, 2 отпускная-учетная)
! SumSkidPos, SumSkidPosR (сумма скидок по позиции)
! i1 (строка Итого)
! SumPos, SumPosR (сумма позиций по документу)
! i2 i2r (Итого по сумме позиций в sdoc и srub)
! i2New, i2NewR (Итого по счету в NewCena в sdoc и srub)
! n1, n2, n2doc, n2r, n2rRub (ставка и величина НДС в sdoc и srub)
! c1, c2, c2doc , c2r, c2rRub (ставка и величина Акциза в sdoc и srub)
! p1, p2, p2doc , p2r, p2rRub (ставка и величина налога с продаж в sdoc и srub)
! n12, n12r (величина НДС 10 % в sdoc и srub)
! n22, n22r (величина НДС 20 % в sdoc и srub)
! g1, g1r (величина налога на ГСМ в sdoc и srub)
! op1 (строка Итого с учетом налогов)
! op2, op2doc, op2r, op2rRub (итого без скидки по ДО в sdoc и srub)
! d1 (строка Скидка к сумме по документу)
! d2 - скидка, d3 - % или sdoc
! SkRub, SDen - величина скидки в ден.ед. документа и символ валюты ДО
! SkNDE, SNDE - величина скидки в НДЕ и символ НДЕ
! k1, k1r - итого к оплате в  sdoc и srub
! po1, po1r - предоплата в  sdoc и srub
! no1, no1r - необходимо оплатить в  sdoc и srub
! NDSNew, NDSNewR   - налоги по документу с учетом скидок
! k3, k3r - итого прописью  в sdoc и srub
! k4, k5 - процент к курсу при оплате
! kDay - срок действия документа в днях
.hide
!.group 'Продажа'
.var
 summar : double
.endvar
.fields
  wCountry : word
  sdoc srub
  UnnName
  MFOBIK
  BaseDocNrec : comp
  mnd nomer ddoc
  RealSkidPercent:double
  FIOman
  post nRecMy:comp bpost bpost2 postbankadr rspost mpost rspost2 mpost2 adpost SFAdrPostMy SFAdrJurMy telpost
  innpost KodPlatNDS_post KodNDS_post_NotSF tippost OKPOpost okonhpost citypost
  grpost nRecGrOtp:comp gradpost grSFAdrPostOtp grSFAdrJurOtp grtelpost inngrpost tipgrpost
  grotbank grpostbankadr grotmfo1 grotmfo2 grotschet1 grotschet2
  HeadOrg pol bpol bpol2 polbankadr rspol mpol rspol2 mpol2 adpol SFAdrPostPol SFAdrJurPol telpol
  innpol KodPlatNDS_pol KodNDS_pol_NotSF tippol OKPOpol okonhpol citypol

  Bank_Korr BankHead_Korr BankAdr_Korr Schet1_Korr MFO1_Korr Schet2_Korr MFO2_Korr

  dogo addogo SFAdrPostdogo SFAdrJurdogo teldogo inndogo KodPlatNDS_dogo tipdogo OKPOdogo okonhdogo citydogo
  dogp addogp SFAdrPostdogp SFAdrJurdogp teldogp inndogp KodPlatNDS_dogp tipdogp OKPOdogp okonhdogp citydogp

  grpol gradpol grSFAdrPostPol grSFAdrJurPol grtelpol inngrpol tipgrpol grpolbank
  grpolbankadr grpolmfo1 grpolmfo2 grpolschet1 grpolschet2
  pname kategor
  TTNatp_Name Driver_Name TTNplist TTNnDov
  Transp_Nomer TTNpunkt_Name
  BaseFinNumber BaseFinDate
  ClName ClValue ClCode
  GrName GrSum GrDate GrKod
  Nsert NKont KontPri oplmax skl StrKurs
  np AtrSpSopr PosNrec:comp PrMCUS barkod mc edname massa sizex sizey sizez remmc barkod2
  zavMC CenaMCBezNDS:double SkidkaMC:double MaxProc kodpart namepart godnpart zavpart
  dAnalPart nAnalPart dSertPart nSertPart
  attr1 attr2 attr3 attr4 attr5
  attrmc1 attrmc2 attrmc3 attrmc4 attrmc5
  ed koef edkod edtorg koeftorg nvagon nkvit kol:double procub kolskl
  cena:double summa:double cenar:double cenaNR:double
  VlSkidPos
  skidka:double skidkar:double
  cenaBez:double cenaBezr:double sBez:double sBezR:double
  NewCena:double NewCenaR:double NewSumma:double NewSummaR:double
  Nal1 Nal1R Nal2 Nal2R Nal3 Nal3R Nal4 Nal4R
  Nal5 Nal5R Nal6 Nal6R NalOst NalOstR
  Nds:double Ndsr:double ProcNds:double IsExistNDS:boolean Nds10:double Nds10r:double
  Nds20:double Nds20r:double
  Ak:double Akr:double
  GSM:double GSMr:double
  NSel:double NSelr:double
  FirstCena:double  UchetCena:double OtpCena:double
  tu:double tuNDS:double tuALL:double
SumNadb1:double SumNadb2:double
SumSkidPos:double SumSkidPosR:double
i1 SumPos SumPosR
i2:double i2r:double
i2New:double i2NewR:double
n1 n2:double n2doc n2r:double n2rRub
c1 c2:double c2doc c2r:double c2rRub
p1 p2:double p2doc p2r:double p2rRub
n12 n12r
n22 n22r
g1  g1r
op1 op2:double op2Doc op2r op2rRub
d1 d2:double d3
SkRub:double SDen
SkNDE:double SNDE
k1:double k1r:double
po1:double po1r
no1:double no1r
NDSNew:double NDSNewR:double
k3 k3r k4 k5 k7 kDay TaraVoz

Director:string
Main_Buh:string
  page_symb
.endfields
.{
wCountry ^
sdoc ^  srub ^
UnnName ^ MFOBIK ^
BaseDocNrec ^
mnd ^ nomer ^ ddoc ^
RealSkidPercent ^
FIOman ^
post ^ nRecMy ^ bpost ^ bpost2 ^ postbankadr ^ rspost ^ mpost ^ rspost2 ^ mpost2 ^ adpost ^ SFAdrPostMy ^ SFAdrJurMy ^ telpost ^
innpost ^ KODPLATNDS_post ^ KodNDS_post_NotSF ^ tippost ^ OKPOpost ^ okonhpost ^ citypost^
grpost ^ nRecGrOtp ^ gradpost ^ grSFAdrPostOtp ^ grSFAdrJurOtp ^ grtelpost ^ inngrpost ^ tipgrpost ^
grotbank ^ grpostbankadr ^ grotmfo1 ^ grotmfo2 ^ grotschet1 ^ grotschet2 ^
HeadOrg ^ pol ^ bpol ^ bpol2 ^ polbankadr ^ rspol ^ mpol ^ rspol2 ^ mpol2 ^ adpol ^ SFAdrPostPol ^ SFAdrJurPol ^ telpol ^
innpol ^ KODPLATNDS_pol ^ KodNDS_pol_NotSF ^ tippol ^ OKPOpol ^ okonhpol ^ citypol ^
Bank_Korr ^ BankHead_Korr ^ BankAdr_Korr ^ Schet1_Korr ^ MFO1_Korr ^ Schet2_Korr ^ MFO2_Korr ^
dogo ^ addogo ^ SFAdrPostdogo ^ SFAdrJurdogo ^ teldogo ^ inndogo ^ KodPlatNDS_dogo ^ tipdogo ^ OKPOdogo ^ okonhdogo ^ citydogo ^
dogp ^ addogp ^ SFAdrPostdogp ^ SFAdrJurdogp ^ teldogp ^ inndogp ^ KodPlatNDS_dogp ^ tipdogp ^ OKPOdogp ^ okonhdogp ^ citydogp ^
grpol ^ gradpol ^ grSFAdrPostPol ^ grSFAdrJurPol ^ grtelpol ^ inngrpol ^ tipgrpol ^
grpolbank ^ grpolbankadr ^ grpolmfo1 ^ grpolmfo2 ^ grpolschet1 ^grpolschet2 ^
pname ^ kategor ^
TTNatp_Name ^ Driver_Name ^ TTNplist ^ TTNnDov ^
Transp_Nomer ^ TTNpunkt_Name ^
.{ CheckEnter IsBaseFin
BaseFinNumber ^ BaseFinDate ^
.}
.{ CheckEnter IsExClass
  ClName ^ ClValue ^ ClCode ^
.}
.{ CheckEnter IsGroup
GrName ^ GrSum ^ GrDate ^ GrKod ^
.}
Nsert ^ NKont ^ KontPri ^ oplmax ^ skl ^ strkurs ^
.{
np ^ AtrSpSopr ^ PosNrec ^ PrMCUS ^ barkod ^ mc ^ edname ^ massa ^ sizex ^ sizey ^ sizez ^ remmc ^ barkod2 ^
zavMC ^ CenaMCBezNDS ^ SkidkaMC ^ MaxProc ^ kodpart ^ namepart ^ godnpart ^ zavpart ^
dAnalPart ^ nAnalPart ^ dSertPart ^ nSertPart ^
attr1 ^ attr2 ^ attr3 ^ attr4 ^ attr5 ^
attrmc1 ^ attrmc2 ^ attrmc3 ^ attrmc4 ^ attrmc5 ^
ed ^ koef ^ edkod ^ edtorg ^ koeftorg ^ nvagon ^ nkvit ^ kol ^ procub ^ kolskl ^
cena ^ summa ^ cenar ^ cenaNR ^
VlSkidPos ^
skidka ^ skidkar ^
cenaBez ^ cenaBezr ^ sBez ^ sBezR ^
NewCena ^ NewCenaR ^ NewSumma ^ NewSummaR ^
Nal1 ^ Nal1R ^ Nal2 ^ Nal2R ^ Nal3 ^ Nal3R ^ Nal4 ^ Nal4R ^
Nal5 ^ Nal5R ^ Nal6 ^ Nal6R ^ NalOst ^ NalOstR ^
Nds ^ Ndsr ^ ProcNds ^ IsExistNDS ^ Nds10 ^ Nds10r ^ Nds20 ^ Nds20r ^
Ak ^ Akr ^ GSM ^ GSMr ^ NSel^ NSelr^
.begin
 summar := cenaNR;
 end.
 FirstCena ^  UchetCena ^ OtpCena ^
 tu ^ tuNDS ^ tuALL ^
.}
SumNadb1 ^ SumNadb2 ^
SumSkidPos ^ SumSkidPosR ^
i1 ^ SumPos ^ SumPosR ^
i2 ^ i2r ^
i2New ^ i2NewR ^
n1 ^ n2 ^ n2Doc ^ n2r ^ n2rRub ^
c1 ^ c2 ^ c2Doc ^ c2r ^ c2rRub ^
p1 ^ p2 ^ p2Doc ^ p2r ^ p2rRub ^
n12 ^ n12r ^
n22 ^ n22r ^
g1 ^ g1r ^
op1 ^ op2 ^ op2Doc ^ op2r ^ op2rRub ^
d1 ^ d2 ^ d3 ^
SkRub ^ SDen ^
SkNDE ^ SNDE ^
k1 ^ k1r ^
po1 ^ po1r ^
no1 ^ no1r ^
NDSNew ^ NDSNewR ^
k3 ^ k3r ^ k4 ^ k5 ^ k7 ^ kDay ^ TaraVoz ^
Director ^  Main_Buh ^
.if Delimiter

.end
^
.}
.endform