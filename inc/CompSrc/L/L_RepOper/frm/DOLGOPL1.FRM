//------------------------------------------------------------------------------
//                                                      (c) ╙╝Ю╞╝Ю═Ф╗О ┐═╚═╙Б╗╙═
// ┐═╚═╙Б╗╙═ 5.00 - ▌БГ╔БК ╙╝╜БЦЮ═ ╚╝ё╗АБ╗╙╗
// ▌БГ╔Б Ю╔═╚╗╖═Ф╗╗ ╒ ╜═БЦЮ═╚Л╜КЕ ╞╝╙═╖═Б╔╚ОЕ
//------------------------------------------------------------------------------

#doc
▌БГ╔Б Ю╔═╚╗╖═Ф╗╗ ╒ ╜═БЦЮ═╚Л╜КЕ ╞╝╙═╖═Б╔╚ОЕ
#end
.set name='DolgOpl1'
.hide
.var
  sKontrTxt  : string
  sKontrTxt1 : string
.endvar
.fields
  wDirect     :word              //00
  d1          :date              //01
  d2          :date              //02
  d3          :date              //03
  d4          :date              //03a
  AllDescr    :word              //04a
  AllKontr    :word              //04
  AllOtvPodr  :word              //04b
  AllParty    :word              //041 AllParty
  AllMcUsl    :word              //042 AllMcUsl
  NaklAkt     :word              //043 NaklAkt

  AllDescrTxt :String            //044a AllDescr
  AllKontrTxt :String            //044 AllKontr
  AllOtvPodrTxt:String          //044b AllOtvPodr
  AllPartyTxt :String            //045 AllParty
  AllMcUslTxt :String            //046 AllMcUsl
  AllDescrVTxt:String            //047a AllDescr
  AllKontrVTxt:String            //047 AllKontr
  AllOtvPodrVTxt:String         //047b AllOtvPodr
  AllPartyVTxt:String            //048 AllParty
  AllMcUslVTxt:String            //049 AllMcUsl

  DopNalogTxt :String            //050 DopNalog

  PrNds1      :Double            //08
  PrNds2      :Double            //09
  pEdName     :String            //10
  ByOpr       :word              //11
  Detal       :word              //12
  RubTysMln   :Word              //13 0-╒ ЮЦ║╚ОЕ 1-╒ БКАОГ═Е 2-╒ ╛╗╚╚╗╝╜═Е
  TysEd       :Word              //14 0-╒ ЦГ╔Б╜КЕ ╔╓. 1-╒ БКАОГ═Е ЦГ.╔╓ 2-╛╚╜

  VidOplMoneyTxt    : string     //15   ╒Е╝╓ОИ╔╔ ╞╚═Б╔╕╜╝╔ ╞╝ЮЦГ╔╜╗╔
  VidOplVzachetTxt  : string     //16   ═╙Б ╒╖═╗╛╝╖═Г╔Б╝╒
  VidOplOVexelTxt   : string     //17   ╞╝ё═Х╔╜╗╔ А╝║АБ╒╔╜╜КЕ ╒╔╙А╔╚╔╘
  VidOplSVexelTxt   : string     //18   ╞╝╚ЦГ╔╜╗╔ АБ╝Ю╝╜╜╗Е ╒╔╙А╔╚╔╘
.endfields
        a   a
   aa 123445677890
0123344444444444445 8901234 5678
^^^^^^^^^^^^^^^^^^^ ^^^^^^^ ^^^^
  ^^^
.begin
  if (wDirect = 1)
   {
     sKontrTxt := '▐╝╙Ц╞═Б╔╚Л';
     sKontrTxt1:= '╞╝╙Ц╞═Б╔╚Н';
   }
  else
   if (wDirect = 2)
    {
        sKontrTxt := '▐╝АБ═╒И╗╙ ';
        sKontrTxt1:= '╞╝АБ═╒И╗╙Ц';
    }
   else
    {
      sKontrTxt := '          ';
      sKontrTxt1:= '          ';
    }
end.
.{CheckEnter pAllKontr
.fields
  KontrGrDoName:string
.endfields
^
.}
.{CheckEnter pAllOtvPodr
.fields
  OtvPodrDoName:string
.endfields
^
.}
.{CheckEnter pAllParty
.fields
  PartyName:string
.endfields
^
.}
.{CheckEnter pAllMcUsl
.fields
  McUslName:string
.endfields
^
.}
.{CheckEnter DOOrg
.fields
  nOrg        :Longint           //01
  OrgName     :String            //02
  OrgNRec     :comp              //03
 .endfields
123
^^^
.{CheckEnter DOGrDOG                     // shaf
.fields
  nGrDog     :LongInt             //01
  GrDOGName  :String              //02
  GrDOGCode  :String              //03
  GrDOGNRec  :comp                //04
.endfields
1234
^^^^
.{CheckEnter DODOG                      // shaf
.fields
  nRecDog     :comp               //00
  nDog        :Longint            //01
  DOGNumDescr :String             //02
  DOGDate     :date               //03
.endfields
0123
^^^^
.{CheckEnter DOGrDO
.fields
  nGrDo     :LongInt             //01
  GrDOName  :String              //02
  GrDOCode  :String              //03
  GrDoNRec  :comp                //04
.endfields
1234
^^^^
.{CheckEnter DODO
.fields
  nRecDo     :comp               //00   //Shaf
  nDo        :Longint            //01
  DONumDescr :String             //02
  DODate     :date               //03
.endfields
0123
^^^^
.{CheckEnter DOSp
.fields
  nRecMcUsl           :comp         //-01
  nRecSpSopr          :comp         //00
  nSp                 :longint      //01
  McName              :String       //02
  OtpEdName           :String       //03
  OtpEdKoef           :double       //04
  OtpEdPrice          :double       //05
  OtpEdPriceNds1      :double       //06
  OtpEdPriceNds2      :double       //07
  OtpEdPriceDopNalog  :double       //07a
  OtpEdKolDolg        :double       //08
  OtpEdKolOtgr        :double       //09
  OtpEdKolOpl         :double       //10
  EdName              :String       //11
  Dolg1Kol            :double       //12
  Dolg1Sum            :double       //13
  OtgrKol             :double       //14
  OtgrSumNoNds        :double       //15
  OtgrSumNds1         :double       //16
  OtgrSumNds2         :double       //17
  OtgrSumDopNalog     :double       //17a
  OtgrSum             :double       //18
  OplKol              :double       //19
  OplSumNoNds         :double       //20
  OplSumNds1          :double       //21
  OplSumNds2          :double       //22
  OplSumDopNalog      :double       //22a
  OplSum              :double       //23
  Dolg2Kol            :double       //24
  Dolg2Sum            :double       //25
  VidOpl              :string       //26
.endfields
        a          a     a
 012345677890123456778901223456
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.}
.fields
  nSpDo           :longint           //01
  DODolg1Kol      :double            //02
  DODolg1Sum      :double            //03
  DOOtgrKol       :double            //04
  DOOtgrSum       :double            //05
  DOOtgrSumNds1   :double            //06
  DOOtgrSumNds2   :double            //07
  DOOtgrSumNoNds  :double            //08
  DOOtgrSumDopNalog :double           //08a
  DOOplKol        :double            //09
  DOOplSum        :double            //10
  DOOplSumNds1    :double            //11
  DOOplSumNds2    :double            //12
  DOOplSumNoNds   :double            //13
  DOOplSumDopNalog :double            //13a
  DODolg2Kol      :double            //14
  DODolg2Sum      :double            //15
.endfields
!       a     a
12345678890123345
^^^^^^^^^^^^^^^^^
.}
.fields
  nDoGrDo         :longint            //01
  GrDODolg1Kol    :double             //02
  GrDODolg1Sum    :double             //03
  GrDOOtgrKol     :double             //04
  GrDOOtgrSum     :double             //05
  GrDOOtgrSumNds1 :double             //06
  GrDOOtgrSumNds2 :double             //07
  GrDOOtgrSumNoNds:double             //08
  GrDOOtgrSumDopNalog :double             //08a
  GrDOOplKol      :double             //09
  GrDOOplSum      :double             //10
  GrDOOplSumNds1  :double             //11
  GrDOOplSumNds2  :double             //12
  GrDOOplSumNoNds :double             //13
  GrDOOplSumDopNalog :double             //13a
  GrDODolg2Kol    :double             //14
  GrDODolg2Sum    :double             //15
.endfields
!       a     a
12345678890123345
^^^^^^^^^^^^^^^^^
.}
.fields
  nSpDog           :longint           //01
  DOGDolg1Kol      :double            //02
  DOGDolg1Sum      :double            //03
  DOGOtgrKol       :double            //04
  DOGOtgrSum       :double            //05
  DOGOtgrSumNds1   :double            //06
  DOGOtgrSumNds2   :double            //07
  DOGOtgrSumNoNds  :double            //08
  DOGOtgrSumDopNalog :double           //08a
  DOGOplKol        :double            //09
  DOGOplSum        :double            //10
  DOGOplSumNds1    :double            //11
  DOGOplSumNds2    :double            //12
  DOGOplSumNoNds   :double            //13
  DOGOplSumDopNalog :double            //13a
  DOGDolg2Kol      :double            //14
  DOGDolg2Sum      :double            //15
.endfields
!       a     a
12345678890123345
^^^^^^^^^^^^^^^^^
.}
.fields
  nDoGrDog         :longint            //01
  GrDOGDolg1Kol    :double             //02
  GrDOGDolg1Sum    :double             //03
  GrDOGOtgrKol     :double             //04
  GrDOGOtgrSum     :double             //05
  GrDOGOtgrSumNds1 :double             //06
  GrDOGOtgrSumNds2 :double             //07
  GrDOGOtgrSumNoNds:double             //08
  GrDOGOtgrSumDopNalog :double             //08a
  GrDOGOplKol      :double             //09
  GrDOGOplSum      :double             //10
  GrDOGOplSumNds1  :double             //11
  GrDOGOplSumNds2  :double             //12
  GrDOGOplSumNoNds :double             //13
  GrDOGOplSumDopNalog :double             //13a
  GrDOGDolg2Kol    :double             //14
  GrDOGDolg2Sum    :double             //15
.endfields
!       a     a
12345678890123345
^^^^^^^^^^^^^^^^^
.}
.fields
  nGrDoOrg           :longint          //01
  OrgDolg1Kol        :double           //02
  OrgDolg1Sum        :double           //03
  OrgOtgrKol         :double           //04
  OrgOtgrSum         :double           //05
  OrgOtgrSumNds1     :double           //06
  OrgOtgrSumNds2     :double           //07
  OrgOtgrSumNoNds    :double           //08
  OrgOtgrSumDOpNalog :double           //08a
  OrgOplKol          :double           //09
  OrgOplSum          :double           //10
  OrgOplSumNds1      :double           //11
  OrgOplSumNds2      :double           //12
  OrgOplSumNoNds     :double           //13
  OrgOplSumDopNalog  :double           //13a
  OrgDolg2Kol        :double           //14
  OrgDolg2Sum        :double           //15
//  TiDkGal = 2
  OrgMoneyOplKol            : double   //16
  OrgMoneyOplSum            : double   //17
  OrgMoneyOplSumNds1        : double   //18
  OrgMoneyOplSumNds2        : double   //19
  OrgMoneyOplSumNoNds       : double   //20
  OrgMoneyOplSumDopNalog    : double   //21
//  TiDkGal = 70
  OrgVzachetOplKol          : double   //22
  OrgVzachetOplSum          : double   //23
  OrgVzachetOplSumNds1      : double   //24
  OrgVzachetOplSumNds2      : double   //25
  OrgVzachetOplSumNoNds     : double   //26
  OrgVzachetOplSumDopNalog  : double   //27
//  TiDkGal = 82
  OrgOVexelOplKol           : double   //28
  OrgOVexelOplSum           : double   //29
  OrgOVexelOplSumNds1       : double   //30
  OrgOVexelOplSumNds2       : double   //31
  OrgOVexelOplSumNoNds      : double   //32
  OrgOVexelOplSumDopNalog   : double   //33
//  TiDkGal = 84
  OrgSVexelOplKol           : double   //34
  OrgSVexelOplSum           : double   //35
  OrgSVexelOplSumNds1       : double   //36
  OrgSVexelOplSumNds2       : double   //37
  OrgSVexelOplSumNoNds      : double   //38
  OrgSVexelOplSumDopNalog   : double   //39
.endfields
!       a     a
12345678890123345 678901234567890123456789
^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^^^^^^^
.}
.fields
  nOrgRep             :longint       //01
  RepDolg1Kol         :double        //02
  RepDolg1Sum         :double        //03
  RepOtgrKol          :double        //04
  RepOtgrSum          :double        //05
  RepOtgrSumNds1      :double        //06
  RepOtgrSumNds2      :double        //07
  RepOtgrSumNoNds     :double        //08
  RepOtgrSumDopNalog  :double        //08a
  RepOplKol           :double        //09
  RepOplSum           :double        //10
  RepOplSumNds1       :double        //11
  RepOplSumNds2       :double        //12
  RepOplSumNoNds      :double        //13
  RepOplSumDopNalog   :double        //13a
  RepDolg2Kol         :double        //14
  RepDolg2Sum         :double        //15
//  TiDkGal = 2
  RepMoneyOplKol            : double   //16
  RepMoneyOplSum            : double   //17
  RepMoneyOplSumNds1        : double   //18
  RepMoneyOplSumNds2        : double   //19
  RepMoneyOplSumNoNds       : double   //20
  RepMoneyOplSumDopNalog    : double   //21
//  TiDkGal = 70
  RepVzachetOplKol          : double   //22
  RepVzachetOplSum          : double   //23
  RepVzachetOplSumNds1      : double   //24
  RepVzachetOplSumNds2      : double   //25
  RepVzachetOplSumNoNds     : double   //26
  RepVzachetOplSumDopNalog  : double   //27
//  TiDkGal = 82
  RepOVexelOplKol           : double   //28
  RepOVexelOplSum           : double   //29
  RepOVexelOplSumNds1       : double   //30
  RepOVexelOplSumNds2       : double   //31
  RepOVexelOplSumNoNds      : double   //32
  RepOVexelOplSumDopNalog   : double   //33
//  TiDkGal = 84
  RepSVexelOplKol           : double   //34
  RepSVexelOplSum           : double   //35
  RepSVexelOplSumNds1       : double   //36
  RepSVexelOplSumNds2       : double   //37
  RepSVexelOplSumNoNds      : double   //38
  RepSVexelOplSumDopNalog   : double   //39
.endfields
!       a     a
12345678890123345 678901234567890123456789
^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^^^^^^^
.endform

!--------------------------------------------------------------------------------------------------------------------

#doc
▌БГ╔Б Ю╔═╚╗╖═Ф╗╗ ╒ ╜═БЦЮ═╚Л╜КЕ ╞╝╙═╖═Б╔╚ОЕ
#end
.linkform 'DolgOpl1_01' prototype is 'DolgOpl1'
.NameInList '▌БГ╔Б Ю╔═╚╗╖═Ф╗╗ ╒ ╜═БЦЮ═╚Л╜КЕ ╞╝╙═╖═Б╔╚ОЕ'
.Group '▒ ёЮ═Д╝╘ <█═╗╛╔╜╝╒═╜╗╔ ╛═БФ╔╜╜╝АБ╗/ЦА╚Цё╗>'
.fields
! Header ╜═ ╚╗АБ
 CommonFormHeader
  '▐╝ '+AllPartyTxt+' '+AllPartyVTxt+' ▐╝ '+AllMcUslTxt+' '+AllMcUslVTxt+
            if(pEdName='','',' ⌠Г.╔╓.: '+pEdName)
  DateToStr(d2,'DD/MM/YYYY')
  DateToStr(d3,'DD/MM/YYYY')
  '╞╝ '+if(ByOpr=0
          , '╒А╔╛ (╞╝ ╒К╞╗А╙╔)'
          , if(ByOpr=2
              ,'╒К╞╝╚╜╔╜╜К╛'
              ,'╒К╞╗А═╜╜К╛'
              )
          )+ if(NaklAkt=1
               ,' ╜═╙╚═╓╜К╛'
               , if(NaklAkt=2
                   ,' ═╙Б═╛'
                   ,' ╜═╙╚═╓╜К╛, ═╙Б═╛'
                   )
               ) +
          if(Longint(d1)=0,'',' А '+DateToStr(d1,'DD/MM/YYYY'))+
          if(longint(d4)=0,'',' ╞╝ '+DateToStr(d4,'DD/MM/YYYY'))
  '▌БёЮЦ╕╔╜╝ (╒К╞╝╚╜╔╜╝)'+
    if (TysEd=2,', ╒ ╛╗╚╚╗╝╜═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф'
       , if (TysEd=1,', ╒ БКАОГ═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф',''))+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))
  '▌╞╚═Г╔╜╝'+
    if (TysEd=2,', ╒ ╛╗╚╚╗╝╜═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф'
       , if (TysEd=1,', ╒ БКАОГ═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф',''))+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))
  if(TysEd=2,'(╒ ╛╚╜)',if(TysEd=1,'(╒ БКА)',''))
  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'
  PrNds1
  PrNds2
  PrNds1
  PrNds2
  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'

