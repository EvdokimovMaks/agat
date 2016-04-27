//******************************************************************************
//                                                      (с) корпорация Галактика
// Галактика 7.12 - Управление персоналом
// Отчет: О численности, составе и обучении кадров (от 29.07.2004)
//******************************************************************************

#doc
Отчет о численности, составе и обучении кадров (от 29.07.2004)
#end
.form Form6T_2004_New
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
ИНН_УНП
Признак_местности
!--------------------------------------------------------
AllNumPerson_All
AllNumPerson_3
AllNumPerson_4
AllNumPerson_5
AllNumPerson_6
AllNumPerson_7
!-------------------------------
Edu_High_All
Edu_High_3
Edu_High_4
Edu_High_5
Edu_High_6
Edu_High_7
!-------------------------------
Edu_MidSpecial_All
Edu_MidSpecial_3
Edu_MidSpecial_4
Edu_MidSpecial_5
Edu_MidSpecial_6
Edu_MidSpecial_7
!-------------------------------
ProfTechnikEdu_All
ProfTechnikEdu_3
ProfTechnikEdu_4
ProfTechnikEdu_5
ProfTechnikEdu_6
ProfTechnikEdu_7
!-------------------------------
Edu_Mid_All
Edu_Mid_3
Edu_Mid_4
Edu_Mid_5
Edu_Mid_6
Edu_Mid_7
!-------------------------------
Edu_Base_All
Edu_Base_3
Edu_Base_4
Edu_Base_5
Edu_Base_6
Edu_Base_7
!-------------------------------
Age_Before16_All:word
Age_Before16_4:word
Age_Before16_5:word
Age_Before16_6:word
Age_Before16_7:word
!------------------------------
Age_16_17_All:word
Age_16_17_4:word
Age_16_17_5:word
Age_16_17_6:word
Age_16_17_7:word
!------------------------------
Age_18_24_All:word
Age_18_24_3:word
Age_18_24_4:word
Age_18_24_5:word
Age_18_24_6:word
Age_18_24_7:word
!------------------------------
Age_25_29_All:word
Age_25_29_3:word
Age_25_29_4:word
Age_25_29_5:word
Age_25_29_6:word
Age_25_29_7:word
!------------------------------
Age_30_All:word
Age_30_3:word
Age_30_4:word
Age_30_5:word
Age_30_6:word
Age_30_7:word
!------------------------------
Age_31_All:word
Age_31_3:word
Age_31_4:word
Age_31_5:word
Age_31_6:word
Age_31_7:word
!------------------------------
Age_32_39_All:word
Age_32_39_3:word
Age_32_39_4:word
Age_32_39_5:word
Age_32_39_6:word
Age_32_39_7:word
!------------------------------
Age_40_49_All:word
Age_40_49_3:word
Age_40_49_4:word
Age_40_49_5:word
Age_40_49_6:word
Age_40_49_7:word
!------------------------------
Age_50_54_All:word
Age_50_54_3:word
Age_50_54_4:word
Age_50_54_5:word
Age_50_54_6:word
Age_50_54_7:word
!------------------------------
Age_55_59_All:word
Age_55_59_3:word
Age_55_59_4:word
Age_55_59_5:word
Age_55_59_6:word
Age_55_59_7:word
!------------------------------
Age_Older_60_All:word
Age_Older_60_3:word
Age_Older_60_4:word
Age_Older_60_5:word
Age_Older_60_6:word
Age_Older_60_7:word
!------------------------------
WmanAtAll_All:word
WmanAtAll_3:word
WmanAtAll_4:word
WmanAtAll_5:word
WmanAtAll_6:word
!-------------------------------
ChildVacations
MChildVacations
PensOnWork
KidsOnWork
GlavBux
Bux
!-------------------------------
!-------- таблица 2 ----------
SpecCnt_21_1:word  SpecCnt_21_2:word
SpecCnt_22_1:word  SpecCnt_22_2:word
SpecCnt_23_1:word  SpecCnt_23_2:word
SpecCnt_24_1:word  SpecCnt_24_2:word
SpecCnt_25_1:word  SpecCnt_25_2:word
SpecCnt_26_1:word  SpecCnt_26_2:word
SpecCnt_27_1:word  SpecCnt_27_2:word
SpecCnt_28_1:word  SpecCnt_28_2:word
SpecCnt_29_1:word  SpecCnt_29_2:word
SpecCnt_30_1:word  SpecCnt_30_2:word
SpecCnt_31_1:word  SpecCnt_31_2:word
SpecCnt_32_1:word  SpecCnt_32_2:word

