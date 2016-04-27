/*
  ╔═════════════════════════════════════════════════════════════════════╗
  ║      Н Т О  "T O P   S O F T",  А О   "Н О В Ы Й   А Т Л А Н Т"     ║
  ║      Проект    : ГАЛАКТИКА  (с) 2000                                ║
  ║      Система   : Управление персоналом                              ║
  ║      Версия    : 5.8, 7.1                                           ║
  ║      Разработал: Антонович А.К.     09/10/2002                      ║
  ║      Назначение: Отчет: О численности, составе и обучении кадров    ║
  ║      Изменения :                                                    ║
  ╚═════════════════════════════════════════════════════════════════════╝
*/

#doc
Отчет о численности, составе и обучении кадров
#end
.form F6TN
.hide
.fields
Year

OrgName
ParentOrgName
ОрганУпр
ФормаСобств
Adres

ОКПО
ОКЮЛП
СООУ
ОКОНX
ОКЭД
СОАТО
ОКФС
ОКОПФ

!!! Filds added by Tangar
AllNumPerson_3
AllNumPerson_4
AllNumPerson_5
AllNumPerson_6
AllNumPerson_7
AllNumPerson_8
!-------------------------------
Edu_High_3
Edu_High_4
Edu_High_5
Edu_High_6
Edu_High_7
Edu_High_8
!-------------------------------
Edu_MidSpecial_3
Edu_MidSpecial_4
Edu_MidSpecial_5
Edu_MidSpecial_6
Edu_MidSpecial_7
Edu_MidSpecial_8
!-------------------------------
Edu_Mid_3
Edu_Mid_4
Edu_Mid_5
Edu_Mid_6
Edu_Mid_7
Edu_Mid_8
!-------------------------------
Edu_Base_3
Edu_Base_4
Edu_Base_5
Edu_Base_6
Edu_Base_7
Edu_Base_8
!----  After table 1  ----------
ChildVacations
PensOnWork
CoDoctorofScience
KidsOnWork
CoCandidateofScience
PersPensCount
PersPensCount_WorkAge
!----  Ages --------------------
Age_Before16_5:word
Age_Before16_6:word
Age_Before16_7:word
Age_Before16_8:word
!-------------------------------
Age_16_24_3:word
Age_16_24_4:word
Age_16_24_5:word
Age_16_24_6:word
Age_16_24_7:word
Age_16_24_8:word
!-------------------------------
Age_25_29_3:word
Age_25_29_4:word
Age_25_29_5:word
Age_25_29_6:word
Age_25_29_7:word
Age_25_29_8:word
!-------------------------------
Age_30_3:word
Age_30_4:word
Age_30_5:word
Age_30_6:word
Age_30_7:word
Age_30_8:word
!-------------------------------
Age_31_3:word
Age_31_4:word
Age_31_5:word
Age_31_6:word
Age_31_7:word
Age_31_8:word
!-------------------------------
Age_32_39_3:word
Age_32_39_4:word
Age_32_39_5:word
Age_32_39_6:word
Age_32_39_7:word
Age_32_39_8:word
!-------------------------------
Age_40_49_3:word
Age_40_49_4:word
Age_40_49_5:word
Age_40_49_6:word
Age_40_49_7:word
Age_40_49_8:word
!-------------------------------
Age_50_54_3:word
Age_50_54_4:word
Age_50_54_5:word
Age_50_54_6:word
Age_50_54_7:word
Age_50_54_8:word
!-------------------------------
Age_Older_55_3:word
Age_Older_55_4:word
Age_Older_55_5:word
Age_Older_55_6:word
Age_Older_55_7:word
Age_Older_55_8:word
!-------------------------------
Wman_55_older_3:word
Wman_55_older_4:word
Wman_55_older_5:word
Wman_55_older_6:word
Wman_55_older_7:word
!-------------------------------
Man_60_older_3:word
Man_60_older_4:word
Man_60_older_5:word
Man_60_older_6:word
Man_60_older_7:word
!-------------------------------
WmanAtAll_3:word
WmanAtAll_4:word
WmanAtAll_5:word
WmanAtAll_6:word
WmanAtAll_7:word
!-------------------------------
!---Таблица 2   ----------------
Item_22_1:word Item_22_2:word
Item_23_1:word Item_23_2:word
Item_24_1:word Item_24_2:word
Item_26_1:word Item_26_2:word
Item_27_1:word Item_27_2:word
Item_28_1:word Item_28_2:word
Item_29_1:word Item_29_2:word
Item_30_1:word Item_30_2:word
Item_31_1:word Item_31_2:word
Item_32_1:word Item_32_2:word
Item_33_1:word Item_33_2:word
Item_34_1:word Item_34_2:word
Item_35_1:word Item_35_2:word
Item_36_1:word Item_36_2:word
Item_37_1:word Item_37_2:word
Item_38_1:word Item_38_2:word
!-------- таблица 3 ----------
HighKval_3:word
HighKval_4:word
HighKval_5:word
HighKval_6:word
HighKval_7:word
HighKval_8:word