! ╝БГ╔Б
  CommonFormHeader
  '╞╝ '+if(ByOpr=0
          , '╒А╔╛ (╞╝ ╒К╞╗А╙╔)'
          , if(ByOpr=2
              ,'╒К╞╝╚╜╔╜╜К╛'
              ,'╒К╞╗А═╜╜К╛'
              )
          )+ if(NaklAkt=1
               ,' ╜═╙╚═╓╜К╛'
               , if(NaklAkt=2
                   ,' ═╙Б═╛'
                   ,' ╜═╙╚═╓╜К╛, ═╙Б═╛'
                   )
               ) +
          if(Longint(d1)=0,'',' А '+DateToStr(d1,'DD/MM/YYYY'))+
          if(longint(d4)=0,'',' ╞╝ '+DateToStr(d4,'DD/MM/YYYY'))
  DateToStr(d2,'DD/MM/YYYY')
  DateToStr(d3,'DD/MM/YYYY')
.endfields
.P 60
.[h SKIP
Ъ░Ъ│^Ъ│
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ▀╗АБ @NP@- 1  ╞╔Ю╗╝╓ А @@@@@@@@@@ ╞╝ @@@@@@@@@@ @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ▀╗АБ @NP@- 2
зддддддддддддддддддддбдддддддбдддддддддддддддддддддддддддбдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбддддддддддддддддддддддддддд©
Ё █═╗╛╔╜╝╒═╜╗╔       Ё⌠Г╔Б╜═ОЁ   ┌Е╝╓ОИ═О ╖═╓╝╚╕╔╜╜╝АБЛ  Ё@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё  ┬АЕ╝╓ОИ═О ╖═╓╝╚╕╔╜╜╝АБЛ  Ё
Ё ╛═БФ╔╜╜╝АБ╗ ╗╚╗    Ё╔╓╗╜╗Ф═цдддддддддбдддддддддддддддддедддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддедддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддедддддддддбддддддддддддддддд╢
Ё ЦА╚Цё╗             Ё@~@@@@@Ё  ┼╝╚-╒╝ Ё@~@@@@@@@@@@@@@@@Ё  ┼╝╚-╒╝ Ё ▒Ц╛╛═ ║╔╖ █└▒   Ё ▒Ц╛╛═ █└▒ (&.%) Ё ▒Ц╛╛═ █└▒ (&.%) Ё    ┌А╔ё╝ А █└▒  Ё  ┼╝╚-╒╝ Ё ▒Ц╛╛═ ║╔╖ █└▒   Ё ▒Ц╛╛═ █└▒ (&.%) Ё ▒Ц╛╛═ █└▒ (&.%) Ё    ┌А╔ё╝ А █└▒  Ё  ┼╝╚-╒╝ Ё@~@@@@@@@@@@@@@@@Ё
цддддддддддддддддддддедддддддедддддддддедддддддддддддддддедддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддеддддддддддддддддд╢
Ё          (1)       Ё  (2)  Ё   (3)   Ё       (4)       Ё   (5)   Ё        (6)      Ё        (7)      Ё        (8)      Ё       (9)       Ё   (10)  Ё       (11)      Ё       (12)      Ё       (13)      Ё       (14)      Ё   (15)  Ё       (16)      Ё
цддддддддддддддддддддадддддддадддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддаддддддддддддддддд╢Ъ░
.]h
Ъ│^
.{?Internal;(wDirect=1)
                ┌┘└▌▄▌▒▓° ▌▓┐░⌠┤┼┬ ┬ ░┘─▀┬┤─√┬┬ ┌ █─▓⌠░─▀°█⌡∙ ▐▌┼─┤─▓┘▀÷∙
.}
.{?Internal;(wDirect=2)
                ┌┘└▌▄▌▒▓° ▌▓┐░⌠┤┼┬ ┬ ┤─┼⌠▐┼┬ ┌ █─▓⌠░─▀°█⌡∙ ▐▌┼─┤─▓┘▀÷∙
.}

           @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

                         ╖═ ╞╔Ю╗╝╓ А @@@@@@@@@@ ╞╝ @@@@@@@@@@Ъ│

.fields
  '▐╝ '+AllDescrTxt+' '+AllDescrVTxt
  '▐╝ '+AllKontrTxt+' '+AllKontrVTxt
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.{CheckEnter pAllKontr
.fields
  KontrGrDoName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.{?Internal;(AllOtvPodr<>0 and (AllKontr=3))
.fields
  '▐╝ '+AllOtvPodrTxt
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.{CheckEnter pAllOtvPodr
.fields
  OtvPodrDoName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.fields
  '▐╝ '+AllPartyTxt+' '+AllPartyVTxt
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.{CheckEnter pAllParty
.fields
  PartyName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.fields
  '▐╝ '+AllMcUslTxt+' '+AllMcUslVTxt+
            if(pEdName='','',' ⌠Г╔Б╜═О ╔╓╗╜╗Ф═: '+pEdName)
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.{CheckEnter pAllMcUsl
.fields
  McUslName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.fields
  '▌БёЮЦ╕╔╜╝ (╒К╞╝╚╜╔╜╝)'+
    if (TysEd=2,', ╒ ╛╗╚╚╗╝╜═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф'
       , if (TysEd=1,', ╒ БКАОГ═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф',''))+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))
  '▌╞╚═Г╔╜╝'+
    if (TysEd=2,', ╒ ╛╗╚╚╗╝╜═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф'
       , if (TysEd=1,', ╒ БКАОГ═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф',''))+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))
  if(TysEd=2,'(╒ ╛╚╜)',if(TysEd=1,'(╒ БКА)',''))
  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'
  PrNds1
  PrNds2
  PrNds1
  PrNds2
  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'
.endfields
Ъ░                                                                                                                                ▀╗АБ  1 - 1                                                                                                  ▀╗АБ   1 - 2
зддддддддддддддддддддбдддддддбдддддддддддддддддддддддддддбдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбддддддддддддддддддддддддддд©
Ё █═╗╛╔╜╝╒═╜╗╔       Ё⌠Г╔Б╜═ОЁ   ┌Е╝╓ОИ═О ╖═╓╝╚╕╔╜╜╝АБЛ  Ё@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё  ┬АЕ╝╓ОИ═О ╖═╓╝╚╕╔╜╜╝АБЛ  Ё
Ё ╛═БФ╔╜╜╝АБ╗ ╗╚╗    Ё╔╓╗╜╗Ф═цдддддддддбдддддддддддддддддедддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддедддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддедддддддддбддддддддддддддддд╢
Ё ЦА╚Цё╗             Ё@~@@@@@Ё  ┼╝╚-╒╝ Ё@~@@@@@@@@@@@@@@@Ё  ┼╝╚-╒╝ Ё ▒Ц╛╛═ ║╔╖ █└▒   Ё ▒Ц╛╛═ █└▒ (&&%) Ё ▒Ц╛╛═ █└▒ (&&%) Ё    ┌А╔ё╝ А █└▒  Ё  ┼╝╚-╒╝ Ё ▒Ц╛╛═ ║╔╖ █└▒   Ё ▒Ц╛╛═ █└▒ (&.%) Ё ▒Ц╛╛═ █└▒ (&.%) Ё    ┌А╔ё╝ А █└▒  Ё  ┼╝╚-╒╝ Ё@~@@@@@@@@@@@@@@@Ё
цддддддддддддддддддддедддддддедддддддддедддддддддддддддддедддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддеддддддддддддддддд╢
Ё         (1)        Ё  (2)  Ё   (3)   Ё       (4)       Ё   (5)   Ё        (6)      Ё        (7)      Ё        (8)      Ё       (9)       Ё   (10)  Ё       (11)      Ё       (12)      Ё       (13)      Ё       (14)      Ё   (15)  Ё       (16)      Ё
цддддддддддддддддддддадддддддадддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддаддддддддддддддддд╢
.{CheckEnter DOOrg
.fields
            sKontrTxt   OrgName
.endfields
Ё                                                                                                                                                                                                                                                        Ё
Ё           @@@@@@@@@@: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё
.{CheckEnter DOGrDOG
.{?Internal;(AllKontr>=5)
.fields
                          GrDOGName
.endfields
Ё     ┐ЮЦ╞╞═ ╓╝ё╝╒╝Ю╝╒: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё
.}
.{CheckEnter DODOG
.{?Internal;(AllKontr>=4)
.fields
                          DOGNumDescr DateToStr(DOGDate,'DD/MM/YYYY')
.endfields
Ё              └╝ё╝╒╝Ю: @@@@@@@@@@@@@@@@@@@@ ╝Б @@@@@@@@@@                                                                                                                                                                                               Ё
.}
.{CheckEnter DOGrDO
.{?Internal;(AllKontr<4)
.fields
                          GrDOName
.endfields
Ё            ┐ЮЦ╞╞═ └▌: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё
.}
.{CheckEnter DODO
.fields
                          DONumDescr DateToStr(DODate,'DD/MM/YYYY')
.endfields
Ё   └╝╙Ц╛╔╜Б-╝А╜╝╒═╜╗╔: @@@@@@@@@@@@@@@@@@@@ ╝Б @@@@@@@@@@                                                                                                                                                                                               Ё
.{?Internal;(Detal=0)
цддддддддддддддддддддбдддддддбдддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбддддддддддддддддд╢
.}
.{CheckEnter DOSp
.fields
 McName                  EdName   Dolg1Kol          Dolg1Sum   OtgrKol      OtgrSumNoNds       OtgrSumNds1       OtgrSumNds2           OtgrSum    OplKol       OplSumNoNds        OplSumNds1        OplSumNds2            OplSum  Dolg2Kol          Dolg2Sum
.endfields
Ё@@@@@@@@@@@@@@@@@@@@Ё@~@@@@@Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё
.}
.fields
!                                   DateToStr(DODate,'DD/MM/YYYY') DONumDescr
                         pEdName DODolg1Kol       DODolg1Sum DOOtgrKol    DOOtgrSumNoNDs     DOOtgrSumNds1     DOOtgrSumNds2         DOOtgrSum  DOOplKol     DOOplSumNoNds      DOOplSumNds1      DOOplSumNds2          DOOplSum DODolg2Kol       DODolg2Sum
.endfields
!.{?Internal;(Detal=0)
!цддддддддддддддддддддадддддддадддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддаддддддддддддддддд╢
!Ё                                ┬Б╝ё╝ ╞╝ └▌ ╝Б @@@@@@@@@@ ╜╝╛╔Ю: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                                                                                                               Ё
!.}
.{?Internal;(Detal=0)
цддддддддддддддддддддедддддддедддддддддедддддддддддддддддедддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддеддддддддддддддддд╢
.}
.{?Internal;(Detal<>0)
цддддддддддддддддддддбдддддддбдддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбддддддддддддддддд╢
.}
Ё ┬Б╝ё╝ ╞╝ └▌:       Ё@~@@@@@Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё
цддддддддддддддддддддадддддддадддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддаддддддддддддддддд╢
.}
.{?Internal;(AllKontr<4)
.fields
                                                       GrDOName
                         pEdName GrDODolg1Kol   GrDODolg1Sum GrDOOtgrKol GrDOOtgrSumNoNds  GrDOOtgrSumNds1   GrDOOtgrSumNds2       GrDOOtgrSum GrDOOplKol  GrDOOplSumNoNds    GrDOOplSumNds1    GrDOOplSumNds2        GrDOOplSum GrDODolg2Kol   GrDODolg2Sum
.endfields
.{?Internal;(Detal<=1)
Ё               ┬Б╝ё╝ ╞╝ ёЮЦ╞╞╔ └▌: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё
.}
!.{?Internal;((nDOGrDO<>1)or(Detal>1)))
цддддддддддддддддддддбдддддддбдддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбддддддддддддддддд╢
Ё                    Ё@~@@@@@Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё
цддддддддддддддддддддадддддддадддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддаддддддддддддддддд╢
!.}
.}
.}
.{?Internal;(AllKontr>=4)
.fields
!                                   DateToStr(DOGDate,'DD/MM/YYYY') DOGNumDescr
                         pEdName DOGDolg1Kol      DOGDolg1Sum DOGOtgrKol    DOGOtgrSumNoNDs     DOGOtgrSumNds1     DOGOtgrSumNds2         DOGOtgrSum  DOGOplKol     DOGOplSumNoNds      DOGOplSumNds1      DOGOplSumNds2  DOGOplSum DOGDolg2Kol DOGDolg2Sum
.endfields
.{?Internal;(Detal=0)
цддддддддддддддддддддедддддддедддддддддедддддддддддддддддедддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддеддддддддддддддддд╢
.}
.{?Internal;(Detal<>0)
цддддддддддддддддддддбдддддддбдддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбддддддддддддддддд╢
.}
Ё ┬Б╝ё╝ ╞╝ ╓╝ё╝╒╝ЮЦ: Ё@~@@@@@Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё
цддддддддддддддддддддадддддддадддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддаддддддддддддддддд╢
.}
.}
.{?Internal;(AllKontr>=5)
.fields
                                                       GrDOGName
 pEdName GrDOGDolg1Kol GrDOGDolg1Sum GrDOGOtgrKol GrDOGOtgrSumNoNds GrDOGOtgrSumNds1 GrDOGOtgrSumNds2 GrDOGOtgrSum GrDOGOplKol GrDOGOplSumNoNds GrDOGOplSumNds1 GrDOGOplSumNds2 GrDOGOplSum GrDOGDolg2Kol GrDOGDolg2Sum
.endfields
.{?Internal;(Detal<=3)
Ё        ┬Б╝ё╝ ╞╝ ёЮЦ╞╞╔ ╓╝ё╝╒╝Ю╝╒: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё
.}
!.{?Internal;((nDOGrDO<>1)or(Detal>1)))
цддддддддддддддддддддбдддддддбдддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбддддддддддддддддд╢
Ё                    Ё@~@@@@@Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё
цддддддддддддддддддддадддддддадддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддаддддддддддддддддд╢
!.}
.}
.}
.fields
                         sKontrTxt1 OrgName
                         pEdName  OrgDolg1Kol     OrgDolg1Sum OrgOtgrKol  OrgOtgrSumNoNds    OrgOtgrSumNds1    OrgOtgrSumNds2        OrgOtgrSum OrgOplKol    OrgOplSumNoNds     OrgOplSumNds1     OrgOplSumNds2         OrgOplSum OrgDolg2Kol     OrgDolg2Sum
.endfields
.{?Internal;(Detal<=4)
Ё                                                                                                                                                                                                                                                        Ё
Ё     ┬Б╝ё╝ ╞╝ @@@@@@@@@@: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё
.}
!.{?Internal;((nGrDOOrg<>1)or(Not(PrintGrDO)))
цддддддддддддддддддддбдддддддбдддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбддддддддддддддддд╢
Ё                    Ё@~@@@@@Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё
фммммммммммммммммммммомммммммомммммммммомммммммммммммммммомммммммммомммммммммммммммммомммммммммммммммммомммммммммммммммммомммммммммммммммммомммммммммомммммммммммммммммомммммммммммммммммомммммммммммммммммомммммммммммммммммомммммммммоммммммммммммммммм╣
!.}
.}
.fields
                         pEdName RepDolg1Kol     RepDolg1Sum RepOtgrKol  RepOtgrSumNoNds    RepOtgrSumNds1    RepOtgrSumNds2        RepOtgrSum RepOplKol    RepOplSumNoNds     RepOplSumNds1     RepOplSumNds2         RepOplSum RepDolg2Kol     RepDolg2Sum
.endfields
юддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддыЪ░

Ъ▒зддддддддддддддддддддбдддддддбдддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбддддддддддддддддд©
Ё                    Ё@~@@@@@Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё
юддддддддддддддддддддадддддддадддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддадддддддддддддддддыЪ▒
.endform

!--------------------------------------------------------------------------------------------------------------------

