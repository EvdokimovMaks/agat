! ╔═════════════════════════════════════════════════════════════════════════╗
! ║  Разработал:  Кондраль В.А.                                             ║
! ║  Назначение:  Счета, договара продаж , закупок, консигнации             ║
! ╚═════════════════════════════════════════════════════════════════════════╝
#doc
Счета, договара продаж , закупок, консигнации
#end
.Set Name = 'PRBDOCR'
! sdoc - символ денежной единицы документа
! srub - символ НДЕ
! UnnName - УНН/ИНН
! MFOBIK - МФО/БИК
! BaseDocNrec - системный номер документа
! mnd  - дескриптор менеджера
! nomer, ddoc - номер и дата документа
! RealSkidPercent - реальный процент скидки к документу
! post bpost rspost mpost rspost2 mpost2 adpost telpost innpost tippost
! OKPOpost okonhpost citypost
! postbankadr - атрибуты нашей фирмы
! grpost gradpost grtelpost inngrpost tipgrpost
! grotbank grotmfo1 grotmfo2 grotschet1 grotschet2
! grpostbankadr- атрибуты грузоотправителя
! pol bpol rspol mpol rspol2 mpol2 adpol telpol innpol tippol
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
!             cena, cenar (цена в sdoc и srub)
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
!             Nds, Ndsr, ProcNds (НДС в sdoc и srub и ставка)
!             Nds10, Nds10r (НДС по ставке 10% в sdoc и srub)
!             Ak, Akr (Акциз  в sdoc и srub)
!             FirstCena, UchetCena, OtpCena (заводская, учетная, отпускная цена)
! SumNadb1, SumNadb2 (Сумма надбавок: 1 учетная-заводская, 2 отпускная-учетная)
! SumSkidPos, SumSkidPosR (сумма скидок по позиции)
! i1 (строка Итого)
! SumPos, SumPosR (сумма позиций по документу)
! i2 i2r (Итого по сумме позиций в sdoc и srub)
! i2New, i2NewR (Итого по счету в NewCena в sdoc и srub)
! n1, n2, n2doc, n2r, n2rRub (ставка и величина НДС в sdoc и srub)
! c1, c2, c2doc , c2r, c2rRub (ставка и величина Акциза в sdoc и srub)
! n12, n12r (величина НДС 10 % в sdoc и srub)
! op1 (строка Итого с учетом налогов)
! op2, op2doc, op2r, op2rRub (итого без скидки по ДО в sdoc и srub)
! d1 (строка Скидка к сумме по документу)
! d2 - скидка, d3 - % или sdoc
! SkRub, SDen - величина скидки в ден.ед. документа и символ валюты ДО
! SkNDE, SNDE - величина скидки в НДЕ и символ НДЕ
! k1, k1r - итого к оплате в  sdoc и srub
! NDSNew, NDSNewR   - налоги по документу с учетом скидок
! k3, k3r - итого прописью  в sdoc и srub
! k4, k5 - процент к курсу при оплате
! kDay - срок действия документа в днях
.hide
!.group 'Продажа'
.var
 summa  : double
 summar : double
.endvar
.fields
  sdoc srub
  UnnName
  MFOBIK
  BaseDocNrec:comp
  mnd nomer ddoc
  RealSkidPercent:double
  FIOman
  post bpost postbankadr rspost mpost rspost2 mpost2 adpost telpost innpost tippost OKPOpost okonhpost citypost
  grpost gradpost grtelpost inngrpost tipgrpost
    grotbank grpostbankadr grotmfo1 grotmfo2 grotschet1 grotschet2
  pol bpol polbankadr rspol mpol rspol2 mpol2 adpol telpol innpol tippol OKPOpol okonhpol citypol
  grpol gradpol grtelpol inngrpol tipgrpol
    grpolbank grpolbankadr grpolmfo1 grpolmfo2 grpolschet1 grpolschet2
  pname kategor
  TTNatp_Name Driver_Name TTNplist TTNnDov
  Transp_Nomer TTNpunkt_Name
  ClName ClValue ClCode
  GrName GrSum GrDate GrKod
  Nsert NKont KontPri oplmax skl StrKurs

  НДС_в_цене   : boolean
  Акциз_в_цене : boolean

! - Спецификация -
  np AtrSpSopr PosNrec:comp PrMCUS barkod mc edname massa sizex sizey sizez remmc barkod2
  zavMC MaxProc kodpart namepart godnpart zavpart
  dAnalPart nAnalPart dSertPart nSertPart
  attr1 attr2 attr3 attr4 attr5
  attrmc1 attrmc2 attrmc3 attrmc4 attrmc5
  ed koef edtorg koeftorg nvagon nkvit kol:double procub kolskl
  cena:double  cenar:double
  VlSkidPos
  skidka:double skidkar:double
  cenaBez:double cenaBezr:double sBez:double sBezR:double
  NewCena:double NewCenaR:double NewSumma:double NewSummaR:double
  Nal1 Nal1R Nal2 Nal2R Nal3 Nal3R Nal4 Nal4R
  Nal5 Nal5R Nal6 Nal6R NalOst NalOstR
  Nds:double Ndsr:double ProcNds Nds10:double Nds10r:double
  Ak:double Akr:double

  //розница
  FirstCena:double    //заводская цена
  UchetCena:double    //закупочная цена в НДЕ
  OtpCena:double      //розничная цена
  ProdCena:double     //продажная цена
  OptNadb:double      //% оптовой надбавки
  RoznNadb:double     //% розничной надбавки
  RoznNadbSum:double  //сумма розничной надбавки
  NalProd:double      //налог с продаж

