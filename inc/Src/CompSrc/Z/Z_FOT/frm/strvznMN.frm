/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Заработная плата                                          ║
 ║ Версия        : 5.8                                                       ║
 ║ Назначение    : Расчет по авансовым платежам                              ║
 ║ Ответственный : Погосский Константин Владимирович                         ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.linkform 'StrVzn_4' PROTOTYPE IS 'StrVzn'
.nameinlist' Расчет по авансовым платежам по страховым взносам на обязательное пенсионное страхование на МН'
.group 'StrVzn3'
.p 60
.var
 rrr,rrr_2,rrr_3,rrr_4,rrr_5: String;
.endvar
.fields
! СЛУЖЕБНАЯ ЧАСТЬ
 ИНН
 КПП
 Cur_Date
 Cur_Time
 ИНН
 Cur_Date
 Cur_Time
 InsNomer
 UpCase(Полное_наименование_организации)
 тел
 TuneEMail
 UpCase(Должность)
 UpCase(Ответственное_лицо_ФИО)
 UpCase(Ответственное_лицо_ФИО)
 тел
 TuneEMail
 Значки
 ИНН
 КПП
 год
 ИНН
 год
 дата_представления_с_точками
 UpCase(Полное_наименование_организации)
 ИНН
 КПП
 КПП
 TuneOGRN
 RegNomPFR
//ruk
 UpCase(ФИОРук_ФИО)
! Руководитель_организации_ИНН
! ТелРук
! ТелРукDom
! ДатаРождРук
! МестоРождРук
! ПолРук
! ГраждРук
! КодГраждРук
! UpCase(УдЛичнРук)
! ВыдУдЛичнРук
! ДатаУдЛичнРук
! АдрМЖРукРФ
! АдрМЖРукРез
//buh
 UpCase(ФИОБух_ФИО)
! Главный_бухгалтер_ИНН
! ТелБух
! ТелБухDom
! ДатаРождБух
! МестоРождБух
! ПолБух
! ГраждБух
! КодГраждБух
! UpCase(УдЛичнБух)
! ВыдУдЛичнБух
! ДатаУдЛичн
! АдрМЖБухРФ
! АдрМЖБухРез
//isp
! UpCase(Ответственное_лицо_ФИО)
! Ответственное_лицо_ИНН
! тел
! телИспDom
! ДатаРождУпПред
! МестоРождУпПред
! ПолУпПред
! ГраждУпПред
! КодГраждУпПред
! UpCase(УдЛичнУпПред)
! ВыдУдЛичнУпПред
! ДатаУдЛичнУпПред
! АдрМЖУпПредРФ
! АдрМЖУпПредРез
//ИП
 UpCase(Ответственное_лицо_ФИО)
 Ответственное_лицо_ИНН
 TuneOGRN
 RegNomPFR
 тел
 телИспDom
 ДатаРождУпПред
 МестоРождУпПред
 ПолУпПред
 ГраждУпПред
 КодГраждУпПред
 UpCase(УдЛичнУпПред)
 ВыдУдЛичнУпПред
 ДатаУдЛичнУпПред
 АдрМЖУпПредРФ
 АдрМЖУпПредРез
! ИНФОРМАЦИОННАЯ ЧАСТЬ
! Описание формы
 ПризФОтч
 КНД
 НаимФОтч
 ВерФОтч
 ПериодВерОтч
 PrizVidDok
 NomerKor
 ПризПериодОтч
 kvart
 Year
 TuneDocPerdst
 ОКЕИ
 КолПокФОтч
! Содержание формы
! итоги по налогам
!Таблица9.1
 TuneOKATO
!Таблица9.2
 КБКСтрах КБКСтрах1месяц КБКСтрах2месяц КБКСтрах3месяц
 КБКНак КБКНак1месяц КБКНак2месяц КБКНак3месяц
!9
!Таблица10 РАП
 if (Первая_100_3+Первая_100_5 >= 0,DoubleToStr(Первая_100_3+Первая_100_5,rrr),DoubleToStr(Первая_100_3+Первая_100_5,rrr_2))
 if (Первая_100_7 >= 0,DoubleToStr(Первая_100_7,rrr),DoubleToStr(Первая_100_7,rrr_2))
 if (Итог_100_9 >= 0,DoubleToStr(Итог_100_9,rrr),DoubleToStr(Итог_100_9,rrr_2))
 if (Первая_100_Vmen >= 0,DoubleToStr(Первая_100_Vmen,rrr),DoubleToStr(Первая_100_Vmen,rrr_2))
!5
 if (Первая_110_3+Первая_110_5 >= 0,DoubleToStr(Первая_110_3+Первая_110_5,rrr),DoubleToStr(Первая_110_3+Первая_110_5,rrr_2))
 if (Первая_110_7 >= 0,DoubleToStr(Первая_110_7,rrr),DoubleToStr(Первая_110_7,rrr_2))
 if (Итог_110_9 >= 0,DoubleToStr(Итог_110_9,rrr),DoubleToStr(Итог_110_9,rrr_2))
 if (Первая_110_Vmen >= 0,DoubleToStr(Первая_110_Vmen,rrr),DoubleToStr(Первая_110_Vmen,rrr_2))
!10
 if (Первая_120_3+Первая_120_5 >= 0,DoubleToStr(Первая_120_3+Первая_120_5,rrr),DoubleToStr(Первая_120_3+Первая_120_5,rrr_2))
 if (Первая_120_7 >= 0,DoubleToStr(Первая_120_7,rrr),DoubleToStr(Первая_120_7,rrr_2))
 if (Итог_120_9 >= 0,DoubleToStr(Итог_120_9,rrr),DoubleToStr(Итог_120_9,rrr_2))
 if (Первая_120_Vmen >= 0,DoubleToStr(Первая_120_Vmen,rrr),DoubleToStr(Первая_120_Vmen,rrr_2))
!15
 if (Первая_130_3+Первая_130_5 >= 0,DoubleToStr(Первая_130_3+Первая_130_5,rrr),DoubleToStr(Первая_130_3+Первая_130_5,rrr_2))
 if (Первая_130_7 >= 0,DoubleToStr(Первая_130_7,rrr),DoubleToStr(Первая_130_7,rrr_2))
 if (Итог_130_9 >= 0,DoubleToStr(Итог_130_9,rrr),DoubleToStr(Итог_130_9,rrr_2))
 if (Первая_130_Vmen >= 0,DoubleToStr(Первая_130_Vmen,rrr),DoubleToStr(Первая_130_Vmen,rrr_2))
!20
 if (Первая_140_3+Первая_140_5 >= 0,DoubleToStr(Первая_140_3+Первая_140_5,rrr),DoubleToStr(Первая_140_3+Первая_140_5,rrr_2))
 if (Первая_140_7 >= 0,DoubleToStr(Первая_140_7,rrr),DoubleToStr(Первая_140_7,rrr_2))
 if (Итог_140_9 >= 0,DoubleToStr(Итог_140_9,rrr),DoubleToStr(Итог_140_9,rrr_2))
 if (Первая_140_Vmen >= 0,DoubleToStr(Первая_140_Vmen,rrr),DoubleToStr(Первая_140_Vmen,rrr_2))
!25
 if (Первая_200_3+Первая_200_5 >= 0,DoubleToStr(Первая_200_3+Первая_200_5,rrr),DoubleToStr(Первая_200_3+Первая_200_5,rrr_2))
 if (Первая_200_7 >= 0,DoubleToStr(Первая_200_7,rrr),DoubleToStr(Первая_200_7,rrr_2))
 if (Итог_200_9 >= 0,DoubleToStr(Итог_200_9,rrr),DoubleToStr(Итог_200_9,rrr_2))
 if (Первая_200_Vmen >= 0,DoubleToStr(Первая_200_Vmen,rrr),DoubleToStr(Первая_200_Vmen,rrr_2))
!30
 if (Первая_210_3+Первая_210_5 >= 0,DoubleToStr(Первая_210_3+Первая_210_5,rrr),DoubleToStr(Первая_210_3+Первая_210_5,rrr_2))
 if (Первая_210_7 >= 0,DoubleToStr(Первая_210_7,rrr),DoubleToStr(Первая_210_7,rrr_2))
 if (Итог_210_9 >= 0,DoubleToStr(Итог_210_9,rrr),DoubleToStr(Итог_210_9,rrr_2))
 if (Первая_210_Vmen >= 0,DoubleToStr(Первая_210_Vmen,rrr),DoubleToStr(Первая_210_Vmen,rrr_2))
!35
 if (Первая_220_3+Первая_220_5 >= 0,DoubleToStr(Первая_220_3+Первая_220_5,rrr),DoubleToStr(Первая_220_3+Первая_220_5,rrr_2))
 if (Первая_220_7 >= 0,DoubleToStr(Первая_220_7,rrr),DoubleToStr(Первая_220_7,rrr_2))
 if (Итог_220_9 >= 0,DoubleToStr(Итог_220_9,rrr),DoubleToStr(Итог_220_9,rrr_2))
 if (Первая_220_Vmen >= 0,DoubleToStr(Первая_220_Vmen,rrr),DoubleToStr(Первая_220_Vmen,rrr_2))
!40
 if (Первая_230_3+Первая_230_5 >= 0,DoubleToStr(Первая_230_3+Первая_230_5,rrr),DoubleToStr(Первая_230_3+Первая_230_5,rrr_2))
 if (Первая_230_7 >= 0,DoubleToStr(Первая_230_7,rrr),DoubleToStr(Первая_230_7,rrr_2))
 if (Итог_230_9 >= 0,DoubleToStr(Итог_230_9,rrr),DoubleToStr(Итог_230_9,rrr_2))
 if (Первая_230_Vmen >= 0,DoubleToStr(Первая_230_Vmen,rrr),DoubleToStr(Первая_230_Vmen,rrr_2))
!45
 if (Первая_240_3+Первая_240_5 >= 0,DoubleToStr(Первая_240_3+Первая_240_5,rrr),DoubleToStr(Первая_240_3+Первая_240_5,rrr_2))
 if (Первая_240_7 >= 0,DoubleToStr(Первая_240_7,rrr),DoubleToStr(Первая_240_7,rrr_2))
 if (Итог_240_9 >= 0,DoubleToStr(Итог_240_9,rrr),DoubleToStr(Итог_240_9,rrr_2))
 if (Первая_240_Vmen >= 0,DoubleToStr(Первая_240_Vmen,rrr),DoubleToStr(Первая_240_Vmen,rrr_2))
!50
 if (Первая_300_3+Первая_300_5 >= 0,DoubleToStr(Первая_300_3+Первая_300_5,rrr),DoubleToStr(Первая_300_3+Первая_300_5,rrr_2))
 if (Первая_300_7 >= 0,DoubleToStr(Первая_300_7,rrr),DoubleToStr(Первая_300_7,rrr_2))
 if (Итог_300_9 >= 0,DoubleToStr(Итог_300_9,rrr),DoubleToStr(Итог_300_9,rrr_2))
 if (Первая_300_Vmen >= 0,DoubleToStr(Первая_300_Vmen,rrr),DoubleToStr(Первая_300_Vmen,rrr_2))
!55
 if (Первая_310_3+Первая_310_5 >= 0,DoubleToStr(Первая_310_3+Первая_310_5,rrr),DoubleToStr(Первая_310_3+Первая_310_5,rrr_2))
 if (Первая_310_7 >= 0,DoubleToStr(Первая_310_7,rrr),DoubleToStr(Первая_310_7,rrr_2))
 if (Итог_310_9 >= 0,DoubleToStr(Итог_310_9,rrr),DoubleToStr(Итог_310_9,rrr_2))
 if (Первая_310_Vmen >= 0,DoubleToStr(Первая_310_Vmen,rrr),DoubleToStr(Первая_310_Vmen,rrr_2))
!60
 if (Первая_320_3+Первая_320_5 >= 0,DoubleToStr(Первая_320_3+Первая_320_5,rrr),DoubleToStr(Первая_320_3+Первая_320_5,rrr_2))
 if (Первая_320_7 >= 0,DoubleToStr(Первая_320_7,rrr),DoubleToStr(Первая_320_7,rrr_2))
 if (Итог_320_9 >= 0,DoubleToStr(Итог_320_9,rrr),DoubleToStr(Итог_320_9,rrr_2))
 if (Первая_320_Vmen >= 0,DoubleToStr(Первая_320_Vmen,rrr),DoubleToStr(Первая_320_Vmen,rrr_2))
!65
 if (Первая_330_3+Первая_330_5 >= 0,DoubleToStr(Первая_330_3+Первая_330_5,rrr),DoubleToStr(Первая_330_3+Первая_330_5,rrr_2))
 if (Первая_330_7 >= 0,DoubleToStr(Первая_330_7,rrr),DoubleToStr(Первая_330_7,rrr_2))
 if (Итог_330_9 >= 0,DoubleToStr(Итог_330_9,rrr),DoubleToStr(Итог_330_9,rrr_2))
 if (Первая_330_Vmen >= 0,DoubleToStr(Первая_330_Vmen,rrr),DoubleToStr(Первая_330_Vmen,rrr_2))
!70
 if (Первая_340_3+Первая_340_5 >= 0,DoubleToStr(Первая_340_3+Первая_340_5,rrr),DoubleToStr(Первая_340_3+Первая_340_5,rrr_2))
 if (Первая_340_7 >= 0,DoubleToStr(Первая_340_7,rrr),DoubleToStr(Первая_340_7,rrr_2))
 if (Итог_340_9 >= 0,DoubleToStr(Итог_340_9,rrr),DoubleToStr(Итог_340_9,rrr_2))
 if (Первая_340_Vmen >= 0,DoubleToStr(Первая_340_Vmen,rrr),DoubleToStr(Первая_340_Vmen,rrr_2))
