/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 2001 ชฎเฏฎเ ๆจ๏ €€’€                         บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : เฎจงขฎคแโขฎ                                              บ
 บ ฅเแจ๏        : 7.1                                                       บ
 บ  งญ ็ฅญจฅ    : โ็ฅโ ฏฎ ฏเฎจงขฎคแโขฅญญฎฌใ ฎโ็ฅโใ                         บ
 บ โขฅโแโขฅญญ๋ฉ : ฅคขฅค์  โ ซ์๏ ฅฎญจคฎขญ                                 บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.Form MnfRep
.nameinlist ' งฎข ๏ ไฎเฌ '
.hide
.Fields
NameRep
TypePodr
Podr
Smena
Period

TypeRes
GroupRes
NameRes         KodRes          Obozn           Party           
EDI             DopEdi          Potreb          Norm
Ostat_NzpKol    Ostat_NzpSum    Ostat_ZapKol    Ostat_ZapSum 
PrihFromCeh_Kol PrihFromCeh_Sum InNzp_Kol       InNzp_Sum
GpNorm_kol      GpNorm_Sum      Fact_Kol        Fact_Sum 
Brak_Kol        Brak_sum        Pererab_Kol     Pererab_Sum     
ProchSpis_Kol   ProchSpis_Sum   SentCeh_Kol     SentCeh_Sum
OstatPer_NzpKol OstatPer_NzpSum OstatPer_ZapKol OstatPer_ZapSum
BegSaldoInNzp   IntoNzp         PrSpisCom       WasteCom
EndSaldoInNzp

Ostat_NzpKol2  Ostat_ZapKol2    PrihFromCeh_Kol2
InNzp_Kol2     GpNorm_kol2      Fact_Kol2
Brak_Kol2      Pererab_Kol2     ProchSpis_Kol2
SentCeh_Kol2   OstatPer_NzpKol2 OstatPer_ZapKol2

NameRes_Cost    KodRes_Cost    OboznRes_Cost
PricePlan       PriceFact      Valut
KodProd         NameProd       ProdEd          ProdEd2 ProdParty
Rash_BegNzpKol  Rash_BegNzpSum Rash_FactNzpKol Rash_FactNzpSum
Rash_NormEd     Rash_NormOb    Rash_NormSeb    Rash_FactKol 
Rash_FactSum    Rash_EndNzpKol Rash_EndNzpSum  
Rash_PrSpisCom  Rash_WasteCom  NameZatr
Rash_BegNzpKol2 Rash_FactNzpKol2
Rash_NormEd2    Rash_NormOb2
Rash_FactKol2   Rash_EndNzpKol2

Operate        Sent_TypeRes   Sent_GroupRes   Sent_Kod
Sent_Name      Sent_Party     Sent_Ed         Sent_Ed2
Sent_Ceh       Sent_Kol       Sent_Kol2       Sent_Summa

.endfields
^
^
^
^
^

.{
^
.{
.if IsGroupRep
^
.end
.{
^ ^ ^ ^ 
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^ 
^ ^ ^ ^  
^ ^ ^ ^ 
^ ^ ^ ^
^ ^ ^ ^
^
^ ^ ^
^ ^ ^ ^
^ ^ ^ ^ ^
.}
.}
.}

.{
^ ^ ^ 
^ ^ ^
.{
^ ^ ^ ^
^ ^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ 
^ ^ ^
^ ^
^ ^ ^ ^
.}
.}


.if IsPrintLinkRes
.{
^
.{
^
.{
.if IsGroupRepL
^
.end
.{
^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.}
.}
.}
.end
.EndForm