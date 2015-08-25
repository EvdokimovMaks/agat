
.form 'FSS4XML'
.hide
.fields
//TITLE
 REG_NUM
 KPS_NUM
 DOP_NUM
 INN KPP
 OGRN OKOPF OKATO OKPO
 OKFS OKVED QUART_NUM
 YEAR_NUM ElNAME
 CRE_DATE WRO CEO CFO
 AUTHOR PHONE
//F4INF1
 TaxType C4 F3 H3 S2R1 Ch1 Ch2 Ch3 S2R3
 N1 N2 N3 N0 S2R2 NRe1 NRe2 S2R13 NRe0 S2F1 S2F2 S2R16 S2F0 S2N FssDebt
 S2R18 S2R19 S2R20 Re1 Re2 Re3 S2R21 S2R29 S2R30 S2R26 S2R27   S2R32 InsDebt InsDelDebt S3QCase S3R1C1 S3R1C2 S3R1C3
 S3QCase2 S3R2C1 S3R2C2 S3R2C3 S3R4C1 S3R4C2 S3R4C3 S3QCase3 S3R41C1 S3R41C2 S3R41C3 S3R5C1 S3R5C2 S3R6C1 S3R6C2
 S3RCP7 S3RCP75 S3RCP71 S3R71C1 S3R71C2 S3R71C3 S3RCP72 S3R72C1 S3R72C2 S3R72C3 S3RCP76 S3RCP73 S3R73C1 S3R73C2
 S3R73C3 S3RCP74 S3R74C1 S3R74C2 S3R74C3 S3R3C1 S3R3C2 S3R3C3 S3R8C1 S3R8C2 S3R8C3 S3R1C2N S3R4C2N S3R7C2N S1
 S1_1 S1_2 S1_3 S2 S2_1 S2_2 S2_3 S3 S3_1 S3_2 S3_3 S4 S4_1 S4_2 S4_3 FINE_LEFT PNLT_LEFT FINE_TAX PNLT_TAX FINE_PAY
 PNLT_PAY FINE_RET PNLT_RET
 // PAYM_ORDER
 PAY_NUM PAY_DT PAY_SUM
//F4INF2
 TaxType2 T1R1C3 T1R2C3 T1R3C3 T2R16C1 T2R18C1 T2R19C1 T2R25C1
 QCase T3R1C1 T3R1C2 T3R1C3 QCase2 T3R2C1 T3R2C2 T3R2C3 T3R4C1
 T3R4C2 T3R4C3 T3R41C1 T3R41C2 T3R41C3 T3R5C1 T3R5C2 T3R6C1 T3R6C2 RCP7 RCP75
 RCP71 T3R71C1 T3R71C2 T3R71C3 RCP72 T3R72C1 T3R72C2 T3R72C3 RCP76 RCP73 T3R73C1
 T3R73C2 T3R73C3 RCP74 T3R74C1 T3R74C2 T3R74C3 T3R3C1 T3R3C2 T3R3C3 T3R8C1 T3R8C2
 T3R8C3

//F4INFO
 T5R1C4 T5R1C14 T5R1C3 T5R1C6 T5R1C16 T5R1C5 T5R1C8 T5R1C18 T5R1C7
 T5R1C10 T5R1C20 T5R1C9 T5R1C12 T5R1C22 T5R1C11 T5R2C4 T5R2C14 T5R2C3
 T5R2C6 T5R2C16 T5R2C5 T5R2C10 T5R2C20 T5R2C9 T5R2C12 T5R2C22 T5R2C11
 T5R3C4 T5R3C6 T5R3C10 T5R4C4 T5R4C14 T5R4C3 T5R4C6 T5R4C16 T5R4C5 T5R4C10
 T5R4C20 T5R4C9 T5R31C4 T5R31C14 T5R31C3 T5R31C6 T5R31C16 T5R31C5
 T5R31C10 T5R31C20 T5R31C9 T5R32C4 T5R32C14 T5R32C3 T5R32C6 T5R32C16
 T5R32C5 T5R32C10 T5R32C20 T5R32C9 T1R1C2 T1R4C2 T1R6C2 T1R3C2
 T1R5C2 C1 I1 C2 I2 C3 I3 NC RATE_MIS RATE_DEC INC_DATE
 RATE_INC T7R1C1 T7R3C1 T7R5C1 T7R6C1 T7R7C1 T7R9C1 T7R13C1
 T7R11C1 T7R16C1 T7R18C1 T7R19C1 T7R21C1 T7R23C1 T7R24C1 T7R25C1
 T7R27C1 T7R29C1 T7R30C1 T7R31C1 T7R38C1 T7R34C1 T7R35C1
 T6R3C2 T6R3C1 T6R13C2 T6R13C1 T6R4C2 T6R4C1 T6R8C2 T6R8C1 T6R14C2 T6R14C1
 T6R9C2 T6R9C1 T6R5C2 T6R5C1 T6R6C2 T6R6C1 T6R10C2 FINE_LEFT2
 PNLT_LEFT2 FINE_TAX2 PNLT_TAX2 FINE_PAY2 PNLT_PAY2 FINE_RET2 PNLT_RET2 M1
 M2 M3 M5
 // PAYM_ORDER
 PAY_NUM2 PAY_DT2 PAY_SUM2
//F4DECODE
 OKVED2 ID_RISC RATE_MIS2 RATE_DEC2 RATE_INC2 FOT
 C1_2 C2_2 C3_2 FOTINV I1_2 I2_2 I3_2 NC_2 RECKON