!75
 if (Первая_400_7 >= 0,DoubleToStr(Первая_400_7,rrr),DoubleToStr(Первая_400_7,rrr_2))
 if (Итог_400_9 >= 0,DoubleToStr(Итог_400_9,rrr),DoubleToStr(Итог_400_9,rrr_2))
 if (Первая_400_Vmen >= 0,DoubleToStr(Первая_400_Vmen,rrr),DoubleToStr(Первая_400_Vmen,rrr_2))
!79
 if (Первая_410_7 >= 0,DoubleToStr(Первая_410_7,rrr),DoubleToStr(Первая_410_7,rrr_2))
 if (Итог_410_9 >= 0,DoubleToStr(Итог_410_9,rrr),DoubleToStr(Итог_410_9,rrr_2))
 if (Первая_410_Vmen >= 0,DoubleToStr(Первая_410_Vmen,rrr),DoubleToStr(Первая_410_Vmen,rrr_2))
!83
 if (Первая_420_7 >= 0,DoubleToStr(Первая_420_7,rrr),DoubleToStr(Первая_420_7,rrr_2))
 if (Итог_420_9 >= 0,DoubleToStr(Итог_420_9,rrr),DoubleToStr(Итог_420_9,rrr_2))
 if (Первая_420_Vmen >= 0,DoubleToStr(Первая_420_Vmen,rrr),DoubleToStr(Первая_420_Vmen,rrr_2))
!87
 if (Первая_430_7 >= 0,DoubleToStr(Первая_430_7,rrr),DoubleToStr(Первая_430_7,rrr_2))
 if (Итог_430_9 >= 0,DoubleToStr(Итог_430_9,rrr),DoubleToStr(Итог_430_9,rrr_2))
 if (Первая_430_Vmen >= 0,DoubleToStr(Первая_430_Vmen,rrr),DoubleToStr(Первая_430_Vmen,rrr_2))
!91
 if (Первая_440_7 >= 0,DoubleToStr(Первая_440_7,rrr),DoubleToStr(Первая_440_7,rrr_2))
 if (Итог_440_9 >= 0,DoubleToStr(Итог_440_9,rrr),DoubleToStr(Итог_440_9,rrr_2))
 if (Первая_440_Vmen >= 0,DoubleToStr(Первая_440_Vmen,rrr),DoubleToStr(Первая_440_Vmen,rrr_2))
!Таблица10 Декларация
 if (Первая_100_3 >= 0,DoubleToStr(Первая_100_3,rrr),DoubleToStr(Первая_100_3,rrr_2))
 if (Первая_100_5 >= 0,DoubleToStr(Первая_100_5,rrr),DoubleToStr(Первая_100_5,rrr_2))
 if (Первая_100_7 >= 0,DoubleToStr(Первая_100_7,rrr),DoubleToStr(Первая_100_7,rrr_2))
 if (Итог_100_9 >= 0,DoubleToStr(Итог_100_9,rrr),DoubleToStr(Итог_100_9,rrr_2))
 if (Первая_100_Vmen >= 0,DoubleToStr(Первая_100_Vmen,rrr),DoubleToStr(Первая_100_Vmen,rrr_2))
!5
 if (Первая_110_3 >= 0,DoubleToStr(Первая_110_3,rrr),DoubleToStr(Первая_110_3,rrr_2))
 if (Первая_110_5 >= 0,DoubleToStr(Первая_110_5,rrr),DoubleToStr(Первая_110_5,rrr_2))
 if (Первая_110_7 >= 0,DoubleToStr(Первая_110_7,rrr),DoubleToStr(Первая_110_7,rrr_2))
 if (Итог_110_9 >= 0,DoubleToStr(Итог_110_9,rrr),DoubleToStr(Итог_110_9,rrr_2))
 if (Первая_110_Vmen >= 0,DoubleToStr(Первая_110_Vmen,rrr),DoubleToStr(Первая_110_Vmen,rrr_2))
!10
 if (Первая_120_3 >= 0,DoubleToStr(Первая_120_3,rrr),DoubleToStr(Первая_120_3,rrr_2))
 if (Первая_120_5 >= 0,DoubleToStr(Первая_120_5,rrr),DoubleToStr(Первая_120_5,rrr_2))
 if (Первая_120_7 >= 0,DoubleToStr(Первая_120_7,rrr),DoubleToStr(Первая_120_7,rrr_2))
 if (Итог_120_9 >= 0,DoubleToStr(Итог_120_9,rrr),DoubleToStr(Итог_120_9,rrr_2))
 if (Первая_120_Vmen >= 0,DoubleToStr(Первая_120_Vmen,rrr),DoubleToStr(Первая_120_Vmen,rrr_2))
!15
 if (Первая_130_3 >= 0,DoubleToStr(Первая_130_3,rrr),DoubleToStr(Первая_130_3,rrr_2))
 if (Первая_130_5 >= 0,DoubleToStr(Первая_130_5,rrr),DoubleToStr(Первая_130_5,rrr_2))
 if (Первая_130_7 >= 0,DoubleToStr(Первая_130_7,rrr),DoubleToStr(Первая_130_7,rrr_2))
 if (Итог_130_9 >= 0,DoubleToStr(Итог_130_9,rrr),DoubleToStr(Итог_130_9,rrr_2))
 if (Первая_130_Vmen >= 0,DoubleToStr(Первая_130_Vmen,rrr),DoubleToStr(Первая_130_Vmen,rrr_2))
!20
 if (Первая_140_3 >= 0,DoubleToStr(Первая_140_3,rrr),DoubleToStr(Первая_140_3,rrr_2))
 if (Первая_140_5 >= 0,DoubleToStr(Первая_140_5,rrr),DoubleToStr(Первая_140_5,rrr_2))
 if (Первая_140_7 >= 0,DoubleToStr(Первая_140_7,rrr),DoubleToStr(Первая_140_7,rrr_2))
 if (Итог_140_9 >= 0,DoubleToStr(Итог_140_9,rrr),DoubleToStr(Итог_140_9,rrr_2))
 if (Первая_140_Vmen >= 0,DoubleToStr(Первая_140_Vmen,rrr),DoubleToStr(Первая_140_Vmen,rrr_2))
!25
 if (Первая_200_3 >= 0,DoubleToStr(Первая_200_3,rrr),DoubleToStr(Первая_200_3,rrr_2))
 if (Первая_200_5 >= 0,DoubleToStr(Первая_200_5,rrr),DoubleToStr(Первая_200_5,rrr_2))
 if (Первая_200_7 >= 0,DoubleToStr(Первая_200_7,rrr),DoubleToStr(Первая_200_7,rrr_2))
 if (Итог_200_9 >= 0,DoubleToStr(Итог_200_9,rrr),DoubleToStr(Итог_200_9,rrr_2))
 if (Первая_200_Vmen >= 0,DoubleToStr(Первая_200_Vmen,rrr),DoubleToStr(Первая_200_Vmen,rrr_2))
!30
 if (Первая_210_3 >= 0,DoubleToStr(Первая_210_3,rrr),DoubleToStr(Первая_210_3,rrr_2))
 if (Первая_210_5 >= 0,DoubleToStr(Первая_210_5,rrr),DoubleToStr(Первая_210_5,rrr_2))
 if (Первая_210_7 >= 0,DoubleToStr(Первая_210_7,rrr),DoubleToStr(Первая_210_7,rrr_2))
 if (Итог_210_9 >= 0,DoubleToStr(Итог_210_9,rrr),DoubleToStr(Итог_210_9,rrr_2))
 if (Первая_210_Vmen >= 0,DoubleToStr(Первая_210_Vmen,rrr),DoubleToStr(Первая_210_Vmen,rrr_2))
!35
 if (Первая_220_3 >= 0,DoubleToStr(Первая_220_3,rrr),DoubleToStr(Первая_220_3,rrr_2))
 if (Первая_220_5 >= 0,DoubleToStr(Первая_220_5,rrr),DoubleToStr(Первая_220_5,rrr_2))
 if (Первая_220_7 >= 0,DoubleToStr(Первая_220_7,rrr),DoubleToStr(Первая_220_7,rrr_2))
 if (Итог_220_9 >= 0,DoubleToStr(Итог_220_9,rrr),DoubleToStr(Итог_220_9,rrr_2))
 if (Первая_220_Vmen >= 0,DoubleToStr(Первая_220_Vmen,rrr),DoubleToStr(Первая_220_Vmen,rrr_2))
!40
 if (Первая_230_3 >= 0,DoubleToStr(Первая_230_3,rrr),DoubleToStr(Первая_230_3,rrr_2))
 if (Первая_230_5 >= 0,DoubleToStr(Первая_230_5,rrr),DoubleToStr(Первая_230_5,rrr_2))
 if (Первая_230_7 >= 0,DoubleToStr(Первая_230_7,rrr),DoubleToStr(Первая_230_7,rrr_2))
 if (Итог_230_9 >= 0,DoubleToStr(Итог_230_9,rrr),DoubleToStr(Итог_230_9,rrr_2))
 if (Первая_230_Vmen >= 0,DoubleToStr(Первая_230_Vmen,rrr),DoubleToStr(Первая_230_Vmen,rrr_2))
!45
 if (Первая_240_3 >= 0,DoubleToStr(Первая_240_3,rrr),DoubleToStr(Первая_240_3,rrr_2))
 if (Первая_240_5 >= 0,DoubleToStr(Первая_240_5,rrr),DoubleToStr(Первая_240_5,rrr_2))
 if (Первая_240_7 >= 0,DoubleToStr(Первая_240_7,rrr),DoubleToStr(Первая_240_7,rrr_2))
 if (Итог_240_9 >= 0,DoubleToStr(Итог_240_9,rrr),DoubleToStr(Итог_240_9,rrr_2))
 if (Первая_240_Vmen >= 0,DoubleToStr(Первая_240_Vmen,rrr),DoubleToStr(Первая_240_Vmen,rrr_2))
!50
 if (Первая_300_3 >= 0,DoubleToStr(Первая_300_3,rrr),DoubleToStr(Первая_300_3,rrr_2))
 if (Первая_300_5 >= 0,DoubleToStr(Первая_300_5,rrr),DoubleToStr(Первая_300_5,rrr_2))
 if (Первая_300_7 >= 0,DoubleToStr(Первая_300_7,rrr),DoubleToStr(Первая_300_7,rrr_2))
 if (Итог_300_9 >= 0,DoubleToStr(Итог_300_9,rrr),DoubleToStr(Итог_300_9,rrr_2))
 if (Первая_300_Vmen >= 0,DoubleToStr(Первая_300_Vmen,rrr),DoubleToStr(Первая_300_Vmen,rrr_2))
!55
 if (Первая_310_3 >= 0,DoubleToStr(Первая_310_3,rrr),DoubleToStr(Первая_310_3,rrr_2))
 if (Первая_310_5 >= 0,DoubleToStr(Первая_310_5,rrr),DoubleToStr(Первая_310_5,rrr_2))
 if (Первая_310_7 >= 0,DoubleToStr(Первая_310_7,rrr),DoubleToStr(Первая_310_7,rrr_2))
 if (Итог_310_9 >= 0,DoubleToStr(Итог_310_9,rrr),DoubleToStr(Итог_310_9,rrr_2))
 if (Первая_310_Vmen >= 0,DoubleToStr(Первая_310_Vmen,rrr),DoubleToStr(Первая_310_Vmen,rrr_2))
!60
 if (Первая_320_3 >= 0,DoubleToStr(Первая_320_3,rrr),DoubleToStr(Первая_320_3,rrr_2))
 if (Первая_320_5 >= 0,DoubleToStr(Первая_320_5,rrr),DoubleToStr(Первая_320_5,rrr_2))
 if (Первая_320_7 >= 0,DoubleToStr(Первая_320_7,rrr),DoubleToStr(Первая_320_7,rrr_2))
 if (Итог_320_9 >= 0,DoubleToStr(Итог_320_9,rrr),DoubleToStr(Итог_320_9,rrr_2))
 if (Первая_320_Vmen >= 0,DoubleToStr(Первая_320_Vmen,rrr),DoubleToStr(Первая_320_Vmen,rrr_2))
!65
 if (Первая_330_3 >= 0,DoubleToStr(Первая_330_3,rrr),DoubleToStr(Первая_330_3,rrr_2))
 if (Первая_330_5 >= 0,DoubleToStr(Первая_330_5,rrr),DoubleToStr(Первая_330_5,rrr_2))
 if (Первая_330_7 >= 0,DoubleToStr(Первая_330_7,rrr),DoubleToStr(Первая_330_7,rrr_2))
 if (Итог_330_9 >= 0,DoubleToStr(Итог_330_9,rrr),DoubleToStr(Итог_330_9,rrr_2))
 if (Первая_330_Vmen >= 0,DoubleToStr(Первая_330_Vmen,rrr),DoubleToStr(Первая_330_Vmen,rrr_2))
!70
 if (Первая_340_3 >= 0,DoubleToStr(Первая_340_3,rrr),DoubleToStr(Первая_340_3,rrr_2))
 if (Первая_340_5 >= 0,DoubleToStr(Первая_340_5,rrr),DoubleToStr(Первая_340_5,rrr_2))
 if (Первая_340_7 >= 0,DoubleToStr(Первая_340_7,rrr),DoubleToStr(Первая_340_7,rrr_2))
 if (Итог_340_9 >= 0,DoubleToStr(Итог_340_9,rrr),DoubleToStr(Итог_340_9,rrr_2))
 if (Первая_340_Vmen >= 0,DoubleToStr(Первая_340_Vmen,rrr),DoubleToStr(Первая_340_Vmen,rrr_2))