SumNadb1:double SumNadb2:double

SumSkidPos:double SumSkidPosR:double
i1 SumPos SumPosR
i2:double i2r:double
i2New:double i2NewR:double
ItogSumNalProd: double
n1 n2:double n2doc n2r:double n2rRub
c1 c2:double c2doc c2r:double c2rRub
n12 n12r
op1 op2:double op2Doc op2r op2rRub
d1 d2:double d3
SkRub:double SDen
SkNDE:double SNDE
k1:double k1r NDSNew:double NDSNewR:double
k3 k3r k4 k5 kDay

Director:string
Main_Buh:string

  page_symb
.endfields
.{
sdoc ^  srub ^
UnnName ^ MFOBIK ^
BaseDocNrec ^
mnd ^ nomer ^ ddoc ^
RealSkidPercent ^
FIOman ^
post ^ bpost ^ postbankadr ^ rspost ^ mpost ^ rspost2 ^ mpost2 ^ adpost ^ telpost ^
innpost ^ tippost ^ OKPOpost ^ okonhpost ^ citypost^
grpost ^ gradpost ^ grtelpost ^ inngrpost ^ tipgrpost ^
grotbank ^ grpostbankadr ^ grotmfo1 ^ grotmfo2 ^ grotschet1 ^ grotschet2 ^
pol ^ bpol ^ polbankadr ^ rspol ^ mpol ^ rspol2 ^ mpol2 ^ adpol ^ telpol ^
innpol ^ tippol ^ OKPOpol ^ okonhpol ^ citypol ^
grpol ^ gradpol ^ grtelpol ^ inngrpol ^ tipgrpol ^
grpolbank ^ grpolbankadr ^ grpolmfo1 ^ grpolmfo2 ^ grpolschet1 ^grpolschet2 ^
pname ^ kategor ^
TTNatp_Name ^ Driver_Name ^ TTNplist ^ TTNnDov ^
Transp_Nomer ^ TTNpunkt_Name ^
.{ CheckEnter IsExClassRozn
  ClName ^ ClValue ^ ClCode ^
.}
.{ CheckEnter IsGroupRozn
GrName ^ GrSum ^ GrDate ^ GrKod ^
.}
Nsert ^ NKont ^ KontPri ^ oplmax ^ skl ^ strkurs ^

НДС_в_цене ^   Акциз_в_цене ^

.{
np ^ AtrSpSopr ^ PosNrec ^ PrMCUS ^ barkod ^ mc ^ edname ^ massa ^ sizex ^ sizey ^ sizez ^ remmc ^ barkod2 ^
zavMC ^ MaxProc ^ kodpart ^ namepart ^ godnpart ^ zavpart ^
dAnalPart ^ nAnalPart ^ dSertPart ^ nSertPart ^
attr1 ^ attr2 ^ attr3 ^ attr4 ^ attr5 ^
attrmc1 ^ attrmc2 ^ attrmc3 ^ attrmc4 ^ attrmc5 ^
ed ^ koef ^ edtorg ^ koeftorg ^ nvagon ^ nkvit ^ kol ^ procub ^ kolskl ^
cena ^ cenar ^
VlSkidPos ^
skidka ^ skidkar ^
cenaBez ^ cenaBezr ^ sBez ^ sBezR ^
NewCena ^ NewCenaR ^ NewSumma ^ NewSummaR ^
Nal1 ^ Nal1R ^ Nal2 ^ Nal2R ^ Nal3 ^ Nal3R ^ Nal4 ^ Nal4R ^
Nal5 ^ Nal5R ^ Nal6 ^ Nal6R ^ NalOst ^ NalOstR ^
Nds ^ Ndsr ^ ProcNds ^ Nds10 ^ Nds10r ^
Ak ^ Akr ^
.begin
 summa := FRoundRub5 ( cena * kol );
 summar := FRoundRub5 (cenar * kol );
 end.
 FirstCena ^  UchetCena ^ OtpCena ^ ProdCena ^
 OptNadb ^ RoznNadb ^ RoznNadbSum ^ NalProd ^
.}
SumNadb1 ^ SumNadb2 ^
SumSkidPos ^ SumSkidPosR ^
i1 ^ SumPos ^ SumPosR ^
i2 ^ i2r ^
i2New ^ i2NewR ^
ItogSumNalProd ^
n1 ^ n2 ^ n2Doc ^ n2r ^ n2rRub ^
c1 ^ c2 ^ c2Doc ^ c2r ^ c2rRub ^
n12 ^ n12r ^
op1 ^ op2 ^ op2Doc ^ op2r ^ op2rRub ^
d1 ^ d2 ^ d3 ^
SkRub ^ SDen ^
SkNDE ^ SNDE ^
k1 ^ k1r ^ NDSNew ^ NDSNewR ^
k3 ^ k3r ^ k4 ^ k5 ^ kDay ^
.if DelimiterRozn

.end
Director ^  Main_Buh ^
^
.}
.endform