.endfields
<?xml version="1.0" encoding="windows-1251"?>
<?F4FORM version="0.1"?>
<F4REPORT>
<TITLE REG_NUM="^" KPS_NUM="^" DOP_NUM="^" INN="^" KPP="^" OGRN="^" OKOPF="^" OKATO="^" OKPO="^" OKFS="^" OKVED="^" QUART_NUM="^" YEAR_NUM="^" NAME="^" CRE_DATE="^" WRO="^" CEO="^" CFO="^" AUTHOR="^" PHONE="^" />
<F4INF1 TaxType="^" C4="^" F3="^" H3="^" S2R1="^" S2R3="^" Ch1="^" Ch2="^" Ch3="^" N0="^" N1="^" N2="^" N3="^" S2R2="^" NRe0="^" NRe1="^" NRe2="^" S2R13="^" S2F0="^" S2F1="^" S2F2="^" S2R16="^" S2N="^" FssDebt="^"
 S2R18="^" S2R19="^" S2R20="^" S2R21="^" Re1="^" Re2="^" Re3="^" S2R27="^" S2R29="^" S2R30="^" S2R26="^" S2R32="^" InsDebt="^" InsDelDebt="^" S3QCase="^" S3R1C1="^" S3R1C2="^" S3R1C3="^"
 S3QCase2="^" S3R2C1="^" S3R2C2="^" S3R2C3="^" S3R4C1="^" S3R4C2="^" S3R4C3="^" S3QCase3="^" S3R41C1="^" S3R41C2="^" S3R41C3="^" S3R5C1="^" S3R5C2="^" S3R6C1="^" S3R6C2="^"
 S3RCP7="^" S3RCP75="^" S3RCP71="^" S3R71C1="^" S3R71C2="^" S3R71C3="^" S3RCP72="^" S3R72C1="^" S3R72C2="^" S3R72C3="^" S3RCP76="^" S3RCP73="^" S3R73C1="^" S3R73C2="^"
 S3R73C3="^" S3RCP74="^" S3R74C1="^" S3R74C2="^" S3R74C3="^" S3R3C1="^" S3R3C2="^" S3R3C3="^" S3R8C1="^" S3R8C2="^" S3R8C3="^" S3R1C2N="^" S3R4C2N="^" S3R7C2N="^" S1="^"
 S2="^" S3="^" S4="^" S1_1="^" S2_1="^" S3_1="^" S4_1="^" S1_2="^" S2_2="^" S3_2="^" S4_2="^" S1_3="^" S2_3="^" S3_3="^" S4_3="^" FINE_LEFT="^" PNLT_LEFT="^" FINE_TAX="^" PNLT_TAX="^" FINE_PAY="^"
 PNLT_PAY="^" FINE_RET="^" PNLT_RET="^" >
.{ checkenter Pay_OrderCycle
 <PAYM_ORDER NUM="^" DT="^" SUM="^" />
.}
</F4INF1>
<F4INF2 TaxType="^" T1R1C3="^" T1R2C3="^" T1R3C3="^" T2R16C1="^" T2R18C1="^" T2R19C1="^" T2R25C1="^"
QCase="^" T3R1C1="^" T3R1C2="^" T3R1C3="^" QCase2="^" T3R2C1="^" T3R2C2="^" T3R2C3="^" T3R4C1="^"
 T3R4C2="^" T3R4C3="^" T3R41C1="^" T3R41C2="^" T3R41C3="^" T3R5C1="^" T3R5C2="^" T3R6C1="^" T3R6C2="^" RCP7="^" RCP75="^"