!75
 if (Первая_400_5 >= 0,DoubleToStr(Первая_400_5,rrr),DoubleToStr(Первая_400_5,rrr_2))
 if (Первая_400_7 >= 0,DoubleToStr(Первая_400_7,rrr),DoubleToStr(Первая_400_7,rrr_2))
 if (Итог_400_9 >= 0,DoubleToStr(Итог_400_9,rrr),DoubleToStr(Итог_400_9,rrr_2))
 if (Первая_400_Vmen >= 0,DoubleToStr(Первая_400_Vmen,rrr),DoubleToStr(Первая_400_Vmen,rrr_2))
!79
 if (Первая_410_5 >= 0,DoubleToStr(Первая_410_5,rrr),DoubleToStr(Первая_410_5,rrr_2))
 if (Первая_410_7 >= 0,DoubleToStr(Первая_410_7,rrr),DoubleToStr(Первая_410_7,rrr_2))
 if (Итог_410_9 >= 0,DoubleToStr(Итог_410_9,rrr),DoubleToStr(Итог_410_9,rrr_2))
 if (Первая_410_Vmen >= 0,DoubleToStr(Первая_410_Vmen,rrr),DoubleToStr(Первая_410_Vmen,rrr_2))
!83
 if (Первая_420_5 >= 0,DoubleToStr(Первая_420_5,rrr),DoubleToStr(Первая_420_5,rrr_2))
 if (Первая_420_7 >= 0,DoubleToStr(Первая_420_7,rrr),DoubleToStr(Первая_420_7,rrr_2))
 if (Итог_420_9 >= 0,DoubleToStr(Итог_420_9,rrr),DoubleToStr(Итог_420_9,rrr_2))
 if (Первая_420_Vmen >= 0,DoubleToStr(Первая_420_Vmen,rrr),DoubleToStr(Первая_420_Vmen,rrr_2))
!87
 if (Первая_430_5 >= 0,DoubleToStr(Первая_430_5,rrr),DoubleToStr(Первая_430_5,rrr_2))
 if (Первая_430_7 >= 0,DoubleToStr(Первая_430_7,rrr),DoubleToStr(Первая_430_7,rrr_2))
 if (Итог_430_9 >= 0,DoubleToStr(Итог_430_9,rrr),DoubleToStr(Итог_430_9,rrr_2))
 if (Первая_430_Vmen >= 0,DoubleToStr(Первая_430_Vmen,rrr),DoubleToStr(Первая_430_Vmen,rrr_2))
!91
 if (Первая_440_5 >= 0,DoubleToStr(Первая_440_5,rrr),DoubleToStr(Первая_440_5,rrr_2))
 if (Первая_440_7 >= 0,DoubleToStr(Первая_440_7,rrr),DoubleToStr(Первая_440_7,rrr_2))
 if (Итог_440_9 >= 0,DoubleToStr(Итог_440_9,rrr),DoubleToStr(Итог_440_9,rrr_2))
 if (Первая_440_Vmen >= 0,DoubleToStr(Первая_440_Vmen,rrr),DoubleToStr(Первая_440_Vmen,rrr_2))
!95
!Таблица11
 if (Вторая_010_3 >= 0,DoubleToStr(Вторая_010_3,rrr),DoubleToStr(Вторая_010_3,rrr_2))
 if (Вторая_010_Vmen >= 0,DoubleToStr(Вторая_010_Vmen,rrr),DoubleToStr(Вторая_010_Vmen,rrr_2))
 if (Вторая_010_4 >= 0,DoubleToStr(Вторая_010_4,rrr),DoubleToStr(Вторая_010_4,rrr_2))
 if (Вторая_010_5 >= 0,DoubleToStr(Вторая_010_5,rrr),DoubleToStr(Вторая_010_5,rrr_2))
!4
 if (Вторая_011_3 >= 0,DoubleToStr(Вторая_011_3,rrr),DoubleToStr(Вторая_011_3,rrr_2))
 if (Вторая_011_Vmen >= 0,DoubleToStr(Вторая_011_Vmen,rrr),DoubleToStr(Вторая_011_Vmen,rrr_2))
 if (Вторая_011_4 >= 0,DoubleToStr(Вторая_011_4,rrr),DoubleToStr(Вторая_011_4,rrr_2))
 if (Вторая_011_5 >= 0,DoubleToStr(Вторая_011_5,rrr),DoubleToStr(Вторая_011_5,rrr_2))
!8
 if (Вторая_012_3 >= 0,DoubleToStr(Вторая_012_3,rrr),DoubleToStr(Вторая_012_3,rrr_2))
 if (Вторая_012_Vmen >= 0,DoubleToStr(Вторая_012_Vmen,rrr),DoubleToStr(Вторая_012_Vmen,rrr_2))
 if (Вторая_012_4 >= 0,DoubleToStr(Вторая_012_4,rrr),DoubleToStr(Вторая_012_4,rrr_2))
 if (Вторая_012_5 >= 0,DoubleToStr(Вторая_012_5,rrr),DoubleToStr(Вторая_012_5,rrr_2))
!12
 if (Вторая_013_3 >= 0,DoubleToStr(Вторая_013_3,rrr),DoubleToStr(Вторая_013_3,rrr_2))
 if (Вторая_013_Vmen >= 0,DoubleToStr(Вторая_013_Vmen,rrr),DoubleToStr(Вторая_013_Vmen,rrr_2))
 if (Вторая_013_4 >= 0,DoubleToStr(Вторая_013_4,rrr),DoubleToStr(Вторая_013_4,rrr_2))
 if (Вторая_013_5 >= 0,DoubleToStr(Вторая_013_5,rrr),DoubleToStr(Вторая_013_5,rrr_2))
!16
 if (Вторая_014_3 >= 0,DoubleToStr(Вторая_014_3,rrr),DoubleToStr(Вторая_014_3,rrr_2))
 if (Вторая_014_Vmen >= 0,DoubleToStr(Вторая_014_Vmen,rrr),DoubleToStr(Вторая_014_Vmen,rrr_2))
 if (Вторая_014_4 >= 0,DoubleToStr(Вторая_014_4,rrr),DoubleToStr(Вторая_014_4,rrr_2))
 if (Вторая_014_5 >= 0,DoubleToStr(Вторая_014_5,rrr),DoubleToStr(Вторая_014_5,rrr_2))
!20
 if (Вторая_015_3 >= 0,DoubleToStr(Вторая_015_3,rrr),DoubleToStr(Вторая_015_3,rrr_2))
 if (Вторая_015_Vmen >= 0,DoubleToStr(Вторая_015_Vmen,rrr),DoubleToStr(Вторая_015_Vmen,rrr_2))
 if (Вторая_016_3 >= 0,DoubleToStr(Вторая_016_3,rrr),DoubleToStr(Вторая_016_3,rrr_2))
 if (Вторая_016_Vmen >= 0,DoubleToStr(Вторая_016_Vmen,rrr),DoubleToStr(Вторая_016_Vmen,rrr_2))
!24
 if (Вторая_017_3 >= 0,DoubleToStr(Вторая_017_3,rrr),DoubleToStr(Вторая_017_3,rrr_2))
 if (Вторая_017_Vmen >= 0,DoubleToStr(Вторая_017_Vmen,rrr),DoubleToStr(Вторая_017_Vmen,rrr_2))
 if (Вторая_018_3 >= 0,DoubleToStr(Вторая_018_3,rrr),DoubleToStr(Вторая_018_3,rrr_2))
 if (Вторая_018_Vmen >= 0,DoubleToStr(Вторая_018_Vmen,rrr),DoubleToStr(Вторая_018_Vmen,rrr_2))
 if (Вторая_019_3 >= 0,DoubleToStr(Вторая_019_3,rrr),DoubleToStr(Вторая_019_3,rrr_2))
 if (Вторая_019_Vmen >= 0,DoubleToStr(Вторая_019_Vmen,rrr),DoubleToStr(Вторая_019_Vmen,rrr_2))
!30
!Таблица12 РАП
!строка100
 if ((Третья_100_3+Третья_100_7) >= 0,DoubleToStr((Третья_100_3+Третья_100_7),rrr),DoubleToStr((Третья_100_3+Третья_100_7),rrr_2))
 if ((Третья_100_3Vmen+Третья_100_7Vmen) >= 0,DoubleToStr((Третья_100_3Vmen+Третья_100_7Vmen),rrr),DoubleToStr((Третья_100_3Vmen+Третья_100_7Vmen),rrr_2))
 if (Третья_100_4_MN >= 0,DoubleToStr(Третья_100_4_MN,rrr_4),DoubleToStr(Третья_100_4_MN,rrr_5))
 if ((Третья_100_5+Третья_100_9) >= 0,DoubleToStr((Третья_100_5+Третья_100_9),rrr),DoubleToStr((Третья_100_5+Третья_100_9),rrr_2))
 DoubleToStr((Третья_100_6+Третья_100_12),rrr_3)
!строка101
 if (Третья_100_13 >= 0,DoubleToStr(Третья_100_13,rrr),DoubleToStr(Третья_100_13,rrr_2))
 if (Третья_100_13Vmen >= 0,DoubleToStr(Третья_100_13Vmen,rrr),DoubleToStr(Третья_100_13Vmen,rrr_2))
 if (Третья_100_14_MN >= 0,DoubleToStr(Третья_100_14_MN,rrr_4),DoubleToStr(Третья_100_14_MN,rrr_5))
 if (Третья_100_15 >= 0,DoubleToStr(Третья_100_15,rrr),DoubleToStr(Третья_100_15,rrr_2))
 if (Третья_100_16_MN >= 0,DoubleToStr(Третья_100_16_MN,rrr_4),DoubleToStr(Третья_100_16_MN,rrr_5))
 if (Третья_100_17 >= 0,DoubleToStr(Третья_100_17,rrr),DoubleToStr(Третья_100_17,rrr_2))
 DoubleToStr(Третья_100_18,rrr_3)
!строка102 Итого
 if ((Третья_100_3+Третья_100_7+Третья_100_13) >= 0,DoubleToStr((Третья_100_3+Третья_100_7+Третья_100_13),rrr),DoubleToStr((Третья_100_3+Третья_100_7+Третья_100_13),rrr_2))
 if ((Третья_100_3Vmen+Третья_100_7Vmen+Третья_100_13Vmen) >= 0,DoubleToStr((Третья_100_3Vmen+Третья_100_7Vmen+Третья_100_13Vmen),rrr),DoubleToStr((Третья_100_3Vmen+Третья_100_7Vmen+Третья_100_13Vmen),rrr_2))
 if ((Третья_100_5+Третья_100_9+Третья_100_15) >= 0,DoubleToStr((Третья_100_5+Третья_100_9+Третья_100_15),rrr),DoubleToStr((Третья_100_5+Третья_100_9+Третья_100_15),rrr_2))
 if ((Третья_100_11+Третья_100_17) >= 0,DoubleToStr((Третья_100_11+Третья_100_17),rrr),DoubleToStr((Третья_100_11+Третья_100_17),rrr_2))
 DoubleToStr((Третья_100_6+Третья_100_12+Третья_100_18),rrr_3)
!строка200
 if ((Третья_200_3+Третья_200_7) >= 0,DoubleToStr((Третья_200_3+Третья_200_7),rrr),DoubleToStr((Третья_200_3+Третья_200_7),rrr_2))
 if ((Третья_200_3Vmen+Третья_200_7Vmen) >= 0,DoubleToStr((Третья_200_3Vmen+Третья_200_7Vmen),rrr),DoubleToStr((Третья_200_3Vmen+Третья_200_7Vmen),rrr_2))
 if ((Третья_200_5+Третья_200_9) >= 0,DoubleToStr((Третья_200_5+Третья_200_9),rrr),DoubleToStr((Третья_200_5+Третья_200_9),rrr_2))
 DoubleToStr((Третья_200_6+Третья_200_12),rrr_3)
!строка201
 if (Третья_200_13 >= 0,DoubleToStr(Третья_200_13,rrr),DoubleToStr(Третья_200_13,rrr_2))
 if (Третья_200_13Vmen >= 0,DoubleToStr(Третья_200_13Vmen,rrr),DoubleToStr(Третья_200_13Vmen,rrr_2))
 if (Третья_200_15 >= 0,DoubleToStr(Третья_200_15,rrr),DoubleToStr(Третья_200_15,rrr_2))
 if (Третья_200_17 >= 0,DoubleToStr(Третья_200_17,rrr),DoubleToStr(Третья_200_17,rrr_2))
 DoubleToStr(Третья_200_18,rrr_3)
!строка202 Итого
 if ((Третья_200_3+Третья_200_7+Третья_200_13) >= 0,DoubleToStr((Третья_200_3+Третья_200_7+Третья_200_13),rrr),DoubleToStr((Третья_200_3+Третья_200_7+Третья_200_13),rrr_2))
 if ((Третья_200_3Vmen+Третья_200_7Vmen+Третья_200_13Vmen) >= 0,DoubleToStr((Третья_200_3Vmen+Третья_200_7Vmen+Третья_200_13Vmen),rrr),DoubleToStr((Третья_200_3Vmen+Третья_200_7Vmen+Третья_200_13Vmen),rrr_2))
 if ((Третья_200_5+Третья_200_9+Третья_200_15) >= 0,DoubleToStr((Третья_200_5+Третья_200_9+Третья_200_15),rrr),DoubleToStr((Третья_200_5+Третья_200_9+Третья_200_15),rrr_2))
 if ((Третья_200_11+Третья_200_17) >= 0,DoubleToStr((Третья_200_11+Третья_200_17),rrr),DoubleToStr((Третья_200_11+Третья_200_17),rrr_2))
 DoubleToStr((Третья_200_6+Третья_200_12+Третья_200_18),rrr_3)
