//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.10 - модуль "Платежный календарь (PR)"
// Табличный объект : "Реестр платежей"
//------------------------------------------------------------------------------

#ifndef __TablPayList_Inc__
#define __TablPayList_Inc__

Const
  lc_TiDkPayList = 830;

  // статус реестра платежей
  lcPL_stOFORM   =  0;  // оформляемый 
  lcPL_stISPOLN  =  1;  // исполняемый 
  lcPL_stUTVERJD =  2;  // утвержденный
  lcPL_stOTMENEN =  3;  // отмененный  
  lcPL_stZAKRYT  =  4;  // закрытый   
end;

Const
  lc_ProgrammaZZ_ID = 0;  // Содержание Заказчика-Застройщика
  lc_ProgrammaDI_ID = 1;  // Договор инвестирования

  lc_ProgrammaZZ_Name = 'Содержание Заказчика-Застройщика';
  lc_ProgrammaDI_Name = 'Договор инвестирования';
end;

Const
  lc_Pers1_Name = 'Представитель инвестора';
  lc_Pers2_Name = 'ООО "Транснефть Финанс"';
  lc_Pers3_Name = 'Заказчик-застройщик';

  // наименование подписантов
  lc_InvOrgan_Title = 'Инвестор';
  lc_OwnOrgan_Title = 'ООО "Транснефть Финанс"';
  lc_ZakOrgan_Title = 'Заказчик-Застройщик';

  lc_InvPers1_Title = 'Генеральный директор';
  lc_InvPers2_Title = 'Заместитель генерального директора по экономике';
  lc_InvPers3_Title = 'Начальник ФО';
                   
  lc_OwnPers1_Title = 'Директор филиала';
  lc_OwnPers2_Title = 'Заместитель директора по финансово-экономическим вопросам';
  lc_OwnPers3_Title = 'Начальник ФБО';
  lc_OwnPers4_Title = 'Начальник ОПиО';
                   
  lc_ZakPers1_Title = 'Генеральный директор';
  lc_ZakPers2_Title = 'Заместитель генерального директора по экономике';


  // наименование внешних аттрибутом
  lc_InvOrgan_Attr = 'Инвестор';
  lc_OwnOrgan_Attr = 'Собственная организция';
  lc_ZakOrgan_Attr = 'Заказчик-Застройщик';

  lc_InvPers1_Attr = 'Инв1 ФИО';
  lc_InvPers2_Attr = 'Инв2 ФИО';
  lc_InvPers3_Attr = 'Инв3 ФИО';
  lc_InvPers4_Attr = 'Инв4 ФИО';
  lc_InvPers5_Attr = 'Инв5 ФИО';
                   
  lc_OwnPers1_Attr = 'Соб1 ФИО';
  lc_OwnPers2_Attr = 'Соб2 ФИО';
  lc_OwnPers3_Attr = 'Соб3 ФИО';
  lc_OwnPers4_Attr = 'Соб4 ФИО';
                   
  lc_ZakPers1_Attr = 'Зак1 ФИО';
  lc_ZakPers2_Attr = 'Зак2 ФИО';


  lc_InvDolj1_Attr = 'Инв1 Должность';
  lc_InvDolj2_Attr = 'Инв2 Должность';
  lc_InvDolj3_Attr = 'Инв3 Должность';
  lc_InvDolj4_Attr = 'Инв4 Должность';
  lc_InvDolj5_Attr = 'Инв5 Должность';
                   
  lc_OwnDolj1_Attr = 'Соб1 Должность';
  lc_OwnDolj2_Attr = 'Соб2 Должность';
  lc_OwnDolj3_Attr = 'Соб3 Должность';
  lc_OwnDolj4_Attr = 'Соб4 Должность';
                   
  lc_ZakDolj1_Attr = 'Зак1 Должность';
  lc_ZakDolj2_Attr = 'Зак2 Должность';
end;

#endif//__TablPayList_Inc__



