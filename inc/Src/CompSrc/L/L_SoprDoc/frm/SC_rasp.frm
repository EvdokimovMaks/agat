/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Управление договорами                                     ║
 ║ Версия        : 5.70                                                      ║
 ║ Назначение    : Распоряжение на погрузку для Штерн-Цемента                ║
 ║ Ответственный : Глушаков Дмитрий Сергеевич                                ║
 ║ Параметры     : есть                                                      ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/

#doc
Распоряжение на погрузку
#end
.AutoForm 'SC_Rasp'(var pKatSopr:comp)
.NameInList 'Распоряжение на погрузку'
.group 'Штерн Цемент'
.hide
.Create view SC_Rasp_main
from
   KatSopr                    (ReadOnly)
  ,SpSopr                     (ReadOnly)
where
  ((
    pKatSopr            ==   KatSopr.nRec   and
    KatSopr.NRec        ==   SpSopr.cSopr
  ))
;
.begin
  if ((GetFirst KatSopr <> 0) or
      (GetFirst SpSopr <> 0))
    {
    Message(''#3'Распоряжение на отгрузку печатать нельзя.',0) ;
    SC_Rasp.fExit ;
    }
  if (KatSopr.FilialNo = 2)
    RunForm('SC_Rasp_n',pKatSopr); // Распоряжение на погрузку (навальное)
  else
    RunForm('SC_Rasp_t',pKatSopr); // Распоряжение на погрузку (тарное)
end.
.endform