!строка210
 if ((Третья_210_3+Третья_210_7) >= 0,DoubleToStr((Третья_210_3+Третья_210_7),rrr),DoubleToStr((Третья_210_3+Третья_210_7),rrr_2))
 if ((Третья_210_3Vmen+Третья_210_7Vmen) >= 0,DoubleToStr((Третья_210_3Vmen+Третья_210_7Vmen),rrr),DoubleToStr((Третья_210_3Vmen+Третья_210_7Vmen),rrr_2))
 if ((Третья_210_4_MN) >= 0,DoubleToStr((Третья_210_4_MN),rrr_4),DoubleToStr((Третья_210_4_MN+Третья_210_8_MN),rrr_5))
 if ((Третья_210_5+Третья_210_9) >= 0,DoubleToStr((Третья_210_5+Третья_210_9),rrr),DoubleToStr((Третья_210_5+Третья_210_9),rrr_2))
 DoubleToStr((Третья_210_6+Третья_210_12),rrr_3)
!строка211
 if ((Третья_210_13) >= 0,DoubleToStr((Третья_210_13),rrr),DoubleToStr((Третья_210_13),rrr_2))
 if ((Третья_210_13Vmen) >= 0,DoubleToStr((Третья_210_13Vmen),rrr),DoubleToStr((Третья_210_13Vmen),rrr_2))
 if ((Третья_210_14_MN) >= 0,DoubleToStr((Третья_210_14_MN),rrr_4),DoubleToStr((Третья_210_14_MN),rrr_5))
 if ((Третья_210_15) >= 0,DoubleToStr((Третья_210_15),rrr),DoubleToStr((Третья_210_15),rrr_2))
 if ((Третья_210_16_MN) >= 0,DoubleToStr((Третья_210_16_MN),rrr_4),DoubleToStr((Третья_210_16_MN),rrr_5))
 if ((Третья_210_17) >= 0,DoubleToStr((Третья_210_17),rrr),DoubleToStr((Третья_210_17),rrr_2))
 DoubleToStr((Третья_210_18),rrr_3)
!строка212 Итого
 if ((Третья_210_3+Третья_210_7+Третья_210_13) >= 0,DoubleToStr((Третья_210_3+Третья_210_7+Третья_210_13),rrr),DoubleToStr((Третья_210_3+Третья_210_7+Третья_210_13),rrr_2))
 if ((Третья_210_3Vmen+Третья_210_7Vmen+Третья_210_13Vmen) >= 0,DoubleToStr((Третья_210_3Vmen+Третья_210_7Vmen+Третья_210_13Vmen),rrr),DoubleToStr((Третья_210_3Vmen+Третья_210_7Vmen+Третья_210_13Vmen),rrr_2))
 if ((Третья_210_5+Третья_210_9+Третья_210_15) >= 0,DoubleToStr((Третья_210_5+Третья_210_9+Третья_210_15),rrr),DoubleToStr((Третья_210_5+Третья_210_9+Третья_210_15),rrr_2))
 if ((Третья_210_11+Третья_210_17) >= 0,DoubleToStr((Третья_210_11+Третья_210_17),rrr),DoubleToStr((Третья_210_11+Третья_210_17),rrr_2))
 DoubleToStr((Третья_210_6+Третья_210_12+Третья_210_18),rrr_3)
!строка220
 if ((Третья_220_3+Третья_220_7) >= 0,DoubleToStr((Третья_220_3+Третья_220_7),rrr),DoubleToStr((Третья_220_3+Третья_220_7),rrr_2))
 if ((Третья_220_3Vmen+Третья_220_7Vmen) >= 0,DoubleToStr((Третья_220_3Vmen+Третья_220_7Vmen),rrr),DoubleToStr((Третья_220_3Vmen+Третья_220_7Vmen),rrr_2))
 if (Третья_220_4_MN >= 0,DoubleToStr(Третья_220_4_MN,rrr_4),DoubleToStr(Третья_220_4_MN,rrr_5))
 if ((Третья_220_5+Третья_220_9) >= 0,DoubleToStr((Третья_220_5+Третья_220_9),rrr),DoubleToStr((Третья_220_5+Третья_220_9),rrr_2))
!строка221
 if ((Третья_220_13) >= 0,DoubleToStr((Третья_220_13),rrr),DoubleToStr((Третья_220_13),rrr_2))
 if ((Третья_220_13Vmen) >= 0,DoubleToStr((Третья_220_13Vmen),rrr),DoubleToStr((Третья_220_13Vmen),rrr_2))
 if ((Третья_220_14_MN) >= 0,DoubleToStr((Третья_220_14_MN),rrr_4),DoubleToStr((Третья_220_14_MN),rrr_5))
 if ((Третья_220_15) >= 0,DoubleToStr((Третья_220_15),rrr),DoubleToStr((Третья_220_15),rrr_2))
 if ((Третья_220_16_MN) >= 0,DoubleToStr((Третья_220_16_MN),rrr_4),DoubleToStr((Третья_220_16_MN),rrr_5))
 if ((Третья_220_17) >= 0,DoubleToStr((Третья_220_17),rrr),DoubleToStr((Третья_220_17),rrr_2))
!строка222 Итого
 if ((Третья_220_3+Третья_220_7+Третья_220_13) >= 0,DoubleToStr((Третья_220_3+Третья_220_7+Третья_220_13),rrr),DoubleToStr((Третья_220_3+Третья_220_7+Третья_220_13),rrr_2))
 if ((Третья_220_3Vmen+Третья_220_7Vmen+Третья_220_13Vmen) >= 0,DoubleToStr((Третья_220_3Vmen+Третья_220_7Vmen+Третья_220_13Vmen),rrr),DoubleToStr((Третья_220_3Vmen+Третья_220_7Vmen+Третья_220_13Vmen),rrr_2))
 if ((Третья_220_5+Третья_220_9+Третья_220_15) >= 0,DoubleToStr((Третья_220_5+Третья_220_9+Третья_220_15),rrr),DoubleToStr((Третья_220_5+Третья_220_9+Третья_220_15),rrr_2))
 if ((Третья_220_11+Третья_220_17) >= 0,DoubleToStr((Третья_220_11+Третья_220_17),rrr),DoubleToStr((Третья_220_11+Третья_220_17),rrr_2))
!строка300
 if ((Третья_300_3+Третья_300_7) >= 0,DoubleToStr((Третья_300_3+Третья_300_7),rrr),DoubleToStr((Третья_300_3+Третья_300_7),rrr_2))
 if ((Третья_300_3Vmen+Третья_300_7Vmen) >= 0,DoubleToStr((Третья_300_3Vmen+Третья_300_7Vmen),rrr),DoubleToStr((Третья_300_3Vmen+Третья_300_7Vmen),rrr_2))
 if (Третья_300_4_MN >= 0,DoubleToStr(Третья_300_4_MN,rrr_4),DoubleToStr(Третья_300_4_MN,rrr_5))
 if ((Третья_300_5+Третья_300_9) >= 0,DoubleToStr((Третья_300_5+Третья_300_9),rrr),DoubleToStr((Третья_300_5+Третья_300_9),rrr_2))
 DoubleToStr((Третья_300_6+Третья_300_12),rrr_3)
!строка301
 if ((Третья_300_13) >= 0,DoubleToStr((Третья_300_13),rrr),DoubleToStr((Третья_300_13),rrr_2))
 if ((Третья_300_13Vmen) >= 0,DoubleToStr((Третья_300_13Vmen),rrr),DoubleToStr((Третья_300_13Vmen),rrr_2))
 if ((Третья_300_14_MN) >= 0,DoubleToStr((Третья_300_14_MN),rrr_4),DoubleToStr((Третья_300_14_MN),rrr_5))
 if ((Третья_300_15) >= 0,DoubleToStr((Третья_300_15),rrr),DoubleToStr((Третья_300_15),rrr_2))
 if ((Третья_300_16_MN) >= 0,DoubleToStr((Третья_300_16_MN),rrr_4),DoubleToStr((Третья_300_16_MN),rrr_5))
 if ((Третья_300_17) >= 0,DoubleToStr((Третья_300_17),rrr),DoubleToStr((Третья_300_17),rrr_2))
 DoubleToStr(Третья_300_18,rrr_3)
!строка302 Итого
 if ((Третья_300_3+Третья_300_7+Третья_300_13) >= 0,DoubleToStr((Третья_300_3+Третья_300_7+Третья_300_13),rrr),DoubleToStr((Третья_300_3+Третья_300_7+Третья_300_13),rrr_2))
 if ((Третья_300_3Vmen+Третья_300_7Vmen+Третья_300_13Vmen) >= 0,DoubleToStr((Третья_300_3Vmen+Третья_300_7Vmen+Третья_300_13Vmen),rrr),DoubleToStr((Третья_300_3Vmen+Третья_300_7Vmen+Третья_300_13Vmen),rrr_2))
 if ((Третья_300_5+Третья_300_9+Третья_300_15) >= 0,DoubleToStr((Третья_300_5+Третья_300_9+Третья_300_15),rrr),DoubleToStr((Третья_300_5+Третья_300_9+Третья_300_15),rrr_2))
 if ((Третья_300_11+Третья_300_17) >= 0,DoubleToStr((Третья_300_11+Третья_300_17),rrr),DoubleToStr((Третья_300_11+Третья_300_17),rrr_2))
 DoubleToStr((Третья_300_6+Третья_300_12+Третья_300_18),rrr_3)
!строка400 ОБЩИЙ ИТОГ
 if ((Третья_310_3+Третья_310_7) >= 0,DoubleToStr((Третья_310_3+Третья_310_7),rrr),DoubleToStr((Третья_310_3+Третья_310_7),rrr_2))
 if ((Третья_310_3Vmen+Третья_310_7Vmen) >= 0,DoubleToStr((Третья_310_3Vmen+Третья_310_7Vmen),rrr),DoubleToStr((Третья_310_3Vmen+Третья_310_7Vmen),rrr_2))
 if ((Третья_310_5+Третья_310_9) >= 0,DoubleToStr((Третья_310_5+Третья_310_9),rrr),DoubleToStr((Третья_310_5+Третья_310_9),rrr_2))
 DoubleToStr((Третья_310_6+Третья_310_12),rrr_3)
!строка401 ОБЩИЙ ИТОГ
 if ((Третья_310_13) >= 0,DoubleToStr((Третья_310_13),rrr),DoubleToStr((Третья_310_13),rrr_2))
 if ((Третья_310_13Vmen) >= 0,DoubleToStr((Третья_310_13Vmen),rrr),DoubleToStr((Третья_310_13Vmen),rrr_2))
 if ((Третья_310_15) >= 0,DoubleToStr((Третья_310_15),rrr),DoubleToStr((Третья_310_15),rrr_2))
 if ((Третья_310_17) >= 0,DoubleToStr((Третья_310_17),rrr),DoubleToStr((Третья_310_17),rrr_2))
 DoubleToStr(Третья_310_18,rrr_3)
!строка402 Итого ОБЩИЙ ИТОГ
 if ((Третья_310_3+Третья_310_7+Третья_310_13) >= 0,DoubleToStr((Третья_310_3+Третья_310_7+Третья_310_13),rrr),DoubleToStr((Третья_310_3+Третья_310_7+Третья_310_13),rrr_2))
 if ((Третья_310_3Vmen+Третья_310_7Vmen+Третья_310_13Vmen) >= 0,DoubleToStr((Третья_310_3Vmen+Третья_310_7Vmen+Третья_310_13Vmen),rrr),DoubleToStr((Третья_310_3Vmen+Третья_310_7Vmen+Третья_300_13Vmen),rrr_2))
 if ((Третья_310_5+Третья_310_9+Третья_310_15) >= 0,DoubleToStr((Третья_310_5+Третья_310_9+Третья_310_15),rrr),DoubleToStr((Третья_310_5+Третья_310_9+Третья_310_15),rrr_2))
 if ((Третья_310_11+Третья_310_17) >= 0,DoubleToStr((Третья_310_11+Третья_310_17),rrr),DoubleToStr((Третья_310_11+Третья_310_17),rrr_2))
 DoubleToStr((Третья_310_6+Третья_310_12+Третья_310_18),rrr_3)
!Таблица12 Декларации
 if (Третья_100_3 >= 0,DoubleToStr(Третья_100_3,rrr),DoubleToStr(Третья_100_3,rrr_2))
 if (Третья_100_3Vmen >= 0,DoubleToStr(Третья_100_3Vmen,rrr),DoubleToStr(Третья_100_3Vmen,rrr_2))
 if (Третья_100_4_MN >= 0,DoubleToStr(Третья_100_4_MN,rrr_4),DoubleToStr(Третья_100_4_MN,rrr_5))
 if (Третья_100_5 >= 0,DoubleToStr(Третья_100_5,rrr),DoubleToStr(Третья_100_5,rrr_2))
 DoubleToStr(Третья_100_6,rrr_3)