RCP71="^" T3R71C1="^" T3R71C2="^" T3R71C3="^" RCP72="^" T3R72C1="^" T3R72C2="^" T3R72C3="^" RCP76="^" RCP73="^" T3R73C1="^"
T3R73C2="^" T3R73C3="^" RCP74="^" T3R74C1="^" T3R74C2="^" T3R74C3="^" T3R3C1="^" T3R3C2="^" T3R3C3="^" T3R8C1="^" T3R8C2="^"
T3R8C3="^">
</F4INF2>
<F4INFO T5R1C4="^" T5R1C14="^" T5R1C3="^" T5R1C6="^" T5R1C16="^" T5R1C5="^" T5R1C8="^" T5R1C18="^" T5R1C7="^"
T5R1C10="^" T5R1C20="^" T5R1C9="^" T5R1C12="^" T5R1C22="^" T5R1C11="^" T5R2C4="^" T5R2C14="^" T5R2C3="^"
T5R2C6="^" T5R2C16="^" T5R2C5="^" T5R2C10="^" T5R2C20="^" T5R2C9="^" T5R2C12="^" T5R2C22="^" T5R2C11="^"
T5R3C4="^" T5R3C6="^" T5R3C10="^" T5R31C4="^" T5R31C14="^" T5R31C3="^" T5R31C6="^" T5R31C16="^" T5R31C5="^"
T5R31C10="^" T5R31C20="^" T5R31C9="^" T5R32C4="^" T5R32C14="^" T5R32C3="^" T5R32C6="^" T5R32C16 ="^"
T5R32C5="^" T5R32C10="^" T5R32C20="^" T5R32C9="^" T5R4C4="^" T5R4C14="^" T5R4C3="^" T5R4C6="^"
T5R4C16="^" T5R4C5="^" T5R4C10="^" T5R4C20="^" T5R4C9="^" T1R1C2="^" T1R4C2="^" T1R6C2="^" T1R3C2="^"
T1R5C2="^" C1="^" C2="^" C3="^" I1="^" I2="^" I3="^" NC="^" RATE_MIS="^" RATE_DEC="^" INC_DATE="^"
RATE_INC="^" T7R1C1="^" T7R3C1="^" T7R5C1="^" T7R6C1="^" T7R7C1="^" T7R9C1="^" T7R13C1="^"
T7R11C1="^" T7R16C1="^" T7R18C1="^" T7R19C1="^" T7R21C1="^" T7R23C1="^" T7R24C1="^" T7R25C1="^"
T7R27C1="^" T7R29C1="^" T7R30C1="^" T7R31C1="^" T7R38C1="^" T7R34C1="^" T7R35C1="^" T6R3C1="^"
T6R3C2="^" T6R13C1="^" T6R13C2="^" T6R4C1="^" T6R4C2="^" T6R8C1="^" T6R8C2="^" T6R14C1="^" T6R14C2="^"
T6R9C1="^" T6R9C2="^" T6R5C1="^" T6R5C2="^" T6R6C1="^" T6R6C2="^" T6R10C2="^" FINE_LEFT="^"
PNLT_LEFT="^" FINE_TAX="^" PNLT_TAX="^" FINE_PAY="^" PNLT_PAY="^" FINE_RET="^" PNLT_RET="^" M1="^"
M2="^" M3="^" M5="^">
.{ checkenter Pay_OrderCycle2
 <PAYM_ORDER NUM="^" DT="^" SUM="^" />
.}
</F4INFO>
<F4DECODE OKVED="^" ID_RISC="^" RATE_MIS="^"
.{?internal;(String(RATE_DEC)<>'');
 RATE_DEC="^"
.}
.{?internal;(String(RATE_INC2)<>'');
 RATE_INC="^"
.}
.{?internal;(String(FOT)<>'');
 FOT ="^"
.}
.{?internal;(String(C1_2)<>'');
 C1="^"
.}
.{?internal;(String(C2_2)<>'');
 C2="^"
.}
.{?internal;(String(C3_2)<>'');
 C3="^"
.}
.{?internal;(String(FOTINV)<>'');
 FOTINV="^"
.}
.{?internal;(String(I1_2)<>'');
 I1="^"
.}
.{?internal;(String(I2_2)<>'');
 I2="^"
.}
.{?internal;(String(I3_2)<>'');
 I3="^"
.}
.{?internal;(String(NC_2)<>'');
 NC="^"
.}
.{?internal;(String(RECKON)<>'');
 RECKON="^"
.}
>
</F4DECODE>
</F4REPORT>
.endForm

.linkform 'FSS4XML_XML' prototype 'FSS4XML'
.nameinlist '4-”‘‘(XML)'
.fields
//TITLE
 REG_NUM
 KPS_NUM
 DOP_NUM
 INN KPP
 OGRN OKOPF OKATO OKPO
 OKFS OKVED QUART_NUM
 YEAR_NUM ElNAME
 CRE_DATE WRO CEO CFO
 AUTHOR PHONE
 //F4INF1
 TaxType C4 F3 H3 S2R1 S2R3 Ch1 Ch2 Ch3
 N0 N1 N2 N3 S2R2 NRe0 NRe1 NRe2 S2R13 S2F0 S2F1 S2F2 S2R16 S2N FssDebt
 S2R18 S2R19 S2R20 S2R21 Re1 Re2 Re3 S2R27 S2R29 S2R30 S2R26 S2R32 InsDebt InsDelDebt S3QCase S3R1C1 S3R1C2 S3R1C3
 S3QCase2 S3R2C1 S3R2C2 S3R2C3 S3R4C1 S3R4C2 S3R4C3 S3QCase3 S3R41C1 S3R41C2 S3R41C3 S3R5C1 S3R5C2 S3R6C1 S3R6C2
 S3RCP7 S3RCP75 S3RCP71 S3R71C1 S3R71C2 S3R71C3 S3RCP72 S3R72C1 S3R72C2 S3R72C3 S3RCP76 S3RCP73 S3R73C1 S3R73C2
 S3R73C3 S3RCP74 S3R74C1 S3R74C2 S3R74C3 S3R3C1 S3R3C2 S3R3C3 S3R8C1 S3R8C2 S3R8C3 S3R1C2N S3R4C2N S3R7C2N S1
 S2 S3 S4 S1_1 S2_1 S3_1 S4_1 S1_2 S2_2 S3_2 S4_2 S1_3 S2_3 S3_3 S4_3 FINE_LEFT PNLT_LEFT FINE_TAX PNLT_TAX FINE_PAY
 PNLT_PAY FINE_RET PNLT_RET
 // PAYM_ORDER
 PAY_NUM PAY_DT PAY_SUM
 //F4INF2
 TaxType2 T1R1C3 T1R2C3 T1R3C3 T2R16C1 T2R18C1 T2R19C1 T2R25C1
 QCase T3R1C1 T3R1C2 T3R1C3 QCase2 T3R2C1 T3R2C2 T3R2C3 T3R4C1
 T3R4C2 T3R4C3 T3R41C1 T3R41C2 T3R41C3 T3R5C1 T3R5C2 T3R6C1 T3R6C2 RCP7 RCP75
 RCP71 T3R71C1 T3R71C2 T3R71C3 RCP72 T3R72C1 T3R72C2 T3R72C3 RCP76 RCP73 T3R73C1
 T3R73C2 T3R73C3 RCP74 T3R74C1 T3R74C2 T3R74C3 T3R3C1 T3R3C2 T3R3C3 T3R8C1 T3R8C2
 T3R8C3

