/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Управление договорами                                     ║
 ║ Версия        : 5.70                                                      ║
 ║ Назначение    : Распоряжение на погрузку для Штерн-Цемента (навальное)    ║
 ║ Ответственный : Глушаков Дмитрий Сергеевич                                ║
 ║ Параметры     : есть                                                      ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/

#doc
Распоряжение на погрузку (навальное)
#end
.AutoForm 'SC_Rasp_n'(var pKatSopr:comp)
.NameInList 'Распоряжение на погрузку (навальное)'
.group 'Штерн Цемент'
!.list ''
.Create view SC_Rasp_main0
from
   KatSopr                    (ReadOnly)
  ,SpSopr                     (ReadOnly)
  ,TTNDoc                     (ReadOnly)
  ,Transp                     (ReadOnly)
  ,KnDriver                   (ReadOnly)
  ,KatMC                      (ReadOnly)
  ,KatOtpEd                   (ReadOnly)
where
  ((
    pKatSopr            ==   KatSopr.nRec    and
    KatSopr.NRec        ==   SpSopr.cSopr    and
    word(1)             ==   SpSopr.PrMC     and
    SpSopr.cMCUSL       ==   KatMC.NRec      and
    SpSopr.cOtpEd       ==   KatOtpEd.NRec   and
    coKatSopr           ==   TTNDoc.wTable   and
    KatSopr.nRec        ==   TTNDoc.cDoc     and
    TTNDoc.cTransp      ==   Transp.nRec     and  // код автомобиля
    TTNDoc.cDriver      ==   KnDriver.nRec        // код водителя
  ))
;
.fields
  KatSopr.NSopr
  KatSopr.NSopr
  DateToStr(KatSopr.dSopr,'DD:MM:YYYY')
  DateToStr(KatSopr.dSopr,'DD:MM:YYYY')
  Transp.Nomer
  Transp.Nomer
  KnDriver.Name
  KnDriver.Name
  KatMC.Name
  KatMC.Name
  KatOtpEd.Name
  KatOtpEd.Name
  DoubleToStr(SpSopr.mTara, '6666666666666666.88')
  DoubleToStr(SpSopr.mTara, '6666666666666666.88')
.endfields //                                                        норм.!           элита!
.p 53
.begin
  if ((GetFirst KatSopr <> 0) or
      (GetFirst SpSopr <> 0) or
      (SpSopr.mTara=0))
    {
    Message(''#3'Распоряжение на отгрузку'#13#3+
            'напечатать нельзя пока не задан вес тары.',0) ;
    SC_Rasp_n.fExit ;
    }
end.
[21;;{

 С         РАСПОРЯЖЕНИЕ НА ПОГРУЗКУ            ║        РАСПОРЯЖЕНИЕ НА ПОГРУЗКУ С

 Р          № @@@@@@@@@@@@@@@@@@@@@@@@         ║         № @@@@@@@@@@@@@@@@@@@@@@@@ Р


 Р    Дата @@@@@@@@@@                          ║   Дата @@@@@@@@@@ Р

 Р    Гос.№ а/м @@@@@@@@@@@@@@@@@@@@@@@@@@@    ║   Гос.№ а/м @@@@@@@@@@@@@@@@@@@@@@@@@@@ Р

 Р    Водитель @@@@@@@@@@@@@@@@@@@@@@@@@@@@    ║   Водитель @@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р

 Р    Марка @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    ║   Марка @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р

 Р    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    ║   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р

 Р    Вес тары    &&&&&&&&&&&&.&&              ║   Вес тары    &&&&&&&&&&&&.&& Р


 Р    Диспетчер                                ║   Оператор Р

 Р    Весовая Р
.endform