!5
 if (Третья_100_7 >= 0,DoubleToStr(Третья_100_7,rrr),DoubleToStr(Третья_100_7,rrr_2))
 if (Третья_100_7Vmen >= 0,DoubleToStr(Третья_100_7Vmen,rrr),DoubleToStr(Третья_100_7Vmen,rrr_2))
 if (Третья_100_8_MN >= 0,DoubleToStr(Третья_100_8_MN,rrr_4),DoubleToStr(Третья_100_8_MN,rrr_5))
 if (Третья_100_9 >= 0,DoubleToStr(Третья_100_9,rrr),DoubleToStr(Третья_100_9,rrr_2))
 if (Третья_100_10_MN >= 0,DoubleToStr(Третья_100_10_MN,rrr_4),DoubleToStr(Третья_100_10_MN,rrr_5))
 if (Третья_100_11 >= 0,DoubleToStr(Третья_100_11,rrr),DoubleToStr(Третья_100_11,rrr_2))
 DoubleToStr(Третья_100_12,rrr_3)
!12
 if (Третья_100_13 >= 0,DoubleToStr(Третья_100_13,rrr),DoubleToStr(Третья_100_13,rrr_2))
 if (Третья_100_13Vmen >= 0,DoubleToStr(Третья_100_13Vmen,rrr),DoubleToStr(Третья_100_13Vmen,rrr_2))
 if (Третья_100_14_MN >= 0,DoubleToStr(Третья_100_14_MN,rrr_4),DoubleToStr(Третья_100_14_MN,rrr_5))
 if (Третья_100_15 >= 0,DoubleToStr(Третья_100_15,rrr),DoubleToStr(Третья_100_15,rrr_2))
 if (Третья_100_16_MN >= 0,DoubleToStr(Третья_100_16_MN,rrr_4),DoubleToStr(Третья_100_16_MN,rrr_5))
 if (Третья_100_17 >= 0,DoubleToStr(Третья_100_17,rrr),DoubleToStr(Третья_100_17,rrr_2))
 DoubleToStr(Третья_100_18,rrr_3)
!Итого 19
 if ((Третья_100_3+Третья_100_7+Третья_100_13) >= 0,DoubleToStr((Третья_100_3+Третья_100_7+Третья_100_13),rrr),DoubleToStr((Третья_100_3+Третья_100_7+Третья_100_13),rrr_2))
 if ((Третья_100_3Vmen+Третья_100_7Vmen+Третья_100_13Vmen) >= 0,DoubleToStr((Третья_100_3Vmen+Третья_100_7Vmen+Третья_100_13Vmen),rrr),DoubleToStr((Третья_100_3Vmen+Третья_100_7Vmen+Третья_100_13Vmen),rrr_2))
! if ((Третья_100_4_MN+Третья_100_8_MN+Третья_100_14_MN) >= 0,DoubleToStr((Третья_100_4_MN+Третья_100_8_MN+Третья_100_14_MN),rrr_4),DoubleToStr((Третья_100_4_MN+Третья_100_8_MN+Третья_100_14_MN),rrr_5))
 if ((Третья_100_5+Третья_100_9+Третья_100_15) >= 0,DoubleToStr((Третья_100_5+Третья_100_9+Третья_100_15),rrr),DoubleToStr((Третья_100_5+Третья_100_9+Третья_100_15),rrr_2))
! if ((Третья_100_10_MN+Третья_100_16_MN) >= 0,DoubleToStr((Третья_100_10_MN+Третья_100_16_MN),rrr_4),DoubleToStr((Третья_100_10_MN+Третья_100_16_MN),rrr_5))
 if ((Третья_100_11+Третья_100_17) >= 0,DoubleToStr((Третья_100_11+Третья_100_17),rrr),DoubleToStr((Третья_100_11+Третья_100_17),rrr_2))
 DoubleToStr((Третья_100_6+Третья_100_12+Третья_100_18),rrr_3)
!26
 if (Третья_200_3 >= 0,DoubleToStr(Третья_200_3,rrr),DoubleToStr(Третья_200_3,rrr_2))
 if (Третья_200_3Vmen >= 0,DoubleToStr(Третья_200_3Vmen,rrr),DoubleToStr(Третья_200_3Vmen,rrr_2))
 if (Третья_200_5 >= 0,DoubleToStr(Третья_200_5,rrr),DoubleToStr(Третья_200_5,rrr_2))
 DoubleToStr(Третья_200_6,rrr_3)
!30
 if (Третья_200_7 >= 0,DoubleToStr(Третья_200_7,rrr),DoubleToStr(Третья_200_7,rrr_2))
 if (Третья_200_7Vmen >= 0,DoubleToStr(Третья_200_7Vmen,rrr),DoubleToStr(Третья_200_7Vmen,rrr_2))
 if (Третья_200_9 >= 0,DoubleToStr(Третья_200_9,rrr),DoubleToStr(Третья_200_9,rrr_2))
 if (Третья_200_11 >= 0,DoubleToStr(Третья_200_11,rrr),DoubleToStr(Третья_200_11,rrr_2))
 DoubleToStr(Третья_200_12,rrr_3)
!35
 if (Третья_200_13 >= 0,DoubleToStr(Третья_200_13,rrr),DoubleToStr(Третья_200_13,rrr_2))
 if (Третья_200_13Vmen >= 0,DoubleToStr(Третья_200_13Vmen,rrr),DoubleToStr(Третья_200_13Vmen,rrr_2))
 if (Третья_200_15 >= 0,DoubleToStr(Третья_200_15,rrr),DoubleToStr(Третья_200_15,rrr_2))
 if (Третья_200_17 >= 0,DoubleToStr(Третья_200_17,rrr),DoubleToStr(Третья_200_17,rrr_2))
 DoubleToStr(Третья_200_18,rrr_3)
!Итого 40
 if ((Третья_200_3+Третья_200_7+Третья_200_13) >= 0,DoubleToStr((Третья_200_3+Третья_200_7+Третья_200_13),rrr),DoubleToStr((Третья_200_3+Третья_200_7+Третья_200_13),rrr_2))
 if ((Третья_200_3Vmen+Третья_200_7Vmen+Третья_200_13Vmen) >= 0,DoubleToStr((Третья_200_3Vmen+Третья_200_7Vmen+Третья_200_13Vmen),rrr),DoubleToStr((Третья_200_3Vmen+Третья_200_7Vmen+Третья_200_13Vmen),rrr_2))
 if ((Третья_200_5+Третья_200_9+Третья_200_15) >= 0,DoubleToStr((Третья_200_5+Третья_200_9+Третья_200_15),rrr),DoubleToStr((Третья_200_5+Третья_200_9+Третья_200_15),rrr_2))
 if ((Третья_200_11+Третья_200_17) >= 0,DoubleToStr((Третья_200_11+Третья_200_17),rrr),DoubleToStr((Третья_200_11+Третья_200_17),rrr_2))
 DoubleToStr((Третья_200_6+Третья_200_12+Третья_200_18),rrr_3)
!45
 if (Третья_210_3 >= 0,DoubleToStr(Третья_210_3,rrr),DoubleToStr(Третья_210_3,rrr_2))
 if (Третья_210_3Vmen >= 0,DoubleToStr(Третья_210_3Vmen,rrr),DoubleToStr(Третья_210_3Vmen,rrr_2))
 if (Третья_210_4_MN >= 0,DoubleToStr(Третья_210_4_MN,rrr_4),DoubleToStr(Третья_210_4_MN,rrr_5))
 if (Третья_210_5 >= 0,DoubleToStr(Третья_210_5,rrr),DoubleToStr(Третья_210_5,rrr_2))
 DoubleToStr(Третья_210_6,rrr_3)
!50
 if (Третья_210_7 >= 0,DoubleToStr(Третья_210_7,rrr),DoubleToStr(Третья_210_7,rrr_2))
 if (Третья_210_7Vmen >= 0,DoubleToStr(Третья_210_7Vmen,rrr),DoubleToStr(Третья_210_7Vmen,rrr_2))
 if (Третья_210_8_MN >= 0,DoubleToStr(Третья_210_8_MN,rrr_4),DoubleToStr(Третья_210_8_MN,rrr_5))
 if (Третья_210_9 >= 0,DoubleToStr(Третья_210_9,rrr),DoubleToStr(Третья_210_9,rrr_2))
 if (Третья_210_10_MN >= 0,DoubleToStr(Третья_210_10_MN,rrr_4),DoubleToStr(Третья_210_10_MN,rrr_5))
 if (Третья_210_11 >= 0,DoubleToStr(Третья_210_11,rrr),DoubleToStr(Третья_210_11,rrr_2))
 DoubleToStr(Третья_210_12,rrr_3)
!57
 if (Третья_210_13 >= 0,DoubleToStr(Третья_210_13,rrr),DoubleToStr(Третья_210_13,rrr_2))
 if (Третья_210_13Vmen >= 0,DoubleToStr(Третья_210_13Vmen,rrr),DoubleToStr(Третья_210_13Vmen,rrr_2))
 if (Третья_210_14_MN >= 0,DoubleToStr(Третья_210_14_MN,rrr_4),DoubleToStr(Третья_210_14_MN,rrr_5))
 if (Третья_210_15 >= 0,DoubleToStr(Третья_210_15,rrr),DoubleToStr(Третья_210_15,rrr_2))
 if (Третья_210_16_MN >= 0,DoubleToStr(Третья_210_16_MN,rrr_4),DoubleToStr(Третья_210_16_MN,rrr_5))
 if (Третья_210_17 >= 0,DoubleToStr(Третья_210_17,rrr),DoubleToStr(Третья_210_17,rrr_2))
 DoubleToStr(Третья_210_18,rrr_3)
!Итого 64
 if ((Третья_210_3+Третья_210_7+Третья_210_13) >= 0,DoubleToStr((Третья_210_3+Третья_210_7+Третья_210_13),rrr),DoubleToStr((Третья_210_3+Третья_210_7+Третья_210_13),rrr_2))
 if ((Третья_210_3Vmen+Третья_210_7Vmen+Третья_210_13Vmen) >= 0,DoubleToStr((Третья_210_3Vmen+Третья_210_7Vmen+Третья_210_13Vmen),rrr),DoubleToStr((Третья_210_3Vmen+Третья_210_7Vmen+Третья_210_13Vmen),rrr_2))
! if ((Третья_210_4_MN+Третья_210_8_MN+Третья_210_14_MN) >= 0,DoubleToStr((Третья_210_4_MN+Третья_210_8_MN+Третья_210_14_MN),rrr_4),DoubleToStr((Третья_210_4_MN+Третья_210_8_MN+Третья_210_14_MN),rrr_5))
 if ((Третья_210_5+Третья_210_9+Третья_210_15) >= 0,DoubleToStr((Третья_210_5+Третья_210_9+Третья_210_15),rrr),DoubleToStr((Третья_210_5+Третья_210_9+Третья_210_15),rrr_2))
! if ((Третья_210_10_MN+Третья_210_16_MN) >= 0,DoubleToStr((Третья_210_10_MN+Третья_210_16_MN),rrr_4),DoubleToStr((Третья_210_10_MN+Третья_210_16_MN),rrr_5))
 if ((Третья_210_11+Третья_210_17) >= 0,DoubleToStr((Третья_210_11+Третья_210_17),rrr),DoubleToStr((Третья_210_11+Третья_210_17),rrr_2))
 DoubleToStr((Третья_210_6+Третья_210_12+Третья_210_18),rrr_3)
!71
 if (Третья_220_3 >= 0,DoubleToStr(Третья_220_3,rrr),DoubleToStr(Третья_220_3,rrr_2))
 if (Третья_220_3Vmen >= 0,DoubleToStr(Третья_220_3Vmen,rrr),DoubleToStr(Третья_220_3Vmen,rrr_2))
 if (Третья_220_4_MN >= 0,DoubleToStr(Третья_220_4_MN,rrr_4),DoubleToStr(Третья_220_4_MN,rrr_5))
 if (Третья_220_5 >= 0,DoubleToStr(Третья_220_5,rrr),DoubleToStr(Третья_220_5,rrr_2))
!75
 if (Третья_220_7 >= 0,DoubleToStr(Третья_220_7,rrr),DoubleToStr(Третья_220_7,rrr_2))
 if (Третья_220_7Vmen >= 0,DoubleToStr(Третья_220_7Vmen,rrr),DoubleToStr(Третья_220_7Vmen,rrr_2))
 if (Третья_220_8_MN >= 0,DoubleToStr(Третья_220_8_MN,rrr_4),DoubleToStr(Третья_220_8_MN,rrr_5))
 if (Третья_220_9 >= 0,DoubleToStr(Третья_220_9,rrr),DoubleToStr(Третья_220_9,rrr_2))
 if (Третья_220_10_MN >= 0,DoubleToStr(Третья_220_10_MN,rrr_4),DoubleToStr(Третья_220_10_MN,rrr_5))
 if (Третья_220_11 >= 0,DoubleToStr(Третья_220_11,rrr),DoubleToStr(Третья_220_11,rrr_2))
!81
 if (Третья_220_13 >= 0,DoubleToStr(Третья_220_13,rrr),DoubleToStr(Третья_220_13,rrr_2))
 if (Третья_220_13Vmen >= 0,DoubleToStr(Третья_220_13Vmen,rrr),DoubleToStr(Третья_220_13Vmen,rrr_2))
 if (Третья_220_14_MN >= 0,DoubleToStr(Третья_220_14_MN,rrr_4),DoubleToStr(Третья_220_14_MN,rrr_5))
 if (Третья_220_15 >= 0,DoubleToStr(Третья_220_15,rrr),DoubleToStr(Третья_220_15,rrr_2))
 if (Третья_220_16_MN >= 0,DoubleToStr(Третья_220_16_MN,rrr_4),DoubleToStr(Третья_220_16_MN,rrr_5))
 if (Третья_220_17 >= 0,DoubleToStr(Третья_220_17,rrr),DoubleToStr(Третья_220_17,rrr_2))