#doc
▌БГ╔Б Ю╔═╚╗╖═Ф╗╗ ╒ ╜═БЦЮ═╚Л╜КЕ ╞╝╙═╖═Б╔╚ОЕ (║╔╖ ёЮ═ДК █═╗╛╔╜╝╒═╜╗╔ ▄√,ЦА╚Цё╗)
#end
.linkform 'DolgOpl1_02' prototype is 'DolgOpl1'
.NameInList '▌БГ╔Б Ю╔═╚╗╖═Ф╗╗ ╒ ╜═БЦЮ═╚Л╜КЕ ╞╝╙═╖═Б╔╚ОЕ (║╔╖ ёЮ═ДК █═╗╛╔╜╝╒═╜╗╔ ▄√,ЦА╚Цё╗)'
.Group '│╔╖ ёЮ═ДК <█═╗╛╔╜╝╒═╜╗╔ ╛═БФ╔╜╜╝АБ╗/ЦА╚Цё╗>'
.fields
! Header ╜═ ╚╗АБ
  CommonFormHeader
  '▐╝ '+AllPartyTxt+' '+AllPartyVTxt+' ▐╝ '+AllMcUslTxt+' '+AllMcUslVTxt+
            if(pEdName='','',' ⌠Г.╔╓.: '+pEdName)
  DateToStr(d2,'DD/MM/YYYY')
  DateToStr(d3,'DD/MM/YYYY')
  '╞╝ '+if(ByOpr=0
          , '╒А╔╛ (╞╝ ╒К╞╗А╙╔)'
          , if(ByOpr=2
              ,'╒К╞╝╚╜╔╜╜К╛'
              ,'╒К╞╗А═╜╜К╛'
              )
          )+ if(NaklAkt=1
               ,' ╜═╙╚═╓╜К╛'
               , if(NaklAkt=2
                   ,' ═╙Б═╛'
                   ,' ╜═╙╚═╓╜К╛, ═╙Б═╛'
                   )
               ) +
          if(Longint(d1)=0,'',' А '+DateToStr(d1,'DD/MM/YYYY'))+
          if(longint(d4)=0,'',' ╞╝ '+DateToStr(d4,'DD/MM/YYYY'))
  '▌БёЮЦ╕╔╜╝ (╒К╞╝╚╜╔╜╝)'+
    if (TysEd=2,', ╒ ╛╗╚╚╗╝╜═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф'
       , if (TysEd=1,', ╒ БКАОГ═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф',''))+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))
  '▌╞╚═Г╔╜╝'+
    if (TysEd=2,', ╒ ╛╗╚╚╗╝╜═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф'
       , if (TysEd=1,', ╒ БКАОГ═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф',''))+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))

  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'
  PrNds1
  PrNds2
  PrNds1
  PrNds2
  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'

! ╝БГ╔Б
  CommonFormHeader
  '╞╝ '+if(ByOpr=0
          , '╒А╔╛ (╞╝ ╒К╞╗А╙╔)'
          , if(ByOpr=2
              ,'╒К╞╝╚╜╔╜╜К╛'
              ,'╒К╞╗А═╜╜К╛'
              )
          )+ if(NaklAkt=1
               ,' ╜═╙╚═╓╜К╛'
               , if(NaklAkt=2
                   ,' ═╙Б═╛'
                   ,' ╜═╙╚═╓╜К╛, ═╙Б═╛'
                   )
               ) +
          if(Longint(d1)=0,'',' А '+DateToStr(d1,'DD/MM/YYYY'))+
          if(longint(d4)=0,'',' ╞╝ '+DateToStr(d4,'DD/MM/YYYY'))
  DateToStr(d2,'DD/MM/YYYY')
  DateToStr(d3,'DD/MM/YYYY')
.endfields
.P 60
.[h SKIP
Ъ░Ъ│^Ъ│
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ▀╗АБ @NP@- 1  ╞╔Ю╗╝╓ А @@@@@@@@@@ ╞╝ @@@@@@@@@@ @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ▀╗АБ @NP@- 2
здддддддддддддддддддддддддддбдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбддддддддддддддддддддддддддд©
Ё   ┌Е╝╓ОИ═О ╖═╓╝╚╕╔╜╜╝АБЛ  Ё@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё  ┬АЕ╝╓ОИ═О ╖═╓╝╚╕╔╜╜╝АБЛ  Ё
цдддддддддбдддддддддддддддддедддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддедддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддедддддддддбддддддддддддддддд╢
Ё  ┼╝╚-╒╝ Ё@~@@@@@@@@@@@@@@@Ё  ┼╝╚-╒╝ Ё ▒Ц╛╛═ ║╔╖ █└▒   Ё ▒Ц╛╛═ █└▒ (&.%) Ё ▒Ц╛╛═ █└▒ (&.%) Ё    ┌А╔ё╝ А █└▒  Ё  ┼╝╚-╒╝ Ё ▒Ц╛╛═ ║╔╖ █└▒   Ё ▒Ц╛╛═ █└▒ (&.%) Ё ▒Ц╛╛═ █└▒ (&.%) Ё    ┌А╔ё╝ А █└▒  Ё  ┼╝╚-╒╝ Ё@~@@@@@@@@@@@@@@@Ё
цдддддддддедддддддддддддддддедддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддеддддддддддддддддд╢
Ё   (1)   Ё       (2)       Ё   (3)   Ё        (4)      Ё        (5)      Ё        (6)      Ё       (7)       Ё   (8)   Ё        (9)      Ё       (10)      Ё       (11)      Ё       (12)      Ё   (13)  Ё       (14)      Ё
цдддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддаддддддддддддддддд╢Ъ░
.]h
Ъ│^
.{?Internal;(wDirect=1)
                ┌┘└▌▄▌▒▓° ▌▓┐░⌠┤┼┬ ┬ ░┘─▀┬┤─√┬┬ ┌ █─▓⌠░─▀°█⌡∙ ▐▌┼─┤─▓┘▀÷∙
.}
.{?Internal;(wDirect=2)
                ┌┘└▌▄▌▒▓° ▌▓┐░⌠┤┼┬ ┬ ┤─┼⌠▐┼┬ ┌ █─▓⌠░─▀°█⌡∙ ▐▌┼─┤─▓┘▀÷∙
.}

           @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

                         ╖═ ╞╔Ю╗╝╓ А @@@@@@@@@@ ╞╝ @@@@@@@@@@Ъ│

.fields
  '▐╝ '+AllDescrTxt+' '+AllDescrVTxt
  '▐╝ '+AllKontrTxt+' '+AllKontrVTxt
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.{CheckEnter pAllKontr
.fields
  KontrGrDoName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.{?Internal;(AllOtvPodr<>0 and (AllKontr=3))
.fields
  '▐╝ '+AllOtvPodrTxt
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.{CheckEnter pAllOtvPodr
.fields
  OtvPodrDoName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.fields
  '▐╝ '+AllPartyTxt+' '+AllPartyVTxt
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.{CheckEnter pAllParty
.fields
  PartyName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.fields
  '▐╝ '+AllMcUslTxt+' '+AllMcUslVTxt+
            if(pEdName='','',' ⌠Г╔Б╜═О ╔╓╗╜╗Ф═: '+pEdName)
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.{CheckEnter pAllMcUsl
.fields
  McUslName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.fields
  '▌БёЮЦ╕╔╜╝ (╒К╞╝╚╜╔╜╝)'+
    if (TysEd=2,', ╒ ╛╗╚╚╗╝╜═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф'
       , if (TysEd=1,', ╒ БКАОГ═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф',''))+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))
  '▌╞╚═Г╔╜╝'+
    if (TysEd=2,', ╒ ╛╗╚╚╗╝╜═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф'
       , if (TysEd=1,', ╒ БКАОГ═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф',''))+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))

  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'
  PrNds1
  PrNds2
  PrNds1
  PrNds2
  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'
.endfields
Ъ░                                                                                                   ▀╗АБ  1 - 1                                                                                                  ▀╗АБ   1 - 2
здддддддддддддддддддддддддддбдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбддддддддддддддддддддддддддд©
Ё   ┌Е╝╓ОИ═О ╖═╓╝╚╕╔╜╜╝АБЛ  Ё@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё  ┬АЕ╝╓ОИ═О ╖═╓╝╚╕╔╜╜╝АБЛ  Ё
цдддддддддбдддддддддддддддддедддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддедддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддедддддддддбддддддддддддддддд╢
Ё  ┼╝╚-╒╝ Ё@~@@@@@@@@@@@@@@@Ё  ┼╝╚-╒╝ Ё ▒Ц╛╛═ ║╔╖ █└▒   Ё ▒Ц╛╛═ █└▒ (&&%) Ё ▒Ц╛╛═ █└▒ (&&%) Ё    ┌А╔ё╝ А █└▒  Ё  ┼╝╚-╒╝ Ё ▒Ц╛╛═ ║╔╖ █└▒   Ё ▒Ц╛╛═ █└▒ (&.%) Ё ▒Ц╛╛═ █└▒ (&.%) Ё    ┌А╔ё╝ А █└▒  Ё  ┼╝╚-╒╝ Ё@~@@@@@@@@@@@@@@@Ё
цдддддддддедддддддддддддддддедддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддеддддддддддддддддд╢
Ё   (1)   Ё       (2)       Ё   (3)   Ё        (4)      Ё        (5)      Ё        (6)      Ё       (7)       Ё   (8)   Ё        (9)      Ё       (10)      Ё       (11)      Ё       (12)      Ё   (13)  Ё       (14)      Ё
цдддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддаддддддддддддддддд╢
.{CheckEnter DOOrg
.fields
          sKontrTxt OrgName
.endfields
Ё                                                                                                                                                                                                                           Ё
Ё @@@@@@@@@@: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё
.{CheckEnter DOGrDOG
.{?Internal;(AllKontr>=5)
.fields
              GrDOGName
.endfields
Ё  ┐ЮЦ╞╞═ ╓╝ё╝╒╝Ю╝╒: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё
.}
.{CheckEnter DODOG
.{?Internal;(AllKontr>=4)
.fields
                        DOGNumDescr DateToStr(DOGDate,'DD/MM/YYYY')
.endfields
Ё           ╓╝ё╝╒╝Ю: @@@@@@@@@@@@@@@@@@@@ ╝Б @@@@@@@@@@                                                                                                                                                                     Ё
.}
.{CheckEnter DOGrDO
.{?Internal;(AllKontr<4)
.fields
              GrDOName
.endfields
Ё  ┐ЮЦ╞╞═ └▌: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё
.}
.{CheckEnter DODO
.fields
                          DONumDescr DateToStr(DODate,'DD/MM/YYYY')
.endfields
Ё   └╝╙Ц╛╔╜Б-╝А╜╝╒═╜╗╔: @@@@@@@@@@@@@@@@@@@@ ╝Б @@@@@@@@@@                                                                                                                                                                  Ё
.{?Internal;(Detal=0)
цдддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбддддддддддддддддд╢
.}
.{CheckEnter DOSp
.fields
  Dolg1Kol          Dolg1Sum   OtgrKol      OtgrSumNoNds       OtgrSumNds1       OtgrSumNds2           OtgrSum    OplKol       OplSumNoNds        OplSumNds1        OplSumNds2            OplSum  Dolg2Kol          Dolg2Sum
.endfields
Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё
.}
.fields
!                                   DateToStr(DODate,'DD/MM/YYYY') DONumDescr
  DODolg1Kol       DODolg1Sum DOOtgrKol    DOOtgrSumNoNDs     DOOtgrSumNds1     DOOtgrSumNds2         DOOtgrSum  DOOplKol     DOOplSumNoNds      DOOplSumNds1      DOOplSumNds2          DOOplSum DODolg2Kol       DODolg2Sum
.endfields
!.{?Internal;(Detal=0)
!цдддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддаддддддддддддддддд╢
!Ё   ┬Б╝ё╝ ╞╝ └▌ ╝Б @@@@@@@@@@ ╜╝╛╔Ю: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                                                                                                               Ё
!.}
.{?Internal;(Detal=0)
цдддддддддедддддддддддддддддедддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддеддддддддддддддддд╢
.}
.{?Internal;(Detal<>0)
цдддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбддддддддддддддддд╢
.}
Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё
цдддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддаддддддддддддддддд╢
.}
.{?Internal;(AllKontr<4)
.fields
                       GrDOName
  GrDODolg1Kol   GrDODolg1Sum GrDOOtgrKol GrDOOtgrSumNoNds  GrDOOtgrSumNds1   GrDOOtgrSumNds2       GrDOOtgrSum GrDOOplKol  GrDOOplSumNoNds    GrDOOplSumNds1    GrDOOplSumNds2        GrDOOplSum GrDODolg2Kol   GrDODolg2Sum
.endfields
.{?Internal;(Detal<=1)
Ё  ┬Б╝ё╝ ╞╝ ёЮЦ╞╞╔ └▌: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё
.}
!.{?Internal;((nDOGrDO<>1)or(Detal>1)))
цдддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбддддддддддддддддд╢
Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё
цдддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддаддддддддддддддддд╢
!.}
.}
.}
.{?Internal;(AllKontr>=4)
.fields
!                                   DateToStr(DOGDate,'DD/MM/YYYY') DOGNumDescr
  DOGDolg1Kol DOGDolg1Sum DOGOtgrKol DOGOtgrSumNoNDs DOGOtgrSumNds1 DOGOtgrSumNds2 DOGOtgrSum DOGOplKol DOGOplSumNoNds DOGOplSumNds1 DOGOplSumNds2 DOGOplSum DOGDolg2Kol DOGDolg2Sum
.endfields
!.{?Internal;(Detal=0)
!цдддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддаддддддддддддддддд╢
!Ё   ┬Б╝ё╝ ╞╝ └▌ ╝Б @@@@@@@@@@ ╜╝╛╔Ю: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                                                                                                               Ё
!.}
.{?Internal;(Detal=0)
цдддддддддедддддддддддддддддедддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддеддддддддддддддддд╢
.}
.{?Internal;(Detal<>0)
цдддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбддддддддддддддддд╢
.}
Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё
цдддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддаддддддддддддддддд╢
.}
.}
.{?Internal;(AllKontr>=5)
.fields
                       GrDOGName
  GrDOGDolg1Kol GrDOGDolg1Sum GrDOGOtgrKol GrDOGOtgrSumNoNds GrDOGOtgrSumNds1 GrDOGOtgrSumNds2 GrDOGOtgrSum GrDOGOplKol GrDOGOplSumNoNds GrDOGOplSumNds1 GrDOGOplSumNds2 GrDOGOplSum GrDOGDolg2Kol GrDOGDolg2Sum
.endfields
.{?Internal;(Detal<=3)
Ё  ┬Б╝ё╝ ╞╝ ёЮЦ╞╞╔ ╓╝ё╝╒╝Ю╝╒: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё
.}
!.{?Internal;((nDOGrDO<>1)or(Detal>1)))
цдддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбддддддддддддддддд╢
Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё
цдддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддаддддддддддддддддд╢
!.}
.}
.}
.fields
                  sKontrTxt1  OrgName
  OrgDolg1Kol     OrgDolg1Sum OrgOtgrKol  OrgOtgrSumNoNds    OrgOtgrSumNds1    OrgOtgrSumNds2        OrgOtgrSum OrgOplKol    OrgOplSumNoNds     OrgOplSumNds1     OrgOplSumNds2         OrgOplSum OrgDolg2Kol     OrgDolg2Sum
.endfields
.{?Internal;(Detal<=4)
Ё                                                                                                                                                                                                                           Ё
Ё ┬Б╝ё╝ ╞╝ @@@@@@@@@@: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё
.}
!.{?Internal;((nGrDOOrg<>1)or(Not(PrintGrDO)))
цдддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбддддддддддддддддд╢
Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё
фмммммммммомммммммммммммммммомммммммммомммммммммммммммммомммммммммммммммммомммммммммммммммммомммммммммммммммммомммммммммомммммммммммммммммомммммммммммммммммомммммммммммммммммомммммммммммммммммомммммммммоммммммммммммммммм╣
!.}
.}
.fields
  RepDolg1Kol     RepDolg1Sum RepOtgrKol  RepOtgrSumNoNds    RepOtgrSumNds1    RepOtgrSumNds2        RepOtgrSum RepOplKol    RepOplSumNoNds     RepOplSumNds1     RepOplSumNds2         RepOplSum RepDolg2Kol     RepDolg2Sum
.endfields
юдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддыЪ░
Ъ▒здддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддбддддддддддддддддд©
Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&.&&&Ё&'#&&&&&&&&&&&.&&Ё
юдддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддадддддддддддддддддыЪ▒
.endform

