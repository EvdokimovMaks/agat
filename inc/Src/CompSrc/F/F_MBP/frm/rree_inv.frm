//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1 - ����᭠�⪠
// ���⭠� �ଠ ��� �뢮�� ॥��஢ ��⮢ ������ਧ�樨 ᯥ�᭠�⪨
//------------------------------------------------------------------------------

#doc
����� ॥��� ��⮢ ������ਧ�樨 ᯥ�᭠�⪨.<br>
#end
.Set Name = 'rRee_InvProt'
.Hide
.Fields
  frDate : Date
  toDate : Date
  RazrFiltr : String
  MyOrgName : String
  NDE_ShName : String
  cSigners : comp
.endFields

// ����� ॥���

  ^  ^  ^  ^  ^  ^

.{ ReeInvDoc CheckEnter // ���᮪ ���㬥�⮢

.Fields
  fDocNRec : Comp
  fDesGr : String  fDescr : String
  fDate : Date  fNumber : String  fDocExpl : String
  fPodr : String  fMOL : String  fPers : String
  fDocKolF : Double  fDocKol : Double
  fDocSummaF : Double  fDocSumma : Double
.endFields
  fDocNRec   -  ^
  fDesGr     -  ^
  fDescr     -  ^
  fDate      -  ^
  fNumber    -  ^
  fDocExpl   -  ^
  fPodr      -  ^
  fMOL       -  ^
  fPers      -  ^
  fDocKolF   -  ^
  fDocKol    -  ^
  fDocSummaF -  ^
  fDocSumma  -  ^
.{ ReeInvDocSpec CheckEnter // ����䨪��� ���㬥��

.Fields
   fSpecNRec : Comp
   fMBPKod : String  fMBPName : String  fEd : String
   fPrice : Double  fPerc : Double  fInExpl : String
   fKolF : Double  fKol : Double
   fSummaF : Double  fSumma : Double
   fParty : String fPartyKod : String
.endFields
// ����䨪��� ���㬥��
   fSpecNRec -  ^
   fMBPKod   -  ^
   fMBPName  -  ^
   fEd       -  ^
   fPrice    -  ^
   fPerc     -  ^
   fInExpl   -  ^
   fKolF     -  ^
   fKol      -  ^
   fSummaF   -  ^
   fSumma    -  ^
   fParty    -  ^
   fPartyKod -  ^
// ����� ����䨪��� ���㬥��
.}
.}
.endForm

//-------------------------------------------------------------------------

.LinkFORM rRee_Inv_01 Prototype Is rRee_InvProt
.NameInList '��⪨� ॥���'
.Group '��⪨� ॥���'
.declare
#include FeeSigners.vih
.endDeclare
.Var
  iFeeSigners : FeeSigners;
  NumDocs, lSign, i : Longint;
  FIOs, Post : array [1..2] of String;
  SumItog, SumItogF : Double;
.endVar
.begin
  NumDocs := 0;
  SumItog := 0;
  SumItogF := 0;
  lSign := 0;

  for (i := 1; i <= Count(FIOs); i++)
  {
    FIOs[i] := '';
    Post[i] := '';
  }

  iFeeSigners.InitFeeSigners(cgReport_MBP);
  iFeeSigners.FindFeeSignersByNRec(cSigners);

  if (iFeeSigners.FeeSignersIsValid)
    if (iFeeSigners.GetSignerFirst)
      do
      {
        lSign++;
        FIOs[lSign] := iFeeSigners.GetSignerFIO(1);
        Post[lSign] := if (iFeeSigners.GetSignerRole <> '', iFeeSigners.GetSignerRole, iFeeSigners.GetSignerPosition(1));
      }
      while (iFeeSigners.GetSignerNext);

  if (lSign = 0)
  {
    lSign := 1;
    FIOs[lSign] := '';
    Post[lSign] := '';
  }
end.
.Fields
  CommonFormHeader  MyOrgName
  frDate  toDate  RazrFiltr
.endFields
�� ^
 ^

                         ������ ����⮢ ������ਧ�樨�� �� ��ਮ� � ��^�� �� ��^��
 ^
.{ ReeInvDoc CheckEnter
.[h
.Fields
  NDE_ShName
  NDE_ShName
.endFields
������������������������������������������������������������������������������������������������������������������������������������������������� ���.@NP@
          �                �                               �                            �   �      �����᪮� ����稥     ��� ����� ��壠���᪮�� ���
   ���   �      �����     �         ���ࠧ�������         �            ���             ��/���������������������������������������������������������������
          �                �                               �                            �   � ������⢮ �   �㬬�, @@@@@@ � ������⢮ �   �㬬�, @@@@@@
����������������������������������������������������������������������������������������������������������������������������������������������������������
.]h
.Fields
  fDate  fNumber
  fPodr  fMol  fDocExpl
  fDocKolF
  fDocSummaF
  fDocKol
  fDocSumma
.endFields
.begin
  NumDocs := NumDocs + 1;
  SumItog := SumItog + fDocSumma;
  SumItogF := SumItogF + fDocSummaF;
end.
@@@@@@@@@@ @@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@ &'&&&&&&&.&& &'&&&&&&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&&&&&&.&&
.{ ReeInvDocSpec CheckEnter
.}
.}
.Fields
  NumDocs  SumItogF  SumItog