SpecCnt_21_3:word  SpecCnt_21_4:word
SpecCnt_22_3:word  SpecCnt_22_4:word
SpecCnt_23_3:word  SpecCnt_23_4:word
SpecCnt_24_3:word  SpecCnt_24_4:word
SpecCnt_25_3:word  SpecCnt_25_4:word
SpecCnt_26_3:word  SpecCnt_26_4:word
SpecCnt_27_3:word  SpecCnt_27_4:word
SpecCnt_28_3:word  SpecCnt_28_4:word
SpecCnt_29_3:word  SpecCnt_29_4:word
SpecCnt_30_3:word  SpecCnt_30_4:word
SpecCnt_31_3:word  SpecCnt_31_4:word
SpecCnt_32_3:word  SpecCnt_32_4:word

CandidateOfScience: word
DoctorofScience   : word
AddChargeCandidat : word
AddChargeDoctor   : word
SumCandidat       : double
SumDoctor         : double
!-------- таблица 3 ----------
HighKval_3:word
HighKval_4:word
HighKval_5:word
HighKval_6:word
HighKval_7:word

Stager_3:word
Stager_4:word
Stager_5:word
Stager_6:word
Stager_7:word

LernInFirst_3:word
LernInFirst_4:word
LernInFirst_5:word
LernInFirst_6:word
LernInFirst_7:word

SmegProf_3:word
SmegProf_4:word
SmegProf_5:word
SmegProf_6:word
SmegProf_7:word

Perepodgotov_3:word
Perepodgotov_4:word
Perepodgotov_5:word
Perepodgotov_6:word
Perepodgotov_7:word

PerepodgotovIzNux_3:word
PerepodgotovIzNux_4:word
PerepodgotovIzNux_5:word
PerepodgotovIzNux_6:word
PerepodgotovIzNux_7:word

Liberate_3: word
Liberate_4: word
Liberate_5: word
Liberate_6: word
Liberate_7: word

Woman_3: word
Woman_4: word
Woman_5: word
Woman_6: word

OutThereHighKval_3:word
OutThereHighKval_4:word
OutThereHighKval_5:word
OutThereHighKval_6:word
OutThereHighKval_7:word

OutThereStager_3:word
OutThereStager_4:word
OutThereStager_5:word
OutThereStager_6:word
OutThereStager_7:word

OutProf_3:word
OutProf_4:word
OutProf_5:word
OutProf_6:word
OutProf_7:word

BossFio
FIO_isp
isp_posittion
isp_fone
FormDate
.endfields
^^^^^^^^^^^^^^^^

AllNumPerson_All                 ^
AllNumPerson_3                 ^
AllNumPerson_4                 ^
AllNumPerson_5                 ^
AllNumPerson_6                 ^
AllNumPerson_7                 ^
!-------------------------------
Edu_High_All                     ^
Edu_High_3                     ^
Edu_High_4                     ^
Edu_High_5                     ^
Edu_High_6                     ^
Edu_High_7                     ^
!-------------------------------
Edu_MidSpecial_All               ^
Edu_MidSpecial_3               ^
Edu_MidSpecial_4               ^
Edu_MidSpecial_5               ^
Edu_MidSpecial_6               ^
Edu_MidSpecial_7               ^
!-------------------------------
ProfTechnikEdu_All               ^
ProfTechnikEdu_3               ^
ProfTechnikEdu_4               ^
ProfTechnikEdu_5               ^
ProfTechnikEdu_6               ^
ProfTechnikEdu_7               ^
!-------------------------------
Edu_Mid_All                      ^
Edu_Mid_3                      ^
Edu_Mid_4                      ^
Edu_Mid_5                      ^
Edu_Mid_6                      ^
Edu_Mid_7                      ^
!-------------------------------
Edu_Base_All                     ^
Edu_Base_3                     ^
Edu_Base_4                     ^
Edu_Base_5                     ^
Edu_Base_6                     ^
Edu_Base_7                     ^
!-------------------------------
Age_Before16_All                 ^
Age_Before16_5                 ^
Age_Before16_6                 ^
Age_Before16_7                 ^
!-------------------------------
Age_16_17_All                    ^
Age_16_17_3                    ^
Age_16_17_4                    ^
Age_16_17_5                    ^
Age_16_17_6                    ^
Age_16_17_7                    ^
!-------------------------------
Age_18_24_All                    ^
Age_18_24_3                    ^
Age_18_24_4                    ^
Age_18_24_5                    ^
Age_18_24_6                    ^
Age_18_24_7                    ^
!-------------------------------
Age_25_29_All                    ^
Age_25_29_3                    ^
Age_25_29_4                    ^
Age_25_29_5                    ^
Age_25_29_6                    ^
Age_25_29_7                    ^
!-------------------------------
Age_30_All                       ^
Age_30_3                       ^
Age_30_4                       ^
Age_30_5                       ^
Age_30_6                       ^
Age_30_7                       ^
!-------------------------------
Age_31_All                       ^
Age_31_3                       ^
Age_31_4                       ^
Age_31_5                       ^
Age_31_6                       ^
Age_31_7                       ^
!-------------------------------
Age_32_39_All                    ^
Age_32_39_3                    ^
Age_32_39_4                    ^
Age_32_39_5                    ^
Age_32_39_6                    ^
Age_32_39_7                    ^
!-------------------------------
Age_40_49_All                    ^
Age_40_49_3                    ^
Age_40_49_4                    ^
Age_40_49_5                    ^
Age_40_49_6                    ^
Age_40_49_7                    ^
!-------------------------------
Age_50_54_All                    ^
Age_50_54_3                    ^
Age_50_54_4                    ^
Age_50_54_5                    ^
Age_50_54_6                    ^
Age_50_54_7                    ^
!-------------------------------
Age_55_59_All                    ^
Age_55_59_3                    ^
Age_55_59_4                    ^
Age_55_59_5                    ^
Age_55_59_6                    ^
Age_55_59_7                    ^
!-------------------------------
Age_Older_60_All                 ^
Age_Older_60_3                 ^
Age_Older_60_4                 ^
Age_Older_60_5                 ^
Age_Older_60_6                 ^
Age_Older_60_7                 ^
!-------------------------------
WmanAtAll_All                    ^
WmanAtAll_3                    ^
WmanAtAll_4                    ^
WmanAtAll_5                    ^
WmanAtAll_6                    ^
!-------------------------------
ChildVacations                 ^
MChildVacations                ^
PensOnWork                     ^
KidsOnWork                     ^
GlavBux           ^
Bux               ^
!-------------------------------
! table 2
SpecCnt_21_1:^  SpecCnt_21_2:^
SpecCnt_22_1:^  SpecCnt_22_2:^
SpecCnt_23_1:^  SpecCnt_23_2:^
SpecCnt_24_1:^  SpecCnt_24_2:^
SpecCnt_25_1:^  SpecCnt_25_2:^
SpecCnt_26_1:^  SpecCnt_26_2:^
SpecCnt_27_1:^  SpecCnt_27_2:^
SpecCnt_28_1:^  SpecCnt_28_2:^
SpecCnt_29_1:^  SpecCnt_29_2:^
SpecCnt_30_1:^  SpecCnt_30_2:^
SpecCnt_31_1:^  SpecCnt_31_2:^
SpecCnt_32_1:^  SpecCnt_32_2:^