!--------------------------------------------------------------------------------------------------------------------

#doc
▌БГ╔Б Ю╔═╚╗╖═Ф╗╗ (║╔╖ ╙╝╚╗Г╔АБ╒)
#end
.linkform 'DolgOpl1_03' prototype is 'DolgOpl1'
.NameInList '▌БГ╔Б Ю╔═╚╗╖═Ф╗╗ (║╔╖ ╙╝╚╗Г╔АБ╒)'
.Group '│╔╖ ╙╝╚╗Г╔АБ╒'
.fields
! Header ╜═ ╚╗АБ
  CommonFormHeader
  '▐╝ '+AllPartyTxt+' '+AllPartyVTxt+' ▐╝ '+AllMcUslTxt+' '+AllMcUslVTxt
  DateToStr(d2,'DD/MM/YYYY')
  DateToStr(d3,'DD/MM/YYYY')
  '╞╝ '+if(ByOpr=0
          , '╒А╔╛ (╞╝ ╒К╞╗А╙╔)'
          , if(ByOpr=2
              ,'╒К╞╝╚╜╔╜╜К╛'
              ,'╒К╞╗А═╜╜К╛'
              )
          )+ if(NaklAkt=1
               ,' ╜═╙╚═╓╜К╛'
               , if(NaklAkt=2
                   ,' ═╙Б═╛'
                   ,' ╜═╙╚═╓╜К╛, ═╙Б═╛'
                   )
               ) +
          if(Longint(d1)=0,'',' А '+DateToStr(d1,'DD/MM/YYYY'))+
          if(longint(d4)=0,'',' ╞╝ '+DateToStr(d4,'DD/MM/YYYY'))
  '▌БёЮЦ╕╔╜╝ (╒К╞╝╚╜╔╜╝)'+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))
  '▌╞╚═Г╔╜╝'+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))

  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'
  PrNds1
  PrNds2
  PrNds1
  PrNds2
  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'

! ╝БГ╔Б
  CommonFormHeader
  '╞╝ '+if(ByOpr=0
          , '╒А╔╛ (╞╝ ╒К╞╗А╙╔)'
          , if(ByOpr=2
              ,'╒К╞╝╚╜╔╜╜К╛'
              ,'╒К╞╗А═╜╜К╛'
              )
          )+ if(NaklAkt=1
               ,' ╜═╙╚═╓╜К╛'
               , if(NaklAkt=2
                   ,' ═╙Б═╛'
                   ,' ╜═╙╚═╓╜К╛, ═╙Б═╛'
                   )
               ) +
          if(Longint(d1)=0,'',' А '+DateToStr(d1,'DD/MM/YYYY'))+
          if(longint(d4)=0,'',' ╞╝ '+DateToStr(d4,'DD/MM/YYYY'))
  DateToStr(d2,'DD/MM/YYYY')
  DateToStr(d3,'DD/MM/YYYY')
.endfields
.P 60
.[h SKIP
Ъ░Ъ│^Ъ│
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ╞╔Ю╗╝╓ А @@@@@@@@@@ ╞╝ @@@@@@@@@@ @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ▀╗АБ @NP@
здддддддддддддддддбдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбддддддддддддддддд©
Ё┌Е╝╓ОИ═О ╖═╓╝╚╕. Ё@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё┬АЕ╝╓ОИ═О ╖═╓╝╚╕.Ё
цдддддддддддддддддедддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддедддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддеддддддддддддддддд╢
Ё@~@@@@@@@@@@@@@@@Ё ▒Ц╛╛═ ║╔╖ █└▒   Ё ▒Ц╛╛═ █└▒ (&.%) Ё ▒Ц╛╛═ █└▒ (&.%) Ё    ┌А╔ё╝ А █└▒  Ё ▒Ц╛╛═ ║╔╖ █└▒   Ё ▒Ц╛╛═ █└▒ (&.%) Ё ▒Ц╛╛═ █└▒ (&.%) Ё    ┌А╔ё╝ А █└▒  Ё@~@@@@@@@@@@@@@@@Ё
цдддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддеддддддддддддддддд╢
Ё       (1)       Ё        (2)      Ё        (3)      Ё        (4)      Ё       (5)       Ё        (6)      Ё       (7)       Ё       (8)       Ё       (9)       Ё       (10)      Ё
цдддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддаддддддддддддддддд╢Ъ░
.]h
Ъ│^
.{?Internal;(wDirect=1)

                           ┌┘└▌▄▌▒▓° ▌▓┐░⌠┤┼┬ ┬ ░┘─▀┬┤─√┬┬
.}
.{?Internal;(wDirect=2)

                           ┌┘└▌▄▌▒▓° ▌▓┐░⌠┤┼┬ ┬ ┤─┼⌠▐┼┬
.}

           @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

                         ╖═ ╞╔Ю╗╝╓ А @@@@@@@@@@ ╞╝ @@@@@@@@@@Ъ│

.fields
  '▐╝ '+AllDescrTxt+' '+AllDescrVTxt
  '▐╝ '+AllKontrTxt+' '+AllKontrVTxt
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.{CheckEnter pAllKontr
.fields
  KontrGrDoName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.{?Internal;(AllOtvPodr<>0 and (AllKontr=3))
.fields
  '▐╝ '+AllOtvPodrTxt
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.{CheckEnter pAllOtvPodr
.fields
  OtvPodrDoName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.fields
  '▐╝ '+AllPartyTxt+' '+AllPartyVTxt
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.{CheckEnter pAllParty
.fields
  PartyName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.fields
  '▐╝ '+AllMcUslTxt+' '+AllMcUslVTxt
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.{CheckEnter pAllMcUsl
.fields
  McUslName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.fields
  '▌БёЮЦ╕╔╜╝ (╒К╞╝╚╜╔╜╝)'+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))
  '▌╞╚═Г╔╜╝'+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))

  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'
  PrNds1
  PrNds2
  PrNds1
  PrNds2
  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'
.endfields
Ъ░                                                                               ▀╗АБ  1 - 1                                                                              ▀╗АБ   1 - 2
здддддддддддддддддбдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбддддддддддддддддд©
Ё┌Е╝╓ОИ═О ╖═╓╝╚╕. Ё@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё┬АЕ╝╓ОИ═О ╖═╓╝╚╕.Ё
цдддддддддддддддддедддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддедддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддеддддддддддддддддд╢
Ё@~@@@@@@@@@@@@@@@Ё ▒Ц╛╛═ ║╔╖ █└▒   Ё ▒Ц╛╛═ █└▒ (&.%) Ё ▒Ц╛╛═ █└▒ (&.%) Ё    ┌А╔ё╝ А █└▒  Ё ▒Ц╛╛═ ║╔╖ █└▒   Ё ▒Ц╛╛═ █└▒ (&.%) Ё ▒Ц╛╛═ █└▒ (&.%) Ё    ┌А╔ё╝ А █└▒  Ё@~@@@@@@@@@@@@@@@Ё
цдддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддеддддддддддддддддд╢
Ё       (1)       Ё        (2)      Ё        (3)      Ё        (4)      Ё       (5)       Ё        (6)      Ё       (7)       Ё       (8)       Ё       (9)       Ё       (10)      Ё
цдддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддаддддддддддддддддд╢
.{CheckEnter DOOrg
.fields
    sKontrTxt OrgName
.endfields
Ё                                                                                                                                                                                   Ё
Ё @@@@@@@@@@: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё
.{CheckEnter DOGrDOG
.{?Internal;(AllKontr>=5)
.fields
              GrDOGName
.endfields
Ё  ┐ЮЦ╞╞═ ╓╝ё╝╒╝Ю: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё
.}
.{CheckEnter DODOG
.{?Internal;(AllKontr>=4)
.fields
                          DOGNumDescr DateToStr(DOGDate,'DD/MM/YYYY')
.endfields
Ё   └╝ё╝╒╝Ю: @@@@@@@@@@@@@@@@@@@@ ╝Б @@@@@@@@@@                                                                                                                                     Ё
.}
.{CheckEnter DOGrDO
.{?Internal;(AllKontr<4)
.fields
              GrDOName
.endfields
Ё  ┐ЮЦ╞╞═ └▌: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё
.}
.{CheckEnter DODO
.fields
                          DONumDescr DateToStr(DODate,'DD/MM/YYYY')
.endfields
Ё   └╝╙Ц╛╔╜Б-╝А╜╝╒═╜╗╔: @@@@@@@@@@@@@@@@@@@@ ╝Б @@@@@@@@@@                                                                                                                          Ё
.{?Internal;(Detal=0)
цдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбддддддддддддддддд╢
.}
.{CheckEnter DOSp
.fields
  Dolg1Sum         OtgrSumNoNds       OtgrSumNds1       OtgrSumNds2           OtgrSum            OplSumNoNds        OplSumNds1        OplSumNds2            OplSum       Dolg2Sum
.endfields
Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё
.}
.fields
!                                   DateToStr(DODate,'DD/MM/YYYY') DONumDescr
  DODolg1Sum   DOOtgrSumNoNDs     DOOtgrSumNds1     DOOtgrSumNds2         DOOtgrSum    DOOplSumNoNds      DOOplSumNds1      DOOplSumNds2          DOOplSum       DODolg2Sum
.endfields
!.{?Internal;(Detal=0)
!цдддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддаддддддддддддддддд╢
!Ё   ┬Б╝ё╝ ╞╝ └▌ ╝Б @@@@@@@@@@ ╜╝╛╔Ю: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                                                                                                               Ё
!.}
.{?Internal;(Detal=0)
цдддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддеддддддддддддддддд╢
.}
.{?Internal;(Detal<>0)
цдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбддддддддддддддддд╢
.}
Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё
цдддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддаддддддддддддддддд╢
.}
.{?Internal;(AllKontr<4)
.fields
                       GrDOName
 GrDODolg1Sum  GrDOOtgrSumNoNds  GrDOOtgrSumNds1   GrDOOtgrSumNds2       GrDOOtgrSum  GrDOOplSumNoNds    GrDOOplSumNds1    GrDOOplSumNds2        GrDOOplSum  GrDODolg2Sum
.endfields
.{?Internal;(Detal<=1)
Ё  ┬Б╝ё╝ ╞╝ ёЮЦ╞╞╔ └▌: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё
.}
!.{?Internal;((nDOGrDO<>1)or(Detal>1)))
цдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбддддддддддддддддд╢
Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё
цдддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддаддддддддддддддддд╢
!.}
.}
.}
.{?Internal;(AllKontr>=4)
.fields
!                                   DateToStr(DOGDate,'DD/MM/YYYY') DOGNumDescr
  DOGDolg1Sum   DOGOtgrSumNoNDs DOGOtgrSumNds1 DOGOtgrSumNds2 DOGOtgrSum DOGOplSumNoNds DOGOplSumNds1 DOGOplSumNds2 DOGOplSum DOGDolg2Sum
.endfields
!.{?Internal;(Detal=0)
!цдддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддаддддддддддддддддд╢
!Ё   ┬Б╝ё╝ ╞╝ └▌ ╝Б @@@@@@@@@@ ╜╝╛╔Ю: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                                                                                                               Ё
!.}
.{?Internal;(Detal=0)
цдддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддеддддддддддддддддд╢
.}
.{?Internal;(Detal<>0)
цдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбддддддддддддддддд╢
.}
Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё
цдддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддаддддддддддддддддд╢
.}
.}
.{?Internal;(AllKontr>=5)
.fields
                       GrDOGName
 GrDOGDolg1Sum GrDOGOtgrSumNoNds GrDOGOtgrSumNds1 GrDOGOtgrSumNds2 GrDOGOtgrSum GrDOGOplSumNoNds GrDOGOplSumNds1 GrDOGOplSumNds2 GrDOGOplSum GrDOGDolg2Sum
.endfields
.{?Internal;(Detal<=1)
Ё  ┬Б╝ё╝ ╞╝ ёЮЦ╞╞╔ ╓╝ё╝╒╝Ю╝╒: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё
.}
!.{?Internal;((nDOGrDO<>1)or(Detal>1)))
цдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбддддддддддддддддд╢
Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё
цдддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддаддддддддддддддддд╢
!.}
.}
.}
.fields
                sKontrTxt1 OrgName
   OrgDolg1Sum  OrgOtgrSumNoNds    OrgOtgrSumNds1    OrgOtgrSumNds2        OrgOtgrSum  OrgOplSumNoNds     OrgOplSumNds1     OrgOplSumNds2         OrgOplSum  OrgDolg2Sum
.endfields
.{?Internal;(Detal<=4)
Ё                                                                                                                                                                                   Ё
Ё ┬Б╝ё╝ ╞╝ @@@@@@@@@@: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё
.}
!.{?Internal;((nGrDOOrg<>1)or(Not(PrintGrDO)))
цдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбддддддддддддддддд╢
Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё
фмммммммммммммммммомммммммммммммммммомммммммммммммммммомммммммммммммммммомммммммммммммммммомммммммммммммммммомммммммммммммммммомммммммммммммммммомммммммммммммммммоммммммммммммммммм╣
!.}
.}
.fields
  RepDolg1Sum  RepOtgrSumNoNds    RepOtgrSumNds1    RepOtgrSumNds2        RepOtgrSum  RepOplSumNoNds     RepOplSumNds1     RepOplSumNds2         RepOplSum  RepDolg2Sum
.endfields
юдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддыЪ░

Ъ▒здддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбддддддддддддддддд©
Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё
юдддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддыЪ▒
.endform

!--------------------------------------------------------------------------------------------------------------------

#doc
▌БГ╔Б Ю╔═╚╗╖═Ф╗╗ ╒ ╜═БЦЮ═╚Л╜КЕ ╞╝╙═╖═Б╔╚ОЕ А ╓╝╞╝╚╜╗Б╔╚Л╜К╛ ╜═╚╝ё╝╛
#end
.linkform 'DolgOpl1_11' prototype is 'DolgOpl1'
.NameInList '▌БГ╔Б Ю╔═╚╗╖═Ф╗╗ ╒ ╜═БЦЮ═╚Л╜КЕ ╞╝╙═╖═Б╔╚ОЕ А ╓╝╞╝╚╜╗Б╔╚Л╜К╛ ╜═╚╝ё╝╛'
.Group '▒ ёЮ═Д╝╘ <█═╗╛╔╜╝╒═╜╗╔ ╛═БФ╔╜╜╝АБ╗/ЦА╚Цё╗>'
.var
  b: boolean
.endvar
.fields
! Header ╜═ ╚╗АБ
  CommonFormHeader
  '▐╝ '+AllPartyTxt+' '+AllPartyVTxt+' ▐╝ '+AllMcUslTxt+' '+AllMcUslVTxt+
            if(pEdName='','',' ⌠Г.╔╓.: '+pEdName)
  DateToStr(d2,'DD/MM/YYYY')
  DateToStr(d3,'DD/MM/YYYY')
  '╞╝ '+if(ByOpr=0
          , '╒А╔╛ (╞╝ ╒К╞╗А╙╔)'
          , if(ByOpr=2
              ,'╒К╞╝╚╜╔╜╜К╛'
              ,'╒К╞╗А═╜╜К╛'
              )
          )+ if(NaklAkt=1
               ,' ╜═╙╚═╓╜К╛'
               , if(NaklAkt=2
                   ,' ═╙Б═╛'
                   ,' ╜═╙╚═╓╜К╛, ═╙Б═╛'
                   )
               ) +
          if(Longint(d1)=0,'',' А '+DateToStr(d1,'DD/MM/YYYY'))+
          if(longint(d4)=0,'',' ╞╝ '+DateToStr(d4,'DD/MM/YYYY'))
  '▌БёЮЦ╕╔╜╝ (╒К╞╝╚╜╔╜╝)'+
    if (TysEd=2,', ╒ ╛╗╚╚╗╝╜═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф'
       , if (TysEd=1,', ╒ БКАОГ═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф',''))+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))
  '▌╞╚═Г╔╜╝'+
    if (TysEd=2,', ╒ ╛╗╚╚╗╝╜═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф'
       , if (TysEd=1,', ╒ БКАОГ═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф',''))+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))
  if(TysEd=2,'(╒ ╛╚╜)',if(TysEd=1,'(╒ БКА)',''))
  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'
  '┌ Б╝╛ Г╗А╚╔ '+DopNalogTxt
  '┌ Б╝╛ Г╗А╚╔ '+DopNalogTxt
  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'