//F4INFO
 T5R1C4 T5R1C14 T5R1C3 T5R1C6 T5R1C16 T5R1C5 T5R1C8 T5R1C18 T5R1C7
 T5R1C10 T5R1C20 T5R1C9 T5R1C12 T5R1C22 T5R1C11 T5R2C4 T5R2C14 T5R2C3
 T5R2C6 T5R2C16 T5R2C5 T5R2C10 T5R2C20 T5R2C9 T5R2C12 T5R2C22 T5R2C11
 T5R3C4 T5R3C6 T5R3C10 T5R31C4 T5R31C14 T5R31C3 T5R31C6 T5R31C16 T5R31C5
 T5R31C10 T5R31C20 T5R31C9 T5R32C4 T5R32C14 T5R32C3 T5R32C6 T5R32C16
 T5R32C5 T5R32C10 T5R32C20 T5R32C9 T5R4C4 T5R4C14 T5R4C3 T5R4C6
 T5R4C16 T5R4C5 T5R4C10 T5R4C20 T5R4C9 T1R1C2 T1R4C2 T1R6C2 T1R3C2
 T1R5C2 C1 C2 C3 I1 I2 I3 NC RATE_MIS RATE_DEC INC_DATE
 RATE_INC T7R1C1 T7R3C1 T7R5C1 T7R6C1 T7R7C1 T7R9C1 T7R13C1
 T7R11C1 T7R16C1 T7R18C1 T7R19C1 T7R21C1 T7R23C1 T7R24C1 T7R25C1
 T7R27C1 T7R29C1 T7R30C1 T7R31C1 T7R38C1 T7R34C1 T7R35C1 T6R3C1
 T6R3C2 T6R13C1 T6R13C2 T6R4C1 T6R4C2 T6R8C1 T6R8C2 T6R14C1 T6R14C2
 T6R9C1 T6R9C2 T6R5C1 T6R5C2 T6R6C1 T6R6C2 T6R10C2 FINE_LEFT2
 PNLT_LEFT2 FINE_TAX2 PNLT_TAX2 FINE_PAY2 PNLT_PAY2 FINE_RET2 PNLT_RET2 M1
 M2 M3 M5
 // PAYM_ORDER
 PAY_NUM2 PAY_DT2 PAY_SUM2
