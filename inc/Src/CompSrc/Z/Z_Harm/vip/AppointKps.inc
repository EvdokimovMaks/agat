//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика ERP 8.1 - Управление персоналом
// Константы для таблицы InfPsn3, связывающей условия труда на рабочем месте 
// с назначениями и ставками ШР
//------------------------------------------------------------------------------

const
  // Константы значений поля InfPsn3.LastUser, определяющие на какую таблицу ссылается поле InfPsn3.cPers
  cgKpsType_Staff = 1;
  cgKpsType_Appoint = 2;
  cgKpsType_TarStav = 11; // Связь должности, категории и тарифной ставки

  // Константы для значений поля InfPsn3.LastTime - признак основных условий труда
  cgKpsKind_Main    = From_Sec100(1);  // основные
  cgKpsKind_Vacant  = From_Sec100(0);  // не основные

  cgsStaff   = s20(cgKpsType_Staff);   // InfPsn3.cPers -> StaffStruct.NRec
  cgsAppoint = s20(cgKpsType_Appoint); // InfPsn3.cPers -> Appointments.NRec
  cgsTarStav = s20(cgKpsType_TarStav); // InfPsn3.cRef2 -> KlKatego.NRec, InfPsn3.cRef3 -> TarStav.NRec

  // Константы для значений поля "пол" Advises.LastDate
  cgSex_Male    = date(3, 1, 2010);  // мужской пол
  cgSex_Female  = date(2, 1, 2010);  // женский пол
  cgSex_Unknown = date(1, 1, 2010);  // неопределенный пол
end;