Stager_3:word
Stager_4:word
Stager_5:word
Stager_6:word
Stager_7:word
Stager_8:word

LernInFirst_3:word
LernInFirst_4:word
LernInFirst_5:word
LernInFirst_6:word
LernInFirst_7:word
LernInFirst_8:word

SmegProf_3:word
SmegProf_4:word
SmegProf_5:word
SmegProf_6:word
SmegProf_7:word
SmegProf_8:word

Perepodgotov_3:word
Perepodgotov_4:word
Perepodgotov_5:word
Perepodgotov_6:word
Perepodgotov_7:word
Perepodgotov_8:word

OutThereHighKval_3:word
OutThereHighKval_4:word
OutThereHighKval_5:word
OutThereHighKval_6:word
OutThereHighKval_7:word
OutThereHighKval_8:word

OutThereStager_3:word
OutThereStager_4:word
OutThereStager_5:word
OutThereStager_6:word
OutThereStager_7:word
OutThereStager_8:word

OutProf_3:word
OutProf_4:word
OutProf_5:word
OutProf_6:word
OutProf_7:word
OutProf_8:word
!!!!!!!!!!!!!!!!!!!!!!!!!
AppBoss FioBoss
.endfields
Year                         ^

OrgName                      ^
ParentOrgName                ^
ОрганУпр                     ^
ФормаСобств                  ^
Adres                        ^

ОКПО                         ^
ОКЮЛП                        ^
СООУ                         ^
ОКОНX                        ^
ОКЭД                         ^
СОАТО                        ^
ОКФС                         ^
ОКОПФ                        ^