.endFields
����������������������������������������������������������������������������������������������������������������������������������������������������������
�⮣� �� ॥����      ���㬥�⮢ &&&&&       ��  �㬬�                                                    &'&&&&&&&&&&&&.&&              &'&&&&&&&&&&&&.&&
.begin
  i := 0;
end.
.{While (i < lSign)
.begin
  i++;
end.
.fields
  Post[i]
  FIOs[i]
.endfields

 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��    _______________________    ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                ���������                           �������                                ����஢�� ������
.}��
.endForm

//-------------------------------------------------------------------------

.LinkFORM rRee_Inv_02 Prototype Is rRee_InvProt
.NameInList '���஡�� ॥���'
.Group '���஡�� ॥���'
.declare
#include FeeSigners.vih
.endDeclare
.Var
  iFeeSigners : FeeSigners;
  NumDocs, lSign, i : Longint;
  FIOs, Post : array [1..2] of String;
  SumItog, SumItogF : Double;
.endVar
.begin
  NumDocs := 0;
  SumItog := 0;
  SumItogF := 0;
  lSign := 0;

  for (i := 1; i <= Count(FIOs); i++)
  {
    FIOs[i] := '';
    Post[i] := '';
  }

  iFeeSigners.InitFeeSigners(cgReport_MBP);
  iFeeSigners.FindFeeSignersByNRec(cSigners);

  if (iFeeSigners.FeeSignersIsValid)
    if (iFeeSigners.GetSignerFirst)
      do
      {
        lSign++;
        FIOs[lSign] := iFeeSigners.GetSignerFIO(1);
        Post[lSign] := if (iFeeSigners.GetSignerRole <> '', iFeeSigners.GetSignerRole, iFeeSigners.GetSignerPosition(1));
      }
      while (iFeeSigners.GetSignerNext);

  if (lSign = 0)
  {
    lSign := 1;
    FIOs[lSign] := '';
    Post[lSign] := '';
  }
end.
.Fields
  CommonFormHeader  MyOrgName
  frDate  toDate  RazrFiltr
.endFields
�� ^
 ^

                         ���஡�� ॥��� ����⮢ ������ਧ�樨�� �� ��ਮ� � ��^�� �� ��^��
 ^
.{ ReeInvDoc CheckEnter
.[h
.Fields
  NDE_ShName
  NDE_ShName
.endFields
������������������������������������������������������������������������������������������������������������������������������������������������� ���.@NP@
          �                �                               �                            �   �      �����᪮� ����稥     ��� ����� ��壠���᪮�� ���
   ���   �      �����     �         ���ࠧ�������         �            ���             ��/���������������������������������������������������������������
          �                �                               �                            �   � ������⢮ �   �㬬�, @@@@@@ � ������⢮ �   �㬬�, @@@@@@
����������������������������������������������������������������������������������������������������������������������������������������������������������
.]h
.Fields
  fDate  fNumber
  fPodr  fMOL  fDocExpl
  fDocKolF
  fDocSummaF
  fDocKol
  fDocSumma
.endFields
.begin
  NumDocs := NumDocs + 1;
  SumItog := SumItog + fDocSumma;
  SumItogF := SumItogF + fDocSummaF;
end.
��@@@@@@@@@@ @@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@ &'&&&&&&&.&& &'&&&&&&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&&&&&&.&&��
.{ ReeInvDocSpec CheckEnter
.[h
����������������������������������������������������������������������������������������������������������������������������������������������������������
.]h
.Fields
   fMBPKod
   fMBPName
   fEd
   fPrice
   fPerc
   fInExpl
   fParty
   fKolF
   fSummaF
   fKol
   fSumma
.endFields
          �@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@ &'&&&&&&&&.&& &&&.&&% @ @@@@@@@@@@@@@@@@ &'&&&&.&& &'&&&&&&&&&&&.&& &'&&&&.&& &'&&&&&&&&&&&.&&
.[f
��������� ������������������������������������������������������������������������������������������������������������������������������������������������
.]f
.}
.}
.Fields
  NumDocs  SumItogF  SumItog
.endFields
����������������������������������������������������������������������������������������������������������������������������������������������������������
�⮣� �� ॥����      ���㬥�⮢ &&&&&         ��  �㬬�                                                  &'&&&&&&&&&&&&.&&              &'&&&&&&&&&&&&.&&
.begin
  i := 0;
end.
.{While (i < lSign)
.begin
  i++;
end.
.fields
  Post[i]
  FIOs[i]
.endfields

 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��    _______________________    ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                ���������                           �������                                ����஢�� ������
.}��
.endForm