! ╝БГ╔Б
  CommonFormHeader
  '╞╝ '+if(ByOpr=0
          , '╒А╔╛ (╞╝ ╒К╞╗А╙╔)'
          , if(ByOpr=2
              ,'╒К╞╝╚╜╔╜╜К╛'
              ,'╒К╞╗А═╜╜К╛'
              )
          )+ if(NaklAkt=1
               ,' ╜═╙╚═╓╜К╛'
               , if(NaklAkt=2
                   ,' ═╙Б═╛'
                   ,' ╜═╙╚═╓╜К╛, ═╙Б═╛'
                   )
               ) +
          if(Longint(d1)=0,'',' А '+DateToStr(d1,'DD/MM/YYYY'))+
          if(longint(d4)=0,'',' ╞╝ '+DateToStr(d4,'DD/MM/YYYY'))
  DateToStr(d2,'DD/MM/YYYY')
  DateToStr(d3,'DD/MM/YYYY')
.endfields
.P 60
.[h SKIP
Ъ░Ъ│^Ъ│
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ▀╗АБ @NP@- 1  ╞╔Ю╗╝╓ А @@@@@@@@@@ ╞╝ @@@@@@@@@@ @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ▀╗АБ @NP@- 2
ддддддддддддддддддбдддддддбдддддддддддддддддддддддбддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбддддддддддддддддддддддд
 █═╗╛╔╜╝╒═╜╗╔     Ё⌠Г╔Б╜═ОЁ ┌Е╝╓ОИ═О ╖═╓╝╚╕╔╜╜╝АБЛЁ@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё┬АЕ╝╓ОИ═О ╖═╓╝╚╕╔╜╜╝АБЛ
 ╛═БФ╔╜╜╝АБ╗ ╗╚╗  Ё╔╓╗╜╗Ф═цддддддддбддддддддддддддеддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддедддддддддддддддддддддддддддддддддддддддбддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддеддддддддбдддддддддддддд
 ЦА╚Цё╗           Ё@~@@@@@Ё ┼╝╚-╒╝ Ё@~@@@@@@@@@@@@Ё ┼╝╚-╒╝ Ё ▒Ц╛╛═ ║╔╖ █└▒Ё  ▒Ц╛╛═ █└▒   Ё  ┌А╔ё╝ А █└▒ Ё@~@@@@@@@@@@@@Ё              ┌╗╓ ╝╞╚═БК               Ё ┼╝╚-╒╝ Ё ▒Ц╛╛═ ║╔╖ █└▒Ё  ▒Ц╛╛═ █└▒   Ё  ┌А╔ё╝ А █└▒ Ё@~@@@@@@@@@@@@Ё ┼╝╚-╒╝ Ё@~@@@@@@@@@@@@
ддддддддддддддддддедддддддеддддддддеддддддддддддддеддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддддддддедддддддддддддддддддддддддддддддддддддддеддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддедддддддддддддд
        (1)       Ё  (2)  Ё   (3)  Ё      (4)     Ё   (5)  Ё      (6)     Ё      (7)     Ё      (8)     Ё      (9)     Ё                 (10)                  Ё  (11)  Ё     (12)     Ё     (13)     Ё     (14)     Ё      (15)    Ё  (16)  Ё     (17)
ддддддддддддддддддадддддддаддддддддаддддддддддддддаддддддддаддддддддддддддаддддддддддддддаддддддддддддддаддддддддддддддадддддддддддддддддддддддддддддддддддддддаддддддддаддддддддддддддаддддддддддддддаддддддддддддддаддддддддддддддаддддддддадддддддддддддд
.]hЪ░
Ъ│^
.{?Internal;(wDirect=1)

                ┌┘└▌▄▌▒▓° ▌▓┐░⌠┤┼┬ ┬ ░┘─▀┬┤─√┬┬ ┌ █─▓⌠░─▀°█⌡∙ ▐▌┼─┤─▓┘▀÷∙
.}
.{?Internal;(wDirect=2)

                ┌┘└▌▄▌▒▓° ▌▓┐░⌠┤┼┬ ┬ ┤─┼⌠▐┼┬ ┌ █─▓⌠░─▀°█⌡∙ ▐▌┼─┤─▓┘▀÷∙
.}

           @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

                         ╖═ ╞╔Ю╗╝╓ А @@@@@@@@@@ ╞╝ @@@@@@@@@@Ъ│