!Итого 87
 if ((Третья_220_3+Третья_220_7+Третья_220_13) >= 0,DoubleToStr((Третья_220_3+Третья_220_7+Третья_220_13),rrr),DoubleToStr((Третья_220_3+Третья_220_7+Третья_220_13),rrr_2))
 if ((Третья_220_3Vmen+Третья_220_7Vmen+Третья_220_13Vmen) >= 0,DoubleToStr((Третья_220_3Vmen+Третья_220_7Vmen+Третья_220_13Vmen),rrr),DoubleToStr((Третья_220_3Vmen+Третья_220_7Vmen+Третья_220_13Vmen),rrr_2))
! if ((Третья_220_4_MN+Третья_220_8_MN+Третья_220_14_MN) >= 0,DoubleToStr((Третья_220_4_MN+Третья_220_8_MN+Третья_220_14_MN),rrr_4),DoubleToStr((Третья_220_4_MN+Третья_220_8_MN+Третья_220_14_MN),rrr_5))
 if ((Третья_220_5+Третья_220_9+Третья_220_15) >= 0,DoubleToStr((Третья_220_5+Третья_220_9+Третья_220_15),rrr),DoubleToStr((Третья_220_5+Третья_220_9+Третья_220_15),rrr_2))
! if ((Третья_220_10_MN+Третья_220_16_MN) >= 0,DoubleToStr((Третья_220_10_MN+Третья_220_16_MN),rrr_4),DoubleToStr((Третья_220_10_MN+Третья_220_16_MN),rrr_5))
 if ((Третья_220_11+Третья_220_17) >= 0,DoubleToStr((Третья_220_11+Третья_220_17),rrr),DoubleToStr((Третья_220_11+Третья_220_17),rrr_2))
!93
 if (Третья_300_3 >= 0,DoubleToStr(Третья_300_3,rrr),DoubleToStr(Третья_300_3,rrr_2))
 if (Третья_300_3Vmen >= 0,DoubleToStr(Третья_300_3Vmen,rrr),DoubleToStr(Третья_300_3Vmen,rrr_2))
 if (Третья_300_5 >= 0,DoubleToStr(Третья_300_5,rrr),DoubleToStr(Третья_300_5,rrr_2))
 DoubleToStr(Третья_300_6,rrr_3)
!97
 if (Третья_300_7 >= 0,DoubleToStr(Третья_300_7,rrr),DoubleToStr(Третья_300_7,rrr_2))
 if (Третья_300_7Vmen >= 0,DoubleToStr(Третья_300_7Vmen,rrr),DoubleToStr(Третья_300_7Vmen,rrr_2))
 if (Третья_300_9 >= 0,DoubleToStr(Третья_300_9,rrr),DoubleToStr(Третья_300_9,rrr_2))
 if (Третья_300_11 >= 0,DoubleToStr(Третья_300_11,rrr),DoubleToStr(Третья_300_11,rrr_2))
 DoubleToStr(Третья_300_12,rrr_3)
!102
 if (Третья_300_13 >= 0,DoubleToStr(Третья_300_13,rrr),DoubleToStr(Третья_300_13,rrr_2))
 if (Третья_300_13Vmen >= 0,DoubleToStr(Третья_300_13Vmen,rrr),DoubleToStr(Третья_300_13Vmen,rrr_2))
 if (Третья_300_15 >= 0,DoubleToStr(Третья_300_15,rrr),DoubleToStr(Третья_300_15,rrr_2))
 if (Третья_300_17 >= 0,DoubleToStr(Третья_300_17,rrr),DoubleToStr(Третья_300_17,rrr_2))
 DoubleToStr(Третья_300_18,rrr_3)
!Итого 107
 if ((Третья_300_3+Третья_300_7+Третья_300_13) >= 0,DoubleToStr((Третья_300_3+Третья_300_7+Третья_300_13),rrr),DoubleToStr((Третья_300_3+Третья_300_7+Третья_300_13),rrr_2))
 if ((Третья_300_3Vmen+Третья_300_7Vmen+Третья_300_13Vmen) >= 0,DoubleToStr((Третья_300_3Vmen+Третья_300_7Vmen+Третья_300_13Vmen),rrr),DoubleToStr((Третья_300_3Vmen+Третья_300_7Vmen+Третья_300_13Vmen),rrr_2))
 if ((Третья_300_5+Третья_300_9+Третья_300_15) >= 0,DoubleToStr((Третья_300_5+Третья_300_9+Третья_300_15),rrr),DoubleToStr((Третья_300_5+Третья_300_9+Третья_300_15),rrr_2))
 if ((Третья_300_11+Третья_300_17) >= 0,DoubleToStr((Третья_300_11+Третья_300_17),rrr),DoubleToStr((Третья_300_11+Третья_300_17),rrr_2))
 DoubleToStr((Третья_300_6+Третья_300_12+Третья_300_18),rrr_3)
!112
 if (Третья_310_3 >= 0,DoubleToStr(Третья_310_3,rrr),DoubleToStr(Третья_310_3,rrr_2))
 if (Третья_310_3Vmen >= 0,DoubleToStr(Третья_310_3Vmen,rrr),DoubleToStr(Третья_310_3Vmen,rrr_2))
 if (Третья_310_4_MN >= 0,DoubleToStr(Третья_310_4_MN,rrr_4),DoubleToStr(Третья_310_4_MN,rrr_5))
 if (Третья_310_5 >= 0,DoubleToStr(Третья_310_5,rrr),DoubleToStr(Третья_310_5,rrr_2))
 DoubleToStr(Третья_310_6,rrr_3)
!117
 if (Третья_310_7 >= 0,DoubleToStr(Третья_310_7,rrr),DoubleToStr(Третья_310_7,rrr_2))
 if (Третья_310_7Vmen >= 0,DoubleToStr(Третья_310_7Vmen,rrr),DoubleToStr(Третья_310_7Vmen,rrr_2))
 if (Третья_310_8_MN >= 0,DoubleToStr(Третья_310_8_MN,rrr_4),DoubleToStr(Третья_310_8_MN,rrr_5))
 if (Третья_310_9 >= 0,DoubleToStr(Третья_310_9,rrr),DoubleToStr(Третья_310_9,rrr_2))
 if (Третья_310_10_MN >= 0,DoubleToStr(Третья_310_10_MN,rrr_4),DoubleToStr(Третья_310_10_MN,rrr_5))
 if (Третья_310_11 >= 0,DoubleToStr(Третья_310_11,rrr),DoubleToStr(Третья_310_11,rrr_2))
 DoubleToStr(Третья_310_12,rrr_3)
!124
 if (Третья_310_13 >= 0,DoubleToStr(Третья_310_13,rrr),DoubleToStr(Третья_310_13,rrr_2))
 if (Третья_310_13Vmen >= 0,DoubleToStr(Третья_310_13Vmen,rrr),DoubleToStr(Третья_310_13Vmen,rrr_2))
 if (Третья_310_14_MN >= 0,DoubleToStr(Третья_310_14_MN,rrr_4),DoubleToStr(Третья_310_14_MN,rrr_5))
 if (Третья_310_15 >= 0,DoubleToStr(Третья_310_15,rrr),DoubleToStr(Третья_310_15,rrr_2))
 if (Третья_310_16_MN >= 0,DoubleToStr(Третья_310_16_MN,rrr_4),DoubleToStr(Третья_310_16_MN,rrr_5))
 if (Третья_310_17 >= 0,DoubleToStr(Третья_310_17,rrr),DoubleToStr(Третья_310_17,rrr_2))
 DoubleToStr(Третья_310_18,rrr_3)
!Итого 131
 if ((Третья_310_3+Третья_310_7+Третья_310_13) >= 0,DoubleToStr((Третья_310_3+Третья_310_7+Третья_310_13),rrr),DoubleToStr((Третья_310_3+Третья_310_7+Третья_310_13),rrr_2))
 if ((Третья_310_3Vmen+Третья_310_7Vmen+Третья_310_13Vmen) >= 0,DoubleToStr((Третья_310_3Vmen+Третья_310_7Vmen+Третья_310_13Vmen),rrr),DoubleToStr((Третья_310_3Vmen+Третья_310_7Vmen+Третья_310_13Vmen),rrr_2))
! if ((Третья_310_4_MN+Третья_310_8_MN+Третья_310_14_MN) >= 0,DoubleToStr((Третья_310_4_MN+Третья_310_8_MN+Третья_310_14_MN),rrr_4),DoubleToStr((Третья_310_4_MN+Третья_310_8_MN+Третья_310_14_MN),rrr_5))
 if ((Третья_310_5+Третья_310_9+Третья_310_15) >= 0,DoubleToStr((Третья_310_5+Третья_310_9+Третья_310_15),rrr),DoubleToStr((Третья_310_5+Третья_310_9+Третья_310_15),rrr_2))
! if ((Третья_310_10_MN+Третья_310_16_MN) >= 0,DoubleToStr((Третья_310_10_MN+Третья_310_16_MN),rrr_4),DoubleToStr((Третья_310_10_MN+Третья_310_16_MN),rrr_5))
 if ((Третья_310_11+Третья_310_17) >= 0,DoubleToStr((Третья_310_11+Третья_310_17),rrr),DoubleToStr((Третья_310_11+Третья_310_17),rrr_2))
 DoubleToStr((Третья_310_6+Третья_310_12+Третья_310_18),rrr_3)
!138
 if (Третья_320_3 >= 0,DoubleToStr(Третья_320_3,rrr),DoubleToStr(Третья_320_3,rrr_2))
 if (Третья_320_3Vmen >= 0,DoubleToStr(Третья_320_3Vmen,rrr),DoubleToStr(Третья_320_3Vmen,rrr_2))
 if (Третья_320_4_MN >= 0,DoubleToStr(Третья_320_4_MN,rrr_4),DoubleToStr(Третья_320_4_MN,rrr_5))
 if (Третья_320_5 >= 0,DoubleToStr(Третья_320_5,rrr),DoubleToStr(Третья_320_5,rrr_2))
!142
 if (Третья_320_7 >= 0,DoubleToStr(Третья_320_7,rrr),DoubleToStr(Третья_320_7,rrr_2))
 if (Третья_320_7Vmen >= 0,DoubleToStr(Третья_320_7Vmen,rrr),DoubleToStr(Третья_320_7Vmen,rrr_2))
 if (Третья_320_8_MN >= 0,DoubleToStr(Третья_320_8_MN,rrr_4),DoubleToStr(Третья_320_8_MN,rrr_5))
 if (Третья_320_9 >= 0,DoubleToStr(Третья_320_9,rrr),DoubleToStr(Третья_320_9,rrr_2))
 if (Третья_320_10_MN >= 0,DoubleToStr(Третья_320_10_MN,rrr_4),DoubleToStr(Третья_320_10_MN,rrr_5))
 if (Третья_320_11 >= 0,DoubleToStr(Третья_320_11,rrr),DoubleToStr(Третья_320_11,rrr_2))
!148
 if (Третья_320_13 >= 0,DoubleToStr(Третья_320_13,rrr),DoubleToStr(Третья_320_13,rrr_2))
 if (Третья_320_13Vmen >= 0,DoubleToStr(Третья_320_13Vmen,rrr),DoubleToStr(Третья_320_13Vmen,rrr_2))
 if (Третья_320_14_MN >= 0,DoubleToStr(Третья_320_14_MN,rrr_4),DoubleToStr(Третья_320_14_MN,rrr_5))
 if (Третья_320_15 >= 0,DoubleToStr(Третья_320_15,rrr),DoubleToStr(Третья_320_15,rrr_2))
 if (Третья_320_16_MN >= 0,DoubleToStr(Третья_320_16_MN,rrr_4),DoubleToStr(Третья_320_16_MN,rrr_5))
 if (Третья_320_17 >= 0,DoubleToStr(Третья_320_17,rrr),DoubleToStr(Третья_320_17,rrr_2))
!Итого 154
 if ((Третья_320_3+Третья_320_7+Третья_320_13) >= 0,DoubleToStr((Третья_320_3+Третья_320_7+Третья_320_13),rrr),DoubleToStr((Третья_320_3+Третья_320_7+Третья_320_13),rrr_2))
 if ((Третья_320_3Vmen+Третья_320_7Vmen+Третья_320_13Vmen) >= 0,DoubleToStr((Третья_320_3Vmen+Третья_320_7Vmen+Третья_320_13Vmen),rrr),DoubleToStr((Третья_320_3Vmen+Третья_320_7Vmen+Третья_320_13Vmen),rrr_2))
! if ((Третья_320_4_MN+Третья_320_8_MN+Третья_320_14_MN) >= 0,DoubleToStr((Третья_320_4_MN+Третья_320_8_MN+Третья_320_14_MN),rrr_4),DoubleToStr((Третья_320_4_MN+Третья_320_8_MN+Третья_320_14_MN),rrr_5))
 if ((Третья_320_5+Третья_320_9+Третья_320_15) >= 0,DoubleToStr((Третья_320_5+Третья_320_9+Третья_320_15),rrr),DoubleToStr((Третья_320_5+Третья_320_9+Третья_320_15),rrr_2))
