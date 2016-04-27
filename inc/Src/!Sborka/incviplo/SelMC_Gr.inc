{$IFDEF __type__}
{อออออออออออออ ’ กซจๆ  : CVSELMC "CVSELMC" ออออออออออออออ}
type
  pCVSELMC = ^tCVSELMC;
  tCVSELMC = record   { - CVSELMC }
    INCSUBGROUPS   : Boolean;         { incSubGroups                          }
    DELOLDPICKEDMC : Boolean;         { delOldPickedMC                        }
  end;

type
    prCVSELMC = pCVSELMC;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    TNGROUPMC=1;
    TNKATMC=2;
    TNPICK=3;
    TNPICK2=0;
    FNDELOLDPICKEDMC=1;
    FNINCSUBGROUPS=0;
    tbGROUPMC_4_MODIF_0=1;
    tbGROUPMC_4_MODIF_1=65537;
    tbGROUPMC_4_MODIF_2=131073;
    tbKATMC_4_MODIF_0=2;
    tbKATMC_4_MODIF_1=65538;
    tbPICK_4_MODIF_0=3;
    tbPICK_4_MODIF_1=65539;
    tbPICK_4_MODIF_2=131075;
    tbPICK_4_MODIF_3=196611;
    tbPICK2_4_MODIF_0=0;
    tbPICK2_4_MODIF_1=65536;
    tbPICK2_4_MODIF_2=131072;
    tbPICK2_4_MODIF_3=196608;
    tb4_MODIF_4=262144;
{$ENDIF}
{$IFDEF __Type__}
type
   prCVSELMCCVSELMC = pCVSELMC;
   prSELECTMCBYGROUPS = pCVSELMC;
   pSELECTMCBYGROUPS = pCVSELMC;
{$endif}