.fields
  '▐╝ '+AllDescrTxt+' '+AllDescrVTxt
  '▐╝ '+AllKontrTxt+' '+AllKontrVTxt
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.{CheckEnter pAllKontr
.fields
  KontrGrDoName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.{?Internal;(AllOtvPodr<>0 and (AllKontr=3))
.fields
  '▐╝ '+AllOtvPodrTxt
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.{CheckEnter pAllOtvPodr
.fields
  OtvPodrDoName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.fields
  '▐╝ '+AllPartyTxt+' '+AllPartyVTxt
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.{CheckEnter pAllParty
.fields
  PartyName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.fields
  '▐╝ '+AllMcUslTxt+' '+AllMcUslVTxt+
            if(pEdName='','',' ⌠Г╔Б╜═О ╔╓╗╜╗Ф═: '+pEdName)
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.{CheckEnter pAllMcUsl
.fields
  McUslName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.fields
  '▌БёЮЦ╕╔╜╝ (╒К╞╝╚╜╔╜╝)'+
    if (TysEd=2,', ╒ ╛╗╚╚╗╝╜═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф'
       , if (TysEd=1,', ╒ БКАОГ═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф',''))+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))
  '▌╞╚═Г╔╜╝'+
    if (TysEd=2,', ╒ ╛╗╚╚╗╝╜═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф'
       , if (TysEd=1,', ╒ БКАОГ═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф',''))+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))
  if(TysEd=2,'(╒ ╛╚╜)',if(TysEd=1,'(╒ БКА)',''))
  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'
  '┌ Б╝╛ Г╗А╚╔ '+DopNalogTxt
  '┌ Б╝╛ Г╗А╚╔ '+DopNalogTxt
  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'
.endfields
Ъ░
                                                                                                             ▀╗АБ  1 - 1                                                                                                                       ▀╗АБ   1 - 2
ддддддддддддддддддбдддддддбдддддддддддддддддддддддбддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбддддддддддддддддддддддд
 █═╗╛╔╜╝╒═╜╗╔     Ё⌠Г╔Б╜═ОЁ ┌Е╝╓ОИ═О ╖═╓╝╚╕╔╜╜╝АБЛЁ@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё┬АЕ╝╓ОИ═О ╖═╓╝╚╕╔╜╜╝АБЛ
 ╛═БФ╔╜╜╝АБ╗ ╗╚╗  Ё╔╓╗╜╗Ф═цддддддддбддддддддддддддеддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддедддддддддддддддддддддддддддддддддддддддбддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддеддддддддбдддддддддддддд
 ЦА╚Цё╗           Ё@~@@@@@Ё ┼╝╚-╒╝ Ё@~@@@@@@@@@@@@Ё ┼╝╚-╒╝ Ё ▒Ц╛╛═ ║╔╖ █└▒Ё  ▒Ц╛╛═ █└▒   Ё  ┌А╔ё╝ А █└▒ Ё@~@@@@@@@@@@@@Ё              ┌╗╓ ╝╞╚═БК               Ё ┼╝╚-╒╝ Ё ▒Ц╛╛═ ║╔╖ █└▒Ё  ▒Ц╛╛═ █└▒   Ё  ┌А╔ё╝ А █└▒ Ё@~@@@@@@@@@@@@Ё ┼╝╚-╒╝ Ё@~@@@@@@@@@@@@
ддддддддддддддддддедддддддеддддддддеддддддддддддддеддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддддддддедддддддддддддддддддддддддддддддддддддддеддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддедддддддддддддд
        (1)       Ё  (2)  Ё   (3)  Ё      (4)     Ё   (5)  Ё      (6)     Ё      (7)     Ё      (8)     Ё      (9)     Ё                 (10)                  Ё  (11)  Ё     (12)     Ё     (13)     Ё     (14)     Ё      (15)    Ё  (16)  Ё     (17)
ддддддддддддддддддадддддддаддддддддаддддддддддддддаддддддддаддддддддддддддаддддддддддддддаддддддддддддддаддддддддддддддадддддддддддддддддддддддддддддддддддддддаддддддддаддддддддддддддаддддддддддддддаддддддддддддддаддддддддддддддаддддддддадддддддддддддд
.{CheckEnter DOOrg
.fields
             sKontrTxt  OrgName
.endfields

           @@@@@@@@@@: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{CheckEnter DOGrDOG
.{?Internal;(AllKontr>=5)
.fields
                          GrDOGName
.endfields
     ┐ЮЦ╞╞═ ╓╝ё╝╒╝Ю╝╒: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.{CheckEnter DODOG
.{?Internal;(AllKontr>=4)
.fields
                          DOGNumDescr DateToStr(DOGDate,'DD/MM/YYYY')
.endfields
              └╝ё╝╒╝Ю: @@@@@@@@@@@@@@@@@@@@ ╝Б @@@@@@@@@@
.}
.{CheckEnter DOGrDO
.{?Internal;(AllKontr<4)
.fields
                          GrDOName
.endfields
            ┐ЮЦ╞╞═ └▌: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.{CheckEnter DODO
.fields
                          DONumDescr DateToStr(DODate,'DD/MM/YYYY')
.endfields
   └╝╙Ц╛╔╜Б-╝А╜╝╒═╜╗╔: @@@@@@@@@@@@@@@@@@@@ ╝Б @@@@@@@@@@
.{?Internal;(Detal=0)
ддддддддддддддддддбдддддддбддддддддбддддддддддддддбддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддбдддддддддддддддддддддддддддддддддддддддбддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддбдддддддддддддд
.}
.{CheckEnter DOSp
.fields
 McName                EdName   Dolg1Kol       Dolg1Sum   OtgrKol    OtgrSumNoNds    OtgrSumNds1+OtgrSumNds2 OtgrSum OtgrSumDopNalog VidOpl OplKol  OplSumNoNds    OplSumNds1+OplSumNds2 OplSum  OplSumDopNalog Dolg2Kol  Dolg2Sum
.endfields
@@@@@@@@@@@@@@@@@@Ё@~@@@@@Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&.&&&Ё&#&&&&&&&&&.&&
.}
.fields
!                                   DateToStr(DODate,'DD/MM/YYYY') DONumDescr
                      pEdName DODolg1Kol     DODolg1Sum  DOOtgrKol  DOOtgrSumNoNDs DOOtgrSumNds1+DOOtgrSumNds2   DOOtgrSum   DOOtgrSumDopNalog DOOplKol  DOOplSumNoNds  DOOplSumNds1+DOOplSumNds2  DOOplSum    DOOplSumDopNalog DODolg2Kol  DODolg2Sum
.endfields
.{?Internal;(Detal=0)
ддддддддддддддддддедддддддеддддддддеддддддддддддддеддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддддддддедддддддддддддддддддддддддддддддддддддддеддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддедддддддддддддд
.}
.{?Internal;(Detal<>0)
ддддддддддддддддддбдддддддбддддддддбддддддддддддддбддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддбдддддддддддддддддддддддддддддддддддддддбддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддбдддддддддддддд
.}
 ┬Б╝ё╝ ╞╝ └▌:     Ё@~@@@@@Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё                                       Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&.&&&Ё&#&&&&&&&&&.&&
ддддддддддддддддддадддддддаддддддддаддддддддддддддаддддддддаддддддддддддддаддддддддддддддаддддддддддддддаддддддддддддддадддддддддддддддддддддддддддддддддддддддаддддддддаддддддддддддддаддддддддддддддаддддддддддддддаддддддддддддддаддддддддадддддддддддддд
.}
.{?Internal;(AllKontr<4)
.fields
                                                       GrDOName
           pEdName GrDODolg1Kol GrDODolg1Sum GrDOOtgrKol GrDOOtgrSumNoNds GrDOOtgrSumNds1+GrDOOtgrSumNds2 GrDOOtgrSum GrDOOtgrSumDopNalog GrDOOplKol GrDOOplSumNoNds GrDOOplSumNds1+GrDOOplSumNds2 GrDOOplSum GrDOOplSumDopNalog GrDODolg2Kol   GrDODolg2Sum
.endfields
.{?Internal;(Detal<=1)
               ┬Б╝ё╝ ╞╝ ёЮЦ╞╞╔ └▌: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
ддддддддддддддддддбдддддддбддддддддбддддддддддддддбддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддбдддддддддддддддддддддддддддддддддддддддбддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддбдддддддддддддд
                  Ё@~@@@@@Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё                                       Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&.&&&Ё&#&&&&&&&&&.&&
ддддддддддддддддддадддддддаддддддддаддддддддддддддаддддддддаддддддддддддддаддддддддддддддаддддддддддддддаддддддддддддддадддддддддддддддддддддддддддддддддддддддаддддддддаддддддддддддддаддддддддддддддаддддддддддддддаддддддддддддддаддддддддадддддддддддддд
.}
.}
.{?Internal;(AllKontr>=4)
.fields
!                                   DateToStr(DODate,'DD/MM/YYYY') DONumDescr
 pEdName DOGDolg1Kol     DOGDolg1Sum  DOGOtgrKol  DOGOtgrSumNoNDs DOGOtgrSumNds1+DOGOtgrSumNds2 DOGOtgrSum DOGOtgrSumDopNalog DOGOplKol DOGOplSumNoNds DOGOplSumNds1+DOGOplSumNds2 DOGOplSum DOGOplSumDopNalog DOGDolg2Kol DOGDolg2Sum
.endfields
.{?Internal;(Detal=0)
ддддддддддддддддддедддддддеддддддддеддддддддддддддеддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддддддддедддддддддддддддддддддддддддддддддддддддеддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддедддддддддддддд
.}
.{?Internal;(Detal<>0)
ддддддддддддддддддбдддддддбддддддддбддддддддддддддбддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддбдддддддддддддддддддддддддддддддддддддддбддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддбдддддддддддддд
.}
 ┬Б╝ё╝ ╞╝ ╓╝ё╝╒╝ЮЦЁ@~@@@@@Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё                                       Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&.&&&Ё&#&&&&&&&&&.&&
ддддддддддддддддддадддддддаддддддддаддддддддддддддаддддддддаддддддддддддддаддддддддддддддаддддддддддддддаддддддддддддддадддддддддддддддддддддддддддддддддддддддаддддддддаддддддддддддддаддддддддддддддаддддддддддддддаддддддддддддддаддддддддадддддддддддддд
.}
.}
.{?Internal;(AllKontr>=5)
.fields
 GrDOGName
 pEdName
 GrDOGDolg1Kol GrDOGDolg1Sum GrDOGOtgrKol GrDOGOtgrSumNoNds GrDOGOtgrSumNds1+GrDOGOtgrSumNds2 GrDOGOtgrSum GrDOGOtgrSumDopNalog GrDOGOplKol GrDOGOplSumNoNds GrDOGOplSumNds1+GrDOGOplSumNds2 GrDOGOplSum GrDOGOplSumDopNalog GrDOGDolg2Kol GrDOGDolg2Sum
.endfields
.{?Internal;(Detal<=3)
        ┬Б╝ё╝ ╞╝ ёЮЦ╞╞╔ ╓╝ё╝╒╝Ю╝╒: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
ддддддддддддддддддбдддддддбддддддддбддддддддддддддбддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддбдддддддддддддддддддддддддддддддддддддддбддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддбдддддддддддддд
                  Ё@~@@@@@Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё                                       Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&.&&&Ё&#&&&&&&&&&.&&
ддддддддддддддддддадддддддаддддддддаддддддддддддддаддддддддаддддддддддддддаддддддддддддддаддддддддддддддаддддддддддддддадддддддддддддддддддддддддддддддддддддддаддддддддаддддддддддддддаддддддддддддддаддддддддддддддаддддддддддддддаддддддддадддддддддддддд
.}
.}
.fields
              sKontrTxt1                             OrgName
                                                     VidOplMoneyTxt   OrgMoneyOplKol   OrgMoneyOplSumNoNds   OrgMoneyOplSumNds1+OrgMoneyOplSumNds2     OrgMoneyOplSum   OrgMoneyOplSumDopNalog
                                                     VidOplVzachetTxt OrgVzachetOplKol OrgVzachetOplSumNoNds OrgVzachetOplSumNds1+OrgVzachetOplSumNds2 OrgVzachetOplSum OrgVzachetOplSumDopNalog
                                                     VidOplOVexelTxt  OrgOVexelOplKol  OrgOVexelOplSumNoNds  OrgOVexelOplSumNds1+OrgOVexelOplSumNds2   OrgOVexelOplSum  OrgOVexelOplSumDopNalog
                                                     VidOplSVexelTxt  OrgSVexelOplKol  OrgSVexelOplSumNoNds  OrgSVexelOplSumNds1+OrgSVexelOplSumNds2   OrgSVexelOplSum  OrgSVexelOplSumDopNalog
                     pEdName  OrgDolg1Kol  OrgDolg1Sum OrgOtgrKol OrgOtgrSumNoNds OrgOtgrSumNds1+OrgOtgrSumNds2 OrgOtgrSum OrgOtgrSumDopNalog OrgOplKol OrgOplSumNoNds OrgOplSumNds1+OrgOplSumNds2 OrgOplSum    OrgOplSumDopNalog OrgDolg2Kol OrgDolg2Sum
.endfields
.{?Internal;(Detal<=4)
     ┬Б╝ё╝ ╞╝ @@@@@@@@@@: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.begin b := Abs(OrgMoneyOplSum)>0.005 or Abs(OrgVzachetOplSum)>0.005 or Abs(OrgOVexelOplSum)>0.005 or Abs(OrgSVexelOplSum)>0.005 end.
.{?Internal;(b)
дддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбдддддддддддддддддддддддддддддддддддддддбддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддддддддддд
.}
.{?Internal;(Abs(OrgMoneyOplSum)>0.005)
                                                                                                                       Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё
.}
.{?Internal;(Abs(OrgVzachetOplSum)>0.005)
                                                                                                                       Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё
.}
.{?Internal;(Abs(OrgOVexelOplSum)>0.005)
                                                                                                                       Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё
.}
.{?Internal;(Abs(OrgSVexelOplSum)>0.005)
                                                                                                                       Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё
.}
.begin b := Abs(OrgMoneyOplSum)>0.005 or Abs(OrgVzachetOplSum)>0.005 or Abs(OrgOVexelOplSum)>0.005 or Abs(OrgSVexelOplSum)>0.005 end.
.{?Internal;(b)
ддддддддддддддддддбдддддддбддддддддбддддддддддддддбддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддедддддддддддддддддддддддддддддддддддддддеддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддбдддддддддддддд
.}
.begin b := Abs(OrgMoneyOplSum)<=0.005 and Abs(OrgVzachetOplSum)<=0.005 and Abs(OrgOVexelOplSum)<=0.005 and Abs(OrgSVexelOplSum)<=0.005 end.
.{?Internal;(b)
ддддддддддддддддддбдддддддбддддддддбддддддддддддддбддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддбдддддддддддддддддддддддддддддддддддддддбддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддбдддддддддддддд
.}
                  Ё@~@@@@@Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё                                       Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&.&&&Ё&#&&&&&&&&&.&&
ммммммммммммммммммомммммммоммммммммоммммммммммммммоммммммммоммммммммммммммоммммммммммммммоммммммммммммммоммммммммммммммомммммммммммммммммммммммммммммммммммммммоммммммммоммммммммммммммоммммммммммммммоммммммммммммммоммммммммммммммоммммммммомммммммммммммм
.}
.fields
                                                     VidOplMoneyTxt   RepMoneyOplKol   RepMoneyOplSumNoNds   RepMoneyOplSumNds1+RepMoneyOplSumNds2     RepMoneyOplSum   RepMoneyOplSumDopNalog
                                                     VidOplVzachetTxt RepVzachetOplKol RepVzachetOplSumNoNds RepVzachetOplSumNds1+RepVzachetOplSumNds2 RepVzachetOplSum RepVzachetOplSumDopNalog
                                                     VidOplOVexelTxt  RepOVexelOplKol  RepOVexelOplSumNoNds  RepOVexelOplSumNds1+RepOVexelOplSumNds2   RepOVexelOplSum  RepOVexelOplSumDopNalog
                                                     VidOplSVexelTxt  RepSVexelOplKol  RepSVexelOplSumNoNds  RepSVexelOplSumNds1+RepSVexelOplSumNds2   RepSVexelOplSum  RepSVexelOplSumDopNalog
                      pEdName RepDolg1Kol RepDolg1Sum RepOtgrKol RepOtgrSumNoNds RepOtgrSumNds1+RepOtgrSumNds2 RepOtgrSum      RepOtgrSumDopNalog RepOplKol RepOplSumNoNds RepOplSumNds1+RepOplSumNds2 RepOplSum RepOplSumDopNalog RepDolg2Kol RepDolg2Sum
.endfields
дддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд
Ъ░Ъ▒
.begin b := Abs(RepMoneyOplSum)>0.005 or Abs(RepVzachetOplSum)>0.005 or Abs(RepOVexelOplSum)>0.005 or Abs(RepSVexelOplSum)>0.005 end.
.{?Internal;(b)
дддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбдддддддддддддддддддддддддддддддддддддддбддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддддддддддд
.}
.{?Internal;(Abs(RepMoneyOplSum)>0.005)
                                                                                                                       Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё
.}
.{?Internal;(Abs(RepVzachetOplSum)>0.005)
                                                                                                                       Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё
.}
.{?Internal;(Abs(RepOVexelOplSum)>0.005)
                                                                                                                       Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё
.}
.{?Internal;(Abs(RepSVexelOplSum)>0.005)
                                                                                                                       Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё
.}
.begin b := Abs(RepMoneyOplSum)>0.005 or Abs(RepVzachetOplSum)>0.005 or Abs(RepOVexelOplSum)>0.005 or Abs(RepSVexelOplSum)>0.005 end.
.{?Internal;(b)
ддддддддддддддддддбдддддддбддддддддбддддддддддддддбддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддедддддддддддддддддддддддддддддддддддддддеддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддбдддддддддддддд
.}
.begin b := Abs(RepMoneyOplSum)<=0.005 and Abs(RepVzachetOplSum)<=0.005 and Abs(RepOVexelOplSum)<=0.005 and Abs(RepSVexelOplSum)<=0.005 end.
.{?Internal;(b)
ддддддддддддддддддбдддддддбддддддддбддддддддддддддбддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддбдддддддддддддддддддддддддддддддддддддддбддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддддддддбддддддддбдддддддддддддд
.}
                  Ё@~@@@@@Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё                                       Ё&#&&.&&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&.&&&Ё&#&&&&&&&&&.&&
ддддддддддддддддддадддддддаддддддддаддддддддддддддаддддддддаддддддддддддддаддддддддддддддаддддддддддддддаддддддддддддддадддддддддддддддддддддддддддддддддддддддаддддддддаддддддддддддддаддддддддддддддаддддддддддддддаддддддддддддддаддддддддадддддддддддддд
Ъ▒
.endform

!--------------------------------------------------------------------------------------------------------------------
#doc
▌БГ╔Б Ю╔═╚╗╖═Ф╗╗ ╒ ╜═БЦЮ═╚Л╜КЕ ╞╝╙═╖═Б╔╚ОЕ А ╓╝╞╝╚╜╗Б╔╚Л╜К╛ ╜═╚╝ё╝╛ (║╔╖ ёЮ═ДК █═╗╛╔╜╝╒═╜╗╔ ▄√,ЦА╚Цё╗)
#end
.linkform 'DolgOpl1_12' prototype is 'DolgOpl1'
.NameInList '▌БГ╔Б Ю╔═╚╗╖═Ф╗╗ ╒ ╜═БЦЮ═╚Л╜КЕ ╞╝╙═╖═Б╔╚ОЕ А ╓╝╞╝╚╜╗Б╔╚Л╜К╛ ╜═╚╝ё╝╛ (║╔╖ ёЮ═ДК █═╗╛╔╜╝╒═╜╗╔ ▄√,ЦА╚Цё╗)'
.Group '│╔╖ ёЮ═ДК <█═╗╛╔╜╝╒═╜╗╔ ╛═БФ╔╜╜╝АБ╗/ЦА╚Цё╗>'
.var
  b: boolean
.endvar
.fields
! Header ╜═ ╚╗АБ
  CommonFormHeader
  '▐╝ '+AllPartyTxt+' '+AllPartyVTxt+' ▐╝ '+AllMcUslTxt+' '+AllMcUslVTxt+
            if(pEdName='','',' ⌠Г.╔╓.: '+pEdName)
  DateToStr(d2,'DD/MM/YYYY')
  DateToStr(d3,'DD/MM/YYYY')
  '╞╝ '+if(ByOpr=0
          , '╒А╔╛ (╞╝ ╒К╞╗А╙╔)'
          , if(ByOpr=2
              ,'╒К╞╝╚╜╔╜╜К╛'
              ,'╒К╞╗А═╜╜К╛'
              )
          )+ if(NaklAkt=1
               ,' ╜═╙╚═╓╜К╛'
               , if(NaklAkt=2
                   ,' ═╙Б═╛'
                   ,' ╜═╙╚═╓╜К╛, ═╙Б═╛'
                   )
               ) +
          if(Longint(d1)=0,'',' А '+DateToStr(d1,'DD/MM/YYYY'))+
          if(longint(d4)=0,'',' ╞╝ '+DateToStr(d4,'DD/MM/YYYY'))
  '▌БёЮЦ╕╔╜╝ (╒К╞╝╚╜╔╜╝)'+
    if (TysEd=2,', ╒ ╛╗╚╚╗╝╜═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф'
       , if (TysEd=1,', ╒ БКАОГ═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф',''))+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))
  '▌╞╚═Г╔╜╝'+
    if (TysEd=2,', ╒ ╛╗╚╚╗╝╜═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф'
       , if (TysEd=1,', ╒ БКАОГ═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф',''))+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))
  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'
  '┌ Б╝╛ Г╗А╚╔ '+DopNalogTxt
  '┌ Б╝╛ Г╗А╚╔ '+DopNalogTxt
  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'

! ╝БГ╔Б
  CommonFormHeader
  '╞╝ '+if(ByOpr=0
          , '╒А╔╛ (╞╝ ╒К╞╗А╙╔)'
          , if(ByOpr=2
              ,'╒К╞╝╚╜╔╜╜К╛'
              ,'╒К╞╗А═╜╜К╛'
              )
          )+ if(NaklAkt=1
               ,' ╜═╙╚═╓╜К╛'
               , if(NaklAkt=2
                   ,' ═╙Б═╛'
                   ,' ╜═╙╚═╓╜К╛, ═╙Б═╛'
                   )
               ) +
          if(Longint(d1)=0,'',' А '+DateToStr(d1,'DD/MM/YYYY'))+
          if(longint(d4)=0,'',' ╞╝ '+DateToStr(d4,'DD/MM/YYYY'))
  DateToStr(d2,'DD/MM/YYYY')
  DateToStr(d3,'DD/MM/YYYY')
.endfields
.P 60
.[h SKIP
Ъ░Ъ│^Ъ│
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ▀╗АБ @NP@- 1  ╞╔Ю╗╝╓ А @@@@@@@@@@ ╞╝ @@@@@@@@@@ @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ▀╗АБ @NP@- 2
дддддддддддддддддддддддддддбддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбддддддддддддддддддддддддддд
   ┌Е╝╓ОИ═О ╖═╓╝╚╕╔╜╜╝АБЛ  Ё@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё  ┬АЕ╝╓ОИ═О ╖═╓╝╚╕╔╜╜╝АБЛ
ддддддддддбддддддддддддддддеддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддеддддддддддддддддддддддддддддддддддддддбддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддеддддддддддбдддддддддддддддд
  ┼╝╚-╒╝  Ё@~@@@@@@@@@@@@@@Ё  ┼╝╚-╒╝  Ё  ▒Ц╛╛═ ║╔╖ █└▒ Ё   ▒Ц╛╛═ █└▒    Ё   ┌А╔ё╝ А █└▒  Ё@~@@@@@@@@@@@@@@Ё              ┌╗╓ ╝╞╚═БК              Ё  ┼╝╚-╒╝  Ё  ▒Ц╛╛═ ║╔╖ █└▒ Ё   ▒Ц╛╛═ █└▒    Ё   ┌А╔ё╝ А █└▒  Ё@~@@@@@@@@@@@@@@Ё  ┼╝╚-╒╝  Ё@~@@@@@@@@@@@@@@
ддддддддддеддддддддддддддддеддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддддддддддддддддддддддддеддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддеддддддддддедддддддддддддддд
    (1)   Ё       (2)      Ё    (3)   Ё       (4)      Ё       (5)      Ё       (6)      Ё       (7)      Ё                 (8)                  Ё    (9)   Ё      (10)      Ё      (11)      Ё      (12)      Ё       (13)     Ё   (14)   Ё      (15)
ддддддддддаддддддддддддддддаддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддддддддддддддддддддддддаддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддадддддддддддддддд
.]hЪ░
Ъ│^
.{?Internal;(wDirect=1)

                ┌┘└▌▄▌▒▓° ▌▓┐░⌠┤┼┬ ┬ ░┘─▀┬┤─√┬┬ ┌ █─▓⌠░─▀°█⌡∙ ▐▌┼─┤─▓┘▀÷∙
.}
.{?Internal;(wDirect=2)

                ┌┘└▌▄▌▒▓° ▌▓┐░⌠┤┼┬ ┬ ┤─┼⌠▐┼┬ ┌ █─▓⌠░─▀°█⌡∙ ▐▌┼─┤─▓┘▀÷∙
.}

           @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

                         ╖═ ╞╔Ю╗╝╓ А @@@@@@@@@@ ╞╝ @@@@@@@@@@Ъ│

.fields
  '▐╝ '+AllDescrTxt+' '+AllDescrVTxt
  '▐╝ '+AllKontrTxt+' '+AllKontrVTxt
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.{CheckEnter pAllKontr
.fields
  KontrGrDoName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.{?Internal;(AllOtvPodr<>0 and (AllKontr=3))
.fields
  '▐╝ '+AllOtvPodrTxt
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.{CheckEnter pAllOtvPodr
.fields
  OtvPodrDoName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.fields
  '▐╝ '+AllPartyTxt+' '+AllPartyVTxt
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.{CheckEnter pAllParty
.fields
  PartyName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.fields
  '▐╝ '+AllMcUslTxt+' '+AllMcUslVTxt+
            if(pEdName='','',' ⌠Г╔Б╜═О ╔╓╗╜╗Ф═: '+pEdName)
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.{CheckEnter pAllMcUsl
.fields
  McUslName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.fields
  '▌БёЮЦ╕╔╜╝ (╒К╞╝╚╜╔╜╝)'+
    if (TysEd=2,', ╒ ╛╗╚╚╗╝╜═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф'
       , if (TysEd=1,', ╒ БКАОГ═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф',''))+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))
  '▌╞╚═Г╔╜╝'+
    if (TysEd=2,', ╒ ╛╗╚╚╗╝╜═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф'
       , if (TysEd=1,', ╒ БКАОГ═Е ЦГ╔Б╜КЕ ╔╓╗╜╗Ф',''))+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))
  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'
  '┌ Б╝╛ Г╗А╚╔ '+DopNalogTxt
  '┌ Б╝╛ Г╗А╚╔ '+DopNalogTxt
  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'
.endfields
Ъ░
                                                                                                ▀╗АБ  1 - 1                                                                                                                                    ▀╗АБ   1 - 2
дддддддддддддддддддддддддддбддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбддддддддддддддддддддддддддд
   ┌Е╝╓ОИ═О ╖═╓╝╚╕╔╜╜╝АБЛ  Ё@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё  ┬АЕ╝╓ОИ═О ╖═╓╝╚╕╔╜╜╝АБЛ
ддддддддддбддддддддддддддддеддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддеддддддддддддддддддддддддддддддддддддддбддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддеддддддддддбдддддддддддддддд
  ┼╝╚-╒╝  Ё@~@@@@@@@@@@@@@@Ё  ┼╝╚-╒╝  Ё  ▒Ц╛╛═ ║╔╖ █└▒ Ё   ▒Ц╛╛═ █└▒    Ё   ┌А╔ё╝ А █└▒  Ё@~@@@@@@@@@@@@@@Ё              ┌╗╓ ╝╞╚═БК              Ё  ┼╝╚-╒╝  Ё  ▒Ц╛╛═ ║╔╖ █└▒ Ё   ▒Ц╛╛═ █└▒    Ё   ┌А╔ё╝ А █└▒  Ё@~@@@@@@@@@@@@@@Ё  ┼╝╚-╒╝  Ё@~@@@@@@@@@@@@@@
ддддддддддеддддддддддддддддеддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддддддддддддддддддддддддеддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддеддддддддддедддддддддддддддд
    (1)   Ё       (2)      Ё    (3)   Ё       (4)      Ё       (5)      Ё       (6)      Ё       (7)      Ё                 (8)                  Ё    (9)   Ё      (10)      Ё      (11)      Ё      (12)      Ё       (13)     Ё   (14)   Ё      (15)
ддддддддддаддддддддддддддддаддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддддддддддддддддддддддддаддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддадддддддддддддддд
.{CheckEnter DOOrg
.fields
            sKontrTxt   OrgName
.endfields

           @@@@@@@@@@: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{CheckEnter DOGrDOG
.{?Internal;(AllKontr>=5)
.fields
                          GrDOGName
.endfields
     ┐ЮЦ╞╞═ ╓╝ё╝╒╝Ю╝╒: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.{CheckEnter DODOG
.{?Internal;(AllKontr>=4)
.fields
                          DOGNumDescr DateToStr(DOGDate,'DD/MM/YYYY')
.endfields
              └╝ё╝╒╝Ю: @@@@@@@@@@@@@@@@@@@@ ╝Б @@@@@@@@@@
.}
.{CheckEnter DOGrDO
.{?Internal;(AllKontr<4)
.fields
                          GrDOName
.endfields
            ┐ЮЦ╞╞═ └▌: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.{CheckEnter DODO
.fields
                          DONumDescr DateToStr(DODate,'DD/MM/YYYY')
.endfields
   └╝╙Ц╛╔╜Б-╝А╜╝╒═╜╗╔: @@@@@@@@@@@@@@@@@@@@ ╝Б @@@@@@@@@@
.{?Internal;(Detal=0)
ддддддддддбддддддддддддддддбддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддддддддддддддддддддддддбддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддбдддддддддддддддд
.}
.{CheckEnter DOSp
.fields
 Dolg1Kol       Dolg1Sum   OtgrKol    OtgrSumNoNds    OtgrSumNds1+OtgrSumNds2 OtgrSum OtgrSumDopNalog VidOpl OplKol  OplSumNoNds    OplSumNds1+OplSumNds2 OplSum  OplSumDopNalog Dolg2Kol  Dolg2Sum
.endfields
&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&
.}
.fields
!                                   DateToStr(DODate,'DD/MM/YYYY') DONumDescr
 DODolg1Kol     DODolg1Sum  DOOtgrKol  DOOtgrSumNoNDs DOOtgrSumNds1+DOOtgrSumNds2   DOOtgrSum   DOOtgrSumDopNalog DOOplKol  DOOplSumNoNds  DOOplSumNds1+DOOplSumNds2  DOOplSum    DOOplSumDopNalog DODolg2Kol  DODolg2Sum
.endfields
.{?Internal;(Detal=0)
ддддддддддеддддддддддддддддеддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддддддддддддддддддддддддеддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддеддддддддддедддддддддддддддд
.}
.{?Internal;(Detal<>0)
ддддддддддбддддддддддддддддбддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддддддддддддддддддддддддбддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддбдддддддддддддддд
.}
&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё                                      Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&
ддддддддддаддддддддддддддддаддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддддддддддддддддддддддддаддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддадддддддддддддддд
.}
.{?Internal;(AllKontr<4)
.fields
                                                       GrDOName
 GrDODolg1Kol GrDODolg1Sum GrDOOtgrKol GrDOOtgrSumNoNds GrDOOtgrSumNds1+GrDOOtgrSumNds2 GrDOOtgrSum GrDOOtgrSumDopNalog GrDOOplKol GrDOOplSumNoNds GrDOOplSumNds1+GrDOOplSumNds2 GrDOOplSum GrDOOplSumDopNalog GrDODolg2Kol   GrDODolg2Sum
.endfields
.{?Internal;(Detal<=1)
               ┬Б╝ё╝ ╞╝ ёЮЦ╞╞╔ └▌: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
ддддддддддбддддддддддддддддбддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддддддддддддддддддддддддбддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддбдддддддддддддддд
&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё                                      Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&
ддддддддддаддддддддддддддддаддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддддддддддддддддддддддддаддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддадддддддддддддддд
.}
.}
.{?Internal;(AllKontr>=4)
.fields
!                                   DateToStr(DOGDate,'DD/MM/YYYY') DOGNumDescr
 DOGDolg1Kol     DOGDolg1Sum  DOGOtgrKol  DOGOtgrSumNoNDs DOGOtgrSumNds1+DOGOtgrSumNds2   DOGOtgrSum   DOGOtgrSumDopNalog DOGOplKol  DOGOplSumNoNds  DOGOplSumNds1+DOGOplSumNds2  DOGOplSum    DOGOplSumDopNalog DOGDolg2Kol  DOGDolg2Sum
.endfields
.{?Internal;(Detal=0)
ддддддддддеддддддддддддддддеддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддддддддддддддддддддддддеддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддеддддддддддедддддддддддддддд
.}
.{?Internal;(Detal<>0)
ддддддддддбддддддддддддддддбддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддддддддддддддддддддддддбддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддбдддддддддддддддд
.}
&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё                                      Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&
ддддддддддаддддддддддддддддаддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддддддддддддддддддддддддаддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддадддддддддддддддд
.}
.}
.{?Internal;(AllKontr>=5)
.fields
 GrDOGName
 GrDOGDolg1Kol GrDOGDolg1Sum GrDOGOtgrKol GrDOGOtgrSumNoNds GrDOGOtgrSumNds1+GrDOGOtgrSumNds2 GrDOGOtgrSum GrDOGOtgrSumDopNalog GrDOGOplKol GrDOGOplSumNoNds GrDOGOplSumNds1+GrDOGOplSumNds2 GrDOGOplSum GrDOGOplSumDopNalog GrDOGDolg2Kol   GrDOGDolg2Sum
.endfields
.{?Internal;(Detal<=3)
        ┬Б╝ё╝ ╞╝ ёЮЦ╞╞╔ ╓╝ё╝╒╝Ю╝╒: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
ддддддддддбддддддддддддддддбддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддддддддддддддддддддддддбддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддбдддддддддддддддд
&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё                                      Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&
ддддддддддаддддддддддддддддаддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддддддддддддддддддддддддаддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддадддддддддддддддд
.}
.}
.fields
               sKontrTxt1                            OrgName
                                                     VidOplMoneyTxt   OrgMoneyOplKol   OrgMoneyOplSumNoNds   OrgMoneyOplSumNds1+OrgMoneyOplSumNds2     OrgMoneyOplSum   OrgMoneyOplSumDopNalog
                                                     VidOplVzachetTxt OrgVzachetOplKol OrgVzachetOplSumNoNds OrgVzachetOplSumNds1+OrgVzachetOplSumNds2 OrgVzachetOplSum OrgVzachetOplSumDopNalog
                                                     VidOplOVexelTxt  OrgOVexelOplKol  OrgOVexelOplSumNoNds  OrgOVexelOplSumNds1+OrgOVexelOplSumNds2   OrgOVexelOplSum  OrgOVexelOplSumDopNalog
                                                     VidOplSVexelTxt  OrgSVexelOplKol  OrgSVexelOplSumNoNds  OrgSVexelOplSumNds1+OrgSVexelOplSumNds2   OrgSVexelOplSum  OrgSVexelOplSumDopNalog
 OrgDolg1Kol  OrgDolg1Sum OrgOtgrKol OrgOtgrSumNoNds OrgOtgrSumNds1+OrgOtgrSumNds2 OrgOtgrSum OrgOtgrSumDopNalog OrgOplKol OrgOplSumNoNds OrgOplSumNds1+OrgOplSumNds2 OrgOplSum    OrgOplSumDopNalog OrgDolg2Kol OrgDolg2Sum
.endfields
.{?Internal;(Detal<=4)
     ┬Б╝ё╝ ╞╝ @@@@@@@@@@: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.begin b := Abs(OrgMoneyOplSum)>0.005 or Abs(OrgVzachetOplSum)>0.005 or Abs(OrgOVexelOplSum)>0.005 or Abs(OrgSVexelOplSum)>0.005 end.
.{?Internal;(b)
ддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбддддддддддддддддддддддддддддддддддддддбддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддддддддддддд
.}
.{?Internal;(Abs(OrgMoneyOplSum)>0.005)
                                                                                                          Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё
.}
.{?Internal;(Abs(OrgVzachetOplSum)>0.005)
                                                                                                          Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё
.}
.{?Internal;(Abs(OrgOVexelOplSum)>0.005)
                                                                                                          Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё
.}
.{?Internal;(Abs(OrgSVexelOplSum)>0.005)
                                                                                                          Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё
.}
.begin b := Abs(OrgMoneyOplSum)>0.005 or Abs(OrgVzachetOplSum)>0.005 or Abs(OrgOVexelOplSum)>0.005 or Abs(OrgSVexelOplSum)>0.005 end.
.{?Internal;(b)
ддддддддддбддддддддддддддддбддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддеддддддддддддддддддддддддддддддддддддддеддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддеддддддддддбдддддддддддддддд
.}
.begin b := Abs(OrgMoneyOplSum)<=0.005 and Abs(OrgVzachetOplSum)<=0.005 and Abs(OrgOVexelOplSum)<=0.005 and Abs(OrgSVexelOplSum)<=0.005 end.
.{?Internal;(b)
ддддддддддбддддддддддддддддбддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддддддддддддддддддддддддбддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддбдддддддддддддддд
.}
&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё                                      Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&
ммммммммммоммммммммммммммммоммммммммммоммммммммммммммммоммммммммммммммммоммммммммммммммммоммммммммммммммммоммммммммммммммммммммммммммммммммммммммоммммммммммоммммммммммммммммоммммммммммммммммоммммммммммммммммоммммммммммммммммоммммммммммомммммммммммммммм
.}
.fields
                                                     VidOplMoneyTxt   RepMoneyOplKol   RepMoneyOplSumNoNds   RepMoneyOplSumNds1+RepMoneyOplSumNds2     RepMoneyOplSum   RepMoneyOplSumDopNalog
                                                     VidOplVzachetTxt RepVzachetOplKol RepVzachetOplSumNoNds RepVzachetOplSumNds1+RepVzachetOplSumNds2 RepVzachetOplSum RepVzachetOplSumDopNalog
                                                     VidOplOVexelTxt  RepOVexelOplKol  RepOVexelOplSumNoNds  RepOVexelOplSumNds1+RepOVexelOplSumNds2   RepOVexelOplSum  RepOVexelOplSumDopNalog
                                                     VidOplSVexelTxt  RepSVexelOplKol  RepSVexelOplSumNoNds  RepSVexelOplSumNds1+RepSVexelOplSumNds2   RepSVexelOplSum  RepSVexelOplSumDopNalog
 RepDolg1Kol RepDolg1Sum RepOtgrKol RepOtgrSumNoNds RepOtgrSumNds1+RepOtgrSumNds2 RepOtgrSum      RepOtgrSumDopNalog RepOplKol RepOplSumNoNds RepOplSumNds1+RepOplSumNds2 RepOplSum RepOplSumDopNalog RepDolg2Kol RepDolg2Sum
.endfields
дддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд
Ъ░Ъ▒
.begin b := Abs(RepMoneyOplSum)>0.005 or Abs(RepVzachetOplSum)>0.005 or Abs(RepOVexelOplSum)>0.005 or Abs(RepSVexelOplSum)>0.005 end.
.{?Internal;(b)
ддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбддддддддддддддддддддддддддддддддддддддбддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддддддддддддд
.}
.{?Internal;(Abs(RepMoneyOplSum)>0.005)
                                                                                                          Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё
.}
.{?Internal;(Abs(RepVzachetOplSum)>0.005)
                                                                                                          Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё
.}
.{?Internal;(Abs(RepOVexelOplSum)>0.005)
                                                                                                          Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё
.}
.{?Internal;(Abs(RepSVexelOplSum)>0.005)
                                                                                                          Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё
.}
.begin b := Abs(RepMoneyOplSum)>0.005 or Abs(RepVzachetOplSum)>0.005 or Abs(RepOVexelOplSum)>0.005 or Abs(RepSVexelOplSum)>0.005 end.
.{?Internal;(b)
ддддддддддбддддддддддддддддбддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддеддддддддддддддддддддддддддддддддддддддеддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддеддддддддддддддддеддддддддддбдддддддддддддддд
.}
.begin b := Abs(RepMoneyOplSum)<=0.005 and Abs(RepVzachetOplSum)<=0.005 and Abs(RepOVexelOplSum)<=0.005 and Abs(RepSVexelOplSum)<=0.005 end.
.{?Internal;(b)
ддддддддддбддддддддддддддддбддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддддддддддддддддддддддддбддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддддддддбддддддддддбдддддддддддддддд
.}
&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё                                      Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&&&&&&&&.&&Ё&'#&&&.&&&Ё&'#&&&&&&&&&&.&&
ддддддддддаддддддддддддддддаддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддддддддддддддддддддддддаддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддддддддаддддддддддадддддддддддддддд
Ъ▒
.endform

!--------------------------------------------------------------------------------------------------------------------
#doc
▌БГ╔Б Ю╔═╚╗╖═Ф╗╗ А ╓╝╞╝╚╜╗Б╔╚Л╜К╛ ╜═╚╝ё╝╛ (║╔╖ ╙╝╚╗Г╔АБ╒)
#end
.linkform 'DolgOpl1_13' prototype is 'DolgOpl1'
.NameInList '▌БГ╔Б Ю╔═╚╗╖═Ф╗╗ А ╓╝╞╝╚╜╗Б╔╚Л╜К╛ ╜═╚╝ё╝╛ (║╔╖ ╙╝╚╗Г╔АБ╒)'
.Group '│╔╖ ╙╝╚╗Г╔АБ╒'
.var
  b: boolean
.endvar
.fields
! Header ╜═ ╚╗АБ
  CommonFormHeader
  '▐╝ '+AllPartyTxt+' '+AllPartyVTxt+' ▐╝ '+AllMcUslTxt+' '+AllMcUslVTxt+
            if(pEdName='','',' ⌠Г.╔╓.: '+pEdName)
  DateToStr(d2,'DD/MM/YYYY')
  DateToStr(d3,'DD/MM/YYYY')
  '╞╝ '+if(ByOpr=0
          , '╒А╔╛ (╞╝ ╒К╞╗А╙╔)'
          , if(ByOpr=2
              ,'╒К╞╝╚╜╔╜╜К╛'
              ,'╒К╞╗А═╜╜К╛'
              )
          )+ if(NaklAkt=1
               ,' ╜═╙╚═╓╜К╛'
               , if(NaklAkt=2
                   ,' ═╙Б═╛'
                   ,' ╜═╙╚═╓╜К╛, ═╙Б═╛'
                   )
               ) +
          if(Longint(d1)=0,'',' А '+DateToStr(d1,'DD/MM/YYYY'))+
          if(longint(d4)=0,'',' ╞╝ '+DateToStr(d4,'DD/MM/YYYY'))
  '▌БёЮЦ╕╔╜╝ (╒К╞╝╚╜╔╜╝)'+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))
  '▌╞╚═Г╔╜╝'+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))
  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'
  PrNds1
  PrNds2
  '┌ Б╝╛ Г╗А╚╔ '+DopNalogTxt
  PrNds1
  PrNds2
  '┌ Б╝╛ Г╗А╚╔ '+DopNalogTxt
  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'

! ╝БГ╔Б
  CommonFormHeader
  '╞╝ '+if(ByOpr=0
          , '╒А╔╛ (╞╝ ╒К╞╗А╙╔)'
          , if(ByOpr=2
              ,'╒К╞╝╚╜╔╜╜К╛'
              ,'╒К╞╗А═╜╜К╛'
              )
          )+ if(NaklAkt=1
               ,' ╜═╙╚═╓╜К╛'
               , if(NaklAkt=2
                   ,' ═╙Б═╛'
                   ,' ╜═╙╚═╓╜К╛, ═╙Б═╛'
                   )
               ) +
          if(Longint(d1)=0,'',' А '+DateToStr(d1,'DD/MM/YYYY'))+
          if(longint(d4)=0,'',' ╞╝ '+DateToStr(d4,'DD/MM/YYYY'))
  DateToStr(d2,'DD/MM/YYYY')
  DateToStr(d3,'DD/MM/YYYY')
.endfields
.P 60
.[h SKIP
Ъ░Ъ│^Ъ│
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ▀╗АБ @NP@- 1  ╞╔Ю╗╝╓ А @@@@@@@@@@ ╞╝ @@@@@@@@@@ @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ▀╗АБ @NP@- 2
дддддддддддддддддбдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбддддддддддддддддд
┌Е╝╓ОИ═О ╖═╓╝╚╕. Ё@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё┬АЕ╝╓ОИ═О ╖═╓╝╚╕.
дддддддддддддддддедддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддеддддддддддддддддддддддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддеддддддддддддддддд
@~@@@@@@@@@@@@@@@Ё  ▒Ц╛╛═ ║╔╖ █└▒  Ё ▒Ц╛╛═ █└▒ (&.%) Ё ▒Ц╛╛═ █└▒ (&.%) Ё   ┌А╔ё╝ А █└▒   Ё@~@@@@@@@@@@@@@@@Ё             ┌╗╓ ╝╞╚═БК             Ё  ▒Ц╛╛═ ║╔╖ █└▒  Ё ▒Ц╛╛═ █└▒ (&.%) Ё ▒Ц╛╛═ █└▒ (&.%) Ё   ┌А╔ё╝ А █└▒   Ё@~@@@@@@@@@@@@@@@Ё@~@@@@@@@@@@@@@@@
дддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддеддддддддддддддддддддддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддеддддддддддддддддд
       (1)       Ё       (2)       Ё       (3)       Ё       (4)       Ё       (5)       Ё       (6)       Ё                (7)                 Ё       (8)       Ё       (9)       Ё      (10)       Ё      (11)       Ё       (12)      Ё      (13)
дддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддаддддддддддддддддддддддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддаддддддддддддддддд
.]hЪ░
Ъ│^
.{?Internal;(wDirect=1)

                ┌┘└▌▄▌▒▓° ▌▓┐░⌠┤┼┬ ┬ ░┘─▀┬┤─√┬┬ ┌ █─▓⌠░─▀°█⌡∙ ▐▌┼─┤─▓┘▀÷∙
.}
.{?Internal;(wDirect=2)

                ┌┘└▌▄▌▒▓° ▌▓┐░⌠┤┼┬ ┬ ░┘─▀┬┤─√┬┬ ┌ █─▓⌠░─▀°█⌡∙ ▐▌┼─┤─▓┘▀÷∙
.}

           @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

                         ╖═ ╞╔Ю╗╝╓ А @@@@@@@@@@ ╞╝ @@@@@@@@@@Ъ│

.fields
  '▐╝ '+AllDescrTxt+' '+AllDescrVTxt
  '▐╝ '+AllKontrTxt+' '+AllKontrVTxt
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.{CheckEnter pAllKontr
.fields
  KontrGrDoName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.{?Internal;(AllOtvPodr<>0 and (AllKontr=3))
.fields
  '▐╝ '+AllOtvPodrTxt
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.{CheckEnter pAllOtvPodr
.fields
  OtvPodrDoName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.fields
  '▐╝ '+AllPartyTxt+' '+AllPartyVTxt
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.{CheckEnter pAllParty
.fields
  PartyName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.fields
  '▐╝ '+AllMcUslTxt+' '+AllMcUslVTxt+
            if(pEdName='','',' ⌠Г╔Б╜═О ╔╓╗╜╗Ф═: '+pEdName)
.endfields
Ъ│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.{CheckEnter pAllMcUsl
.fields
  McUslName
.endfields
Ъ│      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ│
.}
.fields
  '▌БёЮЦ╕╔╜╝ (╒К╞╝╚╜╔╜╝)'+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))
  '▌╞╚═Г╔╜╝'+
     if (RubTysMln=1,', ╒ БКАОГ═Е ЮЦ║╚╔╘',
       if (RubTysMln=2,', ╒ ╛╗╚╚╗╝╜═Е ЮЦ║╚╔╘',''))
  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'
  PrNds1
  PrNds2
  '┌ Б╝╛ Г╗А╚╔ '+DopNalogTxt
  PrNds1
  PrNds2
  '┌ Б╝╛ Г╗А╚╔ '+DopNalogTxt
  '▒Ц╛╛═ ('+
  if (RubTysMln=1,'БКА.',
    if (RubTysMln=2,'╛╚╜.',''))+'ЮЦ║.)'
.endfields
Ъ░
                                                                                                 ▀╗АБ  1 - 1                                                                                                                                   ▀╗АБ   1 - 2
дддддддддддддддддбдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбддддддддддддддддд
┌Е╝╓ОИ═О ╖═╓╝╚╕. Ё@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё┬АЕ╝╓ОИ═О ╖═╓╝╚╕.
дддддддддддддддддедддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддеддддддддддддддддддддддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддеддддддддддддддддд
@~@@@@@@@@@@@@@@@Ё  ▒Ц╛╛═ ║╔╖ █└▒  Ё ▒Ц╛╛═ █└▒ (&.%) Ё ▒Ц╛╛═ █└▒ (&.%) Ё   ┌А╔ё╝ А █└▒   Ё@~@@@@@@@@@@@@@@@Ё             ┌╗╓ ╝╞╚═БК             Ё  ▒Ц╛╛═ ║╔╖ █└▒  Ё ▒Ц╛╛═ █└▒ (&.%) Ё ▒Ц╛╛═ █└▒ (&.%) Ё   ┌А╔ё╝ А █└▒   Ё@~@@@@@@@@@@@@@@@Ё@~@@@@@@@@@@@@@@@
дддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддеддддддддддддддддддддддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддеддддддддддддддддд
       (1)       Ё       (2)       Ё       (3)       Ё       (4)       Ё       (5)       Ё       (6)       Ё                (7)                 Ё       (8)       Ё       (9)       Ё      (10)       Ё      (11)       Ё       (12)      Ё      (13)
дддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддаддддддддддддддддддддддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддаддддддддддддддддд
.{CheckEnter DOOrg
.fields
        sKontrTxt OrgName
.endfields

           @@@@@@@@@@: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{CheckEnter DOGrDOG
.{?Internal;(AllKontr>=5)
.fields
                          GrDOGName
.endfields
     ┐ЮЦ╞╞═ ╓╝ё╝╒╝Ю╝╒: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.{CheckEnter DODOG
.{?Internal;(AllKontr>=4)
.fields
                          DOGNumDescr DateToStr(DOGDate,'DD/MM/YYYY')
.endfields
              └╝ё╝╒╝Ю: @@@@@@@@@@@@@@@@@@@@ ╝Б @@@@@@@@@@
.}
.{CheckEnter DOGrDO
.{?Internal;(AllKontr<4)
.fields
                          GrDOName
.endfields
            ┐ЮЦ╞╞═ └▌: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.{CheckEnter DODO
.fields
                          DONumDescr DateToStr(DODate,'DD/MM/YYYY')
.endfields
   └╝╙Ц╛╔╜Б-╝А╜╝╒═╜╗╔: @@@@@@@@@@@@@@@@@@@@ ╝Б @@@@@@@@@@
.{?Internal;(Detal=0)
дддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбддддддддддддддддддддддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбддддддддддддддддд
.}
.{CheckEnter DOSp
.fields
 Dolg1Sum          OtgrSumNoNds      OtgrSumNds1       OtgrSumNds2       OtgrSum           OtgrSumDopNalog   VidOpl                               OplSumNoNds       OplSumNds1        OplSumNds2        OplSum            OplSumDopNalog    Dolg2Sum
.endfields
&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&
.}
.fields
!                                   DateToStr(DODate,'DD/MM/YYYY') DONumDescr
 DODolg1Sum        DOOtgrSumNoNDs    DOOtgrSumNds1     DOOtgrSumNds2     DOOtgrSum         DOOtgrSumDopNalog                                      DOOplSumNoNds     DOOplSumNds1      DOOplSumNds2      DOOplSum          DOOplSumDopNalog  DODolg2Sum
.endfields
.{?Internal;(Detal=0)
дддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддеддддддддддддддддддддддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддеддддддддддддддддд
.}
.{?Internal;(Detal<>0)
дддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбддддддддддддддддддддддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбддддддддддддддддд
.}
&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё                                    Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&
дддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддаддддддддддддддддддддддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддаддддддддддддддддд
.}
.{?Internal;(AllKontr<4)
.fields
                                                       GrDOName
 GrDODolg1Sum      GrDOOtgrSumNoNds  GrDOOtgrSumNds1   GrDOOtgrSumNds2   GrDOOtgrSum       GrDOOtgrSumDopNalog                                    GrDOOplSumNoNds   GrDOOplSumNds1    GrDOOplSumNds2    GrDOOplSum        GrDOOplSumDopNalog GrDODolg2Sum
.endfields
.{?Internal;(Detal<=1)
               ┬Б╝ё╝ ╞╝ ёЮЦ╞╞╔ └▌: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
дддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбддддддддддддддддддддддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбддддддддддддддддд
&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё                                    Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&
дддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддаддддддддддддддддддддддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддаддддддддддддддддд
.}
.}
.{?Internal;(AllKontr>=4)
.fields
!                                   DateToStr(DOGDate,'DD/MM/YYYY') DOGNumDescr
 DOGDolg1Sum        DOGOtgrSumNoNDs    DOGOtgrSumNds1     DOGOtgrSumNds2     DOGOtgrSum         DOGOtgrSumDopNalog                                      DOGOplSumNoNds     DOGOplSumNds1      DOGOplSumNds2      DOGOplSum  DOGOplSumDopNalog  DOGDolg2Sum
.endfields
.{?Internal;(Detal=0)
дддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддеддддддддддддддддддддддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддеддддддддддддддддд
.}
.{?Internal;(Detal<>0)
дддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбддддддддддддддддддддддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбддддддддддддддддд
.}
&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё                                    Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&
дддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддаддддддддддддддддддддддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддаддддддддддддддддд
.}
.}
.{?Internal;(AllKontr>=5)
.fields
 GrDOGName
 GrDOGDolg1Sum GrDOGOtgrSumNoNds GrDOGOtgrSumNds1 GrDOGOtgrSumNds2 GrDOGOtgrSum GrDOGOtgrSumDopNalog               GrDOGOplSumNoNds   GrDOGOplSumNds1    GrDOGOplSumNds2    GrDOGOplSum        GrDOGOplSumDopNalog GrDOGDolg2Sum
.endfields
.{?Internal;(Detal<=3)
        ┬Б╝ё╝ ╞╝ ёЮЦ╞╞╔ ╓╝ё╝╒╝Ю╝╒: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
дддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбддддддддддддддддддддддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбддддддддддддддддд
&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё                                    Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&
дддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддаддддддддддддддддддддддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддаддддддддддддддддд
.}
.}
.fields
               sKontrTxt1                            OrgName
                                                     VidOplMoneyTxt   OrgMoneyOplSumNoNds   OrgMoneyOplSumNds1   OrgMoneyOplSumNds2    OrgMoneyOplSum   OrgMoneyOplSumDopNalog
                                                     VidOplVzachetTxt OrgVzachetOplSumNoNds OrgVzachetOplSumNds1 OrgVzachetOplSumNds2  OrgVzachetOplSum OrgVzachetOplSumDopNalog
                                                     VidOplOVexelTxt  OrgOVexelOplSumNoNds  OrgOVexelOplSumNds1  OrgOVexelOplSumNds2   OrgOVexelOplSum  OrgOVexelOplSumDopNalog
                                                     VidOplSVexelTxt  OrgSVexelOplSumNoNds  OrgSVexelOplSumNds1  OrgSVexelOplSumNds2   OrgSVexelOplSum  OrgSVexelOplSumDopNalog
 OrgDolg1Sum       OrgOtgrSumNoNds   OrgOtgrSumNds1   OrgOtgrSumNds2     OrgOtgrSum        OrgOtgrSumDopNalog                                     OrgOplSumNoNds    OrgOplSumNds1     OrgOplSumNds2     OrgOplSum         OrgOplSumDopNalog OrgDolg2Sum
.endfields
.{?Internal;(Detal<=4)
     ┬Б╝ё╝ ╞╝ @@@@@@@@@@: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.begin b := Abs(OrgMoneyOplSum)>0.005 or Abs(OrgVzachetOplSum)>0.005 or Abs(OrgOVexelOplSum)>0.005 or Abs(OrgSVexelOplSum)>0.005 end.
.{?Internal;(b)
дддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбддддддддддддддддддддддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбддддддддддддддддд
.}
.{?Internal;(Abs(OrgMoneyOplSum)>0.005)
                                                                                                           Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё
.}
.{?Internal;(Abs(OrgVzachetOplSum)>0.005)
                                                                                                           Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё
.}
.{?Internal;(Abs(OrgOVexelOplSum)>0.005)
                                                                                                           Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё
.}
.{?Internal;(Abs(OrgSVexelOplSum)>0.005)
                                                                                                           Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё
.}
.begin b := Abs(OrgMoneyOplSum)>0.005 or Abs(OrgVzachetOplSum)>0.005 or Abs(OrgOVexelOplSum)>0.005 or Abs(OrgSVexelOplSum)>0.005 end.
.{?Internal;(b)
дддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддеддддддддддддддддддддддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддеддддддддддддддддд
.}
.begin b := Abs(OrgMoneyOplSum)<=0.005 and Abs(OrgVzachetOplSum)<=0.005 and Abs(OrgOVexelOplSum)<=0.005 and Abs(OrgSVexelOplSum)<=0.005 end.
.{?Internal;(b)
дддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбддддддддддддддддддддддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбддддддддддддддддд
.}
&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё                                    Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&
мммммммммммммммммомммммммммммммммммомммммммммммммммммомммммммммммммммммомммммммммммммммммомммммммммммммммммоммммммммммммммммммммммммммммммммммммомммммммммммммммммомммммммммммммммммомммммммммммммммммомммммммммммммммммомммммммммммммммммоммммммммммммммммм
.}
.fields
                                                     VidOplMoneyTxt   RepMoneyOplSumNoNds   RepMoneyOplSumNds1   RepMoneyOplSumNds2    RepMoneyOplSum   RepMoneyOplSumDopNalog
                                                     VidOplVzachetTxt RepVzachetOplSumNoNds RepVzachetOplSumNds1 RepVzachetOplSumNds2  RepVzachetOplSum RepVzachetOplSumDopNalog
                                                     VidOplOVexelTxt  RepOVexelOplSumNoNds  RepOVexelOplSumNds1  RepOVexelOplSumNds2   RepOVexelOplSum  RepOVexelOplSumDopNalog
                                                     VidOplSVexelTxt  RepSVexelOplSumNoNds  RepSVexelOplSumNds1  RepSVexelOplSumNds2   RepSVexelOplSum  RepSVexelOplSumDopNalog
 RepDolg1Sum       RepOtgrSumNoNds   RepOtgrSumNds1    RepOtgrSumNds2    RepOtgrSum        RepOtgrSumDopNalog                                      RepOplSumNoNds    RepOplSumNds1     RepOplSumNds2     RepOplSum         RepOplSumDopNalog RepDolg2Sum
.endfields
дддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд
Ъ░Ъ▒
.begin b := Abs(RepMoneyOplSum)>0.005 or Abs(RepVzachetOplSum)>0.005 or Abs(RepOVexelOplSum)>0.005 or Abs(RepSVexelOplSum)>0.005 end.
.{?Internal;(b)
дддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбддддддддддддддддддддддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбддддддддддддддддд
.}
.{?Internal;(Abs(RepMoneyOplSum)>0.005)
                                                                                                           Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё
.}
.{?Internal;(Abs(RepVzachetOplSum)>0.005)
                                                                                                           Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё
.}
.{?Internal;(Abs(RepOVexelOplSum)>0.005)
                                                                                                           Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё
.}
.{?Internal;(Abs(RepSVexelOplSum)>0.005)
                                                                                                           Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё
.}
.begin b := Abs(RepMoneyOplSum)>0.005 or Abs(RepVzachetOplSum)>0.005 or Abs(RepOVexelOplSum)>0.005 or Abs(RepSVexelOplSum)>0.005 end.
.{?Internal;(b)
дддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддеддддддддддддддддддддддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддедддддддддддддддддеддддддддддддддддд
.}
.begin b := Abs(RepMoneyOplSum)<=0.005 and Abs(RepVzachetOplSum)<=0.005 and Abs(RepOVexelOplSum)<=0.005 and Abs(RepSVexelOplSum)<=0.005 end.
.{?Internal;(b)
дддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбддддддддддддддддддддддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбдддддддддддддддддбддддддддддддддддд
.}
&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё                                    Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&Ё&'#&&&&&&&&&&&.&&
дддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддаддддддддддддддддддддддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддадддддддддддддддддаддддддддддддддддд
Ъ▒
.endform