! if ((Третья_320_10_MN+Третья_320_16_MN) >= 0,DoubleToStr((Третья_320_10_MN+Третья_320_16_MN),rrr_4),DoubleToStr((Третья_320_10_MN+Третья_320_16_MN),rrr_5))
 if ((Третья_320_11+Третья_320_17) >= 0,DoubleToStr((Третья_320_11+Третья_320_17),rrr),DoubleToStr((Третья_320_11+Третья_320_17),rrr_2))
!160
 if (Третья_400_3 >= 0,DoubleToStr(Третья_400_3,rrr),DoubleToStr(Третья_400_3,rrr_2))
 if (Третья_400_3Vmen >= 0,DoubleToStr(Третья_400_3Vmen,rrr),DoubleToStr(Третья_400_3Vmen,rrr_2))
 if (Третья_400_4_MN >= 0,DoubleToStr(Третья_400_4_MN,rrr_4),DoubleToStr(Третья_400_4_MN,rrr_5))
 if (Третья_400_5 >= 0,DoubleToStr(Третья_400_5,rrr),DoubleToStr(Третья_400_5,rrr_2))
 DoubleToStr(Третья_400_6,rrr_3)
!165
 if (Третья_400_7 >= 0,DoubleToStr(Третья_400_7,rrr),DoubleToStr(Третья_400_7,rrr_2))
 if (Третья_400_7Vmen >= 0,DoubleToStr(Третья_400_7Vmen,rrr),DoubleToStr(Третья_400_7Vmen,rrr_2))
 if (Третья_400_8_MN >= 0,DoubleToStr(Третья_400_8_MN,rrr_4),DoubleToStr(Третья_400_8_MN,rrr_5))
 if (Третья_400_9 >= 0,DoubleToStr(Третья_400_9,rrr),DoubleToStr(Третья_400_9,rrr_2))
 if (Третья_400_10_MN >= 0,DoubleToStr(Третья_400_10_MN,rrr_4),DoubleToStr(Третья_400_10_MN,rrr_5))
 if (Третья_400_11 >= 0,DoubleToStr(Третья_400_11,rrr),DoubleToStr(Третья_400_11,rrr_2))
 DoubleToStr(Третья_400_12,rrr_3)
!172
 if (Третья_400_13 >= 0,DoubleToStr(Третья_400_13,rrr),DoubleToStr(Третья_400_13,rrr_2))
 if (Третья_400_13Vmen >= 0,DoubleToStr(Третья_400_13Vmen,rrr),DoubleToStr(Третья_400_13Vmen,rrr_2))
 if (Третья_400_14_MN >= 0,DoubleToStr(Третья_400_14_MN,rrr_4),DoubleToStr(Третья_400_14_MN,rrr_5))
 if (Третья_400_15 >= 0,DoubleToStr(Третья_400_15,rrr),DoubleToStr(Третья_400_15,rrr_2))
 if (Третья_400_16_MN >= 0,DoubleToStr(Третья_400_16_MN,rrr_4),DoubleToStr(Третья_400_16_MN,rrr_5))
 if (Третья_400_17 >= 0,DoubleToStr(Третья_400_17,rrr),DoubleToStr(Третья_400_17,rrr_2))
 DoubleToStr(Третья_400_18,rrr_3)
!Итого 179
 if ((Третья_400_3+Третья_400_7+Третья_400_13) >= 0,DoubleToStr((Третья_400_3+Третья_400_7+Третья_400_13),rrr),DoubleToStr((Третья_400_3+Третья_400_7+Третья_400_13),rrr_2))
 if ((Третья_400_3Vmen+Третья_400_7Vmen+Третья_400_13Vmen) >= 0,DoubleToStr((Третья_400_3Vmen+Третья_400_7Vmen+Третья_400_13Vmen),rrr),DoubleToStr((Третья_400_3Vmen+Третья_400_7Vmen+Третья_400_13Vmen),rrr_2))
! if ((Третья_400_4_MN+Третья_400_8_MN+Третья_400_14_MN) >= 0,DoubleToStr((Третья_400_4_MN+Третья_400_8_MN+Третья_400_14_MN),rrr_4),DoubleToStr((Третья_400_4_MN+Третья_400_8_MN+Третья_400_14_MN),rrr_5))
 if ((Третья_400_5+Третья_400_9+Третья_400_15) >= 0,DoubleToStr((Третья_400_5+Третья_400_9+Третья_400_15),rrr),DoubleToStr((Третья_400_5+Третья_400_9+Третья_400_15),rrr_2))
! if ((Третья_400_10_MN+Третья_400_16_MN) >= 0,DoubleToStr((Третья_400_10_MN+Третья_400_16_MN),rrr_4),DoubleToStr((Третья_400_10_MN+Третья_400_16_MN),rrr_5))
 if ((Третья_400_11+Третья_400_17) >= 0,DoubleToStr((Третья_400_11+Третья_400_17),rrr),DoubleToStr((Третья_400_11+Третья_400_17),rrr_2))
 DoubleToStr((Третья_400_6+Третья_400_12+Третья_400_18),rrr_3)
!186
 if (Итого_3 >= 0,DoubleToStr(Итого_3,rrr),DoubleToStr(Итого_3,rrr_2))
 if (Итого_3Vmen >= 0,DoubleToStr(Итого_3Vmen,rrr),DoubleToStr(Итого_3Vmen,rrr_2))
 if (Итого_5 >= 0,DoubleToStr(Итого_5,rrr),DoubleToStr(Итого_5,rrr_2))
 DoubleToStr(Итого_6,rrr_3)
!190
 if (Итого_7 >= 0,DoubleToStr(Итого_7,rrr),DoubleToStr(Итого_7,rrr_2))
 if (Итого_7Vmen >= 0,DoubleToStr(Итого_7Vmen,rrr),DoubleToStr(Итого_7Vmen,rrr_2))
 if (Итого_9 >= 0,DoubleToStr(Итого_9,rrr),DoubleToStr(Итого_9,rrr_2))
 if (Итого_11 >= 0,DoubleToStr(Итого_11,rrr),DoubleToStr(Итого_11,rrr_2))
 DoubleToStr(Итого_12,rrr_3)
!195
 if (Итого_13 >= 0,DoubleToStr(Итого_13,rrr),DoubleToStr(Итого_13,rrr_2))
 if (Итого_13Vmen >= 0,DoubleToStr(Итого_13Vmen,rrr),DoubleToStr(Итого_13Vmen,rrr_2))
 if (Итого_15 >= 0,DoubleToStr(Итого_15,rrr),DoubleToStr(Итого_15,rrr_2))
 if (Итого_17 >= 0,DoubleToStr(Итого_17,rrr),DoubleToStr(Итого_17,rrr_2))
 DoubleToStr(Итого_18,rrr_3)
!Итого 200
 if ((Итого_3+Итого_7+Итого_13) >= 0,DoubleToStr((Итого_3+Итого_7+Итого_13),rrr),DoubleToStr((Итого_3+Итого_7+Итого_13),rrr_2))
 if ((Итого_3Vmen+Итого_7Vmen+Итого_13Vmen) >= 0,DoubleToStr((Итого_3Vmen+Итого_7Vmen+Итого_13Vmen),rrr),DoubleToStr((Итого_3Vmen+Итого_7Vmen+Итого_13Vmen),rrr_2))
 if ((Итого_5+Итого_9+Итого_15) >= 0,DoubleToStr((Итого_5+Итого_9+Итого_15),rrr),DoubleToStr((Итого_5+Итого_9+Итого_15),rrr_2))
 if ((Итого_11+Итого_17) >= 0,DoubleToStr((Итого_11+Итого_17),rrr),DoubleToStr((Итого_11+Итого_17),rrr_2))
 DoubleToStr((Итого_6+Итого_12+Итого_18),rrr_3)
!Таблица13 205
 Средняя_численность_1
 Средняя_численность_2
 Средняя_численность_3
!
 Всего_выплат_1
 Всего_выплат_2
 Всего_выплат_3
!
 Численность_исключенных_1
 Численность_исключенных_2
 Численность_исключенных_3
!
 Выплаты_исключенным_1
 Выплаты_исключенным_2
 Выплаты_исключенным_3
!
 Выплаты_остальным_1
 Выплаты_остальным_2
 Выплаты_остальным_3
!
 Налоговая_база_на_работника_1
 Налоговая_база_на_работника_2
 Налоговая_база_на_работника_3
!
 Кол_Месяцев_1
 Кол_Месяцев_2
 Кол_Месяцев_3
!
 Налоговая_база_в_среднем_1
 Налоговая_база_в_среднем_2
 Налоговая_база_в_среднем_3
!
//======================
 Значки

.endfields
.begin
  rrr   := '666666666666667'
  rrr_2 := '-66666666666667'
  rrr_3 := '666666666667'
  rrr_4 := '6666667.888'
  rrr_5 := '6666667.888'
