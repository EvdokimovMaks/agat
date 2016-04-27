/*
 ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
 º                     (c) 1994,2001 ª®à¯®à æ¨ï ƒ€‹€Š’ˆŠ€                    º
 º à®¥ªâ        : ƒ€‹€Š’ˆŠ€                                                 º
 º ‘¨áâ¥¬        : ‡ à ¡®â­ ï ¯« â                                           º
 º ‚¥àá¨ï        : 5.80                                                      º
 º  §­ ç¥­¨¥    : ˆ­¤¨¢¨¤ã «ì­ ï ª àâ®çª  ¯® ¥¤¨­®¬ã á®æ¨ «ì­®¬ã ­ «®£ã     º
 º â¢¥âáâ¢¥­­ë© : €­â®­®¢¨ç €.Š.                                            º
 º  à ¬¥âàë     : ­¥â                                                       º
 ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
*/

#doc
ˆ­¤¨¢¨¤ã «ì­ ï ª àâ®çª  ¯® ¥¤¨­®¬ã á®æ¨ «ì­®¬ã ­ «®£ã
#end
.set name 'IkSocNal'
.p 60
.DEFO LANDSCAPE
.hide
.fields
 YearOtchet
 FIO INN NOMLSH NATION
 PASP_SER PASP_NUM PASP_V
 SEX DATE_1 ADRESS_1
 POST DOGOV_VID
 DOGOV_NUM DOGOV_DATE
 INV SPRAV_SER SPRAV_NUM SPRAV_DATE
 mon1
 mon1_1 dat1_2  dat1_3  dat1_4  dat1_5  dat1_6  dat1_7  dat1_8  dat1_9 dat1_10 dat1_11 dat1_12
        dat1_13 dat1_14 dat1_15 dat1_16 dat1_17 dat1_18 dat1_19 dat1_20 dat1_21 dat1_22 dat1_23 dat1_24
        dat1_25 dat1_26 dat1_27 dat1_28 dat1_29 dat1_30 dat1_31 dat1_32 dat1_33
        dat1_34 dat1_35 dat1_36 dat1_37 dat1_38 dat1_39 dat1_40 dat1_41 dat1_42 dat1_43 dat1_44 dat1_45
        dat1_46
 mon2_1 dat2_2  dat2_3  dat2_4  dat2_5  dat2_6  dat2_7  dat2_8  dat2_9 dat2_10 dat2_11 dat2_12
        dat2_13 dat2_14 dat2_15 dat2_16 dat2_17 dat2_18 dat2_19 dat2_20 dat2_21 dat2_22 dat2_23 dat2_24
        dat2_25 dat2_26 dat2_27 dat2_28 dat2_29 dat2_30 dat2_31 dat2_32 dat2_33
        dat2_34 dat2_35 dat2_36 dat2_37 dat2_38 dat2_39 dat2_40 dat2_41 dat2_42 dat2_43 dat2_44 dat2_45
        dat2_46
 mon3_1 dat3_2  dat3_3  dat3_4  dat3_5  dat3_6  dat3_7  dat3_8  dat3_9 dat3_10 dat3_11 dat3_12
        dat3_13 dat3_14 dat3_15 dat3_16 dat3_17 dat3_18 dat3_19 dat3_20 dat3_21 dat3_22 dat3_23 dat3_24
        dat3_25 dat3_26 dat3_27 dat3_28 dat3_29 dat3_30 dat3_31 dat3_32 dat3_33
        dat3_34 dat3_35 dat3_36 dat3_37 dat3_38 dat3_39 dat3_40 dat3_41 dat3_42 dat3_43 dat3_44 dat3_45
        dat3_46
 mon4_1 dat4_2  dat4_3  dat4_4  dat4_5  dat4_6  dat4_7  dat4_8  dat4_9 dat4_10 dat4_11 dat4_12
        dat4_13 dat4_14 dat4_15 dat4_16 dat4_17 dat4_18 dat4_19 dat4_20 dat4_21 dat4_22 dat4_23 dat4_24
        dat4_25 dat4_26 dat4_27 dat4_28 dat4_29 dat4_30 dat4_31 dat4_32 dat4_33
        dat4_34 dat4_35 dat4_36 dat4_37 dat4_38 dat4_39 dat4_40 dat4_41 dat4_42 dat4_43 dat4_44 dat4_45
        dat4_46
.endfields

.{ Doc CheckEnter
YearOtchet : ^
 ”ˆ:   ^^^^^^^^^^^^^^
.{ Invalid CheckEnter
  ^^^^
.}
.{ Tab CheckEnter
 mon1  : ^
 mon1_1: ^  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^ ^^^ ^^^^^
 mon2_1: ^  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^ ^^^ ^^^^^
.{ Razbiv CheckEnter
 mon3_1: ^  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^ ^^^ ^^^^^
 mon4_1: ^  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^ ^^^ ^^^^^
.}
.}
.}

.endform

.set name 'CompositeForm'
.p 60
.DEFO LANDSCAPE
.hide
.fields
 YearOtchet
 Podrname
INN KPP
 mon1
 mon1_1 dat1_2  dat1_3  dat1_4  dat1_5  dat1_6  dat1_7  dat1_8  dat1_9 dat1_10 dat1_11 dat1_12
        dat1_13 dat1_14 dat1_15 dat1_16 dat1_17 dat1_18 dat1_19 dat1_20 dat1_21 dat1_22 dat1_23 dat1_24
        dat1_25 dat1_26 dat1_27 dat1_28 dat1_29 dat1_30
 mon2_1 dat2_2  dat2_3  dat2_4  dat2_5  dat2_6  dat2_7  dat2_8  dat2_9 dat2_10 dat2_11 dat2_12
        dat2_13 dat2_14 dat2_15 dat2_16 dat2_17 dat2_18 dat2_19 dat2_20 dat2_21 dat2_22 dat2_23 dat2_24
        dat2_25 dat2_26 dat2_27 dat2_28 dat2_29 dat2_30
