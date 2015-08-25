/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Автотранспорт                                             ║
 ║ Версия        : 5.70                                                      ║
 ║ Назначение    : Расчет потребности  ТС                                    ║
 ║ Ответственный : Лисица Наталья Михайловна                                 ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.set name='Need_Tc'
.hide
!.p 42
.fields
 BegDate EndDate Ras_dni
 NameMarka Marka_Gruzpod Marka_volume
 NomZak Zak_GruzPod Zak_Volume

 MarkaItg_GruzPod MarkaItg_Volume
 MarkaItgTC_GruzPod :double MarkaItgTC_Volume:double MarkaItgTC:double

 Itog_GruzPod :double Itog_Volume :double
 Itog_TCGruzPod :double Itog_TCVolume :double Itog_TC :double

 No_marka
 No_NomZak No_Zak_GruzPod No_Zak_Volume
 No_MarkaItg_GruzPod :double No_MarkaItg_Volume :double
 What_Tc
 TC_NameMarka TC_Marka_Gruzpod TC_Marka_volume
 Tc_All TC_Gruzpod Tc_volume OneTC_TcGruzpod OneTc_TCvolume TC_TcGruzpod Tc_TCvolume
 Tc_ItgAll :double TC_ItgGruzpod Tc_Itgvolume One_TC_TcItgGruzpod One_Tc_TCItgvolume
 TC_TcItgGruzpod Tc_TCItgvolume

.endfields
^ ^ ^
.{
^ ^ ^     !Марка
.{
^ ^ ^
.}
^ ^ ^ ^ ^
.}
^ ^ ^ ^ ^
^
.{
^ ^ ^
.}
^ ^
.{
^
.{
^ ^ ^ ^  ^
^ ^ ^ ^ ^
.}
^ ^ ^ ^ ^ ^ ^
.}
.endform
.linkform 'Need_Tc_01' prototype is 'Need_Tc'
.NameInList 'Потребность в ТС '
.var
Marka_PlusGruzpod :double
Marka_PlusVolume  :double
Itog_PlusGruzpod  :double
Itog_PlusVolume   :double
Itog_ZakGruzpod   :double
Itog_ZakVolume    :double
Itog_MarkaGruzpod :double
Itog_MarkaVolume  :double
.endvar

.fields
 BegDate EndDate Ras_dni
 NameMarka Marka_Gruzpod Marka_volume
 NomZak Zak_GruzPod Zak_Volume

 MarkaItg_GruzPod MarkaItg_Volume
 MarkaItgTC_GruzPod MarkaItgTC_Volume MarkaItgTC
 Marka_PlusGruzpod  Marka_PlusVolume
 Itog_GruzPod Itog_Volume Itog_TCGruzPod Itog_TCVolume Itog_TC
 Itog_PlusGruzpod  Itog_PlusVolume
 No_marka
 No_NomZak No_Zak_GruzPod No_Zak_Volume
 No_MarkaItg_GruzPod No_MarkaItg_Volume
 Itog_MarkaGruzpod  Itog_MarkaVolume
 What_tc
 TC_NameMarka TC_Marka_Gruzpod TC_Marka_volume
 Tc_All TC_Gruzpod Tc_volume OneTC_TcGruzpod OneTc_TCvolume TC_TcGruzpod Tc_TCvolume

 Tc_ItgAll TC_ItgGruzpod Tc_Itgvolume One_TC_TcItgGruzpod One_Tc_TCItgvolume
 TC_TcItgGruzpod Tc_TCItgvolume

.endfields

.begin
 Itog_MarkaGruzpod := 0
 Itog_MarkaVolume  := 0
end.
 Cрок выполнения заказов c &&&&&&&&&&&&& по &&&&&&&&&&& кол-во дней &&&&&&&
──────────────────────────┬────────────┬────────────┬─────────┬─────────┬─────────┬─────────┬─────────
      Заказ               │ Грузопод.  │Вместимость │ТС в день│ТС в день│  Всего  │ТС (+/-) │ТС (+/-)
                          │            │            │грузопод.│вместим. │ТС в день│грузопод.│вместим.
──────────────────────────┴────────────┴────────────┴─────────┴─────────┴─────────┴─────────┴─────────
.{
@@@@@@@@@@@@@@@@@@@@@@@@  &&&&&&&&&.&&  &&&&&&&&.&&
.{
 @@@@@@@@@@@@@@@@@@@@@@@  &&&&&&&&&.&&  &&&&&&&&.&&
.}
.begin
 Marka_PlusGruzpod := MarkaItgTC - MarkaItgTC_GruzPod
 Marka_PlusVolume  := MarkaItgTC - MarkaItgTC_Volume
end.
Итого по марке:           &&&&&&&&&.&&  &&&&&&&&.&&  &&&&&&&&  &&&&&&&&  &&&&&&&&  &&&&&&&&  &&&&&&&&
.}
.begin
 Itog_PlusGruzpod := Itog_TC - Itog_TCGruzPod
 Itog_PlusVolume  := Itog_TC - Itog_TCVolume
end.
Итого распределено      : &&&&&&&&&.&&  &&&&&&&&.&&  &&&&&&&&  &&&&&&&&  &&&&&&&&  &&&&&&&&  &&&&&&&&
.begin
 Itog_MarkaGruzpod := Itog_GruzPod + Itog_MarkaGruzpod
 Itog_MarkaVolume  := Itog_Volume  + Itog_MarkaVolume
end.

@@@@@@@@@@@@@@@@@@@@@@@@
.{
 @@@@@@@@@@@@@@@@@@@@@@@  &&&&&&&&&.&&  &&&&&&&&.&&
.}
Не определена марка       &&&&&&&&&.&&  &&&&&&&&.&&
.begin
 Itog_MarkaGruzpod := No_MarkaItg_GruzPod + Itog_MarkaGruzpod
 Itog_MarkaVolume  := No_MarkaItg_Volume  + Itog_MarkaVolume
end.
Суммарные данные          &&&&&&&&&.&&  &&&&&&&&.&&

.{

                        Сведения по маркам ТС @@@@@@@@@@@@@@@@@@@@@@@
──────────────────────────┬─────────┬───────────────┬───────────────┬────────────┬───────────┬────────────┬───────────
      Марка ТС            │  Всего  │    Суммарная  │  Суммарная    │ТС*дн.      │ТС*дн.     │ТС*дн.(+/-) │ТС*дн.(+/-)
                          │  ТС*дн. │    грузопод.  │  вместимость  │ грузопод.  │вместим.   │ грузопод.  │вместим.
──────────────────────────┴─────────┴───────────────┴───────────────┴────────────┴───────────┴────────────┴───────────
.{
 @@@@@@@@@@@@@@@@@@@@@@@             &&&&&&&&&&&.&&  &&&&&&&&&&&.&&
                           &&&&&&&&  &&&&&&&&&&&.&&  &&&&&&&&&&&.&&  &&&&&&&&&&   &&&&&&&&&&  &&&&&&&&&&   &&&&&&&&&&
.}
Итого по маркам            &&&&&&&&  &&&&&&&&&&&.&&  &&&&&&&&&&&.&&  &&&&&&&&&&   &&&&&&&&&&  &&&&&&&&&&   &&&&&&&&&&
.}
.endform