end.
! СЛУЖЕБНАЯ ЧАСТЬ
.{?internal; (Length(Trim(ИНН))<11)
ИдФайл:^**^^^
.}
.{?internal; (Length(Trim(ИНН))>11)
ИдФайл:^*********^^
.}
ТипИнф:ОТЧЕТНОСТЬНП
ВерсФорм:3.00
ИдПол:^
ВерсПрог:ГАЛАКТИКА
КолДок:1
.{?internal; (trim(TuneDocPerdst) <> '112')
НаимОтпрЮл:^
ТелОтпр:^
EmailОтпр:^
ДолжнОтпр:^
ФИООтпр:^
.}
.{?internal; (trim(TuneDocPerdst) = '112')
ФИООтпрФЛ:^
ТелОтпр:^
EmailОтпр:^
.}
^
.{?internal; (Length(Trim(ИНН))<11)
ИдДок:^**^^00000001
.}
.{?internal; (Length(Trim(ИНН))>11)
ИдДок:^*********^00000001
.}
ДатаДок:^
###
.{?internal; (trim(TuneDocPerdst) <> '112')
НаимЮЛПол:^
ИННЮЛ:^
.{?internal; (trim(TuneDocPerdst) <> '220')
КППЮЛ:^
.}
.{?internal; (trim(TuneDocPerdst) = '220')
КППОП:^
.}
ОГРН:^
РегНомПФР:^
###
ФИОРук:^
!.{?internal; (trim(VKakoiOtch) = '3')
!ИННРук:^
!.{?internal; (ФИОРук_ФИО <> ',,')
!ТелСлужРук:^
!.}
!.{?internal; (Trim(ТелРук) = '')
!ТелДомРук:^
!.}
!ДатаРождРук:^
!МестоРождРук:^
!ПолРук:^
!Гражд:^
!КодГражд:^
!.{?internal; (Trim(Руководитель_организации_ИНН) = '')
!УдЛичнРук:^
!ВыдУдЛичнРук:^
!ДатаУдЛичнРук:^
!АдрМЖРукРФ:^
!АдрМЖРукРез:^
!.}
!.}
ФИОБух:^
!.{?internal; (trim(VKakoiOtch) = '3')
!ИННБух:^
!.{?internal; (ФИОБух_ФИО <> ',,')
!ТелСлужБух:^
!.}
!.{?internal; (Trim(ТелБух) = '')
!ТелДомБух:^
!.}
!ДатаРождБух:^
!МестоРождБух:^
!ПолБух:^
!ГраждБух:^
!КодГраждБух:^
!.{?internal; (ФИОБух_ФИО <> ',,') and (Trim(Главный_бухгалтер_ИНН) = '')
!УдЛичнБух:^
!.}
!.{?internal; (Trim(Главный_бухгалтер_ИНН) = '')
!ВыдУдЛичнБух:^
!.}
!.{?internal; (ФИОБух_ФИО <> ',,') and (Trim(Главный_бухгалтер_ИНН) = '')
!ДатаУдЛичнБух:^
!АдрМЖБухРФ:^
!АдрМЖБухРез:^
!.}
!.}
!.{?internal; (trim(VKakoiOtch) = '3')
!ФИОУпПред:^
!ИННУпПред:^
!.{?internal; (Ответственное_лицо_ФИО <> ',,') and (trim(Ответственное_лицо_ИНН) = '')
!ТелСлужУпПред:^
!.{?internal; (Trim(тел) = '')or(Trim(тел) = ' ')
!ТелДомУпПред:^
!.}
!ДатаРождУпПред:^
!МестоРождУпПред:^
!ПолУпПред:^
!ГраждУпПред:^
!КодГраждУпПред:^
!.{?internal; (Ответственное_лицо_ФИО <> ',,') and (trim(Ответственное_лицо_ИНН) = '')
!УдЛичнУпПред:^
!.}
!.{?internal; (trim(Ответственное_лицо_ИНН) = '')
!ВыдУдЛичнУпПред:^
!.}
!.{?internal; (Ответственное_лицо_ФИО <> ',,') and (trim(Ответственное_лицо_ИНН) = '')
!ДатаУдЛичнУпПред:^
!АдрМЖУпПредРФ:^
!АдрМЖУпПредРeз:^
!.}
!.}
!.}
.}
.{?internal; (trim(TuneDocPerdst) = '112')
ФИО:^
ИННФЛ:^
.{?internal; (trim(TuneDocPerdst) = '120')
ОГРНИП:^
.}
.{?internal; (trim(VKakoiOtch) = '3')
РегНомПФР:^
.}
.{?internal; ((trim(Ответственное_лицо_ИНН) = '')or(trim(Ответственное_лицо_ИНН) = ' '))and(trim(TuneDocPerdst) = '112')
ТелСлуж:^
ТелДом:^
ДатаРожд:^
МестоРожд:^
.{?internal; (trim(VKakoiOtch) = '4')
Пол:^
.}
Гражд:^
КодГражд:^
УдЛичн:^
ВыдУдЛичн:^
ДатаУдЛичн:^
АдрМЖ:^
.{?internal; (trim(ГраждУпПред) <> '643')
АдрМЖРез:^
.}
.}
.}
###
! ИНФОРМАЦИОННАЯ ЧАСТЬ
! Описание формы
ПризФОтч:^
КНД:^
НаимФОтч:^
ВерФОтч:^
ПериодВерОтч:^
ПризВидДок:^
.{?internal; (trim(PrizVidDok) = '3')
НомерКорр:^
.}
ПризПериодОтч:^
.{?internal; (trim(ПризПериодОтч) <> '0')and(trim(VKakoiOtch) <> '3')
НомерПериодОтч:^
.}
ГодПериодОтч:^
ДокПредст:^
ОКЕИ:^
КолПокФОтч:^
###
! Содержание формы
!Таблица9.1
.{?internal; (trim(TuneDocPerdst) = '220') or (trim(TuneDocPerdst) = '210')
П000010000100:10
.}
.{?internal; (trim(TuneDocPerdst) = '112')
П000010000100:40
.}
.{?internal; (trim(TuneDocPerdst) = '120')
П000010000100:30
.}
.{?internal; (trim(TuneDocPerdst) = '331') or (trim(TuneDocPerdst) = '332') or (trim(TuneDocPerdst) = '333')
П000010000100:
.}
П000010001000:^
###
!Таблица9.2
П000010002000:^
П000010003000:^
П000010004000:^
П000010005000:^
###
! 5
П000010002000:^
П000010003000:^
П000010004000:^
П000010005000:^
###
!9
.{?internal; (trim(VKakoiOtch) = '3')
!Таблица10
П000020010003:^
П000020010004:^
П000020010005:^
П000020010006:^
!5
П000020011003:^
П000020011004:^
П000020011005:^
П000020011006:^
!10
П000020012003:^
П000020012004:^
П000020012005:^
П000020012006:^
!15
П000020013003:^
П000020013004:^
П000020013005:^
П000020013006:^
!20
П000020014003:^
П000020014004:^
П000020014005:^
П000020014006:^
!25
П000020020003:^
П000020020004:^
П000020020005:^
П000020020006:^
!30
П000020021003:^
П000020021004:^
П000020021005:^
П000020021006:^
!35
П000020022003:^
П000020022004:^
П000020022005:^
П000020022006:^
!40
П000020023003:^
П000020023004:^
П000020023005:^
П000020023006:^
!45
П000020024003:^
П000020024004:^
П000020024005:^
П000020024006:^
!50
П000020030003:^
П000020030004:^
П000020030005:^
П000020030006:^
!55
П000020031003:^
П000020031004:^
П000020031005:^
П000020031006:^
!60
П000020032003:^
П000020032004:^
П000020032005:^
П000020032006:^
!65
П000020033003:^
П000020033004:^
П000020033005:^
П000020033006:^
!70
П000020034003:^
П000020034004:^
П000020034005:^
П000020034006:^
!75
П000020040004:^
П000020040005:^
П000020040006:^
!79
П000020041004:^
П000020041005:^
П000020041006:^
!83
П000020042004:^
П000020042005:^
П000020042006:^
!87
П000020043004:^
П000020043005:^
П000020043006:^
!91
П000020044004:^
П000020044005:^
П000020044006:^
.}
.{?internal; (trim(VKakoiOtch) = '4')
!9
!Таблица10
П000020010003:^
П000020010004:^
П000020010005:^
П000020010006:^
П000020010007:^
!5
П000020011003:^
П000020011004:^
П000020011005:^
П000020011006:^
П000020011007:^
!10
П000020012003:^
П000020012004:^
П000020012005:^
П000020012006:^
П000020012007:^
!15
П000020013003:^
П000020013004:^
П000020013005:^
П000020013006:^
П000020013007:^
!20
П000020014003:^
П000020014004:^
П000020014005:^
П000020014006:^
П000020014007:^
!25
П000020020003:^
П000020020004:^
П000020020005:^
П000020020006:^
П000020020007:^
!30
П000020021003:^
П000020021004:^
П000020021005:^
П000020021006:^
П000020021007:^
!35
П000020022003:^
П000020022004:^
П000020022005:^
П000020022006:^
П000020022007:^
!40
П000020023003:^
П000020023004:^
П000020023005:^
П000020023006:^
П000020023007:^
!45
П000020024003:^
П000020024004:^
П000020024005:^
П000020024006:^
П000020024007:^
!50
П000020030003:^
П000020030004:^
П000020030005:^
П000020030006:^
П000020030007:^
!55
П000020031003:^
П000020031004:^
П000020031005:^
П000020031006:^
П000020031007:^
!60
П000020032003:^
П000020032004:^
П000020032005:^
П000020032006:^
П000020032007:^
!65
П000020033003:^
П000020033004:^
П000020033005:^
П000020033006:^
П000020033007:^
!70
П000020034003:^
П000020034004:^
П000020034005:^
П000020034006:^
П000020034007:^
!75
П000020040004:^
П000020040005:^
П000020040006:^
П000020040007:^
!79
П000020041004:^
П000020041005:^
П000020041006:^
П000020041007:^
!83
П000020042004:^
П000020042005:^
П000020042006:^
П000020042007:^
!87
П000020043004:^
П000020043005:^
П000020043006:^
П000020043007:^
!91
П000020044004:^
П000020044005:^
П000020044006:^
П000020044007:^
.}
###
!Таблица11  95
П000210001003:^
П000210001004:^
П000210001005:^
П000210001006:^
!4
П000210001103:^
П000210001104:^
П000210001105:^
П000210001106:^
!8
П000210001203:^
П000210001204:^
П000210001205:^
П000210001206:^
!12
П000210001303:^
П000210001304:^
П000210001305:^
П000210001306:^
!16
П000210001403:^
П000210001404:^
П000210001405:^
П000210001406:^
!20
П000210001503:^
П000210001504:^
!22
П000210001603:^
П000210001604:^
!24
П000210001703:^
П000210001704:^
!26
П000210001803:^
П000210001804:^
!28
П000210001903:^
П000210001904:^
###
.{?internal; (trim(VKakoiOtch) = '3')
!Таблица12  30
П000220010004:^
П000220010005:^
П000220010006:^
П000220010007:^
П000220010010:^
!5
П000220010104:^
П000220010105:^
П000220010106:^
П000220010107:^
П000220010108:^
П000220010109:^
П000220010110:^
!7
П000220010204:^
П000220010205:^
П000220010207:^
П000220010209:^
П000220010210:^
!5
П000220020004:^
П000220020005:^
П000220020007:^
П000220020010:^
!4
П000220020104:^
П000220020105:^
П000220020107:^
П000220020109:^
П000220020110:^
!5
П000220020204:^
П000220020205:^
П000220020207:^
П000220020209:^
П000220020210:^
!5
П000220021004:^
П000220021005:^
П000220021006:^
П000220021007:^
П000220021010:^
!5
П000220021104:^
П000220021105:^
П000220021106:^
П000220021107:^
П000220021108:^
П000220021109:^
П000220021110:^
!7
П000220021204:^
П000220021205:^
П000220021207:^
П000220021209:^
П000220021210:^
!5
П000220022004:^
П000220022005:^
П000220022006:^
П000220022007:^
!4
П000220022104:^
П000220022105:^
П000220022106:^
П000220022107:^
П000220022108:^
П000220022109:^
!6
П000220022204:^
П000220022205:^
П000220022207:^
П000220022209:^
!4
П000220030004:^
П000220030005:^
П000220030006:^
П000220030007:^
П000220030010:^
!5
П000220030104:^
П000220030105:^
П000220030106:^
П000220030107:^
П000220030108:^
П000220030109:^
П000220030110:^
!7
П000220030204:^
П000220030205:^
П000220030207:^
П000220030209:^
П000220030210:^
!5
П000220040004:^
П000220040005:^
П000220040007:^
П000220040010:^
!4
П000220040104:^
П000220040105:^
П000220040107:^
П000220040109:^
П000220040110:^
!5
П000220040204:^
П000220040205:^
П000220040207:^
П000220040209:^
П000220040210:^
!102
.}
.{?internal; (trim(VKakoiOtch) = '4')
!Таблица12  30
П000220010004:^
П000220010005:^
П000220010006:^
П000220010007:^
П000220010010:^
!5
П000220010104:^
П000220010105:^
П000220010106:^
П000220010107:^
П000220010108:^
П000220010109:^
П000220010110:^
!12
П000220010204:^
П000220010205:^
П000220010206:^
П000220010207:^
П000220010208:^
П000220010209:^
П000220010210:^
!19
П000220010304:^
П000220010305:^
П000220010306:0.000
П000220010307:^
П000220010308:0.000
П000220010309:^
П000220010310:^
!26
П000220020004:^
П000220020005:^
П000220020007:^
П000220020010:^
!30
П000220020104:^
П000220020105:^
П000220020107:^
П000220020109:^
П000220020110:^
!35
П000220020204:^
П000220020205:^
П000220020207:^
П000220020209:^
П000220020210:^
!40
П000220020304:^
П000220020305:^
П000220020307:^
П000220020309:^
П000220020310:^
!45
П000220021004:^
П000220021005:^
П000220021006:^
П000220021007:^
П000220021010:^
!50
П000220021104:^
П000220021105:^
П000220021106:^
П000220021107:^
П000220021108:^
П000220021109:^
П000220021110:^
!57
П000220021204:^
П000220021205:^
П000220021206:^
П000220021207:^
П000220021208:^
П000220021209:^
П000220021210:^
!64
П000220021304:^
П000220021305:^
П000220021306:0.000
П000220021307:^
П000220021308:0.000
П000220021309:^
П000220021310:^
!71
П000220022004:^
П000220022005:^
П000220022006:^
П000220022007:^
!75
П000220022104:^
П000220022105:^
П000220022106:^
П000220022107:^
П000220022108:^
П000220022109:^
!81
П000220022204:^
П000220022205:^
П000220022206:^
П000220022207:^
П000220022208:^
П000220022209:^
!87
П000220022304:^
П000220022305:^
П000220022306:0.000
П000220022307:^
П000220022308:0.000
П000220022309:^
!93
!
П000220030004:^
П000220030005:^
П000220030007:^
П000220030010:^
!97
П000220030104:^
П000220030105:^
П000220030107:^
П000220030109:^
П000220030110:^
!102
П000220030204:^
П000220030205:^
П000220030207:^
П000220030209:^
П000220030210:^
!107
П000220030304:^
П000220030305:^
П000220030307:^
П000220030309:^
П000220030310:^
!112
!
П000220031004:^
П000220031005:^
П000220031006:^
П000220031007:^
П000220031010:^
!117
П000220031104:^
П000220031105:^
П000220031106:^
П000220031107:^
П000220031108:^
П000220031109:^
П000220031110:^
!124
П000220031204:^
П000220031205:^
П000220031206:^
П000220031207:^
П000220031208:^
П000220031209:^
П000220031210:^
!131
П000220031304:^
П000220031305:^
П000220031306:0.000
П000220031307:^
П000220031308:0.000
П000220031309:^
П000220031310:^
!138
!
П000220032004:^
П000220032005:^
П000220032006:^
П000220032007:^
!142
П000220032104:^
П000220032105:^
П000220032106:^
П000220032107:^
П000220032108:^
П000220032109:^
!148
П000220032204:^
П000220032205:^
П000220032206:^
П000220032207:^
П000220032208:^
П000220032209:^
!154
П000220032304:^
П000220032305:^
П000220032306:0.000
П000220032307:^
П000220032308:0.000
П000220032309:^
!160
!
П000220040004:^
П000220040005:^
П000220040006:^
П000220040007:^
П000220040010:^
!165
П000220040104:^
П000220040105:^
П000220040106:^
П000220040107:^
П000220040108:^
П000220040109:^
П000220040110:^
!172
П000220040204:^
П000220040205:^
П000220040206:^
П000220040207:^
П000220040208:^
П000220040209:^
П000220040210:^
!179
П000220040304:^
П000220040305:^
П000220040306:0.000
П000220040307:^
П000220040308:0.000
П000220040309:^
П000220040310:^
!186
!
П000220050004:^
П000220050005:^
П000220050007:^
П000220050010:^
!190
П000220050104:^
П000220050105:^
П000220050107:^
П000220050109:^
П000220050110:^
!195
П000220050204:^
П000220050205:^
П000220050207:^
П000220050209:^
П000220050210:^
!200
П000220050304:^
П000220050305:^
П000220050307:^
П000220050309:^
П000220050310:^
.}
###
!Таблица13 205
П000230001003:0
П000230001004:0
П000230001103:0
П000230001104:0
П000230002003:0
П000230002004:0
П000230002103:0
П000230002104:0
П000230003003:0
П000230003004:0
П000230003103:0
П000230003104:0
П000230004003:0
П000230004004:0
П000230004103:0
П000230004104:0
###
.{?internal; (trim(VKakoiOtch) = '4')
!Таблица14  16
П000240001004:^
П000240001005:^
П000240001006:^
!3
П000240002004:^
П000240002005:^
П000240002006:^
!6
П000240003004:^
П000240003005:^
П000240003006:^
!9
П000240004004:^
П000240004005:^
П000240004006:^
!12
П000240005004:^
П000240005005:^
П000240005006:^
!15
П000240006004:^
П000240006005:^
П000240006006:^
!18
П000240007004:^
П000240007005:^
П000240007006:^
!21
П000240008004:^
П000240008005:^
П000240008006:^
!24
###
.}
^
===

.endForm