!!! Filds added by Tangar
AllNumPerson_3                 ^
AllNumPerson_4                 ^
AllNumPerson_5                 ^
AllNumPerson_6                 ^
AllNumPerson_7                 ^
AllNumPerson_8                 ^
!-------------------------------
Edu_High_3                     ^
Edu_High_4                     ^
Edu_High_5                     ^
Edu_High_6                     ^
Edu_High_7                     ^
Edu_High_8                     ^
!-------------------------------
Edu_MidSpecial_3               ^
Edu_MidSpecial_4               ^
Edu_MidSpecial_5               ^
Edu_MidSpecial_6               ^
Edu_MidSpecial_7               ^
Edu_MidSpecial_8               ^
!-------------------------------
Edu_Mid_3                      ^
Edu_Mid_4                      ^
Edu_Mid_5                      ^
Edu_Mid_6                      ^
Edu_Mid_7                      ^
Edu_Mid_8                      ^
!-------------------------------
Edu_Base_3                     ^
Edu_Base_4                     ^
Edu_Base_5                     ^
Edu_Base_6                     ^
Edu_Base_7                     ^
Edu_Base_8                     ^
!----  After table 1  ----------
ChildVacations                 ^
PensOnWork                     ^
CoDoctorofScience              ^
KidsOnWork                     ^
CoCandidateofScience           ^
PersPensCount                  ^
PersPensCount_WorkAge          ^
!-------------------------------
Age_Before16_5                 ^
Age_Before16_6                 ^
Age_Before16_7                 ^
Age_Before16_8                 ^
!-------------------------------
Age_16_24_3                    ^
Age_16_24_4                    ^
Age_16_24_5                    ^
Age_16_24_6                    ^
Age_16_24_7                    ^
Age_16_24_8                    ^
!-------------------------------
Age_25_29_3                    ^
Age_25_29_4                    ^
Age_25_29_5                    ^
Age_25_29_6                    ^
Age_25_29_7                    ^
Age_25_29_8                    ^
!-------------------------------
Age_30_3                       ^
Age_30_4                       ^
Age_30_5                       ^
Age_30_6                       ^
Age_30_7                       ^
Age_30_8                       ^
!-------------------------------
Age_31_3                       ^
Age_31_4                       ^
Age_31_5                       ^
Age_31_6                       ^
Age_31_7                       ^
Age_31_8                       ^
!-------------------------------
Age_32_39_3                    ^
Age_32_39_4                    ^
Age_32_39_5                    ^
Age_32_39_6                    ^
Age_32_39_7                    ^
Age_32_39_8                    ^
!-------------------------------
Age_40_49_3                    ^
Age_40_49_4                    ^
Age_40_49_5                    ^
Age_40_49_6                    ^
Age_40_49_7                    ^
Age_40_49_8                    ^
!-------------------------------
Age_50_54_3                    ^
Age_50_54_4                    ^
Age_50_54_5                    ^
Age_50_54_6                    ^
Age_50_54_7                    ^
Age_50_54_8                    ^
!-------------------------------
Age_Older_55_3                 ^
Age_Older_55_4                 ^
Age_Older_55_5                 ^
Age_Older_55_6                 ^
Age_Older_55_7                 ^
Age_Older_55_8                 ^
!-------------------------------
Wman_55_older_3                ^
Wman_55_older_4                ^
Wman_55_older_5                ^
Wman_55_older_6                ^
Wman_55_older_7                ^
!-------------------------------
Man_60_older_3                 ^
Man_60_older_4                 ^
Man_60_older_5                 ^
Man_60_older_6                 ^
Man_60_older_7                 ^
!-------------------------------
WmanAtAll_3                    ^
WmanAtAll_4                    ^
WmanAtAll_5                    ^
WmanAtAll_6                    ^
WmanAtAll_7                    ^
!-------------------------------

!---Таблица 2   ----------------
Item_22_1 Item_22_2           ^^
Item_23_1 Item_23_2           ^^
Item_24_1 Item_24_2           ^^
Item_26_1 Item_26_2           ^^
Item_27_1 Item_27_2           ^^
Item_28_1 Item_28_2           ^^
Item_29_1 Item_29_2           ^^
Item_30_1 Item_30_2           ^^
Item_31_1 Item_31_2           ^^
Item_32_1 Item_32_2           ^^
Item_33_1 Item_33_2           ^^
Item_34_1 Item_34_2           ^^
Item_35_1 Item_35_2           ^^
Item_36_1 Item_36_2           ^^
Item_37_1 Item_37_2           ^^
Item_38_1 Item_38_2           ^^
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
HighKval_3                     ^
HighKval_4                     ^
HighKval_5                     ^
HighKval_6                     ^
HighKval_7                     ^
HighKval_8                     ^

Stager_3                       ^
Stager_4                       ^
Stager_5                       ^
Stager_6                       ^
Stager_7                       ^
Stager_8                       ^

LernInFirst_3                  ^
LernInFirst_4                  ^
LernInFirst_5                  ^
LernInFirst_6                  ^
LernInFirst_7                  ^
LernInFirst_8                  ^

SmegProf_3                      ^
SmegProf_4                      ^
SmegProf_5                      ^
SmegProf_6                      ^
SmegProf_7                      ^
SmegProf_8                      ^

Perepodgotov_3                   ^
Perepodgotov_4                   ^
Perepodgotov_5                   ^
Perepodgotov_6                   ^
Perepodgotov_7                   ^
Perepodgotov_8                   ^

OutThereHighKval_3               ^
OutThereHighKval_4               ^
OutThereHighKval_5               ^
OutThereHighKval_6               ^
OutThereHighKval_7               ^
OutThereHighKval_8               ^

OutThereStager_3                  ^
OutThereStager_4                  ^
OutThereStager_5                  ^
OutThereStager_6                  ^
OutThereStager_7                  ^
OutThereStager_8                  ^

OutProf_3                         ^
OutProf_4                         ^
OutProf_5                         ^
OutProf_6                         ^
OutProf_7                         ^
OutProf_8                         ^
!--------------------------

AppBoss FioBoss              ^ ^
.endform