.endfields
YearOtchet : ^
 ­ ¨¬¥­®¢ ­¨¥ ^
 ˆ ^ Š ^
.{ SKSocNal_Tab CheckEnter
 mon1  : ^
 mon1_1: ^  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 mon2_1: ^  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.{ SKSocNal_Razbiv CheckEnter
.}
.}
.endform

.set name 'IK_OPS'
.p 60
.DEFO LANDSCAPE
.hide
.fields
 YearOtchet
 FIO INN NOMLSH NATION
 PASP_SER PASP_NUM PASP_V
 SEX DATE_1 ADRESS_1
 POST DOGOV_VID
 DOGOV_NUM DOGOV_DATE
//--------R1
 mon1   R1dat1_2  R1dat1_3  R1dat1_4  R1dat1_5  R1dat1_6  R1dat1_7  R1dat1_8  R1dat1_9 R1dat1_10
        R1dat2_2  R1dat2_3  R1dat2_4  R1dat2_5  R1dat2_6  R1dat2_7  R1dat2_8  R1dat2_9 R1dat2_10
nomstr1 OPS_BD1dat5 OPS_BD1dat6 OPS_BD1dat7 OPS_BD1dat8 OPS_BD1dat9 OPS_BD1dat10
//--------R2
mon2        R2dat1_2  R2dat1_3  R2dat1_4  R2dat1_5  R2dat1_6  R2dat1_7  R2dat1_8  R2dat1_9 R2dat1_10
        R2dat2_2  R2dat2_3  R2dat2_4  R2dat2_5  R2dat2_6  R2dat2_7  R2dat2_8  R2dat2_9 R2dat2_10
nomstr2 OPS_BD2dat5 OPS_BD2dat6 OPS_BD2dat7 OPS_BD2dat8 OPS_BD2dat9 OPS_BD2dat10
//--------R3
mon3        R3dat1_2  R3dat1_3  R3dat1_4  R3dat1_5  R3dat1_6  R3dat1_7  R3dat1_8  R3dat1_9 R3dat1_10
        R3dat2_2  R3dat2_3  R3dat2_4  R3dat2_5  R3dat2_6  R3dat2_7  R3dat2_8  R3dat2_9 R3dat2_10
nomstr3 OPS_BD3dat5 OPS_BD3dat6 OPS_BD3dat7 OPS_BD3dat8 OPS_BD3dat9 OPS_BD3dat10
.endfields
.{ IK_OPSmainCycle CheckEnter
 YearOtchet ^
 FIO ^ INN ^ NOMLSH ^ NATION ^
 PASP_SER ^ PASP_NUM ^ PASP_V ^
 SEX ^ DATE_1 ^ ADRESS_1 ^
 POST ^ DOGOV_VID ^
 DOGOV_NUM ^ DOGOV_DATE ^
.{ IK_OPSPers1Cycle CheckEnter
 mon1 : ^
R1   ^^^^^^^^^
     ^^^^^^^^^
.{ IK_OPSBD1Cycle CheckEnter
 ^ ^^^^^^
.}
.}
.{ IK_OPSPers2Cycle CheckEnter
mon2 : ^
R2   ^^^^^^^^^
     ^^^^^^^^^
.{ IK_OPSBD2Cycle CheckEnter
 ^ ^^^^^^
.}
.}
.{ IK_OPSPers3Cycle CheckEnter
mon3 : ^
R3   ^^^^^^^^^
     ^^^^^^^^^
.{ IK_OPSBD3Cycle CheckEnter
 ^ ^^^^^^
.}
.}
.}
.endform

.set name 'CK_OPS'
.p 60
.DEFO LANDSCAPE
.hide
.fields
 YearOtchet
 Podrname
 INN KPP
//--------R1
 mon1   R1dat1_2  R1dat1_3  R1dat1_4  R1dat1_5  R1dat1_8  R1dat1_9 R1dat1_10
        R1dat2_2  R1dat2_3  R1dat2_4  R1dat2_5  R1dat2_8  R1dat2_9 R1dat2_10
//--------R2
mon2    R2dat1_2  R2dat1_3  R2dat1_4  R2dat1_5  R2dat1_8  R2dat1_9 R2dat1_10
        R2dat2_2  R2dat2_3  R2dat2_4  R2dat2_5  R2dat2_8  R2dat2_9 R2dat2_10
//--------R3
mon3    R3dat1_2  R3dat1_3  R3dat1_4  R3dat1_5  R3dat1_8  R3dat1_9 R3dat1_10
        R3dat2_2  R3dat2_3  R3dat2_4  R3dat2_5  R3dat2_8  R3dat2_9 R3dat2_10
.endfields
 YearOtchet ^
 Podrname ^
 INN ^ KPP ^

.{ CK_OPSPers1Cycle CheckEnter
 mon1 : ^
R1   ^^^^^^^
     ^^^^^^^
.}
.{ CK_OPSPers2Cycle CheckEnter
mon2 : ^
R2   ^^^^^^^
     ^^^^^^^
.}
.{ CK_OPSPers3Cycle CheckEnter
mon3 : ^
R3   ^^^^^^^
     ^^^^^^^
.}
.endform
