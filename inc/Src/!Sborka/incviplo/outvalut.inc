{$IFDEF __type__}
{������������� ������ : OUTVALUT "OUTVALUT" ��������������}
type
  pOUTVALUT = ^tOUTVALUT;
  tOUTVALUT = record   { - OUTVALUT }
    C1             : Comp;            { c1                                    }
  end;

type
    prOUTVALUT = pOUTVALUT;
{$ENDIF}
{$IFDEF __CONSTANTS__}
const
    FNC1=0;
{$ENDIF}
{$IFDEF __Type__}
type
   prOUTVALUTOUTVALUT = pOUTVALUT;
{$endif}