SpecCnt_21_3:^  SpecCnt_21_4:^
SpecCnt_22_3:^  SpecCnt_22_4:^
SpecCnt_23_3:^  SpecCnt_23_4:^
SpecCnt_24_3:^  SpecCnt_24_4:^
SpecCnt_25_3:^  SpecCnt_25_4:^
SpecCnt_26_3:^  SpecCnt_26_4:^
SpecCnt_27_3:^  SpecCnt_27_4:^
SpecCnt_28_3:^  SpecCnt_28_4:^
SpecCnt_29_3:^  SpecCnt_29_4:^
SpecCnt_30_3:^  SpecCnt_30_4:^
SpecCnt_31_3:^  SpecCnt_31_4:^
SpecCnt_32_3:^  SpecCnt_32_4:^

CandidateOfScience: ^
DoctorofScience   : ^
AddChargeCandidat : ^
AddChargeDoctor   : ^
SumCandidat       : ^
SumDoctor         : ^
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
HighKval_3          ^
HighKval_4          ^
HighKval_5          ^
HighKval_6          ^
HighKval_7          ^

Stager_3            ^
Stager_4            ^
Stager_5            ^
Stager_6            ^
Stager_7            ^

LernInFirst_3       ^
LernInFirst_4       ^
LernInFirst_5       ^
LernInFirst_6       ^
LernInFirst_7       ^

SmegProf_3          ^
SmegProf_4          ^
SmegProf_5          ^
SmegProf_6          ^
SmegProf_7          ^

Perepodgotov_3      ^
Perepodgotov_4      ^
Perepodgotov_5      ^
Perepodgotov_6      ^
Perepodgotov_7      ^

PerepodgotovIzNux_3      ^
PerepodgotovIzNux_4      ^
PerepodgotovIzNux_5      ^
PerepodgotovIzNux_6      ^
PerepodgotovIzNux_7      ^

Liberate_3          ^
Liberate_4          ^
Liberate_5          ^
Liberate_6          ^
Liberate_7          ^

Woman_3             ^
Woman_4             ^
Woman_5             ^
Woman_6             ^

OutThereHighKval_3  ^
OutThereHighKval_4  ^
OutThereHighKval_5  ^
OutThereHighKval_6  ^
OutThereHighKval_7  ^

OutThereStager_3    ^
OutThereStager_4    ^
OutThereStager_5    ^
OutThereStager_6    ^
OutThereStager_7    ^

OutProf_3           ^
OutProf_4           ^
OutProf_5           ^
OutProf_6           ^
OutProf_7           ^
!--------------------------
BossFio: ^
FIO_isp: ^
isp_posittion: ^
isp_fone: ^
FormDate: ^
.endform
