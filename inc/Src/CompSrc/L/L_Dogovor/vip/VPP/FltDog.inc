
#ifndef _FltDog_rec_
#define _FltDog_rec_

#doc
��� ��।�� ���ﭨ� � ���祭�� 䨫��஢ �� ������ࠬ
#end
#ifdef ComponentVersion
public
#end
type TFilterDog = record
                    Filter: word;

                    dBeg
                  , dEnd  : Date;

                    pNazna
                  , pOtvPodr
                  , pVidDog
                  , pCurPodr
                  , pOrg  : comp;

                    Status: word;

                    GrDogs: comp;

                    UseIerVidDog : boolean;

                    sDescr  : tDescr;
                    sDesGr  : tDesGr;
                    Visible : word;
                  end;

#end // _FltDog_rec_