.endfields
<?xml version="1.0" encoding="windows-1251"?>
<?F4FORM version="0.1"?>
<F4REPORT>
<TITLE REG_NUM="^" KPS_NUM="^" DOP_NUM="^" INN="^" KPP="^" OGRN="^" OKOPF="^" OKATO="^" OKPO="^"
OKFS="^" OKVED="^" QUART_NUM="^" YEAR_NUM="^" NAME="^" CRE_DATE="^" WRO="^" CEO="^" CFO="^" AUTHOR="^" PHONE="^" />
<F4INF1 TaxType="^"
.{?internal;(String(C4)<>'');
 C4="^"
.}
.{?internal;(String(F3)<>'');
 F3="^"
.}
.{?internal;(String(H3)<>'');
 H3="^"
.}
.{?internal;(String(S2R1)<>'');
 S2R1="^"
.}
.{?internal;(String(S2R3)<>'');
 S2R3="^"
.}
.{?internal;(String(Ch1)<>'');
 Ch1="^"
.}
.{?internal;(String(Ch2)<>'');
 Ch2="^"
.}
.{?internal;(String(Ch3)<>'');
 Ch3="^"
.}
.{?internal;(String(N0)<>'');
 N0="^"
.}
.{?internal;(String(N1)<>'');
 N1="^"
.}
.{?internal;(String(N2)<>'');
 N2="^"
.}
.{?internal;(String(N3)<>'');
 N3="^"
.}
.{?internal;(String(S2R2)<>'');
 S2R2="^"
.}
.{?internal;(String(NRe0)<>'');
 NRe0="^"
.}
.{?internal;(String(NRe1)<>'');
 NRe1="^"
.}
.{?internal;(String(NRe2)<>'');
 NRe2="^"
.}
.{?internal;(String(S2R13)<>'');
 S2R13="^"
.}
.{?internal;(String(S2F0)<>'');
 S2F0="^"
.}
.{?internal;(String(S2F1)<>'');
 S2F1="^"
.}
.{?internal;(String(S2F2)<>'');
 S2F2="^"
.}
.{?internal;(String(S2R16)<>'');
 S2R16="^"
.}
.{?internal;(String(S2N)<>'');
 S2N="^"
.}
.{?internal;(String(FssDebt)<>'');
 FssDebt="^"
.}
.{?internal;(String(S2R18)<>'');
 S2R18="^"
.}
.{?internal;(String(S2R19)<>'');
 S2R19="^"
.}
.{?internal;(String(S2R20)<>'');
 S2R20="^"
.}
.{?internal;(String(S2R21)<>'');
 S2R21="^"
.}
.{?internal;(String(Re1)<>'');
 Re1="^"
.}
.{?internal;(String(Re2)<>'');
 Re2="^"
.}
.{?internal;(String(Re3)<>'');
 Re3="^"
.}
.{?internal;(String(S2R27)<>'');
 S2R27="^"
.}
.{?internal;(String(S2R29)<>'');
 S2R29="^"
.}
.{?internal;(String(S2R30)<>'');
 S2R30="^"
.}
.{?internal;(String(S2R26)<>'');
 S2R26="^"
.}
.{?internal;(String(S2R32)<>'');
 S2R32="^"
.}
.{?internal;(String(InsDebt)<>'');
 InsDebt="^"
.}
.{?internal;(String(InsDelDebt)<>'');
 InsDelDebt="^"
.}
.{?internal;(String(S3QCase)<>'');
 S3QCase="^"
.}
.{?internal;(String(S3R1C1)<>'');
 S3R1C1="^"
.}
.{?internal;(String(S3R1C2)<>'');
 S3R1C2="^"
.}
.{?internal;(String(S3R1C3)<>'');
 S3R1C3="^"
.}
.{?internal;(String(S3QCase2)<>'');
 S3QCase2="^"
.}
.{?internal;(String(S3R2C1)<>'');
 S3R2C1="^"
.}
.{?internal;(String(S3R2C2)<>'');
 S3R2C2="^"
.}
.{?internal;(String(S3R2C3)<>'');
 S3R2C3="^"
.}
.{?internal;(String(S3R4C1)<>'');
 S3R4C1="^"
.}
.{?internal;(String(S3R4C2)<>'');
 S3R4C2="^"
.}
.{?internal;(String(S3R4C3)<>'');
 S3R4C3="^"
.}
.{?internal;(String(S3QCase3)<>'');
 S3QCase3="^"
.}
.{?internal;(String(S3R41C1)<>'');
 S3R41C1="^"
.}
.{?internal;(String(S3R41C2)<>'');
 S3R41C2="^"
.}
.{?internal;(String(S3R41C3)<>'');
 S3R41C3="^"
.}
.{?internal;(String(S3R5C1)<>'');
 S3R5C1="^"
.}
.{?internal;(String(S3R5C2)<>'');
 S3R5C2="^"
.}
.{?internal;(String(S3R6C1)<>'');
 S3R6C1="^"
.}
.{?internal;(String(S3R6C2)<>'');
 S3R6C2="^"
.}
.{?internal;(String(S3RCP7)<>'');
 S3RCP7="^"
.}
.{?internal;(String(S3RCP75)<>'');
 S3RCP75="^"
.}
.{?internal;(String(S3RCP71)<>'');
 S3RCP71="^"
.}
.{?internal;(String(S3R71C1)<>'');
 S3R71C1="^"
.}
.{?internal;(String(S3R71C2)<>'');
 S3R71C2="^"
.}
.{?internal;(String(S3R71C3)<>'');
 S3R71C3="^"
.}
.{?internal;(String(S3RCP72)<>'');
 S3RCP72="^"
.}
.{?internal;(String(S3R72C1)<>'');
 S3R72C1="^"
.}
.{?internal;(String(S3R72C2)<>'');
 S3R72C2="^"
.}
.{?internal;(String(S3R72C3)<>'');
 S3R72C3="^"
.}
.{?internal;(String(S3RCP76)<>'');
 S3RCP76="^"
.}
.{?internal;(String(S3RCP73)<>'');
 S3RCP73="^"
.}
.{?internal;(String(S3R73C1)<>'');
 S3R73C1="^"
.}
.{?internal;(String(S3R73C2)<>'');
 S3R73C2="^"
.}
.{?internal;(String(S3R73C3)<>'');
 S3R73C3="^"
.}
.{?internal;(String(S3RCP74)<>'');
 S3RCP74="^"
.}
.{?internal;(String(S3R74C1)<>'');
 S3R74C1="^"
.}
.{?internal;(String(S3R74C2)<>'');
 S3R74C2="^"
.}
.{?internal;(String(S3R74C3)<>'');
 S3R74C3="^"
.}
.{?internal;(String(S3R3C1)<>'');
 S3R3C1="^"
.}
.{?internal;(String(S3R3C2)<>'');
 S3R3C2="^"
.}
.{?internal;(String(S3R3C3)<>'');
 S3R3C3="^"
.}
.{?internal;(String(S3R8C1)<>'');
 S3R8C1="^"
.}
.{?internal;(String(S3R8C2)<>'');
 S3R8C2="^"
.}
.{?internal;(String(S3R8C3)<>'');
 S3R8C3="^"
.}
.{?internal;(String(S3R1C2N)<>'');
 S3R1C2N="^"
.}
.{?internal;(String(S3R4C2N)<>'');
 S3R4C2N="^"
.}
.{?internal;(String(S3R7C2N)<>'');
 S3R7C2N="^"
.}
.{?internal;(String(S1)<>'');
 S1="^"
.}
.{?internal;(String(S2)<>'');
 S2="^"
.}
.{?internal;(String(S3)<>'');
 S3="^"
.}
.{?internal;(String(S4)<>'');
 S4="^"
.}
.{?internal;(String(S1_1)<>'');
 S1_1="^"
.}
.{?internal;(String(S2_1)<>'');
 S2_1="^"
.}
.{?internal;(String(S3_1)<>'');
 S3_1="^"
.}
.{?internal;(String(S4_1)<>'');
 S4_1="^"
.}
.{?internal;(String(S1_2)<>'');
 S1_2="^"
.}
.{?internal;(String(S2_2)<>'');
 S2_2="^"
.}
.{?internal;(String(S3_2)<>'');
 S3_2="^"
.}
.{?internal;(String(S4_2)<>'');
 S4_2="^"
.}
.{?internal;(String(S1_3)<>'');
 S1_3="^"
.}
.{?internal;(String(S2_3)<>'');
 S2_3="^"
.}
.{?internal;(String(S3_3)<>'');
 S3_3="^"
.}
.{?internal;(String(S4_3)<>'');
 S4_3="^"
.}
.{?internal;(String(FINE_LEFT)<>'');
 FINE_LEFT="^"
.}
.{?internal;(String(PNLT_LEFT)<>'');
 PNLT_LEFT="^"
.}
.{?internal;(String(FINE_TAX)<>'');
 FINE_TAX="^"
.}
.{?internal;(String(PNLT_TAX)<>'');
 PNLT_TAX="^"
.}
.{?internal;(String(FINE_PAY)<>'');
 FINE_PAY="^"
.}
.{?internal;(String(PNLT_PAY)<>'');
 PNLT_PAY="^"
.}
.{?internal;(String(FINE_RET)<>'');
 FINE_RET="^"
.}
.{?internal;(String(PNLT_RET)<>'');
 PNLT_RET="^"
.}
>
.{ checkenter Pay_OrderCycle
 <PAYM_ORDER NUM="^" DT="^" SUM="^" />
.}
</F4INF1>
<F4INF2 TaxType="^"
.{?internal;(String(T1R1C3)<>'');
 T1R1C3="^"
.}
.{?internal;(String(T1R2C3)<>'');
 T1R2C3="^"
.}
.{?internal;(String(T1R3C3)<>'');
 T1R3C3="^"
.}
.{?internal;(String(T2R16C1)<>'');
 T2R16C1="^"
.}
.{?internal;(String(T2R18C1)<>'');
 T2R18C1="^"
.}
.{?internal;(String(T2R19C1)<>'');
 T2R19C1="^"
.}
.{?internal;(String(T2R25C1)<>'');
 T2R25C1="^"
.}
.{?internal;(String(QCase)<>'');
 QCase="^"
.}
.{?internal;(String(T3R1C1)<>'');
 T3R1C1="^"
.}
.{?internal;(String(T3R1C2)<>'');
 T3R1C2="^"
.}
.{?internal;(String(T3R1C3)<>'');
 T3R1C3="^"
.}
.{?internal;(String(QCase2)<>'');
 QCase2="^"
.}
.{?internal;(String(T3R2C1)<>'');
 T3R2C1="^"
.}
.{?internal;(String(T3R2C2)<>'');
 T3R2C2="^"
.}
.{?internal;(String(T3R2C3)<>'');
 T3R2C3="^"
.}
.{?internal;(String(T3R4C1)<>'');
 T3R4C1="^"
.}
.{?internal;(String(T3R4C2)<>'');
 T3R4C2="^"
.}
.{?internal;(String(T3R4C3)<>'');
 T3R4C3="^"
.}
.{?internal;(String(T3R41C1)<>'');
 T3R41C1="^"
.}
.{?internal;(String(T3R41C2)<>'');
 T3R41C2="^"
.}
.{?internal;(String(T3R41C3)<>'');
 T3R41C3="^"
.}
.{?internal;(String(T3R5C1)<>'');
 T3R5C1="^"
.}
.{?internal;(String(T3R5C2)<>'');
 T3R5C2="^"
.}
.{?internal;(String(T3R6C1)<>'');
 T3R6C1="^"
.}
.{?internal;(String(T3R6C2)<>'');
 T3R6C2="^"
.}
.{?internal;(String(RCP7)<>'');
 RCP7="^"
.}
.{?internal;(String(RCP75)<>'');
 RCP75="^"
.}
.{?internal;(String(RCP71)<>'');
 RCP71="^"
.}
.{?internal;(String(T3R71C1)<>'');
 T3R71C1="^"
.}
.{?internal;(String(T3R71C2)<>'');
 T3R71C2="^"
.}
.{?internal;(String(T3R71C3)<>'');
 T3R71C3="^"
.}
.{?internal;(String(RCP72)<>'');
 RCP72="^"
.}
.{?internal;(String(T3R72C1)<>'');
 T3R72C1="^"
.}
.{?internal;(String(T3R72C2)<>'');
 T3R72C2="^"
.}
.{?internal;(String(T3R72C3)<>'');
 T3R72C3="^"
.}
.{?internal;(String(RCP76)<>'');
 RCP76="^"
.}
.{?internal;(String(RCP73)<>'');
 RCP73="^"
.}
.{?internal;(String(T3R73C1)<>'');
 T3R73C1="^"
.}
.{?internal;(String(T3R73C2)<>'');
 T3R73C2="^"
.}
.{?internal;(String(T3R73C3)<>'');
 T3R73C3="^"
.}
.{?internal;(String(RCP74)<>'');
 RCP74="^"
.}
.{?internal;(String(T3R74C1)<>'');
 T3R74C1="^"
.}
.{?internal;(String(T3R74C2)<>'');
 T3R74C2="^"
.}
.{?internal;(String(T3R74C3)<>'');
 T3R74C3="^"
.}
.{?internal;(String(T3R3C1)<>'');
 T3R3C1="^"
.}
.{?internal;(String(T3R3C2)<>'');
 T3R3C2="^"
.}
.{?internal;(String(T3R3C3)<>'');
 T3R3C3="^"
.}
.{?internal;(String(T3R8C1)<>'');
 T3R8C1="^"
.}
.{?internal;(String(T3R8C2)<>'');
 T3R8C2="^"
.}
.{?internal;(String(T3R8C3)<>'');
 T3R8C3="^"
.}
></F4INF2>
<F4INFO
.{?internal;(String(T5R1C4)<>'');
 T5R1C4="^"
.}
.{?internal;(String(T5R1C14)<>'');
 T5R1C14="^"
.}
.{?internal;(String(T5R1C3)<>'');
 T5R1C3="^"
.}
.{?internal;(String(T5R1C6)<>'');
 T5R1C6="^"
.}
.{?internal;(String(T5R1C16)<>'');
 T5R1C16="^"
.}
.{?internal;(String(T5R1C5)<>'');
 T5R1C5="^"
.}
.{?internal;(String(T5R1C8)<>'');
 T5R1C8="^"
.}
.{?internal;(String(T5R1C18)<>'');
 T5R1C18="^"
.}
.{?internal;(String(T5R1C7)<>'');
 T5R1C7="^"
.}
.{?internal;(String(T5R1C10)<>'');
 T5R1C10="^"
.}
.{?internal;(String(T5R1C20)<>'');
 T5R1C20="^"
.}
.{?internal;(String(T5R1C9)<>'');
 T5R1C9="^"
.}
.{?internal;(String(T5R1C12)<>'');
 T5R1C12="^"
.}
.{?internal;(String(T5R1C22)<>'');
 T5R1C22="^"
.}
.{?internal;(String(T5R1C11)<>'');
 T5R1C11="^"
.}
.{?internal;(String(T5R2C4)<>'');
 T5R2C4="^"
.}
.{?internal;(String(T5R2C14)<>'');
 T5R2C14="^"
.}
.{?internal;(String(T5R2C3)<>'');
 T5R2C3="^"
.}
.{?internal;(String(T5R2C6)<>'');
 T5R2C6="^"
.}
.{?internal;(String(T5R2C16)<>'');
 T5R2C16="^"
.}
.{?internal;(String(T5R2C5)<>'');
 T5R2C5="^"
.}
.{?internal;(String(T5R2C10)<>'');
 T5R2C10="^"
.}
.{?internal;(String(T5R2C20)<>'');
 T5R2C20="^"
.}
.{?internal;(String(T5R2C9)<>'');
 T5R2C9="^"
.}
.{?internal;(String(T5R2C12)<>'');
 T5R2C12="^"
.}
.{?internal;(String(T5R2C22)<>'');
 T5R2C22="^"
.}
.{?internal;(String(T5R2C11)<>'');
 T5R2C11="^"
.}
.{?internal;(String(T5R3C4)<>'');
 T5R3C4="^"
.}
.{?internal;(String(T5R3C6)<>'');
 T5R3C6="^"
.}
.{?internal;(String(T5R3C10)<>'');
 T5R3C10="^"
.}
.{?internal;(String(T5R31C4)<>'');
 T5R31C4="^"
.}
.{?internal;(String(T5R31C14)<>'');
 T5R31C14="^"
.}
.{?internal;(String(T5R31C3)<>'');
 T5R31C3="^"
.}
.{?internal;(String(T5R31C6)<>'');
 T5R31C6="^"
.}
.{?internal;(String(T5R31C16)<>'');
 T5R31C16="^"
.}
.{?internal;(String(T5R31C5)<>'');
 T5R31C5="^"
.}
.{?internal;(String(T5R31C10)<>'');
 T5R31C10="^"
.}
.{?internal;(String(T5R31C20)<>'');
 T5R31C20="^"
.}
.{?internal;(String(T5R31C9)<>'');
 T5R31C9="^"
.}
.{?internal;(String(T5R32C4)<>'');
 T5R32C4="^"
.}
.{?internal;(String(T5R32C14)<>'');
 T5R32C14="^"
.}
.{?internal;(String(T5R32C3)<>'');
 T5R32C3="^"
.}
.{?internal;(String(T5R32C6)<>'');
 T5R32C6="^"
.}
.{?internal;(String(T5R32C16)<>'');
 T5R32C16 ="^"
.}
.{?internal;(String(T5R32C5)<>'');
 T5R32C5="^"
.}
.{?internal;(String(T5R32C10)<>'');
 T5R32C10="^"
.}
.{?internal;(String(T5R32C20)<>'');
 T5R32C20="^"
.}
.{?internal;(String(T5R32C9)<>'');
 T5R32C9="^"
.}
.{?internal;(String(T5R4C4)<>'');
 T5R4C4="^"
.}
.{?internal;(String(T5R4C14)<>'');
 T5R4C14="^"
.}
.{?internal;(String(T5R4C3)<>'');
 T5R4C3="^"
.}
.{?internal;(String(T5R4C6)<>'');
 T5R4C6="^"
.}
.{?internal;(String(T5R4C16)<>'');
 T5R4C16="^"
.}
.{?internal;(String(T5R4C5)<>'');
 T5R4C5="^"
.}
.{?internal;(String(T5R4C10)<>'');
 T5R4C10="^"
.}
.{?internal;(String(T5R4C20)<>'');
 T5R4C20="^"
.}
.{?internal;(String(T5R4C9)<>'');
 T5R4C9="^"
.}
.{?internal;(String(T1R1C2)<>'');
 T1R1C2="^"
.}
.{?internal;(String(T1R4C2)<>'');
 T1R4C2="^"
.}
.{?internal;(String(T1R6C2)<>'');
 T1R6C2="^"
.}
.{?internal;(String(T1R3C2)<>'');
 T1R3C2="^"
.}
.{?internal;(String(T1R5C2)<>'');
 T1R5C2="^"
.}
.{?internal;(String(C1)<>'');
 C1="^"
.}
.{?internal;(String(C2)<>'');
 C2="^"
.}
.{?internal;(String(C3)<>'');
 C3="^"
.}
.{?internal;(String(I1)<>'');
 I1="^"
.}
.{?internal;(String(I2)<>'');
 I2="^"
.}
.{?internal;(String(I3)<>'');
 I3="^"
.}
.{?internal;(String(NC)<>'');
 NC="^"
.}
.{?internal;(String(RATE_MIS)<>'');
 RATE_MIS="^"
.}
.{?internal;(String(RATE_MIS)='');
 RATE_MIS="0"
.}
.{?internal;(String(RATE_DEC)<>'');
 RATE_DEC="^"
.}
.{?internal;(String(INC_DATE)<>'');
 INC_DATE="^"
.}
.{?internal;(String(RATE_INC)<>'');
 RATE_INC="^"
.}
.{?internal;(String(T7R1C1)<>'');
 T7R1C1="^"
.}
.{?internal;(String(T7R3C1)<>'');
 T7R3C1="^"
.}
.{?internal;(String(T7R5C1)<>'');
 T7R5C1="^"
.}
.{?internal;(String(T7R6C1)<>'');
 T7R6C1="^"
.}
.{?internal;(String(T7R7C1)<>'');
 T7R7C1="^"
.}
.{?internal;(String(T7R9C1)<>'');
 T7R9C1="^"
.}
.{?internal;(String(T7R13C1)<>'');
 T7R13C1="^"
.}
.{?internal;(String(T7R11C1)<>'');
 T7R11C1="^"
.}
.{?internal;(String(T7R16C1)<>'');
 T7R16C1="^"
.}
.{?internal;(String(T7R18C1)<>'');
 T7R18C1="^"
.}
.{?internal;(String(T7R19C1)<>'');
 T7R19C1="^"
.}
.{?internal;(String(T7R21C1)<>'');
 T7R21C1="^"
.}
.{?internal;(String(T7R23C1)<>'');
 T7R23C1="^"
.}
.{?internal;(String(T7R24C1)<>'');
 T7R24C1="^"
.}
.{?internal;(String(T7R25C1)<>'');
 T7R25C1="^"
.}
.{?internal;(String(T7R27C1)<>'');
 T7R27C1="^"
.}
.{?internal;(String(T7R29C1)<>'');
 T7R29C1="^"
.}
.{?internal;(String(T7R30C1)<>'');
 T7R30C1="^"
.}
.{?internal;(String(T7R31C1)<>'');
 T7R31C1="^"
.}
.{?internal;(String(T7R38C1)<>'');
 T7R38C1="^"
.}
.{?internal;(String(T7R34C1)<>'');
 T7R34C1="^"
.}
.{?internal;(String(T7R35C1)<>'');
 T7R35C1="^"
.}
.{?internal;(String(T6R3C1)<>'');
 T6R3C1="^"
.}
.{?internal;(String(T6R3C2)<>'');
 T6R3C2="^"
.}
.{?internal;(String(T6R13C1)<>'');
 T6R13C1="^"
.}
.{?internal;(String(T6R13C2)<>'');
 T6R13C2="^"
.}
.{?internal;(String(T6R4C1)<>'');
 T6R4C1="^"
.}
.{?internal;(String(T6R4C2)<>'');
 T6R4C2="^"
.}
.{?internal;(String(T6R8C1)<>'');
 T6R8C1="^"
.}
.{?internal;(String(T6R8C2)<>'');
 T6R8C2="^"
.}
.{?internal;(String(T6R14C1)<>'');
 T6R14C1="^"
.}
.{?internal;(String(T6R14C2)<>'');
 T6R14C2="^"
.}
.{?internal;(String(T6R9C1)<>'');
 T6R9C1="^"
.}
.{?internal;(String(T6R9C2)<>'');
 T6R9C2="^"
.}
.{?internal;(String(T6R5C1)<>'');
 T6R5C1="^"
.}
.{?internal;(String(T6R5C2)<>'');
 T6R5C2="^"
.}
.{?internal;(String(T6R6C1)<>'');
 T6R6C1="^"
.}
.{?internal;(String(T6R6C2)<>'');
 T6R6C2="^"
.}
.{?internal;(String(T6R10C2)<>'');
 T6R10C2="^"
.}
.{?internal;(String(FINE_LEFT)<>'');
 FINE_LEFT="^"
.}
.{?internal;(String(PNLT_LEFT)<>'');
 PNLT_LEFT="^"
.}
.{?internal;(String(FINE_TAX)<>'');
 FINE_TAX="^"
.}
.{?internal;(String(PNLT_TAX)<>'');
 PNLT_TAX="^"
.}
.{?internal;(String(FINE_PAY)<>'');
 FINE_PAY="^"
.}
.{?internal;(String(PNLT_PAY)<>'');
 PNLT_PAY="^"
.}
.{?internal;(String(FINE_RET)<>'');
 FINE_RET="^"
.}
.{?internal;(String(PNLT_RET)<>'');
 PNLT_RET="^"
.}
.{?internal;(String(M1)<>'');
 M1="^"
.}
.{?internal;(String(M2)<>'');
 M2="^"
.}
.{?internal;(String(M3)<>'');
 M3="^"
.}
.{?internal;(String(M5)<>'');
 M5="^"
.}
>
.{ checkenter Pay_OrderCycle2
 <PAYM_ORDER NUM="^" DT="^" SUM="^" />
.}
</F4INFO>
</F4REPORT>
.endForm
