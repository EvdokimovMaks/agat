.set name='Form_SDOC'
.Hide
.NameInList 'Базовая форма'

.Fields
OrgOKUD                             //1
OrgOKULP                            //2
NameOrganization                    //3

NomerPP                             //4.1
NomerDocumenta                      //4
DateCreate                          //5
KodVidaOperation                    //6
DateEnd                             //7
OtpravitelStrukturPodrazdelenie     //8
VidDeatelnostOtpravitel             //9
PoluchatelStrukturPodrazdelenie     //10
VidDeatelnostPoluchatel             //11
KorSchetSubSchet                    //12
KorSchetKAU                         //13

  NameMateriala                     //14
  NomenklNomer                      //15
  EdIzmerKOD                        //16
  EdIzmName                         //17

  LIMIT                             //18
  PoradNomerPoKSU                   //19
  WsegoOtpuschenoSWozwratom         //20
  PriceEdIzm                        //21
  SummaBezNDS                       //22

    DateRecord1                     //23
    Kolichwo1                       //24
    OstatokLIMITA1                  //25
    DateRecord2                     //26
    Kolichwo2                       //27
    OstatokLIMITA2                  //28
    DateRecord3                     //29
    Kolichwo3                       //30
    OstatokLIMITA3                  //31

.EndFields


.{

 ОКУД @@@@@@@@@@@@@@@@@
 ОКЮЛП @@@@@@@@@@@@@@@@@
 Организация  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

 ЛИМИТНО-ЗАБОРНАЯ КАРТА ^

 НомДок ДатаСост ВидОпер  ПерДейст Откуда   ДеятОтк  Куда     ДеятКуда Счет  КАУ
 @@@@@@ &&&&&&&& &&&&&&&& &&&&&&&& &&&&&&&& &&&&&&&& &&&&&&&& &&&&&&&& &&&&& &&&&&


 Материал          НоменклНомер     КодЕдИзм  ЕдИзмерен
 @@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@  @@@@@@@@@ @@@@@@@@@@@

 Лимит  ПорНомерСкладКарт ВсегоОтпущено Цена  Стоимость
 &&&&&&&&&&&&&& &&&&&&&&& &&&&&&&&&&&&& &&&&& &&&&&&&&&

			Дата        Количество     Остаток лимита  Подпись заведующего складом или получателя
.{
    @@@@@@@@@@  &&&&&&&&&&&&&&   &&&&&&&&&&&&&&
.}
.{
    @@@@@@@@@@  &&&&&&&&&&&&&&   &&&&&&&&&&&&&&
.}
.{
    @@@@@@@@@@  &&&&&&&&&&&&&&   &&&&&&&&&&&&&&
.}

Руководитель подразделения,
установившего лимит                  _________________________   ______________     _____________________________
                                              должность            подпись                расшифровка подписи

Заведующий складом   _______________________     _____________________________
                                подпись                    расшифровка подписи
.}
.endform


.set  name='Form_SDOC1'
.Hide
.NameInList 'Акт на дополнительный отпуск'
.Fields
OrgOKUD                             //1
OrgOKULP                            //2
NameOrganization                    //3
Persons                             //4

NomerDocumenta                      //5
DateCreate                          //6

KodVidaOperation                    //7
OtpravitelStrukturPodrazdelenie     //8
VidDeatelnostOtpravitel             //9
PoluchatelStrukturPodrazdelenie     //10
VidDeatelnostPoluchatel             //11
KorSchetSubSchet                    //12
KorSchetKAU                         //13

  NameMateriala                     //14
  NomenklNomer                      //15
  EdIzmerKOD                        //16
  EdIzmName                         //17

  LIMIT                             //18
  PoradNomerPoKSU                   //19
  WsegoOtpuschenoSWozwratom         //20
  PriceEdIzm                        //21
  SummaBezNDS                       //22

.EndFields


.{

@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@

^ ^

 @@@@@@ &&&&&&&& &&&&&&&& &&&&&&&& &&&&&&&& &&&&&&&& &&&&&&&&

.{
 @@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@  @@@@@@@@@ @@@@@@@@@@@

 &&&&&&&&&&&&&& &&&&&&&&& &&&&&&&&&&&&& &&&&& &&&&&&&&&
.}

.}
.endform


