.form 'MTG_AktZAvans'
.fields
!шапка
Dog_Descr
KatOrg_Name
KatOrg_Unn
Dog_NoDoc
Dog_Sum
Date_Vip
Date_Ob
Prim1
Prim2
Prim3
Prim4
!счет-фактура
NoDogR
DDogR
NoDSR
DDSR
NoDoR
DDoR
SummaR
!счет-платеж
NoDogL
DDogL
NoDSL
DDSL
NoDoL
DDoL
SummaL
MCUSL
TypePlat
NoPlat
DatVipPlat
DatObPlat
.ENDFIELDS
.{CycleOf_AZA CheckEnter
  Шапка
        Dog_Descr                ^
        KatOrg_Name              ^
        KatOrg_Unn               ^
        Dog_NoDoc                ^
        Dog_Sum                  ^
        Date_Vip                 ^
        Date_Ob                  ^
        Prim1                    ^
        Prim2                    ^
        Prim3                    ^
        Prim4                    ^
.{CycleOf_BASEDOCR CheckEnter
  Правая сторона
        NoDogR                   ^
        DDogR                    ^
        NoDSR                    ^
        DDSR                     ^
        NoDoR                    ^
        DDoR                     ^
        SummaR                   ^
.{CycleOf_PlatInfo CheckEnter
  Левая сторона
        NoDogL                   ^
        DDogL                    ^
        NoDSL                    ^
        DDSL                     ^
        NoDoL                    ^
        DDoL                     ^
        SummaL                   ^
        MCUSL                    ^
        TypePlat                 ^
        NoPlat                   ^
        DatVipPlat               ^
        DatObPlat                ^
.}
.}
.}
.endform
